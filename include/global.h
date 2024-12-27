#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"

// Fixed point 32-bit 16.16
typedef s32 fx32;
#define FX32_SHIFT 16
#define FX32_CONST(x) ((fx32)((x) * (1 << FX32_SHIFT)))
#define FX32_ONE FX32_CONST(1)

// Game specific assert.
#define HANG asm(".word 0xEE00EE00")
#define ASSERT(expr) do { if (!(expr)) HANG; } while (0)

// Puts 0xFF after a string.
#define FORMAT(s) s"\xff"

// To help with decompiling.
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) __asm__(".syntax unified\n" x "\n.syntax divided")
#define NAKED          __attribute__((naked))

#endif
