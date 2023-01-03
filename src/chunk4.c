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

void sub_800EB58(bool32 a1) {
    // This function probably uses predefined macro's
    // a lot. Most likely v1 is used for registers.

    u32 v1;

    if (a1) {
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

void sub_800EC94() {
    dword_2001154 = -1;
    dword_200114C = -1;
    dword_200115C = -1;
}

void sub_800ECB4() {
    s32 v0;

    if (byte_20010B1 && !gIsPaletteEffectsActive) {
        v0 = dword_2001150 - (gPlayerPos.y >> 19);
        if (v0 < 0) {
            v0 = 0;
        }

        if (v0 != dword_200114C) {
            sub_80274A4(dword_2001140, v0, &unk_2002EC4, &unk_20046C4);
            dword_200114C = v0;
        }

        v0 = dword_2001158 - (gPlayerPos.y >> 19);
        if (v0 < 0) {
            v0 = 0;
        }

        if (v0 != dword_2001154) {
            sub_80274A4(dword_2001144, v0, &unk_2002EC4, &unk_20046C4);
            dword_2001154 = v0;
        }

        v0 = dword_2001160 - (gPlayerPos.y >> 19);
        if (v0 < 0) {
            v0 = 0;
        }

        if (v0 != dword_200115C) {
            sub_80274A4(dword_2001148, v0, &unk_2002EC4, &unk_20046C4);
            dword_200115C = v0;
        }
    }
}

void init_room_name() {
    if (gRoomNameNumber != 0) {
        gShowRoomName = 1;
        gRoomNameApparenceTimer = 120;
        gRoomNameTextBox.xPosition = 0;
        gRoomNameTextBox.yPosition = 0;
        gRoomNameTextBox.letterSpacing = -2;
        gRoomNameTextBox.field_12 = 0;
        gRoomNameTextBox.field_A = 2;
        gRoomNameTextBox.size = 240;
        gRoomNameTextBox.palette = 1;
        gRoomNameTextBox.stringOffset = 0;
        gRoomNameTextBox.field_11 = 6;
        gRoomNameTextBox.font = &font_80B01A8[2];
        switch (gPauseMenuLanguage) {
            case 0:
                gRoomName = unk_86AD9FC[gRoomNameNumber - 1];
                break;

            case 1:
                gRoomName = unk_86ADAC4[gRoomNameNumber - 1];
                break;

            case 2:
                gRoomName = unk_86ADC54[gRoomNameNumber - 1];
                break;

            case 4:
                gRoomName = unk_86ADD1C[gRoomNameNumber - 1];
                break;

            case 3:
                gRoomName = unk_86ADB8C[gRoomNameNumber - 1];
                break;

            default:
                HANG;
                break;
        }
    }
}

void show_room_name() {
    if (gShowRoomName) {
        if (gRoomNameApparenceTimer == 0) {
            gShowRoomName = 0;
        } else {
            --gRoomNameApparenceTimer;
        }
        gRoomNameTextBox.xPosition = (240 - sub_8025870(gRoomName, &gRoomNameTextBox)) >> 1;
        gRoomNameTextBox.yPosition = 120;
        gRoomNameTextBox.stringOffset = 0;
        AddStringToBuffer(&gRoomNameTextBox, gRoomName);
    }
}

void hide_room_name() {
    gShowRoomName = 0;
}

void sub_800EECC() {
    if (!byte_3006EF3) {
        return;
    }

    switch (gLoadedRoomLevel) {
        case LEVEL_SPIRAL_MOUNTAIN:
            sub_8049A1C();
            break;

        case LEVEL_BREEGULL_BEACH:
            if (gLoadedRoomIndex == dword_80CEE5C[gLoadedRoomLevel]) {
                DmaTransferObjPalette(&unk_83FD7B4, 3, 3);
                DmaTransferObjPalette(&unk_83FD7D4, 5, 5);
                DmaTransferObjPalette(&unk_83FD7F4, 8, 8);
                DmaTransferObjPalette(&unk_83FD814, 11, 11);
            }
            break;

        case LEVEL_CLIFF_FARM:
        case LEVEL_BAD_MAGIC_BAYOU:
        case LEVEL_SPILLERS_HARBOR:
        case LEVEL_FREEZING_FURNACE:
            break;
    }
}

void sub_800EF6C(int a1) {
    switch (gLoadedRoomLevel) {
        case LEVEL_SPIRAL_MOUNTAIN:
            if (dword_2001104 == 1) {
                DmaTransfer32(&unk_83FCF14, BG_PLTT, 128);
            }
            break;

        case LEVEL_BREEGULL_BEACH:
            if (gLoadedRoomIndex == dword_80CEE5C[gLoadedRoomLevel]
                && a1 == dword_80CEE74[gLoadedRoomLevel]) {
                DmaTransferObjPalette(&unk_83FD7B4, 3, 3);
                DmaTransferObjPalette(&unk_83FD7D4, 5, 5);
                DmaTransferObjPalette(&unk_83FD7F4, 8, 8);
                DmaTransferObjPalette(&unk_83FD814, 11, 11);
            }
            break;

        case LEVEL_CLIFF_FARM:
        case LEVEL_BAD_MAGIC_BAYOU:
        case LEVEL_SPILLERS_HARBOR:
        case LEVEL_FREEZING_FURNACE:
            break;
    }
}
