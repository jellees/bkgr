#include "global.h"
#include "common.h"
#include "heap.h"

#define HEAP_1_SIZE       64000
#define HEAP_2_SIZE       90000
#define HEAP_3_SIZE       4160
#define HEAP_4_SIZE       4096
#define HEAP_GENERAL_SIZE 32880
#define HEAP_6_SIZE       2048

struct Heap {
    u32 size;
    struct HeapBlock* head;     // First block in the block list.
    struct HeapBlock* tail;     // Last block in the block list.
    struct HeapBlock* memStart; // First byte of the heap's memory.
    struct HeapBlock* memEnd;   // Last byte of the heap's memory.
    u32 allocStrategy;
};

struct HeapBlock {
    u32 size;
    u32 tag;
    struct HeapBlock* previous;
    struct HeapBlock* next;
    u8 data[0];
};

u8 gHeap3[HEAP_3_SIZE];
struct Heap gHeaps[HEAP_COUNT];
u8 gHeap1[HEAP_1_SIZE];
u8 gHeap2[HEAP_2_SIZE];
u8 gHeap4[HEAP_4_SIZE];
u8 gHeapGeneral[HEAP_GENERAL_SIZE];
u8 gHeap6[HEAP_6_SIZE];

void heap_dump(u32 heap) {
    struct HeapBlock* block = gHeaps[heap].head;
    do {
        // There was most likely a debug print here.
        block = block->next;
    } while (block);
}

void heap_init_all() {
    int i;
    for (i = 0; i < HEAP_COUNT; i++) {
        heap_init(i);
    }
}

void heap_init(u32 heap) {
    switch (heap) {
        case HEAP_1:
            gHeaps[heap].size = HEAP_1_SIZE;
            gHeaps[heap].memStart = (struct HeapBlock*)gHeap1;
            gHeaps[heap].memEnd = (struct HeapBlock*)&gHeap1[HEAP_1_SIZE - 1];
            gHeaps[heap].head = (struct HeapBlock*)gHeap1;
            gHeaps[heap].tail = (struct HeapBlock*)gHeap1;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct HeapBlock*)gHeap1)->size = HEAP_1_SIZE;
            ((struct HeapBlock*)gHeap1)->tag = 0;
            ((struct HeapBlock*)gHeap1)->next = 0;
            ((struct HeapBlock*)gHeap1)->previous = 0;
            break;

        case HEAP_2:
            gHeaps[heap].size = HEAP_2_SIZE;
            gHeaps[heap].memStart = (struct HeapBlock*)gHeap2;
            gHeaps[heap].memEnd = (struct HeapBlock*)&gHeap2[HEAP_2_SIZE - 1];
            gHeaps[heap].head = (struct HeapBlock*)gHeap2;
            gHeaps[heap].tail = (struct HeapBlock*)gHeap2;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct HeapBlock*)gHeap2)->size = HEAP_2_SIZE;
            ((struct HeapBlock*)gHeap2)->tag = 0;
            ((struct HeapBlock*)gHeap2)->next = 0;
            ((struct HeapBlock*)gHeap2)->previous = 0;
            break;

        case HEAP_3:
            gHeaps[heap].size = HEAP_3_SIZE;
            gHeaps[heap].memStart = (struct HeapBlock*)gHeap3;
            gHeaps[heap].memEnd = (struct HeapBlock*)&gHeap3[HEAP_3_SIZE - 1];
            gHeaps[heap].head = (struct HeapBlock*)gHeap3;
            gHeaps[heap].tail = (struct HeapBlock*)gHeap3;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct HeapBlock*)gHeap3)->size = HEAP_3_SIZE;
            ((struct HeapBlock*)gHeap3)->tag = 0;
            ((struct HeapBlock*)gHeap3)->next = 0;
            ((struct HeapBlock*)gHeap3)->previous = 0;
            break;

        case HEAP_4:
            gHeaps[heap].size = HEAP_4_SIZE;
            gHeaps[heap].memStart = (struct HeapBlock*)gHeap4;
            gHeaps[heap].memEnd = (struct HeapBlock*)&gHeap4[HEAP_4_SIZE - 1];
            gHeaps[heap].head = (struct HeapBlock*)gHeap4;
            gHeaps[heap].tail = (struct HeapBlock*)gHeap4;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct HeapBlock*)gHeap4)->size = HEAP_4_SIZE;
            ((struct HeapBlock*)gHeap4)->tag = 0;
            ((struct HeapBlock*)gHeap4)->next = 0;
            ((struct HeapBlock*)gHeap4)->previous = 0;
            break;

        case HEAP_GENERAL:
            gHeaps[heap].size = HEAP_GENERAL_SIZE;
            gHeaps[heap].memStart = (struct HeapBlock*)gHeapGeneral;
            gHeaps[heap].memEnd = (struct HeapBlock*)&gHeapGeneral[HEAP_GENERAL_SIZE - 1];
            gHeaps[heap].head = (struct HeapBlock*)gHeapGeneral;
            gHeaps[heap].tail = (struct HeapBlock*)gHeapGeneral;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct HeapBlock*)gHeapGeneral)->size = HEAP_GENERAL_SIZE;
            ((struct HeapBlock*)gHeapGeneral)->tag = 0;
            ((struct HeapBlock*)gHeapGeneral)->next = 0;
            ((struct HeapBlock*)gHeapGeneral)->previous = 0;
            break;

        case HEAP_6:
            gHeaps[heap].size = HEAP_6_SIZE;
            gHeaps[heap].memStart = (struct HeapBlock*)gHeap6;
            gHeaps[heap].memEnd = (struct HeapBlock*)&gHeap6[HEAP_6_SIZE - 1];
            gHeaps[heap].head = (struct HeapBlock*)gHeap6;
            gHeaps[heap].tail = (struct HeapBlock*)gHeap6;
            gHeaps[heap].allocStrategy = ALLOC_FIRST_FIT;
            ((struct HeapBlock*)gHeap6)->size = HEAP_6_SIZE;
            ((struct HeapBlock*)gHeap6)->tag = 0;
            ((struct HeapBlock*)gHeap6)->next = 0;
            ((struct HeapBlock*)gHeap6)->previous = 0;
            break;

        default:
            ASSERT(0);
    }
}

