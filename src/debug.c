#include "global.h"
#include "common.h"
#include "alloc.h"
#include "sprite.h"
#include "main.h"
#include "audio_b.h"
#include "menu.h"
#include "player.h"
#include "room.h"

enum DebugAI { DEBUG_AI_NORMAL, DEBUG_AI_NO_AI, DEBUG_AI_NO_HARM, DEBUG_AI_NO_AI_HARM };

u8 byte_2001200;
u8 gMainFrameCounter;
u8 gDebugFPS;
u8 gDebugESN;
u8 gDebugESV;
u32 dword_2001208;
u32 dword_200120C;
u32 dword_2001210;
u32 dword_2001214;
u32 dword_2001218;
u32 dword_200121C;
u32 dword_2001220;
u32 dword_2001224;
u32 dword_2001228;
u32 dword_200122C;
u32 dword_2001230;
u32 dword_2001234;
u32 dword_2001238;
u32 dword_200123C;
u32 dword_2001240;
u32 dword_2001244;
u32 dword_2001248;
u32 dword_200124C;
s32 dword_2001250;
s32 dword_2001254;
s32 dword_2001258;
u32 dword_200125C;
u32 dword_2001260;
u32 dword_2001264;
u32 dword_2001268;
u32 dword_200126C;
u32 dword_2001270;
u32 dword_2001274;
u32 dword_2001278;
u32 dword_200127C;
u32 dword_2001280;
u32 dword_2001284;
u32 dword_2001288;
u32 dword_200128C;
u32 dword_2001290;
u32 dword_2001294;
u32 dword_2001298;
u32 dword_200129C;
u32 dword_20012A0;
u32 dword_20012A4;
u32 dword_20012A8;
u32 dword_20012AC;
u32 dword_20012B0;
u32 dword_20012B4;
u32 dword_20012B8;
u32 dword_20012BC;
u32 dword_20012C0;
u32 dword_20012C4;
u32 dword_20012C8;
u32 dword_20012CC;
u32 dword_20012D0;
u32 dword_20012D4;
u32 dword_20012D8;
u32 dword_20012DC;
u32 dword_20012E0;
u32 dword_20012E4;
u32 dword_20012E8;
u32 dword_20012EC;
u32 dword_20012F0;
u32 dword_20012F4;
u32 dword_20012F8;
u32 dword_20012FC;
u32 dword_2001300;
u32 dword_2001304;
u32 dword_2001308;
u32 dword_200130C;
u32 dword_2001310;
u32 dword_2001314;
u32 dword_2001318;
u32 dword_200131C;
u32 dword_2001320;
u32 dword_2001324;
u32 dword_2001328;
u32 dword_200132C;
u32 dword_2001330;
u32 dword_2001334;
u32 dword_2001338;
u32 dword_200133C;
u32 dword_2001340;
u32 dword_2001344;
u32 dword_2001348;
u32 dword_200134C;
u32 dword_2001350;
u32 dword_2001354;
u32 dword_2001358;
u32 dword_200135C;
u32 dword_2001360;
u32 dword_2001364;
u32 dword_2001368;
u32 dword_200136C;
u8 gDebugGodMode;
char gDebugString[23];
u8 gDebugInfoIndex;
u8 gDebugMESN;
u8 byte_200138A;
u32 gDebugESNFrameCount;
u32 dword_2001390;
s32 gDebugESNSum;
u32 dword_2001398;
struct TextBox gDebugTextBox1;
struct TextBox gDebugTextBox2;
struct TextBox gDebugTextBox3;
struct TextBox gDebugTextBox4;
struct TextBox gDebugTextBox5;
struct TextBox gDebugTextBox6;
struct TextBox gDebugTextBox7;
struct TextBox gDebugTextBox8;
bool8 gDebugGameLocked;
u8 gDebugAI;
bool8 gDebugDoWarp;
u8 gDebugWarpRoomIdx;
u8 gDebugWarpIdx;
u8 byte_2001441;
u8 byte_2001442;
u8 byte_2001443;
u32 dword_2001444;
u32 dword_2001448;
u32 dword_200144C;
struct InputRecord* gInputRecords;
u32 gInputRecordCount;
u16 gPreviousInput;
u8 byte_200145A;
u8 byte_200145B;

void sub_8010744(u32 a1);
void sub_80107E8(u32 a1);
void sub_801088C(u32 a1);
void sub_8011158(void);
void sub_801126C(void);
void sub_8011428(void);
bool32 sub_8011540(void);

static void set_full_eggs_and_feathers(void) {
    gGameStatus.eggs[0] = stru_80CC8C4.eggs[0];
    gGameStatus.eggs[1] = stru_80CC8C4.eggs[1];
    gGameStatus.eggs[3] = stru_80CC8C4.eggs[3];
    gGameStatus.eggs[2] = stru_80CC8C4.eggs[2];
    gGameStatus.goldenFeathers = stru_80CC8C4.goldenFeathers;
    sub_803FE78();
}

void init_debug(void) {
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
    gDebugGameLocked = TRUE;
    gDebugGodMode = FALSE;
    gDebugAI = DEBUG_AI_NORMAL;
    gDebugInfoIndex = 0;
    byte_2001442 = 0;
}

