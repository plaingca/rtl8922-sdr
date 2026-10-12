0000000140526e60 mov      qword ptr [rsp + 8], rbx
0000000140526e65 mov      qword ptr [rsp + 0x10], rbp
0000000140526e6a mov      qword ptr [rsp + 0x18], rsi
0000000140526e6f push     rdi
0000000140526e70 sub      rsp, 0x20
0000000140526e74 mov      rax, qword ptr [rcx]
0000000140526e77 xor      ebx, ebx
0000000140526e79 mov      rdi, rcx
0000000140526e7c mov      ebp, 0x9660
0000000140526e81 mov      rsi, qword ptr [rax]
0000000140526e84 test     dl, dl
0000000140526e86 je       0x140526ea7
0000000140526e88 mov      rax, qword ptr [rsi]
0000000140526e8b mov      edx, ebp
0000000140526e8d call     qword ptr [rip + 0x15d465]
0000000140526e93 mov      edx, ebp
0000000140526e95 mov      rcx, rdi
0000000140526e98 or       al, 8
0000000140526e9a mov      r8b, al
0000000140526e9d mov      rax, qword ptr [rsi + 8]
0000000140526ea1 call     qword ptr [rip + 0x15d451]
0000000140526ea7 mov      rax, qword ptr [rsi]
0000000140526eaa mov      edx, ebp
0000000140526eac mov      rcx, rdi
0000000140526eaf call     qword ptr [rip + 0x15d443]
0000000140526eb5 mov      sil, al
0000000140526eb8 mov      ebp, 0xbb7
0000000140526ebd and      sil, 8
0000000140526ec1 test     sil, sil
0000000140526ec4 je       0x140526ee4
0000000140526ec6 xor      edx, edx
0000000140526ec8 mov      rcx, rdi
0000000140526ecb lea      r8d, [rdx + 1]
0000000140526ecf call     0x14036cc4c
0000000140526ed4 add      ebp, -1
0000000140526ed7 jne      0x140526ec1
0000000140526ed9 neg      bl
0000000140526edb sbb      eax, eax
0000000140526edd not      eax
0000000140526edf and      eax, 0xc
0000000140526ee2 jmp      0x140526ee6
0000000140526ee4 xor      eax, eax
0000000140526ee6 mov      rbx, qword ptr [rsp + 0x30]
0000000140526eeb mov      rbp, qword ptr [rsp + 0x38]
0000000140526ef0 mov      rsi, qword ptr [rsp + 0x40]
0000000140526ef5 add      rsp, 0x20
0000000140526ef9 pop      rdi
0000000140526efa ret      