	.file	"pi.c"
# GNU C (SUSE Linux) version 4.8.3 20140627 [gcc-4_8-branch revision 212064] (x86_64-suse-linux)
#	compiled by GNU C version 4.8.3 20140627 [gcc-4_8-branch revision 212064], GMP version 5.1.3, MPFR version 3.1.2, MPC version 1.0.2
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  pi.c -mtune=generic -march=x86-64 -auxbase-strip pi.s -g
# -O3 -fverbose-asm -fno-inline
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
# -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-cp-clone -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
# -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
# -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
# -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
# -funswitch-loops -funwind-tables -fvar-tracking
# -fvar-tracking-assignments -fvect-cost-model -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
.Ltext0:
	.p2align 4,,15
	.type	SUBTRACT.constprop.0, @function
SUBTRACT.constprop.0:
.LFB14:
	.file 1 "pi.c"
	.loc 1 85 0
	.cfi_startproc
.LVL0:
	.loc 1 90 0
	movslq	N4(%rip), %rax	# N4,
.LVL1:
	testl	%eax, %eax	# k
	js	.L1	#,
	leaq	(%rdi,%rax), %rdx	#, ivtmp.28
	leaq	a(%rax), %rcx	#, ivtmp.31
	subq	$1, %rdi	#, D.3114
.LVL2:
	leaq	-1(%rsi,%rax), %rax	#, ivtmp.32
.LVL3:
	jmp	.L6	#
.LVL4:
	.p2align 4,,10
	.p2align 3
.L8:
	.loc 1 92 0
	movb	%sil, (%rcx)	# D.3113, MEM[base: _56, offset: 0B]
.L4:
.LVL5:
	subq	$1, %rdx	#, ivtmp.28
.LVL6:
	subq	$1, %rcx	#, ivtmp.31
	subq	$1, %rax	#, ivtmp.32
	.loc 1 90 0
	cmpq	%rdi, %rdx	# D.3114, ivtmp.28
	je	.L1	#,
.L6:
.LVL7:
	.loc 1 92 0
	movzbl	(%rdx), %esi	# MEM[base: _37, offset: 0B], MEM[base: _37, offset: 0B]
	subb	1(%rax), %sil	# MEM[base: _36, offset: 1B], D.3113
	jns	.L8	#,
	.loc 1 94 0
	addl	$10, %esi	#, tmp123
	movb	%sil, (%rcx)	# tmp123, MEM[base: _57, offset: 0B]
	.loc 1 95 0
	addb	$1, (%rax)	#, MEM[base: _36, offset: 0B]
	jmp	.L4	#
.LVL8:
	.p2align 4,,10
	.p2align 3
.L1:
	rep ret
	.cfi_endproc
.LFE14:
	.size	SUBTRACT.constprop.0, .-SUBTRACT.constprop.0
	.p2align 4,,15
	.type	SET.constprop.1, @function
SET.constprop.1:
.LFB13:
	.loc 1 78 0
	.cfi_startproc
.LVL9:
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	.loc 1 80 0
	movl	N4(%rip), %eax	# N4, tmp71
	xorl	%esi, %esi	#
	movl	$c, %edi	#,
	leal	1(%rax), %edx	#, D.3120
	movslq	%edx, %rdx	# D.3120, D.3121
	call	memset	#
.LVL10:
	.loc 1 81 0
	movb	$1, c(%rip)	#, MEM[(char *)&c]
	.loc 1 82 0
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	SET.constprop.1, .-SET.constprop.1
	.p2align 4,,15
	.type	DIVIDE.constprop.2, @function
DIVIDE.constprop.2:
.LFB12:
	.loc 1 9 0
	.cfi_startproc
.LVL11:
	.loc 1 16 0
	movl	N4(%rip), %r8d	# N4, N4.1
	xorl	%ecx, %ecx	# ivtmp.39
	.loc 1 15 0
	xorl	%esi, %esi	# r
	.loc 1 16 0
	testl	%r8d, %r8d	# N4.1
	js	.L11	#,
.LVL12:
	.p2align 4,,10
	.p2align 3
.L15:
	.loc 1 18 0
	movsbl	a(%rcx), %eax	# MEM[symbol: a, index: ivtmp.39_10, offset: 0B], D.3131
	leal	(%rsi,%rsi,4), %edx	#, D.3131
	addq	$1, %rcx	#, ivtmp.39
.LVL13:
	leal	(%rax,%rdx,2), %esi	#, u
.LVL14:
	.loc 1 19 0
	xorl	%edx, %edx	# tmp82
	movl	%esi, %eax	# u, tmp81
	divl	%edi	# n
.LVL15:
	.loc 1 20 0
	movl	%eax, %edx	# tmp81, D.3131
	.loc 1 21 0
	movb	%al, a-1(%rcx)	# tmp81, MEM[symbol: a, index: ivtmp.39_10, offset: 0B]
	.loc 1 20 0
	imull	%edi, %edx	# n, D.3131
	subl	%edx, %esi	# D.3131, r
.LVL16:
	.loc 1 16 0
	cmpl	%ecx, %r8d	# ivtmp.39, N4.1
	jge	.L15	#,
.LVL17:
.L11:
	rep ret
	.cfi_endproc
.LFE12:
	.size	DIVIDE.constprop.2, .-DIVIDE.constprop.2
	.p2align 4,,15
	.type	DIVIDE.constprop.3, @function
DIVIDE.constprop.3:
.LFB11:
	.loc 1 9 0
	.cfi_startproc
.LVL18:
	.loc 1 16 0
	movl	N4(%rip), %edi	# N4, N4.1
	xorl	%ecx, %ecx	# ivtmp.45
	.loc 1 15 0
	xorl	%eax, %eax	# r
	.loc 1 19 0
	movl	$-1994733765, %r8d	#, tmp87
	.loc 1 16 0
	testl	%edi, %edi	# N4.1
	js	.L16	#,
.LVL19:
	.p2align 4,,10
	.p2align 3
.L20:
	.loc 1 18 0
	movsbl	b(%rcx), %edx	# MEM[symbol: b, index: ivtmp.45_31, offset: 0B], D.3139
	leal	(%rax,%rax,4), %eax	#, D.3139
.LVL20:
	addq	$1, %rcx	#, ivtmp.45
