#include "global.h"
#include "common.h"
#include "sprite.h"
#include "alloc.h"
#include "main.h"
#include "player.h"
#include "audio_b.h"
#include "hud.h"

enum HudElementIdx {
    HUD_ELEMENT_LEVEL_NOTES,
    HUD_ELEMENT_LEVEL_JIGGIES,
    HUD_ELEMENT_2,
    HUD_ELEMENT_GOLDEN_FEATHERS,
    HUD_ELEMENT_4,
    HUD_ELEMENT_SHELLS,
    HUD_ELEMENT_TOTAL_HONEYCOMBS,
    HUD_ELEMENT_LEVEL_JINJOS,
    HUD_ELEMENT_CHICKS,
    HUD_ELEMENT_BLUE_EGGS,
    HUD_ELEMENT_ELECTRIC_EGGS,
    HUD_ELEMENT_ICE_EGGS,
    HUD_ELEMENT_FIRE_EGGS,
    HUD_ELEMENT_13,
    HUD_ELEMENT_14,
    HUD_ELEMENT_15,
    HUD_ELEMENT_16,
    HUD_ELEMENT_SILVER_COINS,
    HUD_ELEMENT_18,
    HUD_ELEMENT_TOTAL_NOTES,
    HUD_ELEMENT_TOTAL_JIGGIES,
    HUD_ELEMENT_TOTAL_JINJOS,
    HUD_ELEMENT_MUMBO_TOKENS,
    HUD_ELEMENT_23,
    HUD_ELEMENT_24,
    HUD_ELEMENT_PAUSE_LEVEL_JINJOS,
    HUD_ELEMENT_PAUSE_LEVEL_MUMBO_TOKENS,
    HUD_ELEMENT_27,
    HUD_ELEMENT_28,
    HUD_ELEMENT_29,
    HUD_ELEMENT_30,
    HUD_ELEMENT_31,
    HUD_ELEMENT_32,
    HUD_ELEMENT_33,
    HUD_ELEMENT_34,
    HUD_ELEMENT_35,
    HUD_ELEMENT_36,
    HUD_ELEMENT_37,
    HUD_ELEMENT_38,
    HUD_ELEMENT_BOZZEYE_NOTES,
    HUD_ELEMENT_40,
    HUD_ELEMENT_41,
    HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS,
    HUD_ELEMENT_PAUSE_MUMBO_TOKENS,
    HUD_ELEMENT_44,
    HUD_ELEMENT_45,
    HUD_ELEMENT_46,
    HUD_ELEMENT_47,
    HUD_ELEMENT_48,
    HUD_ELEMENT_JINJO_ORACLE_JINJOS,
    HUD_ELEMENT_50,
    HUD_ELEMENT_51,
    HUD_ELEMENT_52,
    HUD_ELEMENT_53,
    HUD_ELEMENT_54,
    HUD_ELEMENT_55,
    HUD_ELEMENT_OXYGEN,
    HUD_ELEMENT_OXYGEN_WITH_ICON,
    HUD_ELEMENT_HEALTH,
    HUD_ELEMENT_HEALTH_WITH_ICON,

    HUD_ELEMENT_COUNT
};

struct HudGraphic {
    volatile struct Sprite sprite;
    s32 field_1C;
    s32 field_20;
    s32 field_24;
    s32 field_28;
    s32 field_2C;
    s32 field_30;
    u8 field_34;
    u8 field_35;
    u8 field_36;
    u8 field_37;
};

struct HudElement {
    struct HudGraphic* graphic;
    u16 graphicCount;
    u16 counter;
    u16 number;
    u16 field_A;
    u16 state;
    u16 field_E;
    int field_10;
    int field_14;
    u16 timer;
    u16 field_1A;
    u8 field_1C;
    s8 field_1D;
    u8 field_1E;
    u8 renderState;
    char text[8];
    u8 field_28;
    u8 field_29;
    u8 field_2A;
    u8 field_2B;
    struct TextBox textBox;
};

extern struct HudElement* gHudElements;

struct struc_60 {
    u32 funcIdx;
    u32 arg1;
    u32 arg2;
    u32 arg3;
};

struct struc_59 {
    u32 length;
    struct struc_60* states;
};

extern struct struc_59 stru_80AF310[];

extern int (*dHudFunctions[])(struct HudElement*, u32, u32, u32); // This needs to be a static const.

static void sub_80421C4(int, int, char*);
static int get_hud_element_max(u32);
int sub_80630C0(int, int);

static int sub_803EF90(struct HudElement* element, int _, int __, int ___) {
    if (element->graphicCount != 0) {
        Free(element->graphic, 4);
        element->graphicCount = 0;
    }

    if (element->field_29 != 0) {
        element->field_29 = 0;
        element->renderState = 1;
        element->state = 0;
        return 4;
    }

    element->renderState = 0;
    element->state = 0;
    return 3;
}

static int sub_803EFCC(struct HudElement* element, int a2, int a3, int _) {
    element->graphic[a2].field_24 = element->graphic[a2].field_1C - (a3 << 16);
    element->graphic[a2].field_34 = 6;
    return 2;
}

static int sub_803EFE8(struct HudElement* element, int a2, int a3, int _) {
    element->graphic[a2].field_24 = element->graphic[a2].field_1C + (a3 << 16);
    element->graphic[a2].field_34 = 2;
    return 2;
}

static int sub_803F004(struct HudElement* element, int a2, int a3, int _) {
    element->graphic[a2].field_28 = element->graphic[a2].field_20 - (a3 << 16);
    element->graphic[a2].field_34 = 0;
    return 2;
}

static int sub_803F020(struct HudElement* element, int a2, int a3) {
    element->graphic[a2].field_28 = element->graphic[a2].field_20 + (a3 << 16);
    element->graphic[a2].field_34 = 4;
    return 2;
}

static int sub_803F03C(struct HudElement* element, int a2, int a3, int a4) {
    element->textBox.xPosition = a2;
    element->textBox.yPosition = a3;
    element->textBox.stringOffset = 0;

    if (a4 == 1) {
        element->field_28 = 1;
    } else {
        element->field_28 = 0;
    }

    if (element->counter < 10) {
        element->text[1] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, element->text);
    } else if (element->counter < 100) {
        element->text[2] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, &element->text[1]);
    } else {
        element->text[3] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, &element->text[2]);
    }

    element->timer = 10;
    return 2;
}

static int sub_803F09C(struct HudElement* element, int a2, int a3, int a4) {
    element->textBox.xPosition = a2;
    element->textBox.yPosition = a3;
    element->textBox.stringOffset = 0;

    if (a4 == 1) {
        element->field_28 = 1;
    } else {
        element->field_28 = 0;
    }

    sub_80421C4(element->counter, element->field_A, element->text);

    element->timer = 10;
    return 2;
}

static int sub_803F0D4(struct HudElement* element, int _, int __, int ___) {
    return 2;
}

static int sub_803F0D8(struct HudElement* element, int _, int __, int ___) {
    if (element->counter == element->number) {
        return 2;
    }

    element->timer--;

    if (element->timer != 0)
        return 1;

    element->timer = 10;

    if (element->counter < element->number) {
        element->counter++;
    } else if (element->counter > element->number) {
        element->counter--;
    }

    if (element->counter < 10) {
        element->text[1] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, element->text);
    } else if (element->counter < 100) {
        element->text[2] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, &element->text[1]);
    } else {
        element->text[3] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, &element->text[2]);
    }

    if (element->counter != element->number) {
        return 1;
    }

    return 2;
}

static int sub_803F14C(struct HudElement* element, int _, int __, int ___) {
    if (element->counter == element->number) {
        return 2;
    }

    element->timer--;

    if (element->timer != 0)
        return 1;

    element->timer = 10;

    element->counter++;

    if (element->counter < 10) {
        element->text[1] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, element->text);
    } else if (element->counter < 100) {
        element->text[2] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, &element->text[1]);
    } else {
        element->text[3] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, &element->text[2]);
    }

    if (element->counter != element->number) {
        return 1;
    }

    return 2;
}

static int sub_803F1B4(struct HudElement* element, int _, int __, int ___) {
    if (element->counter == element->number) {
        return 2;
    }

    element->timer--;

    if (element->timer != 0)
        return 1;

    element->timer = 10;

    element->counter--;

    if (element->counter < 10) {
        element->text[1] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, element->text);
    } else if (element->counter < 100) {
        element->text[2] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, &element->text[1]);
    } else {
        element->text[3] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->counter, &element->text[2]);
    }

    if (element->counter != element->number) {
        return 1;
    }

    return 2;
}

