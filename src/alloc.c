#include "global.h"
#include "alloc.h"
#include "common.h"

IWRAM_DATA u8 gHeap3[0x1040];
IWRAM_DATA struct Heap gHeaps[6];
IWRAM_DATA u8 gHeap1[64000];
IWRAM_DATA u8 gHeap2[90000];
IWRAM_DATA u8 gHeap4[0x1000];
IWRAM_DATA u8 gHeap5[0x8070];
IWRAM_DATA u8 gHeap6[0x800];

void sub_8027600(u32 heap)
{
    struct MemoryBlock* block = gHeaps[heap].start;
    do
        block = block->next;
    while (block);
}

void InitAllHeaps()
{
    int i;
    for (i = 0; i < 6; i++)
        InitHeap(i);
}

void InitHeap(u32 heap)
{
    switch (heap)
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
    default: ASSERT(0);
    }
}

void sub_80277D0(u32 heap, u32 a2)
{
    ASSERT(a2 < 2);

    ASSERT(heap < 6);

    gHeaps[heap].field_14 = a2;
}

#ifdef NONMATCHING
void* Alloc(u32 size, u32 allocId, u32 heap)
{
    if (heap > 5)
        HANG;

    if (size == 0)
        HANG;

    if (allocId == 0)
        HANG;

    size = (size + 3) & -4;
    if (size < 8)
        size = 8;
    size += 0x10;

    switch (gHeaps[heap].field_14)
    {
    case 0:
    {
        struct MemoryBlock* node = gHeaps[heap].start;
        do
        {
            if (node->allocId == 0 && node->length >= size)
            {
                if (node->length - size >= 0x18)
                {
                    struct MemoryBlock* v6 = (struct MemoryBlock*)(((u8*)node) + ((size >> 2) << 2));
                    if (node->next)
                    {
                        struct MemoryBlock* v9 = node->next;
                        struct MemoryBlock* prev;
                        node->next = v6;
                        v6->next = v9;
                        prev = v9->previous;
                        node->next->next->previous = v6;
                        node->next->previous = prev;
                        node->next->allocId = node->allocId;
                        node->next->length = node->length - size;
                        node->allocId = allocId;
                        node->length = size;
                        return node->data;
                    }
                    else
                    {
                        node->next = v6;
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
        } while (node = node->next);
        HANG;
        return 0;
    }
    case 1:
    {
        struct MemoryBlock* node = gHeaps[heap].start;
        int v1 = -1;
        struct MemoryBlock* v2 = 0;
        do
        {
            if (node->allocId == 0 && node->length >= size && node->length < v1)
            {
                v2 = node;
                v1 = node->length;
                if (v1 - size < 0x18)
                {
                    v2->allocId = allocId;
                    return v2->data;
                }
            }
        } while (node = node->next);
        if (v2 == 0)
        {
            HANG;
            return 0;
        }
        else
        {
            struct MemoryBlock* v3 = (struct MemoryBlock*)(((u8*)v2) + ((size >> 2) << 2));
            if (v2->next)
            {
                struct MemoryBlock* v4 = v2->next;
                struct MemoryBlock* prev;
                v2->next = v3;
                v3->next = v4;
                prev = v4->previous;
                v2->next->next->previous = v3;
                v2->next->previous = prev;
                v2->next->allocId = 0;
                v2->next->length = v2->length - size;
                v2->allocId = allocId;
                v2->length = size;
                return v2->data;
            }
            else
            {
                v2->next = v3;
                v2->next->next = 0;
                v2->next->previous = v2;
                v2->next->allocId = 0;
                v2->next->length = v2->length - size;
                v2->allocId = allocId;
                v2->length = size;
                gHeaps[heap].last = v2->next;
                return v2->data;
            }
        }
    }
    default: HANG; return 0;
    }
}
#else
NAKED
void* Alloc(u32 size, u32 allocId, u32 heap)
{
    asm_unified("               \n\
	push {r4, r5, r6, r7, lr}   \n\
	mov r7, r8                  \n\
	push {r7}                   \n\
	adds r5, r0, #0             \n\
	adds r7, r1, #0             \n\
	adds r4, r2, #0             \n\
	cmp r4, #5                  \n\
	bls _08027810               \n\
	.2byte 0xEE00, 0xEE00       \n\
_08027810:                      \n\
	cmp r5, #0                  \n\
	bne _08027818               \n\
	.2byte 0xEE00, 0xEE00       \n\
_08027818:                      \n\
	cmp r7, #0                  \n\
	bne _08027820               \n\
	.2byte 0xEE00, 0xEE00       \n\
_08027820:                      \n\
	adds r5, #3                 \n\
	movs r0, #4                 \n\
	rsbs r0, r0, #0             \n\
	ands r5, r0                 \n\
	cmp r5, #7                  \n\
	bhi _0802782E               \n\
	movs r5, #8                 \n\
_0802782E:                      \n\
	adds r5, #0x10              \n\
	ldr r1, _08027854           \n\
	lsls r2, r4, #1             \n\
	adds r0, r2, r4             \n\
	lsls r3, r0, #3             \n\
	adds r0, r1, #0             \n\
	adds r0, #0x14              \n\
	adds r0, r3, r0             \n\
	ldr r0, [r0]                \n\
	mov ip, r1                  \n\
	mov r8, r2                  \n\
	cmp r0, #0                  \n\
	beq _08027858               \n\
	cmp r0, #1                  \n\
	beq _080278B8               \n\
	.2byte 0xEE00, 0xEE00       \n\
	movs r0, #0                 \n\
	b _08027976                 \n\
	.align 2, 0                 \n\
_08027854: .4byte 0x0200ED20    \n\
_08027858:                      \n\
	mov r0, ip                  \n\
	adds r0, #4                 \n\
	adds r0, r3, r0             \n\
	ldr r2, [r0]                \n\
	lsrs r0, r5, #2             \n\
	lsls r6, r0, #2             \n\
	mov r0, ip                  \n\
	adds r0, #8                 \n\
	adds r3, r3, r0             \n\
	mov ip, r3                  \n\
_0802786C:                      \n\
	ldr r4, [r2, #4]            \n\
	cmp r4, #0                  \n\
	bne _080278AA               \n\
	ldr r0, [r2]                \n\
	cmp r0, r5                  \n\
	blo _080278AA               \n\
	subs r0, r0, r5             \n\
	cmp r0, #0x17               \n\
	bls _080278A4               \n\
	adds r3, r2, r6             \n\
	ldr r0, [r2, #0xc]          \n\
	cmp r0, #0                  \n\
	bne _08027926               \n\
	str r3, [r2, #0xc]          \n\
	str r4, [r3, #0xc]          \n\
	ldr r0, [r2, #0xc]          \n\
	str r2, [r0, #8]            \n\
	ldr r1, [r2, #0xc]          \n\
	str r4, [r1, #4]            \n\
	ldr r0, [r2]                \n\
	subs r0, r0, r5             \n\
	str r0, [r1]                \n\
	str r7, [r2, #4]            \n\
	str r5, [r2]                \n\
	mov r0, ip                  \n\
	str r1, [r0]                \n\
	adds r0, r2, #0             \n\
	b _08027974                 \n\
_080278A4:                      \n\
	str r7, [r2, #4]            \n\
	adds r0, r2, #0             \n\
	b _08027974                 \n\
_080278AA:                      \n\
	ldr r2, [r2, #0xc]          \n\
	cmp r2, #0                  \n\
	bne _0802786C               \n\
	.2byte 0xEE00, 0xEE00       \n\
	movs r0, #0                 \n\
	b _08027976                 \n\
_080278B8:                      \n\
	mov r0, ip                  \n\
	adds r0, #4                 \n\
	adds r0, r3, r0             \n\
	ldr r2, [r0]                \n\
	movs r3, #1                 \n\
	rsbs r3, r3, #0             \n\
	movs r6, #0                 \n\
_080278C6:                      \n\
	ldr r0, [r2, #4]            \n\
	cmp r0, #0                  \n\
	bne _080278E0               \n\
	ldr r0, [r2]                \n\
	cmp r0, r5                  \n\
	blo _080278E0               \n\
	cmp r0, r3                  \n\
	bhs _080278E0               \n\
	adds r6, r2, #0             \n\
	adds r3, r0, #0             \n\
	subs r0, r3, r5             \n\
	cmp r0, #0x17               \n\
	bls _0802794A               \n\
_080278E0:                      \n\
	ldr r2, [r2, #0xc]          \n\
	cmp r2, #0                  \n\
	bne _080278C6               \n\
	cmp r6, #0                  \n\
	bne _080278F2               \n\
	.2byte 0xEE00, 0xEE00       \n\
	movs r0, #0                 \n\
	b _08027976                 \n\
_080278F2:                      \n\
	adds r2, r6, #0             \n\
	lsrs r0, r5, #2             \n\
	lsls r0, r0, #2             \n\
	adds r3, r6, r0             \n\
	ldr r1, [r6, #0xc]          \n\
	cmp r1, #0                  \n\
	beq _0802794E               \n\
	adds r6, r1, #0             \n\
	str r3, [r2, #0xc]          \n\
	str r6, [r3, #0xc]          \n\
	ldr r6, [r6, #8]            \n\
	ldr r0, [r2, #0xc]          \n\
	ldr r0, [r0, #0xc]          \n\
	str r3, [r0, #8]            \n\
	ldr r0, [r2, #0xc]          \n\
	str r6, [r0, #8]            \n\
	ldr r1, [r2, #0xc]          \n\
	movs r0, #0                 \n\
	str r0, [r1, #4]            \n\
	ldr r0, [r2]                \n\
	subs r0, r0, r5             \n\
	str r0, [r1]                \n\
	str r7, [r2, #4]            \n\
	str r5, [r2]                \n\
	adds r0, r2, #0             \n\
	b _08027974                 \n\
_08027926:                      \n\
	adds r6, r0, #0             \n\
	str r3, [r2, #0xc]          \n\
	str r6, [r3, #0xc]          \n\
	ldr r6, [r6, #8]            \n\
	ldr r0, [r2, #0xc]          \n\
	ldr r0, [r0, #0xc]          \n\
	str r3, [r0, #8]            \n\
	ldr r0, [r2, #0xc]          \n\
	str r6, [r0, #8]            \n\
	ldr r1, [r2, #0xc]          \n\
	str r4, [r1, #4]            \n\
	ldr r0, [r2]                \n\
	subs r0, r0, r5             \n\
	str r0, [r1]                \n\
	str r7, [r2, #4]            \n\
	str r5, [r2]                \n\
	adds r0, r2, #0             \n\
	b _08027974                 \n\
_0802794A:                      \n\
	str r7, [r6, #4]            \n\
	b _08027972                 \n\
_0802794E:                      \n\
	str r3, [r6, #0xc]          \n\
	str r1, [r3, #0xc]          \n\
	ldr r0, [r6, #0xc]          \n\
	str r6, [r0, #8]            \n\
	ldr r2, [r6, #0xc]          \n\
	str r1, [r2, #4]            \n\
	ldr r0, [r6]                \n\
	subs r0, r0, r5             \n\
	str r0, [r2]                \n\
	str r7, [r6, #4]            \n\
	str r5, [r6]                \n\
	mov r1, r8                  \n\
	adds r0, r1, r4             \n\
	lsls r0, r0, #3             \n\
	mov r1, ip                  \n\
	adds r1, #8                 \n\
	adds r0, r0, r1             \n\
	str r2, [r0]                \n\
_08027972:                      \n\
	adds r0, r6, #0             \n\
_08027974:                      \n\
	adds r0, #0x10              \n\
_08027976:                      \n\
	pop {r3}                    \n\
	mov r8, r3                  \n\
	pop {r4, r5, r6, r7}        \n\
	pop {r1}                    \n\
	bx r1                       \n\
    ");
}
#endif

void FreeEx(void* pointer)
{
    int i;
    for (i = 0; i < 6; i++)
    {
        if (pointer >= (void*)gHeaps[i].first && pointer <= (void*)gHeaps[i].end)
        {
            Free(pointer, i);
            return;
        }
    }
    HANG;
}

void Free(void* pointer, u32 heap)
{
    struct MemoryBlock* block = (struct MemoryBlock*)(pointer - sizeof(struct MemoryBlock));

    if (block->allocId - 1 > 0x18)
        HANG;

    block->allocId = 0;

    if (block->previous && block->previous->allocId == 0)
    {
        block->previous->next = block->next;
        block->next->previous = block->previous;
        block->previous->length = block->previous->length + block->length;
        block = block->previous;
    }

    if (block->next)
    {
        if (block->next->allocId != 0)
            return;
        block = block->next;
        block->previous->next = block->next;
        block->next->previous = block->previous;
        block->previous->length = block->previous->length + block->length;
        gHeaps[heap].last = block->previous;
    }
    else
    {
        gHeaps[heap].last = block;
    }
}

void FreeById(u32 heap, u32 allocId)
{
    struct MemoryBlock* block = gHeaps[heap].start;
    do
    {
        if (block->allocId == allocId)
            Free(block->data, heap);
    } while (block = block->next);
}

u32 CheckHeap(u32 heap)
{
    struct MemoryBlock* block = gHeaps[heap].start;
    u32 allocatedLength = 0;
    u32 unallocatedLength;
    u32 freeMemory;

    do
    {
        if (block->allocId)
            allocatedLength += block->length;
    } while (block = block->next);

    block = gHeaps[heap].start;
    unallocatedLength = 0;

    do
    {
        if (!block->allocId)
            unallocatedLength += block->length;
    } while (block = block->next);

    freeMemory = gHeaps[heap].length - allocatedLength;

    if (unallocatedLength != freeMemory)
        HANG;

    return freeMemory;
}

bool32 DoesMemBlockExistById(u32 heap, u32 allocId)
{
    struct MemoryBlock* block = gHeaps[heap].start;
    do
    {
        if (block->allocId == allocId)
            return TRUE;
    } while (block = block->next);
    return FALSE;
}

void ReplaceMemBlockId(u32 heap, u32 allocId, u32 newId)
{
    struct MemoryBlock* block = gHeaps[heap].start;
    do
    {
        if (block->allocId == allocId)
            block->allocId = newId;
    } while (block = block->next);
}
