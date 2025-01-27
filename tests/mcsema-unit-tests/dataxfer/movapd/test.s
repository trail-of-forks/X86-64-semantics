.section .text
.globl _start

_start:
/*
 * Copyright (c) 2017 Trail of Bits, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* NOTE:
 * YMM0 - YMM3 are filled will 0xFF.
 * YMM4 and on are filled with 0x0. */

  // MOVAPDv128v128_1to0  
  movq  $0,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $1,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x41,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x51,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x80,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x55,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xAA,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x0F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xF7,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xFE,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xEF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x7F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x4141,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x5151,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x8000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x5500,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x5555,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xAA00,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xAAAA,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x0F0F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xF7F7,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xFEFE,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xEFEF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x7FFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x41414141,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x51515151,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x55000000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x55555555,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xAAFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xAAAAAAAA,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x0F0F0F0F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xF7F7F7F7,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xFEFEFEFE,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xEFEFEFEF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x7FFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xFFFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x5115151515115151,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x8000000000000000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x5500000000000000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x5555555555555555,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xAA00000000000000,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xAAAAAAAAAAAAAAAA,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x0F0F0F0F0F0F0F0F,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xF7F7F7F7F7F7F7F7,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xEFEFEFEFEFEFEFEF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xFEFEFEFEFEFEFEFE,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0x7FFFFFFFFFFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4
  
  movq  $0xFFFFFFFFFFFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movapd %xmm4, %xmm0
  movapd %xmm0, %xmm4
  movapd %xmm0, -128(%rsp)
  movapd -128(%rsp), %xmm4
  vmovapd %xmm4, %xmm0
  vmovapd %xmm0, %xmm4
  vmovapd %ymm4, %ymm0
  vmovapd %ymm0, %ymm4
  vmovapd %xmm0, -128(%rsp)
  vmovapd -128(%rsp), %xmm4
  vmovapd %ymm0, -128(%rsp)
  vmovapd -128(%rsp), %ymm4

  nop