static int sub_803F21C(struct HudElement* element, int _, int __, int ___) {
    if (!element->field_2A) {
        if (element->timer != 0) {
            element->timer--;
        }

        if (element->timer == 0 && byte_203EA80 == 0) {
            return 2;
        }
    }

    return 1;
}

static int sub_803F250(struct HudElement* element, int _, int __, int ___) {
    if (!element->field_2A) {
        if (element->timer != 0) {
            element->timer--;
        }

        if (element->timer == 0 && byte_203EA80 == 0) {
            return 2;
        }
    }

    return 1;
}

static int sub_803F284(struct HudElement* element, int a2, int a3, int a4) {
    SetSprite((struct Sprite*)&element->graphic[a2].sprite, a3, 0, 0, 0,
              element->graphic[a2].sprite.xPos, element->graphic[a2].sprite.yPos, 2);
    element->graphic[a2].field_35 = 1;

    if (a4 == 1) {
        element->graphic[a2].sprite.objMode = 1;
    }

    return 2;
}

static int sub_803F2D0(struct HudElement* element, int a2, int _, int __) {
    element->renderState = a2;

    switch (a2) {
        case 5:
            element->timer = element->field_E;
            break;

        case 3:
            element->text[0] = STRING_TERMINATOR;
            break;

        case 4:
            element->text[0] = STRING_TERMINATOR;
            break;
    }

    return 2;
}

static int sub_803F2FC(struct HudElement* element, int a2, int a3, int _) {
    int i;

    switch (a3) {
        case 0:
            ASSERT(a2 != 0);
            element->graphic = Alloc(sizeof(struct HudGraphic) * a2, 23, 4);
            element->graphicCount = a2;
            for (i = 0; i < element->graphicCount; i++) {
                element->graphic[i].field_34 = -1;
                element->graphic[i].field_35 = 0;
            }
            break;

        case 1:
            element->graphic = Alloc(sizeof(struct HudGraphic) * (a2 + stru_80CC8C4.maxHealth), 23, 4);
            element->graphicCount = gGameStatus.maxHealth + a2;
            for (i = 0; i < element->graphicCount; i++) {
                element->graphic[i].field_34 = -1;
                element->graphic[i].field_35 = 0;
            }
            element->text[0] = STRING_TERMINATOR;
            break;

        case 2:
            element->graphic = Alloc(sizeof(struct HudGraphic) * (a2 + gGameStatus.maxOxygen), 24, 4);
            element->graphicCount = gGameStatus.maxOxygen + a2;
            for (i = 0; i < element->graphicCount; i++) {
                element->graphic[i].field_34 = -1;
                element->graphic[i].field_35 = 0;
            }
            element->text[0] = STRING_TERMINATOR;
    }

    return 2;
}

static int sub_803F410(struct HudElement* element, int a2, int a3, int a4) {
    element->graphic[a2].field_1C = a3 << 16;
    element->graphic[a2].field_20 = a4 << 16;
    element->graphic[a2].sprite.xPos = a3;
    element->graphic[a2].sprite.yPos = a4;

    return 2;
}

static int sub_803F438(struct HudElement* element, int a2, int a3, int a4) {
    int i;

    bool32 r7 = TRUE;

    for (i = 0; i < element->graphicCount; i++) {
        switch (element->graphic[i].field_34) {
            case 0:
                r7 = FALSE;
                element->graphic[i].field_20 -= element->field_10;
                if (element->graphic[i].field_20 <= element->graphic[i].field_28) {
                    element->graphic[i].field_20 = element->graphic[i].field_28;
                    element->graphic[i].field_34 = -1;
                    if (a2 == 1) {
                        element->graphic[i].field_30 = element->graphic[i].field_20;
                    }
                }
                element->graphic[i].sprite.yPos = element->graphic[i].field_20 >> 16;
                break;

            case 4:
                r7 = FALSE;
                element->graphic[i].field_20 += element->field_10;
                if (element->graphic[i].field_20 >= element->graphic[i].field_28) {
                    element->graphic[i].field_20 = element->graphic[i].field_28;
                    element->graphic[i].field_34 = -1;
                    if (a2 == 1) {
                        element->graphic[i].field_30 = element->graphic[i].field_20;
                    }
                }
                element->graphic[i].sprite.yPos = element->graphic[i].field_20 >> 16;
                break;

            case 6:
                r7 = FALSE;
                element->graphic[i].field_1C -= element->field_10;
                if (element->graphic[i].field_1C <= element->graphic[i].field_24) {
                    element->graphic[i].field_1C = element->graphic[i].field_24;
                    element->graphic[i].field_34 = -1;
                    if (a2 == 1) {
                        element->graphic[i].field_2C = element->graphic[i].field_1C;
                    }
                }
                element->graphic[i].sprite.xPos = (element->graphic[i].field_1C >> 16) & 0x1FF;
                break;

            case 2:
                r7 = FALSE;
                element->graphic[i].field_1C += element->field_10;
                if (element->graphic[i].field_1C >= element->graphic[i].field_24) {
                    element->graphic[i].field_1C = element->graphic[i].field_24;
                    element->graphic[i].field_34 = -1;
                    if (a2 == 1) {
                        element->graphic[i].field_2C = element->graphic[i].field_1C;
                    }
                }
                element->graphic[i].sprite.xPos = (element->graphic[i].field_1C >> 16) & 0x1FF;
                break;
        }
    }

    if (r7) {
        return 2;
    }

    return 1;
}

static int sub_803F52C(struct HudElement* element, int a2, int a3, int a4) {
    s32 target;
    s32 offset;
    //! Possible fake match.
    register u32 number asm("r0");

    if (a3 != 3) {
        switch (a3) {
            case 1:
                number = element->number;
                if (number < element->counter)
                    return 2;
                break;
            case 2:
                number = element->number;
                if (number > element->counter)
                    return 2;
                break;
            default:
                number = element->number;
                break;
        }

        number = (u16)number;
        offset = 0xC0000;
        if (number >= 10) {
            offset = 0x1C0000;
            if (number < 100)
                offset = 0x140000;
        }

        target = element->graphic[a2].field_2C - offset;
    } else {
        target = element->graphic[a2].field_2C;
    }

    element->graphic[a2].field_24 = target;
    if (target > element->graphic[a2].field_1C)
        element->graphic[a2].field_34 = 2;
    else
        element->graphic[a2].field_34 = 6;

    return 2;
}

static int sub_803F5AC(struct HudElement* element, int a2, int a3, int a4) {
    s32 target;
    s32 offset;
    //! Possible fake match.
    register u32 number asm("r0");

    if (a3 != 3) {
        switch (a3) {
            case 1:
                number = element->number;
                if (number < element->counter)
                    return 2;
                break;
            case 2:
                number = element->number;
                if (number > element->counter)
                    return 2;
                break;
            default:
                number = element->number;
                break;
        }

        number = (u16)number;
        offset = 0xC0000;
        if (number >= 10) {
            offset = 0x1C0000;
            if (number < 100)
                offset = 0x140000;
        }

        target = element->graphic[a2].field_2C + offset;
    } else {
        target = element->graphic[a2].field_2C;
    }

    element->graphic[a2].field_24 = target;
    if (target < element->graphic[a2].field_1C)
        element->graphic[a2].field_34 = 6;
    else
        element->graphic[a2].field_34 = 2;

    return 2;
}

static int sub_803F62C(struct HudElement* element, int a2, int a3, int a4) {
    s32 target;
    s32 offset;
    s32 offset2;
    //! Possible fake match.
    register u32 number asm("r0");

    if (a3 != 3) {
        switch (a3) {
            case 1:
                number = element->number;
                if (number < element->counter)
                    return 2;
                break;
            case 2:
                number = element->number;
                if (number > element->counter)
                    return 2;
                break;
            default:
                number = element->number;
                break;
        }

        number = (u16)number;
        offset = 0xC0000;
        if (number >= 10) {
            offset = 0x1C0000;
            if (number < 100)
                offset = 0x140000;
        }

        number = element->field_A;
        offset2 = 0xC0000;
        if (number >= 10) {
            offset2 = 0x1C0000;
            if (number < 100)
                offset2 = 0x140000;
        }

        target = element->graphic[a2].field_2C - offset - offset2;
    } else {
        target = element->graphic[a2].field_2C;
    }

    element->graphic[a2].field_24 = target;
    if (target > element->graphic[a2].field_1C)
        element->graphic[a2].field_34 = 2;
    else
        element->graphic[a2].field_34 = 6;

    return 2;
}

