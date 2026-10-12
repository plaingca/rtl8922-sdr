00000001402a1e9c mov      r11, rsp
00000001402a1e9f mov      qword ptr [r11 + 0x20], rbx
00000001402a1ea3 push     rbp
00000001402a1ea4 push     rsi
00000001402a1ea5 push     rdi
00000001402a1ea6 push     r12
00000001402a1ea8 push     r13
00000001402a1eaa push     r14
00000001402a1eac push     r15
00000001402a1eae sub      rsp, 0x50
00000001402a1eb2 movzx    eax, byte ptr [rdx + 0x138]
00000001402a1eb9 xor      r12d, r12d
00000001402a1ebc mov      rdi, qword ptr [rcx + 0x798]
00000001402a1ec3 mov      r15, rdx
00000001402a1ec6 imul     rsi, rax, 0x58
00000001402a1eca mov      r13, rcx
00000001402a1ecd mov      ebp, 1
00000001402a1ed2 add      rsi, rdx
00000001402a1ed5 mov      r14d, 0x12c
00000001402a1edb mov      rax, qword ptr [rsi + 8]
00000001402a1edf movzx    ebx, byte ptr [rax + 0x19]
00000001402a1ee3 mov      dword ptr [r11 + 0x10], r12d
00000001402a1ee7 mov      dword ptr [r11 + 0x18], r12d
00000001402a1eeb mov      word ptr [r11 + 8], r12w
00000001402a1ef0 mov      rdx, qword ptr [rsi + 8]
00000001402a1ef4 call     0x1401b7324
00000001402a1ef9 imul     rcx, rbx, 0x538
00000001402a1f00 mov      r8, rax
00000001402a1f03 mov      edx, dword ptr [rcx + rdi + 0x8a98]
00000001402a1f0a cmp      edx, 2
00000001402a1f0d jne      0x1402a1f2a
00000001402a1f0f mov      rax, qword ptr [rsi]
00000001402a1f12 mov      ecx, dword ptr [rax + 8]
00000001402a1f15 lea      eax, [rcx - 2]
00000001402a1f18 test     eax, 0xfffffff6
00000001402a1f1d jne      0x1402a1f3c
00000001402a1f1f cmp      ecx, 0xb
00000001402a1f22 je       0x1402a1f3c
00000001402a1f24 lea      r14d, [rbp + 0x63]
00000001402a1f28 jmp      0x1402a1f3c
00000001402a1f2a mov      rax, r14
00000001402a1f2d cmp      edx, ebp
00000001402a1f2f mov      r14d, 0x64
00000001402a1f35 cmove    rax, r14
00000001402a1f39 mov      r14, rax
00000001402a1f3c mov      rax, qword ptr [rsi + 8]
00000001402a1f40 lea      r9, [rsp + 0x98]
00000001402a1f48 mov      r8b, byte ptr [r8 + 0x2e]
00000001402a1f4c mov      rcx, qword ptr [r13 + 0x8d08]
00000001402a1f53 movzx    edx, byte ptr [rax + 0x19]
00000001402a1f57 lea      rax, [rsp + 0xa0]
00000001402a1f5f mov      qword ptr [rsp + 0x20], rax
00000001402a1f64 call     0x140249eec
00000001402a1f69 test     eax, eax
00000001402a1f6b je       0x1402a1fc5
00000001402a1f6d mov      rcx, qword ptr [rip + 0x67e08c]
00000001402a1f74 lea      rax, [rip + 0x67e085]
00000001402a1f7b cmp      rcx, rax
00000001402a1f7e je       0x1402a20fd
00000001402a1f84 cmp      byte ptr [rcx + 0x169], 3
00000001402a1f8b jb       0x1402a20fd
00000001402a1f91 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a1f9b je       0x1402a20fd
00000001402a1fa1 mov      edx, 0x74
00000001402a1fa6 mov      rcx, qword ptr [rcx + 0x158]
00000001402a1fad lea      r9, [rip + 0x36c3dc]
00000001402a1fb4 lea      r8, [rip + 0x3f6f95]
00000001402a1fbb call     0x140008874
00000001402a1fc0 jmp      0x1402a20fd
00000001402a1fc5 mov      ebx, dword ptr [rsp + 0x98]
00000001402a1fcc lea      r9, [rsp + 0x90]
00000001402a1fd4 mov      eax, dword ptr [rsp + 0xa0]
00000001402a1fdb mov      rcx, r13
00000001402a1fde mov      rdx, qword ptr [rsi + 8]
00000001402a1fe2 shl      rbx, 0x20
00000001402a1fe6 or       rbx, rax
00000001402a1fe9 mov      r8, rbx
00000001402a1fec call     0x1401b3244
00000001402a1ff1 movsx    ecx, word ptr [r15 + 0xd0]
00000001402a1ff9 movzx    eax, word ptr [rsp + 0x90]
00000001402a2001 movzx    edx, word ptr [rsi + 0x4e]
00000001402a2005 add      eax, ecx
00000001402a2007 shl      eax, 0xa
00000001402a200a shl      rdx, 0xa
00000001402a200e cdqe     
00000001402a2010 mov      rcx, rdx
00000001402a2013 sub      rcx, rax
00000001402a2016 mov      al, r12b
00000001402a2019 add      rcx, rbx
00000001402a201c shl      r14, 0xa
00000001402a2020 lea      r8, [r14 + rbx]
00000001402a2024 cmp      rcx, r8
00000001402a2027 jae      0x1402a2071
00000001402a2029 add      rcx, rdx
00000001402a202c add      al, bpl
00000001402a202f cmp      al, 0xa
00000001402a2031 jb       0x1402a2024
00000001402a2033 mov      rcx, qword ptr [rip + 0x67dfc6]
00000001402a203a lea      rax, [rip + 0x67dfbf]
00000001402a2041 cmp      rcx, rax
00000001402a2044 je       0x1402a20fd
00000001402a204a cmp      byte ptr [rcx + 0x169], 2
00000001402a2051 jb       0x1402a20fd
00000001402a2057 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a2061 je       0x1402a20fd
00000001402a2067 mov      edx, 0x75
00000001402a206c jmp      0x1402a1fa6
00000001402a2071 mov      r11, rcx
00000001402a2074 mov      dword ptr [r15 + 0x144], ecx
00000001402a207b shr      r11, 0x20
00000001402a207f mov      dword ptr [r15 + 0x140], r11d
00000001402a2086 mov      r10, qword ptr [rip + 0x67df73]
00000001402a208d lea      rax, [rip + 0x67df6c]
00000001402a2094 cmp      r10, rax
00000001402a2097 je       0x1402a20fa
00000001402a2099 cmp      byte ptr [r10 + 0x169], 4
00000001402a20a1 jb       0x1402a20fa
00000001402a20a3 test     dword ptr [r10 + 0x16c], 0x4000
00000001402a20ae je       0x1402a20fa
00000001402a20b0 movzx    r8d, word ptr [rsi + 0x4e]
00000001402a20b5 mov      r9, rbx
00000001402a20b8 movzx    eax, word ptr [rsi + 0x30]
00000001402a20bc mov      edx, 0x76
00000001402a20c1 mov      dword ptr [rsp + 0x48], eax
00000001402a20c5 mov      dword ptr [rsp + 0x40], r8d
00000001402a20ca lea      r8, [rip + 0x3f6e7f]
00000001402a20d1 shr      r9, 0x20
00000001402a20d5 mov      dword ptr [rsp + 0x38], ebx
00000001402a20d9 mov      dword ptr [rsp + 0x30], r9d
00000001402a20de lea      r9, [rip + 0x36c2ab]
00000001402a20e5 mov      dword ptr [rsp + 0x28], ecx
00000001402a20e9 mov      rcx, qword ptr [r10 + 0x158]
00000001402a20f0 mov      dword ptr [rsp + 0x20], r11d
00000001402a20f5 call     0x140032bdc
00000001402a20fa mov      ebp, r12d
00000001402a20fd mov      rbx, qword ptr [rsp + 0xa8]
00000001402a2105 mov      eax, ebp
00000001402a2107 add      rsp, 0x50
00000001402a210b pop      r15
00000001402a210d pop      r14
00000001402a210f pop      r13
00000001402a2111 pop      r12
00000001402a2113 pop      rdi
00000001402a2114 pop      rsi
00000001402a2115 pop      rbp
00000001402a2116 ret      