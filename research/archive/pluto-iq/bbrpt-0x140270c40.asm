0000000140270c40 mov      r11, rsp
0000000140270c43 mov      qword ptr [r11 + 8], rbx
0000000140270c47 mov      qword ptr [r11 + 0x10], rdi
0000000140270c4b mov      qword ptr [r11 + 0x18], r12
0000000140270c4f mov      qword ptr [r11 + 0x20], r14
0000000140270c53 push     r15
0000000140270c55 sub      rsp, 0x70
0000000140270c59 mov      rbx, rcx
0000000140270c5c mov      rcx, qword ptr [rip + 0x6af39d]
0000000140270c63 lea      rdi, [rip + 0x6af396]
0000000140270c6a cmp      rcx, rdi
0000000140270c6d je       0x140270e71
0000000140270c73 cmp      byte ptr [rcx + 0x169], 4
0000000140270c7a lea      r12, [rip + 0x3abbaf]
0000000140270c81 lea      r14, [rip + 0x39d708]
0000000140270c88 lea      r15, [rip + 0x428251]
0000000140270c8f jb       0x140270cf1
0000000140270c91 mov      eax, dword ptr [rcx + 0x16c]
0000000140270c97 test     al, 1
0000000140270c99 je       0x140270cf1
0000000140270c9b mov      r8, qword ptr [rbx + 8]
0000000140270c9f mov      edx, 0x37f
0000000140270ca4 mov      rcx, qword ptr [rcx + 0x158]
0000000140270cab mov      r9, r14
0000000140270cae mov      eax, dword ptr [r8 + 0x18]
0000000140270cb2 mov      dword ptr [rsp + 0x58], eax
0000000140270cb6 mov      eax, dword ptr [r8 + 0x14]
0000000140270cba mov      dword ptr [rsp + 0x50], eax
0000000140270cbe mov      eax, dword ptr [r8 + 0x10]
0000000140270cc2 mov      dword ptr [rsp + 0x48], eax
0000000140270cc6 mov      eax, dword ptr [r8 + 0xc]
0000000140270cca mov      dword ptr [rsp + 0x40], eax
0000000140270cce mov      eax, dword ptr [r8 + 8]
0000000140270cd2 mov      dword ptr [rsp + 0x38], eax
0000000140270cd6 mov      eax, dword ptr [r8 + 4]
0000000140270cda mov      dword ptr [rsp + 0x30], eax
0000000140270cde mov      eax, dword ptr [r8]
0000000140270ce1 mov      r8, r15
0000000140270ce4 mov      dword ptr [rsp + 0x28], eax
0000000140270ce8 mov      qword ptr [r11 - 0x58], r12
0000000140270cec call     0x140085738
0000000140270cf1 mov      rcx, qword ptr [rip + 0x6af308]
0000000140270cf8 cmp      rcx, rdi
0000000140270cfb je       0x140270e71
0000000140270d01 cmp      byte ptr [rcx + 0x169], 4
0000000140270d08 jb       0x140270d74
0000000140270d0a mov      eax, dword ptr [rcx + 0x16c]
0000000140270d10 test     al, 1
0000000140270d12 je       0x140270d74
0000000140270d14 mov      r8, qword ptr [rbx + 8]
0000000140270d18 mov      edx, 0x380
0000000140270d1d mov      rcx, qword ptr [rcx + 0x158]
0000000140270d24 mov      r9, r14
0000000140270d27 mov      eax, dword ptr [r8 + 0x38]
0000000140270d2b mov      dword ptr [rsp + 0x60], eax
0000000140270d2f mov      eax, dword ptr [r8 + 0x34]
0000000140270d33 mov      dword ptr [rsp + 0x58], eax
0000000140270d37 mov      eax, dword ptr [r8 + 0x30]
0000000140270d3b mov      dword ptr [rsp + 0x50], eax
0000000140270d3f mov      eax, dword ptr [r8 + 0x2c]
0000000140270d43 mov      dword ptr [rsp + 0x48], eax
0000000140270d47 mov      eax, dword ptr [r8 + 0x28]
0000000140270d4b mov      dword ptr [rsp + 0x40], eax
0000000140270d4f mov      eax, dword ptr [r8 + 0x24]
0000000140270d53 mov      dword ptr [rsp + 0x38], eax
0000000140270d57 mov      eax, dword ptr [r8 + 0x20]
0000000140270d5b mov      dword ptr [rsp + 0x30], eax
0000000140270d5f mov      eax, dword ptr [r8 + 0x1c]
0000000140270d63 mov      r8, r15
0000000140270d66 mov      dword ptr [rsp + 0x28], eax
0000000140270d6a mov      qword ptr [rsp + 0x20], r12
0000000140270d6f call     0x14011f810
0000000140270d74 mov      rcx, qword ptr [rip + 0x6af285]
0000000140270d7b cmp      rcx, rdi
0000000140270d7e je       0x140270e71
0000000140270d84 cmp      byte ptr [rcx + 0x169], 4
0000000140270d8b jb       0x140270dcb
0000000140270d8d mov      eax, dword ptr [rcx + 0x16c]
0000000140270d93 test     al, 1
0000000140270d95 je       0x140270dcb
0000000140270d97 movzx    eax, byte ptr [rbx + 0x19]
0000000140270d9b mov      edx, 0x381
0000000140270da0 movzx    r8d, byte ptr [rbx + 0x18]
0000000140270da5 mov      r9, r14
0000000140270da8 mov      rcx, qword ptr [rcx + 0x158]
0000000140270daf mov      dword ptr [rsp + 0x38], eax
0000000140270db3 mov      eax, dword ptr [rbx]
0000000140270db5 mov      dword ptr [rsp + 0x30], r8d
0000000140270dba mov      r8, r15
0000000140270dbd mov      dword ptr [rsp + 0x28], eax
0000000140270dc1 mov      qword ptr [rsp + 0x20], r12
0000000140270dc6 call     0x1400328d4
0000000140270dcb mov      rcx, qword ptr [rip + 0x6af22e]
0000000140270dd2 cmp      rcx, rdi
0000000140270dd5 je       0x140270e71
0000000140270ddb cmp      byte ptr [rcx + 0x169], 4
0000000140270de2 jb       0x140270e1d
0000000140270de4 mov      eax, dword ptr [rcx + 0x16c]
0000000140270dea test     al, 1
0000000140270dec je       0x140270e1d
0000000140270dee mov      r8, qword ptr [rbx + 0x10]
0000000140270df2 mov      edx, 0x382
0000000140270df7 mov      rcx, qword ptr [rcx + 0x158]
0000000140270dfe mov      r9, r14
0000000140270e01 mov      eax, dword ptr [r8 + 4]
0000000140270e05 mov      dword ptr [rsp + 0x30], eax
0000000140270e09 mov      eax, dword ptr [r8]
0000000140270e0c mov      r8, r15
0000000140270e0f mov      dword ptr [rsp + 0x28], eax
0000000140270e13 mov      qword ptr [rsp + 0x20], r12
0000000140270e18 call     0x1400aa578
0000000140270e1d mov      rcx, qword ptr [rip + 0x6af1dc]
0000000140270e24 cmp      rcx, rdi
0000000140270e27 je       0x140270e71
0000000140270e29 cmp      byte ptr [rcx + 0x169], 4
0000000140270e30 jb       0x140270e71
0000000140270e32 mov      eax, dword ptr [rcx + 0x16c]
0000000140270e38 test     al, 1
0000000140270e3a je       0x140270e71
0000000140270e3c movzx    eax, byte ptr [rbx + 0x1b]
0000000140270e40 mov      edx, 0x383
0000000140270e45 movzx    r10d, byte ptr [rbx + 0x1a]
0000000140270e4a mov      r9, r14
0000000140270e4d mov      rcx, qword ptr [rcx + 0x158]
0000000140270e54 mov      r8, r15
0000000140270e57 mov      dword ptr [rsp + 0x38], eax
0000000140270e5b mov      eax, dword ptr [rbx + 4]
0000000140270e5e mov      dword ptr [rsp + 0x30], r10d
0000000140270e63 mov      dword ptr [rsp + 0x28], eax
0000000140270e67 mov      qword ptr [rsp + 0x20], r12
0000000140270e6c call     0x1400328d4
0000000140270e71 lea      r11, [rsp + 0x70]
0000000140270e76 mov      rbx, qword ptr [r11 + 0x10]
0000000140270e7a mov      rdi, qword ptr [r11 + 0x18]
0000000140270e7e mov      r12, qword ptr [r11 + 0x20]
0000000140270e82 mov      r14, qword ptr [r11 + 0x28]
0000000140270e86 mov      rsp, r11
0000000140270e89 pop      r15
0000000140270e8b ret      