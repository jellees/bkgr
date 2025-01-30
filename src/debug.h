#ifndef GUARD_DEBUG_H
#define GUARD_DEBUG_H

void init_debug(void);
void Debug_ShowInfo(void);
void Debug_SetAfterGameUpdate(s32 vcount);
void Debug_SetAfterVideoUpdate(u32 vcount);
void sub_08010A20(void);
void sub_08010A28(void);
void sub_08010A30(void);
void sub_08010A38(void);
void sub_08010A40(void);
void sub_08010A48(void);
void sub_08010A50(void);
void sub_08010A58(void);
void sub_08010A60(void);
void sub_08010A68(void);
void sub_08010A70(void);
void sub_08010A78(void);
void sub_08010A80(void);
void sub_08010A88(void);
void sub_08010A90(void);
void sub_08010A98(void);
void sub_08010AA0(void);
void sub_08010AA8(void);
void sub_08010AB0(void);
void sub_08010AB8(void);
void sub_08010AC0(void);
void sub_08010AC8(void);
void sub_08010AD0(void);
void sub_08010AD8(void);
void sub_08010AE0(void);
void sub_08010AE8(void);
void sub_08010AF0(void);
void sub_08010AF8(void);
void sub_08010B00(void);
void sub_08010B08(void);
void sub_08010B10(void);
void sub_08010B18(void);
void sub_08010B20(void);
void sub_08010B28(void);
void sub_08010B30(void);
void sub_08010B38(void);
void sub_08010B40(void);
void sub_08010B48(void);
void sub_08010B50(void);
void sub_08010B58(void);
void sub_08010B60(void);
void sub_08010B68(void);
void sub_08010B70(void);
void sub_08010B78(void);
void sub_08010B80(void);
void sub_08010B88(void);
void sub_08010B90(void);
void sub_08010B98(void);
void sub_08010BA0(void);
void debug_record_input(void);
void init_input_recording(void);
void free_input_record_memory(void);
void display_error_message(char* type, char* message);

extern u8 byte_2001200;
extern u8 gMainFrameCounter;
extern u8 gDebugFPS;
extern bool8 gDebugGodMode;

#endif
