00000001400869cc mov      r11, rsp
00000001400869cf mov      qword ptr [r11 + 8], rbx
00000001400869d3 mov      dword ptr [r11 + 0x20], r9d
00000001400869d7 push     rbp
00000001400869d8 push     rsi
00000001400869d9 push     rdi
00000001400869da push     r12
00000001400869dc push     r13
00000001400869de push     r14
00000001400869e0 push     r15
00000001400869e2 sub      rsp, 0x80
00000001400869e9 xor      eax, eax
00000001400869eb lea      rcx, [r8 + 0x10]
00000001400869ef mov      r14, rdx
00000001400869f2 mov      word ptr [r11 + 0x18], ax
00000001400869f7 xor      ebp, ebp
00000001400869f9 mov      byte ptr [r11 + 0x1a], al
00000001400869fd lea      rdx, [rip + 0x5747fc]
0000000140086a04 mov      r12d, ebp
0000000140086a07 mov      ebx, r9d
0000000140086a0a mov      r15, r8
0000000140086a0d call     0x140031478
0000000140086a12 mov      rdi, qword ptr [r15]
0000000140086a15 cmp      r15, rdi
0000000140086a18 je       0x140086c3d
0000000140086a1e mov      r13, qword ptr [rdi]
0000000140086a21 inc      r12d
0000000140086a24 mov      qword ptr [rsp + 0x78], r13
0000000140086a29 test     ebx, ebx
0000000140086a2b jne      0x140086a3c
0000000140086a2d cmp      r12d, 0x96
0000000140086a34 ja       0x140086c3d
0000000140086a3a jmp      0x140086a4e
0000000140086a3c cmp      ebx, 1
0000000140086a3f jne      0x140086a4e
0000000140086a41 cmp      r12d, 0x96
0000000140086a48 jbe      0x140086c2a
0000000140086a4e mov      rsi, qword ptr [rdi + 0x10]
0000000140086a52 test     rsi, rsi
0000000140086a55 jne      0x140086ab0
0000000140086a57 cmp      qword ptr [rdi + 0x18], rbp
0000000140086a5b jne      0x140086aaa
0000000140086a5d mov      rcx, qword ptr [rip + 0x89959c]
0000000140086a64 lea      rax, [rip + 0x899595]
0000000140086a6b cmp      rcx, rax
0000000140086a6e je       0x140086c2a
0000000140086a74 cmp      byte ptr [rcx + 0x29], 4
0000000140086a78 jb       0x140086c2a
0000000140086a7e test     dword ptr [rcx + 0x2c], 0x200
0000000140086a85 je       0x140086c2a
0000000140086a8b mov      rcx, qword ptr [rcx + 0x18]
0000000140086a8f lea      edx, [rsi + 0x49]
0000000140086a92 lea      r9, [rip + 0x574be7]
0000000140086a99 lea      r8, [rip + 0x60c1f0]
0000000140086aa0 call     0x140008874
0000000140086aa5 jmp      0x140086c2a
0000000140086aaa mov      rax, qword ptr [rdi + 0x18]
0000000140086aae jmp      0x140086ae5
0000000140086ab0 mov      rcx, qword ptr [rdi + 0x18]
0000000140086ab4 test     rcx, rcx
0000000140086ab7 jne      0x140086abf
0000000140086ab9 mov      rbp, qword ptr [rsi + 0x10]
0000000140086abd jmp      0x140086ae9
0000000140086abf cmp      byte ptr [rdi + 0x48], bpl
0000000140086ac3 je       0x140086acb
0000000140086ac5 mov      rbp, qword ptr [rcx + 0x10]
0000000140086ac9 jmp      0x140086ae9
0000000140086acb mov      ecx, dword ptr [rcx + 0x18]
0000000140086ace call     0x1401fba48
0000000140086ad3 mov      ecx, dword ptr [rsi + 0x18]
0000000140086ad6 mov      ebx, eax
0000000140086ad8 call     0x1401fba48
0000000140086add cmp      ebx, eax
0000000140086adf jbe      0x140086aaa
0000000140086ae1 mov      rax, qword ptr [rdi + 0x10]
0000000140086ae5 mov      rbp, qword ptr [rax + 0x10]
0000000140086ae9 xor      ebx, ebx
0000000140086aeb test     rbp, rbp
0000000140086aee je       0x140086c28
0000000140086af4 lea      edx, [rbx + 3]
0000000140086af7 lea      rcx, [rsp + 0xd0]
0000000140086aff call     0x140031290
0000000140086b04 test     r14, r14
0000000140086b07 je       0x140086ba5
0000000140086b0d mov      r13, qword ptr [r14 + 8]
0000000140086b11 test     r13, r13
0000000140086b14 je       0x140086ba0
0000000140086b1a mov      edx, dword ptr [r14 + 4]
0000000140086b1e mov      ecx, dword ptr [r14 + 0x10]
0000000140086b22 mov      dword ptr [rsp + 0x70], edx
0000000140086b26 cmp      edx, ecx
0000000140086b28 jae      0x140086ba0
0000000140086b2a movzx    eax, byte ptr [rbp + 6]
0000000140086b2e lea      rdi, [rbp + 7]
0000000140086b32 movzx    r8d, byte ptr [rbp + 5]
0000000140086b37 sub      ecx, edx
0000000140086b39 movzx    r9d, byte ptr [rbp + 4]
0000000140086b3e movzx    r10d, byte ptr [rbp + 3]
0000000140086b43 movzx    r11d, byte ptr [rbp + 2]
0000000140086b48 movzx    ebx, byte ptr [rbp + 1]
0000000140086b4c movzx    esi, byte ptr [rbp + 0x150]
0000000140086b53 mov      dword ptr [rsp + 0x60], eax
0000000140086b57 mov      eax, dword ptr [rbp + 0x14c]
0000000140086b5d mov      dword ptr [rsp + 0x58], r8d
0000000140086b62 lea      r8, [rip + 0x5746b7]
0000000140086b69 mov      dword ptr [rsp + 0x50], r9d
0000000140086b6e mov      r9d, r12d
0000000140086b71 mov      dword ptr [rsp + 0x48], r10d
0000000140086b76 mov      dword ptr [rsp + 0x40], r11d
0000000140086b7b mov      edx, ecx
0000000140086b7d mov      ecx, dword ptr [rsp + 0x70]
0000000140086b81 mov      dword ptr [rsp + 0x38], ebx
0000000140086b85 add      rcx, r13
0000000140086b88 mov      qword ptr [rsp + 0x30], rdi
0000000140086b8d mov      dword ptr [rsp + 0x28], esi
0000000140086b91 mov      dword ptr [rsp + 0x20], eax
0000000140086b95 call     0x140044426
0000000140086b9a add      dword ptr [r14 + 4], eax
0000000140086b9e xor      ebx, ebx
0000000140086ba0 mov      r13, qword ptr [rsp + 0x78]
0000000140086ba5 mov      rdx, qword ptr [rbp + 0x13d0]
0000000140086bac test     rdx, rdx
0000000140086baf je       0x140086c28
0000000140086bb1 cmp      word ptr [rbp + 0x13d8], bx
0000000140086bb8 je       0x140086c28
0000000140086bba mov      r8d, 3
0000000140086bc0 lea      rcx, [rsp + 0xd0]
0000000140086bc8 call     0x1400311e8
0000000140086bcd xor      ebp, ebp
0000000140086bcf test     r14, r14
0000000140086bd2 je       0x140086c2a
0000000140086bd4 mov      r11, qword ptr [r14 + 8]
0000000140086bd8 test     r11, r11
0000000140086bdb je       0x140086c2a
0000000140086bdd mov      r10d, dword ptr [r14 + 4]
0000000140086be1 mov      ecx, dword ptr [r14 + 0x10]
0000000140086be5 cmp      r10d, ecx
0000000140086be8 jae      0x140086c2a
0000000140086bea movsx    r8d, byte ptr [rsp + 0xd1]
0000000140086bf3 sub      ecx, r10d
0000000140086bf6 movzx    eax, byte ptr [rsp + 0xd2]
0000000140086bfe movsx    r9d, byte ptr [rsp + 0xd0]
0000000140086c07 mov      dword ptr [rsp + 0x28], eax
0000000140086c0b mov      dword ptr [rsp + 0x20], r8d
0000000140086c10 lea      r8, [rip + 0x574659]
0000000140086c17 mov      edx, ecx
0000000140086c19 lea      rcx, [r11 + r10]
0000000140086c1d call     0x140044426
0000000140086c22 add      dword ptr [r14 + 4], eax
0000000140086c26 jmp      0x140086c2a
0000000140086c28 xor      ebp, ebp
0000000140086c2a mov      ebx, dword ptr [rsp + 0xd8]
0000000140086c31 mov      rdi, r13
0000000140086c34 cmp      r15, r13
0000000140086c37 jne      0x140086a1e
0000000140086c3d lea      rcx, [r15 + 0x10]
0000000140086c41 lea      rdx, [rip + 0x5745b8]
0000000140086c48 call     0x140031684
0000000140086c4d mov      rbx, qword ptr [rsp + 0xc0]
0000000140086c55 add      rsp, 0x80
0000000140086c5c pop      r15
0000000140086c5e pop      r14
0000000140086c60 pop      r13
0000000140086c62 pop      r12
0000000140086c64 pop      rdi
0000000140086c65 pop      rsi
0000000140086c66 pop      rbp
0000000140086c67 ret      