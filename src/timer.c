#include "global.h"
#include "common.h"
#include "hud.h"
#include "timer.h"

enum TimerDirection {
    TIMER_COUNT_DOWN,
    TIMER_COUNT_UP,
};

struct Timer {
    u16 startFrames;
    u16 endFrames;
    u16 framesLeft;   // Starts at startFrames; the timer finishes when it reaches 0.
    u16 seconds;      // The value shown on the HUD.
    u8 frameCounter;  // Frames until the next change of seconds.
    u8 direction;     // enum TimerDirection
    bool8 hudPending; // The HUD element could not be shown yet; retried every frame.
    bool8 active;
    bool8 paused;
    void (*onFinish)(void);
};

static struct Timer sTimer;

void timer_start(int startFrames, int endFrames) {
    int frames;
    int remainder;

    sTimer.active = TRUE;
    sTimer.paused = FALSE;
    sTimer.startFrames = startFrames;
    sTimer.endFrames = endFrames;
    sTimer.framesLeft = startFrames;
    sTimer.onFinish = NULL;

    if (startFrames > endFrames) {
        sTimer.direction = TIMER_COUNT_DOWN;
        frames = startFrames - endFrames;
    } else {
        sTimer.direction = TIMER_COUNT_UP;
        frames = endFrames - startFrames;
    }

    sTimer.seconds = CallARM_DivRemainder(frames, 60, &remainder);

    sTimer.frameCounter = remainder + 60;
    sTimer.hudPending = !hud_show_timer(sTimer.seconds);
}

void timer_start_with_callback(int startFrames, int endFrames, void (*onFinish)(void)) {
    int frames;
    int remainder;

    sTimer.active = TRUE;
    sTimer.paused = FALSE;
    sTimer.startFrames = startFrames;
    sTimer.endFrames = endFrames;
    sTimer.framesLeft = startFrames;
    sTimer.onFinish = onFinish;

    if (startFrames > endFrames) {
        sTimer.direction = TIMER_COUNT_DOWN;
        frames = startFrames - endFrames;
    } else {
        sTimer.direction = TIMER_COUNT_UP;
        frames = endFrames - startFrames;
    }

    sTimer.seconds = CallARM_DivRemainder(frames, 60, &remainder);

    sTimer.frameCounter = remainder + 60;
    sTimer.hudPending = !hud_show_timer(sTimer.seconds);
}

void timer_stop(void) {
    sTimer.active = FALSE;
    sTimer.onFinish = NULL;
}

void timer_pause(void) {
    sTimer.paused = TRUE;
}

void timer_resume(void) {
    sTimer.paused = FALSE;
}

bool32 timer_is_active(void) {
    return sTimer.active;
}

void timer_update(void) {
    if (!sTimer.active || sTimer.paused) {
        return;
    }

    if (sTimer.hudPending) {
        sTimer.hudPending = !hud_show_timer(sTimer.seconds);
    }

    if (--sTimer.framesLeft == 0) {
        sTimer.active = FALSE;
        if (sTimer.onFinish != NULL) {
            sTimer.onFinish();
            sTimer.onFinish = NULL;
        }
    }

    if (--sTimer.frameCounter == 0) {
        sTimer.frameCounter = 60;

        switch (sTimer.direction) {
            case TIMER_COUNT_DOWN:
                sTimer.seconds--;
                break;

            case TIMER_COUNT_UP:
                sTimer.seconds++;
                break;
        }

        if (!sTimer.hudPending) {
            hud_set_value(HUD_ELEMENT_TIMER, sTimer.seconds);
        }
    }
}
