#include "global.h"

IWRAM_DATA u32 gSeedTable[625];
IWRAM_DATA u32* gSeedTablePtr;
IWRAM_DATA u32 gSeed;
IWRAM_DATA u32 dword_203F4B0;

void sub_8044DFC()
{
    gSeed = -1;
    dword_203F4B0 = REG_TM3CNT_L | 1;
    sub_8044E28(dword_203F4B0);
}

void sub_8044E28(u32 a1)
{
    u32 v1 = a1 | 1;
    s32* ptr = gSeedTable;
    u32 i;
    gSeed = 0;
    *ptr++ = v1;
    for(i = 0x270 - 1; i > 0; i--)
        *ptr++ = v1 *= 69069;
}

#ifdef NONMATCHING
void sub_8044E5C()
{
    u32 i;
    u32 v1;
    u32 v2;
    u32 v3;
    u32 v18;

    u32* ptr0 = gSeedTable;
    u32* ptr1 = &gSeedTable[2];
    u32* ptr2 = &gSeedTable[397];
    
    if (gSeed == -1)
        sub_8044E28(dword_203F4B0 + 4357);
    
    gSeed = 0x26F;
    gSeedTablePtr = &gSeedTable[1];

    v1 = gSeedTable[0];
    v2 = gSeedTable[1]; 

    for (i = 0xE3; i > 0; i--)
    {
        u32 v6 = (v2 & 0x7FFFFFFF | v1 & 0x80000000) >> 1;
        u32 v7 = *ptr2++;
        u32* v8 = ptr0++;
        u32 v9 = v7 ^ v6;
        if (v2 & 1)
            v9 ^= 0x9908B0DF;
        *v8 = v9;
        v1 = v2;
        ptr1++;
        v2 = *(ptr1 - 1);
    }

    ptr2 = gSeedTable;

    for (i = 0x18C; i > 0; i--)
    {
        u32 v6 = (v2 & 0x7FFFFFFF | v1 & 0x80000000) >> 1;
        u32 v7 = *ptr2++;
        u32* v8 = ptr0++;
        u32 v9 = v7 ^ v6;
        if (v2 & 1)
            v9 ^= 0x9908B0DF;
        *v8 = v9;
        v1 = v2;
        ptr1++;
        v2 = *(ptr1 - 1);
    }

    v3 = gSeedTable[0];
    *ptr0 = *ptr2 ^ ((gSeedTable[0] & 0x7FFFFFFF | v1 & 0x80000000) >> 1);
    if ( v3 & 1 )
        *ptr0 = *ptr0 ^ 0x9908B0DF;
    
    v18 = v3 ^ (v3 >> 11) ^ ((v3 ^ (v3 >> 11)) << 7) & 0x9D2C5680;
    return v18 ^ (v18 << 15) & 0xEFC60000 ^ ((v18 ^ (v18 << 15) & 0xEFC60000) >> 18);
}
#endif
