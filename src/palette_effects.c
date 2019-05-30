#include "global.h"


extern u32 gPaletteEffects;
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
            gThunderPalette = (u16*)&dThunderPalette;
            gBackupBGPalette = gRoomHeader.backgroundPalette;
            gThunderTimer = RandomMinMax(5, 240);
            gThunderActive = 0;
            gThunderSfxTimer = RandomMinMax(180, 300);
    }
}
