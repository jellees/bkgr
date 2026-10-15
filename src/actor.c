#include "global.h"
#include "common.h"
#include "audio_b.h"
#include "heap.h"
#include "hud.h"
#include "main.h"
#include "player.h"
#include "player_defs.h"
#include "random.h"
#include "room.h"
#include "actor_defs.h"

/**
 * Finds a free slot for a streamed-in actor. Types 0x97-0xA8 use pool 2,
 * placements with field_15 set use pool 1 and everything else uses pool 0.
 * The caller marks the slot active.
 */
struct Actor* actor_alloc(struct MapActor* mapActor) {
    int i;

    if ((u16)(mapActor->type - ACTOR_097) <= ACTOR_0A8 - ACTOR_097) {
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
        dword_203E000[i].actor.isActive = FALSE;
    }
    for (i = 0; i < gMaxProjectileCount; i++) {
        gProjectiles[i].actor.isActive = FALSE;
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
            if (mapActor->type > ACTOR_0A8 && !is_obj_disabled(mapActor->type, mapActor->param)) {
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
                if (mapActor->type > ACTOR_0A8) {
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
                    actor->field_4C.x = dActorHitboxes[actor->type].size[0] << 16;
                    actor->field_4C.y = dActorHitboxes[actor->type].size[1] << 16;
                    actor->field_4C.z = dActorHitboxes[actor->type].size[2] << 16;
                    actor->field_58.x = dActorHitboxes[actor->type].size[3] << 16;
                    actor->field_58.y = dActorHitboxes[actor->type].size[4] << 16;
                    actor->field_58.z = dActorHitboxes[actor->type].size[5] << 16;
                    actor->field_94.x = actor->xPosition << 16;
                    actor->field_94.y = (actor->field_6 + actor->field_9) << 16;
                    actor->field_94.z = ((gMapPixelSizeY - actor->yPosition + actor->field_9) << 16)
                                        - actor->field_94.y;
                    halfX = actor->field_4C.x >> 1;
                    actor->field_64.x =
                        actor->field_94.x - halfX + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_64.y =
                        actor->field_94.y + (dActorHitboxes[actor->type].offset[1] << 16);
                    halfZ = actor->field_4C.z >> 1;
                    actor->field_64.z =
                        actor->field_94.z - halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_70.x =
                        actor->field_94.x + halfX + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_70.y = actor->field_94.y + actor->field_4C.y
                                        + (dActorHitboxes[actor->type].offset[1] << 16);
                    actor->field_70.z =
                        actor->field_94.z + halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_7C.x = actor->field_94.x - (actor->field_58.x >> 1)
                                        + (dActorHitboxes[actor->type].offset[3] << 16);
                    actor->field_7C.y =
                        actor->field_94.y + (dActorHitboxes[actor->type].offset[4] << 16);
                    actor->field_7C.z = actor->field_94.z - (actor->field_58.z >> 1)
                                        + (dActorHitboxes[actor->type].offset[5] << 16);
                    actor->field_88.x = actor->field_94.x + (actor->field_58.x >> 1)
                                        + (dActorHitboxes[actor->type].offset[3] << 16);
                    actor->field_88.y = actor->field_94.y + actor->field_58.y
                                        + (dActorHitboxes[actor->type].offset[4] << 16);
                    actor->field_88.z = actor->field_94.z + (actor->field_58.z >> 1)
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
                    actor->field_4C.x = dActorHitboxes[actor->type].size[0] << 16;
                    actor->field_4C.y = dActorHitboxes[actor->type].size[1] << 16;
                    actor->field_4C.z = dActorHitboxes[actor->type].size[2] << 16;
                    actor->field_58.x = dActorHitboxes[actor->type].size[3] << 16;
                    actor->field_58.y = dActorHitboxes[actor->type].size[4] << 16;
                    actor->field_58.z = dActorHitboxes[actor->type].size[5] << 16;
                    actor->field_94.x = actor->xPosition << 16;
                    actor->field_94.y = (actor->field_6 + actor->field_9) << 16;
                    actor->field_94.z = ((gMapPixelSizeY - actor->yPosition + actor->field_9) << 16)
                                        - actor->field_94.y;
                    halfX = actor->field_4C.x >> 1;
                    actor->field_64.x =
                        actor->field_94.x - halfX + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_64.y =
                        actor->field_94.y + (dActorHitboxes[actor->type].offset[1] << 16);
                    halfZ = actor->field_4C.z >> 1;
                    actor->field_64.z =
                        actor->field_94.z - halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_70.x =
                        actor->field_94.x + halfX + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_70.y = actor->field_94.y + actor->field_4C.y
                                        + (dActorHitboxes[actor->type].offset[1] << 16);
                    actor->field_70.z =
                        actor->field_94.z + halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_7C.x = actor->field_94.x - (actor->field_58.x >> 1)
                                        + (dActorHitboxes[actor->type].offset[3] << 16);
                    actor->field_7C.y =
                        actor->field_94.y + (dActorHitboxes[actor->type].offset[4] << 16);
                    actor->field_7C.z = actor->field_94.z - (actor->field_58.z >> 1)
                                        + (dActorHitboxes[actor->type].offset[5] << 16);
                    actor->field_88.x = actor->field_94.x + (actor->field_58.x >> 1)
                                        + (dActorHitboxes[actor->type].offset[3] << 16);
                    actor->field_88.y = actor->field_94.y + actor->field_58.y
                                        + (dActorHitboxes[actor->type].offset[4] << 16);
                    actor->field_88.z = actor->field_94.z + (actor->field_58.z >> 1)
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
            if (mapActor->type > ACTOR_0A8) {
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

            if ((u16)(actor->type - ACTOR_097) <= ACTOR_0A8 - ACTOR_097) {
                continue;
            }

            x = actor->xPosition - gCameraPixelX;
            y = actor->yPosition - gCameraPixelY;
            if (actor->field_2F == 0) {
                SetSprite(&actor->shadowSprite, SPRITE_SHADOW, FALSE, 0, 1, x, y, 2);
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
                    case ACTOR_06C:
                        if (is_obj_disabled(ACTOR_0CD, 0)) {
                            SetSprite(&actor->sprite, 0x2DC, FALSE, 0, 0, x, y, 2);
                        } else {
                            SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                        }
                        break;
                    case ACTOR_06D:
                        if (is_obj_disabled(ACTOR_0CD, 0)) {
                            SetSprite(&actor->sprite, 0x2DB, FALSE, 0, 0, x, y, 2);
                        } else {
                            SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                        }
                        break;
                    case ACTOR_SHOCK_SPRING_PAD:
                        if (!gUnlockedMoves[MOVE_SHOCK_JUMP]) {
                            SetSprite(&actor->sprite, 0x2D8, FALSE, 0, 0, x, y, 2);
                        } else {
                            SetSprite(&actor->sprite, 0x235, FALSE, 0, 0, x, y, 2);
                        }
                        break;
                    case ACTOR_015:
                        if (!gUnlockedMoves[MOVE_WONDERWING]) {
                            SetSprite(&actor->sprite, 0x2D9, FALSE, 0, 0, x, y, 2);
                        } else {
                            SetSprite(&actor->sprite, 0x236, FALSE, 0, 0, x, y, 2);
                        }
                        break;
                    case ACTOR_016:
                    case ACTOR_093:
                        SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                        actor->sprite.loopFrame = 20;
                        sprite_lock_anim_on_frame(&actor->sprite, 0);
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    case ACTOR_017:
                        SetSprite(&actor->sprite, 0x238, FALSE, 0, 0, x, y, 2);
                        actor->sprite.loopFrame = 20;
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    case ACTOR_039:
                        SetSprite(&actor->sprite, 0x25A, FALSE, 0, 0, x, y, 2);
                        actor->sprite.loopFrame = 4;
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    default:
                        SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
                        break;
                }
            }

            size.x = actor->field_4C.x >> 1;
            size.y = actor->field_4C.y;
            size.z = actor->field_4C.z >> 1;
            if (!sub_8003A74(&actor->field_94, &size, 0, gMapPixelSizeY)) {
                actor->sprite.attr0Flag9 = 1;
            }
            sprite_set_priority(&actor->sprite, actor->field_8);
        }
    }
}
#endif

void sub_80293C0(struct Actor* actor) {
    fx32 halfX;
    fx32 halfZ;

    actor->field_4C.x = dActorHitboxes[actor->type].size[0] << 16;
    actor->field_4C.y = dActorHitboxes[actor->type].size[1] << 16;
    actor->field_4C.z = dActorHitboxes[actor->type].size[2] << 16;
    actor->field_58.x = dActorHitboxes[actor->type].size[3] << 16;
    actor->field_58.y = dActorHitboxes[actor->type].size[4] << 16;
    actor->field_58.z = dActorHitboxes[actor->type].size[5] << 16;
    actor->field_94.x = actor->xPosition << 16;
    actor->field_94.y = (actor->field_6 + actor->field_9) << 16;
    actor->field_94.z =
        ((gMapPixelSizeY - actor->yPosition + actor->field_9) << 16) - actor->field_94.y;
    halfX = actor->field_4C.x >> 1;
    actor->field_64.x = actor->field_94.x - halfX + (dActorHitboxes[actor->type].offset[0] << 16);
    actor->field_64.y = actor->field_94.y + (dActorHitboxes[actor->type].offset[1] << 16);
    halfZ = actor->field_4C.z >> 1;
    actor->field_64.z = actor->field_94.z - halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
    actor->field_70.x = actor->field_94.x + halfX + (dActorHitboxes[actor->type].offset[0] << 16);
    actor->field_70.y =
        actor->field_94.y + actor->field_4C.y + (dActorHitboxes[actor->type].offset[1] << 16);
    actor->field_70.z = actor->field_94.z + halfZ + (dActorHitboxes[actor->type].offset[2] << 16);
    actor->field_7C.x =
        actor->field_94.x - (actor->field_58.x >> 1) + (dActorHitboxes[actor->type].offset[3] << 16);
    actor->field_7C.y = actor->field_94.y + (dActorHitboxes[actor->type].offset[4] << 16);
    actor->field_7C.z =
        actor->field_94.z - (actor->field_58.z >> 1) + (dActorHitboxes[actor->type].offset[5] << 16);
    actor->field_88.x =
        actor->field_94.x + (actor->field_58.x >> 1) + (dActorHitboxes[actor->type].offset[3] << 16);
    actor->field_88.y =
        actor->field_94.y + actor->field_58.y + (dActorHitboxes[actor->type].offset[4] << 16);
    actor->field_88.z =
        actor->field_94.z + (actor->field_58.z >> 1) + (dActorHitboxes[actor->type].offset[5] << 16);
}

/**
 * Spawns the actors of the current section that lie in a window around the
 * given pixel position and are not already loaded.
 */
#ifndef NONMATCHING
NAKED void s_load_object(int x, int y) {
    asm_unified(".include \"asm/nonmatching/s_load_object.s\"");
}
#else
void s_load_object(int x, int y) {
    int min;
    int max;
    int minOther;
    int maxOther;
    int i;
    int j;
    int spriteX;
    int spriteY;
    struct MapActor* mapActor;
    struct Actor* actor;

    if (gEntitySection->axis == 1) {
        max = x + 160;
        if (max >= gMapPixelSizeX) {
            max = gMapPixelSizeX - 1;
        }
        min = x - 160;
        if (min < 0) {
            max -= min;
            min = 0;
        }
        maxOther = y + 160;
        if (maxOther >= gMapPixelSizeY) {
            maxOther = gMapPixelSizeY - 1;
        }
        minOther = y - 115;
        if (minOther < 0) {
            maxOther -= minOther;
            minOther = 0;
        }
        sub_802A34C(min, max, minOther, maxOther);
    } else {
        max = y + 160;
        if (max >= gMapPixelSizeY) {
            max = gMapPixelSizeY - 1;
        }
        min = y - 115;
        if (min < 0) {
            max -= min;
            min = 0;
        }
        maxOther = x + 160;
        if (maxOther >= gMapPixelSizeX) {
            maxOther = gMapPixelSizeX - 1;
        }
        minOther = x - 160;
        if (minOther < 0) {
            maxOther -= minOther;
            minOther = 0;
        }
        sub_802A34C(minOther, maxOther, min, max);
    }

    min = sub_80039DC(gEntitySection->groupCoords, gEntitySection->groupCount, min);
    max = sub_80039DC(gEntitySection->groupCoords, gEntitySection->groupCount, max);
    for (i = min; i <= max; i++) {
        mapActor = gEntitySection->groups[i].actors;
        for (j = 0; j < gEntitySection->groups[i].count; mapActor++, j++) {
            if (mapActor->field_0 < minOther || mapActor->field_0 > maxOther) {
                continue;
            }
            if (mapActor->type > ACTOR_0A8) {
                continue;
            }
            if (dActorTypeFlags[mapActor->type] & 4) {
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

            if ((u16)(actor->type - ACTOR_097) <= ACTOR_0A8 - ACTOR_097) {
                continue;
            }

            spriteX = actor->xPosition - gCameraPixelX;
            spriteY = actor->yPosition - gCameraPixelY;
            if (actor->field_2F == 0) {
                SetSprite(&actor->shadowSprite, SPRITE_SHADOW, FALSE, 0, 1, spriteX, spriteY, 2);
                sprite_set_priority(&actor->shadowSprite, actor->field_8);
                sprite_set_locked_frame(&actor->shadowSprite, actor->field_9 < dword_80CEBC4
                                                                  ? byte_80CEB84[actor->field_9]
                                                                  : 5);
                sprite_lock_anim(&actor->shadowSprite);
                actor->shadowSprite.objMode = 1;
            }
            spriteY -= actor->field_9;

            if (dActorTypeFlags[actor->type] & 1) {
                if (sub_8033118(actor->type, (s16)actor->field_1C, actor->field_C)) {
                    SetSprite(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 0, 1, spriteX,
                              spriteY, 2);
                } else {
                    SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 1, spriteX, spriteY, 2);
                }
            } else if (actor->interactionKind == 7) {
                if (!sub_8033CCC(actor)) {
                    SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, spriteX, spriteY, 2);
                } else {
                    SetSprite(&actor->sprite, 0x451, FALSE, 0, 0, spriteX, spriteY, 2);
                }
            } else {
                switch (actor->type) {
                    case ACTOR_06F:
                        SetSprite(&actor->sprite, 0x290, FALSE, 0, 0, spriteX, spriteY, 2);
                        actor->sprite.objMode = 1;
                        break;
                    case ACTOR_06C:
                        if (is_obj_disabled(ACTOR_0CD, 0)) {
                            SetSprite(&actor->sprite, 0x2DC, FALSE, 0, 0, spriteX, spriteY, 2);
                        } else {
                            SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, spriteX,
                                      spriteY, 2);
                        }
                        break;
                    case ACTOR_06D:
                        if (is_obj_disabled(ACTOR_0CD, 0)) {
                            SetSprite(&actor->sprite, 0x2DB, FALSE, 0, 0, spriteX, spriteY, 2);
                        } else {
                            SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, spriteX,
                                      spriteY, 2);
                        }
                        break;
                    case ACTOR_SHOCK_SPRING_PAD:
                        if (!gUnlockedMoves[MOVE_SHOCK_JUMP]) {
                            SetSprite(&actor->sprite, 0x2D8, FALSE, 0, 0, spriteX, spriteY, 2);
                        } else {
                            SetSprite(&actor->sprite, 0x235, FALSE, 0, 0, spriteX, spriteY, 2);
                        }
                        break;
                    case ACTOR_015:
                        if (!gUnlockedMoves[MOVE_WONDERWING]) {
                            SetSprite(&actor->sprite, 0x2D9, FALSE, 0, 0, spriteX, spriteY, 2);
                        } else {
                            SetSprite(&actor->sprite, 0x236, FALSE, 0, 0, spriteX, spriteY, 2);
                        }
                        break;
                    case ACTOR_016:
                    case ACTOR_093:
                        SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, spriteX, spriteY,
                                  2);
                        actor->sprite.loopFrame = 20;
                        sprite_lock_anim_on_frame(&actor->sprite, 0);
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    case ACTOR_017:
                        SetSprite(&actor->sprite, 0x238, FALSE, 0, 0, spriteX, spriteY, 2);
                        actor->sprite.loopFrame = 20;
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    case ACTOR_039:
                        SetSprite(&actor->sprite, 0x25A, FALSE, 0, 0, spriteX, spriteY, 2);
                        actor->sprite.loopFrame = 4;
                        sprite_set_locked_frame(&actor->sprite, 0);
                        break;
                    default:
                        SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, spriteX, spriteY,
                                  2);
                        break;
                }
            }
        }
    }
    sub_802C968();
    despawn_aged_projectiles();
    play_jinjo_sounds();
}
#endif

