#include "global.h"
#include "common.h"
#include "sprite.h"
#include "heap.h"
#include "main.h"
#include "player.h"
#include "audio_b.h"
#include "random.h"
#include "hud.h"

enum HudElementIdx {
    HUD_ELEMENT_LEVEL_NOTES,
    HUD_ELEMENT_LEVEL_JIGGIES,
    HUD_ELEMENT_2,
    HUD_ELEMENT_GOLDEN_FEATHERS,
    HUD_ELEMENT_MOVES_LEARNED,
    HUD_ELEMENT_SHELLS,
    HUD_ELEMENT_HONEYCOMBS,
    HUD_ELEMENT_LEVEL_JINJOS,
    HUD_ELEMENT_CHICKS,
    HUD_ELEMENT_BLUE_EGGS,
    HUD_ELEMENT_ELECTRIC_EGGS,
    HUD_ELEMENT_ICE_EGGS,
    HUD_ELEMENT_FIRE_EGGS,
    HUD_ELEMENT_13,
    HUD_ELEMENT_CAPTIVE_BREEGULLS,
    HUD_ELEMENT_ICE_CREAMS,
    HUD_ELEMENT_TOY_SPACESHIPS,
    HUD_ELEMENT_SILVER_COINS,
    HUD_ELEMENT_GOLD_NUGGETS,
    HUD_ELEMENT_PAUSE_NOTES,
    HUD_ELEMENT_PAUSE_JIGGIES,
    HUD_ELEMENT_PAUSE_JINJOS,
    HUD_ELEMENT_MUMBO_TOKENS,
    HUD_ELEMENT_TOTALS_NOTES,
    HUD_ELEMENT_TOTALS_JIGGIES,
    HUD_ELEMENT_TOTALS_JINJOS,
    HUD_ELEMENT_TOTALS_MUMBO_TOKENS,
    HUD_ELEMENT_TOTALS_MOVES_LEARNED,
    HUD_ELEMENT_TOTALS_HONEYCOMBS,
    HUD_ELEMENT_TOTALS_CHICKS,
    HUD_ELEMENT_TOTALS_SHELLS,
    HUD_ELEMENT_TOTALS_SILVER_COINS,
    HUD_ELEMENT_TOTALS_GOLD_NUGGETS,
    HUD_ELEMENT_TOTALS_CAPTIVE_BREEGULLS,
    HUD_ELEMENT_TOTALS_TOY_SPACESHIPS,
    HUD_ELEMENT_TOTALS_ICE_CREAMS,
    HUD_ELEMENT_36,
    HUD_ELEMENT_37,
    HUD_ELEMENT_38,
    HUD_ELEMENT_BOZZEYE_NOTES,
    HUD_ELEMENT_40,
    HUD_ELEMENT_41,
    HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS,
    HUD_ELEMENT_PAUSE_MUMBO_TOKENS,
    HUD_ELEMENT_MR_RIPOVSKI_SILVER_COINS,
    HUD_ELEMENT_MR_RIPOVSKI_SHELLS,
    HUD_ELEMENT_WHITE_BREEGULL_CAPTIVE_BREEGULLS,
    HUD_ELEMENT_MOMMA_CLUCKER_CHICKS,
    HUD_ELEMENT_MISS_BUCKET_GOLD_NUGGETS,
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
    u16 displayValue;
    u16 targetValue;
    u16 maxValue;
    u16 scriptStep; // Rename this to something else. Like cmdIdx or something.
    u16 displayTime;
    int slideSpeed;
    int savedSlideSpeed;
    u16 timer;
    u16 rouletteTime;
    u8 rouletteStepDelay;
    s8 rouletteIndex;
    bool8 rouletteStarted;
    u8 renderState;
    char text[8];
    bool8 rightAlignText;
    bool8 reshow;
    bool8 keepShown;
    bool8 savedKeepShown;
    struct TextBox textBox;
};

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

struct HudElement* gHudElements;
u8 byte_203EA80;
u8 byte_203EA81;
u32 dword_203EA84;

extern struct struc_59 stru_80AF310[]; // This is the hud script table. Move this to its own file.

static int sub_803EF90(struct HudElement*, int, int, int);
static int sub_803EFCC(struct HudElement*, int, int, int);
static int sub_803EFE8(struct HudElement*, int, int, int);
static int sub_803F004(struct HudElement*, int, int, int);
static int sub_803F020(struct HudElement*, int, int, int);
static int sub_803F03C(struct HudElement*, int, int, int);
static int sub_803F0D4(struct HudElement*, int, int, int);
static int sub_803F14C(struct HudElement*, int, int, int);
static int sub_803F1B4(struct HudElement*, int, int, int);
static int sub_803F21C(struct HudElement*, int, int, int);
static int sub_803F284(struct HudElement*, int, int, int);
static int sub_803F2D0(struct HudElement*, int, int, int);
static int sub_803F2FC(struct HudElement*, int, int, int);
static int sub_803F410(struct HudElement*, int, int, int);
static int sub_803F438(struct HudElement*, int, int, int);
static int sub_803F52C(struct HudElement*, int, int, int);
static int sub_803F5AC(struct HudElement*, int, int, int);
static int sub_803F75C(struct HudElement*, int, int, int);
static int sub_803F8A8(struct HudElement*, int, int, int);
static int sub_803F914(struct HudElement*, int, int, int);
static int sub_803F980(struct HudElement*, int, int, int);
static int sub_803F9EC(struct HudElement*, int, int, int);
static int sub_803F800(struct HudElement*, int, int, int);
static int hud_health_roulette(struct HudElement*, int, int, int);
static int sub_803F0D8(struct HudElement*, int, int, int);
static int sub_803FDDC(struct HudElement*, int, int, int);
static int sub_803F250(struct HudElement*, int, int, int);
static int sub_803F62C(struct HudElement*, int, int, int);
static int sub_803F6C4(struct HudElement*, int, int, int);
static int sub_803F09C(struct HudElement*, int, int, int);

static void sub_80421C4(int, int, char*);
static int get_hud_element_max(u32);

static const u16 word_80A8CF0[] = { 0x473, 0x474, 0x475 };

static const u8 byte_80A8CF6[][8] = {
    { 0, 0, 0, 0, 0, 0, 0, 0 }, { 1, 0, 0, 0, 0, 0, 0, 0 }, { 1, 1, 0, 0, 0, 0, 0, 0 },
    { 1, 1, 1, 0, 0, 0, 0, 0 }, { 1, 1, 1, 1, 0, 0, 0, 0 }, { 1, 1, 1, 1, 1, 0, 0, 0 },
    { 1, 1, 1, 1, 1, 1, 0, 0 }, { 1, 1, 1, 1, 1, 1, 1, 0 }, { 1, 1, 1, 1, 1, 1, 1, 1 },
    { 2, 1, 1, 1, 1, 1, 1, 1 }, { 2, 2, 1, 1, 1, 1, 1, 1 }, { 2, 2, 2, 1, 1, 1, 1, 1 },
    { 2, 2, 2, 2, 1, 1, 1, 1 }, { 2, 2, 2, 2, 2, 1, 1, 1 }, { 2, 2, 2, 2, 2, 2, 1, 1 },
    { 2, 2, 2, 2, 2, 2, 2, 1 }, { 2, 2, 2, 2, 2, 2, 2, 2 }, { 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0 },
};

static const u16 word_80A8D8E[] = { 0x461, 0x462 };

static const u8 byte_80A8D92[][5] = {
    { 0, 0, 0, 0, 0 }, { 1, 0, 0, 0, 0 }, { 1, 1, 0, 0, 0 },
    { 1, 1, 1, 0, 0 }, { 1, 1, 1, 1, 0 }, { 1, 1, 1, 1, 1 },
};

