0000000140303ab0 push     rbp
0000000140303ab2 push     rbx
0000000140303ab3 push     rsi
0000000140303ab4 push     rdi
0000000140303ab5 push     r12
0000000140303ab7 push     r13
0000000140303ab9 push     r14
0000000140303abb push     r15
0000000140303abd mov      rbp, rsp
0000000140303ac0 sub      rsp, 0x78
0000000140303ac4 mov      rax, qword ptr [rip + 0x623995]
0000000140303acb xor      rax, rsp
0000000140303ace mov      qword ptr [rbp - 0x18], rax
0000000140303ad2 mov      rdi, qword ptr [rbp + 0x68]
0000000140303ad6 lea      rsi, [rdx + 0x10]
0000000140303ada xor      eax, eax
0000000140303adc xorps    xmm0, xmm0
0000000140303adf cmp      byte ptr [rsi], 0x2d
0000000140303ae2 mov      r14, r9
0000000140303ae5 mov      rbx, r8
0000000140303ae8 mov      qword ptr [rbp - 0x20], rax
0000000140303aec mov      r15, rdx
0000000140303aef mov      r12, rcx
0000000140303af2 movups   xmmword ptr [rbp - 0x40], xmm0
0000000140303af6 movups   xmmword ptr [rbp - 0x30], xmm0
0000000140303afa jne      0x140303b96
0000000140303b00 cmp      byte ptr [rsi + 1], 0x68
0000000140303b04 jne      0x140303b96
0000000140303b0a cmp      byte ptr [rsi + 2], al
0000000140303b0d jne      0x140303b96
0000000140303b13 mov      eax, dword ptr [r8]
0000000140303b16 mov      ecx, dword ptr [rdi]
0000000140303b18 cmp      eax, ecx
0000000140303b1a jae      0x140303b34
0000000140303b1c sub      ecx, eax
0000000140303b1e lea      r8, [rip + 0x32babb]
0000000140303b25 mov      edx, ecx
0000000140303b27 lea      rcx, [r9 + rax]
0000000140303b2b call     0x140044426
0000000140303b30 add      dword ptr [rbx], eax
0000000140303b32 mov      eax, dword ptr [rbx]
0000000140303b34 mov      ecx, dword ptr [rdi]
0000000140303b36 cmp      eax, ecx
0000000140303b38 jae      0x140303b53
0000000140303b3a sub      ecx, eax
0000000140303b3c lea      r8, [rip + 0x3288cd]
0000000140303b43 mov      edx, ecx
0000000140303b45 mov      ecx, eax
0000000140303b47 add      rcx, r14
0000000140303b4a call     0x140044426
0000000140303b4f add      dword ptr [rbx], eax
0000000140303b51 mov      eax, dword ptr [rbx]
0000000140303b53 mov      ecx, dword ptr [rdi]
0000000140303b55 cmp      eax, ecx
0000000140303b57 jae      0x140303b72
0000000140303b59 sub      ecx, eax
0000000140303b5b lea      r8, [rip + 0x32ba8e]
0000000140303b62 mov      edx, ecx
0000000140303b64 mov      ecx, eax
0000000140303b66 add      rcx, r14
0000000140303b69 call     0x140044426
0000000140303b6e add      dword ptr [rbx], eax
0000000140303b70 mov      eax, dword ptr [rbx]
0000000140303b72 mov      ecx, dword ptr [rdi]
0000000140303b74 cmp      eax, ecx
0000000140303b76 jae      0x140304280
0000000140303b7c sub      ecx, eax
0000000140303b7e lea      r8, [rip + 0x32ba9b]
0000000140303b85 mov      edx, ecx
0000000140303b87 mov      ecx, eax
0000000140303b89 add      rcx, r14
0000000140303b8c call     0x140044426
0000000140303b91 jmp      0x140303c89
0000000140303b96 lea      rdx, [rip + 0x32baa3]
0000000140303b9d mov      rcx, rsi
0000000140303ba0 call     0x140044360
0000000140303ba5 test     eax, eax
0000000140303ba7 jne      0x140303c0b
0000000140303ba9 lea      rcx, [r15 + 0x20]
0000000140303bad lea      r8, [rbp - 0x40]
0000000140303bb1 lea      rdx, [rip + 0x317bb8]
0000000140303bb8 call     0x140044420
0000000140303bbd mov      rax, qword ptr [r12 + 0x9a0]
0000000140303bc5 mov      r13d, 1
0000000140303bcb cmp      dword ptr [rbp - 0x40], r13d
0000000140303bcf je       0x140303bd4
0000000140303bd1 xor      r13d, r13d
0000000140303bd4 mov      dword ptr [rax + 0x15f0], r13d
0000000140303bdb mov      ecx, dword ptr [rbx]
0000000140303bdd mov      eax, dword ptr [rdi]
0000000140303bdf cmp      ecx, eax
0000000140303be1 jae      0x140304280
0000000140303be7 mov      r9, qword ptr [r12 + 0x9a0]
0000000140303bef lea      r8, [rip + 0x32ba5a]
0000000140303bf6 sub      eax, ecx
0000000140303bf8 add      rcx, r14
0000000140303bfb mov      edx, eax
0000000140303bfd mov      r9d, dword ptr [r9 + 0x15f0]
0000000140303c04 call     0x140044426
0000000140303c09 jmp      0x140303c89
0000000140303c0b lea      rdx, [rip + 0x32ba6e]
0000000140303c12 mov      rcx, rsi
0000000140303c15 call     0x140044360
0000000140303c1a test     eax, eax
0000000140303c1c jne      0x140303c90
0000000140303c1e lea      rcx, [r15 + 0x20]
0000000140303c22 lea      r8, [rbp - 0x40]
0000000140303c26 lea      rdx, [rip + 0x317b43]
0000000140303c2d call     0x140044420
0000000140303c32 lea      rcx, [r15 + 0x30]
0000000140303c36 lea      r8, [rbp - 0x3c]
0000000140303c3a lea      rdx, [rip + 0x317b2f]
0000000140303c41 call     0x140044420
0000000140303c46 mov      esi, dword ptr [rbp - 0x40]
0000000140303c49 lea      rdx, [rbp - 0x48]
0000000140303c4d mov      r15d, dword ptr [rbp - 0x3c]
0000000140303c51 mov      rcx, r12
0000000140303c54 mov      byte ptr [rbp - 0x48], sil
0000000140303c58 mov      dword ptr [rbp - 0x44], r15d
0000000140303c5c call     0x140302f88
0000000140303c61 mov      ecx, dword ptr [rbx]
0000000140303c63 mov      eax, dword ptr [rdi]
0000000140303c65 cmp      ecx, eax
0000000140303c67 jae      0x140304280
0000000140303c6d sub      eax, ecx
0000000140303c6f movzx    r9d, sil
0000000140303c73 mov      edx, eax
0000000140303c75 lea      r8, [rip + 0x32ba14]
0000000140303c7c add      rcx, r14
0000000140303c7f mov      dword ptr [rsp + 0x20], r15d
0000000140303c84 call     0x140044426
0000000140303c89 add      dword ptr [rbx], eax
0000000140303c8b jmp      0x140304280
0000000140303c90 lea      rdx, [rip + 0x32ba19]
0000000140303c97 mov      rcx, rsi
0000000140303c9a call     0x140044360
0000000140303c9f test     eax, eax
0000000140303ca1 jne      0x1403040ee
0000000140303ca7 mov      ecx, dword ptr [rbx]
0000000140303ca9 mov      eax, dword ptr [rdi]
0000000140303cab cmp      ecx, eax
0000000140303cad jae      0x140303ccc
0000000140303caf mov      r9d, dword ptr [r12 + 0x998]
0000000140303cb7 lea      r8, [rip + 0x32ba02]
0000000140303cbe sub      eax, ecx
0000000140303cc0 add      rcx, r14
0000000140303cc3 mov      edx, eax
0000000140303cc5 call     0x140044426
0000000140303cca add      dword ptr [rbx], eax
0000000140303ccc mov      rcx, qword ptr [rip + 0x61c32d]
0000000140303cd3 lea      r14, [rip + 0x61c326]
0000000140303cda lea      r15, [rip + 0x3cd78f]
0000000140303ce1 mov      dil, 4
0000000140303ce4 cmp      rcx, r14
0000000140303ce7 je       0x140303d4b
0000000140303ce9 cmp      byte ptr [rcx + 0x1e9], dil
0000000140303cf0 jb       0x140303d18
0000000140303cf2 bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303cfa jae      0x140303d18
0000000140303cfc mov      r9d, dword ptr [r12 + 0x998]
0000000140303d04 mov      edx, 0x2b
0000000140303d09 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303d10 mov      r8, r15
0000000140303d13 call     0x140001bb0
0000000140303d18 mov      rcx, qword ptr [rip + 0x61c2e1]
0000000140303d1f cmp      rcx, r14
0000000140303d22 je       0x140303d4b
0000000140303d24 cmp      byte ptr [rcx + 0x1e9], dil
0000000140303d2b jb       0x140303d4b
0000000140303d2d bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303d35 jae      0x140303d4b
0000000140303d37 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303d3e mov      edx, 0x2c
0000000140303d43 mov      r8, r15
0000000140303d46 call     0x140001b88
0000000140303d4b mov      rbx, qword ptr [r12 + 0x990]
0000000140303d53 mov      r13d, 1
0000000140303d59 test     rbx, rbx
0000000140303d5c je       0x140303d75
0000000140303d5e cmp      dword ptr [r12 + 0x998], r13d
0000000140303d66 je       0x140303d75
0000000140303d68 mov      rax, qword ptr [r12]
0000000140303d6c cmp      byte ptr [rax + 0xe0b1], 0
0000000140303d73 jne      0x140303d78
0000000140303d75 mov      rbx, r12
0000000140303d78 mov      rcx, qword ptr [rip + 0x61c281]
0000000140303d7f cmp      rcx, r14
0000000140303d82 je       0x140303db2
0000000140303d84 cmp      byte ptr [rcx + 0x1e9], dil
0000000140303d8b jb       0x140303db2
0000000140303d8d bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303d95 jae      0x140303db2
0000000140303d97 mov      r9d, dword ptr [rbx + 0x998]
0000000140303d9e mov      edx, 0x2d
0000000140303da3 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303daa mov      r8, r15
0000000140303dad call     0x140001bb0
0000000140303db2 mov      rcx, qword ptr [rip + 0x61c247]
0000000140303db9 cmp      rcx, r14
0000000140303dbc je       0x140303e1f
0000000140303dbe cmp      byte ptr [rcx + 0x1e9], dil
0000000140303dc5 jb       0x140303dec
0000000140303dc7 bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303dcf jae      0x140303dec
0000000140303dd1 mov      r9d, dword ptr [rbx + 0x998]
0000000140303dd8 mov      edx, 0x2e
0000000140303ddd mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303de4 mov      r8, r15
0000000140303de7 call     0x140001bb0
0000000140303dec mov      rcx, qword ptr [rip + 0x61c20d]
0000000140303df3 cmp      rcx, r14
0000000140303df6 je       0x140303e1f
0000000140303df8 cmp      byte ptr [rcx + 0x1e9], dil
0000000140303dff jb       0x140303e1f
0000000140303e01 bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303e09 jae      0x140303e1f
0000000140303e0b mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303e12 mov      edx, 0x2f
0000000140303e17 mov      r8, r15
0000000140303e1a call     0x140001b88
0000000140303e1f mov      rcx, qword ptr [rbx + 0x990]
0000000140303e26 xor      r12d, r12d
0000000140303e29 test     rcx, rcx
0000000140303e2c je       0x140303e45
0000000140303e2e cmp      dword ptr [rbx + 0x998], r13d
0000000140303e35 je       0x140303e45
0000000140303e37 mov      rax, qword ptr [rbx]
0000000140303e3a cmp      byte ptr [rax + 0xe0b1], r12b
0000000140303e41 cmovne   rbx, rcx
0000000140303e45 mov      rcx, qword ptr [rip + 0x61c1b4]
0000000140303e4c cmp      rcx, r14
0000000140303e4f je       0x140303e7f
0000000140303e51 cmp      byte ptr [rcx + 0x1e9], dil
0000000140303e58 jb       0x140303e7f
0000000140303e5a bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303e62 jae      0x140303e7f
0000000140303e64 mov      r9d, dword ptr [rbx + 0x998]
0000000140303e6b mov      edx, 0x30
0000000140303e70 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303e77 mov      r8, r15
0000000140303e7a call     0x140001bb0
0000000140303e7f mov      rcx, qword ptr [rip + 0x61c17a]
0000000140303e86 cmp      rcx, r14
0000000140303e89 je       0x140303eec
0000000140303e8b cmp      byte ptr [rcx + 0x1e9], dil
0000000140303e92 jb       0x140303eb9
0000000140303e94 bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303e9c jae      0x140303eb9
0000000140303e9e mov      r9d, dword ptr [rbx + 0x998]
0000000140303ea5 mov      edx, 0x31
0000000140303eaa mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303eb1 mov      r8, r15
0000000140303eb4 call     0x140001bb0
0000000140303eb9 mov      rcx, qword ptr [rip + 0x61c140]
0000000140303ec0 cmp      rcx, r14
0000000140303ec3 je       0x140303eec
0000000140303ec5 cmp      byte ptr [rcx + 0x1e9], dil
0000000140303ecc jb       0x140303eec
0000000140303ece bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303ed6 jae      0x140303eec
0000000140303ed8 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303edf mov      edx, 0x32
0000000140303ee4 mov      r8, r15
0000000140303ee7 call     0x140001b88
0000000140303eec mov      rcx, qword ptr [rbx + 0x990]
0000000140303ef3 test     rcx, rcx
0000000140303ef6 je       0x140303f0f
0000000140303ef8 cmp      dword ptr [rbx + 0x998], r12d
0000000140303eff je       0x140303f0f
0000000140303f01 mov      rax, qword ptr [rbx]
0000000140303f04 cmp      byte ptr [rax + 0xe0b1], r12b
0000000140303f0b cmovne   rbx, rcx
0000000140303f0f mov      rcx, qword ptr [rip + 0x61c0ea]
0000000140303f16 cmp      rcx, r14
0000000140303f19 je       0x140303f49
0000000140303f1b cmp      byte ptr [rcx + 0x1e9], dil
0000000140303f22 jb       0x140303f49
0000000140303f24 bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303f2c jae      0x140303f49
0000000140303f2e mov      r9d, dword ptr [rbx + 0x998]
0000000140303f35 mov      edx, 0x33
0000000140303f3a mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303f41 mov      r8, r15
0000000140303f44 call     0x140001bb0
0000000140303f49 mov      rcx, qword ptr [rip + 0x61c0b0]
0000000140303f50 cmp      rcx, r14
0000000140303f53 je       0x140303fb6
0000000140303f55 cmp      byte ptr [rcx + 0x1e9], dil
0000000140303f5c jb       0x140303f83
0000000140303f5e bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303f66 jae      0x140303f83
0000000140303f68 mov      r9d, dword ptr [rbx + 0x998]
0000000140303f6f mov      edx, 0x34
0000000140303f74 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303f7b mov      r8, r15
0000000140303f7e call     0x140001bb0
0000000140303f83 mov      rcx, qword ptr [rip + 0x61c076]
0000000140303f8a cmp      rcx, r14
0000000140303f8d je       0x140303fb6
0000000140303f8f cmp      byte ptr [rcx + 0x1e9], dil
0000000140303f96 jb       0x140303fb6
0000000140303f98 bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303fa0 jae      0x140303fb6
0000000140303fa2 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140303fa9 mov      edx, 0x35
0000000140303fae mov      r8, r15
0000000140303fb1 call     0x140001b88
0000000140303fb6 mov      rcx, qword ptr [rbx + 0x990]
0000000140303fbd test     rcx, rcx
0000000140303fc0 je       0x140303fd9
0000000140303fc2 cmp      dword ptr [rbx + 0x998], r12d
0000000140303fc9 je       0x140303fd9
0000000140303fcb mov      rax, qword ptr [rbx]
0000000140303fce cmp      byte ptr [rax + 0xe0b1], r12b
0000000140303fd5 cmovne   rbx, rcx
0000000140303fd9 mov      rcx, qword ptr [rip + 0x61c020]
0000000140303fe0 cmp      rcx, r14
0000000140303fe3 je       0x140304013
0000000140303fe5 cmp      byte ptr [rcx + 0x1e9], dil
0000000140303fec jb       0x140304013
0000000140303fee bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140303ff6 jae      0x140304013
0000000140303ff8 mov      r9d, dword ptr [rbx + 0x998]
0000000140303fff mov      edx, 0x36
0000000140304004 mov      rcx, qword ptr [rcx + 0x1d8]
000000014030400b mov      r8, r15
000000014030400e call     0x140001bb0
0000000140304013 mov      rcx, qword ptr [rip + 0x61bfe6]
000000014030401a cmp      rcx, r14
000000014030401d je       0x140304080
000000014030401f cmp      byte ptr [rcx + 0x1e9], dil
0000000140304026 jb       0x14030404d
0000000140304028 bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140304030 jae      0x14030404d
0000000140304032 mov      r9d, dword ptr [rbx + 0x998]
0000000140304039 mov      edx, 0x37
000000014030403e mov      rcx, qword ptr [rcx + 0x1d8]
0000000140304045 mov      r8, r15
0000000140304048 call     0x140001bb0
000000014030404d mov      rcx, qword ptr [rip + 0x61bfac]
0000000140304054 cmp      rcx, r14
0000000140304057 je       0x140304080
0000000140304059 cmp      byte ptr [rcx + 0x1e9], dil
0000000140304060 jb       0x140304080
0000000140304062 bt       dword ptr [rcx + 0x1ec], 0x1a
000000014030406a jae      0x140304080
000000014030406c mov      rcx, qword ptr [rcx + 0x1d8]
0000000140304073 mov      edx, 0x38
0000000140304078 mov      r8, r15
000000014030407b call     0x140001b88
0000000140304080 mov      rcx, qword ptr [rbx + 0x990]
0000000140304087 test     rcx, rcx
000000014030408a je       0x1403040a3
000000014030408c cmp      dword ptr [rbx + 0x998], r13d
0000000140304093 je       0x1403040a3
0000000140304095 mov      rax, qword ptr [rbx]
0000000140304098 cmp      byte ptr [rax + 0xe0b1], r12b
000000014030409f cmovne   rbx, rcx
00000001403040a3 mov      rcx, qword ptr [rip + 0x61bf56]
00000001403040aa cmp      rcx, r14
00000001403040ad je       0x140304280
00000001403040b3 cmp      byte ptr [rcx + 0x1e9], dil
00000001403040ba jb       0x140304280
00000001403040c0 bt       dword ptr [rcx + 0x1ec], 0x1a
00000001403040c8 jae      0x140304280
00000001403040ce mov      r9d, dword ptr [rbx + 0x998]
00000001403040d5 mov      edx, 0x39
00000001403040da mov      rcx, qword ptr [rcx + 0x1d8]
00000001403040e1 mov      r8, r15
00000001403040e4 call     0x140001bb0
00000001403040e9 jmp      0x140304280
00000001403040ee lea      rdx, [rip + 0x32b5eb]
00000001403040f5 mov      rcx, rsi
00000001403040f8 call     0x140044360
00000001403040fd test     eax, eax
00000001403040ff jne      0x140304280
0000000140304105 mov      ecx, dword ptr [rbx]
0000000140304107 mov      eax, dword ptr [rdi]
0000000140304109 cmp      ecx, eax
000000014030410b jae      0x14030412a
000000014030410d mov      r9d, dword ptr [r12 + 0x998]
0000000140304115 lea      r8, [rip + 0x32b5d4]
000000014030411c sub      eax, ecx
000000014030411e add      rcx, r14
0000000140304121 mov      edx, eax
0000000140304123 call     0x140044426
0000000140304128 add      dword ptr [rbx], eax
000000014030412a mov      rcx, qword ptr [rip + 0x61becf]
0000000140304131 lea      r14, [rip + 0x61bec8]
0000000140304138 lea      r15, [rip + 0x3cd331]
000000014030413f mov      dil, 4
0000000140304142 cmp      rcx, r14
0000000140304145 je       0x14030416e
0000000140304147 cmp      byte ptr [rcx + 0x1e9], dil
000000014030414e jb       0x14030416e
0000000140304150 bt       dword ptr [rcx + 0x1ec], 0x1a
0000000140304158 jae      0x14030416e
000000014030415a mov      rcx, qword ptr [rcx + 0x1d8]
0000000140304161 mov      edx, 0x3a
0000000140304166 mov      r8, r15
0000000140304169 call     0x140001b88
000000014030416e mov      r13d, 1
0000000140304174 mov      rcx, r12
0000000140304177 mov      edx, r13d
000000014030417a call     0x140304364
000000014030417f mov      rbx, rax
0000000140304182 mov      rcx, qword ptr [rip + 0x61be77]
0000000140304189 cmp      rcx, r14
000000014030418c je       0x1403041b4
000000014030418e cmp      byte ptr [rcx + 0x1e9], dil
0000000140304195 jb       0x1403041b4
0000000140304197 bt       dword ptr [rcx + 0x1ec], 0x1a
000000014030419f jae      0x1403041b4
00000001403041a1 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403041a8 lea      edx, [r13 + 0x3a]
00000001403041ac mov      r8, r15
00000001403041af call     0x140001b88
00000001403041b4 mov      edx, r13d
00000001403041b7 mov      rcx, rbx
00000001403041ba call     0x140304364
00000001403041bf mov      rbx, rax
00000001403041c2 mov      rcx, qword ptr [rip + 0x61be37]
00000001403041c9 cmp      rcx, r14
00000001403041cc je       0x1403041f5
00000001403041ce cmp      byte ptr [rcx + 0x1e9], dil
00000001403041d5 jb       0x1403041f5
00000001403041d7 bt       dword ptr [rcx + 0x1ec], 0x1a
00000001403041df jae      0x1403041f5
00000001403041e1 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403041e8 mov      edx, 0x3c
00000001403041ed mov      r8, r15
00000001403041f0 call     0x140001b88
00000001403041f5 xor      edx, edx
00000001403041f7 mov      rcx, rbx
00000001403041fa call     0x140304364
00000001403041ff mov      rbx, rax
0000000140304202 mov      rcx, qword ptr [rip + 0x61bdf7]
0000000140304209 cmp      rcx, r14
000000014030420c je       0x140304235
000000014030420e cmp      byte ptr [rcx + 0x1e9], dil
0000000140304215 jb       0x140304235
0000000140304217 bt       dword ptr [rcx + 0x1ec], 0x1a
000000014030421f jae      0x140304235
0000000140304221 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140304228 mov      edx, 0x3d
000000014030422d mov      r8, r15
0000000140304230 call     0x140001b88
0000000140304235 xor      edx, edx
0000000140304237 mov      rcx, rbx
000000014030423a call     0x140304364
000000014030423f mov      rbx, rax
0000000140304242 mov      rcx, qword ptr [rip + 0x61bdb7]
0000000140304249 cmp      rcx, r14
000000014030424c je       0x140304275
000000014030424e cmp      byte ptr [rcx + 0x1e9], dil
0000000140304255 jb       0x140304275
0000000140304257 bt       dword ptr [rcx + 0x1ec], 0x1a
000000014030425f jae      0x140304275
0000000140304261 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140304268 mov      edx, 0x3e
000000014030426d mov      r8, r15
0000000140304270 call     0x140001b88
0000000140304275 mov      edx, r13d
0000000140304278 mov      rcx, rbx
000000014030427b call     0x140304364
0000000140304280 mov      rcx, qword ptr [rbp - 0x18]
0000000140304284 xor      rcx, rsp
0000000140304287 call     0x1405f45b0
000000014030428c add      rsp, 0x78
0000000140304290 pop      r15
0000000140304292 pop      r14
0000000140304294 pop      r13
0000000140304296 pop      r12
0000000140304298 pop      rdi
0000000140304299 pop      rsi
000000014030429a pop      rbx
000000014030429b pop      rbp
000000014030429c ret      