void sub_8029C30(int type) {
    int found;
    int i;
    struct Actor* actor;

    if (gActorPool0Count) {
        for (found = 0, i = 0; i < gActorPool0Capacity; i++) {
            actor = &gActorPool0[i];
            if (actor->isActive) {
                if (!actor->field_30 && !actor->field_20 && !actor->field_3C) {
                    if (actor->type == type) {
                        gActorPool0Count--;
                        actor->isActive = FALSE;
                        dword_203E010[actor->field_1E] = 0;
                        if (gInInteractionArea && dword_203DFDC == actor) {
                            gInInteractionArea = FALSE;
                            dword_203DFE0 = NULL;
                        }
                    } else {
                        found++;
                    }
                } else {
                    found++;
                }
            }
            if (found == gActorPool0Count) {
                break;
            }
        }
    }
    if (gActorPool1Count) {
        for (found = 0, i = 0; i < gActorPool1Capacity; i++) {
            actor = &gActorPool1[i];
            if (actor->isActive) {
                if (!actor->field_30 && !actor->field_20 && !actor->field_3C) {
                    if (actor->type == type) {
                        gActorPool1Count--;
                        actor->isActive = FALSE;
                        dword_203E010[actor->field_1E] = 0;
                        if (gInInteractionArea && dword_203DFDC == actor) {
                            gInInteractionArea = FALSE;
                            dword_203DFE0 = NULL;
                        }
                    } else {
                        found++;
                    }
                } else {
                    found++;
                }
            }
            if (found == gActorPool1Count) {
                break;
            }
        }
    }
}

