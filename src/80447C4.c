#include "global.h"
#include "alloc.h"
#include "common.h"

extern u16 sub_80645D4(u16 a, u8* b);
extern u16 sub_8064684(u16 a, u8* b);
extern u16 sub_8064760(u16 a, u8* b);

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
    gFunctionArray[6] = (void*)0x800A4A1;
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

bool32 sub_80449B0(u32 a1, int a2) {
    u8* v1;
    s32 v16;
    u32 v17;
    int i;
    u32 v9;
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

    ASSERT(v16 < 0x7F8);
    ASSERT(a1 < 3);

    v9 = dword_80AF4F0[byte_203EAE3];
    for (i = 0; i < 0xFF; i++) {
        if (sub_8064684(v9 + i, &dword_203EADC[8 * i])) {
            HANG;
            sub_8044828();
            return FALSE;
        }
    }

    for (i = 0; i < 0xFF; i++) {
        if (sub_8064760(v9 + i, &dword_203EADC[8 * i])) {
            HANG;
            sub_8044828();
            return FALSE;
        }
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

bool32 sub_08044C00(int a1) {
    u8* v1;
    u32 v9;
    int i;
    u16 v2;
    s32 v16;
    u32 v17;
    u32 v3;

    sub_80447C4();

    v1 = dword_203EADC;

    v9 = dword_80AF4F0[byte_203EAE0[a1]];
    for (i = 0; i < 0xFF; i++) {
        if (sub_80645D4(v9 + i, &dword_203EADC[8 * i])) {
            HANG;
            sub_8044828();
            return FALSE;
        }
    }

    if (v1[0] != 0x84) {
        sub_8044828();
        return FALSE;
    }

    if (v1[1] != 0x48) {
        sub_8044828();
        return FALSE;
    }

    v2 = v1[4] << 8 | v1[3];
    if (v1[2] != byte_203EAD8 || v2 != word_203EAD6) {
        sub_8044828();
        return FALSE;
    }

    v16 = 0;
    v17 = 0;
    v17 = v1[0];
    v16 = 1;
    v17 += v1[1];
    v16 = 2;
    v17 += v1[2];
    v16 = 3;
    v17 += v1[3];
    v16 = 4;
    v17 += v1[4];
    v16 = 5;

    sub_8036138(v1, &v16, &v17);
    sub_800E408(v1, &v16, &v17);
    sub_801657C(v1, &v16, &v17);

    v3 = v1[v16++];
    v3 |= v1[v16++] << 8;
    v3 |= v1[v16++] << 16;
    v3 |= v1[v16++] << 24;

    ASSERT(v16 <= 0x7F7);

    if (v3 != v17) {
        sub_8044828();
        return FALSE;
    }

    sub_8044828();
    return TRUE;
}

void sub_8044D30() {
    u16 v1[4];
    int i;

    v1[0] = -1;
    v1[1] = -1;
    v1[2] = -1;
    v1[3] = -1;

    sub_80447C4();

    for (i = 0; i < 0x3FF; i++) {
        sub_8064684(i, (u8*)&v1);
    }

    sub_8044828();
}

int sub_8044D70(int a1) {
    u8* v1;
    u32 v9;
    int i;
    u32 v2;

    sub_80447C4();

    v1 = dword_203EADC;

    v9 = dword_80AF4F0[byte_203EAE0[a1]];
    for (i = 0; i < 0xFF; i++) {
        if (sub_80645D4(v9 + i, &dword_203EADC[8 * i]) != 0) {
            ASSERT(0);
        }
    }

    if (v1[0] != 0x84 || v1[1] != 0x48) {
        sub_8044828();
        return 2;
    }

    v2 = 5;

    if (!sub_8037C08(v1, &v2)) {
        sub_8044828();
        return 0;
    }

    sub_8044828();
    return 1;
}
