#ifndef GUARD_HUD_SCRIPTS_H
#define GUARD_HUD_SCRIPTS_H

#include "gba/types.h"

// One step of a HUD script: the command (an index into dHudCommands) and its arguments.
struct HudScriptInstruction {
    u32 idx;
    u32 arg0;
    u32 arg1;
    u32 arg2;
};

typedef struct HudScriptInstruction HudScriptInstructions[];

// The script of one HUD element.
struct HudScript {
    u32 length;
    const struct HudScriptInstruction* instructions;
};

// One script per HUD element, indexed by enum HudElementIdx (defined in hud_scripts.c).
extern const struct HudScript dHudScripts[];

enum HudScriptCommand {
    HUD_SCRIPT_CMD_END,
    HUD_SCRIPT_CMD_SPRITE_SLIDE_LEFT,
    HUD_SCRIPT_CMD_SPRITE_SLIDE_RIGHT,
    HUD_SCRIPT_CMD_SPRITE_SLIDE_UP,
    HUD_SCRIPT_CMD_SPRITE_SLIDE_DOWN,
    HUD_SCRIPT_CMD_INIT_NUMBER_TEXT,
    HUD_SCRIPT_CMD_NOP,
    HUD_SCRIPT_CMD_COUNT_UP,
    HUD_SCRIPT_CMD_COUNT_DOWN,
    HUD_SCRIPT_CMD_WAIT_DISPLAY,
    HUD_SCRIPT_CMD_SPRITE_INIT,
    HUD_SCRIPT_CMD_SET_STATE,
    HUD_SCRIPT_CMD_ALLOC_SPRITES,
    HUD_SCRIPT_CMD_SPRITE_SET_POSITION,
    HUD_SCRIPT_CMD_UPDATE_SLIDES,
    HUD_SCRIPT_CMD_SPRITE_FIT_NUMBER_LEFT,
    HUD_SCRIPT_CMD_SPRITE_FIT_NUMBER_RIGHT,
    HUD_SCRIPT_CMD_BAR_INIT_HEALTH,
    HUD_SCRIPT_CMD_BAR_SLIDE_LEFT,
    HUD_SCRIPT_CMD_BAR_SLIDE_RIGHT,
    HUD_SCRIPT_CMD_BAR_SLIDE_UP,
    HUD_SCRIPT_CMD_BAR_SLIDE_DOWN,
    HUD_SCRIPT_CMD_BAR_INIT_OXYGEN,
    HUD_SCRIPT_CMD_BAR_COUNT_HEALTH,
    HUD_SCRIPT_CMD_COUNT,
    HUD_SCRIPT_CMD_BAR_COUNT_OXYGEN,
    HUD_SCRIPT_CMD_WAIT_DISPLAY_2,
    HUD_SCRIPT_CMD_SPRITE_FIT_FRACTION_LEFT,
    HUD_SCRIPT_CMD_SPRITE_FIT_FRACTION_RIGHT,
    HUD_SCRIPT_CMD_INIT_FRACTION_TEXT,

    HUD_SCRIPT_CMD_TOTAL
};

// Return values of the HUD script commands (hud_cmd_*), handled by hud_update.
enum HudScriptResult {
    HUD_SCRIPT_WAIT = 1,    // Run the same step again next frame.
    HUD_SCRIPT_NEXT = 2,    // Advance to the next step.
    HUD_SCRIPT_STOP = 3,    // Script finished; element is hidden.
    HUD_SCRIPT_RESTART = 4, // Script restarted from step 0 (reshow).
};

// Lifecycle of a HUD element, stored in HudElement.state. Scripts move it along with
// hud_cmd_set_state: HIDDEN -> START -> SLIDE_IN -> UPDATE(_FRACTION) -> SHOWN -> SLIDE_OUT.
enum HudState {
    HUD_STATE_HIDDEN,          // Inactive; skipped by the update and render loops.
    HUD_STATE_START,           // Show requested; the script runs from step 0.
    HUD_STATE_SLIDE_IN,        // Sprites are being placed and slid on screen.
    HUD_STATE_UPDATE,          // Counting the value; text shows a plain number.
    HUD_STATE_UPDATE_FRACTION, // Counting the value; text shows "value/max".
    HUD_STATE_SHOWN,           // On screen, waiting for the display timer.
    HUD_STATE_SLIDE_OUT,       // Sliding off screen; a new value sets reshow instead.
};

