#include "global.h"
#include "script_defs.h"

// The scripts themselves are defined in scripts.c.
extern const Script script_80B2204;
extern const Script script_80B222C;
extern const Script script_80B227C;
extern const Script script_80B22B8;
extern const Script script_80B245C;
extern const Script script_80B24E8;
extern const Script script_80B2524;
extern const Script script_80B268C;
extern const Script script_80B31CC;
extern const Script script_80B32F8;
extern const Script script_80B3320;
extern const Script script_80B335C;
extern const Script script_80B33C0;
extern const Script script_80B51FC;
extern const Script script_80B524C;
extern const Script script_80B52D8;
extern const Script script_80B53B4;
extern const Script script_80B542C;
extern const Script script_80B5508;
extern const Script script_80B5634;
extern const Script script_80B56E8;
extern const Script script_80B5814;
extern const Script script_80B5990;
extern const Script script_80B5A80;
extern const Script script_80B5BFC;
extern const Script script_80B5C60;
extern const Script script_80B5CB0;
extern const Script script_80B5D50;
extern const Script script_80B5DC8;
extern const Script script_80B5E40;
extern const Script script_80B5FD0;
extern const Script script_80B5FE4;
extern const Script script_80B6160;
extern const Script script_80B6390;
extern const Script script_80B6598;
extern const Script script_80B6818;
extern const Script script_80B6A98;
extern const Script script_80B6DB8;
extern const Script script_80B7060;
extern const Script script_80B7344;
extern const Script script_80B745C;
extern const Script script_80B7588;
extern const Script script_80B7754;
extern const Script script_80B77E0;
extern const Script script_80B7D80;
extern const Script script_80B8078;
extern const Script script_80B84B0;
extern const Script script_80B89EC;
extern const Script script_80B8D48;
extern const Script script_80B90CC;
extern const Script script_80B9798;
extern const Script script_80BBB38;
extern const Script script_80BD08C;
extern const Script script_80BD258;
extern const Script script_80BD3D4;
extern const Script script_80BD550;
extern const Script script_80BD6CC;
extern const Script script_80BD848;
extern const Script script_80BD9C4;
extern const Script script_80BDAB4;
extern const Script script_80BDC44;
extern const Script script_80BDD98;
extern const Script script_80BDF00;
extern const Script script_80BE068;
extern const Script script_80BE1F8;
extern const Script script_80BE2FC;
extern const Script script_80BE8C4;
extern const Script script_80BF468;
extern const Script script_80BF83C;
extern const Script script_80C019C;
extern const Script script_80C0340;
extern const Script script_80C0408;
extern const Script script_80C04E4;
extern const Script script_80C0660;
extern const Script script_80C07B4;
extern const Script script_80C08E0;
extern const Script script_80C09E4;
extern const Script script_80C0B74;
extern const Script script_80C0C78;
extern const Script script_80C0DB8;
extern const Script dScriptDolphinLeadToShip;
extern const Script dScriptDolphinCircleShip;
extern const Script script_80C1614;
extern const Script script_80C1A74;
extern const Script script_80C235C;
extern const Script script_80C249C;
extern const Script script_80C2500;
extern const Script script_80C25DC;
extern const Script script_80C26B8;
extern const Script script_80C280C;
extern const Script script_80C28FC;
extern const Script script_80C2A8C;
extern const Script script_80C2B90;
extern const Script script_80C2ED8;
extern const Script script_80C3180;
extern const Script script_80C33C4;
extern const Script script_80C34C8;
extern const Script script_80C37C0;
extern const Script script_80C38D8;
extern const Script script_80C3A54;
extern const Script script_80C3BBC;
extern const Script script_80C4468;
extern const Script script_80C4DC8;
extern const Script script_80C4EB8;
extern const Script script_80C4FF8;
extern const Script script_80C5174;
extern const Script script_80C52C8;
extern const Script script_80C5430;
extern const Script script_80C5598;
extern const Script script_80C5700;
extern const Script script_80C5868;
extern const Script script_80C59F8;
extern const Script script_80C5AFC;
extern const Script script_80C5D40;
extern const Script script_80C5FD4;
extern const Script script_80C61DC;
extern const Script script_80C63BC;
extern const Script script_80C6538;
extern const Script script_80C66B4;
extern const Script script_80C6844;
extern const Script script_80C690C;
extern const Script script_80C6AC4;
extern const Script script_80C6C7C;
extern const Script script_80C6DE4;
extern const Script script_80C6F4C;
extern const Script script_80C70C8;
extern const Script script_80C7280;
extern const Script script_80C7438;
extern const Script script_80C75F0;
extern const Script script_80C77A8;
extern const Script script_80C7C08;
extern const Script script_80C7CE4;
extern const Script script_80C7E38;
extern const Script script_80C8568;
extern const Script script_80C8748;
extern const Script script_80C88B0;
extern const Script script_80C8A40;
extern const Script script_80C8B44;
extern const Script script_80C8C70;
extern const Script script_80C8E14;
extern const Script script_80C8F04;
extern const Script script_80C9184;
extern const Script script_80C9AA8;
extern const Script script_80C9B98;
extern const Script script_80C9DA0;
extern const Script script_80C9E7C;
extern const Script script_80C9FA8;
extern const Script script_80CA1D8;
extern const Script script_80CA354;
extern const Script script_80CA4D0;
extern const Script script_80CA570;
extern const Script script_80CA610;
extern const Script script_80CA6B0;
extern const Script script_80CA750;
extern const Script script_80CA7F0;
extern const Script script_80CA890;
extern const Script script_80CA930;
extern const Script script_80CA9D0;
extern const Script script_80CAA70;
extern const Script script_80CAAFC;
extern const Script script_80CAB88;
extern const Script script_80CAC14;
extern const Script script_80CACA0;
extern const Script script_80CAD2C;
extern const Script script_80CADB8;
extern const Script script_80CAE44;
extern const Script script_80CAED0;
extern const Script script_80CAF70;
extern const Script script_80CB010;
extern const Script script_80CB164;
extern const Script script_80CB204;
extern const Script script_80CB2A4;
extern const Script script_80CB344;
extern const Script script_80CB3A8;
extern const Script script_80CB40C;
extern const Script script_80CB470;
extern const Script script_80CB4D4;
extern const Script script_80CB538;
extern const Script script_80CB59C;
extern const Script script_80CB6F0;
extern const Script script_80CB77C;

