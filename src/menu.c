#include "global.h"
#include "menu.h"

extern void Free(void*, u32);
void* Alloc(u32 size, u32 allocId, u32 heap);
void SetSprite(struct Sprite_a *sprite, u16 index, u32 a3, u8 a4, u32 a5, u16 xPos, u16 yPos, u32 bank);

extern u8 gMenuId;
extern u8 gMenuParentId;
extern struct Menu gMenu;
extern char file_string_1[0x1A];
extern char file_string_2[0x1A];
extern char file_string_3[0x1A];

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

    switch(menu)
    {
        case 3:
            gMenu.xPosition = 85;
            gMenu.yPosition = 40;
            gMenu.unselected.xPosition = 85;
            gMenu.unselected.yPosition = 40;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 85;
            gMenu.selected.yPosition = 40;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
            gMenu.entryCount = 5;
            gMenu.texts = Alloc(0x14u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 16;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = "ENGLISH";
            gMenu.texts[1] = "FRANÇAIS";
            gMenu.texts[2] = "ESPAÑOL";
            gMenu.texts[3] = "DEUTSCH";
            gMenu.texts[4] = "ITALIANO";
            break;
        case 0:
            gMenu.xPosition = 77;
            gMenu.yPosition = 122;
            gMenu.unselected.xPosition = 77;
            gMenu.unselected.yPosition = 122;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 77;
            gMenu.selected.yPosition = 122;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
            gMenu.entryCount = 2;
            gMenu.texts = Alloc(8, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 16;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            switch(language)
            {
                case 0:
                    gMenu.texts[0] = FORMAT("NEW GAME");
                    gMenu.texts[1] = FORMAT("CONTINUE");
                    break;
                case 1:
                    gMenu.texts[0] = FORMAT("NOUVELLE PARTIE");
                    gMenu.texts[1] = FORMAT("CONTINUER");
                    break;
                case 2:
                    gMenu.texts[0] = FORMAT("NUEVA PARTIDA");
                    gMenu.texts[1] = FORMAT("CONTINUAR");
                    break;
                case 3:
                    gMenu.texts[0] = FORMAT("NEUES SPIEL");
                    gMenu.texts[1] = FORMAT("FORTSETZEN");
                    break;
                case 4:
                    gMenu.texts[0] = FORMAT("NUOVA PARTITA");
                    gMenu.texts[1] = FORMAT("CONTINUA");
                    break;
                default:
                    HANG;
                    break;
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
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 8;
            gMenu.selected.yPosition = 36;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
            gMenu.entryCount = 3;
            gMenu.texts = Alloc(0xCu, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 20;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            switch(language)
            {
                case 0:
                    gMenu.texts[0] = FORMAT("TEXT SPEED");
                    gMenu.texts[1] = FORMAT("BGM VOLUME");
                    gMenu.texts[2] = FORMAT("SE VOLUME");
                    break;
                case 1:
                    gMenu.texts[0] = FORMAT("VITESSE TEXTE");
                    gMenu.texts[1] = FORMAT("MUSIQUE");
                    gMenu.texts[2] = FORMAT("EFFETS SONORES");
                    break;
                case 3:
                    gMenu.texts[0] = FORMAT("VELOCIDAD TEXTO");
                    gMenu.texts[1] = FORMAT("VOLUMEN MÚSICA FONDO");
                    gMenu.texts[2] = FORMAT("VOLUMEN EFECTOS");
                    break;
                case 2:
                    gMenu.texts[0] = FORMAT("TEXT-GESCHWINDIGKEIT");
                    gMenu.texts[1] = FORMAT("MUSIK-LAUTSTÄRKE");
                    gMenu.texts[2] = FORMAT("EFFEKT-LAUTSTÄRKE");
                    break;
                case 4:
                    gMenu.texts[0] = FORMAT("VELOCITÀ TESTO");
                    gMenu.texts[1] = FORMAT("MUSICA");
                    gMenu.texts[2] = FORMAT("EFFETTI SONORI");
                    break;
                default:
                    HANG;
                    break;
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
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 52;
            gMenu.selected.yPosition = 36;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
            gMenu.entryCount = 4;
            gMenu.texts = Alloc(0x10, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 24;
            gMenu.horizontalPadding = 20;
            gMenu.useSpriteBuffer = 1;
            gMenu.spriteBuffer = Alloc(sizeof(struct Sprite_a) * gMenu.entryCount, 15, 4);
            SetSprite(&gMenu.spriteBuffer[0], 1142u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition, 2);
            SetSprite(&gMenu.spriteBuffer[1], 0x477u, 0, 0, 0, gMenu.xPosition, gMenu.yPosition + gMenu.lineHeight, 2);
            SetSprite(&gMenu.spriteBuffer[2], 0x478u, 0, 0, 0, gMenu.xPosition, 2 * gMenu.lineHeight + gMenu.yPosition, 2);
            SetSprite(&gMenu.spriteBuffer[3], 0x479u, 0, 0, 0, gMenu.xPosition, 3 * gMenu.lineHeight + gMenu.yPosition, 2);
            switch(language)
            {
                case 0:
                    gMenu.texts[0] = FORMAT("CONTINUE");
                    gMenu.texts[1] = FORMAT("TOTALS");
                    gMenu.texts[1] = FORMAT("OPTIONS");
                    gMenu.texts[1] = FORMAT("SAVE");
                    break;
                case 1:
                    gMenu.texts[0] = FORMAT("CONTINUER");
                    gMenu.texts[1] = FORMAT("TOTAL");
                    gMenu.texts[1] = FORMAT("OPTIONS");
                    gMenu.texts[1] = FORMAT("SAUVEGARDER");
                    break;
                case 2:
                    gMenu.texts[0] = FORMAT("CONTINUAR");
                    gMenu.texts[1] = FORMAT("TOTALES");
                    gMenu.texts[1] = FORMAT("OPCIONES");
                    gMenu.texts[1] = FORMAT("GUARDAR");
                    break;
                case 3:
                    gMenu.texts[0] = FORMAT("FORTSETZEN");
                    gMenu.texts[1] = FORMAT("ÜBERSICHT");
                    gMenu.texts[1] = FORMAT("OPTIONEN");
                    gMenu.texts[1] = FORMAT("SPEICHERN");
                    break;
                case 4:
                    gMenu.texts[0] = FORMAT("CONTINUA");
                    gMenu.texts[1] = FORMAT("TOTALE");
                    gMenu.texts[1] = FORMAT("OPZIONI");
                    gMenu.texts[1] = FORMAT("SALVA");
                    break;
                default:
                    HANG;
                    break;
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
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 52;
            gMenu.selected.yPosition = 36;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
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
            switch(language)
            {
                case 0:
                    gMenu.texts[0] = FORMAT("SAVE GAME");
                    gMenu.texts[1] = FORMAT("ARE YOU SURE?");
                    break;
                case 1:
                    gMenu.texts[0] = FORMAT("SAUVEGARDER PARTIE");
                    gMenu.texts[1] = FORMAT("ES-TU SÛR ?");
                    break;
                case 2:
                    gMenu.texts[0] = FORMAT("GUARDAR PARTIDA");
                    gMenu.texts[1] = FORMAT("¿SEGURO?");
                    break;
                case 3:
                    gMenu.texts[0] = FORMAT("SPIEL SPEICHERN");
                    gMenu.texts[1] = FORMAT("BIST DU SICHER?");
                    break;
                case 4:
                    gMenu.texts[0] = FORMAT("SALVA PARTITA");
                    gMenu.texts[1] = FORMAT("SEI SICURO?");
                    break;
                default:
                    HANG;
                    break;
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
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 52;
            gMenu.selected.yPosition = 102;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
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
            switch(language)
            {
                case 0:
                    gMenu.texts[0] = FORMAT("CONTINUE GAME");
                    gMenu.texts[1] = FORMAT("QUIT");
                    break;
                case 1:
                    gMenu.texts[0] = FORMAT("CONTINUER PARTIE");
                    gMenu.texts[1] = FORMAT("QUITER");
                    break;
                case 3:
                    gMenu.texts[0] = FORMAT("SPIEL FORTSETZEN");
                    gMenu.texts[1] = FORMAT("VERLASSEN");
                    break;
                case 2:
                    gMenu.texts[0] = FORMAT("CONTINUAR PARTIDA");
                    gMenu.texts[1] = FORMAT("SALIR");
                    break;
                case 4:
                    gMenu.texts[0] = FORMAT("CONTINUA PARTITA");
                    gMenu.texts[1] = FORMAT("ESCI");
                    break;
                default:
                    HANG;
                    break;
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
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 92;
            gMenu.selected.yPosition = 102;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
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
            switch(language)
            {
                case 0:
                    gMenu.texts[0] = FORMAT("YES");
                    gMenu.texts[1] = FORMAT("NO");
                    break;
                case 1:
                    gMenu.texts[0] = FORMAT("OUI");
                    gMenu.texts[1] = FORMAT("NON");
                    break;
                case 3:
                    gMenu.texts[0] = FORMAT("JA");
                    gMenu.texts[1] = FORMAT("NEIN");
                    break;
                case 2:
                    gMenu.texts[0] = FORMAT("SÍ");
                    gMenu.texts[1] = FORMAT("NO");
                    break;
                case 4:
                    gMenu.texts[0] = FORMAT("SÌ");
                    gMenu.texts[1] = FORMAT("NO");
                    break;
                default:
                    HANG;
                    break;
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
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 95;
            gMenu.selected.yPosition = 70;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
            gMenu.entryCount = 2;
            gMenu.texts = Alloc(8u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 16;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("YES");
            gMenu.texts[1] = FORMAT("NO");
            break;
        case 7:
            gMenu.xPosition = 16;
            gMenu.yPosition = 40;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 40;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 40;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
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
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 20;
            gMenu.selected.yPosition = 60;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
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
            gMenu.texts[0] = (u8*)0x203FA7C;
            gMenu.texts[1] = (u8*)0x203FA80;
            gMenu.texts[2] = (u8*)0x203FA84;
            break;
        case 10:
            gMenu.xPosition = 66;
            gMenu.yPosition = 48;
            gMenu.unselected.xPosition = 66;
            gMenu.unselected.yPosition = 48;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 66;
            gMenu.selected.yPosition = 48;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
            gMenu.entryCount = 5;
            gMenu.texts = Alloc(0x14u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 20;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            switch(language)
            {
                case 0:
                    if(*((u8*)0x203E16C) < 20)
                        gMenu.texts[0] = FORMAT("????? FOR 20 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("EGG SCRAMBLE");
                    
                    if(*((u8*)0x203E16C) < 40)
                        gMenu.texts[1] = FORMAT("????? FOR 40 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("SHEEP DIP");

                    if(*((u8*)0x203E16C) < 60)
                        gMenu.texts[2] = FORMAT("????? FOR 60 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("BATTLE BOATS");

                    if(*((u8*)0x203E16C) < 80)
                        gMenu.texts[3] = FORMAT("????? FOR 80 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("GRUBBY CHUTE");
                    gMenu.texts[4] = FORMAT("NEXT");
                    break;
                case 1:
                    if(*((u8*)0x203E16C) < 20)
                        gMenu.texts[0] = FORMAT("????? POUR 20 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("BROUILLEMENT D'ŒUFS");
                    
                    if(*((u8*)0x203E16C) < 40)
                        gMenu.texts[1] = FORMAT("????? POUR 40 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("BAIN PARASITICIDE");

                    if(*((u8*)0x203E16C) < 60)
                        gMenu.texts[2] = FORMAT("????? POUR 60 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("BATEAUX DE BATAILLES");

                    if(*((u8*)0x203E16C) < 80)
                        gMenu.texts[3] = FORMAT("????? POUR 80 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("GLISSIÈRE GRAISSEUSE");
                    gMenu.texts[4] = FORMAT("SUIVANT");
                    break;
                case 2:
                    if(*((u8*)0x203E16C) < 20)
                        gMenu.texts[0] = FORMAT("????? PARA 20 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("HUEVO REVUELTO");
                    
                    if(*((u8*)0x203E16C) < 40)
                        gMenu.texts[1] = FORMAT("????? PARA 40 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("BAÑO DESINFECTANTE");

                    if(*((u8*)0x203E16C) < 60)
                        gMenu.texts[2] = FORMAT("????? PARA 60 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("BARCOS BATALLA");

                    if(*((u8*)0x203E16C) < 80)
                        gMenu.texts[3] = FORMAT("????? PARA 80 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("DESLIZADOR AGUSANADO");
                    gMenu.texts[4] = FORMAT("SIGUIENTE");
                    break;
                case 3:
                    if(*((u8*)0x203E16C) < 20)
                        gMenu.texts[0] = FORMAT("????? FÜR 20 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("EIERJAGD");
                    
                    if(*((u8*)0x203E16C) < 40)
                        gMenu.texts[1] = FORMAT("????? FÜR 40 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("SCHAFANGELN");

                    if(*((u8*)0x203E16C) < 60)
                        gMenu.texts[2] = FORMAT("????? FÜR 60 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("KAMPFBOOT");

                    if(*((u8*)0x203E16C) < 80)
                        gMenu.texts[3] = FORMAT("????? FÜR 80 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("WURMJAGD");
                    gMenu.texts[4] = FORMAT("NÄCHSTES");
                    break;
                case 4:
                    if(*((u8*)0x203E16C) < 20)
                        gMenu.texts[0] = FORMAT("????? PER 20 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("UOVA STRAPAZZATE");
                    
                    if(*((u8*)0x203E16C) < 40)
                        gMenu.texts[1] = FORMAT("????? PER 40 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("BAGNO ANTIPARASSITARIO");

                    if(*((u8*)0x203E16C) < 60)
                        gMenu.texts[2] = FORMAT("????? PER 60 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("NAVI DA GUERRA");

                    if(*((u8*)0x203E16C) < 80)
                        gMenu.texts[3] = FORMAT("????? PER 80 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("SCIVOLO SUDICIO");
                    gMenu.texts[4] = FORMAT("AVANTI");
                    break;
                default:
                    HANG;
                    break;
            }
        case 11:
            gMenu.xPosition = 66;
            gMenu.yPosition = 48;
            gMenu.unselected.xPosition = 66;
            gMenu.unselected.yPosition = 48;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01B0;
            gMenu.selected.xPosition = 66;
            gMenu.selected.yPosition = 48;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01B0;
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
                    if(*((u8*)0x203E16C) < 100)
                        gMenu.texts[0] = FORMAT("????? FOR 100 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("AGIC ANGLER");
                    
                    if(*((u8*)0x203E16C) < 120)
                        gMenu.texts[1] = FORMAT("????? FOR 120 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("SLIDE O' FEAR");

                    if(*((u8*)0x203E16C) < 140)
                        gMenu.texts[2] = FORMAT("????? FOR 140 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("FROZEN FISH");

                    if(*((u8*)0x203E16C) < 160)
                        gMenu.texts[3] = FORMAT("????? FOR 160 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("SNOWY SLEDS");
                    gMenu.texts[4] = FORMAT("PREVIOUS");
                    break;
                case 1:
                    if(*((u8*)0x203E16C) < 100)
                        gMenu.texts[0] = FORMAT("????? POUR 100 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("PÊCHEUR MAGIQUE");
                    
                    if(*((u8*)0x203E16C) < 120)
                        gMenu.texts[1] = FORMAT("????? POUR 120 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("TERRIBLE TOBOGGAN");

                    if(*((u8*)0x203E16C) < 140)
                        gMenu.texts[2] = FORMAT("????? POUR 140 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("POISSON EN GLAÇON");

                    if(*((u8*)0x203E16C) < 160)
                        gMenu.texts[3] = FORMAT("????? POUR 160 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("TRAÎNEAU NEIGEUX");
                    gMenu.texts[4] = FORMAT("PRÉCÉDENT");
                    break;
                case 2:
                    if(*((u8*)0x203E16C) < 100)
                        gMenu.texts[0] = FORMAT("????? PARA 100 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("PESCADOR MÁGICO");
                    
                    if(*((u8*)0x203E16C) < 120)
                        gMenu.texts[1] = FORMAT("????? PARA 120 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("TOBOGÁN TERRIBLE");

                    if(*((u8*)0x203E16C) < 140)
                        gMenu.texts[2] = FORMAT("????? PARA 140 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("PESCADO CONGELADO");

                    if(*((u8*)0x203E16C) < 160)
                        gMenu.texts[3] = FORMAT("????? PARA 160 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("TRINEOS NEVADOS");
                    gMenu.texts[4] = FORMAT("ANTERIOR");
                    break;
                case 3:
                    if(*((u8*)0x203E16C) < 100)
                        gMenu.texts[0] = FORMAT("????? FÜR 100 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("MAGISCHER ANGLER");
                    
                    if(*((u8*)0x203E16C) < 120)
                        gMenu.texts[1] = FORMAT("????? FÜR 120 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("RUTSCHE DES GRAUENS");

                    if(*((u8*)0x203E16C) < 140)
                        gMenu.texts[2] = FORMAT("????? FÜR 140 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("GEFRORENER FISCH");

                    if(*((u8*)0x203E16C) < 160)
                        gMenu.texts[3] = FORMAT("????? FÜR 160 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("SCHNEEMOBIL");
                    gMenu.texts[4] = FORMAT("VORHERIGES");
                    break;
                case 4:
                    if(*((u8*)0x203E16C) < 100)
                        gMenu.texts[0] = FORMAT("????? PER 100 \xfc\x0e");
                    else
                        gMenu.texts[0] = FORMAT("PESCATORE MAGICO");
                    
                    if(*((u8*)0x203E16C) < 120)
                        gMenu.texts[1] = FORMAT("????? PER 120 \xfc\x0e");
                    else
                        gMenu.texts[1] = FORMAT("SCIVOLO DELLA PAURA");

                    if(*((u8*)0x203E16C) < 140)
                        gMenu.texts[2] = FORMAT("????? PER 140 \xfc\x0e");
                    else
                        gMenu.texts[2] = FORMAT("PESCE CONGELATO");

                    if(*((u8*)0x203E16C) < 160)
                        gMenu.texts[3] = FORMAT("????? PER 160 \xfc\x0e");
                    else
                        gMenu.texts[3] = FORMAT("SLITTE NEVOSE");
                    gMenu.texts[4] = FORMAT("INDIETRO");
                    break;
                default:
                    HANG;
                    break;
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
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 7;
            gMenu.texts = Alloc(0x1Cu, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("WARP MAP");
            gMenu.texts[1] = FORMAT("WARP TEMP");
            gMenu.texts[2] = FORMAT("DEBUG INFO");
            gMenu.texts[3] = FORMAT("CHEATS");
            gMenu.texts[4] = FORMAT("TRANSFORM");
            gMenu.texts[5] = FORMAT("RESERVED");
            gMenu.texts[6] = FORMAT("PROFILE");
            break;
        case 19:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 4;
            gMenu.texts = Alloc(0x10u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("UNLOCK GAME");
            gMenu.texts[1] = FORMAT("RESERVED");
            gMenu.texts[2] = FORMAT("GOD MODE");
            gMenu.texts[3] = FORMAT("FULL E/F");
            break;
        case 13:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 6;
            gMenu.texts = Alloc(0x18u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("NONE");
            gMenu.texts[1] = FORMAT("FPS, ESN, ESV");
            gMenu.texts[2] = FORMAT("FPS, A2ESN, ESV");
            gMenu.texts[3] = FORMAT("FPS, A4ESN, ESV");
            gMenu.texts[4] = FORMAT("FPS, A8ESN, ESV");
            gMenu.texts[5] = FORMAT("NEXT");
            break;
        case 14:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 6;
            gMenu.texts = Alloc(0x18u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("FPS, ESN, MESN");
            gMenu.texts[1] = FORMAT("CA, CB, CC");
            gMenu.texts[2] = FORMAT("CA2, CB2, CC2");
            gMenu.texts[3] = FORMAT("CA4, CB4, CC4");
            gMenu.texts[4] = FORMAT("CCA, CCB");
            gMenu.texts[5] = FORMAT("NEXT");
            break;
        case 15:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 6;
            gMenu.texts = Alloc(0x18u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("CCA2, CCB2");
            gMenu.texts[1] = FORMAT("CCA4, CCB4");
            gMenu.texts[2] = FORMAT("CCC, CCD");
            gMenu.texts[3] = FORMAT("CCE, CCF");
            gMenu.texts[4] = FORMAT("CCG, CCH");
            gMenu.texts[5] = FORMAT("NEXT");
            break;
        case 16:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 6;
            gMenu.texts = Alloc(0x18u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("CCI, CCJ");
            gMenu.texts[1] = FORMAT("CCK, CCL");
            gMenu.texts[2] = FORMAT("CCM, CCN");
            gMenu.texts[3] = FORMAT("CCO, CCP");
            gMenu.texts[4] = FORMAT("CCQ, CCR");
            gMenu.texts[5] = FORMAT("RESERVED");
            break;
        case 17:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 4;
            gMenu.texts = Alloc(0x10u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("NORMAL");
            gMenu.texts[1] = FORMAT("NO AI");
            gMenu.texts[2] = FORMAT("NO HARM");
            gMenu.texts[3] = FORMAT("NO AI-HARM");
            break;
        case 18:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 2;
            gMenu.texts = Alloc(8u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("GOD ON");
            gMenu.texts[1] = FORMAT("GOD OFF");
            break;
        case 20:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 6;
            gMenu.texts = Alloc(0x18u, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("BANJO");
            gMenu.texts[1] = FORMAT("MOUSE");
            gMenu.texts[2] = FORMAT("CANDLE");
            gMenu.texts[3] = FORMAT("TANK");
            gMenu.texts[4] = FORMAT("OCTOPUS");
            gMenu.texts[5] = FORMAT("RESERVED");
            break;
        case 22:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 7;
            gMenu.texts = Alloc(0x1Cu, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("SPIRAL BOT");
            gMenu.texts[1] = FORMAT("SPIRAL MID E");
            gMenu.texts[2] = FORMAT("PIRAL MID W");
            gMenu.texts[3] = FORMAT("SPIRAL TOP");
            gMenu.texts[4] = FORMAT("JIGGY TMPL");
            gMenu.texts[5] = FORMAT("RESERVED");
            gMenu.texts[6] = FORMAT("NEXT");
            break;
        case 23:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 7;
            gMenu.texts = Alloc(0x1Cu, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("FARM LOWER");
            gMenu.texts[1] = FORMAT("FARM UPPER");
            gMenu.texts[2] = FORMAT("COW BOSS");
            gMenu.texts[3] = FORMAT("MILL HOUSE");
            gMenu.texts[4] = FORMAT("MUMBO FARM");
            gMenu.texts[5] = FORMAT("RESERVED");
            gMenu.texts[6] = FORMAT("NEXT");
            break;
        case 24:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 7;
            gMenu.texts = Alloc(0x1Cu, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("BEACH");
            gMenu.texts[1] = FORMAT("QUARRY BOT");
            gMenu.texts[2] = FORMAT("QUARRY TOP");
            gMenu.texts[3] = FORMAT("UNDERCORAL");
            gMenu.texts[4] = FORMAT("BEACH TOP");
            gMenu.texts[5] = FORMAT("MUMBO BCH");
            gMenu.texts[6] = FORMAT("NEXT");
            break;
        case 25:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 7;
            gMenu.texts = Alloc(0x1Cu, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("BOARDWALK");
            gMenu.texts[1] = FORMAT("HOUSEROOM");
            gMenu.texts[2] = FORMAT("CANDLE PUZ");
            gMenu.texts[3] = FORMAT("SWAMP GAS");
            gMenu.texts[4] = FORMAT("MUMBO SWMP");
            gMenu.texts[5] = FORMAT("RESERVED");
            gMenu.texts[6] = FORMAT("NEXT");
            break;
        case 26:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 7;
            gMenu.texts = Alloc(0x1Cu, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("HARBOUR");
            gMenu.texts[1] = FORMAT("SAND AREA");
            gMenu.texts[2] = FORMAT("CASTLE IN");
            gMenu.texts[3] = FORMAT("VILLAGE");
            gMenu.texts[4] = FORMAT("INSIDE A");
            gMenu.texts[5] = FORMAT("MUMBO HARB");
            gMenu.texts[6] = FORMAT("NEXT");
            break;
        case 27:
            gMenu.xPosition = 16;
            gMenu.yPosition = 72;
            gMenu.unselected.xPosition = 16;
            gMenu.unselected.yPosition = 72;
            gMenu.unselected.letterSpacing = 1;
            gMenu.unselected.field_12 = 0;
            gMenu.unselected.field_A = 1;
            gMenu.unselected.field_8 = 240;
            gMenu.unselected.field_11 = 6;
            gMenu.unselected.stringOffset = 0;
            gMenu.unselected.palette = 15;
            gMenu.unselected.fontData = (void*)0x80B01A8;
            gMenu.selected.xPosition = 16;
            gMenu.selected.yPosition = 72;
            gMenu.selected.letterSpacing = 1;
            gMenu.selected.field_12 = 0;
            gMenu.selected.field_A = 1;
            gMenu.selected.field_8 = 240;
            gMenu.selected.field_11 = 6;
            gMenu.selected.stringOffset = 0;
            gMenu.selected.palette = 10;
            gMenu.selected.fontData = (void*)0x80B01A8;
            gMenu.entryCount = 7;
            gMenu.texts = Alloc(0x1Cu, 15, 4);
            gMenu.curEntry = 0;
            gMenu.field_3A = 1;
            gMenu.lineHeight = 8;
            gMenu.horizontalPadding = 0;
            gMenu.useSpriteBuffer = 0;
            gMenu.texts[0] = FORMAT("FJORD");
            gMenu.texts[1] = FORMAT("FJORD CAV");
            gMenu.texts[2] = FORMAT("FURN SECT");
            gMenu.texts[3] = FORMAT("FURNSTORE");
            gMenu.texts[4] = FORMAT("POISONROOM");
            gMenu.texts[5] = FORMAT("MUMBO FURN");
            gMenu.texts[6] = FORMAT("NEXT");
            break;
        case 21:
        default:
            HANG;
    }
}
#endif
