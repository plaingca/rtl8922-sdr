00000001404e8cc0 sub      rsp, 0x38
00000001404e8cc4 mov      rax, qword ptr [rcx + 0x258]
00000001404e8ccb mov      r8, rcx
00000001404e8cce movzx    r9d, byte ptr [rax + 0x2e]
00000001404e8cd3 mov      edx, r9d
00000001404e8cd6 sub      edx, 7
00000001404e8cd9 je       0x1404e8dad
00000001404e8cdf sub      edx, 1
00000001404e8ce2 je       0x1404e8d97
00000001404e8ce8 sub      edx, 1
00000001404e8ceb je       0x1404e8d87
00000001404e8cf1 sub      edx, 1
00000001404e8cf4 je       0x1404e8da9
00000001404e8cfa sub      edx, 1
00000001404e8cfd je       0x1404e8d87
00000001404e8d03 sub      edx, 1
00000001404e8d06 je       0x1404e8da9
00000001404e8d0c sub      edx, 1
00000001404e8d0f je       0x1404e8da9
00000001404e8d15 sub      edx, 2
00000001404e8d18 je       0x1404e8da9
00000001404e8d1e cmp      edx, 1
00000001404e8d21 je       0x1404e8da9
00000001404e8d27 mov      rcx, qword ptr [rip + 0x4372d2]
00000001404e8d2e lea      rax, [rip + 0x4372cb]
00000001404e8d35 cmp      rcx, rax
00000001404e8d38 je       0x1404e8da9
00000001404e8d3a cmp      byte ptr [rcx + 0x169], 1
00000001404e8d41 jb       0x1404e8da9
00000001404e8d43 mov      eax, dword ptr [rcx + 0x16c]
00000001404e8d49 test     al, 8
00000001404e8d4b je       0x1404e8da9
00000001404e8d4d mov      rax, qword ptr [r8 + 0x140]
00000001404e8d54 mov      edx, 0xf
00000001404e8d59 mov      rcx, qword ptr [rcx + 0x158]
00000001404e8d60 movzx    r8d, byte ptr [rax + 0xd8]
00000001404e8d68 mov      dword ptr [rsp + 0x28], r8d
00000001404e8d6d lea      r8, [rip + 0x401424]
00000001404e8d74 mov      dword ptr [rsp + 0x20], r9d
00000001404e8d79 lea      r9, [rip + 0x174130]
00000001404e8d80 call     0x140002b04
00000001404e8d85 jmp      0x1404e8da9
00000001404e8d87 mov      rax, qword ptr [rcx + 0x140]
00000001404e8d8e movzx    ecx, byte ptr [rax + 0xd8]
00000001404e8d95 jmp      0x1404e8da9
00000001404e8d97 mov      rax, qword ptr [rcx + 0x140]
00000001404e8d9e movzx    ecx, byte ptr [rax + 0xd8]
00000001404e8da5 test     ecx, ecx
00000001404e8da7 je       0x1404e8dad
00000001404e8da9 xor      al, al
00000001404e8dab jmp      0x1404e8daf
00000001404e8dad mov      al, 1
00000001404e8daf add      rsp, 0x38
00000001404e8db3 ret      