void sub_8029DA8(u32 flags) {
    int found;
    int i;
    struct Actor* actor;

    if (gActorPool0Count) {
        for (found = 0, i = 0; i < gActorPool0Capacity; i++) {
            actor = &gActorPool0[i];
            if (actor->isActive) {
                if (!actor->field_30 && !actor->field_20 && !actor->field_3C) {
                    if (dActorTypeFlags[actor->type] & flags) {
                        gActorPool0Count--;
                        actor->isActive = FALSE;
                        dword_203E010[actor->field_1E] = 0;
                        if (gInInteractionArea && dword_203DFDC == actor) {
                            gInInteractionArea = FALSE;
                            dword_203DFE0 = NULL;
                        }
                    } else {
                        found++;
                    }
                } else {
                    found++;
                }
            }
            if (found == gActorPool0Count) {
                break;
            }
        }
    }
    if (gActorPool1Count) {
        for (found = 0, i = 0; i < gActorPool1Capacity; i++) {
            actor = &gActorPool1[i];
            if (actor->isActive) {
                if (!actor->field_30 && !actor->field_20 && !actor->field_3C) {
                    if (dActorTypeFlags[actor->type] & flags) {
                        gActorPool1Count--;
                        actor->isActive = FALSE;
                        dword_203E010[actor->field_1E] = 0;
                        if (gInInteractionArea && dword_203DFDC == actor) {
                            gInInteractionArea = FALSE;
                            dword_203DFE0 = NULL;
                        }
                    } else {
                        found++;
                    }
                } else {
                    found++;
                }
            }
            if (found == gActorPool1Count) {
                break;
            }
        }
    }
}

int sub_8029F3C(int left, int right, int top, int bottom) {
    int result;
    int found;
    int i;
    struct Actor* actor;

    result = 0;
    if (gActorPool0Count) {
        for (found = 0, i = 0; i < gActorPool0Capacity; i++) {
            actor = &gActorPool0[i];
            if (actor->isActive) {
                if (actor->field_30 || actor->field_20 || actor->field_3C) {
                    found++;
                } else if (actor->xPosition < left || actor->xPosition > right || actor->yPosition < top
                           || actor->yPosition > bottom
                           || is_obj_disabled(actor->type, (s16)actor->field_1C)
                           || !sub_8034310(actor)) {
                    gActorPool0Count--;
                    actor->isActive = FALSE;
                    dword_203E010[actor->field_1E] = 0;
                    if (gInInteractionArea && dword_203DFDC == actor) {
                        gInInteractionArea = FALSE;
                        dword_203DFE0 = NULL;
                    }
                } else {
                    found++;
                    if (dActorTypeFlags[actor->type] & 0x10) {
                        result = 1;
                    }
                }
            }
            if (found == gActorPool0Count) {
                break;
            }
        }
    }
    return result;
}

int sub_802A06C(int left, int right, int top, int bottom) {
    int result;
    int found;
    int i;
    struct Actor* actor;

    result = 0;
    if (gActorPool1Count) {
        for (found = 0, i = 0; i < gActorPool1Capacity; i++) {
            actor = &gActorPool1[i];
            if (actor->isActive) {
                if (actor->field_30 || actor->field_20 || actor->field_3C) {
                    found++;
                } else if (actor->xPosition < left || actor->xPosition > right || actor->yPosition < top
                           || actor->yPosition > bottom
                           || is_obj_disabled(actor->type, (s16)actor->field_1C)
                           || !sub_8034310(actor)) {
                    gActorPool1Count--;
                    actor->isActive = FALSE;
                    dword_203E010[actor->field_1E] = 0;
                    if (gInInteractionArea && dword_203DFDC == actor) {
                        gInInteractionArea = FALSE;
                        dword_203DFE0 = NULL;
                    }
                } else {
                    found++;
                    if (dActorTypeFlags[actor->type] & 0x10) {
                        result = 1;
                    }
                }
            }
            if (found == gActorPool1Count) {
                break;
            }
        }
    }
    return result;
}

void sub_802A19C(int left, int right, int top, int bottom) {
    int found;
    int i;
    struct Actor* actor;

    if (gActorPool2Count) {
        for (found = 0, i = 0; i < gActorPool2Capacity; i++) {
            actor = &gActorPool2[i];
            if (actor->isActive) {
                if (actor->field_30 || actor->field_20 || actor->field_3C) {
                    found++;
                } else if (actor->xPosition < left || actor->xPosition > right || actor->yPosition < top
                           || actor->yPosition > bottom
                           || is_obj_disabled(actor->type, (s16)actor->field_1C)
                           || !sub_8034310(actor)) {
                    gActorPool2Count--;
                    actor->isActive = FALSE;
                    dword_203E010[actor->field_1E] = 0;
                    if (gInInteractionArea && dword_203DFDC == actor) {
                        gInInteractionArea = FALSE;
                        dword_203DFE0 = NULL;
                    }
                } else {
                    found++;
                }
            }
            if (found == gActorPool2Count) {
                break;
            }
        }
    }
}

