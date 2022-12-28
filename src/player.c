#include "global.h"
#include "sprite.h"
#include "audio_b.h"
#include "common.h"

extern u8 sub_80038BC(u32);

static void update_camera(struct Vec3fx* position, s32 a2, s32 a3, s32 offset);
static void move_camera(s32 offset);
static fx32 clamp_camera_velocity(fx32 velocity, fx32 speed);

static void sub_800A740(struct Vec3fx* a1, struct Vec3fx* a2) {
    if (!dword_203DFC4)
        return;

    if (byte_203DFE6) {
        if (gPlayerStateSettings[gPlayerState] & 0x400) {
            u32 y = dword_203DFC4->field_98;
            a1->y = y;
            a2->y = y;
        } else {
            u32 y;
            struct Vec3fx a;
            sub_8062444(dword_203DFC0[dword_203DFC4->field_1E], &a.x, &a.y, &a.z);

            a1->x += a.x;
            a1->z += a.z;
            a2->x = a1->x;
            a2->z = a1->z;

            y = dword_203DFC4->field_98;
            a1->y = y;
            a2->y = y;
        }
    } else if (byte_203DFE7) {
        a2->y = dword_203DFC4->field_98;
    }
}

static bool32 sub_800A7DC(struct Vec3fx* a1, struct Vec3fx* a2) {
    if (byte_203DFE6) {
        if (gPlayerStateSettings[gPlayerState] & 0x400) {
            if (!sub_8018BB0(&gPlayerSprite))
                return TRUE;

            gPlayerPos.y = a1->y;
            gPlayerShadowPos.y = gPlayerPos.y;
            sub_800388C(dword_2000FC8, 0, 0);
        } else {
            if (!gWallPlaneResult.isColliding) {
                gPlayerPos.x = a1->x;
                gPlayerPos.z = a1->z;
                gPlayerShadowPos.x = gPlayerPos.x;
                gPlayerShadowPos.z = gPlayerPos.z;
            }

            gPlayerPos.y = a1->y;
            gPlayerShadowPos.y = gPlayerPos.y;
        }

        return TRUE;
    } else if (byte_203DFE7) {
        gPlayerShadowPos.y = a2->y;

        if (!gWallPlaneResult.isColliding) {
            gPlayerPos.x = a1->x;
            gPlayerPos.y = a1->y;
            gPlayerPos.z = a1->z;
            gPlayerShadowPos.x = a2->x;
            gPlayerShadowPos.z = a2->z;
        }
    }

    return FALSE;
}

static bool32 sub_0800A8B4() {
    if (gGameStatus.health != 0 && gFloorPlaneResult.isColliding && stru_3002950.warpDestRoom != 0
        && gFloorPlaneResult.warpDestRoom == stru_3002950.warpDestRoom) {
        if (stru_3002950.warpDestRoom & 0x80) {
            if (gPlayerStateSettings[gPlayerState] & 0x100
                && !(gPlayerStateSettings[gPlayerState] & 0x80)) {
                ASSERT((stru_3002950.warpDestRoom & 0x7F) - 1 <= 0x25);

                if (sub_0800BCD4(&stru_3002950))
                    return TRUE;
            }
        } else {
            ASSERT(gFloorPlaneResult.warpDestRoom - 1 <= 0x25);

            if (sub_0800BCD4(&gFloorPlaneResult)) {
                if (gPlayerStateSettings[gPlayerState] & 0x100) {
                    sub_8017A54();
                }

                return TRUE;
            }
        }
    }

    return FALSE;
}

static bool32 sub_800A974() {
    if (gGameStatus.health == 0)
        return FALSE;

    if (gFloorPlaneResult.floorType == 2 && stru_3002950.floorType == 2) {
        if (gTransformation != TRANSFORMATION_BANJO && gTransformation != TRANSFORMATION_OCTOPUS) {
            sub_80192D4(16, -1, 0);
            return FALSE;
        }

        sub_8017C50();
    } else {
        if (gPlayerStateSettings[gPlayerState] & 0x200) {
            sub_8017D9C();
        }
    }

    return TRUE;
}

