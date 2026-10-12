0000000140062a78 mov      qword ptr [rsp + 0x18], rbx
0000000140062a7d mov      qword ptr [rsp + 8], rcx
0000000140062a82 push     rbp
0000000140062a83 push     rsi
0000000140062a84 push     rdi
0000000140062a85 push     r12
0000000140062a87 push     r13
0000000140062a89 push     r14
0000000140062a8b push     r15
0000000140062a8d mov      rbp, rsp
0000000140062a90 sub      rsp, 0x40
0000000140062a94 xor      edi, edi
0000000140062a96 mov      rsi, r8
0000000140062a99 mov      r12d, edi
0000000140062a9c mov      qword ptr [rbp - 0x20], rdi
0000000140062aa0 mov      dword ptr [rbp - 0x18], edi
0000000140062aa3 mov      r14, rdx
0000000140062aa6 mov      qword ptr [rbp - 0x10], rdi
0000000140062aaa mov      r13, rcx
0000000140062aad mov      dword ptr [rbp - 8], edi
0000000140062ab0 call     0x140031188
0000000140062ab5 mov      rcx, r14
0000000140062ab8 mov      qword ptr [rbp + 0x48], rax
0000000140062abc mov      rbx, rax
0000000140062abf call     0x140062a18
0000000140062ac4 mov      byte ptr [r14], dil
0000000140062ac7 mov      r15d, edi
0000000140062aca cmp      byte ptr [rsi], dil
0000000140062acd jbe      0x140062cdb
0000000140062ad3 mov      eax, r15d
0000000140062ad6 lea      rdi, [rax + rax*4]
0000000140062ada shl      rdi, 4
0000000140062ade mov      rax, qword ptr [rdi + rsi + 0x40]
0000000140062ae3 mov      rcx, qword ptr [rdi + rsi + 0x28]
0000000140062ae8 cmp      rcx, rax
0000000140062aeb cmovbe   rcx, rax
0000000140062aef mov      rax, rbx
0000000140062af2 sub      rax, rcx
0000000140062af5 cmp      rax, 0xaba9500
0000000140062afb ja       0x140062ccc
0000000140062b01 movups   xmm0, xmmword ptr [rdi + rsi + 8]
0000000140062b06 mov      eax, r12d
0000000140062b09 lea      rcx, [r14 + 0x18]
0000000140062b0d mov      edx, 0x10
0000000140062b12 lea      rbx, [rax + rax*4]
0000000140062b16 shl      rbx, 4
0000000140062b1a add      rcx, rbx
0000000140062b1d movups   xmmword ptr [rbx + r14 + 8], xmm0
0000000140062b23 movups   xmm1, xmmword ptr [rdi + rsi + 0x18]
0000000140062b28 movups   xmmword ptr [rbx + r14 + 0x18], xmm1
0000000140062b2e movups   xmm0, xmmword ptr [rdi + rsi + 0x28]
0000000140062b33 movups   xmmword ptr [rbx + r14 + 0x28], xmm0
0000000140062b39 movups   xmm1, xmmword ptr [rdi + rsi + 0x38]
0000000140062b3e movups   xmmword ptr [rbx + r14 + 0x38], xmm1
0000000140062b44 movups   xmm0, xmmword ptr [rdi + rsi + 0x48]
0000000140062b49 movups   xmmword ptr [rbx + r14 + 0x48], xmm0
0000000140062b4f call     0x140031290
0000000140062b54 mov      edx, 0x10
0000000140062b59 lea      rcx, [rbp - 0x20]
0000000140062b5d call     0x140031290
0000000140062b62 lea      r8, [rsi + 0x18]
0000000140062b66 mov      rcx, r13
0000000140062b69 add      r8, rdi
0000000140062b6c lea      rdx, [rbp - 0x20]
0000000140062b70 call     0x140067248
0000000140062b75 lea      rcx, [r14 + 0x30]
0000000140062b79 mov      edx, 0x10
0000000140062b7e add      rcx, rbx
0000000140062b81 mov      r13b, al
0000000140062b84 call     0x140031290
0000000140062b89 mov      edx, 0x10
0000000140062b8e lea      rcx, [rbp - 0x10]
0000000140062b92 call     0x140031290
0000000140062b97 mov      rcx, qword ptr [rbp + 0x40]
0000000140062b9b lea      r8, [rsi + 0x30]
0000000140062b9f add      r8, rdi
0000000140062ba2 lea      rdx, [rbp - 0x10]
0000000140062ba6 call     0x140067248
0000000140062bab xor      edi, edi
0000000140062bad test     r13b, r13b
0000000140062bb0 je       0x140062c4c
0000000140062bb6 test     al, al
0000000140062bb8 je       0x140062bdb
0000000140062bba movups   xmm0, xmmword ptr [rbp - 0x20]
0000000140062bbe inc      r12d
0000000140062bc1 movups   xmm1, xmmword ptr [rbp - 0x10]
0000000140062bc5 movdqu   xmmword ptr [rbx + r14 + 0x18], xmm0
0000000140062bcc movdqu   xmmword ptr [rbx + r14 + 0x30], xmm1
0000000140062bd3 mov      byte ptr [r14], r12b
0000000140062bd6 jmp      0x140062cc4
0000000140062bdb cmp      r13b, 1
0000000140062bdf jne      0x140062cc4
0000000140062be5 mov      edx, dword ptr [rbp - 0x18]
0000000140062be8 test     edx, edx
0000000140062bea je       0x140062c0a
0000000140062bec mov      rcx, qword ptr [rbp - 0x20]
0000000140062bf0 call     0x140031160
0000000140062bf5 mov      eax, dword ptr [rbp - 0x18]
0000000140062bf8 inc      qword ptr [rip + 0xc7bcb1]
0000000140062bff add      qword ptr [rip + 0xc7bc9a], rax
0000000140062c06 mov      qword ptr [rbp - 0x20], rdi
0000000140062c0a mov      edx, 0x10
0000000140062c0f lea      rcx, [rbp - 0x20]
0000000140062c13 call     0x140031290
0000000140062c18 mov      dword ptr [rbp - 0x18], edi
0000000140062c1b mov      rcx, qword ptr [rip + 0x8bd3de]
0000000140062c22 lea      rax, [rip + 0x8bd3d7]
0000000140062c29 cmp      rcx, rax
0000000140062c2c je       0x140062cc4
0000000140062c32 cmp      byte ptr [rcx + 0x69], 4
0000000140062c36 jb       0x140062cc4
0000000140062c3c test     dword ptr [rcx + 0x6c], 0x800
0000000140062c43 je       0x140062cc4
0000000140062c45 mov      edx, 0x29
0000000140062c4a jmp      0x140062cad
0000000140062c4c cmp      al, 1
0000000140062c4e jne      0x140062cc4
0000000140062c50 mov      edx, dword ptr [rbp - 8]
0000000140062c53 test     edx, edx
0000000140062c55 je       0x140062c75
0000000140062c57 mov      rcx, qword ptr [rbp - 0x10]
0000000140062c5b call     0x140031160
0000000140062c60 mov      eax, dword ptr [rbp - 8]
0000000140062c63 inc      qword ptr [rip + 0xc7bc46]
0000000140062c6a add      qword ptr [rip + 0xc7bc2f], rax
0000000140062c71 mov      qword ptr [rbp - 0x10], rdi
0000000140062c75 mov      edx, 0x10
0000000140062c7a lea      rcx, [rbp - 0x10]
0000000140062c7e call     0x140031290
0000000140062c83 mov      dword ptr [rbp - 8], edi
0000000140062c86 mov      rcx, qword ptr [rip + 0x8bd373]
0000000140062c8d lea      rax, [rip + 0x8bd36c]
0000000140062c94 cmp      rcx, rax
0000000140062c97 je       0x140062cc4
0000000140062c99 cmp      byte ptr [rcx + 0x69], 4
0000000140062c9d jb       0x140062cc4
0000000140062c9f test     dword ptr [rcx + 0x6c], 0x800
0000000140062ca6 je       0x140062cc4
0000000140062ca8 mov      edx, 0x2a
0000000140062cad mov      rcx, qword ptr [rcx + 0x58]
0000000140062cb1 lea      r9, [rip + 0x596208]
0000000140062cb8 lea      r8, [rip + 0x62fef9]
0000000140062cbf call     0x140008874
0000000140062cc4 mov      rbx, qword ptr [rbp + 0x48]
0000000140062cc8 mov      r13, qword ptr [rbp + 0x40]
0000000140062ccc movzx    eax, byte ptr [rsi]
0000000140062ccf inc      r15d
0000000140062cd2 cmp      r15d, eax
0000000140062cd5 jb       0x140062ad3
0000000140062cdb mov      rbx, qword ptr [rsp + 0x90]
0000000140062ce3 add      rsp, 0x40
0000000140062ce7 pop      r15
0000000140062ce9 pop      r14
0000000140062ceb pop      r13
0000000140062ced pop      r12
0000000140062cef pop      rdi
0000000140062cf0 pop      rsi
0000000140062cf1 pop      rbp
0000000140062cf2 ret      