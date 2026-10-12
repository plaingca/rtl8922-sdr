00000001400c1db8 mov      qword ptr [rsp + 8], rbx
00000001400c1dbd mov      qword ptr [rsp + 0x10], rbp
00000001400c1dc2 mov      qword ptr [rsp + 0x18], rsi
00000001400c1dc7 push     rdi
00000001400c1dc8 push     r12
00000001400c1dca push     r13
00000001400c1dcc push     r14
00000001400c1dce push     r15
00000001400c1dd0 sub      rsp, 0x20
00000001400c1dd4 xor      edi, edi
00000001400c1dd6 test     rcx, rcx
00000001400c1dd9 jne      0x1400c1e1f
00000001400c1ddb mov      rcx, qword ptr [rip + 0x85e21e]
00000001400c1de2 lea      rax, [rip + 0x85e217]
00000001400c1de9 cmp      rcx, rax
00000001400c1dec je       0x1400c1ff1
00000001400c1df2 cmp      byte ptr [rcx + 0x29], 3
00000001400c1df6 jb       0x1400c1ff1
00000001400c1dfc mov      eax, dword ptr [rcx + 0x2c]
00000001400c1dff test     al, 0x20
00000001400c1e01 je       0x1400c1ff1
00000001400c1e07 lea      edx, [rdi + 0x4a]
00000001400c1e0a mov      rcx, qword ptr [rcx + 0x18]
00000001400c1e0e lea      r8, [rip + 0x5d0efb]
00000001400c1e15 call     0x140001b88
00000001400c1e1a jmp      0x1400c1ff1
00000001400c1e1f call     0x140082448
00000001400c1e24 mov      rsi, rax
00000001400c1e27 test     rax, rax
00000001400c1e2a jne      0x1400c1e5d
00000001400c1e2c mov      rcx, qword ptr [rip + 0x85e1cd]
00000001400c1e33 lea      rax, [rip + 0x85e1c6]
00000001400c1e3a cmp      rcx, rax
00000001400c1e3d je       0x1400c1ff1
00000001400c1e43 cmp      byte ptr [rcx + 0x29], 3
00000001400c1e47 jb       0x1400c1ff1
00000001400c1e4d mov      eax, dword ptr [rcx + 0x2c]
00000001400c1e50 test     al, 0x20
00000001400c1e52 je       0x1400c1ff1
00000001400c1e58 lea      edx, [rsi + 0x4b]
00000001400c1e5b jmp      0x1400c1e0a
00000001400c1e5d mov      rax, qword ptr [rax + 0xaf3b8]
00000001400c1e64 mov      rcx, rsi
00000001400c1e67 mov      rbp, qword ptr [rsi + 0xab230]
00000001400c1e6e mov      rbx, qword ptr [rax]
00000001400c1e71 mov      r13, qword ptr [rbx + 0x20710]
00000001400c1e78 call     0x1400b2d18
00000001400c1e7d mov      rdx, qword ptr [rsi + 0xaf3b8]
00000001400c1e84 mov      r15, rax
00000001400c1e87 mov      r14, qword ptr [rax + 0x2c8]
00000001400c1e8e mov      rcx, qword ptr [rdx]
00000001400c1e91 mov      rdx, qword ptr [rsi + 0xab230]
00000001400c1e98 mov      rcx, qword ptr [rcx + 0x20708]
00000001400c1e9f call     0x1401b6de0
00000001400c1ea4 mov      rdx, rsi
00000001400c1ea7 lea      rcx, [rbx + 0x18]
00000001400c1eab mov      r12, rax
00000001400c1eae call     0x1400bb968
00000001400c1eb3 test     r13, r13
00000001400c1eb6 jne      0x1400c1eed
00000001400c1eb8 mov      rcx, qword ptr [rip + 0x85e141]
00000001400c1ebf lea      rax, [rip + 0x85e13a]
00000001400c1ec6 cmp      rcx, rax
00000001400c1ec9 je       0x1400c1ff1
00000001400c1ecf cmp      byte ptr [rcx + 0x29], 3
00000001400c1ed3 jb       0x1400c1ff1
00000001400c1ed9 mov      eax, dword ptr [rcx + 0x2c]
00000001400c1edc test     al, 0x20
00000001400c1ede je       0x1400c1ff1
00000001400c1ee4 lea      edx, [r13 + 0x4c]
00000001400c1ee8 jmp      0x1400c1fda
00000001400c1eed test     rbp, rbp
00000001400c1ef0 jne      0x1400c1f26
00000001400c1ef2 mov      rcx, qword ptr [rip + 0x85e107]
00000001400c1ef9 lea      rax, [rip + 0x85e100]
00000001400c1f00 cmp      rcx, rax
00000001400c1f03 je       0x1400c1ff1
00000001400c1f09 cmp      byte ptr [rcx + 0x29], 3
00000001400c1f0d jb       0x1400c1ff1
00000001400c1f13 mov      eax, dword ptr [rcx + 0x2c]
00000001400c1f16 test     al, 0x20
00000001400c1f18 je       0x1400c1ff1
00000001400c1f1e lea      edx, [rbp + 0x4d]
00000001400c1f21 jmp      0x1400c1fda
00000001400c1f26 test     r14, r14
00000001400c1f29 je       0x1400c1fb5
00000001400c1f2f cmp      byte ptr [r15 + 0x2d0], dil
00000001400c1f36 je       0x1400c1fb5
00000001400c1f38 lea      r9, [r13 + 0xe998]
00000001400c1f3f test     r9, r9
00000001400c1f42 jne      0x1400c1f76
00000001400c1f44 mov      rcx, qword ptr [rip + 0x85e0b5]
00000001400c1f4b lea      rax, [rip + 0x85e0ae]
00000001400c1f52 cmp      rcx, rax
00000001400c1f55 je       0x1400c1ff1
00000001400c1f5b cmp      byte ptr [rcx + 0x29], 3
00000001400c1f5f jb       0x1400c1ff1
00000001400c1f65 mov      eax, dword ptr [rcx + 0x2c]
00000001400c1f68 test     al, 0x20
00000001400c1f6a je       0x1400c1ff1
00000001400c1f70 lea      edx, [r9 + 0x4f]
00000001400c1f74 jmp      0x1400c1fda
00000001400c1f76 mov      ecx, dword ptr [r12 + 0x24]
00000001400c1f7b lea      eax, [rcx - 3]
00000001400c1f7e test     eax, 0xfffffffc
00000001400c1f83 jne      0x1400c1f8f
00000001400c1f85 mov      eax, 1
00000001400c1f8a cmp      ecx, 5
00000001400c1f8d jne      0x1400c1f91
00000001400c1f8f mov      eax, edi
00000001400c1f91 test     eax, eax
00000001400c1f93 mov      rdx, rbp
00000001400c1f96 mov      rcx, rsi
00000001400c1f99 cmove    rdi, r14
00000001400c1f9d mov      r8, rdi
00000001400c1fa0 call     0x1400b9e94
00000001400c1fa5 mov      r8, r14
00000001400c1fa8 mov      rdx, rbp
00000001400c1fab mov      rcx, rsi
00000001400c1fae call     0x1400ba1f0
00000001400c1fb3 jmp      0x1400c1ff1
00000001400c1fb5 mov      rcx, qword ptr [rip + 0x85e044]
00000001400c1fbc lea      rax, [rip + 0x85e03d]
00000001400c1fc3 cmp      rcx, rax
00000001400c1fc6 je       0x1400c1ff1
00000001400c1fc8 cmp      byte ptr [rcx + 0x29], 3
00000001400c1fcc jb       0x1400c1ff1
00000001400c1fce mov      eax, dword ptr [rcx + 0x2c]
00000001400c1fd1 test     al, 0x20
00000001400c1fd3 je       0x1400c1ff1
00000001400c1fd5 mov      edx, 0x4e
00000001400c1fda mov      rcx, qword ptr [rcx + 0x18]
00000001400c1fde lea      r9, [rip + 0x53b65b]
00000001400c1fe5 lea      r8, [rip + 0x5d0d24]
00000001400c1fec call     0x140008874
00000001400c1ff1 mov      rbx, qword ptr [rsp + 0x50]
00000001400c1ff6 mov      rbp, qword ptr [rsp + 0x58]
00000001400c1ffb mov      rsi, qword ptr [rsp + 0x60]
00000001400c2000 add      rsp, 0x20
00000001400c2004 pop      r15
00000001400c2006 pop      r14
00000001400c2008 pop      r13
00000001400c200a pop      r12
00000001400c200c pop      rdi
00000001400c200d ret      