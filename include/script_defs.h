
#include "gba/types.h"

struct ScriptInstruction {
    u32 idx;
    u32 arg0;
    u32 arg1;
    u32 arg2;
    u32 arg3;
};

typedef struct ScriptInstruction Script[];

enum ScriptCommand {
    SCRIPT_CMD_ALLOC_ACTORS,
    SCRIPT_CMD_LOAD_AND_STORE_ROOM,
    SCRIPT_CMD_LOAD_ROOM,
    SCRIPT_CMD_RESTORE_ROOM,
    SCRIPT_CMD_JUMP,
    SCRIPT_CMD_JUMP_COND,
    SCRIPT_CMD_HIDE_PLAYER,
    SCRIPT_CMD_ACTOR_INIT,
    SCRIPT_CMD_ACTOR_DISABLE,
    SCRIPT_CMD_ACTOR_ENABLE,
    SCRIPT_CMD_ACTOR_SET_ANIM,
    SCRIPT_CMD_ACTOR_SET_GAMEOVER_ANIM,
    SCRIPT_CMD_ACTOR_SET_POSITION,
    SCRIPT_CMD_ACTOR_SET_POSITION_RELATIVE_FROM_SAVED_POSITION,
    SCRIPT_CMD_ACTOR_SET_POSITION_FROM_CAM,
    SCRIPT_CMD_ACTOR_SET_POSITION_ABSOLUTE,
    SCRIPT_CMD_ACTOR_SAVE_POSITION,
    SCRIPT_CMD_sub_805EEBC,
    SCRIPT_CMD_sub_805EF0C,
    SCRIPT_CMD_ACTOR_SET_DIRECTION,
    SCRIPT_CMD_ACTOR_ROTATE_TO_TARGET,
    SCRIPT_CMD_ACTOR_SET_PRIORITY,
    SCRIPT_CMD_ACTOR_REVERT_PRIORITY,
    SCRIPT_CMD_sub_805F04C,
    SCRIPT_CMD_ACTOR_SET_OBJ_MODE,
    SCRIPT_CMD_ACTOR_SET_PALETTE,
    SCRIPT_CMD_ACTOR_LOCK_ANIM_ON_FRAME,
    SCRIPT_CMD_ACTOR_UNLOCK_ANIM,
    SCRIPT_CMD_ACTOR_SET_LOCKED_FRAME,
    SCRIPT_CMD_ACTOR_SET_FRAME,
    SCRIPT_CMD_sub_805F120,
    SCRIPT_CMD_ACTOR_MOVE,
    SCRIPT_CMD_ACTOR_MOVE_TO_SAVED_POSITION,
    SCRIPT_CMD_ACTOR_MOVE_FROM_CAM,
    SCRIPT_CMD_sub_805F40C,
    SCRIPT_CMD_sub_805F428,
    SCRIPT_CMD_ALLOC_OAM_MATRICES,
    SCRIPT_CMD_FREE_OAM_MATRICES,
    SCRIPT_CMD_sub_805F480,
    SCRIPT_CMD_sub_805F4B0,
    SCRIPT_CMD_sub_805F4DC,
    SCRIPT_CMD_sub_805F51C,
    SCRIPT_CMD_PLAY_BGM,
    SCRIPT_CMD_STOP_BGM,
    SCRIPT_CMD_PLAY_SFX,
    SCRIPT_CMD_STOP_SFX,
    SCRIPT_CMD_STOP_ALL_SFX,
    SCRIPT_CMD_PLAY_BILL_DRILL_SFX,
    SCRIPT_CMD_STOP_BILL_DRILL_SFX,
    SCRIPT_CMD_SET_BGM_VOLUME,
    SCRIPT_CMD_SET_BGM_VOLUME_IF_LOUDER,
    SCRIPT_CMD_SET_SFX_VOLUME,
    SCRIPT_CMD_SET_BGM_VOLUME_GLOBAL_OR_MUTE,
    SCRIPT_CMD_sub_805F7D8,
    SCRIPT_CMD_START_INPUT_DEMO,
    SCRIPT_CMD_CAMERA_ALLOC,
    SCRIPT_CMD_CAMERA_FREE,
    SCRIPT_CMD_CAMERA_MOVE,
    SCRIPT_CMD_CAMERA_MOVE_TO_ACTOR_POSITION,
    SCRIPT_CMD_CAMERA_MOVE_TO_SAVED_POSITION,
    SCRIPT_CMD_CAMERA_SAVE_POSITION,
    SCRIPT_CMD_sub_805FB38,
    SCRIPT_CMD_CAMERA_RETURN_PRESCENE,
    SCRIPT_CMD_sub_805FB80,
    SCRIPT_CMD_sub_805FBA4,
    SCRIPT_CMD_sub_805FBB4,
    SCRIPT_CMD_sub_805FBF4,
    SCRIPT_CMD_sub_805FC34,
    SCRIPT_CMD_SET_WAIT_FRAMES,
    SCRIPT_CMD_sub_805FCB0,
    SCRIPT_CMD_sub_805FCEC,
    SCRIPT_CMD_SET_PLAYER_DIRECTION,
    SCRIPT_CMD_WAIT_FOR_COND,
    SCRIPT_CMD_END,
    SCRIPT_CMD_DISPLAY_SCENE_TRANSITION,
    SCRIPT_CMD_DISPLAY_TIME_TRAVEL_SCENE,
    SCRIPT_CMD_sub_8060568,
    SCRIPT_CMD_DISPLAY_LICENSE_SCREEN,
    SCRIPT_CMD_sub_8060B90,
    SCRIPT_CMD_PLAYER_SAVE_POSITION,
    SCRIPT_CMD_END_ALL_SCRIPTS,
    SCRIPT_CMD_LOAD_ROOM_OBJ_PALETTE,
    SCRIPT_CMD_sub_8060C4C,
    SCRIPT_CMD_sub_8060C78,
    SCRIPT_CMD_sub_8060CB8,
    SCRIPT_CMD_sub_8060CC4,
    SCRIPT_CMD_sub_8060D74,
    SCRIPT_CMD_sub_8060D80,
    SCRIPT_CMD_sub_8060D90,

