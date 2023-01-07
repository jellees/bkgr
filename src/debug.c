#include "global.h"
#include "alloc.h"
#include "sprite.h"
#include "main.h"
#include "common.h"
#include "debug.h"

EWRAM_DATA u8 byte_2001200;
EWRAM_DATA u8 gMainFrameCounter;
EWRAM_DATA u8 gDebugFPS;
EWRAM_DATA u8 gDebugESN;
EWRAM_DATA u8 gDebugESV;
EWRAM_DATA u32 dword_2001208;
EWRAM_DATA u32 dword_200120C;
EWRAM_DATA u32 dword_2001210;
EWRAM_DATA u32 dword_2001214;
EWRAM_DATA u32 dword_2001218;
EWRAM_DATA u32 dword_200121C;
EWRAM_DATA u32 dword_2001220;
EWRAM_DATA u32 dword_2001224;
EWRAM_DATA u32 dword_2001228;
EWRAM_DATA u32 dword_200122C;
EWRAM_DATA u32 dword_2001230;
EWRAM_DATA u32 dword_2001234;
EWRAM_DATA u32 dword_2001238;
EWRAM_DATA u32 dword_200123C;
EWRAM_DATA u32 dword_2001240;
EWRAM_DATA u32 dword_2001244;
EWRAM_DATA u32 dword_2001248;
EWRAM_DATA u32 dword_200124C;
EWRAM_DATA s32 dword_2001250;
EWRAM_DATA s32 dword_2001254;
EWRAM_DATA s32 dword_2001258;
EWRAM_DATA u32 dword_200125C;
EWRAM_DATA u32 dword_2001260;
EWRAM_DATA u32 dword_2001264;
EWRAM_DATA u32 dword_2001268;
EWRAM_DATA u32 dword_200126C;
EWRAM_DATA u32 dword_2001270;
EWRAM_DATA u32 dword_2001274;
EWRAM_DATA u32 dword_2001278;
EWRAM_DATA u32 dword_200127C;
EWRAM_DATA u32 dword_2001280;
EWRAM_DATA u32 dword_2001284;
EWRAM_DATA u32 dword_2001288;
EWRAM_DATA u32 dword_200128C;
EWRAM_DATA u32 dword_2001290;
EWRAM_DATA u32 dword_2001294;
EWRAM_DATA u32 dword_2001298;
EWRAM_DATA u32 dword_200129C;
EWRAM_DATA u32 dword_20012A0;
EWRAM_DATA u32 dword_20012A4;
EWRAM_DATA u32 dword_20012A8;
EWRAM_DATA u32 dword_20012AC;
EWRAM_DATA u32 dword_20012B0;
EWRAM_DATA u32 dword_20012B4;
EWRAM_DATA u32 dword_20012B8;
EWRAM_DATA u32 dword_20012BC;
EWRAM_DATA u32 dword_20012C0;
EWRAM_DATA u32 dword_20012C4;
EWRAM_DATA u32 dword_20012C8;
EWRAM_DATA u32 dword_20012CC;
EWRAM_DATA u32 dword_20012D0;
EWRAM_DATA u32 dword_20012D4;
EWRAM_DATA u32 dword_20012D8;
EWRAM_DATA u32 dword_20012DC;
EWRAM_DATA u32 dword_20012E0;
EWRAM_DATA u32 dword_20012E4;
EWRAM_DATA u32 dword_20012E8;
EWRAM_DATA u32 dword_20012EC;
EWRAM_DATA u32 dword_20012F0;
EWRAM_DATA u32 dword_20012F4;
EWRAM_DATA u32 dword_20012F8;
EWRAM_DATA u32 dword_20012FC;
EWRAM_DATA u32 dword_2001300;
EWRAM_DATA u32 dword_2001304;
EWRAM_DATA u32 dword_2001308;
EWRAM_DATA u32 dword_200130C;
EWRAM_DATA u32 dword_2001310;
EWRAM_DATA u32 dword_2001314;
EWRAM_DATA u32 dword_2001318;
EWRAM_DATA u32 dword_200131C;
EWRAM_DATA u32 dword_2001320;
EWRAM_DATA u32 dword_2001324;
EWRAM_DATA u32 dword_2001328;
EWRAM_DATA u32 dword_200132C;
EWRAM_DATA u32 dword_2001330;
EWRAM_DATA u32 dword_2001334;
EWRAM_DATA u32 dword_2001338;
EWRAM_DATA u32 dword_200133C;
EWRAM_DATA u32 dword_2001340;
EWRAM_DATA u32 dword_2001344;
EWRAM_DATA u32 dword_2001348;
EWRAM_DATA u32 dword_200134C;
EWRAM_DATA u32 dword_2001350;
EWRAM_DATA u32 dword_2001354;
EWRAM_DATA u32 dword_2001358;
EWRAM_DATA u32 dword_200135C;
EWRAM_DATA u32 dword_2001360;
EWRAM_DATA u32 dword_2001364;
EWRAM_DATA u32 dword_2001368;
EWRAM_DATA u32 dword_200136C;
EWRAM_DATA u8 byte_2001370;
EWRAM_DATA u8 gDebugString[0x17];
EWRAM_DATA u8 gDebugInfoIndex;
EWRAM_DATA u8 gDebugMESN;
EWRAM_DATA u8 byte_200138A;
EWRAM_DATA u32 gDebugESNFrameCount;
EWRAM_DATA u32 dword_2001390;
EWRAM_DATA s32 gDebugESNSum;
EWRAM_DATA u32 dword_2001398;
EWRAM_DATA struct TextBox gDebugTextBox1;
EWRAM_DATA struct TextBox gDebugTextBox2;
EWRAM_DATA struct TextBox gDebugTextBox3;
EWRAM_DATA struct TextBox gDebugTextBox4;
EWRAM_DATA struct TextBox gDebugTextBox5;
EWRAM_DATA struct TextBox gDebugTextBox6;
EWRAM_DATA struct TextBox gDebugTextBox7;
EWRAM_DATA struct TextBox gDebugTextBox8;
EWRAM_DATA u8 byte_200143C;
EWRAM_DATA u8 byte_200143D;
EWRAM_DATA u8 byte_200143E;
EWRAM_DATA u8 byte_200143F;
EWRAM_DATA u8 byte_2001440;
EWRAM_DATA u8 byte_2001441;
EWRAM_DATA u8 byte_2001442;
EWRAM_DATA u8 byte_2001443;
EWRAM_DATA u32 dword_2001444;
EWRAM_DATA u32 dword_2001448;
EWRAM_DATA u32 dword_200144C;
EWRAM_DATA u32 dword_2001450;
EWRAM_DATA u32 dword_2001454;
EWRAM_DATA u16 word_2001458;
EWRAM_DATA u8 byte_200145A;
EWRAM_DATA u8 byte_200145B;

