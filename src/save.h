#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

extern bool8 gAudioSuspended;
extern u16 gSaveId;

enum {
    SAVED_GAME_INVALID,
    SAVED_GAME_OK,
    SAVED_GAME_EMPTY,
};

bool32 load_save_header(void);
bool32 save_game(u32 game, bool32 writeHeader);
bool32 load_game(int game);
void erase_all_save_data(void);
int check_saved_game(int game);

#endif