static int sub_803F6C4(struct HudElement* element, int a2, int a3, int a4) {
    s32 target;
    s32 offset;
    s32 offset2;
    //! Possible fake match.
    register u32 number asm("r0");

    if (a3 != 3) {
        switch (a3) {
            case 1:
                number = element->number;
                if (number < element->counter)
                    return 2;
                break;
            case 2:
                number = element->number;
                if (number > element->counter)
                    return 2;
                break;
            default:
                number = element->number;
                break;
        }

        number = (u16)number;
        offset = 0xC0000;
        if (number >= 10) {
            offset = 0x1C0000;
            if (number < 100)
                offset = 0x140000;
        }

        number = element->field_A;
        offset2 = 0xC0000;
        if (number >= 10) {
            offset2 = 0x1C0000;
            if (number < 100)
                offset2 = 0x140000;
        }

        target = element->graphic[a2].field_2C + offset + offset2;
    } else {
        target = element->graphic[a2].field_2C;
    }

    element->graphic[a2].field_24 = target;
    if (target < element->graphic[a2].field_1C)
        element->graphic[a2].field_34 = 6;
    else
        element->graphic[a2].field_34 = 2;

    return 2;
}

static int sub_803F75C(struct HudElement* element, int a2, int a3, int a4) {
    int i;
    u8* ptr = &byte_80A8CF6[element->counter * 8];

    for (i = a2; i < element->graphicCount; i++) {
        element->graphic[i].field_1C = a3 << 16;
        element->graphic[i].field_20 = a4 << 16;
        element->graphic[i].sprite.xPos = a3;
        element->graphic[i].sprite.yPos = a4;
        SetSprite((struct Sprite*)&element->graphic[i].sprite, word_80A8CF0[ptr[i - a2]], 0, 0, 0, a3,
                  a4, 2);
        element->graphic[i].field_35 = 1;
    }

    element->timer = 10;
    return 2;
}

static int sub_803F800(struct HudElement* element, int a2, int a3, int a4) {
    int i;
    u8* ptr = &byte_80A8D92[element->counter * 5];

    for (i = a2; i < element->graphicCount; i++) {
        element->graphic[i].field_1C = a3 << 16;
        element->graphic[i].field_20 = a4 << 16;
        element->graphic[i].sprite.xPos = a3;
        element->graphic[i].sprite.yPos = a4;
        SetSprite((struct Sprite*)&element->graphic[i].sprite, word_80A8D8E[ptr[i - a2]], 0, 0, 0, a3,
                  a4, 2);
        element->graphic[i].field_35 = 1;
    }

    element->timer = 10;
    return 2;
}

static int sub_803F8A8(struct HudElement* element, int a2, int a3, int a4) {
    int i;

    if (a3 == 1) {
        for (i = a2; i < element->graphicCount; i++) {
            element->graphic[i].field_24 = element->graphic[i].field_1C - ((i - a2) * 0xC0000);
            element->graphic[i].field_34 = 6;
        }
    } else {
        for (i = a2; i < element->graphicCount; i++) {
            element->graphic[i].field_24 = element->graphic[i].field_1C - (a4 << 16);
            element->graphic[i].field_34 = 6;
        }
    }

    return 2;
}

static int sub_803F914(struct HudElement* element, int a2, int a3, int a4) {
    int i;

    if (a3 == 1) {
        for (i = a2; i < element->graphicCount; i++) {
            element->graphic[i].field_24 = element->graphic[i].field_1C + ((i - a2) * 0xC0000);
            element->graphic[i].field_34 = 2;
        }
    } else {
        for (i = a2; i < element->graphicCount; i++) {
            element->graphic[i].field_24 = element->graphic[i].field_1C + (a4 << 16);
            element->graphic[i].field_34 = 2;
        }
    }

    return 2;
}

static int sub_803F980(struct HudElement* element, int a2, int a3, int a4) {
    int i;

    if (a3 == 1) {
        for (i = a2; i < element->graphicCount; i++) {
            element->graphic[i].field_28 = element->graphic[i].field_20 - ((i - a2) * 0xC0000);
            element->graphic[i].field_34 = 0;
        }
    } else {
        for (i = a2; i < element->graphicCount; i++) {
            element->graphic[i].field_28 = element->graphic[i].field_20 - (a4 << 16);
            element->graphic[i].field_34 = 0;
        }
    }

    return 2;
}

static int sub_803F9EC(struct HudElement* element, int a2, int a3, int a4) {
    int i;

    if (a3 == 1) {
        for (i = a2; i < element->graphicCount; i++) {
            element->graphic[i].field_28 = element->graphic[i].field_20 + ((i - a2) * 0xC0000);
            element->graphic[i].field_34 = 4;
        }
    } else {
        for (i = a2; i < element->graphicCount; i++) {
            element->graphic[i].field_28 = element->graphic[i].field_20 + (a4 << 16);
            element->graphic[i].field_34 = 4;
        }
    }

    return 2;
}

static int sub_803FA58(struct HudElement* element, int a2, int a3, int a4) {
    int i;

    switch (element->number) {
        case 17:
            if (!element->field_1A || byte_203EA81) {
                if (element->field_1D < 0) {
                    element->field_1D = 0;
                }
                element->counter = 0;
                if (!gGameStatus.enableExtraHealth) {
                    element->number = element->field_1D + 1;
                } else {
                    element->number = element->field_1D + 9;
                }
                gGameStatus.health = element->number;
                element->field_1D = 0;
                end_stop_honeycomb();
                gIsStopHoneycombActive = FALSE;
                sub_8063178();
                byte_200108E = 0;
            } else {
                element->field_1A--;
                if (element->field_1C != 0) {
                    element->field_1C--;
                    return 1;
                }
                PLAY_SFX(170);
                if (element->field_1E) {
                    sprite_set_anim((struct Sprite*)&element->graphic[element->field_1D + a2].sprite,
                                    word_80A8CF0[0], 0, 1);
                } else {
                    element->field_1E = 1;
                    for (i = a2; i < element->graphicCount; i++) {
                        sprite_set_anim((struct Sprite*)&element->graphic[i].sprite, word_80A8CF0[0], 0,
                                        1);
                    }
                }
                element->field_1D++;
                if (element->field_1D + a2 >= element->graphicCount) {
                    element->field_1D = 0;
                }
                sprite_set_anim((struct Sprite*)&element->graphic[element->field_1D + a2].sprite,
                                word_80A8CF0[1], 0, 1);
                element->field_1C = unk_80CF330[gLoadedRoomLevel];
                return 1;
            }
            break;

        case 18:
            if (!element->field_1A || byte_203EA81) {
                if (element->field_1D < 0) {
                    element->field_1D = 0;
                }
                element->counter = 0;
                if (!gGameStatus.enableExtraHealth) {
                    element->number = element->field_1D + 1;
                } else {
                    element->number = element->field_1D + 9;
                }
                gGameStatus.health = element->number;
                element->field_1D = 0;
                end_stop_honeycomb();
                gIsStopHoneycombActive = FALSE;
                sub_8063178();
                byte_200108E = 0;
            } else {
                int v10;

                element->field_1A--;
                if (element->field_1C != 0) {
                    element->field_1C--;
                    return 1;
                }

                PLAY_SFX(170);
                v10 = element->field_1D;
                if (element->field_1E) {
                    sprite_set_anim((struct Sprite*)&element->graphic[element->field_1D + a2].sprite,
                                    word_80A8CF0[0], 0, 1);
                } else {
                    element->field_1E = 1;
                    for (i = a2; i < element->graphicCount; i++) {
                        sprite_set_anim((struct Sprite*)&element->graphic[i].sprite, word_80A8CF0[0], 0,
                                        1);
                    }
                }

                while (v10 == element->field_1D) {
                    element->field_1D = RandomMinMax(a2, element->graphicCount - 1) - a2;
                }

                sprite_set_anim((struct Sprite*)&element->graphic[element->field_1D + a2].sprite,
                                word_80A8CF0[1], 0, 1);
                element->field_1C = unk_80CF348[gLoadedRoomLevel];
                return 1;
            }
            break;
    }

    if (element->counter == element->number) {
        return 2;
    }

    element->timer--;

    if (element->timer == 0) {
        u8* v1;

        element->timer = 10;

        if (element->counter < element->number) {
            element->counter++;
            dword_203EA84 = PLAY_SFX(200);
        } else if (element->counter > element->number) {
            element->counter--;
        }

        v1 = &byte_80A8CF6[8 * element->counter];
        for (i = a2; i < element->graphicCount; i++) {
            sprite_set_anim((struct Sprite*)&element->graphic[i].sprite, word_80A8CF0[v1[i - a2]], 0,
                            1);
            element->graphic[i].field_35 = 1;
        }

        if (element->counter == element->number) {
            return 2;
        }
    }

    return 1;
}

