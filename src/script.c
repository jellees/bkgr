#include "global.h"
#include "common.h"
#include "sprite.h"
#include "room.h"
#include "player.h"
#include "main.h"
#include "alloc.h"

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
    u32 field_3C;
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

struct Script {
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
    bool8 field_24;
    s8 activeSfx;
    u8 field_26;
    u8 field_27;
};

// Part of this file.
extern u8 gActorCount;
extern u8 byte_203F9A1;
extern bool8 gHidePlayer;
extern struct Script gScripts[MAX_SCRIPTS];
extern struct Script* gCurrentScript;
extern struct ScriptCamera* dword_203FA18;
extern fx32 dword_203FA1C;
extern fx32 dword_203FA20;

bool32 script_cmd_actor_set_anim(int, int, bool32, int);
bool32 script_cmd_actor_set_position_absolute(int, int, int, int);
bool32 script_cmd_actor_move(int, int, int, fx32);
bool32 script_cmd_store_camera_position(int, int, int, int);
bool32 sub_0805F8DC(int, int, int, int);

void sub_805D158(void) {
    u8 i = 0;
    for (i = 0; i < MAX_SCRIPTS; i++) {
        byte_203FA16_2 = 0;
    }

    byte_203F99C = 0;
    word_203F998 = -1;
    word_203F99A = -1;
    byte_203F9A1 = 0;
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
    gCurrentScript->field_24 = 0;
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
    byte_203F9A1 = 0;
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

        if (gScripts[i].field_24) {
            byte_203F9A1 = 1;
        }
    }
}

#define IS_IN_VIEW(x, y)                                                                               \
    (x) >> FX32_SHIFT < gCameraPixelX + 260 && (x) >> FX32_SHIFT > gCameraPixelX - 20                  \
        && (y) >> FX32_SHIFT < gCameraPixelY + 180 && (y) >> FX32_SHIFT > gCameraPixelY - 20

#define IS_IN_VIEW_ABSOLUTE(x, y)                                                                      \
    (x)<FX32_CONST(260) && (x)> FX32_CONST(-20) && (y)<FX32_CONST(180) && (y)> FX32_CONST(-20)

void sub_805D614(struct Script* script, int actorIdx) {
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

    if (byte_203FA15 && dword_203FA18->isMoving) {

        ASSERT(byte_203F99C);

        sub_80038A4(dword_203FA18->field_24);
        sub_80038C4(dword_203FA18->field_24, &pos.x, &pos.y, &pos.z);

        xPrev = dword_203FA18->xPosCurrent;
        yPrev = dword_203FA18->yPosCurrent;
        dword_203FA18->xPosCurrent += pos.x;
        dword_203FA18->yPosCurrent += pos.z;

        xDelta = dword_203FA18->xPosTarget - dword_203FA18->xPosCurrent;
        yDelta = dword_203FA18->yPosTarget - dword_203FA18->yPosCurrent;

        var1 = FALSE;

        if (dword_203FA18->xDistance > dword_203FA18->yDistance) {
            if ((pos.x > 0 && xDelta <= 0) || (pos.x <= 0 && xDelta >= 0)) {
                var1 = TRUE;
            }
        } else {
            if ((pos.z > 0 && yDelta <= 0) || (pos.z <= 0 && yDelta >= 0)) {
                var1 = TRUE;
            }
        }

        if (var1) {
            dword_203FA18->isMoving = FALSE;
            if (!dword_203FA18->field_26) {
                dword_203FA18->xPosCurrent = dword_203FA18->xPosTarget;
                dword_203FA18->yPosCurrent = dword_203FA18->yPosTarget;
                sub_8003864(dword_203FA18->field_24);
                dword_203FA18->field_24 = -1;
            }
        }

        if (dword_203FA18->isMoving) {
            ASSERT((u32)dword_203FA18->xPosCurrent <= (u32)gMapPixelSizeX << FX32_SHIFT
                   && dword_203FA18->xPosCurrent >= 0
                   && (u32)dword_203FA18->yPosCurrent <= (u32)gMapPixelSizeY << FX32_SHIFT
                   && dword_203FA18->yPosCurrent >= 0);

            dword_203FA1C = xDelta;
            dword_203FA20 = yDelta;
        }

        sub_800B958(dword_203FA18->xPosCurrent, dword_203FA18->yPosCurrent, xPrev, yPrev, TRUE);
    }

    if (byte_203FA14) {
        ASSERT(!byte_203FA15 || !dword_203FA18->isMoving);
        ASSERT(byte_203F99C);

        sub_802672C();

        if (byte_203FA14 == 2 && word_2002EC2 == word_2002EC0) {
            sub_8026714();
            byte_203FA14 = 0;
        }

        if (byte_203FA15) {
            sub_800B958(dword_203FA18->xPosCurrent, dword_203FA18->yPosCurrent,
                        dword_203FA18->xPosCurrent, dword_203FA18->yPosCurrent, TRUE);
        } else {
            sub_800B958((gCameraPixelX + 120) << FX32_SHIFT, (gCameraPixelY + 80) << FX32_SHIFT,
                        (gCameraPixelX + 120) << FX32_SHIFT, (gCameraPixelY + 80) << FX32_SHIFT, TRUE);
        }
    }

    if (byte_203F99F && !(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_DIALOGUE)) {
        byte_203F99F = 0;
    }
}

