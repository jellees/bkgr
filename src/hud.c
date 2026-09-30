#include "global.h"
#include "common.h"
#include "sprite.h"
#include "alloc.h"
#include "main.h"
#include "player.h"
#include "audio_b.h"
#include "hud.h"

enum HudElementIdx {
    HUD_ELEMENT_0,
    HUD_ELEMENT_1,
    HUD_ELEMENT_2,
    HUD_ELEMENT_3,
    HUD_ELEMENT_4,
    HUD_ELEMENT_5,
    HUD_ELEMENT_6,
    HUD_ELEMENT_7,
    HUD_ELEMENT_8,
    HUD_ELEMENT_9,
    HUD_ELEMENT_10,
    HUD_ELEMENT_11,
    HUD_ELEMENT_12,
    HUD_ELEMENT_13,
    HUD_ELEMENT_14,
    HUD_ELEMENT_15,
    HUD_ELEMENT_16,
    HUD_ELEMENT_17,
    HUD_ELEMENT_18,
    HUD_ELEMENT_19,
    HUD_ELEMENT_20,
    HUD_ELEMENT_21,
    HUD_ELEMENT_22,
    HUD_ELEMENT_23,
    HUD_ELEMENT_24,
    HUD_ELEMENT_25,
    HUD_ELEMENT_26,
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
    HUD_ELEMENT_39,
    HUD_ELEMENT_40,
    HUD_ELEMENT_41,
    HUD_ELEMENT_42,
    HUD_ELEMENT_43,
    HUD_ELEMENT_44,
    HUD_ELEMENT_45,
    HUD_ELEMENT_46,
    HUD_ELEMENT_47,
    HUD_ELEMENT_48,
    HUD_ELEMENT_49,
    HUD_ELEMENT_50,
    HUD_ELEMENT_51,
    HUD_ELEMENT_52,
    HUD_ELEMENT_53,
    HUD_ELEMENT_54,
    HUD_ELEMENT_55,
    HUD_ELEMENT_56,
    HUD_ELEMENT_57,
    HUD_ELEMENT_58,
    HUD_ELEMENT_59,

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
static int sub_08042150(u32);
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

NAKED static int sub_803F52C(struct HudElement* element, int a2, int a3, int a4) {
    asm_unified(".include \"asm/nonmatching/sub_803F52C.s\"");
}

NAKED static int sub_803F5AC(struct HudElement* element, int a2, int a3, int a4) {
    asm_unified(".include \"asm/nonmatching/sub_803F5AC.s\"");
}

NAKED static int sub_803F62C(struct HudElement* element, int a2, int a3, int a4) {
    asm_unified(".include \"asm/nonmatching/sub_803F62C.s\"");
}

NAKED static int sub_803F6C4(struct HudElement* element, int a2, int a3, int a4) {
    asm_unified(".include \"asm/nonmatching/sub_803F6C4.s\"");
}

// https://decomp.me/scratch/5LtNd
NAKED static int sub_803F75C(struct HudElement* element, int a2, int a3, int a4) {
    asm_unified(".include \"asm/nonmatching/sub_803F75C.s\"");
}
/* C draft — loop body matches, pre-loop ptr register differs (adds r0 vs adds r7):
static int sub_803F75C(struct HudElement* element, int a2, int a3, int a4) {
    int i;
    u8 *ptr = &byte_80A8CF6[element->counter * 8];

    for (i = a2; i < element->graphicCount; i++) {
        element->graphic[i].field_1C = a3 << 16;
        element->graphic[i].field_20 = a4 << 16;
        element->graphic[i].sprite.xPos = a3;
        element->graphic[i].sprite.yPos = a4;
        word_80A8CF0[*ptr] += 0;
        SetSprite((struct Sprite*)&element->graphic[i].sprite, word_80A8CF0[*ptr], 0, 0, 0, a3, a4, 2);
        element->graphic[i].field_35 = 1;
        ptr++;
    }

    element->timer = 10;
    return 2;
} */

NAKED static int sub_803F800(struct HudElement* element, int a2, int a3, int a4) {
    asm_unified(".include \"asm/nonmatching/sub_803F800.s\"");
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
    gHudElements[HUD_ELEMENT_19].field_A = stru_80CC8C4.totalNotes;
    gHudElements[HUD_ELEMENT_19].counter = gGameStatus.totalNotes;
    gHudElements[HUD_ELEMENT_19].number = gHudElements[HUD_ELEMENT_19].counter;

    gHudElements[HUD_ELEMENT_20].field_A = stru_80CC8C4.totalJiggies;
    gHudElements[HUD_ELEMENT_20].counter = gGameStatus.totalJiggies;
    gHudElements[HUD_ELEMENT_20].number = gHudElements[HUD_ELEMENT_20].counter;

    gHudElements[HUD_ELEMENT_9].field_A = stru_80CC8C4.eggs[0];
    gHudElements[HUD_ELEMENT_9].counter = gGameStatus.eggs[0];
    gHudElements[HUD_ELEMENT_9].number = gHudElements[HUD_ELEMENT_9].counter;

    gHudElements[HUD_ELEMENT_10].field_A = stru_80CC8C4.eggs[1];
    gHudElements[HUD_ELEMENT_10].counter = gGameStatus.eggs[1];
    gHudElements[HUD_ELEMENT_10].number = gHudElements[HUD_ELEMENT_10].counter;

    gHudElements[HUD_ELEMENT_12].field_A = stru_80CC8C4.eggs[3];
    gHudElements[HUD_ELEMENT_12].counter = gGameStatus.eggs[3];
    gHudElements[HUD_ELEMENT_12].number = gHudElements[HUD_ELEMENT_12].counter;

    gHudElements[HUD_ELEMENT_11].field_A = stru_80CC8C4.eggs[2];
    gHudElements[HUD_ELEMENT_11].counter = gGameStatus.eggs[2];
    gHudElements[HUD_ELEMENT_11].number = gHudElements[HUD_ELEMENT_11].counter;

    gHudElements[HUD_ELEMENT_3].field_A = stru_80CC8C4.goldenFeathers;
    gHudElements[HUD_ELEMENT_3].counter = gGameStatus.goldenFeathers;
    gHudElements[HUD_ELEMENT_3].number = gHudElements[HUD_ELEMENT_3].counter;

    gHudElements[HUD_ELEMENT_42].field_A = stru_80CC8C4.goldenFeathers;
    gHudElements[HUD_ELEMENT_42].counter = gGameStatus.goldenFeathers;
    gHudElements[HUD_ELEMENT_42].number = gHudElements[HUD_ELEMENT_42].counter;

    gHudElements[HUD_ELEMENT_22].field_A = gGameStatus.field_6;
    gHudElements[HUD_ELEMENT_22].counter = gGameStatus.field_6;
    gHudElements[HUD_ELEMENT_22].number = gHudElements[HUD_ELEMENT_22].counter;

    gHudElements[HUD_ELEMENT_43].field_A = gGameStatus.field_6;
    gHudElements[HUD_ELEMENT_43].counter = gGameStatus.field_6;
    gHudElements[HUD_ELEMENT_43].number = gHudElements[HUD_ELEMENT_22].counter;

    gHudElements[HUD_ELEMENT_4].field_A = stru_80CC8C4.field_7;
    gHudElements[HUD_ELEMENT_4].counter = gGameStatus.field_7;
    gHudElements[HUD_ELEMENT_4].number = gHudElements[HUD_ELEMENT_4].counter;

    gHudElements[HUD_ELEMENT_5].field_A = stru_80CC84C[gLoadedRoomLevel].shellCount;
    gHudElements[HUD_ELEMENT_5].counter = byte_2000FCC[gLoadedRoomLevel].shellCount;
    gHudElements[HUD_ELEMENT_5].number = gHudElements[HUD_ELEMENT_5].counter;

    gHudElements[HUD_ELEMENT_8].field_A = stru_80CC84C[gLoadedRoomLevel].chickCount;
    gHudElements[HUD_ELEMENT_8].counter = byte_2000FCC[gLoadedRoomLevel].chickCount;
    gHudElements[HUD_ELEMENT_8].number = gHudElements[HUD_ELEMENT_8].counter;

    gHudElements[HUD_ELEMENT_6].field_A = stru_80CC8C4.field_1;
    gHudElements[HUD_ELEMENT_6].counter = gGameStatus.field_1;
    gHudElements[HUD_ELEMENT_6].number = gHudElements[HUD_ELEMENT_6].counter;

    gHudElements[HUD_ELEMENT_21].field_A = stru_80CC8C4.field_B;
    gHudElements[HUD_ELEMENT_21].counter = gGameStatus.field_B;
    gHudElements[HUD_ELEMENT_21].number = gHudElements[HUD_ELEMENT_21].counter;

    gHudElements[HUD_ELEMENT_14].field_A = stru_80CC8C4.field_1A;
    gHudElements[HUD_ELEMENT_14].counter = gGameStatus.field_1A;
    gHudElements[HUD_ELEMENT_14].number = gHudElements[HUD_ELEMENT_14].counter;

    gHudElements[HUD_ELEMENT_17].field_A = stru_80CC8C4.silverCoins;
    gHudElements[HUD_ELEMENT_17].counter = gGameStatus.silverCoins;
    gHudElements[HUD_ELEMENT_17].number = gHudElements[HUD_ELEMENT_17].counter;

    gHudElements[HUD_ELEMENT_16].field_A = stru_80CC8C4.field_1C;
    gHudElements[HUD_ELEMENT_16].counter = gGameStatus.field_1C;
    gHudElements[HUD_ELEMENT_16].number = gHudElements[HUD_ELEMENT_16].counter;

    gHudElements[HUD_ELEMENT_15].field_A = stru_80CC8C4.field_1B;
    gHudElements[HUD_ELEMENT_15].counter = gGameStatus.field_1B;
    gHudElements[HUD_ELEMENT_15].number = gHudElements[HUD_ELEMENT_15].counter;

    gHudElements[HUD_ELEMENT_18].field_A = stru_80CC8C4.field_1E;
    gHudElements[HUD_ELEMENT_18].counter = gGameStatus.field_1E;
    gHudElements[HUD_ELEMENT_18].number = gHudElements[HUD_ELEMENT_18].counter;

    if (gHudElements[HUD_ELEMENT_58].renderState == 0) {
        gHudElements[HUD_ELEMENT_58].field_A = stru_80CC8C4.health;
        gHudElements[HUD_ELEMENT_58].counter = gGameStatus.health;
        gHudElements[HUD_ELEMENT_58].number = gHudElements[HUD_ELEMENT_58].counter;
    }

    if (gHudElements[HUD_ELEMENT_59].renderState == 0) {
        gHudElements[HUD_ELEMENT_59].field_A = stru_80CC8C4.health;
        gHudElements[HUD_ELEMENT_59].counter = gGameStatus.health;
        gHudElements[HUD_ELEMENT_59].number = gHudElements[HUD_ELEMENT_59].counter;
    }

    gHudElements[HUD_ELEMENT_56].field_A = stru_80CC8C4.oxygen;
    gHudElements[HUD_ELEMENT_56].counter = gGameStatus.oxygen;
    gHudElements[HUD_ELEMENT_56].number = gHudElements[HUD_ELEMENT_56].counter;

    gHudElements[HUD_ELEMENT_57].field_A = stru_80CC8C4.oxygen;
    gHudElements[HUD_ELEMENT_57].counter = gGameStatus.oxygen;
    gHudElements[HUD_ELEMENT_57].number = gHudElements[HUD_ELEMENT_57].counter;
}

void update_hud_total_notes(void) {
    gHudElements[HUD_ELEMENT_39].counter = gGameStatus.totalNotes;
    gHudElements[HUD_ELEMENT_39].number = gGameStatus.totalNotes;
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
    gHudElements[HUD_ELEMENT_0].field_A = stru_80CC84C[gLoadedRoomLevel].noteCount;
    gHudElements[HUD_ELEMENT_0].counter = byte_2000FCC[gLoadedRoomLevel].noteCount;
    gHudElements[HUD_ELEMENT_0].number = gHudElements[HUD_ELEMENT_0].counter;

    gHudElements[HUD_ELEMENT_1].field_A = stru_80CC84C[gLoadedRoomLevel].jiggyCount;
    gHudElements[HUD_ELEMENT_1].counter = byte_2000FCC[gLoadedRoomLevel].jiggyCount;
    gHudElements[HUD_ELEMENT_1].number = gHudElements[HUD_ELEMENT_1].counter;

    gHudElements[HUD_ELEMENT_7].field_A = stru_80CC84C[gLoadedRoomLevel].jinjoCount;
    gHudElements[HUD_ELEMENT_7].counter = byte_2000FCC[gLoadedRoomLevel].jinjoCount;
    gHudElements[HUD_ELEMENT_7].number = gHudElements[HUD_ELEMENT_7].counter;
}

// https://decomp.me/scratch/JTlEO
NAKED void set_hud_number(int a1, int a2) {
    asm_unified(".include \"asm/nonmatching/set_hud_number.s\"");
}

void sub_80407F8(void) {
    int funcIdx, arg1;
    int element;

    element = gHudElements[HUD_ELEMENT_57].renderState ? HUD_ELEMENT_58 : HUD_ELEMENT_59;

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

    ASSERT(element <= HUD_ELEMENT_57);

    switch (element) {
        case HUD_ELEMENT_56:
            renderState = gHudElements[HUD_ELEMENT_57].renderState;
            element = HUD_ELEMENT_59;
            if (renderState != 0 && renderState != 6) {
                element = HUD_ELEMENT_58;
            }
            break;

        case HUD_ELEMENT_57:
            renderState = gHudElements[HUD_ELEMENT_59].renderState;
            if (renderState != 0 && renderState != 6) {
                element = HUD_ELEMENT_56;
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

    ASSERT(element <= HUD_ELEMENT_57);

    switch (element) {
        case HUD_ELEMENT_56:
            renderState = gHudElements[HUD_ELEMENT_57].renderState;
            element = HUD_ELEMENT_59;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_58;
            break;

        case HUD_ELEMENT_57:
            renderState = gHudElements[HUD_ELEMENT_59].renderState;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_56;
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

void sub_8040B3C(int isDiving) {
    reset_hud_elements();

    if (byte_203E127)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_19);
    if (byte_203E128)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_20);
    if (byte_203E12B)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_43);
    if (byte_203E12A)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_42);
    if (byte_203E12C)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_4);
    if (byte_203E129)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_21);
    if (byte_203E126)
        SHOW_HUD_ELEMENT(HUD_ELEMENT_6);

    SHOW_HUD_ELEMENT(HUD_ELEMENT_59);

    if (isDiving) {
        SHOW_HUD_ELEMENT(HUD_ELEMENT_56);
    } else {
        if (byte_203E122)
            SHOW_HUD_ELEMENT(HUD_ELEMENT_9);
        if (byte_203E123)
            SHOW_HUD_ELEMENT(HUD_ELEMENT_10);
        if (byte_203E125)
            SHOW_HUD_ELEMENT(HUD_ELEMENT_12);
        if (byte_203E124)
            SHOW_HUD_ELEMENT(HUD_ELEMENT_11);
    }

    byte_203EA80 = 1;
}