void heap_set_strategy(u32 heap, u32 strategy) {
    ASSERT(strategy <= ALLOC_BEST_FIT);

    ASSERT(heap < HEAP_COUNT);

    gHeaps[heap].allocStrategy = strategy;
}

void* heap_alloc(u32 size, u32 tag, u32 heap) {
    struct HeapBlock* node;
    struct HeapBlock* block;
    struct HeapBlock* newBlock;
    u32 bestLength;

    ASSERT(heap < HEAP_COUNT);
    ASSERT(size != 0);
    ASSERT(tag != 0);

    size = (size + 3) & -4;
    if (size < 8) {
        size = 8;
    }
    size += 16;

    switch (gHeaps[heap].allocStrategy) {
        case ALLOC_FIRST_FIT:
            node = gHeaps[heap].head;
            do {
                if (node->tag == 0 && node->size >= size) {
                    if (node->size - size >= 24) {
                        newBlock = (struct HeapBlock*)(((u8*)node) + ((size >> 2) << 2));
                        if (node->next) {
                            block = node->next;
                            node->next = newBlock;
                            newBlock->next = block;
                            block = block->previous;
                            node->next->next->previous = newBlock;
                            node->next->previous = block;
                            node->next->tag = node->tag;
                            node->next->size = node->size - size;
                            node->tag = tag;
                            node->size = size;
                            return node->data;
                        } else {
                            node->next = newBlock;
                            node->next->next = 0;
                            node->next->previous = node;
                            node->next->tag = 0;
                            node->next->size = node->size - size;
                            node->tag = tag;
                            node->size = size;
                            gHeaps[heap].tail = node->next;
                            return node->data;
                        }
                    }
                    node->tag = tag;
                    return node->data;
                }
            } while ((node = node->next));
            ASSERT(0);
            return 0;

        case ALLOC_BEST_FIT:
            node = gHeaps[heap].head;
            bestLength = -1;
            block = 0;
            do {
                if (node->tag == 0 && node->size >= size && node->size < bestLength) {
                    block = node;
                    bestLength = node->size;
                    if (bestLength - size < 24) {
                        block->tag = tag;
                        return block->data;
                    }
                }
            } while ((node = node->next));

            if (block == 0) {
                ASSERT(0);
                return 0;
            } else {
                node = block;
                newBlock = (struct HeapBlock*)(((u8*)node) + ((size >> 2) << 2));
                if (node->next) {
                    block = node->next;
                    node->next = newBlock;
                    newBlock->next = block;
                    block = block->previous;
                    node->next->next->previous = newBlock;
                    node->next->previous = block;
                    node->next->tag = 0;
                    node->next->size = node->size - size;
                    node->tag = tag;
                    node->size = size;
                    return node->data;
                } else {
                    block->next = newBlock;
                    block->next->next = 0;
                    block->next->previous = block;
                    block->next->tag = 0;
                    block->next->size = block->size - size;
                    block->tag = tag;
                    block->size = size;
                    gHeaps[heap].tail = block->next;
                    return block->data;
                }
            }

        default:
            ASSERT(0);
            return 0;
    }
}

