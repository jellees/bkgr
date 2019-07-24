#include "global.h"
#include "alloc.h"

extern u8 gHeap3[1];
extern struct Heap gHeaps[6];
extern u8 gHeap1[1];
extern u8 gHeap2[1];
extern u8 gHeap4[1];
extern u8 gHeap5[1];
extern u8 gHeap6[1];

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

void InitHeap(int heap)
{
    switch(heap)
    {
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
            HANG;
    }
}
