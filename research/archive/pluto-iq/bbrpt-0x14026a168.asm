000000014026a168 mov      qword ptr [rsp + 0x18], rbx
000000014026a16d push     rbp
000000014026a16e push     rsi
000000014026a16f push     rdi
000000014026a170 push     r14
000000014026a172 push     r15
000000014026a174 sub      rsp, 0x1c0
000000014026a17b mov      rax, qword ptr [rip + 0x6bd2de]
000000014026a182 xor      rax, rsp
000000014026a185 mov      qword ptr [rsp + 0x1b0], rax
000000014026a18d mov      r15, qword ptr [rsp + 0x210]
000000014026a195 mov      ebx, edx
000000014026a197 movsxd   r14, r8d
000000014026a19a mov      rdi, rcx
000000014026a19d xor      edx, edx
000000014026a19f lea      rcx, [rsp + 0x40]
000000014026a1a4 mov      r8d, 0x166
000000014026a1aa mov      esi, r9d
000000014026a1ad call     0x1405f4640
000000014026a1b2 mov      rcx, qword ptr [rdi + 0x238]
000000014026a1b9 lea      rdx, [rsp + 0x40]
000000014026a1be mov      r8d, ebx
000000014026a1c1 xor      ebp, ebp
000000014026a1c3 call     0x1403392a8
000000014026a1c8 cmp      r14d, 3
000000014026a1cc jle      0x14026a22c
000000014026a1ce mov      rcx, qword ptr [rip + 0x6b5e2b]
000000014026a1d5 lea      rax, [rip + 0x6b5e24]
000000014026a1dc cmp      rcx, rax
000000014026a1df je       0x14026a222
000000014026a1e1 cmp      byte ptr [rcx + 0x169], 2
000000014026a1e8 jb       0x14026a222
000000014026a1ea mov      eax, dword ptr [rcx + 0x16c]
000000014026a1f0 test     al, 1
000000014026a1f2 je       0x14026a222
000000014026a1f4 mov      rcx, qword ptr [rcx + 0x158]
000000014026a1fb lea      rax, [rip + 0x3b11ae]
000000014026a202 lea      edx, [rbp + 0x5d]
000000014026a205 mov      dword ptr [rsp + 0x28], r14d
000000014026a20a lea      r9, [rip + 0x3a417f]
000000014026a211 mov      qword ptr [rsp + 0x20], rax
000000014026a216 lea      r8, [rip + 0x42eb53]
000000014026a21d call     0x14003ca14
000000014026a222 mov      ebp, 1
000000014026a227 jmp      0x14026a2c2
000000014026a22c test     sil, 0x20
000000014026a230 je       0x14026a239
000000014026a232 lea      rax, [rsp + 0x7c]
000000014026a237 jmp      0x14026a258
000000014026a239 test     sil, 0x10
000000014026a23d je       0x14026a246
000000014026a23f lea      rax, [rsp + 0x78]
000000014026a244 jmp      0x14026a258
000000014026a246 test     sil, 8
000000014026a24a lea      rax, [rsp + 0x74]
000000014026a24f lea      rcx, [rsp + 0x70]
000000014026a254 cmove    rax, rcx
000000014026a258 movzx    edx, byte ptr [r14 + rax]
000000014026a25d lea      rax, [rip + 0x6b5d9c]
000000014026a264 mov      byte ptr [r15], dl
000000014026a267 mov      rcx, qword ptr [rip + 0x6b5d92]
000000014026a26e cmp      rcx, rax
000000014026a271 je       0x14026a2c2
000000014026a273 cmp      byte ptr [rcx + 0x169], 4
000000014026a27a jb       0x14026a2c2
000000014026a27c mov      eax, dword ptr [rcx + 0x16c]
000000014026a282 test     al, 1
000000014026a284 je       0x14026a2c2
000000014026a286 mov      rcx, qword ptr [rcx + 0x158]
000000014026a28d lea      rax, [rip + 0x3b111c]
000000014026a294 mov      r8d, edx
000000014026a297 lea      r9, [rip + 0x3a40f2]
000000014026a29e mov      dword ptr [rsp + 0x38], r8d
000000014026a2a3 mov      edx, 0x5e
000000014026a2a8 mov      dword ptr [rsp + 0x30], esi
000000014026a2ac lea      r8, [rip + 0x42eabd]
000000014026a2b3 mov      dword ptr [rsp + 0x28], r14d
000000014026a2b8 mov      qword ptr [rsp + 0x20], rax
000000014026a2bd call     0x1400328d4
000000014026a2c2 mov      eax, ebp
000000014026a2c4 mov      rcx, qword ptr [rsp + 0x1b0]
000000014026a2cc xor      rcx, rsp
000000014026a2cf call     0x1405f45b0
000000014026a2d4 mov      rbx, qword ptr [rsp + 0x200]
000000014026a2dc add      rsp, 0x1c0
000000014026a2e3 pop      r15
000000014026a2e5 pop      r14
000000014026a2e7 pop      rdi
000000014026a2e8 pop      rsi
000000014026a2e9 pop      rbp
000000014026a2ea ret      