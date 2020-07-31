#include "global.h"
#include "alloc.h"
#include "sprite.h"

extern struct GameStatus gGameStatus;
extern struct GameStatus stru_80CC8C4;
extern struct Font font_80B01A8[3];

// These are probably all part of debug ram.
// And thus not extern.
extern u8 byte_2001200;
extern u8 gMainFrameCounter;
extern u8 gDebugFPS;
extern u8 gDebugESN;
extern u8 gDebugESV;
extern u32 dword_2001208;
extern u32 dword_200120C;
extern u32 dword_2001210;
extern u32 dword_2001214;
extern u32 dword_2001218;
extern u32 dword_200121C;
extern u32 dword_2001220;
extern u32 dword_2001224;
extern u32 dword_2001228;
extern u32 dword_200122C;
extern u32 dword_2001230;
extern u32 dword_2001234;
extern u32 dword_2001238;
extern u32 dword_200123C;
extern u32 dword_2001240;
extern u32 dword_2001244;
extern u32 dword_2001248;
extern u32 dword_200124C;
extern u32 dword_2001250;
extern u32 dword_2001254;
extern u32 dword_2001258;
extern u32 dword_200125C;
extern u32 dword_2001260;
extern u32 dword_2001264;
extern u32 dword_2001268;
extern u32 dword_200126C;
extern u32 dword_2001270;
extern u32 dword_2001274;
extern u32 dword_2001278;
extern u32 dword_200127C;
extern u32 dword_2001280;
extern u32 dword_2001284;
extern u32 dword_2001288;
extern u32 dword_200128C;
extern u32 dword_2001290;
extern u32 dword_2001294;
extern u32 dword_2001298;
extern u32 dword_200129C;
extern u32 dword_20012A0;
extern u32 dword_20012A4;
extern u32 dword_20012A8;
extern u32 dword_20012AC;
extern u32 dword_20012B0;
extern u32 dword_20012B4;
extern u32 dword_20012B8;
extern u32 dword_20012BC;
extern u32 dword_20012C0;
extern u32 dword_20012C4;
extern u32 dword_20012C8;
extern u32 dword_20012CC;
extern u32 dword_20012D0;
extern u32 dword_20012D4;
extern u32 dword_20012D8;
extern u32 dword_20012DC;
extern u32 dword_20012E0;
extern u32 dword_20012E4;
extern u32 dword_20012E8;
extern u32 dword_20012EC;
extern u32 dword_20012F0;
extern u32 dword_20012F4;
extern u32 dword_20012F8;
extern u32 dword_20012FC;
extern u32 dword_2001300;
extern u32 dword_2001304;
extern u32 dword_2001308;
extern u32 dword_200130C;
extern u32 dword_2001310;
extern u32 dword_2001314;
extern u32 dword_2001318;
extern u32 dword_200131C;
extern u32 dword_2001320;
extern u32 dword_2001324;
extern u32 dword_2001328;
extern u32 dword_200132C;
extern u32 dword_2001330;
extern u32 dword_2001334;
extern u32 dword_2001338;
extern u32 dword_200133C;
extern u32 dword_2001340;
extern u32 dword_2001344;
extern u32 dword_2001348;
extern u32 dword_200134C;
extern u32 dword_2001350;
extern u32 dword_2001354;
extern u32 dword_2001358;
extern u32 dword_200135C;
extern u32 dword_2001360;
extern u32 dword_2001364;
extern u32 dword_2001368;
extern u32 dword_200136C;
extern u8 byte_2001370;
extern u8 gDebugString[0x17];
extern u8 gDebugInfoIndex;
extern u8 gDebugMESN;
extern u8 byte_200138A;
extern u32 dword_200138C;
extern u32 dword_2001390;
extern u32 dword_2001394;
extern u32 dword_2001398;
extern struct TextBox gDebugTextBox1;
extern struct TextBox gDebugTextBox2;
extern struct TextBox gDebugTextBox3;
extern struct TextBox gDebugTextBox4;
extern struct TextBox gDebugTextBox5;
extern struct TextBox gDebugTextBox6;
extern struct TextBox gDebugTextBox7;
extern struct TextBox gDebugTextBox8;
extern u8 byte_200143C;
extern u8 byte_200143D;
extern u8 byte_200143E;
extern u8 byte_200143F;
extern u8 byte_2001440;
extern u8 byte_2001441;
extern u8 byte_2001442;
extern u8 byte_2001443;
extern u32 dword_2001444;
extern u32 dword_2001448;
extern u32 dword_200144C;
extern u32 dword_2001450;
extern u32 dword_2001454;
extern u16 word_2001458;
extern u8 byte_200145A;
extern u8 byte_200145B;

void sub_800FA58()
{
    gGameStatus.field_E = stru_80CC8C4.field_E;
    gGameStatus.field_F = stru_80CC8C4.field_F;
    gGameStatus.field_11 = stru_80CC8C4.field_11;
    gGameStatus.field_10 = stru_80CC8C4.field_10;
    gGameStatus.field_12 = stru_80CC8C4.field_12;
    sub_803FE78();
}

void sub_800FA84()
{
    dword_2001394 = 0;
    dword_2001398 = 0;
    dword_200138C = 1;
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

void sub_800FCD8()
{
    switch (byte_200145B)
    {
    case 0:
        gDebugInfoIndex = 5;
        dword_2001394 = 0;
        dword_2001398 = 0;
        dword_200138C = 1;
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
