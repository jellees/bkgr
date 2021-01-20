#include "global.h"
#include "sprite.h"
#include "alloc.h"
#include "menu.h"
#include "common.h"

// Todo: define this here.
/*extern u8 gMenuId;
extern u8 gMenuParentId;
extern struct Menu gMenu;*/

void ResetMenuEx()
{
    gMenuId = -1;
    gMenuParentId = -1;
    gMenu.useSpriteBuffer = FALSE;
    gMenu.texts = NULL;
    gMenu.spriteBuffer = NULL;
}

void ResetMenu()
{
    gMenuId = -1;
    gMenuParentId = -1;
    gMenu.useSpriteBuffer = FALSE;
    gMenu.texts = NULL;
    gMenu.spriteBuffer = NULL;
}

extern u8 str_ENGLISH;
extern u8 str_FRANCAIS;
extern u8 str_ESPANOL;
extern u8 str_DEUTSCH;
extern u8 str_ITALIANO;
extern u8 str_08068434;
extern u8 str_08068440;
extern u8 str_08068460;
extern u8 str_08068474;
extern u8 str_080684C4;
extern u8 str_080684D4;
extern u8 str_08068490;
extern u8 str_080684A0;
extern u8 str_080684F0;
extern u8 str_08068500;
extern u8 str_08067D6C;
extern u8 str_08067D78;
extern u8 str_08067D84;
extern u8 str_08067DFC;
extern u8 str_08067E0C;
extern u8 str_08067E18;
extern u8 str_08067F44;
extern u8 str_08067F58;
extern u8 str_08067F70;
extern u8 str_08067E94;
extern u8 str_08067EAC;
extern u8 str_08067EC0;
extern u8 str_08067FE4;
extern u8 str_08067FF4;
extern u8 str_08067FFC;
extern u8 str_08067D44;
extern u8 str_08067D50;
extern u8 str_08067D58;
extern u8 str_08067D64;
extern u8 str_08067DCC;
extern u8 str_08067DD8;
extern u8 str_08067DE0;
extern u8 str_08067DEC;
extern u8 str_08067F14;
extern u8 str_08067F20;
extern u8 str_08067F2C;
extern u8 str_08067F38;
extern u8 str_08067E64;
extern u8 str_08067E70;
extern u8 str_08067E7C;
extern u8 str_08067E88;
extern u8 str_08067FBC;
extern u8 str_08067FC8;
extern u8 str_08067FD0;
extern u8 str_08067FDC;
extern u8 str_08068058;
extern u8 str_08068064;
extern u8 str_080680E8;
extern u8 str_080680FC;
extern u8 str_08068244;
extern u8 str_08068258;
extern u8 str_08068190;
extern u8 str_080681A4;
extern u8 str_080682E4;
extern u8 str_080682F4;
extern u8 str_08068370;
extern u8 str_08068380;
extern u8 str_08068388;
extern u8 str_0806839C;
extern u8 str_080683A4;
extern u8 str_080683B8;
extern u8 str_080683C4;
extern u8 str_080683D8;
extern u8 str_080683E0;
extern u8 str_080683F4;
extern u8 str_080683FC;
extern u8 str_08068404;
extern u8 str_08068408;
extern u8 str_08068410;
extern u8 str_08068418;
extern u8 str_0806841C;
extern u8 str_08068424;
extern u8 str_08068428;
extern u8 str_0806842C;
extern u8 str_08068430;
extern u8 str_08065320;
extern u8 str_08065328;
extern u8 str_080657B0;
extern u8 str_0806570C;
extern u8 str_080657C4;
extern u8 str_0806571C;
extern u8 str_080657D8;
extern u8 str_08065728;
extern u8 str_080657EC;
extern u8 str_08065738;
extern u8 str_08065788;
extern u8 str_08065928;
extern u8 str_08065850;
extern u8 str_0806593C;
extern u8 str_08065868;
extern u8 str_08065950;
extern u8 str_0806587C;
extern u8 str_08065964;
extern u8 str_08065894;
extern u8 str_080658FC;
extern u8 str_08065BE4;
extern u8 str_08065B1C;
extern u8 str_08065BF8;
extern u8 str_08065B2C;
extern u8 str_08065C0C;
extern u8 str_08065B40;
extern u8 str_08065C20;
extern u8 str_08065B50;
extern u8 str_08065BB8;
extern u8 str_08065D4C;
extern u8 str_08065C84;
extern u8 str_08065D60;
extern u8 str_08065C98;
extern u8 str_08065D74;
extern u8 str_08065CB0;
extern u8 str_08065D88;
extern u8 str_08065CC0;
extern u8 str_08065D24;
extern u8 str_08065A7C;
extern u8 str_080659C8;
extern u8 str_08065A90;
extern u8 str_080659D4;
extern u8 str_08065AA4;
extern u8 str_080659E4;
extern u8 str_08065AB8;
extern u8 str_080659F0;
extern u8 str_08065A4C;
extern u8 str_08065800;
extern u8 str_08065748;
extern u8 str_08065814;
extern u8 str_08065758;
extern u8 str_08065828;
extern u8 str_08065768;
extern u8 str_0806583C;
extern u8 str_08065778;
extern u8 str_08065790;
extern u8 str_08065978;
extern u8 str_080658AC;
extern u8 str_0806598C;
extern u8 str_080658C0;
extern u8 str_080659A0;
extern u8 str_080658D4;
extern u8 str_080659B4;
extern u8 str_080658E8;
extern u8 str_08065908;
extern u8 str_08065C34;
extern u8 str_08065B68;
extern u8 str_08065C48;
extern u8 str_08065B7C;
extern u8 str_08065C5C;
extern u8 str_08065B90;
extern u8 str_08065C70;
extern u8 str_08065BA4;
extern u8 str_08065BC4;
extern u8 str_08065D9C;
extern u8 str_08065CD4;
extern u8 str_08065DB0;
extern u8 str_08065CE8;
extern u8 str_08065DC4;
extern u8 str_08065D00;
extern u8 str_08065DD8;
extern u8 str_08065D14;
extern u8 str_08065D2C;
extern u8 str_08065ACC;
extern u8 str_080659FC;
extern u8 str_08065AE0;
extern u8 str_08065A10;
extern u8 str_08065AF4;
extern u8 str_08065A28;
extern u8 str_08065B08;
extern u8 str_08065A3C;
extern u8 str_08065A58;