void sub_802A2A0(int left, int right, int top, int bottom) {
    int found;
    int i;
    struct Actor* actor;

    if (byte_203DFD6) {
        for (found = 0, i = 0; i < byte_203E00D; i++) {
            actor = &dword_203DFB4[i];
            if (actor->isActive) {
                if (actor->field_20 || actor->field_3C) {
                    found++;
                } else if (is_obj_disabled(actor->type, (s16)actor->field_1C)) {
                    actor->isActive = FALSE;
                    if (actor->field_48) {
                        byte_203DFE4--;
                    }
                    byte_203DFD6--;
                } else {
                    found++;
                }
            }
            if (found == byte_203DFD6) {
                break;
            }
        }
    }
}

void sub_802A34C(int minX, int maxX, int minY, int maxY) {
    int result;

    result = sub_8029F3C(minX, maxX, minY, maxY);
    result |= sub_802A06C(minX, maxX, minY, maxY);
    if (result && !byte_203E014) {
        byte_203E015 = 120;
        byte_203E016 = 250;
    }
    byte_203E014 = result;
    sub_802A19C(minX, maxX, minY, maxY);
    sub_802A2A0(minX, maxX, minY, maxY);
}

void sub_802A3B8(struct RenderListEntry** renderList, u32* spriteCount) {
    int rendered;
    int i;
    struct Actor* actor;
    struct Vec3fx size;

    if (gActorPool1Count) {
        for (rendered = 0, i = 0; i < gActorPool1Capacity; i++) {
            actor = &gActorPool1[i];
            if (actor->isActive) {
                if (dActorTypeFlags[actor->type] & 1) {
                    sub_08033598(actor->type, (s16)actor->field_1C, actor->field_C);
                    if (sub_8033118(actor->type, (s16)actor->field_1C, actor->field_C)) {
                        sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 1);
                    } else {
                        sprite_set_anim(&actor->sprite, actor->type + 0x221, FALSE, 1);
                    }
                }
                if (actor->interactionKind == 7) {
                    if (!sub_8033CCC(actor)) {
                        if (actor->sprite.index == 0x451) {
                            sprite_set_anim(&actor->sprite, actor->type + 0x221, FALSE, 0);
                        }
                    } else {
                        sprite_set_anim(&actor->sprite, 0x451, FALSE, 0);
                    }
                }
                if (actor->field_3C) {
                    if (sprite_is_anim_done_once(&actor->sprite)) {
                        actor->field_3C = 0;
                        if (dActorTypeInfo[actor->type].field_0 == 0) {
                            dword_203E010[actor->field_1E] = 0;
                            actor->isActive = FALSE;
                            gActorPool1Count--;
                        } else {
                            actor->field_20 = dActorTypeInfo[actor->type].field_0;
                            sprite_set_anim(&actor->sprite, actor->type + 0x221, FALSE, 0);
                        }
                    }
                } else if (actor->field_20) {
                    if (--actor->field_20 == 0) {
                        actor->field_44 = 1;
                    }
                }
                if (actor->isActive && !actor->field_20 && !actor->field_44) {
                    size.x = actor->field_4C.x >> 1;
                    size.y = actor->field_4C.y;
                    size.z = actor->field_4C.z >> 1;
                    if (!sub_8003A74(&actor->field_94, &size, 0, gMapPixelSizeY)) {
                        actor->sprite.attr0Flag9 = 1;
                    } else {
                        actor->sprite.attr0Flag9 = 0;
                    }
                    actor->sprite.xPos = actor->xPosition - gCameraPixelX + (s8)byte_30043A4;
                    actor->sprite.yPos =
                        actor->yPosition - gCameraPixelY - actor->field_9 + byte_30043A5;
                    sprite_set_priority(&actor->sprite, actor->field_8);
                    sprite_render_ex(&actor->sprite, *renderList);
                    if (actor->field_38 == 0) {
                        (*renderList)->sortKey =
                            (actor->sprite.priority << 30) | ((u32)actor->field_94.z >> 4);
                    } else if (actor->field_38 == 2) {
                        (*renderList)->sortKey = (actor->sprite.priority << 30) | 0x0FFFF000;
                    } else {
                        (*renderList)->sortKey = (actor->sprite.priority << 30) | 0x3FFFF000;
                    }
                    (*renderList)++;
                    (*spriteCount)++;
                    rendered++;
                }
            }
            if (rendered == gActorPool1Count) {
                break;
            }
        }
    }
}

void sub_802A670(struct RenderListEntry** renderList, u32* spriteCount) {
    int i;
    int rendered;
    struct Actor* actor;
    int x;
    int y;
    struct Vec3fx size;

    if (gActorPool0Count) {
        for (rendered = 0, i = 0; i < gActorPool0Capacity; i++) {
            actor = &gActorPool0[i];
            if (actor->isActive) {
                if (actor->field_3C) {
                    if (sprite_is_anim_done_once(&actor->sprite)) {
                        actor->field_3C = 0;
                        if (dActorTypeInfo[actor->type].field_0 == 0) {
                            dword_203E010[actor->field_1E] = 0;
                            actor->isActive = FALSE;
                            gActorPool0Count--;
                        } else {
                            actor->field_20 = dActorTypeInfo[actor->type].field_0;
                            sprite_set_anim(&actor->sprite, actor->type + 0x221, FALSE, 0);
                        }
                    }
                } else if (actor->field_20) {
                    if (--actor->field_20 == 0) {
                        actor->field_44 = 1;
                    }
                }
                if (actor->isActive && !actor->field_20 && !actor->field_44) {
                    x = actor->xPosition - gCameraPixelX + (s8)byte_30043A4;
                    y = actor->yPosition - gCameraPixelY + (s8)byte_30043A5;

                    if (!sub_8003A7C(&actor->field_94, -actor->field_9, gMapPixelSizeY)
                        || actor->field_3C) {
                        actor->shadowSprite.attr0Flag9 = 1;
                    } else {
                        actor->shadowSprite.attr0Flag9 = 0;
                    }
                    actor->shadowSprite.xPos = x;
                    actor->shadowSprite.yPos = y;
                    sprite_set_priority(&actor->shadowSprite, actor->field_8);
                    sprite_render_ex(&actor->shadowSprite, *renderList);
                    actor->shadowSprite.objMode = 1;
                    if (actor->field_38 == 0) {
                        struct RenderListEntry* entry = *renderList;
                        u32 priority = actor->shadowSprite.priority << 30;
                        u32 depth = ((u32)actor->field_94.z >> 4) | 0x10000000;
                        entry->sortKey = priority | depth;
                    } else if (actor->field_38 == 2) {
                        (*renderList)->sortKey = (actor->shadowSprite.priority << 30) | 0x1FFFF000;
                    } else {
                        (*renderList)->sortKey = (actor->shadowSprite.priority << 30) | 0x3FFFF000;
                    }
                    (*renderList)++;
                    (*spriteCount)++;

                    size.x = actor->field_4C.x >> 1;
                    size.y = actor->field_4C.y;
                    size.z = actor->field_4C.z >> 1;
                    if (!sub_8003A74(&actor->field_94, &size, 0, gMapPixelSizeY)) {
                        actor->sprite.attr0Flag9 = 1;
                    } else {
                        actor->sprite.attr0Flag9 = 0;
                    }
                    actor->sprite.xPos = x;
                    actor->sprite.yPos = y - actor->field_9;
                    sprite_set_priority(&actor->sprite, actor->field_8);
                    sprite_render_ex(&actor->sprite, *renderList);
                    if (actor->field_38 == 0) {
                        (*renderList)->sortKey =
                            (actor->sprite.priority << 30) | ((u32)actor->field_94.z >> 4);
                    } else if (actor->field_38 == 2) {
                        (*renderList)->sortKey = (actor->sprite.priority << 30) | 0x0FFFF000;
                    } else {
                        (*renderList)->sortKey = (actor->sprite.priority << 30) | 0x3FFFF000;
                    }
                    (*renderList)++;
                    (*spriteCount)++;
                    rendered++;
                }
            }
            if (rendered == gActorPool0Count) {
                break;
            }
        }
    }
}