void sub_800FCD8(void) {
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

void Debug_ShowInfo(void) {
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
        case 10:
        case 11: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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

        case 12: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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

        case 13: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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

        case 14: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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

        case 15: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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

        case 16: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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

        case 17: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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

        case 18: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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

        case 19: {
            s32 i;
            for (i = 0; i < 10; i++) {
                gDebugString[i] = '0';
            }

            gDebugString[10] = ' ';

            for (i = 11; i <= 20; i++) {
                gDebugString[i] = '0';
            }

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
            if (vcount > gDebugMESN) {
                gDebugMESN = vcount;
            }
            break;
    }
}

void Debug_SetAfterVideoUpdate(u32 vcount) {
    s32 index = gDebugInfoIndex;

    if (index == 0) {
        return;
    }

    if (index < 0) {
        return;
    }

    if (index > 5) {
        return;
    }

    gDebugESV = vcount;
}

void sub_08010A20(void) {
    ASSERT(0);
}

void sub_08010A28(void) {
    ASSERT(0);
}

void sub_08010A30(void) {
    ASSERT(0);
}

void sub_08010A38(void) {
    ASSERT(0);
}

void sub_08010A40(void) {
    ASSERT(0);
}

void sub_08010A48(void) {
    ASSERT(0);
}

void sub_08010A50(void) {
    ASSERT(0);
}

void sub_08010A58(void) {
    ASSERT(0);
}

void sub_08010A60(void) {
    ASSERT(0);
}

void sub_08010A68(void) {
    ASSERT(0);
}

void sub_08010A70(void) {
    ASSERT(0);
}

void sub_08010A78(void) {
    ASSERT(0);
}

void sub_08010A80(void) {
    ASSERT(0);
}

void sub_08010A88(void) {
    ASSERT(0);
}

void sub_08010A90(void) {
    ASSERT(0);
}

void sub_08010A98(void) {
    ASSERT(0);
}

void sub_08010AA0(void) {
    ASSERT(0);
}

void sub_08010AA8(void) {
    ASSERT(0);
}

void sub_08010AB0(void) {
    ASSERT(0);
}

void sub_08010AB8(void) {
    ASSERT(0);
}

void sub_08010AC0(void) {
    ASSERT(0);
}

void sub_08010AC8(void) {
    ASSERT(0);
}

void sub_08010AD0(void) {
    ASSERT(0);
}

void sub_08010AD8(void) {
    ASSERT(0);
}

void sub_08010AE0(void) {
    ASSERT(0);
}

void sub_08010AE8(void) {
    ASSERT(0);
}

void sub_08010AF0(void) {
    ASSERT(0);
}

void sub_08010AF8(void) {
    ASSERT(0);
}

void sub_08010B00(void) {
    ASSERT(0);
}

void sub_08010B08(void) {
    ASSERT(0);
}

void sub_08010B10(void) {
    ASSERT(0);
}

void sub_08010B18(void) {
    ASSERT(0);
}

void sub_08010B20(void) {
    ASSERT(0);
}

void sub_08010B28(void) {
    ASSERT(0);
}

void sub_08010B30(void) {
    ASSERT(0);
}

void sub_08010B38(void) {
    ASSERT(0);
}

void sub_08010B40(void) {
    ASSERT(0);
}

void sub_08010B48(void) {
    ASSERT(0);
}

void sub_08010B50(void) {
    ASSERT(0);
}

void sub_08010B58(void) {
    ASSERT(0);
}

void sub_08010B60(void) {
    ASSERT(0);
}

void sub_08010B68(void) {
    ASSERT(0);
}

void sub_08010B70(void) {
    ASSERT(0);
}

void sub_08010B78(void) {
    ASSERT(0);
}

void sub_08010B80(void) {
    ASSERT(0);
}

void sub_08010B88(void) {
    ASSERT(0);
}

void sub_08010B90(void) {
    ASSERT(0);
}

void sub_08010B98(void) {
    ASSERT(0);
}

void sub_08010BA0(void) {
    ASSERT(0);
}

void sub_8010BA8(int a1) {
    audio_halt_all_fx();
    pause_efx();
    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SyncVblank();
    update_video();
    SkipVblank();
    DmaTransfer32(byte_83FD254, (void*)OBJ_PLTT, 128);
    sub_8026CC8(2048, 45056);
    DisableBackgrounds();
    audio_set_tune_vol(dVolumes[gBgmMainVolume / 2]);
    sub_8011158();
    sub_801126C();
    FreeById(4, 15);
    ResetMenu();
    ASSERT(!DoesMemBlockExistById(4, 15));

    if (byte_200145A) {
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        SyncVblank();
        update_video();
        SkipVblank();
        REG_BLDCNT = BLDCNT_TGT2_ALL;
        REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
        EnableBGAlphaBlending();
        REG_BLDCNT = gColorSpecEffectsSel;
        EnableBackgrounds();
        sub_8026D84();
        audio_set_tune_vol(dVolumes[gBgmMainVolume]);
        DmaTransfer32(gRoomHeader.spritePalette, (void*)OBJ_PLTT, 128);
        sub_800EECC();

        if (!gIsSlideMiniGame) {
            load_transformation_palette();
        }

        if (gLoadedRoomIndex == 30 || gLoadedRoomIndex == 9) {
            sub_800EC94();
            sub_800ECB4();
        }

        sub_8047BEC();
        sub_80524D8();
        resume_efx();
    } else if (byte_2001441) {
        gInInteractionArea = FALSE;
        dword_203DFDC = 0;
        gLoadedRoomBgm = -1;
        sub_800C1E8(byte_2001443, dword_2001444, dword_2001448, dword_200144C, 1, 0);
    } else if (!gDebugDoWarp) {
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        SyncVblank();
        update_video();
        SkipVblank();
        REG_BLDCNT = BLDCNT_TGT2_ALL;
        REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
        EnableBGAlphaBlending();
        REG_BLDCNT = gColorSpecEffectsSel;
        EnableBackgrounds();
        sub_8026D84();
        audio_set_tune_vol(dVolumes[gBgmMainVolume]);
        DmaTransfer32(gRoomHeader.spritePalette, (void*)OBJ_PLTT, 128);
        sub_800EECC();

        if (!gIsSlideMiniGame) {
            load_transformation_palette();
        }

        if (gLoadedRoomIndex == ROOM_DIVESPOT || gLoadedRoomIndex == ROOM_UNDERCORAL) {
            sub_800EC94();
            sub_800ECB4();
        }

        sub_8047BEC();
        sub_80524D8();
        resume_efx();
    } else {
        gInInteractionArea = FALSE;
        dword_203DFDC = 0;
        gLoadedRoomBgm = -1;
        load_room_directly(gDebugWarpRoomIdx, gDebugWarpIdx, TRUE);
    }
}

void sub_8010E40(int a1) {
    audio_halt_all_fx();
    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SyncVblank();
    update_video();
    SkipVblank();
    DmaTransfer32(byte_83FD254, (void*)OBJ_PLTT, 128);
    sub_8026CC8(2048, 45056);
    DisableBackgrounds();
    audio_set_tune_vol(dVolumes[gBgmMainVolume / 2]);

    gDebugTextBox2.xPosition = 50;
    gDebugTextBox2.yPosition = 40;
    gDebugTextBox2.font = font_80B01A8;
    gDebugTextBox2.size = 240;
    gDebugTextBox2.field_A = 1;
    gDebugTextBox2.stringOffset = 0;
    gDebugTextBox2.palette = 10;
    gDebugTextBox2.letterSpacing = 1;
    gDebugTextBox2.field_11 = 6;
    gDebugTextBox2.field_12 = 0;
    gDebugTextBox2.field_13 = 0;

    gDebugTextBox5.xPosition = 50;
    gDebugTextBox5.yPosition = 56;
    gDebugTextBox5.font = font_80B01A8;
    gDebugTextBox5.size = 240;
    gDebugTextBox5.field_A = 1;
    gDebugTextBox5.stringOffset = 0;
    gDebugTextBox5.palette = 10;
    gDebugTextBox5.letterSpacing = 1;
    gDebugTextBox5.field_11 = 6;
    gDebugTextBox5.field_12 = 0;
    gDebugTextBox5.field_13 = 0;

    gDebugTextBox6.xPosition = 50;
    gDebugTextBox6.yPosition = 64;
    gDebugTextBox6.font = font_80B01A8;
    gDebugTextBox6.size = 240;
    gDebugTextBox6.field_A = 1;
    gDebugTextBox6.stringOffset = 0;
    gDebugTextBox6.palette = 10;
    gDebugTextBox6.letterSpacing = 1;
    gDebugTextBox6.field_11 = 6;
    gDebugTextBox6.field_12 = 0;
    gDebugTextBox6.field_13 = 0;

    while (ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys), !(gKeysDown & SELECT_BUTTON)) {
        u16 x, y;
        char text[12];
        int i;

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        gDebugTextBox2.xPosition = 50;
        gDebugTextBox2.yPosition = 40;
        gDebugTextBox2.stringOffset = 0;
        AddStringToBuffer(&gDebugTextBox2, aVer04275);
        gDebugTextBox5.xPosition = 50;
        gDebugTextBox5.yPosition = 56;
        gDebugTextBox5.stringOffset = 0;
        AddStringToBuffer(&gDebugTextBox5, char_86AD26C[gLoadedRoomIndex]);
        gDebugTextBox6.xPosition = 50;
        gDebugTextBox6.yPosition = 64;
        gDebugTextBox6.stringOffset = 0;

        x = gPlayerPos.x >> FX32_SHIFT;
        y = gMapPixelSizeY - ((gPlayerPos.y + gPlayerPos.z) >> FX32_SHIFT);

        for (i = 0; i < 9; i++) {
            text[i] = ' ';
        }

        IntegerToAsciiBw(x, &text[3]);
        IntegerToAsciiBw(y, &text[8]);
        text[9] = -1;
        AddStringToBuffer(&gDebugTextBox6, text);

        RenderText();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();
    }

    FadeOutObjects(2, 0);
    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SyncVblank();
    update_video();
    SkipVblank();
    REG_BLDCNT = BLDCNT_TGT2_ALL;
    REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
    EnableBGAlphaBlending();
    REG_BLDCNT = gColorSpecEffectsSel;
    EnableBackgrounds();
    sub_8026D84();
    audio_set_tune_vol(dVolumes[gBgmMainVolume]);
    DmaTransfer32(gRoomHeader.spritePalette, (void*)OBJ_PLTT, 128);
    sub_800EECC();

    if (!gIsSlideMiniGame) {
        load_transformation_palette();
    }

    if (gLoadedRoomIndex == ROOM_DIVESPOT || gLoadedRoomIndex == ROOM_UNDERCORAL) {
        sub_800EC94();
        sub_800ECB4();
    }
}