extern u8 str_WARP_MAP;
extern u8 str_WARP_TEMP;
extern u8 str_DEBUG_INFO;
extern u8 str_CHEATS;
extern u8 str_TRANSFORM;
extern u8 str_RESERVED_0;
extern u8 str_PROFILE;
extern u8 str_UNLOCK_GAME;
extern u8 str_RESERVED_1;
extern u8 str_GOD_MODE;
extern u8 str_FULL_EF;
extern u8 str_NONE;
extern u8 str_FPS_ESN_ESV;
extern u8 str_FPS_A2ESN_ESV;
extern u8 str_FPS_A4ESN_ESV;
extern u8 str_FPS_A8ESN_ESV;
extern u8 str_NEXT_0;
extern u8 str_FPS_ESN_MESN;
extern u8 str_CA_CB_CC;
extern u8 str_CA2_CB2_CC2;
extern u8 str_CA4_CB4_CC4;
extern u8 str_CCA_CCB;
extern u8 str_NEXT_1;
extern u8 str_CCA2_CCB2;
extern u8 str_CCA4_CCB4;
extern u8 str_CCC_CCD;
extern u8 str_CCE_CCF;
extern u8 str_CCG_CCH;
extern u8 str_NEXT_2;
extern u8 str_CCI_CCJ;
extern u8 str_CCK_CCL;
extern u8 str_CCM_CCN;
extern u8 str_CCO_CCP;
extern u8 str_CCQ_CCR;
extern u8 str_RESERVED_2;
extern u8 str_NORMAL;
extern u8 str_NO_AI;
extern u8 str_NO_HARM;
extern u8 str_NO_AI_HARM;
extern u8 str_GOD_ON;
extern u8 str_GOD_OFF;
extern u8 str_BANJO;
extern u8 str_MOUSE;
extern u8 str_CANDLE;
extern u8 str_TANK;
extern u8 str_OCTOPUS;
extern u8 str_RESERVED_3;
extern u8 str_RM_SPIRAL_BOT;
extern u8 str_RM_SPIRAL_MID_E;
extern u8 str_RM_SPIRAL_MID_W;
extern u8 str_RM_SPIRAL_TOP;
extern u8 str_RM_JIGGY_TMPL;
extern u8 str_RM_RESERVED_4;
extern u8 str_RM_NEXT_3;
extern u8 str_RM_FARM_LOWER;
extern u8 str_RM_FARM_UPPER;
extern u8 str_RM_COW_BOSS;
extern u8 str_RM_MILL_HOUSE;
extern u8 str_RM_MUMBO_FARM;
extern u8 str_RM_RESERVED_5;
extern u8 str_RM_NEXT_4;
extern u8 str_RM_BEACH;
extern u8 str_RM_QUARRY_BOT;
extern u8 str_RM_QUARRY_TOP;
extern u8 str_RM_UNDERCORAL;
extern u8 str_RM_BEACH_TOP;
extern u8 str_RM_MUMBO_BCH;
extern u8 str_RM_NEXT_5;
extern u8 str_RM_BOARDWALK;
extern u8 str_RM_HOUSEROOM;
extern u8 str_RM_CANDLE_PUZ;
extern u8 str_RM_SWAMP_GAS;
extern u8 str_RM_MUMBO_SWMP;
extern u8 str_RM_RESERVED_6;
extern u8 str_RM_NEXT_6;
extern u8 str_RM_HARBOUR;
extern u8 str_RM_SAND_AREA;
extern u8 str_RM_CASTLE_IN;
extern u8 str_RM_VILLAGE;
extern u8 str_RM_INSIDE_A;
extern u8 str_RM_MUMBO_HARB;
extern u8 str_RM_NEXT_7;
extern u8 str_RM_FJORD;
extern u8 str_RM_FJORD_CAV;
extern u8 str_RM_FURN_SECT;
extern u8 str_RM_FURNSTORE;
extern u8 str_RM_POISONROOM;
extern u8 str_RM_MUMBO_FURN;
extern u8 str_RM_NEXT_8;

extern u32 dword_80CF3B0[8];

#ifdef NONMATCHING

