#include "global.h"
#include "sprite.h"
#include "common.h"

extern struct SoundEffect dSoundEffects[];

void UpdatePlayerBehavior(s32 keyPressed, s32 keyDown)
{
    ASSERT(gPlayerState < 0x80);

    dPlayerBehaviors[gPlayerState](keyPressed, keyDown);
}

static void nullsub_16(s32 keyPressed, s32 keyDown) { }

static void Jump(s32 keyPressed, s32 keyDown)
{
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD)
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

    switch (keyPressed & DPAD_ANY)
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
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD)
    {
    case A_BUTTON: DoFeatheryFlap(); return;
    case B_BUTTON: DoAirAttack(); return;
    case L_BUTTON: DoBillDrill(); return;
    }

    switch (keyPressed & DPAD_ANY)
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
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD)
    {
    case A_BUTTON: DoFeatheryFlap(); return;
    case B_BUTTON: DoAirAttack(); return;
    case L_BUTTON: DoBillDrill(); return;
    }
}

static void Idle(s32 keyPressed, s32 keyDown)
{
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD)
    {
    default:
        if (keyPressed & L_BUTTON)
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

    switch (keyPressed & DPAD_ANY)
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

static void Walk(s32 keyPressed, s32 keyDown)
{
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & 0x30F)
    {
    case 1:
        if (sub_08016EE0())
            return;
        DoJump();
        return;
    case 2:
        if (stru_200209A.field_2)
        {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = 13;
            sub_8003368(&gPlayerSprite, 97, 0, 1);
            sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[gPlayerSprite.field_A], 0);
            if (byte_203EA89)
            {
                audio_new_fx(dSoundEffects[7].index, dSoundEffects[7].volumes[byte_203EA8C],
                             dSoundEffects[7].pitch + 0x10000);
            }
            sub_8016790(2, gPlayerSprite.field_A);
        }
        else
        {
            DoPackWack();
        }
        return;
    case 0x100: return;
    case 0x200:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 2;
        sub_8003368(&gPlayerSprite, 0x21, 0, 1);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    }

    switch (keyPressed & 0xF0)
    {
    case 0x50:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        if (gPlayerSprite.field_A != 1)
        {
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
        }
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    case 0x90:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        if (gPlayerSprite.field_A != 3)
        {
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
        }
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    case 0xA0:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        if (gPlayerSprite.field_A != 5)
        {
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
        }
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    case 0x60:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        if (gPlayerSprite.field_A != 7)
        {
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
        }
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    case 0x40:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        if (gPlayerSprite.field_A != 0)
        {
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
        }
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    case 0x80:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        if (gPlayerSprite.field_A != 4)
        {
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
        }
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    case 0x20:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        if (gPlayerSprite.field_A != 6)
        {
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
        }
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    case 0x10:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 4;
        if (gPlayerSprite.field_A != 2)
        {
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
        }
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    default:
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 0;
        sub_8003368(&gPlayerSprite, 0x19, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
        return;
    }
}

static void ForwardRoll(s32 keyPressed, s32 keyDown)
{
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & 0x30F)
    {
    case 1:
        if (!sub_08016EE0())
            DoJump();
        break;
    default:
        if (!sub_8003770(&gPlayerSprite))
            return;
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 0;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A]);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
        break;
    }
}

static void sub_801B08C(s32 keyPressed, s32 keyDown)
{
    if (sub_8003770(&gPlayerSprite))
    {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 0;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A]);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void PackWackStart(s32 keyPressed, s32 keyDown)
{
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite))
    {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 28;
        sub_8003368(&gPlayerSprite, 185, 0, 1);
        if (byte_203EA89)
            audio_new_fx(dSoundEffects[13].index, dSoundEffects[13].volumes[byte_203EA8C],
                         dSoundEffects[13].pitch + 0x10000);
        sub_8016790(1, gPlayerSprite.field_A);
    }
}

static void PackWackEnd(s32 keyPressed, s32 keyDown)
{
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite))
    {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 0;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

void Crouch(s32 keyPressed, s32 keyDown)
{
    sub_8016710(&keyPressed, &keyDown);

    if (!sub_8003770(&gPlayerSprite))
        return;

    switch (keyDown & JOY_EXCL_DPAD)
    {
    case A_BUTTON:
        if (gInInteractionArea)
        {
            sub_80186F4(0);
            return;
        }
        else
        {
            if (sub_08016EE0())
                return;

            if (!stru_200209A.field_14)
                return;

            if (!byte_3003588 && stru_30028FC.field_0 && stru_30028FC.field_2 == 0xA)
                return;

            gPreviousPlayerState = gPlayerState;
            gPlayerState = 15;

            sub_8003368(&gPlayerSprite, 0x49, 4, 1);
            CallARM_store_jump_and_other_value(dword_2000FC8, 0x40000, 0x1A00);

            if (byte_203EA89)
            {
                audio_new_fx(dSoundEffects[21].index, dSoundEffects[21].volumes[byte_203EA8C],
                             dSoundEffects[21].pitch + 0x10000);
            }

            sub_8016790(0, gPlayerSprite.field_A);

            if (stru_30028FC.field_31 == 0x5A0000)
                return;

            gPlayerPos.y += 0x30000;
        }
        return;

    case B_BUTTON:
        if (sub_800DE04())
        {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = 9;

            sub_8003368(&gPlayerSprite, 0x109, 0, 1);

            if (byte_203EA89)
            {
                audio_new_fx(dSoundEffects[21].index, dSoundEffects[21].volumes[byte_203EA8C],
                             dSoundEffects[21].pitch + 0x10000);
            }

            sub_8016790(0, gPlayerSprite.field_A);
        }
        return;

    case R_BUTTON:
        if (stru_200209A.field_F)
        {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = 12;

            sub_8003368(&gPlayerSprite, 0x31, 7, 0);

            if (byte_203EA89)
            {
                audio_new_fx(dSoundEffects[21].index, dSoundEffects[21].volumes[byte_203EA8C],
                             dSoundEffects[21].pitch + 0x10000);
            }

            sub_8016790(15, gPlayerSprite.field_A);
        }
        return;
    }

    if (keyPressed & L_BUTTON)
    {
        switch (keyPressed & DPAD_ANY)
        {
        case DPAD_RIGHT | DPAD_UP:
            gPlayerSprite.field_A = 1;
            sub_80033A4(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        case DPAD_RIGHT | DPAD_DOWN:
            gPlayerSprite.field_A = 3;
            sub_80033A4(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        case DPAD_LEFT | DPAD_DOWN:
            gPlayerSprite.field_A = 5;
            sub_80033A4(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        case DPAD_LEFT | DPAD_UP:
            gPlayerSprite.field_A = 7;
            sub_80033A4(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        case DPAD_UP:
            gPlayerSprite.field_A = 0;
            sub_80033A4(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        case DPAD_DOWN:
            gPlayerSprite.field_A = 4;
            sub_80033A4(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        case DPAD_LEFT:
            gPlayerSprite.field_A = 6;
            sub_80033A4(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        case DPAD_RIGHT:
            gPlayerSprite.field_A = 2;
            sub_80033A4(&gPlayerSprite, 0x21, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
        }
    }
    else
    {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = 0;

        sub_8003368(&gPlayerSprite, 0x19, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}