static int sub_803FDDC(struct HudElement* element, int a2, int a3, int a4) {
    u8* v1;
    int i;

    if (element->counter == element->number) {
        return 2;
    }

    element->timer--;

    if (element->timer == 0) {
        element->timer = 10;

        if (element->counter < element->number) {
            element->counter++;
        } else if (element->counter > element->number) {
            element->counter--;
        }

        v1 = &byte_80A8D92[5 * element->counter];
        for (i = a2; i < element->graphicCount; i++) {
            sprite_set_anim((struct Sprite*)&element->graphic[i].sprite, word_80A8D8E[v1[i - a2]], 0,
                            1);
            element->graphic[i].field_35 = 1;
        }

        if (element->counter == element->number) {
            return 2;
        }
    }

    return 1;
}

void reset_hud_elements(void) {
    gHudElements[HUD_ELEMENT_TOTAL_NOTES].field_A = stru_80CC8C4.totalNotes;
    gHudElements[HUD_ELEMENT_TOTAL_NOTES].counter = gGameStatus.totalNotes;
    gHudElements[HUD_ELEMENT_TOTAL_NOTES].number = gHudElements[HUD_ELEMENT_TOTAL_NOTES].counter;

    gHudElements[HUD_ELEMENT_TOTAL_JIGGIES].field_A = stru_80CC8C4.totalJiggies;
    gHudElements[HUD_ELEMENT_TOTAL_JIGGIES].counter = gGameStatus.totalJiggies;
    gHudElements[HUD_ELEMENT_TOTAL_JIGGIES].number = gHudElements[HUD_ELEMENT_TOTAL_JIGGIES].counter;

    gHudElements[HUD_ELEMENT_BLUE_EGGS].field_A = stru_80CC8C4.eggs[EGG_BLUE];
    gHudElements[HUD_ELEMENT_BLUE_EGGS].counter = gGameStatus.eggs[EGG_BLUE];
    gHudElements[HUD_ELEMENT_BLUE_EGGS].number = gHudElements[HUD_ELEMENT_BLUE_EGGS].counter;

    gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].field_A = stru_80CC8C4.eggs[EGG_ELECTRIC];
    gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].counter = gGameStatus.eggs[EGG_ELECTRIC];
    gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].number = gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].counter;

    gHudElements[HUD_ELEMENT_FIRE_EGGS].field_A = stru_80CC8C4.eggs[EGG_FIRE];
    gHudElements[HUD_ELEMENT_FIRE_EGGS].counter = gGameStatus.eggs[EGG_FIRE];
    gHudElements[HUD_ELEMENT_FIRE_EGGS].number = gHudElements[HUD_ELEMENT_FIRE_EGGS].counter;

    gHudElements[HUD_ELEMENT_ICE_EGGS].field_A = stru_80CC8C4.eggs[EGG_ICE];
    gHudElements[HUD_ELEMENT_ICE_EGGS].counter = gGameStatus.eggs[EGG_ICE];
    gHudElements[HUD_ELEMENT_ICE_EGGS].number = gHudElements[HUD_ELEMENT_ICE_EGGS].counter;

    gHudElements[HUD_ELEMENT_GOLDEN_FEATHERS].field_A = stru_80CC8C4.goldenFeathers;
    gHudElements[HUD_ELEMENT_GOLDEN_FEATHERS].counter = gGameStatus.goldenFeathers;
    gHudElements[HUD_ELEMENT_GOLDEN_FEATHERS].number =
        gHudElements[HUD_ELEMENT_GOLDEN_FEATHERS].counter;

    gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].field_A = stru_80CC8C4.goldenFeathers;
    gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].counter = gGameStatus.goldenFeathers;
    gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].number =
        gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].counter;

    gHudElements[HUD_ELEMENT_MUMBO_TOKENS].field_A = gGameStatus.mumboTokens;
    gHudElements[HUD_ELEMENT_MUMBO_TOKENS].counter = gGameStatus.mumboTokens;
    gHudElements[HUD_ELEMENT_MUMBO_TOKENS].number = gHudElements[HUD_ELEMENT_MUMBO_TOKENS].counter;

    gHudElements[HUD_ELEMENT_PAUSE_MUMBO_TOKENS].field_A = gGameStatus.mumboTokens;
    gHudElements[HUD_ELEMENT_PAUSE_MUMBO_TOKENS].counter = gGameStatus.mumboTokens;
    gHudElements[HUD_ELEMENT_PAUSE_MUMBO_TOKENS].number =
        gHudElements[HUD_ELEMENT_MUMBO_TOKENS].counter;

    gHudElements[HUD_ELEMENT_4].field_A = stru_80CC8C4.field_7;
    gHudElements[HUD_ELEMENT_4].counter = gGameStatus.field_7;
    gHudElements[HUD_ELEMENT_4].number = gHudElements[HUD_ELEMENT_4].counter;

    gHudElements[HUD_ELEMENT_SHELLS].field_A = stru_80CC84C[gLoadedRoomLevel].shellCount;
    gHudElements[HUD_ELEMENT_SHELLS].counter = byte_2000FCC[gLoadedRoomLevel].shellCount;
    gHudElements[HUD_ELEMENT_SHELLS].number = gHudElements[HUD_ELEMENT_SHELLS].counter;

    gHudElements[HUD_ELEMENT_CHICKS].field_A = stru_80CC84C[gLoadedRoomLevel].chickCount;
    gHudElements[HUD_ELEMENT_CHICKS].counter = byte_2000FCC[gLoadedRoomLevel].chickCount;
    gHudElements[HUD_ELEMENT_CHICKS].number = gHudElements[HUD_ELEMENT_CHICKS].counter;

    gHudElements[HUD_ELEMENT_TOTAL_HONEYCOMBS].field_A = stru_80CC8C4.totalHoneycombs;
    gHudElements[HUD_ELEMENT_TOTAL_HONEYCOMBS].counter = gGameStatus.totalHoneycombs;
    gHudElements[HUD_ELEMENT_TOTAL_HONEYCOMBS].number =
        gHudElements[HUD_ELEMENT_TOTAL_HONEYCOMBS].counter;

    gHudElements[HUD_ELEMENT_TOTAL_JINJOS].field_A = stru_80CC8C4.totalJinjos;
    gHudElements[HUD_ELEMENT_TOTAL_JINJOS].counter = gGameStatus.totalJinjos;
    gHudElements[HUD_ELEMENT_TOTAL_JINJOS].number = gHudElements[HUD_ELEMENT_TOTAL_JINJOS].counter;

    gHudElements[HUD_ELEMENT_14].field_A = stru_80CC8C4.field_1A;
    gHudElements[HUD_ELEMENT_14].counter = gGameStatus.field_1A;
    gHudElements[HUD_ELEMENT_14].number = gHudElements[HUD_ELEMENT_14].counter;

    gHudElements[HUD_ELEMENT_SILVER_COINS].field_A = stru_80CC8C4.silverCoins;
    gHudElements[HUD_ELEMENT_SILVER_COINS].counter = gGameStatus.silverCoins;
    gHudElements[HUD_ELEMENT_SILVER_COINS].number = gHudElements[HUD_ELEMENT_SILVER_COINS].counter;

    gHudElements[HUD_ELEMENT_16].field_A = stru_80CC8C4.field_1C;
    gHudElements[HUD_ELEMENT_16].counter = gGameStatus.field_1C;
    gHudElements[HUD_ELEMENT_16].number = gHudElements[HUD_ELEMENT_16].counter;

    gHudElements[HUD_ELEMENT_15].field_A = stru_80CC8C4.field_1B;
    gHudElements[HUD_ELEMENT_15].counter = gGameStatus.field_1B;
    gHudElements[HUD_ELEMENT_15].number = gHudElements[HUD_ELEMENT_15].counter;

    gHudElements[HUD_ELEMENT_18].field_A = stru_80CC8C4.field_1E;
    gHudElements[HUD_ELEMENT_18].counter = gGameStatus.field_1E;
    gHudElements[HUD_ELEMENT_18].number = gHudElements[HUD_ELEMENT_18].counter;

    if (gHudElements[HUD_ELEMENT_HEALTH].renderState == 0) {
        gHudElements[HUD_ELEMENT_HEALTH].field_A = stru_80CC8C4.health;
        gHudElements[HUD_ELEMENT_HEALTH].counter = gGameStatus.health;
        gHudElements[HUD_ELEMENT_HEALTH].number = gHudElements[HUD_ELEMENT_HEALTH].counter;
    }

    if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState == 0) {
        gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].field_A = stru_80CC8C4.health;
        gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].counter = gGameStatus.health;
        gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].number =
            gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].counter;
    }

    gHudElements[HUD_ELEMENT_OXYGEN].field_A = stru_80CC8C4.oxygen;
    gHudElements[HUD_ELEMENT_OXYGEN].counter = gGameStatus.oxygen;
    gHudElements[HUD_ELEMENT_OXYGEN].number = gHudElements[HUD_ELEMENT_OXYGEN].counter;

    gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].field_A = stru_80CC8C4.oxygen;
    gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].counter = gGameStatus.oxygen;
    gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].number =
        gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].counter;
}