.LVL21:
	leal	(%rdx,%rax,2), %esi	#, u
.LVL22:
	.loc 1 19 0
	movl	%esi, %eax	# u, tmp88
	mull	%r8d	# tmp87
	shrl	$7, %edx	#, q
.LVL23:
	.loc 1 20 0
	imull	$239, %edx, %eax	#, q, D.3139
	.loc 1 21 0
	movb	%dl, b-1(%rcx)	# q, MEM[symbol: b, index: ivtmp.45_31, offset: 0B]
	.loc 1 20 0
	subl	%eax, %esi	# D.3139, r
.LVL24:
	.loc 1 16 0
	cmpl	%ecx, %edi	# ivtmp.45, N4.1
	.loc 1 20 0
	movl	%esi, %eax	# r, r
.LVL25:
	.loc 1 16 0
	jge	.L20	#,
.LVL26:
.L16:
	rep ret
	.cfi_endproc
.LFE11:
	.size	DIVIDE.constprop.3, .-DIVIDE.constprop.3
	.p2align 4,,15
	.globl	DIVIDE
	.type	DIVIDE, @function
DIVIDE:
.LFB2:
	.loc 1 10 0
	.cfi_startproc
.LVL27:
	.loc 1 16 0
	movl	N4(%rip), %eax	# N4,
	xorl	%ecx, %ecx	# ivtmp.51
	.loc 1 15 0
	xorl	%r8d, %r8d	# r
	.loc 1 16 0
	testl	%eax, %eax	#
	js	.L21	#,
.LVL28:
	.p2align 4,,10
	.p2align 3
.L25:
	.loc 1 18 0 discriminator 2
	movsbl	(%rdi,%rcx), %eax	# MEM[base: x_8(D), index: ivtmp.51_14, offset: 0B], D.3147
	leal	(%r8,%r8,4), %edx	#, D.3147
	leal	(%rax,%rdx,2), %r8d	#, u
.LVL29:
	.loc 1 19 0 discriminator 2
	xorl	%edx, %edx	# tmp85
	movl	%r8d, %eax	# u, tmp84
	divl	%esi	# n
.LVL30:
	.loc 1 20 0 discriminator 2
	movl	%eax, %edx	# tmp84, D.3147
	.loc 1 21 0 discriminator 2
	movb	%al, (%rdi,%rcx)	# tmp84, MEM[base: x_8(D), index: ivtmp.51_14, offset: 0B]
	leal	1(%rcx), %eax	#, D.3149
.LVL31:
	.loc 1 20 0 discriminator 2
	imull	%esi, %edx	# n, D.3147
.LVL32:
	addq	$1, %rcx	#, ivtmp.51
.LVL33:
	subl	%edx, %r8d	# D.3147, r
.LVL34:
	.loc 1 16 0 discriminator 2
	cmpl	%eax, N4(%rip)	# D.3149, N4
	jge	.L25	#,
.LVL35:
.L21:
	rep ret
	.cfi_endproc
.LFE2:
	.size	DIVIDE, .-DIVIDE
	.p2align 4,,15
	.globl	LONGDIV
	.type	LONGDIV, @function
LONGDIV:
.LFB3:
	.loc 1 26 0
	.cfi_startproc
.LVL36:
	.loc 1 31 0
	cmpl	$6552, %esi	#, n
	jle	.L27	#,
.LVL37:
	.loc 1 45 0 discriminator 1
	movl	N4(%rip), %r8d	# N4,
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	# k
	.loc 1 56 0 discriminator 1
	movslq	%esi, %r10	# n, D.3164
	.loc 1 45 0 discriminator 1
	testl	%r8d, %r8d	#
	jns	.L34	#,
	rep ret
.LVL38:
	.p2align 4,,10
	.p2align 3
.L35:
	.loc 1 49 0
	movsbl	(%rdi), %eax	# MEM[base: _33, offset: 0B], D.3161
	leal	(%rdx,%rdx,4), %edx	#, D.3161
.LVL39:
	leal	(%rax,%rdx,2), %r9d	#, u
.LVL40:
	.loc 1 50 0
	xorl	%edx, %edx	# tmp119
	movl	%r9d, %eax	# u, q
	divl	%esi	# n
	.loc 1 51 0
	movl	%r9d, %edx	# u, r
	.loc 1 50 0
	movl	%eax, %r8d	# q, q
.LVL41:
	.loc 1 51 0
	imull	%esi, %eax	# n, D.3161
.LVL42:
	subl	%eax, %edx	# D.3161,
.LVL43:
.L32:
	.loc 1 59 0
	movb	%r8b, (%rdi)	# q, *_98
	.loc 1 45 0
	addl	$1, %ecx	#, k
.LVL44:
	addq	$1, %rdi	#, ivtmp.63
	cmpl	%ecx, N4(%rip)	# k, N4
	jl	.L26	#,
.LVL45:
.L34:
	.loc 1 47 0
	cmpl	$6552, %edx	#, r
	jbe	.L35	#,
	.loc 1 55 0
	movsbq	(%rdi), %rax	# MEM[base: _45, offset: 0B], D.3164
	leaq	(%rdx,%rdx,4), %rdx	#, D.3164
.LVL46:
	leaq	(%rax,%rdx,2), %r9	#, v
.LVL47:
	.loc 1 56 0
	movq	%r9, %rax	# v, D.3164
	cqto
	idivq	%r10	# D.3164
	.loc 1 57 0
	movl	%r9d, %edx	# v, r
	.loc 1 56 0
	movl	%eax, %r8d	# D.3164, q
.LVL48:
	.loc 1 57 0
	imull	%esi, %eax	# n, D.3161
.LVL49:
	subl	%eax, %edx	# D.3161,
.LVL50:
	jmp	.L32	#
.LVL51:
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 1 34 0 discriminator 1
	movl	N4(%rip), %eax	# N4,
	testl	%eax, %eax	#
	jns	.L36	#,
.LVL52:
	.p2align 4,,10
	.p2align 3
.L26:
	rep ret
.LVL53:
	.p2align 4,,10
	.p2align 3
.L36:
	.loc 1 34 0 is_stmt 0
	xorl	%ecx, %ecx	# ivtmp.57
	xorl	%r8d, %r8d	# r
.LVL54:
	.p2align 4,,10
	.p2align 3
