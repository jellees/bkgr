BIN_DIR			:= $(DEVKITARM)/bin
PREFIX			:= arm-none-eabi-

CPP				:= $(BIN_DIR)/$(PREFIX)cpp
OBJCOPY 		:= $(BIN_DIR)/$(PREFIX)objcopy
LD 				:= $(BIN_DIR)/$(PREFIX)ld
AS 			    := $(BIN_DIR)/$(PREFIX)as

ifeq ($(OS),Windows_NT)
WINE :=
EXE := .exe
else
WINE := wine
EXE :=
endif

TITLE       := BANJOKAZOOIE
GAME_CODE   := BKZE
MAKER_CODE  := 78
REVISION    := 0

SHELL := /bin/bash -o pipefail

ROM := bkgr.gba
OBJ_DIR := build

ELF = $(ROM:.gba=.elf)
MAP = $(ROM:.gba=.map)

C_SUBDIR = src
ASM_SUBDIR = asm
DATA_SRC_SUBDIR = src/data
DATA_ASM_SUBDIR = data

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(OBJ_DIR)/$(DATA_ASM_SUBDIR)

ASFLAGS 	:= -mcpu=arm7tdmi

CC1			:= $(WINE) tools/agbcc/bin/agbcc.exe
CFLAGS 		:= -O2 -mthumb-interwork -fhex-asm
CPPFLAGS 	:= -iquote include -Wno-trigraphs

LIBC   := tools/agbcc/lib/libc.a
LIBGCC := tools/agbcc/lib/libgcc.a
LDFLAGS = -L../tools/agbcc/lib -lgcc -lc

SHA1 := $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c
FIX := tools/gbafix/gbafix$(EXE)

# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:

# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:

.PHONY: rom clean compare tidy

C_SRCS := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

OBJS     := $(C_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS) $(SONG_OBJS) $(MID_OBJS)
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))

SUBDIRS  := $(sort $(dir $(OBJS)))

$(shell mkdir -p $(SUBDIRS))

rom: $(ROM) compare

compare: $(ROM)
	@$(SHA1) rom.sha1

clean: tidy

tidy:
	rm -f $(ROM) $(ELF) $(MAP)
	rm -r build/*

$(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.c
	@$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	@$(CC1) $(C_BUILDDIR)/$*.i $(CFLAGS) -o $(C_BUILDDIR)/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<


$(ELF): $(OBJS)
	cd $(OBJ_DIR) && $(LD) -Map ../$(MAP) -T ../ld_script.ld -o ../$@ $(LDFLAGS) $(OBJS_REL)

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@
	$(FIX) $@ -p -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION) --silent