static int (*const dHudFunctions[])(struct HudElement*, int, int, int) = {
    sub_803EF90, sub_803EFCC, sub_803EFE8, sub_803F004, sub_803F020, sub_803F03C,
    sub_803F0D4, sub_803F14C, sub_803F1B4, sub_803F21C, sub_803F284, sub_803F2D0,
    sub_803F2FC, sub_803F410, sub_803F438, sub_803F52C, sub_803F5AC, sub_803F75C,
    sub_803F8A8, sub_803F914, sub_803F980, sub_803F9EC, sub_803F800, hud_health_roulette,
    sub_803F0D8, sub_803FDDC, sub_803F250, sub_803F62C, sub_803F6C4, sub_803F09C,
};

static const u16 word_80A8E28[HUD_ELEMENT_COUNT] = {
    120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120,
    120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 70,  60,  60,  1,
    1,   1,   120, 120, 1,   1,   1,   1,   1,   1,   120, 120, 120, 120, 60,  120, 120, 120, 120, 120,
};

static int sub_803EF90(struct HudElement* element, int _, int __, int ___) {
    if (element->graphicCount != 0) {
        heap_free(element->graphic, HEAP_GENERAL);
        element->graphicCount = 0;
    }

    if (element->reshow) {
        element->reshow = FALSE;
        element->renderState = 1;
        element->scriptStep = 0;
        return 4;
    }

    element->renderState = 0;
    element->scriptStep = 0;
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

static int sub_803F020(struct HudElement* element, int a2, int a3, int _) {
    element->graphic[a2].field_28 = element->graphic[a2].field_20 + (a3 << 16);
    element->graphic[a2].field_34 = 4;
    return 2;
}

static int sub_803F03C(struct HudElement* element, int a2, int a3, int a4) {
    element->textBox.xPosition = a2;
    element->textBox.yPosition = a3;
    element->textBox.stringOffset = 0;

    if (a4 == 1) {
        element->rightAlignText = TRUE;
    } else {
        element->rightAlignText = FALSE;
    }

    if (element->displayValue < 10) {
        element->text[1] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, element->text);
    } else if (element->displayValue < 100) {
        element->text[2] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, &element->text[1]);
    } else {
        element->text[3] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, &element->text[2]);
    }

    element->timer = 10;
    return 2;
}

static int sub_803F09C(struct HudElement* element, int a2, int a3, int a4) {
    element->textBox.xPosition = a2;
    element->textBox.yPosition = a3;
    element->textBox.stringOffset = 0;

    if (a4 == 1) {
        element->rightAlignText = TRUE;
    } else {
        element->rightAlignText = FALSE;
    }

    sub_80421C4(element->displayValue, element->maxValue, element->text);

    element->timer = 10;
    return 2;
}

static int sub_803F0D4(struct HudElement* element, int _, int __, int ___) {
    return 2;
}

static int sub_803F0D8(struct HudElement* element, int _, int __, int ___) {
    if (element->displayValue == element->targetValue) {
        return 2;
    }

    element->timer--;

    if (element->timer != 0) {
        return 1;
    }

    element->timer = 10;

    if (element->displayValue < element->targetValue) {
        element->displayValue++;
    } else if (element->displayValue > element->targetValue) {
        element->displayValue--;
    }

    if (element->displayValue < 10) {
        element->text[1] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, element->text);
    } else if (element->displayValue < 100) {
        element->text[2] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, &element->text[1]);
    } else {
        element->text[3] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, &element->text[2]);
    }

    if (element->displayValue != element->targetValue) {
        return 1;
    }

    return 2;
}

static int sub_803F14C(struct HudElement* element, int _, int __, int ___) {
    if (element->displayValue == element->targetValue) {
        return 2;
    }

    element->timer--;

    if (element->timer != 0) {
        return 1;
    }

    element->timer = 10;

    element->displayValue++;

    if (element->displayValue < 10) {
        element->text[1] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, element->text);
    } else if (element->displayValue < 100) {
        element->text[2] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, &element->text[1]);
    } else {
        element->text[3] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, &element->text[2]);
    }

    if (element->displayValue != element->targetValue) {
        return 1;
    }

    return 2;
}

static int sub_803F1B4(struct HudElement* element, int _, int __, int ___) {
    if (element->displayValue == element->targetValue) {
        return 2;
    }

    element->timer--;

    if (element->timer != 0) {
        return 1;
    }

    element->timer = 10;

    element->displayValue--;

    if (element->displayValue < 10) {
        element->text[1] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, element->text);
    } else if (element->displayValue < 100) {
        element->text[2] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, &element->text[1]);
    } else {
        element->text[3] = STRING_TERMINATOR;
        IntegerToAsciiBw(element->displayValue, &element->text[2]);
    }

    if (element->displayValue != element->targetValue) {
        return 1;
    }

    return 2;
}

static int sub_803F21C(struct HudElement* element, int _, int __, int ___) {
    if (!element->keepShown) {
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
    if (!element->keepShown) {
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
            element->timer = element->displayTime;
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
            element->graphic = heap_alloc(sizeof(struct HudGraphic) * a2, 23, HEAP_GENERAL);
            element->graphicCount = a2;
            for (i = 0; i < element->graphicCount; i++) {
                element->graphic[i].field_34 = -1;
                element->graphic[i].field_35 = 0;
            }
            break;

        case 1:
            element->graphic =
                heap_alloc(sizeof(struct HudGraphic) * (a2 + stru_80CC8C4.maxHealth), 23, HEAP_GENERAL);
            element->graphicCount = gGameStatus.maxHealth + a2;
            for (i = 0; i < element->graphicCount; i++) {
                element->graphic[i].field_34 = -1;
                element->graphic[i].field_35 = 0;
            }
            element->text[0] = STRING_TERMINATOR;
            break;

        case 2:
            element->graphic =
                heap_alloc(sizeof(struct HudGraphic) * (a2 + gGameStatus.maxOxygen), 24, HEAP_GENERAL);
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
                element->graphic[i].field_20 -= element->slideSpeed;
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
                element->graphic[i].field_20 += element->slideSpeed;
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
                element->graphic[i].field_1C -= element->slideSpeed;
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
                element->graphic[i].field_1C += element->slideSpeed;
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
                number = element->targetValue;
                if (number < element->displayValue) {
                    return 2;
                }
                break;
            case 2:
                number = element->targetValue;
                if (number > element->displayValue) {
                    return 2;
                }
                break;
            default:
                number = element->targetValue;
                break;
        }

        number = (u16)number;
        offset = 0xC0000;
        if (number >= 10) {
            offset = 0x1C0000;
            if (number < 100) {
                offset = 0x140000;
            }
        }

        target = element->graphic[a2].field_2C - offset;
    } else {
        target = element->graphic[a2].field_2C;
    }

    element->graphic[a2].field_24 = target;
    if (target > element->graphic[a2].field_1C) {
        element->graphic[a2].field_34 = 2;
    } else {
        element->graphic[a2].field_34 = 6;
    }

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
                number = element->targetValue;
                if (number < element->displayValue) {
                    return 2;
                }
                break;
            case 2:
                number = element->targetValue;
                if (number > element->displayValue) {
                    return 2;
                }
                break;
            default:
                number = element->targetValue;
                break;
        }

        number = (u16)number;
        offset = 0xC0000;
        if (number >= 10) {
            offset = 0x1C0000;
            if (number < 100) {
                offset = 0x140000;
            }
        }

        target = element->graphic[a2].field_2C + offset;
    } else {
        target = element->graphic[a2].field_2C;
    }

    element->graphic[a2].field_24 = target;
    if (target < element->graphic[a2].field_1C) {
        element->graphic[a2].field_34 = 6;
    } else {
        element->graphic[a2].field_34 = 2;
    }

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
                number = element->targetValue;
                if (number < element->displayValue) {
                    return 2;
                }
                break;
            case 2:
                number = element->targetValue;
                if (number > element->displayValue) {
                    return 2;
                }
                break;
            default:
                number = element->targetValue;
                break;
        }

        number = (u16)number;
        offset = 0xC0000;
        if (number >= 10) {
            offset = 0x1C0000;
            if (number < 100) {
                offset = 0x140000;
            }
        }

        number = element->maxValue;
        offset2 = 0xC0000;
        if (number >= 10) {
            offset2 = 0x1C0000;
            if (number < 100) {
                offset2 = 0x140000;
            }
        }

        target = element->graphic[a2].field_2C - offset - offset2;
    } else {
        target = element->graphic[a2].field_2C;
    }

    element->graphic[a2].field_24 = target;
    if (target > element->graphic[a2].field_1C) {
        element->graphic[a2].field_34 = 2;
    } else {
        element->graphic[a2].field_34 = 6;
    }

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
                number = element->targetValue;
                if (number < element->displayValue) {
                    return 2;
                }
                break;
            case 2:
                number = element->targetValue;
                if (number > element->displayValue) {
                    return 2;
                }
                break;
            default:
                number = element->targetValue;
                break;
        }

        number = (u16)number;
        offset = 0xC0000;
        if (number >= 10) {
            offset = 0x1C0000;
            if (number < 100) {
                offset = 0x140000;
            }
        }

        number = element->maxValue;
        offset2 = 0xC0000;
        if (number >= 10) {
            offset2 = 0x1C0000;
            if (number < 100) {
                offset2 = 0x140000;
            }
        }

        target = element->graphic[a2].field_2C + offset + offset2;
    } else {
        target = element->graphic[a2].field_2C;
    }

    element->graphic[a2].field_24 = target;
    if (target < element->graphic[a2].field_1C) {
        element->graphic[a2].field_34 = 6;
    } else {
        element->graphic[a2].field_34 = 2;
    }

    return 2;
}