.L30:
	.loc 1 36 0 is_stmt 1 discriminator 2
	movsbl	(%rdi,%rcx), %eax	# MEM[base: x_15(D), index: ivtmp.57_97, offset: 0B], D.3161
	leal	(%r8,%r8,4), %edx	#, D.3161
	leal	(%rax,%rdx,2), %r8d	#, u
.LVL55:
	.loc 1 37 0 discriminator 2
	xorl	%edx, %edx	# tmp111
	movl	%r8d, %eax	# u, tmp110
	divl	%esi	# n
.LVL56:
	.loc 1 38 0 discriminator 2
	movl	%eax, %edx	# tmp110, D.3161
	.loc 1 39 0 discriminator 2
	movb	%al, (%rdi,%rcx)	# tmp110, MEM[base: x_15(D), index: ivtmp.57_97, offset: 0B]
	leal	1(%rcx), %eax	#, D.3165
.LVL57:
	.loc 1 38 0 discriminator 2
	imull	%esi, %edx	# n, D.3161
.LVL58:
	addq	$1, %rcx	#, ivtmp.57
.LVL59:
	subl	%edx, %r8d	# D.3161, r
.LVL60:
	.loc 1 34 0 discriminator 2
	cmpl	%eax, N4(%rip)	# D.3165, N4
	jge	.L30	#,
	rep ret
	.cfi_endproc
.LFE3:
	.size	LONGDIV, .-LONGDIV
	.p2align 4,,15
	.globl	MULTIPLY
	.type	MULTIPLY, @function
MULTIPLY:
.LFB4:
	.loc 1 65 0
	.cfi_startproc
.LVL61:
	.loc 1 70 0
	movslq	N4(%rip), %rcx	# N4,
.LVL62:
	testl	%ecx, %ecx	# k
	js	.L37	#,
	addq	%rdi, %rcx	# x, ivtmp.71
.LVL63:
	.loc 1 69 0
	xorl	%edx, %edx	# r
	subq	$1, %rdi	#, D.3181
.LVL64:
	.loc 1 73 0
	movl	$-858993459, %r9d	#, tmp101
.LVL65:
	.p2align 4,,10
	.p2align 3
.L40:
	.loc 1 72 0 discriminator 2
	movsbl	(%rcx), %eax	# MEM[base: _40, offset: 0B], D.3178
	subq	$1, %rcx	#, ivtmp.71
.LVL66:
	imull	%esi, %eax	# n, D.3178
	leal	(%rdx,%rax), %r8d	#, q
.LVL67:
	.loc 1 73 0 discriminator 2
	movl	%r8d, %eax	# q, tmp102
	mull	%r9d	# tmp101
.LVL68:
	shrl	$3, %edx	#, r
.LVL69:
	.loc 1 74 0 discriminator 2
	leal	(%rdx,%rdx,4), %eax	#, D.3180
	addl	%eax, %eax	# tmp99
	subl	%eax, %r8d	# tmp99, tmp100
.LVL70:
	movb	%r8b, 1(%rcx)	# tmp100, MEM[base: _40, offset: 0B]
	.loc 1 70 0 discriminator 2
	cmpq	%rdi, %rcx	# D.3181, ivtmp.71
	jne	.L40	#,
.LVL71:
.L37:
	rep ret
	.cfi_endproc
.LFE4:
	.size	MULTIPLY, .-MULTIPLY
	.p2align 4,,15
	.globl	SET
	.type	SET, @function
SET:
.LFB5:
	.loc 1 79 0
	.cfi_startproc
.LVL72:
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# n, n
	.loc 1 80 0
	xorl	%esi, %esi	#
.LVL73:
	.loc 1 79 0
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# x, x
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
	.loc 1 80 0
	movl	N4(%rip), %eax	# N4, tmp72
	leal	1(%rax), %edx	#, D.3187
	movslq	%edx, %rdx	# D.3187, D.3188
	call	memset	#
.LVL74:
	.loc 1 81 0
	movb	%bpl, (%rbx)	# n, *x_5(D)
	.loc 1 82 0
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
.LVL75:
	popq	%rbp	#
	.cfi_def_cfa_offset 8
.LVL76:
	ret
	.cfi_endproc
.LFE5:
	.size	SET, .-SET
	.p2align 4,,15
	.globl	SUBTRACT
	.type	SUBTRACT, @function
SUBTRACT:
.LFB6:
	.loc 1 86 0
	.cfi_startproc
.LVL77:
	.loc 1 90 0
	movslq	N4(%rip), %rax	# N4,
.LVL78:
	testl	%eax, %eax	# k
	js	.L43	#,
	leaq	(%rsi,%rax), %rcx	#, ivtmp.82
	addq	%rax, %rdi	# D.3209, ivtmp.85
.LVL79:
	subq	$1, %rsi	#, D.3206
.LVL80:
	leaq	-1(%rdx,%rax), %rax	#, ivtmp.86
.LVL81:
	jmp	.L48	#
.LVL82:
	.p2align 4,,10
	.p2align 3
.L49:
	.loc 1 92 0
	movb	%dl, (%rdi)	# D.3205, MEM[base: _57, offset: 0B]
.L46:
.LVL83:
	subq	$1, %rcx	#, ivtmp.82
.LVL84:
	subq	$1, %rdi	#, ivtmp.85
	subq	$1, %rax	#, ivtmp.86
	.loc 1 90 0
	cmpq	%rsi, %rcx	# D.3206, ivtmp.82
	je	.L43	#,
.L48:
.LVL85:
	.loc 1 92 0
	movzbl	(%rcx), %edx	# MEM[base: _38, offset: 0B], MEM[base: _38, offset: 0B]
	subb	1(%rax), %dl	# MEM[base: _37, offset: 1B], D.3205
	jns	.L49	#,
	.loc 1 94 0
	addl	$10, %edx	#, tmp112
	movb	%dl, (%rdi)	# tmp112, MEM[base: _58, offset: 0B]
	.loc 1 95 0
	addb	$1, (%rax)	#, MEM[base: _37, offset: 0B]
	jmp	.L46	#
.LVL86:
	.p2align 4,,10
	.p2align 3
.L43:
	rep ret
	.cfi_endproc
.LFE6:
	.size	SUBTRACT, .-SUBTRACT
	.p2align 4,,15
	.globl	progress
	.type	progress, @function
