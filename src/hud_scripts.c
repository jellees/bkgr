#include "global.h"
#include "hud.h"
#include "hud_scripts.h"

// clang-format off

const HudScriptInstructions dHudScriptLevelNotes = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 36)
    HudSpriteInit(0, 1131, FALSE)
    HudSpriteSetPosition(1, 300, 44)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 34, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptLevelJiggies = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 60)
    HudSpriteInit(0, 1130, FALSE)
    HudSpriteSetPosition(1, 300, 68)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 59, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptLevelJinjos = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 84)
    HudSpriteInit(0, 1138, FALSE)
    HudSpriteSetPosition(1, 300, 92)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 83, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement2 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1155, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptGoldenFeathers = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 108)
    HudSpriteInit(0, 1128, FALSE)
    HudSpriteSetPosition(1, 300, 116)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 107, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptMovesLearned = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1136, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptShells = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1147, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptHoneycombs = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 132)
    HudSpriteInit(0, 1137, FALSE)
    HudSpriteSetPosition(1, -60, 140)
    HudSpriteInit(1, 1135, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(24, 131, FALSE)
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptIceEggs = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 84)
    HudSpriteInit(0, 1127, FALSE)
    HudSpriteSetPosition(1, -60, 92)
    HudSpriteInit(1, 1135, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(24, 83, FALSE)
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptOxygen = {
    HudAllocSprites(0, HUD_ALLOC_OXYGEN_BAR)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudBarInitOxygen(0, -20, 30)
    HudBarSlideRight(0, FALSE, 24)
    HudUpdateSlides(FALSE)
    HudBarSlideDown(0, TRUE, 0)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudBarCountOxygen(0)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay2
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudBarSlideUp(0, TRUE, 0)
    HudUpdateSlides(FALSE)
    HudBarSlideLeft(0, FALSE, 24)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptHealth = {
    HudAllocSprites(0, HUD_ALLOC_HEALTH_BAR)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudBarInitHealth(0, 24, -20)
    HudBarSlideDown(0, FALSE, 32)
    HudUpdateSlides(FALSE)
    HudBarSlideRight(0, TRUE, 0)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudBarCountHealth(0)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudBarSlideLeft(0, TRUE, 0)
    HudUpdateSlides(FALSE)
    HudBarSlideUp(0, FALSE, 32)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptOxygenWithIcon = {
    HudAllocSprites(1, HUD_ALLOC_OXYGEN_BAR)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 12)
    HudSpriteInit(0, 1123, FALSE)
    HudBarInitOxygen(1, -20, 30)
    HudSpriteSlideRight(0, 24)
    HudBarSlideRight(1, FALSE, 24)
    HudUpdateSlides(FALSE)
    HudBarSlideDown(1, TRUE, 0)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudBarCountOxygen(1)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay2
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudBarSlideUp(1, TRUE, 0)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 44)
    HudBarSlideLeft(1, FALSE, 24)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptHealthWithIcon = {
    HudAllocSprites(1, HUD_ALLOC_HEALTH_BAR)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -40, 12)
    HudSpriteInit(0, 1123, FALSE)
    HudBarInitHealth(1, -20, 12)
    HudSpriteSlideRight(0, 44)
    HudBarSlideRight(1, FALSE, 44)
    HudUpdateSlides(FALSE)
    HudBarSlideRight(1, TRUE, 0)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudBarCountHealth(1)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudBarSlideLeft(1, TRUE, 0)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 44)
    HudBarSlideLeft(1, FALSE, 44)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptChicks = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1148, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptBlueEggs = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 36)
    HudSpriteInit(0, 1124, FALSE)
    HudSpriteSetPosition(1, -60, 44)
    HudSpriteInit(1, 1135, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(24, 34, FALSE)
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElectricEggs = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 60)
    HudSpriteInit(0, 1125, FALSE)
    HudSpriteSetPosition(1, -60, 68)
    HudSpriteInit(1, 1135, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(24, 59, FALSE)
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptFireEggs = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 108)
    HudSpriteInit(0, 1126, FALSE)
    HudSpriteSetPosition(1, -60, 116)
    HudSpriteInit(1, 1135, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(24, 107, FALSE)
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement13 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1202, FALSE)
    HudSpriteSetPosition(1, 300, 20)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 11, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptCaptiveBreegulls = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1149, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptIceCreams = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1150, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptToySpaceships = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1151, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptSilverCoins = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1152, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptGoldNuggets = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1153, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptPauseNotes = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1131, FALSE)
    HudSpriteSetPosition(1, 300, 20)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 11, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptPauseJiggies = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 36)
    HudSpriteInit(0, 1130, FALSE)
    HudSpriteSetPosition(1, 300, 44)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 34, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptPauseJinjos = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 60)
    HudSpriteInit(0, 1138, FALSE)
    HudSpriteSetPosition(1, 300, 68)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 59, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptMumboTokens = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1155, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsNotes = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 36)
    HudSpriteInit(0, 1131, FALSE)
    HudSpriteSetPosition(1, 324, 44)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 34, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsJiggies = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 60)
    HudSpriteInit(0, 1130, FALSE)
    HudSpriteSetPosition(1, 324, 68)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 59, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsJinjos = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 84)
    HudSpriteInit(0, 1138, FALSE)
    HudSpriteSetPosition(1, 324, 92)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 83, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsMumboTokens = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 108)
    HudSpriteInit(0, 1155, FALSE)
    HudSpriteSetPosition(1, 324, 116)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 107, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsMovesLearned = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1136, FALSE)
    HudSpriteSetPosition(1, 324, 140)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 131, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsHoneycombs = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 36)
    HudSpriteInit(0, 1137, FALSE)
    HudSpriteSetPosition(1, -84, 44)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 34, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsChicks = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 60)
    HudSpriteInit(0, 1148, FALSE)
    HudSpriteSetPosition(1, -84, 68)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 59, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsShells = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 60)
    HudSpriteInit(0, 1147, FALSE)
    HudSpriteSetPosition(1, -84, 68)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 59, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptUnused = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 60)
    HudSpriteInit(0, 1154, FALSE)
    HudSpriteSetPosition(1, -84, 68)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 59, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsSilverCoins = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 60)
    HudSpriteInit(0, 1152, FALSE)
    HudSpriteSetPosition(1, -84, 68)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 59, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsGoldNuggets = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 60)
    HudSpriteInit(0, 1153, FALSE)
    HudSpriteSetPosition(1, -84, 68)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 59, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsCaptiveBreegulls = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 84)
    HudSpriteInit(0, 1149, FALSE)
    HudSpriteSetPosition(1, -84, 92)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 83, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsToySpaceships = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 84)
    HudSpriteInit(0, 1151, FALSE)
    HudSpriteSetPosition(1, -84, 92)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 83, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptTotalsIceCreams = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, -20, 108)
    HudSpriteInit(0, 1150, FALSE)
    HudSpriteSetPosition(1, -84, 116)
    HudSpriteInit(1, 1133, TRUE)
    HudSpriteSlideRight(1, 36)
    HudSpriteSlideRight(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionRight(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(24, 107, FALSE)
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitFractionRight(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionLeft(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideLeft(0, 20)
    HudSpriteSlideLeft(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement36 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 98, 164)
    HudSpriteInit(0, 1161, FALSE)
    HudSpriteSetPosition(1, 120, 172)
    HudSpriteInit(1, 1160, TRUE)
    HudSpriteSlideUp(1, 24)
    HudSpriteSlideUp(0, 24)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(118, 138, FALSE)
    HudCount
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteSlideDown(0, 24)
    HudSpriteSlideDown(1, 24)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement37 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1165, FALSE)
    HudSpriteSetPosition(1, 300, 20)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 11, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement38 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1166, FALSE)
    HudSpriteSetPosition(1, 300, 20)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 11, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptBozzeyeNotes = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1131, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement40 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1137, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement41 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1130, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptPauseGoldenFeathers = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 84)
    HudSpriteInit(0, 1128, FALSE)
    HudSpriteSetPosition(1, 300, 92)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 83, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptPauseMumboTokens = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 108)
    HudSpriteInit(0, 1155, FALSE)
    HudSpriteSetPosition(1, 300, 116)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 107, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptMrRipovskiSilverCoins = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1152, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptMrRipovskiShells = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1147, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptWhiteBreegullCaptiveBreegulls = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1149, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptMommaCluckerChicks = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1148, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptMissBucketGoldNuggets = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1153, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptJinjoOracleJinjos = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1138, FALSE)
    HudSpriteSetPosition(1, 324, 20)
    HudSpriteInit(1, 1132, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE_FRACTION)
    HudInitFractionText(216, 11, TRUE)
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCountUp
    HudSpriteFitFractionLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitFractionRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement50 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1167, FALSE)
    HudSpriteSetPosition(1, 300, 20)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 11, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement51 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1168, FALSE)
    HudSpriteSetPosition(1, 300, 20)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 11, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement52 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1124, FALSE)
    HudSpriteSetPosition(1, 300, 20)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 11, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement53 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1169, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement54 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 132)
    HudSpriteInit(0, 1170, FALSE)
    HudSpriteSetPosition(1, 300, 140)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 131, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

