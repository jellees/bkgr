#ifndef GUARD_ALLOC_H
#define GUARD_ALLOC_H

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

void InitAllHeaps();
void InitHeap(u32 heap);
void* Alloc(u32 size, u32 allocId, u32 heap);
void FreeEx(void* pointer);
void Free(void* pointer, u32 heap);
void FreeById(u32 heap, u32 allocId);
u32 CheckHeap(u32 heap);
bool32 DoesMemBlockExistById(u32 heap, u32 allocId);
void ReplaceMemBlockId(u32 heap, u32 allocId, u32 newId);

#endif
