#include "global.h"
#include "common.h"
#include "sprite.h"
#include "room.h"
#include "player.h"
#include "main.h"
#include "alloc.h"
#include "player_defs.h"
#include "audio_b.h"
#include "script_defs.h"

#define MAX_SCRIPTS 2

struct ScriptCamera {
    fx32 xPosOriginal;
    fx32 yPosOriginal;
    fx32 xPosCurrent;
    fx32 yPosCurrent;
    fx32 xPosTarget;
    fx32 yPosTarget;
    fx32 xDistance;
    fx32 yDistance;
    fx32 moveSpeed;
    s8 field_24;
    bool8 isMoving;
    u8 field_26;
    u8 field_27;
};

struct Actor {
    struct Sprite sprite;
    fx32 xPos;
    fx32 yPos;
    fx32 xPosTarget;
    fx32 yPosTarget;
    fx32 moveSpeed;
    fx32 xDistance;
    fx32 yDistance;
    u32 field_38;
    s32 field_3C;
    s32 field_40;
    s32 field_44;
    s32 field_48;
    s32 field_4C;
    s32 field_50;
    u8 field_54;
    s8 calcIdx;
    bool8 isVisible;
    bool8 isMoving;
    u8 field_58;
    u8 field_59;
    bool8 isPositionAbsolute;
    u8 field_5B;
    u8 field_5C;
    u8 field_5D;
    u8 field_5E;
    u8 field_5F;
};

struct ScriptState {
    struct Actor* actors;
    u8 loadedRoomIdx;
    struct Vec3fx playerPos;
    u32 field_14;
    u16 scriptIdx;
    u16 field_1A;
    u16 cmdIdx;
    u16 waitFrames;
    u8 actorCount;
    bool8 endScript;
    bool8 isActive;
    u8 field_23;
    bool8 playInputDemo;
    u8 activeSfx;
    u8 field_26;
    u8 field_27;
};

const struct InputRecord* gInputDemoRecords;
u16 gInputDemoStep;
u16 gInputDemoRecordCount;
s16 gScriptSavedPosX;
s16 gScriptSavedPosY;
s16 word_203F998;
s16 word_203F99A;
u8 byte_203F99C;
u8 gScriptSavedPriority;
bool8 byte_203F99E;
u8 byte_203F99F;
u8 gActorCount;
bool8 gReadKeysFromDemoInput;
bool8 gHidePlayer;
struct ScriptState gScripts[MAX_SCRIPTS];
struct ScriptState* gCurrentScript;
fx32 dword_203F9F8;
fx32 dword_203F9FC;
u32 dword_0203FA00; // Unused.
u32 dword_0203FA04; // Unused.
fx32 gScriptCameraSavePosX;
fx32 gScriptCameraSavePosY;
u16 gInputDemoFrames;
u8 byte_203FA12;
bool8 gInputDemoIsForward;
u8 byte_203FA14;
u8 byte_203FA15;
u8 byte_203FA16;
u8 byte_203FA16_2;
struct ScriptCamera* gScriptCamera;
fx32 dword_203FA1C;
fx32 dword_203FA20;
u32 dword_203FA24;
u32 dword_203FA28;

static bool32 script_cmd_alloc_actors(int, int, int, int);
static bool32 script_cmd_load_and_store_room(int, int, int, int);
static bool32 script_cmd_load_room(int, int, int, int);
static bool32 script_cmd_restore_room(int, int, int, int);
static bool32 script_cmd_jump(int, int, int, int);
static bool32 script_cmd_jump_cond(int, int, int, int);
static bool32 script_cmd_hide_player(int, int, int, int);
static bool32 script_cmd_actor_init(int, int, int, int);
static bool32 script_cmd_actor_disable(int, int, int, int);
static bool32 script_cmd_actor_enable(int, int, int, int);
static bool32 script_cmd_actor_set_anim(int, int, int, int);
static bool32 script_cmd_actor_set_gameover_anim(int, int, int, int);
static bool32 script_cmd_actor_set_position(int, int, int, int);
static bool32 script_cmd_actor_set_position_relative_from_saved_position(int, int, int, int);
static bool32 script_cmd_actor_set_position_from_cam(int, int, int, int);
static bool32 script_cmd_actor_set_position_absolute(int, int, int, int);
static bool32 script_cmd_actor_save_position(int, int, int, int);
static bool32 sub_805EEBC(int, int, int, int);
static bool32 sub_805EF0C(int, int, int, int);
static bool32 script_cmd_actor_set_direction(int, int, int, int);
static bool32 script_cmd_actor_rotate_to_target(int, int, int, int);
static bool32 script_cmd_actor_set_priority(int, int, int, int);
static bool32 script_cmd_actor_revert_priority(int, int, int, int);
static bool32 sub_805F04C(int, int, int, int);
static bool32 script_cmd_actor_set_obj_mode(int, int, int, int);
static bool32 script_cmd_actor_set_palette(int, int, int, int);
static bool32 script_cmd_actor_lock_anim_on_frame(int, int, int, int);
static bool32 script_cmd_actor_unlock_anim(int, int, int, int);
static bool32 script_cmd_actor_set_locked_frame(int, int, int, int);
static bool32 script_cmd_actor_set_frame(int, int, int, int);
static bool32 sub_805F120(int, int, int, int);
static bool32 script_cmd_actor_move(int, int, int, int);
static bool32 script_cmd_actor_move_to_saved_position(int, int, int, int);
static bool32 script_cmd_actor_move_from_cam(int, int, int, int);
static bool32 sub_805F40C(int, int, int, int);
static bool32 sub_805F428(int, int, int, int);
static bool32 script_cmd_alloc_oam_matrices(int, int, int, int);
static bool32 script_cmd_free_oam_matrices(int, int, int, int);
static bool32 sub_805F480(int, int, int, int);
static bool32 sub_805F4B0(int, int, int, int);
static bool32 sub_805F4DC(int, int, int, int);
static bool32 sub_805F51C(int, int, int, int);
static bool32 script_cmd_play_bgm(int, int, int, int);
static bool32 script_cmd_stop_bgm(int, int, int, int);
static bool32 script_cmd_play_sfx(int, int, int, int);
static bool32 script_cmd_stop_sfx(int, int, int, int);
static bool32 script_cmd_stop_all_sfx(int, int, int, int);
static bool32 script_cmd_play_bill_drill_sfx(int, int, int, int);
static bool32 script_cmd_stop_bill_drill_sfx(int, int, int, int);
static bool32 script_cmd_set_bgm_volume(int, int, int, int);
static bool32 script_cmd_set_bgm_volume_if_louder(int, int, int, int);
static bool32 script_cmd_set_sfx_volume(int, int, int, int);
static bool32 script_cmd_set_bgm_volume_global_or_mute(int, int, int, int);
static bool32 sub_805F7D8(int, int, int, int);
static bool32 script_cmd_start_input_demo(int, int, int, int);
static bool32 script_cmd_camera_alloc(int, int, int, int);
static bool32 script_cmd_camera_free(int, int, int, int);
static bool32 script_cmd_camera_move(int, int, int, int);
static bool32 script_cmd_camera_move_to_actor_position(int, int, int, int);
static bool32 script_cmd_camera_move_to_saved_position(int, int, int, int);
static bool32 script_cmd_camera_save_position(int, int, int, int);
static bool32 sub_805FB38(int, int, int, int);
static bool32 script_cmd_camera_return_prescene(int, int, int, int);
static bool32 sub_805FB80(int, int, int, int);
static bool32 sub_805FBA4(int, int, int, int);
static bool32 sub_805FBB4(int, int, int, int);
static bool32 sub_805FBF4(int, int, int, int);
static bool32 sub_805FC34(int, int, int, int);
static bool32 script_cmd_set_wait_frames(int, int, int, int);
static bool32 sub_805FCB0(int, int, int, int);
static bool32 sub_805FCEC(int, int, int, int);
static bool32 script_cmd_set_player_direction(int, int, int, int);
static bool32 script_cmd_wait_for_cond(int, int, int, int);
static bool32 script_cmd_end(int, int, int, int);
static bool32 script_cmd_display_scene_transition(int, int, int, int);
static bool32 script_cmd_display_time_travel_scene(int, int, int, int);
static bool32 sub_8060568(int, int, int, int);
static bool32 script_cmd_display_license_screen(int, int, int, int);
static bool32 sub_8060B90(int, int, int, int);
static bool32 script_cmd_player_save_position(int, int, int, int);
static bool32 script_cmd_end_all_scripts(int, int, int, int);
static bool32 script_cmd_load_room_obj_palette(int, int, int, int);
static bool32 sub_8060C4C(int, int, int, int);
static bool32 sub_8060C78(int, int, int, int);
static bool32 sub_8060CB8(int, int, int, int);
static bool32 sub_8060CC4(int, int, int, int);
static bool32 sub_8060D74(int, int, int, int);
static bool32 sub_8060D80(int, int, int, int);
static bool32 sub_8060D90(int, int, int, int);

static bool32 (*const gFunctionList[SCRIPT_CMD_COUNT])(int, int, int, int) = {
    script_cmd_alloc_actors,
    script_cmd_load_and_store_room,
    script_cmd_load_room,
    script_cmd_restore_room,
    script_cmd_jump,
    script_cmd_jump_cond,
    script_cmd_hide_player,
    script_cmd_actor_init,
    script_cmd_actor_disable,
    script_cmd_actor_enable,
    script_cmd_actor_set_anim,
    script_cmd_actor_set_gameover_anim,
    script_cmd_actor_set_position,
    script_cmd_actor_set_position_relative_from_saved_position,
    script_cmd_actor_set_position_from_cam,
    script_cmd_actor_set_position_absolute,
    script_cmd_actor_save_position,
    sub_805EEBC,
    sub_805EF0C,
    script_cmd_actor_set_direction,
    script_cmd_actor_rotate_to_target,
    script_cmd_actor_set_priority,
    script_cmd_actor_revert_priority,
    sub_805F04C,
    script_cmd_actor_set_obj_mode,
    script_cmd_actor_set_palette,
    script_cmd_actor_lock_anim_on_frame,
    script_cmd_actor_unlock_anim,
    script_cmd_actor_set_locked_frame,
    script_cmd_actor_set_frame,
    sub_805F120,
    script_cmd_actor_move,
    script_cmd_actor_move_to_saved_position,
    script_cmd_actor_move_from_cam,
    sub_805F40C,
    sub_805F428,
    script_cmd_alloc_oam_matrices,
    script_cmd_free_oam_matrices,
    sub_805F480,
    sub_805F4B0,
    sub_805F4DC,
    sub_805F51C,
    script_cmd_play_bgm,
    script_cmd_stop_bgm,
    script_cmd_play_sfx,
    script_cmd_stop_sfx,
    script_cmd_stop_all_sfx,
    script_cmd_play_bill_drill_sfx,
    script_cmd_stop_bill_drill_sfx,
    script_cmd_set_bgm_volume,
    script_cmd_set_bgm_volume_if_louder,
    script_cmd_set_sfx_volume,
    script_cmd_set_bgm_volume_global_or_mute,
    sub_805F7D8,
    script_cmd_start_input_demo,
    script_cmd_camera_alloc,
    script_cmd_camera_free,
    script_cmd_camera_move,
    script_cmd_camera_move_to_actor_position,
    script_cmd_camera_move_to_saved_position,
    script_cmd_camera_save_position,
    sub_805FB38,
    script_cmd_camera_return_prescene,
    sub_805FB80,
    sub_805FBA4,
    sub_805FBB4,
    sub_805FBF4,
    sub_805FC34,
    script_cmd_set_wait_frames,
    sub_805FCB0,
    sub_805FCEC,
    script_cmd_set_player_direction,
    script_cmd_wait_for_cond,
    script_cmd_end,
    script_cmd_display_scene_transition,
    script_cmd_display_time_travel_scene,
    sub_8060568,
    script_cmd_display_license_screen,
    sub_8060B90,
    script_cmd_player_save_position,
    script_cmd_end_all_scripts,
    script_cmd_load_room_obj_palette,
    sub_8060C4C,
    sub_8060C78,
    sub_8060CB8,
    sub_8060CC4,
    sub_8060D74,
    sub_8060D80,
    sub_8060D90,
};

