#include "global.h"
#include "common.h"
#include "main.h"
#include "audio_b.h"
#include "pause_menu.h"
#include "debug.h"
#include "room.h"
#include "sprite.h"
#include "player_defs.h"

u16 gPreviousPlayerState;
u16 gPlayerState;
u8 gFeatherTime;
u8 gFeatherTimer;
u16 gOxygenTime;
u16 gOxygenTimer;
bool8 gUnlockedMoves[MOVE_COUNT];
u8 gTransformation;
u8 byte_20020B2;
u8 byte_20020B3;
int gBillDrillSfx;
int gKazooieSfx;
u8 byte_20020BC;
u16 gPlayerStateFlags[PLAYER_STATE_COUNT];
u8 byte_20021BE;
u32 dword_20021C0;
u8 byte_20021C4;
u8 byte_20021C5;
u8 byte_20021C6;
u8 byte_20021C7;
u8 byte_20021C8;
u8 byte_20021C9;
u8 byte_20021CA;
u8 byte_20021CB;
u32 dword_20021CC;
u32 dword_20021D0;
u32 dword_20021D4;
u32 dword_20021D8;
int gTankSfx;
s32 dword_20021E0;
u32 dword_20021E4;
u32 dword_20021E8;
u32 dword_20021EC;

static void (*const sPlayerStateFuncs[PLAYER_STATE_COUNT])(s32, s32);
static const u16 sPlayerStateFlags[PLAYER_STATE_COUNT];

static void sub_08019AAC(int a1, int a2);

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
    gKazooieSfx = -1;
    gBillDrillSfx = -1;
    gTankSfx = -1;

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
        gPlayerStateFlags[i] = sPlayerStateFlags[i];
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

static void sub_8016624(s32 keyPressed, s32 keyDown) {
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

static void sub_8016670() {
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_35;
}

void set_player_state_to_none() {
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_NONE;
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

static bool32 sub_8016710(s32* keyPressed, s32* keyDown) {
    if (!byte_20020BC) {
        return FALSE;
    }

    if ((*keyDown & JOY_EXCL_DPAD) == A_BUTTON) {
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

static void sub_8016790(int a1, int a2) {
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

static void sub_8016890() {
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
        sub_800DE9C();
    }

    gPreviousPlayerState = gPlayerState;

    if (gTransformation == TRANSFORMATION_MOUSE) {
        gPlayerState = PLAYER_STATE_MOUSE_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.attr0Flag9 = 0;
        } else {
            sprite_set_anim(&gPlayerSprite, 289, 0, 1);
        }
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        gPlayerState = PLAYER_STATE_CANDLE_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.attr0Flag9 = 0;
        } else {
            sprite_set_anim(&gPlayerSprite, 345, 0, 1);
        }
    } else if (gTransformation == TRANSFORMATION_TANK) {
        if (audio_fx_still_active(gTankSfx) && gCanPlaySfx) {
            audio_halt_fx(gTankSfx);
        }
        gPlayerState = PLAYER_STATE_TANK_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.attr0Flag9 = 0;
        } else {
            sprite_set_anim(&gPlayerSprite, 409, 0, 1);
        }
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        gPlayerState = PLAYER_STATE_OCTOPUS_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.attr0Flag9 = 0;
        } else {
            sprite_set_anim(&gPlayerSprite, 481, 0, 1);
        }
    } else {
        gPlayerShadowSprite.attr0Flag9 = 0;
        gPlayerState = PLAYER_STATE_DIE;
        if (byte_20020B3) {
            gPlayerShadowSprite.attr0Flag9 = 0;
        } else {
            sprite_set_anim(&gPlayerSprite, 217, 0, 1);
        }
    }

    dword_20021D8 = PLAY_SFX(173);
    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    sub_8016790(0, gPlayerSprite.direction);
    gPlayerIsTransparent = 0;
    gPlayerSprite.objMode = ST_OAM_OBJ_NORMAL;
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
    if (!(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_HURTING) && gGameStatus.health != 0
        && !(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DYING)) {
        sub_08040204(56, a1);
        byte_20020BC = 1;
        byte_200108E = 1;
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    }
}

void sub_8016B0C() {
    sub_8042250();
}

void sub_8016B18() {
    start_script(42);
    sub_8034460(253, 0, 5, 0);
    if (gCanChangeBgm) {
        audio_start_tune(6);
    }
}

void sub_8016B44() {
    sub_8048B1C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_98;
    sprite_set_anim(&gPlayerSprite, 265, 0, 1);
    PLAY_SFX(21);
    sub_8016790(0, gPlayerSprite.direction);
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
    sprite_set_anim(&gPlayerSprite, 25, 0, 0);
    sub_8016790(0, gPlayerSprite.direction);
    byte_2002E4D = a1;
    byte_2002E4C = 1;
    dword_203DFDC = dword_20021C0;
    gInInteractionArea = 1;
    dword_203DFE0 = dword_20021C0;
    start_npc_dialogue(1);
}

void sub_8016C78(u8 a1) {
    gPlayerSprite.direction = a1;

    if (gTransformation == TRANSFORMATION_MOUSE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_IDLE;
        sprite_set_anim(&gPlayerSprite, 321, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sprite_set_anim(&gPlayerSprite, 377, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    } else if (gTransformation == TRANSFORMATION_TANK) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_TANK_IDLE;
        sprite_set_anim(&gPlayerSprite, 417, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DIVING) {
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
            sprite_set_anim(&gPlayerSprite, 473, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
            sprite_set_anim(&gPlayerSprite, 465, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        }
    } else {
        if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DIVING) {
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM_IDLE;
            sprite_set_anim(&gPlayerSprite, 105, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_KAZOOIE_MODE) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_lock_anim_on_frame(&gPlayerSprite, 6);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            if (gKazooieSfx != -1) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gKazooieSfx);
                }
                gKazooieSfx = -1;
            }
            sub_8016790(15, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_WONDERWING_MODE) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_IDLE;
            sprite_set_anim(&gPlayerSprite, 505, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(5, gPlayerSprite.direction);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sprite_set_anim(&gPlayerSprite, 25, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        }
    }
}

static bool32 interact_with_object() {
    bool32 didInteract;

    if (!byte_203DFC8) {
        return FALSE;
    }

    didInteract = TRUE;

    if (gKazooieSfx != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(gKazooieSfx);
        }
        gKazooieSfx = -1;
    }

    switch (word_203DFCA) {
        case 152:
            if (gPlayerState != PLAYER_STATE_NONE) {
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
                didInteract = FALSE;
                break;
            }
            start_script(17);
            sub_8034460(406, 0, 0, 0);
            break;

        case 109:
            if (!sub_80342CC(205, 0)) {
                didInteract = FALSE;
                break;
            }
            start_script(17);
            sub_8034460(407, 0, 0, 0);
            break;

        case 43:
            if (byte_203E10F) {
                byte_20020B2 = 1;
                sub_80342F8(223, gUnlockedLevels);
                dword_203F98C = &unk_80B21B4;
                word_203F992 = dword_80B21B8;
                start_script(byte_80CEBC8[gUnlockedLevels++]);
                sub_8034460(228, 0, 2, 0);
                sub_8034460(229, 0, 0, 0);
                break;
            }
            didInteract = FALSE;
            break;

        case 20:
            if (gUnlockedMoves[MOVE_SHOCK_JUMP]) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_SHOCK_JUMP_START;
                sprite_set_anim(&gPlayerSprite, 233, 13, 1);
                sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
                sub_8016790(22, gPlayerSprite.direction);
                PLAY_SFX(19);
                PLAY_SFX(209);
                break;
            }
            didInteract = FALSE;
            break;

        case 21:
            if (!gUnlockedMoves[MOVE_WONDERWING]) {
                didInteract = FALSE;
                break;
            }
            if (!gGameStatus.goldenFeathers) {
                sub_08040204(3, gGameStatus.goldenFeathers);
                didInteract = FALSE;
                break;
            }
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_START;
            sprite_set_anim(&gPlayerSprite, 497, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(5, gPlayerSprite.direction);
            PLAY_SFX(206);
            gFeatherTime = 180;
            gFeatherTimer = 180;
            break;

        default:
            ASSERT(0);
            break;
    }

    sub_800DE9C();
    return didInteract;
}

static void do_pack_wack() {
    if (gUnlockedMoves[MOVE_PACK_WACK]) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_PACK_WACK_START;
        sprite_set_anim(&gPlayerSprite, 177, 0, 1);
        sub_8016790(0, gPlayerSprite.direction);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    }
}

