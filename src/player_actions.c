#include "global.h"
#include "sprite.h"

extern u16 gPlayerState;
extern u32 dword_2000FC8;
extern u16 word_2002090;
extern struct Sprite gPlayerSprite;

extern void (*dPlayerBehaviors[1])(s32, s32);
extern u32 dword_80CC290[8];

void UpdatePlayerBehavior(s32 keyPressed, s32 keyDown)
{
    if (gPlayerState > 0x7F)
        HANG;

    _call_via_r2(keyPressed, keyDown, dPlayerBehaviors[gPlayerState]);
}

void nullsub_16(s32 keyPressed, s32 keyDown) {}

static void Jump(s32 keyPressed, s32 keyDown)
{
    s32 pressed = keyPressed;
    s32 down = keyDown;
    
    sub_8016710(&pressed, &down);
    sub_8016624(pressed, down);

    switch (down & JOY_EXCL_DPAD)
    {
    case A_BUTTON: DoFeatheryFlap(); return;
    case B_BUTTON: DoAirAttack(); return;
    case L_BUTTON: DoBillDrill(); return;
    }

    if (sub_80038BC(dword_2000FC8) << 0x18)
    {
        word_2002090 = gPlayerState;
        gPlayerState = 18;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
    }

    switch (pressed & DPAD_ANY)
    {
    case DPAD_RIGHT | DPAD_UP:
        if (gPlayerSprite.field_A == 1 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 1;
        sub_8003368(&gPlayerSprite, 9, 0, 1);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_RIGHT | DPAD_DOWN:
        if (gPlayerSprite.field_A == 3 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 3;
        sub_8003368(&gPlayerSprite, 9, 0, 1);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_LEFT | DPAD_DOWN:
        if (gPlayerSprite.field_A == 5 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 5;
        sub_8003368(&gPlayerSprite, 9, 0, 1);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_LEFT | DPAD_UP:
        if (gPlayerSprite.field_A == 7 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 7;
        sub_8003368(&gPlayerSprite, 9, 0, 1);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_UP:
        if (gPlayerSprite.field_A == 0 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 0;
        sub_8003368(&gPlayerSprite, 9, 0, 1);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_DOWN:
        if (gPlayerSprite.field_A == 4 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 4;
        sub_8003368(&gPlayerSprite, 9, 0, 1);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_LEFT:
        if (gPlayerSprite.field_A == 6 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 6;
        sub_8003368(&gPlayerSprite, 9, 0, 1);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_RIGHT:
        if (gPlayerSprite.field_A == 2 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 2;
        sub_8003368(&gPlayerSprite, 9, 0, 1);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    default:
        if (sub_80038AC(dword_2000FC8) << 0x18)
        {
            sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
        }
    }
}

static void JumpFall(s32 keyPressed, s32 keyDown)
{
    s32 pressed = keyPressed;
    s32 down = keyDown;
    
    sub_8016710(&pressed, &down);

    switch(down & 0x30F)
    {
    case A_BUTTON: DoFeatheryFlap(); return;
    case B_BUTTON: DoAirAttack(); return;
    case L_BUTTON: DoBillDrill(); return;
    }

    switch(pressed & 0xF0)
    {
    case DPAD_RIGHT | DPAD_UP:
        if (gPlayerSprite.field_A == 1 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 1;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_RIGHT | DPAD_DOWN:
        if (gPlayerSprite.field_A == 3 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 3;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_LEFT | DPAD_DOWN:
        if (gPlayerSprite.field_A == 5 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 5;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_LEFT | DPAD_UP:
        if (gPlayerSprite.field_A == 7 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 7;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_UP:
        if (gPlayerSprite.field_A == 0 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 0;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_DOWN:
        if (gPlayerSprite.field_A == 4 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 4;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_LEFT:
        if (gPlayerSprite.field_A == 6 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 6;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    case DPAD_RIGHT:
        if (gPlayerSprite.field_A == 2 && sub_80038AC(dword_2000FC8) << 0x18)
            return;
        gPlayerSprite.field_A = 2;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
        return;
    default:
        if (sub_80038AC(dword_2000FC8) << 0x18)
        {
            sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
        }
    }
}

static void LedgeFall(s32 keyPressed, s32 keyDown)
{
    s32 pressed = keyPressed;
    s32 down = keyDown;
    
    sub_8016710(&pressed, &down);

    switch (down & JOY_EXCL_DPAD)
    {
    case A_BUTTON: DoFeatheryFlap(); return;
    case B_BUTTON: DoAirAttack(); return;
    case L_BUTTON: DoBillDrill(); return;
    }
}