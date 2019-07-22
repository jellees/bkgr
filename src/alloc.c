#include "global.h"
#include "alloc.h"

extern struct Heap gHeaps[6];


void sub_8027600(int heap)
{
    struct MemoryBlock *block = gHeaps[heap].start;
    do
        block = block->next;
    while (block);
}
