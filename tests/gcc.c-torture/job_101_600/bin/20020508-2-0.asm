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
    .globl	c
    .data
c:
    .byte	52
    .globl	s
s:
    .value	4660
    .globl	i
i:
    .long	4660
    .globl	l
l:
    .quad	305419896
    .globl	ll
ll:
    .quad	81985529234382576
    .globl	shift1
shift1:
    .long	4
    .globl	shift2
shift2:
    .long	60
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	c(%rip), %eax
    movsbl	%al, %edx
    movl	shift1(%rip), %eax
    sarx	%eax, %edx, %ecx
    movzbl	c(%rip), %eax
    movsbl	%al, %edx
    movl	shift1(%rip), %eax
    movl	$8, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$835, %eax
    je	L42
    call	abort
L42:
    movzbl	c(%rip), %eax
    sarb	$4, %al
    movsbl	%al, %eax
    movzbl	c(%rip), %edx
    movsbl	%dl, %edx
    sall	$4, %edx
    orl	%edx, %eax
    cmpl	$835, %eax
    je	L43
    call	abort
L43:
    movzwl	s(%rip), %eax
    movswl	%ax, %edx
    movl	shift1(%rip), %eax
    sarx	%eax, %edx, %ecx
    movzwl	s(%rip), %eax
    movswl	%ax, %edx
    movl	shift1(%rip), %eax
    movl	$16, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$19087651, %eax
    je	L44
    call	abort
L44:
    movzwl	s(%rip), %eax
    sarw	$4, %ax
    cwtl
    movzwl	s(%rip), %edx
    movswl	%dx, %edx
    sall	$12, %edx
    orl	%edx, %eax
    cmpl	$19087651, %eax
    je	L45
    call	abort
L45:
    movl	i(%rip), %edx
    movl	shift1(%rip), %eax
    sarx	%eax, %edx, %ecx
    movl	i(%rip), %edx
    movl	shift1(%rip), %eax
    movl	$32, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$1073742115, %eax
    je	L46
    call	abort
L46:
    movl	i(%rip), %eax
    sarl	$4, %eax
    movl	%eax, %edx
    movl	i(%rip), %eax
    sall	$28, %eax
    orl	%edx, %eax
    cmpl	$1073742115, %eax
    je	L47
    call	abort