progress:
.LFB9:
	.loc 1 178 0
	.cfi_startproc
	.loc 1 179 0
	movl	$46, %edi	#,
	jmp	putchar	#
.LVL87:
	.cfi_endproc
.LFE9:
	.size	progress, .-progress
	.p2align 4,,15
	.globl	calculate
	.type	calculate, @function
calculate:
.LFB8:
	.loc 1 123 0
	.cfi_startproc
	.loc 1 126 0
	movl	N(%rip), %eax	# N, tmp76
	.loc 1 123 0
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 128 0
	xorl	%esi, %esi	#
	movl	$a, %edi	#,
	.loc 1 126 0
	addl	$4, %eax	#, N4.8
	movl	%eax, N4(%rip)	# N4.8, N4
	.loc 1 128 0
	call	SET	#
.LVL88:
	.loc 1 129 0
	xorl	%esi, %esi	#
	movl	$b, %edi	#,
	call	SET	#
.LVL89:
	.loc 1 131 0
	movl	N4(%rip), %eax	# N4, N4
	leal	1(%rax,%rax), %ebx	#, j
.LVL90:
	cmpl	$2, %ebx	#, j
	jle	.L53	#,
	.p2align 4,,10
	.p2align 3
.L55:
	.loc 1 133 0 discriminator 2
	call	SET.constprop.1	#
.LVL91:
	.loc 1 134 0 discriminator 2
	movl	%ebx, %esi	# j,
	movl	$c, %edi	#,
	.loc 1 131 0 discriminator 2
	subl	$2, %ebx	#, j
.LVL92:
	.loc 1 134 0 discriminator 2
	call	LONGDIV	#
.LVL93:
	.loc 1 136 0 discriminator 2
	movl	$a, %esi	#,
	movl	$c, %edi	#,
	call	SUBTRACT.constprop.0	#
.LVL94:
	.loc 1 137 0 discriminator 2
	movl	$25, %edi	#,
	call	DIVIDE.constprop.2	#
.LVL95:
	.loc 1 139 0 discriminator 2
	movl	$b, %edx	#,
	movl	$c, %esi	#,
	movq	%rdx, %rdi	#,
	call	SUBTRACT	#
.LVL96:
	.loc 1 140 0 discriminator 2
	call	DIVIDE.constprop.3	#
.LVL97:
	.loc 1 141 0 discriminator 2
	call	DIVIDE.constprop.3	#
.LVL98:
	.loc 1 143 0 discriminator 2
	.p2align 4,,5
	call	progress	#
.LVL99:
	.loc 1 131 0 discriminator 2
	cmpl	$2, %ebx	#, j
	.p2align 4,,2
	jg	.L55	#,
.L53:
	.loc 1 146 0
	.p2align 4,,5
	call	SET.constprop.1	#
.LVL100:
	.loc 1 148 0
	movl	$a, %esi	#,
	movl	$c, %edi	#,
	call	SUBTRACT.constprop.0	#
.LVL101:
	.loc 1 149 0
	movl	$5, %edi	#,
	call	DIVIDE.constprop.2	#
.LVL102:
	.loc 1 151 0
	movl	$b, %edx	#,
	movl	$c, %esi	#,
	movq	%rdx, %rdi	#,
	call	SUBTRACT	#
.LVL103:
	.loc 1 152 0
	call	DIVIDE.constprop.3	#
.LVL104:
	.loc 1 154 0
	movl	$4, %esi	#,
	movl	$a, %edi	#,
	call	MULTIPLY	#
.LVL105:
	.loc 1 155 0
	movl	$b, %esi	#,
	movl	$a, %edi	#,
	call	SUBTRACT.constprop.0	#
.LVL106:
	.loc 1 156 0
	movl	$4, %esi	#,
	movl	$a, %edi	#,
	call	MULTIPLY	#
.LVL107:
	.loc 1 159 0
	popq	%rbx	#
	.cfi_def_cfa_offset 8
.LVL108:
	.loc 1 158 0
	jmp	progress	#
.LVL109:
	.cfi_endproc
.LFE8:
	.size	calculate, .-calculate
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" \n3."
.LC1:
	.string	"%d"
.LC2:
	.string	"    <%d>\n\n   "
.LC3:
	.string	"\n   "
	.text
	.p2align 4,,15
	.globl	epilog
	.type	epilog, @function
epilog:
.LFB10:
	.loc 1 183 0
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 187 0
	movq	stdout(%rip), %rcx	# stdout,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	.loc 1 183 0
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 187 0
	call	fwrite	#
.LVL110:
	.loc 1 188 0
	movl	N(%rip), %edx	# N,
	testl	%edx, %edx	#
	jle	.L57	#,
	.loc 1 190 0
	movsbl	a+1(%rip), %edx	# a, D.3231
	movq	stdout(%rip), %rdi	# stdout,
	movl	$.LC1, %esi	#,
	xorl	%eax, %eax	#
	movl	$a+2, %ebp	#, ivtmp.103
	.loc 1 188 0
	movl	$1, %ebx	#, j
	.loc 1 191 0
	movl	$1717986919, %r12d	#, tmp114
	.loc 1 190 0
	call	fprintf	#
.LVL111:
	jmp	.L64	#
.LVL112:
	.p2align 4,,10
	.p2align 3
.L66:
	.loc 1 194 0
	movq	stdout(%rip), %rdi	# stdout,
	movl	%ebx, %edx	# j,
	movl	$.LC2, %esi	#,
	xorl	%eax, %eax	#
	call	fprintf	#
.LVL113:
	.p2align 4,,10
	.p2align 3
.L59:
	addq	$1, %rbp	#, ivtmp.103
.LVL114:
.L64:
	.loc 1 188 0
	addl	$1, %ebx	#, j
.LVL115:
	cmpl	%ebx, N(%rip)	# j, N
	jl	.L57	#,
	.loc 1 190 0
	movsbl	0(%rbp), %edx	# MEM[base: _1, offset: 0B], D.3231
	movq	stdout(%rip), %rdi	# stdout,
	xorl	%eax, %eax	#
	movl	$.LC1, %esi	#,
	call	fprintf	#