const HudScriptInstructions dHudScriptElement55 = {
    HudAllocSprites(2, HUD_ALLOC_FIXED)
    HudSetState(HUD_STATE_SLIDE_IN)
    HudSpriteSetPosition(0, 244, 12)
    HudSpriteInit(0, 1171, FALSE)
    HudSpriteSetPosition(1, 300, 20)
    HudSpriteInit(1, 1134, TRUE)
    HudSpriteSlideLeft(1, 36)
    HudSpriteSlideLeft(0, 24)
    HudUpdateSlides(TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_ALWAYS)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_UPDATE)
    HudInitNumberText(216, 11, TRUE)
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_UP)
    HudUpdateSlides(FALSE)
    HudCount
    HudSpriteFitNumberLeft(1, HUD_FIT_IF_COUNTING_DOWN)
    HudUpdateSlides(FALSE)
    HudSetState(HUD_STATE_SHOWN)
    HudWaitDisplay
    HudSetState(HUD_STATE_SLIDE_OUT)
    HudSpriteFitNumberRight(1, HUD_FIT_HOME)
    HudUpdateSlides(FALSE)
    HudSpriteSlideRight(0, 20)
    HudSpriteSlideRight(1, 36)
    HudUpdateSlides(FALSE)
    HudEnd
};