static int sub_803F75C(struct HudElement* element, int a2, int a3, int a4) {
    int i;
    const u8* ptr = byte_80A8CF6[element->displayValue];

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
    const u8* ptr = byte_80A8D92[element->displayValue];

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

static int hud_health_roulette(struct HudElement* element, int a2, int a3, int a4) {
    int i;

    switch (element->targetValue) {
        case 17:
            if (!element->rouletteTime || byte_203EA81) {
                if (element->rouletteIndex < 0) {
                    element->rouletteIndex = 0;
                }
                element->displayValue = 0;
                if (!gGameStatus.enableExtraHealth) {
                    element->targetValue = element->rouletteIndex + 1;
                } else {
                    element->targetValue = element->rouletteIndex + 9;
                }
                gGameStatus.health = element->targetValue;
                element->rouletteIndex = 0;
                end_stop_honeycomb();
                gIsStopHoneycombActive = FALSE;
                sub_8063178();
                byte_200108E = 0;
            } else {
                element->rouletteTime--;
                if (element->rouletteStepDelay != 0) {
                    element->rouletteStepDelay--;
                    return 1;
                }
                PLAY_SFX(170);
                if (element->rouletteStarted) {
                    sprite_set_anim(
                        (struct Sprite*)&element->graphic[element->rouletteIndex + a2].sprite,
                        word_80A8CF0[0], 0, 1);
                } else {
                    element->rouletteStarted = TRUE;
                    for (i = a2; i < element->graphicCount; i++) {
                        sprite_set_anim((struct Sprite*)&element->graphic[i].sprite, word_80A8CF0[0], 0,
                                        1);
                    }
                }
                element->rouletteIndex++;
                if (element->rouletteIndex + a2 >= element->graphicCount) {
                    element->rouletteIndex = 0;
                }
                sprite_set_anim((struct Sprite*)&element->graphic[element->rouletteIndex + a2].sprite,
                                word_80A8CF0[1], 0, 1);
                element->rouletteStepDelay = unk_80CF330[gLoadedRoomLevel];
                return 1;
            }
            break;

        case 18:
            if (!element->rouletteTime || byte_203EA81) {
                if (element->rouletteIndex < 0) {
                    element->rouletteIndex = 0;
                }
                element->displayValue = 0;
                if (!gGameStatus.enableExtraHealth) {
                    element->targetValue = element->rouletteIndex + 1;
                } else {
                    element->targetValue = element->rouletteIndex + 9;
                }
                gGameStatus.health = element->targetValue;
                element->rouletteIndex = 0;
                end_stop_honeycomb();
                gIsStopHoneycombActive = FALSE;
                sub_8063178();
                byte_200108E = 0;
            } else {
                int v10;

                element->rouletteTime--;
                if (element->rouletteStepDelay != 0) {
                    element->rouletteStepDelay--;
                    return 1;
                }

                PLAY_SFX(170);
                v10 = element->rouletteIndex;
                if (element->rouletteStarted) {
                    sprite_set_anim(
                        (struct Sprite*)&element->graphic[element->rouletteIndex + a2].sprite,
                        word_80A8CF0[0], 0, 1);
                } else {
                    element->rouletteStarted = TRUE;
                    for (i = a2; i < element->graphicCount; i++) {
                        sprite_set_anim((struct Sprite*)&element->graphic[i].sprite, word_80A8CF0[0], 0,
                                        1);
                    }
                }

                while (v10 == element->rouletteIndex) {
                    element->rouletteIndex = random_range(a2, element->graphicCount - 1) - a2;
                }

                sprite_set_anim((struct Sprite*)&element->graphic[element->rouletteIndex + a2].sprite,
                                word_80A8CF0[1], 0, 1);
                element->rouletteStepDelay = unk_80CF348[gLoadedRoomLevel];
                return 1;
            }
            break;
    }

    if (element->displayValue == element->targetValue) {
        return 2;
    }

    element->timer--;

    if (element->timer == 0) {
        const u8* v1;

        element->timer = 10;

        if (element->displayValue < element->targetValue) {
            element->displayValue++;
            dword_203EA84 = PLAY_SFX(200);
        } else if (element->displayValue > element->targetValue) {
            element->displayValue--;
        }

        v1 = byte_80A8CF6[element->displayValue];
        for (i = a2; i < element->graphicCount; i++) {
            sprite_set_anim((struct Sprite*)&element->graphic[i].sprite, word_80A8CF0[v1[i - a2]], 0,
                            1);
            element->graphic[i].field_35 = 1;
        }

        if (element->displayValue == element->targetValue) {
            return 2;
        }
    }

    return 1;
}

static int sub_803FDDC(struct HudElement* element, int a2, int a3, int a4) {
    const u8* v1;
    int i;

    if (element->displayValue == element->targetValue) {
        return 2;
    }

    element->timer--;

    if (element->timer == 0) {
        element->timer = 10;

        if (element->displayValue < element->targetValue) {
            element->displayValue++;
        } else if (element->displayValue > element->targetValue) {
            element->displayValue--;
        }

        v1 = byte_80A8D92[element->displayValue];
        for (i = a2; i < element->graphicCount; i++) {
            sprite_set_anim((struct Sprite*)&element->graphic[i].sprite, word_80A8D8E[v1[i - a2]], 0,
                            1);
            element->graphic[i].field_35 = 1;
        }

        if (element->displayValue == element->targetValue) {
            return 2;
        }
    }

    return 1;
}

void reset_hud_elements(void) {
    gHudElements[HUD_ELEMENT_PAUSE_NOTES].maxValue = stru_80CC8C4.totalNotes;
    gHudElements[HUD_ELEMENT_PAUSE_NOTES].displayValue = gGameStatus.totalNotes;
    gHudElements[HUD_ELEMENT_PAUSE_NOTES].targetValue =
        gHudElements[HUD_ELEMENT_PAUSE_NOTES].displayValue;

    gHudElements[HUD_ELEMENT_PAUSE_JIGGIES].maxValue = stru_80CC8C4.totalJiggies;
    gHudElements[HUD_ELEMENT_PAUSE_JIGGIES].displayValue = gGameStatus.totalJiggies;
    gHudElements[HUD_ELEMENT_PAUSE_JIGGIES].targetValue =
        gHudElements[HUD_ELEMENT_PAUSE_JIGGIES].displayValue;

    gHudElements[HUD_ELEMENT_BLUE_EGGS].maxValue = stru_80CC8C4.eggs[EGG_BLUE];
    gHudElements[HUD_ELEMENT_BLUE_EGGS].displayValue = gGameStatus.eggs[EGG_BLUE];
    gHudElements[HUD_ELEMENT_BLUE_EGGS].targetValue = gHudElements[HUD_ELEMENT_BLUE_EGGS].displayValue;

    gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].maxValue = stru_80CC8C4.eggs[EGG_ELECTRIC];
    gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].displayValue = gGameStatus.eggs[EGG_ELECTRIC];
    gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].targetValue =
        gHudElements[HUD_ELEMENT_ELECTRIC_EGGS].displayValue;

    gHudElements[HUD_ELEMENT_FIRE_EGGS].maxValue = stru_80CC8C4.eggs[EGG_FIRE];
    gHudElements[HUD_ELEMENT_FIRE_EGGS].displayValue = gGameStatus.eggs[EGG_FIRE];
    gHudElements[HUD_ELEMENT_FIRE_EGGS].targetValue = gHudElements[HUD_ELEMENT_FIRE_EGGS].displayValue;

    gHudElements[HUD_ELEMENT_ICE_EGGS].maxValue = stru_80CC8C4.eggs[EGG_ICE];
    gHudElements[HUD_ELEMENT_ICE_EGGS].displayValue = gGameStatus.eggs[EGG_ICE];
    gHudElements[HUD_ELEMENT_ICE_EGGS].targetValue = gHudElements[HUD_ELEMENT_ICE_EGGS].displayValue;

    gHudElements[HUD_ELEMENT_GOLDEN_FEATHERS].maxValue = stru_80CC8C4.goldenFeathers;
    gHudElements[HUD_ELEMENT_GOLDEN_FEATHERS].displayValue = gGameStatus.goldenFeathers;
    gHudElements[HUD_ELEMENT_GOLDEN_FEATHERS].targetValue =
        gHudElements[HUD_ELEMENT_GOLDEN_FEATHERS].displayValue;

    gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].maxValue = stru_80CC8C4.goldenFeathers;
    gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].displayValue = gGameStatus.goldenFeathers;
    gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].targetValue =
        gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].displayValue;

    gHudElements[HUD_ELEMENT_MUMBO_TOKENS].maxValue = gGameStatus.mumboTokens;
    gHudElements[HUD_ELEMENT_MUMBO_TOKENS].displayValue = gGameStatus.mumboTokens;
    gHudElements[HUD_ELEMENT_MUMBO_TOKENS].targetValue =
        gHudElements[HUD_ELEMENT_MUMBO_TOKENS].displayValue;

    gHudElements[HUD_ELEMENT_PAUSE_MUMBO_TOKENS].maxValue = gGameStatus.mumboTokens;
    gHudElements[HUD_ELEMENT_PAUSE_MUMBO_TOKENS].displayValue = gGameStatus.mumboTokens;
    gHudElements[HUD_ELEMENT_PAUSE_MUMBO_TOKENS].targetValue =
        gHudElements[HUD_ELEMENT_MUMBO_TOKENS].displayValue;

    gHudElements[HUD_ELEMENT_MOVES_LEARNED].maxValue = stru_80CC8C4.movesLearned;
    gHudElements[HUD_ELEMENT_MOVES_LEARNED].displayValue = gGameStatus.movesLearned;
    gHudElements[HUD_ELEMENT_MOVES_LEARNED].targetValue =
        gHudElements[HUD_ELEMENT_MOVES_LEARNED].displayValue;

    gHudElements[HUD_ELEMENT_SHELLS].maxValue = stru_80CC84C[gLoadedRoomLevel].shellCount;
    gHudElements[HUD_ELEMENT_SHELLS].displayValue = byte_2000FCC[gLoadedRoomLevel].shellCount;
    gHudElements[HUD_ELEMENT_SHELLS].targetValue = gHudElements[HUD_ELEMENT_SHELLS].displayValue;

    gHudElements[HUD_ELEMENT_CHICKS].maxValue = stru_80CC84C[gLoadedRoomLevel].chickCount;
    gHudElements[HUD_ELEMENT_CHICKS].displayValue = byte_2000FCC[gLoadedRoomLevel].chickCount;
    gHudElements[HUD_ELEMENT_CHICKS].targetValue = gHudElements[HUD_ELEMENT_CHICKS].displayValue;

    gHudElements[HUD_ELEMENT_HONEYCOMBS].maxValue = stru_80CC8C4.totalHoneycombs;
    gHudElements[HUD_ELEMENT_HONEYCOMBS].displayValue = gGameStatus.totalHoneycombs;
    gHudElements[HUD_ELEMENT_HONEYCOMBS].targetValue =
        gHudElements[HUD_ELEMENT_HONEYCOMBS].displayValue;

    gHudElements[HUD_ELEMENT_PAUSE_JINJOS].maxValue = stru_80CC8C4.totalJinjos;
    gHudElements[HUD_ELEMENT_PAUSE_JINJOS].displayValue = gGameStatus.totalJinjos;
    gHudElements[HUD_ELEMENT_PAUSE_JINJOS].targetValue =
        gHudElements[HUD_ELEMENT_PAUSE_JINJOS].displayValue;

    gHudElements[HUD_ELEMENT_CAPTIVE_BREEGULLS].maxValue = stru_80CC8C4.captiveBreegulls;
    gHudElements[HUD_ELEMENT_CAPTIVE_BREEGULLS].displayValue = gGameStatus.captiveBreegulls;
    gHudElements[HUD_ELEMENT_CAPTIVE_BREEGULLS].targetValue =
        gHudElements[HUD_ELEMENT_CAPTIVE_BREEGULLS].displayValue;

    gHudElements[HUD_ELEMENT_SILVER_COINS].maxValue = stru_80CC8C4.silverCoins;
    gHudElements[HUD_ELEMENT_SILVER_COINS].displayValue = gGameStatus.silverCoins;
    gHudElements[HUD_ELEMENT_SILVER_COINS].targetValue =
        gHudElements[HUD_ELEMENT_SILVER_COINS].displayValue;

    gHudElements[HUD_ELEMENT_TOY_SPACESHIPS].maxValue = stru_80CC8C4.toySpaceships;
    gHudElements[HUD_ELEMENT_TOY_SPACESHIPS].displayValue = gGameStatus.toySpaceships;
    gHudElements[HUD_ELEMENT_TOY_SPACESHIPS].targetValue =
        gHudElements[HUD_ELEMENT_TOY_SPACESHIPS].displayValue;

    gHudElements[HUD_ELEMENT_ICE_CREAMS].maxValue = stru_80CC8C4.iceCreams;
    gHudElements[HUD_ELEMENT_ICE_CREAMS].displayValue = gGameStatus.iceCreams;
    gHudElements[HUD_ELEMENT_ICE_CREAMS].targetValue =
        gHudElements[HUD_ELEMENT_ICE_CREAMS].displayValue;

    gHudElements[HUD_ELEMENT_GOLD_NUGGETS].maxValue = stru_80CC8C4.goldNuggets;
    gHudElements[HUD_ELEMENT_GOLD_NUGGETS].displayValue = gGameStatus.goldNuggets;
    gHudElements[HUD_ELEMENT_GOLD_NUGGETS].targetValue =
        gHudElements[HUD_ELEMENT_GOLD_NUGGETS].displayValue;

    if (gHudElements[HUD_ELEMENT_HEALTH].renderState == 0) {
        gHudElements[HUD_ELEMENT_HEALTH].maxValue = stru_80CC8C4.health;
        gHudElements[HUD_ELEMENT_HEALTH].displayValue = gGameStatus.health;
        gHudElements[HUD_ELEMENT_HEALTH].targetValue = gHudElements[HUD_ELEMENT_HEALTH].displayValue;
    }

    if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState == 0) {
        gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].maxValue = stru_80CC8C4.health;
        gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].displayValue = gGameStatus.health;
        gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].targetValue =
            gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].displayValue;
    }

    gHudElements[HUD_ELEMENT_OXYGEN].maxValue = stru_80CC8C4.oxygen;
    gHudElements[HUD_ELEMENT_OXYGEN].displayValue = gGameStatus.oxygen;
    gHudElements[HUD_ELEMENT_OXYGEN].targetValue = gHudElements[HUD_ELEMENT_OXYGEN].displayValue;

    gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].maxValue = stru_80CC8C4.oxygen;
    gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].displayValue = gGameStatus.oxygen;
    gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].targetValue =
        gHudElements[HUD_ELEMENT_OXYGEN_WITH_ICON].displayValue;
}

