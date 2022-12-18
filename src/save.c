#include "global.h"
#include "alloc.h"
#include "common.h"
#include "save.h"

// Functions from libagbbackup
extern u16 IdentifyEeprom(u16 eeprom_KbitSize);
extern u16 SetEepromTimerIntr(u8 timerNo, void (**IntrFunc)(void));
extern u16 ReadEepromDword(u16 epAdr,u16 *dst);
extern u16 ProgramEepromDword(u16 epAdr,u16 *src);
extern u16 VerifyEepromDword(u16 epAdr,u16 *src);

bool8 gIsSavingGame;
u16 word_203EAD6;
u8 byte_203EAD8;
u8* gBuffer;
u8 byte_203EAE0[3];
u8 byte_203EAE3;

static void create_eeprom_buffer() {
    IdentifyEeprom(64);
    SetEepromTimerIntr(3, &gFunctionArray[6]);
    gBuffer = (u8*)Alloc(0x7F8u, 9, 4);
    DmaFill32(0, gBuffer, 510);
    REG_IME = 0;
    SyncVblank();
    SyncVblank();
    audio_pause();
    gIsSavingGame = TRUE;
    byte_203EAD8 = 31;
}

static void remove_eeprom_buffer() {
    gFunctionArray[6] = (void*)0x800A4A1;
    Free(gBuffer, 4);
    REG_IME = 1;
    gIsSavingGame = FALSE;
}

bool32 load_save_header() {
    u8* buffer;
    u16 sum1, sum2;

    create_eeprom_buffer();

    buffer = gBuffer;

    word_203EAD6 = 0;
    byte_203EAE0[0] = 0;
    byte_203EAE0[1] = 1;
    byte_203EAE0[2] = 2;
    byte_203EAE3 = 3;

    if (ReadEepromDword(0, buffer)) {
        ASSERT(0);
        remove_eeprom_buffer();
        return FALSE;
    }

    sum1 = buffer[0] + buffer[1] + buffer[2] + buffer[3] + buffer[4] + buffer[5];
    sum2 = buffer[7] << 8 | buffer[6];

    if (sum2 != sum1) {
        remove_eeprom_buffer();
        return FALSE;
    }

    if (buffer[0] != 0x84 || buffer[1] != 0x48) {
        remove_eeprom_buffer();
        return FALSE;
    }

    word_203EAD6 = (buffer[4] << 8) | buffer[3];
    if (buffer[2] != byte_203EAD8) {
        remove_eeprom_buffer();
        return FALSE;
    }

    if (buffer[5] > 5) {
        remove_eeprom_buffer();
        return FALSE;
    }

    gPauseMenuLanguage = buffer[5];

    if (ReadEepromDword(1, gBuffer)) {
        ASSERT(0);
        remove_eeprom_buffer();
        return FALSE;
    }

    byte_203EAE0[0] = buffer[0];
    byte_203EAE0[1] = buffer[1];
    byte_203EAE0[2] = buffer[2];
    byte_203EAE3 = buffer[3];

    ASSERT(byte_203EAE0[0] < 4 && byte_203EAE0[1] < 4 && byte_203EAE0[2] < 4 && byte_203EAE3 < 4);

    ASSERT(byte_203EAE0[0] != byte_203EAE0[1] && byte_203EAE0[0] != byte_203EAE0[2]
           && byte_203EAE0[0] != byte_203EAE3);

    ASSERT(byte_203EAE0[1] != byte_203EAE0[2] && byte_203EAE0[1] != byte_203EAE3);

    ASSERT(byte_203EAE0[2] != byte_203EAE3);

    remove_eeprom_buffer();
    return TRUE;
}

