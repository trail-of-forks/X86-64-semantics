.section .text
.globl _start

_start:
  // MOVSDv128m64  
  movq  $0,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $1,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x41,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x51,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x80,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x55,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xAA,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x0F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xF7,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xFE,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xEF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x7F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x4141,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x5151,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x8000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x5500,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x5555,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xAA00,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xAAAA,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x0F0F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xF7F7,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xFEFE,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xEFEF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x7FFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x41414141,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x51515151,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x55000000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x55555555,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xAAFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xAAAAAAAA,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x0F0F0F0F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xF7F7F7F7,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xFEFEFEFE,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xEFEFEFEF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x7FFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xFFFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x5115151515115151,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x8000000000000000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x5500000000000000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x5555555555555555,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xAA00000000000000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xAAAAAAAAAAAAAAAA,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x0F0F0F0F0F0F0F0F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xF7F7F7F7F7F7F7F7,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xEFEFEFEFEFEFEFEF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xFEFEFEFEFEFEFEFE,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0x7FFFFFFFFFFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0
  
  movq  $0xFFFFFFFFFFFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  movsd %xmm0, -8(%rsp)
  movsd -8(%rsp), %xmm0
  movsd %xmm0, %xmm1
  movsd %xmm1, %xmm0
  
  vmovsd %xmm0, -8(%rsp)
  vmovsd -8(%rsp), %xmm0
  vmovsd %xmm0, %xmm1, %xmm4
  vmovsd %xmm4, %xmm1, %xmm0

  nop
