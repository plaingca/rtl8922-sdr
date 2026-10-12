00000001403f0468 mov      rax, rsp
00000001403f046b mov      qword ptr [rax + 8], rbx
00000001403f046f mov      qword ptr [rax + 0x10], rbp
00000001403f0473 mov      qword ptr [rax + 0x18], rsi
00000001403f0477 mov      qword ptr [rax + 0x20], rdi
00000001403f047b push     r12
00000001403f047d push     r14
00000001403f047f push     r15
00000001403f0481 sub      rsp, 0x30
00000001403f0485 mov      esi, r8d
00000001403f0488 mov      r14d, r9d
00000001403f048b shr      esi, 0x10
00000001403f048e mov      ebp, r8d
00000001403f0491 and      esi, 1
00000001403f0494 mov      ebx, edx
00000001403f0496 mov      r15, rcx
00000001403f0499 mov      rcx, qword ptr [rip + 0x52fb60]
00000001403f04a0 lea      r12, [rip + 0x52fb59]
00000001403f04a7 cmp      rcx, r12
00000001403f04aa je       0x1403f04e0
00000001403f04ac cmp      byte ptr [rcx + 0x1e9], 4
00000001403f04b3 jb       0x1403f04e0
00000001403f04b5 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f04bf je       0x1403f04e0
00000001403f04c1 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403f04c8 lea      r9, [rip + 0x25f891]
00000001403f04cf mov      edx, 0x2c
00000001403f04d4 lea      r8, [rip + 0x2e5015]
00000001403f04db call     0x140008874
00000001403f04e0 cmp      ebx, 1
00000001403f04e3 jle      0x1403f052d
00000001403f04e5 mov      rcx, qword ptr [rip + 0x52fb14]
00000001403f04ec cmp      rcx, r12
00000001403f04ef je       0x1403f0529
00000001403f04f1 cmp      byte ptr [rcx + 0x169], 3
00000001403f04f8 jb       0x1403f0529
00000001403f04fa test     dword ptr [rcx + 0x16c], 0x1000
00000001403f0504 je       0x1403f0529
00000001403f0506 mov      rcx, qword ptr [rcx + 0x158]
00000001403f050d lea      r9, [rip + 0x25f84c]
00000001403f0514 mov      edx, 0x2d
00000001403f0519 mov      dword ptr [rsp + 0x20], ebx
00000001403f051d lea      r8, [rip + 0x2e4fcc]
00000001403f0524 call     0x1400088d8
00000001403f0529 xor      al, al
00000001403f052b jmp      0x1403f0594
00000001403f052d mov      rcx, qword ptr [rip + 0x52facc]
00000001403f0534 mov      edi, dword ptr [rsp + 0x70]
00000001403f0538 cmp      rcx, r12
00000001403f053b je       0x1403f0575
00000001403f053d cmp      byte ptr [rcx + 0x1e9], 4
00000001403f0544 jb       0x1403f0575
00000001403f0546 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f0550 je       0x1403f0575
00000001403f0552 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403f0559 lea      r8, [rip + 0x2e4f90]
00000001403f0560 mov      edx, 0x2e
00000001403f0565 mov      dword ptr [rsp + 0x28], edi
00000001403f0569 mov      r9d, esi
00000001403f056c mov      dword ptr [rsp + 0x20], ebx
00000001403f0570 call     0x140001c34
00000001403f0575 mov      dword ptr [rsp + 0x20], edi
00000001403f0579 mov      r9d, r14d
00000001403f057c mov      r8d, ebp
00000001403f057f mov      edx, ebx
00000001403f0581 mov      rcx, r15
00000001403f0584 test     esi, esi
00000001403f0586 jne      0x1403f058f
00000001403f0588 call     0x1403efdb4
00000001403f058d jmp      0x1403f0594
00000001403f058f call     0x1403f0308
00000001403f0594 mov      rbx, qword ptr [rsp + 0x50]
00000001403f0599 mov      rbp, qword ptr [rsp + 0x58]
00000001403f059e mov      rsi, qword ptr [rsp + 0x60]
00000001403f05a3 mov      rdi, qword ptr [rsp + 0x68]
00000001403f05a8 add      rsp, 0x30
00000001403f05ac pop      r15
00000001403f05ae pop      r14
00000001403f05b0 pop      r12
00000001403f05b2 ret      