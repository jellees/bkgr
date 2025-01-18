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
