#ifndef GUARD_AUDIO_B_H
#define GUARD_AUDIO_B_H

extern bool8 gCanChangeBgm;
extern bool8 gCanPlaySfx;
extern u8 gBgmMainVolume;
extern u8 gSfxMainVolume;
extern u8 gSfxVolume;

extern void init_audio_and_reset_volume();
extern void reset_volume();

#endif