00000001404d0ae8 push     rbx
00000001404d0aea push     rbp
00000001404d0aeb push     rsi
00000001404d0aec push     rdi
00000001404d0aed push     r12
00000001404d0aef push     r13
00000001404d0af1 push     r14
00000001404d0af3 sub      rsp, 0x140
00000001404d0afa mov      rax, qword ptr [rip + 0x45695f]
00000001404d0b01 xor      rax, rsp
00000001404d0b04 mov      qword ptr [rsp + 0x130], rax
00000001404d0b0c mov      rbp, r8
00000001404d0b0f mov      rbx, rdx
00000001404d0b12 mov      rsi, rcx
00000001404d0b15 xor      edx, edx
00000001404d0b17 mov      r8d, 0xf0
00000001404d0b1d lea      rcx, [rsp + 0x40]
00000001404d0b22 call     0x1405f4640
00000001404d0b27 and      dword ptr [rsp + 0x34], 0
00000001404d0b2c mov      rcx, rbx
00000001404d0b2f mov      byte ptr [rsp + 0x30], 0
00000001404d0b34 call     0x1402b4094
00000001404d0b39 mov      rdx, qword ptr [rbp + 0x78]
00000001404d0b3d xor      r9d, r9d
00000001404d0b40 mov      r8, rbx
00000001404d0b43 mov      rcx, rsi
00000001404d0b46 call     0x1402bd8a4
00000001404d0b4b mov      r8, rbp
00000001404d0b4e mov      rdx, rbx
00000001404d0b51 mov      rcx, rsi
00000001404d0b54 call     0x14024b0b0
00000001404d0b59 lea      r8, [rip + 0x18ae70]
00000001404d0b60 mov      edi, eax
00000001404d0b62 lea      r12, [rip + 0x44f497]
00000001404d0b69 mov      r14d, 1
00000001404d0b6f lea      r13, [rip + 0x13d81a]
00000001404d0b76 test     eax, eax
00000001404d0b78 jne      0x1404d0bed
00000001404d0b7a mov      r8, qword ptr [rbp + 0x78]
00000001404d0b7e lea      r9, [rsp + 0x40]
00000001404d0b83 mov      rdx, rbx
00000001404d0b86 mov      rcx, rsi
00000001404d0b89 call     0x1404cf6e8
00000001404d0b8e mov      edi, eax
00000001404d0b90 test     eax, eax
00000001404d0b92 je       0x1404d0c51
00000001404d0b98 mov      rcx, qword ptr [rip + 0x44f461]
00000001404d0b9f cmp      rcx, r12
00000001404d0ba2 je       0x1404d0c2d
00000001404d0ba8 cmp      byte ptr [rcx + 0x169], 2
00000001404d0baf jb       0x1404d0be6
00000001404d0bb1 mov      eax, dword ptr [rcx + 0x16c]
00000001404d0bb7 test     r14b, al
00000001404d0bba je       0x1404d0be6
00000001404d0bbc mov      rcx, qword ptr [rcx + 0x158]
00000001404d0bc3 lea      rax, [rip + 0x18ae06]
00000001404d0bca lea      edx, [r14 + 0x1a]
00000001404d0bce mov      dword ptr [rsp + 0x28], edi
00000001404d0bd2 mov      r9, r13
00000001404d0bd5 mov      qword ptr [rsp + 0x20], rax
00000001404d0bda lea      r8, [rip + 0x4174ff]
00000001404d0be1 call     0x14003ca14
00000001404d0be6 lea      r8, [rip + 0x18ade3]
00000001404d0bed mov      rcx, qword ptr [rip + 0x44f40c]
00000001404d0bf4 cmp      rcx, r12
00000001404d0bf7 je       0x1404d0c2d
00000001404d0bf9 cmp      byte ptr [rcx + 0x169], 4
00000001404d0c00 jb       0x1404d0c2d
00000001404d0c02 mov      eax, dword ptr [rcx + 0x16c]
00000001404d0c08 test     r14b, al
00000001404d0c0b je       0x1404d0c2d
00000001404d0c0d mov      rcx, qword ptr [rcx + 0x158]
00000001404d0c14 mov      edx, 0x1f
00000001404d0c19 mov      qword ptr [rsp + 0x20], r8
00000001404d0c1e mov      r9, r13
00000001404d0c21 lea      r8, [rip + 0x4174b8]
00000001404d0c28 call     0x14003c968
00000001404d0c2d mov      eax, edi
00000001404d0c2f mov      rcx, qword ptr [rsp + 0x130]
00000001404d0c37 xor      rcx, rsp
00000001404d0c3a call     0x1405f45b0
00000001404d0c3f add      rsp, 0x140
00000001404d0c46 pop      r14
00000001404d0c48 pop      r13
00000001404d0c4a pop      r12
00000001404d0c4c pop      rdi
00000001404d0c4d pop      rsi
00000001404d0c4e pop      rbp
00000001404d0c4f pop      rbx
00000001404d0c50 ret      
00000001404d0c51 lea      r9, [rsp + 0x40]
00000001404d0c56 mov      r8, rbp
00000001404d0c59 mov      rdx, rbx
00000001404d0c5c mov      rcx, rsi
00000001404d0c5f call     0x14027f128
00000001404d0c64 mov      edi, eax
00000001404d0c66 test     eax, eax
00000001404d0c68 jne      0x1404d0be6
00000001404d0c6e mov      rcx, rsi
00000001404d0c71 call     0x14022b390
00000001404d0c76 xor      edx, edx
00000001404d0c78 lea      r8d, [rdi + 6]
00000001404d0c7c mov      rcx, rbx
00000001404d0c7f call     0x140260ed4
00000001404d0c84 mov      rcx, qword ptr [rbx + 8]
00000001404d0c88 xor      edx, edx
00000001404d0c8a mov      r8d, 0x2c00
00000001404d0c90 call     0x140287104
00000001404d0c95 lea      rdx, [rsp + 0x34]
00000001404d0c9a mov      rcx, rbx
00000001404d0c9d call     0x140288264
00000001404d0ca2 mov      edi, eax
00000001404d0ca4 cmp      eax, r14d
00000001404d0ca7 jne      0x1404d0cfa
00000001404d0ca9 mov      rcx, qword ptr [rip + 0x44f350]
00000001404d0cb0 cmp      rcx, r12
00000001404d0cb3 je       0x1404d0c2d
00000001404d0cb9 cmp      byte ptr [rcx + 0x169], 3
00000001404d0cc0 jb       0x1404d0be6
00000001404d0cc6 mov      eax, dword ptr [rcx + 0x16c]
00000001404d0ccc test     r14b, al
00000001404d0ccf je       0x1404d0be6
00000001404d0cd5 mov      rcx, qword ptr [rcx + 0x158]
00000001404d0cdc lea      r8, [rip + 0x4173fd]
00000001404d0ce3 mov      edx, 0x1c
00000001404d0ce8 mov      dword ptr [rsp + 0x20], r14d
00000001404d0ced mov      r9, r13
00000001404d0cf0 call     0x1400088d8
00000001404d0cf5 jmp      0x1404d0be6
00000001404d0cfa mov      eax, dword ptr [rsp + 0x34]
00000001404d0cfe xor      edx, edx
00000001404d0d00 mov      cl, al
00000001404d0d02 shr      eax, 0x10
00000001404d0d05 and      cl, 0x7f
00000001404d0d08 and      al, 0x7f
00000001404d0d0a mov      byte ptr [rsi + 0x96df], cl
00000001404d0d10 sub      al, cl
00000001404d0d12 mov      byte ptr [rsi + 0x96de], al
00000001404d0d18 mov      rcx, rbx
00000001404d0d1b movzx    r9d, word ptr [rsi + 0xdece]
00000001404d0d23 movzx    r8d, word ptr [rsi + 0xdecc]
00000001404d0d2b call     0x140285f74
00000001404d0d30 mov      rcx, rbx
00000001404d0d33 call     0x14027f8e0
00000001404d0d38 mov      rax, qword ptr [rbx + 8]
00000001404d0d3c cmp      byte ptr [rax + 0x12d4], r14b
00000001404d0d43 jne      0x1404d0d83
00000001404d0d45 mov      r8d, 6
00000001404d0d4b mov      dl, r14b
00000001404d0d4e mov      rcx, rbx
00000001404d0d51 call     0x140260ed4
00000001404d0d56 mov      rcx, qword ptr [rbx + 8]
00000001404d0d5a mov      r8d, 0x2c00
00000001404d0d60 mov      dl, r14b
00000001404d0d63 call     0x140287104
00000001404d0d68 movzx    r9d, word ptr [rsi + 0xdef2]
00000001404d0d70 mov      dl, r14b
00000001404d0d73 movzx    r8d, word ptr [rsi + 0xdef0]
00000001404d0d7b mov      rcx, rbx
00000001404d0d7e call     0x140285f74
00000001404d0d83 mov      rcx, rbx
00000001404d0d86 call     0x14000a5f0
00000001404d0d8b mov      r8, qword ptr [rbp + 0x78]
00000001404d0d8f mov      rdx, rbx
00000001404d0d92 mov      rcx, rsi
00000001404d0d95 call     0x140265b28
00000001404d0d9a mov      rdx, rbx
00000001404d0d9d mov      rcx, rsi
00000001404d0da0 call     0x140261b30
00000001404d0da5 mov      rcx, rbx
00000001404d0da8 call     0x14026e158
00000001404d0dad mov      rcx, rbx
00000001404d0db0 call     0x14026e1a8
00000001404d0db5 mov      rax, qword ptr [rbx + 8]
00000001404d0db9 cmp      byte ptr [rax + 0x12d4], r14b
00000001404d0dc0 jne      0x1404d0dd0
00000001404d0dc2 mov      r8b, r14b
00000001404d0dc5 mov      rdx, rsi
00000001404d0dc8 mov      rcx, rbx
00000001404d0dcb call     0x14026e204
00000001404d0dd0 mov      rdx, rbx
00000001404d0dd3 mov      rcx, rsi
00000001404d0dd6 call     0x14024adfc
00000001404d0ddb mov      edi, eax
00000001404d0ddd test     eax, eax
00000001404d0ddf jne      0x1404d0be6
00000001404d0de5 mov      rdx, rbx
00000001404d0de8 mov      rcx, rsi
00000001404d0deb call     0x1402bed90
00000001404d0df0 mov      rcx, rbx
00000001404d0df3 call     0x140248eec
00000001404d0df8 mov      rcx, rbx
00000001404d0dfb call     0x14026a81c
00000001404d0e00 test     eax, eax
00000001404d0e02 jne      0x1404d0be6
00000001404d0e08 mov      rcx, rbx
00000001404d0e0b call     0x1402bf0d8
00000001404d0e10 lea      rdx, [rsp + 0x30]
00000001404d0e15 mov      rcx, rbx
00000001404d0e18 call     0x14027bd0c
00000001404d0e1d mov      edi, eax
00000001404d0e1f test     eax, eax
00000001404d0e21 jne      0x1404d0be6
00000001404d0e27 mov      al, byte ptr [rsp + 0x30]
00000001404d0e2b lea      rdx, [rsp + 0x30]
00000001404d0e30 mov      rcx, rbx
00000001404d0e33 mov      byte ptr [rsi + 0xf4e8], al
00000001404d0e39 call     0x14027bb94
00000001404d0e3e mov      edi, eax
00000001404d0e40 test     eax, eax
00000001404d0e42 jne      0x1404d0be6
00000001404d0e48 mov      al, byte ptr [rsp + 0x30]
00000001404d0e4c mov      byte ptr [rsi + 0xf4e9], al
00000001404d0e52 mov      rcx, qword ptr [rip + 0x44f1a7]
00000001404d0e59 cmp      rcx, r12
00000001404d0e5c je       0x1404d0e8b
00000001404d0e5e cmp      byte ptr [rcx + 0x169], 4
00000001404d0e65 jb       0x1404d0e8b
00000001404d0e67 mov      eax, dword ptr [rcx + 0x16c]
00000001404d0e6d test     r14b, al
00000001404d0e70 je       0x1404d0e8b
00000001404d0e72 mov      rcx, qword ptr [rcx + 0x158]
00000001404d0e79 lea      edx, [rdi + 0x1d]
00000001404d0e7c mov      r9, r13
00000001404d0e7f lea      r8, [rip + 0x41725a]
00000001404d0e86 call     0x140008874
00000001404d0e8b mov      r8b, r14b
00000001404d0e8e xor      edx, edx
00000001404d0e90 mov      rcx, rbx
00000001404d0e93 call     0x14024b024
00000001404d0e98 mov      edi, eax
00000001404d0e9a test     eax, eax
00000001404d0e9c jne      0x1404d0be6
00000001404d0ea2 mov      byte ptr [rsi + 0x1020a], r14b
00000001404d0ea9 mov      rax, qword ptr [rbx + 8]
00000001404d0ead cmp      byte ptr [rax + 0x12d4], r14b
00000001404d0eb4 jne      0x1404d0f0e
00000001404d0eb6 mov      rcx, qword ptr [rip + 0x44f143]
00000001404d0ebd cmp      rcx, r12
00000001404d0ec0 je       0x1404d0eef
00000001404d0ec2 cmp      byte ptr [rcx + 0x169], 4
00000001404d0ec9 jb       0x1404d0eef
00000001404d0ecb mov      eax, dword ptr [rcx + 0x16c]
00000001404d0ed1 test     r14b, al
00000001404d0ed4 je       0x1404d0eef
00000001404d0ed6 mov      rcx, qword ptr [rcx + 0x158]
00000001404d0edd lea      edx, [rdi + 0x1e]
00000001404d0ee0 mov      r9, r13
00000001404d0ee3 lea      r8, [rip + 0x4171f6]
00000001404d0eea call     0x140008874
00000001404d0eef mov      r8b, r14b
00000001404d0ef2 mov      dl, r14b
00000001404d0ef5 mov      rcx, rbx
00000001404d0ef8 call     0x14024b024
00000001404d0efd mov      edi, eax
00000001404d0eff test     eax, eax
00000001404d0f01 jne      0x1404d0be6
00000001404d0f07 mov      byte ptr [rsi + 0x1020b], r14b
00000001404d0f0e cmp      byte ptr [rsi + 0xe187], r14b
00000001404d0f15 jne      0x1404d0f54
00000001404d0f17 xor      r8d, r8d
00000001404d0f1a mov      dl, r14b
00000001404d0f1d mov      rcx, rbx
00000001404d0f20 call     0x140279dd8
00000001404d0f25 mov      edi, eax
00000001404d0f27 test     eax, eax
00000001404d0f29 jne      0x1404d0be6
00000001404d0f2f mov      rax, qword ptr [rbx + 8]
00000001404d0f33 cmp      byte ptr [rax + 0x12d4], r14b
00000001404d0f3a jne      0x1404d0f54
00000001404d0f3c mov      r8d, r14d
00000001404d0f3f mov      dl, r14b
00000001404d0f42 mov      rcx, rbx
00000001404d0f45 call     0x140279dd8
00000001404d0f4a mov      edi, eax
00000001404d0f4c test     eax, eax
00000001404d0f4e jne      0x1404d0be6
00000001404d0f54 mov      dl, byte ptr [rsi + 0xe15a]
00000001404d0f5a mov      rcx, rbx
00000001404d0f5d call     0x1402760e4
00000001404d0f62 mov      edi, eax
00000001404d0f64 test     eax, eax
00000001404d0f66 jne      0x1404d0be6
00000001404d0f6c mov      r8b, byte ptr [rsi + 0xe194]
00000001404d0f73 mov      rcx, rbx
00000001404d0f76 mov      dl, byte ptr [rsi + 0xe193]
00000001404d0f7c call     0x140275f40
00000001404d0f81 mov      edi, eax
00000001404d0f83 test     eax, eax
00000001404d0f85 jne      0x1404d0be6
00000001404d0f8b mov      dl, byte ptr [rsi + 0xe15b]
00000001404d0f91 xor      r9d, r9d
00000001404d0f94 mov      r8b, 4
00000001404d0f97 mov      byte ptr [rsp + 0x20], al
00000001404d0f9b mov      rcx, rbx
00000001404d0f9e call     0x14027b444
00000001404d0fa3 mov      edi, eax
00000001404d0fa5 test     eax, eax
00000001404d0fa7 jne      0x1404d0be6
00000001404d0fad mov      dl, byte ptr [rsi + 0xe15c]
00000001404d0fb3 xor      r8d, r8d
00000001404d0fb6 mov      rcx, rbx
00000001404d0fb9 call     0x14027b3bc
00000001404d0fbe mov      edi, eax
00000001404d0fc0 test     eax, eax
00000001404d0fc2 jne      0x1404d0be6
00000001404d0fc8 cmp      byte ptr [rsi + 0xe15c], al
00000001404d0fce je       0x1404d0fe5
00000001404d0fd0 mov      dl, r14b
00000001404d0fd3 mov      rcx, rbx
00000001404d0fd6 call     0x14027f59c
00000001404d0fdb mov      edi, eax
00000001404d0fdd test     eax, eax
00000001404d0fdf jne      0x1404d0be6
00000001404d0fe5 mov      rcx, qword ptr [rbx + 8]
00000001404d0fe9 lea      rdx, [rsi + 0xe258]
00000001404d0ff0 call     0x14025b06c
00000001404d0ff5 xor      eax, eax
00000001404d0ff7 jmp      0x1404d0c2f