const struct InputRecord unk_80B21B4[] = { { KEYS_MASK ^ DPAD_DOWN, 159 } };
const u32 dword_80B21B8 = 1;

const struct InputRecord stru_80B21BC[] = { { KEYS_MASK ^ (DPAD_DOWN | DPAD_LEFT), 28 },
                                            { KEYS_MASK ^ DPAD_LEFT, 38 },
                                            { KEYS_MASK ^ DPAD_DOWN, 1 } };
const u32 dword_80B21C8 = 3;

const struct InputRecord struc_80B21CC[] = { { KEYS_MASK ^ DPAD_UP, 49 } };
const u32 dword_80B21D0 = 1;

static const struct struc_80B21D4 word_80B21D4[] = {
    { .xPos = 182, .yPos = 240, .priority = 1, .field_6 = 384 },
    { .xPos = 177, .yPos = 425, .priority = 2, .field_6 = 384 },
    { .xPos = 872, .yPos = 440, .priority = 2, .field_6 = 384 },
    { .xPos = 1085, .yPos = 282, .priority = 3, .field_6 = 384 },
    { .xPos = 536, .yPos = 552, .priority = 1, .field_6 = 256 },
    { .xPos = 544, .yPos = 384, .priority = 0, .field_6 = 256 },
};

void sub_805D158(void) {
    u8 i = 0;
    for (i = 0; i < MAX_SCRIPTS; i++) {
        byte_203FA16_2 = 0;
    }

    byte_203F99C = 0;
    word_203F998 = -1;
    word_203F99A = -1;
    gReadKeysFromDemoInput = FALSE;
    byte_203FA14 = 0;
    gActorCount = 0;
    byte_203F99F = 0;
    byte_203FA15 = 0;
    gHidePlayer = FALSE;
    byte_203FA16 = 0;
    byte_203FA16 = 0;
}

void start_script(int idx) {
    bool32 foundScript;
    u8 i;

    foundScript = FALSE;

    for (i = 0; !foundScript && i < MAX_SCRIPTS; i++) {
        if (!gScripts[i].isActive) {
            gCurrentScript = &gScripts[i];
            foundScript = TRUE;
        }
    }

    ASSERT(foundScript);

    gCurrentScript->field_14 = 0;
    gCurrentScript->scriptIdx = idx;
    gCurrentScript->field_1A = idx;
    gCurrentScript->cmdIdx = 0;
    gCurrentScript->endScript = FALSE;
    gCurrentScript->isActive = TRUE;
    gCurrentScript->waitFrames = 0;
    gCurrentScript->actorCount = 0;
    gCurrentScript->playInputDemo = FALSE;
    gCurrentScript->activeSfx = -1;
    byte_203F99E = TRUE;
    byte_203F99C = 1;

    switch (idx) {
        case 3:
        case 6:
        case 31:
        case 41:
        case 42:
        case 45:
        case 47:
        case 50:
        case 65:
        case 68:
        case 92:
        case 93:
        case 94:
        case 97:
        case 101:
        case 114:
        case 132:
        case 133:
        case 141:
        case 178:
        case 180:
            update_scripts();
            break;
    }
}

void sub_805D568(void) {
    u8 i;

    byte_203F99C = 0;
    word_203F998 = -1;
    word_203F99A = -1;
    gReadKeysFromDemoInput = FALSE;
    byte_203F99E = FALSE;

    for (i = 0; i < MAX_SCRIPTS; i++) {
        if (gScripts[i].isActive) {
            byte_203F99E = TRUE;
            if (gScripts[i].field_23) {
                byte_203F99C = 1;
                word_203F998 = gScripts[i].field_1A;
            } else {
                word_203F99A = gScripts[i].field_1A;
            }
        }

        if (gScripts[i].playInputDemo) {
            gReadKeysFromDemoInput = TRUE;
        }
    }
}

#define IS_IN_VIEW(x, y)                                                                               \
    (x) >> FX32_SHIFT < gCameraPixelX + 260 && (x) >> FX32_SHIFT > gCameraPixelX - 20                  \
        && (y) >> FX32_SHIFT < gCameraPixelY + 180 && (y) >> FX32_SHIFT > gCameraPixelY - 20

#define IS_IN_VIEW_ABSOLUTE(x, y)                                                                      \
    (x)<FX32_CONST(260) && (x)> FX32_CONST(-20) && (y)<FX32_CONST(180) && (y)> FX32_CONST(-20)

static void sub_805D614(struct ScriptState* script, int actorIdx) {
    struct Actor* actor = &script->actors[actorIdx];

    if (actor->field_5C) {
        actor->sprite.attr0Flag9 = 0;
        return;
    }

    if ((!actor->isPositionAbsolute && IS_IN_VIEW(actor->xPos, actor->yPos))
        || (actor->isPositionAbsolute && IS_IN_VIEW_ABSOLUTE(actor->xPos, actor->yPos))) {
        actor->sprite.attr0Flag9 = 0;
    } else {
        actor->sprite.attr0Flag9 = 1;
    }
}

void sub_0805D6B0(void) {
    struct Vec3fx pos;
    fx32 xDelta, yDelta;
    fx32 xPrev, yPrev;
    bool32 var1;

    if (byte_203FA15 && gScriptCamera->isMoving) {

        ASSERT(byte_203F99C);

        sub_80038A4(gScriptCamera->field_24);
        sub_80038C4(gScriptCamera->field_24, &pos.x, &pos.y, &pos.z);

        xPrev = gScriptCamera->xPosCurrent;
        yPrev = gScriptCamera->yPosCurrent;
        gScriptCamera->xPosCurrent += pos.x;
        gScriptCamera->yPosCurrent += pos.z;

        xDelta = gScriptCamera->xPosTarget - gScriptCamera->xPosCurrent;
        yDelta = gScriptCamera->yPosTarget - gScriptCamera->yPosCurrent;

        var1 = FALSE;

        if (gScriptCamera->xDistance > gScriptCamera->yDistance) {
            if ((pos.x > 0 && xDelta <= 0) || (pos.x <= 0 && xDelta >= 0)) {
                var1 = TRUE;
            }
        } else {
            if ((pos.z > 0 && yDelta <= 0) || (pos.z <= 0 && yDelta >= 0)) {
                var1 = TRUE;
            }
        }

        if (var1) {
            gScriptCamera->isMoving = FALSE;
            if (!gScriptCamera->field_26) {
                gScriptCamera->xPosCurrent = gScriptCamera->xPosTarget;
                gScriptCamera->yPosCurrent = gScriptCamera->yPosTarget;
                sub_8003864(gScriptCamera->field_24);
                gScriptCamera->field_24 = -1;
            }
        }

        if (gScriptCamera->isMoving) {
            ASSERT((u32)gScriptCamera->xPosCurrent <= (u32)gMapPixelSizeX << FX32_SHIFT
                   && gScriptCamera->xPosCurrent >= 0
                   && (u32)gScriptCamera->yPosCurrent <= (u32)gMapPixelSizeY << FX32_SHIFT
                   && gScriptCamera->yPosCurrent >= 0);

            dword_203FA1C = xDelta;
            dword_203FA20 = yDelta;
        }

        sub_800B958(gScriptCamera->xPosCurrent, gScriptCamera->yPosCurrent, xPrev, yPrev, TRUE);
    }

    if (byte_203FA14) {
        ASSERT(!byte_203FA15 || !gScriptCamera->isMoving);
        ASSERT(byte_203F99C);

        sub_802672C();

        if (byte_203FA14 == 2 && word_2002EC2 == word_2002EC0) {
            sub_8026714();
            byte_203FA14 = 0;
        }

        if (byte_203FA15) {
            sub_800B958(gScriptCamera->xPosCurrent, gScriptCamera->yPosCurrent,
                        gScriptCamera->xPosCurrent, gScriptCamera->yPosCurrent, TRUE);
        } else {
            sub_800B958((gCameraPixelX + 120) << FX32_SHIFT, (gCameraPixelY + 80) << FX32_SHIFT,
                        (gCameraPixelX + 120) << FX32_SHIFT, (gCameraPixelY + 80) << FX32_SHIFT, TRUE);
        }
    }

    if (byte_203F99F && !(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_DIALOGUE)) {
        byte_203F99F = 0;
    }
}

void sub_805D8D8(struct ScriptState* script) {
    u8 i;

    if (script->waitFrames != 0) {
        script->waitFrames--;
    }

    script->field_14++;

    for (i = 0; i < script->actorCount; i++) {
        struct Actor* actor = &script->actors[i];
        if (actor->isMoving) {
            fx32 xDist, yDist;
            struct Vec3fx vel;

            sub_80038A4(actor->calcIdx);
            sub_80038C4(actor->calcIdx, &vel.x, &vel.y, &vel.z);
            actor->xPos += vel.x;
            actor->yPos += vel.z;

            xDist = Abs(actor->xPosTarget - actor->xPos);
            yDist = Abs(actor->yPosTarget - actor->yPos);

            if ((actor->xDistance > actor->yDistance && xDist < Abs(vel.x))
                || (actor->yDistance >= actor->xDistance && yDist < Abs(vel.z))) {
                actor->isMoving = 0;
                if (!actor->field_5B) {
                    actor->xPos = actor->xPosTarget;
                    actor->yPos = actor->yPosTarget;
                    sub_8003864(actor->calcIdx);
                    actor->calcIdx = -1;
                }
            }
        }

        if (actor->field_58 || actor->field_59) {
            if (actor->field_58) {
                s32 var1 = actor->field_3C + actor->field_44;
                if ((actor->field_44 >= 0 && var1 >= actor->field_40)
                    || (actor->field_44 < 0 && var1 <= actor->field_40)) {
                    actor->field_3C = actor->field_40;
                    actor->field_58 = 0;
                } else {
                    actor->field_3C = var1;
                }
            }

            if (actor->field_59) {
                s32 var1 = actor->field_50 + actor->field_4C;
                if ((actor->field_4C >= 0 && var1 >= actor->field_48)
                    || (actor->field_4C < 0 && var1 <= actor->field_48)) {
                    actor->field_50 = actor->field_48;
                    actor->field_59 = 0;
                } else {
                    actor->field_50 = var1;
                }
            }

            sub_8025718(actor->field_54, (u8)(actor->field_50 >> 16), (u32)actor->field_3C >> 16);
        }

        if (actor->isPositionAbsolute) {
            actor->sprite.xPos = actor->xPos >> FX32_SHIFT;
            actor->sprite.yPos = actor->yPos >> FX32_SHIFT;
        } else {
            actor->sprite.xPos = (actor->xPos >> FX32_SHIFT) - gCameraPixelX;
            actor->sprite.yPos = (actor->yPos >> FX32_SHIFT) - gCameraPixelY;
        }

        if (actor->isVisible) {
            sub_805D614(script, i);
        }
    }
}