void sub_800FA58() {
    gGameStatus.eggs[0] = stru_80CC8C4.eggs[0];
    gGameStatus.eggs[1] = stru_80CC8C4.eggs[1];
    gGameStatus.eggs[3] = stru_80CC8C4.eggs[3];
    gGameStatus.eggs[2] = stru_80CC8C4.eggs[2];
    gGameStatus.field_12 = stru_80CC8C4.field_12;
    sub_803FE78();
}

void init_debug() {
    gDebugESNSum = 0;
    dword_2001398 = 0;
    gDebugESNFrameCount = 1;
    dword_2001390 = 1;
    byte_200145B = 0;
    dword_2001208 = 0;
    dword_200120C = 0;
    dword_2001210 = 0;
    dword_2001214 = 0;
    dword_2001218 = 0;
    dword_200121C = 0;
    dword_2001220 = 0;
    dword_2001224 = 0;
    dword_2001228 = 0;
    dword_200122C = 0;
    dword_2001230 = 0;
    dword_2001234 = 0;
    dword_2001238 = 0;
    dword_200123C = 0;
    dword_2001240 = 0;
    dword_2001244 = 0;
    dword_2001248 = 0;
    dword_200124C = 0;
    dword_2001250 = 0;
    dword_2001254 = 0;
    dword_2001258 = 0;
    dword_200125C = 0;
    dword_2001260 = 0;
    dword_2001264 = 0;
    dword_2001268 = 0;
    dword_200126C = 0;
    dword_2001270 = 0;
    dword_2001274 = 0;
    dword_2001278 = 0;
    dword_200127C = 0;
    dword_2001280 = 0;
    dword_2001284 = 0;
    dword_2001288 = 0;
    dword_200128C = 0;
    dword_2001290 = 0;
    dword_2001294 = 0;
    dword_2001298 = 1;
    dword_200129C = 1;
    dword_20012A0 = 1;
    dword_20012A4 = 1;
    dword_20012A8 = 1;
    dword_20012AC = 1;
    dword_20012B0 = 1;
    dword_20012B4 = 1;
    dword_20012B8 = 1;
    dword_20012BC = 1;
    dword_20012C0 = 1;
    dword_20012C4 = 1;
    dword_20012C8 = 1;
    dword_20012CC = 1;
    dword_20012D0 = 1;
    dword_20012D4 = 1;
    dword_20012D8 = 1;
    dword_20012DC = 1;
    byte_200138A = 1;
    byte_2001200 = 60;
    gMainFrameCounter = 0;
    gDebugTextBox1.xPosition = 82;
    gDebugTextBox1.yPosition = 152;
    gDebugTextBox1.letterSpacing = 1;
    gDebugTextBox1.field_11 = 8;
    gDebugTextBox1.field_12 = 0;
    gDebugTextBox1.field_A = 1;
    gDebugTextBox1.size = 240;
    gDebugTextBox1.palette = 10;
    gDebugTextBox1.stringOffset = 0;
    gDebugTextBox1.font = &font_80B01A8[0];
    byte_200143C = 1;
    byte_2001370 = 0;
    byte_200143D = 0;
    gDebugInfoIndex = 0;
    byte_2001442 = 0;
}

