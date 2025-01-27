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
    .globl	testc
testc:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, %eax
    movl	%esi, -8(%rbp)
    movb	%al, -4(%rbp)
    cmpb	$0, -4(%rbp)
    je	L42
    movzbl	-4(%rbp), %eax
    testb	%al, %al
    js	L42
    cmpl	$0, -8(%rbp)
    jne	L44
    call	abort
L42:
    cmpl	$0, -8(%rbp)
    je	L45
    call	abort
L44:
L45:
    nop
    leave
    ret
    .globl	tests
tests:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, %eax
    movl	%esi, -8(%rbp)
    movw	%ax, -4(%rbp)
    cmpw	$0, -4(%rbp)
    je	L47
    movzwl	-4(%rbp), %eax
    testw	%ax, %ax
    js	L47
    cmpl	$0, -8(%rbp)
    jne	L49
    call	abort
L47:
    cmpl	$0, -8(%rbp)
    je	L50
    call	abort
L49:
L50:
    nop
    leave
    ret
    .globl	testi
testi:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    cmpl	$0, -4(%rbp)
    je	L52
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    js	L52
    cmpl	$0, -8(%rbp)
    jne	L54
    call	abort
L52:
    cmpl	$0, -8(%rbp)
    je	L55
    call	abort
L54:
L55:
    nop
    leave
    ret
    .globl	mytestl
mytestl:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    cmpq	$0, -8(%rbp)
    je	L57
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L57
    cmpl	$0, -12(%rbp)
    jne	L59
    call	abort
L57:
    cmpl	$0, -12(%rbp)
    je	L60
    call	abort
L59:
L60:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %esi
    movl	$0, %edi
    call	testc
    movl	$1, %esi
    movl	$1, %edi
    call	testc
    movl	$1, %esi
    movl	$127, %edi
    call	testc
    movl	$0, %esi
    movl	$128, %edi
    call	testc
    movl	$0, %esi
    movl	$255, %edi
    call	testc
    movl	$0, %esi
    movl	$0, %edi
    call	tests
    movl	$1, %esi
    movl	$1, %edi
    call	tests
    movl	$1, %esi
    movl	$32767, %edi
    call	tests
    movl	$0, %esi
    movl	$32768, %edi
    call	tests
    movl	$0, %esi
    movl	$65535, %edi
    call	tests
    movl	$0, %esi
    movl	$0, %edi
    call	testi
    movl	$1, %esi
    movl	$1, %edi
    call	testi
    movl	$1, %esi
    movl	$2147483647, %edi
    call	testi
    movl	$0, %esi
    movl	$-2147483648, %edi
    call	testi
    movl	$0, %esi
    movl	$-1, %edi
    call	testi
    movl	$0, %esi
    movl	$0, %edi
    call	mytestl
    movl	$1, %esi
    movl	$1, %edi
    call	mytestl
    movl	$1, %esi
    movabsq	$9223372036854775807, %rdi
    call	mytestl
    movl	$0, %esi
    movabsq	$-9223372036854775808, %rdi
    call	mytestl
    movl	$0, %esi
    movq	$-1, %rdi
    call	mytestl
    movl	$0, %eax
    popq	%rbp
    ret
