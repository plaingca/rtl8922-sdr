00000001401f3ae0 mov      qword ptr [rsp + 0x10], rbx
00000001401f3ae5 push     rbp
00000001401f3ae6 push     rsi
00000001401f3ae7 push     rdi
00000001401f3ae8 push     r12
00000001401f3aea push     r13
00000001401f3aec push     r14
00000001401f3aee push     r15
00000001401f3af0 sub      rsp, 0x80
00000001401f3af7 mov      rsi, rcx
00000001401f3afa mov      r12d, 1
00000001401f3b00 mov      rcx, qword ptr [rcx + 0x8d08]
00000001401f3b07 mov      ebx, r12d
00000001401f3b0a mov      rdi, rdx
00000001401f3b0d call     0x14005df60
00000001401f3b12 xor      r14d, r14d
00000001401f3b15 mov      rbp, rax
00000001401f3b18 movzx    r15d, r14w
00000001401f3b1c mov      rcx, qword ptr [rip + 0x72c4dd]
00000001401f3b23 lea      rax, [rip + 0x72c4d6]
00000001401f3b2a cmp      rcx, rax
00000001401f3b2d je       0x1401f3b6e
00000001401f3b2f cmp      byte ptr [rcx + 0x169], 5
00000001401f3b36 jb       0x1401f3b6e
00000001401f3b38 mov      eax, dword ptr [rcx + 0x16c]
00000001401f3b3e test     r12b, al
00000001401f3b41 je       0x1401f3b67
00000001401f3b43 mov      rcx, qword ptr [rcx + 0x158]
00000001401f3b4a lea      r9, [rip + 0x41a83f]
00000001401f3b51 mov      edx, 0x95
00000001401f3b56 mov      dword ptr [rsp + 0x20], r12d
00000001401f3b5b lea      r8, [rip + 0x4a495e]
00000001401f3b62 call     0x1400088d8
00000001401f3b67 lea      rax, [rip + 0x72c492]
00000001401f3b6e mov      r13, qword ptr [rsi + 0x8b80]
00000001401f3b75 test     r13, r13
00000001401f3b78 jne      0x1401f3bca
00000001401f3b7a mov      rcx, qword ptr [rip + 0x72c47f]
00000001401f3b81 cmp      rcx, rax
00000001401f3b84 je       0x1401f40af
00000001401f3b8a cmp      byte ptr [rcx + 0x169], 2
00000001401f3b91 jb       0x1401f40af
00000001401f3b97 mov      eax, dword ptr [rcx + 0x16c]
00000001401f3b9d test     r12b, al
00000001401f3ba0 je       0x1401f40af
00000001401f3ba6 mov      rcx, qword ptr [rcx + 0x158]
00000001401f3bad lea      r9, [rip + 0x41a7dc]
00000001401f3bb4 mov      edx, 0x96
00000001401f3bb9 lea      r8, [rip + 0x4a4900]
00000001401f3bc0 call     0x140008874
00000001401f3bc5 jmp      0x1401f40af
00000001401f3bca mov      rdx, qword ptr [r13 + 0x80]
00000001401f3bd1 mov      qword ptr [rsp + 0x50], rdx
00000001401f3bd6 test     rdi, rdi
00000001401f3bd9 jne      0x1401f3c24
00000001401f3bdb mov      rcx, qword ptr [rip + 0x72c41e]
00000001401f3be2 cmp      rcx, rax
00000001401f3be5 je       0x1401f3c1a
00000001401f3be7 cmp      byte ptr [rcx + 0x169], 2
00000001401f3bee jb       0x1401f3c1a
00000001401f3bf0 mov      eax, dword ptr [rcx + 0x16c]
00000001401f3bf6 test     r12b, al
00000001401f3bf9 je       0x1401f3c1a
00000001401f3bfb mov      rcx, qword ptr [rcx + 0x158]
00000001401f3c02 lea      r9, [rip + 0x41a787]
00000001401f3c09 mov      edx, 0x97
00000001401f3c0e lea      r8, [rip + 0x4a48ab]
00000001401f3c15 call     0x140008874
00000001401f3c1a mov      ebx, 5
00000001401f3c1f jmp      0x1401f40af
00000001401f3c24 movzx    eax, word ptr [rdi + 0x5c]
00000001401f3c28 lea      r8, [rsp + 0xc0]
00000001401f3c30 movzx    r12d, byte ptr [rdi + 0x77]
00000001401f3c35 mov      word ptr [rsp + 0xd0], ax
00000001401f3c3d mov      r9b, r12b
00000001401f3c40 movzx    eax, byte ptr [rdi + 0x4e]
00000001401f3c44 imul     rcx, rax, 0x38
00000001401f3c48 mov      rax, qword ptr [rcx + rbp + 0x1448]
00000001401f3c50 mov      rcx, rsi
00000001401f3c53 mov      qword ptr [rsp + 0x58], rax
00000001401f3c58 imul     rbp, r12, 0x200e8
00000001401f3c5f add      rbp, rdx
00000001401f3c62 movzx    eax, word ptr [rbp + 0x200e0]
00000001401f3c69 mov      word ptr [rsp + 0xc0], ax
00000001401f3c71 call     0x1401f2fe0
00000001401f3c76 cmp      eax, ebx
00000001401f3c78 je       0x1401f40ac
00000001401f3c7e mov      rdx, rbp
00000001401f3c81 mov      rcx, rsi
00000001401f3c84 call     0x1401f6a54
00000001401f3c89 xor      ebx, ebx
00000001401f3c8b mov      r14, rax
00000001401f3c8e test     rax, rax
00000001401f3c91 jne      0x1401f3d83
00000001401f3c97 cmp      word ptr [rbp + 0x92], bx
00000001401f3c9e jne      0x1401f3cae
00000001401f3ca0 mov      r12d, 1
00000001401f3ca6 mov      ebx, r12d
00000001401f3ca9 jmp      0x1401f40af
00000001401f3cae lea      r8, [rsp + 0xd8]
00000001401f3cb6 mov      dl, r12b
00000001401f3cb9 mov      rcx, rsi
00000001401f3cbc call     0x1401f4660
00000001401f3cc1 mov      rdx, rbp
00000001401f3cc4 mov      rcx, rsi
00000001401f3cc7 call     0x1401f6a54
00000001401f3ccc mov      r14, rax
00000001401f3ccf test     rax, rax
00000001401f3cd2 jne      0x1401f3d83
00000001401f3cd8 mov      rcx, qword ptr [rip + 0x72c321]
00000001401f3cdf lea      r13, [rip + 0x72c31a]
00000001401f3ce6 cmp      rcx, r13
00000001401f3ce9 je       0x1401f3d47
00000001401f3ceb cmp      byte ptr [rcx + 0x169], 2
00000001401f3cf2 jb       0x1401f3d47
00000001401f3cf4 mov      eax, dword ptr [rcx + 0x16c]
00000001401f3cfa test     al, 1
00000001401f3cfc je       0x1401f3d47
00000001401f3cfe movzx    r8d, word ptr [rbp + 0x92]
00000001401f3d06 mov      edx, 0x99
00000001401f3d0b movzx    r9d, word ptr [rbp + 0x90]
00000001401f3d13 movzx    eax, word ptr [rbp + 0x94]
00000001401f3d1a mov      rcx, qword ptr [rcx + 0x158]
00000001401f3d21 mov      dword ptr [rsp + 0x38], eax
00000001401f3d25 mov      dword ptr [rsp + 0x30], r8d
00000001401f3d2a lea      r8, [rip + 0x4a478f]
00000001401f3d31 mov      dword ptr [rsp + 0x28], r9d
00000001401f3d36 lea      r9, [rip + 0x41a653]
00000001401f3d3d mov      dword ptr [rsp + 0x20], r12d
00000001401f3d42 call     0x14001c710
00000001401f3d47 mov      eax, 0xcc
00000001401f3d4c mov      r12d, 1
00000001401f3d52 mov      ebx, r12d
00000001401f3d55 cmp      word ptr [rbp + 0x92], ax
00000001401f3d5c jbe      0x1401f40b6
00000001401f3d62 mov      rcx, rsi
00000001401f3d65 call     0x140225020
00000001401f3d6a cmp      al, 0x20
00000001401f3d6c jne      0x1401f40b6
00000001401f3d72 movzx    edx, byte ptr [rdi + 0x4e]
00000001401f3d76 mov      rcx, rsi
00000001401f3d79 call     0x1401dbbec
00000001401f3d7e jmp      0x1401f40b6
00000001401f3d83 movzx    ecx, byte ptr [rdi + 0xe8]
00000001401f3d8a mov      rax, qword ptr [rdi + 0xf0]
00000001401f3d91 test     cl, cl
00000001401f3d93 je       0x1401f3da9
00000001401f3d95 add      rax, 0x10
00000001401f3d99 mov      edx, ecx
00000001401f3d9b add      r15w, word ptr [rax]
00000001401f3d9f lea      rax, [rax + 0x18]
00000001401f3da3 sub      rdx, 1
00000001401f3da7 jne      0x1401f3d9b
00000001401f3da9 movzx    eax, r15w
00000001401f3dad mov      rdx, rdi
00000001401f3db0 mov      rcx, rsi
00000001401f3db3 mov      dword ptr [rdi + 0xe4], eax
00000001401f3db9 call     0x1401eff00
00000001401f3dbe xor      r15d, r15d
00000001401f3dc1 cmp      byte ptr [rdi + 0x21], r15b
00000001401f3dc5 je       0x1401f3dcc
00000001401f3dc7 mov      al, r15b
00000001401f3dca jmp      0x1401f3ddc
00000001401f3dcc mov      rcx, qword ptr [rsi + 0x8d08]
00000001401f3dd3 lea      rdx, [rdi + 0x24]
00000001401f3dd7 call     0x14025e28c
00000001401f3ddc mov      rdx, rdi
00000001401f3ddf mov      byte ptr [rdi + 0x79], al
00000001401f3de2 mov      rcx, rsi
00000001401f3de5 call     0x1401eeaac
00000001401f3dea test     eax, eax
00000001401f3dec je       0x1401f3e52
00000001401f3dee mov      rbx, qword ptr [rsi + 0x798]
00000001401f3df5 mov      rdx, rdi
00000001401f3df8 mov      rax, qword ptr [rbx + 0x9588]
00000001401f3dff mov      rcx, qword ptr [rbx + 0x10330]
00000001401f3e06 call     qword ptr [rip + 0x4904ec]
00000001401f3e0c mov      rax, qword ptr [rbx + 0x9578]
00000001401f3e13 test     rax, rax
00000001401f3e16 je       0x1401f3e2c
00000001401f3e18 mov      rcx, qword ptr [rsi + 0x798]
00000001401f3e1f mov      rcx, qword ptr [rcx + 0x10330]
00000001401f3e26 call     qword ptr [rip + 0x4904cc]
00000001401f3e2c test     rbp, rbp
00000001401f3e2f je       0x1401f3e44
00000001401f3e31 test     r14, r14
00000001401f3e34 je       0x1401f3e44
00000001401f3e36 mov      r8, r14
00000001401f3e39 mov      rdx, rbp
00000001401f3e3c mov      rcx, rsi
00000001401f3e3f call     0x1401f2e98
00000001401f3e44 mov      ebx, 5
00000001401f3e49 lea      r12d, [rbx - 4]
00000001401f3e4d jmp      0x1401f40af
00000001401f3e52 mov      rax, qword ptr [r14 + 0x10]
00000001401f3e56 lea      rdx, [rsp + 0x60]
00000001401f3e5b movzx    ebx, word ptr [rsp + 0xc0]
00000001401f3e63 mov      qword ptr [rsp + 0x60], rax
00000001401f3e68 movzx    eax, word ptr [rdi + 0x5c]
00000001401f3e6c mov      word ptr [rsp + 0x6a], bx
00000001401f3e71 mov      qword ptr [rsp + 0x70], rdi
00000001401f3e76 mov      word ptr [r14 + 0x34], ax
00000001401f3e7b mov      al, byte ptr [rdi + 0x54]
00000001401f3e7e mov      byte ptr [r14 + 0x36], al
00000001401f3e82 mov      rcx, qword ptr [rsi + 0x8d08]
00000001401f3e89 call     0x14025e2c4
00000001401f3e8e mov      ecx, eax
00000001401f3e90 movzx    eax, byte ptr [rsp + 0x68]
00000001401f3e95 mov      dword ptr [r14 + 0x20], eax
00000001401f3e99 mov      rax, qword ptr [rsi + 0x798]
00000001401f3ea0 cmp      byte ptr [rax + 0x10338], 1
00000001401f3ea7 jne      0x1401f3eb0
00000001401f3ea9 mov      byte ptr [rax + 0x10338], r15b
00000001401f3eb0 test     ecx, ecx
00000001401f3eb2 jne      0x1401f4090
00000001401f3eb8 movzx    ecx, word ptr [rsp + 0xd0]
00000001401f3ec0 mov      r9b, 1
00000001401f3ec3 movzx    eax, word ptr [rsp + 0x6a]
00000001401f3ec8 mov      r8, r14
00000001401f3ecb mov      rdx, rbp
00000001401f3ece mov      word ptr [r13 + rcx*2 + 0xa0], ax
00000001401f3ed7 mov      rcx, rsi
00000001401f3eda call     0x1401f2f3c
00000001401f3edf mov      word ptr [r14 + 0x32], bx
00000001401f3ee4 call     0x140031188
00000001401f3ee9 mov      rcx, rax
00000001401f3eec movabs   rax, 0x624dd2f1a9fbe77
00000001401f3ef6 mul      rcx
00000001401f3ef9 sub      rcx, rdx
00000001401f3efc shr      rcx, 1
00000001401f3eff add      rcx, rdx
00000001401f3f02 shr      rcx, 9
00000001401f3f06 mov      dword ptr [rdi + 0xd8], ecx
00000001401f3f0c cmp      byte ptr [rdi + 0x118], r15b
00000001401f3f13 je       0x1401f3f20
00000001401f3f15 call     0x140031188
00000001401f3f1a mov      dword ptr [rdi + 0x120], eax
00000001401f3f20 lea      r15, [rbp + 0x88]
00000001401f3f27 mov      rcx, r15
00000001401f3f2a lea      rdx, [rip + 0x41a41f]
00000001401f3f31 call     0x140031478
00000001401f3f36 mov      rcx, qword ptr [rip + 0x72c0c3]
00000001401f3f3d lea      r13, [rip + 0x72c0bc]
00000001401f3f44 cmp      rcx, r13
00000001401f3f47 je       0x1401f3fa5
00000001401f3f49 cmp      byte ptr [rcx + 0x169], 5
00000001401f3f50 jb       0x1401f3fa5
00000001401f3f52 mov      eax, dword ptr [rcx + 0x16c]
00000001401f3f58 test     al, 4
00000001401f3f5a je       0x1401f3fa5
00000001401f3f5c movzx    r8d, word ptr [rdi + 0x5c]
00000001401f3f61 mov      edx, 0x9b
00000001401f3f66 movzx    r9d, word ptr [rdi + 0x60]
00000001401f3f6b movzx    eax, byte ptr [rdi + 0x54]
00000001401f3f6f mov      rcx, qword ptr [rcx + 0x158]
00000001401f3f76 mov      dword ptr [rsp + 0x48], eax
00000001401f3f7a mov      dword ptr [rsp + 0x40], r8d
00000001401f3f7f lea      r8, [rip + 0x4a453a]
00000001401f3f86 mov      dword ptr [rsp + 0x38], r9d
00000001401f3f8b lea      r9, [rip + 0x41a3fe]
00000001401f3f92 mov      dword ptr [rsp + 0x30], ebx
00000001401f3f96 mov      dword ptr [rsp + 0x28], r12d
00000001401f3f9b mov      qword ptr [rsp + 0x20], rdi
00000001401f3fa0 call     0x1401eb928
00000001401f3fa5 mov      rax, qword ptr [rsp + 0x50]
00000001401f3faa movzx    edx, word ptr [rsp + 0xd0]
00000001401f3fb2 imul     rcx, r12, 0x401d
00000001401f3fb9 add      rcx, rbx
00000001401f3fbc mov      qword ptr [rax + rcx*8 + 0xe8], rdi
00000001401f3fc4 mov      rcx, qword ptr [rsp + 0x58]
00000001401f3fc9 imul     rax, r12, 0x158
00000001401f3fd0 mov      r12d, 1
00000001401f3fd6 add      dword ptr [rax + rcx], r12d
00000001401f3fda mov      rcx, rsi
00000001401f3fdd call     0x1401b71e0
00000001401f3fe2 xor      edi, edi
00000001401f3fe4 test     rax, rax
00000001401f3fe7 je       0x1401f3ffa
00000001401f3fe9 mov      rax, qword ptr [rax + 0xb70]
00000001401f3ff0 mov      rdx, qword ptr [rax + 0x148]
00000001401f3ff7 add      dword ptr [rdx], r12d
00000001401f3ffa lea      rdx, [rip + 0x41a35f]
00000001401f4001 mov      rcx, r15
00000001401f4004 call     0x140031684
00000001401f4009 lea      ecx, [r12 + rbx]
00000001401f400d mov      eax, 0x40011
00000001401f4012 mul      ecx
00000001401f4014 mov      eax, ecx
00000001401f4016 sub      eax, edx
00000001401f4018 shr      eax, 1
00000001401f401a add      eax, edx
00000001401f401c shr      eax, 0xd
00000001401f401f imul     eax, eax, 0x3fff
00000001401f4025 sub      ecx, eax
00000001401f4027 cmp      di, cx
00000001401f402a jne      0x1401f4030
00000001401f402c movzx    ecx, r12w
00000001401f4030 mov      word ptr [rbp + 0x200e0], cx
00000001401f4037 mov      ebx, edi
00000001401f4039 cmp      byte ptr [r14 + 0x31], r12b
00000001401f403d jne      0x1401f40b6
00000001401f403f mov      rcx, qword ptr [rip + 0x72bfba]
00000001401f4046 cmp      rcx, r13
00000001401f4049 je       0x1401f40f9
00000001401f404f cmp      byte ptr [rcx + 0x169], 5
00000001401f4056 jb       0x1401f40b6
00000001401f4058 mov      eax, dword ptr [rcx + 0x16c]
00000001401f405e test     r12b, al
00000001401f4061 je       0x1401f40b6
00000001401f4063 mov      rcx, qword ptr [rcx + 0x158]
00000001401f406a lea      rax, [rip + 0x41f30f]
00000001401f4071 mov      edx, 0x9c
00000001401f4076 mov      qword ptr [rsp + 0x20], rax
00000001401f407b lea      r9, [rip + 0x41a30e]
00000001401f4082 lea      r8, [rip + 0x4a4437]
00000001401f4089 call     0x14003c968
00000001401f408e jmp      0x1401f40b6
00000001401f4090 test     rbp, rbp
00000001401f4093 je       0x1401f3ca0
00000001401f4099 mov      r8, r14
00000001401f409c mov      rdx, rbp
00000001401f409f mov      rcx, rsi
00000001401f40a2 call     0x1401f2e98
00000001401f40a7 jmp      0x1401f3ca0
00000001401f40ac mov      r12, rbx
00000001401f40af lea      r13, [rip + 0x72bf4a]
00000001401f40b6 mov      rcx, qword ptr [rip + 0x72bf43]
00000001401f40bd cmp      rcx, r13
00000001401f40c0 je       0x1401f40f9
00000001401f40c2 cmp      byte ptr [rcx + 0x169], 5
00000001401f40c9 jb       0x1401f40f9
00000001401f40cb mov      edx, dword ptr [rcx + 0x16c]
00000001401f40d1 test     r12b, dl
00000001401f40d4 je       0x1401f40f9
00000001401f40d6 mov      rcx, qword ptr [rcx + 0x158]
00000001401f40dd lea      r9, [rip + 0x41a2ac]
00000001401f40e4 mov      edx, 0x9d
00000001401f40e9 mov      dword ptr [rsp + 0x20], ebx
00000001401f40ed lea      r8, [rip + 0x4a43cc]
00000001401f40f4 call     0x1400088d8
00000001401f40f9 mov      eax, ebx
00000001401f40fb mov      rbx, qword ptr [rsp + 0xc8]
00000001401f4103 add      rsp, 0x80
00000001401f410a pop      r15
00000001401f410c pop      r14
00000001401f410e pop      r13
00000001401f4110 pop      r12
00000001401f4112 pop      rdi
00000001401f4113 pop      rsi
00000001401f4114 pop      rbp
00000001401f4115 ret      