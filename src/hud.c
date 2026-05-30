#include "global.h"
#include "common.h"
#include "sprite.h"
#include "alloc.h"
#include "main.h"
#include "player.h"
#include "audio_b.h"

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

void sub_80421C4(int, int, char*); // Static.

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
                sub_8016B0C();
                byte_20020BC = 0;
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
                sub_8016B0C();
                byte_20020BC = 0;
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
