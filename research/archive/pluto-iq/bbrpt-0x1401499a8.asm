00000001401499a8 test     rcx, rcx
00000001401499ab je       0x140149bab
00000001401499b1 mov      qword ptr [rsp + 8], rbx
00000001401499b6 mov      qword ptr [rsp + 0x10], rbp
00000001401499bb mov      qword ptr [rsp + 0x18], rsi
00000001401499c0 push     rdi
00000001401499c1 push     r14
00000001401499c3 push     r15
00000001401499c5 sub      rsp, 0x60
00000001401499c9 movzx    esi, byte ptr [rcx + 0x1a1]
00000001401499d0 xor      r15d, r15d
00000001401499d3 shl      rsi, 6
00000001401499d7 mov      rdi, rcx
00000001401499da mov      bpl, r15b
00000001401499dd cmp      qword ptr [rcx + 0xa0], r15
00000001401499e4 jne      0x1401499f2
00000001401499e6 call     0x1405c2040
00000001401499eb mov      qword ptr [rdi + 0xa0], rax
00000001401499f2 mov      r8b, byte ptr [rdi + 0x98]
00000001401499f9 lea      rbx, [rip + 0x7d6600]
0000000140149a00 cmp      r8b, 3
0000000140149a04 jae      0x140149aee
0000000140149a0a movzx    edx, byte ptr [rsi + rdi + 0xf4]
0000000140149a12 movzx    r14d, byte ptr [rdi + 0x97]
0000000140149a1a mov      ecx, edx
0000000140149a1c mov      eax, r14d
0000000140149a1f sub      eax, edx
0000000140149a21 sub      ecx, r14d
0000000140149a24 cmp      dl, r14b
0000000140149a27 cmovb    ecx, eax
0000000140149a2a inc      r8b
0000000140149a2d cmp      ecx, 5
0000000140149a30 movzx    edx, r8b
0000000140149a34 cmova    edx, r15d
0000000140149a38 mov      byte ptr [rdi + 0x98], dl
0000000140149a3e mov      rcx, qword ptr [rip + 0x7d65bb]
0000000140149a45 cmp      rcx, rbx
0000000140149a48 je       0x140149aee
0000000140149a4e cmp      byte ptr [rcx + 0x29], 4
0000000140149a52 jb       0x140149aee
0000000140149a58 test     dword ptr [rcx + 0x2c], 0x100
0000000140149a5f je       0x140149aee
0000000140149a65 movzx    eax, byte ptr [rsi + rdi + 0xe0]
0000000140149a6d cmp      al, 3
0000000140149a6f jb       0x140149a7a
0000000140149a71 mov      r9, qword ptr [rip + 0x54a0a8]
0000000140149a78 jmp      0x140149a85
0000000140149a7a lea      r9, [rip + 0x54a087]
0000000140149a81 mov      r9, qword ptr [r9 + rax*8]
0000000140149a85 movzx    r8d, byte ptr [rsi + rdi + 0xf4]
0000000140149a8e movzx    r10d, byte ptr [rsi + rdi + 0xea]
0000000140149a97 movzx    r11d, byte ptr [rsi + rdi + 0xe9]
0000000140149aa0 movzx    ebx, byte ptr [rsi + rdi + 0xe1]
0000000140149aa8 mov      rcx, qword ptr [rcx + 0x18]
0000000140149aac movzx    eax, dl
0000000140149aaf mov      edx, 0x3b
0000000140149ab4 mov      dword ptr [rsp + 0x50], eax
0000000140149ab8 mov      eax, dword ptr [rsi + rdi + 0xec]
0000000140149abf mov      dword ptr [rsp + 0x48], r14d
0000000140149ac4 mov      dword ptr [rsp + 0x40], eax
0000000140149ac8 mov      dword ptr [rsp + 0x38], r8d
0000000140149acd lea      r8, [rip + 0x54a09c]
0000000140149ad4 mov      dword ptr [rsp + 0x30], r10d
0000000140149ad9 mov      dword ptr [rsp + 0x28], r11d
0000000140149ade mov      dword ptr [rsp + 0x20], ebx
0000000140149ae2 call     0x140032cc0
0000000140149ae7 lea      rbx, [rip + 0x7d6512]
0000000140149aee mov      rcx, qword ptr [rdi + 0xa0]
0000000140149af5 call     0x1405c1fcc
0000000140149afa movzx    edx, byte ptr [rdi + 0x98]
0000000140149b01 mov      r8, rax
0000000140149b04 cmp      dl, 3
0000000140149b07 jb       0x140149b0e
0000000140149b09 mov      bpl, 1
0000000140149b0c jmp      0x140149b68
0000000140149b0e mov      r10d, 0x3e8
0000000140149b14 cmp      r8d, r10d
0000000140149b17 jbe      0x140149b68
0000000140149b19 mov      bpl, 1
0000000140149b1c mov      rcx, qword ptr [rip + 0x7d64dd]
0000000140149b23 cmp      rcx, rbx
0000000140149b26 je       0x140149b68
0000000140149b28 cmp      byte ptr [rcx + 0x29], 4
0000000140149b2c jb       0x140149b68
0000000140149b2e test     dword ptr [rcx + 0x2c], 0x100
0000000140149b35 je       0x140149b68
0000000140149b37 movzx    eax, byte ptr [rsi + rdi + 0xf4]
0000000140149b3f mov      r9d, edx
0000000140149b42 mov      rcx, qword ptr [rcx + 0x18]
0000000140149b46 mov      edx, 0x3c
0000000140149b4b mov      dword ptr [rsp + 0x30], eax
0000000140149b4f mov      dword ptr [rsp + 0x28], r9d
0000000140149b54 mov      r9d, r8d
0000000140149b57 lea      r8, [rip + 0x54a012]
0000000140149b5e mov      dword ptr [rsp + 0x20], r10d
0000000140149b63 call     0x140008794
0000000140149b68 mov      al, byte ptr [rsi + rdi + 0xf4]
0000000140149b6f test     bpl, bpl
0000000140149b72 je       0x140149b8c
0000000140149b74 mov      rcx, rdi
0000000140149b77 mov      byte ptr [rdi + 0xa8], al
0000000140149b7d call     0x140148e58
0000000140149b82 mov      rcx, rdi
0000000140149b85 call     0x14014b854
0000000140149b8a jmp      0x140149b92
0000000140149b8c mov      byte ptr [rdi + 0x97], al
0000000140149b92 lea      r11, [rsp + 0x60]
0000000140149b97 mov      rbx, qword ptr [r11 + 0x20]
0000000140149b9b mov      rbp, qword ptr [r11 + 0x28]
0000000140149b9f mov      rsi, qword ptr [r11 + 0x30]
0000000140149ba3 mov      rsp, r11
0000000140149ba6 pop      r15
0000000140149ba8 pop      r14
0000000140149baa pop      rdi
0000000140149bab ret      