void sub_802A944(struct RenderListEntry** renderList, u32* spriteCount) {
    int i;
    struct Actor* actor;
    int x;
    int y;
    struct RenderListEntry* entry;
    u32 priority;
    u32 depth;

    for (i = 0; i < byte_203E00D; i++) {
        actor = &dword_203DFB4[i];
        if (!actor->isActive) {
            continue;
        }
        if (actor->field_3C) {
            if (sprite_is_anim_done_once(&actor->sprite)) {
                actor->field_3C = 0;
                if (actor->field_48) {
                    byte_203DFE4--;
                    actor->field_48 = 0;
                }
                if (dActorTypeInfo[actor->type].field_0 == 0
                    || is_obj_disabled(actor->type, (s16)actor->field_1C)) {
                    actor->isActive = FALSE;
                    byte_203DFD6--;
                } else {
                    actor->field_20 = dActorTypeInfo[actor->type].field_0;
                    sprite_set_anim(&actor->sprite, actor->type + 0x221, FALSE, 0);
                }
            }
        } else if (actor->field_20) {
            if (--actor->field_20 == 0) {
                switch (actor->type) {
                    case ACTOR_0BF:
                        sub_804888C(dword_203DFB8[actor->field_1E]);
                        break;
                    case ACTOR_0C7:
                    case ACTOR_0CF:
                    case ACTOR_0D0:
                    case ACTOR_0D3:
                        sub_804888C(dword_203DFB8[actor->field_1E]);
                        actor->sprite.attr0Flag9 = 1;
                        actor->shadowSprite.attr0Flag9 = 1;
                        actor->field_48 = 0;
                        byte_203DFE4--;
                        break;
                    default:
                        actor->field_44 = 1;
                        sub_804888C(dword_203DFB8[actor->field_1E]);
                        break;
                }
            }
        }
        if (actor->isActive && actor->field_48 && !actor->field_20 && !actor->field_44) {
            x = actor->xPosition - gCameraPixelX + (s8)byte_30043A4;
            y = actor->yPosition - gCameraPixelY + (s8)byte_30043A5;

            actor->shadowSprite.xPos = x;
            actor->shadowSprite.yPos = y;
            sprite_set_priority(&actor->shadowSprite, actor->field_8);
            sprite_render_ex(&actor->shadowSprite, *renderList);
            actor->shadowSprite.objMode = 1;
            entry = *renderList;
            priority = actor->shadowSprite.priority << 30;
            depth = ((u32)actor->field_94.z >> 4) | 0x10000000;
            entry->sortKey = priority | depth;
            (*renderList)++;
            (*spriteCount)++;

            y -= actor->field_9;
            actor->sprite.xPos = x;
            actor->sprite.yPos = y;
            sprite_set_priority(&actor->sprite, actor->field_8);
            sprite_render_ex(&actor->sprite, *renderList);
            (*renderList)->sortKey = (actor->sprite.priority << 30) | ((u32)actor->field_94.z >> 4);
            (*renderList)++;
            (*spriteCount)++;
        }
    }
}

void sub_802AC08(struct RenderListEntry** renderList, u32* spriteCount) {
    int i;
    int rendered;
    struct Actor* actor;
    int x;
    int y;
    struct RenderListEntry* entry;
    u32 priority;
    u32 depth;

    if (byte_203DFE5) {
        for (rendered = 0, i = 0; i < byte_203E00E; i++) {
            actor = &dword_203DFBC[i];
            if (actor->isActive && actor->field_48) {
                x = actor->xPosition - gCameraPixelX + (s8)byte_30043A4;
                y = actor->yPosition - gCameraPixelY + (s8)byte_30043A5;

                actor->shadowSprite.xPos = x;
                actor->shadowSprite.yPos = y;
                sprite_set_priority(&actor->shadowSprite, actor->field_8);
                sprite_render_ex(&actor->shadowSprite, *renderList);
                actor->shadowSprite.objMode = 1;
                if (actor->field_38 == 0) {
                    entry = *renderList;
                    priority = actor->shadowSprite.priority << 30;
                    depth = ((u32)actor->field_94.z >> 4) | 0x10000000;
                    entry->sortKey = priority | depth;
                } else {
                    (*renderList)->sortKey = (actor->shadowSprite.priority << 30) | 0x3FFFF000;
                }
                (*renderList)++;
                (*spriteCount)++;

                y -= actor->field_9;
                actor->sprite.xPos = x;
                actor->sprite.yPos = y;
                sprite_set_priority(&actor->sprite, actor->field_8);
                sprite_render_ex(&actor->sprite, *renderList);
                if (actor->field_38 == 0) {
                    (*renderList)->sortKey =
                        (actor->sprite.priority << 30) | ((u32)actor->field_94.z >> 4);
                } else {
                    (*renderList)->sortKey = (actor->sprite.priority << 30) | 0x2FFFF000;
                }
                (*renderList)++;
                (*spriteCount)++;
                rendered++;
            }
            if (rendered == byte_203DFE5) {
                break;
            }
        }
    }
}

void sub_802ADB0(struct RenderListEntry** renderList, u32* spriteCount) {
    sub_802C9F8(renderList, spriteCount);
    update_projectiles(renderList, spriteCount);
    sub_802A3B8(renderList, spriteCount);
    sub_802A670(renderList, spriteCount);
    sub_802A944(renderList, spriteCount);
    sub_802AC08(renderList, spriteCount);
}

bool32 handle_obj_interactions(struct Vec3fx* pos) {
    struct Vec3fx min;
    struct Vec3fx max;
    bool32 invulnerable;
    bool32 result;

    sub_0802BDA0(pos);
    if ((result = sub_0802BCC4(pos))) {
        return result;
    }
    sub_0802AE98(pos);
    if ((result = sub_0802B048(pos))) {
        return result;
    }

    invulnerable = FALSE;
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_HURTING || gPlayerIsTransparent
        || byte_200108E || gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IN_WONDERWING_MODE) {
        invulnerable = TRUE;
    }

    min.x = pos->x - 16;
    min.y = pos->y - 12;
    min.z = pos->z - 16;
    max.x = pos->x + 16;
    max.y = pos->y + 12;
    max.z = pos->z + 16;
    if ((result = sub_0802B9E4(pos, &min, &max, invulnerable))) {
        return result;
    }
    return sub_0802BB30(pos, &min, &max, invulnerable);
}

bool32 sub_0802AE98(struct Vec3fx* pos) {
    struct Vec3fx min;
    struct Vec3fx max;
    int i;
    int count;
    bool8 wasOnTop;
    struct Actor* actor;

    min.x = pos->x - (dword_3003300 >> 1);
    min.y = pos->y;
    min.z = pos->z - (dword_3003304 >> 1);
    max.x = pos->x + (dword_3003300 >> 1);
    max.y = pos->y + dword_3003308;
    max.z = pos->z + (dword_3003304 >> 1);

    count = 0;
    wasOnTop = byte_203DFE6;
    byte_203DFE6 = FALSE;
    byte_203DFE7 = FALSE;
    if (gGameStatus.health) {
        for (i = 0; i < byte_203E00E; i++) {
            actor = &dword_203DFBC[i];
            if (actor->isActive) {
                count++;
                if (actor->interactionKind == 6) {
                    if (CallARM_VecFX_BoxInBox(&min, &max, &actor->field_64, &actor->field_70)
                        && Abs(pos->y - actor->field_94.y) <= 0x40000) {
                        if (dword_203DFC4 != actor) {
                            dword_203DFC4 = actor;
                            actor->field_4A = actor->field_38;
                        }
                        dword_203DFC4->field_38 = 1;
                        gPlayerShadowSprite.objMode = 0;
                        byte_203DFE6 = TRUE;
                        return FALSE;
                    }
                    if (VecFX_PointInBox(pos, &actor->field_7C, &actor->field_88)) {
                        if (dword_203DFC4 != actor) {
                            dword_203DFC4 = actor;
                            actor->field_4A = actor->field_38;
                        }
                        dword_203DFC4->field_38 = 1;
                        gPlayerShadowSprite.objMode = 0;
                        byte_203DFE7 = TRUE;
                        return FALSE;
                    }
                } else {
                    ASSERT(0);
                }
            }
            if (count == byte_203E008) {
                break;
            }
        }
    }

    if (dword_203DFC4) {
        if (wasOnTop) {
            byte_203DFE8 = TRUE;
        }
        dword_203DFC4->field_38 = dword_203DFC4->field_4A;
        dword_203DFC4 = NULL;
        gPlayerShadowSprite.objMode = 1;
    }
    return FALSE;
}

