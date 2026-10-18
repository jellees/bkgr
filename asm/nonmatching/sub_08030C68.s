    .thumb
sub_08030C68: @ 0x08030C68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r1, _08031020
	movs r0, #0
	str r0, [r1]
	ldr r3, _08031024
	ldr r4, _08031028
	ldr r5, _0803102C
	ldr r6, _08031030
	ldr r0, _08031034
	mov r8, r0
	ldr r1, _08031038
	mov sb, r1
	ldr r7, _0803103C
	ldr r2, _08031040
	mov sl, r2
	ldr r0, _08031044
	mov ip, r0
	ldr r1, _08031048
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xb4
_08030C9C:
	str r2, [r0]
	subs r0, #0x14
	cmp r0, r1
	bge _08030C9C
	ldr r1, _0803104C
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x12
_08030CAC:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _08030CAC
	movs r0, #0
	strb r0, [r3]
	strb r0, [r4]
	strb r0, [r5]
	strb r0, [r6]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	strb r0, [r2]
	ldr r3, _08031050
	strb r0, [r3]
	ldr r4, _08031054
	strb r0, [r4]
	ldr r6, _08031058
	strb r0, [r6]
	ldr r1, _0803105C
	strb r0, [r1]
	ldr r2, _08031060
	strb r0, [r2]
	ldr r3, _08031064
	strb r0, [r3]
	ldr r4, _08031068
	strb r0, [r4]
	movs r2, #1
	movs r1, #0x3f
	ldr r6, _0803106C
	strb r1, [r6]
	ldr r1, _08031070
	strb r0, [r1]
	ldr r3, _08031074
	strb r0, [r3]
	ldr r4, _08031078
	strb r0, [r4]
	ldr r6, _0803107C
	strb r0, [r6]
	ldr r1, _08031080
	strb r0, [r1]
	ldr r3, _08031084
	strb r0, [r3]
	ldr r4, _08031088
	strb r0, [r4]
	ldr r6, _0803108C
	strb r0, [r6]
	ldr r1, _08031090
	strb r0, [r1]
	ldr r3, _08031094
	strb r2, [r3]
	ldr r4, _08031098
	strb r0, [r4]
	ldr r6, _0803109C
	strb r0, [r6]
	ldr r1, _080310A0
	strb r0, [r1]
	ldr r3, _080310A4
	strb r0, [r3]
	ldr r4, _080310A8
	strb r0, [r4]
	ldr r6, _080310AC
	strb r0, [r6]
	ldr r1, _080310B0
	strb r2, [r1]
	ldr r3, _080310B4
	strb r0, [r3]
	ldr r4, _080310B8
	strb r0, [r4]
	ldr r6, _080310BC
	strb r2, [r6]
	ldr r1, _080310C0
	strb r0, [r1]
	ldr r3, _080310C4
	strb r0, [r3]
	ldr r4, _080310C8
	strb r0, [r4]
	ldr r6, _080310CC
	strb r0, [r6]
	ldr r1, _080310D0
	strb r0, [r1]
	ldr r3, _080310D4
	strb r2, [r3]
	ldr r4, _080310D8
	strb r0, [r4]
	ldr r6, _080310DC
	strb r0, [r6]
	ldr r1, _080310E0
	strb r0, [r1]
	ldr r2, _080310E4
	strb r0, [r2]
	ldr r3, _080310E8
	strb r0, [r3]
	ldr r4, _080310EC
	strb r0, [r4]
	ldr r6, _080310F0
	strb r0, [r6]
	ldr r1, _080310F4
	strb r0, [r1]
	ldr r2, _080310F8
	strb r0, [r2]
	ldr r3, _080310FC
	strb r0, [r3]
	ldr r4, _08031100
	strb r0, [r4]
	ldr r6, _08031104
	strb r0, [r6]
	ldr r1, _08031108
	strb r0, [r1]
	ldr r2, _0803110C
	strb r0, [r2]
	ldr r3, _08031110
	strb r0, [r3]
	ldr r4, _08031114
	strb r0, [r4]
	ldr r6, _08031118
	strb r0, [r6]
	ldr r1, _0803111C
	strb r0, [r1]
	ldr r2, _08031120
	strb r0, [r2]
	ldr r3, _08031124
	strb r0, [r3]
	ldr r4, _08031128
	strb r0, [r4]
	ldr r6, _0803112C
	strb r0, [r6]
	ldr r1, _08031130
	strb r0, [r1]
	ldr r2, _08031134
	strb r0, [r2]
	ldr r3, _08031138
	strb r0, [r3]
	ldr r4, _0803113C
	strb r0, [r4]
	ldr r6, _08031140
	strb r0, [r6]
	ldr r1, _08031144
	strb r0, [r1]
	ldr r2, _08031148
	strb r0, [r2]
	ldr r3, _0803114C
	strb r0, [r3]
	ldr r4, _08031150
	strb r0, [r4]
	ldr r6, _08031154
	strb r0, [r6]
	ldr r1, _08031158
	strb r0, [r1]
	ldr r2, _0803115C
	strb r0, [r2]
	ldr r3, _08031160
	strb r0, [r3]
	ldr r4, _08031164
	strb r0, [r4]
	ldr r6, _08031168
	strb r0, [r6]
	ldr r1, _0803116C
	strb r0, [r1]
	ldr r2, _08031170
	strb r0, [r2]
	ldr r3, _08031174
	strb r0, [r3]
	ldr r4, _08031178
	strb r0, [r4]
	ldr r6, _0803117C
	strb r0, [r6]
	ldr r1, _08031180
	strb r0, [r1]
	ldr r2, _08031184
	strb r0, [r2]
	ldr r3, _08031188
	strb r0, [r3]
	ldr r4, _0803118C
	strb r0, [r4]
	ldr r6, _08031190
	strb r0, [r6]
	ldr r1, _08031194
	strb r0, [r1]
	ldr r2, _08031198
	strb r0, [r2]
	ldr r3, _0803119C
	strb r0, [r3]
	movs r0, #0
	ldr r4, _080311A0
	str r0, [r4]
	ldr r6, _080311A4
	strb r0, [r6]
	ldr r1, _080311A8
	strb r0, [r1]
	ldr r2, _080311AC
	strb r0, [r2]
	ldr r3, _080311B0
	strb r0, [r3]
	ldr r4, _080311B4
	strb r0, [r4]
	ldr r6, _080311B8
	strb r0, [r6]
	ldr r1, _080311BC
	strb r0, [r1]
	ldr r2, _080311C0
	strb r0, [r2]
	ldr r3, _080311C4
	strb r0, [r3]
	ldr r4, _080311C8
	strb r0, [r4]
	ldr r6, _080311CC
	strb r0, [r6]
	ldr r1, _080311D0
	strb r0, [r1]
	ldr r2, _080311D4
	strb r0, [r2]
	ldr r3, _080311D8
	strb r0, [r3]
	ldr r4, _080311DC
	strb r0, [r4]
	ldr r6, _080311E0
	strb r0, [r6]
	ldr r1, _080311E4
	strb r0, [r1]
	ldr r2, _080311E8
	strb r0, [r2]
	ldr r3, _080311EC
	strb r0, [r3]
	ldr r4, _080311F0
	strb r0, [r4]
	ldr r6, _080311F4
	strb r0, [r6]
	ldr r1, _080311F8
	strb r0, [r1]
	ldr r2, _080311FC
	strb r0, [r2]
	ldr r3, _08031200
	strb r0, [r3]
	ldr r4, _08031204
	strb r0, [r4]
	ldr r6, _08031208
	strb r0, [r6]
	ldr r1, _0803120C
	strb r0, [r1]
	ldr r2, _08031210
	strb r0, [r2]
	ldr r3, _08031214
	strb r0, [r3]
	ldr r4, _08031218
	strb r0, [r4]
	ldr r6, _0803121C
	strb r0, [r6]
	ldr r1, _08031220
	strb r0, [r1]
	ldr r2, _08031224
	strb r0, [r2]
	ldr r3, _08031228
	strb r0, [r3]
	ldr r4, _0803122C
	strb r0, [r4]
	ldr r6, _08031230
	strb r0, [r6]
	ldr r1, _08031234
	strb r0, [r1]
	ldr r2, _08031238
	strb r0, [r2]
	ldr r3, _0803123C
	strb r0, [r3]
	ldr r4, _08031240
	strb r0, [r4]
	ldr r6, _08031244
	strb r0, [r6]
	ldr r1, _08031248
	strb r0, [r1]
	ldr r2, _0803124C
	strb r0, [r2]
	ldr r3, _08031250
	strb r0, [r3]
	movs r4, #0
	str r4, [sp]
	ldr r5, _08031254
	movs r1, #0
	ldr r4, _08031258
	ldr r3, _0803125C
	movs r2, #1
