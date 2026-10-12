00000001400b1c1c mov      rax, rsp
00000001400b1c1f mov      qword ptr [rax + 8], rbx
00000001400b1c23 mov      qword ptr [rax + 0x10], rbp
00000001400b1c27 mov      qword ptr [rax + 0x18], rsi
00000001400b1c2b mov      qword ptr [rax + 0x20], rdi
00000001400b1c2f push     r12
00000001400b1c31 push     r14
00000001400b1c33 push     r15
00000001400b1c35 sub      rsp, 0x60
00000001400b1c39 mov      r14, qword ptr [rdx + 0x18]
00000001400b1c3d mov      rdi, rdx
00000001400b1c40 movzx    ebp, r9b
00000001400b1c44 mov      rsi, rcx
00000001400b1c47 movzx    r15d, r8b
00000001400b1c4b movzx    edx, byte ptr [r14 + 8]
00000001400b1c50 cmp      dl, 2
00000001400b1c53 jne      0x1400b1c5e
00000001400b1c55 lea      r12, [rcx + 0x544ca0]
00000001400b1c5c jmp      0x1400b1c6f
00000001400b1c5e imul     r12, rdx, 0x1dc0
00000001400b1c65 add      r12, 0x53f360
00000001400b1c6c add      r12, rsi
00000001400b1c6f mov      rcx, qword ptr [rip + 0x86e38a]
00000001400b1c76 lea      rax, [rip + 0x86e383]
00000001400b1c7d cmp      rcx, rax
00000001400b1c80 je       0x1400b1ced
00000001400b1c82 cmp      byte ptr [rcx + 0x29], 3
00000001400b1c86 jb       0x1400b1ced
00000001400b1c88 test     dword ptr [rcx + 0x2c], 0x100
00000001400b1c8f je       0x1400b1ce6
00000001400b1c91 mov      rax, qword ptr [rdi + 0x10]
00000001400b1c95 lea      r9, [rip + 0x54b534]
00000001400b1c9c movzx    r11d, word ptr [rdi + 0x2c]
00000001400b1ca1 lea      r8, [rip + 0x5e1048]
00000001400b1ca8 mov      rcx, qword ptr [rcx + 0x18]
00000001400b1cac mov      ebx, edx
00000001400b1cae mov      dword ptr [rsp + 0x50], ebp
00000001400b1cb2 mov      edx, 0x100
00000001400b1cb7 movzx    r10d, byte ptr [rax + 0x15]
00000001400b1cbc mov      eax, dword ptr [rdi + 0xa48]
00000001400b1cc2 mov      dword ptr [rsp + 0x48], r15d
00000001400b1cc7 mov      dword ptr [rsp + 0x40], eax
00000001400b1ccb mov      eax, dword ptr [r14 + 0x24]
00000001400b1ccf mov      dword ptr [rsp + 0x38], eax
00000001400b1cd3 mov      dword ptr [rsp + 0x30], ebx
00000001400b1cd7 mov      dword ptr [rsp + 0x28], r10d
00000001400b1cdc mov      dword ptr [rsp + 0x20], r11d
00000001400b1ce1 call     0x140032cc0
00000001400b1ce6 lea      rax, [rip + 0x86e313]
00000001400b1ced xor      ebx, ebx
00000001400b1cef test     bpl, bpl
00000001400b1cf2 je       0x1400b1db7
00000001400b1cf8 mov      rdx, qword ptr [rdi + 0x10]
00000001400b1cfc cmp      dword ptr [rdx + 8], 0xa
00000001400b1d00 je       0x1400b1da0
00000001400b1d06 mov      r8d, dword ptr [rdi + 0xa48]
00000001400b1d0d test     r8b, 0x20
00000001400b1d11 je       0x1400b1d26
00000001400b1d13 xor      r8d, r8d
00000001400b1d16 mov      rdx, rdi
00000001400b1d19 mov      rcx, rsi
00000001400b1d1c call     0x1400b1494
00000001400b1d21 jmp      0x1400b1dae
00000001400b1d26 test     r8b, 0x10
00000001400b1d2a je       0x1400b1d3c
00000001400b1d2c xor      r8d, r8d
00000001400b1d2f mov      rdx, rdi
00000001400b1d32 mov      rcx, rsi
00000001400b1d35 call     0x1400b1524
00000001400b1d3a jmp      0x1400b1dae
00000001400b1d3c test     r8b, 8
00000001400b1d40 jne      0x1400b1da0
00000001400b1d42 mov      rcx, qword ptr [rip + 0x86e2b7]
00000001400b1d49 cmp      rcx, rax
00000001400b1d4c je       0x1400b1dae
00000001400b1d4e cmp      byte ptr [rcx + 0x29], 2
00000001400b1d52 jb       0x1400b1dae
00000001400b1d54 test     dword ptr [rcx + 0x2c], 0x100
00000001400b1d5b je       0x1400b1dae
00000001400b1d5d mov      rax, qword ptr [rdi + 0x18]
00000001400b1d61 lea      r9, [rip + 0x54b468]
00000001400b1d68 movzx    r11d, word ptr [rdi + 0x2c]
00000001400b1d6d mov      rcx, qword ptr [rcx + 0x18]
00000001400b1d71 mov      dword ptr [rsp + 0x38], r8d
00000001400b1d76 lea      r8, [rip + 0x5e0f73]
00000001400b1d7d movzx    r10d, byte ptr [rax + 8]
00000001400b1d82 movzx    eax, byte ptr [rdx + 0x15]
00000001400b1d86 mov      edx, 0x101
00000001400b1d8b mov      dword ptr [rsp + 0x30], r10d
00000001400b1d90 mov      dword ptr [rsp + 0x28], eax
00000001400b1d94 mov      dword ptr [rsp + 0x20], r11d
00000001400b1d99 call     0x14001c710
00000001400b1d9e jmp      0x1400b1dae
00000001400b1da0 mov      r8b, 3
00000001400b1da3 mov      rdx, rdi
00000001400b1da6 mov      rcx, rsi
00000001400b1da9 call     0x1400b158c
00000001400b1dae test     r15b, r15b
00000001400b1db1 je       0x1400b1e4d
00000001400b1db7 xor      edx, edx
00000001400b1db9 mov      rcx, rdi
00000001400b1dbc call     0x1401b7c00
00000001400b1dc1 lea      rcx, [rdi + 0xaa9]
00000001400b1dc8 xor      edx, edx
00000001400b1dca call     0x1400e10dc
00000001400b1dcf mov      byte ptr [rsi + 0xbbbf0], al
00000001400b1dd5 mov      rdx, rdi
00000001400b1dd8 mov      r8b, byte ptr [rdi + 0xb0e]
00000001400b1ddf mov      rcx, r12
00000001400b1de2 shr      r8b, 5
00000001400b1de6 call     0x1400de56c
00000001400b1deb lea      rcx, [rdi + 0xab5]
00000001400b1df2 call     0x1400de3c0
00000001400b1df7 mov      byte ptr [rsi + 0xbbbf1], al
00000001400b1dfd mov      rdx, rdi
00000001400b1e00 mov      r8b, byte ptr [rdi + 0xb0e]
00000001400b1e07 mov      rcx, rsi
00000001400b1e0a shr      r8b, 5
00000001400b1e0e call     0x14016a5f4
00000001400b1e13 mov      rcx, rdi
00000001400b1e16 call     0x14016a2b4
00000001400b1e1b mov      byte ptr [rsi + 0xbbbf2], al
00000001400b1e21 xor      r9d, r9d
00000001400b1e24 mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400b1e2b mov      rdx, rdi
00000001400b1e2e mov      dword ptr [rsp + 0x30], ebx
00000001400b1e32 mov      dword ptr [rsp + 0x28], ebx
00000001400b1e36 lea      r8d, [r9 + 2]
00000001400b1e3a mov      byte ptr [rsp + 0x20], bl
00000001400b1e3e mov      rcx, qword ptr [rax]
00000001400b1e41 mov      rcx, qword ptr [rcx + 0x20708]
00000001400b1e48 call     0x1401b6348
00000001400b1e4d lea      r11, [rsp + 0x60]
00000001400b1e52 mov      rbx, qword ptr [r11 + 0x20]
00000001400b1e56 mov      rbp, qword ptr [r11 + 0x28]
00000001400b1e5a mov      rsi, qword ptr [r11 + 0x30]
00000001400b1e5e mov      rdi, qword ptr [r11 + 0x38]
00000001400b1e62 mov      rsp, r11
00000001400b1e65 pop      r15
00000001400b1e67 pop      r14
00000001400b1e69 pop      r12
00000001400b1e6b ret      