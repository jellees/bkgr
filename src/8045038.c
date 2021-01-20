#include "global.h"

void audio_init_p()
{
    audio_init();
}

void sub_8045044()
{
    audio_vsync_asm();
}

void seq_update_p()
{
    audio_asmprocess();
}