void update_bozzeye_notes_counter(void) {
    gHudElements[HUD_ELEMENT_BOZZEYE_NOTES].displayValue = gGameStatus.totalNotes;
    gHudElements[HUD_ELEMENT_BOZZEYE_NOTES].targetValue = gGameStatus.totalNotes;
}

void init_hud_elements(void) {
    int i;

    byte_203EA80 = 0;
    dword_203EA84 = -1;
    gHudElements = heap_alloc(sizeof(struct HudElement) * HUD_ELEMENT_COUNT, 3, HEAP_GENERAL);

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        gHudElements[i].renderState = 0;
        gHudElements[i].reshow = FALSE;
        gHudElements[i].scriptStep = 0;
        gHudElements[i].graphicCount = 0;
        gHudElements[i].displayTime = word_80A8E28[i];
        gHudElements[i].slideSpeed = 0x2CCCC;
        gHudElements[i].keepShown = FALSE;
        gHudElements[i].rouletteIndex = 0;
        gHudElements[i].rouletteStepDelay = 0;
        gHudElements[i].rouletteTime = 0;
        gHudElements[i].rouletteStarted = FALSE;
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
    gHudElements[HUD_ELEMENT_LEVEL_NOTES].maxValue = stru_80CC84C[gLoadedRoomLevel].noteCount;
    gHudElements[HUD_ELEMENT_LEVEL_NOTES].displayValue = byte_2000FCC[gLoadedRoomLevel].noteCount;
    gHudElements[HUD_ELEMENT_LEVEL_NOTES].targetValue =
        gHudElements[HUD_ELEMENT_LEVEL_NOTES].displayValue;

    gHudElements[HUD_ELEMENT_LEVEL_JIGGIES].maxValue = stru_80CC84C[gLoadedRoomLevel].jiggyCount;
    gHudElements[HUD_ELEMENT_LEVEL_JIGGIES].displayValue = byte_2000FCC[gLoadedRoomLevel].jiggyCount;
    gHudElements[HUD_ELEMENT_LEVEL_JIGGIES].targetValue =
        gHudElements[HUD_ELEMENT_LEVEL_JIGGIES].displayValue;

    gHudElements[HUD_ELEMENT_LEVEL_JINJOS].maxValue = stru_80CC84C[gLoadedRoomLevel].jinjoCount;
    gHudElements[HUD_ELEMENT_LEVEL_JINJOS].displayValue = byte_2000FCC[gLoadedRoomLevel].jinjoCount;
    gHudElements[HUD_ELEMENT_LEVEL_JINJOS].targetValue =
        gHudElements[HUD_ELEMENT_LEVEL_JINJOS].displayValue;
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
            if (renderState != 0 && renderState != 6) {
                element = HUD_ELEMENT_HEALTH;
            }
            gHudElements[element].timer = 10;
            if (value == 17) {
                gHudElements[element].rouletteTime = 600;
                gHudElements[element].rouletteStepDelay = 0;
                gHudElements[element].rouletteStarted = FALSE;
                sub_80630C0(600, 0);
                gHudElements[element].displayValue = value;
                gHudElements[element].rouletteIndex = -1;
                byte_203EA81 = 0;
            } else if (value == 18) {
                gHudElements[element].rouletteTime = 600;
                gHudElements[element].rouletteStepDelay = 0;
                gHudElements[element].rouletteStarted = FALSE;
                sub_80630C0(600, 0);
                gHudElements[element].displayValue = value;
                byte_203EA81 = 0;
            }
            gHudElements[element].targetValue = value;
            break;

        case HUD_METER_OXYGEN:
            renderState = gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState;
            element = HUD_ELEMENT_OXYGEN_WITH_ICON;
            if (renderState != 0 && renderState != 6) {
                element = HUD_ELEMENT_OXYGEN;
            }
            gHudElements[element].timer = 10;
            gHudElements[element].targetValue = value;
            break;

        case HUD_ELEMENT_55:
            gHudElements[element].targetValue = value;
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = value;
            break;

        case HUD_ELEMENT_HONEYCOMBS:
            ASSERT(gHudElements[element].displayValue <= value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_40);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_40, n);
            }
            break;

        case HUD_ELEMENT_LEVEL_NOTES:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_BOZZEYE_NOTES);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_BOZZEYE_NOTES, n);
            }
            break;

        case HUD_ELEMENT_LEVEL_JIGGIES:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_41);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_41, n);
            }
            break;

        case HUD_ELEMENT_2:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            break;

        case HUD_ELEMENT_MOVES_LEARNED:
            ASSERT(gHudElements[element].displayValue <= value);
            gHudElements[element].targetValue = value;
            break;

        case HUD_ELEMENT_SHELLS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_MR_RIPOVSKI_SHELLS);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_MR_RIPOVSKI_SHELLS, n);
            }
            break;

        case HUD_ELEMENT_LEVEL_JINJOS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_JINJO_ORACLE_JINJOS);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_JINJO_ORACLE_JINJOS, n);
            }
            break;

        case HUD_ELEMENT_CHICKS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_MOMMA_CLUCKER_CHICKS);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_MOMMA_CLUCKER_CHICKS, n);
            }
            break;

        case HUD_ELEMENT_CAPTIVE_BREEGULLS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_WHITE_BREEGULL_CAPTIVE_BREEGULLS);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_WHITE_BREEGULL_CAPTIVE_BREEGULLS, n);
            }
            break;

        case HUD_ELEMENT_ICE_CREAMS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            break;

        case HUD_ELEMENT_TOY_SPACESHIPS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            break;

        case HUD_ELEMENT_SILVER_COINS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_MR_RIPOVSKI_SILVER_COINS);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_MR_RIPOVSKI_SILVER_COINS, n);
            }
            break;

        case HUD_ELEMENT_GOLD_NUGGETS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
            n = get_hud_element_max(HUD_ELEMENT_MISS_BUCKET_GOLD_NUGGETS);
            if (n >= 0) {
                set_hud_number(HUD_ELEMENT_MISS_BUCKET_GOLD_NUGGETS, n);
            }
            break;

        case HUD_ELEMENT_36:
            gHudElements[element].displayValue = value;
            gHudElements[element].targetValue = value;
            break;

        case HUD_ELEMENT_PAUSE_NOTES:
            gHudElements[element].displayValue = value;
            gHudElements[element].targetValue = value;
            break;

        case HUD_ELEMENT_BOZZEYE_NOTES:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = gGameStatus.totalNotes;
            gHudElements[element].targetValue = gGameStatus.totalNotes;
            break;

        case HUD_ELEMENT_40:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = gGameStatus.totalHoneycombs;
            gHudElements[element].targetValue = gGameStatus.totalHoneycombs;
            break;

        case HUD_ELEMENT_41:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = gGameStatus.totalJiggies;
            gHudElements[element].targetValue = gGameStatus.totalJiggies;
            break;

        case HUD_ELEMENT_MR_RIPOVSKI_SILVER_COINS:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = gGameStatus.silverCoins;
            gHudElements[element].targetValue = gGameStatus.silverCoins;
            break;

        case HUD_ELEMENT_MR_RIPOVSKI_SHELLS:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = gGameStatus.shells;
            gHudElements[element].targetValue = gGameStatus.shells;
            break;

        case HUD_ELEMENT_WHITE_BREEGULL_CAPTIVE_BREEGULLS:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = gGameStatus.captiveBreegulls;
            gHudElements[element].targetValue = gGameStatus.captiveBreegulls;
            break;

        case HUD_ELEMENT_MOMMA_CLUCKER_CHICKS:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = gGameStatus.chicks;
            gHudElements[element].targetValue = gGameStatus.chicks;
            break;

        case HUD_ELEMENT_MISS_BUCKET_GOLD_NUGGETS:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = gGameStatus.goldNuggets;
            gHudElements[element].targetValue = gGameStatus.goldNuggets;
            break;

        case HUD_ELEMENT_JINJO_ORACLE_JINJOS:
            gHudElements[element].maxValue = value;
            gHudElements[element].displayValue = byte_2000FCC[gLoadedRoomLevel].jinjoCount;
            gHudElements[element].targetValue = byte_2000FCC[gLoadedRoomLevel].jinjoCount;
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
            gHudElements[element].targetValue = value;
            break;

        case HUD_ELEMENT_PAUSE_MUMBO_TOKENS:
            ASSERT(gHudElements[element].displayValue < value);
            gHudElements[element].targetValue = value;
        default:
            ASSERT(0);
            break;
    }

    switch (gHudElements[element].renderState) {
        case 0:
            gHudElements[element].renderState = 1;
            break;

        case 6:
            gHudElements[element].reshow = TRUE;
            break;

        case 3:
        case 4:
        case 5:
            funcIdx = stru_80AF310[element].states[gHudElements[element].scriptStep].funcIdx;
            arg1 = stru_80AF310[element].states[gHudElements[element].scriptStep].arg1;
            while (funcIdx != 11 || (arg1 != 3 && arg1 != 4)) {
                gHudElements[element].scriptStep--;
                funcIdx = stru_80AF310[element].states[gHudElements[element].scriptStep].funcIdx;
                arg1 = stru_80AF310[element].states[gHudElements[element].scriptStep].arg1;
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
            gHudElements[element].reshow = TRUE;
            break;

        case 5:
            do {
                gHudElements[element].scriptStep--;
                funcIdx = stru_80AF310[element].states[gHudElements[element].scriptStep].funcIdx;
                arg1 = stru_80AF310[element].states[gHudElements[element].scriptStep].arg1;
            } while (funcIdx != 11 || arg1 != 3);
            break;
    }
}