static void sub_800A9F0() {
    if (!byte_3003588) {
        sub_8003894(dword_2000FC8, dword_80CC7EC[gFloorPlaneResult.floorType]);
        sub_80038DC(dword_2000FC8, gFloorPlaneResult.field_28, gFloorPlaneResult.field_2C,
                    gFloorPlaneResult.floorType == 10 ? 1 : 0);
    } else {
        sub_8003894(dword_2000FC8, dword_80CC818[gFloorPlaneResult.floorType]);
        sub_80038DC(dword_2000FC8, gFloorPlaneResult.field_28, gFloorPlaneResult.field_2C, 0);
    }
}

static void sub_800AA6C(struct Vec3fx* a1, struct Vec3fx* a2, struct Vec3fx* a3, struct Vec3fx* a4) {
    struct Vec3fx a;
    sub_80038C4(dword_2000FC8, &a.x, &a.y, &a.z);

    a3->x = a.x >> 8;
    a3->y = a.y >> 8;
    a3->z = a.z >> 8;

    a1->x = gPlayerPos.x + a.x;
    a2->x = gPlayerShadowPos.x + a.x;

    if (!(gPlayerStateSettings[gPlayerState] & 0x40)) {
        a1->y = gPlayerPos.y + a.y;
        if (a1->y >= dword_2001088)
            a1->y = gPlayerPos.y;
        a2->y = gPlayerShadowPos.y;
        a1->z = gPlayerPos.z + a.z;
        a2->z = gPlayerShadowPos.z + a.z;
    } else {
        a1->y = gPlayerPos.y + a.z;
        a2->y = gPlayerShadowPos.y;
        a1->z = gPlayerPos.z;
        a2->z = gPlayerShadowPos.z;
    }

    if (a1->y < a2->y) {
        a1->y = a2->y;
    }

    if (a1->y < 0) {
        a1->y = 0;
    }

    a4->x = a1->x - gPlayerPos.x;
    a4->y = a1->y - gPlayerPos.y;
    a4->z = a1->z - gPlayerPos.z;
}

static bool32 sub_800AB54(struct Vec3fx* a1, struct Vec3fx* a2) {
    if (!(gPlayerStateSettings[gPlayerState] & 0x400)) {
        struct Vec3fx a;
        a.x = a1->x;
        a.y = a1->y + FX32_CONST(18);
        a.z = a1->z;

        if (sub_800953C(&a)) {
            sub_08009208(a1, &stru_3002950);
            gPlayerPos.y = a1->y;
            gPlayerShadowPos.y = stru_3002950.floorHeight;
            gPlayerPos.x = a1->x;
            gPlayerShadowPos.x = a2->x;

            return TRUE;
        }
    } else {
        sub_8017F14();
    }

    return FALSE;
}

static bool32 sub_800ABD4(struct Vec3fx* a1, struct Vec3fx* a2) {
    if (gFloorPlaneResult.isColliding) {
        if (gFloorPlaneResult.floorType == 2 && gTransformation != TRANSFORMATION_BANJO
            && gTransformation != TRANSFORMATION_OCTOPUS && gGameStatus.health != 0) {
            if (!byte_20020BC) {
                sub_80192D4(16, -1, 0);
            }

            return FALSE;
        }

        if (gFloorPlaneResult.field_4E && !byte_200108E && gTransformation != TRANSFORMATION_OCTOPUS
            && gTransformation != TRANSFORMATION_TANK
            && !(gPlayerStateSettings[gPlayerState] & 0x1000)) {
            sub_80192D4(gFloorPlaneResult.field_4E, -1, 1);
            byte_200108E = 1;
            word_2001092 = gFloorPlaneResult.field_4F;
            byte_200108D = 1;
            word_2001090 = gFloorPlaneResult.field_4F;
            gPlayerSprite.field_10 = 1;

            return FALSE;
        }
    }

    if (gWallPlaneResult.isColliding && gWallPlaneResult.floorType == 6 && gUnlockedMoves[18]
        && gTransformation == TRANSFORMATION_BANJO && gGameStatus.health != 0) {
        struct Vec3fx a;
        a.x = a1->x;
        a.y = a1->y + FX32_CONST(18);
        a.z = a1->z;
        if (sub_800953C(&a)) {
            if (sub_8018BB0(&gPlayerSprite)) {
                if (audio_fx_still_active(dword_20020B4) && gCanPlaySfx) {
                    audio_halt_fx(dword_20020B4);
                }

                sub_8017E1C();
                gPlayerPos.y = a1->y;
                gPlayerShadowPos.y = stru_3002950.floorHeight;
                gPlayerPos.x = a1->x;
                gPlayerShadowPos.x = a2->x;
            }

            return FALSE;
        }
    }

    return TRUE;
}