// Mode argument of the hud_cmd_sprite_fit_* commands, which slide a sprite to its home
// position offset by the width of the element's number text.
enum HudFitMode {
    HUD_FIT_ALWAYS,           // Fit to the width of targetValue.
    HUD_FIT_IF_COUNTING_UP,   // As ALWAYS, but skipped when targetValue < displayValue.
    HUD_FIT_IF_COUNTING_DOWN, // As ALWAYS, but skipped when targetValue > displayValue.
    HUD_FIT_HOME,             // Slide back to the home position.
};

// Kind argument of hud_cmd_alloc_sprites: how many sprites to allocate besides the count passed in.
enum HudAllocKind {
    HUD_ALLOC_FIXED,      // Exactly count sprites.
    HUD_ALLOC_HEALTH_BAR, // count sprites plus one per honeycomb of max health.
    HUD_ALLOC_OXYGEN_BAR, // count sprites plus one per segment of max oxygen.
};

/****** COMMANDS **************************************************************************************/

/**
 * This macro expands the command index and arguments into the right structure.
 */
#define HUD_SCRIPT_CMD(idx, arg0, arg1, arg2) { (idx), (arg0), (arg1), (arg2) },

#define HudEnd HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_END, 0, 0, 0)

#define HudSpriteSlideLeft(index, distance)                                                            \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_SLIDE_LEFT, index, distance, 0)

#define HudSpriteSlideRight(index, distance)                                                           \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_SLIDE_RIGHT, index, distance, 0)

#define HudSpriteSlideUp(index, distance)                                                              \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_SLIDE_UP, index, distance, 0)

#define HudSpriteSlideDown(index, distance)                                                            \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_SLIDE_DOWN, index, distance, 0)

#define HudInitNumberText(x, y, rightAlign)                                                            \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_INIT_NUMBER_TEXT, x, y, rightAlign)

#define HudNop HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_NOP, 0, 0, 0)

#define HudCountUp HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_COUNT_UP, 0, 0, 0)

#define HudCountDown HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_COUNT_DOWN, 0, 0, 0)

#define HudWaitDisplay HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_WAIT_DISPLAY, 0, 0, 0)

#define HudSpriteInit(index, anim, semiTransparent)                                                    \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_INIT, index, anim, semiTransparent)

#define HudSetState(state) HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SET_STATE, state, 0, 0)

#define HudAllocSprites(count, kind) HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_ALLOC_SPRITES, count, kind, 0)

#define HudSpriteSetPosition(index, x, y)                                                              \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_SET_POSITION, index, x, y)

#define HudUpdateSlides(saveHome) HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_UPDATE_SLIDES, saveHome, 0, 0)

#define HudSpriteFitNumberLeft(index, mode)                                                            \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_FIT_NUMBER_LEFT, index, mode, 0)

#define HudSpriteFitNumberRight(index, mode)                                                           \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_FIT_NUMBER_RIGHT, index, mode, 0)

#define HudBarInitHealth(start, x, y) HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_BAR_INIT_HEALTH, start, x, y)

#define HudBarSlideLeft(start, spread, distance)                                                       \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_BAR_SLIDE_LEFT, start, spread, distance)

#define HudBarSlideRight(start, spread, distance)                                                      \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_BAR_SLIDE_RIGHT, start, spread, distance)

#define HudBarSlideUp(start, spread, distance)                                                         \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_BAR_SLIDE_UP, start, spread, distance)

#define HudBarSlideDown(start, spread, distance)                                                       \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_BAR_SLIDE_DOWN, start, spread, distance)

#define HudBarInitOxygen(start, x, y) HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_BAR_INIT_OXYGEN, start, x, y)

#define HudBarCountHealth(start) HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_BAR_COUNT_HEALTH, start, 0, 0)

#define HudCount HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_COUNT, 0, 0, 0)

#define HudBarCountOxygen(start) HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_BAR_COUNT_OXYGEN, start, 0, 0)

#define HudWaitDisplay2 HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_WAIT_DISPLAY_2, 0, 0, 0)

#define HudSpriteFitFractionLeft(index, mode)                                                          \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_FIT_FRACTION_LEFT, index, mode, 0)

#define HudSpriteFitFractionRight(index, mode)                                                         \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_SPRITE_FIT_FRACTION_RIGHT, index, mode, 0)

#define HudInitFractionText(x, y, rightAlign)                                                          \
    HUD_SCRIPT_CMD(HUD_SCRIPT_CMD_INIT_FRACTION_TEXT, x, y, rightAlign)

#endif
