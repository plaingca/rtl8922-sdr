00000001402fe510 push     rbp
00000001402fe512 push     rbx
00000001402fe513 push     rsi
00000001402fe514 push     rdi
00000001402fe515 push     r12
00000001402fe517 push     r13
00000001402fe519 push     r14
00000001402fe51b push     r15
00000001402fe51d lea      rbp, [rsp - 0x17]
00000001402fe522 sub      rsp, 0x98
00000001402fe529 mov      rax, qword ptr [rip + 0x628f30]
00000001402fe530 xor      rax, rsp
00000001402fe533 mov      qword ptr [rbp + 7], rax
00000001402fe537 mov      rax, qword ptr [rcx + 0x9a0]
00000001402fe53e lea      r12, [rdx + 0x10]
00000001402fe542 mov      rsi, qword ptr [rbp + 0x7f]
00000001402fe546 xor      r13d, r13d
00000001402fe549 xorps    xmm0, xmm0
00000001402fe54c mov      qword ptr [rbp - 0x29], rax
00000001402fe550 xor      eax, eax
00000001402fe552 mov      byte ptr [rbp - 0x31], r13b
00000001402fe556 cmp      byte ptr [r12], 0x2d
00000001402fe55b mov      r14, r9
00000001402fe55e mov      rdi, r8
00000001402fe561 mov      qword ptr [rbp - 1], rax
00000001402fe565 mov      r15, rdx
00000001402fe568 mov      rbx, rcx
00000001402fe56b movups   xmmword ptr [rbp - 0x21], xmm0
00000001402fe56f movups   xmmword ptr [rbp - 0x11], xmm0
00000001402fe573 jne      0x1402fe80e
00000001402fe579 cmp      byte ptr [r12 + 1], 0x68
00000001402fe57f jne      0x1402fe80e
00000001402fe585 cmp      byte ptr [r12 + 2], al
00000001402fe58a jne      0x1402fe80e
00000001402fe590 mov      ecx, dword ptr [r8]
00000001402fe593 mov      eax, dword ptr [rsi]
00000001402fe595 cmp      ecx, eax
00000001402fe597 jae      0x1402fe5b0
00000001402fe599 sub      eax, ecx
00000001402fe59b lea      r8, [rip + 0x3302ee]
00000001402fe5a2 mov      edx, eax
00000001402fe5a4 add      rcx, r9
00000001402fe5a7 call     0x140044426
00000001402fe5ac add      dword ptr [rdi], eax
00000001402fe5ae mov      ecx, dword ptr [rdi]
00000001402fe5b0 mov      eax, dword ptr [rsi]
00000001402fe5b2 cmp      ecx, eax
00000001402fe5b4 jae      0x1402fe5cd
00000001402fe5b6 sub      eax, ecx
00000001402fe5b8 lea      r8, [rip + 0x3302e1]
00000001402fe5bf mov      edx, eax
00000001402fe5c1 add      rcx, r14
00000001402fe5c4 call     0x140044426
00000001402fe5c9 add      dword ptr [rdi], eax
00000001402fe5cb mov      ecx, dword ptr [rdi]
00000001402fe5cd mov      eax, dword ptr [rsi]
00000001402fe5cf cmp      ecx, eax
00000001402fe5d1 jae      0x1402fe5ea
00000001402fe5d3 sub      eax, ecx
00000001402fe5d5 lea      r8, [rip + 0x3302e4]
00000001402fe5dc mov      edx, eax
00000001402fe5de add      rcx, r14
00000001402fe5e1 call     0x140044426
00000001402fe5e6 add      dword ptr [rdi], eax
00000001402fe5e8 mov      ecx, dword ptr [rdi]
00000001402fe5ea mov      eax, dword ptr [rsi]
00000001402fe5ec cmp      ecx, eax
00000001402fe5ee jae      0x1402fe607
00000001402fe5f0 sub      eax, ecx
00000001402fe5f2 lea      r8, [rip + 0x330307]
00000001402fe5f9 mov      edx, eax
00000001402fe5fb add      rcx, r14
00000001402fe5fe call     0x140044426
00000001402fe603 add      dword ptr [rdi], eax
00000001402fe605 mov      ecx, dword ptr [rdi]
00000001402fe607 mov      eax, dword ptr [rsi]
00000001402fe609 cmp      ecx, eax
00000001402fe60b jae      0x1402fe624
00000001402fe60d sub      eax, ecx
00000001402fe60f lea      r8, [rip + 0x33031a]
00000001402fe616 mov      edx, eax
00000001402fe618 add      rcx, r14
00000001402fe61b call     0x140044426
00000001402fe620 add      dword ptr [rdi], eax
00000001402fe622 mov      ecx, dword ptr [rdi]
00000001402fe624 mov      eax, dword ptr [rsi]
00000001402fe626 cmp      ecx, eax
00000001402fe628 jae      0x1402fe641
00000001402fe62a sub      eax, ecx
00000001402fe62c lea      r8, [rip + 0x33031d]
00000001402fe633 mov      edx, eax
00000001402fe635 add      rcx, r14
00000001402fe638 call     0x140044426
00000001402fe63d add      dword ptr [rdi], eax
00000001402fe63f mov      ecx, dword ptr [rdi]
00000001402fe641 mov      eax, dword ptr [rsi]
00000001402fe643 cmp      ecx, eax
00000001402fe645 jae      0x1402fe65e
00000001402fe647 sub      eax, ecx
00000001402fe649 lea      r8, [rip + 0x330320]
00000001402fe650 mov      edx, eax
00000001402fe652 add      rcx, r14
00000001402fe655 call     0x140044426
00000001402fe65a add      dword ptr [rdi], eax
00000001402fe65c mov      ecx, dword ptr [rdi]
00000001402fe65e mov      eax, dword ptr [rsi]
00000001402fe660 cmp      ecx, eax
00000001402fe662 jae      0x1402fe67b
00000001402fe664 sub      eax, ecx
00000001402fe666 lea      r8, [rip + 0x330333]
00000001402fe66d mov      edx, eax
00000001402fe66f add      rcx, r14
00000001402fe672 call     0x140044426
00000001402fe677 add      dword ptr [rdi], eax
00000001402fe679 mov      ecx, dword ptr [rdi]
00000001402fe67b mov      eax, dword ptr [rsi]
00000001402fe67d cmp      ecx, eax
00000001402fe67f jae      0x1402fe698
00000001402fe681 sub      eax, ecx
00000001402fe683 lea      r8, [rip + 0x330356]
00000001402fe68a mov      edx, eax
00000001402fe68c add      rcx, r14
00000001402fe68f call     0x140044426
00000001402fe694 add      dword ptr [rdi], eax
00000001402fe696 mov      ecx, dword ptr [rdi]
00000001402fe698 mov      eax, dword ptr [rsi]
00000001402fe69a cmp      ecx, eax
00000001402fe69c jae      0x1402fe6b5
00000001402fe69e sub      eax, ecx
00000001402fe6a0 lea      r8, [rip + 0x330349]
00000001402fe6a7 mov      edx, eax
00000001402fe6a9 add      rcx, r14
00000001402fe6ac call     0x140044426
00000001402fe6b1 add      dword ptr [rdi], eax
00000001402fe6b3 mov      ecx, dword ptr [rdi]
00000001402fe6b5 mov      eax, dword ptr [rsi]
00000001402fe6b7 cmp      ecx, eax
00000001402fe6b9 jae      0x1402fe6d2
00000001402fe6bb sub      eax, ecx
00000001402fe6bd lea      r8, [rip + 0x33035c]
00000001402fe6c4 mov      edx, eax
00000001402fe6c6 add      rcx, r14
00000001402fe6c9 call     0x140044426
00000001402fe6ce add      dword ptr [rdi], eax
00000001402fe6d0 mov      ecx, dword ptr [rdi]
00000001402fe6d2 mov      eax, dword ptr [rsi]
00000001402fe6d4 cmp      ecx, eax
00000001402fe6d6 jae      0x1402fe6ef
00000001402fe6d8 sub      eax, ecx
00000001402fe6da lea      r8, [rip + 0x33035f]
00000001402fe6e1 mov      edx, eax
00000001402fe6e3 add      rcx, r14
00000001402fe6e6 call     0x140044426
00000001402fe6eb add      dword ptr [rdi], eax
00000001402fe6ed mov      ecx, dword ptr [rdi]
00000001402fe6ef mov      eax, dword ptr [rsi]
00000001402fe6f1 cmp      ecx, eax
00000001402fe6f3 jae      0x1402fe70c
00000001402fe6f5 sub      eax, ecx
00000001402fe6f7 lea      r8, [rip + 0x330352]
00000001402fe6fe mov      edx, eax
00000001402fe700 add      rcx, r14
00000001402fe703 call     0x140044426
00000001402fe708 add      dword ptr [rdi], eax
00000001402fe70a mov      ecx, dword ptr [rdi]
00000001402fe70c mov      eax, dword ptr [rsi]
00000001402fe70e cmp      ecx, eax
00000001402fe710 jae      0x1402fe729
00000001402fe712 sub      eax, ecx
00000001402fe714 lea      r8, [rip + 0x330375]
00000001402fe71b mov      edx, eax
00000001402fe71d add      rcx, r14
00000001402fe720 call     0x140044426
00000001402fe725 add      dword ptr [rdi], eax
00000001402fe727 mov      ecx, dword ptr [rdi]
00000001402fe729 mov      eax, dword ptr [rsi]
00000001402fe72b cmp      ecx, eax
00000001402fe72d jae      0x1402fe746
00000001402fe72f sub      eax, ecx
00000001402fe731 lea      r8, [rip + 0x330398]
00000001402fe738 mov      edx, eax
00000001402fe73a add      rcx, r14
00000001402fe73d call     0x140044426
00000001402fe742 add      dword ptr [rdi], eax
00000001402fe744 mov      ecx, dword ptr [rdi]
00000001402fe746 mov      eax, dword ptr [rsi]
00000001402fe748 cmp      ecx, eax
00000001402fe74a jae      0x1402fe763
00000001402fe74c sub      eax, ecx
00000001402fe74e lea      r8, [rip + 0x3303ab]
00000001402fe755 mov      edx, eax
00000001402fe757 add      rcx, r14
00000001402fe75a call     0x140044426
00000001402fe75f add      dword ptr [rdi], eax
00000001402fe761 mov      ecx, dword ptr [rdi]
00000001402fe763 mov      edx, dword ptr [rsi]
00000001402fe765 cmp      ecx, edx
00000001402fe767 jae      0x1402fe780
00000001402fe769 sub      edx, ecx
00000001402fe76b lea      r8, [rip + 0x3303be]
00000001402fe772 add      rcx, r14
00000001402fe775 call     0x140044426
00000001402fe77a add      dword ptr [rdi], eax
00000001402fe77c mov      ecx, dword ptr [rdi]
00000001402fe77e mov      edx, dword ptr [rsi]
00000001402fe780 test     dword ptr [rbx + 0x13f0], 0x1800000
00000001402fe78a je       0x1402fe799
00000001402fe78c cmp      ecx, edx
00000001402fe78e jae      0x1402fe7b2
00000001402fe790 lea      r8, [rip + 0x3303a9]
00000001402fe797 jmp      0x1402fe7a4
00000001402fe799 cmp      ecx, edx
00000001402fe79b jae      0x1402fe7b2
00000001402fe79d lea      r8, [rip + 0x3303fc]
00000001402fe7a4 sub      edx, ecx
00000001402fe7a6 add      rcx, r14
00000001402fe7a9 call     0x140044426
00000001402fe7ae add      dword ptr [rdi], eax
00000001402fe7b0 mov      ecx, dword ptr [rdi]
00000001402fe7b2 mov      eax, dword ptr [rsi]
00000001402fe7b4 cmp      ecx, eax
00000001402fe7b6 jae      0x1402fe7cf
00000001402fe7b8 sub      eax, ecx
00000001402fe7ba lea      r8, [rip + 0x33044f]
00000001402fe7c1 mov      edx, eax
00000001402fe7c3 add      rcx, r14
00000001402fe7c6 call     0x140044426
00000001402fe7cb add      dword ptr [rdi], eax
00000001402fe7cd mov      ecx, dword ptr [rdi]
00000001402fe7cf mov      eax, dword ptr [rsi]
00000001402fe7d1 cmp      ecx, eax
00000001402fe7d3 jae      0x1402fe7ec
00000001402fe7d5 sub      eax, ecx
00000001402fe7d7 lea      r8, [rip + 0x330462]
00000001402fe7de mov      edx, eax
00000001402fe7e0 add      rcx, r14
00000001402fe7e3 call     0x140044426
00000001402fe7e8 add      dword ptr [rdi], eax
00000001402fe7ea mov      ecx, dword ptr [rdi]
00000001402fe7ec mov      eax, dword ptr [rsi]
00000001402fe7ee cmp      ecx, eax
00000001402fe7f0 jae      0x1402ff90a
00000001402fe7f6 lea      r8, [rip + 0x330463]
00000001402fe7fd sub      eax, ecx
00000001402fe7ff add      rcx, r14
00000001402fe802 mov      edx, eax
00000001402fe804 call     0x140044426
00000001402fe809 jmp      0x1402ff908
00000001402fe80e lea      rdx, [rip + 0x33045b]
00000001402fe815 mov      rcx, r12
00000001402fe818 call     0x140044360
00000001402fe81d test     eax, eax
00000001402fe81f jne      0x1402fe88c
00000001402fe821 lea      rcx, [r15 + 0x20]
00000001402fe825 lea      r8, [rbp - 0x21]
00000001402fe829 lea      rdx, [rip + 0x31cf40]
00000001402fe830 call     0x140044420
00000001402fe835 lea      rcx, [r15 + 0x30]
00000001402fe839 lea      r8, [rbp - 0x1d]
00000001402fe83d lea      rdx, [rip + 0x31cf2c]
00000001402fe844 call     0x140044420
00000001402fe849 movzx    edx, byte ptr [rbp - 0x21]
00000001402fe84d movzx    eax, byte ptr [rbp - 0x1d]
00000001402fe851 mov      byte ptr [rbx + 0x214c], dl
00000001402fe857 mov      byte ptr [rbx + 0x214d], al
00000001402fe85d mov      r8d, dword ptr [rdi]
00000001402fe860 mov      ecx, dword ptr [rsi]
00000001402fe862 cmp      r8d, ecx
00000001402fe865 jae      0x1402ff90a
00000001402fe86b sub      ecx, r8d
00000001402fe86e mov      r9d, edx
00000001402fe871 mov      edx, ecx
00000001402fe873 lea      rcx, [r14 + r8]
00000001402fe877 lea      r8, [rip + 0x330402]
00000001402fe87e mov      dword ptr [rsp + 0x20], eax
00000001402fe882 call     0x140044426
00000001402fe887 jmp      0x1402ff908
00000001402fe88c lea      rdx, [rip + 0x33042d]
00000001402fe893 mov      rcx, r12
00000001402fe896 call     0x140044360
00000001402fe89b test     eax, eax
00000001402fe89d jne      0x1402fe8ac
00000001402fe89f mov      rcx, rbx
00000001402fe8a2 call     0x140300ed8
00000001402fe8a7 jmp      0x1402ff90a
00000001402fe8ac lea      rdx, [rip + 0x33041d]
00000001402fe8b3 mov      rcx, r12
00000001402fe8b6 call     0x140044360
00000001402fe8bb test     eax, eax
00000001402fe8bd jne      0x1402fe913
00000001402fe8bf lea      rcx, [r15 + 0x20]
00000001402fe8c3 lea      r8, [rbp - 0x21]
00000001402fe8c7 lea      rdx, [rip + 0x2f8ad2]
00000001402fe8ce call     0x140044420
00000001402fe8d3 mov      al, byte ptr [rbp - 0x21]
00000001402fe8d6 mov      edx, 0xe
00000001402fe8db cmp      al, 2
00000001402fe8dd mov      byte ptr [rbx + 0x2148], al
00000001402fe8e3 mov      rcx, rbx
00000001402fe8e6 sete     r9b
00000001402fe8ea lea      r8d, [rdx - 1]
00000001402fe8ee call     0x1402ffd40
00000001402fe8f3 mov      ecx, dword ptr [rdi]
00000001402fe8f5 mov      eax, dword ptr [rsi]
00000001402fe8f7 cmp      ecx, eax
00000001402fe8f9 jae      0x1402ff90a
00000001402fe8ff movzx    r9d, byte ptr [rbx + 0x2148]
00000001402fe907 lea      r8, [rip + 0x3303d2]
00000001402fe90e jmp      0x1402ff8fc
00000001402fe913 lea      rdx, [rip + 0x3303d6]
00000001402fe91a mov      rcx, r12
00000001402fe91d call     0x140044360
00000001402fe922 test     eax, eax
00000001402fe924 jne      0x1402fe961
00000001402fe926 lea      rcx, [r15 + 0x20]
00000001402fe92a lea      r8, [rbp - 0x21]
00000001402fe92e lea      rdx, [rip + 0x31ce3b]
00000001402fe935 call     0x140044420
00000001402fe93a mov      dl, byte ptr [rbp - 0x21]
00000001402fe93d mov      rcx, rbx
00000001402fe940 call     0x140300e50
00000001402fe945 mov      ecx, dword ptr [rdi]
00000001402fe947 mov      eax, dword ptr [rsi]
00000001402fe949 cmp      ecx, eax
00000001402fe94b jae      0x1402ff90a
00000001402fe951 mov      r9d, dword ptr [rbp - 0x21]
00000001402fe955 lea      r8, [rip + 0x3303a4]
00000001402fe95c jmp      0x1402ff8fc
00000001402fe961 lea      rdx, [rip + 0x3303a8]
00000001402fe968 mov      rcx, r12
00000001402fe96b call     0x140044360
00000001402fe970 test     eax, eax
00000001402fe972 jne      0x1402fe9aa
00000001402fe974 lea      rcx, [r15 + 0x20]
00000001402fe978 lea      r8, [rbp - 0x21]
00000001402fe97c lea      rdx, [rip + 0x31cded]
00000001402fe983 call     0x140044420
00000001402fe988 movzx    edx, byte ptr [rbp - 0x21]
00000001402fe98c mov      byte ptr [rbx + 0x213a], dl
00000001402fe992 mov      ecx, dword ptr [rdi]
00000001402fe994 mov      eax, dword ptr [rsi]
00000001402fe996 cmp      ecx, eax
00000001402fe998 jae      0x1402ff90a
00000001402fe99e lea      r8, [rip + 0x33037b]
00000001402fe9a5 jmp      0x1402ff8f9
00000001402fe9aa lea      rdx, [rip + 0x33038f]
00000001402fe9b1 mov      rcx, r12
00000001402fe9b4 call     0x140044360
00000001402fe9b9 test     eax, eax
00000001402fe9bb jne      0x1402febe1
00000001402fe9c1 lea      rdx, [rip + 0x2f9c08]
00000001402fe9c8 lea      rcx, [r15 + 0x20]
00000001402fe9cc call     0x140044360
00000001402fe9d1 test     eax, eax
00000001402fe9d3 jne      0x1402fe9fb
00000001402fe9d5 mov      ecx, dword ptr [rdi]
00000001402fe9d7 mov      eax, dword ptr [rsi]
00000001402fe9d9 cmp      ecx, eax
00000001402fe9db jae      0x1402feb1c
00000001402fe9e1 sub      eax, ecx
00000001402fe9e3 lea      r8, [rip + 0x330366]
00000001402fe9ea mov      edx, eax
00000001402fe9ec add      rcx, r14
00000001402fe9ef call     0x140044426
00000001402fe9f4 add      dword ptr [rdi], eax
00000001402fe9f6 jmp      0x1402feb1c
00000001402fe9fb lea      rdx, [rip + 0x2fe85e]
00000001402fea02 lea      rcx, [r15 + 0x20]
00000001402fea06 call     0x140044360
00000001402fea0b test     eax, eax
00000001402fea0d jne      0x1402feb1c
00000001402fea13 lea      rcx, [r15 + 0x40]
00000001402fea17 lea      r8, [rbp - 0x1d]
00000001402fea1b lea      rdx, [rip + 0x2f897e]
00000001402fea22 call     0x140044420
00000001402fea27 cmp      dword ptr [rbx + 0x13f0], 0x20000
00000001402fea31 mov      r12d, dword ptr [rbp - 0x1d]
00000001402fea35 jne      0x1402fea56
00000001402fea37 test     r12d, 0xffc00000
00000001402fea3e setne    cl
00000001402fea41 bt       r12d, 0x14
00000001402fea46 setb     al
00000001402fea49 test     al, cl
00000001402fea4b je       0x1402fea56
00000001402fea4d bts      r12d, 0x15
00000001402fea52 mov      dword ptr [rbp - 0x1d], r12d
00000001402fea56 lea      rdx, [rip + 0x330313]
00000001402fea5d lea      rcx, [r15 + 0x30]
00000001402fea61 call     0x140044360
00000001402fea66 test     eax, eax
00000001402fea68 jne      0x1402fea8f
00000001402fea6a mov      r15b, r13b
00000001402fea6d movzx    edx, r15b
00000001402fea71 mov      r8d, r12d
00000001402fea74 mov      rcx, rbx
00000001402fea77 call     0x1402ffdec
00000001402fea7c inc      r15b
00000001402fea7f cmp      r15b, 0x11
00000001402fea83 jae      0x1402feb1c
00000001402fea89 mov      r12d, dword ptr [rbp - 0x1d]
00000001402fea8d jmp      0x1402fea6d
00000001402fea8f cmp      byte ptr [r15 + 0x30], 0x6f
00000001402fea94 jne      0x1402feaf9
00000001402fea96 cmp      byte ptr [r15 + 0x31], 0x72
00000001402fea9b jne      0x1402feaf9
00000001402fea9d cmp      byte ptr [r15 + 0x32], r13b
00000001402feaa1 jne      0x1402feaf9
00000001402feaa3 mov      r15b, r13b
00000001402feaa6 movzx    r12d, r15b
00000001402feaaa mov      rcx, rbx
00000001402feaad mov      edx, r12d
00000001402feab0 call     0x1402ffd8c
00000001402feab5 mov      r8d, eax
00000001402feab8 or       r8d, dword ptr [rbp - 0x1d]
00000001402feabc cmp      dword ptr [rbx + 0x13f0], 0x20000
00000001402feac6 jne      0x1402feae3
00000001402feac8 test     r8d, 0xffc00000
00000001402feacf setne    cl
00000001402fead2 bt       r8d, 0x14
00000001402fead7 setb     al
00000001402feada test     al, cl
00000001402feadc je       0x1402feae3
00000001402feade bts      r8d, 0x15
00000001402feae3 mov      edx, r12d
00000001402feae6 mov      rcx, rbx
00000001402feae9 call     0x1402ffdec
00000001402feaee inc      r15b
00000001402feaf1 cmp      r15b, 0x11
00000001402feaf5 jb       0x1402feaa6
00000001402feaf7 jmp      0x1402feb1c
00000001402feaf9 lea      r8, [rbp - 0x21]
00000001402feafd lea      rdx, [rip + 0x31cc6c]
00000001402feb04 lea      rcx, [r15 + 0x30]
00000001402feb08 call     0x140044420
00000001402feb0d mov      r8d, dword ptr [rbp - 0x1d]
00000001402feb11 mov      rcx, rbx
00000001402feb14 mov      edx, dword ptr [rbp - 0x21]
00000001402feb17 call     0x1402ffdec
00000001402feb1c mov      r15b, r13b
00000001402feb1f lea      r12, [rbx + 0x2074]
00000001402feb26 lea      r13, [rip + 0x3d2853]
00000001402feb2d movzx    edx, r15b
00000001402feb31 mov      rcx, rbx
00000001402feb34 call     0x1402ffd8c
00000001402feb39 mov      r9d, dword ptr [r12]
00000001402feb3d mov      r8d, eax
00000001402feb40 mov      dword ptr [rbp - 0x2d], eax
00000001402feb43 cmp      r9d, eax
00000001402feb46 je       0x1402feb6d
00000001402feb48 mov      r8d, dword ptr [rdi]
00000001402feb4b mov      ecx, dword ptr [rsi]
00000001402feb4d cmp      r8d, ecx
00000001402feb50 jae      0x1402feb69
00000001402feb52 sub      ecx, r8d
00000001402feb55 mov      edx, ecx
00000001402feb57 lea      rcx, [r14 + r8]
00000001402feb5b lea      r8, [rip + 0x33021e]
00000001402feb62 call     0x140044426
00000001402feb67 add      dword ptr [rdi], eax
00000001402feb69 mov      r8d, dword ptr [rbp - 0x2d]
00000001402feb6d cmp      byte ptr [rbp - 0x31], 0
00000001402feb71 jne      0x1402feb7e
00000001402feb73 mov      eax, r8d
00000001402feb76 shr      eax, 0xb
00000001402feb79 and      al, 1
00000001402feb7b mov      dword ptr [rbp - 0x31], eax
00000001402feb7e mov      ecx, dword ptr [rdi]
00000001402feb80 mov      eax, dword ptr [rsi]
00000001402feb82 cmp      ecx, eax
00000001402feb84 jae      0x1402feba9
00000001402feb86 sub      eax, ecx
00000001402feb88 mov      qword ptr [rsp + 0x28], r13
00000001402feb8d mov      dword ptr [rsp + 0x20], r8d
00000001402feb92 add      rcx, r14
00000001402feb95 mov      edx, eax
00000001402feb97 lea      r8, [rip + 0x330212]
00000001402feb9e movzx    r9d, r15b
00000001402feba2 call     0x140044426
00000001402feba7 add      dword ptr [rdi], eax
00000001402feba9 inc      r15b
00000001402febac add      r12, 4
00000001402febb0 add      r13, 0xa
00000001402febb4 cmp      r15b, 0x11
00000001402febb8 jb       0x1402feb2d
00000001402febbe mov      rax, qword ptr [rbp - 0x29]
00000001402febc2 mov      rcx, rbx
00000001402febc5 movzx    r9d, byte ptr [rbp - 0x31]
00000001402febca mov      r8d, dword ptr [rax + 0x1bec]
00000001402febd1 mov      edx, dword ptr [rax + 0x1be8]
00000001402febd7 call     0x1403168c4
00000001402febdc jmp      0x1402ff90a
00000001402febe1 lea      rdx, [rip + 0x3301e8]
00000001402febe8 mov      rcx, r12
00000001402febeb call     0x140044360
00000001402febf0 test     eax, eax
00000001402febf2 jne      0x1402fed72
00000001402febf8 lea      r12, [r15 + 0x20]
00000001402febfc mov      rcx, r12
00000001402febff lea      rdx, [rip + 0x3301da]
00000001402fec06 lea      r13, [r15 + 0x30]
00000001402fec0a call     0x140044360
00000001402fec0f test     eax, eax
00000001402fec11 jne      0x1402fec75
00000001402fec13 lea      r8, [rbp - 0x21]
00000001402fec17 mov      rcx, r13
00000001402fec1a lea      rdx, [rip + 0x31cb4f]
00000001402fec21 call     0x140044420
00000001402fec26 lea      rcx, [r15 + 0x40]
00000001402fec2a lea      r8, [rbp - 0x1d]
00000001402fec2e lea      rdx, [rip + 0x31cb3b]
00000001402fec35 call     0x140044420
00000001402fec3a movzx    edx, byte ptr [rbp - 0x21]
00000001402fec3e movzx    eax, word ptr [rbp - 0x1d]
00000001402fec42 mov      byte ptr [rbx + 0x20c4], dl
00000001402fec48 mov      word ptr [rbx + 0x20c6], ax
00000001402fec4f mov      r8d, dword ptr [rdi]
00000001402fec52 mov      ecx, dword ptr [rsi]
00000001402fec54 cmp      r8d, ecx
00000001402fec57 jae      0x1402ff90a
00000001402fec5d sub      ecx, r8d
00000001402fec60 mov      r9d, edx
00000001402fec63 mov      edx, ecx
00000001402fec65 lea      rcx, [r14 + r8]
00000001402fec69 lea      r8, [rip + 0x330180]
00000001402fec70 jmp      0x1402fe87e
00000001402fec75 lea      rdx, [rip + 0x330194]
00000001402fec7c mov      rcx, r12
00000001402fec7f call     0x140044360
00000001402fec84 xor      r15d, r15d
00000001402fec87 test     eax, eax
00000001402fec89 jne      0x1402fecc1
00000001402fec8b lea      r8, [rbp - 0x21]
00000001402fec8f mov      rcx, r13
00000001402fec92 lea      rdx, [rip + 0x2f8707]
00000001402fec99 call     0x140044420
00000001402fec9e mov      r9d, dword ptr [rbp - 0x21]
00000001402feca2 mov      dword ptr [rbx + 0x20c0], r9d
00000001402feca9 mov      ecx, dword ptr [rdi]
00000001402fecab mov      eax, dword ptr [rsi]
00000001402fecad cmp      ecx, eax
00000001402fecaf jae      0x1402ff90a
00000001402fecb5 lea      r8, [rip + 0x330164]
00000001402fecbc jmp      0x1402ff8fc
00000001402fecc1 lea      rdx, [rip + 0x330178]
00000001402fecc8 mov      rcx, r12
00000001402feccb call     0x140044360
00000001402fecd0 lea      r8, [rbp - 0x21]
00000001402fecd4 lea      rdx, [rip + 0x31ca95]
00000001402fecdb test     eax, eax
00000001402fecdd jne      0x1402fed09
00000001402fecdf mov      rcx, r13
00000001402fece2 call     0x140044420
00000001402fece7 movzx    edx, byte ptr [rbp - 0x21]
00000001402feceb mov      byte ptr [rbx + 0x20c8], dl
00000001402fecf1 mov      ecx, dword ptr [rdi]
00000001402fecf3 mov      eax, dword ptr [rsi]
00000001402fecf5 cmp      ecx, eax
00000001402fecf7 jae      0x1402ff90a
00000001402fecfd lea      r8, [rip + 0x33014c]
00000001402fed04 jmp      0x1402ff8f9
00000001402fed09 mov      rcx, r12
00000001402fed0c call     0x140044420
00000001402fed11 lea      r8, [rbp - 0x1d]
00000001402fed15 mov      rcx, r13
00000001402fed18 lea      rdx, [rip + 0x31ca51]
00000001402fed1f call     0x140044420
00000001402fed24 movzx    eax, word ptr [rbp - 0x21]
00000001402fed28 mov      word ptr [rbx + 0x20ce], ax
00000001402fed2f mov      al, byte ptr [rbp - 0x1d]
00000001402fed32 mov      byte ptr [rbx + 0x20ca], al
00000001402fed38 mov      word ptr [rbx + 0x20cc], r15w
00000001402fed40 mov      r8d, dword ptr [rdi]
00000001402fed43 mov      ecx, dword ptr [rsi]
00000001402fed45 cmp      r8d, ecx
00000001402fed48 jae      0x1402ff90a
00000001402fed4e movzx    eax, byte ptr [rbx + 0x20ca]
00000001402fed55 sub      ecx, r8d
00000001402fed58 movzx    r9d, word ptr [rbx + 0x20ce]
00000001402fed60 mov      edx, ecx
00000001402fed62 lea      rcx, [r14 + r8]
00000001402fed66 lea      r8, [rip + 0x330123]
00000001402fed6d jmp      0x1402fe87e
00000001402fed72 lea      rdx, [rip + 0x301247]
00000001402fed79 mov      rcx, r12
00000001402fed7c call     0x140044360
00000001402fed81 test     eax, eax
00000001402fed83 jne      0x1402fedee
00000001402fed85 lea      rcx, [r15 + 0x20]
00000001402fed89 lea      r8, [rbp - 0x21]
00000001402fed8d lea      rdx, [rip + 0x31c9dc]
00000001402fed94 call     0x140044420
00000001402fed99 movzx    edx, byte ptr [rbp - 0x21]
00000001402fed9d mov      byte ptr [rbx + 0x20ba], dl
00000001402feda3 mov      word ptr [rbx + 0x20bc], r13w
00000001402fedab mov      ecx, dword ptr [rdi]
00000001402fedad mov      eax, dword ptr [rsi]
00000001402fedaf cmp      ecx, eax
00000001402fedb1 jae      0x1402fedcb
00000001402fedb3 sub      eax, ecx
00000001402fedb5 lea      r8, [rip + 0x330104]
00000001402fedbc mov      r9d, edx
00000001402fedbf add      rcx, r14
00000001402fedc2 mov      edx, eax
00000001402fedc4 call     0x140044426
00000001402fedc9 add      dword ptr [rdi], eax
00000001402fedcb cmp      byte ptr [rbx + 0x20ba], r13b
00000001402fedd2 je       0x1402ff90a
00000001402fedd8 mov      r8d, dword ptr [rbx + 0x998]
00000001402feddf mov      dl, 1
00000001402fede1 mov      rcx, rbx
00000001402fede4 call     0x140301500
00000001402fede9 jmp      0x1402ff90a
00000001402fedee lea      rdx, [rip + 0x32f7ab]
00000001402fedf5 mov      rcx, r12
00000001402fedf8 call     0x140044360
00000001402fedfd test     eax, eax
00000001402fedff jne      0x1402feef7
00000001402fee05 lea      rcx, [r15 + 0x20]
00000001402fee09 mov      al, byte ptr [rcx]
00000001402fee0b lea      r12, [r15 + 0x30]
00000001402fee0f cmp      al, 0x62
00000001402fee11 jne      0x1402feead
00000001402fee17 cmp      byte ptr [rcx + 1], 0x6e
00000001402fee1b jne      0x1402fee4f
00000001402fee1d cmp      byte ptr [rcx + 2], r13b
00000001402fee21 jne      0x1402fee4f
00000001402fee23 lea      r8, [rbp - 0x21]
00000001402fee27 mov      rcx, r12
00000001402fee2a lea      rdx, [rip + 0x31c93f]
00000001402fee31 call     0x140044420
00000001402fee36 lea      rcx, [r15 + 0x40]
00000001402fee3a lea      r8, [rbp - 0x1d]
00000001402fee3e lea      rdx, [rip + 0x31c92b]
00000001402fee45 call     0x140044420
00000001402fee4a jmp      0x1402ff90a
00000001402fee4f cmp      al, 0x62
00000001402fee51 jne      0x1402feead
00000001402fee53 cmp      byte ptr [rcx + 1], 0x65
00000001402fee57 jne      0x1402feead
00000001402fee59 cmp      byte ptr [rcx + 2], r13b
00000001402fee5d jne      0x1402feead
00000001402fee5f lea      r8, [rbp - 0x21]
00000001402fee63 mov      rcx, r12
00000001402fee66 lea      rdx, [rip + 0x31c903]
00000001402fee6d call     0x140044420
00000001402fee72 lea      rcx, [r15 + 0x40]
00000001402fee76 lea      r8, [rbp - 0x1d]
00000001402fee7a lea      rdx, [rip + 0x31c8ef]
00000001402fee81 call     0x140044420
00000001402fee86 mov      r8b, byte ptr [rbp - 0x1d]
00000001402fee8a mov      rcx, rbx
00000001402fee8d mov      edx, dword ptr [rbp - 0x21]
00000001402fee90 call     0x1403ff010
00000001402fee95 mov      ecx, dword ptr [rdi]
00000001402fee97 mov      eax, dword ptr [rsi]
00000001402fee99 cmp      ecx, eax
00000001402fee9b jae      0x1402ff90a
00000001402feea1 lea      r8, [rip + 0x330038]
00000001402feea8 jmp      0x1402fe7fd
00000001402feead lea      r8, [rbp - 0x21]
00000001402feeb1 lea      rdx, [rip + 0x31c8b8]
00000001402feeb8 call     0x140044420
00000001402feebd lea      r8, [rbp - 0x1d]
00000001402feec1 mov      rcx, r12
00000001402feec4 lea      rdx, [rip + 0x31c8a5]
00000001402feecb call     0x140044420
00000001402feed0 mov      r8b, byte ptr [rbp - 0x1d]
00000001402feed4 mov      rcx, rbx
00000001402feed7 mov      edx, dword ptr [rbp - 0x21]
00000001402feeda call     0x1402fbef4
00000001402feedf mov      ecx, dword ptr [rdi]
00000001402feee1 mov      eax, dword ptr [rsi]
00000001402feee3 cmp      ecx, eax
00000001402feee5 jae      0x1402ff90a
00000001402feeeb lea      r8, [rip + 0x33000e]
00000001402feef2 jmp      0x1402fe7fd
00000001402feef7 lea      rdx, [rip + 0x330022]
00000001402feefe mov      rcx, r12
00000001402fef01 call     0x140044360
00000001402fef06 test     eax, eax
00000001402fef08 jne      0x1402fef4c
00000001402fef0a lea      rcx, [r15 + 0x20]
00000001402fef0e lea      r8, [rbp - 0x21]
00000001402fef12 lea      rdx, [rip + 0x31c857]
00000001402fef19 call     0x140044420
00000001402fef1e mov      r8d, dword ptr [rbx + 0x998]
00000001402fef25 mov      rcx, rbx
00000001402fef28 mov      dl, byte ptr [rbp - 0x21]
00000001402fef2b call     0x1402fc15c
00000001402fef30 mov      ecx, dword ptr [rdi]
00000001402fef32 mov      eax, dword ptr [rsi]
00000001402fef34 cmp      ecx, eax
00000001402fef36 jae      0x1402ff90a
00000001402fef3c mov      r9d, dword ptr [rbp - 0x21]
00000001402fef40 lea      r8, [rip + 0x32ffe9]
00000001402fef47 jmp      0x1402ff8fc
00000001402fef4c lea      rdx, [rip + 0x32fffd]
00000001402fef53 mov      rcx, r12
00000001402fef56 call     0x140044360
00000001402fef5b test     eax, eax
00000001402fef5d jne      0x1402fefa8
00000001402fef5f lea      rcx, [r15 + 0x20]
00000001402fef63 lea      r8, [rbp - 0x21]
00000001402fef67 lea      rdx, [rip + 0x31c802]
00000001402fef6e call     0x140044420
00000001402fef73 mov      r9d, dword ptr [rbp - 0x21]
00000001402fef77 cmp      r9d, 1
00000001402fef7b jne      0x1402fef89
00000001402fef7d mov      rcx, rbx
00000001402fef80 call     0x14032a864
00000001402fef85 mov      r9d, dword ptr [rbp - 0x21]
00000001402fef89 mov      dword ptr [rbx + 0x2068], r9d
00000001402fef90 mov      ecx, dword ptr [rdi]
00000001402fef92 mov      eax, dword ptr [rsi]
00000001402fef94 cmp      ecx, eax
00000001402fef96 jae      0x1402ff90a
00000001402fef9c lea      r8, [rip + 0x32ffbd]
00000001402fefa3 jmp      0x1402ff8fc
00000001402fefa8 lea      rdx, [rip + 0x32ffc1]
00000001402fefaf mov      rcx, r12
00000001402fefb2 call     0x140044360
00000001402fefb7 test     eax, eax
00000001402fefb9 jne      0x1402ff02e
00000001402fefbb mov      r9d, dword ptr [rbx + 0x13f0]
00000001402fefc2 cmp      r9d, 0x40000
00000001402fefc9 je       0x1402fefe3
00000001402fefcb mov      ecx, dword ptr [rdi]
00000001402fefcd mov      eax, dword ptr [rsi]
00000001402fefcf cmp      ecx, eax
00000001402fefd1 jae      0x1402ff90a
00000001402fefd7 lea      r8, [rip + 0x32ffa2]
00000001402fefde jmp      0x1402ff8fc
00000001402fefe3 lea      rcx, [r15 + 0x20]
00000001402fefe7 lea      r8, [rbp - 0x21]
00000001402fefeb lea      rdx, [rip + 0x31c77e]
00000001402feff2 call     0x140044420
00000001402feff7 mov      r9d, dword ptr [rbp - 0x21]
00000001402feffb mov      edx, 0x780
00000001402ff000 mov      r8d, 0x300
00000001402ff006 mov      rcx, rbx
00000001402ff009 call     0x1403168c4
00000001402ff00e mov      ecx, dword ptr [rdi]
00000001402ff010 mov      eax, dword ptr [rsi]
00000001402ff012 cmp      ecx, eax
00000001402ff014 jae      0x1402ff90a
00000001402ff01a mov      r9d, dword ptr [rbp - 0x21]
00000001402ff01e lea      r8, [rip + 0x32ff7b]
00000001402ff025 add      r9d, 0x44
00000001402ff029 jmp      0x1402ff8fc
00000001402ff02e lea      rdx, [rip + 0x32ff8b]
00000001402ff035 mov      rcx, r12
00000001402ff038 call     0x140044360
00000001402ff03d test     eax, eax
00000001402ff03f jne      0x1402ff19d
00000001402ff045 lea      rcx, [r15 + 0x30]
00000001402ff049 lea      r8, [rbp - 0x21]
00000001402ff04d lea      rdx, [rip + 0x31c71c]
00000001402ff054 call     0x140044420
00000001402ff059 add      r15, 0x20
00000001402ff05d lea      rdx, [rip + 0x32ff6c]
00000001402ff064 mov      rcx, r15
00000001402ff067 call     0x140044360
00000001402ff06c test     eax, eax
00000001402ff06e jne      0x1402ff0ac
00000001402ff070 mov      ecx, dword ptr [rbp - 0x21]
00000001402ff073 mov      dl, 8
00000001402ff075 add      ecx, ecx
00000001402ff077 call     0x1403e8aa0
00000001402ff07c mov      byte ptr [rbx + 0x3b15], al
00000001402ff082 mov      r8d, dword ptr [rdi]
00000001402ff085 mov      ecx, dword ptr [rsi]
00000001402ff087 cmp      r8d, ecx
00000001402ff08a jae      0x1402ff90a
00000001402ff090 movsx    r9d, al
00000001402ff094 sar      r9d, 1
00000001402ff097 sub      ecx, r8d
00000001402ff09a mov      edx, ecx
00000001402ff09c lea      rcx, [r14 + r8]
00000001402ff0a0 lea      r8, [rip + 0x32ff39]
00000001402ff0a7 jmp      0x1402ff903
00000001402ff0ac lea      rdx, [rip + 0x32ee8d]
00000001402ff0b3 mov      rcx, r15
00000001402ff0b6 call     0x140044360
00000001402ff0bb test     eax, eax
00000001402ff0bd jne      0x1402ff0fb
00000001402ff0bf mov      ecx, dword ptr [rbp - 0x21]
00000001402ff0c2 mov      dl, 8
00000001402ff0c4 add      ecx, ecx
00000001402ff0c6 call     0x1403e8aa0
00000001402ff0cb mov      byte ptr [rbx + 0x3b16], al
00000001402ff0d1 mov      r8d, dword ptr [rdi]
00000001402ff0d4 mov      ecx, dword ptr [rsi]
00000001402ff0d6 cmp      r8d, ecx
00000001402ff0d9 jae      0x1402ff90a
00000001402ff0df movsx    r9d, al
00000001402ff0e3 sar      r9d, 1
00000001402ff0e6 sub      ecx, r8d
00000001402ff0e9 mov      edx, ecx
00000001402ff0eb lea      rcx, [r14 + r8]
00000001402ff0ef lea      r8, [rip + 0x32ff0a]
00000001402ff0f6 jmp      0x1402ff903
00000001402ff0fb lea      rdx, [rip + 0x324dae]
00000001402ff102 mov      rcx, r15
00000001402ff105 call     0x140044360
00000001402ff10a test     eax, eax
00000001402ff10c jne      0x1402ff90a
00000001402ff112 movzx    ecx, byte ptr [rbp - 0x21]
00000001402ff116 mov      eax, dword ptr [rbp - 0x21]
00000001402ff119 mov      byte ptr [rbx + 0x3b17], cl
00000001402ff11f test     eax, eax
00000001402ff121 jne      0x1402ff147
00000001402ff123 mov      r8d, dword ptr [rdi]
00000001402ff126 mov      eax, dword ptr [rsi]
00000001402ff128 cmp      r8d, eax
00000001402ff12b jae      0x1402ff90a
00000001402ff131 mov      r9d, ecx
00000001402ff134 sub      eax, r8d
00000001402ff137 lea      rcx, [r14 + r8]
00000001402ff13b lea      r8, [rip + 0x32fede]
00000001402ff142 jmp      0x1402ff901
00000001402ff147 cmp      eax, 1
00000001402ff14a jne      0x1402ff170
00000001402ff14c mov      r8d, dword ptr [rdi]
00000001402ff14f mov      eax, dword ptr [rsi]
00000001402ff151 cmp      r8d, eax
00000001402ff154 jae      0x1402ff90a
00000001402ff15a mov      r9d, ecx
00000001402ff15d sub      eax, r8d
00000001402ff160 lea      rcx, [r14 + r8]
00000001402ff164 lea      r8, [rip + 0x32fed5]
00000001402ff16b jmp      0x1402ff901
00000001402ff170 cmp      eax, 2
00000001402ff173 jne      0x1402ff90a
00000001402ff179 mov      r8d, dword ptr [rdi]
00000001402ff17c mov      eax, dword ptr [rsi]
00000001402ff17e cmp      r8d, eax
00000001402ff181 jae      0x1402ff90a
00000001402ff187 mov      r9d, ecx
00000001402ff18a sub      eax, r8d
00000001402ff18d lea      rcx, [r14 + r8]
00000001402ff191 lea      r8, [rip + 0x32fec8]
00000001402ff198 jmp      0x1402ff901
00000001402ff19d lea      rdx, [rip + 0x32feec]
00000001402ff1a4 mov      rcx, r12
00000001402ff1a7 call     0x140044360
00000001402ff1ac test     eax, eax
00000001402ff1ae jne      0x1402ff1cb
00000001402ff1b0 mov      r9, r14
00000001402ff1b3 mov      qword ptr [rsp + 0x20], rsi
00000001402ff1b8 mov      r8, rdi
00000001402ff1bb mov      rdx, r15
00000001402ff1be mov      rcx, rbx
00000001402ff1c1 call     0x1402fd394
00000001402ff1c6 jmp      0x1402ff90a
00000001402ff1cb lea      rdx, [rip + 0x32fece]
00000001402ff1d2 mov      rcx, r12
00000001402ff1d5 call     0x140044360
00000001402ff1da test     eax, eax
00000001402ff1dc jne      0x1402ff46b
00000001402ff1e2 lea      r12, [r15 + 0x20]
00000001402ff1e6 add      r15, 0x30
00000001402ff1ea mov      rcx, r12
00000001402ff1ed lea      rdx, [rip + 0x32febc]
00000001402ff1f4 call     0x140044360
00000001402ff1f9 test     eax, eax
00000001402ff1fb jne      0x1402ff232
00000001402ff1fd lea      r8, [rbp - 0x21]
00000001402ff201 mov      rcx, r15
00000001402ff204 lea      rdx, [rip + 0x31c565]
00000001402ff20b call     0x140044420
00000001402ff210 movzx    edx, byte ptr [rbp - 0x21]
00000001402ff214 mov      byte ptr [rbx + 0x4a9a], dl
00000001402ff21a mov      ecx, dword ptr [rdi]
00000001402ff21c mov      eax, dword ptr [rsi]
00000001402ff21e cmp      ecx, eax
00000001402ff220 jae      0x1402ff90a
00000001402ff226 lea      r8, [rip + 0x32fe93]
00000001402ff22d jmp      0x1402ff8f9
00000001402ff232 lea      rdx, [rip + 0x32fea7]
00000001402ff239 mov      rcx, r12
00000001402ff23c call     0x140044360
00000001402ff241 lea      r8, [rbp - 0x21]
00000001402ff245 lea      rdx, [rip + 0x31c524]
00000001402ff24c test     eax, eax
00000001402ff24e jne      0x1402ff27a
00000001402ff250 mov      rcx, r15
00000001402ff253 call     0x140044420
00000001402ff258 movzx    edx, byte ptr [rbp - 0x21]
00000001402ff25c mov      byte ptr [rbx + 0x49e0], dl
00000001402ff262 mov      ecx, dword ptr [rdi]
00000001402ff264 mov      eax, dword ptr [rsi]
00000001402ff266 cmp      ecx, eax
00000001402ff268 jae      0x1402ff90a
00000001402ff26e lea      r8, [rip + 0x32fe7b]
00000001402ff275 jmp      0x1402ff8f9
00000001402ff27a mov      rcx, r12
00000001402ff27d call     0x140044420
00000001402ff282 lea      r8, [rbp - 0x1d]
00000001402ff286 mov      rcx, r15
00000001402ff289 lea      rdx, [rip + 0x2f8110]
00000001402ff290 call     0x140044420
00000001402ff295 mov      r9d, dword ptr [rbx + 0x998]
00000001402ff29c mov      rcx, rbx
00000001402ff29f mov      r8d, dword ptr [rbp - 0x1d]
00000001402ff2a3 mov      edx, dword ptr [rbp - 0x21]
00000001402ff2a6 call     0x1403f88a4
00000001402ff2ab mov      r15d, eax
00000001402ff2ae mov      eax, dword ptr [rbp - 0x21]
00000001402ff2b1 test     eax, eax
00000001402ff2b3 jne      0x1402ff326
00000001402ff2b5 mov      eax, dword ptr [rbx + 0x13f0]
00000001402ff2bb mov      ecx, dword ptr [rsi]
00000001402ff2bd and      eax, 0x1800000
00000001402ff2c2 cmp      dword ptr [rdi], ecx
00000001402ff2c4 jae      0x1402ff446
00000001402ff2ca mov      ebx, dword ptr [rdi]
00000001402ff2cc mov      ecx, r15d
00000001402ff2cf and      ecx, 3
00000001402ff2d2 mov      dl, 2
00000001402ff2d4 test     eax, eax
00000001402ff2d6 je       0x1402ff30f
00000001402ff2d8 call     0x1403e93c0
00000001402ff2dd movzx    r8d, ax
00000001402ff2e1 mov      dword ptr [rsp + 0x28], r8d
00000001402ff2e6 lea      r8, [rip + 0x32fe23]
00000001402ff2ed mov      r9d, r15d
00000001402ff2f0 shr      r9d, 2
00000001402ff2f4 mov      edx, dword ptr [rsi]
00000001402ff2f6 lea      rcx, [r14 + rbx]
00000001402ff2fa mov      dword ptr [rsp + 0x20], r9d
00000001402ff2ff sub      edx, ebx
00000001402ff301 mov      r9d, dword ptr [rbp - 0x1d]
00000001402ff305 call     0x140044426
00000001402ff30a jmp      0x1402ff444
00000001402ff30f call     0x1403e93c0
00000001402ff314 movzx    r8d, ax
00000001402ff318 mov      dword ptr [rsp + 0x28], r8d
00000001402ff31d lea      r8, [rip + 0x32fe2c]
00000001402ff324 jmp      0x1402ff2ed
00000001402ff326 cmp      eax, 1
00000001402ff329 jne      0x1402ff35c
00000001402ff32b mov      eax, dword ptr [rsi]
00000001402ff32d cmp      dword ptr [rdi], eax
00000001402ff32f jae      0x1402ff446
00000001402ff335 mov      ebx, dword ptr [rdi]
00000001402ff337 mov      ecx, r15d
00000001402ff33a and      ecx, 1
00000001402ff33d mov      dl, 1
00000001402ff33f call     0x1403e93c0
00000001402ff344 movzx    r8d, ax
00000001402ff348 mov      r9d, r15d
00000001402ff34b mov      dword ptr [rsp + 0x28], r8d
00000001402ff350 lea      r8, [rip + 0x32fe39]
00000001402ff357 shr      r9d, 1
00000001402ff35a jmp      0x1402ff2f4
00000001402ff35c cmp      eax, 2
00000001402ff35f jne      0x1402ff395
00000001402ff361 mov      eax, dword ptr [rsi]
00000001402ff363 cmp      dword ptr [rdi], eax
00000001402ff365 jae      0x1402ff446
00000001402ff36b mov      ebx, dword ptr [rdi]
00000001402ff36d mov      ecx, r15d
00000001402ff370 and      ecx, 1
00000001402ff373 mov      dl, 1
00000001402ff375 call     0x1403e93c0
00000001402ff37a movzx    r8d, ax
00000001402ff37e mov      r9d, r15d
00000001402ff381 mov      dword ptr [rsp + 0x28], r8d
00000001402ff386 lea      r8, [rip + 0x32fe43]
00000001402ff38d shr      r9d, 1
00000001402ff390 jmp      0x1402ff2f4
00000001402ff395 cmp      eax, 3
00000001402ff398 jne      0x1402ff3d3
00000001402ff39a mov      eax, dword ptr [rsi]
00000001402ff39c cmp      dword ptr [rdi], eax
00000001402ff39e jae      0x1402ff446
00000001402ff3a4 mov      ebx, dword ptr [rdi]
00000001402ff3a6 mov      ecx, r15d
00000001402ff3a9 and      ecx, 1
00000001402ff3ac mov      dl, 1
00000001402ff3ae call     0x1403e93c0
00000001402ff3b3 mov      edx, dword ptr [rsi]
00000001402ff3b5 lea      rcx, [r14 + rbx]
00000001402ff3b9 movzx    r8d, ax
00000001402ff3bd mov      r9d, r15d
00000001402ff3c0 shr      r9d, 1
00000001402ff3c3 mov      dword ptr [rsp + 0x20], r8d
00000001402ff3c8 sub      edx, ebx
00000001402ff3ca lea      r8, [rip + 0x32fe3f]
00000001402ff3d1 jmp      0x1402ff43f
00000001402ff3d3 cmp      eax, 4
00000001402ff3d6 jne      0x1402ff41b
00000001402ff3d8 mov      dl, 0xc
00000001402ff3da mov      ecx, r15d
00000001402ff3dd call     0x1403e8aa0
00000001402ff3e2 mov      ecx, dword ptr [rsi]
00000001402ff3e4 mov      r12d, eax
00000001402ff3e7 cmp      dword ptr [rdi], ecx
00000001402ff3e9 jae      0x1402ff446
00000001402ff3eb mov      ebx, dword ptr [rdi]
00000001402ff3ed mov      ecx, r15d
00000001402ff3f0 and      ecx, 3
00000001402ff3f3 mov      dl, 2
00000001402ff3f5 call     0x1403e93c0
00000001402ff3fa mov      edx, dword ptr [rsi]
00000001402ff3fc lea      rcx, [r14 + rbx]
00000001402ff400 movzx    r8d, ax
00000001402ff404 sar      r12d, 2
00000001402ff408 mov      dword ptr [rsp + 0x20], r8d
00000001402ff40d sub      edx, ebx
00000001402ff40f lea      r8, [rip + 0x32fe2a]
00000001402ff416 mov      r9d, r12d
00000001402ff419 jmp      0x1402ff43f
00000001402ff41b cmp      eax, 5
00000001402ff41e jne      0x1402ff446
00000001402ff420 mov      ecx, dword ptr [rdi]
00000001402ff422 mov      eax, dword ptr [rsi]
00000001402ff424 cmp      ecx, eax
00000001402ff426 jae      0x1402ff446
00000001402ff428 mov      r9d, dword ptr [rbp - 0x1d]
00000001402ff42c lea      r8, [rip + 0x32fe3d]
00000001402ff433 sub      eax, ecx
00000001402ff435 mov      dword ptr [rsp + 0x20], r15d
00000001402ff43a mov      edx, eax
00000001402ff43c add      rcx, r14
00000001402ff43f call     0x140044426
00000001402ff444 add      dword ptr [rdi], eax
00000001402ff446 cmp      r15d, 0xffff
00000001402ff44d jne      0x1402ff90a
00000001402ff453 mov      ecx, dword ptr [rdi]
00000001402ff455 mov      eax, dword ptr [rsi]
00000001402ff457 cmp      ecx, eax
00000001402ff459 jae      0x1402ff90a
00000001402ff45f lea      r8, [rip + 0x32fe3a]
00000001402ff466 jmp      0x1402fe7fd
00000001402ff46b lea      rdx, [rip + 0x32fe3e]
00000001402ff472 mov      rcx, r12
00000001402ff475 call     0x140044360
00000001402ff47a test     eax, eax
00000001402ff47c jne      0x1402ff90a
00000001402ff482 cmp      byte ptr [r15 + 0x20], 0x2d
00000001402ff487 jne      0x1402ff5b6
00000001402ff48d cmp      byte ptr [r15 + 0x21], 0x68
00000001402ff492 jne      0x1402ff5b6
00000001402ff498 cmp      byte ptr [r15 + 0x22], r13b
00000001402ff49c jne      0x1402ff5b6
00000001402ff4a2 mov      eax, dword ptr [rdi]
00000001402ff4a4 mov      ecx, dword ptr [rsi]
00000001402ff4a6 cmp      eax, ecx
00000001402ff4a8 jae      0x1402ff4c2
00000001402ff4aa sub      ecx, eax
00000001402ff4ac lea      r8, [rip + 0x32fe0d]
00000001402ff4b3 mov      edx, ecx
00000001402ff4b5 lea      rcx, [r14 + rax]
00000001402ff4b9 call     0x140044426
00000001402ff4be add      dword ptr [rdi], eax
00000001402ff4c0 mov      eax, dword ptr [rdi]
00000001402ff4c2 mov      ecx, dword ptr [rsi]
00000001402ff4c4 cmp      eax, ecx
00000001402ff4c6 jae      0x1402ff4e1
00000001402ff4c8 sub      ecx, eax
00000001402ff4ca lea      r8, [rip + 0x32fe1f]
00000001402ff4d1 mov      edx, ecx
00000001402ff4d3 mov      ecx, eax
00000001402ff4d5 add      rcx, r14
00000001402ff4d8 call     0x140044426
00000001402ff4dd add      dword ptr [rdi], eax
00000001402ff4df mov      eax, dword ptr [rdi]
00000001402ff4e1 mov      ecx, dword ptr [rsi]
00000001402ff4e3 cmp      eax, ecx
00000001402ff4e5 jae      0x1402ff500
00000001402ff4e7 sub      ecx, eax
00000001402ff4e9 lea      r8, [rip + 0x32fe10]
00000001402ff4f0 mov      edx, ecx
00000001402ff4f2 mov      ecx, eax
00000001402ff4f4 add      rcx, r14
00000001402ff4f7 call     0x140044426
00000001402ff4fc add      dword ptr [rdi], eax
00000001402ff4fe mov      eax, dword ptr [rdi]
00000001402ff500 mov      ecx, dword ptr [rsi]
00000001402ff502 cmp      eax, ecx
00000001402ff504 jae      0x1402ff51f
00000001402ff506 sub      ecx, eax
00000001402ff508 lea      r8, [rip + 0x32fe01]
00000001402ff50f mov      edx, ecx
00000001402ff511 mov      ecx, eax
00000001402ff513 add      rcx, r14
00000001402ff516 call     0x140044426
00000001402ff51b add      dword ptr [rdi], eax
00000001402ff51d mov      eax, dword ptr [rdi]
00000001402ff51f mov      ecx, dword ptr [rsi]
00000001402ff521 cmp      eax, ecx
00000001402ff523 jae      0x1402ff53e
00000001402ff525 sub      ecx, eax
00000001402ff527 lea      r8, [rip + 0x32fdf2]
00000001402ff52e mov      edx, ecx
00000001402ff530 mov      ecx, eax
00000001402ff532 add      rcx, r14
00000001402ff535 call     0x140044426
00000001402ff53a add      dword ptr [rdi], eax
00000001402ff53c mov      eax, dword ptr [rdi]
00000001402ff53e mov      ecx, dword ptr [rsi]
00000001402ff540 cmp      eax, ecx
00000001402ff542 jae      0x1402ff55d
00000001402ff544 sub      ecx, eax
00000001402ff546 lea      r8, [rip + 0x32fdf3]
00000001402ff54d mov      edx, ecx
00000001402ff54f mov      ecx, eax
00000001402ff551 add      rcx, r14
00000001402ff554 call     0x140044426
00000001402ff559 add      dword ptr [rdi], eax
00000001402ff55b mov      eax, dword ptr [rdi]
00000001402ff55d mov      ecx, dword ptr [rsi]
00000001402ff55f cmp      eax, ecx
00000001402ff561 jae      0x1402ff57c
00000001402ff563 sub      ecx, eax
00000001402ff565 lea      r8, [rip + 0x32fdf4]
00000001402ff56c mov      edx, ecx
00000001402ff56e mov      ecx, eax
00000001402ff570 add      rcx, r14
00000001402ff573 call     0x140044426
00000001402ff578 add      dword ptr [rdi], eax
00000001402ff57a mov      eax, dword ptr [rdi]
00000001402ff57c mov      ecx, dword ptr [rsi]
00000001402ff57e cmp      eax, ecx
00000001402ff580 jae      0x1402ff59b
00000001402ff582 sub      ecx, eax
00000001402ff584 lea      r8, [rip + 0x32fdf5]
00000001402ff58b mov      edx, ecx
00000001402ff58d mov      ecx, eax
00000001402ff58f add      rcx, r14
00000001402ff592 call     0x140044426
00000001402ff597 add      dword ptr [rdi], eax
00000001402ff599 mov      eax, dword ptr [rdi]
00000001402ff59b mov      edx, dword ptr [rsi]
00000001402ff59d cmp      eax, edx
00000001402ff59f jae      0x1402ff5b6
00000001402ff5a1 mov      ecx, eax
00000001402ff5a3 lea      r8, [rip + 0x32fde6]
00000001402ff5aa add      rcx, r14
00000001402ff5ad sub      edx, eax
00000001402ff5af call     0x140044426
00000001402ff5b4 add      dword ptr [rdi], eax
00000001402ff5b6 lea      rdx, [rip + 0x32fde3]
00000001402ff5bd lea      rcx, [r15 + 0x20]
00000001402ff5c1 call     0x140044360
00000001402ff5c6 test     eax, eax
00000001402ff5c8 jne      0x1402ff70f
00000001402ff5ce lea      rdx, [rip + 0x32f79b]
00000001402ff5d5 lea      rcx, [r15 + 0x30]
00000001402ff5d9 call     0x140044360
00000001402ff5de test     eax, eax
00000001402ff5e0 jne      0x1402ff62d
00000001402ff5e2 mov      ecx, dword ptr [rdi]
00000001402ff5e4 mov      eax, dword ptr [rsi]
00000001402ff5e6 cmp      ecx, eax
00000001402ff5e8 jae      0x1402ff5ff
00000001402ff5ea sub      eax, ecx
00000001402ff5ec lea      r8, [rip + 0x32fdbd]
00000001402ff5f3 mov      edx, eax
00000001402ff5f5 add      rcx, r14
00000001402ff5f8 call     0x140044426
00000001402ff5fd add      dword ptr [rdi], eax
00000001402ff5ff mov      qword ptr [rsp + 0x48], rsi
00000001402ff604 xor      r9d, r9d
00000001402ff607 mov      qword ptr [rsp + 0x40], r14
00000001402ff60c xor      r8d, r8d
00000001402ff60f mov      qword ptr [rsp + 0x38], rdi
00000001402ff614 mov      dl, 1
00000001402ff616 mov      word ptr [rsp + 0x30], r13w
00000001402ff61c mov      word ptr [rsp + 0x28], r13w
00000001402ff622 mov      word ptr [rsp + 0x20], r13w
00000001402ff628 jmp      0x1402ff702
00000001402ff62d lea      r8, [rbp - 0x21]
00000001402ff631 lea      rdx, [rip + 0x31c138]
00000001402ff638 lea      rcx, [r15 + 0x30]
00000001402ff63c call     0x140044420
00000001402ff641 lea      rcx, [r15 + 0x40]
00000001402ff645 lea      r8, [rbp - 0x1d]
00000001402ff649 lea      rdx, [rip + 0x31c120]
00000001402ff650 call     0x140044420
00000001402ff655 lea      rcx, [r15 + 0x50]
00000001402ff659 lea      r8, [rbp - 0x19]
00000001402ff65d lea      rdx, [rip + 0x31c10c]
00000001402ff664 call     0x140044420
00000001402ff669 lea      rcx, [r15 + 0x60]
00000001402ff66d lea      r8, [rbp - 0x15]
00000001402ff671 lea      rdx, [rip + 0x31c0f8]
00000001402ff678 call     0x140044420
00000001402ff67d lea      rcx, [r15 + 0x70]
00000001402ff681 lea      r8, [rbp - 0x11]
00000001402ff685 lea      rdx, [rip + 0x31c0e4]
00000001402ff68c call     0x140044420
00000001402ff691 mov      ecx, dword ptr [rdi]
00000001402ff693 mov      eax, dword ptr [rsi]
00000001402ff695 cmp      ecx, eax
00000001402ff697 jae      0x1402ff6ce
00000001402ff699 mov      r9d, dword ptr [rbp - 0x21]
00000001402ff69d lea      r8, [rip + 0x32fd1c]
00000001402ff6a4 sub      eax, ecx
00000001402ff6a6 add      rcx, r14
00000001402ff6a9 mov      edx, eax
00000001402ff6ab mov      eax, dword ptr [rbp - 0x11]
00000001402ff6ae mov      dword ptr [rsp + 0x38], eax
00000001402ff6b2 mov      eax, dword ptr [rbp - 0x15]
00000001402ff6b5 mov      dword ptr [rsp + 0x30], eax
00000001402ff6b9 mov      eax, dword ptr [rbp - 0x19]
00000001402ff6bc mov      dword ptr [rsp + 0x28], eax
00000001402ff6c0 mov      eax, dword ptr [rbp - 0x1d]
00000001402ff6c3 mov      dword ptr [rsp + 0x20], eax
00000001402ff6c7 call     0x140044426
00000001402ff6cc add      dword ptr [rdi], eax
00000001402ff6ce movzx    eax, word ptr [rbp - 0x11]
00000001402ff6d2 xor      edx, edx
00000001402ff6d4 mov      r9b, byte ptr [rbp - 0x1d]
00000001402ff6d8 mov      r8b, byte ptr [rbp - 0x21]
00000001402ff6dc mov      qword ptr [rsp + 0x48], rsi
00000001402ff6e1 mov      qword ptr [rsp + 0x40], r14
00000001402ff6e6 mov      qword ptr [rsp + 0x38], rdi
00000001402ff6eb mov      word ptr [rsp + 0x30], ax
00000001402ff6f0 movzx    eax, word ptr [rbp - 0x15]
00000001402ff6f4 mov      word ptr [rsp + 0x28], ax
00000001402ff6f9 movzx    eax, word ptr [rbp - 0x19]
00000001402ff6fd mov      word ptr [rsp + 0x20], ax
00000001402ff702 mov      rcx, rbx
00000001402ff705 call     0x14030007c
00000001402ff70a jmp      0x1402ff90a
00000001402ff70f lea      rcx, [r15 + 0x20]
00000001402ff713 lea      rdx, [rip + 0x32fce6]
00000001402ff71a call     0x140044360
00000001402ff71f test     eax, eax
00000001402ff721 jne      0x1402ff74d
00000001402ff723 mov      ecx, dword ptr [rdi]
00000001402ff725 mov      eax, dword ptr [rsi]
00000001402ff727 cmp      ecx, eax
00000001402ff729 jae      0x1402ff740
00000001402ff72b sub      eax, ecx
00000001402ff72d lea      r8, [rip + 0x32fcdc]
00000001402ff734 mov      edx, eax
00000001402ff736 add      rcx, r14
00000001402ff739 call     0x140044426
00000001402ff73e add      dword ptr [rdi], eax
00000001402ff740 mov      rcx, rbx
00000001402ff743 call     0x14032b9b0
00000001402ff748 jmp      0x1402ff90a
00000001402ff74d lea      rcx, [r15 + 0x20]
00000001402ff751 lea      rdx, [rip + 0x2f8f58]
00000001402ff758 call     0x140044360
00000001402ff75d test     eax, eax
00000001402ff75f jne      0x1402ff781
00000001402ff761 mov      rcx, rbx
00000001402ff764 call     0x140300790
00000001402ff769 mov      ecx, dword ptr [rdi]
00000001402ff76b mov      eax, dword ptr [rsi]
00000001402ff76d cmp      ecx, eax
00000001402ff76f jae      0x1402ff90a
00000001402ff775 lea      r8, [rip + 0x32fca4]
00000001402ff77c jmp      0x1402fe7fd
00000001402ff781 lea      rcx, [r15 + 0x20]
00000001402ff785 lea      rdx, [rip + 0x32fca4]
00000001402ff78c call     0x140044360
00000001402ff791 test     eax, eax
00000001402ff793 jne      0x1402ff7f7
00000001402ff795 lea      rcx, [r15 + 0x30]
00000001402ff799 lea      r8, [rbp - 0x21]
00000001402ff79d lea      rdx, [rip + 0x31bfcc]
00000001402ff7a4 call     0x140044420
00000001402ff7a9 mov      eax, dword ptr [rbp - 0x21]
00000001402ff7ac mov      rcx, rbx
00000001402ff7af shl      eax, 3
00000001402ff7b2 mov      dword ptr [rbx + 0x2f8c], eax
00000001402ff7b8 call     0x1402fff5c
00000001402ff7bd mov      r8d, dword ptr [rdi]
00000001402ff7c0 mov      ecx, dword ptr [rsi]
00000001402ff7c2 cmp      r8d, ecx
00000001402ff7c5 jae      0x1402ff90a
00000001402ff7cb sub      ecx, r8d
00000001402ff7ce mov      edx, ecx
00000001402ff7d0 lea      rcx, [r14 + r8]
00000001402ff7d4 test     al, al
00000001402ff7d6 je       0x1402ff7eb
00000001402ff7d8 mov      r9d, dword ptr [rbx + 0x2f8c]
00000001402ff7df lea      r8, [rip + 0x32fc5a]
00000001402ff7e6 jmp      0x1402ff903
00000001402ff7eb lea      r8, [rip + 0x32fc7e]
00000001402ff7f2 jmp      0x1402fe804
00000001402ff7f7 lea      rcx, [r15 + 0x20]
00000001402ff7fb lea      rdx, [rip + 0x32fc8e]
00000001402ff802 call     0x140044360
00000001402ff807 test     eax, eax
00000001402ff809 jne      0x1402ff841
00000001402ff80b lea      rcx, [r15 + 0x30]
00000001402ff80f lea      r8, [rbp - 0x21]
00000001402ff813 lea      rdx, [rip + 0x31bf56]
00000001402ff81a call     0x140044420
00000001402ff81f movzx    edx, byte ptr [rbp - 0x21]
00000001402ff823 mov      byte ptr [rbx + 0x2fa8], dl
00000001402ff829 mov      ecx, dword ptr [rdi]
00000001402ff82b mov      eax, dword ptr [rsi]
00000001402ff82d cmp      ecx, eax
00000001402ff82f jae      0x1402ff90a
00000001402ff835 lea      r8, [rip + 0x32fc64]
00000001402ff83c jmp      0x1402ff8f9
00000001402ff841 lea      rcx, [r15 + 0x20]
00000001402ff845 lea      rdx, [rip + 0x32fc74]
00000001402ff84c call     0x140044360
00000001402ff851 test     eax, eax
00000001402ff853 jne      0x1402ff888
00000001402ff855 lea      rcx, [r15 + 0x30]
00000001402ff859 lea      r8, [rbp - 0x21]
00000001402ff85d lea      rdx, [rip + 0x31bf0c]
00000001402ff864 call     0x140044420
00000001402ff869 movzx    edx, byte ptr [rbp - 0x21]
00000001402ff86d mov      byte ptr [rbx + 0x2fa9], dl
00000001402ff873 mov      ecx, dword ptr [rdi]
00000001402ff875 mov      eax, dword ptr [rsi]
00000001402ff877 cmp      ecx, eax
00000001402ff879 jae      0x1402ff90a
00000001402ff87f lea      r8, [rip + 0x32fc4a]
00000001402ff886 jmp      0x1402ff8f9
00000001402ff888 lea      rcx, [r15 + 0x20]
00000001402ff88c lea      rdx, [rip + 0x32fc4d]
00000001402ff893 call     0x140044360
00000001402ff898 test     eax, eax
00000001402ff89a jne      0x1402ff8b8
00000001402ff89c mov      rcx, rbx
00000001402ff89f call     0x140300750
00000001402ff8a4 mov      ecx, dword ptr [rdi]
00000001402ff8a6 mov      eax, dword ptr [rsi]
00000001402ff8a8 cmp      ecx, eax
00000001402ff8aa jae      0x1402ff90a
00000001402ff8ac lea      r8, [rip + 0x32fc3d]
00000001402ff8b3 jmp      0x1402fe7fd
00000001402ff8b8 lea      rcx, [r15 + 0x20]
00000001402ff8bc lea      rdx, [rip + 0x32fc3d]
00000001402ff8c3 call     0x140044360
00000001402ff8c8 test     eax, eax
00000001402ff8ca jne      0x1402ff90a
00000001402ff8cc lea      rcx, [r15 + 0x30]
00000001402ff8d0 lea      r8, [rbp - 0x21]
00000001402ff8d4 lea      rdx, [rip + 0x31be95]
00000001402ff8db call     0x140044420
00000001402ff8e0 movzx    edx, byte ptr [rbp - 0x21]
00000001402ff8e4 mov      byte ptr [rbx + 0x2f78], dl
00000001402ff8ea mov      ecx, dword ptr [rdi]
00000001402ff8ec mov      eax, dword ptr [rsi]
00000001402ff8ee cmp      ecx, eax
00000001402ff8f0 jae      0x1402ff90a
00000001402ff8f2 lea      r8, [rip + 0x32fc17]
00000001402ff8f9 mov      r9d, edx
00000001402ff8fc sub      eax, ecx
00000001402ff8fe add      rcx, r14
00000001402ff901 mov      edx, eax
00000001402ff903 call     0x140044426
00000001402ff908 add      dword ptr [rdi], eax
00000001402ff90a mov      rcx, qword ptr [rbp + 7]
00000001402ff90e xor      rcx, rsp
00000001402ff911 call     0x1405f45b0
00000001402ff916 add      rsp, 0x98
00000001402ff91d pop      r15
00000001402ff91f pop      r14
00000001402ff921 pop      r13
00000001402ff923 pop      r12
00000001402ff925 pop      rdi
00000001402ff926 pop      rsi
00000001402ff927 pop      rbx
00000001402ff928 pop      rbp
00000001402ff929 ret      