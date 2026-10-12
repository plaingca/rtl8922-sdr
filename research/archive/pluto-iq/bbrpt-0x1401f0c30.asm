00000001401f0c30 mov      qword ptr [rsp + 8], rbx
00000001401f0c35 mov      qword ptr [rsp + 0x10], rbp
00000001401f0c3a mov      qword ptr [rsp + 0x18], rsi
00000001401f0c3f push     rdi
00000001401f0c40 push     r12
00000001401f0c42 push     r13
00000001401f0c44 push     r14
00000001401f0c46 push     r15
00000001401f0c48 sub      rsp, 0x40
00000001401f0c4c mov      rax, qword ptr [rcx + 0x798]
00000001401f0c53 xor      r14d, r14d
00000001401f0c56 mov      rbx, rdx
00000001401f0c59 mov      r13, qword ptr [rax + 0x10330]
00000001401f0c60 movzx    esi, word ptr [rax + 0x96ca]
00000001401f0c67 cmp      qword ptr [rdx + 8], r14
00000001401f0c6b je       0x1401f0d1f
00000001401f0c71 cmp      r14w, si
00000001401f0c75 jae      0x1401f0d08
00000001401f0c7b mov      edi, r14d
00000001401f0c7e mov      ebp, esi
00000001401f0c80 mov      rax, qword ptr [rbx + 8]
00000001401f0c84 cmp      qword ptr [rax + rdi + 0x10], r14
00000001401f0c89 je       0x1401f0cfa
00000001401f0c8b mov      word ptr [rax + rdi + 0x32], 0x3fff
00000001401f0c92 lea      rcx, [rsp + 0x20]
00000001401f0c97 mov      r14, qword ptr [rbx + 8]
00000001401f0c9b mov      edx, 0x20
00000001401f0ca0 mov      r12, qword ptr [r14 + rdi + 0x28]
00000001401f0ca5 mov      r15, qword ptr [r14 + rdi + 0x10]
00000001401f0caa call     0x140031290
00000001401f0caf test     r15, r15
00000001401f0cb2 je       0x1401f0ce5
00000001401f0cb4 mov      eax, dword ptr [r14 + rdi + 0x18]
00000001401f0cb9 lea      rdx, [rsp + 0x20]
00000001401f0cbe mov      dword ptr [rsp + 0x2c], eax
00000001401f0cc2 mov      rcx, r13
00000001401f0cc5 mov      eax, dword ptr [r14 + rdi + 0x1c]
00000001401f0cca mov      dword ptr [rsp + 0x28], eax
00000001401f0cce mov      qword ptr [rsp + 0x20], r15
00000001401f0cd3 mov      dword ptr [rsp + 0x30], 0x80
00000001401f0cdb mov      qword ptr [rsp + 0x38], r12
00000001401f0ce0 call     0x14002fb04
00000001401f0ce5 mov      rax, qword ptr [rbx + 8]
00000001401f0ce9 xor      r14d, r14d
00000001401f0cec mov      qword ptr [rax + rdi + 0x10], r14
00000001401f0cf1 mov      rax, qword ptr [rbx + 8]
00000001401f0cf5 mov      byte ptr [rax + rdi + 0x31], r14b
00000001401f0cfa add      rdi, 0x40
00000001401f0cfe sub      rbp, 1
00000001401f0d02 jne      0x1401f0c80
00000001401f0d08 mov      rcx, qword ptr [rbx + 8]
00000001401f0d0c test     rcx, rcx
00000001401f0d0f je       0x1401f0d1b
00000001401f0d11 mov      edx, esi
00000001401f0d13 shl      edx, 6
00000001401f0d16 call     0x140031160
00000001401f0d1b mov      qword ptr [rbx + 8], r14
00000001401f0d1f mov      rcx, qword ptr [rbx + 0x10]
00000001401f0d23 test     rcx, rcx
00000001401f0d26 je       0x1401f0d36
00000001401f0d28 mov      edx, esi
00000001401f0d2a shl      edx, 3
00000001401f0d2d call     0x140031160
00000001401f0d32 mov      qword ptr [rbx + 0x10], r14
00000001401f0d36 and      dword ptr [rbx + 0x96], 0
00000001401f0d3d lea      r11, [rsp + 0x40]
00000001401f0d42 mov      rbx, qword ptr [r11 + 0x30]
00000001401f0d46 mov      rbp, qword ptr [r11 + 0x38]
00000001401f0d4a mov      rsi, qword ptr [r11 + 0x40]
00000001401f0d4e mov      rsp, r11
00000001401f0d51 pop      r15
00000001401f0d53 pop      r14
00000001401f0d55 pop      r13
00000001401f0d57 pop      r12
00000001401f0d59 pop      rdi
00000001401f0d5a ret      