int sub_0802B048(struct Vec3fx* pos) {
    int i;
    int count;
    struct Actor* actor;
    struct Vec3fx attackPos;
    struct Vec3fx min;
    struct Vec3fx max;
    bool32 hit;
    bool32 hitByProjectile;
    u32 vulnerable;

    for (count = 0, i = 0; i < byte_203E00D; i++) {
        actor = &dword_203DFB4[i];
        if (actor->isActive) {
            count++;
            attackPos.x = pos->x + gPlayerAttackState.offset.x;
            attackPos.y = pos->y + gPlayerAttackState.offset.y;
            attackPos.z = pos->z + gPlayerAttackState.offset.z;
            switch (actor->interactionKind) {
                case 1:
                    if (VecFX_PointInBox(pos, &actor->field_64, &actor->field_70) && !actor->field_20
                        && !actor->field_3C) {
                        actor->field_B = 0;
                        actor->sprite.direction = 0;
                        sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 1);
                        sprite_set_priority(&actor->sprite, actor->field_8);
                        actor->shadowSprite.attr0Flag9 = 1;
                        actor->field_3C = 1;
                        run_obj_behavior(actor->type, (s16)actor->field_1C);
                        return 0;
                    }
                    break;
                case 0:
                    if (!actor->field_20 && !actor->field_3C && !actor->field_44
                        && !is_obj_disabled(actor->type, (s16)actor->field_1C) && sub_8034310(actor)
                        && actor->field_48) {
                        hit = FALSE;
                        hitByProjectile = FALSE;
                        if (gPlayerAttackState.field_E) {
                            if (gPlayerAttackState.attackFlag == 1) {
                                min.x = attackPos.x - 0xA0000;
                                max.x = attackPos.x + 0xA0000;
                                min.y = attackPos.y;
                                max.y = attackPos.y;
                                min.z = attackPos.z - 0xA0000;
                                max.z = attackPos.z + 0xA0000;
                                hit = CallARM_VecFX_BoxInBox(&min, &max, &actor->field_64,
                                                             &actor->field_70);
                            } else {
                                hit = VecFX_PointInBox(&attackPos, &actor->field_64, &actor->field_70);
                            }
                        }
                        if (hit) {
                            if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_HURTING) {
                                return 0;
                            }
                        } else {
                            hitByProjectile = sub_802BF74(actor);
                        }
                        if ((hit || hitByProjectile) && actor->field_46) {
                            if (actor->type == ACTOR_0CD) {
                                vulnerable = dword_203F8B8 & gPlayerAttackState.attackFlag;
                            } else {
                                vulnerable = word_80A75A4[actor->type] & gPlayerAttackState.attackFlag;
                            }
                            if (vulnerable) {
                                if (gPlayerAttackState.attackFlag & 0x15E0) {
                                    sub_80499A8(dword_203DFB8[actor->field_1E],
                                                gPlayerAttackState.field_F,
                                                gPlayerAttackState.attackFlag == word_80CB964[8]);
                                    gPlayerAttackState.field_F = 0;
                                } else {
                                    sub_80499A8(dword_203DFB8[actor->field_1E],
                                                gPlayerAttackState.field_E,
                                                gPlayerAttackState.attackFlag == word_80CB964[8]);
                                    gPlayerAttackState.field_E = 0;
                                }
                                if (actor->field_46 <= 0) {
                                    if (actor->type == ACTOR_0CD) {
                                        run_obj_behavior(actor->type, actor->field_1E);
                                        break;
                                    }
                                    sub_802E024(sub_80490A4(dword_203DFB8[actor->field_1E]), actor);
                                    actor->field_B = 0;
                                    actor->sprite.direction = 0;
                                    sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim,
                                                    FALSE, 1);
                                    actor->field_3C = 1;
                                    PLAY_SFX(dword_80CF080[word_80CF140[actor->type]]);
                                    sprite_set_priority(&actor->sprite, actor->field_8);
                                    actor->shadowSprite.attr0Flag9 = 1;
                                    run_obj_behavior(actor->type, (s16)actor->field_1C);
                                    actor->field_46 = dActorTypeInfo[actor->type].field_2;
                                    break;
                                }
                                sub_800E9EC(&actor->sprite, 15, 0x1FFF);
                            }
                            if (!(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_PACK_WACK)
                                && !(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_SHOOTER_MODE)
                                && gTransformation != TRANSFORMATION_TANK
                                && gTransformation != TRANSFORMATION_OCTOPUS) {
                                sub_801990C();
                                return 2;
                            }
                        }
                    }
                    break;
                case 2:
                    ASSERT(0);
                    break;
                case 3:
                    ASSERT(0);
                    break;
                case 4:
                    ASSERT(0);
                    break;
                default:
                    ASSERT(0);
                    break;
            }
        }
        if (count == byte_203DFD6) {
            break;
        }
    }
    return 0;
}

bool32 talk_with_npc(struct Vec3fx* pos, struct Actor* actor) {
    byte_203DFDA = FALSE;
    byte_203DFD9 = VecFX_PointInBox(pos, &actor->field_7C, &actor->field_88);
    if (!byte_203DFD9) {
        byte_203DFDA = VecFX_PointInBox(pos, &actor->field_64, &actor->field_70);
    }
    if (byte_203DFD9 || byte_203DFDA) {
        if (!gInInteractionArea) {
            if (actor->field_34 && dword_203DFE0 != actor) {
                if (start_npc_dialogue(1)) {
                    gInInteractionArea = TRUE;
                    dword_203DFDC = actor;
                    dword_203DFE0 = actor;
                    return TRUE;
                }
                if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_BIT11) {
                    sub_80181B8(&gPlayerPos.y);
                }
            } else {
                gInInteractionArea = TRUE;
                dword_203DFDC = actor;
                return TRUE;
            }
        }
    } else if (gInInteractionArea && dword_203DFDC == actor) {
        gInInteractionArea = FALSE;
        dword_203DFE0 = NULL;
    }
    return FALSE;
}

bool32 pick_up_collectable(struct Vec3fx* pos, struct Actor* actor, struct Vec3fx* min,
                           struct Vec3fx* max) {
    if (VecFX_PointInBox(pos, &actor->field_64, &actor->field_70)) {
        sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 1);
        actor->field_8 = sub_800C50C();
        sprite_set_priority(&actor->sprite, actor->field_8);
        actor->shadowSprite.attr0Flag9 = 1;
        actor->field_3C = 1;
        run_obj_behavior(actor->type, (s16)actor->field_1C);
        return TRUE;
    }
    return FALSE;
}

bool32 touch_lava_jetty_platform(struct Vec3fx* pos, struct Actor* actor, struct Vec3fx* min,
                                 struct Vec3fx* max) {
    if (CallARM_VecFX_BoxInBox(min, max, &actor->field_64, &actor->field_70)) {
        sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 1);
        sprite_set_priority(&actor->sprite, actor->field_8);
        actor->shadowSprite.attr0Flag9 = 1;
        actor->field_3C = 1;
        sub_8034460(actor->type, (s16)actor->field_1C, 3, &actor->sprite);
        if (!byte_203E136) {
            hud_init_element_value(HUD_ELEMENT_LAVA_JETTY_PLATFORMS, sub_8039650());
            hud_set_value(HUD_ELEMENT_LAVA_JETTY_PLATFORMS, sub_8039650());
            hud_keep_element_shown(HUD_ELEMENT_LAVA_JETTY_PLATFORMS);
            byte_203E136 = TRUE;
        }
        return TRUE;
    }
    return FALSE;
}