static void do_jump() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    sub_8017D9C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_JUMP;
    sprite_set_anim(&gPlayerSprite, 9, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX(RandomMinMax(0, 2));
    sub_8016790(0, gPlayerSprite.direction);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

static void do_shooter_jump() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_SHOOTER_JUMP;
    sprite_set_anim(&gPlayerSprite, 273, 0, 0);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX(RandomMinMax(0, 2));
    sub_8016790(0, gPlayerSprite.direction);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

static void do_kazooie_jump() {
    if (!gFloorPlaneResult.isColliding && !dword_203DFC4) {
        return;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_KAZOOIE_JUMP;
    sprite_set_anim(&gPlayerSprite, 193, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    if (gKazooieSfx != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(gKazooieSfx);
        }
        gKazooieSfx = -1;
    }
    PLAY_SFX(20);
    sub_8016790(15, gPlayerSprite.direction);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

static void do_wonderwing_jump() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    sub_8017D9C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_WONDERWING_JUMP;
    sprite_set_anim(&gPlayerSprite, 513, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX(RandomMinMax(0, 2));
    sub_8016790(5, gPlayerSprite.direction);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

static void do_mouse_jump() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_MOUSE_JUMP;
    sprite_set_anim(&gPlayerSprite, 305, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(3.25), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX_PITCH(RandomMinMax(0, 2), 0x18000);
    sub_8016790(0, gPlayerSprite.direction);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

static void do_candle_jump() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_CANDLE_JUMP;
    sprite_set_anim(&gPlayerSprite, 385, 0, 1);
    dword_20021E0 = 0xFFFFE000;
    CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
    byte_20021CB = 1;
    PLAY_SFX_PITCH(RandomMinMax(0, 2), 0x18000);
    sub_8016790(0, gPlayerSprite.direction);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

static void do_octopus_jump() {
    if (!byte_3003588 && gFloorPlaneResult.isColliding && gFloorPlaneResult.floorType == 0xA) {
        return;
    }

    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
        sub_8017D9C();
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_WATER_JUMP;
        sprite_set_anim(&gPlayerSprite, 433, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(5.5), 0);
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_JUMP;
        sprite_set_anim(&gPlayerSprite, 433, 0, 1);
        dword_20021E0 = 0xFFFFE000;
        CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(4), 0xFFFFE000);
        byte_20021CB = 1;
    }

    PLAY_SFX(193);
    sub_8016790(0, gPlayerSprite.direction);
    if (gFloorPlaneResult.field_2C != FX32_CONST(90)) {
        gPlayerPos.y += FX32_CONST(3);
    }
}

static void do_dive() {
    if (!gUnlockedMoves[MOVE_DIVE] && gTransformation != TRANSFORMATION_OCTOPUS) {
        return;
    }

    if ((gFloorPlaneResult.warpDestRoom & 0x80) == 0) {
        return;
    }

    dword_20021E8 = gFloorPlaneResult.warpDestRoom;
    dword_20021EC = gFloorPlaneResult.warpDestWarp;

    if (gTransformation != TRANSFORMATION_OCTOPUS) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE;
        sprite_set_anim(&gPlayerSprite, 113, 0, 1);
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_DIVE;
        sprite_set_anim(&gPlayerSprite, 489, 0, 1);
    }

    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    PLAY_SFX(12);
    sub_8016790(0, gPlayerSprite.direction);
    sub_800C604();
}

void sub_8017A54() {
    gPreviousPlayerState = gPlayerState;
    if (gTransformation == TRANSFORMATION_OCTOPUS) {
        gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
        sprite_set_anim(&gPlayerSprite, 465, 0, 0);
    } else {
        gPlayerState = PLAYER_STATE_IDLE;
        sprite_set_anim(&gPlayerSprite, 25, 0, 0);
        sub_0804200C(57);
        if (gGameStatus.oxygen != gGameStatus.maxOxygen) {
            gGameStatus.oxygen = gGameStatus.maxOxygen;
            sub_08040204(57, gGameStatus.oxygen);
            PLAY_SFX(124);
        }
    }
    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    sub_8016790(0, gPlayerSprite.direction);
    sub_800387C(dword_2000FC8);
}

void sub_8017B34(int a1) {
    if (!a1) {
        if (byte_20010A4) {
            gPlayerSprite.direction = byte_20010A5;
            word_20010AC = gKeysPressed & KEYS_MASK;
        }
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_SINK;
        sprite_set_anim(&gPlayerSprite, 57, 0, 0);
        gPlayerShadowSprite.attr0Flag9 = 0;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
        gOxygenTime = 600;
        gOxygenTimer = 600;
        if (!sub_080420E8(56)) {
            sub_08040204(57, gGameStatus.oxygen);
            sub_08041FA4(57);
        }
    } else {
        if (byte_20010A4) {
            gPlayerSprite.direction = byte_20010A5;
            word_20010AC = gKeysPressed & KEYS_MASK;
        }
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_SINK;
        sprite_set_anim(&gPlayerSprite, 457, 0, 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
    }
}

void sub_8017C50() {
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_SWIMMING
        || gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_DIALOGUE
        || gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_BIT11) {
        return;
    }

    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
        sub_800DE9C();
    }

    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_WONDERWING_MODE) {
        sub_0804200C(3);
    }

    gPreviousPlayerState = gPlayerState;

    if (gTransformation == TRANSFORMATION_OCTOPUS) {
        gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
        sprite_set_anim(&gPlayerSprite, 473, 0, 0);
    } else {
        gPlayerState = PLAYER_STATE_SWIM_IDLE;
        sprite_set_anim(&gPlayerSprite, 105, 0, 0);
    }

    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    gPlayerShadowSprite.attr0Flag9 = 1;

    if (gKazooieSfx != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(gKazooieSfx);
        }
        gKazooieSfx = -1;
    }

    if (audio_fx_still_active(gBillDrillSfx)) {
        if (gCanPlaySfx) {
            audio_halt_fx(gBillDrillSfx);
        }
    }

    PLAY_SFX(12);

    sub_8016790(0, gPlayerSprite.direction);
}

void sub_8017D9C() {
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
        gPlayerShadowSprite.attr0Flag9 = 0;
        if (gTransformation == TRANSFORMATION_OCTOPUS) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
        }
    }
}

void set_player_in_climb_state() {
    if (!gUnlockedMoves[MOVE_CLIMB]) {
        return;
    }

    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_CLIMBING) {
        return;
    }

    if (gTransformation != TRANSFORMATION_BANJO) {
        return;
    }

    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
        sub_800DE9C();
    }

    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_BIT11) {
        if (sub_80038AC(dword_2000FC8)) {
            sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
        }
        sub_800387C(dword_2000FC8);
        byte_20021C5 = 0;
        byte_20021C6 = 0;
        byte_20021C7 = 0;
    }

    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_CLIMB;
    sprite_set_anim(&gPlayerSprite, 121, 0, 0);
    if (gKazooieSfx != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(gKazooieSfx);
        }
        gKazooieSfx = -1;
    }
    sub_8016790(0, gPlayerSprite.direction);
}

void sub_8017F14() {
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_CLIMBING) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sprite_set_anim(&gPlayerSprite, 25, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    }
}

