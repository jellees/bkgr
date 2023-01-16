#ifndef GUARD_AUDIO_B_H
#define GUARD_AUDIO_B_H

extern bool8 gCanChangeBgm;
extern bool8 gCanPlaySfx;
extern u8 gBgmMainVolume;
extern u8 gSfxMainVolume;
extern u8 gSfxVolume;

extern void init_audio_and_reset_volume();
extern void reset_volume();

#define AUDIO_NEW_SFX(idx, base)                                                                       \
    audio_new_fx(dSoundEffects[(idx)].index, dSoundEffects[(idx)].volumes[gSfxVolume],                 \
                 dSoundEffects[(idx)].pitch + (base))

#define PLAY_SFX(idx) (gCanPlaySfx ? AUDIO_NEW_SFX(idx, 0x10000) : -1)

#define PLAY_SFX_PITCH(idx, base) (gCanPlaySfx ? AUDIO_NEW_SFX(idx, base) : -1)

#endif