void update_hud(void) {
    int i;

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        if (gHudElements[i].renderState) {
            u16 idx = gHudElements[i].scriptStep;
            struct struc_60* states = stru_80AF310[i].states;

            u32 funcIdx = states[idx].funcIdx;
            u32 arg1 = states[idx].arg1;
            u32 arg2 = states[idx].arg2;
            u32 arg3 = states[idx].arg3;

            if (dHudFunctions[funcIdx](&gHudElements[i], arg1, arg2, arg3) == 2) {
                gHudElements[i].scriptStep++;
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

            if (gHudElements[i].rightAlignText) {
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
            gHudElements[i].displayValue = gHudElements[i].targetValue;
            gHudElements[i].reshow = FALSE;
            gHudElements[i].scriptStep = 0;

            if (gHudElements[i].graphicCount) {
                heap_free(gHudElements[i].graphic, HEAP_GENERAL);
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

    gHudElements[element].displayValue = gHudElements[element].targetValue;
    gHudElements[element].reshow = FALSE;
    gHudElements[element].scriptStep = 0;
    if (gHudElements[element].renderState) {
        gHudElements[element].renderState = 0;
        if (gHudElements[element].graphicCount) {
            heap_free(gHudElements[element].graphic, HEAP_GENERAL);
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

    gHudElements[element].displayValue = value;
    gHudElements[element].targetValue = value;
    gHudElements[element].maxValue = value;
}

#define SHOW_HUD_ELEMENT(element)                                                                      \
    {                                                                                                  \
        gHudElements[element].renderState = 1;                                                         \
        gHudElements[element].savedSlideSpeed = gHudElements[element].slideSpeed;                      \
        gHudElements[element].slideSpeed = 0x40000;                                                    \
        gHudElements[element].savedKeepShown = gHudElements[element].keepShown;                        \
        gHudElements[element].keepShown = FALSE;                                                       \
    }

void show_pause_counters(int isDiving) {
    reset_hud_elements();

    if (byte_203E127) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_PAUSE_NOTES);
    }
    if (byte_203E128) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_PAUSE_JIGGIES);
    }
    if (byte_203E12B) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_PAUSE_MUMBO_TOKENS);
    }
    if (byte_203E12A) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS);
    }
    if (gShowMovesLearnedCounter) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_MOVES_LEARNED);
    }
    if (byte_203E129) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_PAUSE_JINJOS);
    }
    if (byte_203E126) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_HONEYCOMBS);
    }

    SHOW_HUD_ELEMENT(HUD_ELEMENT_HEALTH_WITH_ICON);

    if (isDiving) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_OXYGEN);
    } else {
        if (byte_203E122) {
            SHOW_HUD_ELEMENT(HUD_ELEMENT_BLUE_EGGS);
        }
        if (byte_203E123) {
            SHOW_HUD_ELEMENT(HUD_ELEMENT_ELECTRIC_EGGS);
        }
        if (byte_203E125) {
            SHOW_HUD_ELEMENT(HUD_ELEMENT_FIRE_EGGS);
        }
        if (byte_203E124) {
            SHOW_HUD_ELEMENT(HUD_ELEMENT_ICE_EGGS);
        }
    }

    byte_203EA80 = 1;
}

