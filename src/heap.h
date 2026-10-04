#ifndef GUARD_HEAP_H
#define GUARD_HEAP_H

// How heap_alloc searches a heap for a free block.
enum AllocStrategy {
    ALLOC_FIRST_FIT, // First free block that is large enough (default).
    ALLOC_BEST_FIT,  // Smallest free block that is large enough.
};

enum Heaps {
    HEAP_1,
    HEAP_2,
    HEAP_3,
    HEAP_4,
    HEAP_GENERAL,
    HEAP_6,

    HEAP_COUNT
};

void heap_init_all();
void heap_init(u32 heap);
void heap_set_strategy(u32 heap, u32 strategy);
void* heap_alloc(u32 size, u32 tag, u32 heap);
void heap_free_any(void* pointer);
void heap_free(void* pointer, u32 heap);
void heap_free_by_tag(u32 heap, u32 tag);
u32 heap_check(u32 heap);
bool32 heap_has_tag(u32 heap, u32 tag);
void heap_retag(u32 heap, u32 tag, u32 newTag);

#endif