static void do_feathery_flap() {
    if (gUnlockedMoves[MOVE_FEATHERY_FLAP] && !byte_20021C7 && gGameStatus.health != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_FEATHERY_FLAP;
        sprite_set_anim(&gPlayerSprite, 89, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 12288);
        byte_20021C7 = 1;
        PLAY_SFX(19);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void do_air_attack() {
    if (gUnlockedMoves[MOVE_AIR_ATTACK] && !byte_20021C6 && gGameStatus.health != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_AIR_ATTACK;
        sprite_set_anim(&gPlayerSprite, 169, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3000);
        byte_20021C6 = 1;
        byte_20021C8 = 0;
        dword_20021D0 = PLAY_SFX(29);
        sub_8016790(3, gPlayerSprite.direction);
    }
}

static void do_bill_drill() {
    if (gUnlockedMoves[MOVE_DRILL_BILL] && !byte_20021C5 && gGameStatus.health != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_BILL_DRILL_START;
        sprite_set_anim(&gPlayerSprite, 129, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3000);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        byte_20021C5 = 1;
        gBillDrillSfx = PLAY_SFX(23);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

void sub_80181B8(fx32* height) {
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_FALLING_FROM_LEDGE) {
        return;
    }

    if (audio_fx_still_active(gBillDrillSfx)) {
        if (gCanPlaySfx) {
            audio_halt_fx(gBillDrillSfx);
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
        case PLAYER_STATE_SHOOTER_LEDGE_FALL:
        case PLAYER_STATE_SHOOTER_END:
            gPlayerState = PLAYER_STATE_SHOOTER_LEDGE_FALL;
            sprite_lock_anim_on_frame(&gPlayerSprite, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_CANDLE_ATTACK:
            gPlayerState = PLAYER_STATE_CANDLE_ATTACK_LEDGE_FALL;
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
            sprite_set_anim(&gPlayerSprite, 393, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_MOUSE_WALK:
        case PLAYER_STATE_MOUSE_IDLE:
        case PLAYER_STATE_MOUSE_JUMP:
        case PLAYER_STATE_MOUSE_JUMP_FALL:
        case PLAYER_STATE_MOUSE_NIBBLE:
        case PLAYER_STATE_MOUSE_DIE:
        case PLAYER_STATE_MOUSE_HURT:
            gPlayerState = PLAYER_STATE_MOUSE_LEDGE_FALL;
            sprite_set_anim(&gPlayerSprite, 313, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_TANK_RIDE:
        case PLAYER_STATE_TANK_IDLE:
        case PLAYER_STATE_TANK_DIE:
        case PLAYER_STATE_TANK_HURT:
            gPlayerState = PLAYER_STATE_TANK_LEDGE_FALL;
            sprite_set_anim(&gPlayerSprite, 417, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
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
        case PLAYER_STATE_OCTOPUS_DIE:
            gPlayerState = PLAYER_STATE_OCTOPUS_LEDGE_FALL;
            sprite_set_anim(&gPlayerSprite, 441, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_KAZOOIE_WALK:
        case PLAYER_STATE_KAZOOIE_JUMP:
        case PLAYER_STATE_KAZOOIE_IDLE:
        case PLAYER_STATE_KAZOOIE_FALL:
            gPlayerState = PLAYER_STATE_KAZOOIE_LEDGE_FALL;
            sprite_set_anim(&gPlayerSprite, 201, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            if (gKazooieSfx != -1) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gKazooieSfx);
                }
                gKazooieSfx = -1;
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_WONDERWING_IDLE:
        case PLAYER_STATE_WONDERWING_WALK:
        case PLAYER_STATE_WONDERWING_JUMP:
        case PLAYER_STATE_WONDERWING_FALL:
            gPlayerState = PLAYER_STATE_WONDERWING_LEDGE_FALL;
            sprite_set_anim(&gPlayerSprite, 513, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_FORWARD_ROLL:
            gPlayerState = PLAYER_STATE_FORWARD_ROLL_LEDGE_FALL;
            sub_8016790(2, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_BILL_DRILL_HIT:
            sub_8026714();
        default:
            gPlayerState = PLAYER_STATE_LEDGE_FALL;
            sprite_set_anim(&gPlayerSprite, 225, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }

    CallARM_store_jump_value(dword_2000FC8, 0);
}

static void do_candle_attack() {
    if (gUnlockedMoves[MOVE_CANDLE_ATTACK]) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_ATTACK;
        sprite_set_anim(&gPlayerSprite, 353, 0, 1);
        sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(10, gPlayerSprite.direction);
        dword_20021D4 = PLAY_SFX(186);
    }
}

static void shoot_tank_projectile() {
    if (byte_203DFD4 != byte_203DFD5 && sub_8030A88() == 0) {
        sub_0802D0A0(5, &gPlayerPos, stru_3002950.playerSpritePriority);
        PLAY_SFX(187);
    }
}

static void shoot_octopus_projectile() {
    if (byte_203DFD4 != byte_203DFD5 && sub_8030A88() <= 1) {
        sub_0802D0A0(6, &gPlayerPos, stru_3002950.playerSpritePriority);
        PLAY_SFX(184);
    }
}

bool32 start_npc_dialogue(int a1) {
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_BIT11 || byte_203E16A || byte_203E16B
        || gGameStatus.health == 0) {
        return FALSE;
    }

    if (gKazooieSfx != -1) {
        if (gCanPlaySfx) {
            audio_halt_fx(gKazooieSfx);
        }
        gKazooieSfx = -1;
    }

    if (audio_fx_still_active(gBillDrillSfx)) {
        if (gCanPlaySfx) {
            audio_halt_fx(gBillDrillSfx);
        }
        gBillDrillSfx = -1;
    }

    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
        sub_800DE9C();
    }

    hide_room_name();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_DIALOGUE_START;
    gBGControlActions = 0;
    sub_800386C(dword_2000FC8, 0, 0);
    sub_800387C(dword_2000FC8);
    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    sub_8016790(0, gPlayerSprite.direction);
    byte_203DFE9 = a1;
    return TRUE;
}

static void sub_8018810() {
    sub_802FDC8();
    gPlayerState = PLAYER_STATE_DIALOGUE_END;
}

static void sub_08018824() {
    if (gGameStatus.health == 0) {
        gPlayerState = gPreviousPlayerState;
        return;
    }

    if (gTransformation == TRANSFORMATION_BANJO) {
        if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM_IDLE;
            sprite_set_anim(&gPlayerSprite, 105, 0, 0);
            sub_8016790(17, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IN_KAZOOIE_MODE) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
            sub_8016790(15, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
            sub_8016790(0, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IN_WONDERWING_MODE) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_IDLE;
            sub_08040204(3, gGameStatus.goldenFeathers);
            sub_08041FA4(3);
            sub_8016790(5, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IS_DIVING) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_DIVE_SINK;
            sprite_set_anim(&gPlayerSprite, 57, 0, 0);
            sub_8016790(21, gPlayerSprite.direction);
        } else if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IS_DYING) {
            gPlayerState = gPreviousPlayerState;
            sub_8016790(0, gPlayerSprite.direction);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sprite_set_anim(&gPlayerSprite, 25, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
        }
    } else if (gTransformation == TRANSFORMATION_MOUSE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_IDLE;
        sprite_set_anim(&gPlayerSprite, 321, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sprite_set_anim(&gPlayerSprite, 377, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    } else if (gTransformation == TRANSFORMATION_TANK) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_TANK_IDLE;
        sprite_set_anim(&gPlayerSprite, 417, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
            sprite_set_anim(&gPlayerSprite, 473, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
            sprite_set_anim(&gPlayerSprite, 465, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
        }
    } else {
        ASSERT(0);
    }
    sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
}

void sub_08018A94(int a1) {
    if (gTransformation == TRANSFORMATION_BANJO) {
        if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
            gPlayerSprite.direction = a1;
            sprite_set_anim(&gPlayerSprite, 105, 0, 0);
        } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_KAZOOIE_MODE) {
            gPlayerSprite.direction = a1;
            sprite_lock_anim_on_frame(&gPlayerSprite, 6);
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
        } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
            gPlayerSprite.direction = a1;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
        } else {
            gPlayerSprite.direction = a1;
            sprite_set_anim(&gPlayerSprite, 25, 0, 0);
        }
    } else if (gTransformation == TRANSFORMATION_MOUSE) {
        gPlayerSprite.direction = a1;
        sprite_set_anim(&gPlayerSprite, 321, 0, 0);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        gPlayerSprite.direction = a1;
        sprite_set_anim(&gPlayerSprite, 377, 0, 0);
    } else if (gTransformation == TRANSFORMATION_TANK) {
        gPlayerSprite.direction = a1;
        sprite_set_anim(&gPlayerSprite, 417, 0, 0);
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
            gPlayerSprite.direction = a1;
            sprite_set_anim(&gPlayerSprite, 473, 0, 0);
        } else {
            gPlayerSprite.direction = a1;
            sprite_set_anim(&gPlayerSprite, 465, 0, 0);
        }
    } else {
        ASSERT(0);
    }
}

bool32 sub_8018BB0(const struct Sprite* playerSprite) {
    if (!(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_BIT11)) {
        return TRUE;
    }

    if (byte_203DFE8) {
        byte_203DFE8 = 0;
    }

    if (audio_fx_still_active(gBillDrillSfx)) {
        if (gCanPlaySfx) {
            audio_halt_fx(gBillDrillSfx);
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
            sprite_set_anim_without_reset(&gPlayerSprite, 153, 0, 2);
            sub_80266C8(3, gBGOffsetVertical, 2);
            if (audio_fx_still_active(gBillDrillSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gBillDrillSfx);
                }
            }
            gBillDrillSfx = PLAY_SFX(22);
            sub_8016790(4, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_KAZOOIE_JUMP:
        case PLAYER_STATE_KAZOOIE_FALL:
        case PLAYER_STATE_KAZOOIE_LEDGE_FALL:
        case PLAYER_STATE_KAZOOIE_HURT:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
                sprite_set_anim(&gPlayerSprite, 49, 7, 0);
                sprite_set_locked_frame(&gPlayerSprite, 6);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            } else {
                gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
                sprite_set_anim(&gPlayerSprite, 49, 7, 0);
                sprite_set_locked_frame(&gPlayerSprite, 6);
                sprite_lock_anim_on_frame(&gPlayerSprite, 6);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_MOUSE_JUMP:
        case PLAYER_STATE_MOUSE_JUMP_FALL:
        case PLAYER_STATE_MOUSE_LEDGE_FALL:
        case PLAYER_STATE_MOUSE_HURT:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_MOUSE_WALK;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            } else {
                gPlayerState = PLAYER_STATE_MOUSE_IDLE;
                sprite_set_anim(&gPlayerSprite, 321, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_CANDLE_HURT:
        case PLAYER_STATE_CANDLE_JUMP:
        case PLAYER_STATE_CANDLE_JUMP_FALL:
        case PLAYER_STATE_CANDLE_LEDGE_FALL:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_CANDLE_WALK;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            } else {
                gPlayerState = PLAYER_STATE_CANDLE_IDLE;
                sprite_set_anim(&gPlayerSprite, 377, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_OCTOPUS_DIVE_HURT:
            gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_SINK;
            sprite_set_anim(&gPlayerSprite, 457, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
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
                    sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                    sub_8003884(dword_2000FC8, 0x1CCCD, dword_80CC290[gPlayerSprite.direction], 0);
                    PLAY_SFX(12);
                } else {
                    gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
                    sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                    sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
                }
            } else {
                gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
                sprite_set_anim(&gPlayerSprite, 465, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_TANK_LEDGE_FALL:
        case PLAYER_STATE_TANK_HURT:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_TANK_RIDE;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            } else {
                gPlayerState = PLAYER_STATE_TANK_IDLE;
                sprite_set_anim(&gPlayerSprite, 417, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_CANDLE_JUMP_ATTACK_START:
        case PLAYER_STATE_CANDLE_JUMP_ATTACK_END:
            gPlayerState = PLAYER_STATE_CANDLE_ATTACK;
            sub_8016790(10, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_WONDERWING_JUMP:
        case PLAYER_STATE_WONDERWING_FALL:
        case PLAYER_STATE_WONDERWING_LEDGE_FALL:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_WONDERWING_WALK;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            } else {
                gPlayerState = PLAYER_STATE_WONDERWING_IDLE;
                sprite_set_anim(&gPlayerSprite, 505, 0, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_SHOOTER_JUMP:
        case PLAYER_STATE_SHOOTER_FALL:
        case PLAYER_STATE_SHOOTER_HURT:
        case PLAYER_STATE_SHOOTER_LEDGE_FALL:
            sprite_unlock_anim(&gPlayerSprite);
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_SHOOTER_WALK;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, dword_80CC290[gPlayerSprite.direction], 0);
            } else {
                gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
                sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_FORWARD_ROLL_LEDGE_FALL:
            gPlayerState = PLAYER_STATE_FORWARD_ROLL;
            sub_8016790(2, gPlayerSprite.direction);
            break;

        case PLAYER_STATE_CANDLE_ATTACK_LEDGE_FALL:
            gPlayerState = PLAYER_STATE_CANDLE_ATTACK;
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                gPlayerState = PLAYER_STATE_WALK;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            } else {
                gPlayerState = PLAYER_STATE_IDLE;
                sprite_set_anim(&gPlayerSprite, 25, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
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

    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_WONDERWING_MODE) {
        sub_0804200C(3);
    }

    sub_8026714();

    if (gTransformation != TRANSFORMATION_BANJO) {
        sub_08019AAC(a2, a3);
    } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DIVING) {
        switch (a3) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_DIVE_HURT;
                if (a2 >= 0) {
                    gPlayerSprite.direction = (a2 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a2], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000,
                                dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                }
                sprite_set_anim(&gPlayerSprite, 537, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_DIVE_HURT;
                sprite_set_anim(&gPlayerSprite, 537, 0, 1);
                break;

            case 0:
                break;
        }

        sprite_set_anim(&gPlayerSprite, 537, 0, 1);
        sub_8016790(0, gPlayerSprite.direction);
        PLAY_SFX(RandomMinMax(4, 5));
    } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
        switch (a3) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_SHOOTER_HURT;
                if (a2 >= 0) {
                    gPlayerSprite.direction = (a2 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a2], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000,
                                dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sprite_set_anim(&gPlayerSprite, 241, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_SHOOTER_HURT;
                sprite_set_anim(&gPlayerSprite, 241, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.direction);
        PLAY_SFX(RandomMinMax(4, 5));
    } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_KAZOOIE_MODE) {
        switch (a3) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_KAZOOIE_HURT;
                if (a2 >= 0) {
                    gPlayerSprite.direction = (a2 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a2], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000,
                                dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sprite_set_anim(&gPlayerSprite, 209, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_KAZOOIE_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sprite_set_anim(&gPlayerSprite, 209, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.direction);
        PLAY_SFX(RandomMinMax(4, 5));

        if (gKazooieSfx != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(gKazooieSfx);
            }
            gKazooieSfx = -1;
        }
    } else {
        switch (a3) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_HURT;
                if (a2 >= 0) {
                    gPlayerSprite.direction = (a2 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a2], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000,
                                dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sprite_set_anim(&gPlayerSprite, 161, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sprite_set_anim(&gPlayerSprite, 161, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.direction);
        PLAY_SFX(RandomMinMax(4, 5));

        if (gBillDrillSfx != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(gBillDrillSfx);
            }
            gBillDrillSfx = -1;
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
        gPlayerIsTransparent = 1;
        gHurtTransparencyTimer = 120;
        gPlayerSprite.objMode = ST_OAM_OBJ_BLEND;
        byte_200108E = 1;
        word_2001092 = 120;
    }
}

void sub_801990C() {
    sub_8026714();
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_WONDERWING_MODE) {
        sub_0804200C(3);
    }

    if (gTransformation != TRANSFORMATION_BANJO) {
        sub_08019AAC(-1, 2);
    } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DIVING) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_HURT;
        sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
        sprite_set_anim(&gPlayerSprite, 537, 0, 1);
        sub_8016790(0, gPlayerSprite.direction);
    } else if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_SHOOTER_HURT;
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
        sprite_set_anim(&gPlayerSprite, 241, 0, 1);
        sub_8016790(0, gPlayerSprite.direction);
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_HURT;
        sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
        sprite_set_anim(&gPlayerSprite, 161, 0, 1);
        sub_8016790(0, gPlayerSprite.direction);
        if (gKazooieSfx != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(gKazooieSfx);
            }
            gKazooieSfx = -1;
        }
        if (gBillDrillSfx != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(gBillDrillSfx);
            }
            gBillDrillSfx = -1;
        }
    }
}

static void sub_08019AAC(int a1, int a2) {
    if (gTransformation == TRANSFORMATION_MOUSE) {
        switch (a2) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_MOUSE_HURT;
                if (a1 >= 0) {
                    gPlayerSprite.direction = (a1 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000,
                                dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sprite_set_anim(&gPlayerSprite, 337, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_MOUSE_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sprite_set_anim(&gPlayerSprite, 337, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.direction);
        PLAY_SFX_PITCH(RandomMinMax(4, 5), 0x18000);
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        switch (a2) {
            case 2:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_CANDLE_HURT;
                if (a1 >= 0) {
                    gPlayerSprite.direction = (a1 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000,
                                dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sprite_set_anim(&gPlayerSprite, 361, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_CANDLE_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sprite_set_anim(&gPlayerSprite, 361, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.direction);
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
                    gPlayerSprite.direction = (a1 + 4) & 7;
                    sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                } else {
                    sub_8003884(dword_2000FC8, 0x20000,
                                dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                }
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                sprite_set_anim(&gPlayerSprite, 417, 0, 1);
                break;

            case 1:
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_TANK_HURT;
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                sprite_set_anim(&gPlayerSprite, 417, 0, 1);
                break;

            case 0:
                break;
        }

        sub_8016790(0, gPlayerSprite.direction);
        PLAY_SFX(RandomMinMax(4, 5));
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DIVING) {
            switch (a2) {
                case 2:
                    gPreviousPlayerState = gPlayerState;
                    gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_HURT;
                    if (a1 >= 0) {
                        gPlayerSprite.direction = (a1 + 4) & 7;
                        sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                    } else {
                        sub_8003884(dword_2000FC8, 0x20000,
                                    dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                    }
                    sprite_set_anim(&gPlayerSprite, 481, 0, 1);
                    break;

                case 1:
                    gPreviousPlayerState = gPlayerState;
                    gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_HURT;
                    break;

                case 0:
                    break;
            }

            sub_8016790(0, gPlayerSprite.direction);
            PLAY_SFX_PITCH(RandomMinMax(4, 5), 0x18000);
        } else {
            switch (a2) {
                case 2:
                    gPreviousPlayerState = gPlayerState;
                    gPlayerState = PLAYER_STATE_OCTOPUS_HURT;
                    if (a1 >= 0) {
                        gPlayerSprite.direction = (a1 + 4) & 7;
                        sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[a1], 0);
                    } else {
                        sub_8003884(dword_2000FC8, 0x20000,
                                    dword_80CC290[(gPlayerSprite.direction + 4) & 7], 0);
                    }
                    CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0);
                    sprite_set_anim(&gPlayerSprite, 481, 0, 1);
                    break;

                case 1:
                    gPreviousPlayerState = gPlayerState;
                    gPlayerState = PLAYER_STATE_OCTOPUS_HURT;
                    CallARM_store_jump_and_other_value(dword_2000FC8, 0x30000, 0xFFFFE000);
                    sprite_set_anim(&gPlayerSprite, 481, 0, 1);
                    break;

                case 0:
                    break;
            }

            sub_8016790(0, gPlayerSprite.direction);
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
            sprite_set_anim(&gPlayerSprite, 25, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            dword_3003300 = 0x160000;
            dword_3003308 = 0x240000;
            dword_3003304 = 0x180000;
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            break;

        case TRANSFORMATION_MOUSE:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_IDLE;
            sprite_set_anim(&gPlayerSprite, 321, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            DmaTransferObjPalette(&unk_83FD734, 7, 7);
            dword_3003300 = 0x100000;
            dword_3003308 = 0x100000;
            dword_3003304 = 0x100000;
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            break;

        case TRANSFORMATION_CANDLE:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_IDLE;
            sprite_set_anim(&gPlayerSprite, 377, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            DmaTransferObjPalette(&unk_83FD754, 7, 7);
            dword_3003300 = 0x160000;
            dword_3003308 = 0x180000;
            dword_3003304 = 0x180000;
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            break;

        case TRANSFORMATION_TANK:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_IDLE;
            sprite_set_anim(&gPlayerSprite, 417, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            DmaTransferObjPalette(&unk_83FD774, 7, 7);
            gTankSfx = PLAY_SFX(194);
            dword_3003300 = 0x200000;
            dword_3003308 = 0x240000;
            dword_3003304 = 0x200000;
            break;

        case TRANSFORMATION_OCTOPUS:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
            sprite_set_anim(&gPlayerSprite, 465, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            DmaTransferObjPalette(&unk_83FD794, 7, 7);
            dword_3003300 = 0x160000;
            dword_3003308 = 0x100000;
            dword_3003304 = 0x180000;
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            break;

        default:
            ASSERT(0);
    }

    gTransformation = transformation;
}

void load_transformation_palette() {
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

static bool32 update_wonderwing() {
    if (gFeatherTimer == 0) {
        if (gGameStatus.goldenFeathers == 0) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_END;
            sprite_set_anim(&gPlayerSprite, 529, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            sub_0804200C(3);
            return TRUE;
        }
        gFeatherTimer = gFeatherTime;
        gGameStatus.goldenFeathers--;
        sub_08040204(3, gGameStatus.goldenFeathers);
        sub_08041FA4(3);
    } else {
        gFeatherTimer--;
    }

    return FALSE;
}

static void shoot_egg(bool32 selectNextAvailableEgg) {
    if (byte_203DFD4 == byte_203DFD5 || sub_8030A88() > 1) {
        return;
    }

    if (gSelectedEgg < EGG_BLUE) {
        if (gGameStatus.eggs[EGG_BLUE] == 0) {
            //! Possible fake match.
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

void update_player_state_machine(s32 keyPressed, s32 keyDown) {
    ASSERT(gPlayerState < PLAYER_STATE_COUNT);

    sPlayerStateFuncs[gPlayerState](keyPressed, keyDown);
}

static void state_none(s32 keyPressed, s32 keyDown) {
}

static void state_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_feathery_flap();
            return;

        case B_BUTTON:
            do_air_attack();
            return;

        case L_BUTTON:
            do_bill_drill();
            return;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_JUMP_FALL;
        sprite_set_anim(&gPlayerSprite, 17, 0, 0);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            return;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            return;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            return;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            return;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            return;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            return;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            return;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 9, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            return;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_jump_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_feathery_flap();
            return;

        case B_BUTTON:
            do_air_attack();
            return;

        case L_BUTTON:
            do_bill_drill();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 17, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_feathery_flap();
            return;

        case B_BUTTON:
            do_air_attack();
            return;

        case L_BUTTON:
            do_bill_drill();
            return;
    }
}

static void state_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        default:
            if (keyPressed & L_BUTTON) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_CROUCH;
                sprite_set_anim(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;
            }
            break;

        case A_BUTTON:
            if (gInInteractionArea) {
                start_npc_dialogue(0);
                return;
            }
            if (interact_with_object()) {
                return;
            }
            do_jump();
            return;

        case B_BUTTON:
            do_pack_wack();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 1, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_walk(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (interact_with_object())
                return;
            do_jump();
            return;

        case B_BUTTON:
            if (gUnlockedMoves[MOVE_FORWARD_ROLL]) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_FORWARD_ROLL;
                sprite_set_anim(&gPlayerSprite, 97, 0, 1);
                sub_8003884(dword_2000FC8, 0x20000, dword_80CC290[gPlayerSprite.direction], 0);
                PLAY_SFX(7);
                sub_8016790(2, gPlayerSprite.direction);
            } else {
                do_pack_wack();
            }
            return;

        case R_BUTTON:
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CROUCH;
            sprite_set_anim(&gPlayerSprite, 0x21, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WALK;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 1, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            return;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sprite_set_anim(&gPlayerSprite, 0x19, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            return;
    }
}

static void state_forward_roll(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (!interact_with_object())
                do_jump();
            break;

        default:
            if (!sprite_is_anim_done_once(&gPlayerSprite))
                return;
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;
            sprite_set_anim(&gPlayerSprite, 25, 0, 0);
            sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction]);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_forward_roll_ledge_fall(s32 keyPressed, s32 keyDown) {
    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sprite_set_anim(&gPlayerSprite, 25, 0, 0);
        sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction]);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_pack_wack_start(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_PACK_WACK_HIT;
        sprite_set_anim(&gPlayerSprite, 185, 0, 1);

        PLAY_SFX(13);

        sub_8016790(1, gPlayerSprite.direction);
    }
}

static void state_pack_wack_hit(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sprite_set_anim(&gPlayerSprite, 25, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_crouch(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!sprite_is_anim_done_once(&gPlayerSprite))
        return;

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                start_npc_dialogue(0);
                return;
            } else {
                if (interact_with_object()) {
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

                sprite_set_anim(&gPlayerSprite, 0x49, 4, 1);
                CallARM_store_jump_and_other_value(dword_2000FC8, 0x40000, 0x1A00);

                PLAY_SFX(21);

                sub_8016790(0, gPlayerSprite.direction);

                if (gFloorPlaneResult.field_2C == 0x5A0000)
                    return;

                gPlayerPos.y += 0x30000;
            }
            return;

        case B_BUTTON:
            if (sub_800DE04()) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_SHOOTER_START;

                sprite_set_anim(&gPlayerSprite, 0x109, 0, 1);

                PLAY_SFX(21);

                sub_8016790(0, gPlayerSprite.direction);
            }
            return;

        case R_BUTTON:
            if (gUnlockedMoves[MOVE_TALON_TROT]) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;

                sprite_set_anim(&gPlayerSprite, 0x31, 7, 0);

                PLAY_SFX(21);

                sub_8016790(15, gPlayerSprite.direction);
            }
            return;
    }

    if (keyPressed & L_BUTTON) {
        switch (keyPressed & DPAD_ANY) {
            case DPAD_RIGHT | DPAD_UP:
                gPlayerSprite.direction = 1;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;

            case DPAD_RIGHT | DPAD_DOWN:
                gPlayerSprite.direction = 3;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;

            case DPAD_LEFT | DPAD_DOWN:
                gPlayerSprite.direction = 5;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;

            case DPAD_LEFT | DPAD_UP:
                gPlayerSprite.direction = 7;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;

            case DPAD_UP:
                gPlayerSprite.direction = 0;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;

            case DPAD_DOWN:
                gPlayerSprite.direction = 4;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;

            case DPAD_LEFT:
                gPlayerSprite.direction = 6;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;

            case DPAD_RIGHT:
                gPlayerSprite.direction = 2;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x21, 0, 1);
                sub_8016790(0, gPlayerSprite.direction);
                return;
        }
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;

        sprite_set_anim(&gPlayerSprite, 0x19, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_kazooie_walk(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!sub_80037A8(&gPlayerSprite))
        return;

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (!interact_with_object())
                do_kazooie_jump();
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;

            sprite_set_anim(&gPlayerSprite, 0x19, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);

            if (gKazooieSfx != -1) {
                if (gCanPlaySfx)
                    audio_halt_fx(gKazooieSfx);
                gKazooieSfx = -1;
            }

            sub_8016790(0, gPlayerSprite.direction);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x2D0000, 0);
            }
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            break;
        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x13B0000, 0);
            }
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            break;
        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0xE10000, 0);
            }
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            break;
        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x870000, 0);
            }
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            break;
        case DPAD_UP:
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x5A0000, 0);
            }
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            break;
        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x10E0000, 0);
            }
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            break;
        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0xB40000, 0);
            }
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            break;
        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim_without_reset(&gPlayerSprite, 0x31, 7, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0, 0);
            }
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            break;
        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;

            sprite_lock_anim_on_frame(&gPlayerSprite, 6);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);

            if (gKazooieSfx != -1) {
                if (gCanPlaySfx)
                    audio_halt_fx(gKazooieSfx);
                gKazooieSfx = -1;
            }

            sub_8016790(15, gPlayerSprite.direction);
            break;
    }
}

static void state_kazooie_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!sub_80037A8(&gPlayerSprite))
        return;

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                start_npc_dialogue(0);
                return;
            }
            if (!interact_with_object()) {
                do_kazooie_jump();
            }
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_IDLE;

            sprite_set_anim(&gPlayerSprite, 25, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);

            if (gKazooieSfx != -1) {
                if (gCanPlaySfx)
                    audio_halt_fx(gKazooieSfx);
                gKazooieSfx = -1;
            }

            sub_8016790(0, gPlayerSprite.direction);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.direction = 1;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x2D0000, 0);
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.direction = 3;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x13B0000, 0);
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.direction = 5;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0xE10000, 0);
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.direction = 7;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x870000, 0);
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.direction = 0;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x5A0000, 0);
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.direction = 4;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0x10E0000, 0);
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.direction = 6;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0xB40000, 0);
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_WALK;
            gPlayerSprite.direction = 2;
            sprite_set_anim_without_reset(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8003884(dword_2000FC8, 0x28000, 0, 0);
            if (gKazooieSfx == -1) {
                gKazooieSfx = PLAY_SFX(30);
            }
            sub_8016790(15, gPlayerSprite.direction);
            break;

        default:
            if (gPlayerState != gPreviousPlayerState) {
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
                sprite_lock_anim_on_frame(&gPlayerSprite, 6);
                sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
                sub_8016790(15, gPlayerSprite.direction);
            }
            break;
    }
}

