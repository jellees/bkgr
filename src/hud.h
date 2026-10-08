#ifndef GUARD_HUD_H
#define GUARD_HUD_H

enum HudElementIdx {
    HUD_ELEMENT_LEVEL_NOTES,
    HUD_ELEMENT_LEVEL_JIGGIES,
    HUD_ELEMENT_2,
    HUD_ELEMENT_GOLDEN_FEATHERS,
    HUD_ELEMENT_MOVES_LEARNED,
    HUD_ELEMENT_SHELLS,
    HUD_ELEMENT_HONEYCOMBS,
    HUD_ELEMENT_LEVEL_JINJOS,
    HUD_ELEMENT_CHICKS,
    HUD_ELEMENT_BLUE_EGGS,
    HUD_ELEMENT_ELECTRIC_EGGS,
    HUD_ELEMENT_ICE_EGGS,
    HUD_ELEMENT_FIRE_EGGS,
    HUD_ELEMENT_13,
    HUD_ELEMENT_CAPTIVE_BREEGULLS,
    HUD_ELEMENT_ICE_CREAMS,
    HUD_ELEMENT_TOY_SPACESHIPS,
    HUD_ELEMENT_SILVER_COINS,
    HUD_ELEMENT_GOLD_NUGGETS,
    HUD_ELEMENT_PAUSE_NOTES,
    HUD_ELEMENT_PAUSE_JIGGIES,
    HUD_ELEMENT_PAUSE_JINJOS,
    HUD_ELEMENT_MUMBO_TOKENS,
    HUD_ELEMENT_TOTALS_NOTES,
    HUD_ELEMENT_TOTALS_JIGGIES,
    HUD_ELEMENT_TOTALS_JINJOS,
    HUD_ELEMENT_TOTALS_MUMBO_TOKENS,
    HUD_ELEMENT_TOTALS_MOVES_LEARNED,
    HUD_ELEMENT_TOTALS_HONEYCOMBS,
    HUD_ELEMENT_TOTALS_CHICKS,
    HUD_ELEMENT_TOTALS_SHELLS,
    HUD_ELEMENT_TOTALS_SILVER_COINS,
    HUD_ELEMENT_TOTALS_GOLD_NUGGETS,
    HUD_ELEMENT_TOTALS_CAPTIVE_BREEGULLS,
    HUD_ELEMENT_TOTALS_TOY_SPACESHIPS,
    HUD_ELEMENT_TOTALS_ICE_CREAMS,
    HUD_ELEMENT_36,
    HUD_ELEMENT_37,
    HUD_ELEMENT_38,
    HUD_ELEMENT_BOZZEYE_NOTES,
    HUD_ELEMENT_40,
    HUD_ELEMENT_41,
    HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS,
    HUD_ELEMENT_PAUSE_MUMBO_TOKENS,
    HUD_ELEMENT_MR_RIPOVSKI_SILVER_COINS,
    HUD_ELEMENT_MR_RIPOVSKI_SHELLS,
    HUD_ELEMENT_WHITE_BREEGULL_CAPTIVE_BREEGULLS,
    HUD_ELEMENT_MOMMA_CLUCKER_CHICKS,
    HUD_ELEMENT_MISS_BUCKET_GOLD_NUGGETS,
    HUD_ELEMENT_JINJO_ORACLE_JINJOS,
    HUD_ELEMENT_50,
    HUD_ELEMENT_51,
    HUD_ELEMENT_52,
    HUD_ELEMENT_53,
    HUD_ELEMENT_54,
    HUD_ELEMENT_55,
    HUD_ELEMENT_OXYGEN,
    HUD_ELEMENT_OXYGEN_WITH_ICON,
    HUD_ELEMENT_HEALTH,
    HUD_ELEMENT_HEALTH_WITH_ICON,

    HUD_ELEMENT_COUNT
};

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
