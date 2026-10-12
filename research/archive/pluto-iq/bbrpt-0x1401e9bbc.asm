00000001401e9bbc mov      qword ptr [rsp + 0x18], rbx
00000001401e9bc1 mov      dword ptr [rsp + 0x10], edx
00000001401e9bc5 push     rbp
00000001401e9bc6 push     rsi
00000001401e9bc7 push     rdi
00000001401e9bc8 push     r14
00000001401e9bca push     r15
00000001401e9bcc sub      rsp, 0x40
00000001401e9bd0 mov      rax, qword ptr [rcx + 0x798]
00000001401e9bd7 mov      r15d, edx
00000001401e9bda mov      dword ptr [rsp + 0x70], edx
00000001401e9bde mov      rbp, rcx
00000001401e9be1 cmp      byte ptr [rax + 0x96dd], 0
00000001401e9be8 je       0x1401e9d5a
00000001401e9bee xor      bl, bl
00000001401e9bf0 lea      rdi, [rip + 0x736409]
00000001401e9bf7 lea      r14, [rip + 0x429342]
00000001401e9bfe mov      dl, bl
00000001401e9c00 mov      rcx, rbp
00000001401e9c03 call     0x1401a0a14
00000001401e9c08 mov      rsi, rax
00000001401e9c0b test     rax, rax
00000001401e9c0e je       0x1401e9d4f
00000001401e9c14 cmp      byte ptr [rax + 0x14], 0
00000001401e9c18 je       0x1401e9d4f
00000001401e9c1e mov      rcx, qword ptr [rip + 0x7363db]
00000001401e9c25 cmp      rcx, rdi
00000001401e9c28 je       0x1401e9c6d
00000001401e9c2a cmp      byte ptr [rcx + 0x169], 4
00000001401e9c31 jb       0x1401e9c6d
00000001401e9c33 mov      eax, dword ptr [rcx + 0x16c]
00000001401e9c39 test     al, 1
00000001401e9c3b je       0x1401e9c6d
00000001401e9c3d mov      rcx, qword ptr [rcx + 0x158]
00000001401e9c44 lea      r9, [rip + 0x424745]
00000001401e9c4b movzx    eax, bl
00000001401e9c4e lea      r8, [rip + 0x4ae85b]
00000001401e9c55 mov      dword ptr [rsp + 0x30], r15d
00000001401e9c5a mov      edx, 0x18
00000001401e9c5f mov      dword ptr [rsp + 0x28], eax
00000001401e9c63 mov      qword ptr [rsp + 0x20], r14
00000001401e9c68 call     0x1400aa578
00000001401e9c6d xor      dil, dil
00000001401e9c70 cmp      byte ptr [rsi + 0x250], dil
00000001401e9c77 jbe      0x1401e9d48
00000001401e9c7d lea      r15, [rip + 0x73637c]
00000001401e9c84 movzx    eax, dil
00000001401e9c88 mov      rcx, rbp
00000001401e9c8b imul     r14, rax, 0xa38
00000001401e9c92 lea      rdx, [r14 + 0x258]
00000001401e9c99 add      rdx, rsi
00000001401e9c9c call     0x1401b7324
00000001401e9ca1 test     rax, rax
00000001401e9ca4 jne      0x1401e9d03
00000001401e9ca6 mov      rcx, qword ptr [rip + 0x736353]
00000001401e9cad cmp      rcx, r15
00000001401e9cb0 je       0x1401e9d2c
00000001401e9cb2 cmp      byte ptr [rcx + 0x169], 2
00000001401e9cb9 jb       0x1401e9d2c
00000001401e9cbb mov      eax, dword ptr [rcx + 0x16c]
00000001401e9cc1 lea      r14, [rip + 0x429278]
00000001401e9cc8 test     al, 1
00000001401e9cca je       0x1401e9d33
00000001401e9ccc mov      rcx, qword ptr [rcx + 0x158]
00000001401e9cd3 lea      r9, [rip + 0x4246b6]
00000001401e9cda movzx    eax, dil
00000001401e9cde mov      edx, 0x19
00000001401e9ce3 mov      dword ptr [rsp + 0x30], eax
00000001401e9ce7 movzx    r8d, bl
00000001401e9ceb mov      dword ptr [rsp + 0x28], r8d
00000001401e9cf0 lea      r8, [rip + 0x4ae7b9]
00000001401e9cf7 mov      qword ptr [rsp + 0x20], r14
00000001401e9cfc call     0x1400aa578
00000001401e9d01 jmp      0x1401e9d33
00000001401e9d03 lea      rcx, [rsp + 0x70]
00000001401e9d08 mov      r9d, 1
00000001401e9d0e mov      qword ptr [rsp + 0x20], rcx
00000001401e9d13 lea      rdx, [r14 + 0x258]
00000001401e9d1a mov      rcx, qword ptr [rbp + 0x8d08]
00000001401e9d21 mov      r8, rax
00000001401e9d24 add      rdx, rsi
00000001401e9d27 call     0x1402424b4
00000001401e9d2c lea      r14, [rip + 0x42920d]
00000001401e9d33 inc      dil
00000001401e9d36 cmp      dil, byte ptr [rsi + 0x250]
00000001401e9d3d jb       0x1401e9c84
00000001401e9d43 mov      r15d, dword ptr [rsp + 0x78]
00000001401e9d48 lea      rdi, [rip + 0x7362b1]
00000001401e9d4f inc      bl
00000001401e9d51 cmp      bl, 6
00000001401e9d54 jb       0x1401e9bfe
00000001401e9d5a mov      rbx, qword ptr [rsp + 0x80]
00000001401e9d62 add      rsp, 0x40
00000001401e9d66 pop      r15
00000001401e9d68 pop      r14
00000001401e9d6a pop      rdi
00000001401e9d6b pop      rsi
00000001401e9d6c pop      rbp
00000001401e9d6d ret      