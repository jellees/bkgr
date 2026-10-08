#ifndef GUARD_HUD_SCRIPT_H
#define GUARD_HUD_SCRIPT_H

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

#endif
