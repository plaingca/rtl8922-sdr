000000014035de84 mov      qword ptr [rsp + 0x10], rbx
000000014035de89 push     rbp
000000014035de8a push     rsi
000000014035de8b push     rdi
000000014035de8c push     r12
000000014035de8e push     r13
000000014035de90 push     r14
000000014035de92 push     r15
000000014035de94 lea      rbp, [rsp - 0x1f]
000000014035de99 sub      rsp, 0xa0
000000014035dea0 mov      rax, qword ptr [rip + 0x5c95b9]
000000014035dea7 xor      rax, rsp
000000014035deaa mov      qword ptr [rbp + 0xf], rax
000000014035deae mov      rdi, qword ptr [rbp + 0x7f]
000000014035deb2 xorps    xmm0, xmm0
000000014035deb5 xor      eax, eax
000000014035deb7 mov      rsi, r9
000000014035deba cmp      byte ptr [rdx + 0x10], 0x2d
000000014035debe mov      rbx, r8
000000014035dec1 mov      r13, rcx
000000014035dec4 mov      qword ptr [rbp - 1], rax
000000014035dec8 movups   xmmword ptr [rbp - 0x31], xmm0
000000014035decc mov      dword ptr [rbp + 7], eax
000000014035decf movups   xmmword ptr [rbp - 0x21], xmm0
000000014035ded3 movups   xmmword ptr [rbp - 0x11], xmm0
000000014035ded7 movups   xmmword ptr [rbp - 0x49], xmm0
000000014035dedb jne      0x14035df0f
000000014035dedd cmp      byte ptr [rdx + 0x11], 0x68
000000014035dee1 jne      0x14035df0f
000000014035dee3 cmp      byte ptr [rdx + 0x12], al
000000014035dee6 jne      0x14035df0f
000000014035dee8 mov      ecx, dword ptr [r8]
000000014035deeb mov      eax, dword ptr [rdi]
000000014035deed cmp      ecx, eax
000000014035deef jae      0x14035e873
000000014035def5 sub      eax, ecx
000000014035def7 lea      r8, [rip + 0x2df2d2]
000000014035defe mov      edx, eax
000000014035df00 add      rcx, r9
000000014035df03 call     0x140044426
000000014035df08 add      dword ptr [rbx], eax
000000014035df0a jmp      0x14035e873
000000014035df0f xor      r15b, r15b
000000014035df12 mov      byte ptr [rbp - 0x51], r15b
000000014035df16 mov      ecx, dword ptr [rbx]
000000014035df18 mov      eax, dword ptr [rdi]
000000014035df1a cmp      ecx, eax
000000014035df1c jae      0x14035df4b
000000014035df1e lea      rdx, [rip + 0x2df2bb]
000000014035df25 cmp      r15b, 1
000000014035df29 lea      r9, [rip + 0x2df2d0]
000000014035df30 cmove    r9, rdx
000000014035df34 lea      r8, [rip + 0x2df2e5]
000000014035df3b sub      eax, ecx
000000014035df3d add      rcx, rsi
000000014035df40 mov      edx, eax
000000014035df42 call     0x140044426
000000014035df47 add      dword ptr [rbx], eax
000000014035df49 mov      ecx, dword ptr [rbx]
000000014035df4b movzx    r12d, r15b
000000014035df4f xor      r14b, r14b
000000014035df52 lea      r15, [rip + 0x2ccf27]
000000014035df59 mov      eax, dword ptr [rdi]
000000014035df5b cmp      ecx, eax
000000014035df5d jae      0x14035df8a
000000014035df5f lea      rdx, [rip + 0x2df2da]
000000014035df66 cmp      r14b, 1
000000014035df6a lea      r9, [rip + 0x2df2df]
000000014035df71 cmove    r9, rdx
000000014035df75 lea      r8, [rip + 0x2df2e4]
000000014035df7c sub      eax, ecx
000000014035df7e add      rcx, rsi
000000014035df81 mov      edx, eax
000000014035df83 call     0x140044426
000000014035df88 add      dword ptr [rbx], eax
000000014035df8a movzx    r9d, r14b
000000014035df8e lea      rdx, [rbp - 0x31]
000000014035df92 mov      r8d, r12d
000000014035df95 mov      rcx, r13
000000014035df98 call     0x14035efcc
000000014035df9d cmp      byte ptr [rbp - 0x31], 0
000000014035dfa1 jne      0x14035dfdd
000000014035dfa3 mov      ecx, dword ptr [rbx]
000000014035dfa5 mov      eax, dword ptr [rdi]
000000014035dfa7 cmp      ecx, eax
000000014035dfa9 jae      0x14035e851
000000014035dfaf cmp      dword ptr [rbp - 0x49], 1
000000014035dfb3 lea      rdx, [rip + 0x2df2d6]
000000014035dfba lea      r9, [rip + 0x2df2df]
000000014035dfc1 cmove    r9, rdx
000000014035dfc5 lea      r8, [rip + 0x2df2e4]
000000014035dfcc sub      eax, ecx
000000014035dfce add      rcx, rsi
000000014035dfd1 mov      edx, eax
000000014035dfd3 call     0x140044426
000000014035dfd8 jmp      0x14035e84d
000000014035dfdd mov      ecx, dword ptr [rbp - 0x25]
000000014035dfe0 sub      ecx, 1
000000014035dfe3 je       0x14035e042
000000014035dfe5 sub      ecx, 1
000000014035dfe8 je       0x14035e039
000000014035dfea sub      ecx, 2
000000014035dfed je       0x14035e030
000000014035dfef sub      ecx, 4
000000014035dff2 je       0x14035e027
000000014035dff4 sub      ecx, 8
000000014035dff7 je       0x14035e01e
000000014035dff9 sub      ecx, 0x10
000000014035dffc je       0x14035e015
000000014035dffe cmp      ecx, 0x20
000000014035e001 je       0x14035e00c
000000014035e003 lea      r9, [rip + 0x2df2c6]
000000014035e00a jmp      0x14035e049
000000014035e00c lea      r9, [rip + 0x2d5c4d]
000000014035e013 jmp      0x14035e049
000000014035e015 lea      r9, [rip + 0x2d1584]
000000014035e01c jmp      0x14035e049
000000014035e01e lea      r9, [rip + 0x2a3eeb]
000000014035e025 jmp      0x14035e049
000000014035e027 lea      r9, [rip + 0x2afa02]
000000014035e02e jmp      0x14035e049
000000014035e030 lea      r9, [rip + 0x2d1579]
000000014035e037 jmp      0x14035e049
000000014035e039 lea      r9, [rip + 0x299d30]
000000014035e040 jmp      0x14035e049
000000014035e042 lea      r9, [rip + 0x299d37]
000000014035e049 mov      ecx, dword ptr [rbx]
000000014035e04b mov      r10d, dword ptr [rdi]
000000014035e04e cmp      ecx, r10d
000000014035e051 jae      0x14035e07d
000000014035e053 mov      eax, dword ptr [rbp - 0x29]
000000014035e056 lea      r8, [rip + 0x2df283]
000000014035e05d sub      r10d, ecx
000000014035e060 mov      dword ptr [rsp + 0x28], eax
000000014035e064 mov      eax, dword ptr [rbp - 0x2d]
000000014035e067 add      rcx, rsi
000000014035e06a mov      edx, r10d
000000014035e06d mov      dword ptr [rsp + 0x20], eax
000000014035e071 call     0x140044426
000000014035e076 add      dword ptr [rbx], eax
000000014035e078 mov      ecx, dword ptr [rbx]
000000014035e07a mov      r10d, dword ptr [rdi]
000000014035e07d mov      edx, dword ptr [rbp - 0x21]
000000014035e080 test     edx, edx
000000014035e082 je       0x14035e0ef
000000014035e084 sub      edx, 1
000000014035e087 je       0x14035e0e6
000000014035e089 sub      edx, 1
000000014035e08c je       0x14035e0dd
000000014035e08e sub      edx, 1
000000014035e091 je       0x14035e0d4
000000014035e093 sub      edx, 1
000000014035e096 je       0x14035e0cb
000000014035e098 sub      edx, 1
000000014035e09b je       0x14035e0c2
000000014035e09d sub      edx, 1
000000014035e0a0 je       0x14035e0b9
000000014035e0a2 cmp      edx, 1
000000014035e0a5 je       0x14035e0b0
000000014035e0a7 lea      r8, [rip + 0x2992e2]
000000014035e0ae jmp      0x14035e0f6
000000014035e0b0 lea      r8, [rip + 0x2df2b9]
000000014035e0b7 jmp      0x14035e0f6
000000014035e0b9 lea      r8, [rip + 0x2df2a0]
000000014035e0c0 jmp      0x14035e0f6
000000014035e0c2 lea      r8, [rip + 0x2df287]
000000014035e0c9 jmp      0x14035e0f6
000000014035e0cb lea      r8, [rip + 0x2df26e]
000000014035e0d2 jmp      0x14035e0f6
000000014035e0d4 lea      r8, [rip + 0x2df255]
000000014035e0db jmp      0x14035e0f6
000000014035e0dd lea      r8, [rip + 0x2df23c]
000000014035e0e4 jmp      0x14035e0f6
000000014035e0e6 lea      r8, [rip + 0x2df223]
000000014035e0ed jmp      0x14035e0f6
000000014035e0ef lea      r8, [rip + 0x2c71da]
000000014035e0f6 cmp      ecx, r10d
000000014035e0f9 jae      0x14035e126
000000014035e0fb movzx    eax, byte ptr [rbp - 0x18]
000000014035e0ff sub      r10d, ecx
000000014035e102 movzx    r9d, byte ptr [rbp - 0x1b]
000000014035e107 add      rcx, rsi
000000014035e10a mov      qword ptr [rsp + 0x28], r8
000000014035e10f lea      r8, [rip + 0x2df26a]
000000014035e116 mov      edx, r10d
000000014035e119 mov      dword ptr [rsp + 0x20], eax
000000014035e11d call     0x140044426
000000014035e122 add      dword ptr [rbx], eax
000000014035e124 mov      ecx, dword ptr [rbx]
000000014035e126 mov      eax, dword ptr [rdi]
000000014035e128 cmp      ecx, eax
000000014035e12a jae      0x14035e145
000000014035e12c sub      eax, ecx
000000014035e12e lea      r8, [rip + 0x2df27b]
000000014035e135 mov      edx, eax
000000014035e137 add      rcx, rsi
000000014035e13a call     0x140044426
000000014035e13f add      dword ptr [rbx], eax
000000014035e141 mov      ecx, dword ptr [rbx]
000000014035e143 mov      eax, dword ptr [rdi]
000000014035e145 mov      dl, byte ptr [rbp - 0x19]
000000014035e148 test     dl, 0x10
000000014035e14b je       0x14035e156
000000014035e14d lea      r9, [rip + 0x2df27c]
000000014035e154 jmp      0x14035e187
000000014035e156 test     dl, 8
000000014035e159 je       0x14035e164
000000014035e15b lea      r9, [rip + 0x2df27e]
000000014035e162 jmp      0x14035e187
000000014035e164 test     dl, 4
000000014035e167 je       0x14035e172
000000014035e169 lea      r9, [rip + 0x2df280]
000000014035e170 jmp      0x14035e187
000000014035e172 test     dl, 2
000000014035e175 lea      r9, [rip + 0x2df284]
000000014035e17c lea      r8, [rip + 0x2a82cd]
000000014035e183 cmove    r9, r8
000000014035e187 cmp      ecx, eax
000000014035e189 jae      0x14035e1a5
000000014035e18b sub      eax, ecx
000000014035e18d lea      r8, [rip + 0x2c600c]
000000014035e194 mov      edx, eax
000000014035e196 add      rcx, rsi
000000014035e199 call     0x140044426
000000014035e19e add      dword ptr [rbx], eax
000000014035e1a0 mov      ecx, dword ptr [rbx]
000000014035e1a2 mov      dl, byte ptr [rbp - 0x19]
000000014035e1a5 mov      r11d, dword ptr [rdi]
000000014035e1a8 cmp      ecx, r11d
000000014035e1ab jae      0x14035e1f8
000000014035e1ad mov      al, byte ptr [rbp - 0x1a]
000000014035e1b0 lea      rdx, [rip + 0x2a8309]
000000014035e1b7 test     al, 4
000000014035e1b9 mov      r10, rdx
000000014035e1bc mov      r8, rdx
000000014035e1bf mov      r9, rdx
000000014035e1c2 cmovne   r10, r15
000000014035e1c6 test     al, 2
000000014035e1c8 mov      qword ptr [rsp + 0x28], r10
000000014035e1cd cmovne   r8, r15
000000014035e1d1 test     al, 1
000000014035e1d3 mov      qword ptr [rsp + 0x20], r8
000000014035e1d8 lea      r8, [rip + 0x2df231]
000000014035e1df cmovne   r9, r15
000000014035e1e3 sub      r11d, ecx
000000014035e1e6 mov      edx, r11d
000000014035e1e9 add      rcx, rsi
000000014035e1ec call     0x140044426
000000014035e1f1 add      dword ptr [rbx], eax
000000014035e1f3 mov      ecx, dword ptr [rbx]
000000014035e1f5 mov      dl, byte ptr [rbp - 0x19]
000000014035e1f8 mov      eax, dword ptr [rdi]
000000014035e1fa cmp      ecx, eax
000000014035e1fc jae      0x14035e223
000000014035e1fe test     dl, 0xc0
000000014035e201 lea      r9, [rip + 0x2a82b8]
000000014035e208 lea      r8, [rip + 0x2df231]
000000014035e20f cmovne   r9, r15
000000014035e213 sub      eax, ecx
000000014035e215 mov      edx, eax
000000014035e217 add      rcx, rsi
000000014035e21a call     0x140044426
000000014035e21f add      dword ptr [rbx], eax
000000014035e221 mov      ecx, dword ptr [rbx]
000000014035e223 mov      edx, dword ptr [rdi]
000000014035e225 cmp      ecx, edx
000000014035e227 jae      0x14035e24b
000000014035e229 movzx    eax, byte ptr [rbp - 0x10]
000000014035e22d lea      r8, [rip + 0x2df22c]
000000014035e234 movzx    r9d, byte ptr [rbp - 0x11]
000000014035e239 sub      edx, ecx
000000014035e23b add      rcx, rsi
000000014035e23e mov      dword ptr [rsp + 0x20], eax
000000014035e242 call     0x140044426
000000014035e247 add      dword ptr [rbx], eax
000000014035e249 mov      ecx, dword ptr [rbx]
000000014035e24b mov      edx, dword ptr [rdi]
000000014035e24d cmp      ecx, edx
000000014035e24f jae      0x14035e273
000000014035e251 movzx    eax, byte ptr [rbp - 0xe]
000000014035e255 lea      r8, [rip + 0x2df224]
000000014035e25c movzx    r9d, byte ptr [rbp - 0xf]
000000014035e261 sub      edx, ecx
000000014035e263 add      rcx, rsi
000000014035e266 mov      dword ptr [rsp + 0x20], eax
000000014035e26a call     0x140044426
000000014035e26f add      dword ptr [rbx], eax
000000014035e271 mov      ecx, dword ptr [rbx]
000000014035e273 mov      eax, dword ptr [rdi]
000000014035e275 cmp      ecx, eax
000000014035e277 jae      0x14035e29f
000000014035e279 test     byte ptr [rbp - 0x15], 1
000000014035e27d lea      r9, [rip + 0x2a823c]
000000014035e284 lea      r8, [rip + 0x2df215]
000000014035e28b cmovne   r9, r15
000000014035e28f sub      eax, ecx
000000014035e291 mov      edx, eax
000000014035e293 add      rcx, rsi
000000014035e296 call     0x140044426
000000014035e29b add      dword ptr [rbx], eax
000000014035e29d mov      ecx, dword ptr [rbx]
000000014035e29f mov      eax, dword ptr [rdi]
000000014035e2a1 cmp      ecx, eax
000000014035e2a3 jae      0x14035e2cb
000000014035e2a5 test     byte ptr [rbp - 0x15], 2
000000014035e2a9 lea      r9, [rip + 0x2a8210]
000000014035e2b0 lea      r8, [rip + 0x2df209]
000000014035e2b7 cmovne   r9, r15
000000014035e2bb sub      eax, ecx
000000014035e2bd mov      edx, eax
000000014035e2bf add      rcx, rsi
000000014035e2c2 call     0x140044426
000000014035e2c7 add      dword ptr [rbx], eax
000000014035e2c9 mov      ecx, dword ptr [rbx]
000000014035e2cb mov      eax, dword ptr [rdi]
000000014035e2cd cmp      ecx, eax
000000014035e2cf jae      0x14035e2f7
000000014035e2d1 test     byte ptr [rbp - 0x15], 4
000000014035e2d5 lea      r9, [rip + 0x2a81e4]
000000014035e2dc lea      r8, [rip + 0x2df1fd]
000000014035e2e3 cmovne   r9, r15
000000014035e2e7 sub      eax, ecx
000000014035e2e9 mov      edx, eax
000000014035e2eb add      rcx, rsi
000000014035e2ee call     0x140044426
000000014035e2f3 add      dword ptr [rbx], eax
000000014035e2f5 mov      ecx, dword ptr [rbx]
000000014035e2f7 mov      eax, dword ptr [rdi]
000000014035e2f9 cmp      ecx, eax
000000014035e2fb jae      0x14035e323
000000014035e2fd test     byte ptr [rbp - 0x15], 8
000000014035e301 lea      r9, [rip + 0x2a81b8]
000000014035e308 lea      r8, [rip + 0x2df1f1]
000000014035e30f cmovne   r9, r15
000000014035e313 sub      eax, ecx
000000014035e315 mov      edx, eax
000000014035e317 add      rcx, rsi
000000014035e31a call     0x140044426
000000014035e31f add      dword ptr [rbx], eax
000000014035e321 mov      ecx, dword ptr [rbx]
000000014035e323 mov      eax, dword ptr [rdi]
000000014035e325 cmp      ecx, eax
000000014035e327 jae      0x14035e34f
000000014035e329 test     byte ptr [rbp - 0x15], 0x10
000000014035e32d lea      r9, [rip + 0x2a818c]
000000014035e334 lea      r8, [rip + 0x2df1e5]
000000014035e33b cmovne   r9, r15
000000014035e33f sub      eax, ecx
000000014035e341 mov      edx, eax
000000014035e343 add      rcx, rsi
000000014035e346 call     0x140044426
000000014035e34b add      dword ptr [rbx], eax
000000014035e34d mov      ecx, dword ptr [rbx]
000000014035e34f mov      eax, dword ptr [rdi]
000000014035e351 cmp      ecx, eax
000000014035e353 jae      0x14035e37b
000000014035e355 test     byte ptr [rbp - 0x15], 0x20
000000014035e359 lea      r9, [rip + 0x2a8160]
000000014035e360 lea      r8, [rip + 0x2df1d9]
000000014035e367 cmovne   r9, r15
000000014035e36b sub      eax, ecx
000000014035e36d mov      edx, eax
000000014035e36f add      rcx, rsi
000000014035e372 call     0x140044426
000000014035e377 add      dword ptr [rbx], eax
000000014035e379 mov      ecx, dword ptr [rbx]
000000014035e37b mov      eax, dword ptr [rdi]
000000014035e37d cmp      ecx, eax
000000014035e37f jae      0x14035e3a7
000000014035e381 test     byte ptr [rbp - 0x15], 0x40
000000014035e385 lea      r9, [rip + 0x2a8134]
000000014035e38c lea      r8, [rip + 0x2df1cd]
000000014035e393 cmovne   r9, r15
000000014035e397 sub      eax, ecx
000000014035e399 mov      edx, eax
000000014035e39b add      rcx, rsi
000000014035e39e call     0x140044426
000000014035e3a3 add      dword ptr [rbx], eax
000000014035e3a5 mov      ecx, dword ptr [rbx]
000000014035e3a7 mov      eax, dword ptr [rdi]
000000014035e3a9 cmp      ecx, eax
000000014035e3ab jae      0x14035e3d3
000000014035e3ad test     byte ptr [rbp - 0x15], 0x80
000000014035e3b1 lea      r9, [rip + 0x2a8108]
000000014035e3b8 lea      r8, [rip + 0x2df1c1]
000000014035e3bf cmovne   r9, r15
000000014035e3c3 sub      eax, ecx
000000014035e3c5 mov      edx, eax
000000014035e3c7 add      rcx, rsi
000000014035e3ca call     0x140044426
000000014035e3cf add      dword ptr [rbx], eax
000000014035e3d1 mov      ecx, dword ptr [rbx]
000000014035e3d3 mov      eax, dword ptr [rdi]
000000014035e3d5 cmp      ecx, eax
000000014035e3d7 jae      0x14035e402
000000014035e3d9 test     dword ptr [rbp - 0x15], 0x100
000000014035e3e0 lea      r9, [rip + 0x2a80d9]
000000014035e3e7 lea      r8, [rip + 0x2df1b2]
000000014035e3ee cmovne   r9, r15
000000014035e3f2 sub      eax, ecx
000000014035e3f4 mov      edx, eax
000000014035e3f6 add      rcx, rsi
000000014035e3f9 call     0x140044426
000000014035e3fe add      dword ptr [rbx], eax
000000014035e400 mov      ecx, dword ptr [rbx]
000000014035e402 mov      eax, dword ptr [rdi]
000000014035e404 cmp      ecx, eax
000000014035e406 jae      0x14035e431
000000014035e408 test     dword ptr [rbp - 0x15], 0x200
000000014035e40f lea      r9, [rip + 0x2a80aa]
000000014035e416 lea      r8, [rip + 0x2df1a3]
000000014035e41d cmovne   r9, r15
000000014035e421 sub      eax, ecx
000000014035e423 mov      edx, eax
000000014035e425 add      rcx, rsi
000000014035e428 call     0x140044426
000000014035e42d add      dword ptr [rbx], eax
000000014035e42f mov      ecx, dword ptr [rbx]
000000014035e431 mov      eax, dword ptr [rdi]
000000014035e433 cmp      ecx, eax
000000014035e435 jae      0x14035e460
000000014035e437 test     dword ptr [rbp - 0x15], 0x400
000000014035e43e lea      r9, [rip + 0x2a807b]
000000014035e445 lea      r8, [rip + 0x2df194]
000000014035e44c cmovne   r9, r15
000000014035e450 sub      eax, ecx
000000014035e452 mov      edx, eax
000000014035e454 add      rcx, rsi
000000014035e457 call     0x140044426
000000014035e45c add      dword ptr [rbx], eax
000000014035e45e mov      ecx, dword ptr [rbx]
000000014035e460 mov      eax, dword ptr [rdi]
000000014035e462 cmp      ecx, eax
000000014035e464 jae      0x14035e48f
000000014035e466 test     dword ptr [rbp - 0x15], 0x800
000000014035e46d lea      r9, [rip + 0x2a804c]
000000014035e474 lea      r8, [rip + 0x2df185]
000000014035e47b cmovne   r9, r15
000000014035e47f sub      eax, ecx
000000014035e481 mov      edx, eax
000000014035e483 add      rcx, rsi
000000014035e486 call     0x140044426
000000014035e48b add      dword ptr [rbx], eax
000000014035e48d mov      ecx, dword ptr [rbx]
000000014035e48f mov      eax, dword ptr [rdi]
000000014035e491 cmp      ecx, eax
000000014035e493 jae      0x14035e4be
000000014035e495 test     dword ptr [rbp - 0x15], 0x1000
000000014035e49c lea      r9, [rip + 0x2a801d]
000000014035e4a3 lea      r8, [rip + 0x2df176]
000000014035e4aa cmovne   r9, r15
000000014035e4ae sub      eax, ecx
000000014035e4b0 mov      edx, eax
000000014035e4b2 add      rcx, rsi
000000014035e4b5 call     0x140044426
000000014035e4ba add      dword ptr [rbx], eax
000000014035e4bc mov      ecx, dword ptr [rbx]
000000014035e4be mov      eax, dword ptr [rdi]
000000014035e4c0 cmp      ecx, eax
000000014035e4c2 jae      0x14035e4ed
000000014035e4c4 test     dword ptr [rbp - 0x15], 0x2000
000000014035e4cb lea      r9, [rip + 0x2a7fee]
000000014035e4d2 lea      r8, [rip + 0x2df167]
000000014035e4d9 cmovne   r9, r15
000000014035e4dd sub      eax, ecx
000000014035e4df mov      edx, eax
000000014035e4e1 add      rcx, rsi
000000014035e4e4 call     0x140044426
000000014035e4e9 add      dword ptr [rbx], eax
000000014035e4eb mov      ecx, dword ptr [rbx]
000000014035e4ed mov      eax, dword ptr [rdi]
000000014035e4ef cmp      ecx, eax
000000014035e4f1 jae      0x14035e51c
000000014035e4f3 test     dword ptr [rbp - 0x15], 0x4000
000000014035e4fa lea      r9, [rip + 0x2a7fbf]
000000014035e501 lea      r8, [rip + 0x2df158]
000000014035e508 cmovne   r9, r15
000000014035e50c sub      eax, ecx
000000014035e50e mov      edx, eax
000000014035e510 add      rcx, rsi
000000014035e513 call     0x140044426
000000014035e518 add      dword ptr [rbx], eax
000000014035e51a mov      ecx, dword ptr [rbx]
000000014035e51c mov      eax, dword ptr [rdi]
000000014035e51e cmp      ecx, eax
000000014035e520 jae      0x14035e54b
000000014035e522 test     dword ptr [rbp - 0x15], 0x8000
000000014035e529 lea      r9, [rip + 0x2a7f90]
000000014035e530 lea      r8, [rip + 0x2df149]
000000014035e537 cmovne   r9, r15
000000014035e53b sub      eax, ecx
000000014035e53d mov      edx, eax
000000014035e53f add      rcx, rsi
000000014035e542 call     0x140044426
000000014035e547 add      dword ptr [rbx], eax
000000014035e549 mov      ecx, dword ptr [rbx]
000000014035e54b mov      eax, dword ptr [rdi]
000000014035e54d cmp      ecx, eax
000000014035e54f jae      0x14035e568
000000014035e551 sub      eax, ecx
000000014035e553 lea      r8, [rip + 0x2df146]
000000014035e55a mov      edx, eax
000000014035e55c add      rcx, rsi
000000014035e55f call     0x140044426
000000014035e564 add      dword ptr [rbx], eax
000000014035e566 mov      ecx, dword ptr [rbx]
000000014035e568 mov      eax, dword ptr [rdi]
000000014035e56a cmp      ecx, eax
000000014035e56c jae      0x14035e58d
000000014035e56e movzx    r9d, byte ptr [rbp - 7]
000000014035e573 lea      r8, [rip + 0x2df146]
000000014035e57a sub      eax, ecx
000000014035e57c inc      r9d
000000014035e57f mov      edx, eax
000000014035e581 add      rcx, rsi
000000014035e584 call     0x140044426
000000014035e589 add      dword ptr [rbx], eax
000000014035e58b mov      ecx, dword ptr [rbx]
000000014035e58d mov      edx, dword ptr [rdi]
000000014035e58f cmp      ecx, edx
000000014035e591 jae      0x14035e5ba
000000014035e593 movzx    eax, byte ptr [rbp - 8]
000000014035e597 lea      r8, [rip + 0x2df142]
000000014035e59e movzx    r9d, byte ptr [rbp - 9]
000000014035e5a3 inc      eax
000000014035e5a5 sub      edx, ecx
000000014035e5a7 mov      dword ptr [rsp + 0x20], eax
000000014035e5ab inc      r9d
000000014035e5ae add      rcx, rsi
000000014035e5b1 call     0x140044426
000000014035e5b6 add      dword ptr [rbx], eax
000000014035e5b8 mov      ecx, dword ptr [rbx]
000000014035e5ba mov      eax, dword ptr [rdi]
000000014035e5bc cmp      ecx, eax
000000014035e5be jae      0x14035e5e6
000000014035e5c0 cmp      byte ptr [rbp + 5], 0
000000014035e5c4 lea      r9, [rip + 0x2a7ef5]
000000014035e5cb lea      r8, [rip + 0x2df12e]
000000014035e5d2 cmovne   r9, r15
000000014035e5d6 sub      eax, ecx
000000014035e5d8 mov      edx, eax
000000014035e5da add      rcx, rsi
000000014035e5dd call     0x140044426
000000014035e5e2 add      dword ptr [rbx], eax
000000014035e5e4 mov      ecx, dword ptr [rbx]
000000014035e5e6 mov      eax, dword ptr [rdi]
000000014035e5e8 cmp      ecx, eax
000000014035e5ea jae      0x14035e612
000000014035e5ec cmp      byte ptr [rbp + 6], 0
000000014035e5f0 lea      r9, [rip + 0x2a7ec9]
000000014035e5f7 lea      r8, [rip + 0x2df122]
000000014035e5fe cmovne   r9, r15
000000014035e602 sub      eax, ecx
000000014035e604 mov      edx, eax
000000014035e606 add      rcx, rsi
000000014035e609 call     0x140044426
000000014035e60e add      dword ptr [rbx], eax
000000014035e610 mov      ecx, dword ptr [rbx]
000000014035e612 mov      eax, dword ptr [rdi]
000000014035e614 cmp      ecx, eax
000000014035e616 jae      0x14035e63e
000000014035e618 cmp      byte ptr [rbp + 7], 0
000000014035e61c lea      r9, [rip + 0x2a7e9d]
000000014035e623 lea      r8, [rip + 0x2df116]
000000014035e62a cmovne   r9, r15
000000014035e62e sub      eax, ecx
000000014035e630 mov      edx, eax
000000014035e632 add      rcx, rsi
000000014035e635 call     0x140044426
000000014035e63a add      dword ptr [rbx], eax
000000014035e63c mov      ecx, dword ptr [rbx]
000000014035e63e mov      eax, dword ptr [rdi]
000000014035e640 cmp      ecx, eax
000000014035e642 jae      0x14035e66a
000000014035e644 cmp      byte ptr [rbp - 2], 2
000000014035e648 lea      r9, [rip + 0x2a7e71]
000000014035e64f lea      r8, [rip + 0x2df10a]
000000014035e656 cmove    r9, r15
000000014035e65a sub      eax, ecx
000000014035e65c mov      edx, eax
000000014035e65e add      rcx, rsi
000000014035e661 call     0x140044426
000000014035e666 add      dword ptr [rbx], eax
000000014035e668 mov      ecx, dword ptr [rbx]
000000014035e66a mov      eax, dword ptr [rdi]
000000014035e66c cmp      ecx, eax
000000014035e66e jae      0x14035e696
000000014035e670 cmp      byte ptr [rbp - 2], 2
000000014035e674 lea      r9, [rip + 0x2a7e45]
000000014035e67b lea      r8, [rip + 0x2df0fe]
000000014035e682 cmove    r9, r15
000000014035e686 sub      eax, ecx
000000014035e688 mov      edx, eax
000000014035e68a add      rcx, rsi
000000014035e68d call     0x140044426
000000014035e692 add      dword ptr [rbx], eax
000000014035e694 mov      ecx, dword ptr [rbx]
000000014035e696 mov      eax, dword ptr [rdi]
000000014035e698 cmp      ecx, eax
000000014035e69a jae      0x14035e6b8
000000014035e69c movzx    r9d, byte ptr [rbp - 6]
000000014035e6a1 lea      r8, [rip + 0x2df0f8]
000000014035e6a8 sub      eax, ecx
000000014035e6aa add      rcx, rsi
000000014035e6ad mov      edx, eax
000000014035e6af call     0x140044426
000000014035e6b4 add      dword ptr [rbx], eax
000000014035e6b6 mov      ecx, dword ptr [rbx]
000000014035e6b8 mov      eax, dword ptr [rdi]
000000014035e6ba cmp      ecx, eax
000000014035e6bc jae      0x14035e6da
000000014035e6be movzx    r9d, byte ptr [rbp - 5]
000000014035e6c3 lea      r8, [rip + 0x2df0f6]
000000014035e6ca sub      eax, ecx
000000014035e6cc add      rcx, rsi
000000014035e6cf mov      edx, eax
000000014035e6d1 call     0x140044426
000000014035e6d6 add      dword ptr [rbx], eax
000000014035e6d8 mov      ecx, dword ptr [rbx]
000000014035e6da mov      eax, dword ptr [rdi]
000000014035e6dc cmp      ecx, eax
000000014035e6de jae      0x14035e6fc
000000014035e6e0 movzx    r9d, byte ptr [rbp - 4]
000000014035e6e5 lea      r8, [rip + 0x2df0f4]
000000014035e6ec sub      eax, ecx
000000014035e6ee add      rcx, rsi
000000014035e6f1 mov      edx, eax
000000014035e6f3 call     0x140044426
000000014035e6f8 add      dword ptr [rbx], eax
000000014035e6fa mov      ecx, dword ptr [rbx]
000000014035e6fc mov      eax, dword ptr [rdi]
000000014035e6fe cmp      ecx, eax
000000014035e700 jae      0x14035e71e
000000014035e702 movzx    r9d, byte ptr [rbp - 3]
000000014035e707 lea      r8, [rip + 0x2df0f2]
000000014035e70e sub      eax, ecx
000000014035e710 add      rcx, rsi
000000014035e713 mov      edx, eax
000000014035e715 call     0x140044426
000000014035e71a add      dword ptr [rbx], eax
000000014035e71c mov      ecx, dword ptr [rbx]
000000014035e71e mov      eax, dword ptr [rdi]
000000014035e720 cmp      ecx, eax
000000014035e722 jae      0x14035e740
000000014035e724 movzx    r9d, word ptr [rbp + 3]
000000014035e729 lea      r8, [rip + 0x2df0f0]
000000014035e730 sub      eax, ecx
000000014035e732 add      rcx, rsi
000000014035e735 mov      edx, eax
000000014035e737 call     0x140044426
000000014035e73c add      dword ptr [rbx], eax
000000014035e73e mov      ecx, dword ptr [rbx]
000000014035e740 mov      eax, dword ptr [rdi]
000000014035e742 cmp      ecx, eax
000000014035e744 jae      0x14035e76c
000000014035e746 test     byte ptr [rbp], 4
000000014035e74a lea      r9, [rip + 0x2a7d6f]
000000014035e751 lea      r8, [rip + 0x2df0f8]
000000014035e758 cmovne   r9, r15
000000014035e75c sub      eax, ecx
000000014035e75e mov      edx, eax
000000014035e760 add      rcx, rsi
000000014035e763 call     0x140044426
000000014035e768 add      dword ptr [rbx], eax
000000014035e76a mov      ecx, dword ptr [rbx]
000000014035e76c mov      eax, dword ptr [rdi]
000000014035e76e cmp      ecx, eax
000000014035e770 jae      0x14035e798
000000014035e772 test     byte ptr [rbp], 8
000000014035e776 lea      r9, [rip + 0x2a7d43]
000000014035e77d lea      r8, [rip + 0x2df0ec]
000000014035e784 cmovne   r9, r15
000000014035e788 sub      eax, ecx
000000014035e78a mov      edx, eax
000000014035e78c add      rcx, rsi
000000014035e78f call     0x140044426
000000014035e794 add      dword ptr [rbx], eax
000000014035e796 mov      ecx, dword ptr [rbx]
000000014035e798 mov      eax, dword ptr [rdi]
000000014035e79a cmp      ecx, eax
000000014035e79c jae      0x14035e7c4
000000014035e79e test     byte ptr [rbp], 0x10
000000014035e7a2 lea      r9, [rip + 0x2a7d17]
000000014035e7a9 lea      r8, [rip + 0x2df0e0]
000000014035e7b0 cmovne   r9, r15
000000014035e7b4 sub      eax, ecx
000000014035e7b6 mov      edx, eax
000000014035e7b8 add      rcx, rsi
000000014035e7bb call     0x140044426
000000014035e7c0 add      dword ptr [rbx], eax
000000014035e7c2 mov      ecx, dword ptr [rbx]
000000014035e7c4 mov      edx, dword ptr [rdi]
000000014035e7c6 cmp      ecx, edx
000000014035e7c8 jae      0x14035e7ee
000000014035e7ca movzx    eax, byte ptr [rbp + 2]
000000014035e7ce lea      r8, [rip + 0x2df0db]
000000014035e7d5 movzx    r9d, byte ptr [rbp + 1]
000000014035e7da sub      edx, ecx
000000014035e7dc add      rcx, rsi
000000014035e7df mov      dword ptr [rsp + 0x20], eax
000000014035e7e3 call     0x140044426
000000014035e7e8 add      dword ptr [rbx], eax
000000014035e7ea mov      ecx, dword ptr [rbx]
000000014035e7ec mov      edx, dword ptr [rdi]
000000014035e7ee cmp      dword ptr [rbp - 0xd], 2
000000014035e7f2 jne      0x14035e801
000000014035e7f4 cmp      ecx, edx
000000014035e7f6 jae      0x14035e834
000000014035e7f8 lea      r9, [rip + 0x2df0d1]
000000014035e7ff jmp      0x14035e81f
000000014035e801 cmp      dword ptr [rbp - 0xd], 1
000000014035e805 jne      0x14035e814
000000014035e807 cmp      ecx, edx
000000014035e809 jae      0x14035e834
000000014035e80b lea      r9, [rip + 0x2df0ee]
000000014035e812 jmp      0x14035e81f
000000014035e814 cmp      ecx, edx
000000014035e816 jae      0x14035e834
000000014035e818 lea      r9, [rip + 0x2df0f1]
000000014035e81f sub      edx, ecx
000000014035e821 lea      r8, [rip + 0x2df0b8]
000000014035e828 add      rcx, rsi
000000014035e82b call     0x140044426
000000014035e830 add      dword ptr [rbx], eax
000000014035e832 mov      ecx, dword ptr [rbx]
000000014035e834 mov      eax, dword ptr [rdi]
000000014035e836 cmp      ecx, eax
000000014035e838 jae      0x14035e851
000000014035e83a sub      eax, ecx
000000014035e83c lea      r8, [rip + 0x29727d]
000000014035e843 mov      edx, eax
000000014035e845 add      rcx, rsi
000000014035e848 call     0x140044426
000000014035e84d add      dword ptr [rbx], eax
000000014035e84f mov      ecx, dword ptr [rbx]
000000014035e851 inc      r14b
000000014035e854 cmp      r14b, 2
000000014035e858 jb       0x14035df59
000000014035e85e mov      r15b, byte ptr [rbp - 0x51]
000000014035e862 inc      r15b
000000014035e865 mov      byte ptr [rbp - 0x51], r15b
000000014035e869 cmp      r15b, 2
000000014035e86d jb       0x14035df16
000000014035e873 mov      rcx, qword ptr [rbp + 0xf]
000000014035e877 xor      rcx, rsp
000000014035e87a call     0x1405f45b0
000000014035e87f mov      rbx, qword ptr [rsp + 0xe8]
000000014035e887 add      rsp, 0xa0
000000014035e88e pop      r15
000000014035e890 pop      r14
000000014035e892 pop      r13
000000014035e894 pop      r12
000000014035e896 pop      rdi
000000014035e897 pop      rsi
000000014035e898 pop      rbp
000000014035e899 ret      