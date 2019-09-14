#ifndef GUARD_ALLOC_H
#define GUARD_ALLOC_H

#include "gba/gba.h"

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

extern void Free(void*, u32);
extern void* Alloc(u32 size, u32 allocId, u32 heap);

#endif