void hide_pause_counters(void) {
    byte_203EA80 = 0;
    dismiss_hud_elements();
    update_hud_collectables();
}

bool32 are_pause_counters_shown(int isDiving) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_PAUSE_NOTES].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_PAUSE_JIGGIES].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_PAUSE_JINJOS].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_PAUSE_MUMBO_TOKENS].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12A && gHudElements[HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS].renderState != 5) {
        done = FALSE;
    }
    if (gShowMovesLearnedCounter && gHudElements[HUD_ELEMENT_MOVES_LEARNED].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E126 && gHudElements[HUD_ELEMENT_HONEYCOMBS].renderState != 5) {
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
        gHudElements[element].slideSpeed = gHudElements[element].savedSlideSpeed;                      \
        gHudElements[element].keepShown = gHudElements[element].savedKeepShown;                        \
    }

#ifdef NONMATCHING
bool32 are_pause_counters_hidden(int isDiving) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_19].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_20].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_PAUSE_JINJOS].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_43].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E12A && gHudElements[HUD_ELEMENT_42].renderState != 0) {
        done = FALSE;
    }
    if (gShowMovesLearnedCounter && gHudElements[HUD_ELEMENT_MOVES_LEARNED].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E126 && gHudElements[HUD_ELEMENT_6].renderState != 0) {
        done = FALSE;
    }
    if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0) {
        done = FALSE;
    }

    if (isDiving) {
        if (gHudElements[HUD_ELEMENT_56].renderState != 0) {
            done = FALSE;
        }
    } else {
        if (byte_203E122 && gHudElements[HUD_ELEMENT_9].renderState != 0) {
            done = FALSE;
        }
        if (byte_203E123 && gHudElements[HUD_ELEMENT_10].renderState != 0) {
            done = FALSE;
        }
        if (byte_203E124 && gHudElements[HUD_ELEMENT_11].renderState != 0) {
            done = FALSE;
        }
        if (byte_203E125 && gHudElements[HUD_ELEMENT_12].renderState != 0) {
            done = FALSE;
        }
    }

    if (done) {
        if (isDiving) {
            if (byte_203E127) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_19);
            }
            if (byte_203E128) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_20);
            }
            if (byte_203E12B) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_43);
            }
            if (byte_203E12A) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_42);
            }
            if (gShowMovesLearnedCounter) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_MOVES_LEARNED);
            }
            if (byte_203E129) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_PAUSE_JINJOS);
            }
            if (byte_203E126) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_6);
            }
            RESTORE_HUD_ELEMENT(HUD_ELEMENT_HEALTH_WITH_ICON);
            RESTORE_HUD_ELEMENT(HUD_ELEMENT_56);
        } else {
            if (byte_203E127) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_19);
            }
            if (byte_203E128) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_20);
            }
            if (byte_203E12B) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_43);
            }
            if (byte_203E12A) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_42);
            }
            if (gShowMovesLearnedCounter) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_MOVES_LEARNED);
            }
            if (byte_203E129) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_PAUSE_JINJOS);
            }
            if (byte_203E126) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_6);
            }
            RESTORE_HUD_ELEMENT(HUD_ELEMENT_HEALTH_WITH_ICON);
            if (byte_203E122) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_9);
            }
            if (byte_203E123) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_10);
            }
            if (byte_203E125) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_12);
            }
            if (byte_203E124) {
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_11);
            }
        }
    }

    return done;
}
#else
NAKED bool32 are_pause_counters_hidden(int isDiving) {
    asm_unified(".include \"asm/nonmatching/sub_8040FF4.s\"");
}
#endif

