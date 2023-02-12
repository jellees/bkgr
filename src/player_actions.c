#include "global.h"
#include "sprite.h"
#include "audio_b.h"
#include "main.h"
#include "debug.h"
#include "room.h"
#include "common.h"

void UpdatePlayerBehavior(s32 keyPressed, s32 keyDown) {
    ASSERT(gPlayerState < PLAYER_STATE_COUNT);

    dPlayerBehaviors[gPlayerState](keyPressed, keyDown);
}

static void nullsub_16(s32 keyPressed, s32 keyDown) {
}

static void Jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            DoFeatheryFlap();
            return;

        case B_BUTTON:
            DoAirAttack();
            return;

        case L_BUTTON:
            DoBillDrill();
            return;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_JUMP_FALL;
        sub_8003368(&gPlayerSprite, 17, 0, 0);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            return;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            return;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            return;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            return;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            return;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            return;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            return;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            return;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void JumpFall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            DoFeatheryFlap();
            return;

        case B_BUTTON:
            DoAirAttack();
            return;

        case L_BUTTON:
            DoBillDrill();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void LedgeFall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            DoFeatheryFlap();
            return;

        case B_BUTTON:
            DoAirAttack();
            return;

        case L_BUTTON:
            DoBillDrill();
            return;
    }
}

static void Idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        default:
            if (keyPressed & L_BUTTON) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_CROUCH;
                sub_8003368(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.field_A);
                return;
            }
            break;

        case A_BUTTON:
            if (gInInteractionArea) {
                sub_80186F4(0);
                return;
            }
            if (sub_08016EE0()) {
                return;
            }
            DoJump();
            return;

        case B_BUTTON:
            DoPackWack();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void Walk(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (sub_08016EE0())
                return;
            DoJump();
            return;

        case B_BUTTON:
            if (gUnlockedMoves[MOVE_FORWARD_ROLL]) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_FORWARD_ROLL;
                sub_8003368(&gPlayerSprite, 97, 0, 1);
                sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[gPlayerSprite.field_A], 0);
                PLAY_SFX(7);
                sub_8016790(2, gPlayerSprite.field_A);
            } else {
                DoPackWack();
            }
            return;

        case R_BUTTON:
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CROUCH;
            sub_8003368(&gPlayerSprite, 0x21, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sub_8003368(&gPlayerSprite, 0x19, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            return;
    }
}

static void ForwardRoll(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (!sub_08016EE0())
                DoJump();
            break;

        default:
            if (!sub_8003770(&gPlayerSprite))
                return;
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sub_8003368(&gPlayerSprite, 25, 0, 0);
            sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A]);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_801B08C(s32 keyPressed, s32 keyDown) {
    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A]);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void PackWackStart(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_PACK_WACK_HIT;
        sub_8003368(&gPlayerSprite, 185, 0, 1);

        PLAY_SFX(13);

        sub_8016790(1, gPlayerSprite.field_A);
    }
}