bool32 save_game(u32 game, bool32 a2) {
    u8* buffer;
    s32 v16;
    u32 v17;
    int i;
    u32 v9;
    u32 v8;
    u8 tmp1;

    create_eeprom_buffer();

    buffer = gBuffer;

    if (a2) {
        u16 v2;

        buffer[0] = 0x84;
        buffer[1] = 0x48;
        buffer[2] = byte_203EAD8;
        v2 = buffer[2];

        buffer[3] = word_203EAD6;
        v2 += 0xCC;
        v2 += buffer[3];

        buffer[4] = word_203EAD6 >> 8;
        v2 += buffer[4];

        buffer[5] = gPauseMenuLanguage;
        v2 += buffer[5];

        buffer[6] = v2;
        buffer[7] = v2 >> 8;

        if (ProgramEepromDword(0, gBuffer)) {
            HANG;
            remove_eeprom_buffer();
            return FALSE;
        }

        if (VerifyEepromDword(0, gBuffer)) {
            HANG;
            remove_eeprom_buffer();
            return FALSE;
        }
    }

    v16 = 0;
    v17 = 0;
    buffer[v16] = 0x84;
    v17 += buffer[v16++];
    buffer[v16] = 0x48;
    v17 += buffer[v16++];
    buffer[v16] = byte_203EAD8;
    v17 += buffer[v16++];
    buffer[v16] = word_203EAD6;
    v17 += buffer[v16++];
    buffer[v16] = word_203EAD6 >> 8;
    v17 += buffer[v16++];

    sub_8034970(buffer, &v16, &v17);
    sub_800E204(buffer, &v16, &v17);
    sub_80164E0(buffer, &v16, &v17);

    buffer[v16++] = v17;
    buffer[v16++] = v17 >> 8;
    buffer[v16++] = v17 >> 16;
    buffer[v16++] = v17 >> 24;

    ASSERT(v16 < 0x7F8);
    ASSERT(game < 3);

    v9 = dword_80AF4F0[byte_203EAE3];
    for (i = 0; i < 0xFF; i++) {
        if (ProgramEepromDword(v9 + i, &gBuffer[8 * i])) {
            HANG;
            remove_eeprom_buffer();
            return FALSE;
        }
    }

    for (i = 0; i < 0xFF; i++) {
        if (VerifyEepromDword(v9 + i, &gBuffer[8 * i])) {
            HANG;
            remove_eeprom_buffer();
            return FALSE;
        }
    }

    tmp1 = byte_203EAE3;
    byte_203EAE3 = byte_203EAE0[game];
    byte_203EAE0[game] = tmp1;
    buffer[0] = byte_203EAE0[0];
    buffer[1] = byte_203EAE0[1];
    buffer[2] = byte_203EAE0[2];
    buffer[3] = byte_203EAE0[3];

    if (ProgramEepromDword(1, gBuffer)) {
        HANG;
        remove_eeprom_buffer();
        return FALSE;
    }

    if (VerifyEepromDword(1, gBuffer)) {
        HANG;
        remove_eeprom_buffer();
        return FALSE;
    }

    remove_eeprom_buffer();
    return TRUE;
}

bool32 load_game(int game) {
    u8* buffer;
    u32 v9;
    int i;
    u16 v2;
    s32 v16;
    u32 v17;
    u32 v3;

    create_eeprom_buffer();

    buffer = gBuffer;

    v9 = dword_80AF4F0[byte_203EAE0[game]];
    for (i = 0; i < 0xFF; i++) {
        if (ReadEepromDword(v9 + i, &gBuffer[8 * i])) {
            HANG;
            remove_eeprom_buffer();
            return FALSE;
        }
    }

    if (buffer[0] != 0x84) {
        remove_eeprom_buffer();
        return FALSE;
    }

    if (buffer[1] != 0x48) {
        remove_eeprom_buffer();
        return FALSE;
    }

    v2 = buffer[4] << 8 | buffer[3];
    if (buffer[2] != byte_203EAD8 || v2 != word_203EAD6) {
        remove_eeprom_buffer();
        return FALSE;
    }

    v16 = 0;
    v17 = 0;
    v17 = buffer[0];
    v16 = 1;
    v17 += buffer[1];
    v16 = 2;
    v17 += buffer[2];
    v16 = 3;
    v17 += buffer[3];
    v16 = 4;
    v17 += buffer[4];
    v16 = 5;

    sub_8036138(buffer, &v16, &v17);
    sub_800E408(buffer, &v16, &v17);
    sub_801657C(buffer, &v16, &v17);

    v3 = buffer[v16++];
    v3 |= buffer[v16++] << 8;
    v3 |= buffer[v16++] << 16;
    v3 |= buffer[v16++] << 24;

    ASSERT(v16 <= 0x7F7);

    if (v3 != v17) {
        remove_eeprom_buffer();
        return FALSE;
    }

    remove_eeprom_buffer();
    return TRUE;
}

void erase_all_save_data() {
    u16 data[4];
    int i;

    data[0] = -1;
    data[1] = -1;
    data[2] = -1;
    data[3] = -1;

    create_eeprom_buffer();

    for (i = 0; i < 0x3FF; i++) {
        ProgramEepromDword(i, (u8*)&data);
    }

    remove_eeprom_buffer();
}

int sub_8044D70(int game) {
    u8* buffer;
    u32 v9;
    int i;
    u32 v2;

    create_eeprom_buffer();

    buffer = gBuffer;

    v9 = dword_80AF4F0[byte_203EAE0[game]];
    for (i = 0; i < 0xFF; i++) {
        if (ReadEepromDword(v9 + i, &gBuffer[8 * i]) != 0) {
            ASSERT(0);
        }
    }

    if (buffer[0] != 0x84 || buffer[1] != 0x48) {
        remove_eeprom_buffer();
        return 2;
    }

    v2 = 5;

    if (!sub_8037C08(buffer, &v2)) {
        remove_eeprom_buffer();
        return 0;
    }

    remove_eeprom_buffer();
    return 1;
}