void update_bozzeye_notes_counter(void) {
    gHudElements[HUD_ELEMENT_BOZZEYE_NOTES].counter = gGameStatus.totalNotes;
    gHudElements[HUD_ELEMENT_BOZZEYE_NOTES].number = gGameStatus.totalNotes;
}

void init_hud_elements(void) {
    int i;

    byte_203EA80 = 0;
    dword_203EA84 = -1;
    gHudElements = Alloc(sizeof(struct HudElement) * HUD_ELEMENT_COUNT, 3, 4);

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        gHudElements[i].renderState = 0;
        gHudElements[i].field_29 = 0;
        gHudElements[i].state = 0;
        gHudElements[i].graphicCount = 0;
        gHudElements[i].field_E = word_80A8E28[i];
        gHudElements[i].field_10 = 0x2CCCC;
        gHudElements[i].field_2A = 0;
        gHudElements[i].field_1D = 0;
        gHudElements[i].field_1C = 0;
        gHudElements[i].field_1A = 0;
        gHudElements[i].field_1E = 0;
        gHudElements[i].textBox.letterSpacing = 1;
        gHudElements[i].textBox.field_11 = 6;
        gHudElements[i].textBox.field_12 = 0;
        gHudElements[i].textBox.field_A = 1;
        gHudElements[i].textBox.size = 240;
        gHudElements[i].textBox.palette = 10;
        gHudElements[i].textBox.stringOffset = 0;
        gHudElements[i].textBox.font = &font_80B01A8[1];
    }

    reset_hud_elements();
}

void update_hud_collectables(void) {
    gHudElements[HUD_ELEMENT_LEVEL_NOTES].field_A = stru_80CC84C[gLoadedRoomLevel].noteCount;
    gHudElements[HUD_ELEMENT_LEVEL_NOTES].counter = byte_2000FCC[gLoadedRoomLevel].noteCount;
    gHudElements[HUD_ELEMENT_LEVEL_NOTES].number = gHudElements[HUD_ELEMENT_LEVEL_NOTES].counter;

    gHudElements[HUD_ELEMENT_LEVEL_JIGGIES].field_A = stru_80CC84C[gLoadedRoomLevel].jiggyCount;
    gHudElements[HUD_ELEMENT_LEVEL_JIGGIES].counter = byte_2000FCC[gLoadedRoomLevel].jiggyCount;
    gHudElements[HUD_ELEMENT_LEVEL_JIGGIES].number = gHudElements[HUD_ELEMENT_LEVEL_JIGGIES].counter;

    gHudElements[HUD_ELEMENT_LEVEL_JINJOS].field_A = stru_80CC84C[gLoadedRoomLevel].jinjoCount;
    gHudElements[HUD_ELEMENT_LEVEL_JINJOS].counter = byte_2000FCC[gLoadedRoomLevel].jinjoCount;
    gHudElements[HUD_ELEMENT_LEVEL_JINJOS].number = gHudElements[HUD_ELEMENT_LEVEL_JINJOS].counter;
}

void set_hud_number(u32 element, int value) {
    int n;
    int funcIdx, arg1;
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_HEALTH;
            gHudElements[element].timer = 10;
            if (value == 17) {
                gHudElements[element].field_1A = 600;
                gHudElements[element].field_1C = 0;
                gHudElements[element].field_1E = 0;
                sub_80630C0(600, 0);
                gHudElements[element].counter = value;
                gHudElements[element].field_1D = -1;
                byte_203EA81 = 0;
            } else if (value == 18) {
                gHudElements[element].field_1A = 600;
                gHudElements[element].field_1C = 0;
                gHudElements[element].field_1E = 0;
                sub_80630C0(600, 0);
                gHudElements[element].counter = value;
                byte_203EA81 = 0;
            }
            gHudElements[element].number = value;
            break;

        case HUD_METER_OXYGEN:
            renderState = gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState;
            element = HUD_ELEMENT_OXYGEN_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_OXYGEN;
            gHudElements[element].timer = 10;
            gHudElements[element].number = value;
            break;

        case HUD_ELEMENT_55:
            gHudElements[element].number = value;
            gHudElements[element].field_A = value;
            gHudElements[element].counter = value;
            break;

        case HUD_ELEMENT_TOTAL_HONEYCOMBS:
            ASSERT(gHudElements[element].counter <= value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_40);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_40, n);
            break;

        case HUD_ELEMENT_LEVEL_NOTES:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_BOZZEYE_NOTES);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_BOZZEYE_NOTES, n);
            break;

        case HUD_ELEMENT_LEVEL_JIGGIES:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_41);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_41, n);
            break;

        case HUD_ELEMENT_2:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            break;

        case HUD_ELEMENT_4:
            ASSERT(gHudElements[element].counter <= value);
            gHudElements[element].number = value;
            break;

        case HUD_ELEMENT_SHELLS:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_45);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_45, n);
            break;

        case HUD_ELEMENT_LEVEL_JINJOS:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_JINJO_ORACLE_JINJOS);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_JINJO_ORACLE_JINJOS, n);
            break;

        case HUD_ELEMENT_CHICKS:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_47);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_47, n);
            break;

        case HUD_ELEMENT_14:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_46);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_46, n);
            break;

        case HUD_ELEMENT_15:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            break;

        case HUD_ELEMENT_16:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            break;

        case HUD_ELEMENT_SILVER_COINS:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_44);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_44, n);
            break;

        case HUD_ELEMENT_18:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
            n = get_hud_element_max(HUD_ELEMENT_48);
            if (n >= 0)
                set_hud_number(HUD_ELEMENT_48, n);
            break;

        case HUD_ELEMENT_36:
            gHudElements[element].counter = value;
            gHudElements[element].number = value;
            break;

        case HUD_ELEMENT_TOTAL_NOTES:
            gHudElements[element].counter = value;
            gHudElements[element].number = value;
            break;

        case HUD_ELEMENT_BOZZEYE_NOTES:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = gGameStatus.totalNotes;
            gHudElements[element].number = gGameStatus.totalNotes;
            break;

        case HUD_ELEMENT_40:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = gGameStatus.totalHoneycombs;
            gHudElements[element].number = gGameStatus.totalHoneycombs;
            break;

        case HUD_ELEMENT_41:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = gGameStatus.totalJiggies;
            gHudElements[element].number = gGameStatus.totalJiggies;
            break;

        case HUD_ELEMENT_44:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = gGameStatus.silverCoins;
            gHudElements[element].number = gGameStatus.silverCoins;
            break;

        case HUD_ELEMENT_45:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = gGameStatus.shells;
            gHudElements[element].number = gGameStatus.shells;
            break;

        case HUD_ELEMENT_46:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = gGameStatus.field_1A;
            gHudElements[element].number = gGameStatus.field_1A;
            break;

        case HUD_ELEMENT_47:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = gGameStatus.field_19;
            gHudElements[element].number = gGameStatus.field_19;
            break;

        case HUD_ELEMENT_48:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = gGameStatus.field_1E;
            gHudElements[element].number = gGameStatus.field_1E;
            break;

        case HUD_ELEMENT_JINJO_ORACLE_JINJOS:
            gHudElements[element].field_A = value;
            gHudElements[element].counter = byte_2000FCC[gLoadedRoomLevel].jinjoCount;
            gHudElements[element].number = byte_2000FCC[gLoadedRoomLevel].jinjoCount;
            break;

        case HUD_ELEMENT_GOLDEN_FEATHERS:
        case HUD_ELEMENT_BLUE_EGGS:
        case HUD_ELEMENT_ELECTRIC_EGGS:
        case HUD_ELEMENT_ICE_EGGS:
        case HUD_ELEMENT_FIRE_EGGS:
        case HUD_ELEMENT_13:
        case HUD_ELEMENT_MUMBO_TOKENS:
        case HUD_ELEMENT_37:
        case HUD_ELEMENT_38:
        case HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS:
        case HUD_ELEMENT_50:
        case HUD_ELEMENT_51:
        case HUD_ELEMENT_52:
        case HUD_ELEMENT_53:
        case HUD_ELEMENT_54:
            gHudElements[element].number = value;
            break;

        case HUD_ELEMENT_PAUSE_MUMBO_TOKENS:
            ASSERT(gHudElements[element].counter < value);
            gHudElements[element].number = value;
        default:
            HANG;
            break;
    }

    switch (gHudElements[element].renderState) {
        case 0:
            gHudElements[element].renderState = 1;
            break;

        case 6:
            gHudElements[element].field_29 = 1;
            break;

        case 3:
        case 4:
        case 5:
            funcIdx = stru_80AF310[element].states[gHudElements[element].state].funcIdx;
            arg1 = stru_80AF310[element].states[gHudElements[element].state].arg1;
            while (funcIdx != 11 || (arg1 != 3 && arg1 != 4)) {
                gHudElements[element].state--;
                funcIdx = stru_80AF310[element].states[gHudElements[element].state].funcIdx;
                arg1 = stru_80AF310[element].states[gHudElements[element].state].arg1;
            }
            break;
    }
}