static void PackWackEnd(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

void Crouch(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!sub_8003770(&gPlayerSprite))
        return;

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_80186F4(0);
                return;
            } else {
                if (sub_08016EE0()) {
                    return;
                }

                if (!gUnlockedMoves[MOVE_FLAP_FLIP]) {
                    return;
                }

                if (!byte_3003588 && gFloorPlaneResult.isColliding
                    && gFloorPlaneResult.floorType == 0xA) {
                    return;
                }

                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_FLAP_FLIP;

                sub_8003368(&gPlayerSprite, 0x49, 4, 1);
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x40000, 0x1A00);

                PLAY_SFX(21);

                sub_8016790(0, gPlayerSprite.field_A);

                if (gFloorPlaneResult.field_2C == 0x5A0000)
                    return;

                gPlayerPos.y += 0x30000;
            }
            return;

        case B_BUTTON:
            if (sub_800DE04()) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_SHOOTER_START;

                sub_8003368(&gPlayerSprite, 0x109, 0, 1);

                PLAY_SFX(21);

                sub_8016790(0, gPlayerSprite.field_A);
            }
            return;

        case R_BUTTON:
            if (gUnlockedMoves[MOVE_TALON_TROT]) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;

                sub_8003368(&gPlayerSprite, 0x31, 7, 0);

                PLAY_SFX(21);

                sub_8016790(15, gPlayerSprite.field_A);
            }
            return;
    }

    if (keyPressed & L_BUTTON) {
        switch (keyPressed & DPAD_ANY) {
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
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;

        sub_8003368(&gPlayerSprite, 0x19, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801B4C8(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!sub_80037A8(&gPlayerSprite))
        return;

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (!sub_08016EE0())
                sub_8017480();
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;

            sub_8003368(&gPlayerSprite, 0x19, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);

            if (dword_20020B8 != -1) {
                if (gCanPlaySfx)
                    audio_halt_fx(dword_20020B8);
                dword_20020B8 = -1;
            }

            sub_8016790(0, gPlayerSprite.field_A);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_80033A4(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x2D0000, 0);
            }
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            break;
        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_80033A4(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x13B0000, 0);
            }
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            break;
        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_80033A4(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0xE10000, 0);
            }
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            break;
        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_80033A4(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x870000, 0);
            }
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            break;
        case DPAD_UP:
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_80033A4(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x5A0000, 0);
            }
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            break;
        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_80033A4(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x10E0000, 0);
            }
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            break;
        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_80033A4(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0xB40000, 0);
            }
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            break;
        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_80033A4(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0, 0);
            }
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            break;
        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;

            sub_800378C(&gPlayerSprite, 6);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);

            if (dword_20020B8 != -1) {
                if (gCanPlaySfx)
                    audio_halt_fx(dword_20020B8);
                dword_20020B8 = -1;
            }

            sub_8016790(15, gPlayerSprite.field_A);
            break;
    }
}

static void sub_801B814(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!sub_80037A8(&gPlayerSprite))
        return;

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_80186F4(0);
                return;
            }
            if (!sub_08016EE0()) {
                sub_8017480();
            }
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;

            sub_8003368(&gPlayerSprite, 25, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);

            if (dword_20020B8 != -1) {
                if (gCanPlaySfx)
                    audio_halt_fx(dword_20020B8);
                dword_20020B8 = -1;
            }

            sub_8016790(0, gPlayerSprite.field_A);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.field_A = 1;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x2D0000, 0);
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.field_A = 3;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x13B0000, 0);
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.field_A = 5;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0xE10000, 0);
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.field_A = 7;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x870000, 0);
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.field_A = 0;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x5A0000, 0);
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.field_A = 4;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x10E0000, 0);
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.field_A = 6;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0xB40000, 0);
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.field_A = 2;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0, 0);
            if (dword_20020B8 == -1) {
                dword_20020B8 = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        default:
            if (gPlayerState != gPreviousPlayerState) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
                sub_800378C(&gPlayerSprite, 6);
                sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
                sub_8016790(15, gPlayerSprite.field_A);
            }
            break;
    }
}

static void sub_801BC18(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            DoAirAttack();
            return;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_KAZOOIE_FALL;
        sub_8003368(&gPlayerSprite, 201, 0, 1);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801BE04(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            DoAirAttack();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801BFEC(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!sub_8003770(&gPlayerSprite)) {
        return;
    }

    if (gGameStatus.health == 0) {
        if (byte_2001370) {
            restore_full_health();
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
            sub_8003368(&gPlayerSprite, 49, 7, 0);
            sub_80037F4(&gPlayerSprite, 7);
            sub_8016790(15, gPlayerSprite.field_A);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        } else {
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_800387C(dword_2000FC8);
            sub_8016890();
        }
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
        sub_8003368(&gPlayerSprite, 49, 7, 0);
        sub_80037F4(&gPlayerSprite, 7);
        sub_8016790(15, gPlayerSprite.field_A);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    }
}

static void sub_801C0FC(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            DoAirAttack();
            return;
    }
}

static void sub_801C124(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case L_BUTTON:
            DoBillDrill();
            return;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_FLAP_FLIP_FALL;
        sub_8003368(&gPlayerSprite, 81, 0, 1);
    }
}

