00000001401d9484 mov      rax, rsp
00000001401d9487 mov      qword ptr [rax + 8], rbx
00000001401d948b mov      qword ptr [rax + 0x10], rbp
00000001401d948f mov      qword ptr [rax + 0x18], rsi
00000001401d9493 mov      qword ptr [rax + 0x20], rdi
00000001401d9497 push     r14
00000001401d9499 sub      rsp, 0x20
00000001401d949d mov      rax, qword ptr [r8 + 0x10]
00000001401d94a1 xor      ebx, ebx
00000001401d94a3 mov      r14, rdx
00000001401d94a6 mov      rbp, rcx
00000001401d94a9 mov      edi, ebx
00000001401d94ab test     rax, rax
00000001401d94ae je       0x1401d94b9
00000001401d94b0 cmp      dword ptr [r8 + 0x1c], 4
00000001401d94b5 cmove    rdi, rax
00000001401d94b9 xor      r8d, r8d
00000001401d94bc call     0x1401d8dc4
00000001401d94c1 mov      esi, eax
00000001401d94c3 test     eax, eax
00000001401d94c5 je       0x1401d952c
00000001401d94c7 test     rdi, rdi
00000001401d94ca je       0x1401d94d6
00000001401d94cc cmp      eax, 7
00000001401d94cf setne    bl
00000001401d94d2 inc      ebx
00000001401d94d4 mov      dword ptr [rdi], ebx
00000001401d94d6 mov      rcx, qword ptr [rip + 0x746b23]
00000001401d94dd lea      rax, [rip + 0x746b1c]
00000001401d94e4 cmp      rcx, rax
00000001401d94e7 je       0x1401d95fe
00000001401d94ed cmp      byte ptr [rcx + 0x169], 3
00000001401d94f4 jb       0x1401d95fe
00000001401d94fa mov      eax, dword ptr [rcx + 0x16c]
00000001401d9500 test     al, 1
00000001401d9502 je       0x1401d95fe
00000001401d9508 mov      edx, 0x96
00000001401d950d mov      rcx, qword ptr [rcx + 0x158]
00000001401d9514 lea      r9, [rip + 0x434e75]
00000001401d951b lea      r8, [rip + 0x4bef0e]
00000001401d9522 call     0x140008874
00000001401d9527 jmp      0x1401d95fe
00000001401d952c mov      rcx, rbp
00000001401d952f call     0x1401d7c30
00000001401d9534 mov      esi, eax
00000001401d9536 test     eax, eax
00000001401d9538 je       0x1401d957e
00000001401d953a test     rdi, rdi
00000001401d953d je       0x1401d9545
00000001401d953f mov      dword ptr [rdi], 7
00000001401d9545 mov      rcx, qword ptr [rip + 0x746ab4]
00000001401d954c lea      rax, [rip + 0x746aad]
00000001401d9553 cmp      rcx, rax
00000001401d9556 je       0x1401d95fe
00000001401d955c cmp      byte ptr [rcx + 0x169], 3
00000001401d9563 jb       0x1401d95fe
00000001401d9569 mov      eax, dword ptr [rcx + 0x16c]
00000001401d956f test     al, 1
00000001401d9571 je       0x1401d95fe
00000001401d9577 mov      edx, 0x97
00000001401d957c jmp      0x1401d950d
00000001401d957e xor      r8d, r8d
00000001401d9581 mov      rdx, r14
00000001401d9584 mov      rcx, rbp
00000001401d9587 call     0x1401d832c
00000001401d958c mov      esi, eax
00000001401d958e test     eax, eax
00000001401d9590 je       0x1401d95d2
00000001401d9592 test     rdi, rdi
00000001401d9595 je       0x1401d95a2
00000001401d9597 cmp      eax, 7
00000001401d959a setne    bl
00000001401d959d add      ebx, 4
00000001401d95a0 mov      dword ptr [rdi], ebx
00000001401d95a2 mov      rcx, qword ptr [rip + 0x746a57]
00000001401d95a9 lea      rax, [rip + 0x746a50]
00000001401d95b0 cmp      rcx, rax
00000001401d95b3 je       0x1401d95fe
00000001401d95b5 cmp      byte ptr [rcx + 0x169], 3
00000001401d95bc jb       0x1401d95fe
00000001401d95be mov      eax, dword ptr [rcx + 0x16c]
00000001401d95c4 test     al, 1
00000001401d95c6 je       0x1401d95fe
00000001401d95c8 mov      edx, 0x98
00000001401d95cd jmp      0x1401d950d
00000001401d95d2 mov      rax, qword ptr [rbp + 0x8b88]
00000001401d95d9 mov      dl, 1
00000001401d95db mov      rcx, rbp
00000001401d95de mov      rax, qword ptr [rax + 0x58]
00000001401d95e2 call     qword ptr [rip + 0x4aad10]
00000001401d95e8 mov      rax, qword ptr [rbp + 0x8b88]
00000001401d95ef mov      dl, 2
00000001401d95f1 mov      rcx, rbp
00000001401d95f4 mov      rax, qword ptr [rax + 0x58]
00000001401d95f8 call     qword ptr [rip + 0x4aacfa]
00000001401d95fe mov      rbx, qword ptr [rsp + 0x30]
00000001401d9603 mov      eax, esi
00000001401d9605 mov      rsi, qword ptr [rsp + 0x40]
00000001401d960a mov      rbp, qword ptr [rsp + 0x38]
00000001401d960f mov      rdi, qword ptr [rsp + 0x48]
00000001401d9614 add      rsp, 0x20
00000001401d9618 pop      r14
00000001401d961a ret      