int handle_static_enemy(struct Actor* actor, struct Vec3fx* attackPos, bool32 invulnerable) {
    struct Vec3fx min;
    struct Vec3fx max;
    bool32 hit;
    bool32 hitByProjectile;

    hit = FALSE;
    hitByProjectile = FALSE;
    if (gPlayerAttackState.field_E) {
        if (gPlayerAttackState.attackFlag == 1) {
            min.x = attackPos->x - 0xA0000;
            max.x = attackPos->x + 0xA0000;
            min.y = attackPos->y;
            max.y = attackPos->y;
            min.z = attackPos->z - 0xA0000;
            max.z = attackPos->z + 0xA0000;
            hit = CallARM_VecFX_BoxInBox(&min, &max, &actor->field_64, &actor->field_70);
        } else {
            hit = VecFX_PointInBox(attackPos, &actor->field_64, &actor->field_70);
        }
    }
    if (hit) {
        if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_HURTING) {
            return 0;
        }
    } else if (!is_obj_disabled(actor->type, (s16)actor->field_1C) && sub_8034310(actor)) {
        hitByProjectile = sub_802BF74(actor);
    }

    if (hit || hitByProjectile) {
        if (actor->field_46 && (word_80A75A4[actor->type] & gPlayerAttackState.attackFlag)) {
            if (gPlayerAttackState.attackFlag & 0x15E0) {
                actor->field_46 -= gPlayerAttackState.field_F;
                gPlayerAttackState.field_F = 0;
            } else {
                actor->field_46 -= gPlayerAttackState.field_E;
                gPlayerAttackState.field_E = 0;
            }
            if (actor->field_46 <= 0 && !is_obj_disabled(actor->type, (s16)actor->field_1C)) {
                if (!(dActorTypeFlags[actor->type] & 1)) {
                    sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 1);
                    actor->field_3C = 1;
                    sprite_set_priority(&actor->sprite, actor->field_8);
                    actor->shadowSprite.attr0Flag9 = 1;
                    actor->field_46 = dActorTypeInfo[actor->type].field_2;
                    switch (actor->type) {
                        case ACTOR_WHIPLASH:
                        case ACTOR_LIVEWIRE_DOWN:
                        case ACTOR_LIVEWIRE_LEFT:
                        case ACTOR_LIVEWIRE_RIGHT:
                        case ACTOR_STINGLASH:
                            run_obj_behavior(actor->type, (s16)actor->field_1C);
                            sub_802E024(1, actor);
                            break;
                        case ACTOR_CANDLE_BAD:
                            run_obj_behavior(ACTOR_CANDLE_BAD, (s16)actor->field_1C);
                            if (!invulnerable) {
                                hurt_player(1, -1, 2);
                                return 1;
                            }
                            break;
                        case ACTOR_MANHOLE_COVER:
                        case ACTOR_CONCRETE_COVER:
                            sub_8034460(actor->type, (s16)actor->field_1C, 3, &actor->sprite);
                            break;
                        case ACTOR_BEEHIVE:
                            run_obj_behavior(ACTOR_BEEHIVE, (s16)actor->field_1C);
                            sub_0802C3A4(byte_80A7762[random_range(0, 0x27)], actor, -1, 0);
                            break;
                        default:
                            run_obj_behavior(actor->type, (s16)actor->field_1C);
                            break;
                    }
                } else {
                    sub_0803381C(actor->type, (s16)actor->field_1C, actor->field_C);
                    actor->field_46 = actor->field_18;
                    if (!sub_8033118(actor->type, (s16)actor->field_1C, actor->field_C)) {
                        sprite_set_anim(&actor->sprite, actor->type + 0x221, FALSE, 0);
                    } else {
                        sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 0);
                    }
                    return 1;
                }
            }
        }
    } else if (actor->field_34 && !(dActorTypeFlags[actor->type] & 1)
               && CallARM_VecFX_BoxInBox(&actor->field_64, &actor->field_70, &stru_30032E8,
                                         &stru_30032F4)
               && !invulnerable && !gPlayerAttackState.field_E && gGameStatus.health) {
        hurt_player(byte_80CC6B0[actor->type], -1, 2);
        if (actor->type == ACTOR_WHIRLWIND && gGameStatus.goldenFeathers) {
            if (--gGameStatus.goldenFeathers < 0) {
                gGameStatus.goldenFeathers = 0;
            }
            hud_set_value(HUD_ELEMENT_GOLDEN_FEATHERS, gGameStatus.goldenFeathers);
            sub_0802C3A4(2, actor, -1, 0);
        }
        return 1;
    }
    return -1;
}

void sub_802B980(struct Vec3fx* pos, struct Actor* actor) {
    if (!actor->field_10) {
        if (VecFX_PointInBox(pos, &actor->field_7C, &actor->field_88)) {
            sub_8033FA8(actor->type, actor->field_C, TRUE, &actor->field_49);
        } else {
            sub_8033FA8(actor->type, actor->field_C, FALSE, &actor->field_49);
        }
    } else if (VecFX_PointInBox(pos, &actor->field_64, &actor->field_70)) {
        sub_8033FA8(actor->type, actor->field_C, TRUE, &actor->field_49);
    } else {
        sub_8033FA8(actor->type, actor->field_C, FALSE, &actor->field_49);
    }
}

int sub_0802B9E4(struct Vec3fx* pos, struct Vec3fx* min, struct Vec3fx* max, bool32 invulnerable) {
    struct Vec3fx attackPos;
    int count;
    int i;
    struct Actor* actor;
    int result;

    attackPos.x = pos->x + gPlayerAttackState.offset.x;
    attackPos.y = pos->y + gPlayerAttackState.offset.y;
    attackPos.z = pos->z + gPlayerAttackState.offset.z;
    for (count = 0, i = 0; i < gActorPool0Capacity; i++) {
        actor = &gActorPool0[i];
        if (actor->isActive && !actor->field_20 && !actor->field_3C && !actor->field_44) {
            count++;
            switch (actor->interactionKind) {
                case 2:
                    if (talk_with_npc(pos, actor)) {
                        return 0;
                    }
                    break;
                case 4:
                    if (gTransformation != TRANSFORMATION_OCTOPUS
                        && CallARM_VecFX_BoxInBox(&actor->field_64, &actor->field_70, &stru_30032E8,
                                                  &stru_30032F4)) {
                        run_obj_behavior(actor->type, (s16)actor->field_1C);
                        return 0;
                    }
                    break;
                case 1:
                    if (pick_up_collectable(pos, actor, min, max)) {
                        return 0;
                    }
                    break;
                case 0:
                    result = handle_static_enemy(actor, &attackPos, invulnerable);
                    if (result >= 0) {
                        return result;
                    }
                    break;
                case 3:
                    ASSERT(0);
                    break;
                case 5:
                    ASSERT(0);
                    break;
                case 7:
                    ASSERT(0);
                    break;
                case 6:
                default:
                    ASSERT(0);
                    break;
            }
        }
        if (count == gActorPool0Count) {
            break;
        }
    }
    return 0;
}

