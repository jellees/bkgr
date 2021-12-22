#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

extern bool8 gIsSavingGame;
extern u16 word_203EAD6;

bool32 sub_8044860();
bool32 save_game(u32 game, bool32 a2);
bool32 sub_08044C00(int game);
void erase_game();
int sub_8044D70(int game);

#endif