static void sub_800AD64() {
    // Did the developers really write it like this?

    struct struc_44* plane = &stru_3002950;

    if (!plane->isColliding) {
        return;
    }

    if (plane->field_7 || (plane = &gFloorPlaneResult)->isColliding) {
        sub_800388C(dword_2000FC8, plane->field_30, plane->field_34);
    } else {
        sub_800388C(dword_2000FC8, 0, 0);
    }
}

static bool32 sub_800ADAC(struct Vec3fx* a1, struct Vec3fx* a2, struct Vec3fx* a3, char* a4) {
    fx32 a = a2->y;
    a2->y =
        sub_80039C4(a2, stru_3002950.field_1C, stru_3002950.field_20, stru_3002950.staticFloorHeight);

    if (a2->y < 0) {
        a2->y = a;
    }

    if (gFloorPlaneResult.isColliding) {
        if (stru_3002950.field_2C != 0x5A0000 && Abs(a1->y - a2->y) < 0x50000) {
            a1->y = a2->y;
            sub_800A9F0();
            if (!sub_800A974() || sub_0800A8B4())
                return FALSE;
        } else {
            a = a1->y;
            a1->y = sub_80039C4(a1, gFloorPlaneResult.field_1C, gFloorPlaneResult.field_20,
                                gFloorPlaneResult.staticFloorHeight);

            if (gFloorPlaneResult.field_2C != 0x5A0000 && a1->y != a) {
                char c[0x60];
                sub_80039CC(c, a1, &stru_300331C, 0);
                sub_8007434(c, &gFloorPlaneResult);

                if (!gFloorPlaneResult.isColliding) {
                    a1->y = a;
                    gFloorPlaneResult.isColliding = TRUE;
                    return TRUE;
                }
            }

            if (Abs(a - a1->y) > 0x50000) {
                a1->y = a;
                sub_800A9F0();
                if (!sub_800A974() || sub_0800A8B4())
                    return FALSE;
            } else if (a1->y < a2->y) {
                a1->y = a2->y;
                sub_800A9F0();
                if (!sub_800A974() || sub_0800A8B4())
                    return FALSE;
            } else {
                a3->y = a1->y - a;
                sub_800A9F0();
                if (!sub_800A974() || sub_0800A8B4())
                    return FALSE;
            }
        }
    } else {
        if (gPlayerPos.y != gPlayerShadowPos.y) {
            sub_8003894(dword_2000FC8, dword_80CC818[stru_3002950.floorType]);
            sub_80038DC(dword_2000FC8, 0, 0x5A0000, 0);
        }

        if (Abs(a1->y - a2->y) > FX32_CONST(5)) {
            sub_80181B8(&a1->y);

        } else {
            a1->y = a2->y;
        }
    }

    return TRUE;
}