void sub_8011158(void) {
    DmaTransfer32(byte_83FD254, (void*)OBJ_PLTT, 128);
    InitMenu(MENU_DEBUG_MAIN, 0);
    gMenuId = MENU_DEBUG_MAIN;
    gMenuParentId = -1;

    gDebugTextBox2.xPosition = 16;
    gDebugTextBox2.yPosition = 8;
    gDebugTextBox2.font = font_80B01A8;
    gDebugTextBox2.size = 240;
    gDebugTextBox2.field_A = 1;
    gDebugTextBox2.stringOffset = 0;
    gDebugTextBox2.palette = 10;
    gDebugTextBox2.letterSpacing = 1;
    gDebugTextBox2.field_11 = 6;
    gDebugTextBox2.field_12 = 0;
    gDebugTextBox2.field_13 = 0;

    gDebugTextBox3.xPosition = 16;
    gDebugTextBox3.yPosition = 24;
    gDebugTextBox3.font = font_80B01A8;
    gDebugTextBox3.size = 240;
    gDebugTextBox3.field_A = 1;
    gDebugTextBox3.stringOffset = 0;
    gDebugTextBox3.palette = 10;
    gDebugTextBox3.letterSpacing = 1;
    gDebugTextBox3.field_11 = 6;
    gDebugTextBox3.field_12 = 0;
    gDebugTextBox3.field_13 = 0;

    gDebugTextBox4.xPosition = 16;
    gDebugTextBox4.yPosition = 32;
    gDebugTextBox4.font = font_80B01A8;
    gDebugTextBox4.size = 240;
    gDebugTextBox4.field_A = 1;
    gDebugTextBox4.stringOffset = 0;
    gDebugTextBox4.palette = 10;
    gDebugTextBox4.letterSpacing = 1;
    gDebugTextBox4.field_11 = 6;
    gDebugTextBox4.field_12 = 0;
    gDebugTextBox4.field_13 = 0;

    gDebugTextBox5.xPosition = 16;
    gDebugTextBox5.yPosition = 40;
    gDebugTextBox5.font = font_80B01A8;
    gDebugTextBox5.size = 240;
    gDebugTextBox5.field_A = 1;
    gDebugTextBox5.stringOffset = 0;
    gDebugTextBox5.palette = 10;
    gDebugTextBox5.letterSpacing = 1;
    gDebugTextBox5.field_11 = 6;
    gDebugTextBox5.field_12 = 0;
    gDebugTextBox5.field_13 = 0;

    gDebugTextBox6.xPosition = 16;
    gDebugTextBox6.yPosition = 48;
    gDebugTextBox6.font = font_80B01A8;
    gDebugTextBox6.size = 240;
    gDebugTextBox6.field_A = 1;
    gDebugTextBox6.stringOffset = 0;
    gDebugTextBox6.palette = 10;
    gDebugTextBox6.letterSpacing = 1;
    gDebugTextBox6.field_11 = 6;
    gDebugTextBox6.field_12 = 0;
    gDebugTextBox6.field_13 = 0;
}

