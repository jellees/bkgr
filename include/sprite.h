#ifndef GUARD_SPRITE_H
#define GUARD_SPRITE_H

// Sprite indices, as passed to SetSprite and sprite_set_anim. Only the known ones are listed.
enum SpriteIdx {
    SPRITE_OXYGEN_EMPTY = 1121,
    SPRITE_OXYGEN = 1122,
    SPRITE_ICON_BANJO = 1123, // Shown next to the health and oxygen bars.
    SPRITE_ICON_BLUE_EGG = 1124,
    SPRITE_ICON_ELECTRIC_EGG = 1125,
    SPRITE_ICON_FIRE_EGG = 1126,
    SPRITE_ICON_ICE_EGG = 1127,
    SPRITE_ICON_GOLDEN_FEATHER = 1128,
    SPRITE_ICON_RED_FEATHER = 1129, // Unused.
    SPRITE_ICON_JIGGY = 1130,
    SPRITE_ICON_NOTE = 1131,
    SPRITE_TEXT_BAR_LEFT_SMALL =
        1132, // The bars behind text, e.g. in dialogue and behind HUD counters.
    SPRITE_TEXT_BAR_RIGHT_SMALL = 1133,
    SPRITE_TEXT_BAR_LEFT_BIG = 1134,
    SPRITE_TEXT_BAR_RIGHT_BIG = 1135,
    SPRITE_ICON_MOVES_LEARNED = 1136,
    SPRITE_ICON_HONEYCOMB = 1137,
    SPRITE_ICON_JINJO = 1138,
    SPRITE_HONEYCOMB_EMPTY = 1139, // Darkened honeycomb: a missing unit of health.
    SPRITE_HONEYCOMB = 1140,
    SPRITE_HONEYCOMB_RED = 1141, // Doubled honeycomb: health 9-16 turns segments red, one per point.
    SPRITE_ICON_SHELL = 1147,
    SPRITE_ICON_CHICK = 1148,
    SPRITE_ICON_BALL_AND_CHAIN = 1149, // Captive Breegulls.
    SPRITE_ICON_ICE_CREAM = 1150,
    SPRITE_ICON_TOY_SPACESHIP = 1151,
    SPRITE_ICON_SILVER_COIN = 1152,
    SPRITE_ICON_GOLD_NUGGET = 1153,
    SPRITE_ICON_SHELL_2 = 1154, // Identical to SPRITE_ICON_SHELL.
    SPRITE_ICON_MUMBO_TOKEN = 1155,
    SPRITE_TIMER_BAR = 1160,
    SPRITE_ICON_HOURGLASS = 1161, // Animated.
    SPRITE_ICON_MECHA_GRUNTY = 1165,
    SPRITE_ICON_KLUNGO = 1166,
    SPRITE_ICON_BLEATER = 1167,
    SPRITE_ICON_FISH = 1168,
    SPRITE_ICON_DOLPHIN = 1169,
    SPRITE_ICON_LAVA_JETTY_PLATFORM = 1170,
    SPRITE_ICON_GOLDEN_COIN = 1171,
    SPRITE_ICON_GLOW_GRUB = 1202,
};

struct SpriteFrame_d {
    u32* tiles;
    u16 tilesCount;
    u16 field_6;
    u16* field_8;
    u32 field_C;
};

struct Sprite {
    u16 index;
    u8 curFrame;
    u8 frameCount;
    u8 priority;
    u8 animSpeed;
    u16 xPos;
    u8 yPos;
    u8 field_9;
    u8 direction;
    u8 maxAnimRepeats;
    u16 attr2;
    u8 loopFrame;
    u8 staticFrame;
    u8 objMode;
    bool8 isFlipped;
    bool8 alwaysUsePalette0;
    u8 attr0Flag9;
    u8 bank;
    u8 rotscaleFlag;
    u8 field_16;
    u8 field_17;
    struct SpriteFrame_d* spriteFrames;
};

struct Letter {
    u16 index;
    u16 size;
};

struct Font {
    u8 field_0;
    u8 tileDataIndex;
    u8 field_2;
    u8 field_3;
    struct Letter* letters;
};

struct TextBox {
    u16 xPosition;
    u16 yPosition;
    struct Font* font;
    u16 size;
    u8 field_A;
    u16 stringOffset;
    u16 palette;
    u8 letterSpacing;
    u8 field_11;
    u8 field_12;
    u8 field_13;
};

extern void SetSprite(struct Sprite* sprite, int index, bool32 loopFrame, u8 direction,
                      u32 maxAnimRepeats, u32 xPos, u32 yPos, u32 bank);

#endif