#define SET_HUD_COUNTER(element, max, value)                                                           \
    {                                                                                                  \
        gHudElements[element].maxValue = max;                                                          \
        gHudElements[element].displayValue = value;                                                    \
        gHudElements[element].targetValue = gHudElements[element].displayValue;                        \
    }

#define SHOW_TOTALS_COUNTER(element, field)                                                            \
    {                                                                                                  \
        SET_HUD_COUNTER(element, stru_80CC84C[page].field, byte_2000FCC[page].field);                  \
        SHOW_HUD_ELEMENT(element);                                                                     \
    }

void show_totals_counters(u32 page) {
    if (byte_203E127) {
        SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_NOTES, noteCount);
    }
    if (byte_203E128) {
        SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_JIGGIES, jiggyCount);
    }
    if (byte_203E129) {
        SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_JINJOS, jinjoCount);
    }

    if (byte_203E12B) {
        SET_HUD_COUNTER(
            HUD_ELEMENT_TOTALS_MUMBO_TOKENS,
            stru_80CC84C[page].mumboTokensCliffFarm + stru_80CC84C[page].mumboTokensBadMagicBayou
                + stru_80CC84C[page].mumboTokensFreezingFurnace
                + stru_80CC84C[page].mumboTokensSpillersHarbor,
            byte_2000FCC[page].mumboTokensCliffFarm + byte_2000FCC[page].mumboTokensBadMagicBayou
                + byte_2000FCC[page].mumboTokensFreezingFurnace
                + byte_2000FCC[page].mumboTokensSpillersHarbor);
        SHOW_HUD_ELEMENT(HUD_ELEMENT_TOTALS_MUMBO_TOKENS);
    }

    if (gShowMovesLearnedCounter) {
        SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_MOVES_LEARNED, movesLearned);
    }
    if (byte_203E126) {
        SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_HONEYCOMBS, honeycombCount);
    }

    switch (page) {
        case 0:
        case 3:
            break;

        case 1:
            if (byte_203E12D) {
                SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_CHICKS, chickCount);
            }
            break;

        case 2:
            if (byte_203E12E) {
                SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_SHELLS, shellCount);
            }
            if (byte_203E12F) {
                SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_CAPTIVE_BREEGULLS, captiveBreegulls);
            }
            break;

        case 4:
            if (byte_203E130) {
                SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_SILVER_COINS, silverCoinCount);
            }
            if (byte_203E131) {
                SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_TOY_SPACESHIPS, toySpaceships);
            }
            if (byte_203E132) {
                SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_ICE_CREAMS, iceCreams);
            }
            break;

        case 5:
            if (byte_203E133) {
                SHOW_TOTALS_COUNTER(HUD_ELEMENT_TOTALS_GOLD_NUGGETS, goldNuggets);
            }
            break;

        case 6:
            if (byte_203E127) {
                SET_HUD_COUNTER(HUD_ELEMENT_TOTALS_NOTES, stru_80CC8C4.totalNotes,
                                gGameStatus.totalNotes);
            }
            if (byte_203E128) {
                SET_HUD_COUNTER(HUD_ELEMENT_TOTALS_JIGGIES, stru_80CC8C4.totalJiggies,
                                gGameStatus.totalJiggies);
            }
            if (byte_203E129) {
                SET_HUD_COUNTER(HUD_ELEMENT_TOTALS_JINJOS, stru_80CC8C4.totalJinjos,
                                gGameStatus.totalJinjos);
            }
            if (byte_203E12B) {
                SET_HUD_COUNTER(HUD_ELEMENT_TOTALS_MUMBO_TOKENS,
                                stru_80CC8C4.mumboTokensCliffFarm
                                    + stru_80CC8C4.mumboTokensBadMagicBayou
                                    + stru_80CC8C4.mumboTokensFreezingFurnace
                                    + stru_80CC8C4.mumboTokensSpillersHarbor,
                                gGameStatus.mumboTokensCliffFarm + gGameStatus.mumboTokensBadMagicBayou
                                    + gGameStatus.mumboTokensFreezingFurnace
                                    + gGameStatus.mumboTokensSpillersHarbor);
            }
            if (gShowMovesLearnedCounter) {
                SET_HUD_COUNTER(HUD_ELEMENT_TOTALS_MOVES_LEARNED, stru_80CC8C4.movesLearned,
                                gGameStatus.movesLearned);
            }
            if (byte_203E126) {
                SET_HUD_COUNTER(HUD_ELEMENT_TOTALS_HONEYCOMBS, stru_80CC8C4.totalHoneycombs,
                                gGameStatus.totalHoneycombs);
            }
            break;

        default:
            ASSERT(0);
    }

    byte_203EA80 = 1;
}

