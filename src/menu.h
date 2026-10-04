#ifndef GUARD_MENU_H
#define GUARD_MENU_H

enum MenuState {
    MENU_GAME_OR_CONTINUE,
    MENU_PAUSE_MAIN,
    MENU_PAUSE_SAVE_GAME,
    MENU_LANGUAGE,
    MENU_CONTINUE_OR_QUIT,
    MENU_YES_NO,
    MENU_YES_NO_ENGLISH,
    MENU_FILE_SELECT,
    MENU_PAUSE_OPTIONS,
    MENU_UNKNOWN,
    MENU_ARCADE_1,
    MENU_ARCADE_2,
    MENU_DEBUG_MAIN,
    MENU_DEBUG_INFO_1,
    MENU_DEBUG_INFO_2,
    MENU_DEBUG_INFO_3,
    MENU_DEBUG_INFO_4,
    MENU_DEBUG_AI,
    MENU_DEBUG_GOD_MODE,
    MENU_DEBUG_CHEATS,
    MENU_DEBUG_TRANSFORM,
    MENU_NOTHING,
    MENU_DEBUG_WARP_1,
    MENU_DEBUG_WARP_2,
    MENU_DEBUG_WARP_3,
    MENU_DEBUG_WARP_4,
    MENU_DEBUG_WARP_5,
    MENU_DEBUG_WARP_6,
};

void menu_init(void);
void menu_reset(void);
void menu_load(int menu, int language);
void menu_cursor_down(void);
void menu_cursor_up(void);
void menu_render_text(void);
void menu_render_sprites(void);
int menu_get_cursor(void);
void menu_set_cursor(int entry);

extern u8 gMenuId;
extern u8 gMenuParentId;

#endif
