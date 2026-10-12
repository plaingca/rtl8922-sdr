0000000140255d28 push     rbx
0000000140255d2a sub      rsp, 0x30
0000000140255d2e mov      r11, qword ptr [rcx + 0x10328]
0000000140255d35 lea      eax, [r8 - 2]
0000000140255d39 mov      ecx, dword ptr [rdx + 0xa48]
0000000140255d3f mov      ebx, 1
0000000140255d44 mov      r10, r9
0000000140255d47 cmp      al, bl
0000000140255d49 jbe      0x140255d52
0000000140255d4b xor      eax, eax
0000000140255d4d jmp      0x140255e6c
0000000140255d52 mov      rax, qword ptr [rdx + 0x10]
0000000140255d56 mov      r9d, dword ptr [rax + 8]
0000000140255d5a lea      eax, [r9 - 1]
0000000140255d5e test     eax, 0xfffffff5
0000000140255d63 jne      0x140255e19
0000000140255d69 cmp      r9d, 3
0000000140255d6d je       0x140255e19
0000000140255d73 cmp      r8b, 2
0000000140255d77 jne      0x140255dcb
0000000140255d79 movzx    edx, word ptr [rdx + 0x2c]
0000000140255d7d mov      r9, r10
0000000140255d80 mov      rcx, r11
0000000140255d83 call     0x140255a3c
0000000140255d88 mov      ebx, eax
0000000140255d8a test     eax, eax
0000000140255d8c je       0x140255e6a
0000000140255d92 mov      rcx, qword ptr [rip + 0x6ca267]
0000000140255d99 lea      rax, [rip + 0x6ca260]
0000000140255da0 cmp      rcx, rax
0000000140255da3 je       0x140255e6a
0000000140255da9 cmp      byte ptr [rcx + 0x169], 3
0000000140255db0 jb       0x140255e6a
0000000140255db6 mov      eax, dword ptr [rcx + 0x16c]
0000000140255dbc test     al, 1
0000000140255dbe je       0x140255e6a
0000000140255dc4 mov      edx, 0x35
0000000140255dc9 jmp      0x140255e44
0000000140255dcb cmp      ecx, 8
0000000140255dce jl       0x140255e6a
0000000140255dd4 movzx    edx, word ptr [rdx + 0x2c]
0000000140255dd8 mov      r9, r10
0000000140255ddb mov      r8b, 3
0000000140255dde mov      rcx, r11
0000000140255de1 call     0x140255a3c
0000000140255de6 mov      ebx, eax
0000000140255de8 test     eax, eax
0000000140255dea je       0x140255e6a
0000000140255dec mov      rcx, qword ptr [rip + 0x6ca20d]
0000000140255df3 lea      rax, [rip + 0x6ca206]
0000000140255dfa cmp      rcx, rax
0000000140255dfd je       0x140255e6a
0000000140255dff cmp      byte ptr [rcx + 0x169], 3
0000000140255e06 jb       0x140255e6a
0000000140255e08 mov      eax, dword ptr [rcx + 0x16c]
0000000140255e0e test     al, 1
0000000140255e10 je       0x140255e6a
0000000140255e12 mov      edx, 0x36
0000000140255e17 jmp      0x140255e44
0000000140255e19 mov      rcx, qword ptr [rip + 0x6ca1e0]
0000000140255e20 lea      rax, [rip + 0x6ca1d9]
0000000140255e27 cmp      rcx, rax
0000000140255e2a je       0x140255e6a
0000000140255e2c cmp      byte ptr [rcx + 0x169], 3
0000000140255e33 jb       0x140255e6a
0000000140255e35 mov      eax, dword ptr [rcx + 0x16c]
0000000140255e3b test     bl, al
0000000140255e3d je       0x140255e6a
0000000140255e3f mov      edx, 0x34
0000000140255e44 mov      rcx, qword ptr [rcx + 0x158]
0000000140255e4b lea      rax, [rip + 0x3c3a5e]
0000000140255e52 lea      r9, [rip + 0x3b8537]
0000000140255e59 mov      qword ptr [rsp + 0x20], rax
0000000140255e5e lea      r8, [rip + 0x442da3]
0000000140255e65 call     0x14003c968
0000000140255e6a mov      eax, ebx
0000000140255e6c add      rsp, 0x30
0000000140255e70 pop      rbx
0000000140255e71 ret      