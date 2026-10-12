00000001401c2594 mov      qword ptr [rsp + 0x10], rbx
00000001401c2599 mov      qword ptr [rsp + 0x18], rbp
00000001401c259e mov      qword ptr [rsp + 0x20], rsi
00000001401c25a3 push     rdi
00000001401c25a4 push     r12
00000001401c25a6 push     r13
00000001401c25a8 push     r14
00000001401c25aa push     r15
00000001401c25ac sub      rsp, 0x40
00000001401c25b0 mov      rbp, qword ptr [rcx + 0x798]
00000001401c25b7 mov      r14, rcx
00000001401c25ba mov      rcx, qword ptr [rcx + 0x8d08]
00000001401c25c1 mov      r13, rdx
00000001401c25c4 mov      r15, qword ptr [rdx + 8]
00000001401c25c8 call     0x140247084
00000001401c25cd xor      dil, dil
00000001401c25d0 movzx    r12d, al
00000001401c25d4 cmp      byte ptr [rbp + 0xe0b7], dil
00000001401c25db je       0x1401c264d
00000001401c25dd mov      dil, 3
00000001401c25e0 mov      rcx, qword ptr [rip + 0x75da19]
00000001401c25e7 lea      rax, [rip + 0x75da12]
00000001401c25ee cmp      rcx, rax
00000001401c25f1 je       0x1401c29b3
00000001401c25f7 cmp      byte ptr [rcx + 0x169], 4
00000001401c25fe jb       0x1401c29b3
00000001401c2604 mov      eax, dword ptr [rcx + 0x16c]
00000001401c260a mov      ebx, 1
00000001401c260f test     bl, al
00000001401c2611 je       0x1401c29b3
00000001401c2617 mov      rcx, qword ptr [rcx + 0x158]
00000001401c261e lea      rsi, [rip + 0x44e56b]
00000001401c2625 lea      edx, [rbx + 0x75]
00000001401c2628 mov      dword ptr [rsp + 0x28], 3
00000001401c2630 lea      r9, [rip + 0x44bd59]
00000001401c2637 mov      qword ptr [rsp + 0x20], rsi
00000001401c263c lea      r8, [rip + 0x4d5d3d]
00000001401c2643 call     0x14003ca14
00000001401c2648 jmp      0x1401c29b3
00000001401c264d mov      r11d, 2
00000001401c2653 lea      rdx, [r13 + 0x3e4]
00000001401c265a cmp      dword ptr [r15 + 0x28], r11d
00000001401c265e jne      0x1401c26fa
00000001401c2664 mov      eax, dword ptr [rdx]
00000001401c2666 sub      eax, r11d
00000001401c2669 cmp      eax, 4
00000001401c266c ja       0x1401c26fa
00000001401c2672 mov      dil, r12b
00000001401c2675 mov      rcx, qword ptr [rip + 0x75d984]
00000001401c267c lea      rax, [rip + 0x75d97d]
00000001401c2683 cmp      rcx, rax
00000001401c2686 je       0x1401c29b3
00000001401c268c cmp      byte ptr [rcx + 0x169], 4
00000001401c2693 jb       0x1401c29b3
00000001401c2699 mov      eax, dword ptr [rcx + 0x16c]
00000001401c269f lea      ebx, [r11 - 1]
00000001401c26a3 test     bl, al
00000001401c26a5 je       0x1401c29b3
00000001401c26ab cmp      byte ptr [r13], 0
00000001401c26b0 lea      rdx, [rip + 0x44e469]
00000001401c26b7 mov      rcx, qword ptr [rcx + 0x158]
00000001401c26be lea      r8, [rip + 0x44e46b]
00000001401c26c5 cmovne   r8, rdx
00000001401c26c9 mov      dword ptr [rsp + 0x30], r12d
00000001401c26ce mov      qword ptr [rsp + 0x28], r8
00000001401c26d3 lea      rsi, [rip + 0x44e4b6]
00000001401c26da lea      r8, [rip + 0x4d5c9f]
00000001401c26e1 mov      qword ptr [rsp + 0x20], rsi
00000001401c26e6 lea      edx, [rbx + 0x76]
00000001401c26e9 lea      r9, [rip + 0x44bca0]
00000001401c26f0 call     0x14011f97c
00000001401c26f5 jmp      0x1401c29b3
00000001401c26fa cmp      byte ptr [r13], dil
00000001401c26fe je       0x1401c28ca
00000001401c2704 mov      r8b, byte ptr [r13 + 0x3e0]
00000001401c270b mov      al, r8b
00000001401c270e cmp      r8b, r11b
00000001401c2711 jne      0x1401c271a
00000001401c2713 mov      al, byte ptr [r13 + 0x3e1]
00000001401c271a movzx    eax, al
00000001401c271d mov      ebx, 1
00000001401c2722 imul     r10, rax, 0xa38
00000001401c2729 add      r10, 0x258
00000001401c2730 add      r10, r15
00000001401c2733 mov      qword ptr [rsp + 0x70], r10
00000001401c2738 movzx    esi, byte ptr [r10 + 0x19]
00000001401c273d cmp      dword ptr [r15 + 0x10], ebx
00000001401c2741 jne      0x1401c2755
00000001401c2743 cmp      byte ptr [rbp + 0x9528], dil
00000001401c274a je       0x1401c2755
00000001401c274c xor      eax, eax
00000001401c274e test     esi, esi
00000001401c2750 sete     al
00000001401c2753 mov      esi, eax
00000001401c2755 mov      r9d, dword ptr [rdx]
00000001401c2758 mov      ecx, r9d
00000001401c275b sub      ecx, ebx
00000001401c275d je       0x1401c2861
00000001401c2763 sub      ecx, ebx
00000001401c2765 je       0x1401c27f4
00000001401c276b sub      ecx, ebx
00000001401c276d je       0x1401c27e9
00000001401c276f sub      ecx, ebx
00000001401c2771 je       0x1401c27e9
00000001401c2773 sub      ecx, ebx
00000001401c2775 je       0x1401c27f4
00000001401c2777 cmp      ecx, ebx
00000001401c2779 je       0x1401c27e9
00000001401c277b mov      rcx, qword ptr [rip + 0x75d87e]
00000001401c2782 lea      rax, [rip + 0x75d877]
00000001401c2789 lea      rsi, [rip + 0x44e400]
00000001401c2790 cmp      rcx, rax
00000001401c2793 je       0x1401c27d1
00000001401c2795 cmp      byte ptr [rcx + 0x169], 3
00000001401c279c jb       0x1401c27d1
00000001401c279e mov      eax, dword ptr [rcx + 0x16c]
00000001401c27a4 test     bl, al
00000001401c27a6 je       0x1401c27d1
00000001401c27a8 mov      rcx, qword ptr [rcx + 0x158]
00000001401c27af lea      r8, [rip + 0x4d5bca]
00000001401c27b6 mov      dword ptr [rsp + 0x28], r9d
00000001401c27bb mov      edx, 0x78
00000001401c27c0 lea      r9, [rip + 0x44bbc9]
00000001401c27c7 mov      qword ptr [rsp + 0x20], rsi
00000001401c27cc call     0x14003ca14
00000001401c27d1 mov      r9, r14
00000001401c27d4 mov      r8b, bl
00000001401c27d7 mov      edx, 0x912
00000001401c27dc mov      rcx, rsi
00000001401c27df call     0x1401ca050
00000001401c27e4 jmp      0x1401c28b6
00000001401c27e9 mov      dil, 3
00000001401c27ec mov      rax, r10
00000001401c27ef jmp      0x1401c28bb
00000001401c27f4 cmp      dword ptr [rbp + 0x948c], ebx
00000001401c27fa jne      0x1401c2855
00000001401c27fc cmp      r8b, r11b
00000001401c27ff jne      0x1401c2829
00000001401c2801 mov      dl, byte ptr [r13 + 0x14]
00000001401c2805 mov      rcx, r15
00000001401c2808 call     0x1401c1d64
00000001401c280d test     r12b, al
00000001401c2810 je       0x1401c284e
00000001401c2812 mov      esi, r12d
00000001401c2815 mov      rcx, r15
00000001401c2818 not      esi
00000001401c281a mov      dil, r12b
00000001401c281d and      esi, ebx
00000001401c281f mov      dl, sil
00000001401c2822 call     0x1401a0930
00000001401c2827 jmp      0x1401c2847
00000001401c2829 cmp      byte ptr [rbp + 0xe0b5], dil
00000001401c2830 je       0x1401c2855
00000001401c2832 mov      r8d, ebx
00000001401c2835 mov      edx, esi
00000001401c2837 mov      rcx, r14
00000001401c283a call     0x1401bf474
00000001401c283f mov      dil, al
00000001401c2842 mov      rax, qword ptr [rsp + 0x70]
00000001401c2847 test     dil, dil
00000001401c284a jne      0x1401c28bb
00000001401c284c jmp      0x1401c2858
00000001401c284e mov      rax, qword ptr [rsp + 0x70]
00000001401c2853 jmp      0x1401c2858
00000001401c2855 mov      rax, r10
00000001401c2858 mov      ecx, esi
00000001401c285a mov      edi, ebx
00000001401c285c shl      dil, cl
00000001401c285f jmp      0x1401c28bb
00000001401c2861 mov      eax, dword ptr [rbp + 0x948c]
00000001401c2867 cmp      dword ptr [r15 + 0x28], r11d
00000001401c286b jne      0x1401c2884
00000001401c286d cmp      eax, ebx
00000001401c286f jne      0x1401c287a
00000001401c2871 mov      ecx, esi
00000001401c2873 mov      edi, ebx
00000001401c2875 shl      dil, cl
00000001401c2878 jmp      0x1401c28aa
00000001401c287a cmp      eax, 5
00000001401c287d jne      0x1401c2888
00000001401c287f mov      r8d, ebx
00000001401c2882 jmp      0x1401c289d
00000001401c2884 cmp      eax, ebx
00000001401c2886 jmp      0x1401c287d
00000001401c2888 cmp      byte ptr [rbp + 0xe0b5], dil
00000001401c288f je       0x1401c28af
00000001401c2891 cmp      byte ptr [rbp + 0x9487], dil
00000001401c2898 jbe      0x1401c28af
00000001401c289a mov      r8d, r11d
00000001401c289d mov      edx, esi
00000001401c289f mov      rcx, r14
00000001401c28a2 call     0x1401bf474
00000001401c28a7 mov      dil, al
00000001401c28aa test     dil, dil
00000001401c28ad jne      0x1401c28b6
00000001401c28af mov      ecx, esi
00000001401c28b1 shl      bl, cl
00000001401c28b3 mov      dil, bl
00000001401c28b6 mov      rax, qword ptr [rsp + 0x70]
00000001401c28bb mov      al, byte ptr [rax + 8]
00000001401c28be mov      byte ptr [r13 + 0x3e0], al
00000001401c28c5 jmp      0x1401c29b3
00000001401c28ca mov      r15d, dword ptr [rbp + 0x948c]
00000001401c28d1 mov      ecx, r15d
00000001401c28d4 test     r15d, r15d
00000001401c28d7 je       0x1401c29a4
00000001401c28dd sub      ecx, 1
00000001401c28e0 je       0x1401c299b
00000001401c28e6 sub      ecx, 1
00000001401c28e9 je       0x1401c298e
00000001401c28ef sub      ecx, 1
00000001401c28f2 je       0x1401c297f
00000001401c28f8 cmp      ecx, 1
00000001401c28fb je       0x1401c299f
00000001401c2901 mov      rdi, qword ptr [rip + 0x75d6f8]
00000001401c2908 lea      rax, [rip + 0x75d6f1]
00000001401c290f lea      rsi, [rip + 0x44e27a]
00000001401c2916 mov      ebx, 1
00000001401c291b cmp      rdi, rax
00000001401c291e je       0x1401c2967
00000001401c2920 cmp      byte ptr [rdi + 0x169], 3
00000001401c2927 jb       0x1401c2967
00000001401c2929 mov      eax, dword ptr [rdi + 0x16c]
00000001401c292f test     bl, al
00000001401c2931 je       0x1401c2967
00000001401c2933 mov      ecx, r15d
00000001401c2936 call     0x1401ccde4
00000001401c293b mov      rcx, qword ptr [rdi + 0x158]
00000001401c2942 lea      edx, [rbx + 0x78]
00000001401c2945 mov      dword ptr [rsp + 0x30], r15d
00000001401c294a lea      r9, [rip + 0x44ba3f]
00000001401c2951 mov      qword ptr [rsp + 0x28], rax
00000001401c2956 lea      r8, [rip + 0x4d5a23]
00000001401c295d mov      qword ptr [rsp + 0x20], rsi
00000001401c2962 call     0x14011f97c
00000001401c2967 mov      r9, r14
00000001401c296a mov      r8b, bl
00000001401c296d mov      edx, 0x92d
00000001401c2972 mov      rcx, rsi
00000001401c2975 call     0x1401ca050
00000001401c297a mov      dil, r12b
00000001401c297d jmp      0x1401c29b3
00000001401c297f mov      edx, 1
00000001401c2984 mov      rcx, r14
00000001401c2987 call     0x1401c1dac
00000001401c298c jmp      0x1401c29b0
00000001401c298e mov      ebx, 1
00000001401c2993 cmp      byte ptr [rbp + 0x9487], bl
00000001401c2999 jne      0x1401c299f
00000001401c299b xor      edx, edx
00000001401c299d jmp      0x1401c2984
00000001401c299f mov      dil, 3
00000001401c29a2 jmp      0x1401c29b3
00000001401c29a4 mov      rcx, qword ptr [r14 + 0x8d08]
00000001401c29ab call     0x140247094
00000001401c29b0 mov      dil, al
00000001401c29b3 lea      r11, [rsp + 0x40]
00000001401c29b8 mov      al, dil
00000001401c29bb mov      rbx, qword ptr [r11 + 0x38]
00000001401c29bf mov      rbp, qword ptr [r11 + 0x40]
00000001401c29c3 mov      rsi, qword ptr [r11 + 0x48]
00000001401c29c7 mov      rsp, r11
00000001401c29ca pop      r15
00000001401c29cc pop      r14
00000001401c29ce pop      r13
00000001401c29d0 pop      r12
00000001401c29d2 pop      rdi
00000001401c29d3 ret      