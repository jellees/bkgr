#include "global.h"
#include "main.h"
#include "audio_b.h"
#include "pause_menu.h"
#include "debug.h"
#include "common.h"

void sub_8016434() {
    sub_8016440();
}

void sub_8016440() {
    int i;

    byte_20020BC = 0;
    byte_20021C5 = 0;
    byte_20021C6 = 0;
    byte_20021C7 = 0;
    byte_20020B3 = 0;
    byte_20021BE = 0;
    byte_20021C4 = 1;
    dword_20020B8 = -1;
    dword_20020B4 = -1;
    dword_20021DC = -1;

    for (i = 0; i < MOVE_COUNT; i++) {
        gUnlockedMoves[i] = FALSE;
    }

    gUnlockedMoves[MOVE_0] = TRUE;
    gUnlockedMoves[MOVE_16] = TRUE;
    gUnlockedMoves[MOVE_17] = TRUE;
    gUnlockedMoves[MOVE_CANDLE_ATTACK] = TRUE;
    gUnlockedMoves[MOVE_14] = TRUE;
    gUnlockedMoves[MOVE_11] = TRUE;

    for (i = 0; i < 128; i++) {
        gPlayerStateSettings[i] = word_8065104[i];
    }
}

void sub_80164E0(u8* buffer, s32* a2, u32* a3) {
    int i;
    s32 r5;
    u32 r6;
    u8 bits;
    int counter;

    r5 = *a2;
    r6 = *a3;

    bits = 0;
    counter = 0;

    for (i = 0; i < MOVE_COUNT; i++) {
        bits = bits | gUnlockedMoves[i];
        counter++;
        if (counter == 8) {
            buffer[r5] = bits;
            r6 += buffer[r5++];
            bits = 0;
            counter = 0;
        } else {
            bits <<= 1;
        }
    }

    if (counter != 0) {
        bits <<= (7 - counter);
        buffer[r5] = bits;
        r6 += buffer[r5++];
    }

    buffer[r5] = gTransformation;
    r6 += buffer[r5++];
    buffer[r5] = byte_20021BE;
    r6 += buffer[r5++];

    *a2 = r5;
    *a3 = r6;
}

void sub_801657C(u8* buffer, s32* a2, u32* a3) {
    int i;
    s32 r5;
    u32 r6;
    u8 bits;
    int counter;

    r5 = *a2;
    r6 = *a3;

    counter = 0;
    bits = buffer[r5];
    r6 += buffer[r5++];

    for (i = 0; i < MOVE_COUNT; i++) {
        if (counter == 8) {
            counter = 0;
            bits = buffer[r5];
            r6 += buffer[r5++];
        }
        gUnlockedMoves[i] = (bits >> (7 - counter)) & 1;
        counter++;
    }

    gTransformation = buffer[r5];
    r6 += buffer[r5++];
    byte_20021BE = buffer[r5];
    r6 += buffer[r5++];

    *a2 = r5;
    *a3 = r6;
}

void sub_8016624(s32 keyPressed, s32 keyDown) {
    if (byte_20021CB) {
        if ((keyPressed & 1)) {
            dword_20021E0 += 0x600;
            if (dword_20021E0 > 0x1000)
                dword_20021E0 = 0x1000;
            CallARM_store_jump_value(dword_2000FC8, dword_20021E0);
        } else {
            byte_20021CB = 0;
        }
    }
}

void sub_8016670() {
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_35;
}

void sub_8016688() {
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_101;
}

void sub_80166A0() {
    sub_8063578();
    if (byte_203FA88) {
        dword_2001108++;
        if (dword_2001108 == dword_80CEF78) {
            sub_0802FEDC(335);
        } else {
            sub_0802FEDC(333);
        }
        sub_8034460(331, 0, 4, 0);
    } else {
        sub_0802FEDC(334);
        sub_8034460(330, 0, 4, 0);
    }
}

int sub_8016710(s32* keyPressed, s32* keyDown) {
    if (!byte_20020BC) {
        return FALSE;
    }

    if ((*keyDown & 0x30F) == 1) {
        sub_8016B0C();
        PLAY_SFX(42);
        *keyPressed = 0;
        *keyDown = 0;
        return FALSE;
    }

    *keyPressed = 0;
    *keyDown = 0;
    return TRUE;
}

void sub_8016790(int a1, int a2) {
    u8 v1;

    stru_3003578.field_0 = dword_80CB9F0[a1][a2] << 16;
    stru_3003578.field_4 = dword_80CBCD0[a1][a2] << 16;
    stru_3003578.field_8 = dword_80CBFB0[a1][a2] << 16;
    stru_3003578.field_E = byte_80CB94C[a1];
    stru_3003578.field_C = word_80CB964[a1];

    v1 = byte_80CB992[a1];
    if (v1 != byte_3003588) {
        byte_3003588 = v1;
    }

    if (!byte_3003588) {
        sub_8003894(dword_2000FC8, dword_80CC7EC[stru_3002950.floorType]);
    } else {
        sub_8003894(dword_2000FC8, dword_80CC818[stru_3002950.floorType]);
    }

    if (gTransformation == TRANSFORMATION_BANJO) {
        dword_3003300 = dword_80CB9A9[a1][0] << 16;
        dword_3003308 = dword_80CB9A9[a1][1] << 16;
        dword_3003304 = dword_80CB9A9[a1][2] << 16;
    }
}

