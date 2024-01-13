#ifndef GUARD_AUDIO_B_H
#define GUARD_AUDIO_B_H

extern bool8 gCanChangeBgm;
extern bool8 gCanPlaySfx;
extern u8 gBgmMainVolume;
extern u8 gSfxMainVolume;
extern u8 gSfxVolume;

extern void init_audio_and_reset_volume(void);
extern void reset_volume(void);

extern int audio_new_fx(int, int, int);

#define AUDIO_NEW_SFX(idx, volume, pitch) (gCanPlaySfx ? audio_new_fx(idx, volume, pitch) : -1)

#define PLAY_SFX(idx)                                                                                  \
    AUDIO_NEW_SFX(dSoundEffects[idx].index, dSoundEffects[idx].volumes[gSfxVolume],                    \
                  dSoundEffects[idx].pitch + 0x10000)

#define PLAY_SFX_PITCH(idx, base)                                                                      \
    AUDIO_NEW_SFX(dSoundEffects[idx].index, dSoundEffects[idx].volumes[gSfxVolume], base)

#endif