void play_input_demo(void) {
    if (gInputDemoFrames != 0) {
        gInputDemoFrames--;
        return;
    }

    if ((gInputDemoIsForward && gInputDemoStep == gInputDemoRecordCount)
        || (!gInputDemoIsForward && gInputDemoStep == 0)) {
        gCurrentScript->playInputDemo = FALSE;
        return;
    }

    gKeyInput = gInputDemoRecords[gInputDemoStep].input;
    gInputDemoFrames = gInputDemoRecords[gInputDemoStep].frames;

    if (gInputDemoIsForward) {
        gInputDemoStep++;
    } else {
        gInputDemoStep--;
        gKeyInput ^= DPAD_ANY;
    }
}

static bool32 sub_805DB38(void) {
    fx32 var1 = dword_203F9FC - gPlayerShadowPos.y;
    fx32 var2 = Abs(dword_200032C[dword_2000FC8].field_20);
    gKeyInput = KEYS_MASK;

    if (gPlayerShadowPos.x < (dword_203F9F8 - var2)) {
        gKeyInput ^= DPAD_RIGHT;
    }
    if (gPlayerShadowPos.x > (dword_203F9F8 + var2)) {
        gKeyInput ^= DPAD_LEFT;
    }
    if (gPlayerShadowPos.z < (var1 - var2)) {
        gKeyInput ^= DPAD_UP;
    }
    if (gPlayerShadowPos.z > (var1 + var2)) {
        gKeyInput ^= DPAD_DOWN;
    }

    if ((Abs(gPlayerShadowPos.x - dword_203F9F8) <= var2 && Abs(gPlayerShadowPos.z - var1) <= var2)
        || (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_DIALOGUE) != 0) {
        gReadKeysFromDemoInput = FALSE;
        return TRUE;
    }

    gReadKeysFromDemoInput = TRUE;
    return FALSE;
}

static void sub_805DC28(int actorIdx) {
    if (!gCurrentScript->actors[actorIdx].isMoving) {
        script_cmd_actor_set_anim(actorIdx, 1215, 1, 0);

        if (!RandomMinMax(FALSE, TRUE)) {
            script_cmd_actor_set_position_absolute(actorIdx, RandomMinMax(100, 120),
                                                   RandomMinMax(70, 90), 0);
            script_cmd_actor_move(actorIdx, RandomMinMax(50, 60), RandomMinMax(40, 120), FX32_CONST(6));
        } else {
            script_cmd_actor_set_position_absolute(actorIdx, RandomMinMax(120, 140),
                                                   RandomMinMax(70, 90), 0);
            script_cmd_actor_move(actorIdx, RandomMinMax(180, 190), RandomMinMax(40, 120),
                                  FX32_CONST(6));
        }

        sub_8025718(gCurrentScript->actors[actorIdx].field_54, RandomMinMax(0, 64),
                    RandomMinMax(256, 768));
    }
}

static bool32 sub_805DD20(void) {
    //! Possible fake match.
    // https://decomp.me/scratch/0dBNg
    u32 a = byte_203FA12 += 5;
    sub_8025718(0, 0, dword_80B1AE4[0x80 - ((u8)a / 2)] + 0x180);
    sub_805DC28(1);
    sub_805DC28(3);
    return !(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_DIALOGUE);
}

// https://decomp.me/scratch/BrRUy
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/update_scripts.s\"");
#endif

void render_scripts(u32** a1, u32* a2) {
    u8 i;

    if (!byte_203F99E) {
        return;
    }

    for (i = 0; i < MAX_SCRIPTS; i++) {
        struct ScriptState* script = &gScripts[i];

        if (script->isActive && (script->field_23 || !byte_203FA16)) {
            int actorIdx;
            for (actorIdx = 0; actorIdx < script->actorCount; actorIdx++) {
                if (script->actors[actorIdx].isVisible && !script->actors[actorIdx].sprite.attr0Flag9) {
                    u32 v10;

                    sprite_render_ex(&script->actors[actorIdx].sprite, *a1);

                    if (script->actors[actorIdx].sprite.objMode == 1) {
                        u32* var1 = *a1;
                        u32 priority = script->actors[actorIdx].sprite.priority << 30;
                        v10 = (((gMapPixelSizeY << 16) - script->actors[actorIdx].yPos
                                - script->actors[actorIdx].field_38)
                               >> 4)
                              | 0x10000000;
                        *var1 = priority | v10;
                    } else {
                        u32* var1 = *a1;
                        u32 priority = script->actors[actorIdx].sprite.priority << 30;
                        v10 = ((gMapPixelSizeY << 16) - script->actors[actorIdx].yPos
                               - script->actors[actorIdx].field_38)
                              >> 4;
                        *var1 = priority | v10;
                    }

                    *a1 += 3;
                    *a2 += 1;
                }
            }
        }
    }
}

void render_scripts_direct(void) {
    u8 i;
    int actorIdx;

    for (i = 0; i < MAX_SCRIPTS; i++) {
        struct ScriptState* script = &gScripts[i];
        for (actorIdx = 0; actorIdx < script->actorCount; actorIdx++) {
            if (script->actors[actorIdx].isVisible) {
                sprite_render(&script->actors[actorIdx].sprite);
            }
        }
    }
}

static void remove_actors(struct ScriptState* script) {
    u8 i;

    if (script->actorCount == 0) {
        return;
    }

    for (i = 0; i < script->actorCount; i++) {
        if (script->actors[i].isVisible) {
            if (script->actors[i].calcIdx != -1) {
                sub_8003864(script->actors[i].calcIdx);
                script->actors[i].calcIdx = -1;
            }
            gActorCount--;
        }
    }

    Free(script->actors, 3);
    script->actorCount = 0;
}

void end_script(struct ScriptState* script) {
    remove_actors(script);
    script->endScript = TRUE;

    if (script->field_23) {
        byte_203F99C = 0;
        word_203F998 = -1;
        word_203F99A = -1;
        script->field_23 = 0;
        byte_203FA14 = 0;
        ASSERT(!byte_203FA15);
    }

    script->isActive = FALSE;
    sub_805D568();
    ASSERT(byte_203F99E || !DoesMemBlockExistById(3, 5));
}

void end_all_scripts(int a1) {
    u8 i;

    if (byte_203FA15) {
        switch (a1) {
            case 0:
            case 2:
                script_cmd_camera_free(0, 0, 0, 0);
                break;
        }
    }

    for (i = 0; i < MAX_SCRIPTS; i++) {
        if (!gScripts[i].isActive) {
            continue;
        }

        switch (a1) {
            case 0:
                if (gCurrentScript->field_23) {
                    end_script(&gScripts[i]);
                }
                break;

            case 1:
                if (!gCurrentScript->field_23) {
                    end_script(&gScripts[i]);
                }
                break;

            case 2:
                end_script(&gScripts[i]);
                break;
        }
    }

    sub_805D568();
}

static void sub_0805E270(int xMin, int xMax, int yMin, int yMax) {
    u8 yDistanceToMax;
    u8 yDistanceToMin;
    u8 xDistanceToMin;
    u8 xDistanceToMax;
    int xClearance;
    int yClearance;

    ASSERT(xMin < xMax && yMin < yMax);

    xClearance = (xMax - xMin) >> 2;
    yClearance = (yMax - yMin) >> 2;

    xDistanceToMax = xMax - (gScriptCamera->xPosCurrent >> FX32_SHIFT);
    xDistanceToMin = (gScriptCamera->xPosCurrent >> FX32_SHIFT) - xMin;
    yDistanceToMax = yMax - (gScriptCamera->yPosCurrent >> FX32_SHIFT);
    yDistanceToMin = (gScriptCamera->yPosCurrent >> FX32_SHIFT) - yMin;

    while (gScriptCamera->xPosTarget == gScriptCamera->xPosCurrent
           && gScriptCamera->yPosTarget == gScriptCamera->yPosCurrent) {
        if (xDistanceToMax < xDistanceToMin) {
            if (yDistanceToMin < yDistanceToMax) {
                if (xDistanceToMax < yDistanceToMin) {
                    gScriptCamera->xPosTarget = RandomMinMax(xMin, xMin + xClearance) << FX32_SHIFT;
                    gScriptCamera->yPosTarget = RandomMinMax(yMin, yMax) << FX32_SHIFT;
                } else {
                    gScriptCamera->xPosTarget = RandomMinMax(xMin, xMax) << FX32_SHIFT;
                    gScriptCamera->yPosTarget = RandomMinMax(yMax - yClearance, yMax) << FX32_SHIFT;
                }
            } else {
                if (xDistanceToMax < yDistanceToMax) {
                    gScriptCamera->xPosTarget = RandomMinMax(xMin, xMin + xClearance) << FX32_SHIFT;
                    gScriptCamera->yPosTarget = RandomMinMax(yMin, yMax) << FX32_SHIFT;
                } else {
                    gScriptCamera->xPosTarget = RandomMinMax(xMin, xMax) << FX32_SHIFT;
                    gScriptCamera->yPosTarget = RandomMinMax(yMin, yMin + yClearance) << FX32_SHIFT;
                }
            }
        } else {
            if (yDistanceToMin < yDistanceToMax) {
                if (xDistanceToMin < yDistanceToMin) {
                    gScriptCamera->xPosTarget = RandomMinMax(xMax - xClearance, xMax) << FX32_SHIFT;
                    gScriptCamera->yPosTarget = RandomMinMax(yMin, yMax) << FX32_SHIFT;
                } else {
                    gScriptCamera->xPosTarget = RandomMinMax(xMin, xMax) << FX32_SHIFT;
                    gScriptCamera->yPosTarget = RandomMinMax(yMax - yClearance, yMax) << FX32_SHIFT;
                }
            } else {
                if (xDistanceToMin < yDistanceToMax) {
                    gScriptCamera->xPosTarget = RandomMinMax(xMax - xClearance, xMax) << FX32_SHIFT;
                    gScriptCamera->yPosTarget = RandomMinMax(yMin, yMax) << FX32_SHIFT;
                } else {
                    gScriptCamera->xPosTarget = RandomMinMax(xMin, xMax) << FX32_SHIFT;
                    gScriptCamera->yPosTarget = RandomMinMax(yMin, yMin + yClearance) << FX32_SHIFT;
                }
            }
        }
    }
}

static enum Directions convert_angle_to_direction(fx32 angle) {
    if (angle < 0) {
        angle += FX32_CONST(22.5);
    }

    if ((angle - (u32)FX32_CONST(22.5)) > FX32_CONST(315)) {
        return DIRECTION_RIGHT;
    }
    if (angle < FX32_CONST(67.5)) {
        return DIRECTION_DOWN_RIGHT;
    }
    if (angle < FX32_CONST(112.5)) {
        return DIRECTION_DOWN;
    }
    if (angle < FX32_CONST(157.5)) {
        return DIRECTION_DOWN_LEFT;
    }
    if (angle < FX32_CONST(202.5)) {
        return DIRECTION_LEFT;
    }
    if (angle < FX32_CONST(247.5)) {
        return DIRECTION_UP_LEFT;
    }
    if (angle < FX32_CONST(292.5)) {
        return DIRECTION_UP;
    }
    return DIRECTION_UP_RIGHT;
}

