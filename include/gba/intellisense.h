// The purpose of this file is to make the intellisense errors in vscode go away.
// Its not necessary for the compiler and can be removed if it causes errors
// in the future.

#pragma once

#ifdef _MSC_VER

#define __asm__(x)
#define __extension__(x)
#define __attribute__(x)
#define __builtin_va_list int
#define __extension__
#define __inline__
#define __builtin_constant_p
#define _Bool bool
#undef __cplusplus

#endif
