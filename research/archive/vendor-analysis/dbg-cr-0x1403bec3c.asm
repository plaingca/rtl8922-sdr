00000001403bec3c push     rbp
00000001403bec3e push     rbx
00000001403bec3f push     rsi
00000001403bec40 push     rdi
00000001403bec41 push     r12
00000001403bec43 push     r13
00000001403bec45 push     r14
00000001403bec47 push     r15
00000001403bec49 lea      rbp, [rsp - 0x17]
00000001403bec4e sub      rsp, 0xf8
00000001403bec55 mov      rax, qword ptr [rip + 0x568804]
00000001403bec5c xor      rax, rsp
00000001403bec5f mov      qword ptr [rbp - 1], rax
00000001403bec63 mov      r12, qword ptr [rcx + 0x9a0]
00000001403bec6a lea      rbx, [rdx + 0x20]
00000001403bec6e mov      r14, qword ptr [rbp + 0x7f]
00000001403bec72 xor      eax, eax
00000001403bec74 xor      edi, edi
00000001403bec76 mov      qword ptr [rsp + 0x48], r9
00000001403bec7b xorps    xmm0, xmm0
00000001403bec7e mov      qword ptr [rsp + 0x50], r14
00000001403bec83 add      r12, 0x1890
00000001403bec8a mov      qword ptr [rbp - 0x69], rax
00000001403bec8e cmp      byte ptr [rbx], 0x2d
00000001403bec91 mov      rsi, r9
00000001403bec94 mov      r15, r8
00000001403bec97 mov      dword ptr [rsp + 0x40], edi
00000001403bec9b mov      r13, rcx
00000001403bec9e movups   xmmword ptr [rsp + 0x58], xmm0
00000001403beca3 movups   xmmword ptr [rbp - 0x79], xmm0
00000001403beca7 jne      0x1403bed4d
00000001403becad cmp      byte ptr [rbx + 1], 0x68
00000001403becb1 jne      0x1403bed4d
00000001403becb7 cmp      byte ptr [rbx + 2], al
00000001403becba jne      0x1403bed4d
00000001403becc0 mov      eax, dword ptr [r8]
00000001403becc3 mov      ecx, dword ptr [r14]
00000001403becc6 cmp      eax, ecx
00000001403becc8 jae      0x1403bece4
00000001403becca sub      ecx, eax
00000001403beccc lea      r8, [rip + 0x28cf3d]
00000001403becd3 mov      edx, ecx
00000001403becd5 lea      rcx, [r9 + rax]
00000001403becd9 call     0x140044426
00000001403becde add      dword ptr [r15], eax
00000001403bece1 mov      eax, dword ptr [r15]
00000001403bece4 mov      ecx, dword ptr [r14]
00000001403bece7 cmp      eax, ecx
00000001403bece9 jae      0x1403bed06
00000001403beceb sub      ecx, eax
00000001403beced lea      r8, [rip + 0x28cf3c]
00000001403becf4 mov      edx, ecx
00000001403becf6 mov      ecx, eax
00000001403becf8 add      rcx, rsi
00000001403becfb call     0x140044426
00000001403bed00 add      dword ptr [r15], eax
00000001403bed03 mov      eax, dword ptr [r15]
00000001403bed06 mov      ecx, dword ptr [r14]
00000001403bed09 cmp      eax, ecx
00000001403bed0b jae      0x1403bed28
00000001403bed0d sub      ecx, eax
00000001403bed0f lea      r8, [rip + 0x28cf3a]
00000001403bed16 mov      edx, ecx
00000001403bed18 mov      ecx, eax
00000001403bed1a add      rcx, rsi
00000001403bed1d call     0x140044426
00000001403bed22 add      dword ptr [r15], eax
00000001403bed25 mov      eax, dword ptr [r15]
00000001403bed28 mov      ecx, dword ptr [r14]
00000001403bed2b cmp      eax, ecx
00000001403bed2d jae      0x1403bfc83
00000001403bed33 sub      ecx, eax
00000001403bed35 lea      r8, [rip + 0x28cf34]
00000001403bed3c mov      edx, ecx
00000001403bed3e mov      ecx, eax
00000001403bed40 add      rcx, rsi
00000001403bed43 call     0x140044426
00000001403bed48 jmp      0x1403bfc80
00000001403bed4d lea      rdx, [rip + 0x27001c]
00000001403bed54 mov      rcx, rbx
00000001403bed57 call     0x140044360
00000001403bed5c test     eax, eax
00000001403bed5e jne      0x1403bf476
00000001403bed64 cmp      byte ptr [r13 + 0x1416], dil
00000001403bed6b jbe      0x1403bfc83
00000001403bed71 mov      eax, dword ptr [r15]
00000001403bed74 mov      ecx, dword ptr [r14]
00000001403bed77 cmp      eax, ecx
00000001403bed79 jae      0x1403bed9d
00000001403bed7b sub      ecx, eax
00000001403bed7d movzx    r9d, dil
00000001403bed81 mov      edx, ecx
00000001403bed83 lea      r8, [rip + 0x28cf06]
00000001403bed8a lea      rcx, [rsi + rax]
00000001403bed8e add      r9d, 0x41
00000001403bed92 call     0x140044426
00000001403bed97 add      dword ptr [r15], eax
00000001403bed9a mov      eax, dword ptr [r15]
00000001403bed9d mov      ecx, dword ptr [r14]
00000001403beda0 cmp      eax, ecx
00000001403beda2 jae      0x1403bedbc
00000001403beda4 sub      ecx, eax
00000001403beda6 lea      r8, [rip + 0x28cef3]
00000001403bedad mov      edx, ecx
00000001403bedaf mov      ecx, eax
00000001403bedb1 add      rcx, rsi
00000001403bedb4 call     0x140044426
00000001403bedb9 add      dword ptr [r15], eax
00000001403bedbc movzx    ebx, dil
00000001403bedc0 mov      rcx, r13
00000001403bedc3 mov      r8d, dword ptr [r12 + rbx*4 + 0x110]
00000001403bedcb mov      edx, dword ptr [r12 + rbx*4 + 0x108]
00000001403bedd3 call     0x140315a88
00000001403bedd8 mov      dword ptr [rsp + 0x5c], eax
00000001403beddc mov      rcx, r13
00000001403beddf mov      r8d, dword ptr [r12 + rbx*4 + 0x150]
00000001403bede7 mov      edx, dword ptr [r12 + rbx*4 + 0x148]
00000001403bedef call     0x140315a88
00000001403bedf4 mov      dword ptr [rsp + 0x60], eax
00000001403bedf8 mov      rcx, r13
00000001403bedfb mov      r8d, dword ptr [r12 + rbx*4 + 0x160]
00000001403bee03 mov      edx, dword ptr [r12 + rbx*4 + 0x158]
00000001403bee0b call     0x140315a88
00000001403bee10 mov      dword ptr [rbp - 0x7d], eax
00000001403bee13 mov      rcx, r13
00000001403bee16 mov      r8d, dword ptr [r12 + rbx*4 + 0x120]
00000001403bee1e mov      edx, dword ptr [r12 + rbx*4 + 0x118]
00000001403bee26 call     0x140315a88
00000001403bee2b mov      dword ptr [rbp - 0x79], eax
00000001403bee2e mov      rcx, r13
00000001403bee31 mov      r8d, dword ptr [r12 + rbx*4 + 0x130]
00000001403bee39 mov      edx, dword ptr [r12 + rbx*4 + 0x128]
00000001403bee41 call     0x140315a88
00000001403bee46 mov      dword ptr [rbp - 0x75], eax
00000001403bee49 mov      rcx, r13
00000001403bee4c mov      r8d, dword ptr [r12 + rbx*4 + 0x140]
00000001403bee54 mov      edx, dword ptr [r12 + rbx*4 + 0x138]
00000001403bee5c call     0x140315a88
00000001403bee61 mov      ecx, dword ptr [r15]
00000001403bee64 mov      r8d, eax
00000001403bee67 mov      edx, dword ptr [r14]
00000001403bee6a mov      dword ptr [rbp - 0x71], eax
00000001403bee6d cmp      ecx, edx
00000001403bee6f jae      0x1403beea0
00000001403bee71 mov      eax, dword ptr [rbp - 0x7d]
00000001403bee74 lea      r8, [rip + 0x28ce45]
00000001403bee7b mov      r9d, dword ptr [rsp + 0x5c]
00000001403bee80 sub      edx, ecx
00000001403bee82 mov      dword ptr [rsp + 0x28], eax
00000001403bee86 add      rcx, rsi
00000001403bee89 mov      eax, dword ptr [rsp + 0x60]
00000001403bee8d mov      dword ptr [rsp + 0x20], eax
00000001403bee91 call     0x140044426
00000001403bee96 add      dword ptr [r15], eax
00000001403bee99 mov      ecx, dword ptr [r15]
00000001403bee9c mov      r8d, dword ptr [rbp - 0x71]
00000001403beea0 mov      eax, dword ptr [r14]
00000001403beea3 cmp      ecx, eax
00000001403beea5 jae      0x1403beed0
00000001403beea7 mov      r9d, dword ptr [rbp - 0x79]
00000001403beeab sub      eax, ecx
00000001403beead mov      dword ptr [rsp + 0x28], r8d
00000001403beeb2 add      rcx, rsi
00000001403beeb5 mov      edx, eax
00000001403beeb7 lea      r8, [rip + 0x28ce42]
00000001403beebe mov      eax, dword ptr [rbp - 0x75]
00000001403beec1 mov      dword ptr [rsp + 0x20], eax
00000001403beec5 call     0x140044426
00000001403beeca add      dword ptr [r15], eax
00000001403beecd mov      ecx, dword ptr [r15]
00000001403beed0 mov      eax, dword ptr [r14]
00000001403beed3 cmp      ecx, eax
00000001403beed5 jae      0x1403beeed
00000001403beed7 sub      eax, ecx
00000001403beed9 lea      r8, [rip + 0x28ce60]
00000001403beee0 mov      edx, eax
00000001403beee2 add      rcx, rsi
00000001403beee5 call     0x140044426
00000001403beeea add      dword ptr [r15], eax
00000001403beeed mov      r8d, dword ptr [r12 + rbx*4 + 0x170]
00000001403beef5 mov      rcx, r13
00000001403beef8 mov      edx, dword ptr [r12 + rbx*4 + 0x168]
00000001403bef00 call     0x140315a88
00000001403bef05 mov      dword ptr [rsp + 0x5c], eax
00000001403bef09 mov      rcx, r13
00000001403bef0c mov      r8d, dword ptr [r12 + rbx*4 + 0x180]
00000001403bef14 mov      edx, dword ptr [r12 + rbx*4 + 0x178]
00000001403bef1c call     0x140315a88
00000001403bef21 mov      dword ptr [rsp + 0x60], eax
00000001403bef25 mov      rcx, r13
00000001403bef28 mov      r8d, dword ptr [r12 + rbx*4 + 0x190]
00000001403bef30 mov      edx, dword ptr [r12 + rbx*4 + 0x188]
00000001403bef38 call     0x140315a88
00000001403bef3d mov      dword ptr [rbp - 0x7d], eax
00000001403bef40 mov      rcx, r13
00000001403bef43 mov      r8d, dword ptr [r12 + rbx*4 + 0x1b0]
00000001403bef4b mov      edx, dword ptr [r12 + rbx*4 + 0x1a8]
00000001403bef53 call     0x140315a88
00000001403bef58 mov      dword ptr [rbp - 0x79], eax
00000001403bef5b mov      rcx, r13
00000001403bef5e mov      r8d, dword ptr [r12 + rbx*4 + 0x1a0]
00000001403bef66 mov      edx, dword ptr [r12 + rbx*4 + 0x198]
00000001403bef6e call     0x140315a88
00000001403bef73 mov      r8d, dword ptr [r15]
00000001403bef76 mov      ecx, dword ptr [r14]
00000001403bef79 mov      dword ptr [rbp - 0x75], eax
00000001403bef7c cmp      r8d, ecx
00000001403bef7f jae      0x1403befb8
00000001403bef81 mov      r9d, dword ptr [rsp + 0x5c]
00000001403bef86 sub      ecx, r8d
00000001403bef89 mov      dword ptr [rsp + 0x38], eax
00000001403bef8d mov      eax, dword ptr [rbp - 0x79]
00000001403bef90 mov      dword ptr [rsp + 0x30], eax
00000001403bef94 mov      eax, dword ptr [rbp - 0x7d]
00000001403bef97 mov      dword ptr [rsp + 0x28], eax
00000001403bef9b mov      eax, dword ptr [rsp + 0x60]
00000001403bef9f mov      edx, ecx
00000001403befa1 lea      rcx, [rsi + r8]
00000001403befa5 lea      r8, [rip + 0x28cdb4]
00000001403befac mov      dword ptr [rsp + 0x20], eax
00000001403befb0 call     0x140044426
00000001403befb5 add      dword ptr [r15], eax
00000001403befb8 mov      r8d, dword ptr [r12 + rbx*4 + 0x1c0]
00000001403befc0 mov      rcx, r13
00000001403befc3 mov      edx, dword ptr [r12 + rbx*4 + 0x1b8]
00000001403befcb call     0x140315a88
00000001403befd0 mov      dword ptr [rsp + 0x5c], eax
00000001403befd4 mov      rcx, r13
00000001403befd7 mov      r8d, dword ptr [r12 + rbx*4 + 0x1d0]
00000001403befdf mov      edx, dword ptr [r12 + rbx*4 + 0x1c8]
00000001403befe7 call     0x140315a88
00000001403befec mov      dword ptr [rsp + 0x60], eax
00000001403beff0 mov      rcx, r13
00000001403beff3 mov      r8d, dword ptr [r12 + rbx*4 + 0x1e0]
00000001403beffb mov      edx, dword ptr [r12 + rbx*4 + 0x1d8]
00000001403bf003 call     0x140315a88
00000001403bf008 mov      dword ptr [rbp - 0x7d], eax
00000001403bf00b mov      rcx, r13
00000001403bf00e mov      r8d, dword ptr [r12 + rbx*4 + 0x200]
00000001403bf016 mov      edx, dword ptr [r12 + rbx*4 + 0x1f8]
00000001403bf01e call     0x140315a88
00000001403bf023 mov      dword ptr [rbp - 0x79], eax
00000001403bf026 mov      rcx, r13
00000001403bf029 mov      r8d, dword ptr [r12 + rbx*4 + 0x1f0]
00000001403bf031 mov      edx, dword ptr [r12 + rbx*4 + 0x1e8]
00000001403bf039 call     0x140315a88
00000001403bf03e mov      r8d, dword ptr [r15]
00000001403bf041 mov      ecx, dword ptr [r14]
00000001403bf044 mov      dword ptr [rbp - 0x75], eax
00000001403bf047 cmp      r8d, ecx
00000001403bf04a jae      0x1403bf083
00000001403bf04c mov      r9d, dword ptr [rsp + 0x5c]
00000001403bf051 sub      ecx, r8d
00000001403bf054 mov      dword ptr [rsp + 0x38], eax
00000001403bf058 mov      eax, dword ptr [rbp - 0x79]
00000001403bf05b mov      dword ptr [rsp + 0x30], eax
00000001403bf05f mov      eax, dword ptr [rbp - 0x7d]
00000001403bf062 mov      dword ptr [rsp + 0x28], eax
00000001403bf066 mov      eax, dword ptr [rsp + 0x60]
00000001403bf06a mov      edx, ecx
00000001403bf06c lea      rcx, [rsi + r8]
00000001403bf070 lea      r8, [rip + 0x28cd29]
00000001403bf077 mov      dword ptr [rsp + 0x20], eax
00000001403bf07b call     0x140044426
00000001403bf080 add      dword ptr [r15], eax
00000001403bf083 mov      r8d, dword ptr [r12 + rbx*4 + 0x210]
00000001403bf08b mov      rcx, r13
00000001403bf08e mov      edx, dword ptr [r12 + rbx*4 + 0x208]
00000001403bf096 call     0x140315a88
00000001403bf09b mov      dword ptr [rsp + 0x5c], eax
00000001403bf09f mov      rcx, r13
00000001403bf0a2 mov      r8d, dword ptr [r12 + rbx*4 + 0x220]
00000001403bf0aa mov      edx, dword ptr [r12 + rbx*4 + 0x218]
00000001403bf0b2 call     0x140315a88
00000001403bf0b7 mov      dword ptr [rsp + 0x60], eax
00000001403bf0bb mov      rcx, r13
00000001403bf0be mov      r8d, dword ptr [r12 + rbx*4 + 0x230]
00000001403bf0c6 mov      edx, dword ptr [r12 + rbx*4 + 0x228]
00000001403bf0ce call     0x140315a88
00000001403bf0d3 mov      dword ptr [rbp - 0x7d], eax
00000001403bf0d6 mov      rcx, r13
00000001403bf0d9 mov      r8d, dword ptr [r12 + rbx*4 + 0x250]
00000001403bf0e1 mov      edx, dword ptr [r12 + rbx*4 + 0x248]
00000001403bf0e9 call     0x140315a88
00000001403bf0ee mov      dword ptr [rbp - 0x79], eax
00000001403bf0f1 mov      rcx, r13
00000001403bf0f4 mov      r8d, dword ptr [r12 + rbx*4 + 0x240]
00000001403bf0fc mov      edx, dword ptr [r12 + rbx*4 + 0x238]
00000001403bf104 call     0x140315a88
00000001403bf109 mov      r8d, dword ptr [r15]
00000001403bf10c mov      ecx, dword ptr [r14]
00000001403bf10f mov      dword ptr [rbp - 0x75], eax
00000001403bf112 cmp      r8d, ecx
00000001403bf115 jae      0x1403bf14e
00000001403bf117 mov      r9d, dword ptr [rsp + 0x5c]
00000001403bf11c sub      ecx, r8d
00000001403bf11f mov      dword ptr [rsp + 0x38], eax
00000001403bf123 mov      eax, dword ptr [rbp - 0x79]
00000001403bf126 mov      dword ptr [rsp + 0x30], eax
00000001403bf12a mov      eax, dword ptr [rbp - 0x7d]
00000001403bf12d mov      dword ptr [rsp + 0x28], eax
00000001403bf131 mov      eax, dword ptr [rsp + 0x60]
00000001403bf135 mov      edx, ecx
00000001403bf137 lea      rcx, [rsi + r8]
00000001403bf13b lea      r8, [rip + 0x28cc9e]
00000001403bf142 mov      dword ptr [rsp + 0x20], eax
00000001403bf146 call     0x140044426
00000001403bf14b add      dword ptr [r15], eax
00000001403bf14e mov      r8d, dword ptr [r12 + rbx*4 + 0x260]
00000001403bf156 mov      rcx, r13
00000001403bf159 mov      edx, dword ptr [r12 + rbx*4 + 0x258]
00000001403bf161 call     0x140315a88
00000001403bf166 mov      dword ptr [rsp + 0x5c], eax
00000001403bf16a mov      rcx, r13
00000001403bf16d mov      r8d, dword ptr [r12 + rbx*4 + 0x270]
00000001403bf175 mov      edx, dword ptr [r12 + rbx*4 + 0x268]
00000001403bf17d call     0x140315a88
00000001403bf182 mov      dword ptr [rsp + 0x60], eax
00000001403bf186 mov      rcx, r13
00000001403bf189 mov      r8d, dword ptr [r12 + rbx*4 + 0x280]
00000001403bf191 mov      edx, dword ptr [r12 + rbx*4 + 0x278]
00000001403bf199 call     0x140315a88
00000001403bf19e mov      dword ptr [rbp - 0x7d], eax
00000001403bf1a1 mov      rcx, r13
00000001403bf1a4 mov      r8d, dword ptr [r12 + rbx*4 + 0x2a0]
00000001403bf1ac mov      edx, dword ptr [r12 + rbx*4 + 0x298]
00000001403bf1b4 call     0x140315a88
00000001403bf1b9 mov      dword ptr [rbp - 0x79], eax
00000001403bf1bc mov      rcx, r13
00000001403bf1bf mov      r8d, dword ptr [r12 + rbx*4 + 0x290]
00000001403bf1c7 mov      edx, dword ptr [r12 + rbx*4 + 0x288]
00000001403bf1cf call     0x140315a88
00000001403bf1d4 mov      ecx, dword ptr [r15]
00000001403bf1d7 mov      edx, dword ptr [r14]
00000001403bf1da mov      dword ptr [rbp - 0x75], eax
00000001403bf1dd cmp      ecx, edx
00000001403bf1df jae      0x1403bf217
00000001403bf1e1 mov      r9d, dword ptr [rsp + 0x5c]
00000001403bf1e6 lea      r8, [rip + 0x28cc33]
00000001403bf1ed mov      dword ptr [rsp + 0x38], eax
00000001403bf1f1 sub      edx, ecx
00000001403bf1f3 mov      eax, dword ptr [rbp - 0x79]
00000001403bf1f6 add      rcx, rsi
00000001403bf1f9 mov      dword ptr [rsp + 0x30], eax
00000001403bf1fd mov      eax, dword ptr [rbp - 0x7d]
00000001403bf200 mov      dword ptr [rsp + 0x28], eax
00000001403bf204 mov      eax, dword ptr [rsp + 0x60]
00000001403bf208 mov      dword ptr [rsp + 0x20], eax
00000001403bf20c call     0x140044426
00000001403bf211 add      dword ptr [r15], eax
00000001403bf214 mov      ecx, dword ptr [r15]
00000001403bf217 mov      eax, dword ptr [r14]
00000001403bf21a cmp      ecx, eax
00000001403bf21c jae      0x1403bf234
00000001403bf21e sub      eax, ecx
00000001403bf220 lea      r8, [rip + 0x28cc39]
00000001403bf227 mov      edx, eax
00000001403bf229 add      rcx, rsi
00000001403bf22c call     0x140044426
00000001403bf231 add      dword ptr [r15], eax
00000001403bf234 mov      r8d, dword ptr [r12 + rbx*4 + 0x2b0]
00000001403bf23c mov      rcx, r13
00000001403bf23f mov      edx, dword ptr [r12 + rbx*4 + 0x2a8]
00000001403bf247 call     0x140315a88
00000001403bf24c mov      dword ptr [rsp + 0x5c], eax
00000001403bf250 mov      rcx, r13
00000001403bf253 mov      r8d, dword ptr [r12 + rbx*4 + 0x2c0]
00000001403bf25b mov      edx, dword ptr [r12 + rbx*4 + 0x2b8]
00000001403bf263 call     0x140315a88
00000001403bf268 mov      dword ptr [rsp + 0x60], eax
00000001403bf26c mov      rcx, r13
00000001403bf26f mov      r8d, dword ptr [r12 + rbx*4 + 0x2d0]
00000001403bf277 mov      edx, dword ptr [r12 + rbx*4 + 0x2c8]
00000001403bf27f call     0x140315a88
00000001403bf284 mov      dword ptr [rbp - 0x7d], eax
00000001403bf287 mov      rcx, r13
00000001403bf28a mov      r8d, dword ptr [r12 + rbx*4 + 0x2e0]
00000001403bf292 mov      edx, dword ptr [r12 + rbx*4 + 0x2d8]
00000001403bf29a call     0x140315a88
00000001403bf29f mov      dword ptr [rbp - 0x79], eax
00000001403bf2a2 mov      rcx, r13
00000001403bf2a5 mov      r8d, dword ptr [r12 + rbx*4 + 0x2f0]
00000001403bf2ad mov      edx, dword ptr [r12 + rbx*4 + 0x2e8]
00000001403bf2b5 call     0x140315a88
00000001403bf2ba mov      dword ptr [rbp - 0x75], eax
00000001403bf2bd mov      rcx, r13
00000001403bf2c0 mov      r8d, dword ptr [r12 + rbx*4 + 0x300]
00000001403bf2c8 mov      edx, dword ptr [r12 + rbx*4 + 0x2f8]
00000001403bf2d0 call     0x140315a88
00000001403bf2d5 mov      ecx, dword ptr [rsp + 0x5c]
00000001403bf2d9 mov      dl, 9
00000001403bf2db mov      dword ptr [rbp - 0x71], eax
00000001403bf2de call     0x1403e8aa0
00000001403bf2e3 mov      ecx, dword ptr [rsp + 0x60]
00000001403bf2e7 mov      dl, 9
00000001403bf2e9 mov      ebx, eax
00000001403bf2eb call     0x1403e8aa0
00000001403bf2f0 mov      ecx, dword ptr [rbp - 0x7d]
00000001403bf2f3 mov      dl, 9
00000001403bf2f5 mov      edi, eax
00000001403bf2f7 call     0x1403e8aa0
00000001403bf2fc mov      ecx, dword ptr [rbp - 0x79]
00000001403bf2ff mov      dl, 9
00000001403bf301 mov      esi, eax
00000001403bf303 call     0x1403e8aa0
00000001403bf308 mov      r14d, eax
00000001403bf30b mov      word ptr [rsp + 0x28], 0x14
00000001403bf312 lea      rax, [rbp - 0x49]
00000001403bf316 mov      r9b, 2
00000001403bf319 mov      r8b, 9
00000001403bf31c mov      qword ptr [rsp + 0x20], rax
00000001403bf321 mov      edx, ebx
00000001403bf323 mov      rcx, r13
00000001403bf326 call     0x1403e91a0
00000001403bf32b lea      rax, [rbp - 0x61]
00000001403bf32f mov      ebx, 0x14
00000001403bf334 mov      word ptr [rsp + 0x28], bx
00000001403bf339 mov      r9b, 2
00000001403bf33c mov      r8b, 9
00000001403bf33f mov      qword ptr [rsp + 0x20], rax
00000001403bf344 mov      edx, edi
00000001403bf346 mov      rcx, r13
00000001403bf349 call     0x1403e91a0
00000001403bf34e lea      rax, [rbp - 0x19]
00000001403bf352 mov      word ptr [rsp + 0x28], bx
00000001403bf357 mov      r9b, 2
00000001403bf35a mov      qword ptr [rsp + 0x20], rax
00000001403bf35f mov      r8b, 9
00000001403bf362 mov      edx, esi
00000001403bf364 mov      rcx, r13
00000001403bf367 call     0x1403e91a0
00000001403bf36c lea      rax, [rbp - 0x31]
00000001403bf370 mov      word ptr [rsp + 0x28], bx
00000001403bf375 mov      r9b, 2
00000001403bf378 mov      qword ptr [rsp + 0x20], rax
00000001403bf37d mov      r8b, 9
00000001403bf380 mov      edx, r14d
00000001403bf383 mov      rcx, r13
00000001403bf386 call     0x1403e91a0
00000001403bf38b mov      ecx, dword ptr [r15]
00000001403bf38e mov      r14, qword ptr [rsp + 0x50]
00000001403bf393 mov      eax, dword ptr [r14]
00000001403bf396 mov      rsi, qword ptr [rsp + 0x48]
00000001403bf39b cmp      ecx, eax
00000001403bf39d jae      0x1403bf3d4
00000001403bf39f sub      eax, ecx
00000001403bf3a1 lea      r9, [rbp - 0x49]
00000001403bf3a5 mov      edx, eax
00000001403bf3a7 lea      r8, [rip + 0x28cac2]
00000001403bf3ae lea      rax, [rbp - 0x31]
00000001403bf3b2 add      rcx, rsi
00000001403bf3b5 mov      qword ptr [rsp + 0x30], rax
00000001403bf3ba lea      rax, [rbp - 0x19]
00000001403bf3be mov      qword ptr [rsp + 0x28], rax
00000001403bf3c3 lea      rax, [rbp - 0x61]
00000001403bf3c7 mov      qword ptr [rsp + 0x20], rax
00000001403bf3cc call     0x140044426
00000001403bf3d1 add      dword ptr [r15], eax
00000001403bf3d4 mov      ecx, dword ptr [rbp - 0x75]
00000001403bf3d7 mov      dl, 0xa
00000001403bf3d9 call     0x1403e8aa0
00000001403bf3de mov      ecx, dword ptr [rbp - 0x71]
00000001403bf3e1 mov      dl, 0xa
00000001403bf3e3 mov      ebx, eax
00000001403bf3e5 call     0x1403e8aa0
00000001403bf3ea mov      edi, eax
00000001403bf3ec mov      word ptr [rsp + 0x28], 0x14
00000001403bf3f3 lea      rax, [rbp - 0x49]
00000001403bf3f7 mov      r9b, 2
00000001403bf3fa mov      r8b, 0xa
00000001403bf3fd mov      qword ptr [rsp + 0x20], rax
00000001403bf402 mov      edx, ebx
00000001403bf404 mov      rcx, r13
00000001403bf407 call     0x1403e91a0
00000001403bf40c lea      rax, [rbp - 0x61]
00000001403bf410 mov      word ptr [rsp + 0x28], 0x14
00000001403bf417 mov      r9b, 2
00000001403bf41a mov      qword ptr [rsp + 0x20], rax
00000001403bf41f mov      r8b, 0xa
00000001403bf422 mov      edx, edi
00000001403bf424 mov      rcx, r13
00000001403bf427 call     0x1403e91a0
00000001403bf42c mov      ecx, dword ptr [r15]
00000001403bf42f mov      eax, dword ptr [r14]
00000001403bf432 cmp      ecx, eax
00000001403bf434 jae      0x1403bf459
00000001403bf436 sub      eax, ecx
00000001403bf438 lea      r9, [rbp - 0x49]
00000001403bf43c mov      edx, eax
00000001403bf43e lea      r8, [rip + 0x28ca7b]
00000001403bf445 lea      rax, [rbp - 0x61]
00000001403bf449 add      rcx, rsi
00000001403bf44c mov      qword ptr [rsp + 0x20], rax
00000001403bf451 call     0x140044426
00000001403bf456 add      dword ptr [r15], eax
00000001403bf459 mov      edi, dword ptr [rsp + 0x40]
00000001403bf45d inc      dil
00000001403bf460 mov      dword ptr [rsp + 0x40], edi
00000001403bf464 cmp      dil, byte ptr [r13 + 0x1416]
00000001403bf46b jb       0x1403bed71
00000001403bf471 jmp      0x1403bfc83
00000001403bf476 lea      r8, [rsp + 0x58]
00000001403bf47b mov      rcx, rbx
00000001403bf47e lea      rdx, [rip + 0x25c2eb]
00000001403bf485 call     0x140044420
00000001403bf48a mov      r9d, dword ptr [rsp + 0x58]
00000001403bf48f mov      eax, dword ptr [r15]
00000001403bf492 mov      ecx, dword ptr [r14]
00000001403bf495 cmp      r9d, 1
00000001403bf499 jne      0x1403bf61f
00000001403bf49f cmp      eax, ecx
00000001403bf4a1 jae      0x1403bf4bd
00000001403bf4a3 sub      ecx, eax
00000001403bf4a5 lea      r8, [rip + 0x28c7f4]
00000001403bf4ac mov      edx, ecx
00000001403bf4ae lea      rcx, [rsi + rax]
00000001403bf4b2 call     0x140044426
00000001403bf4b7 add      dword ptr [r15], eax
00000001403bf4ba mov      eax, dword ptr [r15]
00000001403bf4bd cmp      byte ptr [r13 + 0x1416], dil
00000001403bf4c4 jbe      0x1403bfc83
00000001403bf4ca mov      ecx, dword ptr [r14]
00000001403bf4cd cmp      eax, ecx
00000001403bf4cf jae      0x1403bf4f1
00000001403bf4d1 sub      ecx, eax
00000001403bf4d3 movzx    r9d, dil
00000001403bf4d7 mov      edx, ecx
00000001403bf4d9 lea      r8, [rip + 0x28ca30]
00000001403bf4e0 mov      ecx, eax
00000001403bf4e2 add      r9d, 0x41
00000001403bf4e6 add      rcx, rsi
00000001403bf4e9 call     0x140044426
00000001403bf4ee add      dword ptr [r15], eax
00000001403bf4f1 movzx    ebx, dil
00000001403bf4f5 mov      rcx, r13
00000001403bf4f8 mov      r8d, dword ptr [r12 + rbx*4 + 0x110]
00000001403bf500 mov      edx, dword ptr [r12 + rbx*4 + 0x108]
00000001403bf508 call     0x140315a88
00000001403bf50d mov      dword ptr [rsp + 0x5c], eax
00000001403bf511 mov      rcx, r13
00000001403bf514 mov      r8d, dword ptr [r12 + rbx*4 + 0x150]
00000001403bf51c mov      edx, dword ptr [r12 + rbx*4 + 0x148]
00000001403bf524 call     0x140315a88
00000001403bf529 mov      dword ptr [rsp + 0x60], eax
00000001403bf52d mov      rcx, r13
00000001403bf530 mov      r8d, dword ptr [r12 + rbx*4 + 0x160]
00000001403bf538 mov      edx, dword ptr [r12 + rbx*4 + 0x158]
00000001403bf540 call     0x140315a88
00000001403bf545 mov      dword ptr [rbp - 0x7d], eax
00000001403bf548 mov      rcx, r13
00000001403bf54b mov      r8d, dword ptr [r12 + rbx*4 + 0x120]
00000001403bf553 mov      edx, dword ptr [r12 + rbx*4 + 0x118]
00000001403bf55b call     0x140315a88
00000001403bf560 mov      dword ptr [rbp - 0x79], eax
00000001403bf563 mov      rcx, r13
00000001403bf566 mov      r8d, dword ptr [r12 + rbx*4 + 0x130]
00000001403bf56e mov      edx, dword ptr [r12 + rbx*4 + 0x128]
00000001403bf576 call     0x140315a88
00000001403bf57b mov      dword ptr [rbp - 0x75], eax
00000001403bf57e mov      rcx, r13
00000001403bf581 mov      r8d, dword ptr [r12 + rbx*4 + 0x140]
00000001403bf589 mov      edx, dword ptr [r12 + rbx*4 + 0x138]
00000001403bf591 call     0x140315a88
00000001403bf596 mov      ecx, dword ptr [r14]
00000001403bf599 mov      r8d, eax
00000001403bf59c mov      dword ptr [rbp - 0x71], eax
00000001403bf59f mov      eax, dword ptr [r15]
00000001403bf5a2 cmp      eax, ecx
00000001403bf5a4 jae      0x1403bf5d8
00000001403bf5a6 mov      r9d, dword ptr [rsp + 0x5c]
00000001403bf5ab lea      r8, [rip + 0x28c70e]
00000001403bf5b2 sub      ecx, eax
00000001403bf5b4 mov      edx, ecx
00000001403bf5b6 lea      rcx, [rsi + rax]
00000001403bf5ba mov      eax, dword ptr [rbp - 0x7d]
00000001403bf5bd mov      dword ptr [rsp + 0x28], eax
00000001403bf5c1 mov      eax, dword ptr [rsp + 0x60]
00000001403bf5c5 mov      dword ptr [rsp + 0x20], eax
00000001403bf5c9 call     0x140044426
00000001403bf5ce add      dword ptr [r15], eax
00000001403bf5d1 mov      eax, dword ptr [r15]
00000001403bf5d4 mov      r8d, dword ptr [rbp - 0x71]
00000001403bf5d8 mov      ecx, dword ptr [r14]
00000001403bf5db cmp      eax, ecx
00000001403bf5dd jae      0x1403bf60a
00000001403bf5df mov      r9d, dword ptr [rbp - 0x79]
00000001403bf5e3 sub      ecx, eax
00000001403bf5e5 mov      edx, ecx
00000001403bf5e7 mov      ecx, eax
00000001403bf5e9 mov      eax, dword ptr [rbp - 0x75]
00000001403bf5ec add      rcx, rsi
00000001403bf5ef mov      dword ptr [rsp + 0x28], r8d
00000001403bf5f4 lea      r8, [rip + 0x28c705]
00000001403bf5fb mov      dword ptr [rsp + 0x20], eax
00000001403bf5ff call     0x140044426
00000001403bf604 add      dword ptr [r15], eax
00000001403bf607 mov      eax, dword ptr [r15]
00000001403bf60a inc      dil
00000001403bf60d cmp      dil, byte ptr [r13 + 0x1416]
00000001403bf614 jb       0x1403bf4ca
00000001403bf61a jmp      0x1403bfc83
00000001403bf61f cmp      r9d, 2
00000001403bf623 jne      0x1403bf9c5
00000001403bf629 cmp      eax, ecx
00000001403bf62b jae      0x1403bf647
00000001403bf62d sub      ecx, eax
00000001403bf62f lea      r8, [rip + 0x28c70a]
00000001403bf636 mov      edx, ecx
00000001403bf638 lea      rcx, [rsi + rax]
00000001403bf63c call     0x140044426
00000001403bf641 add      dword ptr [r15], eax
00000001403bf644 mov      eax, dword ptr [r15]
00000001403bf647 cmp      byte ptr [r13 + 0x1416], dil
00000001403bf64e jbe      0x1403bfc83
00000001403bf654 mov      ecx, dword ptr [r14]
00000001403bf657 cmp      eax, ecx
00000001403bf659 jae      0x1403bf67b
00000001403bf65b sub      ecx, eax
00000001403bf65d movzx    r9d, dil
00000001403bf661 mov      edx, ecx
00000001403bf663 lea      r8, [rip + 0x28c8a6]
00000001403bf66a mov      ecx, eax
00000001403bf66c add      r9d, 0x41
00000001403bf670 add      rcx, rsi
00000001403bf673 call     0x140044426
00000001403bf678 add      dword ptr [r15], eax
00000001403bf67b movzx    ebx, dil
00000001403bf67f mov      rcx, r13
00000001403bf682 mov      r8d, dword ptr [r12 + rbx*4 + 0x170]
00000001403bf68a mov      edx, dword ptr [r12 + rbx*4 + 0x168]
00000001403bf692 call     0x140315a88
00000001403bf697 mov      dword ptr [rsp + 0x5c], eax
00000001403bf69b mov      rcx, r13
00000001403bf69e mov      r8d, dword ptr [r12 + rbx*4 + 0x180]
00000001403bf6a6 mov      edx, dword ptr [r12 + rbx*4 + 0x178]
00000001403bf6ae call     0x140315a88
00000001403bf6b3 mov      dword ptr [rsp + 0x60], eax
00000001403bf6b7 mov      rcx, r13
00000001403bf6ba mov      r8d, dword ptr [r12 + rbx*4 + 0x190]
00000001403bf6c2 mov      edx, dword ptr [r12 + rbx*4 + 0x188]
00000001403bf6ca call     0x140315a88
00000001403bf6cf mov      dword ptr [rbp - 0x7d], eax
00000001403bf6d2 mov      rcx, r13
00000001403bf6d5 mov      r8d, dword ptr [r12 + rbx*4 + 0x1b0]
00000001403bf6dd mov      edx, dword ptr [r12 + rbx*4 + 0x1a8]
00000001403bf6e5 call     0x140315a88
00000001403bf6ea mov      dword ptr [rbp - 0x79], eax
00000001403bf6ed mov      rcx, r13
00000001403bf6f0 mov      r8d, dword ptr [r12 + rbx*4 + 0x1a0]
00000001403bf6f8 mov      edx, dword ptr [r12 + rbx*4 + 0x198]
00000001403bf700 call     0x140315a88
00000001403bf705 mov      r8d, dword ptr [r15]
00000001403bf708 mov      ecx, dword ptr [r14]
00000001403bf70b mov      dword ptr [rbp - 0x75], eax
00000001403bf70e cmp      r8d, ecx
00000001403bf711 jae      0x1403bf74a
00000001403bf713 mov      r9d, dword ptr [rsp + 0x5c]
00000001403bf718 sub      ecx, r8d
00000001403bf71b mov      dword ptr [rsp + 0x38], eax
00000001403bf71f mov      eax, dword ptr [rbp - 0x79]
00000001403bf722 mov      dword ptr [rsp + 0x30], eax
00000001403bf726 mov      eax, dword ptr [rbp - 0x7d]
00000001403bf729 mov      dword ptr [rsp + 0x28], eax
00000001403bf72d mov      eax, dword ptr [rsp + 0x60]
00000001403bf731 mov      edx, ecx
00000001403bf733 lea      rcx, [rsi + r8]
00000001403bf737 lea      r8, [rip + 0x28c622]
00000001403bf73e mov      dword ptr [rsp + 0x20], eax
00000001403bf742 call     0x140044426
00000001403bf747 add      dword ptr [r15], eax
00000001403bf74a mov      r8d, dword ptr [r12 + rbx*4 + 0x1c0]
00000001403bf752 mov      rcx, r13
00000001403bf755 mov      edx, dword ptr [r12 + rbx*4 + 0x1b8]
00000001403bf75d call     0x140315a88
00000001403bf762 mov      dword ptr [rsp + 0x5c], eax
00000001403bf766 mov      rcx, r13
00000001403bf769 mov      r8d, dword ptr [r12 + rbx*4 + 0x1d0]
00000001403bf771 mov      edx, dword ptr [r12 + rbx*4 + 0x1c8]
00000001403bf779 call     0x140315a88
00000001403bf77e mov      dword ptr [rsp + 0x60], eax
00000001403bf782 mov      rcx, r13
00000001403bf785 mov      r8d, dword ptr [r12 + rbx*4 + 0x1e0]
00000001403bf78d mov      edx, dword ptr [r12 + rbx*4 + 0x1d8]
00000001403bf795 call     0x140315a88
00000001403bf79a mov      dword ptr [rbp - 0x7d], eax
00000001403bf79d mov      rcx, r13
00000001403bf7a0 mov      r8d, dword ptr [r12 + rbx*4 + 0x200]
00000001403bf7a8 mov      edx, dword ptr [r12 + rbx*4 + 0x1f8]
00000001403bf7b0 call     0x140315a88
00000001403bf7b5 mov      dword ptr [rbp - 0x79], eax
00000001403bf7b8 mov      rcx, r13
00000001403bf7bb mov      r8d, dword ptr [r12 + rbx*4 + 0x1f0]
00000001403bf7c3 mov      edx, dword ptr [r12 + rbx*4 + 0x1e8]
00000001403bf7cb call     0x140315a88
00000001403bf7d0 mov      r8d, dword ptr [r15]
00000001403bf7d3 mov      ecx, dword ptr [r14]
00000001403bf7d6 mov      dword ptr [rbp - 0x75], eax
00000001403bf7d9 cmp      r8d, ecx
00000001403bf7dc jae      0x1403bf815
00000001403bf7de mov      r9d, dword ptr [rsp + 0x5c]
00000001403bf7e3 sub      ecx, r8d
00000001403bf7e6 mov      dword ptr [rsp + 0x38], eax
00000001403bf7ea mov      eax, dword ptr [rbp - 0x79]
00000001403bf7ed mov      dword ptr [rsp + 0x30], eax
00000001403bf7f1 mov      eax, dword ptr [rbp - 0x7d]
00000001403bf7f4 mov      dword ptr [rsp + 0x28], eax
00000001403bf7f8 mov      eax, dword ptr [rsp + 0x60]
00000001403bf7fc mov      edx, ecx
00000001403bf7fe lea      rcx, [rsi + r8]
00000001403bf802 lea      r8, [rip + 0x28c597]
00000001403bf809 mov      dword ptr [rsp + 0x20], eax
00000001403bf80d call     0x140044426
00000001403bf812 add      dword ptr [r15], eax
00000001403bf815 mov      r8d, dword ptr [r12 + rbx*4 + 0x210]
00000001403bf81d mov      rcx, r13
00000001403bf820 mov      edx, dword ptr [r12 + rbx*4 + 0x208]
00000001403bf828 call     0x140315a88
00000001403bf82d mov      dword ptr [rsp + 0x5c], eax
00000001403bf831 mov      rcx, r13
00000001403bf834 mov      r8d, dword ptr [r12 + rbx*4 + 0x220]
00000001403bf83c mov      edx, dword ptr [r12 + rbx*4 + 0x218]
00000001403bf844 call     0x140315a88
00000001403bf849 mov      dword ptr [rsp + 0x60], eax
00000001403bf84d mov      rcx, r13
00000001403bf850 mov      r8d, dword ptr [r12 + rbx*4 + 0x230]
00000001403bf858 mov      edx, dword ptr [r12 + rbx*4 + 0x228]
00000001403bf860 call     0x140315a88
00000001403bf865 mov      dword ptr [rbp - 0x7d], eax
00000001403bf868 mov      rcx, r13
00000001403bf86b mov      r8d, dword ptr [r12 + rbx*4 + 0x250]
00000001403bf873 mov      edx, dword ptr [r12 + rbx*4 + 0x248]
00000001403bf87b call     0x140315a88
00000001403bf880 mov      dword ptr [rbp - 0x79], eax
00000001403bf883 mov      rcx, r13
00000001403bf886 mov      r8d, dword ptr [r12 + rbx*4 + 0x240]
00000001403bf88e mov      edx, dword ptr [r12 + rbx*4 + 0x238]
00000001403bf896 call     0x140315a88
00000001403bf89b mov      r8d, dword ptr [r15]
00000001403bf89e mov      ecx, dword ptr [r14]
00000001403bf8a1 mov      dword ptr [rbp - 0x75], eax
00000001403bf8a4 cmp      r8d, ecx
00000001403bf8a7 jae      0x1403bf8e0
00000001403bf8a9 mov      r9d, dword ptr [rsp + 0x5c]
00000001403bf8ae sub      ecx, r8d
00000001403bf8b1 mov      dword ptr [rsp + 0x38], eax
00000001403bf8b5 mov      eax, dword ptr [rbp - 0x79]
00000001403bf8b8 mov      dword ptr [rsp + 0x30], eax
00000001403bf8bc mov      eax, dword ptr [rbp - 0x7d]
00000001403bf8bf mov      dword ptr [rsp + 0x28], eax
00000001403bf8c3 mov      eax, dword ptr [rsp + 0x60]
00000001403bf8c7 mov      edx, ecx
00000001403bf8c9 lea      rcx, [rsi + r8]
00000001403bf8cd lea      r8, [rip + 0x28c50c]
00000001403bf8d4 mov      dword ptr [rsp + 0x20], eax
00000001403bf8d8 call     0x140044426
00000001403bf8dd add      dword ptr [r15], eax
00000001403bf8e0 mov      r8d, dword ptr [r12 + rbx*4 + 0x260]
00000001403bf8e8 mov      rcx, r13
00000001403bf8eb mov      edx, dword ptr [r12 + rbx*4 + 0x258]
00000001403bf8f3 call     0x140315a88
00000001403bf8f8 mov      dword ptr [rsp + 0x5c], eax
00000001403bf8fc mov      rcx, r13
00000001403bf8ff mov      r8d, dword ptr [r12 + rbx*4 + 0x270]
00000001403bf907 mov      edx, dword ptr [r12 + rbx*4 + 0x268]
00000001403bf90f call     0x140315a88
00000001403bf914 mov      dword ptr [rsp + 0x60], eax
00000001403bf918 mov      rcx, r13
00000001403bf91b mov      r8d, dword ptr [r12 + rbx*4 + 0x280]
00000001403bf923 mov      edx, dword ptr [r12 + rbx*4 + 0x278]
00000001403bf92b call     0x140315a88
00000001403bf930 mov      dword ptr [rbp - 0x7d], eax
00000001403bf933 mov      rcx, r13
00000001403bf936 mov      r8d, dword ptr [r12 + rbx*4 + 0x2a0]
00000001403bf93e mov      edx, dword ptr [r12 + rbx*4 + 0x298]
00000001403bf946 call     0x140315a88
00000001403bf94b mov      dword ptr [rbp - 0x79], eax
00000001403bf94e mov      rcx, r13
00000001403bf951 mov      r8d, dword ptr [r12 + rbx*4 + 0x290]
00000001403bf959 mov      edx, dword ptr [r12 + rbx*4 + 0x288]
00000001403bf961 call     0x140315a88
00000001403bf966 mov      ecx, dword ptr [r14]
00000001403bf969 mov      r8d, eax
00000001403bf96c mov      dword ptr [rbp - 0x75], eax
00000001403bf96f mov      eax, dword ptr [r15]
00000001403bf972 cmp      eax, ecx
00000001403bf974 jae      0x1403bf9b0
00000001403bf976 mov      r9d, dword ptr [rsp + 0x5c]
00000001403bf97b sub      ecx, eax
00000001403bf97d mov      dword ptr [rsp + 0x38], r8d
00000001403bf982 lea      r8, [rip + 0x28c497]
00000001403bf989 mov      edx, ecx
00000001403bf98b lea      rcx, [rsi + rax]
00000001403bf98f mov      eax, dword ptr [rbp - 0x79]
00000001403bf992 mov      dword ptr [rsp + 0x30], eax
00000001403bf996 mov      eax, dword ptr [rbp - 0x7d]
00000001403bf999 mov      dword ptr [rsp + 0x28], eax
00000001403bf99d mov      eax, dword ptr [rsp + 0x60]
00000001403bf9a1 mov      dword ptr [rsp + 0x20], eax
00000001403bf9a5 call     0x140044426
00000001403bf9aa add      dword ptr [r15], eax
00000001403bf9ad mov      eax, dword ptr [r15]
00000001403bf9b0 inc      dil
00000001403bf9b3 cmp      dil, byte ptr [r13 + 0x1416]
00000001403bf9ba jb       0x1403bf654
00000001403bf9c0 jmp      0x1403bfc83
00000001403bf9c5 cmp      r9d, 3
00000001403bf9c9 jne      0x1403bfc68
00000001403bf9cf cmp      eax, ecx
00000001403bf9d1 jae      0x1403bf9ed
00000001403bf9d3 sub      ecx, eax
00000001403bf9d5 lea      r8, [rip + 0x28c484]
00000001403bf9dc mov      edx, ecx
00000001403bf9de lea      rcx, [rsi + rax]
00000001403bf9e2 call     0x140044426
00000001403bf9e7 add      dword ptr [r15], eax
00000001403bf9ea mov      eax, dword ptr [r15]
00000001403bf9ed cmp      byte ptr [r13 + 0x1416], dil
00000001403bf9f4 jbe      0x1403bfc83
00000001403bf9fa mov      ecx, dword ptr [r14]
00000001403bf9fd cmp      eax, ecx
00000001403bf9ff jae      0x1403bfa21
00000001403bfa01 sub      ecx, eax
00000001403bfa03 movzx    r9d, dil
00000001403bfa07 mov      edx, ecx
00000001403bfa09 lea      r8, [rip + 0x28c500]
00000001403bfa10 mov      ecx, eax
00000001403bfa12 add      r9d, 0x41
00000001403bfa16 add      rcx, rsi
00000001403bfa19 call     0x140044426
00000001403bfa1e add      dword ptr [r15], eax
00000001403bfa21 movzx    ebx, dil
00000001403bfa25 mov      rcx, r13
00000001403bfa28 mov      r8d, dword ptr [r12 + rbx*4 + 0x2b0]
00000001403bfa30 mov      edx, dword ptr [r12 + rbx*4 + 0x2a8]
00000001403bfa38 call     0x140315a88
00000001403bfa3d mov      dword ptr [rsp + 0x5c], eax
00000001403bfa41 mov      rcx, r13
00000001403bfa44 mov      r8d, dword ptr [r12 + rbx*4 + 0x2c0]
00000001403bfa4c mov      edx, dword ptr [r12 + rbx*4 + 0x2b8]
00000001403bfa54 call     0x140315a88
00000001403bfa59 mov      dword ptr [rsp + 0x60], eax
00000001403bfa5d mov      rcx, r13
00000001403bfa60 mov      r8d, dword ptr [r12 + rbx*4 + 0x2d0]
00000001403bfa68 mov      edx, dword ptr [r12 + rbx*4 + 0x2c8]
00000001403bfa70 call     0x140315a88
00000001403bfa75 mov      dword ptr [rbp - 0x7d], eax
00000001403bfa78 mov      rcx, r13
00000001403bfa7b mov      r8d, dword ptr [r12 + rbx*4 + 0x2e0]
00000001403bfa83 mov      edx, dword ptr [r12 + rbx*4 + 0x2d8]
00000001403bfa8b call     0x140315a88
00000001403bfa90 mov      dword ptr [rbp - 0x79], eax
00000001403bfa93 mov      rcx, r13
00000001403bfa96 mov      r8d, dword ptr [r12 + rbx*4 + 0x2f0]
00000001403bfa9e mov      edx, dword ptr [r12 + rbx*4 + 0x2e8]
00000001403bfaa6 call     0x140315a88
00000001403bfaab mov      dword ptr [rbp - 0x75], eax
00000001403bfaae mov      rcx, r13
00000001403bfab1 mov      r8d, dword ptr [r12 + rbx*4 + 0x300]
00000001403bfab9 mov      edx, dword ptr [r12 + rbx*4 + 0x2f8]
00000001403bfac1 call     0x140315a88
00000001403bfac6 mov      ecx, dword ptr [rsp + 0x5c]
00000001403bfaca mov      dl, 9
00000001403bfacc mov      dword ptr [rbp - 0x71], eax
00000001403bfacf call     0x1403e8aa0
00000001403bfad4 mov      ecx, dword ptr [rsp + 0x60]
00000001403bfad8 mov      dl, 9
00000001403bfada mov      ebx, eax
00000001403bfadc call     0x1403e8aa0
00000001403bfae1 mov      ecx, dword ptr [rbp - 0x7d]
00000001403bfae4 mov      dl, 9
00000001403bfae6 mov      edi, eax
00000001403bfae8 call     0x1403e8aa0
00000001403bfaed mov      ecx, dword ptr [rbp - 0x79]
00000001403bfaf0 mov      dl, 9
00000001403bfaf2 mov      esi, eax
00000001403bfaf4 call     0x1403e8aa0
00000001403bfaf9 mov      r14d, eax
00000001403bfafc mov      word ptr [rsp + 0x28], 0x14
00000001403bfb03 lea      rax, [rbp - 0x49]
00000001403bfb07 mov      r9b, 2
00000001403bfb0a mov      r8b, 9
00000001403bfb0d mov      qword ptr [rsp + 0x20], rax
00000001403bfb12 mov      edx, ebx
00000001403bfb14 mov      rcx, r13
00000001403bfb17 call     0x1403e91a0
00000001403bfb1c lea      rax, [rbp - 0x61]
00000001403bfb20 mov      ebx, 0x14
00000001403bfb25 mov      word ptr [rsp + 0x28], bx
00000001403bfb2a mov      r9b, 2
00000001403bfb2d mov      r8b, 9
00000001403bfb30 mov      qword ptr [rsp + 0x20], rax
00000001403bfb35 mov      edx, edi
00000001403bfb37 mov      rcx, r13
00000001403bfb3a call     0x1403e91a0
00000001403bfb3f lea      rax, [rbp - 0x19]
00000001403bfb43 mov      word ptr [rsp + 0x28], bx
00000001403bfb48 mov      r9b, 2
00000001403bfb4b mov      qword ptr [rsp + 0x20], rax
00000001403bfb50 mov      r8b, 9
00000001403bfb53 mov      edx, esi
00000001403bfb55 mov      rcx, r13
00000001403bfb58 call     0x1403e91a0
00000001403bfb5d lea      rax, [rbp - 0x31]
00000001403bfb61 mov      word ptr [rsp + 0x28], bx
00000001403bfb66 mov      r9b, 2
00000001403bfb69 mov      qword ptr [rsp + 0x20], rax
00000001403bfb6e mov      r8b, 9
00000001403bfb71 mov      edx, r14d
00000001403bfb74 mov      rcx, r13
00000001403bfb77 call     0x1403e91a0
00000001403bfb7c mov      ecx, dword ptr [r15]
00000001403bfb7f mov      r14, qword ptr [rsp + 0x50]
00000001403bfb84 mov      rsi, qword ptr [rsp + 0x48]
00000001403bfb89 mov      eax, dword ptr [r14]
00000001403bfb8c cmp      ecx, eax
00000001403bfb8e jae      0x1403bfbc5
00000001403bfb90 sub      eax, ecx
00000001403bfb92 lea      r9, [rbp - 0x49]
00000001403bfb96 mov      edx, eax
00000001403bfb98 lea      r8, [rip + 0x28c2d1]
00000001403bfb9f lea      rax, [rbp - 0x31]
00000001403bfba3 add      rcx, rsi
00000001403bfba6 mov      qword ptr [rsp + 0x30], rax
00000001403bfbab lea      rax, [rbp - 0x19]
00000001403bfbaf mov      qword ptr [rsp + 0x28], rax
00000001403bfbb4 lea      rax, [rbp - 0x61]
00000001403bfbb8 mov      qword ptr [rsp + 0x20], rax
00000001403bfbbd call     0x140044426
00000001403bfbc2 add      dword ptr [r15], eax
00000001403bfbc5 mov      ecx, dword ptr [rbp - 0x75]
00000001403bfbc8 mov      dl, 0xa
00000001403bfbca call     0x1403e8aa0
00000001403bfbcf mov      ecx, dword ptr [rbp - 0x71]
00000001403bfbd2 mov      dl, 0xa
00000001403bfbd4 mov      ebx, eax
00000001403bfbd6 call     0x1403e8aa0
00000001403bfbdb mov      edi, eax
00000001403bfbdd mov      word ptr [rsp + 0x28], 0x14
00000001403bfbe4 lea      rax, [rbp - 0x49]
00000001403bfbe8 mov      r9b, 2
00000001403bfbeb mov      r8b, 0xa
00000001403bfbee mov      qword ptr [rsp + 0x20], rax
00000001403bfbf3 mov      edx, ebx
00000001403bfbf5 mov      rcx, r13
00000001403bfbf8 call     0x1403e91a0
00000001403bfbfd lea      rax, [rbp - 0x61]
00000001403bfc01 mov      word ptr [rsp + 0x28], 0x14
00000001403bfc08 mov      r9b, 2
00000001403bfc0b mov      qword ptr [rsp + 0x20], rax
00000001403bfc10 mov      r8b, 0xa
00000001403bfc13 mov      edx, edi
00000001403bfc15 mov      rcx, r13
00000001403bfc18 call     0x1403e91a0
00000001403bfc1d mov      eax, dword ptr [r15]
00000001403bfc20 mov      ecx, dword ptr [r14]
00000001403bfc23 cmp      eax, ecx
00000001403bfc25 jae      0x1403bfc4e
00000001403bfc27 sub      ecx, eax
00000001403bfc29 lea      r9, [rbp - 0x49]
00000001403bfc2d mov      edx, ecx
00000001403bfc2f lea      r8, [rip + 0x28c28a]
00000001403bfc36 lea      rcx, [rsi + rax]
00000001403bfc3a lea      rax, [rbp - 0x61]
00000001403bfc3e mov      qword ptr [rsp + 0x20], rax
00000001403bfc43 call     0x140044426
00000001403bfc48 add      dword ptr [r15], eax
00000001403bfc4b mov      eax, dword ptr [r15]
00000001403bfc4e mov      edi, dword ptr [rsp + 0x40]
00000001403bfc52 inc      dil
00000001403bfc55 mov      dword ptr [rsp + 0x40], edi
00000001403bfc59 cmp      dil, byte ptr [r13 + 0x1416]
00000001403bfc60 jb       0x1403bf9fa
00000001403bfc66 jmp      0x1403bfc83
00000001403bfc68 cmp      eax, ecx
00000001403bfc6a jae      0x1403bfc83
00000001403bfc6c sub      ecx, eax
00000001403bfc6e lea      r8, [rip + 0x28c2ab]
00000001403bfc75 mov      edx, ecx
00000001403bfc77 lea      rcx, [rsi + rax]
00000001403bfc7b call     0x140044426
00000001403bfc80 add      dword ptr [r15], eax
00000001403bfc83 mov      rcx, qword ptr [rbp - 1]
00000001403bfc87 xor      rcx, rsp
00000001403bfc8a call     0x1405f45b0
00000001403bfc8f add      rsp, 0xf8
00000001403bfc96 pop      r15
00000001403bfc98 pop      r14
00000001403bfc9a pop      r13
00000001403bfc9c pop      r12
00000001403bfc9e pop      rdi
00000001403bfc9f pop      rsi
00000001403bfca0 pop      rbx
00000001403bfca1 pop      rbp
00000001403bfca2 ret      