#include "global.h"

extern u16 gPlayerState;
extern void (*dPlayerBehaviors[1])(u32, u32);

void UpdatePlayerBehavior(u32 keyPressed, u32 keyDown)
{
    if (gPlayerState > 0x7F)
        HANG;

    _call_via_r2(keyPressed, keyDown, dPlayerBehaviors[gPlayerState]);
}

void nullsub_16(u32 keyPressed, u32 keyDown) {}
