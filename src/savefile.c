#include "global.h"
#include "save.h"
#include "common.h"

void MakeFileStrings() {
    int i;

    for (i = 0; i < 26; i++) {
        file_string_1[i] = ' ';
    }

    file_string_1[25] = 0xFF;
    file_string_1[19] = ':';
    file_string_1[22] = ':';
    file_string_1[17] = '0';
    file_string_1[20] = '0';
    file_string_1[23] = '0';
    file_string_1[4] = 0xFC;
    file_string_1[5] = 6;
    file_string_1[9] = 0xFC;
    file_string_1[10] = 7;
    file_string_1[15] = 0xFC;
    file_string_1[16] = 8;
    file_string_1[0] = 0xFC;
    file_string_1[1] = 9;

    IntegerToAsciiFw(gSaveFiles[0].jiggies, &file_string_1[6]);
    IntegerToAsciiFw(gSaveFiles[0].notes, &file_string_1[11]);
    IntegerToAsciiBw(gSaveFiles[0].hour, &file_string_1[18]);
    IntegerToAsciiBw(gSaveFiles[0].minute, &file_string_1[21]);
    IntegerToAsciiBw(gSaveFiles[0].second, &file_string_1[24]);

    for (i = 0; i < 26; i++) {
        file_string_2[i] = ' ';
    }

    file_string_2[25] = 0xFF;
    file_string_2[19] = ':';
    file_string_2[22] = ':';
    file_string_2[17] = '0';
    file_string_2[20] = '0';
    file_string_2[23] = '0';
    file_string_2[4] = 0xFC;
    file_string_2[5] = 6;
    file_string_2[9] = 0xFC;
    file_string_2[10] = 7;
    file_string_2[15] = 0xFC;
    file_string_2[16] = 8;
    file_string_2[0] = 0xFC;
    file_string_2[1] = 10;

    IntegerToAsciiFw(gSaveFiles[1].jiggies, &file_string_2[6]);
    IntegerToAsciiFw(gSaveFiles[1].notes, &file_string_2[11]);
    IntegerToAsciiBw(gSaveFiles[1].hour, &file_string_2[18]);
    IntegerToAsciiBw(gSaveFiles[1].minute, &file_string_2[21]);
    IntegerToAsciiBw(gSaveFiles[1].second, &file_string_2[24]);

    for (i = 0; i < 26; i++) {
        file_string_3[i] = ' ';
    }

    file_string_3[25] = 0xFF;
    file_string_3[19] = ':';
    file_string_3[22] = ':';
    file_string_3[17] = '0';
    file_string_3[20] = '0';
    file_string_3[23] = '0';
    file_string_3[4] = 0xFC;
    file_string_3[5] = 6;
    file_string_3[9] = 0xFC;
    file_string_3[10] = 7;
    file_string_3[15] = 0xFC;
    file_string_3[16] = 8;
    file_string_3[0] = 0xFC;
    file_string_3[1] = 11;
    
    IntegerToAsciiFw(gSaveFiles[2].jiggies, &file_string_3[6]);
    IntegerToAsciiFw(gSaveFiles[2].notes, &file_string_3[11]);
    IntegerToAsciiBw(gSaveFiles[2].hour, &file_string_3[18]);
    IntegerToAsciiBw(gSaveFiles[2].minute, &file_string_3[21]);
    IntegerToAsciiBw(gSaveFiles[2].second, &file_string_3[24]);
}

void init_savefiles() {
    int i;
    int v0 = 0;

    for (i = 0; i < 3; i++) {
        gSaveFiles[i].hour = 0;
        gSaveFiles[i].minute = 0;
        gSaveFiles[i].second = 0;
        gSaveFiles[i].jiggies = 0;
        gSaveFiles[i].notes = 0;
        gSaveFiles[i].empty = 1;

        if (sub_8044D70(i) == 1) {
            v0 = 1;
            if (load_game(i)) {
                sub_8038A34();
                gSaveFiles[i].hour = gGameStatus.clockHour;
                gSaveFiles[i].minute = gGameStatus.clockMinute;
                gSaveFiles[i].second = gGameStatus.clockSecond;
                gSaveFiles[i].jiggies = (u8)gGameStatus.totalJiggies;
                gSaveFiles[i].notes = gGameStatus.totalNotes;
                gSaveFiles[i].empty = 0;

                sub_8030C54();
                sub_800A5E8();
            }
        }
    }

    if (!v0) {
        word_203EAD6++;
        byte_2000335 = 1;
    }

    sub_8030C54();
    sub_800A5E8();
    sub_8016434();
    sub_8038A34();
    sub_803FE78();
}

void reset_savefiles() {
    int i;

    for (i = 0; i < 3; i++) {
        gSaveFiles[i].hour = 0;
        gSaveFiles[i].minute = 0;
        gSaveFiles[i].second = 0;
        gSaveFiles[i].jiggies = 0;
        gSaveFiles[i].notes = 0;
        gSaveFiles[i].empty = 1;
    }
}
