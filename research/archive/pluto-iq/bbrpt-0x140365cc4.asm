0000000140365cc4 mov      r11, rsp
0000000140365cc7 mov      qword ptr [r11 + 8], rcx
0000000140365ccb push     rbx
0000000140365ccc push     rbp
0000000140365ccd push     rsi
0000000140365cce push     rdi
0000000140365ccf push     r12
0000000140365cd1 push     r13
0000000140365cd3 push     r14
0000000140365cd5 push     r15
0000000140365cd7 sub      rsp, 0x98
0000000140365cde mov      rax, qword ptr [rcx]
0000000140365ce1 mov      r15, rcx
0000000140365ce4 movzx    edx, byte ptr [rcx + 0x398]
0000000140365ceb mov      sil, 2
0000000140365cee mov      rax, qword ptr [rax]
0000000140365cf1 mov      qword ptr [rsp + 0x78], rax
0000000140365cf6 test     dl, dl
0000000140365cf8 jne      0x1403669f7
0000000140365cfe cmp      byte ptr [rcx + 0x104], 1
0000000140365d05 jne      0x1403669f7
0000000140365d0b cmp      byte ptr [rcx + 0x399], dl
0000000140365d11 jne      0x1403669f7
0000000140365d17 mov      al, byte ptr [rcx + 0x10c]
0000000140365d1d sub      al, sil
0000000140365d20 cmp      al, 1
0000000140365d22 jbe      0x1403669f7
0000000140365d28 mov      rdi, qword ptr [rcx + 0x1390]
0000000140365d2f lea      r8, [r11 + 0x10]
0000000140365d33 lea      rdx, [r11 + 0x18]
0000000140365d37 mov      rax, qword ptr [rdi + 0x178]
0000000140365d3e call     qword ptr [rip + 0x31e5b4]
0000000140365d44 test     eax, eax
0000000140365d46 jne      0x140366aa0
0000000140365d4c mov      rcx, qword ptr [rip + 0x5ba2ad]
0000000140365d53 lea      r12, [rip + 0x5ba2a6]
0000000140365d5a lea      r14d, [rax + 8]
0000000140365d5e lea      r13, [rip + 0x36c52b]
0000000140365d65 cmp      rcx, r12
0000000140365d68 je       0x140365d9b
0000000140365d6a cmp      byte ptr [rcx + 0x169], sil
0000000140365d71 jb       0x140365d9b
0000000140365d73 mov      eax, dword ptr [rcx + 0x16c]
0000000140365d79 test     r14b, al
0000000140365d7c je       0x140365d9b
0000000140365d7e movzx    r9d, word ptr [rsp + 0xe8]
0000000140365d87 mov      edx, 0x15a
0000000140365d8c mov      rcx, qword ptr [rcx + 0x158]
0000000140365d93 mov      r8, r13
0000000140365d96 call     0x140001bb0
0000000140365d9b mov      edx, r14d
0000000140365d9e mov      rcx, r15
0000000140365da1 call     0x14036c07c
0000000140365da6 test     al, al
0000000140365da8 jne      0x140365eba
0000000140365dae mov      edx, 9
0000000140365db3 mov      rcx, r15
0000000140365db6 call     0x14036c07c
0000000140365dbb test     al, al
0000000140365dbd jne      0x140365eba
0000000140365dc3 mov      edx, 0xa
0000000140365dc8 mov      rcx, r15
0000000140365dcb call     0x14036c07c
0000000140365dd0 test     al, al
0000000140365dd2 jne      0x140365eba
0000000140365dd8 mov      edx, 0xb
0000000140365ddd mov      rcx, r15
0000000140365de0 call     0x14036c07c
0000000140365de5 test     al, al
0000000140365de7 jne      0x140365eba
0000000140365ded mov      edx, 0x10
0000000140365df2 mov      rcx, r15
0000000140365df5 call     0x14036c07c
0000000140365dfa test     al, al
0000000140365dfc jne      0x140365eba
0000000140365e02 mov      edx, 0xd
0000000140365e07 mov      rcx, r15
0000000140365e0a call     0x14036c07c
0000000140365e0f test     al, al
0000000140365e11 jne      0x140365eba
0000000140365e17 mov      edx, 0xc
0000000140365e1c mov      rcx, r15
0000000140365e1f call     0x14036c07c
0000000140365e24 test     al, al
0000000140365e26 jne      0x140365eba
0000000140365e2c mov      edx, 0xf
0000000140365e31 mov      rcx, r15
0000000140365e34 call     0x14036c07c
0000000140365e39 test     al, al
0000000140365e3b jne      0x140365eba
0000000140365e3d mov      rcx, qword ptr [rip + 0x5ba1bc]
0000000140365e44 cmp      rcx, r12
0000000140365e47 je       0x1403669f0
0000000140365e4d cmp      byte ptr [rcx + 0x169], sil
0000000140365e54 jb       0x140365e75
0000000140365e56 mov      eax, dword ptr [rcx + 0x16c]
0000000140365e5c test     r14b, al
0000000140365e5f je       0x140365e75
0000000140365e61 mov      rcx, qword ptr [rcx + 0x158]
0000000140365e68 mov      edx, 0x171
0000000140365e6d mov      r8, r13
0000000140365e70 call     0x140001b88
0000000140365e75 mov      rcx, qword ptr [rip + 0x5ba184]
0000000140365e7c cmp      rcx, r12
0000000140365e7f je       0x1403669f0
0000000140365e85 cmp      byte ptr [rcx + 0x169], sil
0000000140365e8c jb       0x1403669f0
0000000140365e92 mov      eax, dword ptr [rcx + 0x16c]
0000000140365e98 test     r14b, al
0000000140365e9b je       0x1403669f0
0000000140365ea1 mov      rcx, qword ptr [rcx + 0x158]
0000000140365ea8 mov      edx, 0x172
0000000140365ead mov      r8, r13
0000000140365eb0 call     0x140001b88
0000000140365eb5 jmp      0x1403669f0
0000000140365eba mov      rax, qword ptr [r15 + 0x18]
0000000140365ebe mov      ebp, 0x800
0000000140365ec3 mov      rcx, qword ptr [r15 + 8]
0000000140365ec7 mov      edx, ebp
0000000140365ec9 mov      rax, qword ptr [rax + 0x98]
0000000140365ed0 call     qword ptr [rip + 0x31e422]
0000000140365ed6 mov      qword ptr [rsp + 0x70], rax
0000000140365edb mov      rbx, rax
0000000140365ede test     rax, rax
0000000140365ee1 jne      0x140365f42
0000000140365ee3 mov      rax, qword ptr [r15 + 0x18]
0000000140365ee7 mov      r8d, ebp
0000000140365eea mov      rcx, qword ptr [r15 + 8]
0000000140365eee xor      edx, edx
0000000140365ef0 mov      rax, qword ptr [rax + 0x90]
0000000140365ef7 call     qword ptr [rip + 0x31e3fb]
0000000140365efd mov      rcx, qword ptr [rip + 0x5ba0fc]
0000000140365f04 cmp      rcx, r12
0000000140365f07 je       0x140365f38
0000000140365f09 cmp      byte ptr [rcx + 0x169], sil
0000000140365f10 jb       0x140365f38
0000000140365f12 mov      eax, dword ptr [rcx + 0x16c]
0000000140365f18 test     r14b, al
0000000140365f1b je       0x140365f38
0000000140365f1d mov      rcx, qword ptr [rcx + 0x158]
0000000140365f24 lea      r9, [rip + 0x2d7c85]
0000000140365f2b mov      edx, 0x15b
0000000140365f30 mov      r8, r13
0000000140365f33 call     0x140008874
0000000140365f38 mov      eax, 0xe
0000000140365f3d jmp      0x140366aa0
0000000140365f42 mov      rax, qword ptr [rdi + 0x138]
0000000140365f49 mov      rcx, r15
0000000140365f4c call     qword ptr [rip + 0x31e3a6]
0000000140365f52 mov      rcx, qword ptr [r15 + 0x18]
0000000140365f56 lea      rdx, [r15 + 0x1198]
0000000140365f5d mov      dword ptr [rsp + 0xf8], eax
0000000140365f64 mov      rax, qword ptr [rcx + 0x108]
0000000140365f6b mov      rcx, qword ptr [r15 + 8]
0000000140365f6f call     qword ptr [rip + 0x31e383]
0000000140365f75 inc      dword ptr [r15 + 0xef4]
0000000140365f7c mov      rsi, rbx
0000000140365f7f mov      ebp, dword ptr [rsp + 0xf8]
0000000140365f86 xor      edi, edi
0000000140365f88 mov      rbx, qword ptr [rsp + 0x78]
0000000140365f8d mov      rax, qword ptr [rbx + 0x20]
0000000140365f91 lea      edx, [rdi + rbp]
0000000140365f94 mov      rcx, r15
0000000140365f97 call     qword ptr [rip + 0x31e35b]
0000000140365f9d add      edi, 4
0000000140365fa0 mov      dword ptr [rsi], eax
0000000140365fa2 lea      rsi, [rsi + 4]
0000000140365fa6 cmp      edi, 0x800
0000000140365fac jb       0x140365f8d
0000000140365fae mov      rax, qword ptr [r15 + 0x18]
0000000140365fb2 lea      rdx, [r15 + 0x1198]
0000000140365fb9 dec      dword ptr [r15 + 0xef4]
0000000140365fc0 mov      rcx, qword ptr [r15 + 8]
0000000140365fc4 mov      rax, qword ptr [rax + 0x110]
0000000140365fcb call     qword ptr [rip + 0x31e327]
0000000140365fd1 mov      rbx, qword ptr [rsp + 0x70]
0000000140365fd6 xor      edi, edi
0000000140365fd8 mov      rsi, rbx
0000000140365fdb mov      rcx, qword ptr [rip + 0x5ba01e]
0000000140365fe2 mov      bpl, 2
0000000140365fe5 cmp      rcx, r12
0000000140365fe8 je       0x14036601b
0000000140365fea cmp      byte ptr [rcx + 0x169], bpl
0000000140365ff1 jb       0x14036601b
0000000140365ff3 mov      eax, dword ptr [rcx + 0x16c]
0000000140365ff9 test     r14b, al
0000000140365ffc je       0x14036601b
0000000140365ffe mov      eax, dword ptr [rsi]
0000000140366000 mov      edx, 0x15c
0000000140366005 mov      rcx, qword ptr [rcx + 0x158]
000000014036600c mov      r9d, edi
000000014036600f mov      r8, r13
0000000140366012 mov      dword ptr [rsp + 0x20], eax
0000000140366016 call     0x140001bec
000000014036601b inc      edi
000000014036601d add      rsi, 4
0000000140366021 cmp      edi, 9
0000000140366024 jb       0x140365fdb
0000000140366026 xor      edi, edi
0000000140366028 xor      esi, esi
000000014036602a mov      rcx, qword ptr [rip + 0x5b9fcf]
0000000140366031 cmp      rcx, r12
0000000140366034 je       0x140366069
0000000140366036 cmp      byte ptr [rcx + 0x169], bpl
000000014036603d jb       0x140366069
000000014036603f mov      eax, dword ptr [rcx + 0x16c]
0000000140366045 test     r14b, al
0000000140366048 je       0x140366069
000000014036604a mov      eax, dword ptr [rsi + rbx + 0x24]
000000014036604e mov      edx, 0x15d
0000000140366053 mov      rcx, qword ptr [rcx + 0x158]
000000014036605a mov      r9d, edi
000000014036605d mov      r8, r13
0000000140366060 mov      dword ptr [rsp + 0x20], eax
0000000140366064 call     0x140001bec
0000000140366069 inc      edi
000000014036606b add      rsi, 4
000000014036606f cmp      edi, 0x10
0000000140366072 jb       0x14036602a
0000000140366074 mov      rax, qword ptr [r15 + 0x18]
0000000140366078 lea      rdx, [rbx + 0x64]
000000014036607c mov      rcx, qword ptr [r15 + 8]
0000000140366080 lea      r8, [rip + 0x2d7b49]
0000000140366087 mov      r9d, 0xc
000000014036608d mov      rax, qword ptr [rax + 0xb0]
0000000140366094 call     qword ptr [rip + 0x31e25e]
000000014036609a test     eax, eax
000000014036609c jne      0x14036699e
00000001403660a2 mov      rcx, qword ptr [rip + 0x5b9f57]
00000001403660a9 cmp      rcx, r12
00000001403660ac je       0x140366146
00000001403660b2 cmp      byte ptr [rcx + 0x169], bpl
00000001403660b9 jb       0x1403660da
00000001403660bb mov      eax, dword ptr [rcx + 0x16c]
00000001403660c1 test     r14b, al
00000001403660c4 je       0x1403660da
00000001403660c6 mov      rcx, qword ptr [rcx + 0x158]
00000001403660cd mov      edx, 0x15e
00000001403660d2 mov      r8, r13
00000001403660d5 call     0x140001b88
00000001403660da mov      rcx, qword ptr [rip + 0x5b9f1f]
00000001403660e1 cmp      rcx, r12
00000001403660e4 je       0x140366146
00000001403660e6 cmp      byte ptr [rcx + 0x169], bpl
00000001403660ed jb       0x14036610e
00000001403660ef mov      eax, dword ptr [rcx + 0x16c]
00000001403660f5 test     r14b, al
00000001403660f8 je       0x14036610e
00000001403660fa mov      rcx, qword ptr [rcx + 0x158]
0000000140366101 mov      edx, 0x15f
0000000140366106 mov      r8, r13
0000000140366109 call     0x140001b88
000000014036610e mov      rcx, qword ptr [rip + 0x5b9eeb]
0000000140366115 cmp      rcx, r12
0000000140366118 je       0x140366146
000000014036611a cmp      byte ptr [rcx + 0x169], bpl
0000000140366121 jb       0x140366146
0000000140366123 mov      eax, dword ptr [rcx + 0x16c]
0000000140366129 test     r14b, al
000000014036612c je       0x140366146
000000014036612e mov      r9d, dword ptr [rbx + 0x70]
0000000140366132 mov      edx, 0x161
0000000140366137 mov      rcx, qword ptr [rcx + 0x158]
000000014036613e mov      r8, r13
0000000140366141 call     0x140001bb0
0000000140366146 mov      r9d, dword ptr [rbx + 0x74]
000000014036614a mov      dword ptr [rsp + 0xf8], r9d
0000000140366152 mov      rcx, qword ptr [rip + 0x5b9ea7]
0000000140366159 cmp      rcx, r12
000000014036615c je       0x14036618a
000000014036615e cmp      byte ptr [rcx + 0x169], bpl
0000000140366165 jb       0x14036618a
0000000140366167 mov      eax, dword ptr [rcx + 0x16c]
000000014036616d test     r14b, al
0000000140366170 je       0x14036618a
0000000140366172 mov      rcx, qword ptr [rcx + 0x158]
0000000140366179 mov      edx, 0x162
000000014036617e shl      r9d, 3
0000000140366182 mov      r8, r13
0000000140366185 call     0x140001bb0
000000014036618a mov      ecx, dword ptr [rbx + 0x78]
000000014036618d mov      dword ptr [rsp + 0x60], ecx
0000000140366191 mov      r10, qword ptr [rip + 0x5b9e68]
0000000140366198 cmp      r10, r12
000000014036619b je       0x140366202
000000014036619d cmp      byte ptr [r10 + 0x169], bpl
00000001403661a4 jb       0x1403661ce
00000001403661a6 mov      eax, dword ptr [r10 + 0x16c]
00000001403661ad test     r14b, al
00000001403661b0 je       0x1403661ce
00000001403661b2 lea      r9d, [rcx*8]
00000001403661ba mov      edx, 0x163
00000001403661bf mov      rcx, qword ptr [r10 + 0x158]
00000001403661c6 mov      r8, r13
00000001403661c9 call     0x140001bb0
00000001403661ce mov      rcx, qword ptr [rip + 0x5b9e2b]
00000001403661d5 cmp      rcx, r12
00000001403661d8 je       0x140366202
00000001403661da cmp      byte ptr [rcx + 0x169], bpl
00000001403661e1 jb       0x140366202
00000001403661e3 mov      eax, dword ptr [rcx + 0x16c]
00000001403661e9 test     r14b, al
00000001403661ec je       0x140366202
00000001403661ee mov      rcx, qword ptr [rcx + 0x158]
00000001403661f5 mov      edx, 0x164
00000001403661fa mov      r8, r13
00000001403661fd call     0x140001b88
0000000140366202 mov      rcx, r14
0000000140366205 mov      r15d, 0x86
000000014036620b mov      qword ptr [rsp + 0x68], rcx
0000000140366210 mov      rax, qword ptr [rip + 0x5b9de9]
0000000140366217 mov      qword ptr [rsp + 0x78], rax
000000014036621c cmp      rax, r12
000000014036621f je       0x1403662cb
0000000140366225 cmp      byte ptr [rax + 0x169], bpl
000000014036622c jb       0x1403662cb
0000000140366232 mov      eax, dword ptr [rax + 0x16c]
0000000140366238 test     r14b, al
000000014036623b je       0x1403662cb
0000000140366241 mov      r9, qword ptr [rsp + 0x70]
0000000140366246 lea      eax, [r15 + 1]
000000014036624a movzx    ebp, byte ptr [rax + rbx]
000000014036624e mov      edx, 0x165
0000000140366253 mov      rcx, qword ptr [rsp + 0x78]
0000000140366258 mov      eax, r15d
000000014036625b mov      dword ptr [rsp + 0x50], ebp
000000014036625f mov      rcx, qword ptr [rcx + 0x158]
0000000140366266 movzx    esi, byte ptr [rax + rbx]
000000014036626a lea      eax, [r15 - 1]
000000014036626e movzx    edi, byte ptr [rax + rbx]
0000000140366272 lea      eax, [r15 - 2]
0000000140366276 movzx    ebx, byte ptr [rax + rbx]
000000014036627a lea      eax, [r15 - 3]
000000014036627e movzx    r11d, byte ptr [rax + r9]
0000000140366283 lea      eax, [r15 - 4]
0000000140366287 movzx    r10d, byte ptr [rax + r9]
000000014036628c lea      eax, [r15 - 5]
0000000140366290 movzx    r8d, byte ptr [rax + r9]
0000000140366295 lea      eax, [r15 - 6]
0000000140366299 movzx    r9d, byte ptr [rax + r9]
000000014036629e mov      dword ptr [rsp + 0x48], esi
00000001403662a2 mov      dword ptr [rsp + 0x40], edi
00000001403662a6 mov      dword ptr [rsp + 0x38], ebx
00000001403662aa mov      dword ptr [rsp + 0x30], r11d
00000001403662af mov      dword ptr [rsp + 0x28], r10d
00000001403662b4 mov      dword ptr [rsp + 0x20], r8d
00000001403662b9 mov      r8, r13
00000001403662bc call     0x14005018c
00000001403662c1 mov      rcx, qword ptr [rsp + 0x68]
00000001403662c6 mov      rbx, qword ptr [rsp + 0x70]
00000001403662cb add      r15d, r14d
00000001403662ce mov      bpl, 2
00000001403662d1 sub      rcx, 1
00000001403662d5 mov      qword ptr [rsp + 0x68], rcx
00000001403662da jne      0x140366210
00000001403662e0 mov      rcx, qword ptr [rip + 0x5b9d19]
00000001403662e7 mov      r15, qword ptr [rsp + 0xe0]
00000001403662ef cmp      rcx, r12
00000001403662f2 je       0x140366328
00000001403662f4 cmp      byte ptr [rcx + 0x169], bpl
00000001403662fb jb       0x140366328
00000001403662fd mov      eax, dword ptr [rcx + 0x16c]
0000000140366303 mov      edi, dword ptr [rsp + 0xf8]
000000014036630a test     r14b, al
000000014036630d je       0x14036632f
000000014036630f mov      rcx, qword ptr [rcx + 0x158]
0000000140366316 mov      edx, 0x166
000000014036631b mov      r9d, edi
000000014036631e mov      r8, r13
0000000140366321 call     0x140001bb0
0000000140366326 jmp      0x14036632f
0000000140366328 mov      edi, dword ptr [rsp + 0xf8]
000000014036632f test     edi, edi
0000000140366331 je       0x14036643d
0000000140366337 lea      ecx, [rdi - 1]
000000014036633a mov      r9d, 0xca
0000000140366340 shr      ecx, 3
0000000140366343 inc      ecx
0000000140366345 mov      dword ptr [rsp + 0x68], r9d
000000014036634a mov      qword ptr [rsp + 0x78], rcx
000000014036634f jmp      0x140366356
0000000140366351 mov      rbx, qword ptr [rsp + 0x70]
0000000140366356 mov      rax, qword ptr [rip + 0x5b9ca3]
000000014036635d mov      qword ptr [rsp + 0x80], rax
0000000140366365 cmp      rax, r12
0000000140366368 je       0x140366417
000000014036636e cmp      byte ptr [rax + 0x169], 2
0000000140366375 jb       0x140366417
000000014036637b mov      eax, dword ptr [rax + 0x16c]
0000000140366381 test     r14b, al
0000000140366384 je       0x140366417
000000014036638a mov      r15, qword ptr [rsp + 0x70]
000000014036638f lea      eax, [r9 + 1]
0000000140366393 movzx    ebp, byte ptr [rax + rbx]
0000000140366397 mov      edx, 0x167
000000014036639c mov      rcx, qword ptr [rsp + 0x80]
00000001403663a4 mov      eax, r9d
00000001403663a7 mov      dword ptr [rsp + 0x50], ebp
00000001403663ab mov      rcx, qword ptr [rcx + 0x158]
00000001403663b2 movzx    esi, byte ptr [rax + rbx]
00000001403663b6 lea      eax, [r9 - 1]
00000001403663ba movzx    edi, byte ptr [rax + rbx]
00000001403663be lea      eax, [r9 - 2]
00000001403663c2 movzx    ebx, byte ptr [rax + rbx]
00000001403663c6 lea      eax, [r9 - 3]
00000001403663ca movzx    r11d, byte ptr [rax + r15]
00000001403663cf lea      eax, [r9 - 4]
00000001403663d3 movzx    r10d, byte ptr [rax + r15]
00000001403663d8 lea      eax, [r9 - 5]
00000001403663dc movzx    r8d, byte ptr [rax + r15]
00000001403663e1 lea      eax, [r9 - 6]
00000001403663e5 movzx    r9d, byte ptr [rax + r15]
00000001403663ea mov      dword ptr [rsp + 0x48], esi
00000001403663ee mov      dword ptr [rsp + 0x40], edi
00000001403663f2 mov      dword ptr [rsp + 0x38], ebx
00000001403663f6 mov      dword ptr [rsp + 0x30], r11d
00000001403663fb mov      dword ptr [rsp + 0x28], r10d
0000000140366400 mov      dword ptr [rsp + 0x20], r8d
0000000140366405 mov      r8, r13
0000000140366408 call     0x14005018c
000000014036640d mov      r9d, dword ptr [rsp + 0x68]
0000000140366412 mov      rcx, qword ptr [rsp + 0x78]
0000000140366417 add      r9d, r14d
000000014036641a sub      rcx, 1
000000014036641e mov      dword ptr [rsp + 0x68], r9d
0000000140366423 mov      qword ptr [rsp + 0x78], rcx
0000000140366428 jne      0x140366351
000000014036642e mov      r15, qword ptr [rsp + 0xe0]
0000000140366436 mov      edi, dword ptr [rsp + 0xf8]
000000014036643d mov      rcx, qword ptr [rip + 0x5b9bbc]
0000000140366444 cmp      rcx, r12
0000000140366447 je       0x140366474
0000000140366449 cmp      byte ptr [rcx + 0x169], 2
0000000140366450 jb       0x140366474
0000000140366452 mov      eax, dword ptr [rcx + 0x16c]
0000000140366458 test     r14b, al
000000014036645b je       0x140366474
000000014036645d mov      rcx, qword ptr [rcx + 0x158]
0000000140366464 mov      edx, 0x168
0000000140366469 mov      r9d, edi
000000014036646c mov      r8, r13
000000014036646f call     0x140001bb0
0000000140366474 test     edi, edi
0000000140366476 je       0x14036657d
000000014036647c mov      r15, qword ptr [rsp + 0x70]
0000000140366481 lea      ecx, [rdi - 1]
0000000140366484 shr      ecx, 3
0000000140366487 lea      r9d, [rdi + 0xce]
000000014036648e inc      ecx
0000000140366490 mov      dword ptr [rsp + 0x68], r9d
0000000140366495 mov      qword ptr [rsp + 0x78], rcx
000000014036649a mov      rax, qword ptr [rip + 0x5b9b5f]
00000001403664a1 mov      qword ptr [rsp + 0x80], rax
00000001403664a9 cmp      rax, r12
00000001403664ac je       0x140366557
00000001403664b2 cmp      byte ptr [rax + 0x169], 2
00000001403664b9 jb       0x140366557
00000001403664bf mov      eax, dword ptr [rax + 0x16c]
00000001403664c5 test     r14b, al
00000001403664c8 je       0x140366557
00000001403664ce movzx    esi, byte ptr [r9 + r15]
00000001403664d3 lea      eax, [r9 + 1]
00000001403664d7 movzx    ebp, byte ptr [rax + r15]
00000001403664dc mov      edx, 0x169
00000001403664e1 mov      rcx, qword ptr [rsp + 0x80]
00000001403664e9 lea      eax, [r9 - 1]
00000001403664ed movzx    edi, byte ptr [rax + r15]
00000001403664f2 lea      eax, [r9 - 2]
00000001403664f6 movzx    ebx, byte ptr [rax + r15]
00000001403664fb lea      eax, [r9 - 3]
00000001403664ff movzx    r11d, byte ptr [rax + r15]
0000000140366504 lea      eax, [r9 - 4]
0000000140366508 movzx    r10d, byte ptr [rax + r15]
000000014036650d lea      eax, [r9 - 5]
0000000140366511 movzx    r8d, byte ptr [rax + r15]
0000000140366516 lea      eax, [r9 - 6]
000000014036651a movzx    r9d, byte ptr [rax + r15]
000000014036651f mov      rcx, qword ptr [rcx + 0x158]
0000000140366526 mov      dword ptr [rsp + 0x50], ebp
000000014036652a mov      dword ptr [rsp + 0x48], esi
000000014036652e mov      dword ptr [rsp + 0x40], edi
0000000140366532 mov      dword ptr [rsp + 0x38], ebx
0000000140366536 mov      dword ptr [rsp + 0x30], r11d
000000014036653b mov      dword ptr [rsp + 0x28], r10d
0000000140366540 mov      dword ptr [rsp + 0x20], r8d
0000000140366545 mov      r8, r13
0000000140366548 call     0x14005018c
000000014036654d mov      r9d, dword ptr [rsp + 0x68]
0000000140366552 mov      rcx, qword ptr [rsp + 0x78]
0000000140366557 add      r9d, r14d
000000014036655a sub      rcx, 1
000000014036655e mov      dword ptr [rsp + 0x68], r9d
0000000140366563 mov      qword ptr [rsp + 0x78], rcx
0000000140366568 jne      0x14036649a
000000014036656e mov      r15, qword ptr [rsp + 0xe0]
0000000140366576 mov      edi, dword ptr [rsp + 0xf8]
000000014036657d lea      eax, [rdi*2 + 0xcc]
0000000140366584 mov      dword ptr [rsp + 0xf8], eax
000000014036658b mov      rcx, qword ptr [rip + 0x5b9a6e]
0000000140366592 cmp      rcx, r12
0000000140366595 je       0x1403665cb
0000000140366597 cmp      byte ptr [rcx + 0x169], 2
000000014036659e jb       0x1403665cb
00000001403665a0 mov      eax, dword ptr [rcx + 0x16c]
00000001403665a6 test     r14b, al
00000001403665a9 je       0x1403665c4
00000001403665ab mov      r9d, dword ptr [rsp + 0x60]
00000001403665b0 mov      edx, 0x16a
00000001403665b5 mov      rcx, qword ptr [rcx + 0x158]
00000001403665bc mov      r8, r13
00000001403665bf call     0x140001bb0
00000001403665c4 mov      eax, dword ptr [rsp + 0xf8]
00000001403665cb mov      ecx, dword ptr [rsp + 0x60]
00000001403665cf test     ecx, ecx
00000001403665d1 je       0x1403666d1
00000001403665d7 mov      r15, qword ptr [rsp + 0x70]
00000001403665dc lea      r9d, [rax + 6]
00000001403665e0 dec      ecx
00000001403665e2 mov      dword ptr [rsp + 0x68], r9d
00000001403665e7 shr      ecx, 3
00000001403665ea inc      ecx
00000001403665ec mov      qword ptr [rsp + 0x78], rcx
00000001403665f1 mov      rax, qword ptr [rip + 0x5b9a08]
00000001403665f8 mov      qword ptr [rsp + 0x80], rax
0000000140366600 cmp      rax, r12
0000000140366603 je       0x1403666ae
0000000140366609 cmp      byte ptr [rax + 0x169], 2
0000000140366610 jb       0x1403666ae
0000000140366616 mov      eax, dword ptr [rax + 0x16c]
000000014036661c test     r14b, al
000000014036661f je       0x1403666ae
0000000140366625 movzx    esi, byte ptr [r9 + r15]
000000014036662a lea      eax, [r9 + 1]
000000014036662e movzx    ebp, byte ptr [rax + r15]
0000000140366633 mov      edx, 0x16b
0000000140366638 mov      rcx, qword ptr [rsp + 0x80]
0000000140366640 lea      eax, [r9 - 1]
0000000140366644 movzx    edi, byte ptr [rax + r15]
0000000140366649 lea      eax, [r9 - 2]
000000014036664d movzx    ebx, byte ptr [rax + r15]
0000000140366652 lea      eax, [r9 - 3]
0000000140366656 movzx    r11d, byte ptr [rax + r15]
000000014036665b lea      eax, [r9 - 4]
000000014036665f movzx    r10d, byte ptr [rax + r15]
0000000140366664 lea      eax, [r9 - 5]
0000000140366668 movzx    r8d, byte ptr [rax + r15]
000000014036666d lea      eax, [r9 - 6]
0000000140366671 movzx    r9d, byte ptr [rax + r15]
0000000140366676 mov      rcx, qword ptr [rcx + 0x158]
000000014036667d mov      dword ptr [rsp + 0x50], ebp
0000000140366681 mov      dword ptr [rsp + 0x48], esi
0000000140366685 mov      dword ptr [rsp + 0x40], edi
0000000140366689 mov      dword ptr [rsp + 0x38], ebx
000000014036668d mov      dword ptr [rsp + 0x30], r11d
0000000140366692 mov      dword ptr [rsp + 0x28], r10d
0000000140366697 mov      dword ptr [rsp + 0x20], r8d
000000014036669c mov      r8, r13
000000014036669f call     0x14005018c
00000001403666a4 mov      r9d, dword ptr [rsp + 0x68]
00000001403666a9 mov      rcx, qword ptr [rsp + 0x78]
00000001403666ae add      r9d, r14d
00000001403666b1 sub      rcx, 1
00000001403666b5 mov      dword ptr [rsp + 0x68], r9d
00000001403666ba mov      qword ptr [rsp + 0x78], rcx
00000001403666bf jne      0x1403665f1
00000001403666c5 mov      r15, qword ptr [rsp + 0xe0]
00000001403666cd mov      ecx, dword ptr [rsp + 0x60]
00000001403666d1 mov      eax, dword ptr [rsp + 0xf8]
00000001403666d8 add      eax, 4
00000001403666db add      eax, ecx
00000001403666dd mov      dword ptr [rsp + 0xf8], eax
00000001403666e4 mov      r10, qword ptr [rip + 0x5b9915]
00000001403666eb cmp      r10, r12
00000001403666ee je       0x140366728
00000001403666f0 cmp      byte ptr [r10 + 0x169], 2
00000001403666f8 jb       0x140366728
00000001403666fa mov      eax, dword ptr [r10 + 0x16c]
0000000140366701 test     r14b, al
0000000140366704 je       0x140366721
0000000140366706 mov      r9d, ecx
0000000140366709 mov      edx, 0x16c
000000014036670e mov      rcx, qword ptr [r10 + 0x158]
0000000140366715 mov      r8, r13
0000000140366718 call     0x140001bb0
000000014036671d mov      ecx, dword ptr [rsp + 0x60]
0000000140366721 mov      eax, dword ptr [rsp + 0xf8]
0000000140366728 test     ecx, ecx
000000014036672a je       0x14036682a
0000000140366730 mov      r15, qword ptr [rsp + 0x70]
0000000140366735 lea      r9d, [rax + 6]
0000000140366739 dec      ecx
000000014036673b mov      dword ptr [rsp + 0x68], r9d
0000000140366740 shr      ecx, 3
0000000140366743 inc      ecx
0000000140366745 mov      qword ptr [rsp + 0x78], rcx
000000014036674a mov      rax, qword ptr [rip + 0x5b98af]
0000000140366751 mov      qword ptr [rsp + 0x80], rax
0000000140366759 cmp      rax, r12
000000014036675c je       0x140366807
0000000140366762 cmp      byte ptr [rax + 0x169], 2
0000000140366769 jb       0x140366807
000000014036676f mov      eax, dword ptr [rax + 0x16c]
0000000140366775 test     r14b, al
0000000140366778 je       0x140366807
000000014036677e movzx    esi, byte ptr [r9 + r15]
0000000140366783 lea      eax, [r9 + 1]
0000000140366787 movzx    ebp, byte ptr [rax + r15]
000000014036678c mov      edx, 0x16d
0000000140366791 mov      rcx, qword ptr [rsp + 0x80]
0000000140366799 lea      eax, [r9 - 1]
000000014036679d movzx    edi, byte ptr [rax + r15]
00000001403667a2 lea      eax, [r9 - 2]
00000001403667a6 movzx    ebx, byte ptr [rax + r15]
00000001403667ab lea      eax, [r9 - 3]
00000001403667af movzx    r11d, byte ptr [rax + r15]
00000001403667b4 lea      eax, [r9 - 4]
00000001403667b8 movzx    r10d, byte ptr [rax + r15]
00000001403667bd lea      eax, [r9 - 5]
00000001403667c1 movzx    r8d, byte ptr [rax + r15]
00000001403667c6 lea      eax, [r9 - 6]
00000001403667ca movzx    r9d, byte ptr [rax + r15]
00000001403667cf mov      rcx, qword ptr [rcx + 0x158]
00000001403667d6 mov      dword ptr [rsp + 0x50], ebp
00000001403667da mov      dword ptr [rsp + 0x48], esi
00000001403667de mov      dword ptr [rsp + 0x40], edi
00000001403667e2 mov      dword ptr [rsp + 0x38], ebx
00000001403667e6 mov      dword ptr [rsp + 0x30], r11d
00000001403667eb mov      dword ptr [rsp + 0x28], r10d
00000001403667f0 mov      dword ptr [rsp + 0x20], r8d
00000001403667f5 mov      r8, r13
00000001403667f8 call     0x14005018c
00000001403667fd mov      r9d, dword ptr [rsp + 0x68]
0000000140366802 mov      rcx, qword ptr [rsp + 0x78]
0000000140366807 add      r9d, r14d
000000014036680a sub      rcx, 1
000000014036680e mov      dword ptr [rsp + 0x68], r9d
0000000140366813 mov      qword ptr [rsp + 0x78], rcx
0000000140366818 jne      0x14036674a
000000014036681e mov      r15, qword ptr [rsp + 0xe0]
0000000140366826 mov      ecx, dword ptr [rsp + 0x60]
000000014036682a mov      ebx, dword ptr [rsp + 0xf8]
0000000140366831 add      ebx, ecx
0000000140366833 mov      rcx, qword ptr [rip + 0x5b97c6]
000000014036683a cmp      rcx, r12
000000014036683d je       0x140366867
000000014036683f cmp      byte ptr [rcx + 0x169], 2
0000000140366846 jb       0x140366867
0000000140366848 mov      eax, dword ptr [rcx + 0x16c]
000000014036684e test     r14b, al
0000000140366851 je       0x140366867
0000000140366853 mov      rcx, qword ptr [rcx + 0x158]
000000014036685a mov      edx, 0x16e
000000014036685f mov      r8, r13
0000000140366862 call     0x140001b88
0000000140366867 lea      eax, [rbx + 0xb]
000000014036686a cmp      eax, 0x800
000000014036686f jae      0x140366963
0000000140366875 mov      r15, qword ptr [rsp + 0x70]
000000014036687a lea      r9d, [rbx + 9]
000000014036687e mov      dword ptr [rsp + 0xf8], r9d
0000000140366886 mov      rax, qword ptr [rip + 0x5b9773]
000000014036688d mov      qword ptr [rsp + 0x80], rax
0000000140366895 cmp      rax, r12
0000000140366898 je       0x140366941
000000014036689e cmp      byte ptr [rax + 0x169], 2
00000001403668a5 jb       0x140366941
00000001403668ab mov      eax, dword ptr [rax + 0x16c]
00000001403668b1 test     r14b, al
00000001403668b4 je       0x140366941
00000001403668ba movzx    edi, byte ptr [r9 + r15]
00000001403668bf lea      eax, [r9 + 2]
00000001403668c3 movzx    ebp, byte ptr [rax + r15]
00000001403668c8 mov      edx, 0x16f
00000001403668cd mov      rcx, qword ptr [rsp + 0x80]
00000001403668d5 lea      eax, [r9 + 1]
00000001403668d9 movzx    esi, byte ptr [rax + r15]
00000001403668de lea      eax, [r9 - 1]
00000001403668e2 movzx    ebx, byte ptr [rax + r15]
00000001403668e7 lea      eax, [r9 - 2]
00000001403668eb movzx    r11d, byte ptr [rax + r15]
00000001403668f0 lea      eax, [r9 - 3]
00000001403668f4 movzx    r10d, byte ptr [rax + r15]
00000001403668f9 lea      eax, [r9 - 4]
00000001403668fd movzx    r8d, byte ptr [rax + r15]
0000000140366902 lea      eax, [r9 - 5]
0000000140366906 movzx    r9d, byte ptr [rax + r15]
000000014036690b mov      rcx, qword ptr [rcx + 0x158]
0000000140366912 mov      dword ptr [rsp + 0x50], ebp
0000000140366916 mov      dword ptr [rsp + 0x48], esi
000000014036691a mov      dword ptr [rsp + 0x40], edi
000000014036691e mov      dword ptr [rsp + 0x38], ebx
0000000140366922 mov      dword ptr [rsp + 0x30], r11d
0000000140366927 mov      dword ptr [rsp + 0x28], r10d
000000014036692c mov      dword ptr [rsp + 0x20], r8d
0000000140366931 mov      r8, r13
0000000140366934 call     0x14005018c
0000000140366939 mov      r9d, dword ptr [rsp + 0xf8]
0000000140366941 add      r9d, r14d
0000000140366944 mov      dword ptr [rsp + 0xf8], r9d
000000014036694c lea      eax, [r9 + 2]
0000000140366950 cmp      eax, 0x800
0000000140366955 jb       0x140366886
000000014036695b mov      r15, qword ptr [rsp + 0xe0]
0000000140366963 mov      rcx, qword ptr [rip + 0x5b9696]
000000014036696a cmp      rcx, r12
000000014036696d je       0x140366997
000000014036696f cmp      byte ptr [rcx + 0x169], 2
0000000140366976 jb       0x140366997
0000000140366978 mov      eax, dword ptr [rcx + 0x16c]
000000014036697e test     r14b, al
0000000140366981 je       0x140366997
0000000140366983 mov      rcx, qword ptr [rcx + 0x158]
000000014036698a mov      edx, 0x170
000000014036698f mov      r8, r13
0000000140366992 call     0x140001b88
0000000140366997 mov      rdx, qword ptr [rsp + 0x70]
000000014036699c jmp      0x1403669d5
000000014036699e mov      rcx, qword ptr [rip + 0x5b965b]
00000001403669a5 cmp      rcx, r12
00000001403669a8 je       0x1403669d2
00000001403669aa cmp      byte ptr [rcx + 0x169], bpl
00000001403669b1 jb       0x1403669d2
00000001403669b3 mov      eax, dword ptr [rcx + 0x16c]
00000001403669b9 test     r14b, al
00000001403669bc je       0x1403669d2
00000001403669be mov      rcx, qword ptr [rcx + 0x158]
00000001403669c5 mov      edx, 0x160
00000001403669ca mov      r8, r13
00000001403669cd call     0x140001b88
00000001403669d2 mov      rdx, rbx
00000001403669d5 mov      rax, qword ptr [r15 + 0x18]
00000001403669d9 mov      r8d, 0x800
00000001403669df mov      rcx, qword ptr [r15 + 8]
00000001403669e3 mov      rax, qword ptr [rax + 0x90]
00000001403669ea call     qword ptr [rip + 0x31d908]
00000001403669f0 xor      eax, eax
00000001403669f2 jmp      0x140366aa0
00000001403669f7 mov      rcx, qword ptr [rip + 0x5b9602]
00000001403669fe lea      r12, [rip + 0x5b95fb]
0000000140366a05 cmp      rcx, r12
0000000140366a08 je       0x140366a9b
0000000140366a0e lea      r13, [rip + 0x36b87b]
0000000140366a15 mov      r14d, 8
0000000140366a1b cmp      byte ptr [rcx + 0x169], sil
0000000140366a22 jb       0x140366a5f
0000000140366a24 mov      eax, dword ptr [rcx + 0x16c]
0000000140366a2a test     r14b, al
0000000140366a2d je       0x140366a5f
0000000140366a2f movzx    r8d, byte ptr [r15 + 0x104]
0000000140366a37 mov      r9d, edx
0000000140366a3a movzx    eax, byte ptr [r15 + 0x399]
0000000140366a42 mov      edx, 0x158
0000000140366a47 mov      rcx, qword ptr [rcx + 0x158]
0000000140366a4e mov      dword ptr [rsp + 0x28], eax
0000000140366a52 mov      dword ptr [rsp + 0x20], r8d
0000000140366a57 mov      r8, r13
0000000140366a5a call     0x140001c34
0000000140366a5f mov      rcx, qword ptr [rip + 0x5b959a]
0000000140366a66 cmp      rcx, r12
0000000140366a69 je       0x140366a9b
0000000140366a6b cmp      byte ptr [rcx + 0x169], sil
0000000140366a72 jb       0x140366a9b
0000000140366a74 mov      eax, dword ptr [rcx + 0x16c]
0000000140366a7a test     r14b, al
0000000140366a7d je       0x140366a9b
0000000140366a7f movzx    r9d, byte ptr [r15 + 0x10c]
0000000140366a87 mov      edx, 0x159
0000000140366a8c mov      rcx, qword ptr [rcx + 0x158]
0000000140366a93 mov      r8, r13
0000000140366a96 call     0x140001bb0
0000000140366a9b mov      eax, 0x18
0000000140366aa0 add      rsp, 0x98
0000000140366aa7 pop      r15
0000000140366aa9 pop      r14
0000000140366aab pop      r13
0000000140366aad pop      r12
0000000140366aaf pop      rdi
0000000140366ab0 pop      rsi
0000000140366ab1 pop      rbp
0000000140366ab2 pop      rbx
0000000140366ab3 ret      