    SCRIPT_CMD_COUNT
};

enum ScriptJumpCond {
    SCRIPT_JUMP_COND_NONE,
    SCRIPT_JUMP_COND_NONE_EX,
    SCRIPT_JUMP_COND_GAME_COMPLETE,
    SCRIPT_JUMP_COND_TRANSFORMED,
    SCRIPT_JUMP_COND_SHOCK_JUMP_LOCKED,
    SCRIPT_JUMP_COND_WONDERWING_LOCKED,
};

enum ScriptWaitCond {
    SCRIPT_WAIT_COND_FRAMES,
    SCRIPT_WAIT_COND_ACTOR_NOT_MOVING,
    SCRIPT_WAIT_COND_2,
    SCRIPT_WAIT_COND_3,
    SCRIPT_WAIT_COND_ACTOR_ANIM_DONE,
    SCRIPT_WAIT_COND_NOT_IN_DIALOGUE,
    SCRIPT_WAIT_COND_6,
    SCRIPT_WAIT_COND_CAMERA_NOT_MOVING,
    SCRIPT_WAIT_COND_8,
    SCRIPT_WAIT_COND_9,
    SCRIPT_WAIT_COND_10,
    SCRIPT_WAIT_COND_11,
    SCRIPT_WAIT_COND_SFX_DONE,
    SCRIPT_WAIT_COND_13,
    SCRIPT_WAIT_COND_14,
    SCRIPT_WAIT_COND_15,
    SCRIPT_WAIT_COND_16,
};

/****** COMMANDS **************************************************************************************/

/**
 * This macro expands the command index and arguments into the right structure.
 */
#define SCRIPT_CMD(idx, arg0, arg1, arg2, arg3) { (idx), (arg0), (arg1), (arg2), (arg3) },

#define AllocActors(count) SCRIPT_CMD(SCRIPT_CMD_ALLOC_ACTORS, count, 0, 0, 0)

#define LoadAndStoreRoom(room, warp, unknown, changeMusic)                                             \
    SCRIPT_CMD(SCRIPT_CMD_LOAD_AND_STORE_ROOM, room, warp, unknown, changeMusic)

#define LoadRoom(room, warp, unknown, changeMusic)                                                     \
    SCRIPT_CMD(SCRIPT_CMD_LOAD_ROOM, room, warp, unknown, changeMusic)

#define RestoreRoom(unknown) SCRIPT_CMD(SCRIPT_CMD_RESTORE_ROOM, unknown, 0, 0, 0)

#define Jump(scriptIdx, cmdIdx) SCRIPT_CMD(SCRIPT_CMD_JUMP, scriptIdx, cmdIdx, 0, 0)

#define JumpCond(condition, scriptIdx, cmdIdx)                                                         \
    SCRIPT_CMD(SCRIPT_CMD_JUMP_COND, condition, scriptIdx, cmdIdx, 0)