void sub_801126C(void) {
    gDebugDoWarp = FALSE;
    byte_2001441 = 0;

    while (1) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & SELECT_BUTTON) {
            SetTextSpriteCount(0);
            return;
        } else if (gKeysDown & B_BUTTON) {
            if (gMenuParentId == 0xFF) {
                SetTextSpriteCount(0);
                return;
            }

            gMenuId = gMenuParentId;

            //! Possible fake match.
            do {
                switch (gMenuId) {
                    case MENU_DEBUG_MAIN:
                        gMenuParentId = 0xFF;
                        break;

                    case MENU_DEBUG_INFO_2:
                        gMenuParentId = MENU_DEBUG_INFO_1;
                        break;

                    case MENU_DEBUG_INFO_3:
                        gMenuParentId = MENU_DEBUG_INFO_2;
                        break;

                    case MENU_DEBUG_WARP_2:
                        gMenuParentId = MENU_DEBUG_WARP_1;
                        break;

                    case MENU_DEBUG_WARP_3:
                        gMenuParentId = MENU_DEBUG_WARP_2;
                        break;

                    case MENU_DEBUG_WARP_4:
                        gMenuParentId = MENU_DEBUG_WARP_3;
                        break;

                    case MENU_DEBUG_WARP_5:
                        gMenuParentId = MENU_DEBUG_WARP_4;
                        break;

                    case MENU_DEBUG_WARP_6:
                        gMenuParentId = MENU_DEBUG_WARP_5;
                        break;

                    case 28:
                        gMenuParentId = MENU_DEBUG_WARP_6;
                        break;

                    case MENU_DEBUG_AI:
                    case MENU_DEBUG_GOD_MODE:
                        gMenuParentId = MENU_DEBUG_CHEATS;
                        break;

                    case MENU_DEBUG_INFO_1:
                    case MENU_DEBUG_CHEATS:
                    case MENU_DEBUG_TRANSFORM:
                    case MENU_NOTHING:
                    case MENU_DEBUG_WARP_1:
                        gMenuParentId = MENU_DEBUG_MAIN;
                        break;

                    default:
                        ASSERT(0);
                        break;
                }
            } while (0);

            InitMenu(gMenuId, 0);
        } else if (gKeysDown & A_BUTTON) {
            if (sub_8011540()) {
                SetTextSpriteCount(0);
                return;
            }
        }

        if (!(gKeysDown & JOY_EXCL_DPAD)) {
            if (gKeysDown & DPAD_UP) {
                AdvanceMenuEntryUp();
            } else if (gKeysDown & DPAD_DOWN) {
                AdvanceMenuEntryDown();
            }
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM1;
        gOBJTileCount = 512;
        sub_8011428();
        FlushMenuToTextBuffer();
        RenderText();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();
    }
}

