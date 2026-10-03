#include "global.h"
#include "common.h"
#include "heap.h"

#define HEAP_1_LENGTH 64000
#define HEAP_2_LENGTH 90000
#define HEAP_3_LENGTH 4160
#define HEAP_4_LENGTH 4096
#define HEAP_GENERAL_LENGTH 32880
#define HEAP_6_LENGTH 2048

struct Heap {
    u32 length;
    struct MemoryBlock* start;
    struct MemoryBlock* last;
    struct MemoryBlock* first;
    struct MemoryBlock* end;
    u32 allocStrategy;
};

struct MemoryBlock {
    u32 length;
    u32 allocId;
    struct MemoryBlock* previous;
    struct MemoryBlock* next;
    u8 data[0];
};

u8 gHeap3[HEAP_3_LENGTH];
struct Heap gHeaps[HEAP_COUNT];
u8 gHeap1[HEAP_1_LENGTH];
u8 gHeap2[HEAP_2_LENGTH];
u8 gHeap4[HEAP_4_LENGTH];
u8 gHeapGeneral[HEAP_GENERAL_LENGTH];
u8 gHeap6[HEAP_6_LENGTH];

void sub_8027600(u32 heap) {
    struct MemoryBlock* block = gHeaps[heap].start;
    do {
        // There was most likely a debug print here.
        block = block->next;
    } while (block);
}

void InitAllHeaps() {
    int i;
    for (i = 0; i < HEAP_COUNT; i++) {
        InitHeap(i);
    }
}

void InitHeap(u32 heap) {
    switch (heap) {
        case HEAP_1:
            gHeaps[heap].length = HEAP_1_LENGTH;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap1;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap1[HEAP_1_LENGTH - 1];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap1;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap1;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct MemoryBlock*)gHeap1)->length = HEAP_1_LENGTH;
            ((struct MemoryBlock*)gHeap1)->allocId = 0;
            ((struct MemoryBlock*)gHeap1)->next = 0;
            ((struct MemoryBlock*)gHeap1)->previous = 0;
            break;

        case HEAP_2:
            gHeaps[heap].length = HEAP_2_LENGTH;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap2;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap2[HEAP_2_LENGTH - 1];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap2;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap2;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct MemoryBlock*)gHeap2)->length = HEAP_2_LENGTH;
            ((struct MemoryBlock*)gHeap2)->allocId = 0;
            ((struct MemoryBlock*)gHeap2)->next = 0;
            ((struct MemoryBlock*)gHeap2)->previous = 0;
            break;

        case HEAP_3:
            gHeaps[heap].length = HEAP_3_LENGTH;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap3;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap3[HEAP_3_LENGTH - 1];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap3;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap3;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct MemoryBlock*)gHeap3)->length = HEAP_3_LENGTH;
            ((struct MemoryBlock*)gHeap3)->allocId = 0;
            ((struct MemoryBlock*)gHeap3)->next = 0;
            ((struct MemoryBlock*)gHeap3)->previous = 0;
            break;

        case HEAP_4:
            gHeaps[heap].length = HEAP_4_LENGTH;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap4;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap4[HEAP_4_LENGTH - 1];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap4;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap4;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct MemoryBlock*)gHeap4)->length = HEAP_4_LENGTH;
            ((struct MemoryBlock*)gHeap4)->allocId = 0;
            ((struct MemoryBlock*)gHeap4)->next = 0;
            ((struct MemoryBlock*)gHeap4)->previous = 0;
            break;

        case HEAP_GENERAL:
            gHeaps[heap].length = HEAP_GENERAL_LENGTH;
            gHeaps[heap].first = (struct MemoryBlock*)gHeapGeneral;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeapGeneral[HEAP_GENERAL_LENGTH - 1];
            gHeaps[heap].start = (struct MemoryBlock*)gHeapGeneral;
            gHeaps[heap].last = (struct MemoryBlock*)gHeapGeneral;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct MemoryBlock*)gHeapGeneral)->length = HEAP_GENERAL_LENGTH;
            ((struct MemoryBlock*)gHeapGeneral)->allocId = 0;
            ((struct MemoryBlock*)gHeapGeneral)->next = 0;
            ((struct MemoryBlock*)gHeapGeneral)->previous = 0;
            break;

        case HEAP_6:
            gHeaps[heap].length = HEAP_6_LENGTH;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap6;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap6[HEAP_6_LENGTH - 1];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap6;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap6;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct MemoryBlock*)gHeap6)->length = HEAP_6_LENGTH;
            ((struct MemoryBlock*)gHeap6)->allocId = 0;
            ((struct MemoryBlock*)gHeap6)->next = 0;
            ((struct MemoryBlock*)gHeap6)->previous = 0;
            break;

        default:
            ASSERT(0);
    }
}

void SetHeapAllocStrategy(u32 heap, u32 strategy) {
    ASSERT(strategy <= ALLOC_BEST_FIT);

    ASSERT(heap < HEAP_COUNT);

    gHeaps[heap].allocStrategy = strategy;
}

