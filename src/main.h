#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

extern void sub_8009D7C(u32 a1);
extern u32 sub_8009DAC();
extern void nullsub_3();
extern void nullsub_4();
extern void nullsub_5();
extern void EnableDisplay();
extern void UpdateVideo();
extern void sub_800A594();
extern void sub_800A710(u16 a1);
extern void sub_800B958(int a1, int a2, int a3, int a4, int a5);
extern bool32 sub_0800BCD4(struct struc_44* a1);
extern void sub_800BFA0(int room, int warp, int a3);
extern void sub_800C1E8(int room, int a2, int a3, int a4, int a5, u32 a6);
extern void sub_0800C388(int a1, int a2);
extern int sub_800C50C();
extern void sub_800C604();
extern void sub_0800CD94(int a1);
extern void load_mini_game_from_arcade(int miniGame);
extern void sub_800D5FC(int a1, int a2, int a3);
extern void sub_800D8E8(int a1, char a2, char a3);
extern void sub_800DA04(int a1, int a2, int a3);
extern void sub_800DAE4(bool32 a1);
extern void sub_800DC4C(int a1, bool32 a2);
extern void sub_800DCE4(int a1);
extern void sub_800DD78(int a1);
extern bool32 sub_800DE04();
extern void sub_800DE9C();
extern void decrease_player_health(int a1);
extern void sub_800E204(u8* buffer, s32* a2, u32* a3);
extern void sub_800E408(u8* buffer, s32* a2, u32* a3);
extern void MakeFileStrings();
extern void init_savefiles();
extern void reset_savefiles();
extern void sub_800E9EC(struct Sprite* a1, int palette, int a3);
extern void sub_800EB14();
extern void sub_800EC94();
extern void sub_800ECB4();
extern void init_room_name();
extern void hide_room_name();
extern void sub_800EECC();
extern void sub_0800F02C(int* a1, int a2, int a3);
extern void sub_800F7A0();
extern bool32 IsGameComplete();
extern void init_efx();
extern void pause_efx();
extern void resume_efx();

#endif