static void sub_801C188(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case L_BUTTON:
            DoBillDrill();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801C36C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        sub_80181B8(&gPlayerPos.y);
        return;
    }

    switch (keyDown & JOY_EXCL_DPAD) {
        case L_BUTTON:
            DoBillDrill();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_80033A4(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_80033A4(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_80033A4(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_80033A4(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_80033A4(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_80033A4(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_80033A4(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_80033A4(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801C538(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!audio_fx_still_active(dword_20021D0)) {
        switch (byte_20021C8) {
            case 0:
                byte_20021C8 = 1;
                dword_20021D0 = PLAY_SFX_PITCH(29, 0x10000);
                break;

            case A_BUTTON:
                byte_20021C8 = 2;
                dword_20021D0 = PLAY_SFX_PITCH(29, 0x12000);
                break;

            case B_BUTTON:
                if (sub_8003770(&gPlayerSprite)) {
                    if (audio_fx_still_active(dword_20021D0)) {
                        if (gCanPlaySfx) {
                            audio_halt_fx(dword_20021D0);
                        }
                    }
                    sub_80181B8(&gPlayerPos.y);
                    return;
                }
                break;
        }
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_80033A4(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_80033A4(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_80033A4(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_80033A4(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_80033A4(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_80033A4(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_80033A4(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_80033A4(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801C744(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_BILL_DRILL_FALL;
        sub_8003368(&gPlayerSprite, 145, 0, 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0);
        sub_8016790(4, gPlayerSprite.field_A);
    }
}

static void sub_801C7A4(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801C7F4(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_801C80C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite) && word_2002EC2 == word_2002EC0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_BILL_DRILL_END;
        gPlayerSprite.field_A = 4;
        sub_8003368(&gPlayerSprite, 137, 0, 1);
        sub_8026714();
        if (dword_20020B4 != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(dword_20020B4);
            }
            dword_20020B4 = -1;
        }
    } else {
        sub_802672C();
    }
}

static void sub_801C8A0(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            DoJump();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_80037A0(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_80037A0(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_80037A0(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_80037A0(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_80037A0(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_80037A0(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_80037A0(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_80037A0(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            sub_8003794(&gPlayerSprite);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    }
}

static void sub_801CA7C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            DoJump();
            return;

        case R_BUTTON:
            sub_8017958();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0, 0);
            }
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM_IDLE;
            sub_8003368(&gPlayerSprite, 105, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            break;
    }
}

static void sub_801CD74(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_801CD8C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_80186F4(0);
            } else {
                DoJump();
            }
            return;

        case R_BUTTON:
            sub_8017958();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_801D030(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_801D048(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else {
        if (sub_8003770(&gPlayerSprite) && !audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void sub_801D0AC(s32 keyPressed, s32 keyDown) {
    if (!byte_20021C9) {
        byte_20021C9 = sub_0802E080();
        if (byte_20021C9) {
            byte_20021CA = 0;
        } else {
            return;
        }
    }

    if (!byte_20021CA) {
        if (!dword_2001470) {
            byte_20021CA = 1;
            sub_8025FBC();
            sub_8026180();
            sub_802625C();
            dword_20021E4 = 300;
        }
        return;
    }

    if (byte_2002E49) {
        sub_8018810();
        return;
    }

    switch (keyDown & KEYS_MASK) {
        case A_BUTTON:
            dword_20021E4 = 300;
            if (!sub_8025FF8()) {
                sub_8026180();
                sub_80265D8();
            }
            return;

        case B_BUTTON:
            if (byte_2002E4E) {
                sub_8018810();
            } else {
                sub_8026180();
                sub_80265D8();
            }
            return;
    }

    if (byte_2002233 == byte_2002232 && --dword_20021E4 == 0) {
        dword_20021E4 = 300;
    } else {
        sub_8026180();
        sub_80265D8();
        return;
    }

    if (!sub_8025FF8()) {
        sub_8026180();
        sub_80265D8();
    }
}

static void sub_801D188(s32 keyPressed, s32 keyDown) {
    if (byte_20021CA) {
        if (dword_2001470) {
            return;
        }

        sub_080161CC((u8) * ((u8*)dword_203DFDC + 16));
        sub_8013DD4(21, 32);
        byte_20021CA = 0;
    }

    if (sub_802FDC8()) {
        sub_08018824();
    }
}

static void sub_801D1CC(s32 keyPressed, s32 keyDown) {
    struct Vec3fx a;
    u8 v4;

    if (sub_80038C4(dword_2000FC8, &a.x, &a.y, &a.z) || gIsCameraMovingX || gIsCameraMovingY) {
        return;
    }

    if (*((u8*)dword_203DFDC + 52) != 0) {
        v4 = sub_8003A6C(gPlayerPos.x, gPlayerPos.z, *((u32*)((u8*)dword_203DFDC + 148)),
                         *((u32*)((u8*)dword_203DFDC + 156)));
        if (v4 == 0xFF) {
            v4 = 0;
        }
    } else if (byte_203DFDA || byte_203DFE9) {
        v4 = gPlayerSprite.field_A;
    } else {
        v4 = 0;
    }

    if (v4 != 0xFF && gGameStatus.health != 0) {
        if (gTransformation == TRANSFORMATION_BANJO) {
            if ((gPlayerStateSettings[gPreviousPlayerState] & 0x200) != 0) {
                gPlayerSprite.field_A = v4;
                sub_8003368(&gPlayerSprite, 105, 0, 0);
            } else if ((gPlayerStateSettings[gPreviousPlayerState] & 0x8000) != 0) {
                sub_800378C(&gPlayerSprite, 6);
                if (dword_20020B8 != -1) {
                    if (gCanPlaySfx) {
                        audio_halt_fx(dword_20020B8);
                    }
                    dword_20020B8 = -1;
                }
            } else if ((gPlayerStateSettings[gPreviousPlayerState] & 0x4) != 0) {
                sub_8003368(&gPlayerSprite, 257, 0, 0);
            } else if ((gPlayerStateSettings[gPreviousPlayerState] & 0x4000) != 0) {
                gPlayerSprite.field_A = v4;
                sub_8003368(&gPlayerSprite, 505, 0, 0);
                sub_0804200C(3);
            } else if ((gPlayerStateSettings[gPreviousPlayerState] & 0x1000) == 0) {
                gPlayerSprite.field_A = v4;
                sub_8003368(&gPlayerSprite, 25, 0, 0);
            }
        } else if (gTransformation == TRANSFORMATION_MOUSE) {
            gPlayerSprite.field_A = v4;
            sub_8003368(&gPlayerSprite, 321, 0, 0);
        } else if (gTransformation == TRANSFORMATION_CANDLE) {
            gPlayerSprite.field_A = v4;
            sub_8003368(&gPlayerSprite, 377, 0, 0);
        } else if (gTransformation == TRANSFORMATION_TANK) {
            gPlayerSprite.field_A = v4;
            sub_8003368(&gPlayerSprite, 417, 0, 0);
        } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
            if ((gPlayerStateSettings[gPreviousPlayerState] & 0x200) != 0) {
                gPlayerSprite.field_A = v4;
                sub_8003368(&gPlayerSprite, 473, 0, 0);
            } else {
                gPlayerSprite.field_A = v4;
                sub_8003368(&gPlayerSprite, 465, 0, 0);
            }
        } else {
            ASSERT(0);
        }
    }

    gPlayerState = PLAYER_STATE_DIALOGUE;
    sub_8016790(0, gPlayerSprite.field_A);
    byte_2002E4A = 0;
    byte_20021C9 = 0;
}

static void sub_801D400(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_80037A8(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_36;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x40000, 0x2000);
    }
}

static void sub_801D44C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_37;
        sub_8003368(&gPlayerSprite, 17, 0, 1);
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_80033A4(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_80033A4(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_80033A4(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_80033A4(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_80033A4(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_80033A4(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_80033A4(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_80033A4(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801D614(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            DoFeatheryFlap();
            return;

        case B_BUTTON:
            DoAirAttack();
            return;

        case L_BUTTON:
            DoBillDrill();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_80033A4(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_80033A4(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_80033A4(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_80033A4(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_80033A4(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_80033A4(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_80033A4(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_80033A4(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801D810(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        sub_0800C388(dword_20021E8, dword_20021EC);

        if (byte_20010A4) {
            gPlayerSprite.field_A = byte_20010A5;
            word_20010AC = gKeysPressed & 0x3FF;
        }

        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_45;
        sub_8003368(&gPlayerSprite, 57, 0, 0);
        gPlayerShadowSprite.field_13 = 0;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 12544);
        word_2002096 = 600;
        word_2002098 = 600;

        if (!sub_080420E8(56)) {
            sub_08040204(57, gGameStatus.field_16);
            sub_08041FA4(57);
        }
    }
}

static void sub_801D8EC(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (gPlayerPos.y == gPlayerShadowPos.y) {
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
    }

    if ((keyPressed & JOY_EXCL_DPAD) == A_BUTTON && !byte_30029F8) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_46;
        CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(1.5), 0);
        return;
    }

    if ((keyDown & JOY_EXCL_DPAD) == R_BUTTON) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_48;
        sub_8003368(&gPlayerSprite, 65, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(2), 0x4000);
        return;
    } else {
        fx32 x, y, z;
        sub_80038C4(dword_2000FC8, &x, &y, &z);
        if (y < FX32_CONST(-0.75)) {
            CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(-0.75), 0x3100);
        }

        if (!gGameStatus.field_16) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_48;
            sub_8003368(&gPlayerSprite, 65, 0, 1);
            CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(2), 0x4000);
            return;
        }
    }

    if (word_2002098 == 0) {
        word_2002098 = word_2002096;
        gGameStatus.field_16--;
        sub_08040204(57, gGameStatus.field_16);
        sub_08041FA4(57);
        PLAY_SFX(123);
    } else {
        word_2002098--;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 1) {
                    gPlayerSprite.field_A = 1;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 3) {
                    gPlayerSprite.field_A = 3;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 5) {
                    gPlayerSprite.field_A = 5;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 7) {
                    gPlayerSprite.field_A = 7;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 0) {
                    gPlayerSprite.field_A = 0;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 4) {
                    gPlayerSprite.field_A = 4;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 6) {
                    gPlayerSprite.field_A = 6;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 2) {
                    gPlayerSprite.field_A = 2;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0, 0);
            }
            break;

        default:
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            break;
    }
}

static void sub_801DD1C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (gGameStatus.field_16) {
        if (word_2002098 != 0) {
            word_2002098--;
        } else {
            word_2002098 = word_2002096;
            gGameStatus.field_16--;
            sub_08040204(57, gGameStatus.field_16);
            sub_08041FA4(57);
            PLAY_SFX(123);
        }
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_48;
        sub_8003368(&gPlayerSprite, 65, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
        return;
    }

    if ((keyDown & JOY_EXCL_DPAD) == R_BUTTON) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_48;
        sub_8003368(&gPlayerSprite, 65, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
        return;
    }

    if ((keyPressed & JOY_EXCL_DPAD) != A_BUTTON) {
        if (sub_80038BC(dword_2000FC8)) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_45;
            CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
            return;
        }
    } else if (!byte_30029F8) {
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x18000, 0x2000);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 1) {
                    gPlayerSprite.field_A = 1;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 3) {
                    gPlayerSprite.field_A = 3;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 5) {
                    gPlayerSprite.field_A = 5;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 7) {
                    gPlayerSprite.field_A = 7;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 0) {
                    gPlayerSprite.field_A = 0;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 4) {
                    gPlayerSprite.field_A = 4;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 6) {
                    gPlayerSprite.field_A = 6;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 2) {
                    gPlayerSprite.field_A = 2;
                    sub_8003368(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0, 0);
            }
            break;

        default:
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            break;
    }
}

static void sub_801E0F4(s32 keyPressed, s32 keyDown) {
    ASSERT(0);

    if (!gGameStatus.field_16) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_48;
        sub_8003368(&gPlayerSprite, 65, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
        return;
    }

    if (word_2002098 == 0) {
        word_2002098 = word_2002096;
        gGameStatus.field_16--;
        sub_08040204(57, gGameStatus.field_16);
        sub_08041FA4(57);
        PLAY_SFX(123);
    } else {
        word_2002098--;
    }

    if (!(keyPressed & 2)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_45;
        sub_800387C(dword_2000FC8);
    }
}

static void sub_801E1E4(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sub_800C1E8(byte_2001094, dword_2001098, dword_200109C, dword_20010A0, 1, 0);
        sub_8017C50();
        sub_0804200C(57);
        if (gGameStatus.field_16 != gGameStatus.field_17) {
            gGameStatus.field_16 = gGameStatus.field_17;
            sub_08040204(57, gGameStatus.field_16);
            PLAY_SFX(124);
        }
        sub_800387C(dword_2000FC8);
    }
}

static void sub_801E2B8(s32 keyPressed, s32 keyDown) {
    if (sub_8003770(&gPlayerSprite)) {
        if (gGameStatus.health == 0) {
            if (byte_2001370) {
                restore_full_health();
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_45;
                sub_8003368(&gPlayerSprite, 57, 0, 0);
                sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016890();
            }
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_45;
            sub_8003368(&gPlayerSprite, 57, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        }
    }
}

static void sub_801E384(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            sub_8017664();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x2D0000, 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016790(0, gPlayerSprite.field_A);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x13B0000, 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016790(0, gPlayerSprite.field_A);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0xE10000, 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016790(0, gPlayerSprite.field_A);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x870000, 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016790(0, gPlayerSprite.field_A);
            }
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x5A0000, 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016790(0, gPlayerSprite.field_A);
            }
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x10E0000, 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016790(0, gPlayerSprite.field_A);
            }
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0xB40000, 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016790(0, gPlayerSprite.field_A);
            }
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0, 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016790(0, gPlayerSprite.field_A);
            }
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_IDLE;
            sub_8003368(&gPlayerSprite, 321, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_801E694(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_80186F4(0);
            } else {
                sub_8017664();
            }
            return;

        case B_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_NIBBLE;
            sub_8003368(&gPlayerSprite, 297, 0, 3);
            sub_8016790(14, gPlayerSprite.field_A);
            PLAY_SFX(192);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_801E9B8(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_JUMP_FALL;
        sub_8003368(&gPlayerSprite, 313, 0, 1);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801EB98(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801ED78(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_801ED90(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_IDLE;
        sub_8003368(&gPlayerSprite, 321, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801EDE4(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else if (sub_8003770(&gPlayerSprite)) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void sub_801EE48(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_IDLE;
        sub_8003368(&gPlayerSprite, 321, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801EEBC(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else if (sub_8003770(&gPlayerSprite)) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void sub_801EF20(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sub_8003368(&gPlayerSprite, 377, 0, 0);
        sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A]);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801EFA4(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sub_8003368(&gPlayerSprite, 377, 0, 0);
        sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A]);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801F028(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sub_8003368(&gPlayerSprite, 377, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801F09C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            sub_8017744();
            return;

        case B_BUTTON:
            sub_8018544();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_IDLE;
            sub_8003368(&gPlayerSprite, 377, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_801F3C8(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_80186F4(0);
            } else {
                sub_8017744();
            }
            return;

        case B_BUTTON:
            sub_8018544();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_801F68C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_JUMP_ATTACK_START;
            sub_8003368(&gPlayerSprite, 353, 0, 1);
            sub_8016790(10, gPlayerSprite.field_A);
            dword_20021D4 = PLAY_SFX(186);
            return;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_JUMP_FALL;
        sub_8003368(&gPlayerSprite, 393, 0, 1);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801F900(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_JUMP_ATTACK_END;
            sub_8003368(&gPlayerSprite, 353, 0, 1);
            sub_8016790(10, gPlayerSprite.field_A);
            dword_20021D4 = PLAY_SFX(186);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_801FB74(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_801FB8C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_JUMP_ATTACK_END;
    }

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_JUMP;
        sub_8003368(&gPlayerSprite, 385, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801FC00(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_JUMP_FALL;
        sub_8003368(&gPlayerSprite, 393, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_801FC54(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            sub_801756C();
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_68;
            sub_8003368(&gPlayerSprite, 529, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            sub_0804200C(3);
            return;
    }

    if (sub_801A334()) {
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;
    }
}

static void sub_801FF64(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            sub_801756C();
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_68;
            sub_8003368(&gPlayerSprite, 529, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            sub_0804200C(3);
            return;
    }

    if (sub_801A334()) {
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_40;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_39;
            sub_8003368(&gPlayerSprite, 505, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;
    }
}

static void sub_80202F0(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_42;
    }

    if (sub_801A334()) {
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_80204C4(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_801A334()) {
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_80206A8(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_801A334();
}

static void sub_80206C4(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_39;
        sub_8003368(&gPlayerSprite, 505, 0, 0);
        sub_8016790(5, gPlayerSprite.field_A);
        gGameStatus.field_12--;
        sub_08040204(3, gGameStatus.field_12);
        sub_08041FA4(3);
    }
}

static void sub_8020738(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_80207A8(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
        sub_8003368(&gPlayerSprite, 257, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_80207FC(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (!sub_08016EE0()) {
                sub_801738C();
            }
            return;

        case B_BUTTON:
            shoot_egg(TRUE);
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_74;
            sub_8003368(&gPlayerSprite, 529, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case R_BUTTON:
            select_next_available_egg(FALSE);
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_8020B74(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_800DE9C();
                sub_80186F4(0);
            } else if (!sub_08016EE0()) {
                sub_801738C();
            }
            return;

        case B_BUTTON:
            shoot_egg(TRUE);
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_74;
            sub_8003368(&gPlayerSprite, 529, 0, 1);
            sub_8016790(0, gPlayerSprite.field_A);
            return;

        case R_BUTTON:
            select_next_available_egg(FALSE);
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_8020E70(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_8020E88(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_8020EA0(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_800DE9C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_IDLE;
    sub_8003368(&gPlayerSprite, 25, 0, 0);
    sub_8016790(0, gPlayerSprite.field_A);
}

static void sub_8020EEC(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_SHOOTER_FALL;
        sub_80033A4(&gPlayerSprite, 281, 0, 0);
    }

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_egg(TRUE);
            return;

        case R_BUTTON:
            select_next_available_egg(FALSE);
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_802112C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_egg(TRUE);
            return;

        case R_BUTTON:
            select_next_available_egg(FALSE);
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_8021328(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            sub_80185FC();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_IDLE;
            sub_8003368(&gPlayerSprite, 417, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(194);
            break;
    }
}

static void sub_80216B0(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                if (audio_fx_still_active(dword_20021DC)) {
                    if (gCanPlaySfx) {
                        audio_halt_fx(dword_20021DC);
                    }
                }
                sub_80186F4(0);
            }
            return;

        case B_BUTTON:
            sub_80185FC();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(195);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(195);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(195);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(195);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(195);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(195);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(195);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            dword_20021DC = PLAY_SFX(195);
            break;

        default:
            if (!audio_fx_still_active(dword_20021DC)) {
                dword_20021DC = PLAY_SFX(194);
            }
            break;
    }
}

static void sub_8021CF8(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else {
        if (sub_8003770(&gPlayerSprite) && !audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void sub_8021D5C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_8021D74(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_TANK_IDLE;
        sub_8003368(&gPlayerSprite, 417, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
        if (audio_fx_still_active(dword_20021DC)) {
            if (gCanPlaySfx) {
                audio_halt_fx(dword_20021DC);
            }
        }
        dword_20021DC = PLAY_SFX(194);
    }
}

static void sub_8021E54(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_80186F4(0);
            } else {
                sub_8017824();
            }
            return;

        case B_BUTTON:
            sub_8018678();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_8022118(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_80186F4(0);
            } else {
                sub_8017824();
            }
            return;

        case B_BUTTON:
            sub_8018678();
            return;

        case R_BUTTON:
            sub_8017958();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_80223F0(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            sub_8017824();
            return;

        case B_BUTTON:
            sub_8018678();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
            sub_8003368(&gPlayerSprite, 465, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_802271C(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            sub_8017824();
            return;

        case B_BUTTON:
            sub_8018678();
            return;

        case R_BUTTON:
            sub_8017958();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.field_A != 1) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.field_A != 3) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.field_A != 5) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.field_A != 7) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.field_A != 0) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.field_A != 4) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.field_A != 6) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.field_A != 2) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0, 0);
            }
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
            sub_8003368(&gPlayerSprite, 473, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            break;
    }
}

static void sub_8022A4C(s32 keyPressed, s32 keyDown) {
    fx32 x, y, z;

    sub_8016710(&keyPressed, &keyDown);

    if (gPlayerPos.y == gPlayerShadowPos.y) {
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
    }

    if ((keyPressed & JOY_EXCL_DPAD) == 1 && !byte_30029F8) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_95;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x18000, 0);
        return;
    }

    switch (keyDown & JOY_EXCL_DPAD) {
        default:
            sub_80038C4(dword_2000FC8, &x, &y, &z);
            if (y < FX32_CONST(-0.75)) {
                CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(-0.75), 0x3100);
            }
            break;

        case B_BUTTON:
            sub_8018678();
            return;

        case R_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_96;
            sub_8003368(&gPlayerSprite, 457, 0, 1);
            CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 1) {
                    gPlayerSprite.field_A = 1;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 3) {
                    gPlayerSprite.field_A = 3;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 5) {
                    gPlayerSprite.field_A = 5;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 7) {
                    gPlayerSprite.field_A = 7;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 0) {
                    gPlayerSprite.field_A = 0;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 4) {
                    gPlayerSprite.field_A = 4;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 6) {
                    gPlayerSprite.field_A = 6;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 2) {
                    gPlayerSprite.field_A = 2;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0, 0);
            }
            break;

        default:
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            break;
    }
}

static void sub_8022E08(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            sub_8018678();
            return;

        case R_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_96;
            sub_8003368(&gPlayerSprite, 457, 0, 1);
            CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
            return;
    }

    if ((keyPressed & JOY_EXCL_DPAD) != A_BUTTON) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_84;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
        return;
    }

    if (!byte_30029F8) {
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x18000, 0);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 1) {
                    gPlayerSprite.field_A = 1;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 3) {
                    gPlayerSprite.field_A = 3;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 5) {
                    gPlayerSprite.field_A = 5;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 7) {
                    gPlayerSprite.field_A = 7;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 0) {
                    gPlayerSprite.field_A = 0;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 4) {
                    gPlayerSprite.field_A = 4;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 6) {
                    gPlayerSprite.field_A = 6;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.field_A != 2) {
                    gPlayerSprite.field_A = 2;
                    sub_8003368(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0, 0);
            }
            break;

        default:
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            break;
    }
}

static void sub_8023188(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
        sub_800C1E8(byte_2001094, dword_2001098, dword_200109C, dword_20010A0, 1, 0);
        sub_8017C50();
        sub_800387C(dword_2000FC8);
    }
}

static void sub_8023200(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            sub_8018678();
            break;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_JUMP_FALL;
        sub_8003368(&gPlayerSprite, 441, 0, 1);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_80233F0(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            sub_8018678();
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_80235E4(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            sub_8018678();
            break;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_WATER_JUMP_FALL;
        sub_8003368(&gPlayerSprite, 441, 0, 1);
        CallARM_store_jump_value(dword_2000FC8, 0);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_80237D4(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            sub_8018678();
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.field_A != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 1;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 3;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.field_A != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 5;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.field_A != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 7;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.field_A != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 0;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.field_A != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 4;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.field_A != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 6;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.field_A != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.field_A = 2;
                sub_8003368(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.field_A], 0);
            }
            break;
    }
}

static void sub_80239C0(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite) && gGameStatus.health) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
        sub_8003368(&gPlayerSprite, 465, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_8023A40(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
        sub_8003368(&gPlayerSprite, 473, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void sub_8023AB4(s32 keyPressed, s32 keyDown) {
    if (sub_8003770(&gPlayerSprite)) {
        if (gGameStatus.health == 0) {
            if (byte_2001370) {
                restore_full_health();
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_84;
                sub_8003368(&gPlayerSprite, 457, 0, 0);
                sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
                sub_8016790(0, gPlayerSprite.field_A);
            } else {
                sub_8016890();
            }
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_84;
            sub_8003368(&gPlayerSprite, 457, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        }
    }
}

static void sub_8023B88(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else {
        if (sub_8003770(&gPlayerSprite) && !audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void sub_8023BEC(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void sub_8023C04(s32 keyPressed, s32 keyDown) {
    if (sub_8003770(&gPlayerSprite)) {
        sub_0800C388(dword_20021E8, dword_20021EC);
        if (byte_20010A4) {
            gPlayerSprite.field_A = byte_20010A5;
            word_20010AC = gKeysPressed & 0x3FF;
        }
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_84;
        sub_8003368(&gPlayerSprite, 457, 0, 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 12544);
    }
}

static void sub_8023C94(s32 keyPressed, s32 keyDown) {
    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_egg(FALSE);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPlayerSprite.field_A = 1;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPlayerSprite.field_A = 3;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPlayerSprite.field_A = 5;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPlayerSprite.field_A = 7;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_UP:
            gPlayerSprite.field_A = 0;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_DOWN:
            gPlayerSprite.field_A = 4;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_LEFT:
            gPlayerSprite.field_A = 6;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case DPAD_RIGHT:
            gPlayerSprite.field_A = 2;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }
}

static void sub_8023D78(s32 keyPressed, s32 keyDown) {
    if (sub_8003770(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_97;
        sub_8003368(&gPlayerSprite, 257, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

static void nullsub_7(s32 keyPressed, s32 keyDown) {
}
