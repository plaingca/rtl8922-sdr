00000001402acd4c mov      qword ptr [rsp + 8], rbx
00000001402acd51 mov      qword ptr [rsp + 0x10], rbp
00000001402acd56 mov      qword ptr [rsp + 0x18], rsi
00000001402acd5b push     rdi
00000001402acd5c push     r14
00000001402acd5e push     r15
00000001402acd60 sub      rsp, 0x20
00000001402acd64 mov      r14, qword ptr [rcx + 0x8b80]
00000001402acd6b xor      r15d, r15d
00000001402acd6e mov      rbp, r9
00000001402acd71 mov      rsi, rdx
00000001402acd74 mov      ebx, r15d
00000001402acd77 test     r8d, r8d
00000001402acd7a jne      0x1402acd83
00000001402acd7c xor      eax, eax
00000001402acd7e jmp      0x1402ace19
00000001402acd83 mov      edi, dword ptr [rsp + 0x60]
00000001402acd87 test     edi, edi
00000001402acd89 je       0x1402acd9e
00000001402acd8b mov      edx, edi
00000001402acd8d lea      r8, [rip + 0x348d2c]
00000001402acd94 mov      rcx, rbp
00000001402acd97 call     0x140044426
00000001402acd9c mov      ebx, eax
00000001402acd9e cmp      ebx, edi
00000001402acda0 jae      0x1402acdb9
00000001402acda2 mov      edx, edi
00000001402acda4 mov      ecx, ebx
00000001402acda6 sub      edx, ebx
00000001402acda8 lea      r8, [rip + 0x375d41]
00000001402acdaf add      rcx, rbp
00000001402acdb2 call     0x140044426
00000001402acdb7 add      ebx, eax
00000001402acdb9 mov      eax, 0x31
00000001402acdbe cmp      al, byte ptr [rsi + 0x20]
00000001402acdc1 jne      0x1402acddb
00000001402acdc3 cmp      r15b, byte ptr [rsi + 0x21]
00000001402acdc7 jne      0x1402acddb
00000001402acdc9 mov      byte ptr [r14 + 0x34], 1
00000001402acdce cmp      ebx, edi
00000001402acdd0 jae      0x1402ace17
00000001402acdd2 lea      r8, [rip + 0x375d47]
00000001402acdd9 jmp      0x1402ace07
00000001402acddb mov      eax, 0x30
00000001402acde0 cmp      al, byte ptr [rsi + 0x20]
00000001402acde3 jne      0x1402acdfc
00000001402acde5 cmp      r15b, byte ptr [rsi + 0x21]
00000001402acde9 jne      0x1402acdfc
00000001402acdeb mov      byte ptr [r14 + 0x34], r15b
00000001402acdef cmp      ebx, edi
00000001402acdf1 jae      0x1402ace17
00000001402acdf3 lea      r8, [rip + 0x375d46]
00000001402acdfa jmp      0x1402ace07
00000001402acdfc cmp      ebx, edi
00000001402acdfe jae      0x1402ace17
00000001402ace00 lea      r8, [rip + 0x375d59]
00000001402ace07 sub      edi, ebx
00000001402ace09 mov      ecx, ebx
00000001402ace0b mov      edx, edi
00000001402ace0d add      rcx, rbp
00000001402ace10 call     0x140044426
00000001402ace15 add      ebx, eax
00000001402ace17 mov      eax, ebx
00000001402ace19 mov      rbx, qword ptr [rsp + 0x40]
00000001402ace1e mov      rbp, qword ptr [rsp + 0x48]
00000001402ace23 mov      rsi, qword ptr [rsp + 0x50]
00000001402ace28 add      rsp, 0x20
00000001402ace2c pop      r15
00000001402ace2e pop      r14
00000001402ace30 pop      rdi
00000001402ace31 ret      