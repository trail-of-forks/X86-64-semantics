    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    je	L6
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movl	$0, %eax
    jmp	L1
L3:
    movq	-8(%rbp), %rax
    jmp	L1
L6:
L1:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L8
L9:
    addq	$1, -8(%rbp)
L8:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
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
L12:
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
    jne	L12
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
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
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
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
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
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
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
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
    jle	L37
    cmpl	$122, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L38
L37:
    cmpl	$64, -4(%rbp)
    jle	L39
    cmpl	$90, -4(%rbp)
    jg	L39
    movl	$1, %eax
    jmp	L38
L39:
    cmpl	$47, -4(%rbp)
    jle	L40
    cmpl	$57, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L38
L40:
    movl	$0, %eax
L38:
    popq	%rbp
    ret
    .globl	f3
f3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$7, %eax
    cmpq	$5, %rax
    jbe	L43
    call	abort
L43:
    nop
    leave
    ret
    .globl	f4
f4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$15, %eax
    cmpq	$9, %rax
    jbe	L46
    call	abort
L46:
    nop
    leave
    ret
    .globl	f5
f5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$31, %eax
    cmpq	$17, %rax
    jbe	L49
    call	abort
L49:
    nop
    leave
    ret
    .globl	f6
f6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$63, %eax
    cmpq	$33, %rax
    jbe	L52
    call	abort
L52:
    nop
    leave
    ret
    .globl	f7
f7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$127, %eax
    cmpq	$65, %rax
    jbe	L55
    call	abort
L55:
    nop
    leave
    ret
    .globl	f8
f8:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movzbl	%al, %eax
    cmpq	$129, %rax
    jbe	L58
    call	abort
L58:
    nop
    leave
    ret
    .globl	f9
f9:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$511, %eax
    cmpq	$257, %rax
    jbe	L61
    call	abort
L61:
    nop
    leave
    ret
    .globl	f10
f10:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$1023, %eax
    cmpq	$513, %rax
    jbe	L64
    call	abort
L64:
    nop
    leave
    ret
    .globl	f11
f11:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$2047, %eax
    cmpq	$1025, %rax
    jbe	L67
    call	abort
L67:
    nop
    leave
    ret
    .globl	f12
f12:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$4095, %eax
    cmpq	$2049, %rax
    jbe	L70
    call	abort
L70:
    nop
    leave
    ret
    .globl	f13
f13:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$8191, %eax
    cmpq	$4097, %rax
    jbe	L73
    call	abort
L73:
    nop
    leave
    ret
    .globl	f14
f14:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$16383, %eax
    cmpq	$8193, %rax
    jbe	L76
    call	abort
L76:
    nop
    leave
    ret
    .globl	f15
f15:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$32767, %eax
    cmpq	$16385, %rax
    jbe	L79
    call	abort
L79:
    nop
    leave
    ret
    .globl	f16
f16:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movzwl	%ax, %eax
    cmpq	$32769, %rax
    jbe	L82
    call	abort
L82:
    nop
    leave
    ret
    .globl	f17
f17:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$131071, %eax
    cmpq	$65537, %rax
    jbe	L85
    call	abort
L85:
    nop
    leave
    ret
    .globl	f18
f18:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$262143, %eax
    cmpq	$131073, %rax
    jbe	L88
    call	abort
L88:
    nop
    leave
    ret
    .globl	f19
f19:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$524287, %eax
    cmpq	$262145, %rax
    jbe	L91
    call	abort
L91:
    nop
    leave
    ret
    .globl	f20
f20:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$1048575, %eax
    cmpq	$524289, %rax
    jbe	L94
    call	abort
L94:
    nop
    leave
    ret
    .globl	f21
f21:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$2097151, %eax
    cmpq	$1048577, %rax
    jbe	L97
    call	abort
L97:
    nop
    leave
    ret
    .globl	f22
f22:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$4194303, %eax
    cmpq	$2097153, %rax
    jbe	L100
    call	abort
L100:
    nop
    leave
    ret
    .globl	f23
f23:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$8388607, %eax
    cmpq	$4194305, %rax
    jbe	L103
    call	abort
L103:
    nop
    leave
    ret
    .globl	f24
f24:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$16777215, %eax
    cmpq	$8388609, %rax
    jbe	L106
    call	abort
L106:
    nop
    leave
    ret
    .globl	f25
f25:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$33554431, %eax
    cmpq	$16777217, %rax
    jbe	L109
    call	abort
L109:
    nop
    leave
    ret
    .globl	f26
f26:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$67108863, %eax
    cmpq	$33554433, %rax
    jbe	L112
    call	abort
L112:
    nop
    leave
    ret
    .globl	f27
f27:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$134217727, %eax
    cmpq	$67108865, %rax
    jbe	L115
    call	abort
L115:
    nop
    leave
    ret
    .globl	f28
f28:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$268435455, %eax
    cmpq	$134217729, %rax
    jbe	L118
    call	abort
L118:
    nop
    leave
    ret
    .globl	f29
f29:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$536870911, %eax
    cmpq	$268435457, %rax
    jbe	L121
    call	abort
L121:
    nop
    leave
    ret
    .globl	f30
f30:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$1073741823, %eax
    cmpq	$536870913, %rax
    jbe	L124
    call	abort
L124:
    nop
    leave
    ret
    .globl	f31
f31:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    andl	$2147483647, %eax
    cmpq	$1073741825, %rax
    jbe	L127
    call	abort
L127:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %edi
    call	f3
    movl	$0, %edi
    call	f4
    movl	$0, %edi
    call	f5
    movl	$0, %edi
    call	f6
    movl	$0, %edi
    call	f7
    movl	$0, %edi
    call	f8
    movl	$0, %edi
    call	f9
    movl	$0, %edi
    call	f10
    movl	$0, %edi
    call	f11
    movl	$0, %edi
    call	f12
    movl	$0, %edi
    call	f13
    movl	$0, %edi
    call	f14
    movl	$0, %edi
    call	f15
    movl	$0, %edi
    call	f16
    movl	$0, %edi
    call	f17
    movl	$0, %edi
    call	f18
    movl	$0, %edi
    call	f19
    movl	$0, %edi
    call	f20
    movl	$0, %edi
    call	f21
    movl	$0, %edi
    call	f22
    movl	$0, %edi
    call	f23
    movl	$0, %edi
    call	f24
    movl	$0, %edi
    call	f25
    movl	$0, %edi
    call	f26
    movl	$0, %edi
    call	f27
    movl	$0, %edi
    call	f28
    movl	$0, %edi
    call	f29
    movl	$0, %edi
    call	f30
    movl	$0, %edi
    call	f31
    movl	$0, %edi
    call	exit