void* Alloc(u32 size, u32 allocId, u32 heap) {
    struct MemoryBlock* node;
    struct MemoryBlock* block;
    struct MemoryBlock* newBlock;
    u32 bestLength;

    ASSERT(heap < HEAP_COUNT);
    ASSERT(size != 0);
    ASSERT(allocId != 0);

    size = (size + 3) & -4;
    if (size < 8) {
        size = 8;
    }
    size += 16;

    switch (gHeaps[heap].allocStrategy) {
        case ALLOC_FIRST_FIT:
            node = gHeaps[heap].start;
            do {
                if (node->allocId == 0 && node->length >= size) {
                    if (node->length - size >= 24) {
                        newBlock = (struct MemoryBlock*)(((u8*)node) + ((size >> 2) << 2));
                        if (node->next) {
                            block = node->next;
                            node->next = newBlock;
                            newBlock->next = block;
                            block = block->previous;
                            node->next->next->previous = newBlock;
                            node->next->previous = block;
                            node->next->allocId = node->allocId;
                            node->next->length = node->length - size;
                            node->allocId = allocId;
                            node->length = size;
                            return node->data;
                        } else {
                            node->next = newBlock;
                            node->next->next = 0;
                            node->next->previous = node;
                            node->next->allocId = 0;
                            node->next->length = node->length - size;
                            node->allocId = allocId;
                            node->length = size;
                            gHeaps[heap].last = node->next;
                            return node->data;
                        }
                    }
                    node->allocId = allocId;
                    return node->data;
                }
            } while ((node = node->next));
            ASSERT(0);
            return 0;

        case ALLOC_BEST_FIT:
            node = gHeaps[heap].start;
            bestLength = -1;
            block = 0;
            do {
                if (node->allocId == 0 && node->length >= size && node->length < bestLength) {
                    block = node;
                    bestLength = node->length;
                    if (bestLength - size < 24) {
                        block->allocId = allocId;
                        return block->data;
                    }
                }
            } while ((node = node->next));
            if (block == 0) {
                ASSERT(0);
                return 0;
            } else {
                node = block;
                newBlock = (struct MemoryBlock*)(((u8*)node) + ((size >> 2) << 2));
                if (node->next) {
                    block = node->next;
                    node->next = newBlock;
                    newBlock->next = block;
                    block = block->previous;
                    node->next->next->previous = newBlock;
                    node->next->previous = block;
                    node->next->allocId = 0;
                    node->next->length = node->length - size;
                    node->allocId = allocId;
                    node->length = size;
                    return node->data;
                } else {
                    block->next = newBlock;
                    block->next->next = 0;
                    block->next->previous = block;
                    block->next->allocId = 0;
                    block->next->length = block->length - size;
                    block->allocId = allocId;
                    block->length = size;
                    gHeaps[heap].last = block->next;
                    return block->data;
                }
            }

        default:
            ASSERT(0);
            return 0;
    }
}

void FreeEx(void* pointer) {
    int i;

    for (i = 0; i < HEAP_COUNT; i++) {
        if (pointer >= (void*)gHeaps[i].first && pointer <= (void*)gHeaps[i].end) {
            Free(pointer, i);
            return;
        }
    }

    ASSERT(0);
}

void Free(void* pointer, u32 heap) {
    struct MemoryBlock* block = (struct MemoryBlock*)((int)pointer - sizeof(struct MemoryBlock));

    ASSERT(block->allocId - 1 <= 24);

    block->allocId = 0;

    if (block->previous && block->previous->allocId == 0) {
        block->previous->next = block->next;
        block->next->previous = block->previous;
        block->previous->length = block->previous->length + block->length;
        block = block->previous;
    }

    if (block->next) {
        if (block->next->allocId != 0) {
            return;
        }

        block = block->next;
        block->previous->next = block->next;
        block->next->previous = block->previous;
        block->previous->length = block->previous->length + block->length;
        gHeaps[heap].last = block->previous;
    } else {
        gHeaps[heap].last = block;
    }
}

void FreeById(u32 heap, u32 allocId) {
    struct MemoryBlock* block = gHeaps[heap].start;
    do {
        if (block->allocId == allocId) {
            Free(block->data, heap);
        }
    } while ((block = block->next));
}

u32 CheckHeap(u32 heap) {
    struct MemoryBlock* block = gHeaps[heap].start;
    u32 allocatedLength = 0;
    u32 unallocatedLength;
    u32 freeMemory;

    do {
        if (block->allocId) {
            allocatedLength += block->length;
        }
    } while ((block = block->next));

    block = gHeaps[heap].start;
    unallocatedLength = 0;

    do {
        if (!block->allocId) {
            unallocatedLength += block->length;
        }
    } while ((block = block->next));

    freeMemory = gHeaps[heap].length - allocatedLength;

    ASSERT(unallocatedLength == freeMemory);

    return freeMemory;
}

bool32 DoesMemBlockExistById(u32 heap, u32 allocId) {
    struct MemoryBlock* block = gHeaps[heap].start;
    do {
        if (block->allocId == allocId) {
            return TRUE;
        }
    } while ((block = block->next));

    return FALSE;
}

void ReplaceMemBlockId(u32 heap, u32 allocId, u32 newId) {
    struct MemoryBlock* block = gHeaps[heap].start;
    do {
        if (block->allocId == allocId) {
            block->allocId = newId;
        }
    } while ((block = block->next));
}
