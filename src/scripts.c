#include "global.h"
#include "common.h"
#include "script_defs.h"

// clang-format off

const Script script_80B2204 = {
    DisplaySceneTransition(0)
    End
};

const Script script_80B222C = {
    Sub805FC34(0)
    Sub805F808(TRUE)
    WaitForCond(SCRIPT_WAIT_COND_6, 0)
    End
};

const Script script_80B227C = {
    Sub805F808(FALSE)
    WaitForCond(SCRIPT_WAIT_COND_6, 0)
    End
};

const Script script_80B22B8 = {
    Sub805FC34(1)
    AllocActors(2)
    ActorInit(0)
    ActorSetAnim(0, 1217, 0)
    ActorSetPosition(0, 129, 224)
    ActorSetPriority(0, 1)
    Sub805F04C(0, 1)
    ActorInit(1)
    ActorSetAnim(1, 0, 0)
    ActorSetPosition(1, 129, 224)
    ActorSetPriority(1, 1)
    Sub805F04C(1, 1)
    ActorSetObjMode(1, 1)
    ActorLockAnimOnFrame(1, 0)
    ActorMove(0, 152, 288, FX32_CONST(0.6875))
    ActorMove(1, 152, 288, FX32_CONST(0.6875))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 0)
    ActorSetAnim(0, 1218, 1)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_ANIM_DONE, 0)
    ActorSavePosition(0)
    End
};

const Script script_80B245C = {
    Sub805FC34(1)
    Sub805FCB0(129, 305)
    WaitForCond(SCRIPT_WAIT_COND_9, 0)
    SetPlayerDirection(DIRECTION_UP)
    WaitForCond(SCRIPT_WAIT_COND_11, 0)
    WaitForCond(SCRIPT_WAIT_COND_10, 2)
    End
};

const Script script_80B24E8 = {
    SetWaitFrames(1)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    Jump(5, 0)
};

const Script script_80B2524 = {
    Sub805FC34(1)
    AllocActors(2)
    ActorInit(0)
    ActorSetAnim(0, 1216, 0)
    ActorSetPosition(0, 152, 288)
    ActorSetPriority(0, 1)
    Sub805F04C(0, 1)
    ActorInit(1)
    ActorSetAnim(1, 0, 0)
    ActorSetPosition(1, 152, 288)
    ActorSetPriority(1, 1)
    Sub805F04C(1, 1)
    ActorSetObjMode(1, 1)
    ActorLockAnimOnFrame(1, 0)
    ActorMove(0, 129, 200, FX32_CONST(0.6875))
    ActorMove(1, 129, 200, FX32_CONST(0.6875))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 0)
    End
};

