#ifndef GUARD_PLAYER_H
#define GUARD_PLAYER_H

#include "player_enums.h"

extern u16 gPreviousPlayerState;
extern u16 gPlayerState;
extern bool8 gUnlockedMoves[MOVE_COUNT];
extern u8 gTransformation;
extern u8 byte_20020B2;
extern u8 byte_20020B3;
extern int gBillDrillSfx;
extern int gKazooieSfx;
extern u8 byte_20020BC;
extern u16 gPlayerStateSettings[PLAYER_STATE_COUNT];
extern u8 byte_20021C4;

void sub_8016434();
void sub_8016440();
void sub_80164E0(u8* buffer, s32* a2, u32* a3);
void sub_801657C(u8* buffer, s32* a2, u32* a3);
void set_player_state_to_none();
void sub_80166A0();
int sub_8016A5C(int a1);
void sub_8016A94(int a1);
void sub_8016B0C();
void sub_8016B18();
void sub_8016B44();
void sub_8016BD0(int a1);
void sub_8016C78(u8 a1);
void sub_8017A54();
void sub_8017B34(int a1);
void sub_8017C50();
void sub_8017D9C();
void sub_8017E1C();
void sub_8017F14();
void sub_80181B8(fx32* height);
int start_npc_dialogue(int a1);
void sub_08018A94(int a1);
bool32 sub_8018BB0(const struct Sprite* playerSprite);
void sub_80192D4(int a1, int a2, int a3);
void sub_801990C();
void sub_08019FCC(u32 transformation);
void load_transformation_palette();
void update_player_state_machine(s32 keyPressed, s32 keyDown);

#endif
