00000001405cbee8 mov      qword ptr [rsp + 8], rbx
00000001405cbeed mov      qword ptr [rsp + 0x10], rbp
00000001405cbef2 mov      qword ptr [rsp + 0x18], rsi
00000001405cbef7 push     rdi
00000001405cbef8 push     r14
00000001405cbefa push     r15
00000001405cbefc sub      rsp, 0x20
00000001405cbf00 mov      rbx, qword ptr [rcx + 0xaf3b8]
00000001405cbf07 movzx    esi, r8w
00000001405cbf0b mov      rbp, rdx
00000001405cbf0e mov      rdi, rcx
00000001405cbf11 mov      rcx, qword ptr [rip + 0x3540e8]
00000001405cbf18 lea      r15, [rip + 0x3540e1]
00000001405cbf1f cmp      rcx, r15
00000001405cbf22 je       0x1405cbf46
00000001405cbf24 cmp      byte ptr [rcx + 0x29], 4
00000001405cbf28 jb       0x1405cbf46
00000001405cbf2a mov      eax, dword ptr [rcx + 0x2c]
00000001405cbf2d test     al, 8
00000001405cbf2f je       0x1405cbf46
00000001405cbf31 mov      rcx, qword ptr [rcx + 0x18]
00000001405cbf35 lea      r8, [rip + 0x33a3a4]
00000001405cbf3c mov      edx, 0x44
00000001405cbf41 call     0x140001b88
00000001405cbf46 mov      edx, 0xe4400011
00000001405cbf4b mov      rcx, rdi
00000001405cbf4e call     0x1405d0638
00000001405cbf53 xor      r14d, r14d
00000001405cbf56 test     al, al
00000001405cbf58 jne      0x1405cbf89
00000001405cbf5a mov      rcx, qword ptr [rip + 0x35409f]
00000001405cbf61 cmp      rcx, r15
00000001405cbf64 je       0x1405cbfb6
00000001405cbf66 cmp      byte ptr [rcx + 0x29], 3
00000001405cbf6a jb       0x1405cbfb6
00000001405cbf6c mov      eax, dword ptr [rcx + 0x2c]
00000001405cbf6f test     al, 8
00000001405cbf71 je       0x1405cbfb6
00000001405cbf73 mov      rcx, qword ptr [rcx + 0x18]
00000001405cbf77 lea      edx, [r14 + 0x45]
00000001405cbf7b lea      r8, [rip + 0x33a35e]
00000001405cbf82 call     0x140001b88
00000001405cbf87 jmp      0x1405cbfb6
00000001405cbf89 mov      rdx, qword ptr [rbx + 0x3c8]
00000001405cbf90 test     rdx, rdx
00000001405cbf93 je       0x1405cbfb6
00000001405cbf95 mov      r9d, r14d
00000001405cbf98 cmp      r14w, si
00000001405cbf9c mov      r8, rbp
00000001405cbf9f mov      rcx, rdi
00000001405cbfa2 setne    r9b
00000001405cbfa6 call     0x1405db274
00000001405cbfab test     al, al
00000001405cbfad je       0x1405cbfb6
00000001405cbfaf mov      qword ptr [rbx + 0x3c8], r14
00000001405cbfb6 mov      rbx, qword ptr [rsp + 0x40]
00000001405cbfbb mov      rbp, qword ptr [rsp + 0x48]
00000001405cbfc0 mov      rsi, qword ptr [rsp + 0x50]
00000001405cbfc5 add      rsp, 0x20
00000001405cbfc9 pop      r15
00000001405cbfcb pop      r14
00000001405cbfcd pop      rdi
00000001405cbfce ret      