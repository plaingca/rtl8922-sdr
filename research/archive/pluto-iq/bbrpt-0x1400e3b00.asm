00000001400e3b00 mov      qword ptr [rsp + 8], rbx
00000001400e3b05 mov      qword ptr [rsp + 0x10], rsi
00000001400e3b0a push     rdi
00000001400e3b0b sub      rsp, 0x20
00000001400e3b0f mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400e3b16 mov      rbx, rcx
00000001400e3b19 mov      rsi, qword ptr [rcx + 0xaf280]
00000001400e3b20 mov      edi, 1
00000001400e3b25 cmp      qword ptr [rax], rcx
00000001400e3b28 jne      0x1400e3ddf
00000001400e3b2e cmp      byte ptr [rcx + 0xc5d80], 0
00000001400e3b35 jne      0x1400e3b7f
00000001400e3b37 mov      rcx, qword ptr [rip + 0x83c4c2]
00000001400e3b3e lea      rax, [rip + 0x83c4bb]
00000001400e3b45 cmp      rcx, rax
00000001400e3b48 je       0x1400e3ddf
00000001400e3b4e cmp      byte ptr [rcx + 0x29], 4
00000001400e3b52 jb       0x1400e3ddf
00000001400e3b58 test     dword ptr [rcx + 0x2c], 0x800
00000001400e3b5f je       0x1400e3ddf
00000001400e3b65 mov      rcx, qword ptr [rcx + 0x18]
00000001400e3b69 lea      r8, [rip + 0x5af5e8]
00000001400e3b70 mov      edx, 0x91
00000001400e3b75 call     0x140001b88
00000001400e3b7a jmp      0x1400e3ddf
00000001400e3b7f mov      eax, dword ptr [rdx]
00000001400e3b81 cmp      eax, 0xd010118
00000001400e3b86 je       0x1400e3cee
00000001400e3b8c cmp      eax, 0xd01011b
00000001400e3b91 je       0x1400e3bdd
00000001400e3b93 cmp      eax, 0xff070118
00000001400e3b98 je       0x1400e3cee
00000001400e3b9e cmp      eax, 0xff07011b
00000001400e3ba3 je       0x1400e3bdd
00000001400e3ba5 mov      rcx, qword ptr [rip + 0x83c454]
00000001400e3bac lea      rax, [rip + 0x83c44d]
00000001400e3bb3 cmp      rcx, rax
00000001400e3bb6 je       0x1400e3ddd
00000001400e3bbc cmp      byte ptr [rcx + 0x29], 4
00000001400e3bc0 jb       0x1400e3ddd
00000001400e3bc6 test     dword ptr [rcx + 0x2c], 0x800
00000001400e3bcd je       0x1400e3ddd
00000001400e3bd3 mov      edx, 0x98
00000001400e3bd8 jmp      0x1400e3d31
00000001400e3bdd mov      ecx, dword ptr [r8]
00000001400e3be0 sub      ecx, 8
00000001400e3be3 je       0x1400e3c8e
00000001400e3be9 cmp      ecx, edi
00000001400e3beb je       0x1400e3c25
00000001400e3bed mov      rcx, qword ptr [rip + 0x83c40c]
00000001400e3bf4 lea      rax, [rip + 0x83c405]
00000001400e3bfb cmp      rcx, rax
00000001400e3bfe je       0x1400e3ddd
00000001400e3c04 cmp      byte ptr [rcx + 0x29], 4
00000001400e3c08 jb       0x1400e3ddd
00000001400e3c0e test     dword ptr [rcx + 0x2c], 0x800
00000001400e3c15 je       0x1400e3ddd
00000001400e3c1b mov      edx, 0x94
00000001400e3c20 jmp      0x1400e3d31
00000001400e3c25 mov      rcx, qword ptr [rip + 0x83c3d4]
00000001400e3c2c lea      rax, [rip + 0x83c3cd]
00000001400e3c33 cmp      rcx, rax
00000001400e3c36 je       0x1400e3c5c
00000001400e3c38 cmp      byte ptr [rcx + 0x29], 4
00000001400e3c3c jb       0x1400e3c5c
00000001400e3c3e test     dword ptr [rcx + 0x2c], 0x800
00000001400e3c45 je       0x1400e3c5c
00000001400e3c47 mov      rcx, qword ptr [rcx + 0x18]
00000001400e3c4b lea      r8, [rip + 0x5af506]
00000001400e3c52 mov      edx, 0x93
00000001400e3c57 call     0x140001b88
00000001400e3c5c mov      eax, 0x20
00000001400e3c61 mov      word ptr [rbx + 0xc15a5], 0x101
00000001400e3c6a mov      dword ptr [rbx + 0xc0ba0], eax
00000001400e3c70 mov      dword ptr [rbx + 0xc0ba4], eax
00000001400e3c76 mov      word ptr [rbx + 0xc15a9], 0x1012
00000001400e3c7f mov      dword ptr [rsi + 0x68], edi
00000001400e3c82 mov      dword ptr [rsi + 0x6c], 8
00000001400e3c89 jmp      0x1400e3ddd
00000001400e3c8e mov      rcx, qword ptr [rip + 0x83c36b]
00000001400e3c95 lea      rax, [rip + 0x83c364]
00000001400e3c9c cmp      rcx, rax
00000001400e3c9f je       0x1400e3cc5
00000001400e3ca1 cmp      byte ptr [rcx + 0x29], 4
00000001400e3ca5 jb       0x1400e3cc5
00000001400e3ca7 test     dword ptr [rcx + 0x2c], 0x800
00000001400e3cae je       0x1400e3cc5
00000001400e3cb0 mov      rcx, qword ptr [rcx + 0x18]
00000001400e3cb4 lea      r8, [rip + 0x5af49d]
00000001400e3cbb mov      edx, 0x92
00000001400e3cc0 call     0x140001b88
00000001400e3cc5 mov      eax, 0x20
00000001400e3cca mov      word ptr [rbx + 0xc15a9], 0x1012
00000001400e3cd3 mov      dword ptr [rbx + 0xc0ba0], eax
00000001400e3cd9 mov      dword ptr [rbx + 0xc0ba4], eax
00000001400e3cdf mov      dword ptr [rsi + 0x68], edi
00000001400e3ce2 mov      dword ptr [rsi + 0x6c], 7
00000001400e3ce9 jmp      0x1400e3ddd
00000001400e3cee mov      ecx, dword ptr [r8]
00000001400e3cf1 sub      ecx, 9
00000001400e3cf4 je       0x1400e3d89
00000001400e3cfa cmp      ecx, edi
00000001400e3cfc je       0x1400e3d46
00000001400e3cfe mov      rcx, qword ptr [rip + 0x83c2fb]
00000001400e3d05 lea      rax, [rip + 0x83c2f4]
00000001400e3d0c cmp      rcx, rax
00000001400e3d0f je       0x1400e3ddd
00000001400e3d15 cmp      byte ptr [rcx + 0x29], 4
00000001400e3d19 jb       0x1400e3ddd
00000001400e3d1f test     dword ptr [rcx + 0x2c], 0x800
00000001400e3d26 je       0x1400e3ddd
00000001400e3d2c mov      edx, 0x97
00000001400e3d31 mov      rcx, qword ptr [rcx + 0x18]
00000001400e3d35 lea      r8, [rip + 0x5af41c]
00000001400e3d3c call     0x140001b88
00000001400e3d41 jmp      0x1400e3ddd
00000001400e3d46 mov      dword ptr [rbx + 0xc16c8], 3
00000001400e3d50 mov      word ptr [rbx + 0xc15a5], 0x101
00000001400e3d59 mov      byte ptr [rbx + 0xfba77], 0
00000001400e3d60 mov      rcx, qword ptr [rip + 0x83c299]
00000001400e3d67 lea      rax, [rip + 0x83c292]
00000001400e3d6e cmp      rcx, rax
00000001400e3d71 je       0x1400e3ddd
00000001400e3d73 cmp      byte ptr [rcx + 0x29], 4
00000001400e3d77 jb       0x1400e3ddd
00000001400e3d79 test     dword ptr [rcx + 0x2c], 0x800
00000001400e3d80 je       0x1400e3ddd
00000001400e3d82 mov      edx, 0x96
00000001400e3d87 jmp      0x1400e3dca
00000001400e3d89 mov      dword ptr [rbx + 0xc16c8], 3
00000001400e3d93 mov      word ptr [rbx + 0xc15a5], 0x101
00000001400e3d9c mov      byte ptr [rbx + 0xfba77], dil
00000001400e3da3 mov      rcx, qword ptr [rip + 0x83c256]
00000001400e3daa lea      rax, [rip + 0x83c24f]
00000001400e3db1 cmp      rcx, rax
00000001400e3db4 je       0x1400e3ddd
00000001400e3db6 cmp      byte ptr [rcx + 0x29], 4
00000001400e3dba jb       0x1400e3ddd
00000001400e3dbc test     dword ptr [rcx + 0x2c], 0x800
00000001400e3dc3 je       0x1400e3ddd
00000001400e3dc5 mov      edx, 0x95
00000001400e3dca mov      r9d, dword ptr [r8]
00000001400e3dcd lea      r8, [rip + 0x5af384]
00000001400e3dd4 mov      rcx, qword ptr [rcx + 0x18]
00000001400e3dd8 call     0x140001bb0
00000001400e3ddd xor      edi, edi
00000001400e3ddf mov      rbx, qword ptr [rsp + 0x30]
00000001400e3de4 mov      eax, edi
00000001400e3de6 mov      rsi, qword ptr [rsp + 0x38]
00000001400e3deb add      rsp, 0x20
00000001400e3def pop      rdi
00000001400e3df0 ret      