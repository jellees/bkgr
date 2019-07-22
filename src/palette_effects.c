#include "global.h"

extern u16 gLoadedRoomIndex;
extern u16 dLightningPalette[];
extern struct RoomHeader gRoomHeader;
extern bool8 gIsPaletteEffectsActive;
extern void* dLavaPaletteAnims[];
extern u8 byte_203EA89;
extern struct struct_80CE440 word_80CE440[];
extern u32 dword_806483C[];
extern u8 byte_203EA8C;

IWRAM_DATA s32 gPaletteEffects;
IWRAM_DATA s32 gPaletteEffectsSave;
IWRAM_DATA u32 gLavaPaletteIndex;
IWRAM_DATA u32 gLavaTimer;
IWRAM_DATA u16* gLightningPalette;
IWRAM_DATA u16* gBackupBGPalette;
IWRAM_DATA u32 gLightningTimer;
IWRAM_DATA u32 gLightningActive;
IWRAM_DATA u32 gThunderTimer;
IWRAM_DATA bool32 gThunderActive;
IWRAM_DATA u32 gThunderSfxTimer;

enum { NONE, LAVA, THUNDER };

void InitPaletteEffects()
{
    gPaletteEffects = NONE;
    switch (gLoadedRoomIndex)
    {
        case ROOM_FURNSECTION:
        case ROOM_FURNSTORE:
        case ROOM_POISONROOM:
            gPaletteEffects = LAVA;
            gLavaPaletteIndex = 0;
            gLavaTimer = RandomMinMax(8, 24);
            break;
        case ROOM_BOARDWALK:
            gPaletteEffects = THUNDER;
            gLightningPalette = dLightningPalette;
            gBackupBGPalette = gRoomHeader.backgroundPalette;
            gThunderTimer = RandomMinMax(5, 240);
            gThunderActive = FALSE;
            gThunderSfxTimer = RandomMinMax(180, 300);
    }
}

void HandlePaletteEffects()
{
    if (!gIsPaletteEffectsActive)
    {
        switch (gPaletteEffects)
        {
        case NONE: break;
        case LAVA:
            if (--gLavaTimer == 0)
            {
                gLavaTimer = RandomMinMax(8, 24);
                DmaTransferBGPalette(dLavaPaletteAnims[gLavaPaletteIndex], 0, 0);
                if (++gLavaPaletteIndex == 6)
                    gLavaPaletteIndex = 0;
            }
            break;
        case THUNDER:
            if (--gLightningTimer == 0)
            {
                if (!gLightningActive)
                {
                    gThunderActive = TRUE;
                    DmaTransferBGPalette(gThunderPalette, 0, 15);
                    gThunderTimer = RandomMinMax(2, 5);
                }
                else
                {
                    gThunderActive = FALSE;
                    DmaTransferBGPalette(gBackupBGPalette, 0, 15);
                    gThunderTimer = RandomMinMax(5, 240);

                }
            }
            if (--gThunderTimer == 0)
            {
                gThunderTimer = RandomMinMax(180, 300);
                if(byte_203EA89)
                {
                    u32 a = word_80CE440[dword_806483C[RandomMinMax(0, 2)]].field_0;
                    u32 b = word_80CE440[dword_806483C[RandomMinMax(0, 2)]].field_2[byte_203EA8C];
                    u32 c = word_80CE440[dword_806483C[RandomMinMax(0, 2)]].field_4 + 0x10000;
                    audio_new_fx(a, b, c);
                }
            }
            break;
        }
    }
}

void RemovePaletteEffect()
{
    gPaletteEffectsSave = gPaletteEffects;
    gPaletteEffects = 0;
}

void RestorePaletteEffect()
{
    gPaletteEffects = gPaletteEffectsSave;
}