void sub_8011428(void) {
    u16 x, y;
    char text[12];
    int i;

    gDebugTextBox2.xPosition = 16;
    gDebugTextBox2.yPosition = 8;
    gDebugTextBox2.stringOffset = 0;
    AddStringToBuffer(&gDebugTextBox2, aVer04275);

    gDebugTextBox3.xPosition = 16;
    gDebugTextBox3.yPosition = 24;
    gDebugTextBox3.stringOffset = 0;
    if (gDebugGameLocked) {
        AddStringToBuffer(&gDebugTextBox3, aLocked);
    } else {
        AddStringToBuffer(&gDebugTextBox3, aUnlocked);
    }

    gDebugTextBox4.xPosition = 16;
    gDebugTextBox4.yPosition = 32;
    gDebugTextBox4.stringOffset = 0;
    if (gDebugGodMode) {
        AddStringToBuffer(&gDebugTextBox4, aGod);
    } else {
        AddStringToBuffer(&gDebugTextBox4, aMortal);
    }

    gDebugTextBox5.xPosition = 16;
    gDebugTextBox5.yPosition = 40;
    gDebugTextBox5.stringOffset = 0;
    AddStringToBuffer(&gDebugTextBox5, char_86AD26C[gLoadedRoomIndex]);

    gDebugTextBox6.xPosition = 16;
    gDebugTextBox6.yPosition = 48;
    gDebugTextBox6.stringOffset = 0;

    x = gPlayerPos.x >> FX32_SHIFT;
    y = gMapPixelSizeY - ((gPlayerPos.y + gPlayerPos.z) >> FX32_SHIFT);

    for (i = 0; i < 9; i++) {
        text[i] = ' ';
    }

    IntegerToAsciiBw(x, &text[3]);
    IntegerToAsciiBw(y, &text[8]);
    text[9] = -1;
    AddStringToBuffer(&gDebugTextBox6, text);
}