void sub_805D8D8(struct Script* script) {
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

            sub_8025718(actor->field_54, (u8)(actor->field_50 >> 16), actor->field_3C >> 16);
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

void sub_805DA94(void) {
    if (word_203FA10 != 0) {
        word_203FA10--;
        return;
    }

    if ((byte_203FA13 && word_203F990 == word_203F992) || (!byte_203FA13 && word_203F990 == 0)) {
        gCurrentScript->field_24 = 0;
        return;
    }

    gKeyInput = dword_203F98C[word_203F990].input;
    word_203FA10 = dword_203F98C[word_203F990].count;

    if (byte_203FA13) {
        word_203F990++;
    } else {
        word_203F990--;
        gKeyInput ^= DPAD_ANY;
    }
}

bool32 sub_805DB38(void) {
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
        byte_203F9A1 = 0;
        return TRUE;
    }

    byte_203F9A1 = 1;
    return FALSE;
}

void sub_805DC28(int actorIdx) {
    if (!gCurrentScript->actors[actorIdx].isMoving) {
        script_cmd_actor_set_anim(actorIdx, 1215, TRUE, 0);

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

bool32 sub_805DD20(void) {
    //! Possible fake match.
    // https://decomp.me/scratch/0dBNg
    u32 a = byte_203FA12 += 5;
    sub_8025718(0, 0, dword_80B1AE4[0x80 - ((u8)a / 2)] + 0x180);
    sub_805DC28(1);
    sub_805DC28(3);
    return (gPlayerStateFlags[gPlayerState] & 0x800) == 0;
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
        struct Script* script = &gScripts[i];

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
        struct Script* script = &gScripts[i];
        for (actorIdx = 0; actorIdx < script->actorCount; actorIdx++) {
            if (script->actors[actorIdx].isVisible) {
                sprite_render(&script->actors[actorIdx].sprite);
            }
        }
    }
}

void remove_actors(struct Script* script) {
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

void end_script(struct Script* script) {
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
                sub_0805F8DC(0, 0, 0, 0);
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

void sub_0805E270(int xMin, int xMax, int yMin, int yMax) {
    u8 yDistanceToMax;
    u8 yDistanceToMin;
    u8 xDistanceToMin;
    u8 xDistanceToMax;
    int xClearance;
    int yClearance;

    ASSERT(xMin < xMax && yMin < yMax);

    xClearance = (xMax - xMin) >> 2;
    yClearance = (yMax - yMin) >> 2;

    xDistanceToMax = xMax - (dword_203FA18->xPosCurrent >> FX32_SHIFT);
    xDistanceToMin = (dword_203FA18->xPosCurrent >> FX32_SHIFT) - xMin;
    yDistanceToMax = yMax - (dword_203FA18->yPosCurrent >> FX32_SHIFT);
    yDistanceToMin = (dword_203FA18->yPosCurrent >> FX32_SHIFT) - yMin;

    while (dword_203FA18->xPosTarget == dword_203FA18->xPosCurrent
           && dword_203FA18->yPosTarget == dword_203FA18->yPosCurrent) {
        if (xDistanceToMax < xDistanceToMin) {
            if (yDistanceToMin < yDistanceToMax) {
                if (xDistanceToMax < yDistanceToMin) {
                    dword_203FA18->xPosTarget = RandomMinMax(xMin, xMin + xClearance) << FX32_SHIFT;
                    dword_203FA18->yPosTarget = RandomMinMax(yMin, yMax) << FX32_SHIFT;
                } else {
                    dword_203FA18->xPosTarget = RandomMinMax(xMin, xMax) << FX32_SHIFT;
                    dword_203FA18->yPosTarget = RandomMinMax(yMax - yClearance, yMax) << FX32_SHIFT;
                }
            } else {
                if (xDistanceToMax < yDistanceToMax) {
                    dword_203FA18->xPosTarget = RandomMinMax(xMin, xMin + xClearance) << FX32_SHIFT;
                    dword_203FA18->yPosTarget = RandomMinMax(yMin, yMax) << FX32_SHIFT;
                } else {
                    dword_203FA18->xPosTarget = RandomMinMax(xMin, xMax) << FX32_SHIFT;
                    dword_203FA18->yPosTarget = RandomMinMax(yMin, yMin + yClearance) << FX32_SHIFT;
                }
            }
        } else {
            if (yDistanceToMin < yDistanceToMax) {
                if (xDistanceToMin < yDistanceToMin) {
                    dword_203FA18->xPosTarget = RandomMinMax(xMax - xClearance, xMax) << FX32_SHIFT;
                    dword_203FA18->yPosTarget = RandomMinMax(yMin, yMax) << FX32_SHIFT;
                } else {
                    dword_203FA18->xPosTarget = RandomMinMax(xMin, xMax) << FX32_SHIFT;
                    dword_203FA18->yPosTarget = RandomMinMax(yMax - yClearance, yMax) << FX32_SHIFT;
                }
            } else {
                if (xDistanceToMin < yDistanceToMax) {
                    dword_203FA18->xPosTarget = RandomMinMax(xMax - xClearance, xMax) << FX32_SHIFT;
                    dword_203FA18->yPosTarget = RandomMinMax(yMin, yMax) << FX32_SHIFT;
                } else {
                    dword_203FA18->xPosTarget = RandomMinMax(xMin, xMax) << FX32_SHIFT;
                    dword_203FA18->yPosTarget = RandomMinMax(yMin, yMin + yClearance) << FX32_SHIFT;
                }
            }
        }
    }
}

int sub_805E3CC(fx32 a1) {
    if (a1 < 0) {
        a1 += FX32_CONST(22.5);
    }

    if ((a1 - (u32)FX32_CONST(22.5)) > FX32_CONST(315)) {
        return 2;
    }
    if (a1 < FX32_CONST(67.5)) {
        return 3;
    }
    if (a1 < FX32_CONST(112.5)) {
        return 4;
    }
    if (a1 < FX32_CONST(157.5)) {
        return 5;
    }
    if (a1 < FX32_CONST(202.5)) {
        return 6;
    }
    if (a1 < FX32_CONST(247.5)) {
        return 7;
    }
    if (a1 < FX32_CONST(292.5)) {
        return 0;
    }
    return 1;
}

/**************************************************************
 *                  SCRIPT COMMAND FUNCTIONS                  *
 **************************************************************/

bool32 script_cmd_alloc_actors(int count, int _, int __, int ___) {
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

bool32 script_cmd_load_and_store_room(int room, int warp, bool32 a3, bool32 changeMusic) {
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
        sub_0805F8DC(0, 0, 0, 0);
    }

    remove_actors(gCurrentScript);

    if (byte_203FA15) {
        sub_0805F8DC(0, 0, 0, 0);
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
        script_cmd_store_camera_position(0, 0, 0, 0);
    }

    sub_8041E58();

    return TRUE;
}

bool32 script_cmd_load_room(int room, int warp, int a3, bool32 changeMusic) {
    audio_halt_all_fx();

    if (a3) {
        sub_80271A4(4095, changeMusic);
    } else {
        sub_80270AC(4095, changeMusic);
    }

    if (byte_203FA15) {
        sub_0805F8DC(0, 0, 0, 0);
    }

    remove_actors(gCurrentScript);

    if (byte_203FA15) {
        sub_0805F8DC(0, 0, 0, 0);
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

bool32 script_cmd_restore_room(int a1, int _, int __, int ___) {
    bool32 isMusicChanged;

    if (byte_203FA15) {
        sub_0805F8DC(0, 0, 0, 0);
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
        script_cmd_store_camera_position(0, 0, 0, 0);
    }

    return 1;
}