void sub_8040E74(void) {
    byte_203EA80 = 0;
    sub_8041E58();
    update_hud_collectables();
}

bool32 sub_8040E8C(int isDiving) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_19].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_20].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_21].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_43].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12A && gHudElements[HUD_ELEMENT_42].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12C && gHudElements[HUD_ELEMENT_4].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E126 && gHudElements[HUD_ELEMENT_6].renderState != 5) {
        done = FALSE;
    }

    //! Possible fake match.
    if ((*(struct HudElement* volatile*)&gHudElements)[HUD_ELEMENT_59].renderState != 5) {
        done = FALSE;
    }

    if (isDiving) {
        if ((*(struct HudElement* volatile*)&gHudElements)[HUD_ELEMENT_56].renderState != 5) {
            done = FALSE;
        }
    } else {
        if (byte_203E122 && gHudElements[HUD_ELEMENT_9].renderState != 5) {
            done = FALSE;
        }
        if (byte_203E123 && gHudElements[HUD_ELEMENT_10].renderState != 5) {
            done = FALSE;
        }
        if (byte_203E124 && gHudElements[HUD_ELEMENT_11].renderState != 5) {
            done = FALSE;
        }
        if (byte_203E125 && gHudElements[HUD_ELEMENT_12].renderState != 5) {
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
bool32 sub_8040FF4(int isDiving) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_19].renderState != 0)
        done = FALSE;
    if (byte_203E128 && gHudElements[HUD_ELEMENT_20].renderState != 0)
        done = FALSE;
    if (byte_203E129 && gHudElements[HUD_ELEMENT_21].renderState != 0)
        done = FALSE;
    if (byte_203E12B && gHudElements[HUD_ELEMENT_43].renderState != 0)
        done = FALSE;
    if (byte_203E12A && gHudElements[HUD_ELEMENT_42].renderState != 0)
        done = FALSE;
    if (byte_203E12C && gHudElements[HUD_ELEMENT_4].renderState != 0)
        done = FALSE;
    if (byte_203E126 && gHudElements[HUD_ELEMENT_6].renderState != 0)
        done = FALSE;
    if (gHudElements[HUD_ELEMENT_59].renderState != 0)
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
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_21);
            if (byte_203E126)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_6);
            RESTORE_HUD_ELEMENT(HUD_ELEMENT_59);
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
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_21);
            if (byte_203E126)
                RESTORE_HUD_ELEMENT(HUD_ELEMENT_6);
            RESTORE_HUD_ELEMENT(HUD_ELEMENT_59);
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
NAKED bool32 sub_8040FF4(int isDiving) {
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

void sub_0804147C(u32 level) {
    if (byte_203E127)
        SHOW_LEVEL_COUNTER(HUD_ELEMENT_23, noteCount);
    if (byte_203E128)
        SHOW_LEVEL_COUNTER(HUD_ELEMENT_24, jiggyCount);
    if (byte_203E129)
        SHOW_LEVEL_COUNTER(HUD_ELEMENT_25, jinjoCount);

    if (byte_203E12B) {
        SET_HUD_COUNTER(HUD_ELEMENT_26,
                        stru_80CC84C[level].field_9 + stru_80CC84C[level].field_A
                            + stru_80CC84C[level].field_B + stru_80CC84C[level].field_C,
                        byte_2000FCC[level].field_9 + byte_2000FCC[level].field_A
                            + byte_2000FCC[level].field_B + byte_2000FCC[level].field_C);
        SHOW_HUD_ELEMENT(HUD_ELEMENT_26);
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
                SET_HUD_COUNTER(HUD_ELEMENT_25, stru_80CC8C4.field_B, gGameStatus.field_B);
            if (byte_203E12B)
                SET_HUD_COUNTER(HUD_ELEMENT_26,
                                stru_80CC8C4.field_2 + stru_80CC8C4.field_3 + stru_80CC8C4.field_4
                                    + stru_80CC8C4.field_5,
                                gGameStatus.field_2 + gGameStatus.field_3 + gGameStatus.field_4
                                    + gGameStatus.field_5);
            if (byte_203E12C)
                SET_HUD_COUNTER(HUD_ELEMENT_27, stru_80CC8C4.field_7, gGameStatus.field_7);
            if (byte_203E126)
                SET_HUD_COUNTER(HUD_ELEMENT_28, stru_80CC8C4.field_1, gGameStatus.field_1);
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

bool32 sub_08041AC0(int page) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_23].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_24].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_25].renderState != 5) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_26].renderState != 5) {
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

bool32 sub_08041C8C(int page) {
    bool32 done = TRUE;

    if (byte_203E127 && gHudElements[HUD_ELEMENT_23].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E128 && gHudElements[HUD_ELEMENT_24].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E129 && gHudElements[HUD_ELEMENT_25].renderState != 0) {
        done = FALSE;
    }
    if (byte_203E12B && gHudElements[HUD_ELEMENT_26].renderState != 0) {
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
    gHudElements[HUD_ELEMENT_39].timer = 0;
    gHudElements[HUD_ELEMENT_39].field_2A = 0;
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
    gHudElements[HUD_ELEMENT_49].timer = 0;
    gHudElements[HUD_ELEMENT_49].field_2A = 0;
}

void sub_08041F3C(u32 element, int value) {
    u8 renderState;

    ASSERT(element <= HUD_ELEMENT_57);

    switch (element) {
        case HUD_ELEMENT_56:
            renderState = gHudElements[HUD_ELEMENT_57].renderState;
            element = HUD_ELEMENT_59;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_58;
            break;

        case HUD_ELEMENT_57:
            renderState = gHudElements[HUD_ELEMENT_59].renderState;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_56;
            break;
    }

    gHudElements[element].field_10 = value;
}

void sub_08041FA4(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_ELEMENT_57);

    switch (element) {
        case HUD_ELEMENT_56:
            renderState = gHudElements[HUD_ELEMENT_57].renderState;
            element = HUD_ELEMENT_59;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_58;
            break;

        case HUD_ELEMENT_57:
            if (gHudElements[HUD_ELEMENT_59].renderState != 0
                && gHudElements[HUD_ELEMENT_59].renderState != 6)
                element = HUD_ELEMENT_56;
            break;
    }

    gHudElements[element].field_2A = 1;
}

void sub_0804200C(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_ELEMENT_57);

    switch (element) {
        case HUD_ELEMENT_56:
            renderState = gHudElements[HUD_ELEMENT_57].renderState;
            element = HUD_ELEMENT_59;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_58;
            break;

        case HUD_ELEMENT_57:
            renderState = gHudElements[HUD_ELEMENT_59].renderState;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_56;
            break;
    }

    gHudElements[element].field_2A = 0;
    gHudElements[element].timer = 1;
}

