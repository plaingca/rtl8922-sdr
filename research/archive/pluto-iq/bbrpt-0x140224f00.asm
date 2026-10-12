0000000140224f00 mov      qword ptr [rsp + 8], rbx
0000000140224f05 push     rdi
0000000140224f06 sub      rsp, 0x30
0000000140224f0a cmp      byte ptr [rcx + 0x287], 1
0000000140224f11 mov      r8, rdx
0000000140224f14 mov      rdi, rcx
0000000140224f17 jne      0x140224f7e
0000000140224f19 mov      rcx, qword ptr [rip + 0x6fb0e0]
0000000140224f20 lea      rax, [rip + 0x6fb0d9]
0000000140224f27 cmp      rcx, rax
0000000140224f2a je       0x140224f74
0000000140224f2c cmp      byte ptr [rcx + 0x169], 3
0000000140224f33 jb       0x140224f74
0000000140224f35 test     dword ptr [rcx + 0x16c], 0x200
0000000140224f3f je       0x140224f74
0000000140224f41 mov      rcx, qword ptr [rcx + 0x158]
0000000140224f48 lea      rax, [rip + 0x3f14f1]
0000000140224f4f mov      qword ptr [rsp + 0x28], rax
0000000140224f54 lea      r9, [rip + 0x3e9435]
0000000140224f5b mov      eax, dword ptr [r8 + 4]
0000000140224f5f mov      edx, 0xcb
0000000140224f64 lea      r8, [rip + 0x473a55]
0000000140224f6b mov      dword ptr [rsp + 0x20], eax
0000000140224f6f call     0x1400fcc1c
0000000140224f74 mov      eax, 4
0000000140224f79 jmp      0x140225014
0000000140224f7e test     dword ptr [rdx], 0x1000000
0000000140224f84 je       0x140225010
0000000140224f8a mov      rcx, qword ptr [rip + 0x6fb06f]
0000000140224f91 lea      rax, [rip + 0x6fb068]
0000000140224f98 cmp      rcx, rax
0000000140224f9b je       0x140224fd9
0000000140224f9d cmp      byte ptr [rcx + 0x169], 4
0000000140224fa4 jb       0x140224fd9
0000000140224fa6 test     dword ptr [rcx + 0x16c], 0x200
0000000140224fb0 je       0x140224fd9
0000000140224fb2 mov      eax, dword ptr [r8 + 4]
0000000140224fb6 lea      r9, [rip + 0x3e93d3]
0000000140224fbd mov      rcx, qword ptr [rcx + 0x158]
0000000140224fc4 lea      r8, [rip + 0x4739f5]
0000000140224fcb mov      edx, 0xcc
0000000140224fd0 mov      dword ptr [rsp + 0x20], eax
0000000140224fd4 call     0x1400088d8
0000000140224fd9 mov      r8d, dword ptr [rdi + 0x2a8]
0000000140224fe0 lea      r9, [rip + 0x3f1479]
0000000140224fe7 xor      edx, edx
0000000140224fe9 mov      rcx, rdi
0000000140224fec call     0x14021ddec
0000000140224ff1 xor      ebx, ebx
0000000140224ff3 mov      rcx, rdi
0000000140224ff6 test     eax, eax
0000000140224ff8 jne      0x140225007
0000000140224ffa call     0x1402239d8
0000000140224fff mov      byte ptr [rdi + 0x2c0], bl
0000000140225005 jmp      0x140225012
0000000140225007 call     0x14021d7bc
000000014022500c mov      ebx, eax
000000014022500e jmp      0x140225012
0000000140225010 xor      ebx, ebx
0000000140225012 mov      eax, ebx
0000000140225014 mov      rbx, qword ptr [rsp + 0x40]
0000000140225019 add      rsp, 0x30
000000014022501d pop      rdi
000000014022501e ret      