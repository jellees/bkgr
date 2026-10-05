#include "global.h"
#include "common.h"
#include "heap.h"
#include "main.h"
#include "player.h"
#include "save.h"

#define BUFFER_SIZE  2040
#define SAVE_MAGIC_0 0x84
#define SAVE_MAGIC_1 0x48

bool8 gAudioSuspended;
u16 gSaveId;
u8 gSaveVersion;
u8* gSaveBuffer;
u8 gGameSlots[3];
u8 gSpareSlot;

// First EEPROM block of each physical slot (blocks 0 and 1 hold the header and slot map)
static const u32 dSlotBlockOffsets[4] = { 4, 259, 514, 769 };

static void eeprom_begin(void) {
    IdentifyEeprom(64);
    SetEepromTimerIntr(3, &gFunctionArray[6]);
    gSaveBuffer = (u8*)heap_alloc(BUFFER_SIZE, 9, HEAP_GENERAL);
    DmaFill32(0, gSaveBuffer, 510);
    REG_IME = 0;
    SyncVblank();
    SyncVblank();
    audio_pause();
    gAudioSuspended = TRUE;
    gSaveVersion = 31;
}

static void eeprom_end(void) {
    gFunctionArray[6] = nullsub_15;
    heap_free(gSaveBuffer, HEAP_GENERAL);
    REG_IME = 1;
    gAudioSuspended = FALSE;
}

bool32 load_save_header(void) {
    u8* buffer;
    u16 computedSum, storedSum;

    eeprom_begin();

    buffer = gSaveBuffer;

    gSaveId = 0;
    gGameSlots[0] = 0;
    gGameSlots[1] = 1;
    gGameSlots[2] = 2;
    gSpareSlot = 3;

    if (ReadEepromDword(0, (u16*)buffer)) {
        ASSERT(0);
        eeprom_end();
        return FALSE;
    }

    computedSum = buffer[0] + buffer[1] + buffer[2] + buffer[3] + buffer[4] + buffer[5];
    storedSum = buffer[7] << 8 | buffer[6];

    if (storedSum != computedSum) {
        eeprom_end();
        return FALSE;
    }

    if (buffer[0] != SAVE_MAGIC_0 || buffer[1] != SAVE_MAGIC_1) {
        eeprom_end();
        return FALSE;
    }

    gSaveId = (buffer[4] << 8) | buffer[3];
    if (buffer[2] != gSaveVersion) {
        eeprom_end();
        return FALSE;
    }

    if (buffer[5] > 5) {
        eeprom_end();
        return FALSE;
    }

    gLanguage = buffer[5];

    if (ReadEepromDword(1, (u16*)gSaveBuffer)) {
        ASSERT(0);
        eeprom_end();
        return FALSE;
    }

    gGameSlots[0] = buffer[0];
    gGameSlots[1] = buffer[1];
    gGameSlots[2] = buffer[2];
    gSpareSlot = buffer[3];

    ASSERT(gGameSlots[0] < 4 && gGameSlots[1] < 4 && gGameSlots[2] < 4 && gSpareSlot < 4);

    ASSERT(gGameSlots[0] != gGameSlots[1] && gGameSlots[0] != gGameSlots[2]
           && gGameSlots[0] != gSpareSlot);

    ASSERT(gGameSlots[1] != gGameSlots[2] && gGameSlots[1] != gSpareSlot);

    ASSERT(gGameSlots[2] != gSpareSlot);

    eeprom_end();
    return TRUE;
}

