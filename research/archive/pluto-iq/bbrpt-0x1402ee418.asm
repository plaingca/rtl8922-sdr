00000001402ee418 mov      qword ptr [rsp + 8], rbx
00000001402ee41d mov      qword ptr [rsp + 0x10], rsi
00000001402ee422 mov      qword ptr [rsp + 0x18], rdi
00000001402ee427 push     r15
00000001402ee429 sub      rsp, 0x30
00000001402ee42d mov      edx, 0x35
00000001402ee432 mov      rbx, rcx
00000001402ee435 mov      dil, 1
00000001402ee438 call     0x140316dd4
00000001402ee43d mov      edx, 0x35
00000001402ee442 mov      rcx, rbx
00000001402ee445 call     0x1403171d0
00000001402ee44a mov      rcx, qword ptr [rip + 0x631baf]
00000001402ee451 lea      r15, [rip + 0x631ba8]
00000001402ee458 cmp      rcx, r15
00000001402ee45b je       0x1402ee4a2
00000001402ee45d cmp      byte ptr [rcx + 0x1e9], 4
00000001402ee464 jb       0x1402ee4a2
00000001402ee466 test     dword ptr [rcx + 0x1ec], 0x20000000
00000001402ee470 je       0x1402ee4a2
00000001402ee472 mov      rax, qword ptr [rbx + 8]
00000001402ee476 lea      r9, [rip + 0x33df53]
00000001402ee47d mov      rcx, qword ptr [rcx + 0x1d8]
00000001402ee484 mov      edx, 0x95
00000001402ee489 movzx    r8d, byte ptr [rax + 0x12d4]
00000001402ee491 mov      dword ptr [rsp + 0x20], r8d
00000001402ee496 lea      r8, [rip + 0x3accc3]
00000001402ee49d call     0x1400088d8
00000001402ee4a2 xor      edx, edx
00000001402ee4a4 mov      rcx, rbx
00000001402ee4a7 call     0x1402f21ac
00000001402ee4ac test     dword ptr [rbx + 0x13f0], 0x1ba0008
00000001402ee4b6 movzx    esi, al
00000001402ee4b9 je       0x1402ee4cb
00000001402ee4bb mov      edx, 1
00000001402ee4c0 mov      rcx, rbx
00000001402ee4c3 call     0x1402f21ac
00000001402ee4c8 mov      dil, al
00000001402ee4cb mov      rax, qword ptr [rbx]
00000001402ee4ce mov      ecx, dword ptr [rax + 0x961c]
00000001402ee4d4 sub      ecx, 0xb
00000001402ee4d7 cmp      ecx, 9
00000001402ee4da jbe      0x1402ee4f1
00000001402ee4dc mov      rax, qword ptr [rbx + 0x9a0]
00000001402ee4e3 cmp      byte ptr [rax + 0x10], 0
00000001402ee4e7 jne      0x1402ee4f1
00000001402ee4e9 mov      rcx, rbx
00000001402ee4ec call     0x1402f1c0c
00000001402ee4f1 mov      rcx, qword ptr [rip + 0x631b08]
00000001402ee4f8 cmp      rcx, r15
00000001402ee4fb je       0x1402ee535
00000001402ee4fd cmp      byte ptr [rcx + 0x1e9], 4
00000001402ee504 jb       0x1402ee535
00000001402ee506 test     dword ptr [rcx + 0x1ec], 0x20000000
00000001402ee510 je       0x1402ee535
00000001402ee512 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402ee519 lea      r8, [rip + 0x3acc40]
00000001402ee520 movzx    eax, dil
00000001402ee524 mov      r9d, esi
00000001402ee527 mov      edx, 0x96
00000001402ee52c mov      dword ptr [rsp + 0x20], eax
00000001402ee530 call     0x140001bec
00000001402ee535 mov      edx, 0x35
00000001402ee53a mov      rcx, rbx
00000001402ee53d call     0x140316dd4
00000001402ee542 mov      edx, 0x35
00000001402ee547 mov      rcx, rbx
00000001402ee54a call     0x1403171d0
00000001402ee54f test     sil, sil
00000001402ee552 je       0x1402ee55d
00000001402ee554 test     dil, dil
00000001402ee557 je       0x1402ee55d
00000001402ee559 mov      al, 1
00000001402ee55b jmp      0x1402ee566
00000001402ee55d or       dword ptr [rbx + 0x1638], 8
00000001402ee564 xor      al, al
00000001402ee566 mov      rbx, qword ptr [rsp + 0x40]
00000001402ee56b mov      rsi, qword ptr [rsp + 0x48]
00000001402ee570 mov      rdi, qword ptr [rsp + 0x50]
00000001402ee575 add      rsp, 0x30
00000001402ee579 pop      r15
00000001402ee57b ret      