bool32 sub_0804207C(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_ELEMENT_57);

    switch (element) {
        case HUD_ELEMENT_56:
            renderState = gHudElements[HUD_ELEMENT_57].renderState;
            element = HUD_ELEMENT_59;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_58;
            break;

        case HUD_ELEMENT_57:
            if (gHudElements[HUD_ELEMENT_59].renderState != 0
                && gHudElements[HUD_ELEMENT_59].renderState != 6)
                element = HUD_ELEMENT_56;
            break;
    }

    return gHudElements[element].renderState == 5;
}

bool32 sub_080420E8(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_ELEMENT_57);

    switch (element) {
        case HUD_ELEMENT_56:
            renderState = gHudElements[HUD_ELEMENT_57].renderState;
            element = HUD_ELEMENT_59;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_58;
            break;

        case HUD_ELEMENT_57:
            if (gHudElements[HUD_ELEMENT_59].renderState != 0
                && gHudElements[HUD_ELEMENT_59].renderState != 6)
                element = HUD_ELEMENT_56;
            break;
    }

    return gHudElements[element].renderState != 0;
}

static int sub_08042150(u32 element) {
    u8 renderState;

    ASSERT(element <= HUD_ELEMENT_57);

    switch (element) {
        case HUD_ELEMENT_56:
            renderState = gHudElements[HUD_ELEMENT_57].renderState;
            element = HUD_ELEMENT_59;
            if (renderState != 0 && renderState != 6)
                element = HUD_ELEMENT_58;
            break;

        case HUD_ELEMENT_57:
            if (gHudElements[HUD_ELEMENT_59].renderState != 0
                && gHudElements[HUD_ELEMENT_59].renderState != 6)
                element = HUD_ELEMENT_56;
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
    if (gHudElements[HUD_ELEMENT_59].renderState != 3) {
        gIsStopHoneycombActive = FALSE;
        sub_8063178();
        byte_200108E = 0;
    }

    byte_203EA81 = 1;
}