void sub_8016890() {
    if ((gPlayerStateSettings[gPlayerState] & 4) != 0) {
        sub_800DE9C();
    }

    gPreviousPlayerState = gPlayerState;

    if (gTransformation == TRANSFORMATION_MOUSE) {
        gPlayerState = PLAYER_STATE_MOUSE_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.field_13 = 0;
        } else {
            sub_8003368(&gPlayerSprite, 289, 0, 1);
        }
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        gPlayerState = PLAYER_STATE_CANDLE_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.field_13 = 0;
        } else {
            sub_8003368(&gPlayerSprite, 345, 0, 1);
        }
    } else if (gTransformation == TRANSFORMATION_TANK) {
        if (audio_fx_still_active(dword_20021DC) && gCanPlaySfx) {
            audio_halt_fx(dword_20021DC);
        }
        gPlayerState = PLAYER_STATE_TANK_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.field_13 = 0;
        } else {
            sub_8003368(&gPlayerSprite, 409, 0, 1);
        }
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        gPlayerState = PLAYER_STATE_92;
        if (byte_20020B3) {
            gPlayerShadowSprite.field_13 = 0;
        } else {
            sub_8003368(&gPlayerSprite, 481, 0, 1);
        }
    } else {
        gPlayerShadowSprite.field_13 = 0;
        gPlayerState = PLAYER_STATE_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.field_13 = 0;
        } else {
            sub_8003368(&gPlayerSprite, 217, 0, 1);
        }
    }

    dword_20021D8 = PLAY_SFX(173);
    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    sub_8016790(0, gPlayerSprite.field_A);
    byte_200108D = 0;
    gPlayerSprite.field_10 = 0;
    byte_200108E = 0;
}

int sub_8016A5C(int a1) {
    switch (a1) {
        case 1:
            return sub_80342CC(219, 0);

        case 2:
            return sub_80342CC(220, 0);

        case 3:
            return sub_80342CC(221, 0);

        case 4:
            return sub_80342CC(222, 0);
    }

    return 0;
}

void sub_8016A94(int a1) {
    if ((gPlayerStateSettings[gPlayerState] & 8) == 0 && gGameStatus.health != 0
        && (gPlayerStateSettings[gPlayerState] & 0x1000) == 0) {
        sub_08040204(56, a1);
        byte_20020BC = 1;
        byte_200108E = 1;
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    }
}

void sub_8016B0C() {
    sub_8042250();
}

void sub_8016B18() {
    init_function(42);
    sub_8034460(253, 0, 5, 0);
    if (gCanChangeBgm) {
        audio_start_tune(6);
    }
}

void sub_8016B44() {
    sub_8048B1C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_98;
    sub_8003368(&gPlayerSprite, 265, 0, 1);
    PLAY_SFX(21);
    sub_8016790(0, gPlayerSprite.field_A);
    gSelectedEgg = 0;
    increase_eggs(15);
    sub_800DE04();
}

void sub_8016BD0(int a1) {
    if (!a1) {
        sub_804888C(dword_203DFB8[(*dword_203F8B4)[15]]);
    }

    if (gCanChangeBgm) {
        audio_start_tune(1);
    }

    sub_800DE9C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_IDLE;
    sub_8003368(&gPlayerSprite, 25, 0, 0);
    sub_8016790(0, gPlayerSprite.field_A);
    byte_2002E4D = a1;
    byte_2002E4C = 1;
    dword_203DFDC = dword_20021C0;
    gInInteractionArea = 1;
    dword_203DFE0 = dword_20021C0;
    sub_80186F4(1);
}

void sub_8016C78(u8 a1) {
    gPlayerSprite.field_A = a1;

    if (gTransformation == TRANSFORMATION_MOUSE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_IDLE;
        sub_8003368(&gPlayerSprite, 321, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sub_8003368(&gPlayerSprite, 377, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    } else if (gTransformation == TRANSFORMATION_TANK) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_TANK_IDLE;
        sub_8003368(&gPlayerSprite, 417, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(0, gPlayerSprite.field_A);
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        if ((gPlayerStateSettings[gPlayerState] & 0x100) != 0) {
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
            sub_8003368(&gPlayerSprite, 473, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
            sub_8003368(&gPlayerSprite, 465, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        }
    } else {
        if ((gPlayerStateSettings[gPlayerState] & 0x100) != 0) {
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM_IDLE;
            sub_8003368(&gPlayerSprite, 105, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPlayerState] & 0x8000) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
            sub_800378C(&gPlayerSprite, 6);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            if (dword_20020B8 != -1) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20020B8);
                }
                dword_20020B8 = -1;
            }
            sub_8016790(15, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPlayerState] & 4) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPlayerState] & 0x4000) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_39;
            sub_8003368(&gPlayerSprite, 505, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(5, gPlayerSprite.field_A);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sub_8003368(&gPlayerSprite, 25, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
        }
    }
}

int sub_08016EE0() {
    int r7;

    if (!byte_203DFC8) {
        return 0;
    }

    r7 = 1;

    if (dword_20020B8 != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B8);
        }
        dword_20020B8 = -1;
    }

    switch (word_203DFCA) {
        case 152:
            if (gPlayerState != PLAYER_STATE_101) {
                sub_800386C(dword_2000FC8, 0, 0);
                sub_8016C78(0);
                init_arcade_menu();
            }
            break;

        case 118:
            if (gPlayerState != PLAYER_STATE_35 && byte_20021C4) {
                byte_20021C4 = 0;
                sub_800386C(dword_2000FC8, 0, 0);
                sub_8016C78(0);
                sub_8016670();
                if (!sub_80342CC(328, 0)) {
                    sub_80342F8(328, 0);
                } else {
                    sub_80342F8(329, 0);
                }
            }
            break;

        case 108:
            if (sub_80342CC(205, 0)) {
                r7 = 0;
                break;
            }
            init_function(17);
            sub_8034460(406, 0, 0, 0);
            break;

        case 109:
            if (!sub_80342CC(205, 0)) {
                r7 = 0;
                break;
            }
            init_function(17);
            sub_8034460(407, 0, 0, 0);
            break;

        case 43:
            if (byte_203E10F) {
                byte_20020B2 = 1;
                sub_80342F8(223, gUnlockedLevels);
                dword_203F98C = &unk_80B21B4;
                word_203F992 = dword_80B21B8;
                init_function(byte_80CEBC8[gUnlockedLevels++]);
                sub_8034460(228, 0, 2, 0);
                sub_8034460(229, 0, 0, 0);
                break;
            }
            r7 = 0;
            break;

        case 20:
            if (gUnlockedMoves[MOVE_22]) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_38;
                sub_8003368(&gPlayerSprite, 233, 13, 1);
                sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
                sub_8016790(22, gPlayerSprite.field_A);
                PLAY_SFX(19);
                PLAY_SFX(209);
                break;
            }
            r7 = 0;
            break;

        case 21:
            if (!gUnlockedMoves[MOVE_5]) {
                r7 = 0;
                break;
            }
            if (!gGameStatus.field_12) {
                sub_08040204(3, gGameStatus.field_12);
                r7 = 0;
                break;
            }
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_67;
            sub_8003368(&gPlayerSprite, 497, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(5, gPlayerSprite.field_A);
            PLAY_SFX(206);
            byte_2002094 = 180;
            byte_2002095 = 180;
            break;

        default:
            ASSERT(0);
            break;
    }

    sub_800DE9C();
    return r7;
}