void sub_80407F8(void) {
    int funcIdx, arg1;
    int element;

    element = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState ? HUD_ELEMENT_HEALTH
                                                                     : HUD_ELEMENT_HEALTH_WITH_ICON;

    if (gHudElements[element].renderState != 0) {
        gHudElements[element].graphicCount++;
    }

    switch (gHudElements[element].renderState) {
        case 0:
            gHudElements[element].renderState = 1;
            break;

        case 6:
            gHudElements[element].field_29 = 1;
            break;

        case 5:
            do {
                gHudElements[element].state--;
                funcIdx = stru_80AF310[element].states[gHudElements[element].state].funcIdx;
                arg1 = stru_80AF310[element].states[gHudElements[element].state].arg1;
            } while (funcIdx != 11 || arg1 != 3);
            break;
    }
}

void update_hud(void) {
    int i;

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        if (gHudElements[i].renderState) {
            u16 idx = gHudElements[i].state;
            struct struc_60* states = stru_80AF310[i].states;

            u32 funcIdx = states[idx].funcIdx;
            u32 arg1 = states[idx].arg1;
            u32 arg2 = states[idx].arg2;
            u32 arg3 = states[idx].arg3;

            if (dHudFunctions[funcIdx](&gHudElements[i], arg1, arg2, arg3) == 2) {
                gHudElements[i].state++;
            }
        }
    }
}

void sub_80408F0(void) {
    int i;
    int j;

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        if (gHudElements[i].renderState) {
            for (j = 0; j < gHudElements[i].graphicCount; j++) {
                if (gHudElements[i].graphic[j].field_35) {
                    sprite_render((struct Sprite*)&gHudElements[i].graphic[j].sprite);
                }
            }
        }
    }
}

void render_hud_elements(void) {
    int i;
    vu16 x, y;

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        if (gHudElements[i].renderState == 0) {
            continue;
        }

        if ((u8)(gHudElements[i].renderState - 3) <= 2) {
            gHudElements[i].textBox.stringOffset = 0;
            x = gHudElements[i].textBox.xPosition;
            y = gHudElements[i].textBox.yPosition;

            if (gHudElements[i].field_28) {
                sub_08025C30(&gHudElements[i].textBox, gHudElements[i].text);
            } else {
                AddStringToBuffer(&gHudElements[i].textBox, gHudElements[i].text);
            }

            gHudElements[i].textBox.xPosition = x;
            gHudElements[i].textBox.yPosition = y;
        }
    }
}

void sub_80409DC(void) {
    int i;

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        if (gHudElements[i].renderState) {
            gHudElements[i].renderState = 0;
            gHudElements[i].counter = gHudElements[i].number;
            gHudElements[i].field_29 = 0;
            gHudElements[i].state = 0;

            if (gHudElements[i].graphicCount) {
                Free(gHudElements[i].graphic, 4);
                gHudElements[i].graphicCount = 0;
            }
        }
    }
}

void sub_08040A38(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6) {
                element = HUD_ELEMENT_HEALTH;
            }
            break;

        case HUD_METER_OXYGEN:
            renderState = gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState;
            if (renderState != 0 && renderState != 6) {
                element = HUD_ELEMENT_OXYGEN;
            }
            break;
    }

    gHudElements[element].counter = gHudElements[element].number;
    gHudElements[element].field_29 = 0;
    gHudElements[element].state = 0;
    if (gHudElements[element].renderState) {
        gHudElements[element].renderState = 0;
        if (gHudElements[element].graphicCount) {
            Free(gHudElements[element].graphic, 4);
            gHudElements[element].graphicCount = 0;
        }
    }
}

void sub_08040AD0(u32 element, int value) {
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_HEALTH;
            break;

        case HUD_METER_OXYGEN:
            renderState = gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_OXYGEN;
            break;
    }

    gHudElements[element].counter = value;
    gHudElements[element].number = value;
    gHudElements[element].field_A = value;
}

#define SHOW_HUD_ELEMENT(element)                                                                      \
    {                                                                                                  \
        gHudElements[element].renderState = 1;                                                         \
        gHudElements[element].field_14 = gHudElements[element].field_10;                               \
        gHudElements[element].field_10 = 0x40000;                                                      \
        gHudElements[element].field_2B = gHudElements[element].field_2A;                               \
        gHudElements[element].field_2A = 0;                                                            \
    }

void show_pause_main_counters(int isDiving) {
    reset_hud_elements();

    if (byte_203E127)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_TOTAL_NOTES);
    if (byte_203E128)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_TOTAL_JIGGIES);
    if (byte_203E12B)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_PAUSE_MUMBO_TOKENS);
    if (byte_203E12A)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS);
    if (byte_203E12C)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_4);
    if (byte_203E129)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_TOTAL_JINJOS);
    if (byte_203E126)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_TOTAL_HONEYCOMBS);

    SHOW_HUD_ELEMENT(HUD_ELEMENT_HEALTH_WITH_ICON);

    if (isDiving) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_OXYGEN);
    } else {
        if (byte_203E122)
            SHOW_HUD_ELEMENT(HUD_ELEMENT_BLUE_EGGS);
        if (byte_203E123)
            SHOW_HUD_ELEMENT(HUD_ELEMENT_ELECTRIC_EGGS);
        if (byte_203E125)
            SHOW_HUD_ELEMENT(HUD_ELEMENT_FIRE_EGGS);
        if (byte_203E124)
            SHOW_HUD_ELEMENT(HUD_ELEMENT_ICE_EGGS);
    }

    byte_203EA80 = 1;
}

void sub_8040E74(void) {
    byte_203EA80 = 0;
    sub_8041E58();
    update_hud_collectables();
}

