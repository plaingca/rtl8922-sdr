0000000140251c80 mov      rax, rsp
0000000140251c83 mov      qword ptr [rax + 0x10], rbx
0000000140251c87 mov      qword ptr [rax + 0x18], rsi
0000000140251c8b push     rdi
0000000140251c8c sub      rsp, 0x30
0000000140251c90 mov      rbx, qword ptr [rcx]
0000000140251c93 mov      rsi, rdx
0000000140251c96 mov      rdi, rcx
0000000140251c99 mov      dword ptr [rax + 0xc], 0x2a
0000000140251ca0 mov      rcx, rbx
0000000140251ca3 mov      dword ptr [rax + 8], 5
0000000140251caa xor      r8d, r8d
0000000140251cad lea      rdx, [rax + 8]
0000000140251cb1 call     0x1401d9f18
0000000140251cb6 test     eax, eax
0000000140251cb8 je       0x140251cf6
0000000140251cba mov      rcx, qword ptr [rip + 0x6ce33f]
0000000140251cc1 lea      rax, [rip + 0x6ce338]
0000000140251cc8 cmp      rcx, rax
0000000140251ccb je       0x140251e91
0000000140251cd1 cmp      byte ptr [rcx + 0x169], 3
0000000140251cd8 jb       0x140251e91
0000000140251cde mov      eax, dword ptr [rcx + 0x16c]
0000000140251ce4 test     al, 1
0000000140251ce6 je       0x140251e91
0000000140251cec mov      edx, 0x22
0000000140251cf1 jmp      0x140251e6b
0000000140251cf6 xor      r8d, r8d
0000000140251cf9 mov      dword ptr [rsp + 0x40], 2
0000000140251d01 lea      rdx, [rsp + 0x40]
0000000140251d06 mov      rcx, rbx
0000000140251d09 call     0x1401d9f18
0000000140251d0e test     eax, eax
0000000140251d10 je       0x140251d4e
0000000140251d12 mov      rcx, qword ptr [rip + 0x6ce2e7]
0000000140251d19 lea      rax, [rip + 0x6ce2e0]
0000000140251d20 cmp      rcx, rax
0000000140251d23 je       0x140251e91
0000000140251d29 cmp      byte ptr [rcx + 0x169], 3
0000000140251d30 jb       0x140251e91
0000000140251d36 mov      eax, dword ptr [rcx + 0x16c]
0000000140251d3c test     al, 1
0000000140251d3e je       0x140251e91
0000000140251d44 mov      edx, 0x23
0000000140251d49 jmp      0x140251e6b
0000000140251d4e mov      rax, qword ptr [rbx + 0x798]
0000000140251d55 cmp      dword ptr [rax + 0x9618], 2
0000000140251d5c je       0x140251dbb
0000000140251d5e xor      r8d, r8d
0000000140251d61 mov      dword ptr [rsp + 0x40], 6
0000000140251d69 lea      rdx, [rsp + 0x40]
0000000140251d6e mov      rcx, rbx
0000000140251d71 call     0x1401d9f18
0000000140251d76 test     eax, eax
0000000140251d78 je       0x140251dbb
0000000140251d7a cmp      eax, 7
0000000140251d7d je       0x140251dbb
0000000140251d7f mov      rcx, qword ptr [rip + 0x6ce27a]
0000000140251d86 lea      rax, [rip + 0x6ce273]
0000000140251d8d cmp      rcx, rax
0000000140251d90 je       0x140251e91
0000000140251d96 cmp      byte ptr [rcx + 0x169], 3
0000000140251d9d jb       0x140251e91
0000000140251da3 mov      eax, dword ptr [rcx + 0x16c]
0000000140251da9 test     al, 1
0000000140251dab je       0x140251e91
0000000140251db1 mov      edx, 0x24
0000000140251db6 jmp      0x140251e6b
0000000140251dbb xor      r8d, r8d
0000000140251dbe mov      dword ptr [rsp + 0x40], 7
0000000140251dc6 lea      rdx, [rsp + 0x40]
0000000140251dcb mov      rcx, rbx
0000000140251dce call     0x1401d9f18
0000000140251dd3 test     eax, eax
0000000140251dd5 je       0x140251e10
0000000140251dd7 mov      rcx, qword ptr [rip + 0x6ce222]
0000000140251dde lea      rax, [rip + 0x6ce21b]
0000000140251de5 cmp      rcx, rax
0000000140251de8 je       0x140251e91
0000000140251dee cmp      byte ptr [rcx + 0x169], 3
0000000140251df5 jb       0x140251e91
0000000140251dfb mov      eax, dword ptr [rcx + 0x16c]
0000000140251e01 test     al, 1
0000000140251e03 je       0x140251e91
0000000140251e09 mov      edx, 0x26
0000000140251e0e jmp      0x140251e6b
0000000140251e10 mov      rax, qword ptr [rbx + 0x798]
0000000140251e17 cmp      dword ptr [rax + 0x9618], 2
0000000140251e1e je       0x140251ea8
0000000140251e24 xor      r8d, r8d
0000000140251e27 mov      dword ptr [rsp + 0x40], 8
0000000140251e2f lea      rdx, [rsp + 0x40]
0000000140251e34 mov      rcx, rbx
0000000140251e37 call     0x1401d9f18
0000000140251e3c test     eax, eax
0000000140251e3e je       0x140251ea8
0000000140251e40 mov      rcx, qword ptr [rip + 0x6ce1b9]
0000000140251e47 lea      rax, [rip + 0x6ce1b2]
0000000140251e4e cmp      rcx, rax
0000000140251e51 je       0x140251e91
0000000140251e53 cmp      byte ptr [rcx + 0x169], 3
0000000140251e5a jb       0x140251e91
0000000140251e5c mov      eax, dword ptr [rcx + 0x16c]
0000000140251e62 test     al, 1
0000000140251e64 je       0x140251e91
0000000140251e66 mov      edx, 0x27
0000000140251e6b mov      rcx, qword ptr [rcx + 0x158]
0000000140251e72 lea      rax, [rip + 0x3c7397]
0000000140251e79 lea      r9, [rip + 0x3bc510]
0000000140251e80 mov      qword ptr [rsp + 0x20], rax
0000000140251e85 lea      r8, [rip + 0x446cd4]
0000000140251e8c call     0x14003c968
0000000140251e91 mov      dl, 5
0000000140251e93 mov      rcx, rsi
0000000140251e96 call     0x140252ec0
0000000140251e9b mov      rdx, rsi
0000000140251e9e mov      rcx, rdi
0000000140251ea1 call     0x140252668
0000000140251ea6 jmp      0x140251eb8
0000000140251ea8 mov      rcx, rdi
0000000140251eab call     0x140251ec8
0000000140251eb0 mov      rcx, rdi
0000000140251eb3 call     0x140251c40
0000000140251eb8 mov      rbx, qword ptr [rsp + 0x48]
0000000140251ebd mov      rsi, qword ptr [rsp + 0x50]
0000000140251ec2 add      rsp, 0x30
0000000140251ec6 pop      rdi
0000000140251ec7 ret      