void DoPackWack() {
    if (gUnlockedMoves[MOVE_PACK_WACK]) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_PACK_WACK_START;
        sub_8003368(&gPlayerSprite, 177, 0, 1);
        sub_8016790(0, gPlayerSprite.field_A);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    }
}

void DoJump() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    sub_8017D9C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_JUMP;
    sub_8003368(&gPlayerSprite, 9, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX(RandomMinMax(0, 2));
    sub_8016790(0, gPlayerSprite.field_A);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

void sub_801738C() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_SHOOTER_JUMP;
    sub_8003368(&gPlayerSprite, 273, 0, 0);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX(RandomMinMax(0, 2));
    sub_8016790(0, gPlayerSprite.field_A);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

void sub_8017480() {
    if (!gFloorPlaneResult.isColliding && !dword_203DFC4) {
        return;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_KAZOOIE_JUMP;
    sub_8003368(&gPlayerSprite, 193, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    if (dword_20020B8 != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B8);
        }
        dword_20020B8 = -1;
    }
    PLAY_SFX(20);
    sub_8016790(15, gPlayerSprite.field_A);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

void sub_801756C() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    sub_8017D9C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_41;
    sub_8003368(&gPlayerSprite, 513, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX(RandomMinMax(0, 2));
    sub_8016790(5, gPlayerSprite.field_A);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

void sub_8017664() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_MOUSE_JUMP;
    sub_8003368(&gPlayerSprite, 305, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(3.25), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX_PITCH(RandomMinMax(0, 2), 0x18000);
    sub_8016790(0, gPlayerSprite.field_A);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

void sub_8017744() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_CANDLE_JUMP;
    sub_8003368(&gPlayerSprite, 385, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX_PITCH(RandomMinMax(0, 2), 0x18000);
    sub_8016790(0, gPlayerSprite.field_A);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

void sub_8017824() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0) {
        sub_8017D9C();
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_WATER_JUMP;
        sub_8003368(&gPlayerSprite, 433, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(5.5), 0);
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_JUMP;
        sub_8003368(&gPlayerSprite, 433, 0, 1);
        dword_20021E0 = 0xFFFFE000;
        CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
        byte_20021CB = 1;
    }

    PLAY_SFX(193);
    sub_8016790(0, gPlayerSprite.field_A);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

void sub_8017958() {
    if (!gUnlockedMoves[MOVE_21] && gTransformation != TRANSFORMATION_OCTOPUS) {
        return;
    }

    if ((gFloorPlaneResult.warpDestRoom & 0x80) == 0) {
        return;
    }

    dword_20021E8 = gFloorPlaneResult.warpDestRoom;
    dword_20021EC = gFloorPlaneResult.warpDestWarp;

    if (gTransformation != TRANSFORMATION_OCTOPUS) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_6;
        sub_8003368(&gPlayerSprite, 113, 0, 1);
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_94;
        sub_8003368(&gPlayerSprite, 489, 0, 1);
    }

    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    PLAY_SFX(12);
    sub_8016790(0, gPlayerSprite.field_A);
    sub_800C604();
}

void sub_8017A54() {
    gPreviousPlayerState = gPlayerState;
    if (gTransformation == TRANSFORMATION_OCTOPUS) {
        gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
        sub_8003368(&gPlayerSprite, 465, 0, 0);
    } else {
        gPlayerState = PLAYER_STATE_IDLE;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_0804200C(57);
        if (gGameStatus.field_16 != gGameStatus.field_17) {
            gGameStatus.field_16 = gGameStatus.field_17;
            sub_08040204(57, gGameStatus.field_16);
            PLAY_SFX(124);
        }
    }
    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    sub_8016790(0, gPlayerSprite.field_A);
    sub_800387C(dword_2000FC8);
}

void sub_8017B34(int a1) {
    if (!a1) {
        if (byte_20010A4) {
            gPlayerSprite.field_A = byte_20010A5;
            word_20010AC = gKeysPressed & KEYS_MASK;
        }
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_45;
        sub_8003368(&gPlayerSprite, 57, 0, 0);
        gPlayerShadowSprite.field_13 = 0;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
        word_2002096 = 600;
        word_2002098 = 600;
        if (!sub_080420E8(56)) {
            sub_08040204(57, gGameStatus.field_16);
            sub_08041FA4(57);
        }
    } else {
        if (byte_20010A4) {
            gPlayerSprite.field_A = byte_20010A5;
            word_20010AC = gKeysPressed & KEYS_MASK;
        }
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_84;
        sub_8003368(&gPlayerSprite, 457, 0, 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
    }
}

void sub_8017C50() {
    if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0
        || (gPlayerStateSettings[gPlayerState] & 0x800) != 0
        || (gPlayerStateSettings[gPlayerState] & 0x400) != 0) {
        return;
    }

    if ((gPlayerStateSettings[gPlayerState] & 4) != 0) {
        sub_800DE9C();
    }

    if ((gPlayerStateSettings[gPlayerState] & 0x4000) != 0) {
        sub_0804200C(3);
    }

    gPreviousPlayerState = gPlayerState;

    if (gTransformation == TRANSFORMATION_OCTOPUS) {
        gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
        sub_8003368(&gPlayerSprite, 473, 0, 0);
    } else {
        gPlayerState = PLAYER_STATE_SWIM_IDLE;
        sub_8003368(&gPlayerSprite, 105, 0, 0);
    }

    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    gPlayerShadowSprite.field_13 = 1;

    if (dword_20020B8 != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B8);
        }
        dword_20020B8 = -1;
    }

    if (audio_fx_still_active(dword_20020B4)) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B4);
        }
    }

    PLAY_SFX(12);

    sub_8016790(0, gPlayerSprite.field_A);
}

