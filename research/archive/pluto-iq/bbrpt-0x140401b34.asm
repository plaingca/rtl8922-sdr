0000000140401b34 mov      rax, rsp
0000000140401b37 mov      qword ptr [rax + 8], rbx
0000000140401b3b mov      qword ptr [rax + 0x10], rdi
0000000140401b3f mov      qword ptr [rax + 0x18], r12
0000000140401b43 mov      qword ptr [rax + 0x20], r14
0000000140401b47 push     r15
0000000140401b49 sub      rsp, 0x60
0000000140401b4d mov      rbx, rcx
0000000140401b50 mov      rcx, qword ptr [rip + 0x51e4a9]
0000000140401b57 lea      r15, [rip + 0x51e4a2]
0000000140401b5e lea      r12, [rip + 0x2d48cb]
0000000140401b65 cmp      rcx, r15
0000000140401b68 je       0x140401bcc
0000000140401b6a cmp      byte ptr [rcx + 0x169], 4
0000000140401b71 jb       0x140401b99
0000000140401b73 bt       dword ptr [rcx + 0x16c], 0xc
0000000140401b7b jae      0x140401b99
0000000140401b7d movzx    r9d, byte ptr [rbx + 0x2c72]
0000000140401b85 mov      edx, 0x14
0000000140401b8a mov      rcx, qword ptr [rcx + 0x158]
0000000140401b91 mov      r8, r12
0000000140401b94 call     0x140001bb0
0000000140401b99 mov      rcx, qword ptr [rip + 0x51e460]
0000000140401ba0 cmp      rcx, r15
0000000140401ba3 je       0x140401bcc
0000000140401ba5 cmp      byte ptr [rcx + 0x169], 4
0000000140401bac jb       0x140401bcc
0000000140401bae bt       dword ptr [rcx + 0x16c], 0xc
0000000140401bb6 jae      0x140401bcc
0000000140401bb8 mov      rcx, qword ptr [rcx + 0x158]
0000000140401bbf mov      edx, 0x15
0000000140401bc4 mov      r8, r12
0000000140401bc7 call     0x140001b88
0000000140401bcc cmp      byte ptr [rbx + 0x1416], 0
0000000140401bd3 jbe      0x140401c6f
0000000140401bd9 mov      dil, 0x41
0000000140401bdc mov      rcx, qword ptr [rip + 0x51e41d]
0000000140401be3 cmp      rcx, r15
0000000140401be6 je       0x140401c5d
0000000140401be8 cmp      byte ptr [rcx + 0x169], 4
0000000140401bef jb       0x140401c5d
0000000140401bf1 bt       dword ptr [rcx + 0x16c], 0xc
0000000140401bf9 jae      0x140401c5d
0000000140401bfb mov      rcx, qword ptr [rcx + 0x158]
0000000140401c02 lea      eax, [rdi - 0x41]
0000000140401c05 movzx    edx, al
0000000140401c08 movzx    r8d, byte ptr [rdx + rbx + 0x2c5e]
0000000140401c11 movzx    r9d, byte ptr [rdx + rbx + 0x2c5c]
0000000140401c1a movzx    eax, byte ptr [rdx + rbx + 0x2c60]
0000000140401c22 movzx    r10d, byte ptr [rdx + rbx + 0x2c5a]
0000000140401c2b mov      edx, 0x16
0000000140401c30 mov      dword ptr [rsp + 0x50], eax
0000000140401c34 mov      byte ptr [rsp + 0x48], dil
0000000140401c39 mov      dword ptr [rsp + 0x40], r8d
0000000140401c3e mov      r8, r12
0000000140401c41 mov      byte ptr [rsp + 0x38], dil
0000000140401c46 mov      dword ptr [rsp + 0x30], r9d
0000000140401c4b mov      r9b, dil
0000000140401c4e mov      byte ptr [rsp + 0x28], dil
0000000140401c53 mov      dword ptr [rsp + 0x20], r10d
0000000140401c58 call     0x1402fb208
0000000140401c5d inc      dil
0000000140401c60 lea      eax, [rdi - 0x41]
0000000140401c63 cmp      al, byte ptr [rbx + 0x1416]
0000000140401c69 jb       0x140401bdc
0000000140401c6f mov      rcx, qword ptr [rip + 0x51e38a]
0000000140401c76 cmp      rcx, r15
0000000140401c79 je       0x140401ca2
0000000140401c7b cmp      byte ptr [rcx + 0x169], 4
0000000140401c82 jb       0x140401ca2
0000000140401c84 bt       dword ptr [rcx + 0x16c], 0xc
0000000140401c8c jae      0x140401ca2
0000000140401c8e mov      rcx, qword ptr [rcx + 0x158]
0000000140401c95 mov      edx, 0x17
0000000140401c9a mov      r8, r12
0000000140401c9d call     0x140001b88
0000000140401ca2 cmp      byte ptr [rbx + 0x1416], 0
0000000140401ca9 jbe      0x140401d54
0000000140401caf mov      dil, 0x41
0000000140401cb2 mov      rcx, qword ptr [rip + 0x51e347]
0000000140401cb9 cmp      rcx, r15
0000000140401cbc je       0x140401d42
0000000140401cc2 cmp      byte ptr [rcx + 0x169], 4
0000000140401cc9 jb       0x140401d42
0000000140401ccb bt       dword ptr [rcx + 0x16c], 0xc
0000000140401cd3 jae      0x140401d42
0000000140401cd5 mov      rcx, qword ptr [rcx + 0x158]
0000000140401cdc lea      eax, [rdi - 0x41]
0000000140401cdf movzx    edx, al
0000000140401ce2 movsx    r8d, byte ptr [rdx + rbx + 0x2c66]
0000000140401ceb movsx    eax, byte ptr [rdx + rbx + 0x2c68]
0000000140401cf3 movsx    r9d, byte ptr [rdx + rbx + 0x2c64]
0000000140401cfc movsx    r10d, byte ptr [rdx + rbx + 0x2c62]
0000000140401d05 mov      edx, 0x18
0000000140401d0a sar      r8d, 1
0000000140401d0d sar      r9d, 1
0000000140401d10 sar      eax, 1
0000000140401d12 mov      dword ptr [rsp + 0x50], eax
0000000140401d16 mov      byte ptr [rsp + 0x48], dil
0000000140401d1b mov      dword ptr [rsp + 0x40], r8d
0000000140401d20 mov      r8, r12
0000000140401d23 mov      byte ptr [rsp + 0x38], dil
0000000140401d28 mov      dword ptr [rsp + 0x30], r9d
0000000140401d2d mov      r9b, dil
0000000140401d30 sar      r10d, 1
0000000140401d33 mov      byte ptr [rsp + 0x28], dil
0000000140401d38 mov      dword ptr [rsp + 0x20], r10d
0000000140401d3d call     0x1402fb208
0000000140401d42 inc      dil
0000000140401d45 lea      eax, [rdi - 0x41]
0000000140401d48 cmp      al, byte ptr [rbx + 0x1416]
0000000140401d4e jb       0x140401cb2
0000000140401d54 mov      rcx, qword ptr [rip + 0x51e2a5]
0000000140401d5b cmp      rcx, r15
0000000140401d5e je       0x140401d87
0000000140401d60 cmp      byte ptr [rcx + 0x169], 4
0000000140401d67 jb       0x140401d87
0000000140401d69 bt       dword ptr [rcx + 0x16c], 0xc
0000000140401d71 jae      0x140401d87
0000000140401d73 mov      rcx, qword ptr [rcx + 0x158]
0000000140401d7a mov      edx, 0x19
0000000140401d7f mov      r8, r12
0000000140401d82 call     0x140001b88
0000000140401d87 cmp      byte ptr [rbx + 0x1416], 0
0000000140401d8e jbe      0x140401e2a
0000000140401d94 mov      dil, 0x41
0000000140401d97 mov      rcx, qword ptr [rip + 0x51e262]
0000000140401d9e cmp      rcx, r15
0000000140401da1 je       0x140401e18
0000000140401da3 cmp      byte ptr [rcx + 0x169], 4
0000000140401daa jb       0x140401e18
0000000140401dac bt       dword ptr [rcx + 0x16c], 0xc
0000000140401db4 jae      0x140401e18
0000000140401db6 mov      rcx, qword ptr [rcx + 0x158]
0000000140401dbd lea      eax, [rdi - 0x41]
0000000140401dc0 movzx    edx, al
0000000140401dc3 movzx    r8d, byte ptr [rdx + rbx + 0x2c6e]
0000000140401dcc movzx    r9d, byte ptr [rdx + rbx + 0x2c6c]
0000000140401dd5 movzx    eax, byte ptr [rdx + rbx + 0x2c70]
0000000140401ddd movzx    r10d, byte ptr [rdx + rbx + 0x2c6a]
0000000140401de6 mov      edx, 0x1a
0000000140401deb mov      dword ptr [rsp + 0x50], eax
0000000140401def mov      byte ptr [rsp + 0x48], dil
0000000140401df4 mov      dword ptr [rsp + 0x40], r8d
0000000140401df9 mov      r8, r12
0000000140401dfc mov      byte ptr [rsp + 0x38], dil
0000000140401e01 mov      dword ptr [rsp + 0x30], r9d
0000000140401e06 mov      r9b, dil
0000000140401e09 mov      byte ptr [rsp + 0x28], dil
0000000140401e0e mov      dword ptr [rsp + 0x20], r10d
0000000140401e13 call     0x1402fb208
0000000140401e18 inc      dil
0000000140401e1b lea      eax, [rdi - 0x41]
0000000140401e1e cmp      al, byte ptr [rbx + 0x1416]
0000000140401e24 jb       0x140401d97
0000000140401e2a lea      r11, [rsp + 0x60]
0000000140401e2f mov      rbx, qword ptr [r11 + 0x10]
0000000140401e33 mov      rdi, qword ptr [r11 + 0x18]
0000000140401e37 mov      r12, qword ptr [r11 + 0x20]
0000000140401e3b mov      r14, qword ptr [r11 + 0x28]
0000000140401e3f mov      rsp, r11
0000000140401e42 pop      r15
0000000140401e44 ret      