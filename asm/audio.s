
@ audio iram starts at 0x030043A8

	.syntax unified

	.bss 

@ 0x030043A8
// .lcomm audio_buff_tog, 4
// .lcomm audio_cur_tune, 4
// .lcomm audio_new_tune, 4
@ randomly makes this occupy 0x84 bytes for no reason, so therefore the - 4
// .lcomm audio_delta_time, 8 * 16 - 4 @ struct
// .lcomm audio_delta_time_dec, 4
// .lcomm audio_ppqn, 4
// .lcomm audio_tempo, 4
// audio_buffers: @ struct
// 	.lcomm audio_buff0_dat, 0xE0
// 	.lcomm audio_noise0_dat, 0xE0
// 	.lcomm audio_buff1_dat, 0xE0
// 	.lcomm audio_noise1_dat, 0xE0
// .lcomm audio_precalc_buff, 0x1C0
// .lcomm audio_pitchbend, 4 * 16
// .lcomm audio_modulation, 8 * 16 @ struct
// .lcomm audio_chan_vols, 16
// .lcomm audio_monophonic_op, 16
// .lcomm audio_chan_notes, 0x28 * 16 * 6 @ struct
// .lcomm audio_chan_fx, 0x28 * 4 @ struct
// .lcomm audio_chan_dly, 4 * 4 @ struct
// .lcomm audio_chan_id, 4 * 4 @ struct
// .lcomm audio_3005A20, 4 * 4 @ struct
// .lcomm audio_num_tracks, 4
// .lcomm audio_vmap_ptr, 4
// .lcomm audio_voices, 4 * 16
// .lcomm audio_samp_list, 4
@ .lcomm audio_midi_tracks, 4 * 16

	.text

audio_ram_code_size_ref:
	.4byte END_AUDIO_RAM_CODE - START_AUDIO_RAM_CODE @ should be 0x00001098

    .arm
START_AUDIO_RAM_CODE:

