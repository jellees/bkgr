#include "global.h"
#include "sprite.h"
#include "room.h"
#include "common.h"

void sub_800B958(int a1, int a2, int a3, int a4, int a5) {
    fx32 v6;
    u32 direction;

    gIsCameraMovingX = 0;
    gIsCameraMovingY = 0;

    v6 = a2 + (word_2002EC2 << FX32_SHIFT);
    if ((v6 >> FX32_SHIFT) + 80 >= gMapPixelSizeY || (v6 >> FX32_SHIFT) - 80 < 0) {
        v6 = a2;
    }

    direction = a3 - a1 < 0 ? 2 : 1;
    direction |= a4 - v6 < 0 ? 8 : 4;

    if (direction & 1) {
        UpdateMapLeft(a1);
    } else if (direction & 2) {
        UpdateMapRight(a1);
    }

    if (direction & 4) {
        UpdateMapUp(v6);
    } else if (direction & 8) {
        UpdateMapDown(v6);
    }

    if (a5) {
        s32 v10;
        u32 v11;

        v10 = (gPlayerPos.x >> FX32_SHIFT) - gCameraPixelX;
        v11 = (((gMapPixelSizeY << FX32_SHIFT) - (gPlayerPos.y + gPlayerPos.z)) >> FX32_SHIFT)
              - gCameraPixelY;

        gPlayerSprite.xPos = v10;
        gPlayerSprite.yPos = v11;
        if (v11 + 20 >= 248 || v10 < -20 || v10 > 260) {
            gPlayerSprite.field_13 = 1;
        } else {
            gPlayerSprite.field_13 = 0;
        }

        v10 = gPlayerSprite.xPos;
        v11 =
            (((gMapPixelSizeY << FX32_SHIFT) - (gPlayerShadowPos.y + gPlayerShadowPos.z)) >> FX32_SHIFT)
            - gCameraPixelY - ((gPlayerPos.y - gPlayerShadowPos.y) >> FX32_SHIFT);

        gPlayerShadowSprite.xPos = v10;
        gPlayerShadowSprite.yPos = v11;
        if (v11 + 20 >= 248 || v10 < -20 || v10 > 260) {
            gPlayerShadowSprite.field_13 = 1;
        } else if (!(gPlayerStateSettings[gPlayerState] & 0x200)
                       && !(gPlayerStateSettings[gPlayerState] & 0x80)
                       && !(gPlayerStateSettings[gPlayerState] & 0x800)
                   || gPlayerStateSettings[gPlayerState] & 0x100) {
            gPlayerShadowSprite.field_13 = 0;
        }
    }
}

void sub_800BAF0(u32** a1, u32* a2) {
    int* v6;
    int* v8;
    u32 priority, pos;
    int v9[2];
    int a4[2];
    int a1a[2];
    int a2a[2];
    int v14[2];
    s16* stuff;

    char r10 = byte_203F9A2;

    if (r10 || gPlayerState == 35)
        return;
    v9[0] = gCameraPixelX;
    v9[1] = gCameraPixelY;
    a4[0] = gCameraPixelX + 240;
    a4[1] = gCameraPixelY + 160;
    a1a[0] = (gPlayerPos.x - (dword_3003300 >> 1)) >> 16;
    a1a[1] =
        gMapPixelSizeY - ((gPlayerPos.y + gPlayerPos.z + dword_3003308 + (dword_3003304 >> 1)) >> 16);
    a2a[0] = (gPlayerPos.x + (dword_3003300 >> 1)) >> 16;
    a2a[1] = gMapPixelSizeY - ((gPlayerPos.y + gPlayerPos.z - (dword_3003304 >> 1)) >> 16);
    stuff = (s16*)&gPlayerShadowPos;
    v14[0] = stuff[1];
    v14[1] = gMapPixelSizeY - ((gPlayerShadowPos.y + gPlayerShadowPos.z) >> 16);

    if (!sub_8003974(a1a, a2a, v9, a4)) {
        gPlayerSprite.field_13 = 1;
    } else {
        gPlayerSprite.field_13 = r10;
    }

    if (byte_20010AF) {
        int* v5;
        sub_80033DC(&sprite_2000FAC, *a1);
        v5 = *a1;
        *v5 = sprite_2000FAC.priority << 30;
        *a1 = v5 + 3;
        ++*a2;
    }

    sub_80033DC(&gPlayerSprite, *a1);
    v6 = *a1;
    *v6 = (gPlayerSprite.priority << 30) | ((u32)gPlayerPos.z >> 4);
    *a1 = v6 + 3;
    ++*a2;

    if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0
        || (gPlayerStateSettings[gPlayerState] & 0x80) != 0 || !sub_800397C(v14, v9, a4)) {
        gPlayerShadowSprite.field_13 = 1;
    } else if ((gPlayerStateSettings[gPlayerState] & 0x800) == 0) {
        gPlayerShadowSprite.field_13 = 0;
    }

    sub_80033DC(&gPlayerShadowSprite, *a1);
    v8 = *a1;
    priority = gPlayerShadowSprite.priority << 30;
    pos = ((u32)gPlayerShadowPos.z >> 4) | 0x10000000;
    *v8 = priority | pos;
    *a1 = v8 + 3;
    ++*a2;
}