#define HidePlayer(hide) SCRIPT_CMD(SCRIPT_CMD_HIDE_PLAYER, hide, 0, 0, 0)

#define ActorInit(actorIdx) SCRIPT_CMD(SCRIPT_CMD_ACTOR_INIT, actorIdx, 0, 0, 0)

#define ActorDisable(actorIdx) SCRIPT_CMD(SCRIPT_CMD_ACTOR_DISABLE, actorIdx, 0, 0, 0)

#define ActorEnable(actorIdx) SCRIPT_CMD(SCRIPT_CMD_ACTOR_ENABLE, actorIdx, 0, 0, 0)

#define ActorSetAnim(actorIdx, spriteIdx, maxAnimRepeats)                                              \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_ANIM, actorIdx, spriteIdx, maxAnimRepeats, 0)

#define ActorSetGameOverAnim(actorIdx, anim)                                                           \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_GAMEOVER_ANIM, actorIdx, anim, 0, 0)

#define ActorSetPosition(actorIdx, xPos, yPos)                                                         \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_POSITION, actorIdx, xPos, yPos, 0)

#define ActorSetPositionRelativeFromSavedPosition(actorIdx, xPos, yPos)                                \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_POSITION_RELATIVE_FROM_SAVED_POSITION, actorIdx, xPos, yPos, 0)

#define ActorSetPositionFromCam(actorIdx, xPos, yPos)                                                  \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_POSITION_FROM_CAM, actorIdx, xPos, yPos, 0)

#define ActorSetPositionAbsolute(actorIdx, xPos, yPos)                                                 \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_POSITION_ABSOLUTE, actorIdx, xPos, yPos, 0)

#define ActorSavePosition(actorIdx) SCRIPT_CMD(SCRIPT_CMD_ACTOR_SAVE_POSITION, actorIdx, 0, 0, 0)

#define Sub805EEBC(actorIdx) SCRIPT_CMD(SCRIPT_CMD_sub_805EEBC, actorIdx, 0, 0, 0)

#define Sub805EF0C(actorIdx) SCRIPT_CMD(SCRIPT_CMD_sub_805EF0C, actorIdx, 0, 0, 0)

#define ActorSetDirection(actorIdx, direction)                                                         \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_DIRECTION, actorIdx, direction, 0, 0)

#define ActorRotateToTarget(actorIdx) SCRIPT_CMD(SCRIPT_CMD_ACTOR_ROTATE_TO_TARGET, actorIdx, 0, 0, 0)

#define ActorSetPriority(actorIdx, priority)                                                           \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_PRIORITY, actorIdx, priority, 0, 0)

#define ActorRevertPriority(actorIdx) SCRIPT_CMD(SCRIPT_CMD_ACTOR_REVERT_PRIORITY, actorIdx, 0, 0, 0)

#define Sub805F04C(actorIdx, unknown) SCRIPT_CMD(SCRIPT_CMD_sub_805F04C, actorIdx, unknown, 0, 0)

#define ActorSetObjMode(actorIdx, objMode)                                                             \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_OBJ_MODE, actorIdx, objMode, 0, 0)

#define ActorSetPalette(actorIdx, palette)                                                             \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_PALETTE, actorIdx, palette, 0, 0)

#define ActorLockAnimOnFrame(actorIdx, frame)                                                          \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_LOCK_ANIM_ON_FRAME, actorIdx, frame, 0, 0)

#define ActorUnlockAnim(actorIdx) SCRIPT_CMD(SCRIPT_CMD_ACTOR_UNLOCK_ANIM, actorIdx, 0, 0, 0)

#define ActorSetLockedFrame(actorIdx, frame)                                                           \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_LOCKED_FRAME, actorIdx, frame, 0, 0)

#define ActorSetFrame(actorIdx, frame) SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_FRAME, actorIdx, frame, 0, 0)

#define Sub805F120(actorIdx) SCRIPT_CMD(SCRIPT_CMD_sub_805F120, actorIdx, 0, 0, 0)

#define ActorMove(actorIdx, x, y, moveSpeed)                                                           \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_MOVE, actorIdx, x, y, moveSpeed)

#define ActorMoveToSavedPosition(actorIdx, moveSpeed)                                                  \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_MOVE_TO_SAVED_POSITION, actorIdx, moveSpeed, 0, 0)

#define ActorMoveFromCam(actorIdx, x, y, moveSpeed)                                                    \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_MOVE_FROM_CAM, actorIdx, x, y, moveSpeed)

#define Sub805F40C(actorIdx, unknown) SCRIPT_CMD(SCRIPT_CMD_sub_805F40C, actorIdx, unknown, 0, 0)