void InitMenu(u32 menu, u32 language)
{
    if (gMenu.texts)
    {
        Free(gMenu.texts, 4);
        gMenu.texts = NULL;
    }

    if (gMenu.useSpriteBuffer && gMenu.spriteBuffer)
    {
        Free(gMenu.spriteBuffer, 4);
        gMenu.spriteBuffer = NULL;
    }

    switch (menu)
    {
    case 3:
        gMenu.xPosition = 85;
        gMenu.yPosition = 40;
        gMenu.unselected.xPosition = 85;
        gMenu.unselected.yPosition = 40;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 85;
        gMenu.selected.yPosition = 40;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 5;
        gMenu.texts = (u8**)Alloc(0x14u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 16;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_ENGLISH; // "ENGLISH";
        gMenu.texts[1] = &str_FRANCAIS; // "FRANÇAIS";
        gMenu.texts[2] = &str_ESPANOL; // "ESPAÑOL";
        gMenu.texts[3] = &str_DEUTSCH; // "DEUTSCH";
        gMenu.texts[4] = &str_ITALIANO; // "ITALIANO";
        break;
    case 0:
        gMenu.xPosition = 77;
        gMenu.yPosition = 122;
        gMenu.unselected.xPosition = 77;
        gMenu.unselected.yPosition = 122;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 77;
        gMenu.selected.yPosition = 122;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 2;
        gMenu.texts = (u8**)Alloc(8, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 16;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        switch (language)
        {
        case 0:
            gMenu.texts[0] = &str_08068434; // FORMAT("NEW GAME");
            gMenu.texts[1] = &str_08068440; // FORMAT("CONTINUE");
            break;
        case 1:
            gMenu.texts[0] = &str_08068460; // FORMAT("NOUVELLE PARTIE");
            gMenu.texts[1] = &str_08068474; // FORMAT("CONTINUER");
            break;
        case 2:
            gMenu.texts[0] = &str_080684C4; // FORMAT("NUEVA PARTIDA");
            gMenu.texts[1] = &str_080684D4; // FORMAT("CONTINUAR");
            break;
        case 4:
            gMenu.texts[0] = &str_080684F0; // FORMAT("NUOVA PARTITA");
            gMenu.texts[1] = &str_08068500; // FORMAT("CONTINUA");
            break;
        case 3:
            gMenu.texts[0] = &str_08068490; // FORMAT("NEUES SPIEL");
            gMenu.texts[1] = &str_080684A0; // FORMAT("FORTSETZEN");
            break;
        default: HANG; break;
        }
        break;
    case 8:
        gMenu.xPosition = 8;
        gMenu.yPosition = 36;
        gMenu.unselected.xPosition = 8;
        gMenu.unselected.yPosition = 36;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 8;
        gMenu.selected.yPosition = 36;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 3;
        gMenu.texts = (u8**)Alloc(0xCu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 20;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        switch (language)
        {
        case 0:
            gMenu.texts[0] = &str_08067D6C; // FORMAT("TEXT SPEED");
            gMenu.texts[1] = &str_08067D78; // FORMAT("BGM VOLUME");
            gMenu.texts[2] = &str_08067D84; // FORMAT("SE VOLUME");
            break;
        case 1:
            gMenu.texts[0] = &str_08067DFC; // FORMAT("VITESSE TEXTE");
            gMenu.texts[1] = &str_08067E0C; // FORMAT("MUSIQUE");
            gMenu.texts[2] = &str_08067E18; // FORMAT("EFFETS SONORES");
            break;
        case 2:
            gMenu.texts[0] = &str_08067F44; // FORMAT("VELOCIDAD TEXTO");
            gMenu.texts[1] = &str_08067F58; // FORMAT("VOLUMEN MÚSICA FONDO");
            gMenu.texts[2] = &str_08067F70; // FORMAT("VOLUMEN EFECTOS");
            break;
        case 4:
            gMenu.texts[0] = &str_08067FE4; // FORMAT("VELOCITÀ TESTO");
            gMenu.texts[1] = &str_08067FF4; // FORMAT("MUSICA");
            gMenu.texts[2] = &str_08067FFC; // FORMAT("EFFETTI SONORI");
            break;
        case 3:
            gMenu.texts[0] = &str_08067E94; // FORMAT("TEXT-GESCHWINDIGKEIT");
            gMenu.texts[1] = &str_08067EAC; // FORMAT("MUSIK-LAUTSTÄRKE");
            gMenu.texts[2] = &str_08067EC0; // FORMAT("EFFEKT-LAUTSTÄRKE");
            break;
        default: HANG; break;
        }
        break;
    case 1:
        gMenu.xPosition = 52;
        gMenu.yPosition = 36;
        gMenu.unselected.xPosition = 52;
        gMenu.unselected.yPosition = 36;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 52;
        gMenu.selected.yPosition = 36;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 4;
        gMenu.texts = (u8**)Alloc(0x10, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 24;
        gMenu.horizontalPadding = 20;
        gMenu.useSpriteBuffer = 1;
        gMenu.spriteBuffer = Alloc(sizeof(struct Sprite) * gMenu.entryCount, 15, 4);
        SetSprite(&gMenu.spriteBuffer[0], 1142u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition, 2);
        SetSprite(&gMenu.spriteBuffer[1], 0x477u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition + gMenu.lineHeight, 2);
        SetSprite(&gMenu.spriteBuffer[2], 0x478u, 0, 0, 0, gMenu.xPosition, 2 * gMenu.lineHeight + gMenu.yPosition, 2);
        SetSprite(&gMenu.spriteBuffer[3], 0x479u, 0, 0, 0, gMenu.xPosition, 3 * gMenu.lineHeight + gMenu.yPosition, 2);
        switch (language)
        {
        case 0:
            gMenu.texts[0] = &str_08067D44; // FORMAT("CONTINUE");
            gMenu.texts[1] = &str_08067D50; // FORMAT("TOTALS");
            gMenu.texts[2] = &str_08067D58; // FORMAT("OPTIONS");
            gMenu.texts[3] = &str_08067D64; // FORMAT("SAVE");
            break;
        case 1:
            gMenu.texts[0] = &str_08067DCC; // FORMAT("CONTINUER");
            gMenu.texts[1] = &str_08067DD8; // FORMAT("TOTAL");
            gMenu.texts[2] = &str_08067DE0; // FORMAT("OPTIONS");
            gMenu.texts[3] = &str_08067DEC; // FORMAT("SAUVEGARDER");
            break;
        case 2:
            gMenu.texts[0] = &str_08067F14; // FORMAT("CONTINUAR");
            gMenu.texts[1] = &str_08067F20; // FORMAT("TOTALES");
            gMenu.texts[2] = &str_08067F2C; // FORMAT("OPCIONES");
            gMenu.texts[3] = &str_08067F38; // FORMAT("GUARDAR");
            break;
        case 4:
            gMenu.texts[0] = &str_08067FBC; // FORMAT("CONTINUA");
            gMenu.texts[1] = &str_08067FC8; // FORMAT("TOTALE");
            gMenu.texts[2] = &str_08067FD0; // FORMAT("OPZIONI");
            gMenu.texts[3] = &str_08067FDC; // FORMAT("SALVA");
            break;
        case 3:
            gMenu.texts[0] = &str_08067E64; // FORMAT("FORTSETZEN");
            gMenu.texts[1] = &str_08067E70; // FORMAT("ÜBERSICHT");
            gMenu.texts[2] = &str_08067E7C; // FORMAT("OPTIONEN");
            gMenu.texts[3] = &str_08067E88; // FORMAT("SPEICHERN");
            break;
        default: HANG; break;
        }
        break;
    case 2:
        gMenu.xPosition = 52;
        gMenu.yPosition = 36;
        gMenu.unselected.xPosition = 52;
        gMenu.unselected.yPosition = 36;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 52;
        gMenu.selected.yPosition = 36;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 2;
        gMenu.texts = Alloc(8u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 24;
        gMenu.horizontalPadding = 20;
        gMenu.useSpriteBuffer = 1;
        gMenu.spriteBuffer = Alloc(28 * gMenu.entryCount, 15, 4);
        SetSprite(&gMenu.spriteBuffer[0], 0x476u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition, 2);
        SetSprite(&gMenu.spriteBuffer[1], 0x477u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition + gMenu.lineHeight, 2);
        switch (language)
        {
        case 0:
            gMenu.texts[0] = &str_08068058; // FORMAT("SAVE GAME");
            gMenu.texts[1] = &str_08068064; // FORMAT("ARE YOU SURE?");
            break;
        case 1:
            gMenu.texts[0] = &str_080680E8; // FORMAT("SAUVEGARDER PARTIE");
            gMenu.texts[1] = &str_080680FC; // FORMAT("ES-TU SÛR ?");
            break;
        case 2:
            gMenu.texts[0] = &str_08068244; // FORMAT("GUARDAR PARTIDA");
            gMenu.texts[1] = &str_08068258; // FORMAT("¿SEGURO?");
            break;
        case 4:
            gMenu.texts[0] = &str_080682E4; // FORMAT("SALVA PARTITA");
            gMenu.texts[1] = &str_080682F4; // FORMAT("SEI SICURO?");
            break;
        case 3:
            gMenu.texts[0] = &str_08068190; // FORMAT("SPIEL SPEICHERN");
            gMenu.texts[1] = &str_080681A4; // FORMAT("BIST DU SICHER?");
            break;
        default: HANG; break;
        }
        break;
    case 4:
        gMenu.xPosition = 52;
        gMenu.yPosition = 102;
        gMenu.unselected.xPosition = 52;
        gMenu.unselected.yPosition = 102;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 52;
        gMenu.selected.yPosition = 102;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 2;
        gMenu.texts = Alloc(8u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 24;
        gMenu.horizontalPadding = 20;
        gMenu.useSpriteBuffer = 1;
        gMenu.spriteBuffer = Alloc(28 * gMenu.entryCount, 15, 4);
        SetSprite(&gMenu.spriteBuffer[0], 0x476u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition, 2);
        SetSprite(&gMenu.spriteBuffer[1], 0x477u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition + gMenu.lineHeight, 2);
        switch (language)
        {
        case 0:
            gMenu.texts[0] = &str_08068370; // FORMAT("CONTINUE GAME");
            gMenu.texts[1] = &str_08068380; // FORMAT("QUIT");
            break;
        case 1:
            gMenu.texts[0] = &str_08068388; // FORMAT("CONTINUER PARTIE");
            gMenu.texts[1] = &str_0806839C; // FORMAT("QUITER");
            break;
        case 2:
            gMenu.texts[0] = &str_080683C4; // FORMAT("CONTINUAR PARTIDA");
            gMenu.texts[1] = &str_080683D8; // FORMAT("SALIR");
            break;
        case 4:
            gMenu.texts[0] = &str_080683E0; // FORMAT("CONTINUA PARTITA");
            gMenu.texts[1] = &str_080683F4; // FORMAT("ESCI");
            break;
        case 3:
            gMenu.texts[0] = &str_080683A4; // FORMAT("SPIEL FORTSETZEN");
            gMenu.texts[1] = &str_080683B8; // FORMAT("VERLASSEN");
            break;
        default: HANG; break;
        }
        break;
    case 5:
        gMenu.xPosition = 92;
        gMenu.yPosition = 102;
        gMenu.unselected.xPosition = 92;
        gMenu.unselected.yPosition = 102;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 92;
        gMenu.selected.yPosition = 102;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 2;
        gMenu.texts = Alloc(8u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 24;
        gMenu.horizontalPadding = 20;
        gMenu.useSpriteBuffer = 1;
        gMenu.spriteBuffer = Alloc(28 * gMenu.entryCount, 15, 4);
        SetSprite(&gMenu.spriteBuffer[0], 0x476u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition, 2);
        SetSprite(&gMenu.spriteBuffer[1], 0x477u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition + gMenu.lineHeight, 2);
        switch (language)
        {
        case 0:
            gMenu.texts[0] = &str_080683FC; // FORMAT("YES");
            gMenu.texts[1] = &str_08068404; // FORMAT("NO");
            break;
        case 1:
            gMenu.texts[0] = &str_08068408; // FORMAT("OUI");
            gMenu.texts[1] = &str_08068410; // FORMAT("NON");
            break;
        case 2:
            gMenu.texts[0] = &str_08068424; // FORMAT("SÍ");
            gMenu.texts[1] = &str_08068428; // FORMAT("NO");
            break;
        case 4:
            gMenu.texts[0] = &str_0806842C; // FORMAT("SÌ");
            gMenu.texts[1] = &str_08068430; // FORMAT("NO");
            break;
        case 3:
            gMenu.texts[0] = &str_08068418; // FORMAT("JA");
            gMenu.texts[1] = &str_0806841C; // FORMAT("NEIN");
            break;
        default: HANG; break;
        }
        break;
    case 6:
        gMenu.xPosition = 95;
        gMenu.yPosition = 70;
        gMenu.unselected.xPosition = 95;
        gMenu.unselected.yPosition = 70;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 95;
        gMenu.selected.yPosition = 70;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 2;
        gMenu.texts = Alloc(8u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 16;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_08065320; // FORMAT("YES");
        gMenu.texts[1] = &str_08065328; // FORMAT("NO");
        break;
    case 7:
        gMenu.xPosition = 16;
        gMenu.yPosition = 40;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 40;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 40;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 3;
        gMenu.texts = Alloc(0xCu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 32;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = file_string_1;
        gMenu.texts[1] = file_string_2;
        gMenu.texts[2] = file_string_3;
        break;
    case 9:
        gMenu.xPosition = 20;
        gMenu.yPosition = 60;
        gMenu.unselected.xPosition = 20;
        gMenu.unselected.yPosition = 60;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 20;
        gMenu.selected.yPosition = 60;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 3;
        gMenu.texts = Alloc(0xCu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 20;
        gMenu.horizontalPadding = 20;
        gMenu.useSpriteBuffer = 1;
        gMenu.spriteBuffer = Alloc(28 * gMenu.entryCount, 15, 4);
        SetSprite(&gMenu.spriteBuffer[0], 0x476u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition, 2);
        SetSprite(&gMenu.spriteBuffer[1], 0x477u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition + gMenu.lineHeight, 2);
        SetSprite(&gMenu.spriteBuffer[2], 0x478u, 0, 0, 0, gMenu.xPosition, 2 * gMenu.lineHeight + gMenu.yPosition, 2);
        gMenu.texts[0] = dword_203FA7C;
        gMenu.texts[1] = dword_203FA80;
        gMenu.texts[2] = dword_203FA84;
        break;
    case 10:
        gMenu.xPosition = 66;
        gMenu.yPosition = 48;
        gMenu.unselected.xPosition = 66;
        gMenu.unselected.yPosition = 48;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 66;
        gMenu.selected.yPosition = 48;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 5;
        gMenu.texts = Alloc(20, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 20;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        switch (language)
        {
        case 0:
            if (byte_203E16C >= dword_80CF3B0[0])
                gMenu.texts[0] = &str_0806570C; // "EGG SCRAMBLE"
            else
                gMenu.texts[0] = &str_080657B0; // "????? FOR 20 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[1])
                gMenu.texts[1] = &str_0806571C; // "SHEEP DIP"
            else
                gMenu.texts[1] = &str_080657C4; // "????? FOR 40 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[2])
                gMenu.texts[2] = &str_08065728; // "BATTLE BOATS"
            else
                gMenu.texts[2] = &str_080657D8; // "????? FOR 60 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[3])
                gMenu.texts[3] = &str_08065738; // "GRUBBY CHUTE"
            else
                gMenu.texts[3] = &str_080657EC; // "????? FOR 80 \xfc\x0e"
            gMenu.texts[4] = &str_08065788; // "NEXT"
            break;
        case 1:
            if (byte_203E16C >= dword_80CF3B0[0])
                gMenu.texts[0] = &str_08065850; // "BROUILLEMENT D'ŒUFS"
            else
                gMenu.texts[0] = &str_08065928; // "????? POUR 20 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[1])
                gMenu.texts[1] = &str_08065868; // "BAIN PARASITICIDE"
            else
                gMenu.texts[1] = &str_0806593C; // "????? POUR 40 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[2])
                gMenu.texts[2] = &str_0806587C; // "BATEAUX DE BATAILLES"
            else
                gMenu.texts[2] = &str_08065950; // "????? POUR 60 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[3])
                gMenu.texts[3] = &str_08065894; // "GLISSIÈRE GRAISSEUSE"
            else
                gMenu.texts[3] = &str_08065964; // "????? POUR 80 \xfc\x0e"
            gMenu.texts[4] = &str_080658FC; // "SUIVANT"
            break;
        case 2:
            if (byte_203E16C >= dword_80CF3B0[0])
                gMenu.texts[0] = &str_08065B1C; // "HUEVO REVUELTO"
            else
                gMenu.texts[0] = &str_08065BE4; // "????? PARA 20 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[1])
                gMenu.texts[1] = &str_08065B2C; // "BAÑO DESINFECTANTE"
            else
                gMenu.texts[1] = &str_08065BF8; // "????? PARA 40 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[2])
                gMenu.texts[2] = &str_08065B40; // "BARCOS BATALLA"
            else
                gMenu.texts[2] = &str_08065C0C; // "????? PARA 60 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[3])
                gMenu.texts[3] = &str_08065B50; // "DESLIZADOR AGUSANADO"
            else
                gMenu.texts[3] = &str_08065C20; // "????? PARA 80 \xfc\x0e"
            gMenu.texts[4] = &str_08065BB8; // "SIGUIENTE"
            break;
        case 4:
            if (byte_203E16C >= dword_80CF3B0[0])
                gMenu.texts[0] = &str_08065C84; // "UOVA STRAPAZZATE"
            else
                gMenu.texts[0] = &str_08065D4C; // "????? PER 20 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[1])
                gMenu.texts[1] = &str_08065C98; // "BAGNO ANTIPARASSITARIO"
            else
                gMenu.texts[1] = &str_08065D60; // "????? PER 40 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[2])
                gMenu.texts[2] = &str_08065CB0; // "NAVI DA GUERRA"
            else
                gMenu.texts[2] = &str_08065D74; // "????? PER 60 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[3])
                gMenu.texts[3] = &str_08065CC0; // "SCIVOLO SUDICIO"
            else
                gMenu.texts[3] = &str_08065D88; // "????? PER 80 \xfc\x0e"
            gMenu.texts[4] = &str_08065D24; // "AVANTI"
            break;
        case 3:
            if (byte_203E16C >= dword_80CF3B0[0])
                gMenu.texts[0] = &str_080659C8; // "EIERJAGD"
            else
                gMenu.texts[0] = &str_08065A7C; // "????? FÜR 20 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[1])
                gMenu.texts[1] = &str_080659D4; // "SCHAFANGELN"
            else
                gMenu.texts[1] = &str_08065A90; // "????? FÜR 40 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[2])
                gMenu.texts[2] = &str_080659E4; // "KAMPFBOOT"
            else
                gMenu.texts[2] = &str_08065AA4; // "????? FÜR 60 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[3])
                gMenu.texts[3] = &str_080659F0; // "WURMJAGD"
            else
                gMenu.texts[3] = &str_08065AB8; // "????? FÜR 80 \xfc\x0e"
            gMenu.texts[4] = &str_08065A4C; // "NÄCHSTES"
            break;
        default: HANG; break;
        }
        break;
    case 11:
        gMenu.xPosition = 66;
        gMenu.yPosition = 48;
        gMenu.unselected.xPosition = 66;
        gMenu.unselected.yPosition = 48;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[1];
        gMenu.selected.xPosition = 66;
        gMenu.selected.yPosition = 48;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[1];
        gMenu.entryCount = 5;
        gMenu.texts = Alloc(0x14u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 20;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        switch (language)
        {
        case 0:
            if (byte_203E16C >= dword_80CF3B0[4])
                gMenu.texts[0] = &str_08065748; // "AGIC ANGLER"
            else
                gMenu.texts[0] = &str_08065800; // "????? FOR 100 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[5])
                gMenu.texts[1] = &str_08065758; // "SLIDE O' FEAR"
            else
                gMenu.texts[1] = &str_08065814; // "????? FOR 120 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[6])
                gMenu.texts[2] = &str_08065768; // "FROZEN FISH"
            else
                gMenu.texts[2] = &str_08065828; // "????? FOR 140 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[7])
                gMenu.texts[3] = &str_08065778; // "SNOWY SLEDS"
            else
                gMenu.texts[3] = &str_0806583C; // "????? FOR 160 \xfc\x0e"
            gMenu.texts[4] = &str_08065790; // "PREVIOUS"
            break;
        case 1:
            if (byte_203E16C >= dword_80CF3B0[4])
                gMenu.texts[0] = &str_080658AC; // "PÊCHEUR MAGIQUE"
            else
                gMenu.texts[0] = &str_08065978; // "????? POUR 100 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[5])
                gMenu.texts[1] = &str_080658C0; // "TERRIBLE TOBOGGAN"
            else
                gMenu.texts[1] = &str_0806598C; // "????? POUR 120 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[6])
                gMenu.texts[2] = &str_080658D4; // "POISSON EN GLAÇON"
            else
                gMenu.texts[2] = &str_080659A0; // "????? POUR 140 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[7])
                gMenu.texts[3] = &str_080658E8; // "TRAÎNEAU NEIGEUX"
            else
                gMenu.texts[3] = &str_080659B4; // "????? POUR 160 \xfc\x0e"
            gMenu.texts[4] = &str_08065908; // "PRÉCÉDENT"
            break;
        case 2:
            if (byte_203E16C >= dword_80CF3B0[4])
                gMenu.texts[0] = &str_08065B68; // "PESCADOR MÁGICO"
            else
                gMenu.texts[0] = &str_08065C34; // "????? PARA 100 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[5])
                gMenu.texts[1] = &str_08065B7C; // "TOBOGÁN TERRIBLE"
            else
                gMenu.texts[1] = &str_08065C48; // "????? PARA 120 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[6])
                gMenu.texts[2] = &str_08065B90; // "PESCADO CONGELADO"
            else
                gMenu.texts[2] = &str_08065C5C; // "????? PARA 140 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[7])
                gMenu.texts[3] = &str_08065BA4; // "TRINEOS NEVADOS"
            else
                gMenu.texts[3] = &str_08065C70; // "????? PARA 160 \xfc\x0e"
            gMenu.texts[4] = &str_08065BC4; // "ANTERIOR"
            break;
        case 4:
            if (byte_203E16C >= dword_80CF3B0[4])
                gMenu.texts[0] = &str_08065CD4; // "PESCATORE MAGICO"
            else
                gMenu.texts[0] = &str_08065D9C; // "????? PER 100 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[5])
                gMenu.texts[1] = &str_08065CE8; // "SCIVOLO DELLA PAURA"
            else
                gMenu.texts[1] = &str_08065DB0; // "????? PER 120 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[6])
                gMenu.texts[2] = &str_08065D00; // "PESCE CONGELATO"
            else
                gMenu.texts[2] = &str_08065DC4; // "????? PER 140 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[7])
                gMenu.texts[3] = &str_08065D14; // "SLITTE NEVOSE"
            else
                gMenu.texts[3] = &str_08065DD8; // "????? PER 160 \xfc\x0e"
            gMenu.texts[4] = &str_08065D2C; // "INDIETRO"
            break;
        case 3:
            if (byte_203E16C >= dword_80CF3B0[4])
                gMenu.texts[0] = &str_080659FC; // "MAGISCHER ANGLER"
            else
                gMenu.texts[0] = &str_08065ACC; // "????? FÜR 100 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[5])
                gMenu.texts[1] = &str_08065A10; // "RUTSCHE DES GRAUENS"
            else
                gMenu.texts[1] = &str_08065AE0; // "????? FÜR 120 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[6])
                gMenu.texts[2] = &str_08065A28; // "GEFRORENER FISCH"
            else
                gMenu.texts[2] = &str_08065AF4; // "????? FÜR 140 \xfc\x0e"

            if (byte_203E16C >= dword_80CF3B0[7])
                gMenu.texts[3] = &str_08065A3C; // "SCHNEEMOBIL"
            else
                gMenu.texts[3] = &str_08065B08; // "????? FÜR 160 \xfc\x0e"
            gMenu.texts[4] = &str_08065A58; // "VORHERIGES"
            break;
        default: HANG; break;
        }
        break;
    case 12:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 7;
        gMenu.texts = Alloc(0x1Cu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_WARP_MAP; // FORMAT("WARP MAP");
        gMenu.texts[1] = &str_WARP_TEMP; // FORMAT("WARP TEMP");
        gMenu.texts[2] = &str_DEBUG_INFO; // FORMAT("DEBUG INFO");
        gMenu.texts[3] = &str_CHEATS; // FORMAT("CHEATS");
        gMenu.texts[4] = &str_TRANSFORM; // FORMAT("TRANSFORM");
        gMenu.texts[5] = &str_RESERVED_0; // FORMAT("RESERVED");
        gMenu.texts[6] = &str_PROFILE; // FORMAT("PROFILE");
        break;
    case 19:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 4;
        gMenu.texts = Alloc(0x10u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_UNLOCK_GAME; // FORMAT("UNLOCK GAME");
        gMenu.texts[1] = &str_RESERVED_1; // FORMAT("RESERVED");
        gMenu.texts[2] = &str_GOD_MODE; // FORMAT("GOD MODE");
        gMenu.texts[3] = &str_FULL_EF; // FORMAT("FULL E/F");
        break;
    case 13:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 6;
        gMenu.texts = Alloc(0x18u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_NONE; // FORMAT("NONE");
        gMenu.texts[1] = &str_FPS_ESN_ESV; // FORMAT("FPS, ESN, ESV");
        gMenu.texts[2] = &str_FPS_A2ESN_ESV; // FORMAT("FPS, A2ESN, ESV");
        gMenu.texts[3] = &str_FPS_A4ESN_ESV; // FORMAT("FPS, A4ESN, ESV");
        gMenu.texts[4] = &str_FPS_A8ESN_ESV; // FORMAT("FPS, A8ESN, ESV");
        gMenu.texts[5] = &str_NEXT_0; // FORMAT("NEXT");
        break;
    case 14:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 6;
        gMenu.texts = Alloc(0x18u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_FPS_ESN_MESN; // FORMAT("FPS, ESN, MESN");
        gMenu.texts[1] = &str_CA_CB_CC; // FORMAT("CA, CB, CC");
        gMenu.texts[2] = &str_CA2_CB2_CC2; // FORMAT("CA2, CB2, CC2");
        gMenu.texts[3] = &str_CA4_CB4_CC4; // FORMAT("CA4, CB4, CC4");
        gMenu.texts[4] = &str_CCA_CCB; // FORMAT("CCA, CCB");
        gMenu.texts[5] = &str_NEXT_1; // FORMAT("NEXT");
        break;
    case 15:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 6;
        gMenu.texts = Alloc(0x18u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_CCA2_CCB2; // FORMAT("CCA2, CCB2");
        gMenu.texts[1] = &str_CCA4_CCB4; // FORMAT("CCA4, CCB4");
        gMenu.texts[2] = &str_CCC_CCD; // FORMAT("CCC, CCD");
        gMenu.texts[3] = &str_CCE_CCF; // FORMAT("CCE, CCF");
        gMenu.texts[4] = &str_CCG_CCH; // FORMAT("CCG, CCH");
        gMenu.texts[5] = &str_NEXT_2; // FORMAT("NEXT");
        break;
    case 16:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 6;
        gMenu.texts = Alloc(0x18u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_CCI_CCJ; // FORMAT("CCI, CCJ");
        gMenu.texts[1] = &str_CCK_CCL; // FORMAT("CCK, CCL");
        gMenu.texts[2] = &str_CCM_CCN; // FORMAT("CCM, CCN");
        gMenu.texts[3] = &str_CCO_CCP; // FORMAT("CCO, CCP");
        gMenu.texts[4] = &str_CCQ_CCR; // FORMAT("CCQ, CCR");
        gMenu.texts[5] = &str_RESERVED_2; // FORMAT("RESERVED");
        break;
    case 17:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 4;
        gMenu.texts = Alloc(0x10u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_NORMAL; // FORMAT("NORMAL");
        gMenu.texts[1] = &str_NO_AI; // FORMAT("NO AI");
        gMenu.texts[2] = &str_NO_HARM; // FORMAT("NO HARM");
        gMenu.texts[3] = &str_NO_AI_HARM; // FORMAT("NO AI-HARM");
        break;
    case 18:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 2;
        gMenu.texts = Alloc(8u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_GOD_ON; // FORMAT("GOD ON");
        gMenu.texts[1] = &str_GOD_OFF; // FORMAT("GOD OFF");
        break;
    case 20:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 6;
        gMenu.texts = Alloc(0x18u, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_BANJO; // FORMAT("BANJO");
        gMenu.texts[1] = &str_MOUSE; // FORMAT("MOUSE");
        gMenu.texts[2] = &str_CANDLE; // FORMAT("CANDLE");
        gMenu.texts[3] = &str_TANK; // FORMAT("TANK");
        gMenu.texts[4] = &str_OCTOPUS; // FORMAT("OCTOPUS");
        gMenu.texts[5] = &str_RESERVED_3; // FORMAT("RESERVED");
        break;
    case 22:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 7;
        gMenu.texts = Alloc(0x1Cu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_RM_SPIRAL_BOT; // FORMAT("SPIRAL BOT");
        gMenu.texts[1] = &str_RM_SPIRAL_MID_E; // FORMAT("SPIRAL MID E");
        gMenu.texts[2] = &str_RM_SPIRAL_MID_W; // FORMAT("PIRAL MID W");
        gMenu.texts[3] = &str_RM_SPIRAL_TOP; // FORMAT("SPIRAL TOP");
        gMenu.texts[4] = &str_RM_JIGGY_TMPL; // FORMAT("JIGGY TMPL");
        gMenu.texts[5] = &str_RM_RESERVED_4; // FORMAT("RESERVED");
        gMenu.texts[6] = &str_RM_NEXT_3; // FORMAT("NEXT");
        break;
    case 23:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 7;
        gMenu.texts = Alloc(0x1Cu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_RM_FARM_LOWER; // FORMAT("FARM LOWER");
        gMenu.texts[1] = &str_RM_FARM_UPPER; // FORMAT("FARM UPPER");
        gMenu.texts[2] = &str_RM_COW_BOSS; // FORMAT("COW BOSS");
        gMenu.texts[3] = &str_RM_MILL_HOUSE; // FORMAT("MILL HOUSE");
        gMenu.texts[4] = &str_RM_MUMBO_FARM; // FORMAT("MUMBO FARM");
        gMenu.texts[5] = &str_RM_RESERVED_5; // FORMAT("RESERVED");
        gMenu.texts[6] = &str_RM_NEXT_4; // FORMAT("NEXT");
        break;
    case 24:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 7;
        gMenu.texts = Alloc(0x1Cu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_RM_BEACH; // FORMAT("BEACH");
        gMenu.texts[1] = &str_RM_QUARRY_BOT; // FORMAT("QUARRY BOT");
        gMenu.texts[2] = &str_RM_QUARRY_TOP; // FORMAT("QUARRY TOP");
        gMenu.texts[3] = &str_RM_UNDERCORAL; // FORMAT("UNDERCORAL");
        gMenu.texts[4] = &str_RM_BEACH_TOP; // FORMAT("BEACH TOP");
        gMenu.texts[5] = &str_RM_MUMBO_BCH; // FORMAT("MUMBO BCH");
        gMenu.texts[6] = &str_RM_NEXT_5; // FORMAT("NEXT");
        break;
    case 25:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 7;
        gMenu.texts = Alloc(0x1Cu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_RM_BOARDWALK; // FORMAT("BOARDWALK");
        gMenu.texts[1] = &str_RM_HOUSEROOM; // FORMAT("HOUSEROOM");
        gMenu.texts[2] = &str_RM_CANDLE_PUZ; // FORMAT("CANDLE PUZ");
        gMenu.texts[3] = &str_RM_SWAMP_GAS; // FORMAT("SWAMP GAS");
        gMenu.texts[4] = &str_RM_MUMBO_SWMP; // FORMAT("MUMBO SWMP");
        gMenu.texts[5] = &str_RM_RESERVED_6; // FORMAT("RESERVED");
        gMenu.texts[6] = &str_RM_NEXT_6; // FORMAT("NEXT");
        break;
    case 26:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 7;
        gMenu.texts = Alloc(0x1Cu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_RM_HARBOUR; // FORMAT("HARBOUR");
        gMenu.texts[1] = &str_RM_SAND_AREA; // FORMAT("SAND AREA");
        gMenu.texts[2] = &str_RM_CASTLE_IN; // FORMAT("CASTLE IN");
        gMenu.texts[3] = &str_RM_VILLAGE; // FORMAT("VILLAGE");
        gMenu.texts[4] = &str_RM_INSIDE_A; // FORMAT("INSIDE A");
        gMenu.texts[5] = &str_RM_MUMBO_HARB; // FORMAT("MUMBO HARB");
        gMenu.texts[6] = &str_RM_NEXT_7; // FORMAT("NEXT");
        break;
    case 27:
        gMenu.xPosition = 16;
        gMenu.yPosition = 72;
        gMenu.unselected.xPosition = 16;
        gMenu.unselected.yPosition = 72;
        gMenu.unselected.letterSpacing = 1;
        gMenu.unselected.field_12 = 0;
        gMenu.unselected.field_A = 1;
        gMenu.unselected.size = 240;
        gMenu.unselected.field_11 = 6;
        gMenu.unselected.stringOffset = 0;
        gMenu.unselected.palette = 15;
        gMenu.unselected.font = (void*)&font_80B01A8[0];
        gMenu.selected.xPosition = 16;
        gMenu.selected.yPosition = 72;
        gMenu.selected.letterSpacing = 1;
        gMenu.selected.field_12 = 0;
        gMenu.selected.field_A = 1;
        gMenu.selected.size = 240;
        gMenu.selected.field_11 = 6;
        gMenu.selected.stringOffset = 0;
        gMenu.selected.palette = 10;
        gMenu.selected.font = (void*)&font_80B01A8[0];
        gMenu.entryCount = 7;
        gMenu.texts = Alloc(0x1Cu, 15, 4);
        gMenu.curEntry = 0;
        gMenu.field_3A = 1;
        gMenu.lineHeight = 8;
        gMenu.horizontalPadding = 0;
        gMenu.useSpriteBuffer = 0;
        gMenu.texts[0] = &str_RM_FJORD; // FORMAT("FJORD");
        gMenu.texts[1] = &str_RM_FJORD_CAV; // FORMAT("FJORD CAV");
        gMenu.texts[2] = &str_RM_FURN_SECT; // FORMAT("FURN SECT");
        gMenu.texts[3] = &str_RM_FURNSTORE; // FORMAT("FURNSTORE");
        gMenu.texts[4] = &str_RM_POISONROOM; // FORMAT("POISONROOM");
        gMenu.texts[5] = &str_RM_MUMBO_FURN; // FORMAT("MUMBO FURN");
        gMenu.texts[6] = &str_RM_NEXT_8; // FORMAT("NEXT");
        break;
    case 21:
    default: HANG;
    }
}

#endif
