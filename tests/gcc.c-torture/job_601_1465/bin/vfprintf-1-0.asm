    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L6:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .string	"hello"
LC1:
    .string	"hello\n"
LC2:
    .string	"a"
LC3:
    .string	""
LC4:
    .string	"%s"
LC5:
    .string	"%c"
LC6:
    .string	"%s\n"
LC7:
    .string	"%d\n"
    .text
    .globl	inner
inner:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$256, %rsp
    movl	%edi, -244(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L54
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L54:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -232(%rbp)
    movl	$48, -228(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -224(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -216(%rbp)
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    cmpl	$10, -244(%rbp)
    ja	L55
    movl	-244(%rbp), %eax
    movq	L57(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L57:
    .quad	L56
    .quad	L58
    .quad	L59
    .quad	L60
    .quad	L61
    .quad	L62
    .quad	L63
    .quad	L64
    .quad	L65
    .quad	L66
    .quad	L67
    .text
L56:
    movq	$stdout, %rax
    movq	%rax, %rcx
    movl	$5, %edx
    movl	$1, %esi
    movl	$LC0, %edi
    call	fwrite
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$5, %eax
    je	L81
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L81
L58:
    movq	$stdout, %rax
    movq	%rax, %rcx
    movl	$6, %edx
    movl	$1, %esi
    movl	$LC1, %edi
    call	fwrite
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$6, %eax
    je	L82
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L82
L59:
    movq	$stdout, %rax
    movq	%rax, %rsi
    movl	$97, %edi
    call	fputc
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$1, %eax
    je	L83
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L83
L60:
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	vfprintf
    testl	%eax, %eax
    je	L84
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L84
L61:
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	vfprintf
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$5, %eax
    je	L85
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L85
L62:
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	vfprintf
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$6, %eax
    je	L86
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L86
L63:
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	vfprintf
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$1, %eax
    je	L87
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L87
L64:
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	vfprintf
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	vfprintf
    testl	%eax, %eax
    je	L88
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L88
L65:
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	vfprintf
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$1, %eax
    je	L89
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L89
L66:
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	vfprintf
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$7, %eax
    je	L90
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L90
L67:
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	vfprintf
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	vfprintf
    cmpl	$2, %eax
    je	L91
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L91
L55:
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3477
    jmp	L69
L81:
    nop
    jmp	L69
L82:
    nop
    jmp	L69
L83:
    nop
    jmp	L69
L84:
    nop
    jmp	L69
L85:
    nop
    jmp	L69
L86:
    nop
    jmp	L69
L87:
    nop
    jmp	L69
L88:
    nop
    jmp	L69
L89:
    nop
    jmp	L69
L90:
    nop
    jmp	L69
L91:
    nop
L69:
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L80
    call	__stack_chk_fail
L80:
    leave
    ret
abort3477:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%r10, -8(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, %edi
    movl	$0, %eax
    call	inner
    movl	$1, %edi
    movl	$0, %eax
    call	inner
    movl	$2, %edi
    movl	$0, %eax
    call	inner
    movl	$3, %edi
    movl	$0, %eax
    call	inner
    movl	$LC0, %esi
    movl	$4, %edi
    movl	$0, %eax
    call	inner
    movl	$LC1, %esi
    movl	$5, %edi
    movl	$0, %eax
    call	inner
    movl	$LC2, %esi
    movl	$6, %edi
    movl	$0, %eax
    call	inner
    movl	$LC3, %esi
    movl	$7, %edi
    movl	$0, %eax
    call	inner
    movl	$120, %esi
    movl	$8, %edi
    movl	$0, %eax
    call	inner
    movl	$LC1, %esi
    movl	$9, %edi
    movl	$0, %eax
    call	inner
    movl	$0, %esi
    movl	$10, %edi
    movl	$0, %eax
    call	inner
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L95
    call	__stack_chk_fail
L95:
    leave
    ret