.LVL116:
	.loc 1 191 0
	movl	%ebx, %eax	# j, tmp115
	movl	%ebx, %ecx	# j, tmp93
	imull	%r12d	# tmp114
	sarl	$31, %ecx	#, tmp93
	sarl	%edx	# tmp89
	subl	%ecx, %edx	# tmp93, tmp89
	leal	(%rdx,%rdx,4), %eax	#, tmp96
	cmpl	%eax, %ebx	# tmp96, j
	jne	.L59	#,
	.loc 1 192 0
	movl	%ebx, %eax	# j, tmp116
	movl	$1374389535, %edx	#, tmp100
	imull	%edx	# tmp100
	movl	$50, %eax	#,
	sarl	$4, %edx	#, tmp98
	subl	%ecx, %edx	# tmp93, tmp98
	imull	%eax, %edx	#, tmp103
	cmpl	%edx, %ebx	# tmp103, j
	jne	.L60	#,
	.loc 1 193 0
	movl	$274877907, %edx	#, tmp107
	movl	%ebx, %eax	# j, tmp117
	imull	%edx	# tmp107
	sarl	$4, %edx	#, tmp105
	subl	%ecx, %edx	# tmp93, tmp105
	imull	$250, %edx, %edx	#, tmp105, tmp110
	cmpl	%edx, %ebx	# tmp110, j
	je	.L66	#,
	.loc 1 196 0
	movq	stdout(%rip), %rcx	# stdout,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
.LVL117:
	jmp	.L59	#
	.p2align 4,,10
	.p2align 3
.L60:
	.loc 1 198 0
	movq	stdout(%rip), %rsi	# stdout,
	movl	$32, %edi	#,
	call	fputc	#
.LVL118:
	jmp	.L59	#
.LVL119:
	.p2align 4,,10
	.p2align 3
.L57:
	.loc 1 201 0
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10:
	.size	epilog, .-epilog
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB7:
	.loc 1 107 0
	.cfi_startproc
.LVL120:
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	.loc 1 110 0
	cmpl	$1, %edi	#, argc
	.loc 1 108 0
	movl	$10000, N(%rip)	#, N
	.loc 1 110 0
	jle	.L68	#,
	.loc 1 111 0
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_5(D) + 8B], MEM[(char * *)argv_5(D) + 8B]
.LVL121:
	call	atoi	#
.LVL122:
	movl	%eax, N(%rip)	# N.5, N
.L68:
	.loc 1 113 0
	movq	stdout(%rip), %rdi	# stdout,
	xorl	%esi, %esi	#
	call	setbuf	#
.LVL123:
	.loc 1 115 0
	call	calculate	#
.LVL124:
	.loc 1 117 0
	call	epilog	#
.LVL125:
	.loc 1 120 0
	xorl	%eax, %eax	#
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.comm	string,100,32
	.comm	c,10240,32
	.comm	b,10240,32
	.comm	a,10240,32
	.comm	N4,4,4
	.comm	N,4,4
	.text
