#include "global.h"
#include "sprite.h"
#include "common.h"

void sub_800E9EC(struct Sprite* a1, int palette, int a3) {
    u32 v6;
    u32 v7;
    u8 r1;
    u16 r1_1;

    if (byte_200116C)
        sub_800EA9C();
    DmaMoveObjPalette(a1->spriteFrames->field_8[3] >> 12, palette);
    byte_200116C = 1;
    dword_2001168 = &a1->field_12;

    r1 = palette + 16;
    v6 = (v6 & 0xFFFFFF00) | r1;
    r1_1 = r1 << 8;
    v6 = (v6 & 0xFFFF00FF) | r1_1;

    v7 = ((v7 & 0xFFFFFF00 | 0x1F) & 0xFFFF00FF | 0x1F00) & 0xFF00FFFF | 0x1F0000;

    dword_2001164 = sub_080272A0(&v6, &v7, a3, 0xFFFF);

    if (dword_2001164 < 0) {
        byte_200116C = 0;
    } else {
        a1->field_12 = 1;
        SetSpritePalette(a1, palette);
    }
}

void sub_800EA9C() {
    byte_200116C = 0;
    *dword_2001168 = 0;
    DmaMoveObjPalette(10, 15);
    sub_80275CC(dword_2001164);
}

void sub_800EACC() {
    if (byte_200116C) {
        if (stru_20076C4[dword_2001164].field_0) {
            sub_802742C(dword_2001164, &unk_2002EC4, &unk_20046C4);
        } else {
            sub_800EA9C();
        }
    }
}