setup_note_ARM: @ 0x08003B34
	stmdb sp!, {lr}
	strb r3, [r5, #3]
	str r1, [r5, #0x24]
	strb r7, [r5, #1]
	strb r4, [r5, #2]
	strb sb, [r5, #5]
	ldr r1, [r2, #0x10]
	str r1, [r5, #0xc]
	mov r1, #0
	str r1, [r5, #0x10]
	strb r1, [r5, #4]
	str r1, [r5, #0x14]
	str r2, [r5, #0x20]
	mov r8, #0x11
	strb r8, [r5]
	ldm sp!, {lr}
	bx lr

generate_audio_buffer_ARM: @ 0x08003B78
	sub sp, sp, #0x24
	str lr, [sp, #8]
	ldr r5, _080043A4
	str r5, [sp, #4]
	ldr r1, _080043A8
	ldr r1, [r1]
	str r1, [sp, #0x10]
	ldr r2, _080043AC
	ldr r2, [r2]
	ldr r0, _080043B0
	add r0, r0, r2
_08003BA4:
	ldrb r5, [r0, -r2]
	cmp r5, #0x11
	bleq gab_play_note
	subs r2, r2, #0x28
	bgt _08003BA4
	ldr r2, _080043B4
	ldr r2, [r2]
_08003BC0:
	ldrb r5, [r0, -r2]
	cmp r5, #0x12
	bleq gab_play_note
	subs r2, r2, #0x28
	bgt _08003BC0
	ldr r0, _080043B8
	ldr r1, [r0]
	cmp r1, #1
	beq _08003C24
	ldr r2, _080043BC
	ldr r2, [r2]
	ldr r0, _080043C0
	add r0, r0, r2
_08003BF4:
	ldrb r5, [r0, -r2]
	cmp r5, #0x11
	bleq gab_play_note
	subs r2, r2, #0x28
	bgt _08003BF4
	ldr r2, _080043C4
	ldr r2, [r2]
_08003C10:
	ldrb r5, [r0, -r2]
	cmp r5, #0x12
	bleq gab_play_note
	subs r2, r2, #0x28
	bgt _08003C10
_08003C24:
	ldr r0, [sp, #0x10]
	ldr r1, _080043C8
	ldr r1, [r1]
	cmp r0, r1
	bne gab_all_notes_playing
	ldr r0, _080043CC
	add lr, pc, #0
	bx r0

gab_all_notes_playing:
	ldr r0, _080043D0
	ldr r2, [r0]
	ldr r1, _080043D4
	cmp r2, #0
	bne _08003C5C
	ldr r1, _080043D8
_08003C5C:
	ldr r1, [r1]
	ldr r0, _080043DC
	ldr r2, _080043E0
	ldr r2, [r2]
_08003C6C:
	ldrsh r3, [r0], #2
	cmp r3, #0x7f
	movgt r3, #0x7f
	bgt _08003C84
	cmn r3, #0x80
	mvnlt r3, #0x7f
_08003C84:
	strb r3, [r1], #1
	subs r2, r2, #1
	bne _08003C6C
	ldr lr, [sp, #8]
	add sp, sp, #0x24
	bx lr

    .arm
gab_play_note: @ 0x08003C9C
	str lr, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	sub r0, r0, r2
	ldr r5, [sp, #4]
	bl  combine_note
	ldr r1, [sp, #0x10]
	subs r1, r1, #1
	str r1, [sp, #0x10]
	beq gab_all_notes_playing
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr pc, [sp, #0xc]

	.arm
update_all_fx_ARM: @ 0x08003CD0
	stmdb sp!, {lr}
	ldr fp, _080043E4
	ldr fp, [fp]
	ldr sl, _080043E8
	add sl, sl, fp
	b jumpin_uaf
update_all_notes_ARM:
	stmdb sp!, {lr}
	ldr fp, _080043EC
	ldr fp, [fp]
	ldr sl, _080043F0
	add sl, sl, fp
jumpin_uaf:
	ldrb r2, [sl, -fp]
	cmp r2, #0x11
	bleq uan_calc_new_sptr
	cmp r2, #0x12
	bleq uan_calc_new_sptr
	subs fp, fp, #0x28
	bgt jumpin_uaf
	ldm sp!, {lr}
	bx lr

    .arm
uan_calc_new_sptr: @ 0x08003D20
	sub r0, sl, fp
	ldr r7, [r0, #8]
	movs r7, r7
	bne _08003D3C
	push {sl, fp, lr}
	bl calc_phase_inc
	pop {sl, fp, lr}
_08003D3C:
	ldr r1, _080043F4
	ldr r1, [r1]
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #0xc]
	mov r6, #0
	str r6, [r0, #8]
	ldr r6, [r0, #0x24]
	umull r4, r5, r6, r7
	lsr r7, r4, #0x10
	add r7, r7, r5, lsl #16
	orr r2, r2, r3, lsl #23
	lsr r3, r3, #9
	umlal r2, r3, r7, r1
	ldr r4, _080043F8
	and r1, r2, r4
	lsr r2, r2, #0x17
	orr r2, r2, r3, lsl #9
	ldr r3, [r0, #0x20]
	ldr r3, [r3, #0x18]
	cmp r2, r3
	blt _08003DE4
	ldrb r4, [r0, #1]
	cmp r4, #1
	beq _08003DD8
	cmp r4, #2
	beq _08003DB4
	cmp r4, #3
	beq _08003DCC
	cmp r4, #4
	beq _08003DB4
_08003DB4:
	ldr r4, [r0, #0x20]
	ldr r4, [r4, #0x14]
_08003DBC:
	sub r2, r2, r4
	cmp r2, r3
	bge _08003DBC
	b _08003DE4
_08003DCC:
	mov r3, #0x10
	strb r3, [r0]
	b _08003DE4
_08003DD8:
	mov r3, #0x10
	strb r3, [r8]
	b _08003DE4
_08003DE4:
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	mov pc, lr

    .arm
sub_8003DF0: @ 0x08003DF0
	stmdb sp!, {lr}
	ldr fp, _080043FC
	ldr fp, [fp]
	ldr sl, _08004400
	add sl, sl, fp
	b _08003E1C
	stmdb sp!, {lr}
	ldr fp, _08004404
	ldr fp, [fp]
	ldr sl, _08004408
	add sl, sl, fp
_08003E1C:
	ldrb r2, [sl, -fp]
	cmp r2, #0x11
	bleq sub_8003E40
	cmp r2, #0x12
	bleq sub_8003E40
	subs fp, fp, #0x28
	bgt _08003E1C
	ldm sp!, {lr}
	bx lr

    .arm
sub_8003E40: @ 0x08003E40
	sub ip, sl, fp
	ldrb r1, [ip, #4]
	add r2, pc, #4
	ldr r0, [r2, r1, lsl #2]
	add pc, r0, r2

	@ Gets referenced to in the function above.
	@ 08003E54
	.4byte 0x0000001c, 0x00000064, 0x00000098, 0x00000104
    .4byte 0x00000144, 0x00000154, 0x0000019c
	
	@ Probably gets here by the function above?
	@ 08003E70
adsr_setup_attack:
adsr_acts_end:
	ldr r3, [ip, #0x20]
	ldr r1, [r3, #0x24]
	rsb r2, r1, #0x63
	lsl r0, r2, #5
	mov r1, #0x63
	bl div_u32_u16_ARM
	movs r0, r0
	beq _08003ED8
	mov r1, r0
	mov r0, #0x8000
	add r1, r1, #1
	bl div_u32_u16_ARM
	lsl r1, r1, #4
	lsl r0, r0, #4
	str r1, [ip, #0x14]
	str r0, [ip, #0x18]
	mov r0, #1
	strb r0, [ip, #4]
	ldrb r1, [ip]
	cmp r1, #0x12
	beq _08003FA8
	ldr r1, [ip, #0x18]
	ldr r2, [ip, #0x14]
	add r1, r1, r2
	cmp r1, #0x80000
	blt _08003EE4
_08003ED8:
	mov r1, #2
	strb r1, [ip, #4]
	mov r1, #0x80000
_08003EE4:
	str r1, [ip, #0x14]
	sub pc, pc, #0xc0
	ldr r3, [ip, #0x20]
	ldr r0, [r3, #0x2c]
	lsl r0, r0, #7
	mov r1, #0x63
	bl div_u32_u16_ARM
	lsl r4, r0, #8
	lsl r0, r1, #8
	mov r1, #0x63
	bl div_u32_u16_ARM
	orr r0, r4, r0
	lsl r1, r0, #4
	str r1, [ip, #0x1c]
	rsb r0, r0, #0x8000
	ldr r1, [r3, #0x28]
	ldr r2, _0800440C
	ldrb r1, [r2, r1]
	movs r1, r1
	beq _08003F7C
	add r1, r1, #1
	bl div_u32_u16_ARM
	lsl r0, r0, #4
	str r0, [ip, #0x18]
	ldr r0, [ip, #0x14]
	sub r0, r0, r1, lsl #4
	str r0, [ip, #0x14]
	mov r1, #3
	strb r1, [ip, #4]
	ldrb r1, [ip]
	cmp r1, #0x12
	beq _08003FA8
	ldr r1, [ip, #0x18]
	ldr r2, [ip, #0x14]
	ldr r3, [ip, #0x1c]
	sub r1, r2, r1
	cmp r1, r3
	bgt _08003F88
_08003F7C:
	mov r1, #4
	strb r1, [ip, #4]
	ldr r1, [ip, #0x1c]
_08003F88:
	cmp r1, #0x1000
	blt _08004000
	str r1, [ip, #0x14]
	sub pc, pc, #0x16c
	ldrb r1, [ip]
	cmp r1, #0x12
	beq _08003FA8
	sub pc, pc, #0x17c
_08003FA8:
	ldr r3, [ip, #0x20]
	ldr r0, [ip, #0x14]
	ldr r1, [r3, #0x30]
	ldr r2, _08004410
	ldrb r1, [r2, r1]
	movs r1, r1
	beq _08004000
	lsr r0, r0, #4
	add r1, r1, #1
	bl div_u32_u16_ARM
	lsls r0, r0, #4
	beq _08004000
	str r0, [ip, #0x18]
	ldr r0, [ip, #0x14]
	sub r0, r0, r1, lsl #4
	str r0, [ip, #0x14]
	mov r1, #6
	strb r1, [ip, #4]
	ldr r1, [ip, #0x18]
	ldr r2, [ip, #0x14]
	subs r1, r2, r1
	bgt _08004008
_08004000:
	mov r1, #0x10
	strb r1, [ip]
_08004008:
	str r1, [ip, #0x14]
	sub pc, pc, #0x1e4
	bic r2, fp, #3
	ldm r2, {r1, r3}
	and r2, fp, #3
	lsls r2, r2, #3
	lsrne r1, r1, r2
	rsbne r2, r2, #0x20
	orrne r1, r1, r3, lsl r2
	add fp, fp, #3
	bl set_new_tempo
	add pc, pc, #0x2b8

	.arm
set_new_tempo: @ 0x08004038
	stmdb sp!, {lr}
	bic r0, r1, #0xff000000
	ldr r2, _08004414
	str r0, [r2]
	ldr r0, _08004418
	mov r1, #0xe10
	bl div_u32_u16_ARM
	lsl r4, r0, #8
	lsl r0, r1, #0x10
	mov r1, #0xe10
	bl div_u32_u16_ARM
	orr r0, r4, r0, lsr #8
	ldr r2, _0800441C
	str r0, [r2]
	ldm sp!, {lr}
	bx lr

	.arm
midicom_ev_tme_1b: @ 0x08004078
	ldr r5, _08004420
	ldr r5, [r5]
	ldrb r1, [fp], #1
	ldr r0, _08004424
	ldr r2, [r0]
	mul r1, r2, r1
	mov r0, #0
	mov r2, r5
	bl div_s64_s32_ARM
	lsl r4, r1, #8
	lsl r0, r0, #0x10
	mov r1, r5
	bl div_u32_u16_ARM
	orr r1, r4, r0, lsr #8
	mov r2, #0
	ldr r5, [sp]
	ldr r0, _08004428
	add r0, r0, r5, lsl #3
	ldm r0, {r3, r4}
	adds r1, r3, r1
	adcs r2, r4, r2
	stm r0, {r1, r2}
	add pc, pc, #0x230
	ldr r5, _0800442C
	ldr r5, [r5]
	ldrb r0, [fp], #1
	ldrb r1, [fp], #1
	orr r1, r0, r1, lsl #8
	ldr r0, _08004430
	ldr r2, [r0]
	umull r1, r0, r2, r1
	mov r2, r5
	bl div_s64_s32_ARM
	lsr r6, r1, #0x18
	lsl r4, r1, #8
	lsl r0, r0, #0x10
	mov r1, r5
	bl div_u32_u16_ARM
	orr r1, r4, r0, lsr #8
	mov r2, r6
	ldr r5, [sp]
	ldr r0, _08004434
	add r0, r0, r5, lsl #3
	ldm r0, {r3, r4}
	adds r1, r3, r1
	adcs r2, r4, r2
	stm r0, {r1, r2}
	add pc, pc, #0x1cc
	bic r2, fp, #3
	ldm r2, {r1, r3}
	and r2, fp, #3
	lsls r2, r2, #3
	lsrne r1, r1, r2
	rsbne r2, r2, #0x20
	orrne r1, r1, r3, lsl r2
	add fp, fp, #3
	bic r1, r1, #0xff000000
	ldr r0, _08004438
	ldr r2, [r0]
	umull r1, r0, r2, r1
	ldr r5, _0800443C
	ldr r5, [r5]
	mov r2, r5
	bl div_s64_s32_ARM
	lsr r6, r1, #0x18
	lsl r4, r1, #8
	lsl r0, r0, #0x10
	mov r1, r5
	bl div_u32_u16_ARM
	orr r1, r4, r0, lsr #8
	mov r2, r6
	ldr r5, [sp]
	ldr r0, _08004440
	add r0, r0, r5, lsl #3
	ldm r0, {r3, r4}
	adds r1, r3, r1
	adcs r2, r4, r2
	stm r0, {r1, r2}
	add pc, pc, #0x150
	ldr r4, _08004444
	ldr r4, [r4]
	ldr r3, _08004448
	add r3, r3, r4
	mla r5, r1, r4, r3
	ldr r2, _0800444C
	ldr r2, [r2]
	ldr r0, _08004450
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0800421C
_080041E0:
	ldrb r0, [r5, -r2]
	cmp r0, #0x10
	beq _0800421C
	subs r2, r2, #0x28
	bgt _080041E0
	ldr r2, _08004454
	ldr r2, [r2]
_080041FC:
	ldrb r0, [r5, -r2]
	cmp r0, #0x12
	beq _0800421C
	subs r2, r2, #0x28
	bgt _080041FC
	ldrb r4, [fp], #1
	ldrb r0, [fp], #1
	b _0800429C
_0800421C:
	sub r5, r5, r2
	ldrb r4, [fp], #1
	mov sb, r4
	mov r7, #4
	ldr r6, _08004458
	mla r2, r1, r7, r6
	ldr r2, [r2]
	ldr r7, [r2]
	cmp r7, #0x20
	beq _08004288
	cmp r7, #0x21
	beq _08004288
	cmp r7, #0x22
	beq _0800425C
	cmp r7, #0x23
	beq _08004274
_0800425C:
	ldr r0, [r2, #0x1c]
	ldrb r1, [r0, r4]
	ldr r0, [r2, #0x20]
	ldr r2, [r0, r1, lsl #2]
	ldr sb, [r2, #0xc]
	b _08004288
_08004274:
	ldr r0, [r2, #0x1c]
	ldrb r1, [r0, r4]
	ldr r0, [r2, #0x20]
	ldr r2, [r0, r1, lsl #2]
	b _08004288
_08004288:
	ldr r7, [r2, #4]
	ldrb r3, [fp], #1
	add r3, r3, #1
	mov r1, #0x10000
	bl setup_note_ARM
_0800429C:
	add pc, pc, #0x50

    .arm
process_tune_ARM: @ 0x080042A0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r0, #0
	str r0, [sp, #8]
	mvn r0, #0
	str r0, [sp]
	b _08004334
_080042BC:
	str r0, [sp]
	ldr r4, _0800445C
	add r4, r4, r0, lsl #3
	ldr r1, _08004460
	ldm r4, {r2, r3}
	ldr r5, [r1]
	subs r2, r2, r5
	sbcs r3, r3, #0
	stm r4, {r2, r3}
	bpl _08004334
	ldr fp, _08004464
	ldr r0, [sp]
	ldr fp, [fp, r0, lsl #2]
_080042F0:
	add ip, pc, #0x78
	ldrb r0, [fp], #1
	lsr r1, r0, #4
	bic r0, r0, #0xf0
	ldr r0, [ip, r0, lsl #2]
	add pc, r0, ip
	ldr r0, [sp]
	ldr r1, _08004468
	ldr r1, [r1, r0, lsl #3]
	cmp r1, #0
	bmi _08004320
	b _08004324
_08004320:
	b _080042F0
_08004324:
	mov r0, r0
	ldr r0, [sp]
	ldr r2, _0800446C
	str fp, [r2, r0, lsl #2]
_08004334:
	ldr r1, _08004470
	ldr r1, [r1]
	ldr r0, [sp]
	adds r0, r0, #1
	cmp r0, r1
	bne _080042BC
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _08004364
	ldr r0, _08004474
	mvn r1, #0
	str r1, [r0]
_08004364:
	add sp, sp, #0xc
	ldm sp!, {lr}
	bx lr
	
	@ Offset values for tracks? Referenced at 080042F0.
	@ 08004370
	.4byte 0xfffffca0, 0xfffffd08, 0xfffffd64, 0xfffffdc8
    .4byte 0xfffffe44, 0xfffffe44, 0x00000108, 0x00000160
    .4byte 0x00000214, 0x00000244, 0x0000024c, 0x00000268
    .4byte 0x0000027c


_080043A4: .4byte audio_precalc_buff
_080043A8: .4byte 0x0203F4B4
_080043AC: .4byte 0x080AF598
_080043B0: .4byte audio_chan_fx
_080043B4: .4byte 0x080AF598
_080043B8: .4byte 0x0203F4D4
_080043BC: .4byte 0x080AF590
_080043C0: .4byte audio_chan_notes
_080043C4: .4byte 0x080AF590
_080043C8: .4byte 0x0203F4B4
_080043CC: .4byte 0x080052AF
_080043D0: .4byte audio_buff_tog
_080043D4: .4byte 0x080AF580
_080043D8: .4byte 0x080AF588
_080043DC: .4byte audio_precalc_buff
_080043E0: .4byte 0x0203F4C4
_080043E4: .4byte 0x080AF598
_080043E8: .4byte audio_chan_fx
_080043EC: .4byte 0x080AF590
_080043F0: .4byte audio_chan_notes
_080043F4: .4byte 0x0203F4C4
_080043F8: .4byte 0x007FFFFF
_080043FC: .4byte 0x080AF598
_08004400: .4byte audio_chan_fx
_08004404: .4byte 0x080AF590
_08004408: .4byte audio_chan_notes
_0800440C: .4byte 0x08005618
_08004410: .4byte 0x08005618
_08004414: .4byte audio_tempo
_08004418: .4byte 0x03938700
_0800441C: .4byte audio_delta_time_dec
_08004420: .4byte audio_ppqn
_08004424: .4byte audio_tempo
_08004428: .4byte 0x030043B4
_0800442C: .4byte audio_ppqn
_08004430: .4byte audio_tempo
_08004434: .4byte 0x030043B4
_08004438: .4byte audio_tempo
_0800443C: .4byte audio_ppqn
_08004440: .4byte 0x030043B4
_08004444: .4byte 0x080AF594
_08004448: .4byte audio_chan_notes
_0800444C: .4byte 0x080AF594
_08004450: .4byte audio_monophonic_op
_08004454: .4byte 0x080AF594
_08004458: .4byte audio_voices
_0800445C: .4byte 0x030043B4
_08004460: .4byte audio_delta_time_dec
_08004464: .4byte audio_midi_tracks
_08004468: .4byte 0x030043B8
_0800446C: .4byte audio_midi_tracks
_08004470: .4byte audio_num_tracks
_08004474: .4byte audio_cur_tune

	.arm
midicom_note_off: @ 0x08004478
	ldrb r6, [fp], #1
	ldrb r7, [fp], #1
	ldr r4, _08004838
	ldr r4, [r4]
	ldr r3, _0800483C
	add r3, r3, r4
	mla r5, r1, r4, r3
	ldr r2, _08004840
	ldr r2, [r2]
_0800449C:
	ldrb r0, [r5, -r2]
	cmp r0, #0x11
	bleq mnof_found_note_on
	subs r2, r2, #0x28
	bgt _0800449C
	b mnof_finish

    .arm
mnof_found_note_on: @ 0x080044B4
	sub r0, r5, r2
	ldrb r1, [r0, #2]
	cmp r1, r6
	bxne lr
	mov r1, #0x12
	strb r1, [r0]
mnof_finish:
	sub pc, pc, #0x1e0
midicom_controller:
	ldrb r2, [fp], #1
	ldrb r3, [fp], #1
	cmp r2, #1
	beq _08004514
	cmp r2, #7
	beq _08004528
	cmp r2, #0x64
	beq _08004534
	cmp r2, #0x66
	beq _08004540
	cmp r2, #0x67
	beq _08004550
	cmp r2, #0x7e
	beq _08004560
	cmp r2, #0x7f
	beq _08004570
	b _08004580
_08004514:
	ldr r5, _08004844
	mov r2, #8
	mla r5, r1, r2, r5
	str r3, [r5]
	b _08004580
_08004528:
	ldr r5, _08004848
	strb r3, [r5, r1]
	b _08004580
_08004534:
	ldr r5, _0800484C
	strb r3, [r5, r1]
	b _08004580
_08004540:
	ldr r4, [sp]
	ldr r5, _08004850
	str fp, [r5, r4, lsl #2]
	b _08004580
_08004550:
	ldr r4, [sp]
	ldr r5, _08004854
	ldr fp, [r5, r4, lsl #2]
	b _08004580
_08004560:
	ldr r5, _08004858
	mov r3, #1
	strb r3, [r5, r1]
	b _08004580
_08004570:
	ldr r5, _0800485C
	mov r3, #0
	strb r3, [r5, r1]
	b _08004580
_08004580:
	sub pc, pc, #0x294
	ldrb r3, [fp], #1
	ldr r2, _08004860
	ldr r2, [r2]
	ldrb r2, [r2, r3]
	ldr r3, _08004864
	ldr r3, [r3]
	ldr r4, [r3, r2, lsl #2]
	ldr r8, _08004868
	mov r2, #4
	mla r8, r2, r1, r8
	str r4, [r8]
	sub pc, pc, #0x2c4
	add fp, fp, #1
	sub pc, pc, #0x2cc
	mov r3, r1
	ldrb r0, [fp], #1
	ldrb r1, [fp], #1
	orr r1, r0, r1, lsl #8
	ldr r2, _0800486C
	str r1, [r2, r3, lsl #2]
	sub pc, pc, #0x2e8
	sub fp, fp, #1
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	sub pc, pc, #0x2c8
	sub pc, pc, #0x300

	.arm
div_u32_u16_ARM:
	rsb r1, r1, #0
	lsls r1, r1, #0xf
	adds r0, r1, r0
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adc r0, r0, r0
	lsr r1, r0, #0x10
	bic r0, r0, r1, lsl #16
	bx lr

	.arm
div_s64_s32_ARM: @ 0x08004688
	movs r3, r2
	rsbpl r2, r2, #0
	lsr r3, r3, #1
	eors r3, r3, r0, asr #1
	bpl _080046A4
	rsbs r1, r1, #0
	rsc r0, r0, #0
_080046A4:
	adds r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	adcs r0, r2, r0, lsl #1
	rsblo r0, r2, r0
	adcs r1, r1, r1
	lsls r3, r3, #1
	rsbmi r1, r1, #0
	rsbhs r0, r0, #0
	bx lr
	
_08004838: .4byte 0x080AF594
_0800483C: .4byte audio_chan_notes
_08004840: .4byte 0x080AF594
_08004844: .4byte audio_modulation
_08004848: .4byte audio_chan_vols
_0800484C: .4byte audio_3005A20
_08004850: .4byte 0x03006EA8
_08004854: .4byte 0x03006EA8
_08004858: .4byte audio_monophonic_op
_0800485C: .4byte audio_monophonic_op
_08004860: .4byte audio_vmap_ptr
_08004864: .4byte audio_samp_list
_08004868: .4byte audio_voices
_0800486C: .4byte audio_pitchbend

    .arm
 combine_note: @ 0x08004870
	str lr, [sp, #0x1c]
	str r0, [sp, #0x20]
	bl calc_phase_inc
	str r7, [r0, #8]
	ldrsb r6, [r0, #6]
	cmp r6, #0
	ldr r1, _08004B90
	bmi _08004894
	ldr r1, _08004B94
_08004894:
	ldr r4, [r1]
	bmi _080048B0
	ldr r3, _08004B98
	ldrb r3, [r3, r6]
	add r3, r3, #1
	mul r4, r3, r4
	lsr r4, r4, #7
_080048B0:
	ldrb r3, [r0, #3]
	mul r4, r3, r4
	lsr r4, r4, #7
	ldr sb, [r0, #0x14]
	mul r4, sb, r4
	lsr r4, r4, #0x13
	ldr r6, [r0, #0x24]
	umull sb, sl, r6, r7
	lsr r7, sb, #0x10
	add r7, r7, sl, lsl #16
	mov r6, #0
	mov r3, #0
	ldr sb, _08004B9C
	ldr sb, [sb]
	add sb, r5, sb, lsl #1
	ldr r6, [r0, #0x10]
	ldr sl, [r0, #0x20]
	ldr sl, [sl, #0x18]
	ldr r0, [r0, #0xc]
	ldr fp, _08004BA0
	ldr r3, _08004BA4
	ldr r3, [r3]
	ldr r8, [sp, #0x10]
	cmp r3, r8
	bne not_1st_time
_08004914:
	ldrsb r1, [r0]
	ldrsb r2, [r0, #1]
	sub r2, r2, r1
	mul r3, r6, r2
	add r1, r1, r3, asr #23
	mul r2, r1, r4
	asr r2, r2, #7
	strh r2, [r5], #2
	add r6, r6, r7
	add r0, r0, r6, lsr #23
	and r6, r6, fp
	cmp r0, sl
	blge reached_end_of_samp
	cmp r5, sb
	bne _08004914
	b combine_note_finish
not_1st_time:
	ldrsb r1, [r0]
	ldrsb r2, [r0, #1]
	sub r2, r2, r1
	mul r3, r6, r2
	add r1, r1, r3, asr #23
	mul r2, r1, r4
	ldrsh r1, [r5]
	add r1, r1, r2, asr #7
	strh r1, [r5], #2
	add r6, r6, r7
	add r0, r0, r6, lsr #23
	and r6, r6, fp
	cmp r0, sl
	blge reached_end_of_samp
	ldrsb r1, [r0]
	ldrsb r2, [r0, #1]
	sub r2, r2, r1
	mul r3, r6, r2
	add r1, r1, r3, asr #23
	mul r2, r1, r4
	ldrsh r1, [r5]
	add r1, r1, r2, asr #7
	strh r1, [r5], #2
	add r6, r6, r7
	add r0, r0, r6, lsr #23
	and r6, r6, fp
	cmp r0, sl
	blge reached_end_of_samp
	cmp r5, sb
	bne not_1st_time
	b combine_note_finish
reached_end_of_samp:
	ldr r8, [sp, #0x20]
	ldrb r3, [r8, #1]
	cmp r3, #1
	beq set_channel_to_stopped
	cmp r3, #2
	beq set_channel_to_loop_pnt
	cmp r3, #3
	beq set_channel_to_empty_fx
	cmp r3, #4
	beq set_channel_to_loop_pnt
set_channel_to_stopped:
	mov r3, #0x10
	strb r3, [r8]
	b combine_note_finish
set_channel_to_empty_fx:
	mov r3, #0x10
	strb r3, [r8]
	b combine_note_finish
set_channel_to_loop_pnt:
	ldr r3, [r8, #0x20]
	ldr r3, [r3, #0x14]
	sub r0, r0, r3
	bx lr
combine_note_finish:
	ldr lr, [sp, #0x1c]
	bx lr

    .arm
calc_phase_inc: @ 0x08004A28
	ldr r4, [r0, #0x20]
	ldr r3, [r4, #0x34]
	ldr r7, _08004BA8
	smull r1, r2, r7, r3
	push {r1, r2}
	ldrsb r8, [r0, #6]
	cmp r8, #0
	bmi _08004A4C
	b _08004A60
_08004A4C:
	mov r1, #0
	mov r2, #0
	push {r1, r2}
	push {r1, r2}
	b _08004B2C
_08004A60:
	mov r7, #4
	ldr r6, _08004BAC
	mla r2, r8, r7, r6
	ldr r2, [r2]
	ldr r3, [r2, #0x38]
	mov r7, #0x80000
	mul r3, r7, r3
	ldrsb r7, [r0, #6]
	ldr r8, _08004BB0
	mov r1, #4
	mla r8, r7, r1, r8
	ldr r7, [r8]
	sub r7, r7, #0x2000
	smull r1, r2, r7, r3
	push {r1, r2}
	ldrsb r8, [r0, #6]
	mov r7, #4
	ldr r6, _08004BB4
	mla r2, r8, r7, r6
	ldr r2, [r2]
	ldr r2, [r2, #0x40]
	ldrsb r8, [r0, #6]
	mov r7, #8
	ldr sb, _08004BB8
	mla r8, r7, r8, sb
	mov r1, #0
	mov r2, #0
	ldr sb, [r8]
	cmp sb, #0
	beq _08004B28
	ldr r7, [r8, #4]
	lsr r1, r7, #0x10
	sub r7, r7, r1, lsl #16
	ldr r6, _08004BBC
	add r6, r6, r1, lsl #2
	ldm r6, {r1, r2}
	sub r2, r2, r1
	smull r6, r7, r2, r7
	lsl r7, r7, #0x10
	add r7, r7, r6, lsr #16
	add r1, r1, r7
	add sb, sb, #1
	mul sb, r1, sb
	ldrsb r8, [r0, #6]
	mov r7, #4
	ldr r6, _08004BC0
	mla r2, r8, r7, r6
	ldr r2, [r2]
	ldr r2, [r2, #0x40]
	smull r1, r2, sb, r2
_08004B28:
	push {r1, r2}
_08004B2C:
	pop {r1, r2, r3, r7, r8, sb}
	adds r1, r1, r3
	adc r2, r2, r7
	adds r1, r1, r8
	adc r2, r2, sb
	ldr r3, [r4, #0xc]
	ldrb sb, [r0, #5]
	sub r3, sb, r3
	add r3, r3, r2
	ldr r6, _08004BC4
	add r2, r6, r3, lsl #2
	ldm r2, {r3, r7}
	sub r2, r7, r3
	umull sb, sl, r1, r2
	add r7, r3, sl
	ldr r1, _08004BC8
	ldr r1, [r1]
	ldr r2, [r4, #8]
	umull r8, sb, r1, r2
	lsr r8, r8, #0xe
	add r8, r8, sb, lsl #18
	umull sl, r4, r7, r8
	lsr sl, sl, #0x18
	orr r7, sl, r4, lsl #8
	bx lr
	.align 2, 0
_08004B90: .4byte 0x03006EEC
_08004B94: .4byte 0x03006EE8
_08004B98: .4byte audio_chan_vols
_08004B9C: .4byte 0x0203F4C4
_08004BA0: .4byte 0x007FFFFF
_08004BA4: .4byte 0x0203F4B4
_08004BA8: .4byte 0x028F5C29
_08004BAC: .4byte audio_voices
_08004BB0: .4byte audio_pitchbend
_08004BB4: .4byte audio_voices
_08004BB8: .4byte audio_modulation
_08004BBC: .4byte 0x0800567C
_08004BC0: .4byte audio_voices
_08004BC4: .4byte 0x08005518
_08004BC8: .4byte 0x0203F4C0

END_AUDIO_RAM_CODE:

    .thumb
    .global audio_start_tune
audio_start_tune: @ 0x08004BCC
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	ldr r1, _08004DEC
	str r0, [r1]
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global audio_vsync_asm
audio_vsync_asm: @ 0x08004BF0
	ldr r0, _08004DF0
	ldr r2, [r0]
	mvns r2, r2
	str r2, [r0]
	ldr r1, _08004DF4
	cmp r2, #0
	beq _08004C00
	ldr r1, _08004DF8
_08004C00:
	ldr r1, [r1]
	ldr r0, _08004DFC
	movs r2, #0
	strh r2, [r0]
	ldr r2, _08004E00
	ldr r3, _08004E04
	ldr r0, _08004E08
	stm r0!, {r1, r2, r3}
	ldr r0, _08004E0C
	movs r1, #0x80
	strh r1, [r0]
	bx lr

    .thumb
    .global audio_init
audio_init: @ 0x08004C18
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	sub sp, #4
	ldr r0, _08004E0C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08004DFC
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08004E10
	movs r1, #0
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	ldr r2, _08004E14
	ldr r2, [r2]
	ldr r3, _08004E18
	ldr r0, _08004E1C
	stm r0!, {r1, r2, r3}
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	ldr r2, _08004E20
	ldr r2, [r2]
	ldr r3, _08004E18
	ldr r0, _08004E1C
	stm r0!, {r1, r2, r3}
	ldr r0, _08004E24
	movs r1, #0
	str r1, [r0]
	movs r1, #0
	mvns r1, r1
	ldr r0, _08004E28
	str r1, [r0]
	ldr r0, _08004E2C
	str r1, [r0]
	ldr r0, _08004E30
	movs r1, #0
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _08004E34
	orrs r1, r2
	strh r1, [r0]
	ldr r0, _08004E00
	movs r1, #0x80
	strb r1, [r0]
	movs r1, #0x80
	strb r1, [r0, #4]
	ldr r0, _08004E30
	ldr r1, [r0]
	ldr r2, _08004E38
	orrs r1, r2
	strh r1, [r0]
	ldr r0, _08004E3C
	ldr r1, [r0]
	movs r2, #0xc0
	bics r1, r2
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	bl reset_all_notes
	bl reset_all_fx
	movs r0, #0x80
	bl audio_set_tune_vol
	movs r0, #0x80
	bl audio_set_fx_vol
	bl reset_chan_vols
	bl reset_all_monophonic_flags
	ldr r1, _08004E40
	ldr r2, _08004E44
	ldr r3, _08004E48
	ldr r3, [r3]
	ldr r4, _08004E4C
	cmp r3, r4
	ble _08004CC6
_08004CC6:
	lsrs r3, r3, #2
	ldr r0, _08004E50
	orrs r3, r0
	ldr r0, _08004E1C
	stm r0!, {r1, r2, r3}
	bl wait_vbl
	ldr r0, _08004E54
	ldr r1, _08004E58
	str r1, [r0]
	ldr r0, _08004E5C
	ldr r1, _08004E60
	str r1, [r0]
	ldr r0, _08004E64
	bl audio_set_playback_freq
	movs r0, #8
	bl audio_set_num_channels
	add sp, #4
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global seq_update
seq_update: @ 0x08004D00
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	ldr r0, _08004E68
	ldr r1, [r0]
	cmp r1, #0
	bmi _08004D78
	movs r2, #0
	mvns r2, r2
	str r2, [r0]
	ldr r0, _08004E6C
	str r1, [r0]
	ldr r0, _08004E70
	movs r2, #0x80
	movs r3, #0
_08004D26:
	subs r2, #4
	str r3, [r0, r2]
	bne _08004D26
	ldr r0, _08004E74
	ldr r0, [r0]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, [r0]
	ldr r2, _08004E78
	str r3, [r2]
	ldr r1, [r0, #4]
	ldr r2, _08004E7C
	str r1, [r2]
	ldr r1, [r0, #8]
	ldr r2, _08004E80
	ldr r4, _08004E50
	orrs r3, r4
	ldr r4, _08004E1C
	stm r4!, {r1, r2, r3}
	ldr r1, [r0, #0xc]
	ldr r2, _08004E84
	str r1, [r2]
	ldr r1, [r0, #0x10]
	ldr r2, _08004E88
	str r1, [r2]
	ldr r0, _08004E8C
	movs r1, #0
	adds r2, r1, #0
	stm r0!, {r1, r2}
	ldr r0, _08004E90
	movs r1, #1
	str r1, [r0]
	ldr r0, _08004E94
	movs r1, #0
	str r1, [r0]
	bl reset_all_notes
	bl reset_pitchbend
	bl reset_modulation
_08004D78:
	bl wipe_audio_buff
	ldr r0, _08004E98
	ldr r1, [r0]
	cmp r1, #1
	beq _08004DA4
	ldr r0, _08004E9C
	ldr r1, [r0]
	cmp r1, #0
	bmi _08004DA4
	mov r0, pc
	adds r0, #7
	mov lr, r0
	ldr r0, _08004EA0
	bx r0
	bl update_modulation
	mov r0, pc
	adds r0, #7
	mov lr, r0
	ldr r0, _08004EA4
	bx r0
_08004DA4:
	bl update_all_fx_durs
	mov r0, pc
	adds r0, #7
	mov lr, r0
	ldr r0, _08004EA8
	bx r0
	mov r0, pc
	adds r0, #7
	mov lr, r0
	ldr r0, _08004EAC
	bx r0
	ldr r0, _08004EB0
	ldr r1, [r0]
	cmp r1, #1
	beq _08004DCE
	mov r0, pc
	adds r0, #7
	mov lr, r0
	ldr r0, _08004EB4
	bx r0
_08004DCE:
	mov r0, pc
	adds r0, #7
	mov lr, r0
	ldr r0, _08004EB8
	bx r0
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

_08004DEC: .4byte audio_new_tune
_08004DF0: .4byte audio_buff_tog
_08004DF4: .4byte 0x080AF580
_08004DF8: .4byte 0x080AF588
_08004DFC: .4byte 0x040000C6
_08004E00: .4byte 0x040000A0
_08004E04: .4byte 0xF6000000
_08004E08: .4byte 0x040000BC
_08004E0C: .4byte 0x04000084
_08004E10: .4byte 0x04000102
_08004E14: .4byte 0x080AF588
_08004E18: .4byte 0x85000038
_08004E1C: .4byte 0x040000C8
_08004E20: .4byte 0x080AF580
_08004E24: .4byte audio_buff_tog
_08004E28: .4byte audio_new_tune
_08004E2C: .4byte audio_cur_tune
_08004E30: .4byte 0x04000082
_08004E34: .4byte 0x00008800
_08004E38: .4byte 0x0000030C
_08004E3C: .4byte 0x04000089
_08004E40: .4byte 0x08003B34
_08004E44: .4byte 0x03005ABC
_08004E48: .4byte audio_ram_code_size_ref
_08004E4C: .4byte 0x000013EC
_08004E50: .4byte 0x84000000
_08004E54: .4byte 0x0203F4CC
_08004E58: .4byte 0x086AE150
_08004E5C: .4byte 0x0203F4C8
_08004E60: .4byte 0x086ADFDC
_08004E64: .4byte 0x00003443
_08004E68: .4byte audio_new_tune
_08004E6C: .4byte audio_cur_tune
_08004E70: .4byte 0x030043B4
_08004E74: .4byte 0x0203F4CC
_08004E78: .4byte audio_num_tracks
_08004E7C: .4byte audio_ppqn
_08004E80: .4byte audio_midi_tracks
_08004E84: .4byte audio_vmap_ptr
_08004E88: .4byte audio_samp_list
_08004E8C: .4byte 0x030043B4
_08004E90: .4byte audio_delta_time_dec
_08004E94: .4byte audio_tempo
_08004E98: .4byte 0x0203F4D4
_08004E9C: .4byte audio_cur_tune
_08004EA0: .4byte 0x03006228
_08004EA4: .4byte 0x03005D90
_08004EA8: .4byte 0x03005D78
_08004EAC: .4byte 0x03005B00
_08004EB0: .4byte 0x0203F4D4
_08004EB4: .4byte 0x03005C70
_08004EB8: .4byte 0x03005C58

    .thumb
update_modulation: @ 0x08004EBC
	ldr r0, _08005140
	ldr r7, _08005144
	movs r1, #0x80
	movs r6, #0
_08004EC4:
	ldr r2, [r0, r1]
	cmp r2, #0
	bne um_add_phase_inc
	str r6, [r7, r1]
um_next_mod:
	subs r1, #8
	bne _08004EC4
	bx lr
um_add_phase_inc:
	lsrs r3, r1, #3
	subs r3, #1
	ldr r4, _08005148
	movs r5, #4
	muls r5, r3, r5
	ldr r3, [r4, r5]
	ldr r3, [r3, #0x3c]
	adds r4, r0, r1
	ldr r5, [r4, #4]
	adds r3, r5, r3
	ldr r5, _0800514C
	ands r3, r5
	str r3, [r4, #4]
	b um_next_mod

    .thumb
update_all_fx_durs: @ 0x08004EEE
	ldr r5, _08005150
	movs r3, #0
	ldr r6, _08005154
	ldr r6, [r6]
	ldr r0, _08005158
_08004EF8:
	ldrb r4, [r5, r3]
	cmp r4, #0x11
	beq uafd_found_fx
uafd_next_fx:
	adds r0, #4
	adds r3, #0x28
	cmp r3, r6
	blt _08004EF8
	bx lr
uafd_found_fx:
	ldr r1, [r0]
	subs r1, #1
	bmi _08004F16
	str r1, [r0]
	bne _08004F16
	movs r1, #0x12
	strb r1, [r5, r3]
_08004F16:
	b uafd_next_fx

    .thumb
sub_8004F18: @ 0x08004F18
	push {lr}
	ldr r5, _0800515C
	movs r3, #0
	ldr r6, _08005160
	ldr r6, [r6]
_08004F22:
	ldrb r4, [r5, r3]
	cmp r4, #0x10
	beq _08004F44
	adds r3, #0x28
	cmp r3, r6
	blt _08004F22
	movs r3, #0
_08004F30:
	ldrb r4, [r5, r3]
	cmp r4, #0x12
	beq _08004F44
	adds r3, #0x28
	cmp r3, r6
	blt _08004F30
	movs r1, #0
	mvns r1, r1
	adds r0, r1, #0
	b _08004F92
_08004F44:
	adds r5, r5, r3
	movs r4, #0
	mvns r4, r4
	adds r3, #0x28
_08004F4C:
	adds r4, #1
	subs r3, #0x28
	bne _08004F4C
	push {r4}
	ldr r3, _08005164
	ldr r7, [r3]
	adds r7, #1
	movs r6, #1
	cmn r7, r6
	bne _08004F62
	adds r7, #1
_08004F62:
	str r7, [r3]
	ldr r3, _08005168
	lsls r4, r4, #2
	str r7, [r3, r4]
	push {r7}
	lsls r0, r0, #2
	ldr r4, _0800516C
	ldr r4, [r4]
	ldr r3, [r4, r0]
	ldr r0, [r3, #0xc]
	mov sb, r0
	adds r4, r0, #0
	ldr r7, [r3, #4]
	mov r8, r1
	adds r1, r2, #0
	adds r2, r3, #0
	mov r3, r8
	mov r0, pc
	adds r0, #7
	mov lr, r0
	ldr r0, _08005170
	bx r0
	pop {r0}
	pop {r1}
_08004F92:
	pop {r2}
	bx r2

    .thumb
    .global audio_fx_still_active
audio_fx_still_active: @ 0x08004F96
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	bl is_fx_still_active
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
is_fx_still_active: @ 0x08004FBA
	movs r6, #0
	ldr r2, _08005174
	movs r3, #0
	ldr r5, _08005178
	ldr r5, [r5]
_08004FC4:
	ldrb r4, [r2, r3]
	cmp r4, #0x10
	bne ifsa_found_used_slot
_08004FCA:
	adds r3, #0x28
	adds r6, #4
	cmp r3, r5
	blt _08004FC4
	movs r0, #0
	mov pc, lr
ifsa_found_used_slot:
	ldr r4, _0800517C
	ldr r4, [r4, r6]
	cmp r0, r4
	bne _08004FCA
	movs r0, #1
	mov pc, lr

	.thumb
audio_fx_pitch_mod: @ 0x08004FE2
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	bl is_fx_still_active
	cmp r0, #0
	beq _08004FFC
	ldr r2, _08005180
	str r1, [r2, r3]
_08004FFC:
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
audio_fx_volume_mod: @ 0x0800500E
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	bl is_fx_still_active
	cmp r0, #0
	beq _08005028
	ldr r2, _08005184
	strb r1, [r2, r3]
_08005028:
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1


    .thumb
    .global audio_halt_fx
audio_halt_fx: @ 0x0800503A
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	bl is_fx_still_active
	cmp r0, #0
	beq _08005056
	ldr r2, _08005188
	movs r1, #0x10
	strb r1, [r2, r3]
_08005056:
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global audio_halt_all_fx
audio_halt_all_fx: @ 0x08005068
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	bl reset_all_fx
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global audio_halt_tune
audio_halt_tune: @ 0x0800508C
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	bl reset_all_notes
	ldr r0, _0800518C
	movs r1, #0
	mvns r1, r1
	str r1, [r0]
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global audio_set_tune_vol
audio_set_tune_vol: @ 0x080050B8
	ldr r1, _08005190
	str r0, [r1]
	bx lr

    .thumb
    .global audio_set_fx_vol
audio_set_fx_vol: @ 0x080050BE
	ldr r1, _08005194
	str r0, [r1]
	bx lr

	.thumb
audio_get_tempo: @ 0x080050C4
	ldr r1, _08005198
	ldr r0, [r1]
	bx lr

	.thumb
audio_set_tempo: @ 0x080050CA
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	adds r1, r0, #0
	mov r0, pc
	adds r0, #7
	mov lr, r0
	ldr r0, _0800519C
	bx r0
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_80050F6: @ 0x080050F6
	movs r1, #1
	ldr r0, _080051A0
	str r1, [r0]
	bx lr

	.thumb
sub_80050FE: @ 0x080050FE
	movs r1, #0
	ldr r0, _080051A4
	str r1, [r0]
	bx lr

	.thumb
audio_release_fx: @ 0x08005106
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	bl is_fx_still_active
	cmp r0, #0
	beq _08005128
	ldr r2, _080051A8
	ldrb r1, [r2, r3]
	cmp r1, #0x11
	bne _08005128
	movs r1, #0x12
	strb r1, [r2, r3]
_08005128:
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global audio_new_fx
audio_new_fx: @ 0x0800513A
	movs r3, #0
	b _080051AC
audio_new_fx_with_dur:
	b _080051AC

_08005140: .4byte 0x030049B8
_08005144: .4byte 0x030049BC
_08005148: .4byte audio_voices
_0800514C: .4byte 0x00FFFFFF
_08005150: .4byte audio_chan_fx
_08005154: .4byte 0x080AF598
_08005158: .4byte audio_chan_dly
_0800515C: .4byte audio_chan_fx
_08005160: .4byte 0x080AF598
_08005164: .4byte 0x0203F4D0
_08005168: .4byte audio_chan_id
_0800516C: .4byte 0x0203F4C8
_08005170: .4byte 0x03005ABC
_08005174: .4byte audio_chan_fx
_08005178: .4byte 0x080AF598
_0800517C: .4byte audio_chan_id
_08005180: .4byte 0x03005984
_08005184: .4byte 0x03005963
_08005188: .4byte audio_chan_fx
_0800518C: .4byte audio_cur_tune
_08005190: .4byte 0x03006EE8
_08005194: .4byte 0x03006EEC
_08005198: .4byte audio_tempo
_0800519C: .4byte 0x03005FC0
_080051A0: .4byte 0x0203F4D4
_080051A4: .4byte 0x0203F4D4
_080051A8: .4byte audio_chan_fx

_080051AC:
	cmp r1, #0
	bne set_new_fx_common
	movs r1, #0
	mvns r1, r1
	adds r0, r1, #0
	bx lr

set_new_fx_common:
	push {r4, r5, r6, r7, lr}
	mov lr, r3
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	push {lr}
	bl sub_8004F18
	pop {r3}
	cmp r1, #0
	bmi _080051DA
	ldr r5, _0800537C
	lsls r6, r1, #2
	str r3, [r5, r6]
_080051DA:
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global audio_pause
audio_pause: @ 0x080051EC
	ldr r0, _08005380
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08005384
	movs r1, #0
	strh r1, [r0]
	bx lr

    .thumb
audio_set_playback_freq: @ 0x080051FA
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	mov r7, ip
	push {r3, r4, r5, r6, r7}
	ldr r1, _08005388
	cmp r0, r1
	ble _08005214
	movs r0, #0
	mvns r0, r0
	b _08005262
_08005214:
	ldr r1, _0800538C
	str r0, [r1]
	ldr r1, _08005390
	ldr r2, _08005394
	ldr r3, _08005398
	movs r4, #0xb0
	cmp r0, r1
	beq _08005248
	ldr r1, _08005388
	ldr r2, _0800539C
	ldr r3, _080053A0
	movs r4, #0xe0
	cmp r0, r1
	beq _08005248
	ldr r1, _080053A4
	ldr r2, _080053A8
	ldr r3, _080053AC
	ldr r4, _080053B0
	cmp r0, r1
	beq _08005248
	ldr r1, _080053B4
	ldr r2, _080053B8
	ldr r3, _080053BC
	ldr r4, _080053C0
	cmp r0, r1
	beq _08005248
_08005248:
	ldr r7, _080053C4
	str r2, [r7]
	ldr r7, _080053C8
	str r3, [r7]
	ldr r7, _080053CC
	str r4, [r7]
	ldr r0, _080053D0
	ldr r1, _080053D4
	ldr r1, [r1]
	strh r1, [r0]
	movs r1, #0x80
	strh r1, [r0, #2]
	movs r0, #0
_08005262:
	pop {r3, r4, r5, r6, r7}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	mov ip, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
audio_get_cur_tune_num: @ 0x08005274
	ldr r0, _080053D8
	ldr r0, [r0]
	bx lr

    .thumb
audio_set_num_channels: @ 0x0800527A
	ldr r1, _080053DC
	str r0, [r1]
	bx lr

    .thumb
wait_vbl: @ 0x08005280
	ldr r0, _080053E0
_08005282:
	ldrb r1, [r0]
	cmp r1, #0xa0
	beq _08005282
_08005288:
	ldrb r1, [r0]
	cmp r1, #0xa0
	bne _08005288
	mov pc, lr

    .thumb
reset_pitchbend: @ 0x08005290
	movs r1, #0x20
	lsls r1, r1, #8
	ldr r0, _080053E4
	movs r2, #0x40
_08005298:
	subs r2, #4
	str r1, [r0, r2]
	bne _08005298
	bx lr

    .thumb
reset_modulation: @ 0x080052A0
	movs r1, #0
	ldr r0, _080053E8
	movs r2, #0x80
_080052A6:
	subs r2, #8
	str r1, [r0, r2]
	bne _080052A6
	bx lr

    .thumb
wipe_audio_buff: @ 0x080052AE
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	movs r5, #0
	movs r6, #0
	ldr r0, _080053EC
	ldr r7, _080053F0
	ldr r7, [r7]
	lsrs r7, r7, #1
	cmp r7, #0x58
	beq _080052D2
	cmp r7, #0x70
	beq _080052FC
	cmp r7, #0x98
	beq _080052EE
	cmp r7, #0xb0
	beq _080052E4
_080052D2:
	movs r7, #0
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2}
	b _0800531E
_080052E4:
	movs r7, #0
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3}
_080052EE:
	movs r7, #0
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5}
_080052FC:
	movs r7, #0
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
	stm r0!, {r1, r2, r3, r4, r5, r6, r7}
_0800531E:
	bx lr

    .thumb
reset_all_notes: @ 0x08005320
	ldr r0, _080053F4
	ldr r3, _080053F8
	ldr r6, _080053FC
	movs r7, #0
	movs r4, #1
	movs r5, #0x10
	movs r1, #0x10
	ldr r2, _08005400
	ldr r2, [r2]
_08005332:
	subs r4, #1
	bne _0800533C
	subs r5, #1
	ldr r4, _08005404
	ldr r4, [r4]
_0800533C:
	subs r2, #0x28
	strb r1, [r0, r2]
	strb r5, [r3, r2]
	str r7, [r6, r2]
	bne _08005332
	bx lr

    .thumb
reset_all_fx: @ 0x08005348
	ldr r0, _08005408
	movs r5, #0
	mvns r5, r5
	ldr r1, _0800540C
	ldr r1, [r1]
	movs r2, #0x10
_08005354:
	strb r2, [r0]
	strb r5, [r0, #6]
	adds r0, #0x28
	subs r1, #1
	bne _08005354
	bx lr

    .thumb
reset_chan_vols: @ 0x08005360
	ldr r0, _08005410
	movs r1, #0x10
	movs r2, #0x7f
_08005366:
	subs r1, #1
	strb r2, [r0, r1]
	bne _08005366
	bx lr

    .thumb
reset_all_monophonic_flags: @ 0x0800536E
	ldr r0, _08005414
	movs r1, #0x10
	movs r2, #0
_08005374:
	subs r1, #1
	strb r2, [r0, r1]
	bne _08005374
	bx lr
	.align 2, 0
_0800537C: .4byte audio_chan_dly
_08005380: .4byte 0x040000C6
_08005384: .4byte 0x04000084
_08005388: .4byte 0x00003443
_0800538C: .4byte 0x0203F4BC
_08005390: .4byte 0x00002910
_08005394: .4byte 0xFFFFF9C4
_08005398: .4byte 0x018F0064
_0800539C: .4byte 0xFFFFFB1A
_080053A0: .4byte 0x01397FC3
_080053A4: .4byte 0x000046ED
_080053A8: .4byte 0xFFFFFC64
_080053AC: .4byte 0x00E70086
_080053B0: .4byte 0x00000130
_080053B4: .4byte 0x00005220
_080053B8: .4byte 0xFFFFFCE2
_080053BC: .4byte 0x00C78032
_080053C0: .4byte 0x00000160
_080053C4: .4byte 0x0203F4B8
_080053C8: .4byte 0x0203F4C0
_080053CC: .4byte 0x0203F4C4
_080053D0: .4byte 0x04000100
_080053D4: .4byte 0x0203F4B8
_080053D8: .4byte audio_cur_tune
_080053DC: .4byte 0x0203F4B4
_080053E0: .4byte 0x04000006
_080053E4: .4byte audio_pitchbend
_080053E8: .4byte audio_modulation
_080053EC: .4byte audio_precalc_buff
_080053F0: .4byte 0x0203F4C4
_080053F4: .4byte audio_chan_notes
_080053F8: .4byte audio_chan_notes + 6 @ audio_chan_notes.channel @ 0x03004A66
_080053FC: .4byte audio_chan_notes + 8 @ audio_chan_notes.phase_inc @ 0x03004A68
_08005400: .4byte 0x080AF590
_08005404: .4byte 0x080AF5A4
_08005408: .4byte audio_chan_fx
_0800540C: .4byte 0x080AF59C
_08005410: .4byte audio_chan_vols
_08005414: .4byte audio_monophonic_op

	@ Data tables.
	.byte 0xC0, 0x2C, 0x03, 0x00, 0x14, 0x5D, 0x03, 0x00
	.byte 0x48, 0x90, 0x03, 0x00, 0x87, 0xC6, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0xE4, 0x3C, 0x04, 0x00
	.byte 0x67, 0x7D, 0x04, 0x00, 0xC0, 0xC1, 0x04, 0x00, 0x29, 0x0A, 0x05, 0x00, 0xE0, 0x56, 0x05, 0x00
	.byte 0x28, 0xA8, 0x05, 0x00, 0x44, 0xFE, 0x05, 0x00, 0x80, 0x59, 0x06, 0x00, 0x28, 0xBA, 0x06, 0x00
	.byte 0x90, 0x20, 0x07, 0x00, 0x0E, 0x8D, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0xC8, 0x79, 0x08, 0x00
	.byte 0xCD, 0xFA, 0x08, 0x00, 0x7F, 0x83, 0x09, 0x00, 0x51, 0x14, 0x0A, 0x00, 0xC1, 0xAD, 0x0A, 0x00
	.byte 0x4F, 0x50, 0x0B, 0x00, 0x88, 0xFC, 0x0B, 0x00, 0xFF, 0xB2, 0x0C, 0x00, 0x50, 0x74, 0x0D, 0x00
	.byte 0x1F, 0x41, 0x0E, 0x00, 0x1C, 0x1A, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x90, 0xF3, 0x10, 0x00
	.byte 0x9B, 0xF5, 0x11, 0x00, 0xFE, 0x06, 0x13, 0x00, 0xA3, 0x28, 0x14, 0x00, 0x81, 0x5B, 0x15, 0x00
	.byte 0x9E, 0xA0, 0x16, 0x00, 0x11, 0xF9, 0x17, 0x00, 0xFF, 0x65, 0x19, 0x00, 0xA0, 0xE8, 0x1A, 0x00
	.byte 0x3E, 0x82, 0x1C, 0x00, 0x38, 0x34, 0x1E, 0x00, 0x00, 0x00, 0x20, 0x00, 0x1F, 0xE7, 0x21, 0x00
	.byte 0x36, 0xEB, 0x23, 0x00, 0xFC, 0x0D, 0x26, 0x00, 0x46, 0x51, 0x28, 0x00, 0x02, 0xB7, 0x2A, 0x00
	.byte 0x3D, 0x41, 0x2D, 0x00, 0x22, 0xF2, 0x2F, 0x00, 0xFD, 0xCB, 0x32, 0x00, 0x3F, 0xD1, 0x35, 0x00
	.byte 0x7C, 0x04, 0x39, 0x00, 0x70, 0x68, 0x3C, 0x00, 0x00, 0x00, 0x40, 0x00, 0x3E, 0xCE, 0x43, 0x00
	.byte 0x6B, 0xD6, 0x47, 0x00, 0xF8, 0x1B, 0x4C, 0x00, 0x8C, 0xA2, 0x50, 0x00, 0x04, 0x6E, 0x55, 0x00
	.byte 0x7A, 0x82, 0x5A, 0x00, 0x43, 0xE4, 0x5F, 0x00, 0xFB, 0x97, 0x65, 0x00, 0x7E, 0xA2, 0x6B, 0x00
	.byte 0xF8, 0x08, 0x72, 0x00, 0xE0, 0xD0, 0x78, 0x00, 0x00, 0x00, 0x80, 0x00, 0x7D, 0x9C, 0x87, 0x00
	.byte 0xD6, 0xAC, 0x8F, 0x00, 0xF0, 0x37, 0x98, 0x00, 0x18, 0x45, 0xA1, 0x00, 0x08, 0xDC, 0xAA, 0x00
	.byte 0xF3, 0x04, 0xB5, 0x00, 0x87, 0xC8, 0xBF, 0x00, 0xF5, 0x2F, 0xCB, 0x00, 0xFD, 0x44, 0xD7, 0x00
	.byte 0xF0, 0x11, 0xE4, 0x00, 0xBF, 0xA1, 0xF1, 0x00, 0x00, 0x00, 0x00, 0x01, 0xF9, 0x38, 0x0F, 0x01
	.byte 0xAC, 0x59, 0x1F, 0x01, 0xE1, 0x6F, 0x30, 0x01, 0x30, 0x8A, 0x42, 0x01, 0x11, 0xB8, 0x55, 0x01
	.byte 0xE6, 0x09, 0x6A, 0x01, 0x0D, 0x91, 0x7F, 0x01, 0xEA, 0x5F, 0x96, 0x01, 0xFA, 0x89, 0xAE, 0x01
	.byte 0xE0, 0x23, 0xC8, 0x01, 0x7E, 0x43, 0xE3, 0x01, 0x00, 0x00, 0x00, 0x02, 0xF2, 0x71, 0x1E, 0x02
	.byte 0x58, 0xB3, 0x3E, 0x02, 0xC1, 0xDF, 0x60, 0x02, 0x5F, 0x14, 0x85, 0x02, 0x21, 0x70, 0xAB, 0x02
	.byte 0xCD, 0x13, 0xD4, 0x02, 0x1B, 0x22, 0xFF, 0x02, 0xD5, 0xBF, 0x2C, 0x03, 0xF3, 0x13, 0x5D, 0x03
	.byte 0xC1, 0x47, 0x90, 0x03, 0xFD, 0x86, 0xC6, 0x03, 0x00, 0x00, 0x00, 0x04, 0xE5, 0xE3, 0x3C, 0x04
	.byte 0xB1, 0x66, 0x7D, 0x04, 0x83, 0xBF, 0xC1, 0x04, 0xBE, 0x28, 0x0A, 0x05, 0x42, 0xE0, 0x56, 0x05
	.byte 0x9A, 0x27, 0xA8, 0x05, 0x36, 0x44, 0xFE, 0x05, 0xA9, 0x7F, 0x59, 0x06, 0xE6, 0x27, 0xBA, 0x06
	.byte 0x82, 0x8F, 0x20, 0x07, 0xFA, 0x0D, 0x8D, 0x07, 0x00, 0x00, 0x00, 0x08, 0xC9, 0xC7, 0x79, 0x08
	.byte 0x62, 0xCD, 0xFA, 0x08, 0x05, 0x7F, 0x83, 0x09, 0x7D, 0x51, 0x14, 0x0A, 0x84, 0xC0, 0xAD, 0x0A
	.byte 0x33, 0x4F, 0x50, 0x0B, 0x6C, 0x88, 0xFC, 0x0B, 0x53, 0xFF, 0xB2, 0x0C, 0xCD, 0x4F, 0x74, 0x0D
	.byte 0x04, 0x1F, 0x41, 0x0E, 0xF4, 0x1B, 0x1A, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x93, 0x8F, 0xF3, 0x10
	.byte 0xC4, 0x9A, 0xF5, 0x11, 0x0A, 0xFE, 0x06, 0x13, 0xFE, 0xE6, 0x9A, 0x9A, 0x84, 0x84, 0x74, 0x66
	.byte 0x6B, 0x5C, 0x58, 0x55, 0x51, 0x4E, 0x4B, 0x48, 0x44, 0x3F, 0x3D, 0x3C, 0x39, 0x36, 0x35, 0x34
	.byte 0x33, 0x32, 0x30, 0x2E, 0x2C, 0x2B, 0x2A, 0x28, 0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20
	.byte 0x1F, 0x1F, 0x1E, 0x1D, 0x1C, 0x1C, 0x1B, 0x1A, 0x19, 0x18, 0x18, 0x17, 0x17, 0x16, 0x16, 0x15
	.byte 0x15, 0x15, 0x14, 0x14, 0x13, 0x13, 0x12, 0x12, 0x11, 0x11, 0x10, 0x10, 0x0F, 0x0F, 0x0F, 0x0E
	.byte 0x0E, 0x0E, 0x0D, 0x0D, 0x0C, 0x0C, 0x0C, 0x0B, 0x0B, 0x0A, 0x0A, 0x0A, 0x09, 0x09, 0x09, 0x08
	.byte 0x08, 0x08, 0x07, 0x07, 0x06, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x20, 0x00, 0x00, 0x50, 0x40, 0x00, 0x00, 0x6C, 0x60, 0x00, 0x00, 0x79, 0x80, 0x00, 0x00
	.byte 0x72, 0xA0, 0x00, 0x00, 0x52, 0xC0, 0x00, 0x00, 0x15, 0xE0, 0x00, 0x00, 0xB5, 0xFF, 0x00, 0x00
	.byte 0x2E, 0x1F, 0x01, 0x00, 0x7A, 0x3E, 0x01, 0x00, 0x95, 0x5D, 0x01, 0x00, 0x7B, 0x7C, 0x01, 0x00
	.byte 0x26, 0x9B, 0x01, 0x00, 0x91, 0xB9, 0x01, 0x00, 0xB8, 0xD7, 0x01, 0x00, 0x97, 0xF5, 0x01, 0x00
	.byte 0x28, 0x13, 0x02, 0x00, 0x67, 0x30, 0x02, 0x00, 0x50, 0x4D, 0x02, 0x00, 0xDE, 0x69, 0x02, 0x00
	.byte 0x0D, 0x86, 0x02, 0x00, 0xD8, 0xA1, 0x02, 0x00, 0x3B, 0xBD, 0x02, 0x00, 0x32, 0xD8, 0x02, 0x00
	.byte 0xB9, 0xF2, 0x02, 0x00, 0xCB, 0x0C, 0x03, 0x00, 0x65, 0x26, 0x03, 0x00, 0x83, 0x3F, 0x03, 0x00
	.byte 0x20, 0x58, 0x03, 0x00, 0x39, 0x70, 0x03, 0x00, 0xCB, 0x87, 0x03, 0x00, 0xD1, 0x9E, 0x03, 0x00
	.byte 0x48, 0xB5, 0x03, 0x00, 0x2D, 0xCB, 0x03, 0x00, 0x7D, 0xE0, 0x03, 0x00, 0x33, 0xF5, 0x03, 0x00
	.byte 0x4D, 0x09, 0x04, 0x00, 0xC7, 0x1C, 0x04, 0x00, 0x9F, 0x2F, 0x04, 0x00, 0xD2, 0x41, 0x04, 0x00
	.byte 0x5D, 0x53, 0x04, 0x00, 0x3D, 0x64, 0x04, 0x00, 0x70, 0x74, 0x04, 0x00, 0xF3, 0x83, 0x04, 0x00
	.byte 0xC4, 0x92, 0x04, 0x00, 0xE0, 0xA0, 0x04, 0x00, 0x45, 0xAE, 0x04, 0x00, 0xF2, 0xBA, 0x04, 0x00
	.byte 0xE4, 0xC6, 0x04, 0x00, 0x19, 0xD2, 0x04, 0x00, 0x90, 0xDC, 0x04, 0x00, 0x47, 0xE6, 0x04, 0x00
	.byte 0x3D, 0xEF, 0x04, 0x00, 0x70, 0xF7, 0x04, 0x00, 0xDF, 0xFE, 0x04, 0x00, 0x88, 0x05, 0x05, 0x00
	.byte 0x6C, 0x0B, 0x05, 0x00, 0x88, 0x10, 0x05, 0x00, 0xDC, 0x14, 0x05, 0x00, 0x68, 0x18, 0x05, 0x00
	.byte 0x2B, 0x1B, 0x05, 0x00, 0x24, 0x1D, 0x05, 0x00, 0x53, 0x1E, 0x05, 0x00, 0xB8, 0x1E, 0x05, 0x00
	.byte 0x53, 0x1E, 0x05, 0x00, 0x24, 0x1D, 0x05, 0x00, 0x2B, 0x1B, 0x05, 0x00, 0x68, 0x18, 0x05, 0x00
	.byte 0xDC, 0x14, 0x05, 0x00, 0x88, 0x10, 0x05, 0x00, 0x6C, 0x0B, 0x05, 0x00, 0x88, 0x05, 0x05, 0x00
	.byte 0xDF, 0xFE, 0x04, 0x00, 0x70, 0xF7, 0x04, 0x00, 0x3D, 0xEF, 0x04, 0x00, 0x47, 0xE6, 0x04, 0x00
	.byte 0x90, 0xDC, 0x04, 0x00, 0x19, 0xD2, 0x04, 0x00, 0xE4, 0xC6, 0x04, 0x00, 0xF2, 0xBA, 0x04, 0x00
	.byte 0x45, 0xAE, 0x04, 0x00, 0xE0, 0xA0, 0x04, 0x00, 0xC4, 0x92, 0x04, 0x00, 0xF3, 0x83, 0x04, 0x00
	.byte 0x70, 0x74, 0x04, 0x00, 0x3D, 0x64, 0x04, 0x00, 0x5D, 0x53, 0x04, 0x00, 0xD2, 0x41, 0x04, 0x00
	.byte 0x9F, 0x2F, 0x04, 0x00, 0xC7, 0x1C, 0x04, 0x00, 0x4D, 0x09, 0x04, 0x00, 0x33, 0xF5, 0x03, 0x00
	.byte 0x7D, 0xE0, 0x03, 0x00, 0x2D, 0xCB, 0x03, 0x00, 0x48, 0xB5, 0x03, 0x00, 0xD1, 0x9E, 0x03, 0x00
	.byte 0xCB, 0x87, 0x03, 0x00, 0x39, 0x70, 0x03, 0x00, 0x20, 0x58, 0x03, 0x00, 0x83, 0x3F, 0x03, 0x00
	.byte 0x65, 0x26, 0x03, 0x00, 0xCB, 0x0C, 0x03, 0x00, 0xB9, 0xF2, 0x02, 0x00, 0x32, 0xD8, 0x02, 0x00
	.byte 0x3B, 0xBD, 0x02, 0x00, 0xD8, 0xA1, 0x02, 0x00, 0x0D, 0x86, 0x02, 0x00, 0xDE, 0x69, 0x02, 0x00
	.byte 0x50, 0x4D, 0x02, 0x00, 0x67, 0x30, 0x02, 0x00, 0x28, 0x13, 0x02, 0x00, 0x97, 0xF5, 0x01, 0x00
	.byte 0xB8, 0xD7, 0x01, 0x00, 0x91, 0xB9, 0x01, 0x00, 0x26, 0x9B, 0x01, 0x00, 0x7B, 0x7C, 0x01, 0x00
	.byte 0x95, 0x5D, 0x01, 0x00, 0x7A, 0x3E, 0x01, 0x00, 0x2E, 0x1F, 0x01, 0x00, 0xB5, 0xFF, 0x00, 0x00
	.byte 0x15, 0xE0, 0x00, 0x00, 0x52, 0xC0, 0x00, 0x00, 0x72, 0xA0, 0x00, 0x00, 0x79, 0x80, 0x00, 0x00
	.byte 0x6C, 0x60, 0x00, 0x00, 0x50, 0x40, 0x00, 0x00, 0x2A, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xD6, 0xDF, 0xFF, 0xFF, 0xB0, 0xBF, 0xFF, 0xFF, 0x94, 0x9F, 0xFF, 0xFF, 0x87, 0x7F, 0xFF, 0xFF
	.byte 0x8E, 0x5F, 0xFF, 0xFF, 0xAE, 0x3F, 0xFF, 0xFF, 0xEB, 0x1F, 0xFF, 0xFF, 0x4B, 0x00, 0xFF, 0xFF
	.byte 0xD2, 0xE0, 0xFE, 0xFF, 0x86, 0xC1, 0xFE, 0xFF, 0x6B, 0xA2, 0xFE, 0xFF, 0x85, 0x83, 0xFE, 0xFF
	.byte 0xDA, 0x64, 0xFE, 0xFF, 0x6F, 0x46, 0xFE, 0xFF, 0x48, 0x28, 0xFE, 0xFF, 0x69, 0x0A, 0xFE, 0xFF
	.byte 0xD8, 0xEC, 0xFD, 0xFF, 0x99, 0xCF, 0xFD, 0xFF, 0xB0, 0xB2, 0xFD, 0xFF, 0x22, 0x96, 0xFD, 0xFF
	.byte 0xF3, 0x79, 0xFD, 0xFF, 0x28, 0x5E, 0xFD, 0xFF, 0xC5, 0x42, 0xFD, 0xFF, 0xCE, 0x27, 0xFD, 0xFF
	.byte 0x47, 0x0D, 0xFD, 0xFF, 0x35, 0xF3, 0xFC, 0xFF, 0x9B, 0xD9, 0xFC, 0xFF, 0x7D, 0xC0, 0xFC, 0xFF
	.byte 0xE0, 0xA7, 0xFC, 0xFF, 0xC7, 0x8F, 0xFC, 0xFF, 0x35, 0x78, 0xFC, 0xFF, 0x2F, 0x61, 0xFC, 0xFF
	.byte 0xB8, 0x4A, 0xFC, 0xFF, 0xD3, 0x34, 0xFC, 0xFF, 0x83, 0x1F, 0xFC, 0xFF, 0xCD, 0x0A, 0xFC, 0xFF
	.byte 0xB3, 0xF6, 0xFB, 0xFF, 0x39, 0xE3, 0xFB, 0xFF, 0x61, 0xD0, 0xFB, 0xFF, 0x2E, 0xBE, 0xFB, 0xFF
	.byte 0xA3, 0xAC, 0xFB, 0xFF, 0xC3, 0x9B, 0xFB, 0xFF, 0x90, 0x8B, 0xFB, 0xFF, 0x0D, 0x7C, 0xFB, 0xFF
	.byte 0x3C, 0x6D, 0xFB, 0xFF, 0x20, 0x5F, 0xFB, 0xFF, 0xBB, 0x51, 0xFB, 0xFF, 0x0E, 0x45, 0xFB, 0xFF
	.byte 0x1C, 0x39, 0xFB, 0xFF, 0xE7, 0x2D, 0xFB, 0xFF, 0x70, 0x23, 0xFB, 0xFF, 0xB9, 0x19, 0xFB, 0xFF
	.byte 0xC3, 0x10, 0xFB, 0xFF, 0x90, 0x08, 0xFB, 0xFF, 0x21, 0x01, 0xFB, 0xFF, 0x78, 0xFA, 0xFA, 0xFF
	.byte 0x94, 0xF4, 0xFA, 0xFF, 0x78, 0xEF, 0xFA, 0xFF, 0x24, 0xEB, 0xFA, 0xFF, 0x98, 0xE7, 0xFA, 0xFF
	.byte 0xD5, 0xE4, 0xFA, 0xFF, 0xDC, 0xE2, 0xFA, 0xFF, 0xAD, 0xE1, 0xFA, 0xFF, 0x48, 0xE1, 0xFA, 0xFF
	.byte 0xAD, 0xE1, 0xFA, 0xFF, 0xDC, 0xE2, 0xFA, 0xFF, 0xD5, 0xE4, 0xFA, 0xFF, 0x98, 0xE7, 0xFA, 0xFF
	.byte 0x24, 0xEB, 0xFA, 0xFF, 0x78, 0xEF, 0xFA, 0xFF, 0x94, 0xF4, 0xFA, 0xFF, 0x78, 0xFA, 0xFA, 0xFF
	.byte 0x21, 0x01, 0xFB, 0xFF, 0x90, 0x08, 0xFB, 0xFF, 0xC3, 0x10, 0xFB, 0xFF, 0xB9, 0x19, 0xFB, 0xFF
	.byte 0x70, 0x23, 0xFB, 0xFF, 0xE7, 0x2D, 0xFB, 0xFF, 0x1C, 0x39, 0xFB, 0xFF, 0x0E, 0x45, 0xFB, 0xFF
	.byte 0xBB, 0x51, 0xFB, 0xFF, 0x20, 0x5F, 0xFB, 0xFF, 0x3C, 0x6D, 0xFB, 0xFF, 0x0D, 0x7C, 0xFB, 0xFF
	.byte 0x90, 0x8B, 0xFB, 0xFF, 0xC3, 0x9B, 0xFB, 0xFF, 0xA3, 0xAC, 0xFB, 0xFF, 0x2E, 0xBE, 0xFB, 0xFF
	.byte 0x61, 0xD0, 0xFB, 0xFF, 0x39, 0xE3, 0xFB, 0xFF, 0xB3, 0xF6, 0xFB, 0xFF, 0xCD, 0x0A, 0xFC, 0xFF
	.byte 0x83, 0x1F, 0xFC, 0xFF, 0xD3, 0x34, 0xFC, 0xFF, 0xB8, 0x4A, 0xFC, 0xFF, 0x2F, 0x61, 0xFC, 0xFF
	.byte 0x35, 0x78, 0xFC, 0xFF, 0xC7, 0x8F, 0xFC, 0xFF, 0xE0, 0xA7, 0xFC, 0xFF, 0x7D, 0xC0, 0xFC, 0xFF
	.byte 0x9B, 0xD9, 0xFC, 0xFF, 0x35, 0xF3, 0xFC, 0xFF, 0x47, 0x0D, 0xFD, 0xFF, 0xCE, 0x27, 0xFD, 0xFF
	.byte 0xC5, 0x42, 0xFD, 0xFF, 0x28, 0x5E, 0xFD, 0xFF, 0xF3, 0x79, 0xFD, 0xFF, 0x22, 0x96, 0xFD, 0xFF
	.byte 0xB0, 0xB2, 0xFD, 0xFF, 0x99, 0xCF, 0xFD, 0xFF, 0xD8, 0xEC, 0xFD, 0xFF, 0x69, 0x0A, 0xFE, 0xFF
	.byte 0x48, 0x28, 0xFE, 0xFF, 0x6F, 0x46, 0xFE, 0xFF, 0xDA, 0x64, 0xFE, 0xFF, 0x85, 0x83, 0xFE, 0xFF
	.byte 0x6B, 0xA2, 0xFE, 0xFF, 0x86, 0xC1, 0xFE, 0xFF, 0xD2, 0xE0, 0xFE, 0xFF, 0x4B, 0x00, 0xFF, 0xFF
	.byte 0xEB, 0x1F, 0xFF, 0xFF, 0xAE, 0x3F, 0xFF, 0xFF, 0x8E, 0x5F, 0xFF, 0xFF, 0x87, 0x7F, 0xFF, 0xFF
	.byte 0x94, 0x9F, 0xFF, 0xFF, 0xB0, 0xBF, 0xFF, 0xFF, 0xD6, 0xDF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	
	@ Audio text.
	@ 0x08005A80
    .asciz "AUDIO ERROR, freq of sample unusually high. (>3 times normal)\n"
    .asciz "AUDIO ERROR, pitch frequency too low\n"
    .asciz "AUDIO ERROR, pitch frequency too high\n"
    .asciz "AUDIO ERROR, adsr_acts table exceeded\n"
    .asciz "AUDIO ERROR, midi_command table exceeded\n"
    .asciz "AUDIO ERROR, midi delta time too big\n"
    .asciz "AUDIO ERROR, midi delta time of 4 bytes unsupported\n"
    .asciz "AUDIO ERROR, too many notes on channel 0.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 1.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 2.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 3.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 4.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 5.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 6.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 7.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 8.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 9.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 10.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 11.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 12.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 13.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 14.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, too many notes on channel 15.increase polyphony RAM\n           or modify tune (perhaps reduce envelope release times)\n"
    .asciz "AUDIO ERROR, not enough space to put audio RAM code\n"
    .asciz "AUDIO ERROR, more than 16 tracks in song\n"
    .asciz "AUDIO ERROR, tune num > max tunes available\n"
    .asciz "AUDIO ERROR, MIDI note on command before MIDI prog chng command\n"
    .asciz "AUDIO ERROR, requested playback freq exceeds max freq\n"
    .asciz "AUDIO ERROR, incorrect note mapping for rhythm_set\n"
    .asciz "AUDIO ERROR, incorrect note mapping for keysplit\n"
    .asciz "AUDIO ERROR, invalid fx number\n"
    .asciz "AUDIO ERROR, invalid tune number\n"
	.align 2, 0
