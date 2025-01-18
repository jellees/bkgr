#ifndef GUARD_SCRIPT_H
#define GUARD_SCRIPT_H

extern const struct InputRecord* gInputDemoRecords;
extern u16 gInputDemoStep;
extern u16 gInputDemoRecordCount;
extern s16 gScriptSavedPosX;
extern s16 gScriptSavedPosY;
extern s16 word_203F998;
extern s16 word_203F99A;
extern u8 byte_203F99C;
extern u8 gScriptSavedPriority;
extern bool8 byte_203F99E;
extern u8 byte_203F99F;
extern u8 gActorCount;
extern bool8 gReadKeysFromDemoInput;
extern bool8 gHidePlayer;

extern fx32 dword_203F9F8;
extern fx32 dword_203F9FC;
extern u32 dword_0203FA00; // Unused.
extern u32 dword_0203FA04; // Unused.
extern fx32 gScriptCameraSavePosX;
extern fx32 gScriptCameraSavePosY;
extern u16 gInputDemoFrames;
extern u8 byte_203FA12;
extern bool8 gInputDemoIsForward;
extern u8 byte_203FA14;
extern u8 byte_203FA15;
extern u8 byte_203FA16;
extern u8 byte_203FA16_2;
extern struct ScriptCamera* gScriptCamera;
extern fx32 dword_203FA1C;
extern fx32 dword_203FA20;
extern u32 dword_203FA24;
extern u32 dword_203FA28;

extern const struct InputRecord unk_80B21B4[];
extern const u32 dword_80B21B8;
extern const struct InputRecord stru_80B21BC[];
extern const u32 dword_80B21C8;

#endif