void heap_free_any(void* pointer) {
    int i;

    for (i = 0; i < HEAP_COUNT; i++) {
        if (pointer >= (void*)gHeaps[i].memStart && pointer <= (void*)gHeaps[i].memEnd) {
            heap_free(pointer, i);
            return;
        }
    }

    ASSERT(0);
}

void heap_free(void* pointer, u32 heap) {
    struct HeapBlock* block = (struct HeapBlock*)((int)pointer - sizeof(struct HeapBlock));

    ASSERT(block->tag - 1 <= 24);

    block->tag = 0;

    if (block->previous && block->previous->tag == 0) {
        block->previous->next = block->next;
        block->next->previous = block->previous;
        block->previous->size = block->previous->size + block->size;
        block = block->previous;
    }

    if (block->next) {
        if (block->next->tag != 0) {
            return;
        }

        block = block->next;
        block->previous->next = block->next;
        block->next->previous = block->previous;
        block->previous->size = block->previous->size + block->size;
        gHeaps[heap].tail = block->previous;
    } else {
        gHeaps[heap].tail = block;
    }
}

void heap_free_by_tag(u32 heap, u32 tag) {
    struct HeapBlock* block = gHeaps[heap].head;
    do {
        if (block->tag == tag) {
            heap_free(block->data, heap);
        }
    } while ((block = block->next));
}

/**
 * Verifies that the used and free block sizes add up.
 * \return Number of free bytes.
 */
u32 heap_check(u32 heap) {
    struct HeapBlock* block = gHeaps[heap].head;
    u32 allocatedLength = 0;
    u32 unallocatedLength;
    u32 freeMemory;

    do {
        if (block->tag) {
            allocatedLength += block->size;
        }
    } while ((block = block->next));

    block = gHeaps[heap].head;
    unallocatedLength = 0;

    do {
        if (!block->tag) {
            unallocatedLength += block->size;
        }
    } while ((block = block->next));

    freeMemory = gHeaps[heap].size - allocatedLength;

    ASSERT(unallocatedLength == freeMemory);

    return freeMemory;
}

bool32 heap_has_tag(u32 heap, u32 tag) {
    struct HeapBlock* block = gHeaps[heap].head;
    do {
        if (block->tag == tag) {
            return TRUE;
        }
    } while ((block = block->next));

    return FALSE;
}

void heap_retag(u32 heap, u32 tag, u32 newTag) {
    struct HeapBlock* block = gHeaps[heap].head;
    do {
        if (block->tag == tag) {
            block->tag = newTag;
        }
    } while ((block = block->next));
}
