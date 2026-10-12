00000001401e9d70 mov      r11, rsp
00000001401e9d73 mov      qword ptr [r11 + 0x10], rbx
00000001401e9d77 mov      dword ptr [r11 + 0x18], r8d
00000001401e9d7b push     rbp
00000001401e9d7c push     rsi
00000001401e9d7d push     rdi
00000001401e9d7e push     r12
00000001401e9d80 push     r13
00000001401e9d82 push     r14
00000001401e9d84 push     r15
00000001401e9d86 sub      rsp, 0x40
00000001401e9d8a mov      rax, qword ptr [rcx + 0x798]
00000001401e9d91 mov      ebp, r8d
00000001401e9d94 mov      dword ptr [r11 + 8], r8d
00000001401e9d98 mov      r12, rdx
00000001401e9d9b mov      r15, rcx
00000001401e9d9e cmp      byte ptr [rax + 0x96dd], 0
00000001401e9da5 je       0x1401e9f73
00000001401e9dab test     rdx, rdx
00000001401e9dae jne      0x1401e9e11
00000001401e9db0 mov      rcx, qword ptr [rip + 0x736249]
00000001401e9db7 lea      rsi, [rip + 0x736242]
00000001401e9dbe cmp      rcx, rsi
00000001401e9dc1 je       0x1401e9f73
00000001401e9dc7 cmp      byte ptr [rcx + 0x169], 2
00000001401e9dce jb       0x1401e9f73
00000001401e9dd4 mov      eax, dword ptr [rcx + 0x16c]
00000001401e9dda test     al, 1
00000001401e9ddc je       0x1401e9f73
00000001401e9de2 mov      rcx, qword ptr [rcx + 0x158]
00000001401e9de9 lea      r14, [rip + 0x429130]
00000001401e9df0 lea      edx, [r12 + 0x15]
00000001401e9df5 mov      qword ptr [r11 - 0x58], r14
00000001401e9df9 lea      r9, [rip + 0x424590]
00000001401e9e00 lea      r8, [rip + 0x4ae6a9]
00000001401e9e07 call     0x14003c968
00000001401e9e0c jmp      0x1401e9f73
00000001401e9e11 xor      dil, dil
00000001401e9e14 lea      rsi, [rip + 0x7361e5]
00000001401e9e1b lea      r14, [rip + 0x4290fe]
00000001401e9e22 mov      dl, dil
00000001401e9e25 mov      rcx, r15
00000001401e9e28 call     0x1401a0a14
00000001401e9e2d mov      rbx, rax
00000001401e9e30 test     rax, rax
00000001401e9e33 je       0x1401e9f66
00000001401e9e39 cmp      byte ptr [rax + 0x14], 0
00000001401e9e3d je       0x1401e9f66
00000001401e9e43 cmp      rax, r12
00000001401e9e46 je       0x1401e9f66
00000001401e9e4c mov      rcx, qword ptr [rip + 0x7361ad]
00000001401e9e53 cmp      rcx, rsi
00000001401e9e56 je       0x1401e9e9b
00000001401e9e58 cmp      byte ptr [rcx + 0x169], 4
00000001401e9e5f jb       0x1401e9e9b
00000001401e9e61 mov      eax, dword ptr [rcx + 0x16c]
00000001401e9e67 test     al, 1
00000001401e9e69 je       0x1401e9e9b
00000001401e9e6b mov      rcx, qword ptr [rcx + 0x158]
00000001401e9e72 lea      r9, [rip + 0x424517]
00000001401e9e79 movzx    eax, dil
00000001401e9e7d lea      r8, [rip + 0x4ae62c]
00000001401e9e84 mov      dword ptr [rsp + 0x30], ebp
00000001401e9e88 mov      edx, 0x16
00000001401e9e8d mov      dword ptr [rsp + 0x28], eax
00000001401e9e91 mov      qword ptr [rsp + 0x20], r14
00000001401e9e96 call     0x1400aa578
00000001401e9e9b xor      bpl, bpl
00000001401e9e9e cmp      byte ptr [rbx + 0x250], bpl
00000001401e9ea5 jbe      0x1401e9f5f
00000001401e9eab movzx    eax, bpl
00000001401e9eaf mov      rcx, r15
00000001401e9eb2 imul     r13, rax, 0xa38
00000001401e9eb9 lea      rdx, [r13 + 0x258]
00000001401e9ec0 add      rdx, rbx
00000001401e9ec3 call     0x1401b7324
00000001401e9ec8 test     rax, rax
00000001401e9ecb jne      0x1401e9f23
00000001401e9ecd mov      rcx, qword ptr [rip + 0x73612c]
00000001401e9ed4 cmp      rcx, rsi
00000001401e9ed7 je       0x1401e9f4f
00000001401e9ed9 cmp      byte ptr [rcx + 0x169], 2
00000001401e9ee0 jb       0x1401e9f4f
00000001401e9ee2 mov      eax, dword ptr [rcx + 0x16c]
00000001401e9ee8 test     al, 1
00000001401e9eea je       0x1401e9f4f
00000001401e9eec mov      rcx, qword ptr [rcx + 0x158]
00000001401e9ef3 lea      r9, [rip + 0x424496]
00000001401e9efa movzx    eax, bpl
00000001401e9efe mov      edx, 0x17
00000001401e9f03 mov      dword ptr [rsp + 0x30], eax
00000001401e9f07 movzx    r8d, dil
00000001401e9f0b mov      dword ptr [rsp + 0x28], r8d
00000001401e9f10 lea      r8, [rip + 0x4ae599]
00000001401e9f17 mov      qword ptr [rsp + 0x20], r14
00000001401e9f1c call     0x1400aa578
00000001401e9f21 jmp      0x1401e9f4f
00000001401e9f23 lea      rcx, [rsp + 0x80]
00000001401e9f2b mov      r9d, 1
00000001401e9f31 mov      qword ptr [rsp + 0x20], rcx
00000001401e9f36 lea      rdx, [rbx + 0x258]
00000001401e9f3d mov      rcx, qword ptr [r15 + 0x8d08]
00000001401e9f44 mov      r8, rax
00000001401e9f47 add      rdx, r13
00000001401e9f4a call     0x1402424b4
00000001401e9f4f inc      bpl
00000001401e9f52 cmp      bpl, byte ptr [rbx + 0x250]
00000001401e9f59 jb       0x1401e9eab
00000001401e9f5f mov      ebp, dword ptr [rsp + 0x90]
00000001401e9f66 inc      dil
00000001401e9f69 cmp      dil, 6
00000001401e9f6d jb       0x1401e9e22
00000001401e9f73 mov      rbx, qword ptr [rsp + 0x88]
00000001401e9f7b add      rsp, 0x40
00000001401e9f7f pop      r15
00000001401e9f81 pop      r14
00000001401e9f83 pop      r13
00000001401e9f85 pop      r12
00000001401e9f87 pop      rdi
00000001401e9f88 pop      rsi
00000001401e9f89 pop      rbp
00000001401e9f8a ret      