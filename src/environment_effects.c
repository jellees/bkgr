#include "global.h"
#include "audio_b.h"
#include "common.h"
#include "environment_effects.h"

s32 gEnvironmentEffects;
static s32 gEnvironmentEffectsTemp;
static u32 gLavaPaletteIndex;
static u32 gLavaTimer;
static u16* gLightningPalette;
static u16* gBackupBGPalette;
static u32 gLightningTimer;
static bool32 gLightningActive;
static u32 gThunderTimer;

void init_efx() {
    gEnvironmentEffects = EFX_NONE;

    switch (gLoadedRoomIndex) {
        case ROOM_FURNSECTION:
        case ROOM_FURNSTORE:
        case ROOM_POISONROOM:
            gEnvironmentEffects = EFX_LAVA;
            gLavaPaletteIndex = 0;
            gLavaTimer = RandomMinMax(8, 24);
            break;

        case ROOM_BOARDWALK:
            gEnvironmentEffects = EFX_THUNDER;
            gLightningPalette = dLightningPalette;
            gBackupBGPalette = gRoomHeader.backgroundPalette;
            gLightningTimer = RandomMinMax(5, 240);
            gLightningActive = FALSE;
            gThunderTimer = RandomMinMax(180, 300);
    }
}

void update_efx() {
    if (gIsPaletteEffectsActive)
        return;

    switch (gEnvironmentEffects) {
        case EFX_NONE:
            break;

        case EFX_LAVA:
            if (--gLavaTimer == 0) {
                gLavaTimer = RandomMinMax(8, 24);
                DmaTransferBGPalette(dLavaPaletteAnims[gLavaPaletteIndex], 0, 0);
                if (++gLavaPaletteIndex == 6)
                    gLavaPaletteIndex = 0;
            }
            break;

        case EFX_THUNDER:
            if (--gLightningTimer == 0) {
                if (!gLightningActive) {
                    gLightningActive = 1;
                    DmaTransferBGPalette(gLightningPalette, 0, 15);
                    gLightningTimer = RandomMinMax(2, 5);
                } else {
                    gLightningActive = FALSE;
                    DmaTransferBGPalette(gBackupBGPalette, 0, 15);
                    gLightningTimer = RandomMinMax(5, 240);
                }
            }

            if (--gThunderTimer == 0) {
                gThunderTimer = RandomMinMax(180, 300);
                if (gCanPlaySfx) {
                    u32 a = dSoundEffects[dword_806483C[RandomMinMax(0, 2)]].index;
                    u32 b = dSoundEffects[dword_806483C[RandomMinMax(0, 2)]].volumes[gSfxVolume];
                    u32 c = dSoundEffects[dword_806483C[RandomMinMax(0, 2)]].pitch + 0x10000;
                    audio_new_fx(a, b, c);
                }
            }
            break;
    }
}

void pause_efx() {
    gEnvironmentEffectsTemp = gEnvironmentEffects;
    gEnvironmentEffects = 0;
}

void resume_efx() {
    gEnvironmentEffects = gEnvironmentEffectsTemp;
}
