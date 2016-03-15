   1              		.file	"trigon-opt.c"
   2              	# GNU C (SUSE Linux) version 4.8.3 20140627 [gcc-4_8-branch revision 212064] (x86_64-suse-linux)
   3              	#	compiled by GNU C version 4.8.3 20140627 [gcc-4_8-branch revision 212064], GMP version 5.1.3, MPF
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  trigon-opt.c -mtune=generic -march=x86-64
   6              	# -auxbase-strip trigon-opt.s -g -O3 -fverbose-asm
   7              	# options enabled:  -faggressive-loop-optimizations
   8              	# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
   9              	# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
  10              	# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
  11              	# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
  12              	# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
  13              	# -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
  14              	# -fgnu-runtime -fgnu-unique -fguess-branch-probability
  15              	# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
  16              	# -findirect-inlining -finline -finline-atomics -finline-functions
  17              	# -finline-functions-called-once -finline-small-functions -fipa-cp
  18              	# -fipa-cp-clone -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
  19              	# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
  20              	# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
  21              	# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
  22              	# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
  23              	# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
  24              	# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
  25              	# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
  26              	# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
  27              	# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
  28              	# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
  29              	# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
  30              	# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
  31              	# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
  32              	# -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
  33              	# -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
  34              	# -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim
  35              	# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
  36              	# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
  37              	# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
  38              	# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
  39              	# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
  40              	# -ftree-switch-conversion -ftree-tail-merge -ftree-ter
  41              	# -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
  42              	# -funswitch-loops -funwind-tables -fvar-tracking
  43              	# -fvar-tracking-assignments -fvect-cost-model -fverbose-asm
  44              	# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
  45              	# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
  46              	# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
  47              	# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs
  48              	
  49              		.text
  50              	.Ltext0:
  51              		.section	.rodata.str1.1,"aMS",@progbits,1
  52              	.LC2:
  53 0000 256C6625 		.string	"%lf%lf"
  53      6C6600
  54              		.section	.text.startup,"ax",@progbits
  55              		.p2align 4,,15
  56              		.globl	main
  58              	main:
  59              	.LFB36:
  60              		.file 1 "trigon-opt.c"
   1:trigon-opt.c  **** #include <math.h>
   2:trigon-opt.c  **** #include <stdio.h>
   3:trigon-opt.c  **** #include <unistd.h>
   4:trigon-opt.c  **** #include <string.h>
   5:trigon-opt.c  **** #include <stdlib.h>
   6:trigon-opt.c  **** 
   7:trigon-opt.c  **** #define N 6000
   8:trigon-opt.c  **** #define PUNTS 1000
   9:trigon-opt.c  **** 
  10:trigon-opt.c  **** int main(int argc, char *argv[])
  11:trigon-opt.c  **** {
  61              		.loc 1 11 0
  62              		.cfi_startproc
  63              	.LVL0:
  64 0000 4155     		pushq	%r13	#
  65              		.cfi_def_cfa_offset 16
  66              		.cfi_offset 13, -16
  67 0002 4154     		pushq	%r12	#
  68              		.cfi_def_cfa_offset 24
  69              		.cfi_offset 12, -24
  70 0004 55       		pushq	%rbp	#
  71              		.cfi_def_cfa_offset 32
  72              		.cfi_offset 6, -32
  73 0005 53       		pushq	%rbx	#
  74              		.cfi_def_cfa_offset 40
  75              		.cfi_offset 3, -40
  76 0006 4881ECA8 		subq	$16040, %rsp	#,
  76      3E0000
  77              		.cfi_def_cfa_offset 16080
  12:trigon-opt.c  ****     unsigned int i, r, j, n;
  13:trigon-opt.c  ****     double d, x, y;
  14:trigon-opt.c  ****     char buffer[sizeof(x)*PUNTS*2];
  15:trigon-opt.c  **** 
  16:trigon-opt.c  ****     if (argc == 1) n = N; else n = atoi(argv[1]);
  78              		.loc 1 16 0
  79 000d 83FF01   		cmpl	$1, %edi	#, argc
  80 0010 0F84E500 		je	.L2	#,
  80      0000
  81              	.LVL1:
  82              	.LBB4:
  83              	.LBB5:
  84              		.file 2 "/usr/include/stdlib.h"
   1:/usr/include/stdlib.h **** /* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   2:/usr/include/stdlib.h ****    This file is part of the GNU C Library.
   3:/usr/include/stdlib.h **** 
   4:/usr/include/stdlib.h ****    The GNU C Library is free software; you can redistribute it and/or
   5:/usr/include/stdlib.h ****    modify it under the terms of the GNU Lesser General Public
   6:/usr/include/stdlib.h ****    License as published by the Free Software Foundation; either
   7:/usr/include/stdlib.h ****    version 2.1 of the License, or (at your option) any later version.
   8:/usr/include/stdlib.h **** 
   9:/usr/include/stdlib.h ****    The GNU C Library is distributed in the hope that it will be useful,
  10:/usr/include/stdlib.h ****    but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:/usr/include/stdlib.h ****    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  12:/usr/include/stdlib.h ****    Lesser General Public License for more details.
  13:/usr/include/stdlib.h **** 
  14:/usr/include/stdlib.h ****    You should have received a copy of the GNU Lesser General Public
  15:/usr/include/stdlib.h ****    License along with the GNU C Library; if not, see
  16:/usr/include/stdlib.h ****    <http://www.gnu.org/licenses/>.  */
  17:/usr/include/stdlib.h **** 
  18:/usr/include/stdlib.h **** /*
  19:/usr/include/stdlib.h ****  *	ISO C99 Standard: 7.20 General utilities	<stdlib.h>
  20:/usr/include/stdlib.h ****  */
  21:/usr/include/stdlib.h **** 
  22:/usr/include/stdlib.h **** #ifndef	_STDLIB_H
  23:/usr/include/stdlib.h **** 
  24:/usr/include/stdlib.h **** #include <features.h>
  25:/usr/include/stdlib.h **** 
  26:/usr/include/stdlib.h **** /* Get size_t, wchar_t and NULL from <stddef.h>.  */
  27:/usr/include/stdlib.h **** #define		__need_size_t
  28:/usr/include/stdlib.h **** #ifndef __need_malloc_and_calloc
  29:/usr/include/stdlib.h **** # define	__need_wchar_t
  30:/usr/include/stdlib.h **** # define	__need_NULL
  31:/usr/include/stdlib.h **** #endif
  32:/usr/include/stdlib.h **** #include <stddef.h>
  33:/usr/include/stdlib.h **** 
  34:/usr/include/stdlib.h **** __BEGIN_DECLS
  35:/usr/include/stdlib.h **** 
  36:/usr/include/stdlib.h **** #ifndef __need_malloc_and_calloc
  37:/usr/include/stdlib.h **** #define	_STDLIB_H	1
  38:/usr/include/stdlib.h **** 
  39:/usr/include/stdlib.h **** #if (defined __USE_XOPEN || defined __USE_XOPEN2K8) && !defined _SYS_WAIT_H
  40:/usr/include/stdlib.h **** /* XPG requires a few symbols from <sys/wait.h> being defined.  */
  41:/usr/include/stdlib.h **** # include <bits/waitflags.h>
  42:/usr/include/stdlib.h **** # include <bits/waitstatus.h>
  43:/usr/include/stdlib.h **** 
  44:/usr/include/stdlib.h **** # ifdef __USE_BSD
  45:/usr/include/stdlib.h **** 
  46:/usr/include/stdlib.h **** /* Lots of hair to allow traditional BSD use of `union wait'
  47:/usr/include/stdlib.h ****    as well as POSIX.1 use of `int' for the status word.  */
  48:/usr/include/stdlib.h **** 
  49:/usr/include/stdlib.h **** #  if defined __GNUC__ && !defined __cplusplus
  50:/usr/include/stdlib.h **** #   define __WAIT_INT(status) \
  51:/usr/include/stdlib.h ****   (__extension__ (((union { __typeof(status) __in; int __i; }) \
  52:/usr/include/stdlib.h **** 		   { .__in = (status) }).__i))
  53:/usr/include/stdlib.h **** #  else
  54:/usr/include/stdlib.h **** #   define __WAIT_INT(status)	(*(int *) &(status))
  55:/usr/include/stdlib.h **** #  endif
  56:/usr/include/stdlib.h **** 
  57:/usr/include/stdlib.h **** /* This is the type of the argument to `wait'.  The funky union
  58:/usr/include/stdlib.h ****    causes redeclarations with either `int *' or `union wait *' to be
  59:/usr/include/stdlib.h ****    allowed without complaint.  __WAIT_STATUS_DEFN is the type used in
  60:/usr/include/stdlib.h ****    the actual function definitions.  */
  61:/usr/include/stdlib.h **** 
  62:/usr/include/stdlib.h **** #  if !defined __GNUC__ || __GNUC__ < 2 || defined __cplusplus
  63:/usr/include/stdlib.h **** #   define __WAIT_STATUS	void *
  64:/usr/include/stdlib.h **** #   define __WAIT_STATUS_DEFN	void *
  65:/usr/include/stdlib.h **** #  else
  66:/usr/include/stdlib.h **** /* This works in GCC 2.6.1 and later.  */
  67:/usr/include/stdlib.h **** typedef union
  68:/usr/include/stdlib.h ****   {
  69:/usr/include/stdlib.h ****     union wait *__uptr;
  70:/usr/include/stdlib.h ****     int *__iptr;
  71:/usr/include/stdlib.h ****   } __WAIT_STATUS __attribute__ ((__transparent_union__));
  72:/usr/include/stdlib.h **** #   define __WAIT_STATUS_DEFN	int *
  73:/usr/include/stdlib.h **** #  endif
  74:/usr/include/stdlib.h **** 
  75:/usr/include/stdlib.h **** # else /* Don't use BSD.  */
  76:/usr/include/stdlib.h **** 
  77:/usr/include/stdlib.h **** #  define __WAIT_INT(status)	(status)
  78:/usr/include/stdlib.h **** #  define __WAIT_STATUS		int *
  79:/usr/include/stdlib.h **** #  define __WAIT_STATUS_DEFN	int *
  80:/usr/include/stdlib.h **** 
  81:/usr/include/stdlib.h **** # endif /* Use BSD.  */
  82:/usr/include/stdlib.h **** 
  83:/usr/include/stdlib.h **** /* Define the macros <sys/wait.h> also would define this way.  */
  84:/usr/include/stdlib.h **** # define WEXITSTATUS(status)	__WEXITSTATUS (__WAIT_INT (status))
  85:/usr/include/stdlib.h **** # define WTERMSIG(status)	__WTERMSIG (__WAIT_INT (status))
  86:/usr/include/stdlib.h **** # define WSTOPSIG(status)	__WSTOPSIG (__WAIT_INT (status))
  87:/usr/include/stdlib.h **** # define WIFEXITED(status)	__WIFEXITED (__WAIT_INT (status))
  88:/usr/include/stdlib.h **** # define WIFSIGNALED(status)	__WIFSIGNALED (__WAIT_INT (status))
  89:/usr/include/stdlib.h **** # define WIFSTOPPED(status)	__WIFSTOPPED (__WAIT_INT (status))
  90:/usr/include/stdlib.h **** # ifdef __WIFCONTINUED
  91:/usr/include/stdlib.h **** #  define WIFCONTINUED(status)	__WIFCONTINUED (__WAIT_INT (status))
  92:/usr/include/stdlib.h **** # endif
  93:/usr/include/stdlib.h **** #endif	/* X/Open or XPG7 and <sys/wait.h> not included.  */
  94:/usr/include/stdlib.h **** 
  95:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_STD
  96:/usr/include/stdlib.h **** /* Returned by `div'.  */
  97:/usr/include/stdlib.h **** typedef struct
  98:/usr/include/stdlib.h ****   {
  99:/usr/include/stdlib.h ****     int quot;			/* Quotient.  */
 100:/usr/include/stdlib.h ****     int rem;			/* Remainder.  */
 101:/usr/include/stdlib.h ****   } div_t;
 102:/usr/include/stdlib.h **** 
 103:/usr/include/stdlib.h **** /* Returned by `ldiv'.  */
 104:/usr/include/stdlib.h **** #ifndef __ldiv_t_defined
 105:/usr/include/stdlib.h **** typedef struct
 106:/usr/include/stdlib.h ****   {
 107:/usr/include/stdlib.h ****     long int quot;		/* Quotient.  */
 108:/usr/include/stdlib.h ****     long int rem;		/* Remainder.  */
 109:/usr/include/stdlib.h ****   } ldiv_t;
 110:/usr/include/stdlib.h **** # define __ldiv_t_defined	1
 111:/usr/include/stdlib.h **** #endif
 112:/usr/include/stdlib.h **** __END_NAMESPACE_STD
 113:/usr/include/stdlib.h **** 
 114:/usr/include/stdlib.h **** #if defined __USE_ISOC99 && !defined __lldiv_t_defined
 115:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_C99
 116:/usr/include/stdlib.h **** /* Returned by `lldiv'.  */
 117:/usr/include/stdlib.h **** __extension__ typedef struct
 118:/usr/include/stdlib.h ****   {
 119:/usr/include/stdlib.h ****     long long int quot;		/* Quotient.  */
 120:/usr/include/stdlib.h ****     long long int rem;		/* Remainder.  */
 121:/usr/include/stdlib.h ****   } lldiv_t;
 122:/usr/include/stdlib.h **** # define __lldiv_t_defined	1
 123:/usr/include/stdlib.h **** __END_NAMESPACE_C99
 124:/usr/include/stdlib.h **** #endif
 125:/usr/include/stdlib.h **** 
 126:/usr/include/stdlib.h **** 
 127:/usr/include/stdlib.h **** /* The largest number rand will return (same as INT_MAX).  */
 128:/usr/include/stdlib.h **** #define	RAND_MAX	2147483647
 129:/usr/include/stdlib.h **** 
 130:/usr/include/stdlib.h **** 
 131:/usr/include/stdlib.h **** /* We define these the same for all machines.
 132:/usr/include/stdlib.h ****    Changes from this to the outside world should be done in `_exit'.  */
 133:/usr/include/stdlib.h **** #define	EXIT_FAILURE	1	/* Failing exit status.  */
 134:/usr/include/stdlib.h **** #define	EXIT_SUCCESS	0	/* Successful exit status.  */
 135:/usr/include/stdlib.h **** 
 136:/usr/include/stdlib.h **** 
 137:/usr/include/stdlib.h **** /* Maximum length of a multibyte character in the current locale.  */
 138:/usr/include/stdlib.h **** #define	MB_CUR_MAX	(__ctype_get_mb_cur_max ())
 139:/usr/include/stdlib.h **** extern size_t __ctype_get_mb_cur_max (void) __THROW __wur;
 140:/usr/include/stdlib.h **** 
 141:/usr/include/stdlib.h **** 
 142:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_STD
 143:/usr/include/stdlib.h **** /* Convert a string to a floating-point number.  */
 144:/usr/include/stdlib.h **** extern double atof (const char *__nptr)
 145:/usr/include/stdlib.h ****      __THROW __attribute_pure__ __nonnull ((1)) __wur;
 146:/usr/include/stdlib.h **** /* Convert a string to an integer.  */
 147:/usr/include/stdlib.h **** extern int atoi (const char *__nptr)
 148:/usr/include/stdlib.h ****      __THROW __attribute_pure__ __nonnull ((1)) __wur;
 149:/usr/include/stdlib.h **** /* Convert a string to a long integer.  */
 150:/usr/include/stdlib.h **** extern long int atol (const char *__nptr)
 151:/usr/include/stdlib.h ****      __THROW __attribute_pure__ __nonnull ((1)) __wur;
 152:/usr/include/stdlib.h **** __END_NAMESPACE_STD
 153:/usr/include/stdlib.h **** 
 154:/usr/include/stdlib.h **** #if defined __USE_ISOC99 || defined __USE_MISC
 155:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_C99
 156:/usr/include/stdlib.h **** /* Convert a string to a long long integer.  */
 157:/usr/include/stdlib.h **** __extension__ extern long long int atoll (const char *__nptr)
 158:/usr/include/stdlib.h ****      __THROW __attribute_pure__ __nonnull ((1)) __wur;
 159:/usr/include/stdlib.h **** __END_NAMESPACE_C99
 160:/usr/include/stdlib.h **** #endif
 161:/usr/include/stdlib.h **** 
 162:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_STD
 163:/usr/include/stdlib.h **** /* Convert a string to a floating-point number.  */
 164:/usr/include/stdlib.h **** extern double strtod (const char *__restrict __nptr,
 165:/usr/include/stdlib.h **** 		      char **__restrict __endptr)
 166:/usr/include/stdlib.h ****      __THROW __nonnull ((1));
 167:/usr/include/stdlib.h **** __END_NAMESPACE_STD
 168:/usr/include/stdlib.h **** 
 169:/usr/include/stdlib.h **** #ifdef	__USE_ISOC99
 170:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_C99
 171:/usr/include/stdlib.h **** /* Likewise for `float' and `long double' sizes of floating-point numbers.  */
 172:/usr/include/stdlib.h **** extern float strtof (const char *__restrict __nptr,
 173:/usr/include/stdlib.h **** 		     char **__restrict __endptr) __THROW __nonnull ((1));
 174:/usr/include/stdlib.h **** 
 175:/usr/include/stdlib.h **** extern long double strtold (const char *__restrict __nptr,
 176:/usr/include/stdlib.h **** 			    char **__restrict __endptr)
 177:/usr/include/stdlib.h ****      __THROW __nonnull ((1));
 178:/usr/include/stdlib.h **** __END_NAMESPACE_C99
 179:/usr/include/stdlib.h **** #endif
 180:/usr/include/stdlib.h **** 
 181:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_STD
 182:/usr/include/stdlib.h **** /* Convert a string to a long integer.  */
 183:/usr/include/stdlib.h **** extern long int strtol (const char *__restrict __nptr,
 184:/usr/include/stdlib.h **** 			char **__restrict __endptr, int __base)
 185:/usr/include/stdlib.h ****      __THROW __nonnull ((1));
 186:/usr/include/stdlib.h **** /* Convert a string to an unsigned long integer.  */
 187:/usr/include/stdlib.h **** extern unsigned long int strtoul (const char *__restrict __nptr,
 188:/usr/include/stdlib.h **** 				  char **__restrict __endptr, int __base)
 189:/usr/include/stdlib.h ****      __THROW __nonnull ((1));
 190:/usr/include/stdlib.h **** __END_NAMESPACE_STD
 191:/usr/include/stdlib.h **** 
 192:/usr/include/stdlib.h **** #ifdef __USE_BSD
 193:/usr/include/stdlib.h **** /* Convert a string to a quadword integer.  */
 194:/usr/include/stdlib.h **** __extension__
 195:/usr/include/stdlib.h **** extern long long int strtoq (const char *__restrict __nptr,
 196:/usr/include/stdlib.h **** 			     char **__restrict __endptr, int __base)
 197:/usr/include/stdlib.h ****      __THROW __nonnull ((1));
 198:/usr/include/stdlib.h **** /* Convert a string to an unsigned quadword integer.  */
 199:/usr/include/stdlib.h **** __extension__
 200:/usr/include/stdlib.h **** extern unsigned long long int strtouq (const char *__restrict __nptr,
 201:/usr/include/stdlib.h **** 				       char **__restrict __endptr, int __base)
 202:/usr/include/stdlib.h ****      __THROW __nonnull ((1));
 203:/usr/include/stdlib.h **** #endif /* Use BSD.  */
 204:/usr/include/stdlib.h **** 
 205:/usr/include/stdlib.h **** #if defined __USE_ISOC99 || defined __USE_MISC
 206:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_C99
 207:/usr/include/stdlib.h **** /* Convert a string to a quadword integer.  */
 208:/usr/include/stdlib.h **** __extension__
 209:/usr/include/stdlib.h **** extern long long int strtoll (const char *__restrict __nptr,
 210:/usr/include/stdlib.h **** 			      char **__restrict __endptr, int __base)
 211:/usr/include/stdlib.h ****      __THROW __nonnull ((1));
 212:/usr/include/stdlib.h **** /* Convert a string to an unsigned quadword integer.  */
 213:/usr/include/stdlib.h **** __extension__
 214:/usr/include/stdlib.h **** extern unsigned long long int strtoull (const char *__restrict __nptr,
 215:/usr/include/stdlib.h **** 					char **__restrict __endptr, int __base)
 216:/usr/include/stdlib.h ****      __THROW __nonnull ((1));
 217:/usr/include/stdlib.h **** __END_NAMESPACE_C99
 218:/usr/include/stdlib.h **** #endif /* ISO C99 or use MISC.  */
 219:/usr/include/stdlib.h **** 
 220:/usr/include/stdlib.h **** 
 221:/usr/include/stdlib.h **** #ifdef __USE_GNU
 222:/usr/include/stdlib.h **** /* The concept of one static locale per category is not very well
 223:/usr/include/stdlib.h ****    thought out.  Many applications will need to process its data using
 224:/usr/include/stdlib.h ****    information from several different locales.  Another problem is
 225:/usr/include/stdlib.h ****    the implementation of the internationalization handling in the
 226:/usr/include/stdlib.h ****    ISO C++ standard library.  To support this another set of
 227:/usr/include/stdlib.h ****    the functions using locale data exist which take an additional
 228:/usr/include/stdlib.h ****    argument.
 229:/usr/include/stdlib.h **** 
 230:/usr/include/stdlib.h ****    Attention: even though several *_l interfaces are part of POSIX:2008,
 231:/usr/include/stdlib.h ****    these are not.  */
 232:/usr/include/stdlib.h **** 
 233:/usr/include/stdlib.h **** /* Structure for reentrant locale using functions.  This is an
 234:/usr/include/stdlib.h ****    (almost) opaque type for the user level programs.  */
 235:/usr/include/stdlib.h **** # include <xlocale.h>
 236:/usr/include/stdlib.h **** 
 237:/usr/include/stdlib.h **** /* Special versions of the functions above which take the locale to
 238:/usr/include/stdlib.h ****    use as an additional parameter.  */
 239:/usr/include/stdlib.h **** extern long int strtol_l (const char *__restrict __nptr,
 240:/usr/include/stdlib.h **** 			  char **__restrict __endptr, int __base,
 241:/usr/include/stdlib.h **** 			  __locale_t __loc) __THROW __nonnull ((1, 4));
 242:/usr/include/stdlib.h **** 
 243:/usr/include/stdlib.h **** extern unsigned long int strtoul_l (const char *__restrict __nptr,
 244:/usr/include/stdlib.h **** 				    char **__restrict __endptr,
 245:/usr/include/stdlib.h **** 				    int __base, __locale_t __loc)
 246:/usr/include/stdlib.h ****      __THROW __nonnull ((1, 4));
 247:/usr/include/stdlib.h **** 
 248:/usr/include/stdlib.h **** __extension__
 249:/usr/include/stdlib.h **** extern long long int strtoll_l (const char *__restrict __nptr,
 250:/usr/include/stdlib.h **** 				char **__restrict __endptr, int __base,
 251:/usr/include/stdlib.h **** 				__locale_t __loc)
 252:/usr/include/stdlib.h ****      __THROW __nonnull ((1, 4));
 253:/usr/include/stdlib.h **** 
 254:/usr/include/stdlib.h **** __extension__
 255:/usr/include/stdlib.h **** extern unsigned long long int strtoull_l (const char *__restrict __nptr,
 256:/usr/include/stdlib.h **** 					  char **__restrict __endptr,
 257:/usr/include/stdlib.h **** 					  int __base, __locale_t __loc)
 258:/usr/include/stdlib.h ****      __THROW __nonnull ((1, 4));
 259:/usr/include/stdlib.h **** 
 260:/usr/include/stdlib.h **** extern double strtod_l (const char *__restrict __nptr,
 261:/usr/include/stdlib.h **** 			char **__restrict __endptr, __locale_t __loc)
 262:/usr/include/stdlib.h ****      __THROW __nonnull ((1, 3));
 263:/usr/include/stdlib.h **** 
 264:/usr/include/stdlib.h **** extern float strtof_l (const char *__restrict __nptr,
 265:/usr/include/stdlib.h **** 		       char **__restrict __endptr, __locale_t __loc)
 266:/usr/include/stdlib.h ****      __THROW __nonnull ((1, 3));
 267:/usr/include/stdlib.h **** 
 268:/usr/include/stdlib.h **** extern long double strtold_l (const char *__restrict __nptr,
 269:/usr/include/stdlib.h **** 			      char **__restrict __endptr,
 270:/usr/include/stdlib.h **** 			      __locale_t __loc)
 271:/usr/include/stdlib.h ****      __THROW __nonnull ((1, 3));
 272:/usr/include/stdlib.h **** #endif /* GNU */
 273:/usr/include/stdlib.h **** 
 274:/usr/include/stdlib.h **** 
 275:/usr/include/stdlib.h **** #ifdef __USE_EXTERN_INLINES
 276:/usr/include/stdlib.h **** __BEGIN_NAMESPACE_STD
 277:/usr/include/stdlib.h **** __extern_inline int
 278:/usr/include/stdlib.h **** __NTH (atoi (const char *__nptr))
 279:/usr/include/stdlib.h **** {
 280:/usr/include/stdlib.h ****   return (int) strtol (__nptr, (char **) NULL, 10);
  85              		.loc 2 280 0 discriminator 2
  86 0016 488B7E08 		movq	8(%rsi), %rdi	# MEM[(char * *)argv_8(D) + 8B], MEM[(char * *)argv_8(D) + 8B]
  87              	.LVL2:
  88 001a BA0A0000 		movl	$10, %edx	#,
  88      00
  89 001f 31F6     		xorl	%esi, %esi	#
  90              	.LVL3:
  91 0021 E8000000 		call	strtol	#
  91      00
  92              	.LVL4:
  93              	.LBE5:
  94              	.LBE4:
  17:trigon-opt.c  **** 
  18:trigon-opt.c  ****     srand(0);
  95              		.loc 1 18 0 discriminator 2
  96 0026 31FF     		xorl	%edi, %edi	#
  97              	.LBB7:
  98              	.LBB6:
  99              		.loc 2 280 0 discriminator 2
 100 0028 4889C3   		movq	%rax, %rbx	#, D.4810
 101              	.LBE6:
 102              	.LBE7:
  16:trigon-opt.c  **** 
 103              		.loc 1 16 0 discriminator 2
 104 002b 4189C5   		movl	%eax, %r13d	# D.4810, n
 105              	.LVL5:
 106              		.loc 1 18 0 discriminator 2
 107 002e E8000000 		call	srand	#
 107      00
 108              	.LVL6:
  19:trigon-opt.c  ****     for (i=0; i<n; i++)
 109              		.loc 1 19 0 discriminator 2
 110 0033 85DB     		testl	%ebx, %ebx	# D.4810
 111 0035 0F84B000 		je	.L10	#,
 111      0000
 112              	.LVL7:
 113              	.L3:
  20:trigon-opt.c  ****     {
  21:trigon-opt.c  **** 
  22:trigon-opt.c  ****         for (j=0, d=0; j<2*PUNTS*sizeof(double); j += 2*sizeof(double))
  23:trigon-opt.c  ****         {
  24:trigon-opt.c  ****             x = r*cos(d); y = r*sin(d);
 114              		.loc 1 24 0 discriminator 1
 115 003b 31C0     		xorl	%eax, %eax	# r
  11:trigon-opt.c  ****     unsigned int i, r, j, n;
 116              		.loc 1 11 0 discriminator 1
 117 003d 4531E4   		xorl	%r12d, %r12d	# i
 118              		.loc 1 24 0 discriminator 1
 119 0040 F2480F2A 		cvtsi2sdq	%rax, %xmm4	# r, D.4809
 119      E0
 120 0045 F20F1164 		movsd	%xmm4, 8(%rsp)	# D.4809, %sfp
 120      2408
 121              	.LVL8:
 122 004b 0F1F4400 		.p2align 4,,10
 122      00
 123              		.p2align 3
 124              	.L9:
  11:trigon-opt.c  ****     unsigned int i, r, j, n;
 125              		.loc 1 11 0 discriminator 1
 126 0050 660F57C9 		xorpd	%xmm1, %xmm1	# D.4811
 127 0054 488D5C24 		leaq	32(%rsp), %rbx	#, tmp109
 127      20
 128 0059 488DAC24 		leaq	16032(%rsp), %rbp	#, D.4808
 128      A03E0000 
 129 0061 F20F1005 		movsd	.LC0(%rip), %xmm0	#, D.4811
 129      00000000 
 130 0069 F20F110C 		movsd	%xmm1, (%rsp)	#, %sfp
 130      24
 131 006e EB1F     		jmp	.L8	#
 132              	.LVL9:
 133              		.p2align 4,,10
 134              		.p2align 3
 135              	.L7:
 136 0070 660F28C2 		movapd	%xmm2, %xmm0	# d,
 137 0074 488D7424 		leaq	16(%rsp), %rsi	#,
 137      10
 138 0079 488D7C24 		leaq	24(%rsp), %rdi	#, tmp106
 138      18
 139 007e E8000000 		call	sincos	#
 139      00
 140              	.LVL10:
 141 0083 F20F1044 		movsd	16(%rsp), %xmm0	#, D.4811
 141      2410
 142 0089 F20F104C 		movsd	24(%rsp), %xmm1	#, D.4811
 142      2418
 143              	.LVL11:
 144              	.L8:
 145              		.loc 1 24 0 discriminator 2
 146 008f F20F105C 		movsd	8(%rsp), %xmm3	# %sfp, D.4809
 146      2408
  25:trigon-opt.c  ****             sprintf(&buffer[j], "%lf%lf", x, y); 
 147              		.loc 1 25 0 discriminator 2
 148 0095 4889DF   		movq	%rbx, %rdi	# ivtmp.18,
 149 0098 BE000000 		movl	$.LC2, %esi	#,
 149      00
 150 009d B8020000 		movl	$2, %eax	#,
 150      00
 151 00a2 4883C310 		addq	$16, %rbx	#, ivtmp.18
 152              	.LVL12:
  24:trigon-opt.c  ****             sprintf(&buffer[j], "%lf%lf", x, y); 
 153              		.loc 1 24 0 discriminator 2
 154 00a6 F20F59C3 		mulsd	%xmm3, %xmm0	# D.4809, x
 155              	.LVL13:
 156              		.loc 1 25 0 discriminator 2
 157 00aa F20F59CB 		mulsd	%xmm3, %xmm1	# D.4809,
 158              	.LVL14:
 159 00ae E8000000 		call	sprintf	#
 159      00
 160              	.LVL15:
  26:trigon-opt.c  ****             d += 2*M_PI/PUNTS;
 161              		.loc 1 26 0 discriminator 2
 162 00b3 F20F1015 		movsd	.LC3(%rip), %xmm2	#, d
 162      00000000 
  22:trigon-opt.c  ****         {
 163              		.loc 1 22 0 discriminator 2
 164 00bb 4839EB   		cmpq	%rbp, %rbx	# D.4808, ivtmp.18
 165              		.loc 1 26 0 discriminator 2
 166 00be F20F5814 		addsd	(%rsp), %xmm2	# %sfp, d
 166      24
 167 00c3 F20F1114 		movsd	%xmm2, (%rsp)	# d, %sfp
 167      24
 168              	.LVL16:
  22:trigon-opt.c  ****         {
 169              		.loc 1 22 0 discriminator 2
 170 00c8 75A6     		jne	.L7	#,
  27:trigon-opt.c  ****         }
  28:trigon-opt.c  **** 
  29:trigon-opt.c  ****         write(1, buffer, sizeof(buffer));
 171              		.loc 1 29 0
 172 00ca 488D7424 		leaq	32(%rsp), %rsi	#, tmp108
 172      20
 173 00cf BA803E00 		movl	$16000, %edx	#,
 173      00
 174 00d4 BF010000 		movl	$1, %edi	#,
 174      00
  19:trigon-opt.c  ****     {
 175              		.loc 1 19 0
 176 00d9 4183C401 		addl	$1, %r12d	#, i
 177              	.LVL17:
 178              		.loc 1 29 0
 179 00dd E8000000 		call	write	#
 179      00
 180              	.LVL18:
  19:trigon-opt.c  ****     {
 181              		.loc 1 19 0
 182 00e2 4539E5   		cmpl	%r12d, %r13d	# i, n
 183 00e5 0F8765FF 		ja	.L9	#,
 183      FFFF
 184              	.LVL19:
 185              	.L10:
  30:trigon-opt.c  ****     }
  31:trigon-opt.c  ****     return 0;
  32:trigon-opt.c  **** }
 186              		.loc 1 32 0
 187 00eb 4881C4A8 		addq	$16040, %rsp	#,
 187      3E0000
 188              		.cfi_remember_state
 189              		.cfi_def_cfa_offset 40
 190 00f2 31C0     		xorl	%eax, %eax	#
 191 00f4 5B       		popq	%rbx	#
 192              		.cfi_def_cfa_offset 32
 193 00f5 5D       		popq	%rbp	#
 194              		.cfi_def_cfa_offset 24
 195 00f6 415C     		popq	%r12	#
 196              		.cfi_def_cfa_offset 16
 197 00f8 415D     		popq	%r13	#
 198              		.cfi_def_cfa_offset 8
 199 00fa C3       		ret
 200              	.LVL20:
 201              	.L2:
 202              		.cfi_restore_state
  18:trigon-opt.c  ****     for (i=0; i<n; i++)
 203              		.loc 1 18 0
 204 00fb 31FF     		xorl	%edi, %edi	#
 205              	.LVL21:
  16:trigon-opt.c  **** 
 206              		.loc 1 16 0
 207 00fd 41BD7017 		movl	$6000, %r13d	#, n
 207      0000
  18:trigon-opt.c  ****     for (i=0; i<n; i++)
 208              		.loc 1 18 0
 209 0103 E8000000 		call	srand	#
 209      00
 210              	.LVL22:
 211 0108 E92EFFFF 		jmp	.L3	#
 211      FF
 212              		.cfi_endproc
 213              	.LFE36:
 215              		.section	.rodata.cst8,"aM",@progbits,8
 216              		.align 8
 217              	.LC0:
 218 0000 00000000 		.long	0
 219 0004 0000F03F 		.long	1072693248
 220              		.align 8
 221              	.LC3:
 222 0008 C3718BB6 		.long	3062591939
 223 000c 65BC793F 		.long	1064942693
 224              		.text
 225              	.Letext0:
 226              		.file 3 "/usr/lib64/gcc/x86_64-suse-linux/4.8/include/stddef.h"
 227              		.file 4 "/usr/include/bits/types.h"
 228              		.file 5 "/usr/include/libio.h"
 229              		.file 6 "/usr/include/stdio.h"
 230              		.file 7 "<built-in>"
 231              		.file 8 "/usr/include/unistd.h"