static bool32 sub_800AEFC(struct Vec3fx* a1, struct Vec3fx* a2, char* a3) {
    fx32 a;

    if (!dword_203DFC4) {
        a = a2->y;
        a2->y = sub_80039C4(a2, stru_3002950.field_1C, stru_3002950.field_20,
                            stru_3002950.staticFloorHeight);
        if (a2->y < 0) {
            a2->y = a;
        }
    }

    if ((gPlayerStateSettings[gPlayerState] & 0x100)) {
        return TRUE;
    }

    if (gFloorPlaneResult.isColliding) {
        a = a1->y;
        a1->y = sub_80039C4(a1, gFloorPlaneResult.field_1C, gFloorPlaneResult.field_20,
                            gFloorPlaneResult.staticFloorHeight);

        if (a1->y < 0 || a1->y < a2->y) {
            a1->y = a;
        }

        if (gFloorPlaneResult.field_2C != 0x5A0000 && a1->y != a) {
            char c[0x60];
            sub_80039CC(c, a1, &stru_300331C, 0);
            sub_8007434(c, &gFloorPlaneResult);

            if (!gFloorPlaneResult.isColliding) {
                a1->y = a;
                gFloorPlaneResult.isColliding = TRUE;
            }
        }

        if (Abs(a - a1->y) > 0x50000) {
            a1->y = a;
            return TRUE;
        }

        sub_8018BB0(&gPlayerSprite);

        if (Abs(a1->y - a2->y) <= 0x50000) {
            a1->y = a2->y;
        } else if (Abs(a1->y - gPlayerShadowPos.y) <= 0x50000) {
            a1->y = gPlayerShadowPos.y;
        }

        sub_800A9F0();
        sub_800A974();
    } else {
        if (a1->y == a2->y) {
            sub_8018BB0(&gPlayerSprite);
            sub_800A9F0();
            sub_800A974();
        } else {
            sub_8003894(dword_2000FC8, dword_80CC7EC[stru_3002950.floorType]);
            sub_80038DC(dword_2000FC8, stru_3002950.field_28, stru_3002950.field_2C, 0);
        }
    }

    return TRUE;
}

static bool32 sub_0800B04C(struct Vec3fx* a1, struct Vec3fx* a2, struct Vec3fx* a3, char* a4) {
    struct Vec3fx distance;
    struct Vec3fx vec1;
    char c[0x60];
    fx32 dot;

    distance.x = gWallPlaneResult.distance.x;
    distance.y = gWallPlaneResult.distance.y;
    distance.z = gWallPlaneResult.distance.z;

    dot = CallARM_VecFX_Dot8(&distance, &distance);
    if (dot >> 8 < 0x8000) {
        fx32 b = sub_800392C(CallARM_VecFX_Dot8(a1, &distance) << 8, dot << 8);
        distance.x <<= 8;
        distance.y <<= 8;
        distance.z <<= 8;
        CallARM_VecFX_Mul16(&distance, b);
        ASSERT(Abs(distance.x >> 16) < 0x10000 && Abs(distance.z >> 16) < 0x10000);
    } else {
        CallARM_VecFX_Mul8(&distance, sub_8003934(CallARM_VecFX_Dot8(a1, &distance), dot));
        ASSERT(Abs(distance.x >> 8) < 0x10000 && Abs(distance.z >> 8) < 0x10000);
        distance.x <<= 8;
        distance.z <<= 8;
    }

    sub_80038CC(dword_2000FC8, &distance, a1);

    a2->x = gPlayerPos.x + a1->x;
    a2->z = gPlayerPos.z + a1->z;
    a3->x = a2->x;
    a3->z = a2->z;

    sub_80039CC(c, a2, &stru_300331C, 0);

    vec1.x = a2->x - gPlayerPos.x;
    vec1.y = a2->y - gPlayerPos.y;
    vec1.z = a2->z - gPlayerPos.z;
    sub_8006974(c, &vec1);

    sub_8006FFC(c, &gWallPlaneResult, &gFloorPlaneResult);

    if (!gWallPlaneResult.isColliding) {
        sub_8007434(c, &gFloorPlaneResult);

        if (gFloorPlaneResult.floorType != 10 || byte_3003588) {
            return TRUE;
        }
    } else {
        if (gPlayerStateSettings[gPlayerState] & 0x400) {
            gPlayerPosTemp.x = gPlayerPos.x;
            gPlayerPosTemp.z = gPlayerPos.z;
            gPlayerShadowPosTemp.x = gPlayerShadowPos.x;
            gPlayerShadowPosTemp.z = gPlayerShadowPos.z;
        }
    }

    return FALSE;
}

