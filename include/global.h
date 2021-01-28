#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"

// Fixed point 32-bit 16.16
typedef s32 fx32;

// Game specific assert.
#define HANG asm(".word 0xEE00EE00")
#define ASSERT(expr) do { if (!(expr)) HANG; } while (0)

// Puts 0xFF after a string.
#define FORMAT(s) s"\xff"

// to help in decompiling
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

#endif
