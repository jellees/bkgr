#ifndef GUARD_TIMER_H
#define GUARD_TIMER_H

void timer_start(int startFrames, int endFrames);
void timer_start_with_callback(int startFrames, int endFrames, void (*onFinish)(void));
void timer_stop(void);
void timer_pause(void);
void timer_resume(void);
bool32 timer_is_active(void);
void timer_update(void);

#endif
