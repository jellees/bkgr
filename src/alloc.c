#include "global.h"
#include "common.h"

struct Heap {
    u32 length;
    struct MemoryBlock* start;
    struct MemoryBlock* last;
    struct MemoryBlock* first;
    struct MemoryBlock* end;
    u32 field_14;
};

struct MemoryBlock {
    u32 length;
    u32 allocId;
    struct MemoryBlock* previous;
    struct MemoryBlock* next;
    u8 data[0];
};

u8 gHeap3[0x1040];
struct Heap gHeaps[6];
u8 gHeap1[64000];
u8 gHeap2[90000];
u8 gHeap4[0x1000];
u8 gHeap5[0x8070];
u8 gHeap6[0x800];

void InitHeap(u32 heap);
void Free(void* pointer, u32 heap);

void sub_8027600(u32 heap) {
    struct MemoryBlock* block = gHeaps[heap].start;
    do {
        block = block->next;
    } while (block);
}

void InitAllHeaps() {
    int i;
    for (i = 0; i < 6; i++) {
        InitHeap(i);
    }
}

void InitHeap(u32 heap) {
    switch (heap) {
        case 0:
            gHeaps[heap].length = 64000;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap1;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap1[63999];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap1;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap1;
            gHeaps[heap].field_14 = 0;
            ((struct MemoryBlock*)gHeap1)->length = 64000;
            ((struct MemoryBlock*)gHeap1)->allocId = 0;
            ((struct MemoryBlock*)gHeap1)->next = 0;
            ((struct MemoryBlock*)gHeap1)->previous = 0;
            break;

        case 1:
            gHeaps[heap].length = 90000;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap2;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap2[89999];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap2;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap2;
            gHeaps[heap].field_14 = 0;
            ((struct MemoryBlock*)gHeap2)->length = 90000;
            ((struct MemoryBlock*)gHeap2)->allocId = 0;
            ((struct MemoryBlock*)gHeap2)->next = 0;
            ((struct MemoryBlock*)gHeap2)->previous = 0;
            break;

        case 2:
            gHeaps[heap].length = 4160;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap3;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap3[4159];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap3;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap3;
            gHeaps[heap].field_14 = 0;
            ((struct MemoryBlock*)gHeap3)->length = 4160;
            ((struct MemoryBlock*)gHeap3)->allocId = 0;
            ((struct MemoryBlock*)gHeap3)->next = 0;
            ((struct MemoryBlock*)gHeap3)->previous = 0;
            break;

        case 3:
            gHeaps[heap].length = 4096;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap4;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap4[4095];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap4;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap4;
            gHeaps[heap].field_14 = 0;
            ((struct MemoryBlock*)gHeap4)->length = 4096;
            ((struct MemoryBlock*)gHeap4)->allocId = 0;
            ((struct MemoryBlock*)gHeap4)->next = 0;
            ((struct MemoryBlock*)gHeap4)->previous = 0;
            break;

        case 4:
            gHeaps[heap].length = 32880;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap5;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap5[32879];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap5;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap5;
            gHeaps[heap].field_14 = 0;
            ((struct MemoryBlock*)gHeap5)->length = 32880;
            ((struct MemoryBlock*)gHeap5)->allocId = 0;
            ((struct MemoryBlock*)gHeap5)->next = 0;
            ((struct MemoryBlock*)gHeap5)->previous = 0;
            break;

        case 5:
            gHeaps[heap].length = 2048;
            gHeaps[heap].first = (struct MemoryBlock*)gHeap6;
            gHeaps[heap].end = (struct MemoryBlock*)&gHeap6[2047];
            gHeaps[heap].start = (struct MemoryBlock*)gHeap6;
            gHeaps[heap].last = (struct MemoryBlock*)gHeap6;
            gHeaps[heap].field_14 = 0;
            ((struct MemoryBlock*)gHeap6)->length = 2048;
            ((struct MemoryBlock*)gHeap6)->allocId = 0;
            ((struct MemoryBlock*)gHeap6)->next = 0;
            ((struct MemoryBlock*)gHeap6)->previous = 0;
            break;

        default:
            ASSERT(0);
    }
}

void sub_80277D0(u32 heap, u32 a2) {
    ASSERT(a2 < 2);

    ASSERT(heap < 6);

    gHeaps[heap].field_14 = a2;
}

void* Alloc(u32 size, u32 allocId, u32 heap) {
    struct MemoryBlock* node;
    struct MemoryBlock* block;
    struct MemoryBlock* newBlock;
    u32 bestLength;

    ASSERT(heap < 6);
    ASSERT(size != 0);
    ASSERT(allocId != 0);

    size = (size + 3) & -4;
    if (size < 8) {
        size = 8;
    }
    size += 16;

    switch (gHeaps[heap].field_14) {
        case 0:
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

        case 1:
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

    for (i = 0; i < 6; i++) {
        if (pointer >= (void*)gHeaps[i].first && pointer <= (void*)gHeaps[i].end) {
            Free(pointer, i);
            return;
        }
    }

    ASSERT(0);
}

void Free(void* pointer, u32 heap) {
    struct MemoryBlock* block = (struct MemoryBlock*)((int)pointer - sizeof(struct MemoryBlock));

    ASSERT(block->allocId - 1 <= 0x18);

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
