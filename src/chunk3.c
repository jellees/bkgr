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

bool32 sub_0800BCD4(struct struc_44* a1) {
    bool32 isMusicChanged;
    u32 level;
    int v3;
    int room;

    v3 = a1->warpDestRoom & 0x80;
    room = (a1->warpDestRoom & 0x7F) - 1;

    ASSERT(room >= 0);

    level = gLoadedRoomLevel;

    if (gLoadedRoomIndex == ROOM_MUMBOHUT) {
        audio_halt_all_fx();
        isMusicChanged = TRUE;
        sub_80270AC(4095, 1);
        gRoomGoal = dword_80CEBF8[gLoadedRoomLevel];
        gWarpGoal = dword_80CEBE0[gLoadedRoomLevel];
        SetupRoom(gRoomGoal, gWarpGoal, 1, 0);
        sub_803FE78();
    } else {
        switch (sub_0800C63C(room, a1->warpDestWarp)) {
            case 1:
                return TRUE;

            case 2:
                return FALSE;

            case 0:
            default:
                sub_805E1DC(1);
                audio_halt_all_fx();
                isMusicChanged = gLoadedRoomBgm != dRoomIndexes[room].music;
                sub_80270AC(4095, isMusicChanged);
                room = (a1->warpDestRoom & 0x7F) - 1;
                if (!v3) {
                    if (dword_80CEE5C[gLoadedRoomLevel] != room
                        || dword_80CEE74[gLoadedRoomLevel] != a1->warpDestWarp) {
                        if (room != ROOM_MUMBOHUT) {
                            gRoomGoal = room;
                            gWarpGoal = a1->warpDestWarp;
                        } else {
                            gRoomGoal = dword_80CEBF8[gLoadedRoomLevel];
                            gWarpGoal = dword_80CEBE0[gLoadedRoomLevel];
                        }
                    }
                }
                SetupRoom(room, a1->warpDestWarp, 1, 0);
                break;
        }
    }

    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    sub_8018BB0(&gPlayerSprite);
    audio_halt_all_fx();
    sub_801A2E4();
    EnableBGAlphaBlending();

    if (v3) {
        if (!byte_20010B1) {
            sub_800EB58(1);
        }
        sub_800ECB4();
    } else if (byte_20010B1) {
        byte_20010B1 = 0;
        sub_80275A4();
    }

    init_efx();
    enable_poison_effect();
    init_room_name();
    sub_800EF6C(a1->warpDestWarp);
    sub_8026E48(4095, isMusicChanged, 1);
    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_8041E88(&gPlayerShadowSprite);

    if (level != gLoadedRoomLevel) {
        sub_8040178();
    }

    if (byte_20010A4) {
        sub_8016C78(byte_20010A5);
        word_20010AC = gKeysPressed & 0x3FF;
    } else {
        sub_8016C78(gPlayerSprite.field_A);
    }

    sub_8039210();

    if (gInInteractionArea) {
        gInInteractionArea = 0;
        dword_203DFE0 = 0;
    }

    gFloorPlaneResult.isColliding = 0;
    gPlayerSprite.field_13 = 0;

    return TRUE;
}

void sub_800BFA0(int room, int warp, int a3) {
    bool32 isMusicChanged;
    u32 level;

    level = gLoadedRoomLevel;

    sub_805E1DC(1);
    audio_halt_all_fx();

    if (gLoadedRoomIndex == ROOM_MUMBOHUT) {
        isMusicChanged = TRUE;
        sub_80270AC(4095, 1);
        gRoomGoal = dword_80CEBF8[gLoadedRoomLevel];
        gWarpGoal = dword_80CEBE0[gLoadedRoomLevel];
        SetupRoom(gRoomGoal, gWarpGoal, 1, 0);
        sub_803FE78();
    } else {
        isMusicChanged = gLoadedRoomBgm != dRoomIndexes[room].music;
        sub_80270AC(4095, isMusicChanged);

        if ((dword_80CEE5C[gLoadedRoomLevel] != room || dword_80CEE74[gLoadedRoomLevel] != warp)
            && a3) {
            if (room != ROOM_MUMBOHUT) {
                gRoomGoal = room;
                gWarpGoal = warp;
            } else {
                gRoomGoal = dword_80CEBF8[gLoadedRoomLevel];
                gWarpGoal = dword_80CEBE0[gLoadedRoomLevel];
            }
        }

        SetupRoom(room, warp, 1, 0);
    }

    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    sub_8018BB0(&gPlayerSprite);
    audio_halt_all_fx();
    sub_801A2E4();
    EnableBGAlphaBlending();
    sub_800EB14();
    init_efx();
    enable_poison_effect();
    init_room_name();
    sub_800EF6C(warp);
    sub_8026E48(4095, isMusicChanged, 1);
    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_8041E88(&gPlayerShadowSprite);

    if (level != gLoadedRoomLevel) {
        sub_8040178();
    }

    if (byte_20010A4) {
        sub_8016C78(byte_20010A5);
        word_20010AC = gKeysPressed & 0x3FF;
    } else {
        sub_8016C78(gPlayerSprite.field_A);
    }

    sub_8039210();

    if (gInInteractionArea) {
        gInInteractionArea = 0;
        dword_203DFE0 = 0;
    }

    gPlayerSprite.field_13 = 0;
}

