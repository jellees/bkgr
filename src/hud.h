#ifndef GUARD_HUD_H
#define GUARD_HUD_H

// Meter request IDs for hud_set_value and the other element functions.
// Each one is redirected to the health or oxygen meter slot, with or
// without the shared Banjo icon depending on which meter is already shown.
enum HudMeter {
    HUD_METER_HEALTH = 56,
    HUD_METER_OXYGEN = 57,
};

void hud_load_counters(void);
void hud_load_bozzeye_notes(void);
void hud_init(void);
void hud_load_level_counters(void);
void hud_set_value(u32 element, int value);
void hud_extend_health_bar(void);
void hud_update(void);
void hud_render_sprites(void);
void hud_render_text(void);
void hud_hide_all(void);
void hud_hide_element(u32 element);
void hud_init_element_value(u32 element, int value);
void hud_show_pause_counters(int isDiving);
void hud_hide_pause_counters(void);
bool32 hud_are_pause_counters_shown(int isDiving);
bool32 hud_are_pause_counters_hidden(int isDiving);
void hud_show_totals_counters(u32 page);
void hud_hide_totals_counters(int page);
bool32 hud_are_totals_counters_shown(int page);
bool32 hud_are_totals_counters_hidden(int page);
void hud_dismiss_all(void);
void hud_dismiss_npc_counters(void);
void hud_set_element_slide_speed(u32 element, int value);
void hud_keep_element_shown(u32 element);
void hud_release_element(u32 element);
bool32 hud_is_element_shown(u32 element);
bool32 hud_is_element_active(u32 element);
bool32 sub_8042218(int value);
void hud_stop_health_roulette(void);

#endif
