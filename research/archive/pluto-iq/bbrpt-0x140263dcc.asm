0000000140263dcc mov      qword ptr [rsp + 0x10], rbx
0000000140263dd1 push     rdi
0000000140263dd2 sub      rsp, 0x50
0000000140263dd6 and      dword ptr [rsp + 0x60], 0
0000000140263ddb mov      rbx, rdx
0000000140263dde lea      rdx, [rsp + 0x60]
0000000140263de3 call     0x14027c6bc
0000000140263de8 mov      edi, eax
0000000140263dea test     eax, eax
0000000140263dec jne      0x140263e8d
0000000140263df2 movzx    r9d, byte ptr [rsp + 0x61]
0000000140263df8 movzx    r10d, byte ptr [rsp + 0x63]
0000000140263dfe movzx    r11d, byte ptr [rsp + 0x62]
0000000140263e04 mov      edx, dword ptr [rsp + 0x60]
0000000140263e08 mov      byte ptr [rbx + 1], r9b
0000000140263e0c mov      byte ptr [rbx + 3], r10b
0000000140263e10 mov      byte ptr [rbx + 2], r11b
0000000140263e14 mov      byte ptr [rbx], dl
0000000140263e16 mov      rcx, qword ptr [rip + 0x6bc1e3]
0000000140263e1d lea      r8, [rip + 0x6bc1dc]
0000000140263e24 cmp      rcx, r8
0000000140263e27 je       0x140263ede
0000000140263e2d cmp      byte ptr [rcx + 0x169], 4
0000000140263e34 jb       0x140263ede
0000000140263e3a mov      eax, dword ptr [rcx + 0x16c]
0000000140263e40 test     al, 1
0000000140263e42 je       0x140263ede
0000000140263e48 mov      rcx, qword ptr [rcx + 0x158]
0000000140263e4f lea      r8, [rip + 0x434e92]
0000000140263e56 mov      eax, r10d
0000000140263e59 movzx    r10d, dl
0000000140263e5d mov      dword ptr [rsp + 0x40], eax
0000000140263e61 lea      edx, [rdi + 0x1b]
0000000140263e64 mov      dword ptr [rsp + 0x38], r9d
0000000140263e69 lea      rax, [rip + 0x3b6d60]
0000000140263e70 mov      dword ptr [rsp + 0x30], r11d
0000000140263e75 lea      r9, [rip + 0x3aa514]
0000000140263e7c mov      dword ptr [rsp + 0x28], r10d
0000000140263e81 mov      qword ptr [rsp + 0x20], rax
0000000140263e86 call     0x14019ee74
0000000140263e8b jmp      0x140263ede
0000000140263e8d mov      rcx, qword ptr [rip + 0x6bc16c]
0000000140263e94 lea      r8, [rip + 0x6bc165]
0000000140263e9b cmp      rcx, r8
0000000140263e9e je       0x140263ede
0000000140263ea0 cmp      byte ptr [rcx + 0x169], 2
0000000140263ea7 jb       0x140263ede
0000000140263ea9 mov      eax, dword ptr [rcx + 0x16c]
0000000140263eaf test     al, 1
0000000140263eb1 je       0x140263ede
0000000140263eb3 mov      rcx, qword ptr [rcx + 0x158]
0000000140263eba lea      rax, [rip + 0x3b6d0f]
0000000140263ec1 mov      edx, 0x1c
0000000140263ec6 mov      qword ptr [rsp + 0x20], rax
0000000140263ecb lea      r9, [rip + 0x3aa4be]
0000000140263ed2 lea      r8, [rip + 0x434e0f]
0000000140263ed9 call     0x14003c968
0000000140263ede mov      rbx, qword ptr [rsp + 0x68]
0000000140263ee3 mov      eax, edi
0000000140263ee5 add      rsp, 0x50
0000000140263ee9 pop      rdi
0000000140263eea ret      