#include "global.h"
#include "alloc.h"
#include "common.h"

extern u16 sub_80645D4(int a, u8* b);
extern u16 sub_8064684(int a, u8* b);
extern u16 sub_8064760(int a, u8* b);

void sub_80447C4() {
    sub_80643E8(64);
    sub_8064450(3, &gFunctionArray[6]);
    dword_203EADC = (u8*)Alloc(0x7F8u, 9, 4);
    DmaFill32(0, dword_203EADC, 510);
    REG_IME = 0;
    SyncVblank();
    SyncVblank();
    audio_pause();
    byte_203EAD4 = 1;
    byte_203EAD8 = 31;
}

void sub_8044828() {
    gFunctionArray[6] = 0x800A4A1;
    Free(dword_203EADC, 4);
    REG_IME = 1;
    byte_203EAD4 = 0;
}

bool32 sub_8044860() {
    u8* v1;
    u16 sum1, sum2;

    sub_80447C4();

    v1 = dword_203EADC;

    word_203EAD6 = 0;
    byte_203EAE0[0] = 0;
    byte_203EAE0[1] = 1;
    byte_203EAE0[2] = 2;
    byte_203EAE3 = 3;

    if (sub_80645D4(0, v1)) {
        ASSERT(0);
        sub_8044828();
        return FALSE;
    }

    sum1 = v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5];
    sum2 = v1[7] << 8 | v1[6];

    if (sum2 != sum1) {
        sub_8044828();
        return FALSE;
    }

    if (v1[0] != 0x84 || v1[1] != 0x48) {
        sub_8044828();
        return FALSE;
    }

    word_203EAD6 = (v1[4] << 8) | v1[3];
    if (v1[2] != byte_203EAD8) {
        sub_8044828();
        return FALSE;
    }

    if (v1[5] > 5) {
        sub_8044828();
        return FALSE;
    }

    gPauseMenuLanguage = v1[5];

    if (sub_80645D4(1, dword_203EADC)) {
        ASSERT(0);
        sub_8044828();
        return FALSE;
    }

    byte_203EAE0[0] = v1[0];
    byte_203EAE0[1] = v1[1];
    byte_203EAE0[2] = v1[2];
    byte_203EAE3 = v1[3];

    ASSERT(byte_203EAE0[0] < 4 && byte_203EAE0[1] < 4 && byte_203EAE0[2] < 4 && byte_203EAE3 < 4);

    ASSERT(byte_203EAE0[0] != byte_203EAE0[1] && byte_203EAE0[0] != byte_203EAE0[2]
           && byte_203EAE0[0] != byte_203EAE3);

    ASSERT(byte_203EAE0[1] != byte_203EAE0[2] && byte_203EAE0[1] != byte_203EAE3);

    ASSERT(byte_203EAE0[2] != byte_203EAE3);

    sub_8044828();
    return TRUE;
}

#ifdef NONMATCHING

bool32 sub_80449B0(u32 a1, int a2) {
    u8* v1;
    s32 v16;
    u32 v17;
    int i;
    u32 v8;
    u8 tmp1;

    sub_80447C4();

    v1 = dword_203EADC;

    if (a2) {
        u16 v2;

        v1[0] = 0x84;
        v1[1] = 0x48;
        v1[2] = byte_203EAD8;
        v2 = v1[2];

        v1[3] = word_203EAD6;
        v2 += 0xCC;
        v2 += v1[3];

        v1[4] = word_203EAD6 >> 8;
        v2 += v1[4];

        v1[5] = gPauseMenuLanguage;
        v2 += v1[5];

        v1[6] = v2;
        v1[7] = v2 >> 8;

        if (sub_8064684(0, dword_203EADC)) {
            HANG;
            sub_8044828();
            return FALSE;
        }

        if (sub_8064760(0, dword_203EADC)) {
            HANG;
            sub_8044828();
            return FALSE;
        }
    }

    v16 = 0;
    v17 = 0;
    v1[v16] = 0x84;
    v17 += v1[v16++];
    v1[v16] = 72;
    v17 += v1[v16++];
    v1[v16] = byte_203EAD8;
    v17 += v1[v16++];
    v1[v16] = word_203EAD6;
    v17 += v1[v16++];
    v1[v16] = word_203EAD6 >> 8;
    v17 += v1[v16++];

    sub_8034970(v1, &v16, &v17);
    sub_800E204(v1, &v16, &v17);
    sub_80164E0(v1, &v16, &v17);

    v1[v16++] = v17;
    v1[v16++] = v17 >> 8;
    v1[v16++] = v17 >> 16;
    v1[v16++] = v17 >> 24;

    if (v16 > 0x7F7)
        HANG;

    if (a1 > 2)
        HANG;

    v8 = dword_80AF4F0[byte_203EAE3];
    for (i = 0; i < 0xFF; i++) {
        if (sub_8064684((u16)v8, &dword_203EADC[8 * i])) {
            HANG;
            sub_8044828();
            return FALSE;
        }
        v8 += 1;
    }

    v8 = dword_80AF4F0[byte_203EAE3];
    for (i = 0; i < 0xFF; i++) {
        if (sub_8064760((u16)v8, &dword_203EADC[8 * i])) {
            HANG;
            sub_8044828();
            return FALSE;
        }
        v8 += 1;
    }

    tmp1 = byte_203EAE3;
    byte_203EAE3 = byte_203EAE0[a1];
    byte_203EAE0[a1] = tmp1;
    v1[0] = byte_203EAE0[0];
    v1[1] = byte_203EAE0[1];
    v1[2] = byte_203EAE0[2];
    v1[3] = byte_203EAE0[3];

    if (sub_8064684(1, dword_203EADC)) {
        HANG;
        sub_8044828();
        return FALSE;
    }

    if (sub_8064760(1, dword_203EADC)) {
        HANG;
        sub_8044828();
        return FALSE;
    }

    sub_8044828();
    return TRUE;
}

#endif
