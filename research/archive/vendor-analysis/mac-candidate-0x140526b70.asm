0000000140526b70 mov      qword ptr [rsp + 8], rbx
0000000140526b75 mov      qword ptr [rsp + 0x10], rbp
0000000140526b7a mov      qword ptr [rsp + 0x18], rsi
0000000140526b7f push     rdi
0000000140526b80 sub      rsp, 0x20
0000000140526b84 mov      rax, qword ptr [rcx]
0000000140526b87 mov      rsi, rdx
0000000140526b8a mov      edx, 0x9660
0000000140526b8f mov      rdi, rcx
0000000140526b92 mov      rbp, qword ptr [rax]
0000000140526b95 mov      rax, qword ptr [rbp + 0x20]
0000000140526b99 call     qword ptr [rip + 0x15d759]
0000000140526b9f movzx    r9d, byte ptr [rsi + 8]
0000000140526ba4 mov      ebx, r9d
0000000140526ba7 shl      ebx, 0x10
0000000140526baa xor      ebx, eax
0000000140526bac and      ebx, 0xf0000
0000000140526bb2 xor      ebx, eax
0000000140526bb4 cmp      r9b, 3
0000000140526bb8 jne      0x140526c75
0000000140526bbe mov      rax, qword ptr [rdi + 0x258]
0000000140526bc5 movzx    ecx, byte ptr [rax + 0x2e]
0000000140526bc9 sub      ecx, 7
0000000140526bcc je       0x140526c57
0000000140526bd2 sub      ecx, 1
0000000140526bd5 je       0x140526d24
0000000140526bdb sub      ecx, 1
0000000140526bde je       0x140526d24
0000000140526be4 sub      ecx, 2
0000000140526be7 je       0x140526d24
0000000140526bed sub      ecx, 1
0000000140526bf0 je       0x140526d24
0000000140526bf6 sub      ecx, 1
0000000140526bf9 je       0x140526d24
0000000140526bff cmp      ecx, 3
0000000140526c02 je       0x140526d24
0000000140526c08 mov      rcx, qword ptr [rip + 0x3f93f1]
0000000140526c0f lea      rax, [rip + 0x3f93ea]
0000000140526c16 cmp      rcx, rax
0000000140526c19 je       0x140526d89
0000000140526c1f cmp      byte ptr [rcx + 0x169], 2
0000000140526c26 jb       0x140526d89
0000000140526c2c mov      eax, dword ptr [rcx + 0x16c]
0000000140526c32 test     al, 8
0000000140526c34 je       0x140526d89
0000000140526c3a mov      edx, 0xb
0000000140526c3f mov      rcx, qword ptr [rcx + 0x158]
0000000140526c46 lea      r8, [rip + 0x3db143]
0000000140526c4d call     0x140001b88
0000000140526c52 jmp      0x140526d89
0000000140526c57 and      ebx, 0xffffa8ff
0000000140526c5d mov      dword ptr [rsi], 0x50000
0000000140526c63 or       ebx, 0x2800
0000000140526c69 mov      dword ptr [rsi + 4], 0x90000
0000000140526c70 jmp      0x140526d89
0000000140526c75 cmp      r9b, 2
0000000140526c79 jne      0x140526ce2
0000000140526c7b mov      rax, qword ptr [rdi + 0x258]
0000000140526c82 cmp      byte ptr [rax + 0x2e], 7
0000000140526c86 je       0x140526cc4
0000000140526c88 mov      rcx, qword ptr [rip + 0x3f9371]
0000000140526c8f lea      rax, [rip + 0x3f936a]
0000000140526c96 cmp      rcx, rax
0000000140526c99 je       0x140526d89
0000000140526c9f cmp      byte ptr [rcx + 0x169], r9b
0000000140526ca6 jb       0x140526d89
0000000140526cac mov      eax, dword ptr [rcx + 0x16c]
0000000140526cb2 test     al, 8
0000000140526cb4 je       0x140526d89
0000000140526cba mov      edx, 0xc
0000000140526cbf jmp      0x140526c3f
0000000140526cc4 and      ebx, 0xffffa8ff
0000000140526cca mov      dword ptr [rsi], 0x50000
0000000140526cd0 or       ebx, 0x2800
0000000140526cd6 mov      dword ptr [rsi + 4], 0x80000
0000000140526cdd jmp      0x140526d89
0000000140526ce2 cmp      r9b, 1
0000000140526ce6 jne      0x140526d4b
0000000140526ce8 mov      rax, qword ptr [rdi + 0x258]
0000000140526cef mov      edx, 0xd
0000000140526cf4 cmp      byte ptr [rax + 0x2e], dl
0000000140526cf7 je       0x140526d24
0000000140526cf9 mov      rcx, qword ptr [rip + 0x3f9300]
0000000140526d00 lea      rax, [rip + 0x3f92f9]
0000000140526d07 cmp      rcx, rax
0000000140526d0a je       0x140526d89
0000000140526d0c cmp      byte ptr [rcx + 0x169], 2
0000000140526d13 jb       0x140526d89
0000000140526d15 mov      eax, dword ptr [rcx + 0x16c]
0000000140526d1b test     al, 8
0000000140526d1d je       0x140526d89
0000000140526d1f jmp      0x140526c3f
0000000140526d24 mov      ecx, dword ptr [rdi + 0x3c8]
0000000140526d2a mov      eax, ecx
0000000140526d2c shr      eax, 5
0000000140526d2f xor      eax, ebx
0000000140526d31 mov      dword ptr [rsi], ecx
0000000140526d33 and      eax, 0x7f00
0000000140526d38 xor      ebx, eax
0000000140526d3a mov      eax, dword ptr [rdi + 0x3cc]
0000000140526d40 add      eax, dword ptr [rdi + 0x3c8]
0000000140526d46 mov      dword ptr [rsi + 4], eax
0000000140526d49 jmp      0x140526d89
0000000140526d4b mov      rcx, qword ptr [rip + 0x3f92ae]
0000000140526d52 lea      rax, [rip + 0x3f92a7]
0000000140526d59 cmp      rcx, rax
0000000140526d5c je       0x140526d89
0000000140526d5e cmp      byte ptr [rcx + 0x169], 2
0000000140526d65 jb       0x140526d89
0000000140526d67 mov      eax, dword ptr [rcx + 0x16c]
0000000140526d6d test     al, 8
0000000140526d6f je       0x140526d89
0000000140526d71 mov      rcx, qword ptr [rcx + 0x158]
0000000140526d78 lea      r8, [rip + 0x3db011]
0000000140526d7f mov      edx, 0xe
0000000140526d84 call     0x140001bb0
0000000140526d89 mov      rax, qword ptr [rbp + 0x28]
0000000140526d8d mov      r8d, ebx
0000000140526d90 mov      edx, 0x9660
0000000140526d95 mov      rcx, rdi
0000000140526d98 call     qword ptr [rip + 0x15d55a]
0000000140526d9e mov      rbx, qword ptr [rsp + 0x30]
0000000140526da3 xor      eax, eax
0000000140526da5 mov      rbp, qword ptr [rsp + 0x38]
0000000140526daa mov      rsi, qword ptr [rsp + 0x40]
0000000140526daf add      rsp, 0x20
0000000140526db3 pop      rdi
0000000140526db4 ret      