void sub_8017D9C() {
    if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0) {
        gPlayerShadowSprite.field_13 = 0;
        if (gTransformation == TRANSFORMATION_OCTOPUS) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            sub_8003368(&gPlayerSprite, 425, 0, 0);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            sub_8003368(&gPlayerSprite, 1, 0, 0);
        }
    }
}

void sub_8017E1C() {
    if (!gUnlockedMoves[MOVE_CLIMB]) {
        return;
    }

    if ((gPlayerStateSettings[gPlayerState] & 0x40) != 0) {
        return;
    }

    if (gTransformation != TRANSFORMATION_BANJO) {
        return;
    }

    if ((gPlayerStateSettings[gPlayerState] & 4) != 0) {
        sub_800DE9C();
    }

    if ((gPlayerStateSettings[gPlayerState] & 0x400) != 0) {
        if (sub_80038AC(dword_2000FC8)) {
            sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
        }
        sub_800387C(dword_2000FC8);
        byte_20021C5 = 0;
        byte_20021C6 = 0;
        byte_20021C7 = 0;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_CLIMB;
    sub_8003368(&gPlayerSprite, 121, 0, 0);
    if (dword_20020B8 != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B8);
        }
        dword_20020B8 = -1;
    }
    sub_8016790(0, gPlayerSprite.field_A);
}

void sub_8017F14() {
    if ((gPlayerStateSettings[gPlayerState] & 0x40) != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sub_8003368(&gPlayerSprite, 25, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    }
}

void DoFeatheryFlap() {
    if (gUnlockedMoves[MOVE_FEATHERY_FLAP] && !byte_20021C7 && gGameStatus.health != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_FEATHERY_FLAP;
        sub_8003368(&gPlayerSprite, 89, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 12288);
        byte_20021C7 = 1;
        PLAY_SFX(19);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

void DoAirAttack() {
    if (gUnlockedMoves[MOVE_AIR_ATTACK] && !byte_20021C6 && gGameStatus.health != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_AIR_ATTACK;
        sub_8003368(&gPlayerSprite, 169, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3000);
        byte_20021C6 = 1;
        byte_20021C8 = 0;
        dword_20021D0 = PLAY_SFX(29);
        sub_8016790(3, gPlayerSprite.field_A);
    }
}

void DoBillDrill() {
    if (gUnlockedMoves[MOVE_DRILL_BILL] && !byte_20021C5 && gGameStatus.health) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_BILL_DRILL_START;
        sub_8003368(&gPlayerSprite, 129, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3000);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
        byte_20021C5 = 1;
        dword_20020B4 = PLAY_SFX(23);
        sub_8016790(0, gPlayerSprite.field_A);
    }
}

void sub_80181B8(fx32* height) {
    if ((gPlayerStateSettings[gPlayerState] & 0x20) != 0) {
        return;
    }

    if (audio_fx_still_active(dword_20020B4)) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B4);
        }
    }

    sub_8017D9C();

    if (byte_203DFE8) {
        byte_203DFE8 = 0;
        *height -= FX32_CONST(5);
        if (*height < 0)
            *height = 0;
    }

    gPreviousPlayerState = gPlayerState;

    switch (gPreviousPlayerState) {
        case PLAYER_STATE_SHOOTER_START:
        case PLAYER_STATE_SHOOTER_JUMP:
        case PLAYER_STATE_SHOOTER_FALL:
        case PLAYER_STATE_SHOOTER_WALK:
        case PLAYER_STATE_SHOOTER_IDLE:
        case PLAYER_STATE_SHOOTER_HURT:
        case PLAYER_STATE_73:
        case PLAYER_STATE_74:
            gPlayerState = PLAYER_STATE_73;
            sub_800378C(&gPlayerSprite, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_CANDLE_ATTACK:
            gPlayerState = PLAYER_STATE_100;
            break;

        case PLAYER_STATE_CANDLE_DIE:
        case PLAYER_STATE_CANDLE_HURT:
        case PLAYER_STATE_CANDLE_WALK:
        case PLAYER_STATE_CANDLE_IDLE:
        case PLAYER_STATE_CANDLE_JUMP:
        case PLAYER_STATE_CANDLE_JUMP_FALL:
        case PLAYER_STATE_CANDLE_JUMP_ATTACK_START:
        case PLAYER_STATE_CANDLE_JUMP_ATTACK_END:
            gPlayerState = PLAYER_STATE_CANDLE_LEDGE_FALL;
            sub_8003368(&gPlayerSprite, 393, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_MOUSE_WALK:
        case PLAYER_STATE_MOUSE_IDLE:
        case PLAYER_STATE_MOUSE_JUMP:
        case PLAYER_STATE_MOUSE_JUMP_FALL:
        case PLAYER_STATE_MOUSE_NIBBLE:
        case PLAYER_STATE_MOUSE_DIE:
        case PLAYER_STATE_MOUSE_HURT:
            gPlayerState = PLAYER_STATE_MOUSE_LEDGE_FALL;
            sub_8003368(&gPlayerSprite, 313, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_TANK_RIDE:
        case PLAYER_STATE_TANK_IDLE:
        case PLAYER_STATE_TANK_DIE:
        case PLAYER_STATE_TANK_HURT:
            gPlayerState = PLAYER_STATE_TANK_LEDGE_FALL;
            sub_8003368(&gPlayerSprite, 417, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_OCTOPUS_IDLE:
        case PLAYER_STATE_OCTOPUS_SWIM_IDLE:
        case PLAYER_STATE_OCTOPUS_WALK:
        case PLAYER_STATE_OCTOPUS_SWIM:
        case PLAYER_STATE_OCTOPUS_JUMP:
        case PLAYER_STATE_OCTOPUS_JUMP_FALL:
        case PLAYER_STATE_OCTOPUS_WATER_JUMP:
        case PLAYER_STATE_OCTOPUS_WATER_JUMP_FALL:
        case PLAYER_STATE_OCTOPUS_HURT:
        case PLAYER_STATE_90:
        case PLAYER_STATE_92:
            gPlayerState = PLAYER_STATE_OCTOPUS_LEDGE_FALL;
            sub_8003368(&gPlayerSprite, 441, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_KAZOOIE_WALK:
        case PLAYER_STATE_KAZOOIE_JUMP:
        case PLAYER_STATE_KAZOOIE_IDLE:
        case PLAYER_STATE_KAZOOIE_FALL:
            gPlayerState = PLAYER_STATE_22;
            sub_8003368(&gPlayerSprite, 201, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            if (dword_20020B8 != -1) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20020B8);
                }
                dword_20020B8 = -1;
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_39:
        case PLAYER_STATE_40:
        case PLAYER_STATE_41:
        case PLAYER_STATE_42:
            gPlayerState = PLAYER_STATE_43;
            sub_8003368(&gPlayerSprite, 513, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_FORWARD_ROLL:
            gPlayerState = PLAYER_STATE_7;
            sub_8016790(2, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_BILL_DRILL_HIT:
            sub_8026714();
        default:
            gPlayerState = PLAYER_STATE_LEDGE_FALL;
            sub_8003368(&gPlayerSprite, 225, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }

    CallARM_store_jump_value(dword_2000FC8, 0);
}

void sub_8018544() {
    if (gUnlockedMoves[MOVE_CANDLE_ATTACK]) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_ATTACK;
        sub_8003368(&gPlayerSprite, 353, 0, 1);
        sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[gPlayerSprite.field_A], 0);
        sub_8016790(10, gPlayerSprite.field_A);
        dword_20021D4 = PLAY_SFX(186);
    }
}

void sub_80185FC() {
    if (byte_203DFD4 != byte_203DFD5 && sub_8030A88() == 0) {
        sub_0802D0A0(5, &gPlayerPos, stru_3002950.playerSpritePriority);
        PLAY_SFX(187);
    }
}

void sub_8018678() {
    if (byte_203DFD4 != byte_203DFD5 && sub_8030A88() <= 1) {
        sub_0802D0A0(6, &gPlayerPos, stru_3002950.playerSpritePriority);
        PLAY_SFX(184);
    }
}

int sub_80186F4(int a1) {
    if ((gPlayerStateSettings[gPlayerState] & 0x400) != 0 || byte_203E16A || byte_203E16B
        || !gGameStatus.health) {
        return 0;
    }

    if (dword_20020B8 != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B8);
        }
        dword_20020B8 = -1;
    }

    if (audio_fx_still_active(dword_20020B4)) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B4);
        }
        dword_20020B4 = -1;
    }

    if ((gPlayerStateSettings[gPlayerState] & 4) != 0) {
        sub_800DE9C();
    }

    hide_room_name();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_99;
    gBGControlActions = 0;
    sub_800386C(dword_2000FC8, 0, 0);
    sub_800387C(dword_2000FC8);
    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
    sub_8016790(0, gPlayerSprite.field_A);
    byte_203DFE9 = a1;
    return 1;
}