bool32 sub_8011540(void) {
    int i;

    switch (gMenuId) {
        case MENU_DEBUG_MAIN:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_WARP_1;
                    InitMenu(gMenuId, 0);
                    break;

                case 1:
                    if (byte_2001442) {
                        byte_2001441 = 1;
                        return TRUE;
                    }
                    break;

                case 2:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_INFO_1;
                    InitMenu(gMenuId, 0);
                    break;

                case 3:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_CHEATS;
                    InitMenu(gMenuId, 0);
                    break;

                case 4:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_TRANSFORM;
                    InitMenu(gMenuId, 0);
                    break;

                case 6:
                    sub_8060FF8();
                    return TRUE;
            }
            break;

        case MENU_DEBUG_INFO_1:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugInfoIndex = 0;
                    return TRUE;

                case 1:
                    gDebugInfoIndex = 1;
                    gDebugESNSum = 0;
                    dword_2001398 = 0;
                    gDebugESNFrameCount = 1;
                    dword_2001390 = 1;
                    byte_200138A = 0;
                    return TRUE;

                case 2:
                    gDebugInfoIndex = 2;
                    gDebugESNSum = 0;
                    dword_2001398 = 0;
                    gDebugESNFrameCount = 1;
                    dword_2001390 = 1;
                    byte_200138A = 0;
                    return TRUE;

                case 3:
                    gDebugInfoIndex = 3;
                    gDebugESNSum = 0;
                    dword_2001398 = 0;
                    gDebugESNFrameCount = 1;
                    dword_2001390 = 1;
                    byte_200138A = 0;
                    return TRUE;

                case 4:
                    gDebugInfoIndex = 4;
                    gDebugESNSum = 0;
                    dword_2001398 = 0;
                    gDebugESNFrameCount = 1;
                    dword_2001390 = 1;
                    byte_200138A = 0;
                    return TRUE;

                case 5:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_INFO_2;
                    InitMenu(gMenuId, 0);
                    break;
            }
            break;

        case MENU_DEBUG_INFO_2:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugInfoIndex = 5;
                    gDebugESNSum = 0;
                    dword_2001398 = 0;
                    gDebugESNFrameCount = 1;
                    dword_2001390 = 1;
                    gDebugMESN = 0;
                    byte_200138A = 0;
                    return TRUE;

                case 1:
                    gDebugInfoIndex = 6;
                    dword_2001208 = 0;
                    dword_200120C = 0;
                    dword_2001210 = 0;
                    dword_2001250 = 0;
                    dword_2001254 = 0;
                    dword_2001258 = 0;
                    dword_2001298 = 1;
                    dword_200129C = 1;
                    dword_20012A0 = 1;
                    byte_200138A = 0;
                    return TRUE;

                case 2:
                    gDebugInfoIndex = 7;
                    dword_2001208 = 0;
                    dword_200120C = 0;
                    dword_2001210 = 0;
                    dword_2001250 = 0;
                    dword_2001254 = 0;
                    dword_2001258 = 0;
                    dword_2001298 = 1;
                    dword_200129C = 1;
                    dword_20012A0 = 1;
                    byte_200138A = 0;
                    return TRUE;

                case 3:
                    gDebugInfoIndex = 8;
                    dword_2001208 = 0;
                    dword_200120C = 0;
                    dword_2001210 = 0;
                    dword_2001250 = 0;
                    dword_2001254 = 0;
                    dword_2001258 = 0;
                    dword_2001298 = 1;
                    dword_200129C = 1;
                    dword_20012A0 = 1;
                    byte_200138A = 0;
                    return TRUE;

                case 4:
                    gDebugInfoIndex = 9;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 5:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_INFO_3;
                    InitMenu(gMenuId, 0);
                    break;
            }
            break;

        case MENU_DEBUG_INFO_3:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugInfoIndex = 10;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 1:
                    gDebugInfoIndex = 11;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 2:
                    gDebugInfoIndex = 12;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 3:
                    gDebugInfoIndex = 13;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 4:
                    gDebugInfoIndex = 14;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 5:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_INFO_4;
                    InitMenu(gMenuId, 0);
                    break;
            }
            break;

        case MENU_DEBUG_INFO_4:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugInfoIndex = 15;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 1:
                    gDebugInfoIndex = 16;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 2:
                    gDebugInfoIndex = 17;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 3:
                    gDebugInfoIndex = 18;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 4:
                    gDebugInfoIndex = 19;
                    byte_200138A = 0;
                    REG_TM2CNT_H = 128;
                    REG_TM3CNT_H = 132;
                    REG_TM2CNT_L = 0;
                    REG_TM3CNT_L = 0;
                    return TRUE;

                case 5:
                    break;
            }
            break;

        case MENU_DEBUG_GOD_MODE:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugGodMode = TRUE;
                    return 0;

                case 1:
                    gDebugGodMode = FALSE;
                    return 0;
            }
            break;

        case MENU_DEBUG_AI:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugAI = DEBUG_AI_NORMAL;
                    return 0;

                case 1:
                    gDebugAI = DEBUG_AI_NO_AI;
                    return 0;

                case 2:
                    gDebugAI = DEBUG_AI_NO_HARM;
                    return 0;

                case 3:
                    gDebugAI = DEBUG_AI_NO_AI_HARM;
                    return 0;
            }
            break;

        case MENU_DEBUG_CHEATS:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugGameLocked = FALSE;
                    for (i = 0; i < MOVE_COUNT; i++) {
                        gUnlockedMoves[i] = TRUE;
                    }
                    for (i = 0; i < gTotalAmountOfLevels; i++) {
                        run_obj_behavior(223, i);
                    }
                    gUnlockedLevels = gTotalAmountOfLevels;
                    sub_80388E0();
                    return TRUE;

                case 1:
                    break;

                case 2:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_GOD_MODE;
                    InitMenu(gMenuId, 0);
                    SetMenuEntry(gDebugGodMode ? 0 : 1);
                    break;

                case 3:
                    set_full_eggs_and_feathers();
                    return TRUE;
            }
            break;

        case MENU_DEBUG_TRANSFORM:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    set_transformation(TRANSFORMATION_BANJO);
                    return TRUE;

                case 1:
                    set_transformation(TRANSFORMATION_MOUSE);
                    return TRUE;

                case 2:
                    set_transformation(TRANSFORMATION_CANDLE);
                    return TRUE;

                case 3:
                    set_transformation(TRANSFORMATION_TANK);
                    return TRUE;

                case 4:
                    set_transformation(TRANSFORMATION_OCTOPUS);
                    return TRUE;

                case 5:
                    break;
            }
            break;

        case MENU_DEBUG_WARP_1:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_SPIRALBOTTOM;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 1:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_SPIRALMIDDLE;
                    gDebugWarpIdx = 3;
                    return TRUE;

                case 2:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_SPIRALMIDDLE;
                    gDebugWarpIdx = 2;
                    return TRUE;

                case 3:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_SPIRALTOP;
                    gDebugWarpIdx = 1;
                    return TRUE;

                case 4:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_JIGGYTEMPLE;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 5:
                    break;

                case 6:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_WARP_2;
                    InitMenu(gMenuId, 0);
                    break;
            }
            break;

        case MENU_DEBUG_WARP_2:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_LOWERFARM;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 1:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_UPPERFARM;
                    gDebugWarpIdx = 1;
                    return TRUE;

                case 2:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_COWBOSS;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 3:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_COWBOSS;
                    gDebugWarpIdx = 5;
                    return TRUE;

                case 4:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = gLoadedRoomIndex;
                    gLoadedRoomIndex = ROOM_MUMBOHUT;
                    gLoadedRoomLevel = LEVEL_CLIFF_FARM;
                    sub_8040178();
                    return TRUE;

                case 5:
                    break;

                case 6:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_WARP_3;
                    InitMenu(gMenuId, 0);
                    break;
            }
            break;

        case MENU_DEBUG_WARP_3:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_BEACHSTART;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 1:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_QUARRY;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 2:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_QUARRY;
                    gDebugWarpIdx = 2;
                    return TRUE;

                case 3:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_UNDERCORAL;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 4:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_BEACHTOP;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 5:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = gLoadedRoomIndex;
                    gLoadedRoomIndex = ROOM_MUMBOHUT;
                    gLoadedRoomLevel = LEVEL_BREEGULL_BEACH;
                    sub_8040178();
                    return TRUE;

                case 6:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_WARP_4;
                    InitMenu(gMenuId, 0);
                    break;
            }
            break;

        case MENU_DEBUG_WARP_4:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_BOARDWALK;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 1:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_HOUSEROOMS;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 2:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_CANDLEPUZ;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 3:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_SWAMPGAS;
                    gDebugWarpIdx = 1;
                    return TRUE;

                case 4:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = gLoadedRoomIndex;
                    gLoadedRoomIndex = ROOM_MUMBOHUT;
                    gLoadedRoomLevel = LEVEL_BAD_MAGIC_BAYOU;
                    sub_8040178();
                    return TRUE;

                case 5:
                    break;

                case 6:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_WARP_5;
                    InitMenu(gMenuId, 0);
                    break;
            }
            break;

        case MENU_DEBUG_WARP_5:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_HARBOUR;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 1:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_SANDAREA;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 2:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_CASTLEINNER;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 3:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_VILLAGE;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 4:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_INSIDES;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 5:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = gLoadedRoomIndex;
                    gLoadedRoomIndex = ROOM_MUMBOHUT;
                    gLoadedRoomLevel = LEVEL_SPILLERS_HARBOR;
                    sub_8040178();
                    return TRUE;

                case 6:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_DEBUG_WARP_6;
                    InitMenu(gMenuId, 0);
                    break;
            }
            break;

        case MENU_DEBUG_WARP_6:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_FJORD;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 1:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_FJORDCAVERN;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 2:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_FURNSECTION;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 3:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_FURNSTORE;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 4:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = ROOM_POISONROOM;
                    gDebugWarpIdx = 0;
                    return TRUE;

                case 5:
                    gDebugDoWarp = TRUE;
                    gDebugWarpRoomIdx = gLoadedRoomIndex;
                    gLoadedRoomIndex = ROOM_MUMBOHUT;
                    gLoadedRoomLevel = LEVEL_FREEZING_FURNACE;
                    sub_8040178();
                    return TRUE;

                case 6:
                    break;
            }
            break;
    }

    return FALSE;
}

