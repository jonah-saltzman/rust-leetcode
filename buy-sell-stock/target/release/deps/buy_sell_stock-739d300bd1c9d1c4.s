	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.p2align	2
__ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hde28502db5ecdd00E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	blr	x0
	; InlineAsm Start
	; InlineAsm End
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.private_extern	__ZN3std2rt10lang_start17h25b4ca29be24710cE
	.globl	__ZN3std2rt10lang_start17h25b4ca29be24710cE
	.p2align	2
__ZN3std2rt10lang_start17h25b4ca29be24710cE:
	.cfi_startproc
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x3, x2
	mov	x2, x1
	str	x0, [sp, #8]
Lloh0:
	adrp	x1, l___unnamed_1@PAGE
Lloh1:
	add	x1, x1, l___unnamed_1@PAGEOFF
	add	x0, sp, #8
	bl	__ZN3std2rt19lang_start_internal17hc453db0ee48af82eE
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc

	.p2align	2
__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1b81602c9497df1cE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hde28502db5ecdd00E
	mov	w0, #0
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hc29170c4c082afd9E:
	.cfi_startproc
	stp	x20, x19, [sp, #-32]!
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	mov	x0, x1
	bl	__ZN4core3fmt9Formatter15debug_lower_hex17hcd0f57c76571bc01E
	tbz	w0, #0, LBB3_2
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	b	__ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hbb6cdedf48e07242E
LBB3_2:
	mov	x0, x19
	bl	__ZN4core3fmt9Formatter15debug_upper_hex17h831ae96c4e16f8e9E
	tbz	w0, #0, LBB3_4
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	b	__ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7caa8d658a7942ccE
LBB3_4:
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	b	__ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17he17c01c772fe4f3fE
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h039cb2874fd6eb2eE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hde28502db5ecdd00E
	mov	w0, #0
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0ce3b51391507e78E:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__ZN14buy_sell_stock4main17he73dd8a1ad0155d9E:
	.cfi_startproc
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	wzr, [sp, #12]
	add	x8, sp, #12
Lloh2:
	adrp	x9, __ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hc29170c4c082afd9E@PAGE
Lloh3:
	add	x9, x9, __ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hc29170c4c082afd9E@PAGEOFF
	stp	x8, x9, [x29, #-16]
Lloh4:
	adrp	x8, l___unnamed_2@PAGE
Lloh5:
	add	x8, x8, l___unnamed_2@PAGEOFF
	mov	w9, #2
	stp	x8, x9, [sp, #16]
	stp	xzr, xzr, [sp, #32]
	sub	x8, x29, #16
	mov	w9, #1
	stp	x8, x9, [sp, #48]
	add	x0, sp, #16
	bl	__ZN3std2io5stdio6_print17hdecfefdeb43586edE
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc

	.globl	_main
	.p2align	2
_main:
	.cfi_startproc
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x3, x1
	sxtw	x2, w0
Lloh6:
	adrp	x8, __ZN14buy_sell_stock4main17he73dd8a1ad0155d9E@PAGE
Lloh7:
	add	x8, x8, __ZN14buy_sell_stock4main17he73dd8a1ad0155d9E@PAGEOFF
	str	x8, [sp, #8]
Lloh8:
	adrp	x1, l___unnamed_1@PAGE
Lloh9:
	add	x1, x1, l___unnamed_1@PAGEOFF
	add	x0, sp, #8
	bl	__ZN3std2rt19lang_start_internal17hc453db0ee48af82eE
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc

	.section	__DATA,__const
	.p2align	3
l___unnamed_1:
	.quad	__ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0ce3b51391507e78E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h039cb2874fd6eb2eE
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1b81602c9497df1cE
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1b81602c9497df1cE

	.section	__TEXT,__const
	.p2align	3
l___unnamed_3:
	.byte	0

l___unnamed_4:
	.byte	10

	.section	__DATA,__const
	.p2align	3
l___unnamed_2:
	.quad	l___unnamed_3
	.space	8
	.quad	l___unnamed_4
	.asciz	"\001\000\000\000\000\000\000"

.subsections_via_symbols