void sub_8018810() {
    sub_802FDC8();
    gPlayerState = PLAYER_STATE_DIALOGUE_END;
}

void sub_08018824() {
    if (gGameStatus.health == 0) {
        gPlayerState = gPreviousPlayerState;
        return;
    }

    if (gTransformation == TRANSFORMATION_BANJO) {
        if ((gPlayerStateSettings[gPreviousPlayerState] & 0x200) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM_IDLE;
            sub_8003368(&gPlayerSprite, 105, 0, 0);
            sub_8016790(17, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPreviousPlayerState] & 0x8000) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
            sub_8016790(15, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPreviousPlayerState] & 4) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
            sub_8016790(0, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPreviousPlayerState] & 0x4000) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_39;
            sub_08040204(3, gGameStatus.field_12);
            sub_08041FA4(3);
            sub_8016790(5, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPreviousPlayerState] & 0x100) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_45;
            sub_8003368(&gPlayerSprite, 57, 0, 0);
            sub_8016790(21, gPlayerSprite.field_A);
        } else if ((gPlayerStateSettings[gPreviousPlayerState] & 0x1000) != 0) {
            gPlayerState = gPreviousPlayerState;
            sub_8016790(0, gPlayerSprite.field_A);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sub_8003368(&gPlayerSprite, 25, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
        }
    } else if (gTransformation == TRANSFORMATION_MOUSE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_IDLE;
        sub_8003368(&gPlayerSprite, 321, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sub_8003368(&gPlayerSprite, 377, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    } else if (gTransformation == TRANSFORMATION_TANK) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_TANK_IDLE;
        sub_8003368(&gPlayerSprite, 417, 0, 0);
        sub_8016790(0, gPlayerSprite.field_A);
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
            sub_8003368(&gPlayerSprite, 473, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
            sub_8003368(&gPlayerSprite, 465, 0, 0);
            sub_8016790(0, gPlayerSprite.field_A);
        }
    } else {
        ASSERT(0);
    }
    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
}