void sub_800FCD8() {
    switch (byte_200145B) {
        case 0:
            gDebugInfoIndex = 5;
            gDebugESNSum = 0;
            dword_2001398 = 0;
            gDebugESNFrameCount = 1;
            dword_2001390 = 1;
            gDebugMESN = 0;
            byte_200138A = 0;
            byte_200145B++;
            break;

        case 1:
            gDebugInfoIndex = 9;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B++;
            break;

        case 2:
            gDebugInfoIndex = 12;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B++;
            break;

        case 3:
            gDebugInfoIndex = 13;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B++;
            break;

        case 4:
            gDebugInfoIndex = 14;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B++;
            break;

        case 5:
            gDebugInfoIndex = 15;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B++;
            break;

        case 6:
            gDebugInfoIndex = 16;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B++;
            break;

        case 7:
            gDebugInfoIndex = 17;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B++;
            break;

        case 8:
            gDebugInfoIndex = 18;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B++;
            break;

        case 9:
            gDebugInfoIndex = 19;
            byte_200138A = 0;
            REG_TM2CNT_H = 128;
            REG_TM3CNT_H = 132;
            REG_TM2CNT_L = 0;
            REG_TM3CNT_L = 0;
            byte_200145B = 0;
            break;
    }
}

void Debug_ShowInfo() {
    switch (gDebugInfoIndex) {
        case 0:
            return;

        case 1:
        case 2:
        case 3:
        case 4:
            gDebugString[0] = '0';
            gDebugString[1] = '0';
            gDebugString[2] = ' ';
            gDebugString[3] = '0';
            gDebugString[4] = '0';
            gDebugString[5] = '0';
            gDebugString[6] = ' ';
            gDebugString[7] = '0';
            gDebugString[8] = '0';
            gDebugString[9] = '0';
            gDebugString[10] = -1;
            if (!byte_200138A) {
                byte_200138A = 8;
                sub_8010744(dword_20012E4 - dword_20012E0 + 1);
                sub_80107E8(dword_20012EC - dword_20012E8 + 1);
                sub_801088C(dword_20012F4 - dword_20012F0 + 1);
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(gDebugFPS, &gDebugString[1]);
            IntegerToAsciiBw(gDebugESN, &gDebugString[5]);
            IntegerToAsciiBw(gDebugESV, &gDebugString[9]);
            gDebugTextBox1.xPosition = 0x52;
            break;

        case 5:
            gDebugString[0] = '0';
            gDebugString[1] = '0';
            gDebugString[2] = ' ';
            gDebugString[3] = '0';
            gDebugString[4] = '0';
            gDebugString[5] = '0';
            gDebugString[6] = ' ';
            gDebugString[7] = '0';
            gDebugString[8] = '0';
            gDebugString[9] = '0';
            gDebugString[10] = -1;
            if (!byte_200138A) {
                byte_200138A = 8;
                sub_8010744(dword_20012E4 - dword_20012E0 + 1);
                sub_80107E8(dword_20012EC - dword_20012E8 + 1);
                sub_801088C(dword_20012F4 - dword_20012F0 + 1);
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(gDebugFPS, &gDebugString[1]);
            IntegerToAsciiBw(gDebugESN, &gDebugString[5]);
            IntegerToAsciiBw(gDebugMESN, &gDebugString[9]);
            gDebugTextBox1.xPosition = 82;
            break;

        case 6:
        case 7:
        case 8:
            gDebugString[0] = '0';
            gDebugString[1] = '0';
            gDebugString[2] = '0';
            gDebugString[3] = ' ';
            gDebugString[4] = '0';
            gDebugString[5] = '0';
            gDebugString[6] = '0';
            gDebugString[7] = ' ';
            gDebugString[8] = '0';
            gDebugString[9] = '0';
            gDebugString[10] = '0';
            gDebugString[11] = -1;
            if (!byte_200138A) {
                byte_200138A = 8;
                sub_8010744(dword_20012E4 - dword_20012E0 + 1);
                sub_80107E8(dword_20012EC - dword_20012E8 + 1);
                sub_801088C(dword_20012F4 - dword_20012F0 + 1);
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw((u8)dword_2001208, &gDebugString[2]);
            IntegerToAsciiBw((u8)dword_200120C, &gDebugString[6]);
            IntegerToAsciiBw((u8)dword_2001210, &gDebugString[10]);
            gDebugTextBox1.xPosition = 82;
            break;

        case 9:
        case 0xA:
        case 0xB: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                sub_8010744(dword_20012E4 - dword_20012E0 + 1);
                sub_80107E8(dword_20012EC - dword_20012E8 + 1);
            } else {
                --byte_200138A;
            }

            IntegerToAsciiBw(dword_2001208, &gDebugString[9]);
            IntegerToAsciiBw(dword_200120C, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;

        case 0xC: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                dword_2001210 = dword_20012F4 - dword_20012F0 + 1;
                dword_2001214 = dword_20012FC - dword_20012F8 + 1;
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(dword_2001210, &gDebugString[9]);
            IntegerToAsciiBw(dword_2001214, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;

        case 0xD: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                dword_2001218 = dword_2001304 - dword_2001300 + 1;
                dword_200121C = dword_200130C - dword_2001308 + 1;
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(dword_2001218, &gDebugString[9]);
            IntegerToAsciiBw(dword_200121C, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;

        case 0xE: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                dword_2001220 = dword_2001314 - dword_2001310 + 1;
                dword_2001224 = dword_200131C - dword_2001318 + 1;
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(dword_2001220, &gDebugString[9]);
            IntegerToAsciiBw(dword_2001224, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;

        case 0xF: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                dword_2001228 = dword_2001324 - dword_2001320 + 1;
                dword_200122C = dword_200132C - dword_2001328 + 1;
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(dword_2001228, &gDebugString[9]);
            IntegerToAsciiBw(dword_200122C, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;

        case 0x10: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                dword_2001230 = dword_2001334 - dword_2001330 + 1;
                dword_2001234 = dword_200133C - dword_2001338 + 1;
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(dword_2001230, &gDebugString[9]);
            IntegerToAsciiBw(dword_2001234, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;

        case 0x11: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                dword_2001238 = dword_2001344 - dword_2001340 + 1;
                dword_200123C = dword_200134C - dword_2001348 + 1;
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(dword_2001238, &gDebugString[9]);
            IntegerToAsciiBw(dword_200123C, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;

        case 0x12: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                dword_2001240 = dword_2001354 - dword_2001350 + 1;
                dword_2001244 = dword_200135C - dword_2001358 + 1;
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(dword_2001240, &gDebugString[9]);
            IntegerToAsciiBw(dword_2001244, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;

        case 0x13: {
            s32 i;
            for (i = 0; i < 10; i++)
                gDebugString[i] = '0';

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++)
                gDebugString[i] = '0';

            gDebugString[21] = -1;

            if (!byte_200138A) {
                byte_200138A = 8;
                dword_2001248 = dword_2001364 - dword_2001360 + 1;
                dword_200124C = dword_200136C - dword_2001368 + 1;
            } else {
                --byte_200138A;
            }
            IntegerToAsciiBw(dword_2001248, &gDebugString[9]);
            IntegerToAsciiBw(dword_200124C, &gDebugString[20]);
            gDebugTextBox1.xPosition = 36;
        } break;
    }

    gDebugTextBox1.yPosition = 152;
    gDebugTextBox1.stringOffset = 0;
    AddStringToBuffer(&gDebugTextBox1, gDebugString);
}

void sub_8010744(u32 a1) {
    switch (gDebugInfoIndex) {
        case 6:
        case 9:
            dword_2001208 = a1;
            break;

        case 7:
        case 0xA:
            dword_2001250 += a1;
            dword_2001298--;
            if (!dword_2001298) {
                dword_2001298 = 2;
                dword_2001208 = dword_2001250 >> 1;
                dword_2001250 = 0;
            }
            break;

        case 8:
        case 0xB:
            dword_2001250 += a1;
            dword_2001298--;
            if (!dword_2001298) {
                dword_2001298 = 4;
                dword_2001208 = dword_2001250 >> 2;
                dword_2001250 = 0;
            }
            break;
    }
}

void sub_80107E8(u32 a1) {
    switch (gDebugInfoIndex) {
        case 6:
        case 9:
            dword_200120C = a1;
            break;

        case 7:
        case 0xA:
            dword_2001254 += a1;
            dword_200129C--;
            if (!dword_200129C) {
                dword_200129C = 2;
                dword_200120C = dword_2001254 >> 1;
                dword_2001254 = 0;
            }
            break;

        case 8:
        case 0xB:
            dword_2001254 += a1;
            dword_200129C--;
            if (!dword_200129C) {
                dword_200129C = 4;
                dword_200120C = dword_2001254 >> 2;
                dword_2001254 = 0;
            }
            break;
    }
}

void sub_801088C(u32 a1) {
    switch (gDebugInfoIndex) {
        case 6:
            dword_2001210 = a1;
            break;

        case 7:
            dword_2001258 += a1;
            dword_20012A0--;
            if (!dword_20012A0) {
                dword_20012A0 = 2;
                dword_2001210 = dword_2001258 >> 1;
                dword_2001258 = 0;
            }
            break;

        case 8:
            dword_2001258 += a1;
            dword_20012A0--;
            if (!dword_20012A0) {
                dword_20012A0 = 4;
                dword_2001210 = dword_2001258 >> 2;
                dword_2001258 = 0;
            }
            break;
    }
}

void Debug_SetAfterGameUpdate(s32 vcount) {
    switch (gDebugInfoIndex) {
        case 0:
            break;

        case 1:
            gDebugESN = vcount;
            break;

        case 2:
            gDebugESNSum += vcount;
            gDebugESNFrameCount--;
            if (!gDebugESNFrameCount) {
                gDebugESNFrameCount = 2;
                gDebugESN = gDebugESNSum >> 1;
                gDebugESNSum = 0;
            }
            break;

        case 3:
            gDebugESNSum += vcount;
            gDebugESNFrameCount--;
            if (!gDebugESNFrameCount) {
                gDebugESNFrameCount = 4;
                gDebugESN = gDebugESNSum >> 2;
                gDebugESNSum = 0;
            }
            break;

        case 4:
            gDebugESNSum += vcount;
            gDebugESNFrameCount--;
            if (!gDebugESNFrameCount) {
                gDebugESNFrameCount = 8;
                gDebugESN = gDebugESNSum >> 3;
                gDebugESNSum = 0;
            }
            break;

        case 5:
            gDebugESN = vcount;
            if (vcount > gDebugMESN)
                gDebugMESN = vcount;
            break;
    }
}

void Debug_SetAfterVideoUpdate(u32 vcount) {
    s32 index = gDebugInfoIndex;

    if (index == 0)
        return;

    if (index < 0)
        return;

    if (index > 5)
        return;

    gDebugESV = vcount;
}
