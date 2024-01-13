#ifndef GUARD_ALLOC_H
#define GUARD_ALLOC_H

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