bool32 are_pause_main_counters_shown(int isDiving) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_TOTAL_NOTES].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_TOTAL_JIGGIES].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_TOTAL_JINJOS].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_PAUSE_MUMBO_TOKENS].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12A && gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12C && gHudElements[HUD_ELEMENT_4].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E126 && gHudElements[HUD_ELEMENT_TOTAL_HONEYCOMBS].renderState != 5) {
        done = FALSE;
    }

    //! Possible fake match.
    if ((*(struct HudElement* volatile*)&gHudElements)[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 5) {
        done = FALSE;
    }

    if (isDiving) {
        if ((*(struct HudElement* volatile*)&gHudElements)[HUD_ELEMENT_OXYGEN].renderState != 5) {
            done = FALSE;
        }
    } else {
        if (byte_203E122 && gHudElements[HUD_ELEMENT_BLUE_EGGS].renderState != 5) {
            done = FALSE;
        }
        if (byte_203E123 && gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].renderState != 5) {
            done = FALSE;
        }
        if (byte_203E124 && gHudElements[HUD_ELEMENT_ICE_EGGS].renderState != 5) {
            done = FALSE;
        }
        if (byte_203E125 && gHudElements[HUD_ELEMENT_FIRE_EGGS].renderState != 5) {
            done = FALSE;
        }
    }

    return done;
}

#define RESTORE_HUD_ELEMENT(element)                                                                   \
    {                                                                                                  \
        gHudElements[element].field_10 = gHudElements[element].field_14;                               \
        gHudElements[element].field_2A = gHudElements[element].field_2B;                               \
    }

#ifdef NONMATCHING
bool32 are_pause_main_counters_hidden(int isDiving) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_19].renderState != 0)
        done = FALSE;
    if (byte_203E128 && gHudElements[HUD_ELEMENT_20].renderState != 0)
        done = FALSE;
    if (byte_203E129 && gHudElements[HUD_ELEMENT_TOTAL_JINJOS].renderState != 0)
        done = FALSE;
    if (byte_203E12B && gHudElements[HUD_ELEMENT_43].renderState != 0)
        done = FALSE;
    if (byte_203E12A && gHudElements[HUD_ELEMENT_42].renderState != 0)
        done = FALSE;
    if (byte_203E12C && gHudElements[HUD_ELEMENT_4].renderState != 0)
        done = FALSE;
    if (byte_203E126 && gHudElements[HUD_ELEMENT_6].renderState != 0)
        done = FALSE;
    if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0)
        done = FALSE;

    if (isDiving) {
        if (gHudElements[HUD_ELEMENT_56].renderState != 0)
            done = FALSE;
    } else {
        if (byte_203E122 && gHudElements[HUD_ELEMENT_9].renderState != 0)
            done = FALSE;
        if (byte_203E123 && gHudElements[HUD_ELEMENT_10].renderState != 0)
            done = FALSE;
        if (byte_203E124 && gHudElements[HUD_ELEMENT_11].renderState != 0)
            done = FALSE;
        if (byte_203E125 && gHudElements[HUD_ELEMENT_12].renderState != 0)
            done = FALSE;
    }

    if (done) {
        if (isDiving) {
            if (byte_203E127)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_19);
            if (byte_203E128)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_20);
            if (byte_203E12B)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_43);
            if (byte_203E12A)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_42);
            if (byte_203E12C)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_4);
            if (byte_203E129)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_TOTAL_JINJOS);
            if (byte_203E126)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_6);
            RESTORE_HUD_ELEMENT(HUD_ELEMENT_HEALTH_WITH_ICON);
            RESTORE_HUD_ELEMENT(HUD_ELEMENT_56);
        } else {
            if (byte_203E127)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_19);
            if (byte_203E128)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_20);
            if (byte_203E12B)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_43);
            if (byte_203E12A)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_42);
            if (byte_203E12C)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_4);
            if (byte_203E129)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_TOTAL_JINJOS);
            if (byte_203E126)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_6);
            RESTORE_HUD_ELEMENT(HUD_ELEMENT_HEALTH_WITH_ICON);
            if (byte_203E122)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_9);
            if (byte_203E123)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_10);
            if (byte_203E125)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_12);
            if (byte_203E124)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_11);
        }
    }

    return done;
}
#else
NAKED bool32 are_pause_main_counters_hidden(int isDiving) {
    asm_unified(".include \"asm/nonmatching/sub_8040FF4.s\"");
}
#endif

#define SET_HUD_COUNTER(element, max, value)                                                           \
    {                                                                                                  \
        gHudElements[element].field_A = max;                                                           \
        gHudElements[element].counter = value;                                                         \
        gHudElements[element].number = gHudElements[element].counter;                                  \
    }

#define SHOW_LEVEL_COUNTER(element, field)                                                             \
    {                                                                                                  \
        SET_HUD_COUNTER(element, stru_80CC84C[level].field, byte_2000FCC[level].field);                \
        SHOW_HUD_ELEMENT(element);                                                                     \
    }

void show_pause_page_counters(u32 level) {
    if (byte_203E127)
        SHOW_LEVEL_COUNTER(HUD_ELEMENT_23, noteCount);
    if (byte_203E128)
        SHOW_LEVEL_COUNTER(HUD_ELEMENT_24, jiggyCount);
    if (byte_203E129)
        SHOW_LEVEL_COUNTER(HUD_ELEMENT_PAUSE_LEVEL_JINJOS, jinjoCount);

    if (byte_203E12B) {
        SET_HUD_COUNTER(
            HUD_ELEMENT_PAUSE_LEVEL_MUMBO_TOKENS,
            stru_80CC84C[level].mumboTokensCliffFarm + stru_80CC84C[level].mumboTokensBadMagicBayou
                + stru_80CC84C[level].mumboTokensFreezingFurnace
                + stru_80CC84C[level].mumboTokensSpillersHarbor,
            byte_2000FCC[level].mumboTokensCliffFarm + byte_2000FCC[level].mumboTokensBadMagicBayou
                + byte_2000FCC[level].mumboTokensFreezingFurnace
                + byte_2000FCC[level].mumboTokensSpillersHarbor);
        SHOW_HUD_ELEMENT(HUD_ELEMENT_PAUSE_LEVEL_MUMBO_TOKENS);
    }

    if (byte_203E12C)
        SHOW_LEVEL_COUNTER(HUD_ELEMENT_27, bozzeyeCount);
    if (byte_203E126)
        SHOW_LEVEL_COUNTER(HUD_ELEMENT_28, honeycombCount);

    switch (level) {
        case 0:
        case 3:
            break;

        case 1:
            if (byte_203E12D)
                SHOW_LEVEL_COUNTER(HUD_ELEMENT_29, chickCount);
            break;

        case 2:
            if (byte_203E12E)
                SHOW_LEVEL_COUNTER(HUD_ELEMENT_30, shellCount);
            if (byte_203E12F)
                SHOW_LEVEL_COUNTER(HUD_ELEMENT_33, field_2);
            break;

        case 4:
            if (byte_203E130)
                SHOW_LEVEL_COUNTER(HUD_ELEMENT_31, silverCoinCount);
            if (byte_203E131)
                SHOW_LEVEL_COUNTER(HUD_ELEMENT_34, field_E);
            if (byte_203E132)
                SHOW_LEVEL_COUNTER(HUD_ELEMENT_35, field_D);
            break;

        case 5:
            if (byte_203E133)
                SHOW_LEVEL_COUNTER(HUD_ELEMENT_32, field_10);
            break;

        case 6:
            if (byte_203E127)
                SET_HUD_COUNTER(HUD_ELEMENT_23, stru_80CC8C4.totalNotes, gGameStatus.totalNotes);
            if (byte_203E128)
                SET_HUD_COUNTER(HUD_ELEMENT_24, stru_80CC8C4.totalJiggies, gGameStatus.totalJiggies);
            if (byte_203E129)
                SET_HUD_COUNTER(HUD_ELEMENT_PAUSE_LEVEL_JINJOS, stru_80CC8C4.totalJinjos,
                                gGameStatus.totalJinjos);
            if (byte_203E12B)
                SET_HUD_COUNTER(HUD_ELEMENT_PAUSE_LEVEL_MUMBO_TOKENS,
                                stru_80CC8C4.mumboTokensCliffFarm + stru_80CC8C4.mumboTokensBadMagicBayou
                                    + stru_80CC8C4.mumboTokensFreezingFurnace
                                    + stru_80CC8C4.mumboTokensSpillersHarbor,
                                gGameStatus.mumboTokensCliffFarm + gGameStatus.mumboTokensBadMagicBayou
                                    + gGameStatus.mumboTokensFreezingFurnace
                                    + gGameStatus.mumboTokensSpillersHarbor);
            if (byte_203E12C)
                SET_HUD_COUNTER(HUD_ELEMENT_27, stru_80CC8C4.field_7, gGameStatus.field_7);
            if (byte_203E126)
                SET_HUD_COUNTER(HUD_ELEMENT_28, stru_80CC8C4.totalHoneycombs,
                                gGameStatus.totalHoneycombs);
            break;

        default:
            HANG;
    }

    byte_203EA80 = 1;
}