void sub_800C1E8(int room, int a2, int a3, int a4, int a5, u32 a6) {
    bool32 isMusicChanged;
    u32 level;

    gShowRoomName = 0;
    level = gLoadedRoomLevel;

    if (a6 != 2) {
        sub_805E1DC(1);
    }

    audio_halt_all_fx();

    isMusicChanged = gLoadedRoomBgm != dRoomIndexes[room].music;

    sub_80270AC(4095, isMusicChanged);
    sub_08013378(room, a2, a3, a4, a6);
    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    sub_801A2E4();
    EnableBGAlphaBlending();
    sub_800EB14();
    init_efx();
    enable_poison_effect();

    if (gLoadedRoomIndex == ROOM_DIVESPOT || gLoadedRoomIndex == ROOM_UNDERCORAL) {
        byte_20010A4 = 0;
        sub_8017B34(byte_20020B1 != 0);
    }

    if (dword_2001104 == 1) {
        DmaTransfer32(&unk_83FCF14, BG_PLTT, 128);
    }

    if (a5) {
        sub_8026E48(4095, isMusicChanged, 1);
    }

    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;

    sub_803FE78();
    sub_8041E88();

    if (level != gLoadedRoomLevel) {
        sub_8040178();
    }

    sub_8039210();
    gPlayerSprite.field_13 = 0;
    if (gInInteractionArea) {
        gInInteractionArea = 0;
        dword_203DFE0 = 0;
    }
}

void sub_0800C388(int a1, int a2) {
    bool32 isMusicChanged;
    s32 room;
    u32 level;

    ASSERT(a1 & 0x80);

    level = gLoadedRoomLevel;
    room = (a1 & 0x7F) - 1;

    ASSERT(room >= 0);

    sub_805E1DC(1);
    audio_halt_all_fx();

    isMusicChanged = gLoadedRoomBgm != dRoomIndexes[room].music;

    sub_80270AC(4095, isMusicChanged);
    SetupRoom(room, a2, 1, 0);
    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    sub_801A2E4();
    EnableBGAlphaBlending();

    if (!byte_20010B1) {
        sub_800EB58(1);
    }

    sub_800ECB4();
    init_efx();
    enable_poison_effect();
    init_room_name();
    sub_08040A38(56);
    sub_8026E48(4095, isMusicChanged, 1);
    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_803FE78();
    sub_8041E88();

    if (level != gLoadedRoomLevel) {
        sub_8040178();
    }

    sub_8039210();
    gPlayerSprite.field_13 = 0;

    if (gLoadedRoomIndex == ROOM_UNDERCORAL && !sub_80342CC(94, 0)) {
        init_function(80);
    }

    if (gInInteractionArea) {
        gInInteractionArea = 0;
        dword_203DFE0 = 0;
    }
}

int sub_800C50C() {
    fx32 pos;

    if (dword_203DFC4) {
        u8 a = dword_203DFC0[dword_203DFC4->field_1E];
        pos = gPlayerPos.y - dword_203DFC4->field_98;

        if (pos >> 16 >= dword_203FA5C[a].field_28) {
            return dword_203FA5C[a].field_27;
        } else {
            return dword_203DFC4->field_8;
        }
    }

    if ((gKeysPressed & word_20010AC) != 0) {
        return byte_20010A7;
    }

    pos = gPlayerPos.y - gPlayerShadowPos.y;

    if ((gPlayerStateSettings[gPlayerState] & 0x400) == 0) {
        if (pos != 0) {
            if ((gPlayerStateSettings[gPlayerState] & 0x100) == 0
                && (gPlayerStateSettings[gPlayerState] & 0x40) == 0) {
                return gFloorPlaneResult.playerSpritePriority;
            } else {
                return stru_3002950.playerSpritePriority;
            }
        }

        return stru_3002950.playerSpritePriority;
    }

    if (pos >> 16 >= stru_3002950.field_48) {
        return stru_3002950.field_6;
    }

    return stru_3002950.playerSpritePriority;
}

void sub_800C604() {
    byte_2001094 = gLoadedRoomIndex;
    dword_2001098 = gPlayerPos.x;
    dword_200109C = gPlayerPos.y;
    dword_20010A0 = gPlayerPos.z;
}
