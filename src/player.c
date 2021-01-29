#include "global.h"
#include "sprite.h"
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
            if (!stru_30029A4.field_0)
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

        if (!stru_30029A4.field_0)
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

bool32 sub_0800A8B4()
{
    if (gGameStatus.health != 0 && stru_30028FC.field_0 != 0 && stru_3002950.warpDestRoom != 0
        && stru_30028FC.warpDestRoom == stru_3002950.warpDestRoom)
    {
        if (stru_3002950.warpDestRoom & 0x80)
        {
            if (gPlayerStateSettings[gPlayerState] & 0x100 && !(gPlayerStateSettings[gPlayerState] & 0x80))
            {
                ASSERT((stru_3002950.warpDestRoom & 0x7F) - 1 <= 0x25);

                if (sub_0800BCD4(&stru_3002950))
                    return TRUE;
            }
        }
        else
        {
            ASSERT(stru_30028FC.warpDestRoom - 1 <= 0x25);

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

    if (stru_30028FC.floorType == 2 && stru_3002950.floorType == 2)
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

void sub_800A9F0()
{
    if (!byte_3003588)
    {
        sub_8003894(dword_2000FC8, dword_80CC7EC[stru_30028FC.floorType]);
        sub_80038DC(dword_2000FC8, stru_30028FC.field_28, stru_30028FC.field_2C, stru_30028FC.floorType == 10 ? 1 : 0);
    }
    else
    {
        sub_8003894(dword_2000FC8, dword_80CC818[stru_30028FC.floorType]);
        sub_80038DC(dword_2000FC8, stru_30028FC.field_28, stru_30028FC.field_2C, 0);
    }
}

void sub_800AA6C(struct Vec3fx* a1, struct Vec3fx* a2, struct Vec3fx* a3, struct Vec3fx* a4)
{
    struct Vec3fx a;
    sub_80038C4(dword_2000FC8, &a.x, &a.y, &a.z);

    a3->x = a.x >> 8;
    a3->y = a.y >> 8;
    a3->z = a.z >> 8;

    a1->x = gPlayerPos.x + a.x;
    a2->x = stru_30032DC.x + a.x;

    if (!(gPlayerStateSettings[gPlayerState] & 0x40))
    {
        a1->y = gPlayerPos.y + a.y;
        if (a1->y >= dword_2001088)
            a1->y = gPlayerPos.y;
        a2->y = stru_30032DC.y;
        a1->z = gPlayerPos.z + a.z;
        a2->z = stru_30032DC.z + a.z;
    }
    else
    {
        a1->y = gPlayerPos.y + a.z;
        a2->y = stru_30032DC.y;
        a1->z = gPlayerPos.z;
        a2->z = stru_30032DC.z;
    }

    if (a1->y < a2->y)
        a1->y = a2->y;

    if (a1->y < 0)
        a1->y = 0;

    a4->x = a1->x - gPlayerPos.x;
    a4->y = a1->y - gPlayerPos.y;
    a4->z = a1->z - gPlayerPos.z;
}

bool32 sub_800AB54(struct Vec3fx* a1, struct Vec3fx* a2)
{
    if (!(gPlayerStateSettings[gPlayerState] & 0x400))
    {
        struct Vec3fx a;
        a.x = a1->x;
        a.y = a1->y + 0x120000;
        a.z = a1->z;

        if (sub_800953C(&a))
        {
            sub_08009208(a1, &stru_3002950);
            gPlayerPos.y = a1->y;
            stru_30032DC.y = stru_3002950.floorHeight;
            gPlayerPos.x = a1->x;
            stru_30032DC.x = a2->x;

            return TRUE;
        }
    }
    else
    {
        sub_8017F14();
    }

    return FALSE;
}

bool32 sub_800ABD4(struct Vec3fx* a1, struct Vec3fx* a2)
{
    if (stru_30028FC.field_0)
    {
        if (stru_30028FC.floorType == 2 && byte_20020B1 != 0 && byte_20020B1 != 4 && gGameStatus.health != 0)
        {
            if (!byte_20020BC)
            {
                sub_80192D4(16, -1, 0);
            }

            return FALSE;
        }

        if (stru_30028FC.field_4E && !byte_200108E && byte_20020B1 != 4 && byte_20020B1 != 3
            && !(gPlayerStateSettings[gPlayerState] & 0x1000))
        {
            sub_80192D4(stru_30028FC.field_4E, -1, 1);
            byte_200108E = 1;
            word_2001092 = stru_30028FC.field_4F;
            byte_200108D = 1;
            word_2001090 = stru_30028FC.field_4F;
            gPlayerSprite.field_10 = 1;

            return FALSE;
        }
    }

    if (stru_30029A4.field_0 && stru_30029A4.floorType == 6 && stru_200209A.field_12 && !byte_20020B1
        && gGameStatus.health != 0)
    {
        struct Vec3fx a;
        a.x = a1->x;
        a.y = a1->y + 0x120000;
        a.z = a1->z;
        if (sub_800953C(&a))
        {
            if (sub_8018BB0(&gPlayerSprite))
            {
                if (audio_fx_still_active(dword_20020B4) && byte_203EA89)
                {
                    audio_halt_fx(dword_20020B4);
                }

                sub_8017E1C();
                gPlayerPos.y = a1->y;
                stru_30032DC.y = stru_3002950.floorHeight;
                gPlayerPos.x = a1->x;
                stru_30032DC.x = a2->x;
            }

            return FALSE;
        }
    }

    return TRUE;
}
