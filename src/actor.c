#include "global.h"
#include "common.h"
#include "heap.h"
#include "main.h"
#include "player.h"
#include "room.h"

/**
 * Finds a free slot for a streamed-in actor. Types 0x97-0xA8 use pool 2,
 * placements with field_15 set use pool 1 and everything else uses pool 0.
 * The caller marks the slot active.
 */
struct Actor* actor_alloc(struct MapActor* mapActor) {
    int i;

    if ((u16)(mapActor->type - 0x97) <= 0x11) {
        ASSERT(gActorPool2Count != gActorPool2Capacity);
        for (i = 0; i < gActorPool2Capacity; i++) {
            if (!gActorPool2[i].isActive) {
                gActorPool2Count++;
                break;
            }
        }
        ASSERT(i != gActorPool2Capacity);
        return &gActorPool2[i];
    } else if (mapActor->field_15) {
        ASSERT(gActorPool1Count != gActorPool1Capacity);
        for (i = 0; i < gActorPool1Capacity; i++) {
            if (!gActorPool1[i].isActive) {
                gActorPool1Count++;
                break;
            }
        }
        ASSERT(i != gActorPool1Capacity);
        return &gActorPool1[i];
    } else {
        ASSERT(gActorPool0Count != gActorPool0Capacity);
        for (i = 0; i < gActorPool0Capacity; i++) {
            if (!gActorPool0[i].isActive) {
                gActorPool0Count++;
                break;
            }
        }
        ASSERT(i != gActorPool0Capacity);
        return &gActorPool0[i];
    }
}

/**
 * Pushes the actor system's state onto the value stack so the current room's
 * actors survive loading another room. sub_8027F14 pops it back.
 */
void sub_8027C8C(void) {
    heap_retag(0, 6, 0x12);
    sub_8009D7C(dword_2000FC8);
    sub_8009D7C(byte_2000331);
    sub_8009D7C(byte_2000330);
    sub_8009D7C(byte_2000332);
    sub_8009D7C(byte_2000333);
    sub_8009D7C(byte_2000334);
    sub_8009D7C((u32)dword_200032C);
    dword_200032C = NULL;
    sub_8009D7C((u32)gEntitySection);
    sub_8009D7C((u32)dword_203DFF0);
    sub_8009D7C((u32)gActorPool0);
    sub_8009D7C((u32)gActorPool1);
    sub_8009D7C((u32)gActorPool2);
    sub_8009D7C((u32)dword_203E000);
    sub_8009D7C((u32)gProjectiles);
    sub_8009D7C((u32)dword_203DFB4);
    sub_8009D7C((u32)dword_203DFBC);
    sub_8009D7C((u32)dword_203DFC4);
    sub_8009D7C((u32)dword_203DFB8);
    sub_8009D7C((u32)dword_203DFC0);
    sub_8009D7C(gActorPool0Count);
    sub_8009D7C(gActorPool1Count);
    sub_8009D7C(gActorPool2Count);
    sub_8009D7C(byte_203DFD3);
    sub_8009D7C(gCurrentProjectileCount);
    sub_8009D7C(byte_203DFD6);
    sub_8009D7C(byte_203E008);
    sub_8009D7C(gActorPool0Capacity);
    sub_8009D7C(gActorPool1Capacity);
    sub_8009D7C(gActorPool2Capacity);
    sub_8009D7C(byte_203E00C);
    sub_8009D7C(gMaxProjectileCount);
    sub_8009D7C(byte_203E00D);
    sub_8009D7C(byte_203E00E);
    sub_8009D7C(byte_203DFE4);
    sub_8009D7C(byte_203DFE5);
    sub_8009D7C(byte_203DFE6);
    sub_8009D7C(byte_203DFE7);
    sub_8009D7C((u32)dword_203E010);
    sub_8009D7C(gInInteractionArea);
    sub_8009D7C(byte_203DFD8);
    sub_8009D7C(byte_203DFD9);
    sub_8009D7C(byte_203DFDA);
    sub_8009D7C(byte_203DFE9);
    sub_8009D7C((u32)dword_203DFDC);
    sub_8009D7C((u32)dword_203DFE0);
    sub_8009D7C(byte_203E014);
    sub_8009D7C(byte_203E015);
    sub_8009D7C(byte_203E016);
    sub_8009D7C(byte_203E017);
    sub_8009D7C(dword_203DFCC);
    sub_8009D7C(byte_203DFC8);
    sub_8009D7C(word_203DFCA);
}