.Letext0:
	.file 2 "/usr/lib64/gcc/x86_64-suse-linux/4.8/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "<built-in>"
	.file 7 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc4f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF69
	.byte	0x1
	.long	.LASF70
	.long	.LASF71
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0xd4
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.long	0x5d
	.uleb128 0x6
	.long	0x62
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x83
	.long	0x7e
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x84
	.long	0x7e
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xae
	.uleb128 0x8
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x22e
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0xf6
	.long	0x50
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0xfb
	.long	0x9d
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xfc
	.long	0x9d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xfd
	.long	0x9d
	.byte	0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xfe
	.long	0x9d
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0xff
	.long	0x9d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.value	0x100
	.long	0x9d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x101
	.long	0x9d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x102
	.long	0x9d
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x104
	.long	0x9d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x105
	.long	0x9d
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x106
	.long	0x9d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x108
	.long	0x266
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x10a
	.long	0x26c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x10c
	.long	0x50
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x110
	.long	0x50
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x112
	.long	0x85
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x116
	.long	0x49
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x117
	.long	0x70
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x118
	.long	0x272
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x11c
	.long	0x282
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x125
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x12e
	.long	0x9b
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x9b
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x9b
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x131
	.long	0x9b
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x132
	.long	0x30
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x134
	.long	0x50
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.value	0x136
	.long	0x288
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF72
	.byte	0x5
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x266
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0xa1
	.long	0x266
	.byte	0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.long	0x26c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.byte	0xa6
	.long	0x50
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x235
	.uleb128 0x5
	.byte	0x8
	.long	0xae
	.uleb128 0xc
	.long	0x62
	.long	0x282
	.uleb128 0xd
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x22e
	.uleb128 0xc
	.long	0x62
	.long	0x298
	.uleb128 0xd
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x5
	.byte	0x8
	.long	0x2ac
	.uleb128 0xe
	.uleb128 0xf
	.long	.LASF49
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.long	0x302
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x9
	.long	0x9d
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x9
	.long	0x50
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0xb
	.long	0x50
	.uleb128 0x11
	.string	"k"
	.byte	0x1
	.byte	0xb
	.long	0x50
	.uleb128 0x11
	.string	"q"
	.byte	0x1
	.byte	0xc
	.long	0x29
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xc
	.long	0x29
	.uleb128 0x11
	.string	"u"
	.byte	0x1
	.byte	0xc
	.long	0x29
	.uleb128 0x11
	.string	"v"
	.byte	0x1
	.byte	0xd
	.long	0x7e
	.byte	0
	.uleb128 0x12
	.string	"SET"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	0x321
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x4e
	.long	0x9d
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x4e
	.long	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF50
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0x37f
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x55
	.long	0x9d
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.byte	0x55
	.long	0x9d
	.uleb128 0x10
	.string	"z"
	.byte	0x1
	.byte	0x55
	.long	0x9d
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0x57
	.long	0x50
	.uleb128 0x11
	.string	"k"
	.byte	0x1
	.byte	0x57
	.long	0x50
	.uleb128 0x11
	.string	"q"
	.byte	0x1
	.byte	0x58
	.long	0x29
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0x58
	.long	0x29
	.uleb128 0x11
	.string	"u"
	.byte	0x1
	.byte	0x58
	.long	0x29
	.uleb128 0x11
	.string	"v"
	.byte	0x1
	.byte	0x59
	.long	0x7e
	.byte	0
	.uleb128 0x13
	.long	0x321
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df
	.uleb128 0x14
	.long	0x336
	.long	.LLST0
	.uleb128 0x14
	.long	0x33f
	.long	.LLST1
	.uleb128 0x15
	.long	0x348
	.uleb128 0x16
	.long	0x351
	.long	.LLST2
	.uleb128 0x15
	.long	0x35a
	.uleb128 0x15
	.long	0x363
	.uleb128 0x15
	.long	0x36c
	.uleb128 0x15
	.long	0x375
	.uleb128 0x17
	.long	0x32d
	.uleb128 0xa
	.byte	0x3
	.quad	a
	.byte	0x9f
	.byte	0
	.uleb128 0x13
	.long	0x302
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x431
	.uleb128 0x18
	.long	0x317
	.byte	0x1
	.uleb128 0x17
	.long	0x30e
	.uleb128 0xa
	.byte	0x3
	.quad	c
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL10
	.long	0xb8c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2ad
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x492
	.uleb128 0x17
	.long	0x2c2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.long	0x2cb
	.uleb128 0x16
	.long	0x2d4
	.long	.LLST3
	.uleb128 0x16
	.long	0x2dd
	.long	.LLST4
	.uleb128 0x16
	.long	0x2e6
	.long	.LLST5
	.uleb128 0x16
	.long	0x2ef
	.long	.LLST6
	.uleb128 0x15
	.long	0x2f8
	.uleb128 0x17
	.long	0x2b9
	.uleb128 0xa
	.byte	0x3
	.quad	a
	.byte	0x9f
	.byte	0
	.uleb128 0x13
	.long	0x2ad
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f2
	.uleb128 0x15
	.long	0x2cb
	.uleb128 0x16
	.long	0x2d4
	.long	.LLST7
	.uleb128 0x16
	.long	0x2dd
	.long	.LLST8
	.uleb128 0x16
	.long	0x2e6
	.long	.LLST9
	.uleb128 0x16
	.long	0x2ef
	.long	.LLST10
	.uleb128 0x15
	.long	0x2f8
	.uleb128 0x18
	.long	0x2c2
	.byte	0xef
	.uleb128 0x17
	.long	0x2b9
	.uleb128 0xa
	.byte	0x3
	.quad	b
	.byte	0x9f
	.byte	0
	.uleb128 0x13
	.long	0x2ad
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x54a
	.uleb128 0x17
	.long	0x2b9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.long	0x2c2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.long	0x2cb
	.uleb128 0x16
	.long	0x2d4
	.long	.LLST11
	.uleb128 0x16
	.long	0x2dd
	.long	.LLST12
	.uleb128 0x16
	.long	0x2e6
	.long	.LLST13
	.uleb128 0x16
	.long	0x2ef
	.long	.LLST14
	.uleb128 0x15
	.long	0x2f8
	.byte	0
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.byte	0x19
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ca
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0x19
	.long	0x9d
	.long	.LLST15
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.byte	0x19
	.long	0x50
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0x1b
	.long	0x50
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.byte	0x1b
	.long	0x50
	.long	.LLST16
	.uleb128 0x1e
	.string	"q"
	.byte	0x1
	.byte	0x1c
	.long	0x29
	.long	.LLST17
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.byte	0x1c
	.long	0x29
	.long	.LLST18
	.uleb128 0x1e
	.string	"u"
	.byte	0x1
	.byte	0x1c
	.long	0x29
	.long	.LLST19
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.byte	0x1d
	.long	0x7e
	.long	.LLST20
	.byte	0
	.uleb128 0x1b
	.long	.LASF52
	.byte	0x1
	.byte	0x40
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x642
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0x40
	.long	0x9d
	.long	.LLST21
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.byte	0x40
	.long	0x50
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0x42
	.long	0x50
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.byte	0x42
	.long	0x50
	.long	.LLST22
	.uleb128 0x1e
	.string	"q"
	.byte	0x1
	.byte	0x43
	.long	0x29
	.long	.LLST23
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.byte	0x43
	.long	0x29
	.long	.LLST24
	.uleb128 0x11
	.string	"u"
	.byte	0x1
	.byte	0x43
	.long	0x29
	.uleb128 0x11
	.string	"v"
	.byte	0x1
	.byte	0x44
	.long	0x7e
	.byte	0
	.uleb128 0x13
	.long	0x302
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x689
	.uleb128 0x14
	.long	0x30e
	.long	.LLST25
	.uleb128 0x14
	.long	0x317
	.long	.LLST26
	.uleb128 0x19
	.quad	.LVL74
	.long	0xb8c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x321
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e2
	.uleb128 0x14
	.long	0x32d
	.long	.LLST27
	.uleb128 0x14
	.long	0x336
	.long	.LLST28
	.uleb128 0x14
	.long	0x33f
	.long	.LLST29
	.uleb128 0x15
	.long	0x348
	.uleb128 0x16
	.long	0x351
	.long	.LLST30
	.uleb128 0x15
	.long	0x35a
	.uleb128 0x15
	.long	0x363
	.uleb128 0x15
	.long	0x36c
	.uleb128 0x15
	.long	0x375
	.byte	0
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.byte	0xb1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x714
	.uleb128 0x1f
	.quad	.LVL87
	.long	0xba9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF54
	.byte	0x1
	.byte	0x7a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x973
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0x7c
	.long	0x50
	.long	.LLST31
	.uleb128 0x20
	.quad	.LVL88
	.long	0x302
	.long	0x762
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.quad	.LVL89
	.long	0x302
	.long	0x786
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL91
	.long	0x3df
	.uleb128 0x20
	.quad	.LVL93
	.long	0x54a
	.long	0x7b8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 2
	.byte	0
	.uleb128 0x20
	.quad	.LVL94
	.long	0x37f
	.long	0x7e4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.byte	0
	.uleb128 0x20
	.quad	.LVL95
	.long	0x431
	.long	0x7fb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x49
	.byte	0
	.uleb128 0x20
	.quad	.LVL96
	.long	0x321
	.long	0x834
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.byte	0
	.uleb128 0x21
	.quad	.LVL97
	.long	0x492
	.uleb128 0x21
	.quad	.LVL98
	.long	0x492
	.uleb128 0x21
	.quad	.LVL99
	.long	0x6e2
	.uleb128 0x21
	.quad	.LVL100
	.long	0x3df
	.uleb128 0x20
	.quad	.LVL101
	.long	0x37f
	.long	0x894
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.byte	0
	.uleb128 0x20
	.quad	.LVL102
	.long	0x431
	.long	0x8ab
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL103
	.long	0x321
	.long	0x8e4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.byte	0
	.uleb128 0x21
	.quad	.LVL104
	.long	0x492
	.uleb128 0x20
	.quad	.LVL105
	.long	0x5ca
	.long	0x915
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x20
	.quad	.LVL106
	.long	0x37f
	.long	0x941
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.byte	0
	.uleb128 0x20
	.quad	.LVL107
	.long	0x5ca
	.long	0x965
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x22
	.quad	.LVL109
	.long	0x6e2
	.byte	0
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.byte	0xb6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa67
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0xb8
	.long	0x50
	.long	.LLST32
	.uleb128 0x20
	.quad	.LVL110
	.long	0xbc2
	.long	0x9c6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x20
	.quad	.LVL111
	.long	0xbea
	.long	0x9e5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x20
	.quad	.LVL113
	.long	0xbea
	.long	0xa0a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL116
	.long	0xbea
	.long	0xa29
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x20
	.quad	.LVL117
	.long	0xbc2
	.long	0xa52
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x19
	.quad	.LVL118
	.long	0xc0c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF73
	.byte	0x1
	.byte	0x6a
	.long	0x50
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xae5
	.uleb128 0x24
	.long	.LASF56
	.byte	0x1
	.byte	0x6a
	.long	0x50
	.long	.LLST33
	.uleb128 0x24
	.long	.LASF57
	.byte	0x1
	.byte	0x6a
	.long	0xae5
	.long	.LLST34
	.uleb128 0x21
	.quad	.LVL122
	.long	0xc2a
	.uleb128 0x20
	.quad	.LVL123
	.long	0xc3f
	.long	0xaca
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL124
	.long	0x714
	.uleb128 0x21
	.quad	.LVL125
	.long	0x973
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x9d
	.uleb128 0x25
	.long	.LASF58
	.byte	0x4
	.byte	0xa9
	.long	0x26c
	.uleb128 0x26
	.string	"N"
	.byte	0x1
	.byte	0x5
	.long	0x50
	.uleb128 0x9
	.byte	0x3
	.quad	N
	.uleb128 0x26
	.string	"N4"
	.byte	0x1
	.byte	0x5
	.long	0x50
	.uleb128 0x9
	.byte	0x3
	.quad	N4
	.uleb128 0xc
	.long	0x62
	.long	0xb2e
	.uleb128 0x27
	.long	0x42
	.value	0x27ff
	.byte	0
	.uleb128 0x26
	.string	"a"
	.byte	0x1
	.byte	0x6
	.long	0xb1d
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.byte	0x6
	.long	0xb1d
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0x6
	.long	0xb1d
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0xc
	.long	0x62
	.long	0xb77
	.uleb128 0xd
	.long	0x42
	.byte	0x63
	.byte	0
	.uleb128 0x28
	.long	.LASF59
	.byte	0x1
	.byte	0x7
	.long	0xb67
	.uleb128 0x9
	.byte	0x3
	.quad	string
	.uleb128 0x29
	.long	.LASF60
	.long	0x9b
	.long	0xba9
	.uleb128 0x2a
	.long	0x9b
	.uleb128 0x2a
	.long	0x50
	.uleb128 0x2a
	.long	0x42
	.byte	0
	.uleb128 0x2b
	.long	.LASF61
	.byte	0x6
	.byte	0
	.long	.LASF63
	.long	0x50
	.long	0xbc2
	.uleb128 0x2a
	.long	0x50
	.byte	0
	.uleb128 0x2b
	.long	.LASF62
	.byte	0x6
	.byte	0
	.long	.LASF64
	.long	0x3b
	.long	0xbea
	.uleb128 0x2a
	.long	0x2a6
	.uleb128 0x2a
	.long	0x3b
	.uleb128 0x2a
	.long	0x3b
	.uleb128 0x2a
	.long	0x9b
	.byte	0
	.uleb128 0x2c
	.long	.LASF67
	.byte	0x4
	.value	0x164
	.long	0x50
	.long	0xc06
	.uleb128 0x2a
	.long	0xc06
	.uleb128 0x2a
	.long	0x57
	.uleb128 0x2d
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xa3
	.uleb128 0x2b
	.long	.LASF65
	.byte	0x6
	.byte	0
	.long	.LASF66
	.long	0x50
	.long	0xc2a
	.uleb128 0x2a
	.long	0x50
	.uleb128 0x2a
	.long	0x9b
	.byte	0
	.uleb128 0x2e
	.long	.LASF68
	.byte	0x7
	.byte	0x93
	.long	0x50
	.long	0xc3f
	.uleb128 0x2a
	.long	0x57
	.byte	0
	.uleb128 0x2f
	.long	.LASF74
	.byte	0x4
	.value	0x14c
	.uleb128 0x2a
	.long	0xc06
	.uleb128 0x2a
	.long	0x9d
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL8
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	.LVL8
	.quad	.LFE14
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL4
	.value	0x1
	.byte	0x54
	.quad	.LVL4
	.quad	.LFE14
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1
	.quad	.LVL3
	.value	0x1
	.byte	0x50
	.quad	.LVL3
	.quad	.LVL4
	.value	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.quad	a
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL4
	.quad	.LVL5
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL6
	.value	0x7
	.byte	0x75
	.sleb128 1
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL8
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL15
	.quad	.LVL17
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL12
	.quad	.LVL14
	.value	0x1
	.byte	0x54
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL14
	.quad	.LVL16
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL19
	.quad	.LVL21
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL23
	.quad	.LVL26
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x50
	.quad	.LVL25
	.quad	.LVL26
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL22
	.quad	.LVL24
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL27
	.quad	.LVL28
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28
	.quad	.LVL33
	.value	0x1
	.byte	0x52
	.quad	.LVL33
	.quad	.LVL34
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL35
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x50
	.quad	.LVL31
	.quad	.LVL32
	.value	0x1
	.byte	0x51
	.quad	.LVL32
	.quad	.LVL34
	.value	0xc
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL27
	.quad	.LVL28
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28
	.quad	.LVL29
	.value	0x1
	.byte	0x58
	.quad	.LVL34
	.quad	.LVL35
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL29
	.quad	.LVL34
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL36
	.quad	.LVL38
	.value	0x1
	.byte	0x55
	.quad	.LVL38
	.quad	.LVL51
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL51
	.quad	.LVL52
	.value	0x1
	.byte	0x55
	.quad	.LVL52
	.quad	.LVL53
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL53
	.quad	.LFE3
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL51
	.value	0x1
	.byte	0x52
	.quad	.LVL51
	.quad	.LVL52
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL53
	.quad	.LVL54
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL54
	.quad	.LVL59
	.value	0x1
	.byte	0x52
	.quad	.LVL59
	.quad	.LVL60
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL60
	.quad	.LFE3
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL45
	.value	0x1
	.byte	0x58
	.quad	.LVL48
	.quad	.LVL49
	.value	0x1
	.byte	0x50
	.quad	.LVL49
	.quad	.LVL51
	.value	0x1
	.byte	0x58
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x50
	.quad	.LVL57
	.quad	.LVL58
	.value	0x1
	.byte	0x51
	.quad	.LVL58
	.quad	.LVL60
	.value	0xc
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1
	.byte	0x51
	.quad	.LVL43
	.quad	.LVL46
	.value	0x1
	.byte	0x51
	.quad	.LVL50
	.quad	.LVL51
	.value	0x1
	.byte	0x51
	.quad	.LVL51
	.quad	.LVL52
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL53
	.quad	.LVL54
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x58
	.quad	.LVL60
	.quad	.LFE3
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL40
	.quad	.LVL43
	.value	0x1
	.byte	0x59
	.quad	.LVL55
	.quad	.LVL60
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL47
	.quad	.LVL51
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL61
	.quad	.LVL64
	.value	0x1
	.byte	0x55
	.quad	.LVL64
	.quad	.LVL71
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	.LVL71
	.quad	.LFE4
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL62
	.quad	.LVL63
	.value	0x1
	.byte	0x52
	.quad	.LVL63
	.quad	.LVL65
	.value	0x9
	.byte	0x3
	.quad	N4
	.quad	.LVL65
	.quad	.LVL66
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL67
	.quad	.LVL70
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL61
	.quad	.LVL65
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL68
	.value	0x1
	.byte	0x51
	.quad	.LVL69
	.quad	.LVL71
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL72
	.quad	.LVL74-1
	.value	0x1
	.byte	0x55
	.quad	.LVL74-1
	.quad	.LVL75
	.value	0x1
	.byte	0x53
	.quad	.LVL75
	.quad	.LFE5
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL72
	.quad	.LVL73
	.value	0x1
	.byte	0x54
	.quad	.LVL73
	.quad	.LVL76
	.value	0x1
	.byte	0x56
	.quad	.LVL76
	.quad	.LFE5
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL77
	.quad	.LVL79
	.value	0x1
	.byte	0x55
	.quad	.LVL79
	.quad	.LFE6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL77
	.quad	.LVL80
	.value	0x1
	.byte	0x54
	.quad	.LVL80
	.quad	.LVL86
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	.LVL86
	.quad	.LFE6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL77
	.quad	.LVL82
	.value	0x1
	.byte	0x51
	.quad	.LVL82
	.quad	.LFE6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL78
	.quad	.LVL81
	.value	0x1
	.byte	0x50
	.quad	.LVL81
	.quad	.LVL82
	.value	0x9
	.byte	0x3
	.quad	N4
	.quad	.LVL82
	.quad	.LVL83
	.value	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL84
	.value	0x7
	.byte	0x74
	.sleb128 1
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL86
	.value	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL90
	.quad	.LVL92
	.value	0x1
	.byte	0x53
	.quad	.LVL92
	.quad	.LVL93-1
	.value	0x1
	.byte	0x54
	.quad	.LVL93-1
	.quad	.LVL99
	.value	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL108
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL110
	.quad	.LVL112
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL112
	.quad	.LVL114
	.value	0x1
	.byte	0x53
	.quad	.LVL115
	.quad	.LVL119
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL120
	.quad	.LVL121
	.value	0x1
	.byte	0x55
	.quad	.LVL121
	.quad	.LFE7
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL120
	.quad	.LVL122-1
	.value	0x1
	.byte	0x54
	.quad	.LVL122-1
	.quad	.LFE7
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB7
	.quad	.LFE7
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF49:
	.string	"DIVIDE"
