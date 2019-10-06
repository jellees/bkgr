#include "global.h"
#include "sprite.h"

extern u16 gPlayerState;
extern u32 dword_2000FC8;
extern u16 gPreviousPlayerState;
extern struct Sprite gPlayerSprite;
extern bool8 gInInteractionArea;

extern void (*dPlayerBehaviors[1])(s32, s32);
extern u32 dword_80CC290[8];

void UpdatePlayerBehavior(s32 keyPressed, s32 keyDown)
{
    if (gPlayerState > 0x7F)
        HANG;

    _call_via_r2(keyPressed, keyDown, dPlayerBehaviors[gPlayerState]);
}

static void nullsub_16(s32 keyPressed, s32 keyDown) {}

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
        gPreviousPlayerState = gPlayerState;
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

    switch (down & JOY_EXCL_DPAD)
    {
    case A_BUTTON: DoFeatheryFlap(); return;
    case B_BUTTON: DoAirAttack(); return;
    case L_BUTTON: DoBillDrill(); return;
    }

    switch (pressed & DPAD_ANY)
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

static void Idle(s32 keyPressed, s32 keyDown)
{
    s32 pressed = keyPressed;
    s32 down = keyDown;

    sub_8016710(&pressed, &down);

    switch (down & JOY_EXCL_DPAD)
    {
    default:
        if (pressed & L_BUTTON)
        {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = 2;
            sub_8003368(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        }
        break;
    case A_BUTTON:
        if (gInInteractionArea)
        {
            sub_80186F4(0);
            return;
        }
        if (sub_08016EE0())
            return;
        DoJump();
        return;
    case B_BUTTON: DoPackWack(); return;
    }

    switch (pressed & DPAD_ANY)
    {
    case DPAD_RIGHT | DPAD_UP:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        gPlayerSprite.field_A = 1;
        sub_8003368(&gPlayerSprite, 1, 0, 0);
        sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    case DPAD_RIGHT | DPAD_DOWN:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        gPlayerSprite.field_A = 3;
        sub_8003368(&gPlayerSprite, 1, 0, 0);
        sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    case 0xA0:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        gPlayerSprite.field_A = 5;
        sub_8003368(&gPlayerSprite, 1, 0, 0);
        sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    case 0x60:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        gPlayerSprite.field_A = 7;
        sub_8003368(&gPlayerSprite, 1, 0, 0);
        sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    case 0x40:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        gPlayerSprite.field_A = 0;
        sub_8003368(&gPlayerSprite, 1, 0, 0);
        sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    case 0x80:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        gPlayerSprite.field_A = 4;
        sub_8003368(&gPlayerSprite, 1, 0, 0);
        sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    case 0x20:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        gPlayerSprite.field_A = 6;
        sub_8003368(&gPlayerSprite, 1, 0, 0);
        sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    case 0x10:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        gPlayerSprite.field_A = 2;
        sub_8003368(&gPlayerSprite, 1, 0, 0);
        sub_8003884(dword_2000FC8, 0x19999, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    }
}