void hide_totals_counters(int page) {
    byte_203EA80 = 0;
    dismiss_hud_elements();
}

bool32 are_totals_counters_shown(int page) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_TOTALS_NOTES].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_TOTALS_JIGGIES].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_TOTALS_JINJOS].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_TOTALS_MUMBO_TOKENS].renderState != 5) {
        done = FALSE;
    }
    if (gShowMovesLearnedCounter && gHudElements[HUD_ELEMENT_TOTALS_MOVES_LEARNED].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E126 && gHudElements[HUD_ELEMENT_TOTALS_HONEYCOMBS].renderState != 5) {
        done = FALSE;
    }

    switch (page) {
        case 0:
        case 3:
        case 6:
            break;

        case 1:
            if (byte_203E12D && gHudElements[HUD_ELEMENT_TOTALS_CHICKS].renderState != 5) {
                done = FALSE;
            }
            return done;

        case 2:
            if (byte_203E12E && gHudElements[HUD_ELEMENT_TOTALS_SHELLS].renderState != 5) {
                done = FALSE;
            }
            if (byte_203E12F && gHudElements[HUD_ELEMENT_TOTALS_CAPTIVE_BREEGULLS].renderState != 5) {
                done = FALSE;
            }
            return done;

        case 4:
            if (byte_203E130 && gHudElements[HUD_ELEMENT_TOTALS_SILVER_COINS].renderState != 5) {
                done = FALSE;
            }
            if (byte_203E131 && gHudElements[HUD_ELEMENT_TOTALS_TOY_SPACESHIPS].renderState != 5) {
                done = FALSE;
            }
            if (byte_203E132 && gHudElements[HUD_ELEMENT_TOTALS_ICE_CREAMS].renderState != 5) {
                done = FALSE;
            }
            return done;

        case 5:
            if (byte_203E133 && gHudElements[HUD_ELEMENT_TOTALS_GOLD_NUGGETS].renderState != 5) {
                done = FALSE;
            }
            return done;

        default:
            ASSERT(0);
    }

    return done;
}

bool32 are_totals_counters_hidden(int page) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_TOTALS_NOTES].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_TOTALS_JIGGIES].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_TOTALS_JINJOS].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_TOTALS_MUMBO_TOKENS].renderState != 0) {
        done = FALSE;
    }
    if (gShowMovesLearnedCounter && gHudElements[HUD_ELEMENT_TOTALS_MOVES_LEARNED].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E126 && gHudElements[HUD_ELEMENT_TOTALS_HONEYCOMBS].renderState != 0) {
        done = FALSE;
    }

    switch (page) {
        case 0:
        case 3:
        case 6:
            break;

        case 1:
            if (byte_203E12D && gHudElements[HUD_ELEMENT_TOTALS_CHICKS].renderState != 0) {
                done = FALSE;
            }
            return done;

        case 2:
            if (byte_203E12E && gHudElements[HUD_ELEMENT_TOTALS_SHELLS].renderState != 0) {
                done = FALSE;
            }
            if (byte_203E12F && gHudElements[HUD_ELEMENT_TOTALS_CAPTIVE_BREEGULLS].renderState != 0) {
                done = FALSE;
            }
            return done;

        case 4:
            if (byte_203E130 && gHudElements[HUD_ELEMENT_TOTALS_SILVER_COINS].renderState != 0) {
                done = FALSE;
            }
            if (byte_203E131 && gHudElements[HUD_ELEMENT_TOTALS_TOY_SPACESHIPS].renderState != 0) {
                done = FALSE;
            }
            if (byte_203E132 && gHudElements[HUD_ELEMENT_TOTALS_ICE_CREAMS].renderState != 0) {
                done = FALSE;
            }
            return done;

        case 5:
            if (byte_203E133 && gHudElements[HUD_ELEMENT_TOTALS_GOLD_NUGGETS].renderState != 0) {
                done = FALSE;
            }
            return done;

        default:
            ASSERT(0);
    }

    return done;
}

void dismiss_hud_elements(void) {
    int i;

    for (i = 0; i < HUD_ELEMENT_COUNT; i++) {
        if (gHudElements[i].renderState) {
            gHudElements[i].timer = 1;
            gHudElements[i].keepShown = FALSE;
        }
    }
}

void sub_8041E88(void) {
    gHudElements[HUD_ELEMENT_BOZZEYE_NOTES].timer = 0;
    gHudElements[HUD_ELEMENT_BOZZEYE_NOTES].keepShown = FALSE;
    gHudElements[HUD_ELEMENT_40].timer = 0;
    gHudElements[HUD_ELEMENT_40].keepShown = FALSE;
    gHudElements[HUD_ELEMENT_41].timer = 0;
    gHudElements[HUD_ELEMENT_41].keepShown = FALSE;
    gHudElements[HUD_ELEMENT_MR_RIPOVSKI_SILVER_COINS].timer = 0;
    gHudElements[HUD_ELEMENT_MR_RIPOVSKI_SILVER_COINS].keepShown = FALSE;
    gHudElements[HUD_ELEMENT_MR_RIPOVSKI_SHELLS].timer = 0;
    gHudElements[HUD_ELEMENT_MR_RIPOVSKI_SHELLS].keepShown = FALSE;
    gHudElements[HUD_ELEMENT_WHITE_BREEGULL_CAPTIVE_BREEGULLS].timer = 0;
    gHudElements[HUD_ELEMENT_WHITE_BREEGULL_CAPTIVE_BREEGULLS].keepShown = FALSE;
    gHudElements[HUD_ELEMENT_MOMMA_CLUCKER_CHICKS].timer = 0;
    gHudElements[HUD_ELEMENT_MOMMA_CLUCKER_CHICKS].keepShown = FALSE;
    gHudElements[HUD_ELEMENT_MISS_BUCKET_GOLD_NUGGETS].timer = 0;
    gHudElements[HUD_ELEMENT_MISS_BUCKET_GOLD_NUGGETS].keepShown = FALSE;
    gHudElements[HUD_ELEMENT_JINJO_ORACLE_JINJOS].timer = 0;
    gHudElements[HUD_ELEMENT_JINJO_ORACLE_JINJOS].keepShown = FALSE;
}

void sub_08041F3C(u32 element, int value) {
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

    gHudElements[element].slideSpeed = value;
}

void keep_hud_element_shown(u32 element) {
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
            if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0
                && gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 6) {
                element = HUD_ELEMENT_OXYGEN;
            }
            break;
    }

    gHudElements[element].keepShown = TRUE;
}

void release_hud_element(u32 element) {
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

    gHudElements[element].keepShown = FALSE;
    gHudElements[element].timer = 1;
}

bool32 sub_0804207C(u32 element) {
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
            if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0
                && gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 6) {
                element = HUD_ELEMENT_OXYGEN;
            }
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
            if (renderState != 0 && renderState != 6) {
                element = HUD_ELEMENT_HEALTH;
            }
            break;

        case HUD_METER_OXYGEN:
            if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0
                && gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 6) {
                element = HUD_ELEMENT_OXYGEN;
            }
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
            if (renderState != 0 && renderState != 6) {
                element = HUD_ELEMENT_HEALTH;
            }
            break;

        case HUD_METER_OXYGEN:
            if (gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 0
                && gHudElements[HUD_ELEMENT_HEALTH_WITH_ICON].renderState != 6) {
                element = HUD_ELEMENT_OXYGEN;
            }
            break;
    }

    if (gHudElements[element].renderState != 6 && gHudElements[element].renderState != 0) {
        return gHudElements[element].maxValue;
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

    gHudElements[HUD_ELEMENT_36].displayValue = value;
    gHudElements[HUD_ELEMENT_36].targetValue = value;
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
