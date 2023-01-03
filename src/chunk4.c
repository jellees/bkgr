#include "global.h"
#include "sprite.h"
#include "common.h"

/* External declarations. */
extern void sub_8003A04(u32, u32*, u8, u8);
/* End external declarations. */

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

void sub_800EB14() {
    if (gLoadedRoomIndex == ROOM_DIVESPOT || gLoadedRoomIndex == ROOM_UNDERCORAL) {
        if (!byte_20010B1) {
            sub_800EB58(1);
        }
        sub_800ECB4();
    } else if (byte_20010B1) {
        byte_20010B1 = 0;
        sub_80275A4();
    }
}

void sub_800EB58(bool32 a1)
{
    // This function probably uses predefined macro's
    // a lot. Most likely v1 is used for registers.

    u32 v1;

    if (a1)
    {
        v1 &= 0xFFFFFF00;
        v1 &= 0xFFFF00FF;
        v1 |= 0xF00;
        sub_8003A04(4, &unk_2005EC4, v1, v1 << 16 >> 24);
        dword_2001140 = sub_08027378((u8*)&v1, &unk_2005EC4, 2048, 0x8000);
        dword_2001150 = sub_800392C(0x8000, 2048) >> 16;
        dword_200114C = -1;
    }

    ((u8*)&v1)[0] = 0x12;
    ((u8*)&v1)[1] = 0x1E;
    sub_8003A04(4, &unk_2005EC4, ((u8*)&v1)[0], ((u8*)&v1)[1]);
    dword_2001144 = sub_08027378((u8*)&v1, &unk_2005EC4, 2048, 24576);
    dword_2001158 = sub_800392C(24576, 2048) >> 16;
    dword_2001154 = -1;

    ((u8*)&v1)[0] = 0x10;
    ((u8*)&v1)[1] = 0x11;
    sub_8003A04(4, &unk_2005EC4, ((u8*)&v1)[0], ((u8*)&v1)[1]);
    dword_2001148 = sub_08027378((u8*)&v1, &unk_2005EC4, 2048, 24576);
    dword_2001160 = sub_800392C(24576, 2048) >> 16;
    dword_200115C = -1;
    byte_20010B1 = 1;
}