_08030EDE:
	ldr r6, [sp]
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r6, r4
	strb r1, [r0]
	adds r0, r6, r3
	strb r2, [r0]
	adds r6, #1
	str r6, [sp]
	cmp r6, #5
	ble _08030EDE
	movs r0, #0
	str r0, [sp]
	ldr r0, _0803103C
	movs r3, #0
	adds r5, r0, #0
	adds r5, #0x70
	adds r4, r0, #0
_08030F02:
	ldr r2, [sp]
	lsls r1, r2, #4
	strb r3, [r4, #1]
	strb r3, [r4]
	strb r3, [r4, #3]
	strb r3, [r4, #2]
	strb r3, [r4, #4]
	strb r3, [r4, #5]
	strb r3, [r4, #6]
	strb r3, [r4, #7]
	strb r3, [r4, #8]
	strb r3, [r4, #9]
	strb r3, [r4, #0xa]
	strb r3, [r4, #0xb]
	strb r3, [r4, #0xc]
	strb r3, [r4, #0xd]
	strb r3, [r4, #0xe]
	strb r3, [r4, #0xf]
	strb r3, [r4, #0x10]
	strb r3, [r4, #0x11]
	strb r3, [r4, #0x12]
	strb r3, [r4, #0x13]
	strb r3, [r4, #0x14]
	strb r3, [r4, #0x15]
	strb r3, [r4, #0x16]
	strb r3, [r4, #0x17]
	strb r3, [r4, #0x18]
	strb r3, [r4, #0x19]
	strb r3, [r5]
	strb r3, [r5, #1]
	strb r3, [r5, #2]
	strb r3, [r5, #3]
	strb r3, [r5, #4]
	strb r3, [r5, #5]
	movs r0, #0xc4
	muls r0, r2, r0
	mov r6, sl
	adds r2, r0, r6
	strb r3, [r2]
	strb r3, [r2, #1]
	strb r3, [r2, #2]
	strb r3, [r2, #3]
	strb r3, [r2, #4]
	strb r3, [r2, #0x13]
	strb r3, [r2, #0x14]
	strb r3, [r2, #0x15]
	strb r3, [r2, #0x12]
	strb r3, [r2, #5]
	strb r3, [r2, #6]
	strb r3, [r2, #7]
	strb r3, [r2, #8]
	strb r3, [r2, #9]
	strb r3, [r2, #0xa]
	strb r3, [r2, #0xb]
	strb r3, [r2, #0xc]
	strb r3, [r2, #0xd]
	strb r3, [r2, #0x16]
	strb r3, [r2, #0x17]
	strb r3, [r2, #0x18]
	strb r3, [r2, #0xe]
	strb r3, [r2, #0xf]
	strb r3, [r2, #0x10]
	strb r3, [r2, #0x11]
	strb r3, [r2, #0x19]
	strb r3, [r2, #0x1a]
	strb r3, [r2, #0x1b]
	strb r3, [r2, #0x1c]
	strb r3, [r2, #0x1f]
	adds r0, r2, #0
	adds r0, #0x26
	strb r3, [r0]
	subs r0, #4
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	strb r3, [r2, #0x1d]
	strb r3, [r2, #0x1e]
	subs r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	ldr r0, _08031260
	adds r1, r1, r0
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	adds r5, #0x78
	adds r4, #0x78
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	cmp r1, #5
	ble _08030F02
	movs r2, #0
	str r2, [sp]

    .thumb
sub_08030FC8: @ 0x08030FC8
	ldr r3, [sp]
	lsls r0, r3, #3
	mov r4, ip
	adds r2, r0, r4
	ldrb r1, [r2, #4]
	adds r5, r0, #0
	cmp r1, #0xff
	bne _08030FDC
	bl _08031BDC
_08030FDC:
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	mov r8, r0
	movs r4, #0
	ldrh r6, [r0, #8]
	cmp r4, r6
	blt _08030FEE
	bl _08031BDC
_08030FEE:
	mov r0, r8
	ldr r1, [r0, #4]
	lsls r0, r4, #3
	adds r1, r0, r1
	ldr r6, [r1]
	movs r2, #0
	mov sb, r2
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #8]
	ldrh r1, [r1, #4]
	cmp sb, r1
	blt _0803100C
	bl _08031BCE
_0803100C:
	ldrh r0, [r6, #2]
	cmp r0, #0xc6
	bls _08031016
	bl _08031BB6
_08031016:
	lsls r0, r0, #2
	ldr r1, _08031264
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08031020: .4byte 0x0203EA78
_08031024: .4byte 0x0203E938
_08031028: .4byte 0x0203E939
_0803102C: .4byte 0x0203E940
_08031030: .4byte 0x0203E94F
_08031034: .4byte 0x0203E950
_08031038: .4byte 0x0203E967
_0803103C: .4byte 0x0203E170
_08031040: .4byte 0x0203E440
_08031044: .4byte dRoomIndexes
_08031048: .4byte 0x0203E9B0
_0803104C: .4byte 0x0203E0FC
_08031050: .4byte 0x0203E964
_08031054: .4byte 0x0203E965
_08031058: .4byte 0x0203E966
_0803105C: .4byte 0x0203E93A
_08031060: .4byte 0x0203E93E
_08031064: .4byte 0x0203E93F
_08031068: .4byte 0x0203E10F
_0803106C: .4byte 0x0203E93C
_08031070: .4byte 0x0203E93B
_08031074: .4byte 0x0203E93D
_08031078: .4byte 0x0203E941
_0803107C: .4byte 0x0203E942
_08031080: .4byte 0x0203E943
_08031084: .4byte 0x0203E944
_08031088: .4byte 0x0203E945
_0803108C: .4byte 0x0203E946
_08031090: .4byte 0x0203E947
_08031094: .4byte 0x0203E948
_08031098: .4byte 0x0203E949
_0803109C: .4byte 0x0203E94A
_080310A0: .4byte 0x0203E94E
_080310A4: .4byte 0x0203E94B
_080310A8: .4byte 0x0203E94C
_080310AC: .4byte 0x0203E94D
_080310B0: .4byte 0x0203E955
_080310B4: .4byte 0x0203E951
_080310B8: .4byte 0x0203E952
_080310BC: .4byte 0x0203E953
_080310C0: .4byte 0x0203E954
_080310C4: .4byte 0x0203E956
_080310C8: .4byte 0x0203E957
_080310CC: .4byte 0x0203E958
_080310D0: .4byte 0x0203E959
_080310D4: .4byte 0x0203E95A
_080310D8: .4byte 0x0203E95B
_080310DC: .4byte 0x0203E95C
_080310E0: .4byte 0x0203E97B
_080310E4: .4byte 0x0203E95D
_080310E8: .4byte 0x0203E95E
_080310EC: .4byte 0x0203E95F
_080310F0: .4byte 0x0203E960
_080310F4: .4byte 0x0203E961
_080310F8: .4byte 0x0203E975
_080310FC: .4byte 0x0203E976
_08031100: .4byte 0x0203E977
_08031104: .4byte 0x0203E978
_08031108: .4byte 0x0203E979
_0803110C: .4byte 0x0203E97A
_08031110: .4byte 0x0203E962
_08031114: .4byte 0x0203E963
_08031118: .4byte 0x0203E97C
_0803111C: .4byte 0x0203E968
_08031120: .4byte 0x0203E969
_08031124: .4byte 0x0203E96A
_08031128: .4byte 0x0203E96B
_0803112C: .4byte 0x0203E96C
_08031130: .4byte 0x0203E96D
_08031134: .4byte 0x0203E96E
_08031138: .4byte 0x0203E96F
_0803113C: .4byte 0x0203E970
_08031140: .4byte 0x0203E97D
_08031144: .4byte 0x0203E136
_08031148: .4byte 0x0203E137
_0803114C: .4byte 0x0203E122
_08031150: .4byte 0x0203E123
_08031154: .4byte 0x0203E124
_08031158: .4byte 0x0203E125
_0803115C: .4byte 0x0203E126
_08031160: .4byte 0x0203E127
_08031164: .4byte 0x0203E128
_08031168: .4byte 0x0203E129
_0803116C: .4byte 0x0203E12A
_08031170: .4byte 0x0203E12B
_08031174: .4byte 0x0203E12C
_08031178: .4byte 0x0203E12D
_0803117C: .4byte 0x0203E12E
_08031180: .4byte 0x0203E12F
_08031184: .4byte 0x0203E130
_08031188: .4byte 0x0203E131
_0803118C: .4byte 0x0203E132
_08031190: .4byte 0x0203E133
_08031194: .4byte 0x0203E972
_08031198: .4byte 0x0203E973
_0803119C: .4byte 0x0203E974
_080311A0: .4byte 0x0203E980
_080311A4: .4byte 0x0203E971
_080311A8: .4byte 0x0203E16C
_080311AC: .4byte 0x0203E16A
_080311B0: .4byte 0x0203E16B
_080311B4: .4byte 0x0203E142
_080311B8: .4byte 0x0203E143
_080311BC: .4byte 0x0203E144
_080311C0: .4byte 0x0203E145
_080311C4: .4byte 0x0203E146
_080311C8: .4byte 0x0203E147
_080311CC: .4byte 0x0203E148
_080311D0: .4byte 0x0203E149
_080311D4: .4byte 0x0203E14A
_080311D8: .4byte 0x0203E14B
_080311DC: .4byte 0x0203E14C
_080311E0: .4byte 0x0203E14D
_080311E4: .4byte 0x0203E14E
_080311E8: .4byte 0x0203E14F
_080311EC: .4byte 0x0203E150
_080311F0: .4byte 0x0203E151
_080311F4: .4byte 0x0203E152
_080311F8: .4byte 0x0203E153
_080311FC: .4byte 0x0203E154
_08031200: .4byte 0x0203E155
_08031204: .4byte 0x0203E156
_08031208: .4byte 0x0203E157
_0803120C: .4byte 0x0203E158
_08031210: .4byte 0x0203E159
_08031214: .4byte 0x0203E15A
_08031218: .4byte 0x0203E15B
_0803121C: .4byte 0x0203E15C
_08031220: .4byte 0x0203E15D
_08031224: .4byte 0x0203E15E
_08031228: .4byte 0x0203E15F
_0803122C: .4byte 0x0203E160
_08031230: .4byte 0x0203E161
_08031234: .4byte 0x0203E162
_08031238: .4byte 0x0203E163
_0803123C: .4byte 0x0203E164
_08031240: .4byte 0x0203E165
_08031244: .4byte 0x0203E166
_08031248: .4byte 0x0203E167
_0803124C: .4byte 0x0203E168
_08031250: .4byte 0x0203E169
_08031254: .4byte 0x0203E110
_08031258: .4byte 0x0203E116
_0803125C: .4byte 0x0203E11C
_08031260: .4byte 0x0203E8D8
_08031264: .4byte 0x08031268
_08031268: @ jump table
	.4byte _080316B4 @ case 0
	.4byte _08031BB6 @ case 1
	.4byte _08031BB6 @ case 2
	.4byte _080315F4 @ case 3
	.4byte _08031604 @ case 4
	.4byte _080315BA @ case 5
	.4byte _08031594 @ case 6
	.4byte _080315A4 @ case 7
	.4byte _08031584 @ case 8
	.4byte _08031614 @ case 9
	.4byte _08031624 @ case 10
	.4byte _0803191E @ case 11
	.4byte _0803192C @ case 12
	.4byte _0803193A @ case 13
	.4byte _08031634 @ case 14
	.4byte _08031BB6 @ case 15
	.4byte _08031BB6 @ case 16
	.4byte _08031BB6 @ case 17
	.4byte _08031BB6 @ case 18
	.4byte _08031BB6 @ case 19
	.4byte _08031BB6 @ case 20
	.4byte _08031BB6 @ case 21
	.4byte _08031BB6 @ case 22
	.4byte _08031B74 @ case 23
	.4byte _08031BB6 @ case 24
	.4byte _08031BB6 @ case 25
	.4byte _08031BB6 @ case 26
	.4byte _08031BB6 @ case 27
	.4byte _08031BB6 @ case 28
	.4byte _08031BB6 @ case 29
	.4byte _08031BB6 @ case 30
	.4byte _08031948 @ case 31
	.4byte _08031BB6 @ case 32
	.4byte _08031BB6 @ case 33
	.4byte _08031BB6 @ case 34
	.4byte _08031654 @ case 35
	.4byte _08031664 @ case 36
	.4byte _08031674 @ case 37
	.4byte _08031684 @ case 38
	.4byte _08031970 @ case 39
	.4byte _08031BB6 @ case 40
	.4byte _08031BB6 @ case 41
	.4byte _08031BB6 @ case 42
	.4byte _08031BB6 @ case 43
	.4byte _08031BB6 @ case 44
	.4byte _08031BB6 @ case 45
	.4byte _08031A0C @ case 46
	.4byte _08031BB6 @ case 47
	.4byte _08031BB6 @ case 48
	.4byte _08031BB6 @ case 49
	.4byte _08031BB6 @ case 50
	.4byte _08031BB6 @ case 51
	.4byte _08031A34 @ case 52
	.4byte _08031694 @ case 53
	.4byte _08031BB6 @ case 54
	.4byte _08031BB6 @ case 55
	.4byte _08031BB6 @ case 56
	.4byte _08031BB6 @ case 57
	.4byte _08031BB6 @ case 58
	.4byte _08031BB6 @ case 59
	.4byte _08031BB6 @ case 60
	.4byte _08031A5C @ case 61
	.4byte _080316A4 @ case 62
	.4byte _0803190A @ case 63
	.4byte _08031BB6 @ case 64
	.4byte _0803187E @ case 65
	.4byte _08031994 @ case 66
	.4byte _080319BC @ case 67
	.4byte _080319E4 @ case 68
	.4byte _08031BB6 @ case 69
	.4byte _08031BB6 @ case 70
	.4byte _08031BB6 @ case 71
	.4byte _08031BB6 @ case 72
	.4byte _08031BB6 @ case 73
	.4byte _08031BB6 @ case 74
	.4byte _080316C4 @ case 75
	.4byte _08031BB6 @ case 76
	.4byte _08031BB6 @ case 77
	.4byte _08031842 @ case 78
	.4byte _08031A84 @ case 79
	.4byte _08031BB6 @ case 80
	.4byte _08031BB6 @ case 81
	.4byte _08031AAC @ case 82
	.4byte _08031BB6 @ case 83
	.4byte _08031BB6 @ case 84
	.4byte _08031BB6 @ case 85
	.4byte _08031AFC @ case 86
	.4byte _08031AD4 @ case 87
	.4byte _080316D4 @ case 88
	.4byte _080316EA @ case 89
	.4byte _080316FA @ case 90
	.4byte _08031BB6 @ case 91
	.4byte _08031BB6 @ case 92
	.4byte _08031BB6 @ case 93
	.4byte _08031BB6 @ case 94
	.4byte _0803181A @ case 95
	.4byte _0803180A @ case 96
	.4byte _08031BB6 @ case 97
	.4byte _080317CA @ case 98
	.4byte _080317DA @ case 99
	.4byte _080317EA @ case 100
	.4byte _080317FA @ case 101
	.4byte _08031BB6 @ case 102
	.4byte _0803170A @ case 103
	.4byte _0803172A @ case 104
	.4byte _0803174A @ case 105
	.4byte _0803176A @ case 106
	.4byte _0803178A @ case 107
	.4byte _08031BB6 @ case 108
	.4byte _08031BB6 @ case 109
	.4byte _080317BA @ case 110
	.4byte _080317AA @ case 111
	.4byte _08031B24 @ case 112
	.4byte _08031B4C @ case 113
	.4byte _08031BB6 @ case 114
	.4byte _08031BB6 @ case 115
	.4byte _08031BB6 @ case 116
	.4byte _08031BB6 @ case 117
	.4byte _08031BB6 @ case 118
	.4byte _08031BB6 @ case 119
	.4byte _08031BB6 @ case 120
	.4byte _08031BB6 @ case 121
	.4byte _08031BB6 @ case 122
	.4byte _08031BB6 @ case 123
	.4byte _08031BB6 @ case 124
	.4byte _08031BB6 @ case 125
	.4byte _08031BB6 @ case 126
	.4byte _08031BB6 @ case 127
	.4byte _08031BB6 @ case 128
	.4byte _08031BB6 @ case 129
	.4byte _08031BB6 @ case 130
	.4byte _08031BB6 @ case 131
	.4byte _08031BB6 @ case 132
	.4byte _08031BB6 @ case 133
	.4byte _08031BB6 @ case 134
	.4byte _08031BB6 @ case 135
	.4byte _08031BB6 @ case 136
	.4byte _08031BB6 @ case 137
	.4byte _08031BB6 @ case 138
	.4byte _08031BB6 @ case 139
	.4byte _08031BB6 @ case 140
	.4byte _08031BB6 @ case 141
	.4byte _08031BB6 @ case 142
	.4byte _08031BB6 @ case 143
	.4byte _08031BB6 @ case 144
	.4byte _08031BB6 @ case 145
	.4byte _08031BB6 @ case 146
	.4byte _08031BB6 @ case 147
	.4byte _08031BB6 @ case 148
	.4byte _08031BB6 @ case 149
	.4byte _08031BB6 @ case 150
	.4byte _08031BB6 @ case 151
	.4byte _08031BB6 @ case 152
	.4byte _08031BB6 @ case 153
	.4byte _08031BB6 @ case 154
	.4byte _08031BB6 @ case 155
	.4byte _08031BB6 @ case 156
	.4byte _08031BB6 @ case 157
	.4byte _08031B8C @ case 158
	.4byte _08031BA4 @ case 159
	.4byte _08031BB6 @ case 160
	.4byte _08031BB6 @ case 161
	.4byte _08031BB6 @ case 162
	.4byte _08031BB6 @ case 163
	.4byte _08031BB6 @ case 164
	.4byte _08031BB6 @ case 165
	.4byte _08031BB6 @ case 166
	.4byte _08031BB6 @ case 167
	.4byte _08031BB6 @ case 168
	.4byte _08031BB6 @ case 169
	.4byte _08031644 @ case 170
	.4byte _08031BB6 @ case 171
	.4byte _08031BB6 @ case 172
	.4byte _08031BB6 @ case 173
	.4byte _08031BB6 @ case 174
	.4byte _08031BB6 @ case 175
	.4byte _08031BB6 @ case 176
	.4byte _08031BB6 @ case 177
	.4byte _08031BB6 @ case 178
	.4byte _08031BB6 @ case 179
	.4byte _08031BB6 @ case 180
	.4byte _0803195C @ case 181
	.4byte _08031BB6 @ case 182
	.4byte _08031BB6 @ case 183
	.4byte _08031BB6 @ case 184
	.4byte _08031BB6 @ case 185
	.4byte _08031892 @ case 186
	.4byte _080318A6 @ case 187
	.4byte _080318BA @ case 188
	.4byte _080318CE @ case 189
	.4byte _080318E2 @ case 190
	.4byte _080318F6 @ case 191
	.4byte _08031BB6 @ case 192
	.4byte _08031BB6 @ case 193
	.4byte _0803186A @ case 194
	.4byte _08031BB6 @ case 195
	.4byte _0803182E @ case 196
	.4byte _08031BB6 @ case 197
	.4byte _08031856 @ case 198
_08031584:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031BB0
_08031594:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031954
_080315A4:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	b _08031BB6
_080315BA:
	mov r3, ip
	adds r2, r5, r3
	ldrb r0, [r2, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xc]
	cmp r0, #3
	beq _080315DA
	cmp r0, #0x9b
	beq _080315E8
	b _08031BB6
_080315DA:
	ldr r0, _080315E4
	ldrb r1, [r2, #4]
	lsls r1, r1, #1
	adds r1, r1, r0
	b _080315EA
	.align 2, 0
_080315E4: .4byte 0x0203E988
_080315E8:
	ldr r1, _080315F0
_080315EA:
	ldrh r0, [r6, #6]
	strh r0, [r1]
	b _08031BB6
	.align 2, 0
_080315F0: .4byte 0x0203E994
_080315F4:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031B98
_08031604:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031968
_08031614:
	mov r2, ip
	adds r0, r5, r2
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031916
_08031624:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _0803189E
_08031634:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _080318B2
_08031644:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _080318C6
_08031654:
	mov r2, ip
	adds r0, r5, r2
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _080318DA
_08031664:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _080318EE
_08031674:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031902
_08031684:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _0803188A
_08031694:
	mov r2, ip
	adds r0, r5, r2
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031876
_080316A4:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031862
_080316B4:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _0803184E
_080316C4:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _0803183A
_080316D4:
	mov r2, ip
	adds r0, r5, r2
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
	b _08031BB6
_080316EA:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031A2C
_080316FA:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031A54
_0803170A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _08031724
	movs r0, #1
	strb r0, [r1, #0x15]
	b _08031BB6
_08031724:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_0803172A:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	bne _08031744
	movs r0, #1
	strb r0, [r1, #0x16]
	b _08031BB6
_08031744:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_0803174A:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	bne _08031764
	movs r0, #1
	strb r0, [r1, #0x17]
	b _08031BB6
_08031764:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_0803176A:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08031784
	movs r0, #1
	strb r0, [r1, #0x18]
	b _08031BB6
_08031784:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_0803178A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x19]
	cmp r0, #0
	bne _080317A4
	movs r0, #1
	strb r0, [r1, #0x19]
	b _08031BB6
_080317A4:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_080317AA:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x20
	b _08031B80
_080317BA:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x21
	b _08031B80
_080317CA:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x22
	b _08031B80
_080317DA:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x23
	b _08031B80
_080317EA:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x24
	b _08031B80
_080317FA:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x25
	b _08031B80
_0803180A:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x26
	b _08031B80
_0803181A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	ldrb r0, [r1, #0x1f]
	adds r0, #1
	strb r0, [r1, #0x1f]
	b _08031BB6
_0803182E:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_0803183A:
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08031BB6
_08031842:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_0803184E:
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	b _08031BB6
_08031856:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031862:
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
	b _08031BB6
_0803186A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031876:
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	b _08031BB6
_0803187E:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_0803188A:
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _08031BB6
_08031892:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_0803189E:
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
	b _08031BB6
_080318A6:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_080318B2:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	b _08031BB6
_080318BA:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_080318C6:
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	b _08031BB6
_080318CE:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_080318DA:
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	b _08031BB6
_080318E2:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_080318EE:
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	b _08031BB6
_080318F6:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031902:
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	b _08031BB6
_0803190A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031916:
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	b _08031BB6
_0803191E:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	b _08031B80
_0803192C:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	b _08031B98
_0803193A:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	b _08031BB0
_08031948:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031954:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _08031BB6
_0803195C:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031968:
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	b _08031BB6
_08031970:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	ldr r1, _08031990
	ldrb r0, [r6, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r6, #6]
	strh r1, [r0]
	b _08031BB6
	.align 2, 0
_08031990: .4byte 0x0203E9A0
_08031994:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r4, ip
	adds r2, r5, r4
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _080319AC
	strb r1, [r0, #0x12]
_080319AC:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x16]
	adds r0, #1
	strb r0, [r1, #0x16]
	b _08031BB6
_080319BC:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _080319D4
	strb r1, [r0, #0x12]
_080319D4:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x17]
	adds r0, #1
	strb r0, [r1, #0x17]
	b _08031BB6
_080319E4:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _080319FC
	strb r1, [r0, #0x12]
_080319FC:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x18]
	adds r0, #1
	strb r0, [r1, #0x18]
	b _08031BB6
_08031A0C:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031A24
	strb r1, [r0, #0x12]
_08031A24:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
_08031A2C:
	ldrb r0, [r1, #0x13]
	adds r0, #1
	strb r0, [r1, #0x13]
	b _08031BB6
_08031A34:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031A4C
	strb r1, [r0, #0x12]
_08031A4C:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
_08031A54:
	ldrb r0, [r1, #0x14]
	adds r0, #1
	strb r0, [r1, #0x14]
	b _08031BB6
_08031A5C:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031A74
	strb r1, [r0, #0x12]
_08031A74:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x15]
	adds r0, #1
	strb r0, [r1, #0x15]
	b _08031BB6
_08031A84:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031A9C
	strb r1, [r0, #0x12]
_08031A9C:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	b _08031BB6
_08031AAC:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031AC4
	strb r1, [r0, #0x12]
_08031AC4:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	b _08031BB6
_08031AD4:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031AEC
	strb r1, [r0, #0x12]
_08031AEC:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1b]
	adds r0, #1
	strb r0, [r1, #0x1b]
	b _08031BB6
_08031AFC:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031B14
	strb r1, [r0, #0x12]
_08031B14:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1c]
	adds r0, #1
	strb r0, [r1, #0x1c]
	b _08031BB6
_08031B24:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031B3C
	strb r1, [r0, #0x12]
_08031B3C:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1d]
	adds r0, #1
	strb r0, [r1, #0x1d]
	b _08031BB6
_08031B4C:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031B64
	strb r1, [r0, #0x12]
_08031B64:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1e]
	adds r0, #1
	strb r0, [r1, #0x1e]
	b _08031BB6
_08031B74:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	lsls r1, r1, #4
	ldr r2, _08031B88
	adds r1, r1, r2
_08031B80:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08031BB6
	.align 2, 0
_08031B88: .4byte 0x0203E8D8
_08031B8C:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	lsls r1, r1, #4
	ldr r4, _08031BA0
	adds r1, r1, r4
_08031B98:
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	b _08031BB6
	.align 2, 0
_08031BA0: .4byte 0x0203E8D8
_08031BA4:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	lsls r1, r1, #4
	ldr r2, _08031F04
	adds r1, r1, r2
_08031BB0:
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
_08031BB6:
	adds r6, #0x1c
	movs r3, #1
	add sb, r3
	mov r4, r8
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	cmp sb, r0
	bge _08031BCE
	bl _0803100C
_08031BCE:
	ldr r4, [sp, #8]
	mov r2, r8
	ldrh r2, [r2, #8]
	cmp r4, r2
	bge _08031BDC
	bl _08030FEE
_08031BDC:
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp]
	cmp r3, #0x25
	bgt _08031BEA
	bl sub_08030FC8
_08031BEA:
	movs r5, #0
	ldr r4, _08031F08
	ldr r3, _08031F0C
	movs r6, #5
	str r6, [sp]
_08031BF4:
	ldrb r0, [r3, #3]
	lsls r2, r0, #2
	adds r2, r2, r0
	ldrb r0, [r3, #2]
	adds r2, r2, r0
	ldrb r1, [r3, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r1, [r4, #6]
	cmp r2, r1
	beq _08031C10
	adds r5, r5, r2
_08031C10:
	ldrb r0, [r3]
	ldrb r2, [r4]
	cmp r0, r2
	bls _08031C1C
	.2byte 0xEE00, 0xEE00
_08031C1C:
	ldrb r0, [r3, #1]
	ldrb r6, [r4, #1]
	cmp r0, r6
	bls _08031C28
	.2byte 0xEE00, 0xEE00
_08031C28:
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	bne _08031C32
	.2byte 0xEE00, 0xEE00
_08031C32:
	ldrb r1, [r3, #0x16]
	cmp r1, #0
	bne _08031C3C
	.2byte 0xEE00, 0xEE00
_08031C3C:
	ldrb r0, [r3, #0x17]
	cmp r0, #0
	bne _08031C46
	.2byte 0xEE00, 0xEE00
_08031C46:
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	bne _08031C50
	.2byte 0xEE00, 0xEE00
_08031C50:
	cmp r1, #0
	bne _08031C58
	.2byte 0xEE00, 0xEE00
_08031C58:
	adds r4, #0x14
	adds r3, #0x78
	ldr r0, [sp]
	subs r0, #1
	str r0, [sp]
	cmp r0, #0
	bge _08031BF4
	ldr r1, _08031F10
	ldrh r1, [r1, #0xc]
	cmp r5, r1
	ble _08031C72
	.2byte 0xEE00, 0xEE00
_08031C72:
	movs r2, #0
	str r2, [sp]
	movs r7, #0
	movs r3, #0
	mov r8, r3
	mov sb, r3
	movs r4, #0
	str r4, [sp, #0x14]
	movs r6, #0
	str r6, [sp, #0x18]
	ldr r0, _08031F14
	adds r1, r0, #0
	adds r1, #0x21
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	adds r3, r0, #0
	adds r3, #0x20
	str r3, [sp, #0x28]
	adds r4, r0, #0
	adds r4, #0x25
	str r4, [sp, #0x2c]
	adds r6, r0, #0
	adds r6, #0x24
	str r6, [sp, #0x30]
	adds r0, #0x23
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x20]
	adds r1, #0x22
	str r1, [sp, #0x38]
	ldr r2, [sp, #0x20]
	adds r2, #0x26
	str r2, [sp, #0x3c]
	movs r3, #0
	str r3, [sp, #0x40]

    .thumb
sub_08031CB8: @ 0x08031CB8
	ldr r0, _08031F08
	ldr r4, [sp, #0x14]
	adds r0, r4, r0
	ldrb r5, [r0]
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	ldr r1, _08031F18
	add r1, sb
	str r0, [r1]
	movs r4, #0
	cmp r4, r5
	bge _08031CE6
	adds r2, r1, #0
	adds r1, r5, #0
_08031CDA:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	cmp r4, r1
	blt _08031CDA
_08031CE6:
	ldr r0, _08031F08
	ldr r6, [sp, #0x14]
	adds r0, r6, r0
	ldrb r5, [r0, #1]
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	ldr r1, _08031F1C
	add r1, sb
	str r0, [r1]
	movs r4, #0
	cmp r4, r5
	bge _08031D18
	ldr r0, _08031F1C
	mov r1, sb
	adds r2, r1, r0
	adds r1, r5, #0
_08031D0C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	cmp r4, r1
	blt _08031D0C
_08031D18:
	ldr r4, _08031F0C
	mov r2, sb
	adds r5, r2, r4
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08031D4E
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x24
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #2]
	cmp r4, r5
	bge _08031D4E
	ldr r2, _08031F0C
	add r2, sb
_08031D40:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #2]
	cmp r4, r3
	blt _08031D40
_08031D4E:
	ldr r4, _08031F0C
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08031D84
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x28
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #3]
	cmp r4, r5
	bge _08031D84
	ldr r2, _08031F0C
	add r2, sb
_08031D76:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #3]
	cmp r4, r0
	blt _08031D76
_08031D84:
	ldr r4, _08031F0C
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08031DBA
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x2c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #4]
	cmp r4, r5
	bge _08031DBA
	ldr r2, _08031F0C
	add r2, sb
_08031DAC:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #4]
	cmp r4, r3
	blt _08031DAC
_08031DBA:
	ldr r4, _08031F0C
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _08031DF0
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x30
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #5]
	cmp r4, r5
	bge _08031DF0
	ldr r2, _08031F0C
	add r2, sb
_08031DE2:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #5]
	cmp r4, r0
	blt _08031DE2
_08031DF0:
	ldr r4, _08031F0C
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _08031E26
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x34
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #6]
	cmp r4, r5
	bge _08031E26
	ldr r2, _08031F0C
	add r2, sb
_08031E18:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #6]
	cmp r4, r3
	blt _08031E18
_08031E26:
	ldr r4, _08031F0C
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _08031E5C
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x38
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #7]
	cmp r4, r5
	bge _08031E5C
	ldr r2, _08031F0C
	add r2, sb
_08031E4E:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #7]
	cmp r4, r0
	blt _08031E4E
_08031E5C:
	ldr r4, _08031F0C
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08031E92
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x3c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #8]
	cmp r4, r5
	bge _08031E92
	ldr r2, _08031F0C
	add r2, sb
_08031E84:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #8]
	cmp r4, r3
	blt _08031E84
_08031E92:
	ldr r4, _08031F0C
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _08031EC8
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x40
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #9]
	cmp r4, r5
	bge _08031EC8
	ldr r2, _08031F0C
	add r2, sb
_08031EBA:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #9]
	cmp r4, r0
	blt _08031EBA
_08031EC8:
	ldr r4, _08031F0C
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08031EFE
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x44
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xa]
	cmp r4, r5
	bge _08031EFE
	ldr r2, _08031F0C
	add r2, sb
_08031EF0:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0xa]
	cmp r4, r3
	blt _08031EF0
_08031EFE:
	ldr r4, _08031F0C
	b _08031F20
	.align 2, 0
_08031F04: .4byte 0x0203E8D8
_08031F08: .4byte 0x080CC84C
_08031F0C: .4byte 0x0203E170
_08031F10: .4byte 0x080CC8C4
_08031F14: .4byte 0x0203E440
_08031F18: .4byte 0x0203E18C
_08031F1C: .4byte 0x0203E190
_08031F20:
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _08031F54
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x48
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xb]
	cmp r4, r5
	bge _08031F54
	ldr r2, _08032280
	add r2, sb
_08031F46:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0xb]
	cmp r4, r0
	blt _08031F46
_08031F54:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08031F8A
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x4c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xc]
	cmp r4, r5
	bge _08031F8A
	ldr r2, _08032280
	add r2, sb
_08031F7C:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0xc]
	cmp r4, r3
	blt _08031F7C
_08031F8A:
	ldr r4, _08032280
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08031FC0
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x50
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xd]
	cmp r4, r5
	bge _08031FC0
	ldr r2, _08032280
	add r2, sb
_08031FB2:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0xd]
	cmp r4, r0
	blt _08031FB2
_08031FC0:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08031FF6
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x54
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xe]
	cmp r4, r5
	bge _08031FF6
	ldr r2, _08032280
	add r2, sb
_08031FE8:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0xe]
	cmp r4, r3
	blt _08031FE8
_08031FF6:
	ldr r4, _08032280
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0803202C
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x58
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xf]
	cmp r4, r5
	bge _0803202C
	ldr r2, _08032280
	add r2, sb
_0803201E:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0xf]
	cmp r4, r0
	blt _0803201E
_0803202C:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _08032062
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x5c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x10]
	cmp r4, r5
	bge _08032062
	ldr r2, _08032280
	add r2, sb
_08032054:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0x10]
	cmp r4, r3
	blt _08032054
_08032062:
	ldr r4, _08032280
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _08032098
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x60
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x11]
	cmp r4, r5
	bge _08032098
	ldr r2, _08032280
	add r2, sb
_0803208A:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0x11]
	cmp r4, r0
	blt _0803208A
_08032098:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080320CE
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x64
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x12]
	cmp r4, r5
	bge _080320CE
	ldr r2, _08032280
	add r2, sb
_080320C0:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0x12]
	cmp r4, r3
	blt _080320C0
_080320CE:
	ldr r4, _08032280
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _08032104
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x68
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x13]
	cmp r4, r5
	bge _08032104
	ldr r2, _08032280
	add r2, sb
_080320F6:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0x13]
	cmp r4, r0
	blt _080320F6
_08032104:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _0803213A
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r1, r4, #0
	adds r1, #0x6c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x14]
	cmp r4, r5
	bge _0803213A
	ldr r2, _08032280
	add r2, sb
_0803212C:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0x14]
	cmp r4, r3
	blt _0803212C
_0803213A:
	ldr r4, _08032284
	mov r6, r8
	adds r5, r6, r4
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _08032190
	lsls r0, r0, #4
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x90
	adds r1, r6, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x12]
	cmp r4, r5
	bge _08032190
	ldr r0, [sp, #0x24]
	adds r2, r0, r2
	movs r3, #0
	ldr r5, [sp, #0x20]
_08032168:
	ldr r0, [r2]
	lsls r1, r4, #4
	adds r0, r1, r0
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, r1, r0
	strb r3, [r0, #1]
	ldr r0, [r2]
	adds r0, r1, r0
	strb r3, [r0, #2]
	ldr r0, [r2]
	adds r0, r1, r0
	strb r3, [r0, #3]
	ldr r0, [r2]
	adds r1, r1, r0
	strb r3, [r1, #4]
	adds r4, #1
	ldrb r1, [r5, #0x12]
	cmp r4, r1
	blt _08032168
_08032190:
	ldr r4, _08032284
	mov r2, r8
	adds r5, r2, r4
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080321CA
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x44
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #7]
	cmp r4, r5
	bge _080321CA
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080321BC:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #7]
	cmp r4, r0
	blt _080321BC
_080321CA:
	ldr r4, _08032284
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08032204
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x48
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #8]
	cmp r4, r5
	bge _08032204
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080321F6:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #8]
	cmp r4, r0
	blt _080321F6
_08032204:
	ldr r4, _08032284
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0803223E
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x4c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #9]
	cmp r4, r5
	bge _0803223E
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032230:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #9]
	cmp r4, r0
	blt _08032230
_0803223E:
	ldr r4, _08032284
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08032278
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x50
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xa]
	cmp r4, r5
	bge _08032278
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803226A:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xa]
	cmp r4, r0
	blt _0803226A
_08032278:
	ldr r4, _08032284
	mov r1, r8
	adds r5, r1, r4
	b _08032288
	.align 2, 0
_08032280: .4byte 0x0203E170
_08032284: .4byte 0x0203E440
_08032288:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080322BC
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x54
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xb]
	cmp r4, r5
	bge _080322BC
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080322AE:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xb]
	cmp r4, r0
	blt _080322AE
_080322BC:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080322F6
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x58
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xc]
	cmp r4, r5
	bge _080322F6
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080322E8:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xc]
	cmp r4, r0
	blt _080322E8
_080322F6:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _08032330
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x40
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #6]
	cmp r4, r5
	bge _08032330
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032322:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #6]
	cmp r4, r0
	blt _08032322
_08032330:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803236A
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x28
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _0803236A
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803235C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _0803235C
_0803236A:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080323A4
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x2c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #1]
	cmp r4, r5
	bge _080323A4
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032396:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #1]
	cmp r4, r0
	blt _08032396
_080323A4:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080323DE
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x30
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #2]
	cmp r4, r5
	bge _080323DE
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080323D0:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #2]
	cmp r4, r0
	blt _080323D0
_080323DE:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08032418
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x34
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #3]
	cmp r4, r5
	bge _08032418
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803240A:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #3]
	cmp r4, r0
	blt _0803240A
_08032418:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08032452
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x38
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #4]
	cmp r4, r5
	bge _08032452
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032444:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #4]
	cmp r4, r0
	blt _08032444
_08032452:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _0803248C
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x94
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x13]
	cmp r4, r5
	bge _0803248C
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803247E:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x13]
	cmp r4, r0
	blt _0803247E
_0803248C:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _080324C6
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x98
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x14]
	cmp r4, r5
	bge _080324C6
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080324B8:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x14]
	cmp r4, r0
	blt _080324B8
_080324C6:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	beq _08032500
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x9c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x15]
	cmp r4, r5
	bge _08032500
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080324F2:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x15]
	cmp r4, r0
	blt _080324F2
_08032500:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0803253A
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x3c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #5]
	cmp r4, r5
	bge _0803253A
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803252C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #5]
	cmp r4, r0
	blt _0803252C
_0803253A:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08032574
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x5c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xd]
	cmp r4, r5
	bge _08032574
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032566:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xd]
	cmp r4, r0
	blt _08032566
_08032574:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	beq _080325AE
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xa0
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x16]
	cmp r4, r5
	bge _080325AE
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080325A0:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x16]
	cmp r4, r0
	blt _080325A0
_080325AE:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080325E8
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xa4
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x17]
	cmp r4, r5
	bge _080325E8
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080325DA:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x17]
	cmp r4, r0
	blt _080325DA
_080325E8:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _0803262A
	movs r1, #0xe
	movs r2, #4
	b _08032600
	.align 2, 0
_080325FC: .4byte 0x0203E440
_08032600:
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xa8
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x18]
	cmp r4, r5
	bge _0803262A
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803261C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x18]
	cmp r4, r0
	blt _0803261C
_0803262A:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08032664
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x60
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xe]
	cmp r4, r5
	bge _08032664
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032656:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xe]
	cmp r4, r0
	blt _08032656
_08032664:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0803269E
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x64
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xf]
	cmp r4, r5
	bge _0803269E
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032690:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xf]
	cmp r4, r0
	blt _08032690
_0803269E:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _080326D8
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x68
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x10]
	cmp r4, r5
	bge _080326D8
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080326CA:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x10]
	cmp r4, r0
	blt _080326CA
_080326D8:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _08032712
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x6c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x11]
	cmp r4, r5
	bge _08032712
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032704:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x11]
	cmp r4, r0
	blt _08032704
_08032712:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x19]
	cmp r0, #0
	beq _0803274C
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xac
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x19]
	cmp r4, r5
	bge _0803274C
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803273E:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x19]
	cmp r4, r0
	blt _0803273E
_0803274C:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _08032786
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xb0
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1a]
	cmp r4, r5
	bge _08032786
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032778:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1a]
	cmp r4, r0
	blt _08032778
_08032786:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	beq _080327C0
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xb4
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1b]
	cmp r4, r5
	bge _080327C0
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080327B2:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1b]
	cmp r4, r0
	blt _080327B2
_080327C0:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080327FA
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xb8
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1c]
	cmp r4, r5
	bge _080327FA
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080327EC:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1c]
	cmp r4, r0
	blt _080327EC
_080327FA:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	beq _08032834
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x70
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1f]
	cmp r4, r5
	bge _08032834
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032826:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1f]
	cmp r4, r0
	blt _08032826
_08032834:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032872
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x8c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032872
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x3c]
_08032864:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _08032864
_08032872:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x22
	ldrb r0, [r5]
	cmp r0, #0
	beq _080328B0
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x7c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _080328B0
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x38]
_080328A2:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _080328A2
_080328B0:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x23
	ldrb r0, [r5]
	cmp r0, #0
	beq _080328EE
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x80
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _080328EE
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x34]
_080328E0:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _080328E0
_080328EE:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x24
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803292C
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x84
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _0803292C
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x30]
_0803291E:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _0803291E
_0803292C:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x25
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032972
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x88
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032972
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x2c]
_0803295C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	b _08032970
	.align 2, 0
_0803296C: .4byte 0x0203E440
_08032970:
	blt _0803295C
_08032972:
	ldr r4, _08032CD4
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	beq _080329AC
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xbc
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1d]
	cmp r4, r5
	bge _080329AC
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803299E:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1d]
	cmp r4, r0
	blt _0803299E
_080329AC:
	ldr r4, _08032CD4
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _080329E6
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0xc0
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1e]
	cmp r4, r5
	bge _080329E6
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080329D8:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1e]
	cmp r4, r0
	blt _080329D8
_080329E6:
	ldr r4, _08032CD4
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x20
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032A24
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r4, #0
	adds r2, #0x74
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032A24
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x28]
_08032A16:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _08032A16
_08032A24:
	ldr r0, _08032CD4
	mov r2, r8
	adds r1, r2, r0
	adds r5, r1, #0
	adds r5, #0x21
	ldrb r1, [r5]
	mov sl, r0
	cmp r1, #0
	beq _08032A66
	adds r0, r1, #0
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	mov r2, sl
	adds r2, #0x78
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032A66
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x1c]
_08032A58:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _08032A58
_08032A66:
	ldr r6, _08032CD8
	ldr r1, [sp, #0x18]
	adds r5, r1, r6
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032AA0
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r6, #4
	ldr r3, [sp, #0x18]
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032AA0
	ldr r0, [sp, #0x40]
	adds r2, r0, r2
	movs r3, #0
	adds r1, r0, r6
_08032A92:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrb r6, [r1]
	cmp r4, r6
	blt _08032A92
_08032AA0:
	ldr r6, _08032CD8
	ldr r0, [sp, #0x18]
	adds r5, r0, r6
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08032ADC
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r6, #0
	adds r2, #8
	ldr r3, [sp, #0x18]
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #1]
	cmp r4, r5
	bge _08032ADC
	ldr r0, [sp, #0x40]
	adds r2, r0, r2
	movs r3, #0
	adds r1, r0, r6
_08032ACE:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrb r6, [r1, #1]
	cmp r4, r6
	blt _08032ACE
_08032ADC:
	ldr r6, _08032CD8
	ldr r0, [sp, #0x18]
	adds r5, r0, r6
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08032B18
	movs r1, #0xe
	movs r2, #4
	bl heap_alloc
	adds r2, r6, #0
	adds r2, #0xc
	ldr r3, [sp, #0x18]
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #2]
	cmp r4, r5
	bge _08032B18
	ldr r0, [sp, #0x40]
	adds r2, r0, r2
	movs r3, #0
	adds r1, r0, r6
_08032B0A:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrb r6, [r1, #2]
	cmp r4, r6
	blt _08032B0A
_08032B18:
	movs r0, #0xc4
	add r8, r0
	movs r1, #0x78
	add sb, r1
	ldr r2, [sp, #0x14]
	adds r2, #0x14
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x40]
	adds r3, #0x10
	str r3, [sp, #0x40]
	ldr r4, [sp, #0x18]
	adds r4, #0x10
	str r4, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	adds r6, #0xc4
	str r6, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	adds r0, #0xc4
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r1, #0xc4
	str r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	adds r2, #0xc4
	str r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	adds r3, #0xc4
	str r3, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	adds r4, #0xc4
	str r4, [sp, #0x30]
	ldr r6, [sp, #0x34]
	adds r6, #0xc4
	str r6, [sp, #0x34]
	ldr r0, [sp, #0x38]
	adds r0, #0xc4
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	adds r1, #0xc4
	str r1, [sp, #0x3c]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #5
	bgt _08032B76
	bl sub_08031CB8
_08032B76:
	movs r3, #0
	str r3, [sp]
	ldr r4, _08032CDC
	mov ip, r4
	movs r6, #0
	str r6, [sp, #0x10]
_08032B82:
	ldr r1, [sp, #0x10]
	add r1, ip
	ldrb r0, [r1, #4]
	ldr r2, [sp]
	lsls r5, r2, #3
	cmp r0, #0xff
	beq _08032C08
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	mov r8, r0
	movs r4, #0
	ldrh r3, [r0, #8]
	cmp r4, r3
	bge _08032C08
	ldr r6, _08032CE0
	mov sl, r6
	mov r7, ip
_08032BA4:
	mov r0, r8
	ldr r1, [r0, #4]
	lsls r0, r4, #3
	adds r1, r0, r1
	ldr r6, [r1]
	movs r2, #0
	mov sb, r2
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #8]
	ldrh r1, [r1, #4]
	cmp sb, r1
	bge _08032BFE
	ldr r4, _08032CE4
	adds r2, r5, r7
	mov r3, sl
_08032BC4:
	ldrh r0, [r6, #2]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08032BEA
	ldrb r1, [r2, #4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r3
	ldrb r1, [r6, #0xe]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08032BEA:
	adds r6, #0x1c
	movs r0, #1
	add sb, r0
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	cmp sb, r0
	blt _08032BC4
_08032BFE:
	ldr r4, [sp, #8]
	mov r2, r8
	ldrh r2, [r2, #8]
	cmp r4, r2
	blt _08032BA4
_08032C08:
	ldr r3, [sp, #0x10]
	adds r3, #8
	str r3, [sp, #0x10]
	ldr r4, [sp]
	adds r4, #1
	str r4, [sp]
	cmp r4, #0x25
	ble _08032B82
	movs r6, #0
	str r6, [sp]
	movs r3, #0
	ldr r0, _08032CD4
	mov r8, r0
_08032C22:
	movs r0, #0xc4
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r0, r1
	mov r4, r8
	adds r2, r1, r4
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	beq _08032C78
	movs r4, #0
	ldrb r6, [r2, #0x12]
	cmp r4, r6
	bge _08032C78
	ldr r0, _08032CE0
	adds r6, r1, r0
	adds r7, r2, #0
_08032C42:
	ldr r0, [r6]
	lsls r5, r4, #4
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08032C52
	.2byte 0xEE00, 0xEE00
_08032C52:
	ldrb r0, [r1]
	lsls r0, r0, #3
	movs r1, #0xe
	movs r2, #4
	str r3, [sp, #0x44]
	bl heap_alloc
	ldr r1, [r6]
	adds r1, r5, r1
	str r0, [r1, #0xc]
	ldr r3, [sp, #0x44]
	strb r3, [r1, #1]
	ldr r0, [r6]
	adds r0, r5, r0
	strb r3, [r0, #4]
	adds r4, #1
	ldrb r0, [r7, #0x12]
	cmp r4, r0
	blt _08032C42
_08032C78:
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	cmp r1, #5
	ble _08032C22
	movs r2, #0
	str r2, [sp]
	ldr r3, _08032CD4
	mov sl, r3
	ldr r4, _08032CDC
	mov ip, r4
_08032C8E:
	ldr r6, [sp]
	lsls r0, r6, #3
	mov r1, ip
	adds r2, r0, r1
	ldrb r1, [r2, #4]
	adds r5, r0, #0
	cmp r1, #0xff
	bne _08032CA0
	b _08032FC2
_08032CA0:
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	mov r8, r0
	movs r4, #0
	ldrh r2, [r0, #8]
	cmp r4, r2
	blt _08032CB0
	b _08032FC2
_08032CB0:
	mov r3, r8
	ldr r1, [r3, #4]
	lsls r0, r4, #3
	adds r1, r0, r1
	ldr r6, [r1]
	movs r2, #0
	mov sb, r2
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #8]
	ldrh r1, [r1, #4]
	cmp sb, r1
	blt _08032CCC
	b _08032FB6
_08032CCC:
	ldr r1, _08032CE4
	ldrh r0, [r6, #2]
	lsls r0, r0, #2
	b _08032CE8
	.align 2, 0
_08032CD4: .4byte 0x0203E440
_08032CD8: .4byte 0x0203E8D8
_08032CDC: .4byte dRoomIndexes
_08032CE0: .4byte 0x0203E4D0
_08032CE4: .4byte 0x080CC2B0
_08032CE8:
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08032CF6
	b _08032FA0
_08032CF6:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	adds r2, r1, #0
	muls r2, r0, r2
	mov r0, sl
	adds r0, #0x90
	adds r2, r2, r0
	ldrb r1, [r6, #0xe]
	lsls r1, r1, #4
	ldr r0, [r2]
	adds r3, r0, r1
	ldrb r0, [r3, #1]
	ldrb r4, [r3]
	cmp r0, r4
	bne _08032D1C
	.2byte 0xEE00, 0xEE00
_08032D1C:
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _08032D2A
	ldrb r0, [r6, #0x14]
	strb r0, [r3, #2]
	ldrb r0, [r3, #3]
	b _08032D3E
_08032D2A:
	ldrb r1, [r6, #0x14]
	cmp r0, r1
	beq _08032D34
	.2byte 0xEE00, 0xEE00
_08032D34:
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _08032D42
	.2byte 0xEE00, 0xEE00
_08032D3E:
	cmp r0, #0
	bne _08032D48
_08032D42:
	ldrb r0, [r6, #0x17]
	strb r0, [r3, #3]
	b _08032D5C
_08032D48:
	ldrb r2, [r6, #0x17]
	cmp r0, r2
	beq _08032D52
	.2byte 0xEE00, 0xEE00
_08032D52:
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _08032D5C
	.2byte 0xEE00, 0xEE00
_08032D5C:
	ldrb r0, [r3, #1]
	ldr r1, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xf]
	movs r2, #0
	strb r1, [r0]
	ldrb r0, [r3, #1]
	ldr r1, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	strb r2, [r0, #1]
	ldrb r1, [r3, #1]
	ldr r0, [r3, #0xc]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r6, #0x13]
	strb r0, [r1, #2]
	ldrb r0, [r3, #1]
	ldr r1, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	strb r2, [r0, #3]
	ldrb r1, [r3, #1]
	ldr r0, [r3, #0xc]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r6, #0x1a]
	strh r0, [r1, #4]
	ldrb r0, [r3, #1]
	ldr r1, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	strh r2, [r0, #6]
	ldrh r0, [r6, #2]
	subs r0, #0x2e
	cmp r0, #0x43
	bls _08032DAA
	b _08032F96
_08032DAA:
	lsls r0, r0, #2
	ldr r1, _08032DB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032DB4: .4byte 0x08032DB8
_08032DB8: @ jump table
	.4byte _08032F58 @ case 0
	.4byte _08032F96 @ case 1
	.4byte _08032F96 @ case 2
	.4byte _08032F96 @ case 3
	.4byte _08032F96 @ case 4
	.4byte _08032F96 @ case 5
	.4byte _08032F68 @ case 6
	.4byte _08032F96 @ case 7
	.4byte _08032F96 @ case 8
	.4byte _08032F96 @ case 9
	.4byte _08032F96 @ case 10
	.4byte _08032F96 @ case 11
	.4byte _08032F96 @ case 12
	.4byte _08032F96 @ case 13
	.4byte _08032F96 @ case 14
	.4byte _08032F78 @ case 15
	.4byte _08032F96 @ case 16
	.4byte _08032F96 @ case 17
	.4byte _08032F96 @ case 18
	.4byte _08032F96 @ case 19
	.4byte _08032F28 @ case 20
	.4byte _08032F38 @ case 21
	.4byte _08032F48 @ case 22
	.4byte _08032F96 @ case 23
	.4byte _08032F96 @ case 24
	.4byte _08032F96 @ case 25
	.4byte _08032F96 @ case 26
	.4byte _08032F96 @ case 27
	.4byte _08032F96 @ case 28
	.4byte _08032F96 @ case 29
	.4byte _08032F96 @ case 30
	.4byte _08032F96 @ case 31
	.4byte _08032F96 @ case 32
	.4byte _08032F18 @ case 33
	.4byte _08032F96 @ case 34
	.4byte _08032F96 @ case 35
	.4byte _08032F08 @ case 36
	.4byte _08032F96 @ case 37
	.4byte _08032F96 @ case 38
	.4byte _08032F96 @ case 39
	.4byte _08032EE8 @ case 40
	.4byte _08032EF8 @ case 41
	.4byte _08032F96 @ case 42
	.4byte _08032F96 @ case 43
	.4byte _08032F96 @ case 44
	.4byte _08032F96 @ case 45
	.4byte _08032F96 @ case 46
	.4byte _08032F96 @ case 47
	.4byte _08032F96 @ case 48
	.4byte _08032F96 @ case 49
	.4byte _08032F96 @ case 50
	.4byte _08032F96 @ case 51
	.4byte _08032F96 @ case 52
	.4byte _08032F96 @ case 53
	.4byte _08032F96 @ case 54
	.4byte _08032F96 @ case 55
	.4byte _08032F96 @ case 56
	.4byte _08032F96 @ case 57
	.4byte _08032F96 @ case 58
	.4byte _08032F96 @ case 59
	.4byte _08032F96 @ case 60
	.4byte _08032F96 @ case 61
	.4byte _08032F96 @ case 62
	.4byte _08032F96 @ case 63
	.4byte _08032F96 @ case 64
	.4byte _08032F96 @ case 65
	.4byte _08032ED8 @ case 66
	.4byte _08032EC8 @ case 67
_08032EC8:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xc0
	b _08032F86
_08032ED8:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xbc
	b _08032F86
_08032EE8:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xb8
	b _08032F86
_08032EF8:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xb4
	b _08032F86
_08032F08:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xb0
	b _08032F86
_08032F18:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xac
	b _08032F86
_08032F28:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xa0
	b _08032F86
_08032F38:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xa4
	b _08032F86
_08032F48:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xa8
	b _08032F86
_08032F58:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0x94
	b _08032F86
_08032F68:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0x98
	b _08032F86
_08032F78:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0x9c
_08032F86:
	adds r1, r1, r0
	movs r2, #6
	ldrsh r0, [r6, r2]
	ldr r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r3, #1]
	strb r0, [r1]
	b _08032F9A
_08032F96:
	.2byte 0xEE00, 0xEE00
_08032F9A:
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
_08032FA0:
	adds r6, #0x1c
	movs r3, #1
	add sb, r3
	mov r4, r8
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	cmp sb, r0
	bge _08032FB6
	b _08032CCC
_08032FB6:
	ldr r4, [sp, #8]
	mov r2, r8
	ldrh r2, [r2, #8]
	cmp r4, r2
	bge _08032FC2
	b _08032CB0
_08032FC2:
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp]
	cmp r3, #0x25
	bgt _08032FCE
	b _08032C8E
_08032FCE:
	movs r4, #0
	str r4, [sp]
	ldr r0, _080330E8
	adds r7, r0, #0
	mov r8, r4
	adds r5, r7, #0
	adds r5, #0x12
_08032FDC:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803300E
	movs r4, #0
	ldrb r6, [r5]
	cmp r4, r6
	bge _0803300E
	ldr r0, _080330EC
	mov r1, r8
	adds r3, r1, r0
	adds r2, r7, #0
	movs r6, #0
_08032FF4:
	ldr r0, [r3]
	lsls r1, r4, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08033004
	.2byte 0xEE00, 0xEE00
_08033004:
	strb r6, [r1, #1]
	adds r4, #1
	ldrb r0, [r2, #0x12]
	cmp r4, r0
	blt _08032FF4
_0803300E:
	adds r7, #0xc4
	movs r1, #0xc4
	add r8, r1
	adds r5, #0xc4
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #5
	ble _08032FDC
	movs r3, #0
	str r3, [sp]
_08033024:
	ldr r4, [sp]
	lsls r0, r4, #3
	ldr r6, _080330F0
	adds r2, r0, r6
	ldrb r1, [r2, #4]
	adds r4, #1
	str r4, [sp, #4]
	adds r5, r0, #0
	cmp r1, #0xff
	beq _080330CE
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	mov r8, r0
	movs r4, #0
	ldrh r0, [r0, #8]
	cmp r4, r0
	bge _080330CE
_08033046:
	mov r2, r8
	ldr r1, [r2, #4]
	lsls r0, r4, #3
	adds r1, r0, r1
	ldr r6, [r1]
	movs r3, #0
	mov sb, r3
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #8]
	ldrh r1, [r1, #4]
	cmp sb, r1
	bge _080330C4
	ldr r4, _080330F4
	mov ip, r4
	ldr r0, _080330F0
	adds r7, r5, r0
_08033068:
	ldrb r0, [r6, #0xc]
	subs r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080330B0
	ldrh r4, [r6, #2]
	lsls r0, r4, #2
	add r0, ip
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080330B0
	ldrb r1, [r7, #4]
	movs r0, #0xc4
	adds r2, r1, #0
	muls r2, r0, r2
	mov r3, sl
	adds r1, r2, r3
	ldrb r0, [r6, #0x13]
	ldrb r1, [r1, #0x12]
	cmp r0, r1
	blo _0803309C
	.2byte 0xEE00, 0xEE00
_0803309C:
	mov r0, sl
	adds r0, #0x90
	adds r0, r2, r0
	ldrb r1, [r6, #0x13]
	lsls r1, r1, #4
	ldr r0, [r0]
	adds r3, r0, r1
	strh r4, [r3, #6]
	ldrh r0, [r6, #6]
	strh r0, [r3, #8]
_080330B0:
	adds r6, #0x1c
	movs r4, #1
	add sb, r4
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldrh r0, [r0, #4]
	cmp sb, r0
	blt _08033068
_080330C4:
	ldr r4, [sp, #8]
	mov r3, r8
	ldrh r3, [r3, #8]
	cmp r4, r3
	blt _08033046
_080330CE:
	ldr r4, [sp, #4]
	str r4, [sp]
	cmp r4, #0x25
	ble _08033024
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330E8: .4byte 0x0203E440
_080330EC: .4byte 0x0203E4D0
_080330F0: .4byte dRoomIndexes
_080330F4: .4byte 0x080CC2B0