// clang-format on

const struct HudScript dHudScripts[HUD_ELEMENT_COUNT] = {
    [HUD_ELEMENT_LEVEL_NOTES] = { ARRAY_COUNT(dHudScriptLevelNotes), dHudScriptLevelNotes },
    [HUD_ELEMENT_LEVEL_JIGGIES] = { ARRAY_COUNT(dHudScriptLevelJiggies), dHudScriptLevelJiggies },
    [HUD_ELEMENT_2] = { ARRAY_COUNT(dHudScriptElement2), dHudScriptElement2 },
    [HUD_ELEMENT_GOLDEN_FEATHERS] = { ARRAY_COUNT(dHudScriptGoldenFeathers), dHudScriptGoldenFeathers },
    [HUD_ELEMENT_MOVES_LEARNED] = { ARRAY_COUNT(dHudScriptMovesLearned), dHudScriptMovesLearned },
    [HUD_ELEMENT_SHELLS] = { ARRAY_COUNT(dHudScriptShells), dHudScriptShells },
    [HUD_ELEMENT_HONEYCOMBS] = { ARRAY_COUNT(dHudScriptHoneycombs), dHudScriptHoneycombs },
    [HUD_ELEMENT_LEVEL_JINJOS] = { ARRAY_COUNT(dHudScriptLevelJinjos), dHudScriptLevelJinjos },
    [HUD_ELEMENT_CHICKS] = { ARRAY_COUNT(dHudScriptChicks), dHudScriptChicks },
    [HUD_ELEMENT_BLUE_EGGS] = { ARRAY_COUNT(dHudScriptBlueEggs), dHudScriptBlueEggs },
    [HUD_ELEMENT_ELECTRIC_EGGS] = { ARRAY_COUNT(dHudScriptElectricEggs), dHudScriptElectricEggs },
    [HUD_ELEMENT_ICE_EGGS] = { ARRAY_COUNT(dHudScriptIceEggs), dHudScriptIceEggs },
    [HUD_ELEMENT_FIRE_EGGS] = { ARRAY_COUNT(dHudScriptFireEggs), dHudScriptFireEggs },
    [HUD_ELEMENT_13] = { ARRAY_COUNT(dHudScriptElement13), dHudScriptElement13 },
    [HUD_ELEMENT_CAPTIVE_BREEGULLS] = { ARRAY_COUNT(dHudScriptCaptiveBreegulls),
                                        dHudScriptCaptiveBreegulls },
    [HUD_ELEMENT_ICE_CREAMS] = { ARRAY_COUNT(dHudScriptIceCreams), dHudScriptIceCreams },
    [HUD_ELEMENT_TOY_SPACESHIPS] = { ARRAY_COUNT(dHudScriptToySpaceships), dHudScriptToySpaceships },
    [HUD_ELEMENT_SILVER_COINS] = { ARRAY_COUNT(dHudScriptSilverCoins), dHudScriptSilverCoins },
    [HUD_ELEMENT_GOLD_NUGGETS] = { ARRAY_COUNT(dHudScriptGoldNuggets), dHudScriptGoldNuggets },
    [HUD_ELEMENT_PAUSE_NOTES] = { ARRAY_COUNT(dHudScriptPauseNotes), dHudScriptPauseNotes },
    [HUD_ELEMENT_PAUSE_JIGGIES] = { ARRAY_COUNT(dHudScriptPauseJiggies), dHudScriptPauseJiggies },
    [HUD_ELEMENT_PAUSE_JINJOS] = { ARRAY_COUNT(dHudScriptPauseJinjos), dHudScriptPauseJinjos },
    [HUD_ELEMENT_MUMBO_TOKENS] = { ARRAY_COUNT(dHudScriptMumboTokens), dHudScriptMumboTokens },
    [HUD_ELEMENT_TOTALS_NOTES] = { ARRAY_COUNT(dHudScriptTotalsNotes), dHudScriptTotalsNotes },
    [HUD_ELEMENT_TOTALS_JIGGIES] = { ARRAY_COUNT(dHudScriptTotalsJiggies), dHudScriptTotalsJiggies },
    [HUD_ELEMENT_TOTALS_JINJOS] = { ARRAY_COUNT(dHudScriptTotalsJinjos), dHudScriptTotalsJinjos },
    [HUD_ELEMENT_TOTALS_MUMBO_TOKENS] = { ARRAY_COUNT(dHudScriptTotalsMumboTokens),
                                          dHudScriptTotalsMumboTokens },
    [HUD_ELEMENT_TOTALS_MOVES_LEARNED] = { ARRAY_COUNT(dHudScriptTotalsMovesLearned),
                                           dHudScriptTotalsMovesLearned },
    [HUD_ELEMENT_TOTALS_HONEYCOMBS] = { ARRAY_COUNT(dHudScriptTotalsHoneycombs),
                                        dHudScriptTotalsHoneycombs },
    [HUD_ELEMENT_TOTALS_CHICKS] = { ARRAY_COUNT(dHudScriptTotalsChicks), dHudScriptTotalsChicks },
    [HUD_ELEMENT_TOTALS_SHELLS] = { ARRAY_COUNT(dHudScriptTotalsShells), dHudScriptTotalsShells },
    [HUD_ELEMENT_TOTALS_SILVER_COINS] = { ARRAY_COUNT(dHudScriptTotalsSilverCoins),
                                          dHudScriptTotalsSilverCoins },
    [HUD_ELEMENT_TOTALS_GOLD_NUGGETS] = { ARRAY_COUNT(dHudScriptTotalsGoldNuggets),
                                          dHudScriptTotalsGoldNuggets },
    [HUD_ELEMENT_TOTALS_CAPTIVE_BREEGULLS] = { ARRAY_COUNT(dHudScriptTotalsCaptiveBreegulls),
                                               dHudScriptTotalsCaptiveBreegulls },
    [HUD_ELEMENT_TOTALS_TOY_SPACESHIPS] = { ARRAY_COUNT(dHudScriptTotalsToySpaceships),
                                            dHudScriptTotalsToySpaceships },
    [HUD_ELEMENT_TOTALS_ICE_CREAMS] = { ARRAY_COUNT(dHudScriptTotalsIceCreams),
                                        dHudScriptTotalsIceCreams },
    [HUD_ELEMENT_36] = { ARRAY_COUNT(dHudScriptElement36), dHudScriptElement36 },
    [HUD_ELEMENT_37] = { ARRAY_COUNT(dHudScriptElement37), dHudScriptElement37 },
    [HUD_ELEMENT_38] = { ARRAY_COUNT(dHudScriptElement38), dHudScriptElement38 },
    [HUD_ELEMENT_BOZZEYE_NOTES] = { ARRAY_COUNT(dHudScriptBozzeyeNotes), dHudScriptBozzeyeNotes },
    [HUD_ELEMENT_40] = { ARRAY_COUNT(dHudScriptElement40), dHudScriptElement40 },
    [HUD_ELEMENT_41] = { ARRAY_COUNT(dHudScriptElement41), dHudScriptElement41 },
    [HUD_ELEMENT_PAUSE_GOLDEN_FEATHERS] = { ARRAY_COUNT(dHudScriptPauseGoldenFeathers),
                                            dHudScriptPauseGoldenFeathers },
    [HUD_ELEMENT_PAUSE_MUMBO_TOKENS] = { ARRAY_COUNT(dHudScriptPauseMumboTokens),
                                         dHudScriptPauseMumboTokens },
    [HUD_ELEMENT_MR_RIPOVSKI_SILVER_COINS] = { ARRAY_COUNT(dHudScriptMrRipovskiSilverCoins),
                                               dHudScriptMrRipovskiSilverCoins },
    [HUD_ELEMENT_MR_RIPOVSKI_SHELLS] = { ARRAY_COUNT(dHudScriptMrRipovskiShells),
                                         dHudScriptMrRipovskiShells },
    [HUD_ELEMENT_WHITE_BREEGULL_CAPTIVE_BREEGULLS] = { ARRAY_COUNT(
                                                           dHudScriptWhiteBreegullCaptiveBreegulls),
                                                       dHudScriptWhiteBreegullCaptiveBreegulls },
    [HUD_ELEMENT_MOMMA_CLUCKER_CHICKS] = { ARRAY_COUNT(dHudScriptMommaCluckerChicks),
                                           dHudScriptMommaCluckerChicks },
    [HUD_ELEMENT_MISS_BUCKET_GOLD_NUGGETS] = { ARRAY_COUNT(dHudScriptMissBucketGoldNuggets),
                                               dHudScriptMissBucketGoldNuggets },
    [HUD_ELEMENT_JINJO_ORACLE_JINJOS] = { ARRAY_COUNT(dHudScriptJinjoOracleJinjos),
                                          dHudScriptJinjoOracleJinjos },
    [HUD_ELEMENT_50] = { ARRAY_COUNT(dHudScriptElement50), dHudScriptElement50 },
    [HUD_ELEMENT_51] = { ARRAY_COUNT(dHudScriptElement51), dHudScriptElement51 },
    [HUD_ELEMENT_52] = { ARRAY_COUNT(dHudScriptElement52), dHudScriptElement52 },
    [HUD_ELEMENT_53] = { ARRAY_COUNT(dHudScriptElement53), dHudScriptElement53 },
    [HUD_ELEMENT_54] = { ARRAY_COUNT(dHudScriptElement54), dHudScriptElement54 },
    [HUD_ELEMENT_55] = { ARRAY_COUNT(dHudScriptElement55), dHudScriptElement55 },
    [HUD_ELEMENT_OXYGEN] = { ARRAY_COUNT(dHudScriptOxygen), dHudScriptOxygen },
    [HUD_ELEMENT_OXYGEN_WITH_ICON] = { ARRAY_COUNT(dHudScriptOxygenWithIcon),
                                       dHudScriptOxygenWithIcon },
    [HUD_ELEMENT_HEALTH] = { ARRAY_COUNT(dHudScriptHealth), dHudScriptHealth },
    [HUD_ELEMENT_HEALTH_WITH_ICON] = { ARRAY_COUNT(dHudScriptHealthWithIcon),
                                       dHudScriptHealthWithIcon },
};