void sub_80120DC(int a1, int a2, int a3, int a4) {
    byte_2001442 = 1;
    dword_2001444 = a2;
    dword_2001448 = a3;
    dword_200144C = a4;
    byte_2001443 = gLoadedRoomIndex;
}

#define MAX_INPUT_RECORDINGS 256

void debug_record_input(void) {
    u16 input = REG_KEYINPUT & KEYS_MASK;

    if (input != gPreviousInput) {
        ASSERT(++gInputRecordCount != MAX_INPUT_RECORDINGS);
        gInputRecords[gInputRecordCount].input = input;
        gPreviousInput = input;
        gInputRecords[gInputRecordCount].frames = 0;
    } else {
        gInputRecords[gInputRecordCount].frames++;
    }
}

void init_input_recording(void) {
    gInputRecords = (struct InputRecord*)Alloc(sizeof(struct InputRecord) * MAX_INPUT_RECORDINGS, 8, 5);
    gInputRecordCount = 0;
    gPreviousInput = REG_KEYINPUT & KEYS_MASK;
}

void free_input_record_memory(void) {
    s32 count = gInputRecordCount;
    if (count > 0) {
        while (count != 0) {
            count--;
        }
    }
    Free(gInputRecords, 4);
}

void display_error_message(char* type, char* message) {
    int i;

    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_1D_MAP;
    REG_BG2CNT = 0;
    REG_BLDCNT = BLDCNT_TGT2_ALL;
    REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
    REG_BLDY = 0;
    DmaFill32(0, (void*)BG_VRAM, 10240);
    DmaFill32(0x50005000, (void*)BG_PLTT, 128);
    DmaTransfer32(byte_83FD254, (void*)OBJ_PLTT, 128);

    gDebugTextBox5.xPosition = 16;
    gDebugTextBox5.yPosition = 40;
    gDebugTextBox5.font = font_80B01A8;
    gDebugTextBox5.size = 240;
    gDebugTextBox5.field_A = 1;
    gDebugTextBox5.stringOffset = 0;
    gDebugTextBox5.palette = 10;
    gDebugTextBox5.letterSpacing = 1;
    gDebugTextBox5.field_11 = 6;
    gDebugTextBox5.field_12 = 0;
    gDebugTextBox5.field_13 = 0;

    gDebugTextBox6.xPosition = 16;
    gDebugTextBox6.yPosition = 48;
    gDebugTextBox6.font = font_80B01A8;
    gDebugTextBox6.size = 240;
    gDebugTextBox6.field_A = 1;
    gDebugTextBox6.stringOffset = 0;
    gDebugTextBox6.palette = 10;
    gDebugTextBox6.letterSpacing = 1;
    gDebugTextBox6.field_11 = 6;
    gDebugTextBox6.field_12 = 0;
    gDebugTextBox6.field_13 = 0;

    gDebugTextBox7.xPosition = 16;
    gDebugTextBox7.yPosition = 64;
    gDebugTextBox7.font = font_80B01A8;
    gDebugTextBox7.size = 240;
    gDebugTextBox7.field_A = 1;
    gDebugTextBox7.stringOffset = 0;
    gDebugTextBox7.palette = 10;
    gDebugTextBox7.letterSpacing = 1;
    gDebugTextBox7.field_11 = 6;
    gDebugTextBox7.field_12 = 0;
    gDebugTextBox7.field_13 = 0;

    gDebugTextBox8.xPosition = 16;
    gDebugTextBox8.yPosition = 80;
    gDebugTextBox8.font = font_80B01A8;
    gDebugTextBox8.size = 208;
    gDebugTextBox8.field_A = 5;
    gDebugTextBox8.stringOffset = 0;
    gDebugTextBox8.palette = 10;
    gDebugTextBox8.letterSpacing = 1;
    gDebugTextBox8.field_11 = 6;
    gDebugTextBox8.field_12 = 0;
    gDebugTextBox8.field_13 = 0;

    for (i = 0; i < 2; i++) {
        u16 x, y;
        char posText[12];
        int i;

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void*)OBJ_VRAM1;
        gOBJTileCount = 512;

        gDebugTextBox5.xPosition = 16;
        gDebugTextBox5.yPosition = 40;
        gDebugTextBox5.stringOffset = 0;
        gDebugTextBox6.xPosition = 16;
        gDebugTextBox6.yPosition = 48;
        gDebugTextBox6.stringOffset = 0;
        gDebugTextBox7.xPosition = 16;
        gDebugTextBox7.yPosition = 64;
        gDebugTextBox7.stringOffset = 0;
        gDebugTextBox8.xPosition = 16;
        gDebugTextBox8.yPosition = 80;
        gDebugTextBox8.stringOffset = 0;
        AddStringToBuffer(&gDebugTextBox5, char_86AD26C[gLoadedRoomIndex]);

        x = gPlayerPos.x >> FX32_SHIFT;
        y = gMapPixelSizeY - ((gPlayerPos.y + gPlayerPos.z) >> FX32_SHIFT);

        for (i = 0; i < 9; i++) {
            posText[i] = ' ';
        }

        IntegerToAsciiBw(x, &posText[3]);
        IntegerToAsciiBw(y, &posText[8]);
        posText[9] = -1;
        AddStringToBuffer(&gDebugTextBox6, posText);
        AddStringToBuffer(&gDebugTextBox7, type);
        AddStringToBuffer(&gDebugTextBox8, message);

        RenderText();
        SyncVblank();
        update_video();
        SkipVblank();
    }

    ASSERT(0);
}