void update_player() {
    struct Vec3fx vec1;
    char c[0x60];
    struct Vec3fx vec2;
    struct Vec3fx vec3;

    sub_800AA6C(&gPlayerPosTemp, &gPlayerShadowPosTemp, &vec3, &vec1);

    if (sub_802ADE8(&gPlayerPosTemp))
        return;

    sub_800A740(&gPlayerPosTemp, &gPlayerShadowPosTemp);

    if (gTransformation != TRANSFORMATION_TANK) {
        stru_300331C.x = FX32_CONST(4);
        stru_300331C.y = dword_3003308;
        stru_300331C.z = FX32_CONST(4);
    } else {
        stru_300331C.x = FX32_CONST(8);
        stru_300331C.y = dword_3003308;
        stru_300331C.z = FX32_CONST(8);
    }

    sub_80039CC(c, &gPlayerPosTemp, &stru_300331C, 0);
    sub_8006974(c, &vec1);

    if (gPlayerStateSettings[gPlayerState] & 0x40) {
        if (!sub_800AB54(&gPlayerPosTemp, &gPlayerShadowPosTemp)) {
            return;
        }
    } else {
        sub_08009208(&gPlayerPosTemp, &stru_3002950);

        if (!stru_3002950.isColliding) {
            vec2.x = gPlayerPosTemp.x;
            vec2.y = gPlayerPosTemp.y + FX32_CONST(5);
            vec2.z = gPlayerPosTemp.z;
            sub_08009208(&vec2, &stru_3002950);
        }

        if (gPlayerStateSettings[gPlayerState] & 0x400) {
            if (sub_80038BC(dword_2000FC8)) {
                sub_8007434(c, &gFloorPlaneResult);
            } else {
                gFloorPlaneResult.isColliding = 0;
            }
        } else {
            sub_8007434(c, &gFloorPlaneResult);
        }

        if (!(gPlayerStateSettings[gPlayerState] & 0x400) && !gFloorPlaneResult.isColliding
            && gFloorPlaneResult.field_2C != FX32_CONST(90)
            && (stru_3002950.field_2C != gFloorPlaneResult.field_2C
                || stru_3002950.field_28 != gFloorPlaneResult.field_28)) {
            sub_08007890(c, &gFloorPlaneResult);
        }

        sub_8006FFC(c, &gWallPlaneResult, &gFloorPlaneResult);
        sub_8007AC4(c);

        if (!stru_3002950.isColliding) {
            if (gFloorPlaneResult.isColliding || dword_20011FC > 0) {
                stru_3002950.isColliding = 1;
                dword_20011FC--;
            } else if (!gWallPlaneResult.isColliding && !dword_203DFC4) {
                return;
            }
        } else {
            dword_20011FC = 1;
        }

        if (!sub_800A7DC(&gPlayerPosTemp, &gPlayerShadowPosTemp)) {
            if (!sub_800ABD4(&gPlayerPosTemp, &gPlayerShadowPosTemp)) {
                return;
            }

            sub_800AD64();

            if (!(gPlayerStateSettings[gPlayerState] & 0x400)
                && !(gPlayerStateSettings[gPlayerState] & 0x100)) {
                sub_800E61C();

                if ((!gWallPlaneResult.isColliding
                     || sub_0800B04C(&vec3, &gPlayerPosTemp, &gPlayerShadowPosTemp, c))
                    && sub_800ADAC(&gPlayerPosTemp, &gPlayerShadowPosTemp, &vec1, c)) {
                    gPlayerPos.x = gPlayerPosTemp.x;
                    gPlayerPos.y = gPlayerPosTemp.y;
                    gPlayerPos.z = gPlayerPosTemp.z;
                    gPlayerShadowPos.x = gPlayerShadowPosTemp.x;
                    gPlayerShadowPos.y = gPlayerShadowPosTemp.y;
                    gPlayerShadowPos.z = gPlayerShadowPosTemp.z;
                }
            } else {
                if (sub_0800A8B4()) {
                    return;
                }

                if (gWallPlaneResult.isColliding) {
                    sub_0800B04C(&vec3, &gPlayerPosTemp, &gPlayerShadowPosTemp, c);
                }

                if (gPlayerStateSettings[gPlayerState] & 0x100 && gWallPlaneResult.isColliding) {
                    gPlayerPosTemp.x = gPlayerPos.x;
                    gPlayerPosTemp.z = gPlayerPos.z;
                    gPlayerShadowPosTemp.x = gPlayerShadowPos.x;
                    gPlayerShadowPosTemp.z = gPlayerShadowPos.z;
                }

                if (sub_800AEFC(&gPlayerPosTemp, &gPlayerShadowPosTemp, c)) {
                    gPlayerPos.x = gPlayerPosTemp.x;
                    gPlayerPos.y = gPlayerPosTemp.y;
                    gPlayerPos.z = gPlayerPosTemp.z;
                    gPlayerShadowPos.x = gPlayerShadowPosTemp.x;
                    gPlayerShadowPos.y = gPlayerShadowPosTemp.y;
                    gPlayerShadowPos.z = gPlayerShadowPosTemp.z;

                    if (byte_30029F8 && !sub_80038BC(dword_2000FC8)
                        && !(gPlayerStateSettings[gPlayerState] & 0x100)) {
                        sub_800387C(dword_2000FC8);
                        sub_80181B8(&gPlayerPos.y);
                    }
                }
            }
        }
    }

    if (!gIsSlideMiniGame) {
        stru_30032E8.x = gPlayerPos.x - (dword_3003300 >> 1);
        stru_30032E8.y = gPlayerPos.y;
        stru_30032E8.z = gPlayerPos.z - (dword_3003304 >> 1);
        stru_30032F4.x = gPlayerPos.x + (dword_3003300 >> 1);
        stru_30032F4.y = gPlayerPos.y + dword_3003308;
        stru_30032F4.z = gPlayerPos.z + (dword_3003304 >> 1);
        update_camera(&gPlayerPos, dword_2001110, dword_2001114, word_2002EC2);
    }
}

