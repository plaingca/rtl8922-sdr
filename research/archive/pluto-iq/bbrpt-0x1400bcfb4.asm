00000001400bcfb4 mov      qword ptr [rsp + 0x18], rbx
00000001400bcfb9 push     rbp
00000001400bcfba push     rsi
00000001400bcfbb push     rdi
00000001400bcfbc push     r12
00000001400bcfbe push     r13
00000001400bcfc0 push     r14
00000001400bcfc2 push     r15
00000001400bcfc4 sub      rsp, 0x20
00000001400bcfc8 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400bcfcf lea      r13, [rdx + 0x158]
00000001400bcfd6 xor      ebp, ebp
00000001400bcfd8 lea      rbx, [r13 + 0x20]
00000001400bcfdc mov      r12, rdx
00000001400bcfdf mov      dword ptr [rsp + 0x60], ebp
00000001400bcfe3 mov      rsi, rcx
00000001400bcfe6 xor      r9d, r9d
00000001400bcfe9 mov      rdi, qword ptr [rax]
00000001400bcfec xor      r8d, r8d
00000001400bcfef mov      rax, qword ptr [r13 + 0xf0]
00000001400bcff6 lea      edx, [rbp + 0x20]
00000001400bcff9 mov      rcx, rbx
00000001400bcffc mov      qword ptr [rsp + 0x68], rdi
00000001400bd001 mov      r14, qword ptr [rax]
00000001400bd004 call     0x1401dd494
00000001400bd009 xor      r9d, r9d
00000001400bd00c lea      edx, [rbp + 0x1f]
00000001400bd00f xor      r8d, r8d
00000001400bd012 mov      rcx, rbx
00000001400bd015 call     0x1401dd494
00000001400bd01a xor      r9d, r9d
00000001400bd01d lea      edx, [rbp + 0x1d]
00000001400bd020 xor      r8d, r8d
00000001400bd023 mov      rcx, rbx
00000001400bd026 call     0x1401dd494
00000001400bd02b xor      r9d, r9d
00000001400bd02e lea      edx, [rbp + 0x1e]
00000001400bd031 xor      r8d, r8d
00000001400bd034 mov      rcx, rbx
00000001400bd037 call     0x1401dd494
00000001400bd03c movzx    edx, word ptr [rbx + 0x3c]
00000001400bd040 mov      rcx, qword ptr [rdi + 0x20708]
00000001400bd047 call     0x1401b71e0
00000001400bd04c mov      r15, rax
00000001400bd04f test     rax, rax
00000001400bd052 jne      0x1400bd09f
00000001400bd054 mov      rcx, qword ptr [rip + 0x862fa5]
00000001400bd05b lea      rax, [rip + 0x862f9e]
00000001400bd062 cmp      rcx, rax
00000001400bd065 je       0x1400bd2d9
00000001400bd06b cmp      byte ptr [rcx + 0x29], 3
00000001400bd06f jb       0x1400bd2d9
00000001400bd075 mov      eax, dword ptr [rcx + 0x2c]
00000001400bd078 test     al, 0x20
00000001400bd07a je       0x1400bd2d9
00000001400bd080 mov      rcx, qword ptr [rcx + 0x18]
00000001400bd084 lea      edx, [rbp + 0x69]
00000001400bd087 lea      r9, [rip + 0x540742]
00000001400bd08e lea      r8, [rip + 0x5d5c7b]
00000001400bd095 call     0x140008874
00000001400bd09a jmp      0x1400bd2d9
00000001400bd09f mov      cl, byte ptr [r14]
00000001400bd0a2 mov      al, cl
00000001400bd0a4 and      al, 0xc
00000001400bd0a6 cmp      al, 8
00000001400bd0a8 je       0x1400bd0d9
00000001400bd0aa and      cl, 0xfc
00000001400bd0ad cmp      cl, 0x54
00000001400bd0b0 je       0x1400bd0cb
00000001400bd0b2 mov      rcx, r14
00000001400bd0b5 call     0x14008e8a0
00000001400bd0ba test     al, al
00000001400bd0bc jne      0x1400bd0cb
00000001400bd0be mov      al, byte ptr [r14]
00000001400bd0c1 and      al, 0xfc
00000001400bd0c3 cmp      al, 0x44
00000001400bd0c5 jne      0x1400bd2d9
00000001400bd0cb mov      edx, 7
00000001400bd0d0 lea      r8d, [rdx - 6]
00000001400bd0d4 jmp      0x1400bd2ce
00000001400bd0d9 mov      edi, 1
00000001400bd0de cmp      byte ptr [rbx + 0x79], bpl
00000001400bd0e2 jne      0x1400bd1d5
00000001400bd0e8 cmp      byte ptr [rbx + 0x7a], bpl
00000001400bd0ec jne      0x1400bd1d5
00000001400bd0f2 mov      ebp, dword ptr [r15 + 0x468]
00000001400bd0f9 lea      rdx, [rsp + 0x60]
00000001400bd0fe mov      r8, r15
00000001400bd101 shr      ebp, 0xa
00000001400bd104 mov      rcx, rsi
00000001400bd107 call     0x1400bfbd8
00000001400bd10c cmp      dword ptr [rsp + 0x60], 0
00000001400bd111 jne      0x1400bd1ac
00000001400bd117 mov      rcx, rsi
00000001400bd11a call     0x1400dba60
00000001400bd11f mov      edx, dword ptr [r13 + 0xe4]
00000001400bd126 movzx    eax, ax
00000001400bd129 cmp      edx, eax
00000001400bd12b jbe      0x1400bd133
00000001400bd12d cmp      byte ptr [rbx + 0x5d], 0
00000001400bd131 je       0x1400bd1a8
00000001400bd133 mov      al, byte ptr [r14]
00000001400bd136 and      al, 0xc
00000001400bd138 cmp      al, 8
00000001400bd13a jne      0x1400bd141
00000001400bd13c cmp      ebp, 0x32
00000001400bd13f jae      0x1400bd166
00000001400bd141 mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400bd148 mov      rcx, qword ptr [rax]
00000001400bd14b mov      rax, qword ptr [rcx + 0x20710]
00000001400bd152 cmp      byte ptr [rax + 0x96d2], 0
00000001400bd159 je       0x1400bd170
00000001400bd15b movzx    eax, word ptr [rax + 0x96d4]
00000001400bd162 cmp      edx, eax
00000001400bd164 jbe      0x1400bd1ac
00000001400bd166 mov      dword ptr [rsp + 0x60], 2
00000001400bd16e jmp      0x1400bd1ac
00000001400bd170 cmp      byte ptr [rsi + 0xbbce2], 0
00000001400bd177 je       0x1400bd1ac
00000001400bd179 movzx    eax, word ptr [rbx + 0x70]
00000001400bd17d cmp      eax, 0x16
00000001400bd180 ja       0x1400bd18c
00000001400bd182 mov      ecx, 0x400814
00000001400bd187 bt       ecx, eax
00000001400bd18a jb       0x1400bd1ac
00000001400bd18c lea      rdx, [rsp + 0x60]
00000001400bd191 mov      rcx, rsi
00000001400bd194 call     0x1400be788
00000001400bd199 test     al, al
00000001400bd19b jne      0x1400bd1ac
00000001400bd19d mov      eax, dword ptr [r15 + 0xa48]
00000001400bd1a4 test     al, 0x38
00000001400bd1a6 je       0x1400bd1ac
00000001400bd1a8 mov      dword ptr [rsp + 0x60], edi
00000001400bd1ac lea      rax, [r12 + 0x601]
00000001400bd1b4 cmp      byte ptr [rax], 3
00000001400bd1b7 mov      r8, rax
00000001400bd1ba jne      0x1400bd1f0
00000001400bd1bc cmp      dword ptr [rsi + 0xc0ba0], 2
00000001400bd1c3 jne      0x1400bd1f0
00000001400bd1c5 cmp      byte ptr [rbx + 0x76], 0
00000001400bd1c9 je       0x1400bd1f0
00000001400bd1cb mov      dword ptr [rsp + 0x60], 2
00000001400bd1d3 jmp      0x1400bd1f0
00000001400bd1d5 mov      r9, r15
00000001400bd1d8 lea      r8, [rsp + 0x60]
00000001400bd1dd mov      rdx, r13
00000001400bd1e0 mov      rcx, rsi
00000001400bd1e3 call     0x1400ba90c
00000001400bd1e8 lea      r8, [r12 + 0x601]
00000001400bd1f0 mov      r8b, byte ptr [r8]
00000001400bd1f3 lea      r9, [rsp + 0x60]
00000001400bd1f8 mov      rdx, r14
00000001400bd1fb mov      rcx, rsi
00000001400bd1fe call     0x1400bf8f0
00000001400bd203 mov      ebp, dword ptr [rsp + 0x60]
00000001400bd207 cmp      ebp, edi
00000001400bd209 jne      0x1400bd232
00000001400bd20b xor      r9d, r9d
00000001400bd20e mov      r8d, edi
00000001400bd211 mov      rcx, rbx
00000001400bd214 lea      edx, [r9 + 0x20]
00000001400bd218 call     0x1401dd494
00000001400bd21d xor      r9d, r9d
00000001400bd220 xor      r8d, r8d
00000001400bd223 mov      edx, 0x1f
00000001400bd228 mov      rcx, rbx
00000001400bd22b call     0x1401dd494
00000001400bd230 jmp      0x1400bd27b
00000001400bd232 cmp      ebp, 2
00000001400bd235 jne      0x1400bd250
00000001400bd237 xor      r9d, r9d
00000001400bd23a lea      edx, [rbp + 0x1e]
00000001400bd23d xor      r8d, r8d
00000001400bd240 mov      rcx, rbx
00000001400bd243 call     0x1401dd494
00000001400bd248 xor      r9d, r9d
00000001400bd24b mov      r8d, edi
00000001400bd24e jmp      0x1400bd223
00000001400bd250 cmp      ebp, 3
00000001400bd253 jne      0x1400bd277
00000001400bd255 xor      r9d, r9d
00000001400bd258 lea      edx, [rbp + 0x1d]
00000001400bd25b mov      r8d, edi
00000001400bd25e mov      rcx, rbx
00000001400bd261 call     0x1401dd494
00000001400bd266 xor      r9d, r9d
00000001400bd269 lea      edx, [rbp + 0x1a]
00000001400bd26c mov      r8d, edi
00000001400bd26f mov      rcx, rbx
00000001400bd272 call     0x1401dd494
00000001400bd277 test     ebp, ebp
00000001400bd279 je       0x1400bd292
00000001400bd27b movzx    r8d, byte ptr [rsi + 0x1137d9]
00000001400bd283 xor      r9d, r9d
00000001400bd286 mov      rcx, rbx
00000001400bd289 lea      edx, [r9 + 0x1e]
00000001400bd28d call     0x1401dd494
00000001400bd292 mov      rax, qword ptr [rsp + 0x68]
00000001400bd297 cmp      byte ptr [rax + 0xaa440], dil
00000001400bd29e jne      0x1400bd2bb
00000001400bd2a0 cmp      byte ptr [rbx + 0x8d], 0
00000001400bd2a7 jne      0x1400bd2bb
00000001400bd2a9 xor      r9d, r9d
00000001400bd2ac mov      r8d, edi
00000001400bd2af mov      rcx, rbx
00000001400bd2b2 lea      edx, [r9 + 0x1e]
00000001400bd2b6 call     0x1401dd494
00000001400bd2bb movzx    eax, byte ptr [rsi + 0x1137db]
00000001400bd2c2 cmp      al, 0xff
00000001400bd2c4 je       0x1400bd2d9
00000001400bd2c6 mov      r8d, eax
00000001400bd2c9 mov      edx, 0x1e
00000001400bd2ce xor      r9d, r9d
00000001400bd2d1 mov      rcx, rbx
00000001400bd2d4 call     0x1401dd494
00000001400bd2d9 mov      rbx, qword ptr [rsp + 0x70]
00000001400bd2de add      rsp, 0x20
00000001400bd2e2 pop      r15
00000001400bd2e4 pop      r14
00000001400bd2e6 pop      r13
00000001400bd2e8 pop      r12
00000001400bd2ea pop      rdi
00000001400bd2eb pop      rsi
00000001400bd2ec pop      rbp
00000001400bd2ed ret      