#define Sub805F428(actorIdx, unknown) SCRIPT_CMD(SCRIPT_CMD_sub_805F428, actorIdx, unknown, 0, 0)

#define AllocOamMatrices(count) SCRIPT_CMD(SCRIPT_CMD_ALLOC_OAM_MATRICES, count, 0, 0, 0)

#define FreeOamMatrices SCRIPT_CMD(SCRIPT_CMD_FREE_OAM_MATRICES, 0, 0, 0, 0)

#define Sub805F480(actorIdx, unknown) SCRIPT_CMD(SCRIPT_CMD_sub_805F480, actorIdx, unknown, 0, 0)

#define Sub805F4B0(actorIdx, unknown1, unknown2)                                                       \
    SCRIPT_CMD(SCRIPT_CMD_sub_805F4B0, actorIdx, unknown1, unknown2, 0)

#define Sub805F4DC(actorIdx, unknown1, unknown2)                                                       \
    SCRIPT_CMD(SCRIPT_CMD_sub_805F4DC, actorIdx, unknown1, unknown2, 0)

#define Sub805F51C(actorIdx, unknown1, unknown2, unknown3)                                             \
    SCRIPT_CMD(SCRIPT_CMD_sub_805F51C, actorIdx, unknown1, unknown2, unknown3)

#define PlayBgm(bgm) SCRIPT_CMD(SCRIPT_CMD_PLAY_BGM, bgm, 0, 0, 0)

#define StopBgm SCRIPT_CMD(SCRIPT_CMD_STOP_BGM, 0, 0, 0, 0)

#define PlaySfx(sfx, storeSfx) SCRIPT_CMD(SCRIPT_CMD_PLAY_SFX, sfx, storeSfx, 0, 0)

#define StopSfx SCRIPT_CMD(SCRIPT_CMD_STOP_SFX, 0, 0, 0, 0)

#define StopAllSfx SCRIPT_CMD(SCRIPT_CMD_STOP_ALL_SFX, 0, 0, 0, 0)

#define PlayBillDrillSfx SCRIPT_CMD(SCRIPT_CMD_PLAY_BILL_DRILL_SFX, 0, 0, 0, 0)

#define StopBillDrillSfx SCRIPT_CMD(SCRIPT_CMD_STOP_BILL_DRILL_SFX, 0, 0, 0, 0)

#define SetBgmVolume(volume, useGlobal) SCRIPT_CMD(SCRIPT_CMD_SET_BGM_VOLUME, volume, useGlobal, 0, 0)

#define SetBgmVolumeIfLouder(volume, useGlobal)                                                        \
    SCRIPT_CMD(SCRIPT_CMD_SET_BGM_VOLUME_IF_LOUDER, volume, useGlobal, 0, 0)

#define SetSfxVolume(volume, useGlobal) SCRIPT_CMD(SCRIPT_CMD_SET_SFX_VOLUME, volume, useGlobal, 0, 0)

#define SetBgmVolumeGlobalOrMute(useGlobal)                                                            \
    SCRIPT_CMD(SCRIPT_CMD_SET_BGM_VOLUME_GLOBAL_OR_MUTE, useGlobal, 0, 0, 0)

#define Sub805F7D8(unknown) SCRIPT_CMD(SCRIPT_CMD_sub_805F7D8, unknown, 0, 0, 0)

#define StartInputDemo(forward) SCRIPT_CMD(SCRIPT_CMD_START_INPUT_DEMO, forward, 0, 0, 0)

#define CameraAlloc SCRIPT_CMD(SCRIPT_CMD_CAMERA_ALLOC, 0, 0, 0, 0)

#define CameraFree SCRIPT_CMD(SCRIPT_CMD_CAMERA_FREE, 0, 0, 0, 0)

#define CameraMove(x, y, moveSpeed) SCRIPT_CMD(SCRIPT_CMD_CAMERA_MOVE, x, y, moveSpeed, 0)

#define CameraMoveToActorPosition(moveSpeed)                                                           \
    SCRIPT_CMD(SCRIPT_CMD_CAMERA_MOVE_TO_ACTOR_POSITION, moveSpeed, 0, 0, 0)

#define CameraMoveToSavedPosition(moveSpeed)                                                           \
    SCRIPT_CMD(SCRIPT_CMD_CAMERA_MOVE_TO_SAVED_POSITION, moveSpeed, 0, 0, 0)

#define CameraSavePosition SCRIPT_CMD(SCRIPT_CMD_CAMERA_SAVE_POSITION, 0, 0, 0, 0)

