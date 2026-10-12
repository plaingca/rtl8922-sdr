00000001401f9cfc mov      qword ptr [rsp + 8], rbx
00000001401f9d01 mov      qword ptr [rsp + 0x10], rsi
00000001401f9d06 push     rdi
00000001401f9d07 sub      rsp, 0x20
00000001401f9d0b mov      eax, dword ptr [r8]
00000001401f9d0e mov      rdi, r8
00000001401f9d11 movzx    edx, ax
00000001401f9d14 mov      rsi, rcx
00000001401f9d17 bt       eax, 0x18
00000001401f9d1b jae      0x1401f9d8c
00000001401f9d1d xor      ebx, ebx
00000001401f9d1f cmp      edx, 0x96
00000001401f9d25 jne      0x1401f9e02
00000001401f9d2b mov      rdx, r8
00000001401f9d2e call     0x1401f82ac
00000001401f9d33 test     eax, eax
00000001401f9d35 jne      0x1401f9e02
00000001401f9d3b mov      rcx, qword ptr [rip + 0x7262be]
00000001401f9d42 lea      rax, [rip + 0x7262b7]
00000001401f9d49 cmp      rcx, rax
00000001401f9d4c je       0x1401f9e02
00000001401f9d52 cmp      byte ptr [rcx + 0x169], 5
00000001401f9d59 jb       0x1401f9e02
00000001401f9d5f mov      eax, dword ptr [rcx + 0x16c]
00000001401f9d65 test     al, 1
00000001401f9d67 je       0x1401f9e02
00000001401f9d6d mov      rcx, qword ptr [rcx + 0x158]
00000001401f9d74 lea      edx, [rbx + 0x17]
00000001401f9d77 lea      r9, [rip + 0x414612]
00000001401f9d7e lea      r8, [rip + 0x49e76b]
00000001401f9d85 call     0x140008874
00000001401f9d8a jmp      0x1401f9e02
00000001401f9d8c sub      edx, 0x3f
00000001401f9d8f je       0x1401f9df8
00000001401f9d91 cmp      edx, 0x58
00000001401f9d94 je       0x1401f9d9a
00000001401f9d96 xor      ebx, ebx
00000001401f9d98 jmp      0x1401f9e02
00000001401f9d9a mov      rdx, rdi
00000001401f9d9d call     0x1401f8208
00000001401f9da2 test     eax, eax
00000001401f9da4 jne      0x1401f9deb
00000001401f9da6 mov      rcx, qword ptr [rip + 0x726253]
00000001401f9dad lea      rax, [rip + 0x72624c]
00000001401f9db4 cmp      rcx, rax
00000001401f9db7 je       0x1401f9deb
00000001401f9db9 cmp      byte ptr [rcx + 0x169], 5
00000001401f9dc0 jb       0x1401f9deb
00000001401f9dc2 mov      eax, dword ptr [rcx + 0x16c]
00000001401f9dc8 test     al, 1
00000001401f9dca je       0x1401f9deb
00000001401f9dcc mov      rcx, qword ptr [rcx + 0x158]
00000001401f9dd3 lea      r9, [rip + 0x4145b6]
00000001401f9dda mov      edx, 0x18
00000001401f9ddf lea      r8, [rip + 0x49e70a]
00000001401f9de6 call     0x140008874
00000001401f9deb mov      rdx, rdi
00000001401f9dee mov      rcx, rsi
00000001401f9df1 call     0x1401fb374
00000001401f9df6 jmp      0x1401f9e00
00000001401f9df8 mov      rdx, rdi
00000001401f9dfb call     0x1401bbbe8
00000001401f9e00 mov      ebx, eax
00000001401f9e02 mov      rsi, qword ptr [rsp + 0x38]
00000001401f9e07 mov      eax, ebx
00000001401f9e09 mov      rbx, qword ptr [rsp + 0x30]
00000001401f9e0e add      rsp, 0x20
00000001401f9e12 pop      rdi
00000001401f9e13 ret      