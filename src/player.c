#include "global.h"
#include "common.h"

void sub_800A740(struct Vec3fx* a1, struct Vec3fx* a2)
{
    if (!dword_203DFC4)
        return;

    if (byte_203DFE6)
    {
        if (gPlayerStateSettings[gPlayerState] & 0x400)
        {
            u32 y = dword_203DFC4->field_98;
            a1->y = y;
            a2->y = y;
        }
        else
        {
            u32 y;
            struct Vec3fx a;
            sub_8062444(dword_203DFC0[dword_203DFC4->field_1E], &a.x, &a.y, &a.z);

            a1->x += a.x;
            a1->z += a.z;
            a2->x = a1->x;
            a2->z = a1->z;

            y = dword_203DFC4->field_98;
            a1->y = y;
            a2->y = y;
        }
    }
    else if (byte_203DFE7)
    {
        a2->y = dword_203DFC4->field_98;
    }
}