
#ifndef GUARD_SCRIPT_DEFS_H
#define GUARD_SCRIPT_DEFS_H

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
    SCRIPT_CMD_ACTOR_SET_SORT_OFFSET,
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
    SCRIPT_CMD_ACTOR_DO_NOT_SNAP,
    SCRIPT_CMD_ACTOR_ALWAYS_VISIBLE,
    SCRIPT_CMD_ALLOC_OAM_MATRICES,
    SCRIPT_CMD_FREE_OAM_MATRICES,
    SCRIPT_CMD_ACTOR_SET_MATRIX_IDX,
    SCRIPT_CMD_ACTOR_SET_AFFINE,
    SCRIPT_CMD_ACTOR_START_SCALING,
    SCRIPT_CMD_ACTOR_START_ROTATION,
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
    SCRIPT_CMD_CAMERA_DO_NOT_SNAP,
    SCRIPT_CMD_CAMERA_RETURN_PRESCENE,
    SCRIPT_CMD_sub_805FB80,
    SCRIPT_CMD_sub_805FBA4,
    SCRIPT_CMD_sub_805FBB4,
    SCRIPT_CMD_sub_805FBF4,
    SCRIPT_CMD_SET_PRIORITY,
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
    SCRIPT_WAIT_COND_ACTOR_SCALING_DONE,
    SCRIPT_WAIT_COND_ACTOR_ROTATING_DONE,
    SCRIPT_WAIT_COND_ACTOR_ANIM_DONE,
    SCRIPT_WAIT_COND_NOT_IN_DIALOGUE,
    SCRIPT_WAIT_COND_INPUT_DEMO_DONE,
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

enum ScriptIdx {
    SCRIPT_000,
    SCRIPT_001,
    SCRIPT_002,
    SCRIPT_003,
    SCRIPT_004,
    SCRIPT_005,
    SCRIPT_006,
    SCRIPT_007,
    SCRIPT_008,
    SCRIPT_009,
    SCRIPT_010,
    SCRIPT_011,
    SCRIPT_012,
    SCRIPT_013,
    SCRIPT_014,
    SCRIPT_015,
    SCRIPT_016,
    SCRIPT_017,
    SCRIPT_018,
    SCRIPT_019,
    SCRIPT_020,
    SCRIPT_021,
    SCRIPT_022,
    SCRIPT_023,
    SCRIPT_024,
    SCRIPT_025,
    SCRIPT_026,
    SCRIPT_027,
    SCRIPT_028,
    SCRIPT_029,
    SCRIPT_030,
    SCRIPT_031,
    SCRIPT_032,
    SCRIPT_033,
    SCRIPT_034,
    SCRIPT_035,
    SCRIPT_036,
    SCRIPT_037,
    SCRIPT_038,
    SCRIPT_039,
    SCRIPT_040,
    SCRIPT_041,
    SCRIPT_042,
    SCRIPT_043,
    SCRIPT_044,
    SCRIPT_045,
    SCRIPT_046,
    SCRIPT_047,
    SCRIPT_048,
    SCRIPT_049,
    SCRIPT_050,
    SCRIPT_051,
    SCRIPT_052,
    SCRIPT_053,
    SCRIPT_054,
    SCRIPT_055,
    SCRIPT_056,
    SCRIPT_057,
    SCRIPT_058,
    SCRIPT_059,
    SCRIPT_060,
    SCRIPT_061,
    SCRIPT_062,
    SCRIPT_063,
    SCRIPT_064,
    SCRIPT_065,
    SCRIPT_066,
    SCRIPT_067,
    SCRIPT_068,
    SCRIPT_069,
    SCRIPT_070,
    SCRIPT_071,
    SCRIPT_072,
    SCRIPT_073,
    SCRIPT_074,
    SCRIPT_075,
    SCRIPT_076,
    SCRIPT_077,
    SCRIPT_078,
    SCRIPT_079,
    SCRIPT_DOLPHIN_LEAD_TO_SHIP,
    SCRIPT_DOLPHIN_CIRCLE_SHIP,
    SCRIPT_082,
    SCRIPT_083,
    SCRIPT_084,
    SCRIPT_085,
    SCRIPT_086,
    SCRIPT_087,
    SCRIPT_088,
    SCRIPT_089,
    SCRIPT_090,
    SCRIPT_091,
    SCRIPT_092,
    SCRIPT_093,
    SCRIPT_094,
    SCRIPT_095,
    SCRIPT_096,
    SCRIPT_097,
    SCRIPT_098,
    SCRIPT_099,
    SCRIPT_100,
    SCRIPT_101,
    SCRIPT_102,
    SCRIPT_103,
    SCRIPT_104,
    SCRIPT_105,
    SCRIPT_106,
    SCRIPT_107,
    SCRIPT_108,
    SCRIPT_109,
    SCRIPT_110,
    SCRIPT_111,
    SCRIPT_112,
    SCRIPT_113,
    SCRIPT_114,
    SCRIPT_115,
    SCRIPT_116,
    SCRIPT_117,
    SCRIPT_118,
    SCRIPT_119,
    SCRIPT_120,
    SCRIPT_121,
    SCRIPT_122,
    SCRIPT_123,
    SCRIPT_124,
    SCRIPT_125,
    SCRIPT_126,
    SCRIPT_127,
    SCRIPT_128,
    SCRIPT_129,
    SCRIPT_130,
    SCRIPT_131,
    SCRIPT_132,
    SCRIPT_133,
    SCRIPT_134,
    SCRIPT_135,
    SCRIPT_136,
    SCRIPT_137,
    SCRIPT_138,
    SCRIPT_139,
    SCRIPT_140,
    SCRIPT_141,
    SCRIPT_142,
    SCRIPT_143,
    SCRIPT_144,
    SCRIPT_145,
    SCRIPT_146,
    SCRIPT_147,
    SCRIPT_148,
    SCRIPT_149,
    SCRIPT_150,
    SCRIPT_151,
    SCRIPT_152,
    SCRIPT_153,
    SCRIPT_154,
    SCRIPT_155,
    SCRIPT_156,
    SCRIPT_157,
    SCRIPT_158,
    SCRIPT_159,
    SCRIPT_160,
    SCRIPT_161,
    SCRIPT_162,
    SCRIPT_163,
    SCRIPT_164,
    SCRIPT_165,
    SCRIPT_166,
    SCRIPT_167,
    SCRIPT_168,
    SCRIPT_169,
    SCRIPT_170,
    SCRIPT_171,
    SCRIPT_172,
    SCRIPT_173,
    SCRIPT_174,
    SCRIPT_175,
    SCRIPT_176,
    SCRIPT_177,
    SCRIPT_178,
    SCRIPT_179,
    SCRIPT_180,

