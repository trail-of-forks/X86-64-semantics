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
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
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
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .comm	pzero,8,8
    .data
nzero:
    .long	0
    .long	-2147483648
pinf:
    .long	0
    .long	2146435072
ninf:
    .long	0
    .long	-1048576
nan:
    .long	0
    .long	2146959360
    .text
    .globl	expect
expect:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vmovsd	-16(%rbp), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L52
    vucomisd	%xmm1, %xmm0
    je	L55
L52:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	-8(%rbp), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L57
    vucomisd	%xmm1, %xmm0
    je	L53
    jmp	L57
L53:
    call	abort
L55:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	-8(%rbp), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L54
    vucomisd	%xmm1, %xmm0
    je	L56
L54:
    call	abort
L56:
    leaq	-16(%rbp), %rcx
    leaq	-8(%rbp), %rax
    movl	$8, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L57
    call	abort
L57:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	pzero(%rip), %xmm1
    vmovsd	pzero(%rip), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm3
    vmovq	%xmm3, %rax
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm1
    vmovsd	nzero(%rip), %xmm0
    vaddsd	%xmm0, %xmm1, %xmm4
    vmovq	%xmm4, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm1
    vmovsd	pzero(%rip), %xmm0
    vaddsd	%xmm0, %xmm1, %xmm5
    vmovq	%xmm5, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nzero(%rip), %xmm1
    vmovsd	nzero(%rip), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm6
    vmovq	%xmm6, %rax
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm0
    vmovsd	pzero(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm7
    vmovq	%xmm7, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm0
    vmovsd	nzero(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm3
    vmovq	%xmm3, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nzero(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm0
    vmovsd	pzero(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm4
    vmovq	%xmm4, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm0
    vmovsd	nzero(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm5
    vmovq	%xmm5, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm1
    vmovsd	pzero(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm6
    vmovq	%xmm6, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nzero(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm1
    vmovsd	nzero(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm7
    vmovq	%xmm7, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nzero(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm1
    vmovsd	pzero(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm3
    vmovq	%xmm3, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm1
    vmovsd	nzero(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm4
    vmovq	%xmm4, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm0
    movq	pzero(%rip), %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nzero(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm1
    vmovsd	LC0(%rip), %xmm0
    vxorpd	%xmm0, %xmm1, %xmm1
    vmovq	%xmm1, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nzero(%rip), %xmm0
    movq	nzero(%rip), %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pzero(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm1
    vmovsd	LC0(%rip), %xmm0
    vxorpd	%xmm0, %xmm1, %xmm1
    vmovq	%xmm1, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nan(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm0
    vmovsd	pzero(%rip), %xmm1
    vdivsd	%xmm1, %xmm0, %xmm5
    vmovq	%xmm5, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nan(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm0
    vmovsd	nzero(%rip), %xmm1
    vdivsd	%xmm1, %xmm0, %xmm6
    vmovq	%xmm6, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nan(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm0
    vmovsd	pzero(%rip), %xmm1
    vdivsd	%xmm1, %xmm0, %xmm7
    vmovq	%xmm7, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	nan(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm0
    vmovsd	nzero(%rip), %xmm1
    vdivsd	%xmm1, %xmm0, %xmm3
    vmovq	%xmm3, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pinf(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm1
    vmovsd	LC1(%rip), %xmm0
    vdivsd	%xmm1, %xmm0, %xmm4
    vmovq	%xmm4, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	ninf(%rip), %xmm2
    vmovsd	pzero(%rip), %xmm1
    vmovsd	LC2(%rip), %xmm0
    vdivsd	%xmm1, %xmm0, %xmm5
    vmovq	%xmm5, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	ninf(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm1
    vmovsd	LC1(%rip), %xmm0
    vdivsd	%xmm1, %xmm0, %xmm6
    vmovq	%xmm6, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    vmovsd	pinf(%rip), %xmm2
    vmovsd	nzero(%rip), %xmm1
    vmovsd	LC2(%rip), %xmm0
    vdivsd	%xmm1, %xmm0, %xmm7
    vmovq	%xmm7, %rax
    vmovapd	%xmm2, %xmm1
    vmovq	%rax, %xmm0
    call	expect
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	0
    .long	-2147483648
    .long	0
    .long	0
LC1:
    .long	0
    .long	1072693248
LC2:
    .long	0
    .long	-1074790400