#define Sub805FB38(unknown) SCRIPT_CMD(SCRIPT_CMD_sub_805FB38, unknown, 0, 0, 0)

#define CameraReturnPrescene(moveSpeed)                                                                \
    SCRIPT_CMD(SCRIPT_CMD_CAMERA_RETURN_PRESCENE, moveSpeed, 0, 0, 0)

#define Sub805FB80 SCRIPT_CMD(SCRIPT_CMD_sub_805FB80, 0, 0, 0, 0)

#define Sub805FBA4 SCRIPT_CMD(SCRIPT_CMD_sub_805FBA4, 0, 0, 0, 0)

#define Sub805FBB4(unknown1, unknown2) SCRIPT_CMD(SCRIPT_CMD_sub_805FBB4, unknown1, unknown2, 0, 0)

#define Sub805FBF4(unknown1, unknown2) SCRIPT_CMD(SCRIPT_CMD_sub_805FBF4, unknown1, unknown2, 0, 0)

#define Sub805FC34(unknown) SCRIPT_CMD(SCRIPT_CMD_sub_805FC34, unknown, 0, 0, 0)

#define SetWaitFrames(frames) SCRIPT_CMD(SCRIPT_CMD_SET_WAIT_FRAMES, frames, 0, 0, 0)

#define Sub805FCB0(unknown1, unknown2) SCRIPT_CMD(SCRIPT_CMD_sub_805FCB0, unknown1, unknown2, 0, 0)

#define Sub805FCEC(unknown1, unknown2, unknown3, unknown4)                                             \
    SCRIPT_CMD(SCRIPT_CMD_sub_805FCEC, unknown1, unknown2, unknown3, unknown4)

#define SetPlayerDirection(direction) SCRIPT_CMD(SCRIPT_CMD_SET_PLAYER_DIRECTION, direction, 0, 0, 0)

#define WaitForCond(condition, actorIdx) SCRIPT_CMD(SCRIPT_CMD_WAIT_FOR_COND, condition, actorIdx, 0, 0)

#define End SCRIPT_CMD(SCRIPT_CMD_END, 0, 0, 0, 0)

#define DisplaySceneTransition(textType)                                                               \
    SCRIPT_CMD(SCRIPT_CMD_DISPLAY_SCENE_TRANSITION, textType, 0, 0, 0)

#define DisplayTimeTravelScene(unknown) SCRIPT_CMD(SCRIPT_CMD_DISPLAY_TIME_TRAVEL_SCENE, unknown, 0, 0, 0)

#define Sub8060568 SCRIPT_CMD(SCRIPT_CMD_sub_8060568, 0, 0, 0, 0)

#define DisplayLicenseScreen SCRIPT_CMD(SCRIPT_CMD_DISPLAY_LICENSE_SCREEN, 0, 0, 0, 0)

#define Sub8060B90(unused) SCRIPT_CMD(SCRIPT_CMD_sub_8060B90, unused, 0, 0, 0)

#define PlayerSavePosition SCRIPT_CMD(SCRIPT_CMD_PLAYER_SAVE_POSITION, 0, 0, 0, 0)

#define EndAllScripts SCRIPT_CMD(SCRIPT_CMD_END_ALL_SCRIPTS, 0, 0, 0, 0)

#define LoadRoomObjPalette(room) SCRIPT_CMD(SCRIPT_CMD_LOAD_ROOM_OBJ_PALETTE, room, 0, 0, 0)

#define Sub8060C4C(unknown1, unknown2, unknown3)                                                       \
    SCRIPT_CMD(SCRIPT_CMD_sub_8060C4C, unknown1, unknown2, unknown3, 0)

#define Sub8060C78 SCRIPT_CMD(SCRIPT_CMD_sub_8060C78, 0, 0, 0, 0)

#define Sub8060CB8(unknown) SCRIPT_CMD(SCRIPT_CMD_sub_8060CB8, unknown, 0, 0, 0)

#define Sub8060CC4(actorIdx) SCRIPT_CMD(SCRIPT_CMD_sub_8060CC4, actorIdx, 0, 0, 0)

#define Sub8060D74 SCRIPT_CMD(SCRIPT_CMD_sub_8060D74, 0, 0, 0, 0)

#define Sub8060D80 SCRIPT_CMD(SCRIPT_CMD_sub_8060D80, 0, 0, 0, 0)

#define Sub8060D90 SCRIPT_CMD(SCRIPT_CMD_sub_8060D90, 0, 0, 0, 0)
