#ifndef GUARD_PAUSE_MENU_H
#define GUARD_PAUSE_MENU_H

extern u8 gClockStatus;
extern s32 dword_203F4DC;
extern bool8 byte_203F4E0;

void open_pause_menu();
void init_arcade_menu();
void sub_8047000(bool32 a1);
void exec_arcade_menu();
void draw_arcade_menu();

#endif
