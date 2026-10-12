00000001401e2630 mov      qword ptr [rsp + 8], rbx
00000001401e2635 mov      qword ptr [rsp + 0x10], rsi
00000001401e263a mov      qword ptr [rsp + 0x18], rdi
00000001401e263f push     r12
00000001401e2641 push     r13
00000001401e2643 push     r15
00000001401e2645 sub      rsp, 0x40
00000001401e2649 xor      edi, edi
00000001401e264b mov      rbx, rcx
00000001401e264e cmp      byte ptr [rcx + 1], dil
00000001401e2652 je       0x1401e2826
00000001401e2658 mov      rcx, qword ptr [rip + 0x73d9a1]
00000001401e265f lea      r15, [rip + 0x73d99a]
00000001401e2666 lea      r12, [rip + 0x42bd23]
00000001401e266d lea      r13, [rip + 0x4b5dfc]
00000001401e2674 cmp      rcx, r15
00000001401e2677 je       0x1401e26ac
00000001401e2679 cmp      byte ptr [rcx + 0x169], 4
00000001401e2680 jb       0x1401e26ac
00000001401e2682 mov      eax, dword ptr [rcx + 0x16c]
00000001401e2688 test     al, 0x20
00000001401e268a je       0x1401e26ac
00000001401e268c movzx    eax, byte ptr [rbx + 0x161]
00000001401e2693 lea      edx, [rdi + 0x1b]
00000001401e2696 mov      rcx, qword ptr [rcx + 0x158]
00000001401e269d mov      r9, r12
00000001401e26a0 mov      r8, r13
00000001401e26a3 mov      dword ptr [rsp + 0x20], eax
00000001401e26a7 call     0x1400088d8
00000001401e26ac mov      esi, edi
00000001401e26ae cmp      byte ptr [rbx + 1], dil
00000001401e26b2 jbe      0x1401e271e
00000001401e26b4 mov      rcx, qword ptr [rip + 0x73d945]
00000001401e26bb cmp      rcx, r15
00000001401e26be je       0x1401e2714
00000001401e26c0 cmp      byte ptr [rcx + 0x169], 4
00000001401e26c7 jb       0x1401e2714
00000001401e26c9 mov      eax, dword ptr [rcx + 0x16c]
00000001401e26cf test     al, 0x20
00000001401e26d1 je       0x1401e2714
00000001401e26d3 mov      rcx, qword ptr [rcx + 0x158]
00000001401e26da lea      r9, [rbx + 3]
00000001401e26de mov      eax, esi
00000001401e26e0 imul     rdx, rax, 0x23
00000001401e26e4 add      r9, rdx
00000001401e26e7 movzx    r8d, byte ptr [rdx + rbx + 0x24]
00000001401e26ed movzx    eax, byte ptr [rdx + rbx + 0x25]
00000001401e26f2 mov      edx, 0x1c
00000001401e26f7 mov      dword ptr [rsp + 0x38], eax
00000001401e26fb mov      dword ptr [rsp + 0x30], r8d
00000001401e2700 mov      r8, r13
00000001401e2703 mov      qword ptr [rsp + 0x28], r9
00000001401e2708 mov      r9, r12
00000001401e270b mov      dword ptr [rsp + 0x20], esi
00000001401e270f call     0x14019644c
00000001401e2714 movzx    eax, byte ptr [rbx + 1]
00000001401e2718 inc      esi
00000001401e271a cmp      esi, eax
00000001401e271c jb       0x1401e26b4
00000001401e271e cmp      byte ptr [rbx + 0x15ec], dil
00000001401e2725 jbe      0x1401e2780
00000001401e2727 mov      rcx, qword ptr [rip + 0x73d8d2]
00000001401e272e cmp      rcx, r15
00000001401e2731 je       0x1401e2773
00000001401e2733 cmp      byte ptr [rcx + 0x169], 4
00000001401e273a jb       0x1401e2773
00000001401e273c mov      eax, dword ptr [rcx + 0x16c]
00000001401e2742 test     al, 0x20
00000001401e2744 je       0x1401e2773
00000001401e2746 mov      rcx, qword ptr [rcx + 0x158]
00000001401e274d mov      r9, r12
00000001401e2750 mov      eax, edi
00000001401e2752 mov      r8, r13
00000001401e2755 imul     rdx, rax, 0x34
00000001401e2759 movzx    eax, byte ptr [rdx + rbx + 0x16d]
00000001401e2761 mov      edx, 0x1d
00000001401e2766 mov      dword ptr [rsp + 0x28], eax
00000001401e276a mov      dword ptr [rsp + 0x20], edi
00000001401e276e call     0x140002b04
00000001401e2773 movzx    eax, byte ptr [rbx + 0x15ec]
00000001401e277a inc      edi
00000001401e277c cmp      edi, eax
00000001401e277e jb       0x1401e2727
00000001401e2780 mov      rcx, qword ptr [rip + 0x73d879]
00000001401e2787 cmp      rcx, r15
00000001401e278a je       0x1401e2826
00000001401e2790 cmp      byte ptr [rcx + 0x169], 4
00000001401e2797 jb       0x1401e27c2
00000001401e2799 mov      eax, dword ptr [rcx + 0x16c]
00000001401e279f test     al, 0x20
00000001401e27a1 je       0x1401e27c2
00000001401e27a3 movzx    eax, byte ptr [rbx + 2]
00000001401e27a7 mov      edx, 0x1e
00000001401e27ac mov      rcx, qword ptr [rcx + 0x158]
00000001401e27b3 mov      r9, r12
00000001401e27b6 mov      r8, r13
00000001401e27b9 mov      dword ptr [rsp + 0x20], eax
00000001401e27bd call     0x1400088d8
00000001401e27c2 mov      rcx, qword ptr [rip + 0x73d837]
00000001401e27c9 cmp      rcx, r15
00000001401e27cc je       0x1401e2826
00000001401e27ce cmp      byte ptr [rcx + 0x169], 4
00000001401e27d5 jb       0x1401e2826
00000001401e27d7 mov      eax, dword ptr [rcx + 0x16c]
00000001401e27dd test     al, 0x20
00000001401e27df je       0x1401e2826
00000001401e27e1 mov      eax, dword ptr [rbx + 0x15f8]
00000001401e27e7 mov      edx, 0x1f
00000001401e27ec movzx    r10d, byte ptr [rbx + 0x15f4]
00000001401e27f4 mov      r9, r12
00000001401e27f7 movzx    r11d, word ptr [rbx + 0x15ee]
00000001401e27ff mov      r8, r13
00000001401e2802 mov      rcx, qword ptr [rcx + 0x158]
00000001401e2809 mov      dword ptr [rsp + 0x38], eax
00000001401e280d mov      eax, dword ptr [rbx + 0x15f0]
00000001401e2813 mov      dword ptr [rsp + 0x30], eax
00000001401e2817 mov      dword ptr [rsp + 0x28], r10d
00000001401e281c mov      dword ptr [rsp + 0x20], r11d
00000001401e2821 call     0x14001c710
00000001401e2826 mov      rbx, qword ptr [rsp + 0x60]
00000001401e282b mov      rsi, qword ptr [rsp + 0x68]
00000001401e2830 mov      rdi, qword ptr [rsp + 0x70]
00000001401e2835 add      rsp, 0x40
00000001401e2839 pop      r15
00000001401e283b pop      r13
00000001401e283d pop      r12
00000001401e283f ret      