int sub_0802BB30(struct Vec3fx* pos, struct Vec3fx* min, struct Vec3fx* max, bool32 invulnerable) {
    struct Vec3fx attackPos;
    struct Vec3fx platformMin;
    struct Vec3fx platformMax;
    int count;
    int i;
    struct Actor* actor;
    int result;

    attackPos.x = pos->x + gPlayerAttackState.offset.x;
    attackPos.y = pos->y + gPlayerAttackState.offset.y;
    attackPos.z = pos->z + gPlayerAttackState.offset.z;
    platformMin.x = pos->x - 0x40000;
    platformMin.y = pos->y - 0x40000;
    platformMin.z = pos->z - 0x40000;
    platformMax.x = pos->x + 0x40000;
    platformMax.y = pos->y + 0x40000;
    platformMax.z = pos->z + 0x40000;
    if (!byte_203E018) {
        byte_203DFC8 = FALSE;
    }
    for (count = 0, i = 0; i < gActorPool1Capacity; i++) {
        actor = &gActorPool1[i];
        if (actor->isActive && !actor->field_20 && !actor->field_3C && !actor->field_44) {
            count++;
            switch (actor->interactionKind) {
                case 7:
                    sub_802B980(pos, actor);
                    break;
                case 2:
                    if (talk_with_npc(pos, actor)) {
                        return 0;
                    }
                    break;
                case 3:
                    if (!byte_203E018 && VecFX_PointInBox(pos, &actor->field_64, &actor->field_70)) {
                        byte_203DFC8 = TRUE;
                        word_203DFCA = actor->type;
                        return 0;
                    }
                    break;
                case 1:
                    if (pick_up_collectable(pos, actor, min, max)) {
                        return 0;
                    }
                    break;
                case 5:
                    // The original passes max instead of platformMax, which is never used.
                    if (touch_lava_jetty_platform(pos, actor, &platformMin, max)) {
                        return 0;
                    }
                    break;
                case 0:
                    result = handle_static_enemy(actor, &attackPos, invulnerable);
                    if (result >= 0) {
                        return result;
                    }
                    break;
                case 4:
                    ASSERT(0);
                    break;
                case 6:
                default:
                    ASSERT(0);
                    break;
            }
        }
        if (count == gActorPool1Count) {
            break;
        }
    }
    return 0;
}

int sub_0802BCC4(struct Vec3fx* pos) {
    int count;
    int i;
    struct Actor* actor;

    byte_203DFC8 = FALSE;
    byte_203E018 = FALSE;
    for (count = 0, i = 0; i < gActorPool2Capacity; i++) {
        actor = &gActorPool2[i];
        if (actor->isActive) {
            count++;
            switch (actor->interactionKind) {
                case 0:
                    break;
                case 2:
                    if (talk_with_npc(pos, actor)) {
                        return 0;
                    }
                    break;
                case 3:
                    if (VecFX_PointInBox(pos, &actor->field_64, &actor->field_70)) {
                        byte_203DFC8 = TRUE;
                        word_203DFCA = actor->type;
                        byte_203E018 = TRUE;
                        return 0;
                    }
                    break;
                case 1:
                    ASSERT(0);
                    break;
                default:
                    ASSERT(0);
                    break;
            }
        }
        if (count == gActorPool2Count) {
            break;
        }
    }
    return 0;
}

void sub_0802BDA0(struct Vec3fx* pos) {
    int count;
    int i;
    struct Actor* actor;

    if (byte_203DFD3) {
        for (count = 0, i = 0; i < byte_203E00C; i++) {
            actor = &dword_203E000[i].actor;
            if (actor->isActive) {
                count++;
                if (!actor->field_3C) {
                    if (actor->interactionKind == 1) {
                        if (VecFX_PointInBox(pos, &actor->field_64, &actor->field_70)) {
                            sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 1);
                            actor->shadowSprite.attr0Flag9 = 1;
                            actor->field_3C = 1;
                            sub_8003864(dword_203E000[i].field_E4);
                            run_obj_behavior(actor->type, (s16)actor->field_1C);
                            return;
                        }
                    } else {
                        ASSERT(0);
                    }
                }
            }
            if (count == byte_203DFD3) {
                break;
            }
        }
    }
}

bool32 sub_802BE84(struct Vec3fx* pos) {
    int count;
    int i;
    struct Actor* actor;

    if (!byte_203DFD3) {
        return FALSE;
    }
    for (count = 0, i = 0; i < byte_203E00C; i++) {
        actor = &dword_203E000[i].actor;
        if (actor->isActive) {
            count++;
            if (!actor->field_3C && actor->interactionKind == 1
                && (u16)(actor->type - ACTOR_009) <= ACTOR_00A - ACTOR_009
                && VecFX_PointInBox(pos, &actor->field_64, &actor->field_70)) {
                sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 1);
                sprite_set_priority(&actor->sprite, actor->field_8);
                actor->shadowSprite.attr0Flag9 = 1;
                actor->field_3C = 1;
                sub_8003864(dword_203E000[i].field_E4);
                return TRUE;
            }
        }
        if (count == byte_203DFD3) {
            break;
        }
    }
    return FALSE;
}

bool32 sub_802BF74(struct Actor* actor) {
    int count;
    int i;
    struct Projectile* projectile;
    struct Vec3fx* min;
    struct Vec3fx* max;

    if (!gCurrentProjectileCount) {
        return FALSE;
    }
    if (gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_IS_DYING) {
        return FALSE;
    }
    min = &actor->field_64;
    max = &actor->field_70;
    for (count = 0, i = 0; i < gMaxProjectileCount; i++) {
        projectile = &gProjectiles[i];
        if (projectile->actor.isActive && (dActorTypeFlags[projectile->actor.type] & 0x20)) {
            if (!projectile->actor.field_3C) {
                if (VecFX_PointInBox(&projectile->actor.field_94, min, max)) {
                    gPlayerAttackState.field_F = gProjectiles[i].field_104;
                    gPlayerAttackState.attackFlag = gProjectiles[i].field_FC;
                    if (!(dActorTypeFlags[actor->type] & 2)) {
                        sprite_set_anim(&projectile->actor.sprite,
                                        dActorTypeInfo[projectile->actor.type].anim, FALSE, 1);
                        PLAY_SFX(gProjectiles[i].field_102);
                    } else {
                        sprite_set_anim(&projectile->actor.sprite, 0x451, FALSE, 1);
                        if (word_80A75A4[actor->type] & gPlayerAttackState.attackFlag) {
                            PLAY_SFX(190);
                        } else {
                            PLAY_SFX(198);
                        }
                    }
                    projectile->actor.field_3C = 1;
                    sub_8003884(gProjectiles[i].field_FE, 0, dword_80CC290[gPlayerSprite.direction], 0);
                    gProjectiles[i].field_105 = 1;
                    gProjectiles[i].field_106 = 0;
                    return TRUE;
                }
            } else {
                count++;
            }
            if (count == gCurrentProjectileCount) {
                break;
            }
        }
    }
    return FALSE;
}

bool32 sub_802C1DC(int type, u8* direction) {
    struct Vec3fx min;
    struct Vec3fx max;
    struct Vec3fx target;
    int count;
    int i;
    struct Projectile* projectile;

    if (!gCurrentProjectileCount) {
        return FALSE;
    }
    min.x = gPlayerPos.x - (dword_3003300 >> 1);
    min.y = gPlayerPos.y;
    min.z = gPlayerPos.z - (dword_3003304 >> 1);
    max.x = gPlayerPos.x + (dword_3003300 >> 1);
    max.y = gPlayerPos.y + dword_3003308;
    max.z = gPlayerPos.z + (dword_3003304 >> 1);
    for (count = 0, i = 0; i < gMaxProjectileCount; i++) {
        projectile = &gProjectiles[i];
        if (projectile->actor.isActive && projectile->actor.type == type) {
            if (!projectile->actor.field_3C) {
                if (VecFX_PointInBox(&projectile->actor.field_94, &min, &max)) {
                    CallARM_VecFX_Mul16_2(&gProjectiles[i].field_D8, 0x50000, &target);
                    VecFX_Add(&gPlayerPos, &target, &target);
                    *direction = sub_8003A6C(gPlayerPos.x, gPlayerPos.z, target.x, target.z);
                    sprite_set_anim(&projectile->actor.sprite,
                                    dActorTypeInfo[projectile->actor.type].anim, FALSE, 1);
                    projectile->actor.field_3C = 1;
                    sub_8003884(gProjectiles[i].field_FE, 0, dword_80CC290[gPlayerSprite.direction], 0);
                    gProjectiles[i].field_105 = 1;
                    return TRUE;
                }
            } else {
                count++;
            }
            if (count == gCurrentProjectileCount) {
                break;
            }
        }
    }
    return FALSE;
}
