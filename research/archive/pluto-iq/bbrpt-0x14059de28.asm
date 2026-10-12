000000014059de28 mov      qword ptr [rsp + 8], rbx
000000014059de2d mov      qword ptr [rsp + 0x10], rsi
000000014059de32 push     rdi
000000014059de33 sub      rsp, 0x30
000000014059de37 mov      rbx, rcx
000000014059de3a cmp      edx, 7
000000014059de3d ja       0x14059e12e
000000014059de43 je       0x14059e0ae
000000014059de49 mov      eax, edx
000000014059de4b sub      eax, 1
000000014059de4e je       0x14059e04c
000000014059de54 sub      eax, 1
000000014059de57 je       0x14059dfea
000000014059de5d sub      eax, 2
000000014059de60 je       0x14059df75
000000014059de66 sub      eax, 1
000000014059de69 je       0x14059df13
000000014059de6f cmp      eax, 1
000000014059de72 jne      0x14059e14e
000000014059de78 mov      rax, qword ptr [rcx + 0x18]
000000014059de7c lea      r8, [rip + 0xcf92d]
000000014059de83 mov      rcx, qword ptr [rcx + 8]
000000014059de87 mov      esi, 1
000000014059de8c mov      edx, esi
000000014059de8e mov      rax, qword ptr [rax + 0x118]
000000014059de95 call     qword ptr [rip + 0xe645d]
000000014059de9b mov      rax, qword ptr [rbx + 0x18]
000000014059de9f lea      r8, [rip + 0xcf8ca]
000000014059dea6 mov      rcx, qword ptr [rbx + 8]
000000014059deaa mov      edx, esi
000000014059deac mov      rax, qword ptr [rax + 0x118]
000000014059deb3 call     qword ptr [rip + 0xe643f]
000000014059deb9 lea      edx, [rsi + 2]
000000014059debc mov      rcx, rbx
000000014059debf call     0x14059fafc
000000014059dec4 test     eax, eax
000000014059dec6 jne      0x14059e566
000000014059decc lea      edx, [rsi + 3]
000000014059decf mov      rcx, rbx
000000014059ded2 call     0x14059fafc
000000014059ded7 test     eax, eax
000000014059ded9 jne      0x14059e566
000000014059dedf lea      edx, [rsi + 4]
000000014059dee2 mov      rcx, rbx
000000014059dee5 call     0x14059fafc
000000014059deea test     eax, eax
000000014059deec jne      0x14059e566
000000014059def2 lea      edx, [rsi + 5]
000000014059def5 mov      rcx, rbx
000000014059def8 call     0x14059fafc
000000014059defd mov      edi, eax
000000014059deff test     eax, eax
000000014059df01 jne      0x14059e566
000000014059df07 lea      r8, [rip + 0xcf882]
000000014059df0e jmp      0x14059e54d
000000014059df13 mov      rax, qword ptr [rcx + 0x18]
000000014059df17 lea      r8, [rip + 0xcf9a2]
000000014059df1e mov      rcx, qword ptr [rcx + 8]
000000014059df22 mov      esi, 1
000000014059df27 mov      edx, esi
000000014059df29 mov      rax, qword ptr [rax + 0x118]
000000014059df30 call     qword ptr [rip + 0xe63c2]
000000014059df36 mov      rax, qword ptr [rbx + 0x18]
000000014059df3a lea      r8, [rip + 0xcf99f]
000000014059df41 mov      rcx, qword ptr [rbx + 8]
000000014059df45 mov      edx, esi
000000014059df47 mov      rax, qword ptr [rax + 0x118]
000000014059df4e call     qword ptr [rip + 0xe63a4]
000000014059df54 lea      edx, [rsi + 0x19]
000000014059df57 mov      rcx, rbx
000000014059df5a call     0x14059fafc
000000014059df5f mov      edi, eax
000000014059df61 test     eax, eax
000000014059df63 jne      0x14059e566
000000014059df69 lea      r8, [rip + 0xcf9a0]
000000014059df70 jmp      0x14059e54d
000000014059df75 mov      rax, qword ptr [rcx + 0x18]
000000014059df79 lea      r8, [rip + 0xe1eb0]
000000014059df80 mov      rcx, qword ptr [rcx + 8]
000000014059df84 mov      esi, 1
000000014059df89 mov      edx, esi
000000014059df8b mov      rax, qword ptr [rax + 0x118]
000000014059df92 call     qword ptr [rip + 0xe6360]
000000014059df98 mov      rax, qword ptr [rbx + 0x18]
000000014059df9c lea      r8, [rip + 0xe1ebd]
000000014059dfa3 mov      rcx, qword ptr [rbx + 8]
000000014059dfa7 mov      edx, esi
000000014059dfa9 mov      rax, qword ptr [rax + 0x118]
000000014059dfb0 call     qword ptr [rip + 0xe6342]
000000014059dfb6 lea      edx, [rsi + 0xf]
000000014059dfb9 mov      rcx, rbx
000000014059dfbc call     0x14059fafc
000000014059dfc1 test     eax, eax
000000014059dfc3 jne      0x14059e566
000000014059dfc9 lea      edx, [rsi + 0x11]
000000014059dfcc mov      rcx, rbx
000000014059dfcf call     0x14059fafc
000000014059dfd4 mov      edi, eax
000000014059dfd6 test     eax, eax
000000014059dfd8 jne      0x14059e566
000000014059dfde lea      r8, [rip + 0xe1e9b]
000000014059dfe5 jmp      0x14059e54d
000000014059dfea mov      rax, qword ptr [rcx + 0x18]
000000014059dfee lea      r8, [rip + 0xcf86b]
000000014059dff5 mov      rcx, qword ptr [rcx + 8]
000000014059dff9 mov      esi, 1
000000014059dffe mov      edx, esi
000000014059e000 mov      rax, qword ptr [rax + 0x118]
000000014059e007 call     qword ptr [rip + 0xe62eb]
000000014059e00d mov      rax, qword ptr [rbx + 0x18]
000000014059e011 lea      r8, [rip + 0xcf868]
000000014059e018 mov      rcx, qword ptr [rbx + 8]
000000014059e01c mov      edx, esi
000000014059e01e mov      rax, qword ptr [rax + 0x118]
000000014059e025 call     qword ptr [rip + 0xe62cd]
000000014059e02b lea      edx, [rsi + 0x17]
000000014059e02e mov      rcx, rbx
000000014059e031 call     0x14059fafc
000000014059e036 mov      edi, eax
000000014059e038 test     eax, eax
000000014059e03a jne      0x14059e566
000000014059e040 lea      r8, [rip + 0xcf859]
000000014059e047 jmp      0x14059e54d
000000014059e04c mov      rax, qword ptr [rcx + 0x18]
000000014059e050 lea      r8, [rip + 0xcf779]
000000014059e057 mov      rcx, qword ptr [rcx + 8]
000000014059e05b mov      esi, 1
000000014059e060 mov      edx, esi
000000014059e062 mov      rax, qword ptr [rax + 0x118]
000000014059e069 call     qword ptr [rip + 0xe6289]
000000014059e06f mov      rax, qword ptr [rbx + 0x18]
000000014059e073 lea      r8, [rip + 0xcf786]
000000014059e07a mov      rcx, qword ptr [rbx + 8]
000000014059e07e mov      edx, esi
000000014059e080 mov      rax, qword ptr [rax + 0x118]
000000014059e087 call     qword ptr [rip + 0xe626b]
000000014059e08d lea      edx, [rsi + 0x15]
000000014059e090 mov      rcx, rbx
000000014059e093 call     0x14059fafc
000000014059e098 mov      edi, eax
000000014059e09a test     eax, eax
000000014059e09c jne      0x14059e566
000000014059e0a2 lea      r8, [rip + 0xcf787]
000000014059e0a9 jmp      0x14059e54d
000000014059e0ae mov      rax, qword ptr [rcx + 0x18]
000000014059e0b2 lea      r8, [rip + 0xcf697]
000000014059e0b9 mov      rcx, qword ptr [rcx + 8]
000000014059e0bd mov      esi, 1
000000014059e0c2 mov      edx, esi
000000014059e0c4 mov      rax, qword ptr [rax + 0x118]
000000014059e0cb call     qword ptr [rip + 0xe6227]
000000014059e0d1 mov      rax, qword ptr [rbx + 0x18]
000000014059e0d5 lea      r8, [rip + 0xcf694]
000000014059e0dc mov      rcx, qword ptr [rbx + 8]
000000014059e0e0 mov      edx, esi
000000014059e0e2 mov      rax, qword ptr [rax + 0x118]
000000014059e0e9 call     qword ptr [rip + 0xe6209]
000000014059e0ef xor      edx, edx
000000014059e0f1 mov      rcx, rbx
000000014059e0f4 call     0x14059fafc
000000014059e0f9 test     eax, eax
000000014059e0fb jne      0x14059e566
000000014059e101 mov      edx, esi
000000014059e103 mov      rcx, rbx
000000014059e106 call     0x14059fafc
000000014059e10b test     eax, eax
000000014059e10d jne      0x14059e566
000000014059e113 lea      edx, [rsi + 1]
000000014059e116 mov      rcx, rbx
000000014059e119 call     0x14059fafc
000000014059e11e test     eax, eax
000000014059e120 jne      0x14059e566
000000014059e126 lea      edx, [rsi + 0xd]
000000014059e129 jmp      0x14059def5
000000014059e12e cmp      edx, 0xa
000000014059e131 je       0x14059e4f2
000000014059e137 cmp      edx, 0x17
000000014059e13a je       0x14059e31b
000000014059e140 cmp      edx, 0x19
000000014059e143 je       0x14059e263
000000014059e149 cmp      edx, 0x1b
000000014059e14c je       0x14059e17c
000000014059e14e mov      rax, qword ptr [rcx + 0x18]
000000014059e152 lea      r8, [rip + 0xcf987]
000000014059e159 mov      rcx, qword ptr [rcx + 8]
000000014059e15d mov      r9d, edx
000000014059e160 mov      edx, 2
000000014059e165 mov      rax, qword ptr [rax + 0x118]
000000014059e16c call     qword ptr [rip + 0xe6186]
000000014059e172 mov      edi, 0x41
000000014059e177 jmp      0x14059e564
000000014059e17c mov      rax, qword ptr [rcx + 0x18]
000000014059e180 lea      r8, [rip + 0xe1d19]
000000014059e187 mov      rcx, qword ptr [rcx + 8]
000000014059e18b mov      esi, 1
000000014059e190 mov      edx, esi
000000014059e192 mov      rax, qword ptr [rax + 0x118]
000000014059e199 call     qword ptr [rip + 0xe6159]
000000014059e19f mov      rax, qword ptr [rbx + 0x18]
000000014059e1a3 lea      r8, [rip + 0xe1d16]
000000014059e1aa mov      rcx, qword ptr [rbx + 8]
000000014059e1ae mov      edx, esi
000000014059e1b0 mov      rax, qword ptr [rax + 0x118]
000000014059e1b7 call     qword ptr [rip + 0xe613b]
000000014059e1bd lea      edx, [rsi + 0x5b]
000000014059e1c0 mov      rcx, rbx
000000014059e1c3 call     0x14059fafc
000000014059e1c8 test     eax, eax
000000014059e1ca jne      0x14059e566
000000014059e1d0 lea      edx, [rsi + 0x5c]
000000014059e1d3 mov      rcx, rbx
000000014059e1d6 call     0x14059fafc
000000014059e1db test     eax, eax
000000014059e1dd jne      0x14059e566
000000014059e1e3 lea      edx, [rsi + 0x5d]
000000014059e1e6 mov      rcx, rbx
000000014059e1e9 call     0x14059fafc
000000014059e1ee test     eax, eax
000000014059e1f0 jne      0x14059e566
000000014059e1f6 lea      edx, [rsi + 0x5e]
000000014059e1f9 mov      rcx, rbx
000000014059e1fc call     0x14059fafc
000000014059e201 test     eax, eax
000000014059e203 jne      0x14059e566
000000014059e209 lea      edx, [rsi + 0x5f]
000000014059e20c mov      rcx, rbx
000000014059e20f call     0x14059fafc
000000014059e214 test     eax, eax
000000014059e216 jne      0x14059e566
000000014059e21c lea      edx, [rsi + 0x60]
000000014059e21f mov      rcx, rbx
000000014059e222 call     0x14059fafc
000000014059e227 test     eax, eax
000000014059e229 jne      0x14059e566
000000014059e22f lea      edx, [rsi + 0x61]
000000014059e232 mov      rcx, rbx
000000014059e235 call     0x14059fafc
000000014059e23a test     eax, eax
000000014059e23c jne      0x14059e566
000000014059e242 lea      edx, [rsi + 0x62]
000000014059e245 mov      rcx, rbx
000000014059e248 call     0x14059fafc
000000014059e24d mov      edi, eax
000000014059e24f test     eax, eax
000000014059e251 jne      0x14059e566
000000014059e257 lea      r8, [rip + 0xcfac2]
000000014059e25e jmp      0x14059e54d
000000014059e263 mov      rax, qword ptr [rcx + 0x18]
000000014059e267 lea      r8, [rip + 0xcf762]
000000014059e26e mov      rcx, qword ptr [rcx + 8]
000000014059e272 mov      esi, 1
000000014059e277 mov      edx, esi
000000014059e279 mov      rax, qword ptr [rax + 0x118]
000000014059e280 call     qword ptr [rip + 0xe6072]
000000014059e286 mov      rax, qword ptr [rbx + 0x18]
000000014059e28a lea      r8, [rip + 0xe1c4f]
000000014059e291 mov      rcx, qword ptr [rbx + 8]
000000014059e295 mov      edx, esi
000000014059e297 mov      rax, qword ptr [rax + 0x118]
000000014059e29e call     qword ptr [rip + 0xe6054]
000000014059e2a4 mov      edx, 0x95
000000014059e2a9 mov      rcx, rbx
000000014059e2ac call     0x14059fafc
000000014059e2b1 test     eax, eax
000000014059e2b3 jne      0x14059e566
000000014059e2b9 mov      edx, 0x96
000000014059e2be mov      rcx, rbx
000000014059e2c1 call     0x14059fafc
000000014059e2c6 test     eax, eax
000000014059e2c8 jne      0x14059e566
000000014059e2ce mov      edx, 0x97
000000014059e2d3 mov      rcx, rbx
000000014059e2d6 call     0x14059fafc
000000014059e2db test     eax, eax
000000014059e2dd jne      0x14059e566
000000014059e2e3 mov      edx, 0x98
000000014059e2e8 mov      rcx, rbx
000000014059e2eb call     0x14059fafc
000000014059e2f0 test     eax, eax
000000014059e2f2 jne      0x14059e566
000000014059e2f8 mov      edx, 0x99
000000014059e2fd mov      rcx, rbx
000000014059e300 call     0x14059fafc
000000014059e305 mov      edi, eax
000000014059e307 test     eax, eax
000000014059e309 jne      0x14059e566
000000014059e30f lea      r8, [rip + 0xe1bfa]
000000014059e316 jmp      0x14059e54d
000000014059e31b mov      rax, qword ptr [rcx + 0x18]
000000014059e31f lea      r8, [rip + 0xcf61a]
000000014059e326 mov      rcx, qword ptr [rcx + 8]
000000014059e32a mov      esi, 1
000000014059e32f mov      edx, esi
000000014059e331 mov      rax, qword ptr [rax + 0x118]
000000014059e338 call     qword ptr [rip + 0xe5fba]
000000014059e33e mov      rax, qword ptr [rbx + 0x18]
000000014059e342 lea      r8, [rip + 0xcf627]
000000014059e349 mov      rcx, qword ptr [rbx + 8]
000000014059e34d mov      edx, esi
000000014059e34f mov      rax, qword ptr [rax + 0x118]
000000014059e356 call     qword ptr [rip + 0xe5f9c]
000000014059e35c lea      edx, [rsi + 0x38]
000000014059e35f mov      rcx, rbx
000000014059e362 call     0x14059fafc
000000014059e367 test     eax, eax
000000014059e369 jne      0x14059e566
000000014059e36f lea      edx, [rsi + 0x39]
000000014059e372 mov      rcx, rbx
000000014059e375 call     0x14059fafc
000000014059e37a test     eax, eax
000000014059e37c jne      0x14059e566
000000014059e382 lea      edx, [rsi + 0x3a]
000000014059e385 mov      rcx, rbx
000000014059e388 call     0x14059fafc
000000014059e38d test     eax, eax
000000014059e38f jne      0x14059e566
000000014059e395 lea      edx, [rsi + 0x3b]
000000014059e398 mov      rcx, rbx
000000014059e39b call     0x14059fafc
000000014059e3a0 test     eax, eax
000000014059e3a2 jne      0x14059e566
000000014059e3a8 lea      edx, [rsi + 0x3c]
000000014059e3ab mov      rcx, rbx
000000014059e3ae call     0x14059fafc
000000014059e3b3 test     eax, eax
000000014059e3b5 jne      0x14059e566
000000014059e3bb lea      edx, [rsi + 0x3d]
000000014059e3be mov      rcx, rbx
000000014059e3c1 call     0x14059fafc
000000014059e3c6 test     eax, eax
000000014059e3c8 jne      0x14059e566
000000014059e3ce lea      edx, [rsi + 0x3e]
000000014059e3d1 mov      rcx, rbx
000000014059e3d4 call     0x14059fafc
000000014059e3d9 test     eax, eax
000000014059e3db jne      0x14059e566
000000014059e3e1 lea      edx, [rsi + 0x3f]
000000014059e3e4 mov      rcx, rbx
000000014059e3e7 call     0x14059fafc
000000014059e3ec test     eax, eax
000000014059e3ee jne      0x14059e566
000000014059e3f4 lea      edx, [rsi + 0x40]
000000014059e3f7 mov      rcx, rbx
000000014059e3fa call     0x14059fafc
000000014059e3ff test     eax, eax
000000014059e401 jne      0x14059e566
000000014059e407 lea      edx, [rsi + 0x41]
000000014059e40a mov      rcx, rbx
000000014059e40d call     0x14059fafc
000000014059e412 test     eax, eax
000000014059e414 jne      0x14059e566
000000014059e41a lea      edx, [rsi + 0x42]
000000014059e41d mov      rcx, rbx
000000014059e420 call     0x14059fafc
000000014059e425 test     eax, eax
000000014059e427 jne      0x14059e566
000000014059e42d lea      edx, [rsi + 0x43]
000000014059e430 mov      rcx, rbx
000000014059e433 call     0x14059fafc
000000014059e438 test     eax, eax
000000014059e43a jne      0x14059e566
000000014059e440 lea      edx, [rsi + 0x44]
000000014059e443 mov      rcx, rbx
000000014059e446 call     0x14059fafc
000000014059e44b test     eax, eax
000000014059e44d jne      0x14059e566
000000014059e453 lea      edx, [rsi + 0x45]
000000014059e456 mov      rcx, rbx
000000014059e459 call     0x14059fafc
000000014059e45e test     eax, eax
000000014059e460 jne      0x14059e566
000000014059e466 lea      edx, [rsi + 0x46]
000000014059e469 mov      rcx, rbx
000000014059e46c call     0x14059fafc
000000014059e471 test     eax, eax
000000014059e473 jne      0x14059e566
000000014059e479 lea      edx, [rsi + 0x47]
000000014059e47c mov      rcx, rbx
000000014059e47f call     0x14059fafc
000000014059e484 test     eax, eax
000000014059e486 jne      0x14059e566
000000014059e48c lea      edx, [rsi + 0x48]
000000014059e48f mov      rcx, rbx
000000014059e492 call     0x14059fafc
000000014059e497 test     eax, eax
000000014059e499 jne      0x14059e566
000000014059e49f lea      edx, [rsi + 0x49]
000000014059e4a2 mov      rcx, rbx
000000014059e4a5 call     0x14059fafc
000000014059e4aa test     eax, eax
000000014059e4ac jne      0x14059e566
000000014059e4b2 lea      edx, [rsi + 0x4a]
000000014059e4b5 mov      rcx, rbx
000000014059e4b8 call     0x14059fafc
000000014059e4bd test     eax, eax
000000014059e4bf jne      0x14059e566
000000014059e4c5 lea      edx, [rsi + 0x4b]
000000014059e4c8 mov      rcx, rbx
000000014059e4cb call     0x14059fafc
000000014059e4d0 test     eax, eax
000000014059e4d2 jne      0x14059e566
000000014059e4d8 lea      edx, [rsi + 0x59]
000000014059e4db mov      rcx, rbx
000000014059e4de call     0x14059fafc
000000014059e4e3 mov      edi, eax
000000014059e4e5 test     eax, eax
000000014059e4e7 jne      0x14059e566
000000014059e4e9 lea      r8, [rip + 0xcf4b0]
000000014059e4f0 jmp      0x14059e54d
000000014059e4f2 mov      rax, qword ptr [rcx + 0x18]
000000014059e4f6 lea      r8, [rip + 0xcf553]
000000014059e4fd mov      rcx, qword ptr [rcx + 8]
000000014059e501 mov      esi, 1
000000014059e506 mov      edx, esi
000000014059e508 mov      rax, qword ptr [rax + 0x118]
000000014059e50f call     qword ptr [rip + 0xe5de3]
000000014059e515 mov      rax, qword ptr [rbx + 0x18]
000000014059e519 lea      r8, [rip + 0xcf560]
000000014059e520 mov      rcx, qword ptr [rbx + 8]
000000014059e524 mov      edx, esi
000000014059e526 mov      rax, qword ptr [rax + 0x118]
000000014059e52d call     qword ptr [rip + 0xe5dc5]
000000014059e533 mov      edx, 0xc4
000000014059e538 mov      rcx, rbx
000000014059e53b call     0x14059fafc
000000014059e540 mov      edi, eax
000000014059e542 test     eax, eax
000000014059e544 jne      0x14059e566
000000014059e546 lea      r8, [rip + 0xcf563]
000000014059e54d mov      rax, qword ptr [rbx + 0x18]
000000014059e551 mov      edx, esi
000000014059e553 mov      rcx, qword ptr [rbx + 8]
000000014059e557 mov      rax, qword ptr [rax + 0x118]
000000014059e55e call     qword ptr [rip + 0xe5d94]
000000014059e564 mov      eax, edi
000000014059e566 mov      rbx, qword ptr [rsp + 0x40]
000000014059e56b mov      rsi, qword ptr [rsp + 0x48]
000000014059e570 add      rsp, 0x30
000000014059e574 pop      rdi
000000014059e575 ret      