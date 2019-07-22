extern u16 gLoadedRoomIndex;
extern u16 dLightningPalette[];
extern struct RoomHeader gRoomHeader;
extern bool8 gIsPaletteEffectsActive;
extern void* dLavaPaletteAnims[];
extern u8 byte_203EA89;
extern struct struct_80CE440 word_80CE440[];
extern u32 dword_806483C[];
extern u8 byte_203EA8C;

IWRAM_DATA s32 gPaletteEffects;
IWRAM_DATA s32 gPaletteEffectsSave;
IWRAM_DATA u32 gLavaPaletteIndex;
IWRAM_DATA u32 gLavaTimer;
IWRAM_DATA u16* gLightningPalette;
IWRAM_DATA u16* gBackupBGPalette;
IWRAM_DATA u32 gLightningTimer;
IWRAM_DATA bool32 gLightningActive;
IWRAM_DATA u32 gThunderTimer;

enum { NONE, LAVA, THUNDER };