bool32 save_game(u32 game, bool32 writeHeader) {
    u8* buffer;
    s32 offset;
    u32 checksum;
    int i;
    u32 baseBlock;
    u8 oldSpare;

    eeprom_begin();

    buffer = gSaveBuffer;

    if (writeHeader) {
        u16 headerSum;

        buffer[0] = SAVE_MAGIC_0;
        buffer[1] = SAVE_MAGIC_1;
        buffer[2] = gSaveVersion;
        headerSum = buffer[2];

        buffer[3] = gSaveId;
        headerSum += SAVE_MAGIC_0 + SAVE_MAGIC_1;
        headerSum += buffer[3];

        buffer[4] = gSaveId >> 8;
        headerSum += buffer[4];

        buffer[5] = gLanguage;
        headerSum += buffer[5];

        buffer[6] = headerSum;
        buffer[7] = headerSum >> 8;

        if (ProgramEepromDword(0, (u16*)gSaveBuffer)) {
            ASSERT(0);
            eeprom_end();
            return FALSE;
        }

        if (VerifyEepromDword(0, (u16*)gSaveBuffer)) {
            ASSERT(0);
            eeprom_end();
            return FALSE;
        }
    }

    offset = 0;
    checksum = 0;
    buffer[offset] = SAVE_MAGIC_0;
    checksum += buffer[offset++];
    buffer[offset] = SAVE_MAGIC_1;
    checksum += buffer[offset++];
    buffer[offset] = gSaveVersion;
    checksum += buffer[offset++];
    buffer[offset] = gSaveId;
    checksum += buffer[offset++];
    buffer[offset] = gSaveId >> 8;
    checksum += buffer[offset++];

    sub_8034970(buffer, &offset, &checksum);
    sub_800E204(buffer, &offset, &checksum);
    sub_80164E0(buffer, &offset, &checksum);

    buffer[offset++] = checksum;
    buffer[offset++] = checksum >> 8;
    buffer[offset++] = checksum >> 16;
    buffer[offset++] = checksum >> 24;

    ASSERT(offset < BUFFER_SIZE);
    ASSERT(game < 3);

    baseBlock = dSlotBlockOffsets[gSpareSlot];
    for (i = 0; i < BUFFER_SIZE / 8; i++) {
        if (ProgramEepromDword(baseBlock + i, (u16*)&gSaveBuffer[8 * i])) {
            ASSERT(0);
            eeprom_end();
            return FALSE;
        }
    }

    for (i = 0; i < BUFFER_SIZE / 8; i++) {
        if (VerifyEepromDword(baseBlock + i, (u16*)&gSaveBuffer[8 * i])) {
            ASSERT(0);
            eeprom_end();
            return FALSE;
        }
    }

    oldSpare = gSpareSlot;
    gSpareSlot = gGameSlots[game];
    gGameSlots[game] = oldSpare;
    buffer[0] = gGameSlots[0];
    buffer[1] = gGameSlots[1];
    buffer[2] = gGameSlots[2];
    // Reads gSpareSlot through the array base, which is required to match
    buffer[3] = gGameSlots[3];

    if (ProgramEepromDword(1, (u16*)gSaveBuffer)) {
        ASSERT(0);
        eeprom_end();
        return FALSE;
    }

    if (VerifyEepromDword(1, (u16*)gSaveBuffer)) {
        ASSERT(0);
        eeprom_end();
        return FALSE;
    }

    eeprom_end();
    return TRUE;
}

bool32 load_game(int game) {
    u8* buffer;
    u32 baseBlock;
    int i;
    u16 storedId;
    s32 offset;
    u32 checksum;
    u32 storedChecksum;

    eeprom_begin();

    buffer = gSaveBuffer;

    baseBlock = dSlotBlockOffsets[gGameSlots[game]];
    for (i = 0; i < BUFFER_SIZE / 8; i++) {
        if (ReadEepromDword(baseBlock + i, (u16*)&gSaveBuffer[8 * i])) {
            ASSERT(0);
            eeprom_end();
            return FALSE;
        }
    }

    if (buffer[0] != SAVE_MAGIC_0) {
        eeprom_end();
        return FALSE;
    }

    if (buffer[1] != SAVE_MAGIC_1) {
        eeprom_end();
        return FALSE;
    }

    storedId = buffer[4] << 8 | buffer[3];
    if (buffer[2] != gSaveVersion || storedId != gSaveId) {
        eeprom_end();
        return FALSE;
    }

    offset = 0;
    checksum = 0;
    checksum = buffer[0];
    offset++;
    checksum += buffer[1];
    offset++;
    checksum += buffer[2];
    offset++;
    checksum += buffer[3];
    offset++;
    checksum += buffer[4];
    offset++;

    sub_8036138(buffer, &offset, &checksum);
    sub_800E408(buffer, &offset, &checksum);
    sub_801657C(buffer, &offset, &checksum);

    storedChecksum = buffer[offset++];
    storedChecksum |= buffer[offset++] << 8;
    storedChecksum |= buffer[offset++] << 16;
    storedChecksum |= buffer[offset++] << 24;

    ASSERT(offset < BUFFER_SIZE);

    if (storedChecksum != checksum) {
        eeprom_end();
        return FALSE;
    }

    eeprom_end();
    return TRUE;
}

void erase_all_save_data(void) {
    u16 data[4];
    int i;

    data[0] = -1;
    data[1] = -1;
    data[2] = -1;
    data[3] = -1;

    eeprom_begin();

    for (i = 0; i < 0x3FF; i++) {
        ProgramEepromDword(i, data);
    }

    eeprom_end();
}

int check_saved_game(int game) {
    u8* buffer;
    u32 baseBlock;
    int i;
    u32 offset;

    eeprom_begin();

    buffer = gSaveBuffer;

    baseBlock = dSlotBlockOffsets[gGameSlots[game]];
    for (i = 0; i < BUFFER_SIZE / 8; i++) {
        if (ReadEepromDword(baseBlock + i, (u16*)&gSaveBuffer[8 * i]) != 0) {
            ASSERT(0);
        }
    }

    if (buffer[0] != SAVE_MAGIC_0 || buffer[1] != SAVE_MAGIC_1) {
        eeprom_end();
        return SAVED_GAME_EMPTY;
    }

    offset = 5;

    if (!sub_8037C08(buffer, &offset)) {
        eeprom_end();
        return SAVED_GAME_INVALID;
    }

    eeprom_end();
    return SAVED_GAME_OK;
}
