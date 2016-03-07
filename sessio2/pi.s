	.file	"pi.c"
	.comm	N,4,4
	.comm	N4,4,4
	.comm	a,25480,32
	.comm	b,25480,32
	.comm	c,25480,32
	.comm	string,100,32
	.text
	.globl	DIVIDE
	.type	DIVIDE, @function
DIVIDE:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %ebx
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, -24(%rbp)
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -12(%rbp)
.L2:
	movl	N4(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L3
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	DIVIDE, .-DIVIDE
	.globl	LONGDIV
	.type	LONGDIV, @function
LONGDIV:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	cmpl	$6552, -52(%rbp)
	jg	.L5
	movl	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L6
.L7:
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-52(%rbp), %ebx
	movl	-24(%rbp), %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, -16(%rbp)
	movl	-52(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	-24(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -12(%rbp)
.L6:
	movl	N4(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L7
	jmp	.L4
.L5:
	movl	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L9
.L12:
	cmpl	$6552, -20(%rbp)
	ja	.L10
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-52(%rbp), %esi
	movl	-24(%rbp), %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -16(%rbp)
	movl	-52(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	-24(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	jmp	.L11
.L10:
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdi
	movq	-32(%rbp), %rax
	cqto
	idivq	%rdi
	movl	%eax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	imull	-16(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
.L11:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -12(%rbp)
.L9:
	movl	N4(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L12
.L4:
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	LONGDIV, .-LONGDIV
	.globl	MULTIPLY
	.type	MULTIPLY, @function
MULTIPLY:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -8(%rbp)
	movl	N4(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.L14
.L15:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %esi
	movl	%esi, %eax
	movb	%al, (%rcx)
	subl	$1, -4(%rbp)
.L14:
	cmpl	$0, -4(%rbp)
	jns	.L15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	MULTIPLY, .-MULTIPLY
	.globl	SET
	.type	SET, @function
SET:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	N4(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SET, .-SET
	.globl	SUBTRACT
	.type	SUBTRACT, @function
SUBTRACT:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	N4(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.L18
.L20:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movl	%edx, %ecx
	movl	-4(%rbp), %edx
	movslq	%edx, %rsi
	movq	-40(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	$10, %eax
	movb	%al, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	addl	$1, %edx
	movb	%dl, (%rax)
.L19:
	subl	$1, -4(%rbp)
.L18:
	cmpl	$0, -4(%rbp)
	jns	.L20
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SUBTRACT, .-SUBTRACT
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$10000, N(%rip)
	cmpl	$1, -4(%rbp)
	jle	.L22
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, N(%rip)
.L22:
	movq	stdout(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	setbuf
	call	calculate
	call	epilog
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.globl	calculate
	.type	calculate, @function
calculate:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	N(%rip), %eax
	addl	$4, %eax
	movl	%eax, N4(%rip)
	movl	$0, %esi
	movl	$a, %edi
	call	SET
	movl	$0, %esi
	movl	$b, %edi
	call	SET
	movl	N4(%rip), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L25
.L26:
	movl	$1, %esi
	movl	$c, %edi
	call	SET
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$c, %edi
	call	LONGDIV
	movl	$a, %edx
	movl	$c, %esi
	movl	$a, %edi
	call	SUBTRACT
	movl	$25, %esi
	movl	$a, %edi
	call	DIVIDE
	movl	$b, %edx
	movl	$c, %esi
	movl	$b, %edi
	call	SUBTRACT
	movl	$239, %esi
	movl	$b, %edi
	call	DIVIDE
	movl	$239, %esi
	movl	$b, %edi
	call	DIVIDE
	call	progress
	subl	$2, -4(%rbp)
.L25:
	cmpl	$2, -4(%rbp)
	jg	.L26
	movl	$1, %esi
	movl	$c, %edi
	call	SET
	movl	$a, %edx
	movl	$c, %esi
	movl	$a, %edi
	call	SUBTRACT
	movl	$5, %esi
	movl	$a, %edi
	call	DIVIDE
	movl	$b, %edx
	movl	$c, %esi
	movl	$b, %edi
	call	SUBTRACT
	movl	$239, %esi
	movl	$b, %edi
	call	DIVIDE
	movl	$4, %esi
	movl	$a, %edi
	call	MULTIPLY
	movl	$b, %edx
	movl	$a, %esi
	movl	$a, %edi
	call	SUBTRACT
	movl	$4, %esi
	movl	$a, %edi
	call	MULTIPLY
	call	progress
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	calculate, .-calculate
	.globl	progress
	.type	progress, @function
progress:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$46, %edi
	call	putchar
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	progress, .-progress
	.section	.rodata
.LC0:
	.string	" \n3."
.LC1:
	.string	"%d"
.LC2:
	.string	"    <%d>\n\n   "
.LC3:
	.string	"\n   "
	.text
	.globl	epilog
	.type	epilog, @function
epilog:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	movl	$1, -4(%rbp)
	jmp	.L29
.L34:
	movl	-4(%rbp), %eax
	cltq
	movzbl	a(%rax), %eax
	movsbl	%al, %edx
	movq	stdout(%rip), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	-4(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L30
	movl	-4(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$50, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L31
	movl	-4(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$250, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L32
	movq	stdout(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L30
.L32:
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	fwrite
	jmp	.L30
.L31:
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	fputc
.L30:
	addl	$1, -4(%rbp)
.L29:
	movl	N(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L34
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	epilog, .-epilog
	.ident	"GCC: (SUSE Linux) 4.8.3 20140627 [gcc-4_8-branch revision 212064]"
	.section	.note.GNU-stack,"",@progbits