void sub_8027F14(void) {
    heap_retag(0, 0x12, 6);
    word_203DFCA = sub_8009DAC();
    byte_203DFC8 = sub_8009DAC();
    dword_203DFCC = sub_8009DAC();
    byte_203E017 = sub_8009DAC();
    byte_203E016 = sub_8009DAC();
    byte_203E015 = sub_8009DAC();
    byte_203E014 = sub_8009DAC();
    dword_203DFE0 = (struct Actor*)sub_8009DAC();
    dword_203DFDC = (struct Actor*)sub_8009DAC();
    byte_203DFE9 = sub_8009DAC();
    byte_203DFDA = sub_8009DAC();
    byte_203DFD9 = sub_8009DAC();
    byte_203DFD8 = sub_8009DAC();
    gInInteractionArea = sub_8009DAC();
    dword_203E010 = (u8*)sub_8009DAC();
    byte_203DFE7 = sub_8009DAC();
    byte_203DFE6 = sub_8009DAC();
    byte_203DFE5 = sub_8009DAC();
    byte_203DFE4 = sub_8009DAC();
    byte_203E00E = sub_8009DAC();
    byte_203E00D = sub_8009DAC();
    gMaxProjectileCount = sub_8009DAC();
    byte_203E00C = sub_8009DAC();
    gActorPool2Capacity = sub_8009DAC();
    gActorPool1Capacity = sub_8009DAC();
    gActorPool0Capacity = sub_8009DAC();
    byte_203E008 = sub_8009DAC();
    byte_203DFD6 = sub_8009DAC();
    gCurrentProjectileCount = sub_8009DAC();
    byte_203DFD3 = sub_8009DAC();
    gActorPool2Count = sub_8009DAC();
    gActorPool1Count = sub_8009DAC();
    gActorPool0Count = sub_8009DAC();
    dword_203DFC0 = (u8*)sub_8009DAC();
    dword_203DFB8 = (u8*)sub_8009DAC();
    dword_203DFC4 = (struct Actor*)sub_8009DAC();
    dword_203DFBC = (struct Actor*)sub_8009DAC();
    dword_203DFB4 = (struct Actor*)sub_8009DAC();
    gProjectiles = (void*)sub_8009DAC();
    dword_203E000 = (void*)sub_8009DAC();
    gActorPool2 = (struct Actor*)sub_8009DAC();
    gActorPool1 = (struct Actor*)sub_8009DAC();
    gActorPool0 = (struct Actor*)sub_8009DAC();
    dword_203DFF0 = (void*)sub_8009DAC();
    gEntitySection = (struct MapActorSection*)sub_8009DAC();
    if (dword_200032C) {
        heap_free(dword_200032C, 4);
        dword_200032C = NULL;
    }
    dword_200032C = (struct struc_200032C*)sub_8009DAC();
    byte_2000334 = sub_8009DAC();
    byte_2000333 = sub_8009DAC();
    byte_2000332 = sub_8009DAC();
    byte_2000330 = sub_8009DAC();
    byte_2000331 = sub_8009DAC();
    dword_2000FC8 = sub_8009DAC();
}

void sub_080281A8(void) {
    ASSERT(dword_80CCFF8 == sizeof(struct Actor));
    ASSERT(dword_80CE43C == sizeof(struct Actor));
    ASSERT(dword_80CC788 == sizeof(struct Actor));
    byte_2002E4C = 0;
    heap_init(0);
    gActorPool0 = NULL;
    gActorPool1 = NULL;
    gActorPool2 = NULL;
    dword_203E000 = NULL;
    gProjectiles = NULL;
    dword_203DFB4 = NULL;
    dword_203DFB8 = NULL;
    dword_203DFC0 = NULL;
    dword_203DFBC = NULL;
    gActorPool0Count = 0;
    gActorPool1Count = 0;
    gActorPool2Count = 0;
    byte_203DFD3 = 0;
    gCurrentProjectileCount = 0;
    byte_203DFD6 = 0;
    byte_203DFE4 = 0;
    byte_203E008 = 0;
    byte_203DFE5 = 0;
    byte_30043A4 = 0;
    byte_30043A5 = 0;
    DmaFill32(0, &stru_203E01C, sizeof(struct Actor) / 4);
    stru_203E01C.interactionKind = 2;
}

