/**
 * \file oam_sizes.c
 * Unreferenced table. Its contents match the GBA OAM sprite widths indexed by
 * [shape][size], so it is likely left over from a removed sprite helper.
 */

#include "global.h"

const u8 gOamWidths[3][4] = {
    { 8, 16, 32, 64 },  // square
    { 16, 32, 32, 64 }, // horizontal
    { 8, 8, 16, 32 },   // vertical
};
