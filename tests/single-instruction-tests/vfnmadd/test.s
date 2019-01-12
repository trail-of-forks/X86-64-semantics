.section .text
.globl _start

_start:
  // XCHG  
  
  movq  $0,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $1,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x41,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x51,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x80,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x55,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xAA,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x0F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xF7,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xFE,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xEF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x7F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x4141,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x5151,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x8000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x5500,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x5555,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xAA00,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xAAAA,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x0F0F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xF7F7,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xFEFE,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xEFEF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x7FFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x41414141,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x51515151,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x55000000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x55555555,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xAAFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xAAAAAAAA,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x0F0F0F0F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xF7F7F7F7,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xFEFEFEFE,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xEFEFEFEF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x7FFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xFFFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x5115151515115151,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x8000000000000000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x5500000000000000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x5555555555555555,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xAA00000000000000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xAAAAAAAAAAAAAAAA,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x0F0F0F0F0F0F0F0F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xF7F7F7F7F7F7F7F7,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xEFEFEFEFEFEFEFEF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xFEFEFEFEFEFEFEFE,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0x7FFFFFFFFFFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall
  
  
  movq  $0xFFFFFFFFFFFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  
  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9
  
  vfnmadd132pd   %xmm4, %xmm5, %xmm0
  vfnmadd132ps   %xmm4, %xmm6, %xmm0
  vfnmadd132sd   %xmm4, %xmm7, %xmm0
  vfnmadd132ss   %xmm4, %xmm8, %xmm0
  vfnmadd132pd   %ymm4, %ymm9, %ymm0
  vfnmadd132ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd213pd   %xmm4, %xmm5, %xmm0
  vfnmadd213ps   %xmm4, %xmm6, %xmm0
  vfnmadd213sd   %xmm4, %xmm7, %xmm0
  vfnmadd213ss   %xmm4, %xmm8, %xmm0
  vfnmadd213pd   %ymm4, %ymm9, %ymm0
  vfnmadd213ps   %ymm4, %ymm9, %ymm0
  
  vfnmadd231pd   %xmm4, %xmm5, %xmm0
  vfnmadd231ps   %xmm4, %xmm6, %xmm0
  vfnmadd231sd   %xmm4, %xmm7, %xmm0
  vfnmadd231ss   %xmm4, %xmm8, %xmm0
  vfnmadd231pd   %ymm4, %ymm9, %ymm0
  vfnmadd231ps   %ymm4, %ymm9, %ymm0
  
  vzeroall


  nop