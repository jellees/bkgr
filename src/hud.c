#include "global.h"
#include "sprite.h"
#include "alloc.h"
#include "common.h"

struct HudGraphic {
    struct Sprite sprite;
    u32 field_1C;
    u32 field_20;
    u32 field_24;
    u32 field_28;
    u32 field_2C;
    u32 field_30;
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
    u8 field_1D;
    u8 field_1E;
    u8 renderState;
    char text[8];
    u8 field_28;
    u8 field_29;
    u8 field_2A;
    u8 field_2B;
    struct TextBox textBox;
};

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
        element->text[1] = 0xff;
        IntegerToAsciiBw(element->counter, element->text);
    } else if (element->counter < 100) {
        element->text[2] = 0xff;
        IntegerToAsciiBw(element->counter, &element->text[1]);
    } else {
        element->text[3] = 0xff;
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
        element->text[1] = 0xff;
        IntegerToAsciiBw(element->counter, element->text);
    } else if (element->counter < 100) {
        element->text[2] = 0xff;
        IntegerToAsciiBw(element->counter, &element->text[1]);
    } else {
        element->text[3] = 0xff;
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
        element->text[1] = 0xff;
        IntegerToAsciiBw(element->counter, element->text);
    } else if (element->counter < 100) {
        element->text[2] = 0xff;
        IntegerToAsciiBw(element->counter, &element->text[1]);
    } else {
        element->text[3] = 0xff;
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
        element->text[1] = 0xff;
        IntegerToAsciiBw(element->counter, element->text);
    } else if (element->counter < 100) {
        element->text[2] = 0xff;
        IntegerToAsciiBw(element->counter, &element->text[1]);
    } else {
        element->text[3] = 0xff;
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