void sub_8041AAC(int page) {
    byte_203EA80 = 0;
    sub_8041E58();
}

bool32 are_page_counters_shown(int page) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_23].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_24].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_PAUSE_LEVEL_JINJOS].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_PAUSE_LEVEL_MUMBO_TOKENS].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12C && gHudElements[HUD_ELEMENT_27].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E126 && gHudElements[HUD_ELEMENT_28].renderState != 5) {
        done = FALSE;
    }

    switch (page) {
        case 0:
        case 3:
        case 6:
            break;

        case 1:
            if (byte_203E12D && gHudElements[HUD_ELEMENT_29].renderState != 5) {
                done = FALSE;
            }
            return done;

        case 2:
            if (byte_203E12E && gHudElements[HUD_ELEMENT_30].renderState != 5) {
                done = FALSE;
            }
            if (byte_203E12F && gHudElements[HUD_ELEMENT_33].renderState != 5) {
                done = FALSE;
            }
            return done;

        case 4:
            if (byte_203E130 && gHudElements[HUD_ELEMENT_31].renderState != 5) {
                done = FALSE;
            }
            if (byte_203E131 && gHudElements[HUD_ELEMENT_34].renderState != 5) {
                done = FALSE;
            }
            if (byte_203E132 && gHudElements[HUD_ELEMENT_35].renderState != 5) {
                done = FALSE;
            }
            return done;

        case 5:
            if (byte_203E133 && gHudElements[HUD_ELEMENT_32].renderState != 5) {
                done = FALSE;
            }
            return done;

        default:
            HANG;
    }

    return done;
}

bool32 are_page_counters_hidden(int page) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_23].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_24].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_PAUSE_LEVEL_JINJOS].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_PAUSE_LEVEL_MUMBO_TOKENS].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E12C && gHudElements[HUD_ELEMENT_27].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E126 && gHudElements[HUD_ELEMENT_28].renderState != 0) {
        done = FALSE;
    }

    switch (page) {
        case 0:
        case 3:
        case 6:
            break;

        case 1:
            if (byte_203E12D && gHudElements[HUD_ELEMENT_29].renderState != 0) {
                done = FALSE;
            }
            return done;

        case 2:
            if (byte_203E12E && gHudElements[HUD_ELEMENT_30].renderState != 0) {
                done = FALSE;
            }
            if (byte_203E12F && gHudElements[HUD_ELEMENT_33].renderState != 0) {
                done = FALSE;
            }
            return done;

        case 4:
            if (byte_203E130 && gHudElements[HUD_ELEMENT_31].renderState != 0) {
                done = FALSE;
            }
            if (byte_203E131 && gHudElements[HUD_ELEMENT_34].renderState != 0) {
                done = FALSE;
            }
            if (byte_203E132 && gHudElements[HUD_ELEMENT_35].renderState != 0) {
                done = FALSE;
            }
            return done;

        case 5:
            if (byte_203E133 && gHudElements[HUD_ELEMENT_32].renderState != 0) {
                done = FALSE;
            }
            return done;

        default:
            HANG;
    }

    return done;
}

void sub_8041E58(void) {
    int i;

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        if (gHudElements[i].renderState) {
            gHudElements[i].timer = 1;
            gHudElements[i].field_2A = 0;
        }
    }
}

void sub_8041E88(void) {
    gHudElements[HUD_ELEMENT_BOZZEYE_NOTES].timer = 0;
    gHudElements[HUD_ELEMENT_BOZZEYE_NOTES].field_2A = 0;
    gHudElements[HUD_ELEMENT_40].timer = 0;
    gHudElements[HUD_ELEMENT_40].field_2A = 0;
    gHudElements[HUD_ELEMENT_41].timer = 0;
    gHudElements[HUD_ELEMENT_41].field_2A = 0;
    gHudElements[HUD_ELEMENT_44].timer = 0;
    gHudElements[HUD_ELEMENT_44].field_2A = 0;
    gHudElements[HUD_ELEMENT_45].timer = 0;
    gHudElements[HUD_ELEMENT_45].field_2A = 0;
    gHudElements[HUD_ELEMENT_46].timer = 0;
    gHudElements[HUD_ELEMENT_46].field_2A = 0;
    gHudElements[HUD_ELEMENT_47].timer = 0;
    gHudElements[HUD_ELEMENT_47].field_2A = 0;
    gHudElements[HUD_ELEMENT_48].timer = 0;
    gHudElements[HUD_ELEMENT_48].field_2A = 0;
    gHudElements[HUD_ELEMENT_JINJO_ORACLE_JINJOS].timer = 0;
    gHudElements[HUD_ELEMENT_JINJO_ORACLE_JINJOS].field_2A = 0;
}

void sub_08041F3C(u32 element, int value) {
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_HEALTH;
            break;

        case HUD_METER_OXYGEN:
            renderState = gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_OXYGEN;
            break;
    }

    gHudElements[element].field_10 = value;
}

void sub_08041FA4(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_HEALTH;
            break;

        case HUD_METER_OXYGEN:
            if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0
                && gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 6)
                element = HUD_ELEMENT_OXYGEN;
            break;
    }

    gHudElements[element].field_2A = 1;
}

void sub_0804200C(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_HEALTH;
            break;

        case HUD_METER_OXYGEN:
            renderState = gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_OXYGEN;
            break;
    }

    gHudElements[element].field_2A = 0;
    gHudElements[element].timer = 1;
}

bool32 sub_0804207C(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_HEALTH;
            break;

        case HUD_METER_OXYGEN:
            if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0
                && gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 6)
                element = HUD_ELEMENT_OXYGEN;
            break;
    }

    return gHudElements[element].renderState == 5;
}

bool32 sub_080420E8(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_HEALTH;
            break;

        case HUD_METER_OXYGEN:
            if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0
                && gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 6)
                element = HUD_ELEMENT_OXYGEN;
            break;
    }

    return gHudElements[element].renderState != 0;
}

static int get_hud_element_max(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_METER_OXYGEN);

    switch (element) {
        case HUD_METER_HEALTH:
            renderState = gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].renderState;
            element = HUD_ELEMENT_HEALTH_WITH_ICON;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_HEALTH;
            break;

        case HUD_METER_OXYGEN:
            if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0
                && gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 6)
                element = HUD_ELEMENT_OXYGEN;
            break;
    }

    if (gHudElements[element].renderState != 6 && gHudElements[element].renderState != 0) {
        return gHudElements[element].field_A;
    }

    return -1;
}

static void sub_80421C4(int value, int max, char* buf) {
    int valueLen;
    int maxLen;
    char* end;

    if (value <= 9) {
        valueLen = 1;
        IntegerToAsciiBw(value, buf);
    } else if (value <= 99) {
        valueLen = 2;
        IntegerToAsciiBw(value, buf + 1);
    } else {
        valueLen = 3;
        IntegerToAsciiBw(value, buf + 2);
    }

    buf[valueLen] = '/';

    if (max <= 9) {
        maxLen = 1;
    } else if (max <= 99) {
        maxLen = 2;
    } else {
        maxLen = 3;
    }

    end = buf + (valueLen + maxLen);
    IntegerToAsciiBw(max, end);
    end[1] = 0xFF;
}

bool32 sub_8042218(int value) {
    if (gHudElements[HUD_ELEMENT_36].renderState != 0) {
        gHudElements[HUD_ELEMENT_36].timer = 0;
        return FALSE;
    }

    gHudElements[HUD_ELEMENT_36].counter = value;
    gHudElements[HUD_ELEMENT_36].number = value;
    gHudElements[HUD_ELEMENT_36].renderState = 1;
    gHudElements[HUD_ELEMENT_36].timer = 10;
    return TRUE;
}

void sub_8042250(void) {
    if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 3) {
        gIsStopHoneycombActive = FALSE;
        sub_8063178();
        byte_200108E = 0;
    }

    byte_203EA81 = 1;
}