void sub_08018A94(int a1) {
    if (gTransformation == TRANSFORMATION_BANJO) {
        if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0) {
            gPlayerSprite.field_A = a1;
            sub_8003368(&gPlayerSprite, 105, 0, 0);
        } else if ((gPlayerStateSettings[gPlayerState] & 0x8000) != 0) {
            gPlayerSprite.field_A = a1;
            sub_800378C(&gPlayerSprite, 6);
            sub_80033A4(&gPlayerSprite, 49, 7, 0);
        } else if ((gPlayerStateSettings[gPlayerState] & 0x4) != 0) {
            gPlayerSprite.field_A = a1;
            sub_8003368(&gPlayerSprite, 257, 0, 0);
        } else {
            gPlayerSprite.field_A = a1;
            sub_8003368(&gPlayerSprite, 25, 0, 0);
        }
    } else if (gTransformation == TRANSFORMATION_MOUSE) {
        gPlayerSprite.field_A = a1;
        sub_8003368(&gPlayerSprite, 321, 0, 0);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        gPlayerSprite.field_A = a1;
        sub_8003368(&gPlayerSprite, 377, 0, 0);
    } else if (gTransformation == TRANSFORMATION_TANK) {
        gPlayerSprite.field_A = a1;
        sub_8003368(&gPlayerSprite, 417, 0, 0);
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0) {
            gPlayerSprite.field_A = a1;
            sub_8003368(&gPlayerSprite, 473, 0, 0);
        } else {
            gPlayerSprite.field_A = a1;
            sub_8003368(&gPlayerSprite, 465, 0, 0);
        }
    } else {
        ASSERT(0);
    }
}

