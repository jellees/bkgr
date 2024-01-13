#include "global.h"
#include "common.h"
#include "audio_a.h"

bool8 gCanChangeBgm;
bool8 gCanPlaySfx;
u8 gBgmMainVolume;
u8 gSfxMainVolume;
u8 gSfxVolume;

/**
 * Initialises audio and resets volume to their default values.
 */
void init_audio_and_reset_volume() {
    ASSERT(dword_80CEB58 == 0xE3);
    init_audio();
    reset_volume();
}

/**
 * Resets the volume of audio tunes and effects to their default values.
 */
void reset_volume() {
    gCanChangeBgm = TRUE;
    gCanPlaySfx = TRUE;
    gBgmMainVolume = 4;
    gSfxMainVolume = 9;
    gSfxVolume = 0;
    audio_set_tune_vol(dVolumes[gBgmMainVolume]);
    audio_set_fx_vol(dVolumes[gSfxMainVolume]);
}

/**
 * Fades out the volume of audio tunes and, optionally, audio effects over a given time interval.
 *
 * \param t         The time interval over which to fade out the volume.
 * \param fadeSfx   A boolean value indicating whether or not to fade out the volume of audio effects.
 */
static void fade_out_volume(fx32 t, bool32 fadeSfx) {
    fx32 bgmVolume;
    fx32 bgmVolumeDecrement;
    fx32 sfxVolume;
    fx32 sfxVolumeDecrement;

    bgmVolume = gBgmMainVolume << FX32_SHIFT;
    bgmVolumeDecrement = CallARM_FX_Mul16(bgmVolume, t);
    if (fadeSfx) {
        sfxVolume = gSfxMainVolume << FX32_SHIFT;
        sfxVolumeDecrement = CallARM_FX_Mul16(sfxVolume, t);
    } else {
        sfxVolume = 0;
        sfxVolumeDecrement = 0;
    }

    while (bgmVolume && sfxVolume) {
        SyncVblank();

        bgmVolume -= bgmVolumeDecrement;
        if (bgmVolume < 0) {
            bgmVolume = 0;
        }
        audio_set_tune_vol(dVolumes[bgmVolume >> FX32_SHIFT]);

        if (fadeSfx) {
            sfxVolume -= sfxVolumeDecrement;
            if (sfxVolume < 0) {
                sfxVolume = 0;
            }
            audio_set_fx_vol(dVolumes[sfxVolume >> FX32_SHIFT]);
        }
    }
}

/**
 * Fades in the volume of audio tunes and, optionally, audio effects over a given time interval.
 *
 * \param t         The time interval over which to fade in the volume.
 * \param fadeSfx   A boolean value indicating whether or not to fade in the volume of audio effects.
 */
static void fade_in_volume(fx32 t, bool32 fadeSfx) {
    fx32 bgmVolume;
    fx32 bgmVolumeIncrement;
    fx32 sfxVolume;
    fx32 sfxVolumeIncrement;

    bgmVolume = gBgmMainVolume << FX32_SHIFT;
    bgmVolumeIncrement = CallARM_FX_Mul16(bgmVolume, t);
    bgmVolume = 0;

    if (fadeSfx) {
        sfxVolume = gSfxMainVolume << FX32_SHIFT;
        sfxVolumeIncrement = CallARM_FX_Mul16(gSfxMainVolume << FX32_SHIFT, t);
    } else {
        sfxVolumeIncrement = 0;
    }
    sfxVolume = 0;

    while (bgmVolume != gBgmMainVolume << FX32_SHIFT && sfxVolume != gSfxMainVolume << FX32_SHIFT) {
        SyncVblank();

        bgmVolume += bgmVolumeIncrement;
        if (bgmVolume > gBgmMainVolume << FX32_SHIFT) {
            bgmVolume = gBgmMainVolume << FX32_SHIFT;
        }
        audio_set_tune_vol(dVolumes[bgmVolume >> FX32_SHIFT]);

        if (fadeSfx) {
            sfxVolume += sfxVolumeIncrement;
            if (sfxVolume > gSfxMainVolume << FX32_SHIFT) {
                sfxVolume = gSfxMainVolume << FX32_SHIFT;
            }
            audio_set_fx_vol(dVolumes[sfxVolume >> FX32_SHIFT]);
        }
    }
}
