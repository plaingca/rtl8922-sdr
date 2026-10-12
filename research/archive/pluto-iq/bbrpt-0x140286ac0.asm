0000000140286ac0 push     rbx
0000000140286ac2 push     rsi
0000000140286ac3 push     rdi
0000000140286ac4 sub      rsp, 0x50
0000000140286ac8 mov      rax, qword ptr [rip + 0x6a0991]
0000000140286acf xor      rax, rsp
0000000140286ad2 mov      qword ptr [rsp + 0x40], rax
0000000140286ad7 mov      rax, qword ptr [rcx + 0x1490]
0000000140286ade mov      bl, dl
0000000140286ae0 mov      edx, 0x27
0000000140286ae5 mov      rdi, qword ptr [rax + 0x230]
0000000140286aec xor      eax, eax
0000000140286aee mov      rcx, rdi
0000000140286af1 mov      rsi, qword ptr [rdi]
0000000140286af4 mov      dword ptr [rsp + 0x38], eax
0000000140286af8 mov      byte ptr [rsp + 0x38], r8b
0000000140286afd lea      r8, [rsp + 0x30]
0000000140286b02 mov      qword ptr [rsp + 0x30], rax
0000000140286b07 mov      rax, qword ptr [rsi + 0x9f8]
0000000140286b0e call     qword ptr [rip + 0x3fd7e4]
0000000140286b14 mov      r8d, eax
0000000140286b17 test     eax, eax
0000000140286b19 je       0x140286b54
0000000140286b1b mov      rcx, qword ptr [rip + 0x6994de]
0000000140286b22 lea      rdx, [rip + 0x6994d7]
0000000140286b29 cmp      rcx, rdx
0000000140286b2c je       0x140286be3
0000000140286b32 cmp      byte ptr [rcx + 0x169], 2
0000000140286b39 jb       0x140286be3
0000000140286b3f mov      eax, dword ptr [rcx + 0x16c]
0000000140286b45 test     al, 1
0000000140286b47 je       0x140286be3
0000000140286b4d mov      edx, 0x80
0000000140286b52 jmp      0x140286bb8
0000000140286b54 mov      eax, dword ptr [rsp + 0x30]
0000000140286b58 lea      r8, [rsp + 0x30]
0000000140286b5d neg      bl
0000000140286b5f mov      rcx, rdi
0000000140286b62 sbb      edx, edx
0000000140286b64 btr      eax, 8
0000000140286b68 and      edx, 0x100
0000000140286b6e or       edx, eax
0000000140286b70 mov      dword ptr [rsp + 0x30], edx
0000000140286b74 mov      edx, 0x9c
0000000140286b79 mov      rax, qword ptr [rsi + 0x9f0]
0000000140286b80 call     qword ptr [rip + 0x3fd772]
0000000140286b86 mov      r8d, eax
0000000140286b89 test     eax, eax
0000000140286b8b je       0x140286bea
0000000140286b8d mov      rcx, qword ptr [rip + 0x69946c]
0000000140286b94 lea      rdx, [rip + 0x699465]
0000000140286b9b cmp      rcx, rdx
0000000140286b9e je       0x140286be3
0000000140286ba0 cmp      byte ptr [rcx + 0x169], 2
0000000140286ba7 jb       0x140286be3
0000000140286ba9 mov      eax, dword ptr [rcx + 0x16c]
0000000140286baf test     al, 1
0000000140286bb1 je       0x140286be3
0000000140286bb3 mov      edx, 0x81
0000000140286bb8 mov      rcx, qword ptr [rcx + 0x158]
0000000140286bbf lea      rax, [rip + 0x394d4a]
0000000140286bc6 mov      dword ptr [rsp + 0x28], r8d
0000000140286bcb lea      r9, [rip + 0x3877be]
0000000140286bd2 lea      r8, [rip + 0x412307]
0000000140286bd9 mov      qword ptr [rsp + 0x20], rax
0000000140286bde call     0x14003ca14
0000000140286be3 mov      eax, 1
0000000140286be8 jmp      0x140286bec
0000000140286bea xor      eax, eax
0000000140286bec mov      rcx, qword ptr [rsp + 0x40]
0000000140286bf1 xor      rcx, rsp
0000000140286bf4 call     0x1405f45b0
0000000140286bf9 add      rsp, 0x50
0000000140286bfd pop      rdi
0000000140286bfe pop      rsi
0000000140286bff pop      rbx
0000000140286c00 ret      