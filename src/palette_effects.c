#include "global.h"

extern s32 gPaletteEffects;
extern u16 gLoadedRoomIndex;

extern u32 gLavaPaletteIndex;
extern u32 gLavaTimer;

extern u16* gThunderPalette;
extern u16 dThunderPalette[];
extern u16* gBackupBGPalette;
extern struct RoomHeader gRoomHeader;
extern u32 gThunderTimer;
extern u32 gThunderActive;
extern u32 gThunderSfxTimer;
extern s32 gPaletteEffectsSave;

extern u8 gIsPaletteEffectsActive;
extern void* dLavaPaletteAnims[];

extern u8 byte_203EA89;
extern struct struct_80CE440 word_80CE440[];
extern u32 dword_806483C[];
extern u8 byte_203EA8C;

void InitPaletteEffects()
{
    gPaletteEffects = 0;
    switch (gLoadedRoomIndex)
    {
        case 17:
        case 21:
        case 32:
            gPaletteEffects = 1;
            gLavaPaletteIndex = 0;
            gLavaTimer = RandomMinMax(8, 24);
            break;
        case 20:
            gPaletteEffects = 2;
            gThunderPalette = dThunderPalette;
            gBackupBGPalette = gRoomHeader.backgroundPalette;
            gThunderTimer = RandomMinMax(5, 240);
            gThunderActive = 0;
            gThunderSfxTimer = RandomMinMax(180, 300);
    }
}

void HandlePaletteEffects()
{
    if (!gIsPaletteEffectsActive)
    {
        switch (gPaletteEffects)
        {
        case 0: break;
        case 1:
            if (--gLavaTimer == 0)
            {
                gLavaTimer = RandomMinMax(8, 24);
                DmaTransferBGPalette(dLavaPaletteAnims[gLavaPaletteIndex], 0, 0);
                if (++gLavaPaletteIndex == 6)
                    gLavaPaletteIndex = 0;
            }
            break;
        case 2:
            if (--gThunderTimer == 0)
            {
                if (!gThunderActive)
                {
                    gThunderActive = 1;
                    DmaTransferBGPalette(gThunderPalette, 0, 15);
                    gThunderTimer = RandomMinMax(2, 5);
                }
                else
                {
                    gThunderActive = 0;
                    DmaTransferBGPalette(gBackupBGPalette, 0, 15);
                    gThunderTimer = RandomMinMax(5, 240);
                    
                }
            }
            if (--gThunderSfxTimer == 0)
            {
                gThunderSfxTimer = RandomMinMax(180, 300);
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