void setup_entities(u32 room, int mode, struct MapActorSection* section) {
    int i;
    int j;
    int count1;
    int count2;
    int index;
    int maxUid1;
    int maxUid2;
    u32 size;
    struct MapActor* mapActor;
    struct Actor* actor;

    byte_203DFE8 = 0;
    sub_8030C30();

    switch (mode) {
        case ROOM_LOAD_NORMAL:
            gEntitySection = section;
            heap_free_by_tag(0, 6);
            break;
        case ROOM_LOAD_STORE:
            sub_8027C8C();
            gEntitySection = section;
            break;
        case ROOM_LOAD_RESTORE:
            heap_free_by_tag(0, 6);
            sub_8062064(0, ROOM_LOAD_RESTORE);
            sub_8047878(0, ROOM_LOAD_RESTORE);
            sub_8027F14();
            sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
            sub_8003894(dword_2000FC8, dword_80CC7EC[0]);
            return;
    }

    dword_203DFB4 = NULL;
    dword_203DFB8 = NULL;
    dword_203DFBC = NULL;
    dword_203DFC0 = NULL;

    gActorPool0Capacity = dActorPoolSizes[room].pool0;
    gActorPool1Capacity = dActorPoolSizes[room].pool1;
    gActorPool2Capacity = dActorPoolSizes[room].pool2;
    byte_203E00C = dActorPoolSizes[room].field_3;
    gMaxProjectileCount = dActorPoolSizes[room].projectiles;

    gActorPool0 = heap_alloc(gActorPool0Capacity * sizeof(struct Actor), 6, 0);
    gActorPool1 = heap_alloc(gActorPool1Capacity * sizeof(struct Actor), 6, 0);
    gActorPool2 = heap_alloc(gActorPool2Capacity * sizeof(struct Actor), 6, 0);
    dword_203E000 = heap_alloc(byte_203E00C * sizeof(struct struc_203E000), 6, 0);
    gProjectiles = heap_alloc(gMaxProjectileCount * sizeof(struct Projectile), 6, 0);

    gActorPool0Count = 0;
    gActorPool1Count = 0;
    gActorPool2Count = 0;
    byte_203DFD3 = 0;
    gCurrentProjectileCount = 0;

    for (i = 0; i < gActorPool0Capacity; i++) {
        gActorPool0[i].isActive = FALSE;
    }
    for (i = 0; i < gActorPool1Capacity; i++) {
        gActorPool1[i].isActive = FALSE;
    }
    for (i = 0; i < gActorPool2Capacity; i++) {
        gActorPool2[i].isActive = FALSE;
    }
    for (i = 0; i < byte_203E00C; i++) {
        dword_203E000[i].isActive = FALSE;
    }
    for (i = 0; i < gMaxProjectileCount; i++) {
        gProjectiles[i].isActive = FALSE;
    }

    dword_203E010 = heap_alloc(gEntitySection->uidCount, 6, 0);
    for (i = 0; i < gEntitySection->uidCount; i++) {
        dword_203E010[i] = 0;
    }

    count1 = 0;
    maxUid1 = 0;
    count2 = 0;
    maxUid2 = 0;
    for (i = 0; i < gEntitySection->groupCount; i++) {
        mapActor = gEntitySection->groups[i].actors;
        for (j = 0; j < gEntitySection->groups[i].count; mapActor++, j++) {
            if (mapActor->type > 0xA8 && !is_obj_disabled(mapActor->type, mapActor->param)) {
                count1++;
                if (mapActor->field_8 > maxUid1) {
                    maxUid1 = mapActor->field_8;
                }
            }
            if (dActorTypeFlags[mapActor->type] & 4) {
                count2++;
                if (mapActor->field_8 > maxUid2) {
                    maxUid2 = mapActor->field_8;
                }
            }
        }
    }

    byte_203DFD6 = count1;
    byte_203E00D = count1;
    byte_203DFE4 = 0;
    byte_203E008 = count2;
    byte_203E00E = count2;
    byte_203DFE5 = 0;

    if (dword_200032C) {
        heap_free(dword_200032C, 4);
        dword_200032C = NULL;
    }
    size = (count1 + count2 + 10) * 0x70;
    dword_200032C = heap_alloc(size, 0xB, 4);
    DmaFill32(0, dword_200032C, size / 4);
    byte_2000331 = count1 + count2;
    byte_2000330 = count1 + count2;
    byte_2000332 = 0;
    byte_2000333 = 10;
    byte_2000334 = count1 + count2;

    dword_2000FC8 = sub_8003854(0x4B0000);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    sub_8003894(dword_2000FC8, dword_80CC7EC[0]);
    sub_8047878(count1, mode);
    sub_8062064(count2, mode);

    if (count1 != 0 || count2 != 0) {
        if (count1 != 0) {
            dword_203DFB4 = heap_alloc(byte_203E00D * sizeof(struct Actor), 6, 0);
            dword_203DFB8 = heap_alloc(maxUid1 + 1, 6, 0);
        }
        if (count2 != 0) {
            dword_203DFBC = heap_alloc(byte_203E00E * sizeof(struct Actor), 6, 0);
            dword_203DFC0 = heap_alloc(maxUid2 + 1, 6, 0);
        }

        count1 = 0;
        count2 = 0;
        index = 0;
        for (i = 0; i < gEntitySection->groupCount; i++) {
            mapActor = gEntitySection->groups[i].actors;
            for (j = 0; j < gEntitySection->groups[i].count; mapActor++, j++) {
                if (is_obj_disabled(mapActor->type, mapActor->param)) {
                    continue;
                }
                if (mapActor->type > 0xA8) {
                    fx32 halfX;
                    fx32 halfZ;

                    dword_203DFB8[mapActor->field_8] = count1;
                    actor = &dword_203DFB4[count1];
                    actor->isActive = TRUE;
                    actor->field_48 = 0;
                    if (gEntitySection->axis == 1) {
                        actor->xPosition = gEntitySection->groupCoords[i];
                        actor->yPosition = mapActor->field_0;
                    } else {
                        actor->xPosition = mapActor->field_0;
                        actor->yPosition = gEntitySection->groupCoords[i];
                    }
                    actor->field_6 = mapActor->field_4;
                    actor->field_8 = mapActor->field_A;
                    actor->type = mapActor->type;
                    actor->field_46 = dActorTypeInfo[mapActor->type].field_2;
                    actor->field_9 = mapActor->field_B;
                    actor->field_A = mapActor->conditionId;
                    actor->field_B = mapActor->field_D;
                    actor->field_C = mapActor->field_E;
                    actor->field_10 = mapActor->field_F;
                    actor->field_14 = mapActor->field_11;
                    actor->field_18 = mapActor->field_12;
                    actor->field_24 = mapActor->field_13;
                    actor->field_28 = mapActor->field_14;
                    actor->interactionKind = mapActor->interactionKind;
                    actor->field_1C = mapActor->param;
                    actor->field_1E = mapActor->field_8;
                    actor->field_20 = 0;
                    actor->field_3C = 0;
                    actor->field_2F = mapActor->field_15;
                    actor->field_30 = mapActor->field_16;
                    actor->field_38 = mapActor->field_18;
                    actor->field_34 = mapActor->field_17;
                    actor->field_40 = mapActor->field_1A;
                    actor->field_44 = 0;
                    actor->field_4C = dActorHitboxes[actor->type].size[0] << 16;
                    actor->field_50 = dActorHitboxes[actor->type].size[1] << 16;
                    actor->field_54 = dActorHitboxes[actor->type].size[2] << 16;
                    actor->field_58 = dActorHitboxes[actor->type].size[3] << 16;
                    actor->field_5C = dActorHitboxes[actor->type].size[4] << 16;
                    actor->field_60 = dActorHitboxes[actor->type].size[5] << 16;
                    actor->field_94 = actor->xPosition << 16;
                    actor->field_98 = (actor->field_6 + actor->field_9) << 16;
                    actor->field_9C =
                        ((gMapPixelSizeY - actor->yPosition + actor->field_9) << 16) - actor->field_98;
                    halfX = actor->field_4C >> 1;
                    actor->field_64 =
                        actor->field_94 - halfX + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_68 = actor->field_98 + (dActorHitboxes[actor->type].offset[1] << 16);
                    halfZ = actor->field_54 >> 1;
                    actor->field_6C =
                        actor->field_9C - halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_70 =
                        actor->field_94 + halfX + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_74 = actor->field_98 + actor->field_50
                                      + (dActorHitboxes[actor->type].offset[1] << 16);
                    actor->field_78 =
                        actor->field_9C + halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_7C = actor->field_94 - (actor->field_58 >> 1)
                                      + (dActorHitboxes[actor->type].offset[3] << 16);
                    actor->field_80 = actor->field_98 + (dActorHitboxes[actor->type].offset[4] << 16);
                    actor->field_84 = actor->field_9C - (actor->field_60 >> 1)
                                      + (dActorHitboxes[actor->type].offset[5] << 16);
                    actor->field_88 = actor->field_94 + (actor->field_58 >> 1)
                                      + (dActorHitboxes[actor->type].offset[3] << 16);
                    actor->field_8C = actor->field_98 + actor->field_5C
                                      + (dActorHitboxes[actor->type].offset[4] << 16);
                    actor->field_90 = actor->field_9C + (actor->field_60 >> 1)
                                      + (dActorHitboxes[actor->type].offset[5] << 16);
                    sub_0804835C(actor, count1, index);
                    count1++;
                    index++;
                    ASSERT(count1 <= byte_203E00D);
                } else if (dActorTypeFlags[mapActor->type] & 4) {
                    fx32 halfX;
                    fx32 halfZ;

                    dword_203DFC0[mapActor->field_8] = count2;
                    actor = &dword_203DFBC[count2];
                    actor->isActive = TRUE;
                    actor->field_48 = 0;
                    if (gEntitySection->axis == 1) {
                        actor->xPosition = gEntitySection->groupCoords[i];
                        actor->yPosition = mapActor->field_0;
                    } else {
                        actor->xPosition = mapActor->field_0;
                        actor->yPosition = gEntitySection->groupCoords[i];
                    }
                    actor->field_6 = mapActor->field_4;
                    actor->field_8 = mapActor->field_A;
                    actor->type = mapActor->type;
                    actor->field_46 = dActorTypeInfo[mapActor->type].field_2;
                    actor->field_9 = mapActor->field_B;
                    actor->field_A = mapActor->conditionId;
                    actor->field_B = mapActor->field_D;
                    actor->field_C = mapActor->field_E;
                    actor->field_10 = mapActor->field_F;
                    actor->field_14 = mapActor->field_11;
                    actor->field_18 = mapActor->field_12;
                    actor->field_24 = mapActor->field_13;
                    actor->field_28 = mapActor->field_14;
                    actor->interactionKind = mapActor->interactionKind;
                    actor->field_1C = mapActor->param;
                    actor->field_1E = mapActor->field_8;
                    actor->field_20 = 0;
                    actor->field_3C = 0;
                    actor->field_2F = mapActor->field_15;
                    actor->field_30 = mapActor->field_16;
                    actor->field_38 = mapActor->field_18;
                    actor->field_34 = mapActor->field_17;
                    actor->field_40 = mapActor->field_1A;
                    actor->field_44 = 0;
                    actor->field_4C = dActorHitboxes[actor->type].size[0] << 16;
                    actor->field_50 = dActorHitboxes[actor->type].size[1] << 16;
                    actor->field_54 = dActorHitboxes[actor->type].size[2] << 16;
                    actor->field_58 = dActorHitboxes[actor->type].size[3] << 16;
                    actor->field_5C = dActorHitboxes[actor->type].size[4] << 16;
                    actor->field_60 = dActorHitboxes[actor->type].size[5] << 16;
                    actor->field_94 = actor->xPosition << 16;
                    actor->field_98 = (actor->field_6 + actor->field_9) << 16;
                    actor->field_9C =
                        ((gMapPixelSizeY - actor->yPosition + actor->field_9) << 16) - actor->field_98;
                    halfX = actor->field_4C >> 1;
                    actor->field_64 =
                        actor->field_94 - halfX + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_68 = actor->field_98 + (dActorHitboxes[actor->type].offset[1] << 16);
                    halfZ = actor->field_54 >> 1;
                    actor->field_6C =
                        actor->field_9C - halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_70 =
                        actor->field_94 + halfX + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_74 = actor->field_98 + actor->field_50
                                      + (dActorHitboxes[actor->type].offset[1] << 16);
                    actor->field_78 =
                        actor->field_9C + halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_7C = actor->field_94 - (actor->field_58 >> 1)
                                      + (dActorHitboxes[actor->type].offset[3] << 16);
                    actor->field_80 = actor->field_98 + (dActorHitboxes[actor->type].offset[4] << 16);
                    actor->field_84 = actor->field_9C - (actor->field_60 >> 1)
                                      + (dActorHitboxes[actor->type].offset[5] << 16);
                    actor->field_88 = actor->field_94 + (actor->field_58 >> 1)
                                      + (dActorHitboxes[actor->type].offset[3] << 16);
                    actor->field_8C = actor->field_98 + actor->field_5C
                                      + (dActorHitboxes[actor->type].offset[4] << 16);
                    actor->field_90 = actor->field_9C + (actor->field_60 >> 1)
                                      + (dActorHitboxes[actor->type].offset[5] << 16);
                    sub_0806220C(actor, count2, index);
                    count2++;
                    index++;
                    ASSERT(count2 <= byte_203E00E);
                }
            }
        }
    }
    sub_8028E30();
}