/**************************************************************
 *                  SCRIPT COMMAND FUNCTIONS                  *
 **************************************************************/

static bool32 script_cmd_alloc_actors(int count, int _, int __, int ___) {
    u8 i;

    gCurrentScript->actorCount = count;

    if (count != 0) {
        gCurrentScript->actors = Alloc(sizeof(struct Actor) * count, 5, 3);

        for (i = 0; i < gCurrentScript->actorCount; i++) {
            gCurrentScript->actors[i].isVisible = FALSE;
            gCurrentScript->actors[i].isMoving = FALSE;
            gCurrentScript->actors[i].field_58 = 0;
            gCurrentScript->actors[i].field_59 = 0;
            gCurrentScript->actors[i].calcIdx = -1;
        }
    }

    return TRUE;
}

static bool32 script_cmd_load_and_store_room(int room, int warp, int a3, int changeMusic) {
    audio_halt_all_fx();

    gCurrentScript->loadedRoomIdx = gLoadedRoomIndex;
    gCurrentScript->playerPos.x = gPlayerPos.x;
    gCurrentScript->playerPos.y = gPlayerPos.y;
    gCurrentScript->playerPos.z = gPlayerPos.z;

    if (a3) {
        sub_80271A4(4095, changeMusic);
    } else {
        sub_80270AC(4095, changeMusic);
    }

    if (byte_203FA15) {
        script_cmd_camera_free(0, 0, 0, 0);
    }

    remove_actors(gCurrentScript);

    if (byte_203FA15) {
        script_cmd_camera_free(0, 0, 0, 0);
    }

    byte_203FA16 = 1;
    SetupRoom(room, warp, changeMusic, 1);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    EnableBGAlphaBlending();
    sub_800EB14();
    init_efx();
    init_room_name();

    if (sub_80631A0()) {
        byte_203E137 = 1;
        sub_8063188();
    }

    gPlayerSprite.attr0Flag9 = 0;

    if (a3) {
        sub_8026F78(4095, changeMusic, 1);
    } else {
        sub_8026E48(4095, changeMusic, 1);
    }

    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;

    if (byte_203FA15) {
        script_cmd_camera_alloc(0, 0, 0, 0);
    }

    sub_8041E58();

    return TRUE;
}

static bool32 script_cmd_load_room(int room, int warp, int a3, int changeMusic) {
    audio_halt_all_fx();

    if (a3) {
        sub_80271A4(4095, changeMusic);
    } else {
        sub_80270AC(4095, changeMusic);
    }

    if (byte_203FA15) {
        script_cmd_camera_free(0, 0, 0, 0);
    }

    remove_actors(gCurrentScript);

    if (byte_203FA15) {
        script_cmd_camera_free(0, 0, 0, 0);
    }

    SetupRoom(room, warp, changeMusic, 0);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    EnableBGAlphaBlending();
    sub_800EB14();
    init_efx();
    init_room_name();

    if (sub_80631A0()) {
        byte_203E137 = 1;
        sub_8063188();
    }

    gPlayerSprite.attr0Flag9 = 0;

    if (a3) {
        sub_8026F78(4095, changeMusic, 1);
    } else {
        sub_8026E48(4095, changeMusic, 1);
    }

    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;

    return TRUE;
}

static bool32 script_cmd_restore_room(int a1, int _, int __, int ___) {
    bool32 isMusicChanged;

    if (byte_203FA15) {
        script_cmd_camera_free(0, 0, 0, 0);
    }

    remove_actors(gCurrentScript);
    isMusicChanged = gLoadedRoomBgm != dRoomIndexes[gCurrentScript->loadedRoomIdx].music;

    sub_800C1E8(gCurrentScript->loadedRoomIdx, gCurrentScript->playerPos.x, gCurrentScript->playerPos.y,
                gCurrentScript->playerPos.z, 0, 2);

    if (sub_80631A0()) {
        byte_203E137 = 0;
        sub_8063194();
    }

    sub_8029DA8(256);

    switch (a1) {
        default:
        case 0:
            sub_8026E48(4095, isMusicChanged, 1);
            break;

        case 1:
            sub_8026F78(4095, isMusicChanged, 1);
            break;

        case 3:
            break;
    }

    byte_203FA16 = 0;
    if (byte_203FA15) {
        script_cmd_camera_alloc(0, 0, 0, 0);
    }

    return TRUE;
}

static bool32 script_cmd_jump(int scriptIdx, int cmdIdx, int _, int __) {
    gCurrentScript->scriptIdx = scriptIdx;
    gCurrentScript->cmdIdx = cmdIdx - 1;
    return TRUE;
}

static bool32 script_cmd_jump_cond(int condition, int scriptIdx, int cmdIdx, int _) {
    bool32 shouldJump = FALSE;

    switch (condition) {
        case SCRIPT_JUMP_COND_NONE:
        case SCRIPT_JUMP_COND_NONE_EX:
            break;

        case SCRIPT_JUMP_COND_GAME_COMPLETE:
            if (is_game_complete()) {
                shouldJump = TRUE;
            }
            break;

        case SCRIPT_JUMP_COND_TRANSFORMED:
            if (gTransformation != TRANSFORMATION_BANJO) {
                shouldJump = TRUE;
            }
            break;

        case SCRIPT_JUMP_COND_SHOCK_JUMP_LOCKED:
            if (!gUnlockedMoves[MOVE_SHOCK_JUMP]) {
                shouldJump = TRUE;
            }
            break;

        case SCRIPT_JUMP_COND_WONDERWING_LOCKED:
            if (!gUnlockedMoves[MOVE_WONDERWING]) {
                shouldJump = TRUE;
            }
            break;
    }

    if (shouldJump) {
        gCurrentScript->scriptIdx = scriptIdx;
        gCurrentScript->cmdIdx = cmdIdx - 1;
    }

    return TRUE;
}

static bool32 script_cmd_hide_player(int hidePlayer, int _, int __, int ___) {
    if (hidePlayer) {
        gPlayerIsTransparent = TRUE;
    } else {
        gPlayerIsTransparent = FALSE;
        ;
        gPlayerSprite.objMode = ST_OAM_OBJ_NORMAL;
    }
    gHidePlayer = hidePlayer;
    return TRUE;
}

static bool32 script_cmd_actor_init(int actorIdx, int _, int __, int ___) {
    SetSprite(&gCurrentScript->actors[actorIdx].sprite, 0x451u, FALSE, 0, 1, 240, 200, 2);
    gCurrentScript->actors[actorIdx].isVisible = TRUE;
    gCurrentScript->actors[actorIdx].isMoving = FALSE;
    gCurrentScript->actors[actorIdx].field_58 = 0;
    gCurrentScript->actors[actorIdx].field_59 = 0;
    gCurrentScript->actors[actorIdx].isPositionAbsolute = FALSE;
    gCurrentScript->actors[actorIdx].xPos =
        (gCameraPixelX + gCurrentScript->actors[actorIdx].sprite.xPos) << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPos =
        (gCameraPixelY + gCurrentScript->actors[actorIdx].sprite.yPos) << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].xDistance = 0;
    gCurrentScript->actors[actorIdx].yDistance = 0;
    gCurrentScript->actors[actorIdx].moveSpeed = 0;
    gCurrentScript->actors[actorIdx].calcIdx = -1;
    gCurrentScript->actors[actorIdx].field_5B = 0;
    gCurrentScript->actors[actorIdx].field_38 = 0;
    gCurrentScript->actors[actorIdx].field_3C = 0x1000000;
    gCurrentScript->actors[actorIdx].field_40 = 0x1000000;
    gCurrentScript->actors[actorIdx].field_44 = 0;
    gCurrentScript->actors[actorIdx].field_54 = 0;
    gCurrentScript->actors[actorIdx].field_50 = 0;
    gCurrentScript->actors[actorIdx].field_48 = 0;
    gCurrentScript->actors[actorIdx].field_4C = 0;
    gCurrentScript->actors[actorIdx].field_5C = 0;
    gActorCount++;
    sub_805D614(gCurrentScript, actorIdx);
    return TRUE;
}

static bool32 script_cmd_actor_disable(int actorIdx, int _, int __, int ___) {
    if (gCurrentScript->actors[actorIdx].isVisible) {
        gActorCount--;
        if (gCurrentScript->actors[actorIdx].calcIdx != -1) {
            sub_8003864(gCurrentScript->actors[actorIdx].calcIdx);
            gCurrentScript->actors[actorIdx].calcIdx = -1;
        }
    }

    gCurrentScript->actors[actorIdx].isVisible = FALSE;
    gCurrentScript->actors[actorIdx].isMoving = FALSE;
    gCurrentScript->actors[actorIdx].field_58 = 0;
    gCurrentScript->actors[actorIdx].field_59 = 0;
    gCurrentScript->actors[actorIdx].xPosTarget = gCurrentScript->actors[actorIdx].xPos;
    gCurrentScript->actors[actorIdx].yPosTarget = gCurrentScript->actors[actorIdx].yPos;
    gCurrentScript->actors[actorIdx].sprite.attr0Flag9 = 1;

    return TRUE;
}

static bool32 script_cmd_actor_enable(int actorIdx, int _, int __, int ___) {
    if (!gCurrentScript->actors[actorIdx].isVisible) {
        gActorCount++;
    }
    gCurrentScript->actors[actorIdx].isVisible = TRUE;
    gCurrentScript->actors[actorIdx].sprite.attr0Flag9 = 0;
    return TRUE;
}

static bool32 script_cmd_actor_set_anim(int actorIdx, int spriteIdx, int maxAnimRepeats, int _) {
    sprite_set_anim(&gCurrentScript->actors[actorIdx].sprite, spriteIdx, FALSE, maxAnimRepeats);
    return TRUE;
}

