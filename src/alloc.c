#include "global.h"
#include "alloc.h"

extern struct Heap gHeaps[6];

void InitHeap(int heap);


void sub_8027600(int heap)
{
    struct MemoryBlock *block = gHeaps[heap].start;
    do
        block = block->next;
    while (block);
}

void InitAllHeaps()
{
    int i;
    for(i = 0; i < 6; i++)
        InitHeap(i);
}
