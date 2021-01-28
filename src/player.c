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

bool32 sub_800A7DC(struct Vec3fx* a1, struct Vec3fx* a2)
{
    if (byte_203DFE6)
    {
        if (gPlayerStateSettings[gPlayerState] & 0x400)
        {
            if (!sub_8018BB0(&gPlayerSprite))
                return TRUE;

            gPlayerPos.y = a1->y;
            stru_30032DC.y = gPlayerPos.y;
            sub_800388C(dword_2000FC8, 0, 0);
        }
        else
        {
            if (!byte_30029A4)
            {
                gPlayerPos.x = a1->x;
                gPlayerPos.z = a1->z;
                stru_30032DC.x = gPlayerPos.x;
                stru_30032DC.z = gPlayerPos.z;
            }
            gPlayerPos.y = a1->y;
            stru_30032DC.y = gPlayerPos.y;
        }

        return TRUE;
    }
    else if (byte_203DFE7)
    {
        stru_30032DC.y = a2->y;

        if (!byte_30029A4)
        {
            gPlayerPos.x = a1->x;
            gPlayerPos.y = a1->y;
            gPlayerPos.z = a1->z;
            stru_30032DC.x = a2->x;
            stru_30032DC.z = a2->z;
        }
    }

    return FALSE;
}

#ifdef NONMATCHING

bool32 sub_800A8B4()
{
    if (gGameStatus.health != 0 && stru_30028FC.field_0 == 0 && stru_3002950.field_5 != 0
        && stru_30028FC.field_5 == stru_3002950.field_5)
    {
        if (stru_3002950.field_5 & 0x80 && gPlayerStateSettings[gPlayerState] & 0x100
            && gPlayerStateSettings[gPlayerState] & 0x80)
        {
            ASSERT((stru_3002950.field_5 & 0x7F) - 1 <= 0x25);

            if (sub_0800BCD4(&stru_3002950))
                return TRUE;
        }
        else
        {
            ASSERT(stru_30028FC.field_5 - 1 <= 0x25);

            if (sub_0800BCD4(&stru_30028FC))
            {
                if (gPlayerStateSettings[gPlayerState] & 0x100)
                    sub_8017A54();
                return TRUE;
            }
        }
    }

    return FALSE;
}

bool32 sub_800A974()
{
    if (gGameStatus.health == 0)
        return FALSE;

    if (stru_30028FC.field_2 == 2 && stru_3002950.floorType == 2)
    {
        if (byte_20020B1 != 0 && byte_20020B1 != 4)
        {
            sub_80192D4(16, -1, 0);
            return FALSE;
        }

        sub_8017C50();
    }
    else
    {
        if (gPlayerStateSettings[gPlayerState] & 0x200)
            sub_8017D9C();
    }

    return TRUE;
}

#endif