/**
 * Calculates the new camera position. Also updates the player sprites' positions.
 */
static void update_camera(struct Vec3fx* position, s32 a2, s32 a3, s32 offset) {
    s32 direction;
    fx32 oldCamPosX = gCameraPosX;
    fx32 oldCamPosY = gCameraPosY;

    gCameraGoalPosX = position->x + (a2 << FX32_SHIFT);
    gCameraGoalPosY = (gMapPixelSizeY << FX32_SHIFT)
                      - (position->y + position->z + (a3 << FX32_SHIFT) + (offset << FX32_SHIFT));

    move_camera(offset);

    direction = oldCamPosX - gCameraPosX < 0 ? 2 : 1;
    direction |= oldCamPosY - gCameraPosY < 0 ? 8 : 4;

    gPlayerSprite.xPos = ((gCameraGoalPosX - gCameraPosX) >> FX32_SHIFT) + 120 - a2;
    gPlayerSprite.yPos = ((gCameraGoalPosY - gCameraPosY) >> FX32_SHIFT) + 80 + a3;
    gPlayerShadowSprite.xPos = ((gCameraGoalPosX - gCameraPosX) >> FX32_SHIFT) + 120 - a2;
    gPlayerShadowSprite.yPos = ((gCameraGoalPosY - gCameraPosY) >> FX32_SHIFT) + 80 + a3
                               + ((gPlayerPos.y - gPlayerShadowPos.y) >> FX32_SHIFT);

    if (byte_20010AF) {
        sprite_2000FAC.xPos = ((gCameraGoalPosX - gCameraPosX) >> FX32_SHIFT) + 120 - a2;
        sprite_2000FAC.yPos = ((gCameraGoalPosY - gCameraPosY) >> FX32_SHIFT) + 80 + a3;
    }

    if (direction & 1) {
        UpdateMapLeft(gCameraPosX);
    } else if (direction & 2) {
        UpdateMapRight(gCameraPosX);
    }

    if (direction & 4) {
        UpdateMapUp(gCameraPosY);
    } else if (direction & 8) {
        UpdateMapDown(gCameraPosY);
    }
}

/**
 * Moves the camera to the target position.
 * \param offset    A pixel offset.
 */
