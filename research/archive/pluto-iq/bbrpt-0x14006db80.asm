000000014006db80 push     rbp
000000014006db82 push     rbx
000000014006db83 push     rsi
000000014006db84 push     rdi
000000014006db85 push     r12
000000014006db87 push     r13
000000014006db89 push     r14
000000014006db8b push     r15
000000014006db8d lea      rbp, [rsp - 0x1f]
000000014006db92 sub      rsp, 0x98
000000014006db99 mov      rax, qword ptr [rip + 0x8b98c0]
000000014006dba0 xor      rax, rsp
000000014006dba3 mov      qword ptr [rbp + 7], rax
000000014006dba7 mov      r13, r9
000000014006dbaa mov      qword ptr [rbp - 0x49], r9
000000014006dbae mov      r9d, dword ptr [rcx + 0x53e9a0]
000000014006dbb5 xor      edi, edi
000000014006dbb7 and      r9d, 7
000000014006dbbb mov      r12, r8
000000014006dbbe lea      r8, [rcx + 0xaf3b8]
000000014006dbc5 mov      rsi, rdx
000000014006dbc8 lea      rdx, [rcx + 0x113728]
000000014006dbcf mov      r15, rcx
000000014006dbd2 mov      r14d, edi
000000014006dbd5 cmp      r9d, 3
000000014006dbd9 jne      0x14006dbe0
000000014006dbdb mov      rbx, qword ptr [rdx]
000000014006dbde jmp      0x14006dbed
000000014006dbe0 mov      rax, qword ptr [r8]
000000014006dbe3 mov      rcx, qword ptr [rax]
000000014006dbe6 mov      rbx, qword ptr [rcx + 0x113728]
000000014006dbed mov      eax, dword ptr [rbx + 0x38]
000000014006dbf0 xorps    xmm0, xmm0
000000014006dbf3 movups   xmmword ptr [rbp - 0x19], xmm0
000000014006dbf7 mov      dword ptr [rbp - 0x39], eax
000000014006dbfa movups   xmmword ptr [rbp - 9], xmm0
000000014006dbfe mov      qword ptr [rbp - 0x41], rdi
000000014006dc02 jne      0x14006dc09
000000014006dc04 mov      rax, qword ptr [rdx]
000000014006dc07 jmp      0x14006dc16
000000014006dc09 mov      rax, qword ptr [r8]
000000014006dc0c mov      rcx, qword ptr [rax]
000000014006dc0f mov      rax, qword ptr [rcx + 0x113728]
000000014006dc16 cmp      dword ptr [rax + 0x24], edi
000000014006dc19 je       0x14006e649
000000014006dc1f cmp      r9d, 3
000000014006dc23 jne      0x14006dc2a
000000014006dc25 mov      rax, qword ptr [rdx]
000000014006dc28 jmp      0x14006dc37
000000014006dc2a mov      rax, qword ptr [r8]
000000014006dc2d mov      rcx, qword ptr [rax]
000000014006dc30 mov      rax, qword ptr [rcx + 0x113728]
000000014006dc37 cmp      dword ptr [rax + 0x24], 4
000000014006dc3b je       0x14006e649
000000014006dc41 mov      rcx, qword ptr [rip + 0x8b23b8]
000000014006dc48 lea      rax, [rip + 0x8b23b1]
000000014006dc4f cmp      rcx, rax
000000014006dc52 je       0x14006dc79
000000014006dc54 test     dword ptr [rcx + 0x6c], 0x800
000000014006dc5b je       0x14006dc72
000000014006dc5d mov      rcx, qword ptr [rcx + 0x58]
000000014006dc61 lea      r8, [rip + 0x624f50]
000000014006dc68 mov      edx, 0x8e
000000014006dc6d call     0x140001b88
000000014006dc72 lea      rax, [rip + 0x8b2387]
000000014006dc79 mov      rdx, qword ptr [r13]
000000014006dc7d test     rdx, rdx
000000014006dc80 je       0x14006dccf
000000014006dc82 mov      rcx, qword ptr [rip + 0x8b2377]
000000014006dc89 cmp      rcx, rax
000000014006dc8c je       0x14006dccf
000000014006dc8e cmp      byte ptr [rcx + 0x69], 5
000000014006dc92 jb       0x14006dccf
000000014006dc94 test     dword ptr [rcx + 0x6c], 0x800
000000014006dc9b je       0x14006dccf
000000014006dc9d movzx    eax, word ptr [r13 + 8]
000000014006dca2 lea      r9, [rip + 0x58b387]
000000014006dca9 mov      rcx, qword ptr [rcx + 0x58]
000000014006dcad lea      r8, [rip + 0x624f04]
000000014006dcb4 mov      qword ptr [rbp - 0x21], rax
000000014006dcb8 lea      rax, [rbp - 0x29]
000000014006dcbc mov      qword ptr [rbp - 0x29], rdx
000000014006dcc0 mov      edx, 0x8f
000000014006dcc5 mov      qword ptr [rsp + 0x20], rax
000000014006dcca call     0x140001c88
000000014006dccf lea      rdi, [rbx + 0x52fe8]
000000014006dcd6 mov      rcx, rdi
000000014006dcd9 call     0x1400797c4
000000014006dcde mov      rdx, rsi
000000014006dce1 mov      rcx, r15
000000014006dce4 call     0x1400b2f50
000000014006dce9 test     rax, rax
000000014006dcec jne      0x14006dcf8
000000014006dcee mov      eax, 1
000000014006dcf3 jmp      0x14006e64b
000000014006dcf8 mov      dl, byte ptr [rbx + 0x29c]
000000014006dcfe lea      r8, [rbp - 0x19]
000000014006dd02 mov      cl, byte ptr [rbx + 0x298]
000000014006dd08 call     0x1401be000
000000014006dd0d test     al, al
000000014006dd0f jne      0x14006dd60
000000014006dd11 mov      rcx, qword ptr [rip + 0x8b22e8]
000000014006dd18 lea      rdi, [rip + 0x8b22e1]
000000014006dd1f cmp      rcx, rdi
000000014006dd22 je       0x14006dde1
000000014006dd28 cmp      byte ptr [rcx + 0x69], 3
000000014006dd2c jb       0x14006dde1
000000014006dd32 test     dword ptr [rcx + 0x6c], 0x800
000000014006dd39 je       0x14006dde1
000000014006dd3f mov      rcx, qword ptr [rcx + 0x58]
000000014006dd43 lea      r9, [rip + 0x58b306]
000000014006dd4a mov      edx, 0x90
000000014006dd4f lea      r8, [rip + 0x624e62]
000000014006dd56 call     0x140008874
000000014006dd5b jmp      0x14006dde1
000000014006dd60 mov      rcx, qword ptr [r13]
000000014006dd64 mov      edx, 0x200
000000014006dd69 movzx    eax, word ptr [rcx]
000000014006dd6c test     dx, ax
000000014006dd6f jne      0x14006dd78
000000014006dd71 mov      eax, 0xa
000000014006dd76 jmp      0x14006dd82
000000014006dd78 and      eax, 0x100
000000014006dd7d or       eax, edx
000000014006dd7f shr      eax, 5
000000014006dd82 mov      r9d, eax
000000014006dd85 mov      r8, r12
000000014006dd88 lea      rax, [rbp - 0x41]
000000014006dd8c add      r9, rcx
000000014006dd8f mov      qword ptr [rsp + 0x28], rax
000000014006dd94 mov      edx, 3
000000014006dd99 lea      rax, [rbp - 0x19]
000000014006dd9d mov      rcx, rdi
000000014006dda0 mov      qword ptr [rsp + 0x20], rax
000000014006dda5 call     0x1400797d4
000000014006ddaa mov      r14d, eax
000000014006ddad test     eax, eax
000000014006ddaf jne      0x14006ddda
000000014006ddb1 mov      rcx, qword ptr [rbp - 0x41]
000000014006ddb5 mov      rdx, qword ptr [rcx + 0x38]
000000014006ddb9 mov      r13, qword ptr [rdx + 0x2a0]
000000014006ddc0 mov      rcx, r13
000000014006ddc3 call     0x14016fcbc
000000014006ddc8 test     al, al
000000014006ddca jne      0x14006de55
000000014006ddd0 mov      r14d, 0xb
000000014006ddd6 mov      r13, qword ptr [rbp - 0x49]
000000014006ddda lea      rdi, [rip + 0x8b221f]
000000014006dde1 lea      rcx, [rbx + 0x52fe8]
000000014006dde8 call     0x14007a338
000000014006dded test     r14d, r14d
000000014006ddf0 jne      0x14006de0e
000000014006ddf2 movzx    eax, word ptr [r13 + 8]
000000014006ddf7 lea      edx, [r14 + 7]
000000014006ddfb mov      r9, qword ptr [r13]
000000014006ddff xor      r8d, r8d
000000014006de02 mov      rcx, rbx
000000014006de05 mov      dword ptr [rsp + 0x20], eax
000000014006de09 call     0x1400aac58
000000014006de0e mov      rcx, qword ptr [rip + 0x8b21eb]
000000014006de15 cmp      rcx, rdi
000000014006de18 je       0x14006de4d
000000014006de1a cmp      byte ptr [rcx + 0x69], 4
000000014006de1e jb       0x14006de4d
000000014006de20 test     dword ptr [rcx + 0x6c], 0x800
000000014006de27 je       0x14006de4d
000000014006de29 mov      eax, dword ptr [rbx + 0x38]
000000014006de2c lea      r8, [rip + 0x624d85]
000000014006de33 movzx    r9d, byte ptr [rbx + 0x481d8]
000000014006de3b mov      edx, 0xa1
000000014006de40 mov      rcx, qword ptr [rcx + 0x58]
000000014006de44 mov      dword ptr [rsp + 0x20], eax
000000014006de48 call     0x140001bec
000000014006de4d mov      eax, r14d
000000014006de50 jmp      0x14006e64b
000000014006de55 mov      r8, qword ptr [r13 + 0x18]
000000014006de59 mov      edi, 1
000000014006de5e mov      r9, r13
000000014006de61 mov      byte ptr [rsp + 0x20], dil
000000014006de66 mov      rdx, r12
000000014006de69 mov      rcx, rbx
000000014006de6c call     0x140069c00
000000014006de71 xor      edx, edx
000000014006de73 mov      rsi, rax
000000014006de76 test     rax, rax
000000014006de79 jne      0x14006dec1
000000014006de7b mov      rcx, qword ptr [rip + 0x8b217e]
000000014006de82 lea      rdi, [rip + 0x8b2177]
000000014006de89 cmp      rcx, rdi
000000014006de8c je       0x14006deb2
000000014006de8e cmp      byte ptr [rcx + 0x69], 3
000000014006de92 jb       0x14006deb2
000000014006de94 test     dword ptr [rcx + 0x6c], 0x800
000000014006de9b je       0x14006deb2
000000014006de9d mov      rcx, qword ptr [rcx + 0x58]
000000014006dea1 lea      r8, [rip + 0x624d10]
000000014006dea8 mov      edx, 0x91
000000014006dead call     0x140001b88
000000014006deb2 mov      r13, qword ptr [rbp - 0x49]
000000014006deb6 mov      r14d, 0xe
000000014006debc jmp      0x14006dde1
000000014006dec1 cmp      dword ptr [rbx + 0x24], 2
000000014006dec5 jne      0x14006df37
000000014006dec7 mov      rcx, qword ptr [rip + 0x8b2132]
000000014006dece lea      rax, [rip + 0x8b212b]
000000014006ded5 cmp      rcx, rax
000000014006ded8 je       0x14006defe
000000014006deda cmp      byte ptr [rcx + 0x69], 3
000000014006dede jb       0x14006defe
000000014006dee0 test     dword ptr [rcx + 0x6c], 0x800
000000014006dee7 je       0x14006defe
000000014006dee9 mov      rcx, qword ptr [rcx + 0x58]
000000014006deed lea      r8, [rip + 0x624cc4]
000000014006def4 mov      edx, 0x92
000000014006def9 call     0x140001b88
000000014006defe mov      rcx, qword ptr [rbx + 0x52e70]
000000014006df05 mov      r9, rsi
000000014006df08 mov      r8d, edi
000000014006df0b mov      dword ptr [rsp + 0x20], 0x8e8
000000014006df13 mov      edx, 0x4004000b
000000014006df18 call     0x1405c129c
000000014006df1d mov      byte ptr [rsi + 0x89b], 0xb
000000014006df24 mov      byte ptr [rbx + 0x481d8], 0xb
000000014006df2b lea      r8, [rip + 0x8b20ce]
000000014006df32 jmp      0x14006e374
000000014006df37 mov      rax, qword ptr [rbx + 0x52e70]
000000014006df3e mov      ecx, dword ptr [rax + 0x53e9a0]
000000014006df44 and      ecx, 7
000000014006df47 cmp      cl, 3
000000014006df4a je       0x14006df9e
000000014006df4c mov      r9d, dword ptr [rbx + 0x38]
000000014006df50 cmp      r9d, 0x10
000000014006df54 jle      0x14006df9e
000000014006df56 mov      rcx, qword ptr [rip + 0x8b20a3]
000000014006df5d lea      rdi, [rip + 0x8b209c]
000000014006df64 cmp      rcx, rdi
000000014006df67 je       0x14006deb2
000000014006df6d cmp      byte ptr [rcx + 0x69], 3
000000014006df71 jb       0x14006deb2
000000014006df77 test     dword ptr [rcx + 0x6c], 0x800
000000014006df7e je       0x14006deb2
000000014006df84 mov      edx, 0x93
000000014006df89 mov      rcx, qword ptr [rcx + 0x58]
000000014006df8d lea      r8, [rip + 0x624c24]
000000014006df94 call     0x140001bb0
000000014006df99 jmp      0x14006deb2
000000014006df9e cmp      qword ptr [r13 + 0x90], rdx
000000014006dfa5 je       0x14006dfe0
000000014006dfa7 mov      rcx, qword ptr [rip + 0x8b2052]
000000014006dfae lea      rdi, [rip + 0x8b204b]
000000014006dfb5 cmp      rcx, rdi
000000014006dfb8 je       0x14006deb2
000000014006dfbe cmp      byte ptr [rcx + 0x69], 3
000000014006dfc2 jb       0x14006deb2
000000014006dfc8 test     dword ptr [rcx + 0x6c], 0x800
000000014006dfcf je       0x14006deb2
000000014006dfd5 mov      r9d, dword ptr [rbx + 0x38]
000000014006dfd9 mov      edx, 0x94
000000014006dfde jmp      0x14006df89
000000014006dfe0 lea      rcx, [rbx + 0x478f0]
000000014006dfe7 mov      r8d, 0x8e8
000000014006dfed mov      rdx, rsi
000000014006dff0 call     0x1400311e8
000000014006dff5 mov      rcx, rbx
000000014006dff8 call     0x140067180
000000014006dffd test     al, al
000000014006dfff je       0x14006e06a
000000014006e001 lea      rdx, [r13 + 6]
000000014006e005 mov      r8d, 6
000000014006e00b lea      rcx, [rbx + 0x47906]
000000014006e012 call     0x14003113c
000000014006e017 test     eax, eax
000000014006e019 je       0x14006e06a
000000014006e01b mov      byte ptr [rsi + 0x89b], 5
000000014006e022 mov      rcx, qword ptr [rip + 0x8b1fd7]
000000014006e029 lea      r8, [rip + 0x8b1fd0]
000000014006e030 cmp      rcx, r8
000000014006e033 je       0x14006e374
000000014006e039 cmp      byte ptr [rcx + 0x69], 3
000000014006e03d jb       0x14006e374
000000014006e043 test     dword ptr [rcx + 0x6c], 0x800
000000014006e04a je       0x14006e374
000000014006e050 mov      rcx, qword ptr [rcx + 0x58]
000000014006e054 lea      r8, [rip + 0x624b5d]
000000014006e05b mov      edx, 0x95
000000014006e060 call     0x140001b88
000000014006e065 jmp      0x14006df2b
000000014006e06a cmp      byte ptr [rbx + 0x478e4], 0
000000014006e071 mov      dword ptr [rbx + 0x38], 0x21
000000014006e078 jne      0x14006e083
000000014006e07a cmp      byte ptr [rbx + 0x139cf1], dil
000000014006e081 jne      0x14006e0ad
000000014006e083 lea      rcx, [rbx + 0x52fe8]
000000014006e08a call     0x14007a338
000000014006e08f mov      rcx, rbx
000000014006e092 call     0x14006a320
000000014006e097 lea      rcx, [rbx + 0x52fe8]
000000014006e09e call     0x1400797c4
000000014006e0a3 xor      edx, edx
000000014006e0a5 mov      rcx, rbx
000000014006e0a8 call     0x14006278c
000000014006e0ad mov      dl, byte ptr [rsi + 0x88b]
000000014006e0b3 mov      cl, byte ptr [rbx + 0x56]
000000014006e0b6 call     0x140171df0
000000014006e0bb test     eax, eax
000000014006e0bd je       0x14006e115
000000014006e0bf mov      rcx, qword ptr [rip + 0x8b1f3a]
000000014006e0c6 lea      rax, [rip + 0x8b1f33]
000000014006e0cd cmp      rcx, rax
000000014006e0d0 je       0x14006e0f6
000000014006e0d2 cmp      byte ptr [rcx + 0x69], 4
000000014006e0d6 jb       0x14006e0f6
000000014006e0d8 test     dword ptr [rcx + 0x6c], 0x800
000000014006e0df je       0x14006e0f6
000000014006e0e1 mov      rcx, qword ptr [rcx + 0x58]
000000014006e0e5 lea      r8, [rip + 0x624acc]
000000014006e0ec mov      edx, 0x96
000000014006e0f1 call     0x140001b88
000000014006e0f6 lea      r8, [rbx + 0x52d84]
000000014006e0fd mov      byte ptr [rbx + 0x481db], dil
000000014006e104 lea      rdx, [rbx + 0x52d85]
000000014006e10b mov      rcx, rbx
000000014006e10e call     0x1400620b4
000000014006e113 jmp      0x14006e153
000000014006e115 mov      rcx, qword ptr [rip + 0x8b1ee4]
000000014006e11c lea      rax, [rip + 0x8b1edd]
000000014006e123 cmp      rcx, rax
000000014006e126 je       0x14006e14c
000000014006e128 cmp      byte ptr [rcx + 0x69], 4
000000014006e12c jb       0x14006e14c
000000014006e12e test     dword ptr [rcx + 0x6c], 0x800
000000014006e135 je       0x14006e14c
000000014006e137 mov      rcx, qword ptr [rcx + 0x58]
000000014006e13b lea      r8, [rip + 0x624a76]
000000014006e142 mov      edx, 0x97
000000014006e147 call     0x140001b88
000000014006e14c mov      byte ptr [rbx + 0x481db], 0
000000014006e153 mov      eax, dword ptr [r15 + 0x53e9a0]
000000014006e15a and      eax, 7
000000014006e15d cmp      al, 2
000000014006e15f jne      0x14006e24a
000000014006e165 movzx    edx, word ptr [r13 + 0x2f0]
000000014006e16d movzx    ecx, word ptr [rbx + 0x4cc]
000000014006e174 call     0x14006200c
000000014006e179 test     al, al
000000014006e17b jne      0x14006e24a
000000014006e181 mov      rcx, qword ptr [rip + 0x8b1e78]
000000014006e188 lea      r8, [rip + 0x8b1e71]
000000014006e18f cmp      rcx, r8
000000014006e192 je       0x14006e1bf
000000014006e194 cmp      byte ptr [rcx + 0x69], 4
000000014006e198 jb       0x14006e1bf
000000014006e19a test     dword ptr [rcx + 0x6c], 0x800
000000014006e1a1 je       0x14006e1bf
000000014006e1a3 mov      rcx, qword ptr [rcx + 0x58]
000000014006e1a7 lea      r8, [rip + 0x624a0a]
000000014006e1ae mov      edx, 0x99
000000014006e1b3 call     0x140001b88
000000014006e1b8 lea      r8, [rip + 0x8b1e41]
000000014006e1bf mov      byte ptr [rsi + 0x89b], dil
000000014006e1c6 mov      ecx, 0xfffa
000000014006e1cb mov      byte ptr [rbx + 0x481d8], dil
000000014006e1d2 movzx    eax, word ptr [r13 + 0x2f0]
000000014006e1da test     cx, ax
000000014006e1dd jne      0x14006e374
000000014006e1e3 cmp      ax, di
000000014006e1e6 je       0x14006e374
000000014006e1ec mov      rcx, qword ptr [rip + 0x8b1e0d]
000000014006e1f3 cmp      rcx, r8
000000014006e1f6 je       0x14006e21c
000000014006e1f8 cmp      byte ptr [rcx + 0x69], 4
000000014006e1fc jb       0x14006e21c
000000014006e1fe test     dword ptr [rcx + 0x6c], 0x800
000000014006e205 je       0x14006e21c
000000014006e207 mov      rcx, qword ptr [rcx + 0x58]
000000014006e20b lea      r8, [rip + 0x6249a6]
000000014006e212 mov      edx, 0x9a
000000014006e217 call     0x140001b88
000000014006e21c mov      byte ptr [rbx + 0x481ec], dil
000000014006e223 lea      rcx, [rbx + 0x481ed]
000000014006e22a mov      rdx, qword ptr [r13 + 0x18]
000000014006e22e mov      r8d, 6
000000014006e234 call     0x1400311e8
000000014006e239 call     0x140031188
000000014006e23e mov      qword ptr [rbx + 0x481f8], rax
000000014006e245 jmp      0x14006df2b
000000014006e24a cmp      byte ptr [rbx + 0x481db], 0
000000014006e251 je       0x14006e34c
000000014006e257 mov      rax, qword ptr [rbp - 0x41]
000000014006e25b lea      rcx, [rbx + 0x2a3]
000000014006e262 mov      rdx, qword ptr [rax + 0xd0]
000000014006e269 lea      r8, [rdx + 0x1b9]
000000014006e270 call     0x14017759c
000000014006e275 mov      rax, qword ptr [rbp - 0x41]
000000014006e279 mov      rcx, qword ptr [rbx + 0x52e70]
000000014006e280 mov      rdx, qword ptr [rax + 0xd0]
000000014006e287 cmp      byte ptr [rdx + 0x371], 0
000000014006e28e je       0x14006e2ec
000000014006e290 add      rdx, 0x1b9
000000014006e297 call     0x140074054
000000014006e29c test     al, al
000000014006e29e jne      0x14006e34c
000000014006e2a4 mov      rcx, qword ptr [rip + 0x8b1d55]
000000014006e2ab lea      r8, [rip + 0x8b1d4e]
000000014006e2b2 cmp      rcx, r8
000000014006e2b5 je       0x14006e4bc
000000014006e2bb cmp      byte ptr [rcx + 0x69], 3
000000014006e2bf jb       0x14006e4bc
000000014006e2c5 test     dword ptr [rcx + 0x6c], 0x800
000000014006e2cc je       0x14006e4bc
000000014006e2d2 mov      rcx, qword ptr [rcx + 0x58]
000000014006e2d6 lea      r8, [rip + 0x6248db]
000000014006e2dd mov      edx, 0x9b
000000014006e2e2 call     0x140001b88
000000014006e2e7 jmp      0x14006e4b5
000000014006e2ec mov      rcx, qword ptr [rcx + 0xaf3b8]
000000014006e2f3 mov      rcx, qword ptr [rcx]
000000014006e2f6 call     0x140096f30
000000014006e2fb cmp      eax, edi
000000014006e2fd jne      0x14006e41c
000000014006e303 mov      rcx, qword ptr [rip + 0x8b1cf6]
000000014006e30a lea      r8, [rip + 0x8b1cef]
000000014006e311 cmp      rcx, r8
000000014006e314 je       0x14006e353
000000014006e316 cmp      byte ptr [rcx + 0x69], 4
000000014006e31a jb       0x14006e353
000000014006e31c test     dword ptr [rcx + 0x6c], 0x800
000000014006e323 je       0x14006e353
000000014006e325 mov      eax, dword ptr [rbx + 0x28c]
000000014006e32b lea      r8, [rip + 0x624886]
000000014006e332 movzx    r9d, byte ptr [rbx + 0x290]
000000014006e33a mov      edx, 0x9c
000000014006e33f mov      rcx, qword ptr [rcx + 0x58]
000000014006e343 mov      dword ptr [rsp + 0x20], eax
000000014006e347 call     0x140001bec
000000014006e34c lea      r8, [rip + 0x8b1cad]
000000014006e353 mov      byte ptr [rsi + 0x89b], 0
000000014006e35a mov      byte ptr [rbx + 0x481d8], 0
000000014006e361 mov      al, byte ptr [rsi + 0x88e]
000000014006e367 mov      byte ptr [rbx + 0x481d9], al
000000014006e36d mov      byte ptr [rbx + 0x481da], 0x20
000000014006e374 cmp      dword ptr [r15 + 0xbbd28], 0
000000014006e37c jne      0x14006e388
000000014006e37e cmp      dword ptr [r15 + 0xb0500], 0x13
000000014006e386 je       0x14006e3ba
000000014006e388 mov      rax, qword ptr [r15 + 0xaf3b8]
000000014006e38f mov      rcx, qword ptr [rax]
000000014006e392 test     byte ptr [rcx + 0x8b058], 2
000000014006e399 jne      0x14006e609
000000014006e39f cmp      byte ptr [r15 + 0xb0968], 0
000000014006e3a7 jne      0x14006e609
000000014006e3ad mov      edx, 3
000000014006e3b2 mov      rcx, r15
000000014006e3b5 call     0x140097218
000000014006e3ba cmp      byte ptr [rsi + 0x89b], 0
000000014006e3c1 jne      0x14006e3d2
000000014006e3c3 mov      r8, qword ptr [rbp - 0x49]
000000014006e3c7 mov      rdx, r12
000000014006e3ca mov      rcx, r15
000000014006e3cd call     0x140114958
000000014006e3d2 xor      r12d, r12d
000000014006e3d5 cmp      byte ptr [rsi + 0x89b], r12b
000000014006e3dc je       0x14006e4cf
000000014006e3e2 lea      rcx, [r13 + 0x50]
000000014006e3e6 call     0x14005df94
000000014006e3eb test     ax, ax
000000014006e3ee je       0x14006e4cf
000000014006e3f4 movzx    edx, byte ptr [rbx + 0x481d8]
000000014006e3fb lea      r9, [rbx + 0x478f0]
000000014006e402 mov      r8b, byte ptr [rbx + 0x481db]
000000014006e409 mov      rcx, rbx
000000014006e40c mov      dword ptr [rbx + 0x481e8], edx
000000014006e412 call     0x14006576c
000000014006e417 jmp      0x14006e4f8
000000014006e41c mov      rcx, qword ptr [rip + 0x8b1bdd]
000000014006e423 lea      r8, [rip + 0x8b1bd6]
000000014006e42a cmp      rcx, r8
000000014006e42d je       0x14006e45a
000000014006e42f cmp      byte ptr [rcx + 0x69], 3
000000014006e433 jb       0x14006e45a
000000014006e435 test     dword ptr [rcx + 0x6c], 0x800
000000014006e43c je       0x14006e45a
000000014006e43e mov      rcx, qword ptr [rcx + 0x58]
000000014006e442 lea      r8, [rip + 0x62476f]
000000014006e449 mov      edx, 0x9d
000000014006e44e call     0x140001b88
000000014006e453 lea      r8, [rip + 0x8b1ba6]
000000014006e45a lea      rdx, [rsi + 0x90]
000000014006e461 test     rdx, rdx
000000014006e464 je       0x14006e4bc
000000014006e466 mov      rcx, qword ptr [rip + 0x8b1b93]
000000014006e46d cmp      rcx, r8
000000014006e470 je       0x14006e4bc
000000014006e472 cmp      byte ptr [rcx + 0x69], 3
000000014006e476 jb       0x14006e4bc
000000014006e478 test     dword ptr [rcx + 0x6c], 0x800
000000014006e47f je       0x14006e4bc
000000014006e481 movzx    eax, byte ptr [rsi + 0xb8]
000000014006e488 lea      r9, [rip + 0x58abd1]
000000014006e48f mov      rcx, qword ptr [rcx + 0x58]
000000014006e493 lea      r8, [rip + 0x62471e]
000000014006e49a mov      qword ptr [rbp - 0x21], rax
000000014006e49e lea      rax, [rbp - 0x29]
000000014006e4a2 mov      qword ptr [rbp - 0x29], rdx
000000014006e4a6 mov      edx, 0x9e
000000014006e4ab mov      qword ptr [rsp + 0x20], rax
000000014006e4b0 call     0x140001c88
000000014006e4b5 lea      r8, [rip + 0x8b1b44]
000000014006e4bc mov      byte ptr [rsi + 0x89b], 7
000000014006e4c3 mov      byte ptr [rbx + 0x481d8], 7
000000014006e4ca jmp      0x14006e374
000000014006e4cf mov      eax, dword ptr [r15 + 0x53e9a0]
000000014006e4d6 and      eax, 7
000000014006e4d9 cmp      al, 3
000000014006e4db je       0x14006e4f8
000000014006e4dd mov      rax, qword ptr [r15 + 0xaf3b8]
000000014006e4e4 mov      edx, 0x7d0
000000014006e4e9 mov      rcx, qword ptr [rax]
000000014006e4ec mov      rcx, qword ptr [rcx + 0x113730]
000000014006e4f3 call     0x140080d54
000000014006e4f8 mov      rax, qword ptr [rbx + 0x52e70]
000000014006e4ff mov      ecx, dword ptr [rax + 0x53e9a0]
000000014006e505 and      ecx, 7
000000014006e508 cmp      cl, 3
000000014006e50b jne      0x14006e519
000000014006e50d mov      dword ptr [rbx + 0x38], 0x22
000000014006e514 jmp      0x14006ddd6
000000014006e519 mov      al, byte ptr [rbx + 0x481d8]
000000014006e51f lea      rdx, [rsi + 0x16]
000000014006e523 mov      byte ptr [rbx + 0x4820e], al
000000014006e529 mov      rcx, rbx
000000014006e52c mov      r8b, byte ptr [rsi + 0x88e]
000000014006e533 call     0x140172f24
000000014006e538 mov      rcx, qword ptr [rip + 0x8b1ac1]
000000014006e53f lea      rax, [rip + 0x8b1aba]
000000014006e546 cmp      rcx, rax
000000014006e549 je       0x14006e58d
000000014006e54b cmp      byte ptr [rcx + 0x69], 4
000000014006e54f jb       0x14006e58d
000000014006e551 test     dword ptr [rcx + 0x6c], 0x800
000000014006e558 je       0x14006e58d
000000014006e55a movzx    r8d, byte ptr [rbx + 0x56]
000000014006e55f mov      edx, 0xa0
000000014006e564 movzx    r9d, byte ptr [rbx + 0x481d8]
000000014006e56c mov      eax, r8d
000000014006e56f mov      rcx, qword ptr [rcx + 0x58]
000000014006e573 and      eax, edi
000000014006e575 shr      r8d, 1
000000014006e578 mov      dword ptr [rsp + 0x28], eax
000000014006e57c mov      dword ptr [rsp + 0x20], r8d
000000014006e581 lea      r8, [rip + 0x624630]
000000014006e588 call     0x140001c34
000000014006e58d xor      esi, esi
000000014006e58f cmp      byte ptr [rbx + 0x481d8], sil
000000014006e596 jne      0x14006e5a1
000000014006e598 mov      dword ptr [rbx + 0x38], 0x22
000000014006e59f jmp      0x14006e5c4
000000014006e5a1 lea      rcx, [r13 + 0x50]
000000014006e5a5 call     0x14005df94
000000014006e5aa test     ax, ax
000000014006e5ad jne      0x14006e5b7
000000014006e5af mov      eax, dword ptr [rbp - 0x39]
000000014006e5b2 mov      dword ptr [rbx + 0x38], eax
000000014006e5b5 jmp      0x14006e5c4
000000014006e5b7 cmp      dword ptr [rbx + 0x24], 2
000000014006e5bb je       0x14006e5c4
000000014006e5bd mov      dword ptr [rbx + 0x38], 0x25
000000014006e5c4 cmp      byte ptr [rbx + 0x478e4], sil
000000014006e5cb jne      0x14006e5da
000000014006e5cd cmp      byte ptr [rbx + 0x139cf1], dil
000000014006e5d4 jne      0x14006ddd6
000000014006e5da lea      rcx, [rbx + 0x52fe8]
000000014006e5e1 call     0x14007a338
000000014006e5e6 mov      rcx, rbx
000000014006e5e9 call     0x14006a320
000000014006e5ee lea      rcx, [rbx + 0x52fe8]
000000014006e5f5 call     0x1400797c4
000000014006e5fa xor      edx, edx
000000014006e5fc mov      rcx, rbx
000000014006e5ff call     0x14006278c
000000014006e604 jmp      0x14006ddd6
000000014006e609 mov      rcx, qword ptr [rip + 0x8b19f0]
000000014006e610 cmp      rcx, r8
000000014006e613 je       0x14006e639
000000014006e615 cmp      byte ptr [rcx + 0x29], 4
000000014006e619 jb       0x14006e639
000000014006e61b test     dword ptr [rcx + 0x2c], 0x100
000000014006e622 je       0x14006e639
000000014006e624 mov      rcx, qword ptr [rcx + 0x18]
000000014006e628 lea      r8, [rip + 0x624589]
000000014006e62f mov      edx, 0x9f
000000014006e634 call     0x140001b88
000000014006e639 lea      rcx, [rbx + 0x52fe8]
000000014006e640 call     0x14007a338
000000014006e645 mov      eax, edi
000000014006e647 jmp      0x14006e64b
000000014006e649 xor      eax, eax
000000014006e64b mov      rcx, qword ptr [rbp + 7]
000000014006e64f xor      rcx, rsp
000000014006e652 call     0x1405f45b0
000000014006e657 add      rsp, 0x98
000000014006e65e pop      r15
000000014006e660 pop      r14
000000014006e662 pop      r13
000000014006e664 pop      r12
000000014006e666 pop      rdi
000000014006e667 pop      rsi
000000014006e668 pop      rbx
000000014006e669 pop      rbp
000000014006e66a ret      