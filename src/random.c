#include "global.h"
#include "common.h"

IWRAM_DATA u32 gSeedTable[625];
IWRAM_DATA u32* gSeedTablePtr;
IWRAM_DATA s32 gSeed;
IWRAM_DATA u32 dword_203F4B0;

void sub_8044E28(u32 a1);

void sub_8044DFC(void) {
    gSeed = -1;
    dword_203F4B0 = REG_TM3CNT_L | 1;
    sub_8044E28(dword_203F4B0);
}

void sub_8044E28(u32 a1) {
    u32 v1 = a1 | 1;
    s32* ptr = gSeedTable;
    u32 i;
    gSeed = 0;
    *ptr++ = v1;
    for (i = 0x270 - 1; i > 0; i--) {
        *ptr++ = v1 *= 69069;
    }
}

u32 sub_8044E5C(void) {
    u32* p0 = gSeedTable;
    u32* p2 = &gSeedTable[2];
    u32* pM = &gSeedTable[397];
    u32 s0;
    u32 s1;
    s32 j;

    if (gSeed < -1) {
        sub_8044E28(dword_203F4B0 + 4357);
    }

    gSeed = 624 - 1;
    gSeedTablePtr = &gSeedTable[1];

    for (s0 = gSeedTable[0], s1 = gSeedTable[1], j = 624 - 397 + 1; --j; s0 = s1, s1 = *p2++) {
        *p0++ = *pM++ ^ (((s0 & 0x80000000) | (s1 & 0x7FFFFFFF)) >> 1) ^ ((s1 & 1) ? 0x9908B0DF : 0);
    }

    for (pM = gSeedTable, j = 397; --j; s0 = s1, s1 = *p2++) {
        *p0++ = *pM++ ^ (((s0 & 0x80000000) | (s1 & 0x7FFFFFFF)) >> 1) ^ ((s1 & 1) ? 0x9908B0DF : 0);
    }

    s1 = gSeedTable[0];
    *p0 = *pM ^ (((s0 & 0x80000000) | (s1 & 0x7FFFFFFF)) >> 1) ^ ((s1 & 1) ? 0x9908B0DF : 0);
    s1 ^= (s1 >> 11);
    s1 ^= (s1 << 7) & 0x9D2C5680;
    s1 ^= (s1 << 15) & 0xEFC60000;
    return s1 ^ (s1 >> 18);
}

static inline u32 random_next(void) {
    u32 y;

    if (--gSeed < 0) {
        return sub_8044E5C();
    }

    y = *gSeedTablePtr++;
    y ^= (y >> 11);
    y ^= (y << 7) & 0x9D2C5680;
    y ^= (y << 15) & 0xEFC60000;
    return y ^ (y >> 18);
}

int RandomMinMax(int min, int max) {
    u32 idx;
    u32 value;

    ASSERT(min != max);
    ASSERT((u32)min <= (u32)max);

    idx = sub_80039DC(dword_80AF500, 32, max - min);
    ASSERT(idx < 32);
    if (dword_80AF500[idx] < max - min) {
        idx++;
    }

    do {
        value = random_next() & dword_80AF500[idx];
    } while (value > max - min);

    return value + min;
}