L47:
    movq	l(%rip), %rdx
    movl	shift1(%rip), %eax
    sarx	%rax, %rdx, %rcx
    movq	l(%rip), %rdx
    movl	shift1(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$-9223372036835687065, %rax
    cmpq	%rax, %rdx
    je	L48
    call	abort
L48:
    movq	l(%rip), %rax
    sarq	$4, %rax
    movq	%rax, %rdx
    movq	l(%rip), %rax
    salq	$60, %rax
    orq	%rax, %rdx
    movabsq	$-9223372036835687065, %rax
    cmpq	%rax, %rdx
    je	L49
    call	abort
L49:
    movq	ll(%rip), %rdx
    movl	shift1(%rip), %eax
    sarx	%rax, %rdx, %rcx
    movq	ll(%rip), %rdx
    movl	shift1(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$5124095577148911, %rax
    cmpq	%rax, %rdx
    je	L50
    call	abort
L50:
    movq	ll(%rip), %rax
    sarq	$4, %rax
    movq	%rax, %rdx
    movq	ll(%rip), %rax
    salq	$60, %rax
    orq	%rax, %rdx
    movabsq	$5124095577148911, %rax
    cmpq	%rax, %rdx
    je	L51
    call	abort
L51:
    movq	ll(%rip), %rdx
    movl	shift2(%rip), %eax
    sarx	%rax, %rdx, %rcx
    movq	ll(%rip), %rdx
    movl	shift2(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$1311768467750121216, %rax
    cmpq	%rax, %rdx
    je	L52
    call	abort
L52:
    movq	ll(%rip), %rax
    sarq	$60, %rax
    movq	%rax, %rdx
    movq	ll(%rip), %rax
    salq	$4, %rax
    orq	%rax, %rdx
    movabsq	$1311768467750121216, %rax
    cmpq	%rax, %rdx
    je	L53
    call	abort
L53:
    movzbl	c(%rip), %eax
    movsbl	%al, %edx
    movl	shift1(%rip), %eax
    shlx	%eax, %edx, %ecx
    movzbl	c(%rip), %eax
    movsbl	%al, %edx
    movl	shift1(%rip), %eax
    movl	$8, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sarx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$835, %eax
    je	L54
    call	abort
L54:
    movzbl	c(%rip), %eax
    movsbl	%al, %eax
    sall	$4, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    sarb	$4, %al
    movsbl	%al, %eax
    orl	%edx, %eax
    cmpl	$835, %eax
    je	L55
    call	abort
L55:
    movzwl	s(%rip), %eax
    movswl	%ax, %edx
    movl	shift1(%rip), %eax
    shlx	%eax, %edx, %ecx
    movzwl	s(%rip), %eax
    movswl	%ax, %edx
    movl	shift1(%rip), %eax
    movl	$16, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sarx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$74561, %eax
    je	L56
    call	abort
L56:
    movzwl	s(%rip), %eax
    cwtl
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	s(%rip), %eax
    sarw	$12, %ax
    cwtl
    orl	%edx, %eax
    cmpl	$74561, %eax
    je	L57
    call	abort
L57:
    movl	i(%rip), %edx
    movl	shift1(%rip), %eax
    shlx	%eax, %edx, %ecx
    movl	i(%rip), %edx
    movl	shift1(%rip), %eax
    movl	$32, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sarx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$74560, %eax
    je	L58
    call	abort
L58:
    movl	i(%rip), %eax
    sall	$4, %eax
    movl	%eax, %edx
    movl	i(%rip), %eax
    sarl	$28, %eax
    orl	%edx, %eax
    cmpl	$74560, %eax
    je	L59
    call	abort
L59:
    movq	l(%rip), %rdx
    movl	shift1(%rip), %eax
    shlx	%rax, %rdx, %rcx
    movq	l(%rip), %rdx
    movl	shift1(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sarx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$4886718336, %rax
    cmpq	%rax, %rdx
    je	L60
    call	abort
L60:
    movq	l(%rip), %rax
    salq	$4, %rax
    movq	%rax, %rdx
    movq	l(%rip), %rax
    sarq	$60, %rax
    orq	%rax, %rdx
    movabsq	$4886718336, %rax
    cmpq	%rax, %rdx
    je	L61
    call	abort
L61:
    movq	ll(%rip), %rdx
    movl	shift1(%rip), %eax
    shlx	%rax, %rdx, %rcx
    movq	ll(%rip), %rdx
    movl	shift1(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sarx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$1311768467750121216, %rax
    cmpq	%rax, %rdx
    je	L62
    call	abort
L62:
    movq	ll(%rip), %rax
    salq	$4, %rax
    movq	%rax, %rdx
    movq	ll(%rip), %rax
    sarq	$60, %rax
    orq	%rax, %rdx
    movabsq	$1311768467750121216, %rax
    cmpq	%rax, %rdx
    je	L63
    call	abort
L63:
    movq	ll(%rip), %rdx
    movl	shift2(%rip), %eax
    shlx	%rax, %rdx, %rcx
    movq	ll(%rip), %rdx
    movl	shift2(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sarx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$5124095577148911, %rax
    cmpq	%rax, %rdx
    je	L64
    call	abort
L64:
    movq	ll(%rip), %rax
    salq	$60, %rax
    movq	%rax, %rdx
    movq	ll(%rip), %rax
    sarq	$4, %rax
    orq	%rax, %rdx
    movabsq	$5124095577148911, %rax
    cmpq	%rax, %rdx
    je	L65
    call	abort
L65:
    movl	$0, %edi
    call	exit
