#include "global.h"
#include "common.h"
#include "random.h"

IWRAM_DATA u32 gRandomState[625];
IWRAM_DATA u32* gRandomStatePtr;
IWRAM_DATA s32 gRandomLeft;
IWRAM_DATA u32 gRandomSeed;

static const u32 dRandomMasks[32] = {
    0x00000001, 0x00000003, 0x00000007, 0x0000000F, 0x0000001F, 0x0000003F, 0x0000007F, 0x000000FF,
    0x000001FF, 0x000003FF, 0x000007FF, 0x00000FFF, 0x00001FFF, 0x00003FFF, 0x00007FFF, 0x0000FFFF,
    0x0001FFFF, 0x0003FFFF, 0x0007FFFF, 0x000FFFFF, 0x001FFFFF, 0x003FFFFF, 0x007FFFFF, 0x00FFFFFF,
    0x01FFFFFF, 0x03FFFFFF, 0x07FFFFFF, 0x0FFFFFFF, 0x1FFFFFFF, 0x3FFFFFFF, 0x7FFFFFFF, 0xFFFFFFFF,
};

void random_init(void) {
    gRandomLeft = -1;
    gRandomSeed = REG_TM3CNT_L | 1;
    random_seed(gRandomSeed);
}

/**
 * Fills the Mersenne Twister state table from a single seed.
 *
 * This is seedMT() from Shawn Cokus's implementation.
 * \param seed Any 32-bit value. The low bit is ignored.
 */
void random_seed(u32 seed) {
    u32 x = seed | 1;
    s32* ptr = gRandomState;
    u32 i;
    gRandomLeft = 0;
    *ptr++ = x;
    for (i = 0x270 - 1; i > 0; i--) {
        *ptr++ = x *= 69069;
    }
}

/**
 * Regenerates the whole state table and returns the first new random number.
 *
 * The generator is the Mersenne Twister MT19937 (Matsumoto & Nishimura, 1998)
 * in the form of Shawn Cokus's optimized implementation, where this function is
 * reloadMT().
 * \return The next random 32-bit number.
 */
u32 random_reload(void) {
    u32* p0 = gRandomState;
    u32* p2 = &gRandomState[2];
    u32* pM = &gRandomState[397];
    u32 s0;
    u32 s1;
    s32 j;

    if (gRandomLeft < -1) {
        random_seed(gRandomSeed + 4357);
    }

    gRandomLeft = 624 - 1;
    gRandomStatePtr = &gRandomState[1];

    for (s0 = gRandomState[0], s1 = gRandomState[1], j = 624 - 397 + 1; --j; s0 = s1, s1 = *p2++) {
        *p0++ = *pM++ ^ (((s0 & 0x80000000) | (s1 & 0x7FFFFFFF)) >> 1) ^ ((s1 & 1) ? 0x9908B0DF : 0);
    }

    for (pM = gRandomState, j = 397; --j; s0 = s1, s1 = *p2++) {
        *p0++ = *pM++ ^ (((s0 & 0x80000000) | (s1 & 0x7FFFFFFF)) >> 1) ^ ((s1 & 1) ? 0x9908B0DF : 0);
    }

    s1 = gRandomState[0];
    *p0 = *pM ^ (((s0 & 0x80000000) | (s1 & 0x7FFFFFFF)) >> 1) ^ ((s1 & 1) ? 0x9908B0DF : 0);
    s1 ^= (s1 >> 11);
    s1 ^= (s1 << 7) & 0x9D2C5680;
    s1 ^= (s1 << 15) & 0xEFC60000;
    return s1 ^ (s1 >> 18);
}

static inline u32 random_next(void) {
    u32 y;

    if (--gRandomLeft < 0) {
        return random_reload();
    }

    y = *gRandomStatePtr++;
    y ^= (y >> 11);
    y ^= (y << 7) & 0x9D2C5680;
    y ^= (y << 15) & 0xEFC60000;
    return y ^ (y >> 18);
}

/**
 * Returns a uniformly distributed random number in [min, max], both ends included.
 * \return A random number from min to max.
 */
int random_range(int min, int max) {
    u32 idx;
    u32 value;

    ASSERT(min != max);
    ASSERT((u32)min <= (u32)max);

    idx = sub_80039DC(dRandomMasks, 32, max - min);
    ASSERT(idx < 32);
    if (dRandomMasks[idx] < max - min) {
        idx++;
    }

    do {
        value = random_next() & dRandomMasks[idx];
    } while (value > max - min);

    return value + min;
}
