00000001402eb348 mov      qword ptr [rsp + 0x10], rbx
00000001402eb34d push     rbp
00000001402eb34e push     rsi
00000001402eb34f push     rdi
00000001402eb350 push     r12
00000001402eb352 push     r13
00000001402eb354 push     r14
00000001402eb356 push     r15
00000001402eb358 lea      rbp, [rsp - 0xf]
00000001402eb35d sub      rsp, 0xb0
00000001402eb364 mov      rax, qword ptr [rip + 0x63c0f5]
00000001402eb36b xor      rax, rsp
00000001402eb36e mov      qword ptr [rbp - 1], rax
00000001402eb372 mov      r12, qword ptr [rbp + 0x77]
00000001402eb376 mov      rdi, rcx
00000001402eb379 mov      rcx, qword ptr [rcx + 0x9a0]
00000001402eb380 xorps    xmm0, xmm0
00000001402eb383 mov      esi, 1
00000001402eb388 mov      qword ptr [rbp - 0x51], rcx
00000001402eb38c mov      ecx, edx
00000001402eb38e mov      dword ptr [rbp - 0x59], r8d
00000001402eb392 mov      ebx, r9d
00000001402eb395 mov      dword ptr [rbp - 0x5d], edx
00000001402eb398 xorps    xmm1, xmm1
00000001402eb39b mov      dword ptr [rbp - 0x61], ebx
00000001402eb39e mov      r14d, esi
00000001402eb3a1 mov      qword ptr [rbp - 0x49], r12
00000001402eb3a5 shl      r14d, cl
00000001402eb3a8 mov      eax, edx
00000001402eb3aa movups   xmmword ptr [rbp - 0x21], xmm0
00000001402eb3ae movups   xmmword ptr [rbp - 0x11], xmm0
00000001402eb3b2 movdqu   xmmword ptr [rbp - 0x3d], xmm1
00000001402eb3b7 mov      r10, qword ptr [rip + 0x634c42]
00000001402eb3be lea      r11, [rip + 0x634c3b]
00000001402eb3c5 movzx    r15d, byte ptr [rbp + 0x6f]
00000001402eb3ca mov      edx, 0x2000000
00000001402eb3cf lea      r13, [rip + 0x3afc8a]
00000001402eb3d6 cmp      r10, r11
00000001402eb3d9 je       0x1402eb459
00000001402eb3db cmp      byte ptr [r10 + 0x1e9], 4
00000001402eb3e3 jb       0x1402eb459
00000001402eb3e5 test     dword ptr [r10 + 0x1ec], edx
00000001402eb3ec je       0x1402eb459
00000001402eb3ee mov      rcx, qword ptr [r10 + 0x1d8]
00000001402eb3f5 lea      rdx, [rip + 0x33ff34]
00000001402eb3fc cmp      r8d, 2
00000001402eb400 mov      dword ptr [rsp + 0x30], r15d
00000001402eb405 lea      rax, [rip + 0x33ff34]
00000001402eb40c mov      dword ptr [rsp + 0x28], ebx
00000001402eb410 cmove    rax, rdx
00000001402eb414 lea      r9, [rip + 0x33ff45]
00000001402eb41b cmp      r8d, 3
00000001402eb41f lea      rdx, [rip + 0x33fefa]
00000001402eb426 cmove    rax, rdx
00000001402eb42a cmp      r8d, esi
00000001402eb42d lea      rdx, [rip + 0x33fedc]
00000001402eb434 mov      r8, r13
00000001402eb437 cmove    rax, rdx
00000001402eb43b lea      edx, [rsi + 0x51]
00000001402eb43e mov      qword ptr [rsp + 0x20], rax
00000001402eb443 call     0x1400aa578
00000001402eb448 mov      eax, dword ptr [rbp - 0x5d]
00000001402eb44b lea      r11, [rip + 0x634bae]
00000001402eb452 mov      edx, 0x2000000
00000001402eb457 jmp      0x1402eb459
00000001402eb459 cmp      r15b, 5
00000001402eb45d jbe      0x1402eb498
00000001402eb45f mov      rcx, qword ptr [rip + 0x634b9a]
00000001402eb466 cmp      rcx, r11
00000001402eb469 je       0x1402ebe47
00000001402eb46f cmp      byte ptr [rcx + 0x169], 3
00000001402eb476 jb       0x1402ebe47
00000001402eb47c test     dword ptr [rcx + 0x16c], 0x1000
00000001402eb486 je       0x1402ebe47
00000001402eb48c mov      edx, 0x53
00000001402eb491 mov      dword ptr [rsp + 0x20], r15d
00000001402eb496 jmp      0x1402eb4d3
00000001402eb498 cmp      ebx, 4
00000001402eb49b jl       0x1402eb4ee
00000001402eb49d mov      rcx, qword ptr [rip + 0x634b5c]
00000001402eb4a4 cmp      rcx, r11
00000001402eb4a7 je       0x1402ebe47
00000001402eb4ad cmp      byte ptr [rcx + 0x169], 3
00000001402eb4b4 jb       0x1402ebe47
00000001402eb4ba test     dword ptr [rcx + 0x16c], 0x1000
00000001402eb4c4 je       0x1402ebe47
00000001402eb4ca mov      edx, 0x54
00000001402eb4cf mov      dword ptr [rsp + 0x20], ebx
00000001402eb4d3 mov      rcx, qword ptr [rcx + 0x158]
00000001402eb4da lea      r9, [rip + 0x33fe7f]
00000001402eb4e1 mov      r8, r13
00000001402eb4e4 call     0x1400088d8
00000001402eb4e9 jmp      0x1402ebe47
00000001402eb4ee cmp      eax, esi
00000001402eb4f0 jne      0x1402eb58c
00000001402eb4f6 mov      rcx, qword ptr [rip + 0x634b03]
00000001402eb4fd cmp      rcx, r11
00000001402eb500 je       0x1402eb52e
00000001402eb502 cmp      byte ptr [rcx + 0x1e9], 4
00000001402eb509 jb       0x1402eb52e
00000001402eb50b test     dword ptr [rcx + 0x1ec], edx
00000001402eb511 je       0x1402eb52e
00000001402eb513 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eb51a mov      edx, 0x55
00000001402eb51f mov      r8, r13
00000001402eb522 call     0x140001b88
00000001402eb527 lea      r11, [rip + 0x634ad2]
00000001402eb52e cmp      r15b, sil
00000001402eb531 jbe      0x1402eb56a
00000001402eb533 mov      rcx, qword ptr [rip + 0x634ac6]
00000001402eb53a cmp      rcx, r11
00000001402eb53d je       0x1402ebe47
00000001402eb543 cmp      byte ptr [rcx + 0x169], 3
00000001402eb54a jb       0x1402ebe47
00000001402eb550 test     dword ptr [rcx + 0x16c], 0x1000
00000001402eb55a je       0x1402ebe47
00000001402eb560 mov      edx, 0x56
00000001402eb565 jmp      0x1402ebe38
00000001402eb56a mov      eax, dword ptr [rdi + 0x1c64]
00000001402eb570 lea      r13, [rdi + 0x1c68]
00000001402eb577 mov      dword ptr [rbp - 0x41], eax
00000001402eb57a mov      r12d, 0x15b4
00000001402eb580 lea      rax, [rip + 0x675b9]
00000001402eb587 jmp      0x1402eb8de
00000001402eb58c cmp      eax, 5
00000001402eb58f jne      0x1402eb629
00000001402eb595 mov      rcx, qword ptr [rip + 0x634a64]
00000001402eb59c cmp      rcx, r11
00000001402eb59f je       0x1402eb5cb
00000001402eb5a1 cmp      byte ptr [rcx + 0x1e9], 4
00000001402eb5a8 jb       0x1402eb5cb
00000001402eb5aa test     dword ptr [rcx + 0x1ec], edx
00000001402eb5b0 je       0x1402eb5cb
00000001402eb5b2 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eb5b9 lea      edx, [rax + 0x52]
00000001402eb5bc mov      r8, r13
00000001402eb5bf call     0x140001b88
00000001402eb5c4 lea      r11, [rip + 0x634a35]
00000001402eb5cb cmp      r15b, sil
00000001402eb5ce jbe      0x1402eb607
00000001402eb5d0 mov      rcx, qword ptr [rip + 0x634a29]
00000001402eb5d7 cmp      rcx, r11
00000001402eb5da je       0x1402ebe47
00000001402eb5e0 cmp      byte ptr [rcx + 0x169], 3
00000001402eb5e7 jb       0x1402ebe47
00000001402eb5ed test     dword ptr [rcx + 0x16c], 0x1000
00000001402eb5f7 je       0x1402ebe47
00000001402eb5fd mov      edx, 0x58
00000001402eb602 jmp      0x1402ebe38
00000001402eb607 mov      eax, dword ptr [rdi + 0x1c18]
00000001402eb60d lea      r13, [rdi + 0x1c1c]
00000001402eb614 mov      dword ptr [rbp - 0x41], eax
00000001402eb617 mov      r12d, 0x15b6
00000001402eb61d lea      rax, [rip + 0x5ac6c]
00000001402eb624 jmp      0x1402eb8de
00000001402eb629 cmp      eax, 6
00000001402eb62c jne      0x1402eb6c7
00000001402eb632 mov      rcx, qword ptr [rip + 0x6349c7]
00000001402eb639 cmp      rcx, r11
00000001402eb63c je       0x1402eb668
00000001402eb63e cmp      byte ptr [rcx + 0x1e9], 4
00000001402eb645 jb       0x1402eb668
00000001402eb647 test     dword ptr [rcx + 0x1ec], edx
00000001402eb64d je       0x1402eb668
00000001402eb64f mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eb656 lea      edx, [rax + 0x53]
00000001402eb659 mov      r8, r13
00000001402eb65c call     0x140001b88
00000001402eb661 lea      r11, [rip + 0x634998]
00000001402eb668 cmp      r15b, sil
00000001402eb66b jbe      0x1402eb6a4
00000001402eb66d mov      rcx, qword ptr [rip + 0x63498c]
00000001402eb674 cmp      rcx, r11
00000001402eb677 je       0x1402ebe47
00000001402eb67d cmp      byte ptr [rcx + 0x169], 3
00000001402eb684 jb       0x1402ebe47
00000001402eb68a test     dword ptr [rcx + 0x16c], 0x1000
00000001402eb694 je       0x1402ebe47
00000001402eb69a mov      edx, 0x5a
00000001402eb69f jmp      0x1402ebe38
00000001402eb6a4 movzx    eax, byte ptr [rdi + 0x1f7d]
00000001402eb6ab lea      r13, [rdi + 0x1f90]
00000001402eb6b2 mov      dword ptr [rbp - 0x41], eax
00000001402eb6b5 mov      r12d, 0x15b7
00000001402eb6bb lea      rax, [rip + 0xf521e]
00000001402eb6c2 jmp      0x1402eb8de
00000001402eb6c7 cmp      eax, 0xb
00000001402eb6ca jne      0x1402eb793
00000001402eb6d0 mov      rcx, qword ptr [rip + 0x634929]
00000001402eb6d7 cmp      rcx, r11
00000001402eb6da je       0x1402eb706
00000001402eb6dc cmp      byte ptr [rcx + 0x1e9], 4
00000001402eb6e3 jb       0x1402eb706
00000001402eb6e5 test     dword ptr [rcx + 0x1ec], edx
00000001402eb6eb je       0x1402eb706
00000001402eb6ed mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eb6f4 lea      edx, [rax + 0x50]
00000001402eb6f7 mov      r8, r13
00000001402eb6fa call     0x140001b88
00000001402eb6ff lea      r11, [rip + 0x6348fa]
00000001402eb706 cmp      r15b, 2
00000001402eb70a jbe      0x1402eb756
00000001402eb70c mov      rcx, qword ptr [rip + 0x6348ed]
00000001402eb713 cmp      rcx, r11
00000001402eb716 je       0x1402ebe47
00000001402eb71c cmp      byte ptr [rcx + 0x169], 3
00000001402eb723 jb       0x1402ebe47
00000001402eb729 test     dword ptr [rcx + 0x16c], 0x1000
00000001402eb733 je       0x1402ebe47
00000001402eb739 mov      rcx, qword ptr [rcx + 0x158]
00000001402eb740 mov      edx, 0x5c
00000001402eb745 mov      r8, r13
00000001402eb748 lea      r9d, [rdx - 0x5a]
00000001402eb74c call     0x140001bb0
00000001402eb751 jmp      0x1402ebe47
00000001402eb756 movzx    eax, byte ptr [rdi + 0x1e0d]
00000001402eb75d lea      r13, [rdi + 0x1f18]
00000001402eb764 mov      ecx, 0x6e
00000001402eb769 sub      ecx, eax
00000001402eb76b mov      eax, dword ptr [r12 + 4]
00000001402eb770 mov      dword ptr [rbp - 0x3d], eax
00000001402eb773 mov      r12d, 0x15b5
00000001402eb779 lea      rax, [rdi + 0x1f1c]
00000001402eb780 mov      dword ptr [rbp - 0x41], ecx
00000001402eb783 mov      qword ptr [rbp - 0x21], rax
00000001402eb787 lea      rax, [rip + 0xf9e22]
00000001402eb78e jmp      0x1402eb8de
00000001402eb793 cmp      eax, 4
00000001402eb796 jne      0x1402eb846
00000001402eb79c mov      rcx, qword ptr [rip + 0x63485d]
00000001402eb7a3 cmp      rcx, r11
00000001402eb7a6 je       0x1402eb7d1
00000001402eb7a8 cmp      byte ptr [rcx + 0x1e9], al
00000001402eb7ae jb       0x1402eb7d1
00000001402eb7b0 test     dword ptr [rcx + 0x1ec], edx
00000001402eb7b6 je       0x1402eb7d1
00000001402eb7b8 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eb7bf lea      edx, [rax + 0x59]
00000001402eb7c2 mov      r8, r13
00000001402eb7c5 call     0x140001b88
00000001402eb7ca lea      r11, [rip + 0x63482f]
00000001402eb7d1 cmp      r15b, 2
00000001402eb7d5 jbe      0x1402eb80e
00000001402eb7d7 mov      rcx, qword ptr [rip + 0x634822]
00000001402eb7de cmp      rcx, r11
00000001402eb7e1 je       0x1402ebe47
00000001402eb7e7 cmp      byte ptr [rcx + 0x169], 3
00000001402eb7ee jb       0x1402ebe47
00000001402eb7f4 test     dword ptr [rcx + 0x16c], 0x1000
00000001402eb7fe je       0x1402ebe47
00000001402eb804 mov      edx, 0x5e
00000001402eb809 jmp      0x1402ebe38
00000001402eb80e movzx    eax, byte ptr [rdi + 0x1c25]
00000001402eb815 lea      r13, [rdi + 0x1c54]
00000001402eb81c mov      dword ptr [rbp - 0x41], eax
00000001402eb81f mov      r12d, 0x15b8
00000001402eb825 movzx    eax, byte ptr [rdi + 0x1c26]
00000001402eb82c mov      dword ptr [rbp - 0x3d], eax
00000001402eb82f lea      rax, [rdi + 0x1c58]
00000001402eb836 mov      qword ptr [rbp - 0x21], rax
00000001402eb83a lea      rax, [rip + 0x5157f]
00000001402eb841 jmp      0x1402eb8de
00000001402eb846 cmp      eax, 0xc
00000001402eb849 jne      0x1402ebe12
00000001402eb84f mov      rcx, qword ptr [rip + 0x6347aa]
00000001402eb856 cmp      rcx, r11
00000001402eb859 je       0x1402eb885
00000001402eb85b cmp      byte ptr [rcx + 0x1e9], 4
00000001402eb862 jb       0x1402eb885
00000001402eb864 test     dword ptr [rcx + 0x1ec], edx
00000001402eb86a je       0x1402eb885
00000001402eb86c mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eb873 lea      edx, [rax + 0x53]
00000001402eb876 mov      r8, r13
00000001402eb879 call     0x140001b88
00000001402eb87e lea      r11, [rip + 0x63477b]
00000001402eb885 cmp      r15b, sil
00000001402eb888 jbe      0x1402eb8c1
00000001402eb88a mov      rcx, qword ptr [rip + 0x63476f]
00000001402eb891 cmp      rcx, r11
00000001402eb894 je       0x1402ebe47
00000001402eb89a cmp      byte ptr [rcx + 0x169], 3
00000001402eb8a1 jb       0x1402ebe47
00000001402eb8a7 test     dword ptr [rcx + 0x16c], 0x1000
00000001402eb8b1 je       0x1402ebe47
00000001402eb8b7 mov      edx, 0x60
00000001402eb8bc jmp      0x1402ebe38
00000001402eb8c1 mov      eax, dword ptr [rdi + 0x82d4]
00000001402eb8c7 lea      r13, [rdi + 0x82e8]
00000001402eb8ce mov      dword ptr [rbp - 0x41], eax
00000001402eb8d1 mov      r12d, 0x15b9
00000001402eb8d7 lea      rax, [rip + 0xfb6a2]
00000001402eb8de mov      qword ptr [rbp - 0x29], r13
00000001402eb8e2 mov      rcx, qword ptr [rbp - 0x51]
00000001402eb8e6 mov      r10d, 0x2000000
00000001402eb8ec mov      qword ptr [rcx + 0x15f8], rax
00000001402eb8f3 mov      rcx, qword ptr [rip + 0x634706]
00000001402eb8fa cmp      rcx, r11
00000001402eb8fd je       0x1402eb942
00000001402eb8ff cmp      byte ptr [rcx + 0x1e9], 4
00000001402eb906 jb       0x1402eb942
00000001402eb908 test     dword ptr [rcx + 0x1ec], r10d
00000001402eb90f je       0x1402eb942
00000001402eb911 movsx    eax, byte ptr [rdi + r12]
00000001402eb916 lea      r8, [rip + 0x3af743]
00000001402eb91d mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eb924 mov      edx, 0x64
00000001402eb929 mov      r9d, ebx
00000001402eb92c mov      dword ptr [rsp + 0x20], eax
00000001402eb930 call     0x140001bec
00000001402eb935 lea      r11, [rip + 0x6346c4]
00000001402eb93c mov      r10d, 0x2000000
00000001402eb942 mov      ecx, dword ptr [rbp - 0x59]
00000001402eb945 lea      eax, [rcx - 1]
00000001402eb948 cmp      eax, esi
00000001402eb94a jbe      0x1402ebbd4
00000001402eb950 cmp      ecx, 3
00000001402eb953 jne      0x1402ebab5
00000001402eb959 movsx    eax, byte ptr [rdi + r12]
00000001402eb95e cmp      ebx, eax
00000001402eb960 jge      0x1402eb9a4
00000001402eb962 mov      rcx, qword ptr [rip + 0x634697]
00000001402eb969 cmp      rcx, r11
00000001402eb96c je       0x1402ebe47
00000001402eb972 cmp      byte ptr [rcx + 0x1e9], 4
00000001402eb979 jb       0x1402ebe47
00000001402eb97f test     dword ptr [rcx + 0x1ec], r10d
00000001402eb986 je       0x1402ebe47
00000001402eb98c mov      edx, 0x6a
00000001402eb991 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eb998 lea      r8, [rip + 0x3af6c1]
00000001402eb99f jmp      0x1402ebe42
00000001402eb9a4 mov      eax, dword ptr [rdi + 0x15b0]
00000001402eb9aa test     r14d, eax
00000001402eb9ad jne      0x1402eb9e3
00000001402eb9af mov      rcx, qword ptr [rip + 0x63464a]
00000001402eb9b6 cmp      rcx, r11
00000001402eb9b9 je       0x1402ebb3c
00000001402eb9bf cmp      byte ptr [rcx + 0x1e9], 4
00000001402eb9c6 jb       0x1402ebb3c
00000001402eb9cc test     dword ptr [rcx + 0x1ec], r10d
00000001402eb9d3 je       0x1402ebb3c
00000001402eb9d9 mov      edx, 0x6b
00000001402eb9de jmp      0x1402ebb29
00000001402eb9e3 not      r14d
00000001402eb9e6 and      r14d, eax
00000001402eb9e9 mov      dword ptr [rdi + 0x15b0], r14d
00000001402eb9f0 mov      rcx, qword ptr [rip + 0x634609]
00000001402eb9f7 cmp      rcx, r11
00000001402eb9fa je       0x1402eba30
00000001402eb9fc cmp      byte ptr [rcx + 0x1e9], 4
00000001402eba03 jb       0x1402eba30
00000001402eba05 test     dword ptr [rcx + 0x1ec], r10d
00000001402eba0c je       0x1402eba30
00000001402eba0e mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eba15 lea      r8, [rip + 0x3af644]
00000001402eba1c mov      edx, 0x6c
00000001402eba21 mov      r9d, r14d
00000001402eba24 call     0x140001bb0
00000001402eba29 lea      r11, [rip + 0x6345d0]
00000001402eba30 xor      bl, bl
00000001402eba32 mov      byte ptr [rdi + r12], 0xff
00000001402eba37 test     r15b, r15b
00000001402eba3a je       0x1402eba96
00000001402eba3c mov      rcx, qword ptr [rip + 0x6345bd]
00000001402eba43 cmp      rcx, r11
00000001402eba46 je       0x1402eba8e
00000001402eba48 cmp      byte ptr [rcx + 0x1e9], 4
00000001402eba4f jb       0x1402eba8e
00000001402eba51 test     dword ptr [rcx + 0x1ec], 0x2000000
00000001402eba5b je       0x1402eba8e
00000001402eba5d mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eba64 lea      r8, [rip + 0x3af5f5]
00000001402eba6b movzx    eax, bl
00000001402eba6e mov      edx, 0x6d
00000001402eba73 movzx    r9d, bl
00000001402eba77 mov      rax, qword ptr [rbp + rax*8 - 0x29]
00000001402eba7c mov      eax, dword ptr [rax]
00000001402eba7e mov      dword ptr [rsp + 0x20], eax
00000001402eba82 call     0x140001bec
00000001402eba87 lea      r11, [rip + 0x634572]
00000001402eba8e add      bl, sil
00000001402eba91 cmp      bl, r15b
00000001402eba94 jb       0x1402eba3c
00000001402eba96 mov      rax, qword ptr [rbp - 0x51]
00000001402eba9a mov      r8b, r15b
00000001402eba9d mov      rdx, r13
00000001402ebaa0 mov      rcx, rdi
00000001402ebaa3 mov      rax, qword ptr [rax + 0x15f8]
00000001402ebaaa call     qword ptr [rip + 0x398848]
00000001402ebab0 jmp      0x1402ebb3c
00000001402ebab5 cmp      ecx, 4
00000001402ebab8 jne      0x1402ebb91
00000001402ebabe movsx    eax, byte ptr [rdi + r12]
00000001402ebac3 cmp      ebx, eax
00000001402ebac5 jge      0x1402ebafb
00000001402ebac7 mov      rcx, qword ptr [rip + 0x634532]
00000001402ebace cmp      rcx, r11
00000001402ebad1 je       0x1402ebe47
00000001402ebad7 cmp      byte ptr [rcx + 0x1e9], 4
00000001402ebade jb       0x1402ebe47
00000001402ebae4 test     dword ptr [rcx + 0x1ec], r10d
00000001402ebaeb je       0x1402ebe47
00000001402ebaf1 mov      edx, 0x6e
00000001402ebaf6 jmp      0x1402eb991
00000001402ebafb mov      eax, dword ptr [rdi + 0x15b0]
00000001402ebb01 test     r14d, eax
00000001402ebb04 jne      0x1402ebb44
00000001402ebb06 mov      rcx, qword ptr [rip + 0x6344f3]
00000001402ebb0d cmp      rcx, r11
00000001402ebb10 je       0x1402ebb3c
00000001402ebb12 cmp      byte ptr [rcx + 0x1e9], 4
00000001402ebb19 jb       0x1402ebb3c
00000001402ebb1b test     dword ptr [rcx + 0x1ec], r10d
00000001402ebb22 je       0x1402ebb3c
00000001402ebb24 mov      edx, 0x6f
00000001402ebb29 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402ebb30 lea      r8, [rip + 0x3af529]
00000001402ebb37 call     0x140001b88
00000001402ebb3c mov      al, sil
00000001402ebb3f jmp      0x1402ebe49
00000001402ebb44 not      r14d
00000001402ebb47 and      r14d, eax
00000001402ebb4a mov      dword ptr [rdi + 0x15b0], r14d
00000001402ebb51 mov      rcx, qword ptr [rip + 0x6344a8]
00000001402ebb58 cmp      rcx, r11
00000001402ebb5b je       0x1402ebb8a
00000001402ebb5d cmp      byte ptr [rcx + 0x1e9], 4
00000001402ebb64 jb       0x1402ebb8a
00000001402ebb66 test     dword ptr [rcx + 0x1ec], r10d
00000001402ebb6d je       0x1402ebb8a
00000001402ebb6f mov      rcx, qword ptr [rcx + 0x1d8]
00000001402ebb76 lea      r8, [rip + 0x3af4e3]
00000001402ebb7d mov      edx, 0x70
00000001402ebb82 mov      r9d, r14d
00000001402ebb85 call     0x140001bb0
00000001402ebb8a mov      byte ptr [rdi + r12], 0xff
00000001402ebb8f jmp      0x1402ebb3c
00000001402ebb91 mov      rcx, qword ptr [rip + 0x634468]
00000001402ebb98 cmp      rcx, r11
00000001402ebb9b je       0x1402ebbca
00000001402ebb9d cmp      byte ptr [rcx + 0x169], 3
00000001402ebba4 jb       0x1402ebbca
00000001402ebba6 test     dword ptr [rcx + 0x16c], 0x1000
00000001402ebbb0 je       0x1402ebbca
00000001402ebbb2 mov      rcx, qword ptr [rcx + 0x158]
00000001402ebbb9 lea      r8, [rip + 0x3af4a0]
00000001402ebbc0 mov      edx, 0x71
00000001402ebbc5 call     0x140001b88
00000001402ebbca xor      bl, bl
00000001402ebbcc mov      sil, bl
00000001402ebbcf jmp      0x1402ebb3c
00000001402ebbd4 movsx    eax, byte ptr [rdi + r12]
00000001402ebbd9 cmp      ebx, eax
00000001402ebbdb jg       0x1402ebc11
00000001402ebbdd mov      rcx, qword ptr [rip + 0x63441c]
00000001402ebbe4 cmp      rcx, r11
00000001402ebbe7 je       0x1402ebe47
00000001402ebbed cmp      byte ptr [rcx + 0x1e9], 4
00000001402ebbf4 jb       0x1402ebe47
00000001402ebbfa test     dword ptr [rcx + 0x1ec], r10d
00000001402ebc01 je       0x1402ebe47
00000001402ebc07 mov      edx, 0x65
00000001402ebc0c jmp      0x1402eb991
00000001402ebc11 xor      bl, bl
00000001402ebc13 test     dword ptr [rdi + 0x15b0], r14d
00000001402ebc1a jne      0x1402ebc41
00000001402ebc1c test     r15b, r15b
00000001402ebc1f je       0x1402ebc41
00000001402ebc21 lea      rdx, [rbp - 0x29]
00000001402ebc25 mov      r9, r15
00000001402ebc28 lea      r8, [rbp - 0x41]
00000001402ebc2c mov      rcx, qword ptr [rdx]
00000001402ebc2f lea      rdx, [rdx + 8]
00000001402ebc33 mov      eax, dword ptr [r8]
00000001402ebc36 lea      r8, [r8 + 4]
00000001402ebc3a mov      dword ptr [rcx], eax
00000001402ebc3c sub      r9, rsi
00000001402ebc3f jne      0x1402ebc2c
00000001402ebc41 or       r14d, dword ptr [rdi + 0x15b0]
00000001402ebc48 mov      dword ptr [rdi + 0x15b0], r14d
00000001402ebc4f mov      rcx, qword ptr [rip + 0x6343aa]
00000001402ebc56 cmp      rcx, r11
00000001402ebc59 je       0x1402ebc8f
00000001402ebc5b cmp      byte ptr [rcx + 0x1e9], 4
00000001402ebc62 jb       0x1402ebc8f
00000001402ebc64 test     dword ptr [rcx + 0x1ec], r10d
00000001402ebc6b je       0x1402ebc8f
00000001402ebc6d mov      rcx, qword ptr [rcx + 0x1d8]
00000001402ebc74 lea      r8, [rip + 0x3af3e5]
00000001402ebc7b mov      edx, 0x66
00000001402ebc80 mov      r9d, r14d
00000001402ebc83 call     0x140001bb0
00000001402ebc88 lea      r11, [rip + 0x634371]
00000001402ebc8f cmp      dword ptr [rbp - 0x59], esi
00000001402ebc92 jne      0x1402ebda7
00000001402ebc98 test     r15b, r15b
00000001402ebc9b je       0x1402ebd04
00000001402ebc9d mov      r14, qword ptr [rbp - 0x49]
00000001402ebca1 mov      rcx, qword ptr [rip + 0x634358]
00000001402ebca8 cmp      rcx, r11
00000001402ebcab je       0x1402ebcfc
00000001402ebcad cmp      byte ptr [rcx + 0x1e9], 4
00000001402ebcb4 jb       0x1402ebcfc
00000001402ebcb6 test     dword ptr [rcx + 0x1ec], 0x2000000
00000001402ebcc0 je       0x1402ebcfc
00000001402ebcc2 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402ebcc9 mov      edx, 0x67
00000001402ebcce movzx    r8d, bl
00000001402ebcd2 movzx    r9d, bl
00000001402ebcd6 mov      rax, qword ptr [rbp + r8*8 - 0x29]
00000001402ebcdb mov      eax, dword ptr [rax]
00000001402ebcdd mov      dword ptr [rsp + 0x28], eax
00000001402ebce1 mov      eax, dword ptr [r14 + r8*4]
00000001402ebce5 lea      r8, [rip + 0x3af374]
00000001402ebcec mov      dword ptr [rsp + 0x20], eax
00000001402ebcf0 call     0x140001c34
00000001402ebcf5 lea      r11, [rip + 0x634304]
00000001402ebcfc add      bl, sil
00000001402ebcff cmp      bl, r15b
00000001402ebd02 jb       0x1402ebca1
00000001402ebd04 mov      rax, qword ptr [rbp - 0x51]
00000001402ebd08 mov      r8b, r15b
00000001402ebd0b mov      r14, qword ptr [rbp - 0x49]
00000001402ebd0f mov      rcx, rdi
00000001402ebd12 mov      rdx, r14
00000001402ebd15 mov      rax, qword ptr [rax + 0x15f8]
00000001402ebd1c call     qword ptr [rip + 0x3985d6]
00000001402ebd22 cmp      dword ptr [rbp - 0x5d], 0xb
00000001402ebd26 mov      ebx, dword ptr [rbp - 0x61]
00000001402ebd29 jne      0x1402ebe09
00000001402ebd2f cmp      ebx, 3
00000001402ebd32 jne      0x1402ebe09
00000001402ebd38 mov      al, byte ptr [r14]
00000001402ebd3b mov      byte ptr [rdi + 0x8660], al
00000001402ebd41 mov      al, byte ptr [r14]
00000001402ebd44 mov      byte ptr [rdi + 0x8664], al
00000001402ebd4a mov      al, byte ptr [r14]
00000001402ebd4d mov      byte ptr [rdi + 0x865f], al
00000001402ebd53 mov      al, byte ptr [r14]
00000001402ebd56 mov      byte ptr [rdi + 0x8663], al
00000001402ebd5c mov      rcx, qword ptr [rip + 0x63429d]
00000001402ebd63 lea      rax, [rip + 0x634296]
00000001402ebd6a cmp      rcx, rax
00000001402ebd6d je       0x1402ebe09
00000001402ebd73 cmp      byte ptr [rcx + 0x1e9], 4
00000001402ebd7a jb       0x1402ebe09
00000001402ebd80 test     dword ptr [rcx + 0x1ec], 0x8000
00000001402ebd8a je       0x1402ebe09
00000001402ebd8c mov      r9d, dword ptr [r14]
00000001402ebd8f lea      edx, [rbx + 0x65]
00000001402ebd92 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402ebd99 lea      r8, [rip + 0x3af2c0]
00000001402ebda0 call     0x140001bb0
00000001402ebda5 jmp      0x1402ebe09
00000001402ebda7 test     r15b, r15b
00000001402ebdaa je       0x1402ebe06
00000001402ebdac mov      rcx, qword ptr [rip + 0x63424d]
00000001402ebdb3 cmp      rcx, r11
00000001402ebdb6 je       0x1402ebdfe
00000001402ebdb8 cmp      byte ptr [rcx + 0x1e9], 4
00000001402ebdbf jb       0x1402ebdfe
00000001402ebdc1 test     dword ptr [rcx + 0x1ec], 0x2000000
00000001402ebdcb je       0x1402ebdfe
00000001402ebdcd mov      rcx, qword ptr [rcx + 0x1d8]
00000001402ebdd4 lea      r8, [rip + 0x3af285]
00000001402ebddb movzx    eax, bl
00000001402ebdde mov      edx, 0x69
00000001402ebde3 movzx    r9d, bl
00000001402ebde7 mov      rax, qword ptr [rbp + rax*8 - 0x29]
00000001402ebdec mov      eax, dword ptr [rax]
00000001402ebdee mov      dword ptr [rsp + 0x20], eax
00000001402ebdf2 call     0x140001bec
00000001402ebdf7 lea      r11, [rip + 0x634202]
00000001402ebdfe add      bl, sil
00000001402ebe01 cmp      bl, r15b
00000001402ebe04 jb       0x1402ebdac
00000001402ebe06 mov      ebx, dword ptr [rbp - 0x61]
00000001402ebe09 mov      byte ptr [rdi + r12], bl
00000001402ebe0d jmp      0x1402ebb3c
00000001402ebe12 mov      rcx, qword ptr [rip + 0x6341e7]
00000001402ebe19 cmp      rcx, r11
00000001402ebe1c je       0x1402ebe47
00000001402ebe1e cmp      byte ptr [rcx + 0x169], 3
00000001402ebe25 jb       0x1402ebe47
00000001402ebe27 test     dword ptr [rcx + 0x16c], 0x1000
00000001402ebe31 je       0x1402ebe47
00000001402ebe33 mov      edx, 0x63
00000001402ebe38 mov      rcx, qword ptr [rcx + 0x158]
00000001402ebe3f mov      r8, r13
00000001402ebe42 call     0x140001b88
00000001402ebe47 xor      al, al
00000001402ebe49 mov      rcx, qword ptr [rbp - 1]
00000001402ebe4d xor      rcx, rsp
00000001402ebe50 call     0x1405f45b0
00000001402ebe55 mov      rbx, qword ptr [rsp + 0xf8]
00000001402ebe5d add      rsp, 0xb0
00000001402ebe64 pop      r15
00000001402ebe66 pop      r14
00000001402ebe68 pop      r13
00000001402ebe6a pop      r12
00000001402ebe6c pop      rdi
00000001402ebe6d pop      rsi
00000001402ebe6e pop      rbp
00000001402ebe6f ret      