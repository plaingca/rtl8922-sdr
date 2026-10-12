00000001405cdbb4 mov      qword ptr [rsp + 0x10], rbx
00000001405cdbb9 mov      qword ptr [rsp + 0x20], rsi
00000001405cdbbe push     rbp
00000001405cdbbf push     rdi
00000001405cdbc0 push     r15
00000001405cdbc2 lea      rbp, [rsp - 0x47]
00000001405cdbc7 sub      rsp, 0xa0
00000001405cdbce mov      rax, qword ptr [rip + 0x35988b]
00000001405cdbd5 xor      rax, rsp
00000001405cdbd8 mov      qword ptr [rbp + 0x37], rax
00000001405cdbdc mov      rsi, qword ptr [rcx + 0x52e70]
00000001405cdbe3 mov      ebx, edx
00000001405cdbe5 mov      rdi, qword ptr [r8]
00000001405cdbe8 lea      rcx, [rbp - 9]
00000001405cdbec and      qword ptr [rbp - 0x11], 0
00000001405cdbf1 xor      edx, edx
00000001405cdbf3 and      dword ptr [rbp - 0x19], 0
00000001405cdbf7 lea      r8d, [rdx + 0x40]
00000001405cdbfb call     0x1405f4640
00000001405cdc00 mov      rcx, qword ptr [rip + 0x3523f9]
00000001405cdc07 lea      r15, [rip + 0x3523f2]
00000001405cdc0e cmp      rcx, r15
00000001405cdc11 je       0x1405cdc2f
00000001405cdc13 mov      eax, dword ptr [rcx + 0x2c]
00000001405cdc16 test     al, 8
00000001405cdc18 je       0x1405cdc2f
00000001405cdc1a mov      rcx, qword ptr [rcx + 0x18]
00000001405cdc1e lea      r8, [rip + 0x3386bb]
00000001405cdc25 mov      edx, 0xc
00000001405cdc2a call     0x140001b88
00000001405cdc2f cmp      dword ptr [rdi + 8], 0x20
00000001405cdc33 jbe      0x1405cdc39
00000001405cdc35 xor      ecx, ecx
00000001405cdc37 jmp      0x1405cdc3b
00000001405cdc39 mov      ecx, dword ptr [rdi]
00000001405cdc3b call     0x1405c3970
00000001405cdc40 test     eax, eax
00000001405cdc42 jne      0x1405cdcde
00000001405cdc48 and      dword ptr [rbp - 9], 0xfffffffe
00000001405cdc4c lea      r8d, [rax + 6]
00000001405cdc50 cmp      ebx, 3
00000001405cdc53 jne      0x1405cdc5b
00000001405cdc55 mov      dword ptr [rbp - 5], r8d
00000001405cdc59 jmp      0x1405cdcb1
00000001405cdc5b cmp      ebx, 5
00000001405cdc5e jne      0x1405cdc69
00000001405cdc60 mov      dword ptr [rbp - 5], 7
00000001405cdc67 jmp      0x1405cdcb1
00000001405cdc69 cmp      ebx, 7
00000001405cdc6c jne      0x1405cdc77
00000001405cdc6e mov      dword ptr [rbp - 5], 1
00000001405cdc75 jmp      0x1405cdcb1
00000001405cdc77 cmp      ebx, 9
00000001405cdc7a jne      0x1405cdc85
00000001405cdc7c mov      dword ptr [rbp - 5], 2
00000001405cdc83 jmp      0x1405cdcb1
00000001405cdc85 cmp      ebx, 0xb
00000001405cdc88 jne      0x1405cdc93
00000001405cdc8a mov      dword ptr [rbp - 5], 3
00000001405cdc91 jmp      0x1405cdcb1
00000001405cdc93 cmp      ebx, 0xd
00000001405cdc96 jne      0x1405cdca1
00000001405cdc98 mov      dword ptr [rbp - 5], 4
00000001405cdc9f jmp      0x1405cdcb1
00000001405cdca1 cmp      ebx, 0xf
00000001405cdca4 jne      0x1405cdd69
00000001405cdcaa mov      dword ptr [rbp - 5], 5
00000001405cdcb1 mov      rdx, qword ptr [rdi]
00000001405cdcb4 lea      rcx, [rbp - 1]
00000001405cdcb8 add      rdx, 0xa
00000001405cdcbc call     0x1400311e8
00000001405cdcc1 mov      rax, qword ptr [rdi]
00000001405cdcc4 mov      cl, byte ptr [rax + 0x1f]
00000001405cdcc7 mov      byte ptr [rbp + 5], cl
00000001405cdcca mov      eax, dword ptr [rdi + 8]
00000001405cdccd sub      eax, 0x20
00000001405cdcd0 mov      dword ptr [rbp + 7], eax
00000001405cdcd3 mov      rax, qword ptr [rdi]
00000001405cdcd6 add      rax, 0x20
00000001405cdcda mov      qword ptr [rbp + 0xf], rax
00000001405cdcde mov      r8, qword ptr [rsi + 0xaf3b8]
00000001405cdce5 lea      rax, [rbp - 0x11]
00000001405cdce9 add      r8, 0x4b8
00000001405cdcf0 mov      qword ptr [rsp + 0x20], rax
00000001405cdcf5 lea      r9, [rbp - 0x19]
00000001405cdcf9 mov      edx, 0x10
00000001405cdcfe lea      rcx, [rbp - 9]
00000001405cdd02 call     0x14004b5c8
00000001405cdd07 test     eax, eax
00000001405cdd09 jne      0x1405cdd33
00000001405cdd0b mov      eax, dword ptr [rbp - 0x19]
00000001405cdd0e mov      r9d, 0x36
00000001405cdd14 mov      dword ptr [rsp + 0x30], eax
00000001405cdd18 xor      r8d, r8d
00000001405cdd1b mov      rax, qword ptr [rbp - 0x11]
00000001405cdd1f xor      edx, edx
00000001405cdd21 mov      qword ptr [rsp + 0x28], rax
00000001405cdd26 mov      rcx, rsi
00000001405cdd29 and      dword ptr [rsp + 0x20], 0
00000001405cdd2e call     0x1400327ec
00000001405cdd33 mov      rcx, qword ptr [rbp - 0x11]
00000001405cdd37 test     rcx, rcx
00000001405cdd3a je       0x1405cdd41
00000001405cdd3c call     0x140050078
00000001405cdd41 mov      rcx, qword ptr [rip + 0x3522b8]
00000001405cdd48 cmp      rcx, r15
00000001405cdd4b je       0x1405cdd69
00000001405cdd4d mov      eax, dword ptr [rcx + 0x2c]
00000001405cdd50 test     al, 8
00000001405cdd52 je       0x1405cdd69
00000001405cdd54 mov      rcx, qword ptr [rcx + 0x18]
00000001405cdd58 lea      r8, [rip + 0x338581]
00000001405cdd5f mov      edx, 0xd
00000001405cdd64 call     0x140001b88
00000001405cdd69 mov      rcx, qword ptr [rbp + 0x37]
00000001405cdd6d xor      rcx, rsp
00000001405cdd70 call     0x1405f45b0
00000001405cdd75 lea      r11, [rsp + 0xa0]
00000001405cdd7d mov      rbx, qword ptr [r11 + 0x28]
00000001405cdd81 mov      rsi, qword ptr [r11 + 0x38]
00000001405cdd85 mov      rsp, r11
00000001405cdd88 pop      r15
00000001405cdd8a pop      rdi
00000001405cdd8b pop      rbp
00000001405cdd8c ret      