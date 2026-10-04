#ifndef GUARD_RANDOM_H
#define GUARD_RANDOM_H

void random_init(void);
void random_seed(u32 seed);
u32 random_reload(void);
int random_range(int min, int max);

#endif