static void move_camera(s32 offset) {
    fx32 delta;
    fx32 deltaAbs;
    fx32 velocity;
    fx32 position;
    fx32 targetPos;

    gIsCameraMovingX = FALSE;
    position = gCameraPosX;
    targetPos = gCameraGoalPosX;
    delta = position - targetPos;
    deltaAbs = Abs(delta);

    if (deltaAbs < FX32_ONE) {
        gCameraPosX = gCameraGoalPosX;
        velocity = 0;
    } else {
        velocity = clamp_camera_velocity(delta, deltaAbs);
        gIsCameraMovingX = TRUE;
    }

    gCameraPosX += velocity;

    if ((gCameraPosX >> FX32_SHIFT) + 120 >= gMapPixelSizeX) {
        gCameraPosX = (gMapPixelSizeX - 120) << FX32_SHIFT;
        gIsCameraMovingX = FALSE;
    } else if ((gCameraPosX >> FX32_SHIFT) - 120 < 0) {
        gCameraPosX = FX32_CONST(120);
        gIsCameraMovingX = FALSE;
    }

    gIsCameraMovingY = FALSE;
    position = gCameraPosY;
    targetPos = gCameraGoalPosY;
    delta = position - targetPos;
    deltaAbs = Abs(delta);

    if (deltaAbs < FX32_ONE) {
        gCameraPosY = gCameraGoalPosY;
        velocity = 0;
    } else {
        velocity = clamp_camera_velocity(delta, deltaAbs);
        gIsCameraMovingY = TRUE;
    }

    gCameraPosY += velocity;

    if ((gCameraPosY >> FX32_SHIFT) + 80 >= gMapPixelSizeY) {
        // This doesn't match for some reason.
        // gCameraPosY = (gMapPixelSizeY - 80 + a1) << FX32_SHIFT;
        gCameraPosY = gMapPixelSizeY - 80;
        gCameraPosY += offset;
        gCameraPosY <<= FX32_SHIFT;

        if ((gCameraPosY >> FX32_SHIFT) + 80 >= gMapPixelSizeY) {
            gCameraPosY = (gMapPixelSizeY - 80) << FX32_SHIFT;
            gIsCameraMovingY = FALSE;
        } else if ((gCameraPosY >> FX32_SHIFT) - 80 < 0) {
            gCameraPosY = FX32_CONST(80);
            gIsCameraMovingY = FALSE;
        }
    } else if ((gCameraPosY >> FX32_SHIFT) - 80 < 0) {
        gCameraPosY = (offset << FX32_SHIFT) + FX32_CONST(80);

        if ((gCameraPosY >> FX32_SHIFT) + 80 >= gMapPixelSizeY) {
            gCameraPosY = (gMapPixelSizeY - 80) << FX32_SHIFT;
            gIsCameraMovingY = FALSE;
        } else if ((gCameraPosY >> FX32_SHIFT) - 80 < 0) {
            gCameraPosY = FX32_CONST(80);
            gIsCameraMovingY = FALSE;
        }
    }
}

/**
 * Clamps velocity to predefined velocities.
 * \param velocity  Velocity can be negative.
 * \param speed     Speed is an absolute value.
 */
static fx32 clamp_camera_velocity(fx32 velocity, fx32 speed) {
    if (speed < FX32_CONST(1.5)) {
        return velocity < 0 ? FX32_CONST(0.5) : FX32_CONST(-0.5);
    } else if (speed < FX32_CONST(2)) {
        return velocity < 0 ? FX32_CONST(1.5) : FX32_CONST(-1.5);
    } else if (speed < FX32_CONST(2.5)) {
        return velocity < 0 ? FX32_CONST(2) : FX32_CONST(-2);
    } else if (speed < FX32_CONST(4)) {
        return velocity < 0 ? FX32_CONST(2.5) : FX32_CONST(-2.5);
    } else if (speed < FX32_CONST(6)) {
        return velocity < 0 ? FX32_CONST(3) : FX32_CONST(-3);
    } else if (speed < FX32_CONST(16)) {
        return velocity < 0 ? FX32_CONST(3.5) : FX32_CONST(-3.5);
    } else {
        return velocity < 0 ? FX32_CONST(5) : FX32_CONST(-5);
    }
}
