#ifndef GUARD_PLAYER_ENUMS_H
#define GUARD_PLAYER_ENUMS_H

enum Transformations {
    TRANSFORMATION_BANJO,
    TRANSFORMATION_MOUSE,
    TRANSFORMATION_CANDLE,
    TRANSFORMATION_TANK,
    TRANSFORMATION_OCTOPUS,
};

enum Moves {
    MOVE_0,
    MOVE_PACK_WACK,
    MOVE_FORWARD_ROLL,
    MOVE_AIR_ATTACK,
    MOVE_DRILL_BILL,
    MOVE_WONDERWING,
    MOVE_EGG_BLUE,
    MOVE_EGG_ELECTRIC,
    MOVE_EGG_ICE,
    MOVE_EGG_FIRE,
    MOVE_CANDLE_ATTACK,
    MOVE_11,
    MOVE_12,
    MOVE_13,
    MOVE_14,
    MOVE_TALON_TROT,
    MOVE_16,
    MOVE_17,
    MOVE_CLIMB,
    MOVE_FEATHERY_FLAP,
    MOVE_FLAP_FLIP,
    MOVE_DIVE,
    MOVE_SHOCK_JUMP,

    MOVE_COUNT
};

enum PlayerStates {
    PLAYER_STATE_IDLE,
    PLAYER_STATE_JUMP,
    PLAYER_STATE_CROUCH,
    PLAYER_STATE_CLIMB,
    PLAYER_STATE_WALK,
    PLAYER_STATE_SWIM,
    PLAYER_STATE_DIVE,
    PLAYER_STATE_FORWARD_ROLL_LEDGE_FALL,
    PLAYER_STATE_PACK_WACK_START,
    PLAYER_STATE_SHOOTER_START,
    PLAYER_STATE_KAZOOIE_WALK,
    PLAYER_STATE_KAZOOIE_JUMP,
    PLAYER_STATE_KAZOOIE_IDLE,
    PLAYER_STATE_FORWARD_ROLL,
    PLAYER_STATE_FEATHERY_FLAP,
    PLAYER_STATE_FLAP_FLIP,
    PLAYER_STATE_BILL_DRILL_START,
    PLAYER_STATE_AIR_ATTACK,
    PLAYER_STATE_JUMP_FALL,
    PLAYER_STATE_LEDGE_FALL,
    PLAYER_STATE_KAZOOIE_FALL,
    PLAYER_STATE_FLAP_FLIP_FALL,
    PLAYER_STATE_KAZOOIE_LEDGE_FALL,
    PLAYER_STATE_BILL_DRILL_END,
    PLAYER_STATE_BILL_DRILL_FALL,
    PLAYER_STATE_BILL_DRILL_HIT,
    PLAYER_STATE_26,
    PLAYER_STATE_SWIM_IDLE,
    PLAYER_STATE_PACK_WACK_HIT,
    PLAYER_STATE_HURT,
    PLAYER_STATE_KAZOOIE_HURT,
    PLAYER_STATE_DIE,
    PLAYER_STATE_DIALOGUE,
    PLAYER_STATE_SHOOTER_JUMP,
    PLAYER_STATE_SHOOTER_FALL,
    PLAYER_STATE_35,
    PLAYER_STATE_SHOCK_JUMP,
    PLAYER_STATE_SHOCK_JUMP_FALL,
    PLAYER_STATE_SHOCK_JUMP_START,
    PLAYER_STATE_WONDERWING_IDLE,
    PLAYER_STATE_WONDERWING_WALK,
    PLAYER_STATE_WONDERWING_JUMP,
    PLAYER_STATE_WONDERWING_FALL,
    PLAYER_STATE_WONDERWING_LEDGE_FALL,
    PLAYER_STATE_DIALOGUE_END,
    PLAYER_STATE_DIVE_SINK,
    PLAYER_STATE_DIVE_RISE,
    PLAYER_STATE_47,
    PLAYER_STATE_DIVE_SURFACE,
    PLAYER_STATE_MOUSE_WALK,
    PLAYER_STATE_MOUSE_IDLE,
    PLAYER_STATE_MOUSE_JUMP,
    PLAYER_STATE_MOUSE_JUMP_FALL,
    PLAYER_STATE_MOUSE_LEDGE_FALL,
    PLAYER_STATE_MOUSE_NIBBLE,
    PLAYER_STATE_MOUSE_DIE,
    PLAYER_STATE_MOUSE_HURT,
    PLAYER_STATE_CANDLE_DIE,
    PLAYER_STATE_CANDLE_ATTACK,
    PLAYER_STATE_CANDLE_HURT,
    PLAYER_STATE_CANDLE_WALK,
    PLAYER_STATE_CANDLE_IDLE,
    PLAYER_STATE_CANDLE_JUMP,
    PLAYER_STATE_CANDLE_JUMP_FALL,
    PLAYER_STATE_CANDLE_LEDGE_FALL,
    PLAYER_STATE_CANDLE_JUMP_ATTACK_START,
    PLAYER_STATE_CANDLE_JUMP_ATTACK_END,
    PLAYER_STATE_WONDERWING_START,
    PLAYER_STATE_WONDERWING_END,
    PLAYER_STATE_DIVE_HURT,
    PLAYER_STATE_SHOOTER_WALK,
    PLAYER_STATE_SHOOTER_IDLE,
    PLAYER_STATE_SHOOTER_HURT,
    PLAYER_STATE_SHOOTER_LEDGE_FALL,
    PLAYER_STATE_SHOOTER_END,
    PLAYER_STATE_TANK_RIDE,
    PLAYER_STATE_TANK_IDLE,
    PLAYER_STATE_TANK_DIE,
    PLAYER_STATE_TANK_LEDGE_FALL,
    PLAYER_STATE_TANK_HURT,
    PLAYER_STATE_OCTOPUS_IDLE,
    PLAYER_STATE_OCTOPUS_SWIM_IDLE,
    PLAYER_STATE_OCTOPUS_WALK,
    PLAYER_STATE_OCTOPUS_SWIM,
    PLAYER_STATE_OCTOPUS_DIVE_SINK,
    PLAYER_STATE_OCTOPUS_JUMP,
    PLAYER_STATE_OCTOPUS_JUMP_FALL,
    PLAYER_STATE_OCTOPUS_WATER_JUMP,
    PLAYER_STATE_OCTOPUS_WATER_JUMP_FALL,
    PLAYER_STATE_OCTOPUS_HURT,
    PLAYER_STATE_90,
    PLAYER_STATE_OCTOPUS_DIVE_HURT,
    PLAYER_STATE_OCTOPUS_DIE,
    PLAYER_STATE_OCTOPUS_LEDGE_FALL,
    PLAYER_STATE_OCTOPUS_DIVE,
    PLAYER_STATE_OCTOPUS_DIVE_RISE,
    PLAYER_STATE_OCTOPUS_DIVE_SURFACE,
    PLAYER_STATE_97,
    PLAYER_STATE_98,
    PLAYER_STATE_DIALOGUE_START,
    PLAYER_STATE_CANDLE_ATTACK_LEDGE_FALL,
    PLAYER_STATE_NONE,

    PLAYER_STATE_COUNT = 128
};

#endif