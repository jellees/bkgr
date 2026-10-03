#ifndef GUARD_ALLOC_H
#define GUARD_ALLOC_H

// How Alloc searches a heap for a free block.
enum AllocStrategy {
    ALLOC_FIRST_FIT, // First free block that is large enough (default).
    ALLOC_BEST_FIT,  // Smallest free block that is large enough.
};

enum Heaps {
    HEAP_1,
    HEAP_2,
    HEAP_3,
    HEAP_4,
    HEAP_5,
    HEAP_6,

    HEAP_COUNT
};

void InitAllHeaps();
void InitHeap(u32 heap);
void SetHeapAllocStrategy(u32 heap, u32 strategy);
void* Alloc(u32 size, u32 allocId, u32 heap);
void FreeEx(void* pointer);
void Free(void* pointer, u32 heap);
void FreeById(u32 heap, u32 allocId);
u32 CheckHeap(u32 heap);
bool32 DoesMemBlockExistById(u32 heap, u32 allocId);
void ReplaceMemBlockId(u32 heap, u32 allocId, u32 newId);

#endif
