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
#include "timer.h"
#include "actor_defs.h"

/**
 * Finds a free slot for a streamed-in actor. Types 0x97-0xA8 use pool 2,
 * placements with field_15 set use pool 1 and everything else uses pool 0.
 * The caller marks the slot active.
 */
struct Actor* actor_alloc(struct MapActor* mapActor) {
    int i;

    if ((u16)(mapActor->type - ACTOR_JINJO_ORACLE) <= ACTOR_0A8 - ACTOR_JINJO_ORACLE) {
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
    sub_8009D7C(gJinjoSoundsEnabled);
    sub_8009D7C(gJinjoSoundMinDelay);
    sub_8009D7C(gJinjoSoundMaxDelay);
    sub_8009D7C(gJinjoSoundTimer);
    sub_8009D7C(gJinjoSoundHandle);
    sub_8009D7C(byte_203DFC8);
    sub_8009D7C(word_203DFCA);
}

void sub_8027F14(void) {
    heap_retag(0, 0x12, 6);
    word_203DFCA = sub_8009DAC();
    byte_203DFC8 = sub_8009DAC();
    gJinjoSoundHandle = sub_8009DAC();
    gJinjoSoundTimer = sub_8009DAC();
    gJinjoSoundMaxDelay = sub_8009DAC();
    gJinjoSoundMinDelay = sub_8009DAC();
    gJinjoSoundsEnabled = sub_8009DAC();
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

            if ((u16)(actor->type - ACTOR_JINJO_ORACLE) <= ACTOR_0A8 - ACTOR_JINJO_ORACLE) {
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

                    case ACTOR_BOZZEYE:
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

            if ((u16)(actor->type - ACTOR_JINJO_ORACLE) <= ACTOR_0A8 - ACTOR_JINJO_ORACLE) {
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

                    case ACTOR_BOZZEYE:
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
    if (result && !gJinjoSoundsEnabled) {
        gJinjoSoundMinDelay = 120;
        gJinjoSoundMaxDelay = 250;
    }
    gJinjoSoundsEnabled = result;
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
                && (u16)(actor->type - ACTOR_GOLDEN_FEATHER) <= ACTOR_BLUE_EGG - ACTOR_GOLDEN_FEATHER
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

struct MapActor* sub_0802C350(int group, int coord) {
    struct MapActor* mapActor;
    int i;

    mapActor = gEntitySection->groups[group].actors;
    for (i = 0; i < gEntitySection->groups[group].count; mapActor++, i++) {
        if (mapActor->field_0 == coord && (dActorTypeFlags[mapActor->type] & 8)) {
            return mapActor;
        }
    }
    ASSERT(0);
    return NULL;
}

void sub_0802C3A4(int drop, struct Actor* source, int direction, int mode) {
    int i;
    struct Vec3fx* velocity;
    struct struc_203E000* item;
    struct Actor* actor;
    fx32 halfX;
    fx32 halfZ;
    int x;
    int y;
    struct Vec3fx size;
    struct Vec3fx* pos;

    if (byte_203DFD3 == byte_203E00C) {
        ASSERT(0);
        return;
    }
    for (i = 0; i < byte_203E00C; i++) {
        if (!dword_203E000[i].actor.isActive) {
            byte_203DFD3++;
            break;
        }
    }
    if (i == byte_203E00C) {
        ASSERT(0);
        return;
    }

    item = &dword_203E000[i];
    actor = &item->actor;
    pos = &actor->field_94;
    velocity = &item->field_D8;
    actor->isActive = TRUE;
    actor->field_6 = source->field_6;
    actor->field_8 = source->field_8;
    actor->xPosition = source->xPosition;
    actor->yPosition = source->yPosition;
    actor->field_9 = source->field_9;
    pos->x = source->field_94.x;
    pos->y = source->field_94.y;
    pos->z = source->field_94.z;

    switch (drop) {
        case 1:
            actor->type = ACTOR_HONEYCOMB;
            actor->field_A = 0;
            actor->interactionKind = 1;
            actor->field_2F = 0;
            actor->field_30 = 1;
            actor->field_1C = -1;
            actor->field_2C = 450;
            break;

        case 2:
            actor->type = ACTOR_GOLDEN_FEATHER;
            actor->field_A = 0;
            actor->interactionKind = 1;
            actor->field_2F = 0;
            actor->field_30 = 1;
            actor->field_1C = -1;
            actor->field_2C = 450;
            break;

        case 4:
            actor->type = ACTOR_BLUE_EGG;
            actor->field_A = 0;
            actor->interactionKind = 1;
            actor->field_2F = 0;
            actor->field_30 = 1;
            actor->field_1C = -1;
            actor->field_2C = 450;
            break;

        case 8:
            actor->type = ACTOR_DOUBLE_HONEYCOMB;
            actor->field_A = 0;
            actor->interactionKind = 1;
            actor->field_2F = 0;
            actor->field_30 = 1;
            actor->field_1C = -1;
            actor->field_2C = 450;
            break;

        case 16:
            actor->type = ACTOR_SKILL_STOP_HONEYCOMB;
            actor->field_A = 0;
            actor->interactionKind = 1;
            actor->field_2F = 0;
            actor->field_30 = 1;
            actor->field_1C = -1;
            actor->field_2C = 450;
            break;

        case 32:
            actor->type = ACTOR_RANDOM_STOP_HONEYCOMB;
            actor->field_A = 0;
            actor->interactionKind = 1;
            actor->field_2F = 0;
            actor->field_30 = 1;
            actor->field_1C = -1;
            actor->field_2C = 450;
            break;

        default:
            ASSERT(0);
            break;
    }

    actor->field_24 = 0;
    actor->field_3C = 0;
    actor->field_B = 0;
    actor->field_28 = 0;
    actor->field_46 = 0;
    actor->field_1E = 0;
    actor->field_18 = 0;
    actor->field_14 = 0;
    actor->field_20 = 0;
    actor->field_C = 0;
    actor->field_34 = 0;
    actor->field_10 = 0;
    actor->field_38 = 0;

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

    if (direction < 0) {
        i = random_range(0, 7);
        velocity->x = stru_80CC78C[i].x;
        velocity->y = 0x10000;
        velocity->z = stru_80CC78C[i].z;
    } else {
        velocity->x = stru_80CC78C[direction].x;
        velocity->y = 0x10000;
        velocity->z = stru_80CC78C[direction].z;
    }
    item->field_E6 = 1;
    item->field_E4 = sub_8003854(0x4B0000);
    sub_800389C(item->field_E4, dword_80CC844[gRoomHeader.unknown1]);
    sub_8003894(item->field_E4, dword_80CC818[0]);
    switch (mode) {
        case 0:
            sub_8003884(item->field_E4, 0x18000, dword_80CC290[i], 0);
            CallARM_store_jump_and_other_value(item->field_E4, 0x40000, 0);
            break;

        case 2:
            sub_8003884(item->field_E4, 0x18000, dword_80CC290[i], 0);
            break;

        case 1:
            CallARM_store_jump_and_other_value(item->field_E4, 0x40000, 0);
            break;
    }

    x = actor->xPosition - gCameraPixelX;
    y = actor->yPosition - gCameraPixelY;
    SetSprite(&actor->shadowSprite, SPRITE_SHADOW, FALSE, 0, 1, x, y, 2);
    sprite_set_priority(&actor->shadowSprite, actor->field_8);
    sprite_set_locked_frame(&actor->shadowSprite,
                            actor->field_9 < dword_80CEBC4 ? byte_80CEB84[actor->field_9] : 5);
    sprite_lock_anim(&actor->shadowSprite);
    if (!sub_8003A7C(&actor->field_94, -actor->field_9, gMapPixelSizeY)) {
        actor->shadowSprite.attr0Flag9 = 1;
    }
    y -= actor->field_9;
    SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
    sprite_set_priority(&actor->sprite, actor->field_8);
    size.x = actor->field_4C.x >> 1;
    size.y = actor->field_4C.y;
    size.z = actor->field_4C.z >> 1;
    if (!sub_8003A74(&actor->field_94, &size, 0, gMapPixelSizeY)) {
        actor->sprite.attr0Flag9 = 1;
    }
}

void sub_802C968(void) {
    int count;
    int i;
    struct Actor* actor;

    if (byte_203DFD3) {
        for (count = 0, i = 0; i < byte_203E00C; i++) {
            actor = &dword_203E000[i].actor;
            if (actor->isActive) {
                if (!actor->field_3C) {
                    if (actor->field_2C == 0) {
                        actor->isActive = FALSE;
                        sub_8003864(dword_203E000[i].field_E4);
                        byte_203DFD3--;
                    } else {
                        actor->field_2C--;
                        count++;
                    }
                } else {
                    count++;
                }
                if (count == byte_203DFD3) {
                    break;
                }
            }
        }
    }
}

void sub_802C9F8(struct RenderListEntry** renderList, u32* spriteCount) {
    struct Vec3fx newPos;
    struct Vec3fx newVelocity;
    struct Vec3fx size;
    struct struc_44 wall;
    struct struc_44 floor;
    fx32 dx;
    fx32 dy;
    fx32 dz;
    int i;
    int count;
    struct struc_203E000* item;
    struct Actor* actor;
    struct Vec3fx* pos;
    struct Vec3fx* velocity;
    bool32 moved;
    fx32 height;
    int x;
    int y;
    struct RenderListEntry* entry;
    u32 priority;
    u32 depth;

    if (!byte_203DFD3) {
        return;
    }
    for (count = 0, i = 0; i < byte_203E00C; i++) {
        item = &dword_203E000[i];
        actor = &item->actor;
        if (actor->isActive) {
            if (actor->field_3C) {
                if (sprite_is_anim_done_once(&actor->sprite)) {
                    actor->field_3C = 0;
                    actor->isActive = FALSE;
                    byte_203DFD3--;
                }
            } else if (item->field_E6) {
                pos = &actor->field_94;
                velocity = &item->field_D8;
                sub_80038A4(item->field_E4);
                sub_80038C4(item->field_E4, &dx, &dy, &dz);
                newPos.x = pos->x + dx;
                newPos.y = pos->y + dy;
                if (newPos.y < 0) {
                    newPos.y = 0;
                }
                newPos.z = pos->z + dz;
                newVelocity.x = velocity->x;
                newVelocity.y = velocity->y;
                newVelocity.z = velocity->z;
                if (newVelocity.y > 0 && sub_80038BC(item->field_E4)) {
                    newVelocity.y = -newVelocity.y;
                }
                sub_08007FA0(&newPos, &newVelocity, &wall);
                sub_08009208(&newPos, &floor);
                if (wall.isColliding) {
                    if (byte_3002A4C) {
                        sub_8003884(item->field_E4, 0, dword_80CC290[actor->sprite.direction], 0);
                        moved = FALSE;
                        actor->field_8 = floor.playerSpritePriority;
                    } else {
                        sub_800387C(item->field_E4);
                        height = CallARM_FX_Mul16(wall.field_1C, newPos.x)
                                 + CallARM_FX_Mul16(wall.field_20, newPos.z) + wall.staticFloorHeight;
                        if (height >= 0) {
                            newPos.y = height;
                        }
                        moved = TRUE;
                        actor->field_8 = wall.playerSpritePriority;
                        item->field_E6 = FALSE;
                        if (dActorTypeFlags[actor->type] & 0x80) {
                            actor->field_38 = 1;
                        }
                    }
                } else {
                    moved = TRUE;
                    actor->field_8 = floor.playerSpritePriority;
                    if (!floor.isColliding) {
                        sub_8003884(item->field_E4, 0, dword_80CC290[actor->sprite.direction], 0);
                        sub_800387C(item->field_E4);
                        moved = FALSE;
                        item->field_E6 = FALSE;
                        actor->isActive = FALSE;
                        byte_203DFD3--;
                        sub_8003864(item->field_E4);
                    }
                }
                if (moved) {
                    pos->x = newPos.x;
                    pos->y = newPos.y;
                    pos->z = newPos.z;
                    velocity->x = newVelocity.x;
                    velocity->y = newVelocity.y;
                    velocity->z = newVelocity.z;
                    if (floor.isColliding) {
                        actor->field_9 = (pos->y - (fx32)floor.floorHeight) >> 16;
                    } else {
                        actor->field_9 = 0;
                    }
                    actor->xPosition = pos->x >> 16;
                    actor->yPosition = gMapPixelSizeY + actor->field_9 - ((pos->z + pos->y) >> 16);
                    actor->field_6 = (pos->y >> 16) - actor->field_9;
                    actor->field_64.x = actor->field_94.x - (actor->field_4C.x >> 1)
                                        + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_64.y =
                        actor->field_94.y + (dActorHitboxes[actor->type].offset[1] << 16);
                    actor->field_64.z = actor->field_94.z - (actor->field_4C.z >> 1)
                                        + (dActorHitboxes[actor->type].offset[2] << 16);
                    actor->field_70.x = actor->field_94.x + (actor->field_4C.x >> 1)
                                        + (dActorHitboxes[actor->type].offset[0] << 16);
                    actor->field_70.y = actor->field_94.y + actor->field_4C.y
                                        + (dActorHitboxes[actor->type].offset[1] << 16);
                    actor->field_70.z = actor->field_94.z + (actor->field_4C.z >> 1)
                                        + (dActorHitboxes[actor->type].offset[2] << 16);
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
                }
            }
            if (actor->isActive) {
                x = actor->xPosition - gCameraPixelX;
                y = actor->yPosition - gCameraPixelY;
                actor->shadowSprite.xPos = x;
                actor->shadowSprite.yPos = y;
                if (!sub_8003A7C(&actor->field_94, -actor->field_9, gMapPixelSizeY)
                    || actor->field_3C) {
                    actor->shadowSprite.attr0Flag9 = 1;
                } else {
                    actor->shadowSprite.attr0Flag9 = 0;
                }
                y -= actor->field_9;
                actor->sprite.xPos = x;
                actor->sprite.yPos = y;
                size.x = actor->field_4C.x >> 1;
                size.y = actor->field_4C.y;
                size.z = actor->field_4C.z >> 1;
                if (!sub_8003A74(&actor->field_94, &size, 0, gMapPixelSizeY)) {
                    actor->sprite.attr0Flag9 = 1;
                } else {
                    actor->sprite.attr0Flag9 = 0;
                }
                sprite_render_ex(&actor->sprite, *renderList);
                sprite_set_priority(&actor->sprite, actor->field_8);
                if (actor->field_38 == 0) {
                    (*renderList)->sortKey =
                        (actor->sprite.priority << 30) | ((u32)actor->field_94.z >> 4);
                } else {
                    (*renderList)->sortKey = (actor->sprite.priority << 30) | 0x2FFFF000;
                }
                (*renderList)++;
                (*spriteCount)++;
                sprite_set_locked_frame(&actor->shadowSprite, actor->field_9 < dword_80CEBC4
                                                                  ? byte_80CEB84[actor->field_9]
                                                                  : 5);
                sprite_render_ex(&actor->shadowSprite, *renderList);
                actor->shadowSprite.objMode = 1;
                sprite_set_priority(&actor->shadowSprite, actor->field_8);
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
                count++;
            }
        }
        if (count == byte_203DFD3) {
            break;
        }
    }
}

bool32 sub_802CFBC(struct Vec3fx* pos, struct Vec3fx** nearest) {
    int count;
    fx32 best;
    bool32 found;
    int i;
    struct Actor* actor;
    struct Vec3fx* itemPos;
    fx32 dx;
    fx32 dz;
    fx32 distSq;

    if (!byte_203DFD3) {
        return FALSE;
    }
    count = 0;
    best = 0x7FFF0000;
    found = FALSE;
    for (i = 0; i < byte_203E00C; i++) {
        actor = &dword_203E000[i].actor;
        itemPos = &actor->field_94;
        if (actor->isActive) {
            count++;
            if (actor->interactionKind == 1
                && (u16)(actor->type - ACTOR_GOLDEN_FEATHER) <= ACTOR_BLUE_EGG - ACTOR_GOLDEN_FEATHER
                && itemPos->y == pos->y) {
                dx = pos->x - itemPos->x;
                dz = pos->z - itemPos->z;
                distSq = CallARM_FX_Mul16(dx, dx) + CallARM_FX_Mul16(0, 0) + CallARM_FX_Mul16(dz, dz);
                if (distSq < best) {
                    best = distSq;
                    *nearest = itemPos;
                    found = TRUE;
                }
            }
        }
        if (count == byte_203DFD3) {
            break;
        }
    }
    return found;
}

void spawn_player_projectile(int kind, struct Vec3fx* pos, u32 priority) {
    int i;
    struct Actor* actor;
    struct Projectile* projectile;
    struct Vec3fx* actorPos;
    struct Vec3fx* velocity;
    struct Vec3fx spawn;
    int x;
    int y;

    if (gCurrentProjectileCount == gMaxProjectileCount) {
        ASSERT(0);
        return;
    }
    actor = NULL;
    for (i = 0; i < gMaxProjectileCount; i++) {
        actor = &gProjectiles[i].actor;
        if (!actor->isActive) {
            gCurrentProjectileCount++;
            break;
        }
    }
    if (i == gMaxProjectileCount) {
        ASSERT(0);
        return;
    }

    projectile = &gProjectiles[i];
    actorPos = &projectile->actor.field_94;
    velocity = &projectile->field_D8;
    switch (kind) {
        case EGG_BLUE:
            actor->type = 0x1B;
            projectile->field_FC = word_80CB964[6];
            projectile->field_104 = byte_80CB94C[6];
            projectile->field_100 = 60;
            actor->field_9 = dword_80CBCD0[6][gPlayerSprite.direction];
            spawn.x = pos->x + (dword_80CB9F0[6][gPlayerSprite.direction] << 16);
            spawn.y = pos->y + (actor->field_9 << 16);
            spawn.z = pos->z + (dword_80CBFB0[6][gPlayerSprite.direction] << 16);
            projectile->field_E4.x = spawn.x - 0x30000;
            projectile->field_E4.y = spawn.y - 0x30000;
            projectile->field_E4.z = spawn.z - 0x30000;
            projectile->field_F0.x = spawn.x + 0x30000;
            projectile->field_F0.y = spawn.y + 0x30000;
            projectile->field_F0.z = spawn.z + 0x30000;
            actorPos->x = pos->x;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 0x19;
            break;

        case EGG_BATTERY:
            actor->type = 0x1C;
            projectile->field_FC = word_80CB964[7];
            projectile->field_104 = byte_80CB94C[7];
            projectile->field_100 = 60;
            actor->field_9 = dword_80CBCD0[7][gPlayerSprite.direction];
            spawn.x = pos->x + (dword_80CB9F0[7][gPlayerSprite.direction] << 16);
            spawn.y = pos->y + (actor->field_9 << 16);
            spawn.z = pos->z + (dword_80CBFB0[7][gPlayerSprite.direction] << 16);
            projectile->field_E4.x = spawn.x - 0x30000;
            projectile->field_E4.y = spawn.y - 0x30000;
            projectile->field_E4.z = spawn.z - 0x30000;
            projectile->field_F0.x = spawn.x + 0x30000;
            projectile->field_F0.y = spawn.y + 0x30000;
            projectile->field_F0.z = spawn.z + 0x30000;
            actorPos->x = pos->x;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 0x1A;
            break;

        case EGG_FIRE:
            actor->type = 0x1D;
            projectile->field_FC = word_80CB964[9];
            projectile->field_104 = byte_80CB94C[9];
            projectile->field_100 = 60;
            actor->field_9 = dword_80CBCD0[9][gPlayerSprite.direction];
            spawn.x = pos->x + (dword_80CB9F0[9][gPlayerSprite.direction] << 16);
            spawn.y = pos->y + (actor->field_9 << 16);
            spawn.z = pos->z + (dword_80CBFB0[9][gPlayerSprite.direction] << 16);
            projectile->field_E4.x = spawn.x - 0x30000;
            projectile->field_E4.y = spawn.y - 0x30000;
            projectile->field_E4.z = spawn.z - 0x30000;
            projectile->field_F0.x = spawn.x + 0x30000;
            projectile->field_F0.y = spawn.y + 0x30000;
            projectile->field_F0.z = spawn.z + 0x30000;
            actorPos->x = pos->x;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 0x1B;
            break;

        case EGG_ICE:
            actor->type = 0x1E;
            projectile->field_FC = word_80CB964[8];
            projectile->field_104 = byte_80CB94C[8];
            projectile->field_100 = 60;
            actor->field_9 = dword_80CBCD0[8][gPlayerSprite.direction];
            spawn.x = pos->x + (dword_80CB9F0[8][gPlayerSprite.direction] << 16);
            spawn.y = pos->y + (actor->field_9 << 16);
            spawn.z = pos->z + (dword_80CBFB0[8][gPlayerSprite.direction] << 16);
            projectile->field_E4.x = spawn.x - 0x30000;
            projectile->field_E4.y = spawn.y - 0x30000;
            projectile->field_E4.z = spawn.z - 0x30000;
            projectile->field_F0.x = spawn.x + 0x30000;
            projectile->field_F0.y = spawn.y + 0x30000;
            projectile->field_F0.z = spawn.z + 0x30000;
            actorPos->x = pos->x;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 0x1C;
            break;

        case 5:
            actor->type = 0x46;
            projectile->field_FC = word_80CB964[13];
            projectile->field_104 = byte_80CB94C[13];
            projectile->field_100 = 60;
            actor->field_9 = dword_80CBCD0[13][gPlayerSprite.direction];
            spawn.x = pos->x + (dword_80CB9F0[13][gPlayerSprite.direction] << 16);
            spawn.y = pos->y + (actor->field_9 << 16);
            spawn.z = pos->z + (dword_80CBFB0[13][gPlayerSprite.direction] << 16);
            projectile->field_E4.x = spawn.x - 0x30000;
            projectile->field_E4.y = spawn.y - 0x30000;
            projectile->field_E4.z = spawn.z - 0x30000;
            projectile->field_F0.x = spawn.x + 0x30000;
            projectile->field_F0.y = spawn.y + 0x30000;
            projectile->field_F0.z = spawn.z + 0x30000;
            actorPos->x = pos->x;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 0xCB;
            break;

        case 6:
            actor->type = 0x47;
            projectile->field_FC = word_80CB964[11];
            projectile->field_104 = byte_80CB94C[11];
            projectile->field_100 = 60;
            actor->field_9 = dword_80CBCD0[11][gPlayerSprite.direction];
            spawn.x = pos->x + (dword_80CB9F0[11][gPlayerSprite.direction] << 16);
            spawn.y = pos->y + (actor->field_9 << 16);
            spawn.z = pos->z + (dword_80CBFB0[11][gPlayerSprite.direction] << 16);
            projectile->field_E4.x = spawn.x - 0x30000;
            projectile->field_E4.y = spawn.y - 0x30000;
            projectile->field_E4.z = spawn.z - 0x30000;
            projectile->field_F0.x = spawn.x + 0x30000;
            projectile->field_F0.y = spawn.y + 0x30000;
            projectile->field_F0.z = spawn.z + 0x30000;
            actorPos->x = pos->x;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 0xB9;
            break;

        default:
            ASSERT(0);
            break;
    }

    velocity->x = stru_80CC78C[gPlayerSprite.direction].x;
    velocity->y = stru_80CC78C[gPlayerSprite.direction].y;
    velocity->z = stru_80CC78C[gPlayerSprite.direction].z;
    projectile->field_105 = 0;
    projectile->field_106 = 1;
    actor->xPosition = actorPos->x >> 16;
    actor->yPosition = gMapPixelSizeY + actor->field_9 - ((actorPos->z + actorPos->y) >> 16);
    actor->field_6 = (actorPos->y >> 16) - actor->field_9;
    actor->isActive = TRUE;
    actor->field_24 = 0;
    actor->field_3C = 0;
    actor->field_B = 0;
    actor->field_A = 0;
    actor->field_28 = 0;
    actor->field_8 = priority;
    actor->field_46 = 0;
    actor->field_1E = 0;
    actor->field_18 = 0;
    actor->field_14 = 0;
    actor->field_20 = 0;
    actor->field_C = 0;
    actor->field_1C = -1;
    actor->interactionKind = 1;
    actor->field_2C = 0;
    actor->field_30 = 1;
    actor->field_2F = 1;
    actor->field_4C.x = 0;
    actor->field_4C.y = 0;
    actor->field_4C.z = 0;
    actor->field_64.x = 0;
    actor->field_64.y = 0;
    actor->field_64.z = 0;
    actor->field_70.x = 0;
    actor->field_70.y = 0;
    actor->field_70.z = 0;
    actor->field_7C.x = 0;
    actor->field_7C.y = 0;
    actor->field_7C.z = 0;
    actor->field_88.x = 0;
    actor->field_88.y = 0;
    actor->field_88.z = 0;
    projectile->field_FE = sub_8003854(0x8000);
    sub_800389C(projectile->field_FE, dword_80CC844[gRoomHeader.unknown1]);
    sub_8003894(projectile->field_FE, dword_80CC818[0]);
    sub_8003884(projectile->field_FE, 0x40000, dword_80CC290[gPlayerSprite.direction], 0);

    x = actor->xPosition - gCameraPixelX;
    y = actor->yPosition - gCameraPixelY - actor->field_9;
    if (!sub_8003A7C(&actor->field_94, 0, gMapPixelSizeY) || projectile->field_106) {
        actor->sprite.attr0Flag9 = 1;
    } else {
        actor->sprite.attr0Flag9 = 0;
    }
    SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
    sprite_set_priority(&actor->sprite, actor->field_8);
}

bool32 spawn_projectile(int kind, struct Vec3fx* pos, u32 angle, u32 priority) {
    int i;
    struct Actor* actor;
    struct Projectile* projectile;
    struct Vec3fx* actorPos;
    struct Vec3fx* velocity;
    int x;
    int y;

    if (gCurrentProjectileCount == gMaxProjectileCount) {
        return FALSE;
    }
    actor = NULL;
    for (i = 0; i < gMaxProjectileCount; i++) {
        actor = &gProjectiles[i].actor;
        if (!actor->isActive) {
            gCurrentProjectileCount++;
            break;
        }
    }
    ASSERT(i != gMaxProjectileCount);

    projectile = &gProjectiles[i];
    actorPos = &projectile->actor.field_94;
    velocity = &projectile->field_D8;
    switch (kind) {
        case 7:
            actor->type = 0x4D;
            projectile->field_FC = word_80CB964[0];
            projectile->field_104 = 2;
            projectile->field_100 = 60;
            actorPos->x = pos->x;
            actor->field_9 = 25;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 0xBD;
            projectile->field_FE = sub_8003854(0x8000);
            sub_800389C(projectile->field_FE, dword_80CC844[gRoomHeader.unknown1]);
            sub_8003894(projectile->field_FE, dword_80CC818[0]);
            sub_8003884(projectile->field_FE, 0x40000, angle, 0);
            break;

        case 8:
            actor->type = 0x1A;
            projectile->field_FC = word_80CB964[0];
            projectile->field_104 = 1;
            projectile->field_100 = 60;
            actorPos->x = pos->x;
            actor->field_9 = 25;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 25;
            projectile->field_FE = sub_8003854(0x8000);
            sub_800389C(projectile->field_FE, dword_80CC844[gRoomHeader.unknown1]);
            sub_8003894(projectile->field_FE, dword_80CC818[0]);
            sub_8003884(projectile->field_FE, 0x30000, angle, 0);
            break;

        case 9:
            actor->type = 0x74;
            projectile->field_FC = word_80CB964[0];
            projectile->field_104 = 2;
            projectile->field_100 = 60;
            actorPos->x = pos->x;
            actor->field_9 = 25;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 25;
            projectile->field_FE = sub_8003854(0x8000);
            sub_800389C(projectile->field_FE, dword_80CC844[gRoomHeader.unknown1]);
            sub_8003894(projectile->field_FE, dword_80CC818[0]);
            sub_8003884(projectile->field_FE, 0x30000, angle, 0);
            break;

        case 10:
            actor->type = 0x75;
            projectile->field_FC = word_80CB964[0];
            projectile->field_104 = 1;
            projectile->field_100 = 60;
            actorPos->x = pos->x;
            actor->field_9 = 25;
            actorPos->y = pos->y + (actor->field_9 << 16);
            actorPos->z = pos->z;
            projectile->field_102 = 25;
            projectile->field_FE = sub_8003854(0x8000);
            sub_800389C(projectile->field_FE, dword_80CC844[gRoomHeader.unknown1]);
            sub_8003894(projectile->field_FE, dword_80CC818[0]);
            sub_8003884(projectile->field_FE, 0x40000, angle, 0);
            break;

        default:
            ASSERT(0);
            break;
    }

    sub_80039BC(angle, velocity);
    projectile->field_105 = 0;
    projectile->field_106 = 0;
    actor->xPosition = actorPos->x >> 16;
    actor->yPosition = gMapPixelSizeY + actor->field_9 - ((actorPos->z + actorPos->y) >> 16);
    actor->field_6 = (actorPos->y >> 16) - actor->field_9;
    actor->isActive = TRUE;
    actor->field_24 = 0;
    actor->field_3C = 0;
    actor->field_B = 0;
    actor->field_A = 0;
    actor->field_28 = 0;
    actor->field_8 = priority;
    actor->field_46 = 0;
    actor->field_1E = 0;
    actor->field_18 = 0;
    actor->field_14 = 0;
    actor->field_20 = 0;
    actor->field_C = 0;
    actor->field_1C = -1;
    actor->interactionKind = 0;
    actor->field_2C = 0;
    actor->field_30 = 1;
    actor->field_2F = 1;
    actor->field_4C.x = 0;
    actor->field_4C.y = 0;
    actor->field_4C.z = 0;
    actor->field_64.x = 0;
    actor->field_64.y = 0;
    actor->field_64.z = 0;
    actor->field_70.x = 0;
    actor->field_70.y = 0;
    actor->field_70.z = 0;

    x = actor->xPosition - gCameraPixelX;
    y = actor->yPosition - gCameraPixelY - actor->field_9;
    if (!sub_8003A7C(&actor->field_94, 0, gMapPixelSizeY)) {
        actor->sprite.attr0Flag9 = 1;
    } else {
        actor->sprite.attr0Flag9 = 0;
    }
    SetSprite(&actor->sprite, actor->type + 0x221, FALSE, 0, 0, x, y, 2);
    sprite_set_priority(&actor->sprite, actor->field_8);
    return TRUE;
}

void sub_802DC34(void) {
    int count;
    int i;
    struct Projectile* projectile;

    if (gCurrentProjectileCount) {
        for (count = 0, i = 0; i < gMaxProjectileCount; i++) {
            projectile = &gProjectiles[i];
            if (projectile->actor.isActive && (dActorTypeFlags[projectile->actor.type] & 0x20)) {
                projectile->field_104 = 0;
                count++;
                if (count == gCurrentProjectileCount) {
                    break;
                }
            }
        }
    }
}

void despawn_aged_projectiles(void) {
    int count;
    int i;
    struct Actor* actor;

    if (gCurrentProjectileCount) {
        for (count = 0, i = 0; i < gMaxProjectileCount; i++) {
            actor = &gProjectiles[i].actor;
            if (actor->isActive) {
                if (!actor->field_3C) {
                    if (gProjectiles[i].field_100 == 0) {
                        actor->isActive = FALSE;
                        sub_8003864(gProjectiles[i].field_FE);
                        gCurrentProjectileCount--;
                    } else {
                        gProjectiles[i].field_100--;
                        count++;
                    }
                } else {
                    count++;
                }
                if (count == gCurrentProjectileCount) {
                    break;
                }
            }
        }
    }
}

void update_projectiles(struct RenderListEntry** renderList, u32* spriteCount) {
    struct struc_44 wall;
    struct struc_44 floor;
    fx32 dx;
    fx32 dy;
    fx32 dz;
    int i;
    int count;
    struct Actor* actor;
    struct Projectile* projectile;
    struct Vec3fx* pos;
    int x;
    int y;
    struct RenderListEntry* entry;

    if (!gCurrentProjectileCount) {
        return;
    }
    for (count = 0, i = 0; i < gMaxProjectileCount; i++) {
        actor = &gProjectiles[i].actor;
        projectile = &gProjectiles[i];
        if (actor->isActive) {
            if (actor->field_3C) {
                if (sprite_is_anim_done_once(&actor->sprite)) {
                    actor->field_3C = 0;
                    actor->isActive = FALSE;
                    sub_8003864(gProjectiles[i].field_FE);
                    gCurrentProjectileCount--;
                }
            } else {
                pos = &actor->field_94;
                sub_08007C20(pos, &projectile->field_D8, &wall);
                sub_08009208(pos, &floor);
                if (wall.isColliding || !floor.isColliding) {
                    sprite_set_anim(&actor->sprite, dActorTypeInfo[actor->type].anim, FALSE, 1);
                    actor->field_3C = 1;
                    projectile->field_106 = 0;
                    sub_8003884(projectile->field_FE, 0, dword_80CC290[gPlayerSprite.direction], 0);
                    PLAY_SFX(projectile->field_102);
                } else {
                    sprite_set_priority(&actor->sprite, floor.playerSpritePriority);
                    sub_80038A4(projectile->field_FE);
                    sub_80038C4(projectile->field_FE, &dx, &dy, &dz);
                    pos->x += dx;
                    pos->y += dy;
                    pos->z += dz;
                    actor->xPosition = pos->x >> 16;
                    actor->yPosition = gMapPixelSizeY + actor->field_9 - ((pos->z + pos->y) >> 16);
                    actor->field_6 = (pos->y >> 16) - actor->field_9;
                }
                if (projectile->field_106
                    && VecFX_PointInBox(pos, &projectile->field_E4, &projectile->field_F0)) {
                    projectile->field_106 = 0;
                }
            }
            if (actor->isActive) {
                x = actor->xPosition - gCameraPixelX;
                y = actor->yPosition - gCameraPixelY - actor->field_9;
                if (!sub_8003A7C(&actor->field_94, 0, gMapPixelSizeY) || projectile->field_106) {
                    actor->sprite.attr0Flag9 = 1;
                } else {
                    actor->sprite.attr0Flag9 = 0;
                }
                actor->sprite.xPos = x;
                actor->sprite.yPos = y;
                sprite_render_ex(&actor->sprite, *renderList);
                if (projectile->field_105 == 0) {
                    entry = *renderList;
                    entry->sortKey = (actor->sprite.priority << 30) | ((u32)actor->field_94.z >> 4);
                } else {
                    (*renderList)->sortKey = actor->sprite.priority << 30;
                }
                (*renderList)++;
                (*spriteCount)++;
                count++;
            }
        }
        if (count == gCurrentProjectileCount) {
            break;
        }
    }
}

void sub_802E024(int count, struct Actor* actor) {
    int i;
    int drop;

    i = random_range(0, 2);
    if (i == 1) {
        for (i = 0; i < count; i++) {
            drop = byte_80A778A[random_range(0, 19)];
            if (actor->type != ACTOR_0AD) {
                sub_0802C3A4(drop, actor, -1, 1);
            } else {
                sub_0802C3A4(drop, actor, 0, 2);
            }
        }
    }
}

u8 sub_0802E080(void) {
    bool32 hasEggMove;

    timer_stop();
    switch (dword_203DFDC->type) {
        case ACTOR_MOMMA_CLUCKER_EGGS:
            if (!is_obj_disabled(ACTOR_0D9, 16)) {
                if (!is_obj_disabled(ACTOR_1A2, 0)) {
                    byte_2002E4E = byte_203E162;
                    if (!byte_203E162) {
                        byte_203E162 = TRUE;
                    }
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                    sub_8034460(ACTOR_1A2, 0, 4, 0);
                } else {
                    byte_2002E4E = TRUE;
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                }
            } else {
                if (!is_obj_disabled(ACTOR_1A2, 0)) {
                    run_obj_behavior(ACTOR_1A2, 0);
                }
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            }
            break;

        case ACTOR_0A5:
            byte_2002E4E = TRUE;
            sub_8025EF4(word_80CEC70[gLoadedRoomLevel]);
            break;

        case ACTOR_0A6:
            byte_2002E4E = TRUE;
            sub_8025EF4(word_80CEC7C[gLoadedRoomLevel]);
            break;

        case ACTOR_0A7:
            byte_2002E4E = TRUE;
            sub_8025EF4(word_80CEC94[gLoadedRoomLevel]);
            break;

        case ACTOR_0A8:
            byte_2002E4E = TRUE;
            sub_8025EF4(word_80CEC88[gLoadedRoomLevel]);
            break;

        case ACTOR_0A1:
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            run_obj_behavior(ACTOR_0A1, 0);
            break;

        case ACTOR_0A2:
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            run_obj_behavior(ACTOR_0A2, 0);
            break;

        case ACTOR_0A3:
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            run_obj_behavior(ACTOR_0A3, 0);
            break;

        case ACTOR_0A4:
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            run_obj_behavior(ACTOR_0A4, 0);
            break;

        case ACTOR_WHITE_BREEGULL:
            if (is_obj_disabled(ACTOR_10C, 0)) {
                if (!is_obj_disabled(ACTOR_177, 0)) {
                    run_obj_behavior(ACTOR_177, 0);
                }
                if (!is_obj_disabled(ACTOR_10A, 0)) {
                    byte_2002E4E = FALSE;
                    sub_8025EF4(dword_203DFDC->field_18 - 1);
                    sub_8034460(ACTOR_10A, 0, 4, 0);
                } else {
                    byte_2002E4E = TRUE;
                    sub_8025EF4(dword_203DFDC->field_24 - 1);
                }
            } else if (!is_obj_disabled(ACTOR_177, 0)) {
                byte_2002E4E = byte_203E143;
                if (!byte_203E143) {
                    byte_203E143 = TRUE;
                }
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                sub_8034460(ACTOR_177, 0, 4, 0);
            } else {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
            }
            break;

        case ACTOR_013:
            byte_2002E4E = byte_203E169;
            if (!byte_203E169) {
                byte_203E169 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            sub_8034460(ACTOR_102, 0, 4, 0);
            break;

        case ACTOR_022:
            if (!is_obj_disabled(ACTOR_0D9, 9)) {
                if (!is_obj_disabled(ACTOR_179, 0)) {
                    byte_2002E4E = byte_203E15F;
                    if (!byte_203E15F) {
                        byte_203E15F = TRUE;
                    }
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                    sub_8034460(ACTOR_179, 0, 4, 0);
                } else {
                    byte_2002E4E = TRUE;
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                }
            } else {
                if (!is_obj_disabled(ACTOR_179, 0)) {
                    run_obj_behavior(ACTOR_179, 0);
                }
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            }
            break;

        case ACTOR_0FF:
            byte_2002E4E = byte_203E145;
            if (!byte_203E145) {
                byte_203E145 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_12A:
            byte_2002E4E = byte_203E146;
            if (!byte_203E146) {
                byte_203E146 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_132:
            byte_2002E4E = byte_203E147;
            if (!byte_203E147) {
                byte_203E147 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_12B:
            byte_2002E4E = byte_203E148;
            if (!byte_203E148) {
                byte_203E148 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_12D:
            byte_2002E4E = byte_203E149;
            if (!byte_203E149) {
                byte_203E149 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_12E:
            byte_2002E4E = byte_203E14A;
            if (!byte_203E14A) {
                byte_203E14A = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_12C:
            byte_2002E4E = byte_203E14B;
            if (!byte_203E14B) {
                byte_203E14B = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_16F:
            byte_2002E4E = byte_203E14C;
            if (!byte_203E14C) {
                byte_203E14C = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_170:
            byte_2002E4E = byte_203E14D;
            if (!byte_203E14D) {
                byte_203E14D = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_123:
            byte_2002E4E = byte_203E14E;
            if (!byte_203E14E) {
                byte_203E14E = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_124:
            byte_2002E4E = byte_203E14F;
            if (!byte_203E14F) {
                byte_203E14F = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_126:
            byte_2002E4E = byte_203E150;
            if (!byte_203E150) {
                byte_203E150 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_16D:
            byte_2002E4E = byte_203E151;
            if (!byte_203E151) {
                byte_203E151 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_16E:
            byte_2002E4E = byte_203E152;
            if (!byte_203E152) {
                byte_203E152 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_18B:
            byte_2002E4E = byte_203E153;
            if (!byte_203E153) {
                byte_203E153 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_171:
            byte_2002E4E = byte_203E154;
            if (!byte_203E154) {
                byte_203E154 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_133:
            byte_2002E4E = byte_203E155;
            if (!byte_203E155) {
                byte_203E155 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_135:
            byte_2002E4E = byte_203E156;
            if (!byte_203E156) {
                byte_203E156 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_136:
            byte_2002E4E = byte_203E157;
            if (!byte_203E157) {
                byte_203E157 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_138:
            byte_2002E4E = byte_203E158;
            if (!byte_203E158) {
                byte_203E158 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_139:
            byte_2002E4E = byte_203E159;
            if (!byte_203E159) {
                byte_203E159 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_13B:
            byte_2002E4E = byte_203E15A;
            if (!byte_203E15A) {
                byte_203E15A = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_13C:
            byte_2002E4E = byte_203E15D;
            if (!byte_203E15D) {
                byte_203E15D = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_13E:
            byte_2002E4E = byte_203E15E;
            if (!byte_203E15E) {
                byte_203E15E = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_13F:
            byte_2002E4E = byte_203E15B;
            if (!byte_203E15B) {
                byte_203E15B = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_141:
            byte_2002E4E = byte_203E15C;
            if (!byte_203E15C) {
                byte_203E15C = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_145:
            byte_2002E4E = byte_203E160;
            if (!byte_203E160) {
                byte_203E160 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_147:
            byte_2002E4E = byte_203E161;
            if (!byte_203E161) {
                byte_203E161 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_143:
            byte_2002E4E = byte_203E163;
            if (!byte_203E163) {
                byte_203E163 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_14C:
            byte_2002E4E = byte_203E164;
            if (!byte_203E164) {
                byte_203E164 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_14D:
            byte_2002E4E = byte_203E165;
            if (!byte_203E165) {
                byte_203E165 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_14E:
            byte_2002E4E = byte_203E166;
            if (!byte_203E166) {
                byte_203E166 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_14F:
            byte_2002E4E = byte_203E167;
            if (!byte_203E167) {
                byte_203E167 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_188:
            byte_2002E4E = byte_203E168;
            if (!byte_203E168) {
                byte_203E168 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_146:
        case ACTOR_163:
        case ACTOR_19F:
            byte_2002E4E = TRUE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_164:
            byte_203E16A = 0;
            byte_2002E4E = TRUE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_116:
        case ACTOR_117:
        case ACTOR_118:
        case ACTOR_119:
        case ACTOR_11A:
        case ACTOR_11B:
        case ACTOR_11C:
        case ACTOR_16B:
        case ACTOR_16C:
            byte_2002E4E = byte_20021F8;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_142:
            if (!is_obj_disabled(ACTOR_1A2, 0)) {
                run_obj_behavior(ACTOR_1A2, 0);
            }
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_144:
            if (!is_obj_disabled(ACTOR_179, 0)) {
                run_obj_behavior(ACTOR_179, 0);
            }
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_10D:
        case ACTOR_113:
        case ACTOR_11D:
        case ACTOR_122:
        case ACTOR_125:
        case ACTOR_12F:
        case ACTOR_130:
        case ACTOR_131:
        case ACTOR_134:
        case ACTOR_137:
        case ACTOR_13A:
        case ACTOR_13D:
        case ACTOR_140:
        case ACTOR_152:
        case ACTOR_153:
        case ACTOR_154:
        case ACTOR_155:
        case ACTOR_156:
        case ACTOR_157:
        case ACTOR_158:
        case ACTOR_159:
        case ACTOR_15A:
        case ACTOR_15B:
        case ACTOR_15C:
        case ACTOR_172:
        case ACTOR_173:
        case ACTOR_174:
        case ACTOR_185:
        case ACTOR_186:
        case ACTOR_187:
        case ACTOR_18A:
        case ACTOR_18C:
        case ACTOR_18D:
        case ACTOR_18E:
        case ACTOR_18F:
        case ACTOR_190:
        case ACTOR_191:
        case ACTOR_192:
        case ACTOR_193:
        case ACTOR_194:
        case ACTOR_199:
        case ACTOR_19A:
        case ACTOR_19B:
        case ACTOR_19C:
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            break;

        case ACTOR_11E:
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            sub_8034460(ACTOR_11E, 0, 4, 0);
            break;

        case ACTOR_0A0:
            dword_20021C0 = dword_203DFDC;
            byte_2002E4B = dword_203DFDC->field_18 - 1;
            if (!byte_2002E4C) {
                if (!gUnlockedMoves[MOVE_EGG_BLUE]) {
                    byte_2002E4E = TRUE;
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                } else {
                    byte_2002E4E = FALSE;
                    sub_8025EF4(dword_203DFDC->field_14);
                    sub_8034460(ACTOR_161, 0, 4, 0);
                }
                if (!is_obj_disabled(ACTOR_1A1, 0)) {
                    run_obj_behavior(ACTOR_1A1, 0);
                }
            } else if (!byte_2002E4D) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
                byte_2002E4C = FALSE;
            } else {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_24);
                sub_8034460(ACTOR_0A0, 0, 4, 0);
            }
            break;

        case ACTOR_MISS_BUCKET:
            if (is_obj_disabled(ACTOR_0EF, 0)) {
                if (!is_obj_disabled(ACTOR_0F0, 0)) {
                    run_obj_behavior(ACTOR_0F0, 0);
                }
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
                sub_8034460(ACTOR_MISS_BUCKET, 0, 4, 0);
            } else if (!is_obj_disabled(ACTOR_0F0, 0)) {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                sub_8034460(ACTOR_0F0, 0, 4, 0);
            } else {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            }
            break;

        case ACTOR_09E:
            byte_2002E4E = FALSE;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            sub_8034460(ACTOR_09E, (s16)dword_203DFDC->field_1C, 4, 0);
            break;

        case ACTOR_09F:
            if (!is_obj_disabled(ACTOR_182, 0)) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            } else {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                sub_8034460(ACTOR_09F, (s16)dword_203DFDC->field_1C, 4, 0);
                sub_8034460(ACTOR_0EE, 0, 4, 0);
            }
            break;

        case ACTOR_MR_RIPOVSKI_SILVER_COINS:
            if (!is_obj_disabled(ACTOR_0F5, 0)) {
                if (is_obj_disabled(ACTOR_175, 0)) {
                    if (!is_obj_disabled(ACTOR_0EC, 0)) {
                        run_obj_behavior(ACTOR_0EC, 0);
                    }
                    byte_2002E4E = FALSE;
                    sub_8025EF4(dword_203DFDC->field_24 - 1);
                    sub_8034460(ACTOR_0F5, 0, 4, 0);
                } else if (!is_obj_disabled(ACTOR_0EC, 0)) {
                    byte_2002E4E = FALSE;
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                    sub_8034460(ACTOR_0EC, 0, 4, 0);
                } else {
                    byte_2002E4E = TRUE;
                    sub_8025EF4(dword_203DFDC->field_18 - 1);
                }
            } else {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_28 - 1);
            }
            break;

        case ACTOR_036:
            if (is_obj_disabled(ACTOR_037, 0) && is_obj_disabled(ACTOR_038, 0)) {
                if (!is_obj_disabled(ACTOR_0E9, 0)) {
                    run_obj_behavior(ACTOR_0E9, 0);
                }
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
                sub_8034460(ACTOR_036, 0, 4, 0);
            } else if (!is_obj_disabled(ACTOR_0E9, 0)) {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                run_obj_behavior(ACTOR_0E9, 0);
            } else {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            }
            break;

        case ACTOR_037:
            if (!is_obj_disabled(ACTOR_0E8, 0)) {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                run_obj_behavior(ACTOR_0E8, 0);
                if (is_obj_disabled(ACTOR_0EA, 0)) {
                    sub_8034460(ACTOR_17D, 0, 4, 0);
                }
            } else if (!is_obj_disabled(ACTOR_0EA, 0)) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            } else {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
                sub_8034460(ACTOR_037, 0, 4, 0);
            }
            break;

        case ACTOR_038:
            if (!is_obj_disabled(ACTOR_0E7, 0)) {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                run_obj_behavior(ACTOR_0E7, 0);
                if (is_obj_disabled(ACTOR_0E6, 0)) {
                    sub_8034460(ACTOR_17E, 0, 4, 0);
                }
            } else if (!is_obj_disabled(ACTOR_0E6, 0)) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            } else {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
                sub_8034460(ACTOR_038, 0, 4, 0);
            }
            break;

        case ACTOR_039:
            if (!is_obj_disabled(ACTOR_0E6, 0)) {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                sub_8034460(ACTOR_0E6, 0, 4, 0);
            } else {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            }
            break;

        case ACTOR_MUMBO_JUMBO:
            hasEggMove = FALSE;
            if (sub_8016A5C(1) || sub_8016A5C(2) || sub_8016A5C(3) || sub_8016A5C(4)) {
                hasEggMove = TRUE;
            }
            if (!hasEggMove && !gGameStatus.mumboTokens) {
                if (!is_obj_disabled(ACTOR_115, 0)) {
                    byte_2002E4E = FALSE;
                    sub_8025EF4(dword_80CF378[gLoadedRoomLevel]);
                    run_obj_behavior(ACTOR_115, 0);
                } else {
                    byte_2002E4E = TRUE;
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                }
            } else if (!gGameStatus.mumboTokens) {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
                sub_8034460(ACTOR_15F, 0, 4, 0);
            } else {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_18);
                sub_8034460(ACTOR_1A3, 0, 4, 0);
                sub_8034460(ACTOR_15F, 0, 4, 0);
            }
            break;

        case ACTOR_JIGGYWIGGY:
            if (is_obj_disabled(ACTOR_02A, 0)) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
            } else if (gUnlockedLevels == gTotalAmountOfLevels) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_28 - 1);
            } else if (gGameStatus.totalJiggies < byte_80CC8EC[gUnlockedLevels]) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1 + gUnlockedLevels);
                sub_8034460(ACTOR_JIGGYWIGGY, 0, 4, 0);
            } else {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_24 - 1 + gUnlockedLevels);
                sub_8034460(ACTOR_JIGGYWIGGY, 0, 4, 0);
            }
            break;

        case ACTOR_HONEY_B:
            if (!is_obj_disabled(ACTOR_0EB, 0)) {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_28 - 1);
                sub_8034460(ACTOR_0EB, 0, 4, 0);
                if (byte_200107C != byte_200107D
                    && gGameStatus.totalHollowHoneycombs >= byte_80CC8E4[byte_200107C]) {
                    sub_8034460(ACTOR_151, 0, 4, 0);
                }
            } else if (byte_200107C == byte_200107D) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
                restore_full_health();
            } else if (gGameStatus.totalHollowHoneycombs < byte_80CC8E4[byte_200107C]) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1 + byte_200107C);
            } else {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                sub_8034460(ACTOR_184, 0, 4, 0);
            }
            break;

        case ACTOR_JINJO_ORACLE:
            if (!is_obj_disabled(ACTOR_112, 0)) {
                byte_2002E4E = FALSE;
                if (!byte_20021BE) {
                    sub_8025EF4(byte_80CEDC3[gLoadedRoomLevel]);
                } else {
                    sub_8025EF4(dword_80CF3D0[gLoadedRoomLevel]);
                }
                sub_8034460(ACTOR_112, 0, 4, 0);
                if (byte_203E110[gLoadedRoomLevel]) {
                    sub_8034460(ACTOR_176, 0, 4, 0);
                }
            } else if (!byte_203E110[gLoadedRoomLevel]) {
                byte_2002E4E = TRUE;
                sub_8025EF4(byte_80CEDC9[gLoadedRoomLevel]);
            } else if (byte_203E116[gLoadedRoomLevel] == stru_80CC84C[gLoadedRoomLevel].jinjoCount) {
                byte_2002E4E = TRUE;
                byte_203E11C[gLoadedRoomLevel] = TRUE;
                sub_8025EF4(byte_80CEDF3[gLoadedRoomLevel]);
                sub_8034460(ACTOR_114, 0, 4, 0);
            } else {
                byte_2002E4E = TRUE;
                switch (byte_203E110[gLoadedRoomLevel]) {
                    case 1:
                        sub_8025EF4(byte_80CEDCF[gLoadedRoomLevel]);
                        byte_203E11C[gLoadedRoomLevel] = TRUE;
                        break;

                    case 2:
                        sub_8025EF4(byte_80CEDD5[gLoadedRoomLevel]);
                        byte_203E11C[gLoadedRoomLevel] = TRUE;
                        break;

                    case 3:
                        sub_8025EF4(byte_80CEDDB[gLoadedRoomLevel]);
                        byte_203E11C[gLoadedRoomLevel] = TRUE;
                        break;

                    case 4:
                        sub_8025EF4(byte_80CEDE1[gLoadedRoomLevel]);
                        byte_203E11C[gLoadedRoomLevel] = TRUE;
                        break;

                    case 5:
                        sub_8025EF4(byte_80CEDE7[gLoadedRoomLevel]);
                        byte_203E11C[gLoadedRoomLevel] = TRUE;
                        break;

                    default:
                        ASSERT(0);
                        break;
                }
            }
            break;

        case ACTOR_021:
            byte_2002E4E = byte_203E144;
            if (!byte_203E144) {
                byte_203E144 = TRUE;
            }
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            sub_8034460(ACTOR_10E, 0, 4, 0);
            break;

        case ACTOR_MR_RIPOVSKI_SHELLS:
            if (!is_obj_disabled(ACTOR_0DA, 0)) {
                if (!is_obj_disabled(ACTOR_17F, 0)) {
                    byte_2002E4E = byte_203E142;
                    if (!byte_203E142) {
                        byte_203E142 = TRUE;
                    }
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                    sub_8034460(ACTOR_17F, 0, 4, 0);
                } else {
                    byte_2002E4E = TRUE;
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                }
            } else if (!is_obj_disabled(ACTOR_104, 0)) {
                if (!is_obj_disabled(ACTOR_17F, 0)) {
                    run_obj_behavior(ACTOR_17F, 0);
                }
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
                sub_8034460(ACTOR_104, 0, 4, 0);
            } else {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
            }
            break;

        case ACTOR_MOMMA_CLUCKER_CHICKS:
            if (!is_obj_disabled(ACTOR_0E1, 0)) {
                if (!is_obj_disabled(ACTOR_0E0, 0)) {
                    byte_2002E4E = FALSE;
                    sub_8025EF4(dword_203DFDC->field_14 - 1);
                    run_obj_behavior(ACTOR_0E0, 0);
                } else {
                    byte_2002E4E = TRUE;
                    sub_8025EF4(dword_203DFDC->field_18 - 1);
                }
            } else if (!is_obj_disabled(ACTOR_106, 0)) {
                if (!is_obj_disabled(ACTOR_0E0, 0)) {
                    run_obj_behavior(ACTOR_0E0, 0);
                }
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
                sub_8034460(ACTOR_106, 0, 4, 0);
            } else {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_28 - 1);
            }
            break;

        case ACTOR_017:
            byte_2002E4E = byte_20021F8;
            sub_8025EF4(dword_203DFDC->field_14 - 1);
            sub_8034460(ACTOR_0FB, dword_203DFDC->field_C, 4, 0);
            sub_8034460(ACTOR_017, 0, 4, 0);
            break;

        case ACTOR_093:
            if (byte_203DFDA) {
                byte_2002E4E = TRUE;
                byte_2002E4F = TRUE;
                sub_8025EF4(dword_80CEF8C[gLoadedRoomLevel]);
                break;
            }
            sprite_unlock_anim(&dword_203DFDC->sprite);
            if (!sub_80037A8(&dword_203DFDC->sprite)) {
                return FALSE;
            }
            byte_2002E4F = FALSE;
            restore_full_health();
            if (!gGameStatus.totalJiggies) {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
            } else {
                byte_2002E4E = TRUE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            }
            break;

        case ACTOR_BOZZEYE:
            if (byte_203DFDA) {
                byte_2002E4E = TRUE;
                byte_2002E4F = TRUE;
                sub_8025EF4(dword_80CEF8C[gLoadedRoomLevel]);
                break;
            }
            sprite_unlock_anim(&dword_203DFDC->sprite);
            if (!sub_80037A8(&dword_203DFDC->sprite)) {
                return FALSE;
            }
            byte_2002E4F = FALSE;
            if (dword_203DFDC->field_C == 7) {
                byte_2002E50 = TRUE;
            } else {
                byte_2002E50 = FALSE;
            }
            restore_full_health();
            if (byte_203E0FC[dword_203DFDC->field_C]) {
                byte_2002E4E = TRUE;
                byte_2002E50 = FALSE;
                sub_8025EF4(dword_203DFDC->field_24 - 1);
                switch (dword_203DFDC->field_C) {
                    case 14:
                        if (gGameStatus.eggs[EGG_BLUE] < stru_80CC8C4.eggs[EGG_BLUE]) {
                            sub_8034460(ACTOR_1A4, 0, 4, 0);
                        }
                        break;

                    case 15:
                        if (gGameStatus.eggs[EGG_BATTERY] < stru_80CC8C4.eggs[EGG_BATTERY]) {
                            sub_8034460(ACTOR_1A5, 0, 4, 0);
                        }
                        break;

                    case 17:
                        if (gGameStatus.eggs[EGG_FIRE] < stru_80CC8C4.eggs[EGG_FIRE]) {
                            sub_8034460(ACTOR_1A7, 0, 4, 0);
                        }
                        break;

                    case 16:
                        if (gGameStatus.eggs[EGG_ICE] < stru_80CC8C4.eggs[EGG_ICE]) {
                            sub_8034460(ACTOR_1A6, 0, 4, 0);
                        }
                        break;

                    case 6:
                        if (gGameStatus.goldenFeathers < stru_80CC8C4.goldenFeathers) {
                            sub_8034460(ACTOR_1A9, 0, 4, 0);
                        }
                        break;
                }
            } else if (!byte_20021BE && byte_80CEC50[dword_203DFDC->field_C]) {
                byte_2002E4E = TRUE;
                byte_2002E50 = FALSE;
                sub_8025EF4(word_80CEC64[gLoadedRoomLevel]);
            } else if (gGameStatus.totalNotes < dword_80CEFA4[dword_203DFDC->field_C]) {
                byte_2002E4E = TRUE;
                byte_2002E50 = FALSE;
                sub_8025EF4(dword_203DFDC->field_18 - 1);
            } else {
                byte_2002E4E = FALSE;
                sub_8025EF4(dword_203DFDC->field_14 - 1);
                sub_8034460(ACTOR_0FB, dword_203DFDC->field_C, 4, 0);
            }
            break;

        default:
            ASSERT(0);
            break;
    }
    sub_08015CC0(dword_203DFDC->field_10);
    byte_203DFD8 = FALSE;
    return TRUE;
}

bool32 sub_802FDC8(void) {
    if (!byte_203DFD8) {
        sub_8025FC8();
        sub_08016080(dword_203DFDC->field_10);
        byte_203DFD8 = TRUE;
        if (!byte_2002E4F && !byte_2002E50) {
            switch (dword_203DFDC->type) {
                case ACTOR_BOZZEYE:
                case ACTOR_093:
                    sprite_set_anim(&dword_203DFDC->sprite, 0x2BD, FALSE, 1);
                    return FALSE;

                case ACTOR_017:
                    sprite_set_anim(&dword_203DFDC->sprite, 0x2BD, FALSE, 1);
                    return FALSE;
            }
        }
    }

    switch (dword_203DFDC->type) {
        case ACTOR_BOZZEYE:
        case ACTOR_093:
            if (!byte_2002E50) {
                if (sprite_is_anim_done_once(&dword_203DFDC->sprite) || byte_2002E4F) {
                    sprite_set_anim(&dword_203DFDC->sprite, 0x237, FALSE, 0);
                    dword_203DFDC->sprite.loopFrame = 20;
                    sprite_lock_anim_on_frame(&dword_203DFDC->sprite, 0);
                    sprite_set_locked_frame(&dword_203DFDC->sprite, 0);
                    gInInteractionArea = FALSE;
                    sub_8029C30(ACTOR_BOZZEYE);
                    return TRUE;
                }
                return FALSE;
            }
            break;

        case ACTOR_017:
            if (!sprite_is_anim_done_once(&dword_203DFDC->sprite)) {
                return FALSE;
            }
            break;
    }
    gInInteractionArea = FALSE;
    return TRUE;
}

bool32 sub_0802FEDC(int type) {
    if (sub_80038AC(dword_2000FC8)) {
        return FALSE;
    }
    gInInteractionArea = TRUE;
    dword_203DFDC = &stru_203E01C;
    gIsCameraMovingX = FALSE;
    gIsCameraMovingY = FALSE;
    switch (type) {
        case ACTOR_0FF:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 48;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_10D:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 49;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_13C:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 50;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_13F:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 13;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_116:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 8;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_117:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 14;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_118:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 15;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_119:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 16;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_11A:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 17;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_11B:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 19;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_11C:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 20;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_11D:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_11E:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 2;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_122:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 14;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_123:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 13;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_124:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 23;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_125:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 15;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_126:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 14;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_12A:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 14;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_12B:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 14;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_12C:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 1;
            dword_203DFDC->field_14 = 16;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_12D:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 24;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_12E:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 28;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_12F:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 15;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_130:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 15;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_131:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 1;
            dword_203DFDC->field_14 = 17;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_132:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 16;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_113:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = dword_80CEDFC[gLoadedRoomLevel];
            dword_203DFDC->field_14 = byte_80CEDED[gLoadedRoomLevel] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_133:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 21;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_134:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 23;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_135:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 22;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_136:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 20;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_137:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 22;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_138:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 21;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_139:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 22;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_13A:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 24;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_13B:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 23;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_13D:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 21;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_13E:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 20;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_140:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 15;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_141:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 14;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_142:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 45;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_143:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 41;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_144:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 44;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_145:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 43;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_146:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 45;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_14C:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 60;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_14D:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 61;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_14E:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 62;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_14F:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 63;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_18A:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = dword_80CF318[byte_203E134] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_152:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = dword_80CEFF0[byte_203E134] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_153:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = dword_80CF008[byte_203E134] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_154:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = dword_80CF020[byte_203E134] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_155:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = dword_80CF038[byte_203E134] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_156:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = dword_80CF050[byte_203E134] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_157:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = dword_80CF068[byte_203E134] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_158:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 57;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_159:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 1;
            dword_203DFDC->field_14 = 4;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_15A:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 24;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_15B:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 53;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_15C:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 31;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_163:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 1;
            dword_203DFDC->field_14 = byte_2002E4B + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_164:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 1;
            dword_203DFDC->field_14 = byte_2002E4B + 2;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_147:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 2;
            dword_203DFDC->field_14 = 22;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_16B:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 71;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_16C:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 18;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_16D:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 72;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_16E:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 73;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_16F:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 74;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_170:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 75;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_171:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 76;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_172:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 77;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_173:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 78;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_174:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 79;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_185:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 1;
            dword_203DFDC->field_14 = 64;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_186:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 81;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_187:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 82;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_188:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = dword_80CF300[byte_203E135] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_18B:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 85;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_18C:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 86;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_18D:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 87;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_18E:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 88;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_18F:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 89;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_190:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 90;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_191:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 91;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_192:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 92;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_193:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 0;
            dword_203DFDC->field_14 = 93;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_194:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 94;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_199:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 37;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_19A:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 38;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_19B:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 40;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_19C:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = 39;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        case ACTOR_19F:
            dword_203DFDC->type = type;
            dword_203DFDC->field_10 = 3;
            dword_203DFDC->field_14 = dword_80CF360[dword_203E13C] + 1;
            dword_203DFDC->field_18 = 0;
            dword_203DFDC->field_24 = 0;
            dword_203DFDC->field_28 = 0;
            break;

        default:
            ASSERT(0);
            break;
    }
    sub_8034460(ACTOR_100, 0, 4, 0);
    gKeysDown = 0;
    gKeysPressed = 0;
    start_npc_dialogue(1);
    return TRUE;
}

void sub_803091C(void) {
    gInInteractionArea = FALSE;
    dword_203DFDC = NULL;
}

void sub_8030934(void) {
    if (gTransformation != TRANSFORMATION_BANJO) {
        if (gTransformation == TRANSFORMATION_MOUSE && !is_obj_disabled(ACTOR_0A1, 0)) {
            run_obj_behavior(ACTOR_0A1, 0);
            sub_0802FEDC(ACTOR_199);
        }
        if (gTransformation == TRANSFORMATION_CANDLE && !is_obj_disabled(ACTOR_0A2, 0)) {
            run_obj_behavior(ACTOR_0A2, 0);
            sub_0802FEDC(ACTOR_19A);
        }
        if (gTransformation == TRANSFORMATION_OCTOPUS && !is_obj_disabled(ACTOR_0A3, 0)) {
            run_obj_behavior(ACTOR_0A3, 0);
            sub_0802FEDC(ACTOR_19B);
        }
        if (gTransformation == TRANSFORMATION_TANK && !is_obj_disabled(ACTOR_0A4, 0)) {
            run_obj_behavior(ACTOR_0A4, 0);
            sub_0802FEDC(ACTOR_19C);
        }
    }
}

void play_jinjo_sounds(void) {
    if (!gJinjoSoundTimer) {
        if (gJinjoSoundsEnabled) {
            gJinjoSoundTimer = random_range(gJinjoSoundMinDelay, gJinjoSoundMaxDelay);
            if (!audio_fx_still_active(gJinjoSoundHandle)) {
                gJinjoSoundHandle = PLAY_SFX(random_range(31, 32));
            }
        }
    } else {
        gJinjoSoundTimer--;
    }
}

int count_active_player_projectiles(void) {
    int count;
    int found;
    int i;

    if (!gCurrentProjectileCount) {
        return 0;
    }
    count = 0;
    found = 0;
    for (i = 0; i < gMaxProjectileCount; i++) {
        if (gProjectiles[i].actor.isActive) {
            if (gProjectiles[i].field_FC & 0x15E0) {
                count++;
            } else if (gProjectiles[i].field_FC == 0x1000 || gProjectiles[i].field_FC == 0x400) {
                count++;
            }
            found++;
            if (found == gCurrentProjectileCount) {
                break;
            }
        }
    }
    return count;
}

void sub_8030B24(int uid) {
    int found;
    int i;
    struct Actor* actor;

    if (gActorPool0Count) {
        found = 0;
        for (i = 0; i < gActorPool0Capacity; i++) {
            actor = &gActorPool0[i];
            if (actor->isActive) {
                if (actor->field_1E == uid) {
                    dword_203DFEC = TRUE;
                    dword_203E0F4 = actor;
                    dword_203E0F8 = actor->field_38;
                    actor->field_38 = 2;
                    return;
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
        found = 0;
        for (i = 0; i < gActorPool1Capacity; i++) {
            actor = &gActorPool1[i];
            if (actor->isActive) {
                if (actor->field_1E == uid) {
                    dword_203DFEC = TRUE;
                    dword_203E0F4 = actor;
                    dword_203E0F8 = actor->field_38;
                    actor->field_38 = 2;
                    return;
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

void sub_8030C30(void) {
    dword_203E0F4->field_38 = dword_203E0F8;
    dword_203DFEC = FALSE;
    dword_203E0F4 = NULL;
}

void sub_8030C54(void) {
    heap_free_by_tag(4, 14);
    sub_08030C68();
}
