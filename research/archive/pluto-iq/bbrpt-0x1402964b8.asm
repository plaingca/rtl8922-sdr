00000001402964b8 mov      rax, rsp
00000001402964bb mov      qword ptr [rax + 8], rbx
00000001402964bf mov      qword ptr [rax + 0x10], rbp
00000001402964c3 mov      qword ptr [rax + 0x18], rsi
00000001402964c7 mov      qword ptr [rax + 0x20], rdi
00000001402964cb push     r13
00000001402964cd push     r14
00000001402964cf push     r15
00000001402964d1 sub      rsp, 0x60
00000001402964d5 mov      r14, rdx
00000001402964d8 mov      r15, rcx
00000001402964db mov      rcx, qword ptr [rip + 0x689b1e]
00000001402964e2 lea      rbx, [rip + 0x689b17]
00000001402964e9 lea      rdi, [rip + 0x387450]
00000001402964f0 lea      rsi, [rip + 0x377e99]
00000001402964f7 lea      rbp, [rip + 0x402a42]
00000001402964fe cmp      rcx, rbx
0000000140296501 je       0x14029676c
0000000140296507 cmp      byte ptr [rcx + 0x169], 4
000000014029650e jb       0x14029656b
0000000140296510 bt       dword ptr [rcx + 0x16c], 0x16
0000000140296518 jae      0x14029656b
000000014029651a mov      rax, qword ptr [rdx + 0x20]
000000014029651e movzx    r10d, byte ptr [rdx + 0x18]
0000000140296523 movzx    r11d, byte ptr [rdx + 1]
0000000140296528 mov      edx, 0x48
000000014029652d mov      rcx, qword ptr [rcx + 0x158]
0000000140296534 mov      r8, qword ptr [rax]
0000000140296537 mov      eax, dword ptr [r8 + 0x10]
000000014029653b movzx    r9d, byte ptr [r8 + 0x15]
0000000140296540 mov      dword ptr [rsp + 0x48], eax
0000000140296544 mov      eax, dword ptr [r8 + 8]
0000000140296548 mov      r8, rbp
000000014029654b mov      dword ptr [rsp + 0x40], eax
000000014029654f mov      dword ptr [rsp + 0x38], r9d
0000000140296554 mov      r9, rsi
0000000140296557 mov      dword ptr [rsp + 0x30], r10d
000000014029655c mov      dword ptr [rsp + 0x28], r11d
0000000140296561 mov      qword ptr [rsp + 0x20], rdi
0000000140296566 call     0x1401ad98c
000000014029656b mov      rax, qword ptr [rip + 0x689a8e]
0000000140296572 cmp      rax, rbx
0000000140296575 je       0x14029676c
000000014029657b cmp      byte ptr [rax + 0x169], 4
0000000140296582 jb       0x140296628
0000000140296588 bt       dword ptr [rax + 0x16c], 0x16
0000000140296590 jae      0x140296628
0000000140296596 mov      rbx, qword ptr [r14 + 0x20]
000000014029659a mov      rcx, r15
000000014029659d mov      rdx, rbx
00000001402965a0 call     0x1401a0870
00000001402965a5 mov      rdx, qword ptr [r14 + 0x20]
00000001402965a9 mov      rcx, r15
00000001402965ac movzx    ebp, ax
00000001402965af call     0x1401b7324
00000001402965b4 movzx    esi, byte ptr [rbx + 0x19]
00000001402965b8 mov      rdx, rbx
00000001402965bb mov      rcx, r15
00000001402965be movzx    edi, byte ptr [rax + 0x2e]
00000001402965c2 call     0x1401b7324
00000001402965c7 mov      dword ptr [rsp + 0x48], ebp
00000001402965cb mov      edx, 0x49
00000001402965d0 mov      dword ptr [rsp + 0x40], edi
00000001402965d4 lea      rbp, [rip + 0x402965]
00000001402965db mov      dword ptr [rsp + 0x38], esi
00000001402965df lea      rdi, [rip + 0x38735a]
00000001402965e6 movzx    r8d, word ptr [rax + 0x2c]
00000001402965eb lea      rsi, [rip + 0x377d9e]
00000001402965f2 mov      rax, qword ptr [r14 + 0x20]
00000001402965f6 mov      r9, rsi
00000001402965f9 mov      dword ptr [rsp + 0x30], r8d
00000001402965fe mov      r8, rbp
0000000140296601 movzx    ecx, byte ptr [rax + 8]
0000000140296605 mov      dword ptr [rsp + 0x28], ecx
0000000140296609 mov      rcx, qword ptr [rip + 0x6899f0]
0000000140296610 mov      qword ptr [rsp + 0x20], rdi
0000000140296615 mov      rcx, qword ptr [rcx + 0x158]
000000014029661c call     0x1401ad98c
0000000140296621 lea      rbx, [rip + 0x6899d8]
0000000140296628 mov      rcx, qword ptr [rip + 0x6899d1]
000000014029662f cmp      rcx, rbx
0000000140296632 je       0x14029676c
0000000140296638 cmp      byte ptr [rcx + 0x169], 4
000000014029663f jb       0x1402966a6
0000000140296641 bt       dword ptr [rcx + 0x16c], 0x16
0000000140296649 jae      0x1402966a6
000000014029664b mov      r10, qword ptr [r14 + 0x20]
000000014029664f mov      edx, 0x4a
0000000140296654 mov      rcx, qword ptr [rcx + 0x158]
000000014029665b movzx    r8d, byte ptr [r10 + 0x614]
0000000140296663 mov      eax, dword ptr [r10 + 0x610]
000000014029666a movzx    r9d, byte ptr [r10 + 0x608]
0000000140296672 mov      dword ptr [rsp + 0x48], eax
0000000140296676 mov      eax, dword ptr [r10 + 0x60c]
000000014029667d mov      dword ptr [rsp + 0x40], r8d
0000000140296682 mov      r8, rbp
0000000140296685 mov      dword ptr [rsp + 0x38], eax
0000000140296689 mov      eax, dword ptr [r10 + 0x604]
0000000140296690 mov      dword ptr [rsp + 0x30], r9d
0000000140296695 mov      r9, rsi
0000000140296698 mov      dword ptr [rsp + 0x28], eax
000000014029669c mov      qword ptr [rsp + 0x20], rdi
00000001402966a1 call     0x1401ad98c
00000001402966a6 mov      rcx, qword ptr [rip + 0x689953]
00000001402966ad cmp      rcx, rbx
00000001402966b0 je       0x14029676c
00000001402966b6 cmp      byte ptr [rcx + 0x169], 4
00000001402966bd jb       0x140296702
00000001402966bf bt       dword ptr [rcx + 0x16c], 0x16
00000001402966c7 jae      0x140296702
00000001402966c9 movzx    r8d, byte ptr [r14 + 0x29]
00000001402966ce mov      edx, 0x4b
00000001402966d3 movzx    r9d, byte ptr [r14 + 0x28]
00000001402966d8 movzx    eax, byte ptr [r14 + 0x2a]
00000001402966dd mov      rcx, qword ptr [rcx + 0x158]
00000001402966e4 mov      dword ptr [rsp + 0x38], eax
00000001402966e8 mov      dword ptr [rsp + 0x30], r8d
00000001402966ed mov      r8, rbp
00000001402966f0 mov      dword ptr [rsp + 0x28], r9d
00000001402966f5 mov      r9, rsi
00000001402966f8 mov      qword ptr [rsp + 0x20], rdi
00000001402966fd call     0x1400328d4
0000000140296702 mov      rcx, qword ptr [rip + 0x6898f7]
0000000140296709 cmp      rcx, rbx
000000014029670c je       0x14029676c
000000014029670e cmp      byte ptr [rcx + 0x169], 4
0000000140296715 jb       0x14029676c
0000000140296717 bt       dword ptr [rcx + 0x16c], 0x16
000000014029671f jae      0x14029676c
0000000140296721 movzx    eax, word ptr [r14 + 0x38]
0000000140296726 mov      edx, 0x4c
000000014029672b movzx    r8d, word ptr [r14 + 0x36]
0000000140296730 movzx    r9d, word ptr [r14 + 0x34]
0000000140296735 movzx    r10d, byte ptr [r14 + 0x2c]
000000014029673a mov      rcx, qword ptr [rcx + 0x158]
0000000140296741 mov      dword ptr [rsp + 0x48], eax
0000000140296745 mov      eax, dword ptr [r14 + 0x30]
0000000140296749 mov      dword ptr [rsp + 0x40], r8d
000000014029674e mov      r8, rbp
0000000140296751 mov      dword ptr [rsp + 0x38], r9d
0000000140296756 mov      r9, rsi
0000000140296759 mov      dword ptr [rsp + 0x30], eax
000000014029675d mov      dword ptr [rsp + 0x28], r10d
0000000140296762 mov      qword ptr [rsp + 0x20], rdi
0000000140296767 call     0x1401ad98c
000000014029676c cmp      byte ptr [r14 + 0x48], 4
0000000140296771 jb       0x1402967b8
0000000140296773 mov      rcx, qword ptr [rip + 0x689886]
000000014029677a cmp      rcx, rbx
000000014029677d je       0x1402967b8
000000014029677f cmp      byte ptr [rcx + 0x169], 4
0000000140296786 jb       0x1402967b8
0000000140296788 bt       dword ptr [rcx + 0x16c], 0x16
0000000140296790 jae      0x1402967b8
0000000140296792 mov      rax, qword ptr [r14 + 0x40]
0000000140296796 mov      edx, 0x4d
000000014029679b mov      rcx, qword ptr [rcx + 0x158]
00000001402967a2 mov      r9, rsi
00000001402967a5 mov      r8, rbp
00000001402967a8 mov      eax, dword ptr [rax]
00000001402967aa mov      dword ptr [rsp + 0x28], eax
00000001402967ae mov      qword ptr [rsp + 0x20], rdi
00000001402967b3 call     0x14003ca14
00000001402967b8 cmp      byte ptr [r14 + 0x50], 0
00000001402967bd je       0x140296869
00000001402967c3 mov      rax, qword ptr [rip + 0x689836]
00000001402967ca cmp      rax, rbx
00000001402967cd je       0x140296869
00000001402967d3 cmp      byte ptr [rax + 0x169], 4
00000001402967da jb       0x140296869
00000001402967e0 bt       dword ptr [rax + 0x16c], 0x16
00000001402967e8 jae      0x140296869
00000001402967ea mov      rdx, qword ptr [r14 + 0x60]
00000001402967ee mov      rcx, r15
00000001402967f1 call     0x1401b7324
00000001402967f6 mov      rdx, qword ptr [r14 + 0x58]
00000001402967fa mov      rcx, r15
00000001402967fd movzx    edi, byte ptr [rax + 0x2e]
0000000140296801 mov      rax, qword ptr [r14 + 0x60]
0000000140296805 movzx    ebx, byte ptr [rax + 0x19]
0000000140296809 call     0x1401b7324
000000014029680e movzx    r10d, byte ptr [r14 + 0x50]
0000000140296813 mov      edx, 0x4e
0000000140296818 mov      dword ptr [rsp + 0x50], edi
000000014029681c mov      r9, rsi
000000014029681f mov      dword ptr [rsp + 0x48], ebx
0000000140296823 mov      r8, rbp
0000000140296826 movzx    r11d, byte ptr [rax + 0x2e]
000000014029682b mov      rax, qword ptr [r14 + 0x58]
000000014029682f mov      dword ptr [rsp + 0x40], r11d
0000000140296834 movzx    ecx, byte ptr [rax + 0x19]
0000000140296838 movzx    eax, word ptr [r14 + 0x52]
000000014029683d mov      dword ptr [rsp + 0x38], ecx
0000000140296841 mov      rcx, qword ptr [rip + 0x6897b8]
0000000140296848 mov      dword ptr [rsp + 0x30], eax
000000014029684c lea      rax, [rip + 0x3870ed]
0000000140296853 mov      dword ptr [rsp + 0x28], r10d
0000000140296858 mov      qword ptr [rsp + 0x20], rax
000000014029685d mov      rcx, qword ptr [rcx + 0x158]
0000000140296864 call     0x1401a5640
0000000140296869 lea      r11, [rsp + 0x60]
000000014029686e mov      rbx, qword ptr [r11 + 0x20]
0000000140296872 mov      rbp, qword ptr [r11 + 0x28]
0000000140296876 mov      rsi, qword ptr [r11 + 0x30]
000000014029687a mov      rdi, qword ptr [r11 + 0x38]
000000014029687e mov      rsp, r11
0000000140296881 pop      r15
0000000140296883 pop      r14
0000000140296885 pop      r13
0000000140296887 ret      