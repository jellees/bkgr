#ifndef GUARD_HUD_H
#define GUARD_HUD_H

// Meter request IDs for set_hud_number and the other element functions.
// Each one is redirected to the health or oxygen meter slot, with or
// without the shared Banjo icon depending on which meter is already shown.
enum HudMeter {
    HUD_METER_HEALTH = 56,
    HUD_METER_OXYGEN = 57,
};

void reset_hud_elements(void);
void update_bozzeye_notes_counter(void);
void init_hud_elements(void);
void update_hud_collectables(void);
void set_hud_number(u32 element, int value);
void sub_80407F8(void);
void update_hud(void);
void sub_80408F0(void);
void render_hud_elements(void);
void sub_80409DC(void);
void sub_08040A38(u32 element);
void sub_08040AD0(u32 element, int value);
void show_pause_main_counters(int isDiving);
void sub_8040E74(void);
bool32 are_pause_main_counters_shown(int isDiving);
bool32 are_pause_main_counters_hidden(int isDiving);
void show_pause_page_counters(u32 level);
void sub_8041AAC(int page);
bool32 are_page_counters_shown(int page);
bool32 are_page_counters_hidden(int page);
void sub_8041E58(void);
void sub_8041E88(void);
void sub_08041F3C(u32 element, int value);
void sub_08041FA4(u32 element);
void sub_0804200C(u32 element);
bool32 sub_0804207C(u32 element);
bool32 sub_080420E8(u32 element);
bool32 sub_8042218(int value);
void sub_8042250(void);

#endif
