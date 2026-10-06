#include "global.h"
#include "common.h"
#include "heap.h"
#include "main.h"

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
    gEntitySection = (u32*)sub_8009DAC();
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
    dword_2000FC8 = (u32)(void*)sub_8009DAC();
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
