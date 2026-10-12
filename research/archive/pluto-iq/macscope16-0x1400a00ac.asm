000000014009ff80 mov      rax, rsp
000000014009ff83 mov      qword ptr [rax + 8], rbx
000000014009ff87 mov      qword ptr [rax + 0x10], rsi
000000014009ff8b mov      qword ptr [rax + 0x18], rdi
000000014009ff8f mov      qword ptr [rax + 0x20], r9
000000014009ff93 push     rbp
000000014009ff94 push     r12
000000014009ff96 push     r13
000000014009ff98 push     r14
000000014009ff9a push     r15
000000014009ff9c lea      rbp, [rax - 0x5f]
000000014009ffa0 sub      rsp, 0x90
000000014009ffa7 xor      eax, eax
000000014009ffa9 mov      r14, r8
000000014009ffac mov      r12, rdx
000000014009ffaf mov      dword ptr [rbp + 0x11], eax
000000014009ffb2 xor      edi, edi
000000014009ffb4 mov      word ptr [rbp + 0x15], ax
000000014009ffb8 lea      r8, [rip + 0x55c1e1]
000000014009ffbf mov      word ptr [rbp + 0xf], di
000000014009ffc3 mov      edx, 0x1000
000000014009ffc8 mov      rbx, r9
000000014009ffcb mov      r15, rcx
000000014009ffce call     0x14008df70
000000014009ffd3 mov      r13, rax
000000014009ffd6 test     rax, rax
000000014009ffd9 je       0x1400a00e5
000000014009ffdf mov      rcx, qword ptr [rax + 0x18]
000000014009ffe3 mov      qword ptr [rbp + 7], rcx
000000014009ffe7 mov      rcx, qword ptr [rip + 0x880012]
000000014009ffee lea      rdx, [rip + 0x88000b]
000000014009fff5 cmp      rcx, rdx
000000014009fff8 je       0x1400a006e
000000014009fffa cmp      byte ptr [rcx + 0x29], 4
000000014009fffe jb       0x1400a006e
00000001400a0000 test     dword ptr [rcx + 0x2c], 0x100
00000001400a0007 je       0x1400a006e
00000001400a0009 movzx    r8d, byte ptr [r14 + 5]
00000001400a000e lea      r9, [rip + 0x55c18b]
00000001400a0015 movzx    eax, byte ptr [r14 + 6]
00000001400a001a mov      edx, 0x137
00000001400a001f movzx    r10d, byte ptr [r14 + 4]
00000001400a0024 movzx    r11d, byte ptr [r14 + 3]
00000001400a0029 movzx    ebx, byte ptr [r14 + 2]
00000001400a002e movzx    edi, byte ptr [r14 + 1]
00000001400a0033 movzx    esi, byte ptr [r14 + 0x1612]
00000001400a003b mov      rcx, qword ptr [rcx + 0x18]
00000001400a003f mov      dword ptr [rsp + 0x50], eax
00000001400a0043 mov      dword ptr [rsp + 0x48], r8d
00000001400a0048 lea      r8, [rip + 0x5f2c61]
00000001400a004f mov      dword ptr [rsp + 0x40], r10d
00000001400a0054 mov      dword ptr [rsp + 0x38], r11d
00000001400a0059 mov      dword ptr [rsp + 0x30], ebx
00000001400a005d mov      dword ptr [rsp + 0x28], edi
00000001400a0061 mov      dword ptr [rsp + 0x20], esi
00000001400a0065 call     0x140032cc0
00000001400a006a mov      rbx, qword ptr [rbp + 0x7f]
00000001400a006e movups   xmm0, xmmword ptr [r12]
00000001400a0073 mov      r8b, byte ptr [r14 + 0x1612]
00000001400a007a lea      rdx, [rbp + 0x17]
00000001400a007e movdqu   xmmword ptr [rbp + 0x17], xmm0
00000001400a0083 cmp      r8b, 1
00000001400a0087 jbe      0x1400a009b
00000001400a0089 lea      r9, [rbp + 7]
00000001400a008d mov      rcx, r15
00000001400a0090 call     0x14009cd7c
00000001400a0095 movaps   xmm0, xmmword ptr [rbp + 7]
00000001400a0099 jmp      0x1400a00b7
00000001400a009b xor      r9d, r9d
00000001400a009e mov      byte ptr [rsp + 0x20], 0xff
00000001400a00a3 lea      rcx, [rbp + 0x27]
00000001400a00a7 lea      r8d, [r9 + 0x47]
00000001400a00ab call     0x14007ef10
00000001400a00b0 movups   xmm0, xmmword ptr [rax]
00000001400a00b3 movaps   xmmword ptr [rbp + 7], xmm0
00000001400a00b7 pextrw   eax, xmm0, 4
00000001400a00bc test     ax, ax
00000001400a00bf je       0x1400a00d8
00000001400a00c1 mov      r9, rbx
00000001400a00c4 movdqa   xmmword ptr [rbp + 0x17], xmm0
00000001400a00c9 mov      r8, r14
00000001400a00cc lea      rdx, [rbp + 0x17]
00000001400a00d0 mov      rcx, r15
00000001400a00d3 call     0x14009bc74
00000001400a00d8 mov      rdx, r13
00000001400a00db mov      rcx, r15
00000001400a00de call     0x140092aac
00000001400a00e3 jmp      0x1400a011c
00000001400a00e5 mov      rcx, qword ptr [rip + 0x87ff14]
00000001400a00ec lea      rdx, [rip + 0x87ff0d]
00000001400a00f3 cmp      rcx, rdx
00000001400a00f6 je       0x1400a011c
00000001400a00f8 cmp      byte ptr [rcx + 0x29], 2
00000001400a00fc jb       0x1400a011c
00000001400a00fe test     dword ptr [rcx + 0x2c], 0x100
00000001400a0105 je       0x1400a011c
00000001400a0107 mov      rcx, qword ptr [rcx + 0x18]
00000001400a010b lea      r8, [rip + 0x5f2b9e]
00000001400a0112 mov      edx, 0x138
00000001400a0117 call     0x140001b88
00000001400a011c lea      r11, [rsp + 0x90]
00000001400a0124 mov      rbx, qword ptr [r11 + 0x30]
00000001400a0128 mov      rsi, qword ptr [r11 + 0x38]
00000001400a012c mov      rdi, qword ptr [r11 + 0x40]
00000001400a0130 mov      rsp, r11
00000001400a0133 pop      r15
00000001400a0135 pop      r14
00000001400a0137 pop      r13
00000001400a0139 pop      r12
00000001400a013b pop      rbp
00000001400a013c ret      