bool32 sub_8018BB0(const struct Sprite* playerSprite) {
    if ((gPlayerStateSettings[gPlayerState] & 0x400) == 0) {
        return TRUE;
    }

    if (byte_203DFE8) {
        byte_203DFE8 = 0;
    }

    if (audio_fx_still_active(dword_20020B4)) {
        if (gCanPlaySfx) {
            audio_halt_fx(dword_20020B4);
        }
    }

    if (gGameStatus.health == 0) {
        if (!byte_2001370) {
            sub_800387C(dword_2000FC8);
            sub_8016890();
            return FALSE;
        }
        restore_full_health();
    }

    gPreviousPlayerState = gPlayerState;

    switch (gPreviousPlayerState) {
        case PLAYER_STATE_BILL_DRILL_FALL:
            gPlayerState = PLAYER_STATE_BILL_DRILL_HIT;
            sub_80033A4(&gPlayerSprite, 153, 0, 2);
            sub_80266C8(3, gBGOffsetVertical, 2);
            if (audio_fx_still_active(dword_20020B4)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20020B4);
                }
            }
            dword_20020B4 = PLAY_SFX(22);
            sub_8016790(4, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_KAZOOIE_JUMP:
        case PLAYER_STATE_KAZOOIE_FALL:
        case PLAYER_STATE_22:
        case PLAYER_STATE_30:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
                sub_8003368(&gPlayerSprite, 49, 7, 0);
                sub_80037F4(&gPlayerSprite, 6);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            } else {
                gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
                sub_8003368(&gPlayerSprite, 49, 7, 0);
                sub_80037F4(&gPlayerSprite, 6);
                sub_800378C(&gPlayerSprite, 6);
            }
            sub_8016790(15, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_MOUSE_JUMP:
        case PLAYER_STATE_MOUSE_JUMP_FALL:
        case PLAYER_STATE_MOUSE_LEDGE_FALL:
        case PLAYER_STATE_MOUSE_HURT:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_MOUSE_WALK;
                sub_8003368(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            } else {
                gPlayerState = PLAYER_STATE_MOUSE_IDLE;
                sub_8003368(&gPlayerSprite, 321, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_CANDLE_HURT:
        case PLAYER_STATE_CANDLE_JUMP:
        case PLAYER_STATE_CANDLE_JUMP_FALL:
        case PLAYER_STATE_CANDLE_LEDGE_FALL:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_CANDLE_WALK;
                sub_8003368(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            } else {
                gPlayerState = PLAYER_STATE_CANDLE_IDLE;
                sub_8003368(&gPlayerSprite, 377, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_91:
            gPlayerState = PLAYER_STATE_84;
            sub_8003368(&gPlayerSprite, 457, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_OCTOPUS_JUMP:
        case PLAYER_STATE_OCTOPUS_JUMP_FALL:
        case PLAYER_STATE_OCTOPUS_WATER_JUMP:
        case PLAYER_STATE_OCTOPUS_WATER_JUMP_FALL:
        case PLAYER_STATE_OCTOPUS_HURT:
        case PLAYER_STATE_OCTOPUS_LEDGE_FALL:
            if (sub_80038AC(dword_2000FC8)) {
                if (gFloorPlaneResult.floorTypeEx == 2 || gFloorPlaneResult.floorType == 2) {
                    gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
                    sub_8003368(&gPlayerSprite, 449, 0, 0);
                    sub_8003884(dword_2000FC8, 0x1CCCD, dword_80CC290[gPlayerSprite.field_A], 0);
                    PLAY_SFX(12);
                } else {
                    gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
                    sub_8003368(&gPlayerSprite, 425, 0, 0);
                    sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
                }
            } else {
                gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
                sub_8003368(&gPlayerSprite, 465, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_TANK_LEDGE_FALL:
        case PLAYER_STATE_TANK_HURT:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_TANK_RIDE;
                sub_8003368(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.field_A], 0);
            } else {
                gPlayerState = PLAYER_STATE_TANK_IDLE;
                sub_8003368(&gPlayerSprite, 417, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_CANDLE_JUMP_ATTACK_START:
        case PLAYER_STATE_CANDLE_JUMP_ATTACK_END:
            gPlayerState = PLAYER_STATE_CANDLE_ATTACK;
            sub_8016790(10, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_41:
        case PLAYER_STATE_42:
        case PLAYER_STATE_43:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_40;
                sub_8003368(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            } else {
                gPlayerState = PLAYER_STATE_39;
                sub_8003368(&gPlayerSprite, 505, 0, 0);
            }
            sub_8016790(5, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_SHOOTER_JUMP:
        case PLAYER_STATE_SHOOTER_FALL:
        case PLAYER_STATE_SHOOTER_HURT:
        case PLAYER_STATE_73:
            sub_80037A0(&gPlayerSprite);
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_SHOOTER_WALK;
                sub_8003368(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, dword_80CC290[gPlayerSprite.field_A], 0);
            } else {
                gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
                sub_8003368(&gPlayerSprite, 257, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_7:
            gPlayerState = PLAYER_STATE_FORWARD_ROLL;
            sub_8016790(2, gPlayerSprite.field_A);
            break;

        case PLAYER_STATE_100:
            gPlayerState = PLAYER_STATE_CANDLE_ATTACK;
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_WALK;
                sub_8003368(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.field_A], 0);
            } else {
                gPlayerState = PLAYER_STATE_IDLE;
                sub_8003368(&gPlayerSprite, 25, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.field_A);
            break;
    }

    sub_800387C(dword_2000FC8);
    byte_20021C5 = 0;
    byte_20021C6 = 0;
    byte_20021C7 = 0;

    return TRUE;
}

void sub_80192D4(int a1, int a2, int a3) {
    if (gGameStatus.health == 0) {
        return;
    }

    word_20010AC = 0;

    if (gIsSlideMiniGame || gPlayerState == PLAYER_STATE_35) {
        PLAY_SFX(RandomMinMax(4, 5));

        decrease_player_health(a1);
        if (gGameStatus.health == 0) {
            if (a3 == 0) {
                if (byte_2001370) {
                    restore_full_health();
                } else {
                    sub_8016890();
                }
            }
        }
        return;
    }

    if ((gPlayerStateSettings[gPlayerState] & 0x4000) != 0) {
        sub_0804200C(3);
    }

    sub_8026714();

    if (gTransformation != TRANSFORMATION_BANJO) {
        sub_08019AAC(a2, a3);
    } else if ((gPlayerStateSettings[gPlayerState] & 0x100) != 0) {
        switch (a3) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_69;
                if (a2 >= 0) {
                    gPlayerSprite.field_A = (a2 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a2], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7],
                                0);
                }
                sub_8003368(&gPlayerSprite, 537, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_69;
                sub_8003368(&gPlayerSprite, 537, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8003368(&gPlayerSprite, 537, 0, 1);
        sub_8016790(0, gPlayerSprite.field_A);
        PLAY_SFX(RandomMinMax(4, 5));
    } else if ((gPlayerStateSettings[gPlayerState] & 4) != 0) {
        switch (a3) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_SHOOTER_HURT;
                if (a2 >= 0) {
                    gPlayerSprite.field_A = (a2 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a2], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7],
                                0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sub_8003368(&gPlayerSprite, 241, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_SHOOTER_HURT;
                sub_8003368(&gPlayerSprite, 241, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.field_A);
        PLAY_SFX(RandomMinMax(4, 5));
    } else if ((gPlayerStateSettings[gPlayerState] & 0x8000) != 0) {
        switch (a3) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_30;
                if (a2 >= 0) {
                    gPlayerSprite.field_A = (a2 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a2], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7],
                                0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sub_8003368(&gPlayerSprite, 209, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_30;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sub_8003368(&gPlayerSprite, 209, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.field_A);
        PLAY_SFX(RandomMinMax(4, 5));

        if (dword_20020B8 != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(dword_20020B8);
            }
            dword_20020B8 = -1;
        }
    } else {
        switch (a3) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_HURT;
                if (a2 >= 0) {
                    gPlayerSprite.field_A = (a2 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a2], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7],
                                0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sub_8003368(&gPlayerSprite, 161, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sub_8003368(&gPlayerSprite, 161, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.field_A);
        PLAY_SFX(RandomMinMax(4, 5));

        if (dword_20020B4 != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(dword_20020B4);
            }
            dword_20020B4 = -1;
        }
    }

    decrease_player_health(a1);
    if (gGameStatus.health == 0) {
        if (a3 == 0) {
            if (byte_2001370) {
                restore_full_health();
            } else {
                sub_8016890();
            }
        }
    } else {
        byte_200108D = 1;
        word_2001090 = 120;
        gPlayerSprite.field_10 = 1;
        byte_200108E = 1;
        word_2001092 = 120;
    }
}

void sub_801990C() {
    sub_8026714();
    if ((gPlayerStateSettings[gPlayerState] & 0x4000) != 0) {
        sub_0804200C(3);
    }

    if (gTransformation != TRANSFORMATION_BANJO) {
        sub_08019AAC(-1, 2);
    } else if ((gPlayerStateSettings[gPlayerState] & 0x100) != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_69;
        sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7], 0);
        sub_8003368(&gPlayerSprite, 537, 0, 1);
        sub_8016790(0, gPlayerSprite.field_A);
    } else if ((gPlayerStateSettings[gPlayerState] & 4) != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_SHOOTER_HURT;
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7], 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
        sub_8003368(&gPlayerSprite, 241, 0, 1);
        sub_8016790(0, gPlayerSprite.field_A);
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_HURT;
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7], 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
        sub_8003368(&gPlayerSprite, 161, 0, 1);
        sub_8016790(0, gPlayerSprite.field_A);
        if (dword_20020B8 != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(dword_20020B8);
            }
            dword_20020B8 = -1;
        }
        if (dword_20020B4 != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(dword_20020B4);
            }
            dword_20020B4 = -1;
        }
    }
}

void sub_08019AAC(int a1, int a2) {
    if (gTransformation == TRANSFORMATION_MOUSE) {
        switch (a2) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_MOUSE_HURT;
                if (a1 >= 0) {
                    gPlayerSprite.field_A = (a1 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7],
                                0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sub_8003368(&gPlayerSprite, 337, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_MOUSE_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sub_8003368(&gPlayerSprite, 337, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.field_A);
        PLAY_SFX_PITCH(RandomMinMax(4, 5), 0x18000);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        switch (a2) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_CANDLE_HURT;
                if (a1 >= 0) {
                    gPlayerSprite.field_A = (a1 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7],
                                0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sub_8003368(&gPlayerSprite, 361, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_CANDLE_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sub_8003368(&gPlayerSprite, 361, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.field_A);
        if (audio_fx_still_active(dword_20021D4)) {
            if (gCanPlaySfx) {
                audio_halt_fx(dword_20021D4);
            }
        }
        PLAY_SFX_PITCH(RandomMinMax(4, 5), 0x18000);
    } else if (gTransformation == TRANSFORMATION_TANK) {
        switch (a2) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_TANK_HURT;
                if (a1 >= 0) {
                    gPlayerSprite.field_A = (a1 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[(gPlayerSprite.field_A + 4) & 7],
                                0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sub_8003368(&gPlayerSprite, 417, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_TANK_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sub_8003368(&gPlayerSprite, 417, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.field_A);
        PLAY_SFX(RandomMinMax(4, 5));
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        if ((gPlayerStateSettings[gPlayerState] & 0x100) != 0) {
            switch (a2) {
                case 2:
                    gPreviousPlayerState = gPlayerState;
                    gPlayerState = PLAYER_STATE_91;
                    if (a1 >= 0) {
                        gPlayerSprite.field_A = (a1 + 4) & 7;
                        sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                    } else {
                        sub_8003884(dword_2000FC8, 0x20000,
                                    dword_80CC290[(gPlayerSprite.field_A + 4) & 7], 0);
                    }
                    sub_8003368(&gPlayerSprite, 481, 0, 1);
                    break;

                case 1:
                    gPreviousPlayerState = gPlayerState;
                    gPlayerState = PLAYER_STATE_91;
                    break;

                case 0:
                    break;
            }

            sub_8016790(0, gPlayerSprite.field_A);
            PLAY_SFX_PITCH(RandomMinMax(4, 5), 0x18000);
        } else {
            switch (a2) {
                case 2:
                    gPreviousPlayerState = gPlayerState;
                    gPlayerState = PLAYER_STATE_OCTOPUS_HURT;
                    if (a1 >= 0) {
                        gPlayerSprite.field_A = (a1 + 4) & 7;
                        sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                    } else {
                        sub_8003884(dword_2000FC8, 0x20000,
                                    dword_80CC290[(gPlayerSprite.field_A + 4) & 7], 0);
                    }
                    CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                    sub_8003368(&gPlayerSprite, 481, 0, 1);
                    break;

                case 1:
                    gPreviousPlayerState = gPlayerState;
                    gPlayerState = PLAYER_STATE_OCTOPUS_HURT;
                    CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                    sub_8003368(&gPlayerSprite, 481, 0, 1);
                    break;

                case 0:
                    break;
            }

            sub_8016790(0, gPlayerSprite.field_A);
            PLAY_SFX_PITCH(RandomMinMax(4, 5), 0x18000);
        }
    } else {
        ASSERT(0);
    }
}

void sub_08019FCC(u32 transformation) {
    switch (transformation) {
        case TRANSFORMATION_BANJO:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sub_8003368(&gPlayerSprite, 25, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            dword_3003300 = 0x160000;
            dword_3003308 = 0x240000;
            dword_3003304 = 0x180000;
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            break;

        case TRANSFORMATION_MOUSE:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_IDLE;
            sub_8003368(&gPlayerSprite, 321, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            DmaTransferObjPalette(&unk_83FD734, 7, 7);
            dword_3003300 = 0x100000;
            dword_3003308 = 0x100000;
            dword_3003304 = 0x100000;
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            break;

        case TRANSFORMATION_CANDLE:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_IDLE;
            sub_8003368(&gPlayerSprite, 377, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            DmaTransferObjPalette(&unk_83FD754, 7, 7);
            dword_3003300 = 0x160000;
            dword_3003308 = 0x180000;
            dword_3003304 = 0x180000;
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            break;

        case TRANSFORMATION_TANK:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_IDLE;
            sub_8003368(&gPlayerSprite, 417, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            DmaTransferObjPalette(&unk_83FD774, 7, 7);
            dword_20021DC = PLAY_SFX(194);
            dword_3003300 = 0x200000;
            dword_3003308 = 0x240000;
            dword_3003304 = 0x200000;
            break;

        case TRANSFORMATION_OCTOPUS:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
            sub_8003368(&gPlayerSprite, 465, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            DmaTransferObjPalette(&unk_83FD794, 7, 7);
            dword_3003300 = 0x160000;
            dword_3003308 = 0x100000;
            dword_3003304 = 0x180000;
            if (audio_fx_still_active(dword_20021DC)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20021DC);
                }
            }
            break;

        default:
            ASSERT(0);
    }

    gTransformation = transformation;
}

void sub_801A2E4() {
    if (gTransformation == TRANSFORMATION_MOUSE) {
        DmaTransferObjPalette(&unk_83FD734, 7, 7);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        DmaTransferObjPalette(&unk_83FD754, 7, 7);
    } else if (gTransformation == TRANSFORMATION_TANK) {
        DmaTransferObjPalette(&unk_83FD774, 7, 7);
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        DmaTransferObjPalette(&unk_83FD794, 7, 7);
    }
}

int sub_801A334() {
    if (byte_2002095 == 0) {
        if (gGameStatus.field_12 == 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_68;
            sub_8003368(&gPlayerSprite, 529, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.field_A], 0);
            sub_8016790(0, gPlayerSprite.field_A);
            sub_0804200C(3);
            return 1;
        }
        byte_2002095 = byte_2002094;
        gGameStatus.field_12--;
        sub_08040204(3, gGameStatus.field_12);
        sub_08041FA4(3);
    } else {
        byte_2002095--;
    }

    return 0;
}

void shoot_egg(bool32 selectNextAvailableEgg) {
    if (byte_203DFD4 == byte_203DFD5 || sub_8030A88() > 1) {
        return;
    }

    if (gSelectedEgg < EGG_BLUE) {
        if (gGameStatus.eggs[EGG_BLUE] == 0) {
            //! Needed to match.
            while (0) {
            }
            return;
        }
    } else {
        if (gGameStatus.eggs[gSelectedEgg] == 0) {
            return;
        }
    }

    sub_0802D0A0(gSelectedEgg, &gPlayerPos, stru_3002950.playerSpritePriority);
    decrease_eggs(1, selectNextAvailableEgg);
    PLAY_SFX(24);
}
