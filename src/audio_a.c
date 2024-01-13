#include "global.h"
#include "common.h"

int audio_num_channels;
int dword_203F4B8;
int dword_203F4BC;
int dword_203F4C0;
int dword_203F4C4;
int dword_203F4C8;
int* gSequences;
int dword_203F4D0;
int dword_203F4D4;

void init_audio(void) {
    audio_init();
}

void sub_8045044(void) {
    audio_vsync_asm();
}

void seq_update_p(void) {
    audio_asmprocess();
}