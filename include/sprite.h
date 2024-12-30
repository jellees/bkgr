#ifndef GUARD_SPRITE_H
#define GUARD_SPRITE_H

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

extern void SetSprite(struct Sprite *sprite, u16 index, bool32 loopFrame, u8 direction, u32 maxAnimRepeats, u16 xPos, u32 yPos, u32 bank);

#endif
