#ifndef GUARD_ENVIRONMENT_EFFECTS_H
#define GUARD_ENVIRONMENT_EFFECTS_H

enum { EFX_NONE, EFX_LAVA, EFX_THUNDER };

extern s32 gEnvironmentEffects;

void init_efx();
void update_efx();
void pause_efx();
void resume_efx();

#endif