#ifndef NONMATCHING
NAKED void sub_8028E30(void) {
    asm_unified(".include \"asm/nonmatching/sub_8028E30.s\"");
}
#else
void sub_8028E30(void) {
    int i;
    int j;
    int x;
    int y;
    struct MapActor* mapActor;
    struct Actor* actor;
    struct Vec3fx size;

    for (i = 0; i < gEntitySection->groupCount; i++) {
        mapActor = gEntitySection->groups[i].actors;
        for (j = 0; j < gEntitySection->groups[i].count; mapActor++, j++) {
            if (mapActor->type > 0xA8) {
                continue;
            }
            if (dActorTypeFlags[mapActor->type] & 4) {
                continue;
            }
            if (!mapActor->field_16) {
                continue;
            }
            if (dword_203E010[mapActor->field_8]) {
                continue;
            }
            if (!sub_80343F0(mapActor, i)) {
                continue;
            }
            if (is_obj_disabled(mapActor->type, mapActor->param)) {
                continue;
            }

            actor = actor_alloc(mapActor);
            actor->isActive = TRUE;
            if (gEntitySection->axis == 1) {
                actor->xPosition = gEntitySection->groupCoords[i];
                actor->yPosition = mapActor->field_0;
            } else {
                actor->xPosition = mapActor->field_0;
                actor->yPosition = gEntitySection->groupCoords[i];
            }
            actor->field_6 = mapActor->field_4;
            actor->field_8 = mapActor->field_A;
            actor->type = mapActor->type;
            actor->field_9 = mapActor->field_B;
            actor->field_A = mapActor->conditionId;
            actor->field_B = mapActor->field_D;
            actor->field_C = mapActor->field_E;
            actor->field_10 = mapActor->field_F;
            actor->field_14 = mapActor->field_11;
            actor->field_18 = mapActor->field_12;
            actor->field_24 = mapActor->field_13;
            actor->field_28 = mapActor->field_14;
            actor->interactionKind = mapActor->interactionKind;
            actor->field_1C = mapActor->param;
            actor->field_1E = mapActor->field_8;
            actor->field_20 = 0;
            actor->field_44 = 0;
            actor->field_3C = 0;
            actor->field_2F = mapActor->field_15;
            actor->field_49 = 0;
            actor->field_30 = mapActor->field_16;
            actor->field_38 = mapActor->field_18;
            actor->field_34 = mapActor->field_17;
            actor->field_40 = mapActor->field_1A;
            if (dActorTypeFlags[actor->type] & 1) {
                actor->field_46 = actor->field_18;
            } else {
                actor->field_46 = dActorTypeInfo[actor->type].field_2;
            }
            sub_80293C0(actor);
            dword_203E010[actor->field_1E] = 1;

            if ((u16)(actor->type - 0x97) <= 0x11) {
                continue;
            }

            x = actor->xPosition - gCameraPixelX;
            y = actor->yPosition - gCameraPixelY;
            if (actor->field_2F == 0) {
                SetSprite(&actor->shadowSprite, 0, FALSE, 0, 1, x, y, 2);
                sprite_set_priority(&actor->shadowSprite, actor->field_8);
                sprite_set_locked_frame(&actor->shadowSprite, actor->field_9 < dword_80CEBC4
                                                                  ? byte_80CEB84[actor->field_9]
                                                                  : 5);
                sprite_lock_anim(&actor->shadowSprite);
                if (!sub_8003A7C(&actor->field_94, -actor->field_9, gMapPixelSizeY)) {
                    actor->shadowSprite.attr0Flag9 = 1;
                }
            }
            y -= actor->field_9;

            if (dActorTypeFlags[actor->type] & 1) {
                if (sub_8033118(actor->type, (s16)actor->field_1C, actor->field_C)) {
                    SetSprite(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 0, 1, x, y, 2);
                } else {
                    SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 1, x, y, 2);
                }
            } else if (actor->interactionKind == 7) {
                if (!sub_8033CCC(actor)) {
                    SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                } else {
                    SetSprite(&actor->sprite, 0x451, FALSE, 0, 0, x, y, 2);
                }
            } else {
                switch (actor->type) {
                    case 0x6C:
                        if (is_obj_disabled(0xCD, 0)) {
                            SetSprite(&actor->sprite, 0x2DC, FALSE, 0, 0, x, y, 2);
                        } else {
                            SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                        }
                        break;
                    case 0x6D:
                        if (is_obj_disabled(0xCD, 0)) {
                            SetSprite(&actor->sprite, 0x2DB, FALSE, 0, 0, x, y, 2);
                        } else {
                            SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                        }
                        break;
                    case 0x14:
                        if (!gUnlockedMoves[MOVE_SHOCK_JUMP]) {
                            SetSprite(&actor->sprite, 0x2D8, FALSE, 0, 0, x, y, 2);
                        } else {
                            SetSprite(&actor->sprite, 0x235, FALSE, 0, 0, x, y, 2);
                        }
                        break;
                    case 0x15:
                        if (!gUnlockedMoves[MOVE_WONDERWING]) {
                            SetSprite(&actor->sprite, 0x2D9, FALSE, 0, 0, x, y, 2);
                        } else {
                            SetSprite(&actor->sprite, 0x236, FALSE, 0, 0, x, y, 2);
                        }
                        break;
                    case 0x16:
                    case 0x93:
                        SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                        actor->sprite.loopFrame = 20;
                        sprite_lock_anim_on_frame(&actor->sprite, 0);
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    case 0x17:
                        SetSprite(&actor->sprite, 0x238, FALSE, 0, 0, x, y, 2);
                        actor->sprite.loopFrame = 20;
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    case 0x39:
                        SetSprite(&actor->sprite, 0x25A, FALSE, 0, 0, x, y, 2);
                        actor->sprite.loopFrame = 4;
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    default:
                        SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                        break;
                }
            }

            size.x = actor->field_4C >> 1;
            size.y = actor->field_50;
            size.z = actor->field_54 >> 1;
            if (!sub_8003A74(&actor->field_94, &size, 0, gMapPixelSizeY)) {
                actor->sprite.attr0Flag9 = 1;
            }
            sprite_set_priority(&actor->sprite, actor->field_8);
        }
    }
}
#endif