.LASF9:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF59:
	.string	"string"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF47:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF62:
	.string	"__builtin_fwrite"
.LASF27:
	.string	"_fileno"
.LASF65:
	.string	"__builtin_fputc"
.LASF15:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF55:
	.string	"epilog"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF63:
	.string	"putchar"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF71:
	.string	"/home2/users/alumnes/1185377/dades/Q6/PCA/lab/sessio4/pi"
.LASF43:
	.string	"_IO_marker"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"SUBTRACT"
.LASF67:
	.string	"fprintf"
.LASF1:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF61:
	.string	"__builtin_putchar"
.LASF45:
	.string	"_sbuf"
.LASF3:
	.string	"short unsigned int"
.LASF70:
	.string	"pi.c"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF58:
	.string	"stdout"
.LASF2:
	.string	"sizetype"
.LASF19:
	.string	"_IO_write_end"
.LASF66:
	.string	"fputc"
.LASF72:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF74:
	.string	"setbuf"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF68:
	.string	"atoi"
.LASF5:
	.string	"unsigned char"
.LASF53:
	.string	"progress"
.LASF7:
	.string	"short int"
.LASF54:
	.string	"calculate"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF52:
	.string	"MULTIPLY"
.LASF4:
	.string	"char"
.LASF44:
	.string	"_next"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF57:
	.string	"argv"
.LASF60:
	.string	"memset"
.LASF23:
	.string	"_IO_backup_base"
.LASF51:
	.string	"LONGDIV"
.LASF64:
	.string	"fwrite"
.LASF69:
	.string	"GNU C 4.8.3 20140627 [gcc-4_8-branch revision 212064] -mtune=generic -march=x86-64 -g -O3 -fno-inline"
.LASF56:
	.string	"argc"
.LASF73:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (SUSE Linux) 4.8.3 20140627 [gcc-4_8-branch revision 212064]"
	.section	.note.GNU-stack,"",@progbits