static void state_kazooie_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            do_air_attack();
            return;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_KAZOOIE_FALL;
        sprite_set_anim(&gPlayerSprite, 201, 0, 1);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 193, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_kazooie_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            do_air_attack();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 201, 0, 1);
                sub_8003884(dword_2000FC8, 0x28000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_kazooie_hurt(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!sprite_is_anim_done_once(&gPlayerSprite)) {
        return;
    }

    if (gGameStatus.health == 0) {
        if (byte_2001370) {
            restore_full_health();
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
            sprite_set_anim(&gPlayerSprite, 49, 7, 0);
            sprite_set_locked_frame(&gPlayerSprite, 7);
            sub_8016790(15, gPlayerSprite.direction);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        } else {
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_800387C(dword_2000FC8);
            sub_8016890();
        }
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_KAZOOIE_IDLE;
        sprite_set_anim(&gPlayerSprite, 49, 7, 0);
        sprite_set_locked_frame(&gPlayerSprite, 7);
        sub_8016790(15, gPlayerSprite.direction);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    }
}

static void state_kazooie_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            do_air_attack();
            return;
    }
}

static void state_flap_flip(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case L_BUTTON:
            do_bill_drill();
            return;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_FLAP_FLIP_FALL;
        sprite_set_anim(&gPlayerSprite, 81, 0, 1);
    }
}

