#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

extern bool8 gIsSavingGame;
extern u16 word_203EAD6;

bool32 load_save_header(void);
bool32 save_game(u32 game, bool32 a2);
bool32 load_game(int game);
void erase_all_save_data(void);
int sub_8044D70(int game);

#endif
