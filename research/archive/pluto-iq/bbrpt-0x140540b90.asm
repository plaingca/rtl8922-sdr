0000000140540b90 mov      qword ptr [rsp + 0x10], rbx
0000000140540b95 mov      qword ptr [rsp + 0x18], rbp
0000000140540b9a push     rsi
0000000140540b9b push     rdi
0000000140540b9c push     r14
0000000140540b9e sub      rsp, 0x50
0000000140540ba2 mov      rax, qword ptr [rip + 0x3e68b7]
0000000140540ba9 xor      rax, rsp
0000000140540bac mov      qword ptr [rsp + 0x40], rax
0000000140540bb1 mov      al, byte ptr [rcx + 0xef0]
0000000140540bb7 mov      rsi, rcx
0000000140540bba sub      al, 2
0000000140540bbc mov      edi, 0x12c
0000000140540bc1 cmp      al, 1
0000000140540bc3 mov      ecx, 0x32
0000000140540bc8 xorps    xmm0, xmm0
0000000140540bcb mov      ebx, dword ptr [rsi + 0x158]
0000000140540bd1 cmova    edi, ecx
0000000140540bd4 xor      r14d, r14d
0000000140540bd7 movups   xmmword ptr [rsp + 0x30], xmm0
0000000140540bdc cmp      byte ptr [rsi + 0x15d], r14b
0000000140540be3 jne      0x140540bec
0000000140540be5 xor      eax, eax
0000000140540be7 jmp      0x140540c82
0000000140540bec mov      rcx, qword ptr [rip + 0x3df40d]
0000000140540bf3 lea      rax, [rip + 0x3df406]
0000000140540bfa cmp      rcx, rax
0000000140540bfd je       0x140540c2a
0000000140540bff cmp      byte ptr [rcx + 0x169], 5
0000000140540c06 jb       0x140540c2a
0000000140540c08 mov      eax, dword ptr [rcx + 0x16c]
0000000140540c0e test     al, 8
0000000140540c10 je       0x140540c2a
0000000140540c12 mov      rcx, qword ptr [rcx + 0x158]
0000000140540c19 lea      r8, [rip + 0x3c12c0]
0000000140540c20 mov      edx, 0x28
0000000140540c25 call     0x140001b88
0000000140540c2a lea      r8, [rsp + 0x30]
0000000140540c2f mov      dword ptr [rsp + 0x26], r14d
0000000140540c34 lea      rdx, [rsp + 0x20]
0000000140540c39 mov      dword ptr [rsp + 0x20], 0x10010
0000000140540c41 mov      rcx, rsi
0000000140540c44 mov      word ptr [rsp + 0x24], 5
0000000140540c4b call     0x14041621c
0000000140540c50 test     eax, eax
0000000140540c52 jne      0x140540c82
0000000140540c54 lea      ebp, [rbx + 1]
0000000140540c57 jmp      0x140540c75
0000000140540c59 mov      eax, edi
0000000140540c5b dec      edi
0000000140540c5d test     eax, eax
0000000140540c5f je       0x140540c79
0000000140540c61 mov      ebx, dword ptr [rsi + 0x158]
0000000140540c67 xor      edx, edx
0000000140540c69 mov      rcx, rsi
0000000140540c6c lea      r8d, [rdx + 1]
0000000140540c70 call     0x14036cc4c
0000000140540c75 cmp      ebx, ebp
0000000140540c77 jne      0x140540c59
0000000140540c79 neg      edi
0000000140540c7b sbb      eax, eax
0000000140540c7d not      eax
0000000140540c7f and      eax, 0xc
0000000140540c82 mov      rcx, qword ptr [rsp + 0x40]
0000000140540c87 xor      rcx, rsp
0000000140540c8a call     0x1405f45b0
0000000140540c8f lea      r11, [rsp + 0x50]
0000000140540c94 mov      rbx, qword ptr [r11 + 0x28]
0000000140540c98 mov      rbp, qword ptr [r11 + 0x30]
0000000140540c9c mov      rsp, r11
0000000140540c9f pop      r14
0000000140540ca1 pop      rdi
0000000140540ca2 pop      rsi
0000000140540ca3 ret      