00000001403f73d4 mov      qword ptr [rsp + 8], rbx
00000001403f73d9 mov      qword ptr [rsp + 0x10], rsi
00000001403f73de push     rdi
00000001403f73df sub      rsp, 0x30
00000001403f73e3 mov      eax, dword ptr [rcx + 0x13f0]
00000001403f73e9 mov      esi, edx
00000001403f73eb mov      rdi, qword ptr [rcx + 0x9a0]
00000001403f73f2 mov      rbx, rcx
00000001403f73f5 test     eax, 0xf00000
00000001403f73fa je       0x1403f744e
00000001403f73fc mov      r8d, dword ptr [rdi + 0x3230]
00000001403f7403 mov      r9d, edx
00000001403f7406 mov      edx, dword ptr [rdi + 0x322c]
00000001403f740c call     0x140315af0
00000001403f7411 mov      ebx, eax
00000001403f7413 mov      rcx, qword ptr [rip + 0x528be6]
00000001403f741a lea      rax, [rip + 0x528bdf]
00000001403f7421 cmp      rcx, rax
00000001403f7424 je       0x1403f74dd
00000001403f742a cmp      byte ptr [rcx + 0x1e9], 4
00000001403f7431 jb       0x1403f74dd
00000001403f7437 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f7441 je       0x1403f74dd
00000001403f7447 mov      edx, 0x3a
00000001403f744c jmp      0x1403f74bc
00000001403f744e mov      r8d, dword ptr [rdi + 0x3188]
00000001403f7455 and      eax, 0xc0000
00000001403f745a mov      edx, dword ptr [rdi + 0x3184]
00000001403f7460 neg      eax
00000001403f7462 mov      dword ptr [rsp + 0x20], esi
00000001403f7466 sbb      r9d, r9d
00000001403f7469 and      r9d, 2
00000001403f746d add      r9d, 2
00000001403f7471 call     0x140316994
00000001403f7476 mov      edx, dword ptr [rdi + 0x318c]
00000001403f747c mov      r9d, esi
00000001403f747f mov      r8d, 0xfff00000
00000001403f7485 mov      rcx, rbx
00000001403f7488 call     0x140315af0
00000001403f748d mov      ebx, eax
00000001403f748f mov      rcx, qword ptr [rip + 0x528b6a]
00000001403f7496 lea      rax, [rip + 0x528b63]
00000001403f749d cmp      rcx, rax
00000001403f74a0 je       0x1403f74dd
00000001403f74a2 cmp      byte ptr [rcx + 0x1e9], 4
00000001403f74a9 jb       0x1403f74dd
00000001403f74ab test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f74b5 je       0x1403f74dd
00000001403f74b7 mov      edx, 0x3b
00000001403f74bc mov      rcx, qword ptr [rcx + 0x1d8]
00000001403f74c3 lea      r9, [rip + 0x259466]
00000001403f74ca movzx    eax, bx
00000001403f74cd lea      r8, [rip + 0x2dee3c]
00000001403f74d4 mov      dword ptr [rsp + 0x20], eax
00000001403f74d8 call     0x1400088d8
00000001403f74dd mov      rsi, qword ptr [rsp + 0x48]
00000001403f74e2 movzx    eax, bx
00000001403f74e5 mov      rbx, qword ptr [rsp + 0x40]
00000001403f74ea add      rsp, 0x30
00000001403f74ee pop      rdi
00000001403f74ef ret      