    SCRIPT_COUNT
};

extern const struct ScriptInstruction* const dScripts[SCRIPT_COUNT];

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

#define ActorSetSortOffset(actorIdx, unknown)                                                          \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_SORT_OFFSET, actorIdx, unknown, 0, 0)

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

#define ActorDoNotSnap(actorIdx, doNotSnap)                                                            \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_DO_NOT_SNAP, actorIdx, doNotSnap, 0, 0)

#define ActorAlwaysVisible(actorIdx, alwaysVisible)                                                    \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_ALWAYS_VISIBLE, actorIdx, alwaysVisible, 0, 0)

#define AllocOamMatrices(count) SCRIPT_CMD(SCRIPT_CMD_ALLOC_OAM_MATRICES, count, 0, 0, 0)

#define FreeOamMatrices SCRIPT_CMD(SCRIPT_CMD_FREE_OAM_MATRICES, 0, 0, 0, 0)

#define ActorSetMatrixIdx(actorIdx, matrixIdx)                                                         \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_MATRIX_IDX, actorIdx, matrixIdx, 0, 0)

#define ActorSetAffine(actorIdx, rotation, scale)                                                      \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_SET_AFFINE, actorIdx, rotation, scale, 0)

#define ActorStartScaling(actorIdx, goal, speed)                                                       \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_START_SCALING, actorIdx, goal, speed, 0)

#define ActorStartRotation(actorIdx, goal, speed, clockwise)                                           \
    SCRIPT_CMD(SCRIPT_CMD_ACTOR_START_ROTATION, actorIdx, goal, speed, clockwise)

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

#define CameraDoNotSnap(doNotSnap) SCRIPT_CMD(SCRIPT_CMD_CAMERA_DO_NOT_SNAP, doNotSnap, 0, 0, 0)

#define CameraReturnPrescene(moveSpeed)                                                                \
    SCRIPT_CMD(SCRIPT_CMD_CAMERA_RETURN_PRESCENE, moveSpeed, 0, 0, 0)

#define Sub805FB80 SCRIPT_CMD(SCRIPT_CMD_sub_805FB80, 0, 0, 0, 0)

#define Sub805FBA4 SCRIPT_CMD(SCRIPT_CMD_sub_805FBA4, 0, 0, 0, 0)

#define Sub805FBB4(unknown1, unknown2) SCRIPT_CMD(SCRIPT_CMD_sub_805FBB4, unknown1, unknown2, 0, 0)

#define Sub805FBF4(unknown1, unknown2) SCRIPT_CMD(SCRIPT_CMD_sub_805FBF4, unknown1, unknown2, 0, 0)

#define SetPriority(unknown) SCRIPT_CMD(SCRIPT_CMD_SET_PRIORITY, unknown, 0, 0, 0)

#define SetWaitFrames(frames) SCRIPT_CMD(SCRIPT_CMD_SET_WAIT_FRAMES, frames, 0, 0, 0)

#define Sub805FCB0(unknown1, unknown2) SCRIPT_CMD(SCRIPT_CMD_sub_805FCB0, unknown1, unknown2, 0, 0)

#define Sub805FCEC(unknown1, unknown2, unknown3, unknown4)                                             \
    SCRIPT_CMD(SCRIPT_CMD_sub_805FCEC, unknown1, unknown2, unknown3, unknown4)

#define SetPlayerDirection(direction) SCRIPT_CMD(SCRIPT_CMD_SET_PLAYER_DIRECTION, direction, 0, 0, 0)

#define WaitForCond(condition, actorIdx) SCRIPT_CMD(SCRIPT_CMD_WAIT_FOR_COND, condition, actorIdx, 0, 0)

#define End SCRIPT_CMD(SCRIPT_CMD_END, 0, 0, 0, 0)

#define DisplaySceneTransition(textType)                                                               \
    SCRIPT_CMD(SCRIPT_CMD_DISPLAY_SCENE_TRANSITION, textType, 0, 0, 0)

#define DisplayTimeTravelScene(unknown)                                                                \
    SCRIPT_CMD(SCRIPT_CMD_DISPLAY_TIME_TRAVEL_SCENE, unknown, 0, 0, 0)

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

#endif // GUARD_SCRIPT_DEFS_H