void sub_801243C(void) {
    char string[11];
    struct TextBox textBox1;
    struct TextBox textBox2;
    struct TextBox textBox3;

    audio_halt_all_fx();
    sub_80270AC(4095, 0);
    DmaFill32(0, (void*)BG_PLTT, 128);
    sub_8026E48(4095, 0, 0);

    //! Possible fake match.
    do {
        string[0] = 'S';
        string[1] = 'C';
        string[2] = 'R';
        string[3] = 'I';
        string[4] = 'P';
        string[5] = 'T';
        string[6] = ' ';
        string[7] = '0';
        string[8] = '0';
        string[9] = '0';
        string[10] = -1;
    } while (0);

    textBox1.xPosition = 8;
    textBox1.yPosition = 8;
    textBox1.font = font_80B01A8;
    textBox1.size = 240;
    textBox1.field_A = 1;
    textBox1.stringOffset = 0;
    textBox1.palette = 10;
    textBox1.letterSpacing = 1;
    textBox1.field_11 = 6;
    textBox1.field_12 = 0;
    textBox1.field_13 = 0;

    textBox2.xPosition = 8;
    textBox2.yPosition = 24;
    textBox2.font = font_80B01A8;
    textBox2.size = 240;
    textBox2.field_A = 1;
    textBox2.stringOffset = 0;
    textBox2.palette = 10;
    textBox2.letterSpacing = 1;
    textBox2.field_11 = 6;
    textBox2.field_12 = 0;
    textBox2.field_13 = 0;

    textBox3.xPosition = 8;
    textBox3.yPosition = 40;
    textBox3.font = font_80B01A8;
    textBox3.size = 240;
    textBox3.field_A = 1;
    textBox3.stringOffset = 0;
    textBox3.palette = 10;
    textBox3.letterSpacing = 1;
    textBox3.field_11 = 6;
    textBox3.field_12 = 0;
    textBox3.field_13 = 0;
}
