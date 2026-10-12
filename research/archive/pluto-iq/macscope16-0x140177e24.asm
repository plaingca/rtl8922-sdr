0000000140177dec test     r8b, r8b
0000000140177def je       0x140177e3f
0000000140177df1 mov      qword ptr [rsp + 8], rbx
0000000140177df6 mov      qword ptr [rsp + 0x10], rsi
0000000140177dfb push     rdi
0000000140177dfc sub      rsp, 0x20
0000000140177e00 mov      rdi, r9
0000000140177e03 movzx    ebx, r8b
0000000140177e07 mov      rsi, rcx
0000000140177e0a call     0x14005de30
0000000140177e0f mov      dl, bl
0000000140177e11 mov      rcx, rsi
0000000140177e14 call     0x14005de30
0000000140177e19 test     bl, bl
0000000140177e1b je       0x140177e30
0000000140177e1d mov      dl, byte ptr [rdi]
0000000140177e1f mov      rcx, rsi
0000000140177e22 call     0x14005de30
0000000140177e27 inc      rdi
0000000140177e2a sub      rbx, 1
0000000140177e2e jne      0x140177e1d
0000000140177e30 mov      rbx, qword ptr [rsp + 0x30]
0000000140177e35 mov      rsi, qword ptr [rsp + 0x38]
0000000140177e3a add      rsp, 0x20
0000000140177e3e pop      rdi
0000000140177e3f ret      