const Script script_80B268C = {
    Sub805FC34(1)
    DisplayLicenseScreen
    AllocActors(6)
    ActorInit(0)
    ActorSetAnim(0, 1, 0)
    ActorSetPositionAbsolute(0, 250, 119)
    ActorSetPriority(0, 2)
    ActorSetDirection(0, DIRECTION_LEFT)
    ActorInit(1)
    ActorSetAnim(1, 1230, 0)
    ActorSetPositionAbsolute(1, 120, -30)
    ActorSetPriority(1, 1)
    ActorInit(2)
    ActorSetAnim(2, 862, 0)
    ActorSetPositionAbsolute(2, 260, 120)
    ActorSetPriority(2, 2)
    ActorSetDirection(2, DIRECTION_LEFT)
    ActorInit(3)
    ActorSetAnim(3, 862, 0)
    ActorSetPositionAbsolute(3, 385, 120)
    ActorSetPriority(3, 2)
    ActorSetDirection(3, DIRECTION_LEFT)
    ActorInit(4)
    ActorSetAnim(4, 862, 0)
    ActorSetPositionAbsolute(4, 320, 150)
    ActorSetPriority(4, 2)
    ActorSetDirection(4, DIRECTION_LEFT)
    ActorInit(5)
    ActorSetAnim(5, 862, 0)
    ActorSetPositionAbsolute(5, 440, 90)
    ActorSetPriority(5, 0)
    ActorSetDirection(5, DIRECTION_LEFT)
    ActorMove(0, 126, 119, FX32_CONST(1.6))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 0)
    ActorSetAnim(0, 33, 1)
    ActorSetDirection(0, DIRECTION_LEFT)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_ANIM_DONE, 0)
    SetWaitFrames(10)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    PlaySfx(23, FALSE)
    ActorSetAnim(0, 73, 1)
    ActorSetDirection(0, DIRECTION_LEFT)
    ActorMove(0, 120, 75, FX32_CONST(1.6))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 0)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_ANIM_DONE, 0)
    ActorSetAnim(0, 129, 1)
    ActorSetDirection(0, DIRECTION_DOWN)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_ANIM_DONE, 0)
    ActorSetAnim(0, 145, 0)
    ActorSetDirection(0, DIRECTION_DOWN)
    ActorMove(0, 120, 125, FX32_CONST(1.6))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 0)
    PlayBillDrillSfx
    ActorMove(1, 120, 80, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorMove(1, 120, 72, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorMove(1, 120, 80, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorMove(1, 120, 76, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorMove(1, 120, 80, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    StopBillDrillSfx
    ActorSetAnim(0, 137, 1)
    ActorSetDirection(0, DIRECTION_DOWN)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_ANIM_DONE, 0)
    ActorSetAnim(0, 25, 1)
    ActorSetDirection(0, DIRECTION_DOWN)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_ANIM_DONE, 0)
    PlaySfx(43, FALSE)
    ActorSetAnim(0, 161, 1)
    ActorSetDirection(0, DIRECTION_RIGHT)
    ActorMove(2, 50, 120, FX32_CONST(1.125))
    ActorMove(3, 180, 120, FX32_CONST(1.125))
    ActorMove(4, 110, 150, FX32_CONST(1.125))
    ActorMove(5, 110, 90, FX32_CONST(1.125))
    SetWaitFrames(7)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    PlaySfx(43, FALSE)
    SetWaitFrames(13)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    PlaySfx(43, FALSE)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_ANIM_DONE, 0)
    PlaySfx(43, FALSE)
    ActorSetAnim(0, 1, 0)
    ActorSetDirection(0, DIRECTION_LEFT)
    ActorMove(0, -60, 125, FX32_CONST(1.6))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 0)
    ActorSetAnim(2, 854, 0)
    ActorSetAnim(3, 854, 0)
    ActorSetAnim(5, 854, 0)
    ActorMove(2, 50, 120, FX32_CONST(0.625))
    ActorMove(3, 180, 120, FX32_CONST(0.625))
    ActorMove(4, 110, 150, FX32_CONST(0.625))
    ActorMove(5, 110, 90, FX32_CONST(0.625))
    SetWaitFrames(20)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    ActorSetAnim(4, 854, 0)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 2)
    PlaySfx(19, FALSE)
    PlaySfx(43, FALSE)
    ActorMove(1, 120, -30, FX32_CONST(3.0))
    ActorSetAnim(0, 521, 0)
    ActorSetDirection(0, DIRECTION_RIGHT)
    ActorMove(0, 270, 125, FX32_CONST(1.6))
    ActorSetAnim(2, 862, 0)
    ActorSetDirection(2, DIRECTION_UP)
    ActorSetAnim(3, 862, 0)
    ActorSetDirection(3, DIRECTION_UP)
    ActorSetAnim(4, 862, 0)
    ActorSetDirection(4, DIRECTION_DOWN)
    ActorSetAnim(5, 862, 0)
    SetWaitFrames(15)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    ActorSetDirection(2, DIRECTION_RIGHT)
    SetWaitFrames(5)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    ActorSetDirection(3, DIRECTION_RIGHT)
    SetWaitFrames(10)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    ActorSetDirection(5, DIRECTION_RIGHT)
    ActorMove(2, 260, 120, FX32_CONST(1.5625))
    ActorMove(3, 385, 120, FX32_CONST(1.5625))
    ActorMove(4, 110, 220, FX32_CONST(1.5625))
    ActorMove(5, 440, 90, FX32_CONST(1.5625))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorSetAnim(1, 1231, 0)
    ActorMove(1, 120, 80, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorMove(1, 120, 72, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorMove(1, 120, 80, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorMove(1, 120, 76, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    ActorMove(1, 120, 80, FX32_CONST(3.0))
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 1)
    SetWaitFrames(120)
    WaitForCond(SCRIPT_WAIT_COND_ACTOR_NOT_MOVING, 0)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    Sub805FBB4(0, 0)
    WaitForCond(SCRIPT_WAIT_COND_15, 0)
    End
};

const Script script_80B31CC = {
    Sub805FC34(1)
    Sub805FBB4(0, 0)
    WaitForCond(SCRIPT_WAIT_COND_15, 0)
    AllocActors(1)
    ActorInit(0)
    ActorSetAnim(0, 1231, 0)
    ActorSetPositionAbsolute(0, 120, 80)
    ActorSetPriority(0, 1)
    Sub805FBF4(0, 0)
    WaitForCond(SCRIPT_WAIT_COND_15, 0)
    SetWaitFrames(120)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    Sub805FBB4(0, 0)
    WaitForCond(SCRIPT_WAIT_COND_15, 0)
    End
};

const Script script_80B32F8 = {
    Sub8060568
    End
};

const Script script_80B3320 = {
    Sub805FC34(1)
    CameraAlloc
    Jump(11, 0)
};

const Script script_80B335C = {
    CameraMove(0, 0, FX32_CONST(0.375))
    WaitForCond(SCRIPT_WAIT_COND_CAMERA_NOT_MOVING, 0)
    SetWaitFrames(8)
    WaitForCond(SCRIPT_WAIT_COND_FRAMES, 0)
    Jump(11, 0)
};