static bool32 script_cmd_actor_set_gameover_anim(int actorIdx, int anim, int _, int __) {
    if (gTransformation == TRANSFORMATION_BANJO) {
        switch (anim) {
            case 0:
                script_cmd_actor_set_anim(actorIdx, 1258, 1, 0);
                break;

            case 1:
                script_cmd_actor_set_anim(actorIdx, 9, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;

            case 2:
                script_cmd_actor_set_anim(actorIdx, 1, 0, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;
        }
        return TRUE;
    } else if (gTransformation == TRANSFORMATION_MOUSE) {
        switch (anim) {
            case 0:
                script_cmd_actor_set_anim(actorIdx, 321, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                script_cmd_actor_lock_anim_on_frame(actorIdx, 5, 0, 0);
                script_cmd_actor_set_locked_frame(actorIdx, 5, 0, 0);
                DmaTransferObjPalette(&unk_83FD734, 7, 7);
                break;

            case 1:
                script_cmd_actor_set_anim(actorIdx, 305, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;

            case 2:
                script_cmd_actor_set_anim(actorIdx, 329, 0, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;
        }
        return TRUE;
    } else if (gTransformation == TRANSFORMATION_CANDLE) {
        switch (anim) {
            case 0:
                script_cmd_actor_set_anim(actorIdx, 361, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_DOWN_LEFT, 0, 0);
                script_cmd_actor_lock_anim_on_frame(actorIdx, 8, 0, 0);
                script_cmd_actor_set_locked_frame(actorIdx, 8, 0, 0);
                DmaTransferObjPalette(&unk_83FD754, 7, 7);
                break;

            case 1:
                script_cmd_actor_set_anim(actorIdx, 385, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;

            case 2:
                script_cmd_actor_set_anim(actorIdx, 369, 0, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;
        }
        return TRUE;
    } else if (gTransformation == TRANSFORMATION_OCTOPUS) {
        switch (anim) {
            case 0:
                script_cmd_actor_set_anim(actorIdx, 465, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_DOWN_LEFT, 0, 0);
                script_cmd_actor_lock_anim_on_frame(actorIdx, 3, 0, 0);
                script_cmd_actor_set_locked_frame(actorIdx, 3, 0, 0);
                DmaTransferObjPalette(&unk_83FD794, 7, 7);
                break;

            case 1:
                script_cmd_actor_set_anim(actorIdx, 433, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;

            case 2:
                script_cmd_actor_set_anim(actorIdx, 425, 0, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;
        }
        return TRUE;
    } else if (gTransformation == TRANSFORMATION_TANK) {
        switch (anim) {
            case 0:
                script_cmd_actor_set_anim(actorIdx, 401, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_DOWN_LEFT, 0, 0);
                script_cmd_actor_lock_anim_on_frame(actorIdx, 9, 0, 0);
                script_cmd_actor_set_locked_frame(actorIdx, 9, 0, 0);
                DmaTransferObjPalette(&unk_83FD774, 7, 7);
                break;

            case 1:
                script_cmd_actor_set_anim(actorIdx, 417, 1, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;

            case 2:
                script_cmd_actor_set_anim(actorIdx, 401, 0, 0);
                script_cmd_actor_set_direction(actorIdx, DIRECTION_LEFT, 0, 0);
                break;
        }
        return TRUE;
    }

    ASSERT(0);
}

static bool32 script_cmd_actor_set_position(int actorIdx, int xPos, int yPos, int _) {
    gCurrentScript->actors[actorIdx].xPos = xPos << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPos = yPos << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].xPosTarget = xPos << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPosTarget = yPos << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].isMoving = FALSE;
    gCurrentScript->actors[actorIdx].moveSpeed = 0;
    gCurrentScript->actors[actorIdx].sprite.xPos = xPos - gCameraPixelX;
    gCurrentScript->actors[actorIdx].sprite.yPos = yPos - gCameraPixelY;
    gCurrentScript->actors[actorIdx].isPositionAbsolute = FALSE;
    return TRUE;
}

static bool32 script_cmd_actor_set_position_relative_from_saved_position(int actorIdx, int xPos,
                                                                         int yPos, int _) {
    return script_cmd_actor_set_position(actorIdx, gScriptSavedPosX + xPos, gScriptSavedPosY + yPos, 0);
}

static bool32 script_cmd_actor_set_position_from_cam(int actorIdx, int xPos, int yPos, int _) {
    gCurrentScript->actors[actorIdx].xPos = (gCameraPixelX + xPos) << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPos = (gCameraPixelY + yPos) << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].xPosTarget = (gCameraPixelX + xPos) << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPosTarget = (gCameraPixelY + yPos) << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].isMoving = FALSE;
    gCurrentScript->actors[actorIdx].moveSpeed = 0;
    gCurrentScript->actors[actorIdx].sprite.xPos = xPos;
    gCurrentScript->actors[actorIdx].sprite.yPos = yPos;
    gCurrentScript->actors[actorIdx].isPositionAbsolute = FALSE;
    return TRUE;
}

static bool32 script_cmd_actor_set_position_absolute(int actorIdx, int xPos, int yPos, int _) {
    gCurrentScript->actors[actorIdx].xPos = xPos << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPos = yPos << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].xPosTarget = xPos << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPosTarget = yPos << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].isMoving = FALSE;
    gCurrentScript->actors[actorIdx].moveSpeed = 0;
    gCurrentScript->actors[actorIdx].sprite.xPos = xPos;
    gCurrentScript->actors[actorIdx].sprite.yPos = yPos;
    gCurrentScript->actors[actorIdx].isPositionAbsolute = TRUE;
    return TRUE;
}

static bool32 script_cmd_actor_save_position(int actordIdx, int _, int __, int ___) {
    gScriptSavedPosX = gCurrentScript->actors[actordIdx].sprite.xPos;
    gScriptSavedPosY = gCurrentScript->actors[actordIdx].sprite.yPos;
    gScriptSavedPriority = 3 - gCurrentScript->actors[actordIdx].sprite.priority;
    return TRUE;
}

static bool32 sub_805EEBC(int actorIdx, int _, int __, int ___) {
    script_cmd_actor_set_position(actorIdx, gPlayerPos.x >> FX32_SHIFT,
                                  gMapPixelSizeY - ((gPlayerPos.y + gPlayerPos.z) >> FX32_SHIFT), 0);
    script_cmd_actor_set_priority(actorIdx, 3 - sub_800C50C(), 0, 0);
    sub_805F04C(actorIdx, gPlayerPos.y, 0, 0);
    return TRUE;
}

static bool32 sub_805EF0C(int actorIdx, int _, int __, int ___) {
    script_cmd_actor_set_position(
        actorIdx, gPlayerShadowPos.x >> FX32_SHIFT,
        gMapPixelSizeY - ((gPlayerShadowPos.y + gPlayerShadowPos.z) >> FX32_SHIFT), 0);
    script_cmd_actor_set_priority(actorIdx, 3 - sub_800C50C(), 0, 0);
    sub_805F04C(actorIdx, gPlayerShadowPos.y, 0, 0);
    return TRUE;
}

static bool32 script_cmd_actor_set_direction(int actorIdx, int direction, int _, int __) {
    u16 idx = gCurrentScript->actors[actorIdx].sprite.index
              - gCurrentScript->actors[actorIdx].sprite.direction;
    gCurrentScript->actors[actorIdx].sprite.direction = direction;
    sprite_set_anim(&gCurrentScript->actors[actorIdx].sprite, idx, 0,
                    gCurrentScript->actors[actorIdx].sprite.maxAnimRepeats);
    return TRUE;
}

static bool32 script_cmd_actor_rotate_to_target(int actorIdx, int _, int __, int ___) {
    fx32 xDistance, yDistance;
    fx32 angle;

    ASSERT(gCurrentScript->actors[actorIdx].xDistance != 0
           || gCurrentScript->actors[actorIdx].yDistance != 0);

    xDistance = gCurrentScript->actors[actorIdx].xPosTarget - gCurrentScript->actors[actorIdx].xPos;
    yDistance = gCurrentScript->actors[actorIdx].yPosTarget - gCurrentScript->actors[actorIdx].yPos;

    if (Abs(xDistance) > Abs(yDistance)) {
        angle = sub_80039AC(yDistance, xDistance);
    } else {
        angle = sub_80039B4(xDistance, yDistance);
    }

    return script_cmd_actor_set_direction(actorIdx, convert_angle_to_direction(angle), 0, 0);
}

static bool32 script_cmd_actor_set_priority(int actorIdx, int priority, int _, int __) {
    sprite_set_priority(&gCurrentScript->actors[actorIdx].sprite, 3 - priority);
    return TRUE;
}

static bool32 script_cmd_actor_revert_priority(int actorIdx, int _, int __, int ___) {
    return script_cmd_actor_set_priority(actorIdx, gScriptSavedPriority, 0, 0);
}

static bool32 sub_805F04C(int actorIdx, int a2, int _, int __) {
    gCurrentScript->actors[actorIdx].field_38 = a2 << 16;
    return TRUE;
}

static bool32 script_cmd_actor_set_obj_mode(int actorIdx, int objMode, int _, int __) {
    gCurrentScript->actors[actorIdx].sprite.objMode = objMode;
    return TRUE;
}

static bool32 script_cmd_actor_set_palette(int actorIdx, int palette, int _, int __) {
    sprite_set_palette(&gCurrentScript->actors[actorIdx].sprite, palette);
    gCurrentScript->actors[actorIdx].sprite.alwaysUsePalette0 = TRUE;
    return TRUE;
}

static bool32 script_cmd_actor_lock_anim_on_frame(int actorIdx, int frame, int _, int __) {
    sprite_lock_anim_on_frame(&gCurrentScript->actors[actorIdx].sprite, frame);
    return TRUE;
}

static bool32 script_cmd_actor_unlock_anim(int actorIdx, int _, int __, int ___) {
    sprite_unlock_anim(&gCurrentScript->actors[actorIdx].sprite);
    return TRUE;
}

static bool32 script_cmd_actor_set_locked_frame(int actorIdx, int frame, int _, int __) {
    sprite_set_locked_frame(&gCurrentScript->actors[actorIdx].sprite, frame);
    return TRUE;
}

static bool32 script_cmd_actor_set_frame(int actorIdx, int frame, int _, int __) {
    gCurrentScript->actors[actorIdx].sprite.loopFrame = frame;
    return TRUE;
}

static bool32 sub_805F120(int actorIdx, int _, int __, int ___) {
    sub_800E9EC(&gCurrentScript->actors[actorIdx].sprite, 15, 0x1FFF);
    return TRUE;
}

static bool32 script_cmd_actor_move(int actorIdx, int x, int y, int moveSpeed) {
    fx32 xDistance, yDistance;

    if (gCurrentScript->actors[actorIdx].calcIdx == -1) {
        gCurrentScript->actors[actorIdx].calcIdx = sub_8003854(0x4B0000);
    }
    sub_800389C(gCurrentScript->actors[actorIdx].calcIdx, dword_80CC844[0]);
    sub_8003894(gCurrentScript->actors[actorIdx].calcIdx, dword_80CC7EC[0]);

    gCurrentScript->actors[actorIdx].xPosTarget = x << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPosTarget = y << FX32_SHIFT;

    xDistance = (x << FX32_SHIFT) - gCurrentScript->actors[actorIdx].xPos;
    yDistance = (y << FX32_SHIFT) - gCurrentScript->actors[actorIdx].yPos;

    gCurrentScript->actors[actorIdx].moveSpeed = moveSpeed;
    gCurrentScript->actors[actorIdx].xDistance = Abs(xDistance);
    gCurrentScript->actors[actorIdx].yDistance = Abs(yDistance);

    if (Abs(xDistance) > Abs(yDistance)) {
        sub_8003884(gCurrentScript->actors[actorIdx].calcIdx, moveSpeed,
                    sub_80039AC(yDistance, xDistance), 0);
    } else {
        sub_8003884(gCurrentScript->actors[actorIdx].calcIdx, moveSpeed,
                    sub_80039B4(xDistance, yDistance), 0);
    }

    gCurrentScript->actors[actorIdx].isMoving = TRUE;

    return TRUE;
}

static bool32 script_cmd_actor_move_to_saved_position(int actorIdx, int moveSpeed, int _, int __) {
    return script_cmd_actor_move(actorIdx, gScriptSavedPosX, gScriptSavedPosY, moveSpeed);
}

static bool32 script_cmd_actor_move_from_cam(int actorIdx, int x, int y, int moveSpeed) {
    fx32 xDistance, yDistance;

    if (gCurrentScript->actors[actorIdx].calcIdx == -1) {
        gCurrentScript->actors[actorIdx].calcIdx = sub_8003854(0x4B0000);
    }

    sub_800389C(gCurrentScript->actors[actorIdx].calcIdx, dword_80CC844[0]);
    sub_8003894(gCurrentScript->actors[actorIdx].calcIdx, dword_80CC7EC[0]);

    gCurrentScript->actors[actorIdx].xPosTarget = (gCameraPixelX + x) << FX32_SHIFT;
    gCurrentScript->actors[actorIdx].yPosTarget = (gCameraPixelY + y) << FX32_SHIFT;

    xDistance = gCurrentScript->actors[actorIdx].xPosTarget - gCurrentScript->actors[actorIdx].xPos;
    yDistance = gCurrentScript->actors[actorIdx].yPosTarget - gCurrentScript->actors[actorIdx].yPos;

    gCurrentScript->actors[actorIdx].moveSpeed = moveSpeed;
    gCurrentScript->actors[actorIdx].xDistance = Abs(xDistance);
    gCurrentScript->actors[actorIdx].yDistance = Abs(yDistance);

    if (Abs(xDistance) > Abs(yDistance)) {
        sub_8003884(gCurrentScript->actors[actorIdx].calcIdx, moveSpeed,
                    sub_80039AC(yDistance, xDistance), 0);
    } else {
        sub_8003884(gCurrentScript->actors[actorIdx].calcIdx, moveSpeed,
                    sub_80039B4(xDistance, yDistance), 0);
    }

    gCurrentScript->actors[actorIdx].isMoving = TRUE;

    return TRUE;
}

static bool32 sub_805F40C(int actorIdx, int a2, int _, int __) {
    gCurrentScript->actors[actorIdx].field_5B = a2;
    return TRUE;
}

static bool32 sub_805F428(int actorIdx, int a2, int _, int __) {
    gCurrentScript->actors[actorIdx].field_5C = a2;
    return TRUE;
}

static bool32 script_cmd_alloc_oam_matrices(int count, int _, int __, int ___) {
    gMatricesCount = count;
    gMatrices = (u32*)Alloc(16 * count, 5, 3);
    return TRUE;
}

static bool32 script_cmd_free_oam_matrices(int _, int __, int ___, int ____) {
    Free(gMatrices, 3);
    return TRUE;
}

static bool32 sub_805F480(int actorIdx, int a2, int _, int __) {
    gCurrentScript->actors[actorIdx].field_54 = a2;
    sub_8003820(&gCurrentScript->actors[actorIdx].sprite, 1, a2);
    return TRUE;
}

static bool32 sub_805F4B0(int actorIdx, int a2, int a3, int _) {
    gCurrentScript->actors[actorIdx].field_50 = a2 << 16;
    gCurrentScript->actors[actorIdx].field_3C = a3 << 16;
    sub_8025718(gCurrentScript->actors[actorIdx].field_54, a2, a3);
    return TRUE;
}

static bool32 sub_805F4DC(int actorIdx, int a2, int a3, int _) {
    struct Actor* actor = &gCurrentScript->actors[actorIdx];

    actor->field_40 = a2 << 16;

    ASSERT(a3 != 0);

    if (actor->field_3C > a2 << 16) {
        actor->field_44 = -a3;
    } else {
        actor->field_44 = a3;
    }

    actor->field_58 = 1;

    return TRUE;
}

static bool32 sub_805F51C(int actorIdx, int a2, int a3, int a4) {
    struct Actor* actor = &gCurrentScript->actors[actorIdx];

    actor->field_48 = a2 << 16;

    ASSERT(a3 != 0);

    if (a4) {
        actor->field_4C = a3;
    } else {
        actor->field_4C = -a3;
    }

    actor->field_59 = 1;

    return TRUE;
}

static bool32 script_cmd_play_bgm(int bgm, int _, int __, int ___) {
    gLoadedRoomBgm = bgm;
    if (gCanChangeBgm) {
        audio_start_tune(bgm);
    }
    return TRUE;
}

static bool32 script_cmd_stop_bgm(int _, int __, int ___, int ____) {
    audio_halt_tune();
    return TRUE;
}

static bool32 script_cmd_play_sfx(int sfx, int storeSfx, int _, int __) {
    if (storeSfx) {
        gCurrentScript->activeSfx = PLAY_SFX(sfx);
    } else {
        PLAY_SFX(sfx);
    }
    return TRUE;
}

static bool32 script_cmd_stop_sfx(int _, int __, int ___, int ____) {
    bool8 stopped = gCanPlaySfx ? audio_halt_fx(gCurrentScript->activeSfx) : 0;
    if (!stopped) {
        audio_halt_all_fx();
    }
    return TRUE;
}

static bool32 script_cmd_stop_all_sfx(int _, int __, int ___, int ____) {
    audio_halt_all_fx();
    return TRUE;
}

static bool32 script_cmd_play_bill_drill_sfx(int _, int __, int ___, int ____) {
    if (gCanPlaySfx) {
        audio_halt_fx(gBillDrillSfx);
    }
    gBillDrillSfx = PLAY_SFX(22);
    return TRUE;
}

static bool32 script_cmd_stop_bill_drill_sfx(int _, int __, int ___, int ____) {
    if (gCanPlaySfx) {
        audio_halt_fx(gBillDrillSfx);
    }
    return TRUE;
}

static bool32 script_cmd_set_bgm_volume(int volume, int useGlobal, int _, int __) {
    if (useGlobal) {
        audio_set_tune_vol(dVolumes[gBgmMainVolume]);
    } else {
        audio_set_tune_vol(dVolumes[volume]);
    }
    return TRUE;
}

static bool32 script_cmd_set_bgm_volume_if_louder(int volume, int useGlobal, int _, int __) {
    if (useGlobal) {
        audio_set_tune_vol(dVolumes[gBgmMainVolume]);
    } else if (gBgmMainVolume > volume) {
        audio_set_tune_vol(dVolumes[volume]);
    }
    return TRUE;
}

static bool32 script_cmd_set_sfx_volume(int volume, int useGlobal, int _, int __) {
    if (useGlobal) {
        audio_set_fx_vol(dVolumes[gSfxMainVolume]);
    } else {
        audio_set_fx_vol(dVolumes[volume]);
    }
    return TRUE;
}

static bool32 script_cmd_set_bgm_volume_global_or_mute(int useGlobal, int _, int __, int ___) {
    if (useGlobal) {
        audio_set_tune_vol(dVolumes[gBgmMainVolume]);
    } else {
        audio_set_tune_vol(dVolumes[0]);
    }
    return TRUE;
}

static bool32 sub_805F7D8(int a1, int _, int __, int ___) {
    ASSERT(!byte_203F99F);
    if (sub_0802FEDC(a1)) {
        byte_203F99F = 1;
    } else {
        ASSERT(0);
    }
    return TRUE;
}

static bool32 script_cmd_start_input_demo(int forward, int _, int __, int ___) {
    ASSERT(!gReadKeysFromDemoInput);
    gCurrentScript->isActive = FALSE;
    gCurrentScript->playInputDemo = TRUE;
    gInputDemoFrames = 0;
    if (forward) {
        gInputDemoStep = 0;
    } else {
        gInputDemoStep = gInputDemoRecordCount - 1;
    }
    gInputDemoIsForward = forward;
    return TRUE;
}

static bool32 script_cmd_camera_alloc(int _, int __, int ___, int ____) {
    ASSERT(!byte_203FA15);
    gScriptCamera = (struct ScriptCamera*)Alloc(sizeof(struct ScriptCamera), 5, 3);
    gScriptCamera->isMoving = FALSE;
    gScriptCamera->xPosOriginal = (gCameraPixelX + 120) << FX32_SHIFT;
    gScriptCamera->yPosOriginal = (gCameraPixelY + 80) << FX32_SHIFT;
    gScriptCamera->xPosCurrent = gScriptCamera->xPosOriginal;
    gScriptCamera->yPosCurrent = gScriptCamera->yPosOriginal;
    gScriptCamera->xPosTarget = gScriptCamera->xPosOriginal;
    gScriptCamera->yPosTarget = gScriptCamera->yPosOriginal;
    gScriptCamera->xDistance = 0;
    gScriptCamera->yDistance = 0;
    gScriptCamera->moveSpeed = 0;
    gScriptCamera->field_26 = 0;
    gScriptCamera->field_24 = -1;
    byte_203FA15 = 1;
    return TRUE;
}

static bool32 script_cmd_camera_free(int _, int __, int ___, int ____) {
    ASSERT(byte_203FA15);
    if (gScriptCamera->field_24 != -1) {
        sub_8003864(gScriptCamera->field_24);
        gScriptCamera->field_24 = -1;
    }
    Free(gScriptCamera, 3);
    byte_203FA15 = 0;
    return 1;
}

static bool32 script_cmd_camera_move(int x, int y, int moveSpeed, int _) {
    fx32 xDistance, yDistance;

    ASSERT(byte_203FA15);

    if (gScriptCamera->field_24 == -1) {
        gScriptCamera->field_24 = sub_8003854(4915200);
    }

    sub_800389C(gScriptCamera->field_24, dword_80CC844[0]);
    sub_8003894(gScriptCamera->field_24, dword_80CC7EC[0]);

    if (x == 0 && y == 0) {
        sub_0805E270(120, gMapPixelSizeX - 120, 80, gMapPixelSizeY - 80);
    } else {
        if (x > (u32)gMapPixelSizeX - 120) {
            x = gMapPixelSizeX - 120;
        }
        if (x < 120)
            x = 120;
        if (y > (u32)gMapPixelSizeY - 80) {
            y = gMapPixelSizeY - 80;
        }
        if (y < 80)
            y = 80;
        gScriptCamera->xPosTarget = x << FX32_SHIFT;
        gScriptCamera->yPosTarget = y << FX32_SHIFT;
    }

    xDistance = gScriptCamera->xPosTarget - gScriptCamera->xPosCurrent;
    yDistance = gScriptCamera->yPosTarget - gScriptCamera->yPosCurrent;

    gScriptCamera->xDistance = Abs(xDistance);
    gScriptCamera->yDistance = Abs(yDistance);

    ASSERT(xDistance != 0 || yDistance != 0);

    dword_203FA1C = gScriptCamera->xDistance;
    dword_203FA20 = gScriptCamera->yDistance;
    dword_203FA24 = gScriptCamera->xPosCurrent;
    dword_203FA28 = gScriptCamera->yPosCurrent;

    if (Abs(xDistance) > Abs(yDistance)) {
        sub_8003884(gScriptCamera->field_24, moveSpeed, sub_80039AC(yDistance, xDistance), 0);
    } else {
        sub_8003884(gScriptCamera->field_24, moveSpeed, sub_80039B4(xDistance, yDistance), 0);
    }

    sub_800386C(gScriptCamera->field_24, 0, 0);
    gScriptCamera->moveSpeed = moveSpeed;
    gScriptCamera->isMoving = TRUE;

    return 1;
}

static bool32 script_cmd_camera_move_to_actor_position(int moveSpeed, int _, int __, int ___) {
    return script_cmd_camera_move(gScriptSavedPosX, gScriptSavedPosY, moveSpeed, 0);
}

static bool32 script_cmd_camera_move_to_saved_position(int moveSpeed, int _, int __, int ___) {
    return script_cmd_camera_move(gScriptCameraSavePosX >> FX32_SHIFT,
                                  gScriptCameraSavePosY >> FX32_SHIFT, moveSpeed, 0);
}

static bool32 script_cmd_camera_save_position(int _, int __, int ___, int ____) {
    gScriptCameraSavePosX = gScriptCamera->xPosCurrent;
    gScriptCameraSavePosY = gScriptCamera->yPosCurrent;
    return TRUE;
}

static bool32 sub_805FB38(int a1, int _, int __, int ___) {
    gScriptCamera->field_26 = a1;
    return TRUE;
}

static bool32 script_cmd_camera_return_prescene(int moveSpeed, int _, int __, int ___) {
    ASSERT(byte_203FA15);
    if (moveSpeed == 0) {
        moveSpeed = gScriptCamera->moveSpeed;
    }
    script_cmd_camera_move(gScriptCamera->xPosOriginal >> FX32_SHIFT,
                           gScriptCamera->yPosOriginal >> FX32_SHIFT, moveSpeed, 0);
    return TRUE;
}

static bool32 sub_805FB80(int _, int __, int ___, int ____) {
    byte_203FA14 = 1;
    sub_80266C8(2, gCameraPixelY, 2);
    return TRUE;
}

static bool32 sub_805FBA4(int _, int __, int ___, int ____) {
    byte_203FA14 = 2;
    return TRUE;
}

static bool32 sub_805FBB4(int a1, int a2, int _, int __) {
    switch (a1) {
        case 0:
            sub_80270AC(4095, a2);
            break;

        case 1:
            sub_80271A4(4095, a2);
            break;

        case 2:
            sub_8026C24(4095);
            break;
    }

    return TRUE;
}

static bool32 sub_805FBF4(int a1, int a2, int _, int __) {
    switch (a1) {
        case 0:
            sub_8026E48(4095, a2, 1);
            break;

        case 1:
            sub_8026F78(4095, a2, 1);
            break;

        case 2:
            sub_8026C8C();
            break;
    }

    return TRUE;
}

static bool32 sub_805FC34(int a1, int _, int __, int ___) {
    if (a1 && byte_203F99C) {
        return FALSE;
    }

    byte_203F99C = a1;
    gCurrentScript->field_23 = a1;

    if (a1) {
        word_203F998 = gCurrentScript->field_1A;
        if (word_203F99A == gCurrentScript->field_1A) {
            word_203F99A = -1;
        }
    } else {
        word_203F99A = gCurrentScript->field_1A;
        if (word_203F998 == gCurrentScript->field_1A) {
            word_203F998 = -1;
        }
    }

    return TRUE;
}

static bool32 script_cmd_set_wait_frames(int frames, int _, int __, int ___) {
    gCurrentScript->waitFrames = frames;
    return TRUE;
}

static bool32 sub_805FCB0(int a1, int a2, int _, int __) {
    dword_203F9F8 = a1 << FX32_SHIFT;
    dword_203F9FC = (gMapPixelSizeY - a2) << FX32_SHIFT;
    gReadKeysFromDemoInput = TRUE;
    gKeyInput = KEYS_MASK;
    return TRUE;
}

static bool32 sub_805FCEC(int a1, int a2, int a3, int a4) {
    if (gMapPixelSizeY - ((gPlayerShadowPos.z + gPlayerShadowPos.y) >> FX32_SHIFT) >= a3) {
        return sub_805FCB0(a1, a4, 0, 0);
    }
    return sub_805FCB0(a1, a2, 0, 0);
}

static bool32 script_cmd_set_player_direction(int direction, int _, int __, int ___) {
    set_player_direction(direction);
    return TRUE;
}

static bool32 script_cmd_wait_for_cond(int condition, int actorIdx, int _, int __) {
    bool32 advance = FALSE;

    switch (condition) {
        case SCRIPT_WAIT_COND_FRAMES:
            if (gCurrentScript->waitFrames == 0) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_ACTOR_NOT_MOVING:
            if (!gCurrentScript->actors[actorIdx].isMoving) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_2:
            if (!gCurrentScript->actors[actorIdx].field_58) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_3:
            if (!gCurrentScript->actors[actorIdx].field_59) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_ACTOR_ANIM_DONE:
            if (sprite_is_anim_done_once(&gCurrentScript->actors[actorIdx].sprite)) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_NOT_IN_DIALOGUE:
            if (!(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_DIALOGUE)) {
                byte_203F99F = 0;
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_6: {
            bool32 shouldAdvance = FALSE;
            if (gReadKeysFromDemoInput == 0) {
                shouldAdvance = TRUE;
            }
            advance = shouldAdvance;
            break;
        }

        case SCRIPT_WAIT_COND_CAMERA_NOT_MOVING:
            if (!gScriptCamera->isMoving) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_8:
            if (!byte_203FA14) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_9:
            if (sub_805DB38()) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_10:
            if (gCurrentScript->waitFrames != 0
                || (!(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_NOT_MOVING)
                    && !(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DIVING)
                    && !(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DYING))) {
                gReadKeysFromDemoInput = TRUE;
                gKeyInput = KEYS_MASK;
                advance = FALSE;
            } else {
                gReadKeysFromDemoInput = FALSE;
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_11:
            if (gCurrentScript->waitFrames == 0 && !sub_80038AC(dword_2000FC8)) {
                gReadKeysFromDemoInput = FALSE;
                advance = TRUE;
            } else {
                gReadKeysFromDemoInput = TRUE;
                gKeyInput = KEYS_MASK;
                advance = FALSE;
            }
            break;

        case SCRIPT_WAIT_COND_SFX_DONE:
            if (!audio_fx_still_active(gCurrentScript->activeSfx)) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_13:
            if (sub_80037A8(&gCurrentScript->actors[actorIdx].sprite)) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_14:
            if (sub_805DD20()) {
                byte_203F99F = 0;
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_15:
            if (!gIsPaletteEffectsActive) {
                advance = TRUE;
            }
            break;

        case SCRIPT_WAIT_COND_16:
            if (sub_0804207C(0)) {
                advance = TRUE;
            }
            break;

        default:
            ASSERT(0);
            break;
    }

    if (advance) {
        gCurrentScript->cmdIdx++;
    }

    return FALSE;
}

static bool32 script_cmd_end(int _, int __, int ___, int ____) {
    gCurrentScript->endScript = TRUE;
    return FALSE;
}

/**
 * Displays a screen transition for the intro scene. Either displays "Meanwhile" or "Back at Banjo's
 * house..." depending on the parameter.
 */
static bool32 script_cmd_display_scene_transition(int textType, int _, int __, int ___) {
    struct TextBox textBox;
    char* text;
    int frames;
    int textSize;
    bool32 fadeOut;

    sub_80270AC(4095, 0);
    DmaFill32(0, (void*)BG_PLTT, BG_PLTT_SIZE / 4);

    textBox.letterSpacing = -2;
    textBox.field_12 = 0;
    textBox.field_A = 2;
    textBox.size = 240;
    textBox.palette = 1;
    textBox.stringOffset = 0;
    textBox.field_11 = 6;
    textBox.font = &font_80B01A8[2];

    text = NULL;

    switch (textType) {
        default:
            ASSERT(0);
            break;

        case 0:
            switch (gPauseMenuLanguage) {
                case 0:
                    text = dword_808D5D8;
                    break;

                case 1:
                    text = dword_808DBE8;
                    break;

                case 3:
                    text = dword_808E2F8;
                    break;

                case 2:
                    text = dword_808E944;
                    break;

                case 4:
                    text = dword_808EF84;
                    break;

                default:
                    break;
            }
            break;

        case 1:
            switch (gPauseMenuLanguage) {
                case 0:
                    text = dword_808D5E8;
                    break;

                case 1:
                    text = dword_808DC00;
                    break;

                case 3:
                    text = dword_808E30C;
                    break;

                case 2:
                    text = dword_808E954;
                    break;

                case 4:
                    text = dword_808EF98;
                    break;

                default:
                    break;
            }
            break;
    }

    textSize = sub_8025870(text, &textBox);
    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM1;
    gOBJTileCount = 512;
    SyncVblank();
    update_video();
    SkipVblank();
    SetObjectsFullAlpha();

    fadeOut = TRUE;
    frames = 90;

    while (frames != 0) {
        if (byte_20021F8) {
            ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);
            if (gKeysDown & B_BUTTON) {
                byte_2000F55 = 1;
                frames = 1;
            }
        }

        frames--;

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferEnd = gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM1;
        gOBJTileCount = 512;
        textBox.xPosition = (240 - textSize) >> 1;
        textBox.yPosition = 72;
        textBox.stringOffset = 0;
        AddStringToBuffer(&textBox, text);
        RenderText();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();

        if (fadeOut) {
            sub_08026BA8(2, 0);
            fadeOut = FALSE;
        }
    }

    FadeOutObjects(2, 0);
    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM1;
    gOBJTileCount = 512;
    SyncVblank();
    update_video();
    SkipVblank();
    REG_BLDALPHA = BLDALPHA_BLEND(7, 9);

    return 1;
}

// https://decomp.me/scratch/5oOP5
#ifndef NONMATCHING
NAKED static bool32 script_cmd_display_time_travel_scene(int a1, int _, int __, int ___) {
    asm_unified(".include \"asm/nonmatching/show_time_travel_scene.s\"");
}
#else
static inline void ab(int a1, int v9, int a, int b) {
    if (a1)
        sub_8025718(0, v9, b - a + 128);
    else
        sub_8025718(0, v9, a + 128);
}

static bool32 script_cmd_display_time_travel_scene(int a1) {
    int* source;
    struct Sprite symbol;
    u32 frames;
    u16 v10;
    int v11;
    u8 v8;
    u8 v9;
    s16 v13;
    s16 v15;

    gDisplayControl = REG_DISPCNT;
    gBG0Control = REG_BG0CNT;
    gBG1Control = REG_BG1CNT;
    gBG2Control = REG_BG2CNT;
    gBG3Control = REG_BG3CNT;

    sub_80271A4(4095, 0);

    if (gCanChangeBgm)
        audio_start_tune(17);

    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;
    REG_DISPCNT = 5188;
    REG_BG2CNT = 0;
    DmaFill32(0, (void*)0x6000000, 20480);
    DmaFill32(0, (void*)0x5000000, 128);
    RoomObjPaletteToVram(12);
    DmaTransferBGPalette(&unk_83FD1D4, 0, 4);

    source = Alloc(0x9600u, 13, 1);

    sub_8003A0C();
    DmaTransfer16(source, (void*)0x6000000, 19200);
    sub_8026F78(4095, 0, 1);
    SetSprite(&symbol, 0x4AFu, 0, 0, 0, 0xF0u, 0xF0u, 2);
    sprite_set_priority(&symbol, 0);
    gMatricesCount = 1;
    gMatrices = (int*)Alloc(0x10u, 5, 3);
    sub_8003820(&symbol, 1, 0);
    sub_8003808(&symbol, 1);

    frames = 0;
    v8 = 0;
    v9 = 0;

    while (frames < 580) {
        if (byte_20021F8) {
            ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);
            if (gKeysDown & 2) {
                byte_2000F55 = 1;
                frames = 580;
            }
        }

        if (gIsPaletteEffectsActive)
            sub_8026DC0();

        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM1;
        gOBJTileCount = 512;

        v10 = sub_8003934(frames << 8, 148480);

        if (!a1) {
            v10 = 256 - v10;
            v11 = dword_80B1AE4[64 + v8];
        } else {
            v11 = -dword_80B1AE4[64 + v8];
        }

        v13 = CallARM_FX_Mul8(CallARM_FX_Mul8(v10, v11), 100);
        v15 = CallARM_FX_Mul8(CallARM_FX_Mul8(v10, dword_80B1AE4[v8]), 100);
        symbol.xPos = v13 + 104;
        symbol.yPos = v15 + 64;

        if (v13 <= 127 && v15 <= 87 && v13 > -127 && v15 > -88 && !byte_2000F55) {
            sprite_render(&symbol);
            ab(a1, v9, frames >> 1, 290);
        }
        CheckStacks();
        SyncVblank();
        update_video();
        sub_8003A14();
        SkipVblank();

        frames++;
        v8 -= 3;
        v9 += 5;
    }

    sub_80271A4(4095, 1);
    Free(gMatrices, 3);
    Free(source, 1);
    REG_DISPCNT = gDisplayControl;
    REG_BG0CNT = gBG0Control;
    REG_BG1CNT = gBG1Control;
    REG_BG2CNT = gBG2Control;
    REG_BG3CNT = gBG3Control;

    return 1;
}
#endif

// https://decomp.me/scratch/p6AiR
#ifndef NONMATCHING
NAKED static bool32 sub_8060568(int _, int __, int ___, int ____) {
    asm_unified(".include \"asm/nonmatching/sub_8060568.s\"");
}
#else
static bool32 sub_8060568(int _, int __, int ___, int ____) {
    int v5;
    struct TextBox font;
    struct TextBox v18;
    char* v6;
    char* string;
    int v20;
    int v8;
    int v21;
    struct Sprite* sprite;
    int i;
    int v9;
    int v10;
    int v13;

    gDisplayControl = REG_DISPCNT;
    gBG0Control = REG_BG0CNT;
    gBG1Control = REG_BG1CNT;
    gBG2Control = REG_BG2CNT;
    gBG3Control = REG_BG3CNT;

    sub_80270AC(4095, 0);
    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;
    REG_DISPCNT = 5188;
    REG_BG2CNT = 0;
    DmaFill32(0, (void*)0x6000000, 20480);
    SyncVblank();
    LZ77UnCompReadNormalWrite16bit(&unk_87E233C, (void*)0x6000000);
    DmaTransfer32(&unk_83FC314, (void*)0x5000000, 128);
    DmaTransfer32(byte_83FD254, (void*)0x5000200, 128);

    v5 = 1;
    if (gGameStatus.totalJiggies[0] == stru_80CC8C4.totalJiggies[0]) {
        v5++;
    }
    if (gGameStatus.totalNotes == stru_80CC8C4.totalNotes) {
        v5++;
    }
    if (gGameStatus.totalJiggies[1] == stru_80CC8C4.totalJiggies[1]) {
        v5++;
    }
    if (60 * gGameStatus.clockHour + gGameStatus.clockMinute
        <= 60 * stru_80CC8C4.clockHour + stru_80CC8C4.clockMinute) {
        v5++;
    }

    font.letterSpacing = -2;
    font.field_12 = 0;
    font.field_A = 1;
    font.size = 240;
    font.palette = 1;
    font.stringOffset = 0;
    font.field_11 = 6;
    font.font = &font_80B01A8[2];
    v18.letterSpacing = -2;
    v18.field_12 = 0;
    v18.field_A = 1;
    v18.size = 240;
    v18.palette = 1;
    v18.stringOffset = 0;
    v18.field_11 = 6;
    v18.font = &font_80B01A8[2];

    v6 = 0;
    string = 0;

    switch (gPauseMenuLanguage) {
        case 0:
            string = aRank;
            v6 = dword_86AD47C[v5 - 1];
            break;

        case 1:
            string = dword_8065E78;
            v6 = dword_86AD490[v5 - 1];
            break;

        case 3:
            string = dword_8065ECC;
            v6 = dword_86AD4A4[v5 - 1];
            break;

        case 2:
            string = dword_8065F14;
            v6 = dword_86AD4B8[v5 - 1];
            break;

        case 4:
            string = dword_8065F58;
            v6 = dword_86AD4CC[v5 - 1];
            break;
    }

    v20 = sub_8025870(v6, &font);
    v8 = sub_8025870(string, &v18);

    sprite = (struct Sprite*)Alloc(0x8Cu, 20, 4);
    v9 = v8 + 24;
    v10 = 0;

    for (i = 0; i < 5; i++) {
        SetSprite(&sprite[i], 0x226u, 0, 0, 0, v9, 0x91u, 2);
        if (v10 < v5) {
            v10++;
        } else {
            sprite[i].objMode = 1;
        }
        v9 += 32;
    }

    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM1;
    gOBJTileCount = 512;
    SyncVblank();
    update_video();
    SkipVblank();
    sub_8026E48(4095, 0, 1);
    SetObjectsFullAlpha();

    v21 = 1;
    v13 = 1200;

    while (v13 != 0) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);
        if (gKeysDown & 8) {
            v13 = 1;
        }

        if (gIsPaletteEffectsActive)
            sub_8026DC0();
        else
            v13--;

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM1;
        gOBJTileCount = 512;

        font.xPosition = (240 - v20) >> 1;
        font.yPosition = 8;
        font.stringOffset = 0;
        AddStringToBuffer(&font, v6);
        v18.xPosition = 16;
        v18.yPosition = 105;
        v18.stringOffset = 0;
        AddStringToBuffer(&v18, string);
        RenderText();

        for (i = 0; i < 5; i++) {
            sprite_render(&sprite[i]);
        }

        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();

        if (v21) {
            sub_08026BA8(2, 0);
            v21 = 0;
        }
    }

    sub_80270AC(4095, 1);
    Free(sprite, 4);

    REG_DISPCNT = gDisplayControl;
    REG_BG0CNT = gBG0Control;
    REG_BG1CNT = gBG1Control;
    REG_BG2CNT = gBG2Control;
    REG_BG3CNT = gBG3Control;

    return 1;
}
#endif

static bool32 script_cmd_display_license_screen(int _, int __, int ___, int ____) {
    int frames;

    gDisplayControl = REG_DISPCNT;
    gBG0Control = REG_BG0CNT;
    gBG1Control = REG_BG1CNT;
    gBG2Control = REG_BG2CNT;
    gBG3Control = REG_BG3CNT;

    sub_80270AC(4095, 0);
    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_4;
    REG_BG2CNT = 0;
    DmaFill32(0, (void*)BG_VRAM, 0x5000);
    SyncVblank();
    LZ77UnCompReadNormalWrite16bit(&dLicenceBitmap, (void*)BG_VRAM);
    DmaTransfer32(&unk_83FC514, (void*)BG_PLTT, 128);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM1;
    gOBJTileCount = 512;
    SyncVblank();
    update_video();
    SkipVblank();
    sub_8026E48(4095, 0, 0);

    frames = 180;

    while (frames != 0) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gIsPaletteEffectsActive) {
            sub_8026DC0();
        } else {
            frames--;
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM1;
        gOBJTileCount = 512;
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();
    }

    sub_80270AC(4095, 0);

    REG_DISPCNT = gDisplayControl;
    REG_BG0CNT = gBG0Control;
    REG_BG1CNT = gBG1Control;
    REG_BG2CNT = gBG2Control;
    REG_BG3CNT = gBG3Control;

    DmaFill32(0, (void*)BG_VRAM, 0x5000);

    gLoadedRoomBgm = 0;
    if (gCanChangeBgm) {
        audio_start_tune(0);
    }

    sub_8026E48(4095, 0, 0);
    DmaTransfer32(&unk_83FC514, (void*)BG_PLTT, 128);

    return TRUE;
}

static bool32 sub_8060B90(int _, int __, int ___, int ____) {
    gScriptSavedPosX = (*dword_203F8B4)->field_2;
    gScriptSavedPosY = (*dword_203F8B4)->field_4;
    gScriptSavedPriority = 3 - (*dword_203F8B4)->field_A4;
    return TRUE;
}

static bool32 script_cmd_player_save_position(int _, int __, int ___, int ____) {
    gScriptSavedPosX = gPlayerPos.x >> FX32_SHIFT;
    gScriptSavedPosY = gMapPixelSizeY - ((gPlayerPos.z + gPlayerPos.y) >> FX32_SHIFT);
    gScriptSavedPriority = 3 - gPlayerSprite.priority;
    return TRUE;
}

static bool32 script_cmd_end_all_scripts(int _, int __, int ___, int ____) {
    ASSERT(gCurrentScript->field_23);
    end_all_scripts(1);
    return TRUE;
}

static bool32 script_cmd_load_room_obj_palette(int room, int _, int __, int ___) {
    SyncVblank();
    RoomObjPaletteToVram(room);
    return TRUE;
}

static bool32 sub_8060C4C(int a1, int a2, int a3, int _) {
    SyncVblank();
    if (!a1) {
        DmaTransferObjPalette(unk_83FD834, a2, a3);
    } else {
        ASSERT(0);
    }
    return TRUE;
}

static bool32 sub_8060C78(int _, int __, int ___, int ____) {
    if (!(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_PACK_WACK)
        && !(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE)
        && gTransformation != TRANSFORMATION_TANK && gTransformation != TRANSFORMATION_OCTOPUS) {
        sub_801990C();
    }
    return TRUE;
}

static bool32 sub_8060CB8(int a1, int _, int __, int ___) {
    byte_203FA58 = a1;
    return TRUE;
}

static bool32 sub_8060CC4(int actorIdx, int _, int __, int ___) {
    fx32 v8;
    u8 v2;
    bool32 v3;
    fx32 xPos;
    fx32 yPos;

    v8 = (gMapPixelSizeY << FX32_SHIFT) - (gPlayerPos.z + gPlayerPos.y);

    v2 = 0;
    v3 = FALSE;

    while (1) {
        xPos = word_80B21D4[v2].xPos << FX32_SHIFT;
        yPos = word_80B21D4[v2].yPos << FX32_SHIFT;

        if (Abs(gPlayerPos.x - xPos) < FX32_CONST(48) && Abs(v8 - yPos) < FX32_CONST(48)) {
            v3 = TRUE;
            script_cmd_actor_set_position(actorIdx, xPos >> FX32_SHIFT, yPos >> FX32_SHIFT, 0);
            script_cmd_actor_set_priority(actorIdx, word_80B21D4[v2].priority, 0, 0);
            sub_805F04C(actorIdx, word_80B21D4[v2].field_6, 0, 0);
        }

        v2++;

        if (v3) {
            break;
        }

        if (v2 > 5) {
            ASSERT(0);
            break;
        }
    }

    return TRUE;
}

static bool32 sub_8060D74(int _, int __, int ___, int ____) {
    sub_8041E58();
    return TRUE;
}

static bool32 sub_8060D80(int _, int __, int ___, int ____) {
    byte_203E138 = 1;
    return TRUE;
}

static bool32 sub_8060D90(int _, int __, int ___, int ____) {
    switch ((u32)RandomMinMax(0, 2)) {
        case 0:
            script_cmd_play_sfx(223, FALSE, 0, 0);
            break;

        case 1:
            script_cmd_play_sfx(224, FALSE, 0, 0);
            break;

        case 2:
            script_cmd_play_sfx(225, FALSE, 0, 0);
            break;
    }

    //! @bug Forgot return.
}