const struct ScriptInstruction* const dScripts[SCRIPT_COUNT] = {
    [SCRIPT_000] = script_80B2204,
    [SCRIPT_001] = script_80B222C,
    [SCRIPT_002] = script_80B227C,
    [SCRIPT_003] = script_80B22B8,
    [SCRIPT_004] = script_80B245C,
    [SCRIPT_005] = script_80B24E8,
    [SCRIPT_006] = script_80B2524,
    [SCRIPT_007] = script_80B268C,
    [SCRIPT_008] = script_80B31CC,
    [SCRIPT_009] = script_80B32F8,
    [SCRIPT_010] = script_80B3320,
    [SCRIPT_011] = script_80B335C,
    [SCRIPT_012] = script_80B33C0,
    [SCRIPT_013] = script_80B51FC,
    [SCRIPT_014] = script_80B524C,
    [SCRIPT_015] = script_80B52D8,
    [SCRIPT_016] = script_80B53B4,
    [SCRIPT_017] = script_80B542C,
    [SCRIPT_018] = script_80B5508,
    [SCRIPT_019] = script_80B5634,
    [SCRIPT_020] = script_80B56E8,
    [SCRIPT_021] = script_80B5814,
    [SCRIPT_022] = script_80B5990,
    [SCRIPT_023] = script_80B5A80,
    [SCRIPT_024] = script_80B5BFC,
    [SCRIPT_025] = script_80B5C60,
    [SCRIPT_026] = script_80B5CB0,
    [SCRIPT_027] = script_80B5D50,
    [SCRIPT_028] = script_80B5DC8,
    [SCRIPT_029] = script_80B5E40,
    [SCRIPT_030] = script_80B5FD0,
    [SCRIPT_031] = script_80B5FE4,
    [SCRIPT_032] = script_80B6160,
    [SCRIPT_033] = script_80B6390,
    [SCRIPT_034] = script_80B6598,
    [SCRIPT_035] = script_80B6818,
    [SCRIPT_036] = script_80B6A98,
    [SCRIPT_037] = script_80B6DB8,
    [SCRIPT_038] = script_80B7060,
    [SCRIPT_039] = script_80B7344,
    [SCRIPT_040] = script_80B745C,
    [SCRIPT_041] = script_80B7588,
    [SCRIPT_042] = script_80B7754,
    [SCRIPT_043] = script_80B77E0,
    [SCRIPT_044] = script_80B7D80,
    [SCRIPT_045] = script_80B8078,
    [SCRIPT_046] = script_80B84B0,
    [SCRIPT_047] = script_80B89EC,
    [SCRIPT_048] = script_80B8D48,
    [SCRIPT_049] = script_80B90CC,
    [SCRIPT_050] = script_80B9798,
    [SCRIPT_051] = script_80BBB38,
    [SCRIPT_052] = script_80BD08C,
    [SCRIPT_053] = script_80BD258,
    [SCRIPT_054] = script_80BD3D4,
    [SCRIPT_055] = script_80BD550,
    [SCRIPT_056] = script_80BD6CC,
    [SCRIPT_057] = script_80BD848,
    [SCRIPT_058] = script_80BD9C4,
    [SCRIPT_059] = script_80BDAB4,
    [SCRIPT_060] = script_80BDC44,
    [SCRIPT_061] = script_80BDD98,
    [SCRIPT_062] = script_80BDF00,
    [SCRIPT_063] = script_80BE068,
    [SCRIPT_064] = script_80BE1F8,
    [SCRIPT_065] = script_80BE2FC,
    [SCRIPT_066] = script_80BE8C4,
    [SCRIPT_067] = script_80BF468,
    [SCRIPT_068] = script_80BF83C,
    [SCRIPT_069] = script_80C019C,
    [SCRIPT_070] = script_80C0340,
    [SCRIPT_071] = script_80C0408,
    [SCRIPT_072] = script_80C04E4,
    [SCRIPT_073] = script_80C0660,
    [SCRIPT_074] = script_80C07B4,
    [SCRIPT_075] = script_80C08E0,
    [SCRIPT_076] = script_80C09E4,
    [SCRIPT_077] = script_80C0B74,
    [SCRIPT_078] = script_80C0C78,
    [SCRIPT_079] = script_80C0DB8,
    [SCRIPT_DOLPHIN_LEAD_TO_SHIP] = dScriptDolphinLeadToShip,
    [SCRIPT_DOLPHIN_CIRCLE_SHIP] = dScriptDolphinCircleShip,
    [SCRIPT_082] = script_80C1614,
    [SCRIPT_083] = script_80C1A74,
    [SCRIPT_084] = script_80C235C,
    [SCRIPT_085] = script_80C249C,
    [SCRIPT_086] = script_80C2500,
    [SCRIPT_087] = script_80C25DC,
    [SCRIPT_088] = script_80C26B8,
    [SCRIPT_089] = script_80C280C,
    [SCRIPT_090] = script_80C28FC,
    [SCRIPT_091] = script_80C2A8C,
    [SCRIPT_092] = script_80C2B90,
    [SCRIPT_093] = script_80C2ED8,
    [SCRIPT_094] = script_80C3180,
    [SCRIPT_095] = script_80C33C4,
    [SCRIPT_096] = script_80C34C8,
    [SCRIPT_097] = script_80C37C0,
    [SCRIPT_098] = script_80C38D8,
    [SCRIPT_099] = script_80C3A54,
    [SCRIPT_100] = script_80C3BBC,
    [SCRIPT_101] = script_80C4468,
    [SCRIPT_102] = script_80C4DC8,
    [SCRIPT_103] = script_80C4EB8,
    [SCRIPT_104] = script_80C4FF8,
    [SCRIPT_105] = script_80C5174,
    [SCRIPT_106] = script_80C52C8,
    [SCRIPT_107] = script_80C5430,
    [SCRIPT_108] = script_80C5598,
    [SCRIPT_109] = script_80C5700,
    [SCRIPT_110] = script_80C5868,
    [SCRIPT_111] = script_80C59F8,
    [SCRIPT_112] = script_80C5AFC,
    [SCRIPT_113] = script_80C5D40,
    [SCRIPT_114] = script_80C5FD4,
    [SCRIPT_115] = script_80C61DC,
    [SCRIPT_116] = script_80C63BC,
    [SCRIPT_117] = script_80C6538,
    [SCRIPT_118] = script_80C66B4,
    [SCRIPT_119] = script_80C6844,
    [SCRIPT_120] = script_80C690C,
    [SCRIPT_121] = script_80C6AC4,
    [SCRIPT_122] = script_80C6C7C,
    [SCRIPT_123] = script_80C6DE4,
    [SCRIPT_124] = script_80C6F4C,
    [SCRIPT_125] = script_80C70C8,
    [SCRIPT_126] = script_80C7280,
    [SCRIPT_127] = script_80C7438,
    [SCRIPT_128] = script_80C75F0,
    [SCRIPT_129] = script_80C77A8,
    [SCRIPT_130] = script_80C7C08,
    [SCRIPT_131] = script_80C7CE4,
    [SCRIPT_132] = script_80C7E38,
    [SCRIPT_133] = script_80C8568,
    [SCRIPT_134] = script_80C8748,
    [SCRIPT_135] = script_80C88B0,
    [SCRIPT_136] = script_80C8A40,
    [SCRIPT_137] = script_80C8B44,
    [SCRIPT_138] = script_80C8C70,
    [SCRIPT_139] = script_80C8E14,
    [SCRIPT_140] = script_80C8F04,
    [SCRIPT_141] = script_80C9184,
    [SCRIPT_142] = script_80C9AA8,
    [SCRIPT_143] = script_80C9B98,
    [SCRIPT_144] = script_80C9DA0,
    [SCRIPT_145] = script_80C9E7C,
    [SCRIPT_146] = script_80C9FA8,
    [SCRIPT_147] = script_80CA1D8,
    [SCRIPT_148] = script_80CA354,
    [SCRIPT_149] = script_80CA4D0,
    [SCRIPT_150] = script_80CA570,
    [SCRIPT_151] = script_80CA610,
    [SCRIPT_152] = script_80CA6B0,
    [SCRIPT_153] = script_80CA750,
    [SCRIPT_154] = script_80CA7F0,
    [SCRIPT_155] = script_80CA890,
    [SCRIPT_156] = script_80CA930,
    [SCRIPT_157] = script_80CA9D0,
    [SCRIPT_158] = script_80CAA70,
    [SCRIPT_159] = script_80CAAFC,
    [SCRIPT_160] = script_80CAB88,
    [SCRIPT_161] = script_80CAC14,
    [SCRIPT_162] = script_80CACA0,
    [SCRIPT_163] = script_80CAD2C,
    [SCRIPT_164] = script_80CADB8,
    [SCRIPT_165] = script_80CAE44,
    [SCRIPT_166] = script_80CAED0,
    [SCRIPT_167] = script_80CAF70,
    [SCRIPT_168] = script_80CB010,
    [SCRIPT_169] = script_80CB164,
    [SCRIPT_170] = script_80CB204,
    [SCRIPT_171] = script_80CB2A4,
    [SCRIPT_172] = script_80CB344,
    [SCRIPT_173] = script_80CB3A8,
    [SCRIPT_174] = script_80CB40C,
    [SCRIPT_175] = script_80CB470,
    [SCRIPT_176] = script_80CB4D4,
    [SCRIPT_177] = script_80CB538,
    [SCRIPT_178] = script_80CB59C,
    [SCRIPT_179] = script_80CB6F0,
    [SCRIPT_180] = script_80CB77C,
};