static void state_flap_flip_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case L_BUTTON:
            do_bill_drill();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 81, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_feathery_flap(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        sub_80181B8(&gPlayerPos.y);
        return;
    }

    switch (keyDown & JOY_EXCL_DPAD) {
        case L_BUTTON:
            do_bill_drill();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim_without_reset(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim_without_reset(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim_without_reset(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim_without_reset(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim_without_reset(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim_without_reset(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim_without_reset(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim_without_reset(&gPlayerSprite, 89, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_air_attack(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (!audio_fx_still_active(dword_20021D0)) {
        switch (byte_20021C8) {
            case 0:
                byte_20021C8 = 1;
                dword_20021D0 = PLAY_SFX_PITCH(29, 0x10000);
                break;

            case 1:
                byte_20021C8 = 2;
                dword_20021D0 = PLAY_SFX_PITCH(29, 0x12000);
                break;

            case 2:
                if (sprite_is_anim_done_once(&gPlayerSprite)) {
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
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim_without_reset(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim_without_reset(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim_without_reset(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim_without_reset(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim_without_reset(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim_without_reset(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim_without_reset(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim_without_reset(&gPlayerSprite, 169, 0, 1);
                sub_8003884(dword_2000FC8, 0x19999, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_bill_drill_start(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_BILL_DRILL_FALL;
        sprite_set_anim(&gPlayerSprite, 145, 0, 0);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0);
        sub_8016790(4, gPlayerSprite.direction);
    }
}

static void state_bill_drill_end(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sprite_set_anim(&gPlayerSprite, 25, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_bill_drill_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_bill_drill_hit(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite) && word_2002EC2 == word_2002EC0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_BILL_DRILL_END;
        gPlayerSprite.direction = 4;
        sprite_set_anim(&gPlayerSprite, 137, 0, 1);
        sub_8026714();
        if (gBillDrillSfx != -1) {
            if (gCanPlaySfx) {
                audio_halt_fx(gBillDrillSfx);
            }
            gBillDrillSfx = -1;
        }
    } else {
        sub_802672C();
    }
}

static void state_climb(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_jump();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_unlock_anim(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_unlock_anim(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_unlock_anim(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_unlock_anim(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_unlock_anim(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_unlock_anim(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_unlock_anim(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_unlock_anim(&gPlayerSprite);
                sub_8003884(dword_2000FC8, 0x13333, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            sprite_lock_anim(&gPlayerSprite);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
    }
}

static void state_swim(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_jump();
            return;

        case R_BUTTON:
            do_dive();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 41, 0, 0);
                sub_8003884(dword_2000FC8, 0x13333, 0, 0);
            }
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM_IDLE;
            sprite_set_anim(&gPlayerSprite, 105, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            break;
    }
}

static void sub_801CD74(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_swim_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                start_npc_dialogue(0);
            } else {
                do_jump();
            }
            return;

        case R_BUTTON:
            do_dive();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SWIM;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 41, 0, 0);
            sub_8003884(dword_2000FC8, 0x13333, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_hurt(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_die(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else {
        if (sprite_is_anim_done_once(&gPlayerSprite) && !audio_fx_still_active(dword_20021D8)
            && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void state_dialogue(s32 keyPressed, s32 keyDown) {
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

static void state_dialogue_end(s32 keyPressed, s32 keyDown) {
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

static void state_dialogue_start(s32 keyPressed, s32 keyDown) {
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
        v4 = gPlayerSprite.direction;
    } else {
        v4 = 0;
    }

    if (v4 != 0xFF && gGameStatus.health != 0) {
        if (gTransformation == TRANSFORMATION_BANJO) {
            if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
                gPlayerSprite.direction = v4;
                sprite_set_anim(&gPlayerSprite, 105, 0, 0);
            } else if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IN_KAZOOIE_MODE) {
                sprite_lock_anim_on_frame(&gPlayerSprite, 6);
                if (gKazooieSfx != -1) {
                    if (gCanPlaySfx) {
                        audio_halt_fx(gKazooieSfx);
                    }
                    gKazooieSfx = -1;
                }
            } else if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_SHOOTER_MODE) {
                sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            } else if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IN_WONDERWING_MODE) {
                gPlayerSprite.direction = v4;
                sprite_set_anim(&gPlayerSprite, 505, 0, 0);
                sub_0804200C(3);
            } else if (!(gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IS_DYING)) {
                gPlayerSprite.direction = v4;
                sprite_set_anim(&gPlayerSprite, 25, 0, 0);
            }
        } else if (gTransformation == TRANSFORMATION_MOUSE) {
            gPlayerSprite.direction = v4;
            sprite_set_anim(&gPlayerSprite, 321, 0, 0);
        } else if (gTransformation == TRANSFORMATION_CANDLE) {
            gPlayerSprite.direction = v4;
            sprite_set_anim(&gPlayerSprite, 377, 0, 0);
        } else if (gTransformation == TRANSFORMATION_TANK) {
            gPlayerSprite.direction = v4;
            sprite_set_anim(&gPlayerSprite, 417, 0, 0);
        } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
            if (gPlayerStateFlags[gPreviousPlayerState] & PLAYER_FLAGS_IS_SWIMMING) {
                gPlayerSprite.direction = v4;
                sprite_set_anim(&gPlayerSprite, 473, 0, 0);
            } else {
                gPlayerSprite.direction = v4;
                sprite_set_anim(&gPlayerSprite, 465, 0, 0);
            }
        } else {
            ASSERT(0);
        }
    }

    gPlayerState = PLAYER_STATE_DIALOGUE;
    sub_8016790(0, gPlayerSprite.direction);
    byte_2002E4A = 0;
    byte_20021C9 = 0;
}

static void state_shock_jump_start(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_80037A8(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_SHOCK_JUMP;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x40000, 0x2000);
    }
}

static void state_shock_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_SHOCK_JUMP_FALL;
        sprite_set_anim(&gPlayerSprite, 17, 0, 1);
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim_without_reset(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim_without_reset(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim_without_reset(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim_without_reset(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim_without_reset(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim_without_reset(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim_without_reset(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim_without_reset(&gPlayerSprite, 233, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_shock_jump_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_feathery_flap();
            return;

        case B_BUTTON:
            do_air_attack();
            return;

        case L_BUTTON:
            do_bill_drill();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim_without_reset(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim_without_reset(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim_without_reset(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim_without_reset(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim_without_reset(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim_without_reset(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim_without_reset(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim_without_reset(&gPlayerSprite, 17, 0, 1);
                sub_8003884(dword_2000FC8, 0x10000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_dive(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        sub_0800C388(dword_20021E8, dword_20021EC);

        if (byte_20010A4) {
            gPlayerSprite.direction = byte_20010A5;
            word_20010AC = gKeysPressed & KEYS_MASK;
        }

        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_SINK;
        sprite_set_anim(&gPlayerSprite, 57, 0, 0);
        gPlayerShadowSprite.attr0Flag9 = 0;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 12544);
        gOxygenTime = 600;
        gOxygenTimer = 600;

        if (!sub_080420E8(56)) {
            sub_08040204(57, gGameStatus.oxygen);
            sub_08041FA4(57);
        }
    }
}

static void state_dive_sink(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (gPlayerPos.y == gPlayerShadowPos.y) {
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
    }

    if ((keyPressed & JOY_EXCL_DPAD) == A_BUTTON && !byte_30029F8) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_RISE;
        CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(1.5), 0);
        return;
    }

    if ((keyDown & JOY_EXCL_DPAD) == R_BUTTON) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_SURFACE;
        sprite_set_anim(&gPlayerSprite, 65, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(2), 0x4000);
        return;
    } else {
        fx32 x, y, z;
        sub_80038C4(dword_2000FC8, &x, &y, &z);
        if (y < FX32_CONST(-0.75)) {
            CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(-0.75), 0x3100);
        }

        if (!gGameStatus.oxygen) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_DIVE_SURFACE;
            sprite_set_anim(&gPlayerSprite, 65, 0, 1);
            CallARM_store_jump_and_other_value(dword_2000FC8, FX32_CONST(2), 0x4000);
            return;
        }
    }

    if (gOxygenTimer == 0) {
        gOxygenTimer = gOxygenTime;
        gGameStatus.oxygen--;
        sub_08040204(57, gGameStatus.oxygen);
        sub_08041FA4(57);
        PLAY_SFX(123);
    } else {
        gOxygenTimer--;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 1) {
                    gPlayerSprite.direction = 1;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 3) {
                    gPlayerSprite.direction = 3;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 5) {
                    gPlayerSprite.direction = 5;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 7) {
                    gPlayerSprite.direction = 7;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 0) {
                    gPlayerSprite.direction = 0;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 4) {
                    gPlayerSprite.direction = 4;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 6) {
                    gPlayerSprite.direction = 6;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 2) {
                    gPlayerSprite.direction = 2;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0, 0);
            }
            break;

        default:
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            break;
    }
}

static void state_dive_rise(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (gGameStatus.oxygen) {
        if (gOxygenTimer != 0) {
            gOxygenTimer--;
        } else {
            gOxygenTimer = gOxygenTime;
            gGameStatus.oxygen--;
            sub_08040204(57, gGameStatus.oxygen);
            sub_08041FA4(57);
            PLAY_SFX(123);
        }
    } else {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_SURFACE;
        sprite_set_anim(&gPlayerSprite, 65, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
        return;
    }

    if ((keyDown & JOY_EXCL_DPAD) == R_BUTTON) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_SURFACE;
        sprite_set_anim(&gPlayerSprite, 65, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
        return;
    }

    if ((keyPressed & JOY_EXCL_DPAD) != A_BUTTON) {
        if (sub_80038BC(dword_2000FC8)) {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_DIVE_SINK;
            CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
            return;
        }
    } else if (!byte_30029F8) {
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x18000, 0x2000);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 1) {
                    gPlayerSprite.direction = 1;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 3) {
                    gPlayerSprite.direction = 3;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 5) {
                    gPlayerSprite.direction = 5;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 7) {
                    gPlayerSprite.direction = 7;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 0) {
                    gPlayerSprite.direction = 0;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 4) {
                    gPlayerSprite.direction = 4;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 6) {
                    gPlayerSprite.direction = 6;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 2) {
                    gPlayerSprite.direction = 2;
                    sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1199A, 0, 0);
            }
            break;

        default:
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            break;
    }
}

static void sub_801E0F4(s32 keyPressed, s32 keyDown) {
    ASSERT(0);

    if (!gGameStatus.oxygen) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_SURFACE;
        sprite_set_anim(&gPlayerSprite, 65, 0, 1);
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
        return;
    }

    if (gOxygenTimer == 0) {
        gOxygenTimer = gOxygenTime;
        gGameStatus.oxygen--;
        sub_08040204(57, gGameStatus.oxygen);
        sub_08041FA4(57);
        PLAY_SFX(123);
    } else {
        gOxygenTimer--;
    }

    if (!(keyPressed & B_BUTTON)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_DIVE_SINK;
        sub_800387C(dword_2000FC8);
    }
}

static void state_dive_surface(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sub_800C1E8(byte_2001094, dword_2001098, dword_200109C, dword_20010A0, 1, 0);
        sub_8017C50();
        sub_0804200C(57);
        if (gGameStatus.oxygen != gGameStatus.maxOxygen) {
            gGameStatus.oxygen = gGameStatus.maxOxygen;
            sub_08040204(57, gGameStatus.oxygen);
            PLAY_SFX(124);
        }
        sub_800387C(dword_2000FC8);
    }
}

static void state_dive_hurt(s32 keyPressed, s32 keyDown) {
    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        if (gGameStatus.health == 0) {
            if (byte_2001370) {
                restore_full_health();
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_DIVE_SINK;
                sprite_set_anim(&gPlayerSprite, 57, 0, 0);
                sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016890();
            }
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_DIVE_SINK;
            sprite_set_anim(&gPlayerSprite, 57, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        }
    }
}

static void state_mouse_walk(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_mouse_jump();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x2D0000, 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016790(0, gPlayerSprite.direction);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x13B0000, 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016790(0, gPlayerSprite.direction);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0xE10000, 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016790(0, gPlayerSprite.direction);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x870000, 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016790(0, gPlayerSprite.direction);
            }
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x5A0000, 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016790(0, gPlayerSprite.direction);
            }
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0x10E0000, 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016790(0, gPlayerSprite.direction);
            }
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0xB40000, 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016790(0, gPlayerSprite.direction);
            }
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 329, 0, 0);
                sub_8003884(dword_2000FC8, 0x28000, 0, 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016790(0, gPlayerSprite.direction);
            }
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_IDLE;
            sprite_set_anim(&gPlayerSprite, 321, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_mouse_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                start_npc_dialogue(0);
            } else {
                do_mouse_jump();
            }
            return;

        case B_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_NIBBLE;
            sprite_set_anim(&gPlayerSprite, 297, 0, 3);
            sub_8016790(14, gPlayerSprite.direction);
            PLAY_SFX(192);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_MOUSE_WALK;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 329, 0, 0);
            sub_8003884(dword_2000FC8, 0x28000, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_mouse_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_JUMP_FALL;
        sprite_set_anim(&gPlayerSprite, 313, 0, 1);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 305, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_mouse_jump_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 313, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_mouse_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_mouse_mouse_nibble(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_IDLE;
        sprite_set_anim(&gPlayerSprite, 321, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_mouse_die(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else if (sprite_is_anim_done_once(&gPlayerSprite)) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void state_mouse_hurt(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_MOUSE_IDLE;
        sprite_set_anim(&gPlayerSprite, 321, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_candle_die(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else if (sprite_is_anim_done_once(&gPlayerSprite)) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void state_candle_attack(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sprite_set_anim(&gPlayerSprite, 377, 0, 0);
        sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction]);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_candle_attack_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sprite_set_anim(&gPlayerSprite, 377, 0, 0);
        sub_800386C(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction]);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_candle_hurt(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_IDLE;
        sprite_set_anim(&gPlayerSprite, 377, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_candle_walk(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_candle_jump();
            return;

        case B_BUTTON:
            do_candle_attack();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 369, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_IDLE;
            sprite_set_anim(&gPlayerSprite, 377, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_candle_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                start_npc_dialogue(0);
            } else {
                do_candle_jump();
            }
            return;

        case B_BUTTON:
            do_candle_attack();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_WALK;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 369, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_candle_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_JUMP_ATTACK_START;
            sprite_set_anim(&gPlayerSprite, 353, 0, 1);
            sub_8016790(10, gPlayerSprite.direction);
            dword_20021D4 = PLAY_SFX(186);
            return;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_JUMP_FALL;
        sprite_set_anim(&gPlayerSprite, 393, 0, 1);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 385, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_candle_jump_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_CANDLE_JUMP_ATTACK_END;
            sprite_set_anim(&gPlayerSprite, 353, 0, 1);
            sub_8016790(10, gPlayerSprite.direction);
            dword_20021D4 = PLAY_SFX(186);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 393, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_candle_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_candle_jump_attack_start(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_JUMP_ATTACK_END;
    }

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_JUMP;
        sprite_set_anim(&gPlayerSprite, 385, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_candle_jump_attack_end(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_CANDLE_JUMP_FALL;
        sprite_set_anim(&gPlayerSprite, 393, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_wonderwing_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_wonderwing_jump();
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_END;
            sprite_set_anim(&gPlayerSprite, 529, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            sub_0804200C(3);
            return;
    }

    if (update_wonderwing()) {
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 521, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;
    }
}

static void state_wonderwing_walk(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_wonderwing_jump();
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_END;
            sprite_set_anim(&gPlayerSprite, 529, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            sub_0804200C(3);
            return;
    }

    if (update_wonderwing()) {
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_WALK;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 521, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(5, gPlayerSprite.direction);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_WONDERWING_IDLE;
            sprite_set_anim(&gPlayerSprite, 505, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(5, gPlayerSprite.direction);
            break;
    }
}

static void state_wonderwing_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_WONDERWING_FALL;
    }

    if (update_wonderwing()) {
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_wonderwing_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (update_wonderwing()) {
        return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 513, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_wonderwing_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    update_wonderwing();
}

static void state_wonderwing_start(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_WONDERWING_IDLE;
        sprite_set_anim(&gPlayerSprite, 505, 0, 0);
        sub_8016790(5, gPlayerSprite.direction);
        gGameStatus.goldenFeathers--;
        sub_08040204(3, gGameStatus.goldenFeathers);
        sub_08041FA4(3);
    }
}

static void state_wonderwing_end(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_IDLE;
        sprite_set_anim(&gPlayerSprite, 25, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_shooter_start(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
        sprite_set_anim(&gPlayerSprite, 257, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_shooter_walk(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (!interact_with_object()) {
                do_shooter_jump();
            }
            return;

        case B_BUTTON:
            shoot_egg(TRUE);
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_END;
            sprite_set_anim(&gPlayerSprite, 529, 0, 1);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case R_BUTTON:
            select_next_available_egg(FALSE);
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 249, 0, 0);
                sub_8003884(dword_2000FC8, 0x14CCD, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_IDLE;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_shooter_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                sub_800DE9C();
                start_npc_dialogue(0);
            } else if (!interact_with_object()) {
                do_shooter_jump();
            }
            return;

        case B_BUTTON:
            shoot_egg(TRUE);
            return;

        case L_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_END;
            sprite_set_anim(&gPlayerSprite, 529, 0, 1);
            sub_8016790(0, gPlayerSprite.direction);
            return;

        case R_BUTTON:
            select_next_available_egg(FALSE);
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_SHOOTER_WALK;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 249, 0, 0);
            sub_8003884(dword_2000FC8, 0x14CCD, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_shooter_hurt(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_shooter_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_shooter_end(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_800DE9C();
    gPreviousPlayerState = gPlayerState;
    gPlayerState = PLAYER_STATE_IDLE;
    sprite_set_anim(&gPlayerSprite, 25, 0, 0);
    sub_8016790(0, gPlayerSprite.direction);
}

static void state_shooter_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_SHOOTER_FALL;
        sprite_set_anim_without_reset(&gPlayerSprite, 281, 0, 0);
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
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 273, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_shooter_fall(s32 keyPressed, s32 keyDown) {
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
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 281, 0, 0);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_tank_ride(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_tank_projectile();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 401, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_IDLE;
            sprite_set_anim(&gPlayerSprite, 417, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(194);
            break;
    }
}

static void state_tank_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                if (audio_fx_still_active(gTankSfx)) {
                    if (gCanPlaySfx) {
                        audio_halt_fx(gTankSfx);
                    }
                }
                start_npc_dialogue(0);
            }
            return;

        case B_BUTTON:
            shoot_tank_projectile();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(195);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(195);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(195);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(195);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(195);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(195);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(195);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_TANK_RIDE;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 401, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            if (audio_fx_still_active(gTankSfx)) {
                if (gCanPlaySfx) {
                    audio_halt_fx(gTankSfx);
                }
            }
            gTankSfx = PLAY_SFX(195);
            break;

        default:
            if (!audio_fx_still_active(gTankSfx)) {
                gTankSfx = PLAY_SFX(194);
            }
            break;
    }
}

static void state_tank_die(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else {
        if (sprite_is_anim_done_once(&gPlayerSprite) && !audio_fx_still_active(dword_20021D8)
            && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void state_tank_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_tank_hurt(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_TANK_IDLE;
        sprite_set_anim(&gPlayerSprite, 417, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
        if (audio_fx_still_active(gTankSfx)) {
            if (gCanPlaySfx) {
                audio_halt_fx(gTankSfx);
            }
        }
        gTankSfx = PLAY_SFX(194);
    }
}

static void state_octopus_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                start_npc_dialogue(0);
            } else {
                do_octopus_jump();
            }
            return;

        case B_BUTTON:
            shoot_octopus_projectile();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 425, 0, 0);
            sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_octopus_swim_idle(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            if (gInInteractionArea) {
                start_npc_dialogue(0);
            } else {
                do_octopus_jump();
            }
            return;

        case B_BUTTON:
            shoot_octopus_projectile();
            return;

        case R_BUTTON:
            do_dive();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x2D0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x13B0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0xE10000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x870000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x5A0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0x10E0000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0xB40000, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 449, 0, 0);
            sub_8003884(dword_2000FC8, 0x1CCCD, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_octopus_walk(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_octopus_jump();
            return;

        case B_BUTTON:
            shoot_octopus_projectile();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x2D0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x13B0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xE10000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x870000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x5A0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0x10E0000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0xB40000, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_WALK;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 425, 0, 0);
                sub_8003884(dword_2000FC8, 0x19999, 0, 0);
            }
            sub_8016790(0, gPlayerSprite.direction);
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
            sprite_set_anim(&gPlayerSprite, 465, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void state_octopus_swim(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case A_BUTTON:
            do_octopus_jump();
            return;

        case B_BUTTON:
            shoot_octopus_projectile();
            return;

        case R_BUTTON:
            do_dive();
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.direction != 1) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.direction != 3) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.direction != 5) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.direction != 7) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.direction != 0) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.direction != 4) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.direction != 6) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM;
            if (gPlayerSprite.direction != 2) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 449, 0, 0);
                sub_8003884(dword_2000FC8, 0x1CCCD, 0, 0);
            }
            break;

        default:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
            sprite_set_anim(&gPlayerSprite, 473, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            break;
    }
}

static void state_octopus_dive_sink(s32 keyPressed, s32 keyDown) {
    fx32 x, y, z;

    sub_8016710(&keyPressed, &keyDown);

    if (gPlayerPos.y == gPlayerShadowPos.y) {
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
    }

    if ((keyPressed & JOY_EXCL_DPAD) == 1 && !byte_30029F8) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_RISE;
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
            shoot_octopus_projectile();
            return;

        case R_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_SURFACE;
            sprite_set_anim(&gPlayerSprite, 457, 0, 1);
            CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
            return;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 1) {
                    gPlayerSprite.direction = 1;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 3) {
                    gPlayerSprite.direction = 3;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 5) {
                    gPlayerSprite.direction = 5;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 7) {
                    gPlayerSprite.direction = 7;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 0) {
                    gPlayerSprite.direction = 0;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 4) {
                    gPlayerSprite.direction = 4;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 6) {
                    gPlayerSprite.direction = 6;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 2) {
                    gPlayerSprite.direction = 2;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0, 0);
            }
            break;

        default:
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            break;
    }
}

static void state_octopus_dive_rise(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_octopus_projectile();
            return;

        case R_BUTTON:
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_SURFACE;
            sprite_set_anim(&gPlayerSprite, 457, 0, 1);
            CallARM_store_jump_and_other_value(dword_2000FC8, 0x20000, 0x4000);
            return;
    }

    if ((keyPressed & JOY_EXCL_DPAD) != A_BUTTON) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_SINK;
        CallARM_store_jump_and_other_value(dword_2000FC8, 0, 0x3100);
        return;
    }

    if (!byte_30029F8) {
        CallARM_store_jump_and_other_value(dword_2000FC8, 0x18000, 0);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 1) {
                    gPlayerSprite.direction = 1;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x2D0000, 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 3) {
                    gPlayerSprite.direction = 3;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x13B0000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 5) {
                    gPlayerSprite.direction = 5;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xE10000, 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 7) {
                    gPlayerSprite.direction = 7;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x870000, 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 0) {
                    gPlayerSprite.direction = 0;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x5A0000, 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 4) {
                    gPlayerSprite.direction = 4;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0x10E0000, 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 6) {
                    gPlayerSprite.direction = 6;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0xB40000, 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                if (gPlayerSprite.direction != 2) {
                    gPlayerSprite.direction = 2;
                    sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                }
                sub_8003884(dword_2000FC8, 0x1CCCD, 0, 0);
            }
            break;

        default:
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            break;
    }
}

static void state_octopus_dive_surface(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
        sub_800C1E8(byte_2001094, dword_2001098, dword_200109C, dword_20010A0, 1, 0);
        sub_8017C50();
        sub_800387C(dword_2000FC8);
    }
}

static void state_octopus_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_octopus_projectile();
            break;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_JUMP_FALL;
        sprite_set_anim(&gPlayerSprite, 441, 0, 1);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_octopus_jump_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
    sub_8016624(keyPressed, keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_octopus_projectile();
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_octopus_water_jump(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_octopus_projectile();
            break;
    }

    if (sub_80038BC(dword_2000FC8)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_WATER_JUMP_FALL;
        sprite_set_anim(&gPlayerSprite, 441, 0, 1);
        CallARM_store_jump_value(dword_2000FC8, 0);
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 433, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_octopus_water_jump_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    switch (keyDown & JOY_EXCL_DPAD) {
        case B_BUTTON:
            shoot_octopus_projectile();
            break;
    }

    switch (keyPressed & DPAD_ANY) {
        case DPAD_RIGHT | DPAD_UP:
            if (gPlayerSprite.direction != 1 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 1;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            if (gPlayerSprite.direction != 3 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 3;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_DOWN:
            if (gPlayerSprite.direction != 5 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 5;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT | DPAD_UP:
            if (gPlayerSprite.direction != 7 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 7;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_UP:
            if (gPlayerSprite.direction != 0 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 0;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_DOWN:
            if (gPlayerSprite.direction != 4 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 4;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_LEFT:
            if (gPlayerSprite.direction != 6 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 6;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        case DPAD_RIGHT:
            if (gPlayerSprite.direction != 2 || !sub_80038AC(dword_2000FC8)) {
                gPlayerSprite.direction = 2;
                sprite_set_anim(&gPlayerSprite, 441, 0, 1);
                sub_8003884(dword_2000FC8, 0x13000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;

        default:
            if (sub_80038AC(dword_2000FC8)) {
                sub_8003884(dword_2000FC8, 0x3000, dword_80CC290[gPlayerSprite.direction], 0);
            }
            break;
    }
}

static void state_octopus_hurt(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite) && gGameStatus.health != 0) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_IDLE;
        sprite_set_anim(&gPlayerSprite, 465, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void sub_8023A40(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);

    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_SWIM_IDLE;
        sprite_set_anim(&gPlayerSprite, 473, 0, 0);
        sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_octopus_dive_hurt(s32 keyPressed, s32 keyDown) {
    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        if (gGameStatus.health == 0) {
            if (byte_2001370) {
                restore_full_health();
                gPreviousPlayerState = gPlayerState;
                gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_SINK;
                sprite_set_anim(&gPlayerSprite, 457, 0, 0);
                sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
                sub_8016790(0, gPlayerSprite.direction);
            } else {
                sub_8016890();
            }
        } else {
            gPreviousPlayerState = gPlayerState;
            gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_SINK;
            sprite_set_anim(&gPlayerSprite, 457, 0, 0);
            sub_8003884(dword_2000FC8, 0, dword_80CC290[gPlayerSprite.direction], 0);
            sub_8016790(0, gPlayerSprite.direction);
        }
    }
}

static void state_octopus_die(s32 keyPressed, s32 keyDown) {
    if (byte_20020B3) {
        if (!audio_fx_still_active(dword_20021D8) && !byte_203F99C) {
            sub_80629E8();
        }
    } else {
        if (sprite_is_anim_done_once(&gPlayerSprite) && !audio_fx_still_active(dword_20021D8)
            && !byte_203F99C) {
            sub_80629E8();
        }
    }
}

static void state_octopus_ledge_fall(s32 keyPressed, s32 keyDown) {
    sub_8016710(&keyPressed, &keyDown);
}

static void state_octopus_dive(s32 keyPressed, s32 keyDown) {
    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        sub_0800C388(dword_20021E8, dword_20021EC);
        if (byte_20010A4) {
            gPlayerSprite.direction = byte_20010A5;
            word_20010AC = gKeysPressed & 0x3FF;
        }
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_OCTOPUS_DIVE_SINK;
        sprite_set_anim(&gPlayerSprite, 457, 0, 0);
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
            gPlayerSprite.direction = 1;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT | DPAD_DOWN:
            gPlayerSprite.direction = 3;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_DOWN:
            gPlayerSprite.direction = 5;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT | DPAD_UP:
            gPlayerSprite.direction = 7;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_UP:
            gPlayerSprite.direction = 0;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_DOWN:
            gPlayerSprite.direction = 4;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_LEFT:
            gPlayerSprite.direction = 6;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;

        case DPAD_RIGHT:
            gPlayerSprite.direction = 2;
            sprite_set_anim(&gPlayerSprite, 257, 0, 0);
            sub_8016790(0, gPlayerSprite.direction);
            break;
    }
}

static void sub_8023D78(s32 keyPressed, s32 keyDown) {
    if (sprite_is_anim_done_once(&gPlayerSprite)) {
        gPreviousPlayerState = gPlayerState;
        gPlayerState = PLAYER_STATE_97;
        sprite_set_anim(&gPlayerSprite, 257, 0, 0);
        sub_8016790(0, gPlayerSprite.direction);
    }
}

static void state_35(s32 keyPressed, s32 keyDown) {
}

static void (*const sPlayerStateFuncs[PLAYER_STATE_COUNT])(s32, s32) = {
    state_idle,
    state_jump,
    state_crouch,
    state_climb,
    state_walk,
    state_swim,
    state_dive,
    state_forward_roll_ledge_fall,
    state_pack_wack_start,
    state_shooter_start,
    state_kazooie_walk,
    state_kazooie_jump,
    state_kazooie_idle,
    state_forward_roll,
    state_feathery_flap,
    state_flap_flip,
    state_bill_drill_start,
    state_air_attack,
    state_jump_fall,
    state_ledge_fall,
    state_kazooie_fall,
    state_flap_flip_fall,
    state_kazooie_ledge_fall,
    state_bill_drill_end,
    state_bill_drill_fall,
    state_bill_drill_hit,
    sub_801CD74,
    state_swim_idle,
    state_pack_wack_hit,
    state_hurt,
    state_kazooie_hurt,
    state_die,
    state_dialogue,
    state_shooter_jump,
    state_shooter_fall,
    state_35,
    state_shock_jump,
    state_shock_jump_fall,
    state_shock_jump_start,
    state_wonderwing_idle,
    state_wonderwing_walk,
    state_wonderwing_jump,
    state_wonderwing_fall,
    state_wonderwing_ledge_fall,
    state_dialogue_end,
    state_dive_sink,
    state_dive_rise,
    sub_801E0F4,
    state_dive_surface,
    state_mouse_walk,
    state_mouse_idle,
    state_mouse_jump,
    state_mouse_jump_fall,
    state_mouse_ledge_fall,
    state_mouse_mouse_nibble,
    state_mouse_die,
    state_mouse_hurt,
    state_candle_die,
    state_candle_attack,
    state_candle_hurt,
    state_candle_walk,
    state_candle_idle,
    state_candle_jump,
    state_candle_jump_fall,
    state_candle_ledge_fall,
    state_candle_jump_attack_start,
    state_candle_jump_attack_end,
    state_wonderwing_start,
    state_wonderwing_end,
    state_dive_hurt,
    state_shooter_walk,
    state_shooter_idle,
    state_shooter_hurt,
    state_shooter_ledge_fall,
    state_shooter_end,
    state_tank_ride,
    state_tank_idle,
    state_tank_die,
    state_tank_ledge_fall,
    state_tank_hurt,
    state_octopus_idle,
    state_octopus_swim_idle,
    state_octopus_walk,
    state_octopus_swim,
    state_octopus_dive_sink,
    state_octopus_jump,
    state_octopus_jump_fall,
    state_octopus_water_jump,
    state_octopus_water_jump_fall,
    state_octopus_hurt,
    sub_8023A40,
    state_octopus_dive_hurt,
    state_octopus_die,
    state_octopus_ledge_fall,
    state_octopus_dive,
    state_octopus_dive_rise,
    state_octopus_dive_surface,
    sub_8023C94,
    sub_8023D78,
    state_dialogue_start,
    state_candle_attack_ledge_fall,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
    state_none,
};

static const u16 sPlayerStateFlags[PLAYER_STATE_COUNT] = {
    /* 0   */ PLAYER_FLAGS_NOT_MOVING,
    /* 1   */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 2   */ PLAYER_FLAGS_NOT_MOVING,
    /* 3   */ PLAYER_FLAGS_IS_CLIMBING,
    /* 4   */ PLAYER_FLAGS_NONE,
    /* 5   */ PLAYER_FLAGS_IS_SWIMMING,
    /* 6   */ PLAYER_FLAGS_DIVING_START | PLAYER_FLAGS_IS_SWIMMING,
    /* 7   */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11,
    /* 8   */ PLAYER_FLAGS_PACK_WACK,
    /* 9   */ PLAYER_FLAGS_SHOOTER_MODE,
    /* 10  */ PLAYER_FLAGS_IN_KAZOOIE_MODE,
    /* 11  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_KAZOOIE_MODE,
    /* 12  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_IN_KAZOOIE_MODE,
    /* 13  */ PLAYER_FLAGS_NONE,
    /* 14  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 15  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 16  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 17  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 18  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 19  */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11,
    /* 20  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_KAZOOIE_MODE,
    /* 21  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 22  */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_KAZOOIE_MODE,
    /* 23  */ PLAYER_FLAGS_NONE,
    /* 24  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 25  */ PLAYER_FLAGS_NONE,
    /* 26  */ PLAYER_FLAGS_NONE,
    /* 27  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_IS_SWIMMING,
    /* 28  */ PLAYER_FLAGS_PACK_WACK,
    /* 29  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_BIT11,
    /* 30  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_KAZOOIE_MODE,
    /* 31  */ PLAYER_FLAGS_IS_DYING,
    /* 32  */ PLAYER_FLAGS_IN_DIALOGUE,
    /* 33  */ PLAYER_FLAGS_SHOOTER_MODE | PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 34  */ PLAYER_FLAGS_SHOOTER_MODE | PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 35  */ PLAYER_FLAGS_NOT_MOVING,
    /* 36  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 37  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11,
    /* 38  */ PLAYER_FLAGS_NONE,
    /* 39  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_IN_WONDERWING_MODE,
    /* 40  */ PLAYER_FLAGS_IN_WONDERWING_MODE,
    /* 41  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_WONDERWING_MODE,
    /* 42  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_WONDERWING_MODE,
    /* 43  */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_WONDERWING_MODE,
    /* 44  */ PLAYER_FLAGS_IN_DIALOGUE,
    /* 45  */ PLAYER_FLAGS_IS_DIVING,
    /* 46  */ PLAYER_FLAGS_IS_DIVING,
    /* 47  */ PLAYER_FLAGS_IS_DIVING,
    /* 48  */ PLAYER_FLAGS_IS_DIVING,
    /* 49  */ PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 50  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 51  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 52  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 53  */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 54  */ PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 55  */ PLAYER_FLAGS_IS_DYING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 56  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 57  */ PLAYER_FLAGS_IS_DYING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 58  */ PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 59  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 60  */ PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 61  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 62  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 63  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 64  */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 65  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 66  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 67  */ PLAYER_FLAGS_NONE,
    /* 68  */ PLAYER_FLAGS_NONE,
    /* 69  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_IS_DIVING | PLAYER_FLAGS_BIT11,
    /* 70  */ PLAYER_FLAGS_SHOOTER_MODE,
    /* 71  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_SHOOTER_MODE,
    /* 72  */ PLAYER_FLAGS_SHOOTER_MODE | PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_BIT11,
    /* 73  */ PLAYER_FLAGS_SHOOTER_MODE | PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11,
    /* 74  */ PLAYER_FLAGS_SHOOTER_MODE,
    /* 75  */ PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 76  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 77  */ PLAYER_FLAGS_IS_DYING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 78  */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 79  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 80  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 81  */ PLAYER_FLAGS_NOT_MOVING | PLAYER_FLAGS_IS_SWIMMING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 82  */ PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 83  */ PLAYER_FLAGS_IS_SWIMMING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 84  */ PLAYER_FLAGS_IS_DIVING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 85  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 86  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 87  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 88  */ PLAYER_FLAGS_IN_AIR | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 89  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 90  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 91  */ PLAYER_FLAGS_IS_HURTING | PLAYER_FLAGS_IS_DIVING | PLAYER_FLAGS_BIT11
        | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 92  */ PLAYER_FLAGS_IS_DYING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 93  */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11 | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 94  */ PLAYER_FLAGS_DIVING_START | PLAYER_FLAGS_IS_SWIMMING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 95  */ PLAYER_FLAGS_IS_DIVING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 96  */ PLAYER_FLAGS_IS_DIVING | PLAYER_FLAGS_IN_TRANSFORMATION,
    /* 97  */ PLAYER_FLAGS_SHOOTER_MODE,
    /* 98  */ PLAYER_FLAGS_SHOOTER_MODE,
    /* 99  */ PLAYER_FLAGS_IN_DIALOGUE,
    /* 100 */ PLAYER_FLAGS_IS_FALLING_FROM_LEDGE | PLAYER_FLAGS_BIT11,
    /* 101 */ PLAYER_FLAGS_NOT_MOVING,
    /* 102 */ PLAYER_FLAGS_NONE,
    /* 103 */ PLAYER_FLAGS_NONE,
    /* 104 */ PLAYER_FLAGS_NONE,
    /* 105 */ PLAYER_FLAGS_NONE,
    /* 106 */ PLAYER_FLAGS_NONE,
    /* 107 */ PLAYER_FLAGS_NONE,
    /* 108 */ PLAYER_FLAGS_NONE,
    /* 109 */ PLAYER_FLAGS_NONE,
    /* 110 */ PLAYER_FLAGS_NONE,
    /* 111 */ PLAYER_FLAGS_NONE,
    /* 112 */ PLAYER_FLAGS_NONE,
    /* 113 */ PLAYER_FLAGS_NONE,
    /* 114 */ PLAYER_FLAGS_NONE,
    /* 115 */ PLAYER_FLAGS_NONE,
    /* 116 */ PLAYER_FLAGS_NONE,
    /* 117 */ PLAYER_FLAGS_NONE,
    /* 118 */ PLAYER_FLAGS_NONE,
    /* 119 */ PLAYER_FLAGS_NONE,
    /* 120 */ PLAYER_FLAGS_NONE,
    /* 121 */ PLAYER_FLAGS_NONE,
    /* 122 */ PLAYER_FLAGS_NONE,
    /* 123 */ PLAYER_FLAGS_NONE,
    /* 124 */ PLAYER_FLAGS_NONE,
    /* 125 */ PLAYER_FLAGS_NONE,
    /* 126 */ PLAYER_FLAGS_NONE,
    /* 127 */ PLAYER_FLAGS_NONE,
};
