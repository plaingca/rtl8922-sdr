00000001403ff2e0 mov      qword ptr [rsp + 0x18], rbx
00000001403ff2e5 mov      dword ptr [rsp + 0x10], edx
00000001403ff2e9 mov      qword ptr [rsp + 8], rcx
00000001403ff2ee push     rbp
00000001403ff2ef push     rsi
00000001403ff2f0 push     rdi
00000001403ff2f1 push     r12
00000001403ff2f3 push     r13
00000001403ff2f5 push     r14
00000001403ff2f7 push     r15
00000001403ff2f9 sub      rsp, 0xd0
00000001403ff300 xor      edi, edi
00000001403ff302 mov      ebp, edx
00000001403ff304 mov      r15, rcx
00000001403ff307 cmp      byte ptr [rcx + 0x20c9], dil
00000001403ff30e jne      0x1403ff35f
00000001403ff310 mov      rcx, qword ptr [rip + 0x520ce9]
00000001403ff317 lea      rax, [rip + 0x520ce2]
00000001403ff31e cmp      rcx, rax
00000001403ff321 je       0x140401a4f
00000001403ff327 cmp      byte ptr [rcx + 0x169], 4
00000001403ff32e jb       0x140401a4f
00000001403ff334 test     dword ptr [rcx + 0x16c], 0x1000
00000001403ff33e je       0x140401a4f
00000001403ff344 lea      edx, [rdi + 0x1e]
00000001403ff347 mov      rcx, qword ptr [rcx + 0x158]
00000001403ff34e lea      r8, [rip + 0x2d70db]
00000001403ff355 call     0x140001b88
00000001403ff35a jmp      0x140401a4f
00000001403ff35f cmp      dword ptr [rcx + 0x21f0], 0x10
00000001403ff366 jg       0x140401a4f
00000001403ff36c lea      r14, [rip + 0x520c8d]
00000001403ff373 mov      r12d, 4
00000001403ff379 mov      r13d, 0x1000
00000001403ff37f cmp      r8d, -1
00000001403ff383 je       0x1403ff3c2
00000001403ff385 mov      rcx, qword ptr [rip + 0x520c74]
00000001403ff38c cmp      rcx, r14
00000001403ff38f je       0x1403ff56c
00000001403ff395 cmp      byte ptr [rcx + 0x169], r12b
00000001403ff39c jb       0x1403ff3c2
00000001403ff39e test     dword ptr [rcx + 0x16c], r13d
00000001403ff3a5 je       0x1403ff3c2
00000001403ff3a7 mov      rcx, qword ptr [rcx + 0x158]
00000001403ff3ae lea      edx, [r12 + 0x1b]
00000001403ff3b3 mov      r9d, r8d
00000001403ff3b6 lea      r8, [rip + 0x2d7073]
00000001403ff3bd call     0x140001bb0
00000001403ff3c2 mov      rcx, qword ptr [rip + 0x520c37]
00000001403ff3c9 cmp      rcx, r14
00000001403ff3cc je       0x1403ff56c
00000001403ff3d2 cmp      byte ptr [rcx + 0x169], r12b
00000001403ff3d9 jb       0x1403ff453
00000001403ff3db test     dword ptr [rcx + 0x16c], r13d
00000001403ff3e2 je       0x1403ff453
00000001403ff3e4 movzx    r8d, byte ptr [r15 + 0x21eb]
00000001403ff3ec mov      edx, 0x20
00000001403ff3f1 movzx    ebx, byte ptr [r15 + 0x21ee]
00000001403ff3f9 movzx    r11d, byte ptr [r15 + 0x21ed]
00000001403ff401 movzx    r10d, byte ptr [r15 + 0x21ec]
00000001403ff409 movzx    eax, byte ptr [r15 + 0x21ea]
00000001403ff411 movzx    r9d, byte ptr [r15 + 0x21f7]
00000001403ff419 mov      rcx, qword ptr [rcx + 0x158]
00000001403ff420 shr      r8d, 1
00000001403ff423 shr      ebx, 1
00000001403ff425 mov      dword ptr [rsp + 0x40], ebx
00000001403ff429 shr      r11d, 1
00000001403ff42c mov      dword ptr [rsp + 0x38], r11d
00000001403ff431 shr      r10d, 1
00000001403ff434 mov      dword ptr [rsp + 0x30], r10d
00000001403ff439 mov      dword ptr [rsp + 0x28], r8d
00000001403ff43e lea      r8, [rip + 0x2d6feb]
00000001403ff445 shr      eax, 1
00000001403ff447 shr      r9d, 1
00000001403ff44a mov      dword ptr [rsp + 0x20], eax
00000001403ff44e call     0x1400087f4
00000001403ff453 mov      rcx, qword ptr [rip + 0x520ba6]
00000001403ff45a cmp      rcx, r14
00000001403ff45d je       0x1403ff56c
00000001403ff463 cmp      byte ptr [rcx + 0x169], r12b
00000001403ff46a jb       0x1403ff4e4
00000001403ff46c test     dword ptr [rcx + 0x16c], r13d
00000001403ff473 je       0x1403ff4e4
00000001403ff475 movzx    r8d, byte ptr [r15 + 0x213c]
00000001403ff47d mov      edx, 0x21
00000001403ff482 movzx    ebx, byte ptr [r15 + 0x213f]
00000001403ff48a movzx    r11d, byte ptr [r15 + 0x213e]
00000001403ff492 movzx    r10d, byte ptr [r15 + 0x213d]
00000001403ff49a movzx    eax, byte ptr [r15 + 0x213b]
00000001403ff4a2 movzx    r9d, byte ptr [r15 + 0x2140]
00000001403ff4aa mov      rcx, qword ptr [rcx + 0x158]
00000001403ff4b1 shr      r8d, 1
00000001403ff4b4 shr      ebx, 1
00000001403ff4b6 mov      dword ptr [rsp + 0x40], ebx
00000001403ff4ba shr      r11d, 1
00000001403ff4bd mov      dword ptr [rsp + 0x38], r11d
00000001403ff4c2 shr      r10d, 1
00000001403ff4c5 mov      dword ptr [rsp + 0x30], r10d
00000001403ff4ca mov      dword ptr [rsp + 0x28], r8d
00000001403ff4cf lea      r8, [rip + 0x2d6f5a]
00000001403ff4d6 shr      eax, 1
00000001403ff4d8 shr      r9d, 1
00000001403ff4db mov      dword ptr [rsp + 0x20], eax
00000001403ff4df call     0x1400087f4
00000001403ff4e4 mov      rcx, qword ptr [rip + 0x520b15]
00000001403ff4eb cmp      rcx, r14
00000001403ff4ee je       0x1403ff56c
00000001403ff4f0 cmp      byte ptr [rcx + 0x169], r12b
00000001403ff4f7 jb       0x1403ff522
00000001403ff4f9 test     dword ptr [rcx + 0x16c], r13d
00000001403ff500 je       0x1403ff522
00000001403ff502 movzx    r9d, byte ptr [r15 + 0x21e4]
00000001403ff50a lea      r8, [rip + 0x2d6f1f]
00000001403ff511 mov      rcx, qword ptr [rcx + 0x158]
00000001403ff518 mov      edx, 0x22
00000001403ff51d call     0x140001bb0
00000001403ff522 mov      rcx, qword ptr [rip + 0x520ad7]
00000001403ff529 cmp      rcx, r14
00000001403ff52c je       0x1403ff56c
00000001403ff52e cmp      byte ptr [rcx + 0x169], r12b
00000001403ff535 jb       0x1403ff56c
00000001403ff537 test     dword ptr [rcx + 0x16c], r13d
00000001403ff53e je       0x1403ff56c
00000001403ff540 movzx    eax, byte ptr [r15 + 0x21f5]
00000001403ff548 lea      r8, [rip + 0x2d6ee1]
00000001403ff54f movzx    r9d, byte ptr [r15 + 0x21f4]
00000001403ff557 mov      edx, 0x23
00000001403ff55c mov      rcx, qword ptr [rcx + 0x158]
00000001403ff563 mov      dword ptr [rsp + 0x20], eax
00000001403ff567 call     0x140001bec
00000001403ff56c cmp      byte ptr [r15 + 0x21f6], dil
00000001403ff573 je       0x1403ff5b3
00000001403ff575 mov      rcx, qword ptr [rip + 0x520a84]
00000001403ff57c cmp      rcx, r14
00000001403ff57f je       0x1403ff5b3
00000001403ff581 cmp      byte ptr [rcx + 0x169], r12b
00000001403ff588 jb       0x1403ff5b3
00000001403ff58a test     dword ptr [rcx + 0x16c], r13d
00000001403ff591 je       0x1403ff5b3
00000001403ff593 movzx    r9d, byte ptr [r15 + 0x21f8]
00000001403ff59b lea      r8, [rip + 0x2d6e8e]
00000001403ff5a2 mov      rcx, qword ptr [rcx + 0x158]
00000001403ff5a9 mov      edx, 0x24
00000001403ff5ae call     0x140001bb0
00000001403ff5b3 test     ebp, ebp
00000001403ff5b5 jne      0x1403ff5e9
00000001403ff5b7 mov      rcx, qword ptr [rip + 0x520a42]
00000001403ff5be cmp      rcx, r14
00000001403ff5c1 je       0x140401a4f
00000001403ff5c7 cmp      byte ptr [rcx + 0x169], r12b
00000001403ff5ce jb       0x140401a4f
00000001403ff5d4 test     dword ptr [rcx + 0x16c], r13d
00000001403ff5db je       0x140401a4f
00000001403ff5e1 lea      edx, [rbp + 0x25]
00000001403ff5e4 jmp      0x1403ff347
00000001403ff5e9 mov      esi, 0x8000
00000001403ff5ee test     bpl, 1
00000001403ff5f2 je       0x1403ff772
00000001403ff5f8 mov      rax, qword ptr [rip + 0x520a01]
00000001403ff5ff cmp      rax, r14
00000001403ff602 je       0x1403ff772
00000001403ff608 cmp      byte ptr [rax + 0x169], r12b
00000001403ff60f jb       0x1403ff705
00000001403ff615 test     dword ptr [rax + 0x16c], r13d
00000001403ff61c je       0x1403ff705
00000001403ff622 movsx    edi, word ptr [r15 + 0x220a]
00000001403ff62a mov      ebx, edi
00000001403ff62c test     esi, edi
00000001403ff62e je       0x1403ff635
00000001403ff630 neg      di
00000001403ff633 neg      ebx
00000001403ff635 movzx    ecx, byte ptr [r15 + 0x220c]
00000001403ff63d mov      dl, 2
00000001403ff63f and      ecx, 3
00000001403ff642 call     0x1403e93c0
00000001403ff647 movzx    ebp, byte ptr [r15 + 0x220c]
00000001403ff64f mov      dl, 2
00000001403ff651 movzx    ecx, di
00000001403ff654 and      ecx, 3
00000001403ff657 movzx    esi, ax
00000001403ff65a shr      ebp, 2
00000001403ff65d call     0x1403e93c0
00000001403ff662 movzx    ecx, word ptr [r15 + 0x2210]
00000001403ff66a mov      dl, 2
00000001403ff66c sar      ebx, 2
00000001403ff66f movzx    edi, ax
00000001403ff672 movzx    eax, word ptr [r15 + 0x220a]
00000001403ff67a test     ax, ax
00000001403ff67d mov      dword ptr [rsp + 0x128], ebx
00000001403ff684 lea      rax, [rip + 0x1f8715]
00000001403ff68b lea      rbx, [rip + 0x1f807e]
00000001403ff692 cmovs    rbx, rax
00000001403ff696 and      ecx, 3
00000001403ff699 call     0x1403e93c0
00000001403ff69e movzx    ecx, word ptr [r15 + 0x2210]
00000001403ff6a6 mov      edx, 0x26
00000001403ff6ab mov      r8d, dword ptr [rsp + 0x128]
00000001403ff6b3 movzx    r9d, byte ptr [r15 + 0x2208]
00000001403ff6bb mov      dword ptr [rsp + 0x50], esi
00000001403ff6bf mov      dword ptr [rsp + 0x48], ebp
00000001403ff6c3 mov      dword ptr [rsp + 0x40], edi
00000001403ff6c7 mov      dword ptr [rsp + 0x38], r8d
00000001403ff6cc lea      r8, [rip + 0x2d6d5d]
00000001403ff6d3 shr      ecx, 2
00000001403ff6d6 movzx    eax, ax
00000001403ff6d9 mov      qword ptr [rsp + 0x30], rbx
00000001403ff6de mov      dword ptr [rsp + 0x28], eax
00000001403ff6e2 mov      dword ptr [rsp + 0x20], ecx
00000001403ff6e6 mov      rcx, qword ptr [rip + 0x520913]
00000001403ff6ed mov      rcx, qword ptr [rcx + 0x158]
00000001403ff6f4 call     0x1402faf28
00000001403ff6f9 mov      ebp, dword ptr [rsp + 0x118]
00000001403ff700 mov      esi, 0x8000
00000001403ff705 mov      rax, qword ptr [rip + 0x5208f4]
00000001403ff70c cmp      rax, r14
00000001403ff70f je       0x1403ff772
00000001403ff711 cmp      byte ptr [rax + 0x169], r12b
00000001403ff718 jb       0x1403ff772
00000001403ff71a test     dword ptr [rax + 0x16c], r13d
00000001403ff721 je       0x1403ff772
00000001403ff723 movzx    ecx, byte ptr [r15 + 0x220d]
00000001403ff72b mov      dl, 1
00000001403ff72d movzx    ebx, byte ptr [r15 + 0x220e]
00000001403ff735 and      ecx, 1
00000001403ff738 call     0x1403e93c0
00000001403ff73d mov      rcx, qword ptr [rip + 0x5208bc]
00000001403ff744 lea      r8, [rip + 0x2d6ce5]
00000001403ff74b movzx    r9d, byte ptr [r15 + 0x220d]
00000001403ff753 mov      edx, 0x27
00000001403ff758 movzx    eax, ax
00000001403ff75b shr      r9d, 1
00000001403ff75e mov      rcx, qword ptr [rcx + 0x158]
00000001403ff765 mov      dword ptr [rsp + 0x28], ebx
00000001403ff769 mov      dword ptr [rsp + 0x20], eax
00000001403ff76d call     0x140001c34
00000001403ff772 test     bpl, 2
00000001403ff776 je       0x1403fffb4
00000001403ff77c test     dword ptr [r15 + 0x13f0], 0xfc0000
00000001403ff787 mov      rax, qword ptr [r15 + 0x2220]
00000001403ff78e mov      qword ptr [rsp + 0xc8], rax
00000001403ff796 je       0x1403ffb8a
00000001403ff79c mov      rax, qword ptr [rip + 0x52085d]
00000001403ff7a3 cmp      rax, r14
00000001403ff7a6 je       0x1403ffdc1
00000001403ff7ac cmp      byte ptr [rax + 0x169], r12b
00000001403ff7b3 jb       0x1403ff90b
00000001403ff7b9 test     dword ptr [rax + 0x16c], r13d
00000001403ff7c0 je       0x1403ff90b
00000001403ff7c6 movsx    eax, word ptr [r15 + 0x222c]
00000001403ff7ce mov      ebx, eax
00000001403ff7d0 test     esi, eax
00000001403ff7d2 je       0x1403ff7d9
00000001403ff7d4 neg      ax
00000001403ff7d7 neg      ebx
00000001403ff7d9 movsx    edi, word ptr [r15 + 0x222a]
00000001403ff7e1 mov      ecx, edi
00000001403ff7e3 test     esi, edi
00000001403ff7e5 je       0x1403ff7ec
00000001403ff7e7 neg      di
00000001403ff7ea neg      ecx
00000001403ff7ec movzx    r14d, byte ptr [r15 + 0x225e]
00000001403ff7f4 mov      dl, 2
00000001403ff7f6 movzx    r15d, byte ptr [r15 + 0x225d]
00000001403ff7fe mov      dword ptr [rsp + 0x128], ecx
00000001403ff805 movzx    ecx, ax
00000001403ff808 and      ecx, 3
00000001403ff80b call     0x1403e93c0
00000001403ff810 mov      r13, qword ptr [rsp + 0x110]
00000001403ff818 lea      rsi, [rip + 0x1f7ef1]
00000001403ff81f movzx    ebp, ax
00000001403ff822 mov      dl, 2
00000001403ff824 sar      ebx, 2
00000001403ff827 movzx    ecx, di
00000001403ff82a movzx    eax, word ptr [r13 + 0x222c]
00000001403ff832 test     ax, ax
00000001403ff835 mov      dword ptr [rsp + 0xb0], ebx
00000001403ff83c lea      rax, [rip + 0x1f855d]
00000001403ff843 cmovs    rsi, rax
00000001403ff847 and      ecx, 3
00000001403ff84a call     0x1403e93c0
00000001403ff84f movzx    ecx, byte ptr [r13 + 0x223c]
00000001403ff857 lea      rbx, [rip + 0x1f7eb2]
00000001403ff85e sar      dword ptr [rsp + 0x128], 2
00000001403ff866 mov      dl, 1
00000001403ff868 movzx    edi, ax
00000001403ff86b movzx    eax, word ptr [r13 + 0x222a]
00000001403ff873 test     ax, ax
00000001403ff876 lea      rax, [rip + 0x1f8523]
00000001403ff87d cmovs    rbx, rax
00000001403ff881 and      ecx, 1
00000001403ff884 call     0x1403e93c0
00000001403ff889 mov      r8d, dword ptr [rsp + 0xb0]
00000001403ff891 mov      edx, 0x28
00000001403ff896 movzx    ecx, byte ptr [r13 + 0x223c]
00000001403ff89e movzx    r9d, byte ptr [r13 + 0x2228]
00000001403ff8a6 mov      dword ptr [rsp + 0x68], r14d
00000001403ff8ab mov      dword ptr [rsp + 0x60], r15d
00000001403ff8b0 mov      dword ptr [rsp + 0x58], ebp
00000001403ff8b4 mov      dword ptr [rsp + 0x50], r8d
00000001403ff8b9 mov      r8d, dword ptr [rsp + 0x128]
00000001403ff8c1 mov      qword ptr [rsp + 0x48], rsi
00000001403ff8c6 mov      dword ptr [rsp + 0x40], edi
00000001403ff8ca mov      dword ptr [rsp + 0x38], r8d
00000001403ff8cf lea      r8, [rip + 0x2d6b5a]
00000001403ff8d6 shr      ecx, 1
00000001403ff8d8 movzx    eax, ax
00000001403ff8db mov      qword ptr [rsp + 0x30], rbx
00000001403ff8e0 mov      dword ptr [rsp + 0x28], eax
00000001403ff8e4 mov      dword ptr [rsp + 0x20], ecx
00000001403ff8e8 mov      rcx, qword ptr [rip + 0x520711]
00000001403ff8ef mov      rcx, qword ptr [rcx + 0x158]
00000001403ff8f6 call     0x1403fe7e0
00000001403ff8fb mov      r15, r13
00000001403ff8fe lea      r14, [rip + 0x5206fb]
00000001403ff905 mov      r13d, 0x1000
00000001403ff90b mov      rax, qword ptr [rip + 0x5206ee]
00000001403ff912 cmp      rax, r14
00000001403ff915 je       0x1403ffdc1
00000001403ff91b cmp      byte ptr [rax + 0x169], r12b
00000001403ff922 jb       0x1403ffa41
00000001403ff928 test     dword ptr [rax + 0x16c], r13d
00000001403ff92f je       0x1403ffa41
00000001403ff935 movzx    ecx, word ptr [r15 + 0x2254]
00000001403ff93d mov      dl, 2
00000001403ff93f and      ecx, 3
00000001403ff942 call     0x1403e93c0
00000001403ff947 movzx    ecx, word ptr [r15 + 0x2252]
00000001403ff94f mov      dl, 2
00000001403ff951 movzx    r13d, word ptr [r15 + 0x2254]
00000001403ff959 and      ecx, 3
00000001403ff95c movzx    r12d, ax
00000001403ff960 shr      r13d, 2
00000001403ff964 call     0x1403e93c0
00000001403ff969 movzx    r15d, word ptr [r15 + 0x2252]
00000001403ff971 mov      dl, 2
00000001403ff973 mov      rdi, qword ptr [rsp + 0x110]
00000001403ff97b movzx    r14d, ax
00000001403ff97f shr      r15d, 2
00000001403ff983 movzx    ecx, word ptr [rdi + 0x2250]
00000001403ff98a and      ecx, 3
00000001403ff98d call     0x1403e93c0
00000001403ff992 movzx    ecx, word ptr [rdi + 0x224e]
00000001403ff999 mov      dl, 2
00000001403ff99b movzx    ebp, word ptr [rdi + 0x2250]
00000001403ff9a2 and      ecx, 3
00000001403ff9a5 movzx    esi, ax
00000001403ff9a8 shr      ebp, 2
00000001403ff9ab call     0x1403e93c0
00000001403ff9b0 movzx    edi, word ptr [rdi + 0x224e]
00000001403ff9b7 mov      dl, 2
00000001403ff9b9 movzx    ebx, ax
00000001403ff9bc mov      rax, qword ptr [rsp + 0x110]
00000001403ff9c4 shr      edi, 2
00000001403ff9c7 movzx    ecx, word ptr [rax + 0x224c]
00000001403ff9ce and      ecx, 3
00000001403ff9d1 call     0x1403e93c0
00000001403ff9d6 mov      rcx, qword ptr [rsp + 0x110]
00000001403ff9de lea      r8, [rip + 0x2d6a4b]
00000001403ff9e5 mov      dword ptr [rsp + 0x60], r12d
00000001403ff9ea mov      edx, 0x29
00000001403ff9ef mov      dword ptr [rsp + 0x58], r13d
00000001403ff9f4 mov      dword ptr [rsp + 0x50], r14d
00000001403ff9f9 movzx    r9d, word ptr [rcx + 0x224c]
00000001403ffa01 mov      rcx, qword ptr [rip + 0x5205f8]
00000001403ffa08 mov      dword ptr [rsp + 0x48], r15d
00000001403ffa0d mov      dword ptr [rsp + 0x40], esi
00000001403ffa11 mov      dword ptr [rsp + 0x38], ebp
00000001403ffa15 mov      rcx, qword ptr [rcx + 0x158]
00000001403ffa1c movzx    eax, ax
00000001403ffa1f mov      dword ptr [rsp + 0x30], ebx
00000001403ffa23 shr      r9d, 2
00000001403ffa27 mov      dword ptr [rsp + 0x28], edi
00000001403ffa2b mov      dword ptr [rsp + 0x20], eax
00000001403ffa2f call     0x140092b50
00000001403ffa34 mov      r12d, 4
00000001403ffa3a lea      r14, [rip + 0x5205bf]
00000001403ffa41 mov      rax, qword ptr [rip + 0x5205b8]
00000001403ffa48 mov      r13d, 0x1000
00000001403ffa4e cmp      rax, r14
00000001403ffa51 je       0x1403ffdb9
00000001403ffa57 cmp      byte ptr [rax + 0x169], r12b
00000001403ffa5e jb       0x1403ffdb9
00000001403ffa64 test     dword ptr [rax + 0x16c], r13d
00000001403ffa6b je       0x1403ffdb9
00000001403ffa71 mov      rdi, qword ptr [rsp + 0x110]
00000001403ffa79 mov      dl, 1
00000001403ffa7b movzx    ecx, byte ptr [rdi + 0x2231]
00000001403ffa82 and      ecx, 1
00000001403ffa85 call     0x1403e93c0
00000001403ffa8a movzx    ecx, byte ptr [rdi + 0x2259]
00000001403ffa91 mov      dl, 2
00000001403ffa93 movzx    r12d, byte ptr [rdi + 0x2230]
00000001403ffa9b and      ecx, 3
00000001403ffa9e movzx    r13d, ax
00000001403ffaa2 movzx    eax, byte ptr [rdi + 0x2231]
00000001403ffaa9 shr      eax, 1
00000001403ffaab mov      dword ptr [rsp + 0x128], eax
00000001403ffab2 call     0x1403e93c0
00000001403ffab7 movzx    ecx, byte ptr [rdi + 0x2258]
00000001403ffabe mov      dl, 2
00000001403ffac0 movzx    r15d, byte ptr [rdi + 0x2259]
00000001403ffac8 and      ecx, 3
00000001403ffacb movzx    r14d, ax
00000001403ffacf shr      r15d, 2
00000001403ffad3 call     0x1403e93c0
00000001403ffad8 movzx    ecx, byte ptr [rdi + 0x2257]
00000001403ffadf mov      dl, 2
00000001403ffae1 movzx    ebp, byte ptr [rdi + 0x2258]
00000001403ffae8 and      ecx, 3
00000001403ffaeb movzx    esi, ax
00000001403ffaee shr      ebp, 2
00000001403ffaf1 call     0x1403e93c0
00000001403ffaf6 movzx    edi, byte ptr [rdi + 0x2257]
00000001403ffafd mov      dl, 2
00000001403ffaff movzx    ebx, ax
00000001403ffb02 mov      rax, qword ptr [rsp + 0x110]
00000001403ffb0a shr      edi, 2
00000001403ffb0d movzx    ecx, byte ptr [rax + 0x2256]
00000001403ffb14 and      ecx, 3
00000001403ffb17 call     0x1403e93c0
00000001403ffb1c mov      rcx, qword ptr [rsp + 0x110]
00000001403ffb24 lea      r8, [rip + 0x2d6905]
00000001403ffb2b mov      dword ptr [rsp + 0x68], r13d
00000001403ffb30 mov      edx, 0x2a
00000001403ffb35 movzx    eax, ax
00000001403ffb38 movzx    r9d, byte ptr [rcx + 0x2256]
00000001403ffb40 mov      ecx, dword ptr [rsp + 0x128]
00000001403ffb47 mov      dword ptr [rsp + 0x60], ecx
00000001403ffb4b mov      rcx, qword ptr [rip + 0x5204ae]
00000001403ffb52 mov      dword ptr [rsp + 0x58], r12d
00000001403ffb57 mov      dword ptr [rsp + 0x50], r14d
00000001403ffb5c mov      dword ptr [rsp + 0x48], r15d
00000001403ffb61 mov      rcx, qword ptr [rcx + 0x158]
00000001403ffb68 mov      dword ptr [rsp + 0x40], esi
00000001403ffb6c mov      dword ptr [rsp + 0x38], ebp
00000001403ffb70 mov      dword ptr [rsp + 0x30], ebx
00000001403ffb74 mov      dword ptr [rsp + 0x28], edi
00000001403ffb78 shr      r9d, 2
00000001403ffb7c mov      dword ptr [rsp + 0x20], eax
00000001403ffb80 call     0x140042c38
00000001403ffb85 jmp      0x1403ffdac
00000001403ffb8a mov      rax, qword ptr [rip + 0x52046f]
00000001403ffb91 cmp      rax, r14
00000001403ffb94 je       0x1403ffdc1
00000001403ffb9a cmp      byte ptr [rax + 0x169], r12b
00000001403ffba1 jb       0x1403ffdc1
00000001403ffba7 test     dword ptr [rax + 0x16c], r13d
00000001403ffbae je       0x1403ffdc1
00000001403ffbb4 movsx    ebx, word ptr [r15 + 0x222c]
00000001403ffbbc mov      edi, ebx
00000001403ffbbe test     esi, ebx
00000001403ffbc0 je       0x1403ffbc7
00000001403ffbc2 neg      bx
00000001403ffbc5 neg      edi
00000001403ffbc7 movsx    ecx, word ptr [r15 + 0x222a]
00000001403ffbcf mov      eax, ecx
00000001403ffbd1 test     esi, ecx
00000001403ffbd3 je       0x1403ffbda
00000001403ffbd5 neg      cx
00000001403ffbd8 neg      eax
00000001403ffbda mov      word ptr [rsp + 0x128], cx
00000001403ffbe2 mov      dl, 1
00000001403ffbe4 movzx    ecx, byte ptr [r15 + 0x2231]
00000001403ffbec and      ecx, 1
00000001403ffbef mov      dword ptr [rsp + 0xb8], eax
00000001403ffbf6 call     0x1403e93c0
00000001403ffbfb movzx    ecx, byte ptr [r15 + 0x222f]
00000001403ffc03 mov      dl, 2
00000001403ffc05 movzx    eax, ax
00000001403ffc08 and      ecx, 3
00000001403ffc0b mov      dword ptr [rsp + 0xb0], eax
00000001403ffc12 movzx    eax, byte ptr [r15 + 0x2231]
00000001403ffc1a shr      eax, 1
00000001403ffc1c mov      dword ptr [rsp + 0xa4], eax
00000001403ffc23 movzx    eax, byte ptr [r15 + 0x2230]
00000001403ffc2b mov      dword ptr [rsp + 0xc0], eax
00000001403ffc32 call     0x1403e93c0
00000001403ffc37 movzx    ecx, byte ptr [r15 + 0x222e]
00000001403ffc3f mov      dl, 2
00000001403ffc41 movzx    r13d, byte ptr [r15 + 0x222f]
00000001403ffc49 and      ecx, 3
00000001403ffc4c movzx    r12d, ax
00000001403ffc50 shr      r13d, 2
00000001403ffc54 call     0x1403e93c0
00000001403ffc59 movzx    r15d, byte ptr [r15 + 0x222e]
00000001403ffc61 mov      dl, 2
00000001403ffc63 movzx    ecx, bx
00000001403ffc66 and      ecx, 3
00000001403ffc69 movzx    r14d, ax
00000001403ffc6d shr      r15d, 2
00000001403ffc71 call     0x1403e93c0
00000001403ffc76 movzx    ecx, word ptr [rsp + 0x128]
00000001403ffc7e lea      rsi, [rip + 0x1f7a8b]
00000001403ffc85 movzx    ebp, ax
00000001403ffc88 mov      dl, 2
00000001403ffc8a mov      rax, qword ptr [rsp + 0x110]
00000001403ffc92 sar      edi, 2
00000001403ffc95 mov      dword ptr [rsp + 0xa8], edi
00000001403ffc9c movzx    eax, word ptr [rax + 0x222c]
00000001403ffca3 test     ax, ax
00000001403ffca6 lea      rax, [rip + 0x1f80f3]
00000001403ffcad cmovs    rsi, rax
00000001403ffcb1 and      ecx, 3
00000001403ffcb4 call     0x1403e93c0
00000001403ffcb9 mov      rcx, qword ptr [rsp + 0x110]
00000001403ffcc1 lea      rbx, [rip + 0x1f7a48]
00000001403ffcc8 sar      dword ptr [rsp + 0xb8], 2
00000001403ffcd0 mov      dl, 1
00000001403ffcd2 movzx    edi, ax
00000001403ffcd5 movzx    eax, word ptr [rcx + 0x222a]
00000001403ffcdc movzx    ecx, byte ptr [rcx + 0x223c]
00000001403ffce3 test     ax, ax
00000001403ffce6 lea      rax, [rip + 0x1f80b3]
00000001403ffced cmovs    rbx, rax
00000001403ffcf1 and      ecx, 1
00000001403ffcf4 call     0x1403e93c0
00000001403ffcf9 mov      rdx, qword ptr [rsp + 0x110]
00000001403ffd01 mov      r8d, dword ptr [rsp + 0xb0]
00000001403ffd09 mov      dword ptr [rsp + 0x90], r8d
00000001403ffd11 mov      r8d, dword ptr [rsp + 0xa4]
00000001403ffd19 movzx    ecx, byte ptr [rdx + 0x223c]
00000001403ffd20 movzx    r9d, byte ptr [rdx + 0x2228]
00000001403ffd28 mov      edx, 0x2b
00000001403ffd2d mov      dword ptr [rsp + 0x88], r8d
00000001403ffd35 mov      r8d, dword ptr [rsp + 0xc0]
00000001403ffd3d mov      dword ptr [rsp + 0x80], r8d
00000001403ffd45 mov      r8d, dword ptr [rsp + 0xa8]
00000001403ffd4d mov      dword ptr [rsp + 0x78], r12d
00000001403ffd52 mov      dword ptr [rsp + 0x70], r13d
00000001403ffd57 mov      dword ptr [rsp + 0x68], r14d
00000001403ffd5c mov      dword ptr [rsp + 0x60], r15d
00000001403ffd61 mov      dword ptr [rsp + 0x58], ebp
00000001403ffd65 mov      dword ptr [rsp + 0x50], r8d
00000001403ffd6a mov      r8d, dword ptr [rsp + 0xb8]
00000001403ffd72 mov      qword ptr [rsp + 0x48], rsi
00000001403ffd77 mov      dword ptr [rsp + 0x40], edi
00000001403ffd7b mov      dword ptr [rsp + 0x38], r8d
00000001403ffd80 movzx    eax, ax
00000001403ffd83 mov      qword ptr [rsp + 0x30], rbx
00000001403ffd88 mov      dword ptr [rsp + 0x28], eax
00000001403ffd8c shr      ecx, 1
00000001403ffd8e mov      dword ptr [rsp + 0x20], ecx
00000001403ffd92 lea      r8, [rip + 0x2d6697]
00000001403ffd99 mov      rcx, qword ptr [rip + 0x520260]
00000001403ffda0 mov      rcx, qword ptr [rcx + 0x158]
00000001403ffda7 call     0x1402fb030
00000001403ffdac lea      r14, [rip + 0x52024d]
00000001403ffdb3 mov      r13d, 0x1000
00000001403ffdb9 mov      r15, qword ptr [rsp + 0x110]
00000001403ffdc1 test     dword ptr [r15 + 0x13f0], 0xf00000
00000001403ffdcc je       0x1403ffe44
00000001403ffdce mov      rcx, qword ptr [rip + 0x52022b]
00000001403ffdd5 mov      r12d, 4
00000001403ffddb cmp      rcx, r14
00000001403ffdde je       0x1403fffad
00000001403ffde4 cmp      byte ptr [rcx + 0x169], r12b
00000001403ffdeb jb       0x1403ffe4a
00000001403ffded test     dword ptr [rcx + 0x16c], r13d
00000001403ffdf4 je       0x1403ffe4a
00000001403ffdf6 movzx    r8d, byte ptr [r15 + 0x224b]
00000001403ffdfe lea      edx, [r12 + 0x28]
00000001403ffe03 movzx    r10d, byte ptr [r15 + 0x225c]
00000001403ffe0b movzx    eax, byte ptr [r15 + 0x225b]
00000001403ffe13 inc      r10d
00000001403ffe16 movzx    r9d, byte ptr [r15 + 0x225a]
00000001403ffe1e mov      rcx, qword ptr [rcx + 0x158]
00000001403ffe25 inc      r9d
00000001403ffe28 mov      dword ptr [rsp + 0x30], r10d
00000001403ffe2d mov      dword ptr [rsp + 0x28], eax
00000001403ffe31 mov      dword ptr [rsp + 0x20], r8d
00000001403ffe36 lea      r8, [rip + 0x2d65f3]
00000001403ffe3d call     0x140008794
00000001403ffe42 jmp      0x1403ffe4a
00000001403ffe44 mov      r12d, 4
00000001403ffe4a mov      rax, qword ptr [rip + 0x5201af]
00000001403ffe51 mov      qword ptr [rsp + 0x128], rax
00000001403ffe59 cmp      rax, r14
00000001403ffe5c je       0x1403fffad
00000001403ffe62 cmp      byte ptr [rax + 0x169], r12b
00000001403ffe69 jb       0x1403fff40
00000001403ffe6f test     dword ptr [rax + 0x16c], r13d
00000001403ffe76 je       0x1403fff40
00000001403ffe7c movzx    eax, byte ptr [r15 + 0x2246]
00000001403ffe84 mov      edx, 0x2d
00000001403ffe89 movzx    ecx, byte ptr [r15 + 0x224a]
00000001403ffe91 movzx    r8d, byte ptr [r15 + 0x2249]
00000001403ffe99 movzx    r10d, byte ptr [r15 + 0x2248]
00000001403ffea1 movzx    r11d, byte ptr [r15 + 0x2247]
00000001403ffea9 movzx    ebx, byte ptr [r15 + 0x2245]
00000001403ffeb1 movzx    edi, byte ptr [r15 + 0x2244]
00000001403ffeb9 movzx    esi, byte ptr [r15 + 0x2235]
00000001403ffec1 movzx    ebp, byte ptr [r15 + 0x2236]
00000001403ffec9 movzx    r9d, byte ptr [r15 + 0x2232]
00000001403ffed1 movzx    r14d, byte ptr [r15 + 0x2234]
00000001403ffed9 mov      dword ptr [rsp + 0x78], eax
00000001403ffedd mov      eax, dword ptr [r15 + 0x2240]
00000001403ffee4 mov      dword ptr [rsp + 0x70], ecx
00000001403ffee8 mov      rcx, qword ptr [rsp + 0x128]
00000001403ffef0 mov      dword ptr [rsp + 0x68], r8d
00000001403ffef5 lea      r8, [rip + 0x2d6534]
00000001403ffefc mov      dword ptr [rsp + 0x60], r10d
00000001403fff01 mov      dword ptr [rsp + 0x58], r11d
00000001403fff06 mov      rcx, qword ptr [rcx + 0x158]
00000001403fff0d mov      dword ptr [rsp + 0x50], ebx
00000001403fff11 mov      dword ptr [rsp + 0x48], edi
00000001403fff15 mov      dword ptr [rsp + 0x40], esi
00000001403fff19 mov      dword ptr [rsp + 0x38], eax
00000001403fff1d mov      eax, dword ptr [r15 + 0x2238]
00000001403fff24 mov      dword ptr [rsp + 0x30], ebp
00000001403fff28 mov      dword ptr [rsp + 0x28], eax
00000001403fff2c shr      r9d, 1
00000001403fff2f mov      dword ptr [rsp + 0x20], r14d
00000001403fff34 call     0x140072fcc
00000001403fff39 lea      r14, [rip + 0x5200c0]
00000001403fff40 mov      rcx, qword ptr [rip + 0x5200b9]
00000001403fff47 cmp      rcx, r14
00000001403fff4a je       0x1403fffad
00000001403fff4c cmp      byte ptr [rcx + 0x169], r12b
00000001403fff53 jb       0x1403fffad
00000001403fff55 test     dword ptr [rcx + 0x16c], r13d
00000001403fff5c je       0x1403fffad
00000001403fff5e mov      r9, qword ptr [rsp + 0xc8]
00000001403fff66 mov      rcx, qword ptr [rcx + 0x158]
00000001403fff6d movzx    eax, byte ptr [r9 + 0x13]
00000001403fff72 movzx    edx, byte ptr [r9 + 0x11]
00000001403fff77 imul     r10d, eax, 0x19
00000001403fff7b movzx    eax, byte ptr [r9 + 0x12]
00000001403fff80 imul     r8d, eax, 0x19
00000001403fff84 movzx    eax, byte ptr [r9 + 0x10]
00000001403fff89 shl      edx, 8
00000001403fff8c or       edx, eax
00000001403fff8e mov      dword ptr [rsp + 0x28], r10d
00000001403fff93 imul     r9d, edx, 0x19
00000001403fff97 mov      edx, 0x2e
00000001403fff9c mov      dword ptr [rsp + 0x20], r8d
00000001403fffa1 lea      r8, [rip + 0x2d6488]
00000001403fffa8 call     0x140001c34
00000001403fffad mov      ebp, dword ptr [rsp + 0x118]
00000001403fffb4 test     r12b, bpl
00000001403fffb7 je       0x1404003d7
00000001403fffbd mov      rax, qword ptr [rip + 0x52003c]
00000001403fffc4 cmp      rax, r14
00000001403fffc7 je       0x1404001cc
00000001403fffcd cmp      byte ptr [rax + 0x169], r12b
00000001403fffd4 jb       0x1404001cc
00000001403fffda test     dword ptr [rax + 0x16c], r13d
00000001403fffe1 je       0x1404001cc
00000001403fffe7 mov      ebx, dword ptr [r15 + 0x2284]
00000001403fffee test     ebx, ebx
00000001403ffff0 jns      0x1403ffff4
00000001403ffff2 neg      ebx
00000001403ffff4 mov      edi, dword ptr [r15 + 0x227c]
00000001403ffffb mov      ecx, ebx
00000001403ffffd test     edi, edi
00000001403fffff jns      0x140400003
0000000140400001 neg      edi
0000000140400003 mov      eax, dword ptr [r15 + 0x2274]
000000014040000a mov      esi, edi
000000014040000c test     eax, eax
000000014040000e jns      0x140400012
0000000140400010 neg      eax
0000000140400012 mov      dword ptr [rsp + 0x128], eax
0000000140400019 mov      edx, eax
000000014040001b mov      dword ptr [rsp + 0xa4], eax
0000000140400022 mov      eax, dword ptr [r15 + 0x226c]
0000000140400029 test     eax, eax
000000014040002b jns      0x140400031
000000014040002d neg      eax
000000014040002f jmp      0x140400038
0000000140400031 mov      dword ptr [rsp + 0xa4], edx
0000000140400038 and      ecx, 0x7f
000000014040003b mov      dword ptr [rsp + 0xb8], eax
0000000140400042 mov      dl, 7
0000000140400044 mov      dword ptr [rsp + 0xb0], eax
000000014040004b call     0x1403e93c0
0000000140400050 mov      r13, qword ptr [rsp + 0x110]
0000000140400058 mov      dl, 7
000000014040005a shr      ebx, 7
000000014040005d movzx    r15d, ax
0000000140400061 mov      dword ptr [rsp + 0xa8], ebx
0000000140400068 lea      rbx, [rip + 0x1f76a1]
000000014040006f mov      eax, dword ptr [r13 + 0x2284]
0000000140400076 mov      r14, rbx
0000000140400079 test     eax, eax
000000014040007b lea      rax, [rip + 0x1f7d1e]
0000000140400082 cmovs    r14, rax
0000000140400086 and      esi, 0x7f
0000000140400089 mov      ecx, esi
000000014040008b call     0x1403e93c0
0000000140400090 mov      ecx, dword ptr [rsp + 0xa4]
0000000140400097 mov      rsi, rbx
000000014040009a movzx    ebp, ax
000000014040009d mov      dl, 7
000000014040009f mov      eax, dword ptr [r13 + 0x227c]
00000001404000a6 shr      edi, 7
00000001404000a9 test     eax, eax
00000001404000ab mov      dword ptr [rsp + 0xc0], edi
00000001404000b2 lea      rax, [rip + 0x1f7ce7]
00000001404000b9 cmovs    rsi, rax
00000001404000bd and      ecx, 0x7f
00000001404000c0 call     0x1403e93c0
00000001404000c5 mov      ecx, dword ptr [rsp + 0xb0]
00000001404000cc mov      dl, 7
00000001404000ce shr      dword ptr [rsp + 0x128], 7
00000001404000d6 movzx    edi, ax
00000001404000d9 mov      eax, dword ptr [r13 + 0x2274]
00000001404000e0 test     eax, eax
00000001404000e2 lea      rax, [rip + 0x1f7cb7]
00000001404000e9 cmovs    rbx, rax
00000001404000ed and      ecx, 0x7f
00000001404000f0 call     0x1403e93c0
00000001404000f5 mov      r11d, dword ptr [rsp + 0xa8]
00000001404000fd lea      r8, [rip + 0x1f760c]
0000000140400104 shr      dword ptr [rsp + 0xb8], 7
000000014040010c mov      edx, 0x2f
0000000140400111 movzx    ecx, byte ptr [r13 + 0x2269]
0000000140400119 movzx    r9d, byte ptr [r13 + 0x2268]
0000000140400121 mov      dword ptr [rsp + 0x88], r15d
0000000140400129 mov      dword ptr [rsp + 0x80], r11d
0000000140400131 mov      r11d, dword ptr [rsp + 0xc0]
0000000140400139 mov      qword ptr [rsp + 0x78], r14
000000014040013e mov      dword ptr [rsp + 0x70], ebp
0000000140400142 mov      dword ptr [rsp + 0x68], r11d
0000000140400147 mov      r11d, dword ptr [rsp + 0x128]
000000014040014f mov      qword ptr [rsp + 0x60], rsi
0000000140400154 mov      dword ptr [rsp + 0x58], edi
0000000140400158 mov      dword ptr [rsp + 0x50], r11d
000000014040015d movzx    r10d, ax
0000000140400161 mov      eax, dword ptr [r13 + 0x226c]
0000000140400168 test     eax, eax
000000014040016a mov      qword ptr [rsp + 0x48], rbx
000000014040016f lea      rax, [rip + 0x1f7c2a]
0000000140400176 mov      dword ptr [rsp + 0x40], r10d
000000014040017b cmovs    r8, rax
000000014040017f mov      r10d, dword ptr [rsp + 0xb8]
0000000140400187 movzx    eax, byte ptr [r13 + 0x226a]
000000014040018f mov      dword ptr [rsp + 0x38], r10d
0000000140400194 mov      qword ptr [rsp + 0x30], r8
0000000140400199 lea      r8, [rip + 0x2d6290]
00000001404001a0 mov      dword ptr [rsp + 0x28], eax
00000001404001a4 mov      dword ptr [rsp + 0x20], ecx
00000001404001a8 mov      rcx, qword ptr [rip + 0x51fe51]
00000001404001af mov      rcx, qword ptr [rcx + 0x158]
00000001404001b6 call     0x1402fb32c
00000001404001bb mov      ebp, dword ptr [rsp + 0x118]
00000001404001c2 lea      r14, [rip + 0x51fe37]
00000001404001c9 mov      r15, r13
00000001404001cc test     dword ptr [r15 + 0x13f0], 0x800000
00000001404001d7 je       0x14040023c
00000001404001d9 mov      rax, qword ptr [rip + 0x51fe20]
00000001404001e0 cmp      rax, r14
00000001404001e3 je       0x1404002ce
00000001404001e9 cmp      byte ptr [rax + 0x169], r12b
00000001404001f0 jb       0x1404002ce
00000001404001f6 test     dword ptr [rax + 0x16c], 0x1000
0000000140400200 je       0x1404002ce
0000000140400206 movzx    ecx, byte ptr [r15 + 0x2278]
000000014040020e mov      dl, 8
0000000140400210 movzx    ebx, word ptr [r15 + 0x2282]
0000000140400218 movzx    edi, byte ptr [r15 + 0x2280]
0000000140400220 movzx    esi, byte ptr [r15 + 0x2279]
0000000140400228 call     0x1403e93c0
000000014040022d movzx    r9d, byte ptr [r15 + 0x228a]
0000000140400235 mov      edx, 0x30
000000014040023a jmp      0x140400295
000000014040023c mov      rax, qword ptr [rip + 0x51fdbd]
0000000140400243 cmp      rax, r14
0000000140400246 je       0x1404002ce
000000014040024c cmp      byte ptr [rax + 0x169], r12b
0000000140400253 jb       0x1404002ce
0000000140400255 test     dword ptr [rax + 0x16c], 0x1000
000000014040025f je       0x1404002ce
0000000140400261 movzx    ecx, byte ptr [r15 + 0x2278]
0000000140400269 mov      dl, 8
000000014040026b movzx    ebx, word ptr [r15 + 0x2282]
0000000140400273 movzx    edi, byte ptr [r15 + 0x2280]
000000014040027b movzx    esi, byte ptr [r15 + 0x2279]
0000000140400283 call     0x1403e93c0
0000000140400288 movzx    r9d, byte ptr [r15 + 0x2270]
0000000140400290 mov      edx, 0x31
0000000140400295 movzx    ecx, byte ptr [r15 + 0x2271]
000000014040029d lea      r8, [rip + 0x2d618c]
00000001404002a4 mov      dword ptr [rsp + 0x40], ebx
00000001404002a8 mov      dword ptr [rsp + 0x38], edi
00000001404002ac movzx    eax, ax
00000001404002af mov      dword ptr [rsp + 0x30], esi
00000001404002b3 mov      dword ptr [rsp + 0x28], eax
00000001404002b7 mov      dword ptr [rsp + 0x20], ecx
00000001404002bb mov      rcx, qword ptr [rip + 0x51fd3e]
00000001404002c2 mov      rcx, qword ptr [rcx + 0x158]
00000001404002c9 call     0x1400087f4
00000001404002ce test     dword ptr [r15 + 0x13f0], 0xf00000
00000001404002d9 je       0x1404003d7
00000001404002df mov      rcx, qword ptr [rip + 0x51fd1a]
00000001404002e6 cmp      rcx, r14
00000001404002e9 je       0x140400346
00000001404002eb cmp      byte ptr [rcx + 0x169], r12b
00000001404002f2 jb       0x140400346
00000001404002f4 test     dword ptr [rcx + 0x16c], 0x1000
00000001404002fe je       0x140400346
0000000140400300 movzx    r8d, byte ptr [r15 + 0x228b]
0000000140400308 mov      edx, 0x32
000000014040030d movzx    eax, byte ptr [r15 + 0x228c]
0000000140400315 movzx    r10d, byte ptr [r15 + 0x2289]
000000014040031d movzx    r9d, byte ptr [r15 + 0x2288]
0000000140400325 mov      rcx, qword ptr [rcx + 0x158]
000000014040032c mov      dword ptr [rsp + 0x30], eax
0000000140400330 mov      dword ptr [rsp + 0x28], r8d
0000000140400335 lea      r8, [rip + 0x2d60f4]
000000014040033c mov      dword ptr [rsp + 0x20], r10d
0000000140400341 call     0x140008794
0000000140400346 test     dword ptr [r15 + 0x13f0], 0x800000
0000000140400351 je       0x1404003d7
0000000140400357 mov      rcx, qword ptr [rip + 0x51fca2]
000000014040035e cmp      rcx, r14
0000000140400361 je       0x1404003d7
0000000140400363 cmp      byte ptr [rcx + 0x169], r12b
000000014040036a jb       0x1404003d7
000000014040036c test     dword ptr [rcx + 0x16c], 0x1000
0000000140400376 je       0x1404003d7
0000000140400378 movzx    r8d, byte ptr [r15 + 0x2292]
0000000140400380 mov      edx, 0x33
0000000140400385 movzx    eax, byte ptr [r15 + 0x2293]
000000014040038d movzx    r10d, byte ptr [r15 + 0x2291]
0000000140400395 movzx    r11d, byte ptr [r15 + 0x2290]
000000014040039d movzx    ebx, word ptr [r15 + 0x228e]
00000001404003a5 movzx    r9d, byte ptr [r15 + 0x228d]
00000001404003ad mov      rcx, qword ptr [rcx + 0x158]
00000001404003b4 mov      dword ptr [rsp + 0x40], eax
00000001404003b8 mov      dword ptr [rsp + 0x38], r8d
00000001404003bd lea      r8, [rip + 0x2d606c]
00000001404003c4 mov      dword ptr [rsp + 0x30], r10d
00000001404003c9 mov      dword ptr [rsp + 0x28], r11d
00000001404003ce mov      dword ptr [rsp + 0x20], ebx
00000001404003d2 call     0x1400087f4
00000001404003d7 test     bpl, 0x10
00000001404003db je       0x1404003eb
00000001404003dd mov      r8d, ebp
00000001404003e0 mov      edx, r12d
00000001404003e3 mov      rcx, r15
00000001404003e6 call     0x140402080
00000001404003eb test     bpl, 0x20
00000001404003ef je       0x140400401
00000001404003f1 mov      r8d, ebp
00000001404003f4 mov      edx, 5
00000001404003f9 mov      rcx, r15
00000001404003fc call     0x140402080
0000000140400401 test     bpl, 0x40
0000000140400405 je       0x140400417
0000000140400407 mov      r8d, ebp
000000014040040a mov      edx, 6
000000014040040f mov      rcx, r15
0000000140400412 call     0x140402080
0000000140400417 test     bpl, bpl
000000014040041a jns      0x14040042c
000000014040041c mov      r8d, ebp
000000014040041f mov      edx, 7
0000000140400424 mov      rcx, r15
0000000140400427 call     0x140402080
000000014040042c bt       ebp, 8
0000000140400430 jae      0x140400afa
0000000140400436 mov      rax, qword ptr [rip + 0x51fbc3]
000000014040043d cmp      rax, r14
0000000140400440 je       0x140400afa
0000000140400446 mov      r13d, 0x1000
000000014040044c cmp      byte ptr [rax + 0x169], r12b
0000000140400453 jb       0x140400520
0000000140400459 test     dword ptr [rax + 0x16c], r13d
0000000140400460 je       0x140400520
0000000140400466 movzx    ecx, byte ptr [r15 + 0x2308]
000000014040046e mov      dl, 1
0000000140400470 and      ecx, 1
0000000140400473 call     0x1403e93c0
0000000140400478 movzx    ecx, byte ptr [r15 + 0x2307]
0000000140400480 mov      dl, 2
0000000140400482 movzx    ebp, byte ptr [r15 + 0x2308]
000000014040048a and      ecx, 3
000000014040048d movzx    esi, ax
0000000140400490 shr      ebp, 1
0000000140400492 call     0x1403e93c0
0000000140400497 movzx    ecx, byte ptr [r15 + 0x2306]
000000014040049f mov      dl, 2
00000001404004a1 movzx    edi, byte ptr [r15 + 0x2307]
00000001404004a9 and      ecx, 3
00000001404004ac movzx    ebx, ax
00000001404004af shr      edi, 2
00000001404004b2 call     0x1403e93c0
00000001404004b7 movzx    ecx, byte ptr [r15 + 0x2301]
00000001404004bf mov      edx, 0x34
00000001404004c4 movzx    r10d, byte ptr [r15 + 0x2306]
00000001404004cc movzx    r9d, byte ptr [r15 + 0x2300]
00000001404004d4 mov      dword ptr [rsp + 0x58], esi
00000001404004d8 mov      dword ptr [rsp + 0x50], ebp
00000001404004dc mov      dword ptr [rsp + 0x48], ebx
00000001404004e0 movzx    r8d, ax
00000001404004e4 movzx    eax, byte ptr [r15 + 0x2302]
00000001404004ec mov      dword ptr [rsp + 0x40], edi
00000001404004f0 mov      dword ptr [rsp + 0x38], r8d
00000001404004f5 lea      r8, [rip + 0x2d5f34]
00000001404004fc shr      r10d, 2
0000000140400500 mov      dword ptr [rsp + 0x30], r10d
0000000140400505 mov      dword ptr [rsp + 0x28], eax
0000000140400509 mov      dword ptr [rsp + 0x20], ecx
000000014040050d mov      rcx, qword ptr [rip + 0x51faec]
0000000140400514 mov      rcx, qword ptr [rcx + 0x158]
000000014040051b call     0x140099b4c
0000000140400520 mov      rax, qword ptr [rip + 0x51fad9]
0000000140400527 cmp      rax, r14
000000014040052a je       0x140400afa
0000000140400530 cmp      byte ptr [rax + 0x169], r12b
0000000140400537 jb       0x1404005fc
000000014040053d test     dword ptr [rax + 0x16c], r13d
0000000140400544 je       0x1404005fc
000000014040054a movzx    ecx, byte ptr [r15 + 0x2308]
0000000140400552 mov      dl, 1
0000000140400554 movzx    r14d, byte ptr [r15 + 0x2309]
000000014040055c and      ecx, 1
000000014040055f call     0x1403e93c0
0000000140400564 movzx    ecx, byte ptr [r15 + 0x2307]
000000014040056c mov      dl, 2
000000014040056e movzx    ebp, byte ptr [r15 + 0x2308]
0000000140400576 and      ecx, 3
0000000140400579 movzx    esi, ax
000000014040057c shr      ebp, 1
000000014040057e call     0x1403e93c0
0000000140400583 movzx    ecx, byte ptr [r15 + 0x2306]
000000014040058b mov      dl, 2
000000014040058d movzx    edi, byte ptr [r15 + 0x2307]
0000000140400595 and      ecx, 3
0000000140400598 movzx    ebx, ax
000000014040059b shr      edi, 2
000000014040059e call     0x1403e93c0
00000001404005a3 movzx    ecx, byte ptr [r15 + 0x2306]
00000001404005ab lea      r8, [rip + 0x2d5e7e]
00000001404005b2 movzx    r9d, word ptr [r15 + 0x2304]
00000001404005ba mov      edx, 0x35
00000001404005bf mov      dword ptr [rsp + 0x50], r14d
00000001404005c4 mov      dword ptr [rsp + 0x48], esi
00000001404005c8 mov      dword ptr [rsp + 0x40], ebp
00000001404005cc shr      ecx, 2
00000001404005cf mov      dword ptr [rsp + 0x38], ebx
00000001404005d3 movzx    eax, ax
00000001404005d6 mov      dword ptr [rsp + 0x30], edi
00000001404005da mov      dword ptr [rsp + 0x28], eax
00000001404005de mov      dword ptr [rsp + 0x20], ecx
00000001404005e2 mov      rcx, qword ptr [rip + 0x51fa17]
00000001404005e9 mov      rcx, qword ptr [rcx + 0x158]
00000001404005f0 call     0x1400b9df8
00000001404005f5 lea      r14, [rip + 0x51fa04]
00000001404005fc mov      rcx, qword ptr [rip + 0x51f9fd]
0000000140400603 cmp      rcx, r14
0000000140400606 je       0x140400afa
000000014040060c cmp      byte ptr [rcx + 0x169], r12b
0000000140400613 jb       0x140400657
0000000140400615 test     dword ptr [rcx + 0x16c], r13d
000000014040061c je       0x140400657
000000014040061e movzx    r8d, byte ptr [r15 + 0x230b]
0000000140400626 mov      edx, 0x36
000000014040062b movzx    eax, byte ptr [r15 + 0x230c]
0000000140400633 movzx    r9d, byte ptr [r15 + 0x230a]
000000014040063b mov      rcx, qword ptr [rcx + 0x158]
0000000140400642 mov      dword ptr [rsp + 0x28], eax
0000000140400646 mov      dword ptr [rsp + 0x20], r8d
000000014040064b lea      r8, [rip + 0x2d5dde]
0000000140400652 call     0x140001c34
0000000140400657 mov      rcx, qword ptr [rip + 0x51f9a2]
000000014040065e cmp      rcx, r14
0000000140400661 je       0x140400afa
0000000140400667 cmp      byte ptr [rcx + 0x169], r12b
000000014040066e jb       0x1404006e4
0000000140400670 test     dword ptr [rcx + 0x16c], r13d
0000000140400677 je       0x1404006e4
0000000140400679 movzx    r8d, byte ptr [r15 + 0x2312]
0000000140400681 mov      edx, 0x37
0000000140400686 movzx    eax, byte ptr [r15 + 0x2313]
000000014040068e movzx    r10d, byte ptr [r15 + 0x2311]
0000000140400696 movzx    r11d, byte ptr [r15 + 0x2310]
000000014040069e movzx    ebx, byte ptr [r15 + 0x230f]
00000001404006a6 movzx    edi, byte ptr [r15 + 0x230e]
00000001404006ae movzx    r9d, byte ptr [r15 + 0x230d]
00000001404006b6 mov      rcx, qword ptr [rcx + 0x158]
00000001404006bd mov      dword ptr [rsp + 0x48], eax
00000001404006c1 mov      dword ptr [rsp + 0x40], r8d
00000001404006c6 lea      r8, [rip + 0x2d5d63]
00000001404006cd mov      dword ptr [rsp + 0x38], r10d
00000001404006d2 mov      dword ptr [rsp + 0x30], r11d
00000001404006d7 mov      dword ptr [rsp + 0x28], ebx
00000001404006db mov      dword ptr [rsp + 0x20], edi
00000001404006df call     0x140072f40
00000001404006e4 mov      rax, qword ptr [rip + 0x51f915]
00000001404006eb cmp      rax, r14
00000001404006ee je       0x140400afa
00000001404006f4 cmp      byte ptr [rax + 0x169], r12b
00000001404006fb jb       0x140400789
0000000140400701 test     dword ptr [rax + 0x16c], r13d
0000000140400708 je       0x140400789
000000014040070a mov      al, byte ptr [r15 + 0x2316]
0000000140400711 test     al, al
0000000140400713 jns      0x140400717
0000000140400715 neg      al
0000000140400717 movzx    ebx, word ptr [r15 + 0x2318]
000000014040071f mov      dl, 8
0000000140400721 movzx    ecx, al
0000000140400724 call     0x1403e93c0
0000000140400729 movzx    r9d, byte ptr [r15 + 0x2314]
0000000140400731 lea      rcx, [rip + 0x1f6fd8]
0000000140400738 movzx    r8d, ax
000000014040073c mov      edx, 0x38
0000000140400741 mov      al, byte ptr [r15 + 0x2316]
0000000140400748 test     al, al
000000014040074a mov      dword ptr [rsp + 0x38], ebx
000000014040074e mov      dword ptr [rsp + 0x30], r8d
0000000140400753 lea      rax, [rip + 0x1f7646]
000000014040075a cmovs    rcx, rax
000000014040075e lea      r8, [rip + 0x2d5ccb]
0000000140400765 movzx    eax, byte ptr [r15 + 0x2315]
000000014040076d mov      qword ptr [rsp + 0x28], rcx
0000000140400772 mov      rcx, qword ptr [rip + 0x51f887]
0000000140400779 mov      dword ptr [rsp + 0x20], eax
000000014040077d mov      rcx, qword ptr [rcx + 0x158]
0000000140400784 call     0x1402fb548
0000000140400789 mov      rcx, qword ptr [rip + 0x51f870]
0000000140400790 cmp      rcx, r14
0000000140400793 je       0x140400afa
0000000140400799 cmp      byte ptr [rcx + 0x169], r12b
00000001404007a0 jb       0x140400816
00000001404007a2 test     dword ptr [rcx + 0x16c], r13d
00000001404007a9 je       0x140400816
00000001404007ab movzx    r8d, byte ptr [r15 + 0x2322]
00000001404007b3 mov      edx, 0x39
00000001404007b8 movzx    eax, byte ptr [r15 + 0x2323]
00000001404007c0 movzx    r10d, word ptr [r15 + 0x2320]
00000001404007c8 movzx    r11d, word ptr [r15 + 0x231e]
00000001404007d0 movzx    ebx, byte ptr [r15 + 0x231c]
00000001404007d8 movzx    edi, byte ptr [r15 + 0x231b]
00000001404007e0 movzx    r9d, byte ptr [r15 + 0x231a]
00000001404007e8 mov      rcx, qword ptr [rcx + 0x158]
00000001404007ef mov      dword ptr [rsp + 0x48], eax
00000001404007f3 mov      dword ptr [rsp + 0x40], r8d
00000001404007f8 lea      r8, [rip + 0x2d5c31]
00000001404007ff mov      dword ptr [rsp + 0x38], r10d
0000000140400804 mov      dword ptr [rsp + 0x30], r11d
0000000140400809 mov      dword ptr [rsp + 0x28], ebx
000000014040080d mov      dword ptr [rsp + 0x20], edi
0000000140400811 call     0x140072f40
0000000140400816 mov      rcx, qword ptr [rip + 0x51f7e3]
000000014040081d cmp      rcx, r14
0000000140400820 je       0x140400afa
0000000140400826 cmp      byte ptr [rcx + 0x169], r12b
000000014040082d jb       0x14040087e
000000014040082f test     dword ptr [rcx + 0x16c], r13d
0000000140400836 je       0x14040087e
0000000140400838 movzx    r8d, byte ptr [r15 + 0x2326]
0000000140400840 mov      edx, 0x3a
0000000140400845 movzx    eax, byte ptr [r15 + 0x2327]
000000014040084d movzx    r10d, byte ptr [r15 + 0x2325]
0000000140400855 movzx    r9d, byte ptr [r15 + 0x2324]
000000014040085d mov      rcx, qword ptr [rcx + 0x158]
0000000140400864 mov      dword ptr [rsp + 0x30], eax
0000000140400868 mov      dword ptr [rsp + 0x28], r8d
000000014040086d lea      r8, [rip + 0x2d5bbc]
0000000140400874 mov      dword ptr [rsp + 0x20], r10d
0000000140400879 call     0x140008794
000000014040087e mov      rax, qword ptr [rip + 0x51f77b]
0000000140400885 cmp      rax, r14
0000000140400888 je       0x140400afa
000000014040088e cmp      byte ptr [rax + 0x169], r12b
0000000140400895 jb       0x140400afa
000000014040089b test     dword ptr [rax + 0x16c], r13d
00000001404008a2 je       0x140400afa
00000001404008a8 movzx    ebx, word ptr [r15 + 0x2332]
00000001404008b0 bt       ebx, 0xf
00000001404008b4 jae      0x1404008b9
00000001404008b6 neg      bx
00000001404008b9 movzx    edi, word ptr [r15 + 0x232c]
00000001404008c1 movzx    eax, bx
00000001404008c4 bt       edi, 0xf
00000001404008c8 jae      0x1404008cd
00000001404008ca neg      di
00000001404008cd movzx    esi, word ptr [r15 + 0x2330]
00000001404008d5 movzx    ebp, di
00000001404008d8 bt       esi, 0xf
00000001404008dc jae      0x1404008e1
00000001404008de neg      si
00000001404008e1 movzx    r14d, word ptr [r15 + 0x232a]
00000001404008e9 movzx    r12d, si
00000001404008ed bt       r14d, 0xf
00000001404008f2 jae      0x1404008f8
00000001404008f4 neg      r14w
00000001404008f8 movzx    ecx, ax
00000001404008fb mov      dl, 2
00000001404008fd and      ecx, 3
0000000140400900 mov      word ptr [rsp + 0x128], r14w
0000000140400909 call     0x1403e93c0
000000014040090e movzx    eax, ax
0000000140400911 lea      rcx, [rip + 0x1f6df8]
0000000140400918 mov      dword ptr [rsp + 0xa8], eax
000000014040091f mov      dl, 2
0000000140400921 movzx    eax, bx
0000000140400924 shr      eax, 2
0000000140400927 mov      dword ptr [rsp + 0xc0], eax
000000014040092e movzx    eax, word ptr [r15 + 0x2332]
0000000140400936 test     ax, ax
0000000140400939 lea      rax, [rip + 0x1f7460]
0000000140400940 cmovs    rcx, rax
0000000140400944 mov      qword ptr [rsp + 0xc8], rcx
000000014040094c movzx    ecx, bp
000000014040094f and      ecx, 3
0000000140400952 call     0x1403e93c0
0000000140400957 movzx    eax, ax
000000014040095a lea      rcx, [rip + 0x1f6daf]
0000000140400961 mov      dword ptr [rsp + 0xb0], eax
0000000140400968 mov      dl, 3
000000014040096a movzx    eax, di
000000014040096d lea      rdi, [rip + 0x1f742c]
0000000140400974 shr      eax, 2
0000000140400977 mov      dword ptr [rsp + 0xa4], eax
000000014040097e movzx    eax, word ptr [r15 + 0x232c]
0000000140400986 test     ax, ax
0000000140400989 cmovs    rcx, rdi
000000014040098d mov      qword ptr [rsp + 0xb8], rcx
0000000140400995 movzx    ecx, r12w
0000000140400999 and      ecx, 7
000000014040099c call     0x1403e93c0
00000001404009a1 movzx    r12d, ax
00000001404009a5 mov      dl, 3
00000001404009a7 movzx    eax, word ptr [r15 + 0x2330]
00000001404009af lea      r15, [rip + 0x1f6d5a]
00000001404009b6 movzx    ecx, r14w
00000001404009ba movzx    r13d, si
00000001404009be shr      r13d, 3
00000001404009c2 test     ax, ax
00000001404009c5 cmovs    r15, rdi
00000001404009c9 and      ecx, 7
00000001404009cc call     0x1403e93c0
00000001404009d1 mov      rdi, qword ptr [rsp + 0x110]
00000001404009d9 lea      rsi, [rip + 0x1f6d30]
00000001404009e0 movzx    ebp, ax
00000001404009e3 mov      dl, 7
00000001404009e5 movzx    r14d, r14w
00000001404009e9 shr      r14d, 3
00000001404009ed movzx    eax, word ptr [rdi + 0x232a]
00000001404009f4 movzx    ecx, word ptr [rdi + 0x232e]
00000001404009fb test     ax, ax
00000001404009fe lea      rax, [rip + 0x1f739b]
0000000140400a05 cmovs    rsi, rax
0000000140400a09 and      ecx, 0x7f
0000000140400a0c call     0x1403e93c0
0000000140400a11 movzx    edi, word ptr [rdi + 0x232e]
0000000140400a18 mov      dl, 7
0000000140400a1a movzx    ebx, ax
0000000140400a1d mov      rax, qword ptr [rsp + 0x110]
0000000140400a25 shr      edi, 7
0000000140400a28 movzx    ecx, word ptr [rax + 0x2328]
0000000140400a2f and      ecx, 0x7f
0000000140400a32 call     0x1403e93c0
0000000140400a37 mov      rcx, qword ptr [rsp + 0x110]
0000000140400a3f mov      edx, 0x3b
0000000140400a44 movzx    eax, ax
0000000140400a47 movzx    r9d, word ptr [rcx + 0x2328]
0000000140400a4f mov      ecx, dword ptr [rsp + 0xa8]
0000000140400a56 mov      dword ptr [rsp + 0x90], ecx
0000000140400a5d mov      ecx, dword ptr [rsp + 0xc0]
0000000140400a64 mov      dword ptr [rsp + 0x88], ecx
0000000140400a6b mov      rcx, qword ptr [rsp + 0xc8]
0000000140400a73 mov      qword ptr [rsp + 0x80], rcx
0000000140400a7b mov      ecx, dword ptr [rsp + 0xb0]
0000000140400a82 mov      dword ptr [rsp + 0x78], ecx
0000000140400a86 mov      ecx, dword ptr [rsp + 0xa4]
0000000140400a8d shr      r9d, 7
0000000140400a91 mov      dword ptr [rsp + 0x70], ecx
0000000140400a95 lea      r8, [rip + 0x2d5994]
0000000140400a9c mov      rcx, qword ptr [rsp + 0xb8]
0000000140400aa4 mov      qword ptr [rsp + 0x68], rcx
0000000140400aa9 mov      rcx, qword ptr [rip + 0x51f550]
0000000140400ab0 mov      dword ptr [rsp + 0x60], r12d
0000000140400ab5 mov      dword ptr [rsp + 0x58], r13d
0000000140400aba mov      qword ptr [rsp + 0x50], r15
0000000140400abf mov      rcx, qword ptr [rcx + 0x158]
0000000140400ac6 mov      dword ptr [rsp + 0x48], ebp
0000000140400aca mov      dword ptr [rsp + 0x40], r14d
0000000140400acf mov      qword ptr [rsp + 0x38], rsi
0000000140400ad4 mov      dword ptr [rsp + 0x30], ebx
0000000140400ad8 mov      dword ptr [rsp + 0x28], edi
0000000140400adc mov      dword ptr [rsp + 0x20], eax
0000000140400ae0 call     0x140331328
0000000140400ae5 mov      r15, qword ptr [rsp + 0x110]
0000000140400aed lea      r14, [rip + 0x51f50c]
0000000140400af4 mov      r12d, 4
0000000140400afa mov      ebx, dword ptr [rsp + 0x118]
0000000140400b01 bt       ebx, 9
0000000140400b05 jae      0x140400ca6
0000000140400b0b mov      eax, dword ptr [r15 + 0x4e48]
0000000140400b12 cmp      eax, r12d
0000000140400b15 jne      0x140400c1b
0000000140400b1b mov      rcx, qword ptr [rip + 0x51f4de]
0000000140400b22 cmp      rcx, r14
0000000140400b25 je       0x140400b92
0000000140400b27 cmp      byte ptr [rcx + 0x169], r12b
0000000140400b2e jb       0x140400b92
0000000140400b30 test     dword ptr [rcx + 0x16c], 0x1000
0000000140400b3a je       0x140400b92
0000000140400b3c mov      eax, dword ptr [r15 + 0x236c]
0000000140400b43 lea      r9, [rip + 0x2247d6]
0000000140400b4a mov      rcx, qword ptr [rcx + 0x158]
0000000140400b51 lea      r8, [rip + 0x2d58d8]
0000000140400b58 mov      dword ptr [rsp + 0x40], eax
0000000140400b5c mov      edx, 0x3c
0000000140400b61 mov      eax, dword ptr [r15 + 0x235c]
0000000140400b68 mov      dword ptr [rsp + 0x38], eax
0000000140400b6c mov      eax, dword ptr [r15 + 0x2368]
0000000140400b73 mov      dword ptr [rsp + 0x30], eax
0000000140400b77 mov      eax, dword ptr [r15 + 0x2358]
0000000140400b7e mov      dword ptr [rsp + 0x28], eax
0000000140400b82 mov      eax, dword ptr [r15 + 0x2348]
0000000140400b89 mov      dword ptr [rsp + 0x20], eax
0000000140400b8d call     0x14003c780
0000000140400b92 test     dword ptr [r15 + 0x13f0], 0x800000
0000000140400b9d je       0x140400ca6
0000000140400ba3 mov      rcx, qword ptr [rip + 0x51f456]
0000000140400baa cmp      rcx, r14
0000000140400bad je       0x140400ca6
0000000140400bb3 cmp      byte ptr [rcx + 0x169], r12b
0000000140400bba jb       0x140400ca6
0000000140400bc0 test     dword ptr [rcx + 0x16c], 0x1000
0000000140400bca je       0x140400ca6
0000000140400bd0 movzx    r8d, byte ptr [r15 + 0x237a]
0000000140400bd8 mov      edx, 0x3e
0000000140400bdd movzx    eax, word ptr [r15 + 0x237c]
0000000140400be5 movzx    r10d, byte ptr [r15 + 0x2379]
0000000140400bed movzx    r9d, byte ptr [r15 + 0x2378]
0000000140400bf5 mov      rcx, qword ptr [rcx + 0x158]
0000000140400bfc mov      dword ptr [rsp + 0x30], eax
0000000140400c00 mov      dword ptr [rsp + 0x28], r8d
0000000140400c05 lea      r8, [rip + 0x2d5824]
0000000140400c0c mov      dword ptr [rsp + 0x20], r10d
0000000140400c11 call     0x140008794
0000000140400c16 jmp      0x140400ca6
0000000140400c1b cmp      eax, 3
0000000140400c1e jne      0x140400c29
0000000140400c20 lea      r9, [rip + 0x2246e9]
0000000140400c27 jmp      0x140400c4c
0000000140400c29 cmp      eax, 2
0000000140400c2c jne      0x140400c37
0000000140400c2e lea      r9, [rip + 0x2246cb]
0000000140400c35 jmp      0x140400c4c
0000000140400c37 cmp      eax, 1
0000000140400c3a lea      r9, [rip + 0x2246af]
0000000140400c41 lea      rcx, [rip + 0x22cd78]
0000000140400c48 cmovne   r9, rcx
0000000140400c4c mov      rcx, qword ptr [rip + 0x51f3ad]
0000000140400c53 cmp      rcx, r14
0000000140400c56 je       0x140400ca6
0000000140400c58 cmp      byte ptr [rcx + 0x169], r12b
0000000140400c5f jb       0x140400ca6
0000000140400c61 test     dword ptr [rcx + 0x16c], 0x1000
0000000140400c6b je       0x140400ca6
0000000140400c6d mov      eax, dword ptr [r15 + 0x2350]
0000000140400c74 lea      r8, [rip + 0x2d57b5]
0000000140400c7b mov      rcx, qword ptr [rcx + 0x158]
0000000140400c82 mov      edx, 0x3f
0000000140400c87 mov      dword ptr [rsp + 0x30], eax
0000000140400c8b mov      eax, dword ptr [r15 + 0x234c]
0000000140400c92 mov      dword ptr [rsp + 0x28], eax
0000000140400c96 mov      eax, dword ptr [r15 + 0x2348]
0000000140400c9d mov      dword ptr [rsp + 0x20], eax
0000000140400ca1 call     0x14001c670
0000000140400ca6 xor      ebp, ebp
0000000140400ca8 bt       ebx, 0xc
0000000140400cac jae      0x140400de0
0000000140400cb2 mov      sil, bpl
0000000140400cb5 cmp      byte ptr [r15 + 0x23b8], bpl
0000000140400cbc jbe      0x140400de0
0000000140400cc2 cmp      sil, 0x10
0000000140400cc6 jae      0x140400dd9
0000000140400ccc mov      rcx, qword ptr [rip + 0x51f32d]
0000000140400cd3 cmp      rcx, r14
0000000140400cd6 je       0x140400d72
0000000140400cdc cmp      byte ptr [rcx + 0x169], r12b
0000000140400ce3 jb       0x140400d72
0000000140400ce9 test     dword ptr [rcx + 0x16c], 0x1000
0000000140400cf3 je       0x140400d72
0000000140400cf5 mov      rcx, qword ptr [rcx + 0x158]
0000000140400cfc movzx    eax, sil
0000000140400d00 imul     r9, rax, 7
0000000140400d04 add      rax, 2
0000000140400d08 imul     rdx, rax, 7
0000000140400d0c movzx    r8d, byte ptr [r9 + r15 + 0x23b9]
0000000140400d15 movzx    edi, byte ptr [r9 + r15 + 0x23bd]
0000000140400d1e movzx    r10d, byte ptr [r9 + r15 + 0x23ba]
0000000140400d27 movzx    r11d, byte ptr [r9 + r15 + 0x23bb]
0000000140400d30 movzx    eax, byte ptr [rdx + r15 + 0x23b0]
0000000140400d39 mov      edx, 0x40
0000000140400d3e movzx    ebx, byte ptr [r9 + r15 + 0x23bc]
0000000140400d47 mov      dword ptr [rsp + 0x48], edi
0000000140400d4b mov      dword ptr [rsp + 0x40], eax
0000000140400d4f mov      dword ptr [rsp + 0x38], r8d
0000000140400d54 lea      r8, [rip + 0x2d56d5]
0000000140400d5b mov      dword ptr [rsp + 0x30], r10d
0000000140400d60 mov      dword ptr [rsp + 0x28], r11d
0000000140400d65 movzx    r9d, sil
0000000140400d69 mov      dword ptr [rsp + 0x20], ebx
0000000140400d6d call     0x140072f40
0000000140400d72 test     dword ptr [r15 + 0x13f0], 0x800000
0000000140400d7d je       0x140400dc9
0000000140400d7f mov      rcx, qword ptr [rip + 0x51f27a]
0000000140400d86 cmp      rcx, r14
0000000140400d89 je       0x140400dc9
0000000140400d8b cmp      byte ptr [rcx + 0x169], r12b
0000000140400d92 jb       0x140400dc9
0000000140400d94 test     dword ptr [rcx + 0x16c], 0x1000
0000000140400d9e je       0x140400dc9
0000000140400da0 mov      rcx, qword ptr [rcx + 0x158]
0000000140400da7 lea      r8, [rip + 0x2d5682]
0000000140400dae movzx    eax, sil
0000000140400db2 imul     rdx, rax, 7
0000000140400db6 movzx    r9d, byte ptr [rdx + r15 + 0x23bf]
0000000140400dbf mov      edx, 0x41
0000000140400dc4 call     0x140001bb0
0000000140400dc9 inc      sil
0000000140400dcc cmp      sil, byte ptr [r15 + 0x23b8]
0000000140400dd3 jb       0x140400cc2
0000000140400dd9 mov      ebx, dword ptr [rsp + 0x118]
0000000140400de0 bt       ebx, 0xd
0000000140400de4 jae      0x14040116e
0000000140400dea mov      r13b, bpl
0000000140400ded mov      byte ptr [rsp + 0x128], bpl
0000000140400df5 cmp      byte ptr [r15 + 0x2438], bpl
0000000140400dfc jbe      0x14040116e
0000000140400e02 cmp      r13b, 0x10
0000000140400e06 jae      0x140401165
0000000140400e0c mov      rax, qword ptr [rip + 0x51f1ed]
0000000140400e13 cmp      rax, r14
0000000140400e16 je       0x140401147
0000000140400e1c cmp      byte ptr [rax + 0x169], r12b
0000000140400e23 jb       0x140400eef
0000000140400e29 test     dword ptr [rax + 0x16c], 0x1000
0000000140400e33 je       0x140400eef
0000000140400e39 movzx    eax, r13b
0000000140400e3d mov      dl, 1
0000000140400e3f mov      r13, qword ptr [rsp + 0x110]
0000000140400e47 imul     rbx, rax, 0x1a
0000000140400e4b movzx    ecx, byte ptr [rbx + r13 + 0x2449]
0000000140400e54 movzx    edi, byte ptr [rbx + r15 + 0x2441]
0000000140400e5d and      ecx, 1
0000000140400e60 movzx    esi, byte ptr [rbx + r15 + 0x2448]
0000000140400e69 movzx    ebp, byte ptr [rbx + r15 + 0x243a]
0000000140400e72 movzx    r14d, byte ptr [rbx + r15 + 0x2440]
0000000140400e7b movzx    r15d, byte ptr [rbx + r15 + 0x243b]
0000000140400e84 call     0x1403e93c0
0000000140400e89 movzx    ecx, byte ptr [rbx + r13 + 0x2449]
0000000140400e92 lea      r8, [rip + 0x2d5597]
0000000140400e99 movzx    r13d, byte ptr [rsp + 0x128]
0000000140400ea2 mov      edx, 0x42
0000000140400ea7 mov      dword ptr [rsp + 0x50], edi
0000000140400eab mov      r9d, r13d
0000000140400eae mov      dword ptr [rsp + 0x48], esi
0000000140400eb2 mov      dword ptr [rsp + 0x40], ebp
0000000140400eb6 shr      ecx, 1
0000000140400eb8 mov      dword ptr [rsp + 0x38], r14d
0000000140400ebd movzx    eax, ax
0000000140400ec0 mov      dword ptr [rsp + 0x30], r15d
0000000140400ec5 mov      dword ptr [rsp + 0x28], eax
0000000140400ec9 mov      dword ptr [rsp + 0x20], ecx
0000000140400ecd mov      rcx, qword ptr [rip + 0x51f12c]
0000000140400ed4 mov      rcx, qword ptr [rcx + 0x158]
0000000140400edb call     0x1400b9df8
0000000140400ee0 mov      r15, qword ptr [rsp + 0x110]
0000000140400ee8 lea      r14, [rip + 0x51f111]
0000000140400eef mov      rcx, qword ptr [rip + 0x51f10a]
0000000140400ef6 cmp      rcx, r14
0000000140400ef9 je       0x140401147
0000000140400eff cmp      byte ptr [rcx + 0x169], r12b
0000000140400f06 jb       0x140400f8d
0000000140400f0c test     dword ptr [rcx + 0x16c], 0x1000
0000000140400f16 je       0x140400f8d
0000000140400f18 mov      rcx, qword ptr [rcx + 0x158]
0000000140400f1f movzx    eax, r13b
0000000140400f23 imul     rdx, rax, 0x1a
0000000140400f27 movzx    r9d, r13b
0000000140400f2b movzx    r8d, byte ptr [rdx + r15 + 0x243d]
0000000140400f34 movzx    eax, byte ptr [rdx + r15 + 0x2441]
0000000140400f3d movzx    r10d, byte ptr [rdx + r15 + 0x2442]
0000000140400f46 movzx    r11d, byte ptr [rdx + r15 + 0x243f]
0000000140400f4f movzx    ebx, byte ptr [rdx + r15 + 0x243e]
0000000140400f58 movzx    edi, byte ptr [rdx + r15 + 0x243c]
0000000140400f61 mov      edx, 0x43
0000000140400f66 mov      dword ptr [rsp + 0x48], eax
0000000140400f6a mov      dword ptr [rsp + 0x40], r8d
0000000140400f6f lea      r8, [rip + 0x2d54ba]
0000000140400f76 mov      dword ptr [rsp + 0x38], r10d
0000000140400f7b mov      dword ptr [rsp + 0x30], r11d
0000000140400f80 mov      dword ptr [rsp + 0x28], ebx
0000000140400f84 mov      dword ptr [rsp + 0x20], edi
0000000140400f88 call     0x140072f40
0000000140400f8d mov      rax, qword ptr [rip + 0x51f06c]
0000000140400f94 cmp      rax, r14
0000000140400f97 je       0x140401147
0000000140400f9d cmp      byte ptr [rax + 0x169], r12b
0000000140400fa4 jb       0x140401147
0000000140400faa test     dword ptr [rax + 0x16c], 0x1000
0000000140400fb4 je       0x140401147
0000000140400fba movzx    eax, r13b
0000000140400fbe imul     rbp, rax, 0x1a
0000000140400fc2 mov      qword ptr [rsp + 0xb0], rbp
0000000140400fca movsx    eax, byte ptr [r15 + rbp + 0x244d]
0000000140400fd3 mov      ebx, eax
0000000140400fd5 test     al, al
0000000140400fd7 jns      0x140400fdd
0000000140400fd9 neg      al
0000000140400fdb neg      ebx
0000000140400fdd movsx    esi, byte ptr [r15 + rbp + 0x244c]
0000000140400fe6 mov      edi, esi
0000000140400fe8 test     sil, sil
0000000140400feb jns      0x140400ff2
0000000140400fed neg      sil
0000000140400ff0 neg      edi
0000000140400ff2 movzx    r12d, byte ptr [r15 + rbp + 0x2443]
0000000140400ffb mov      dl, 1
0000000140400ffd movzx    ecx, al
0000000140401000 and      ecx, 1
0000000140401003 call     0x1403e93c0
0000000140401008 mov      r13, qword ptr [rsp + 0x110]
0000000140401010 lea      r14, [rip + 0x1f66f9]
0000000140401017 movzx    r15d, ax
000000014040101b mov      dl, 1
000000014040101d sar      ebx, 1
000000014040101f movzx    ecx, sil
0000000140401023 mov      al, byte ptr [r13 + rbp + 0x244d]
000000014040102b test     al, al
000000014040102d mov      dword ptr [rsp + 0xa8], ebx
0000000140401034 lea      rax, [rip + 0x1f6d65]
000000014040103b cmovs    r14, rax
000000014040103f and      ecx, 1
0000000140401042 call     0x1403e93c0
0000000140401047 sar      edi, 1
0000000140401049 lea      rsi, [rip + 0x1f66c0]
0000000140401050 movzx    ebp, ax
0000000140401053 mov      dl, 2
0000000140401055 mov      dword ptr [rsp + 0xc0], edi
000000014040105c mov      rdi, qword ptr [rsp + 0xb0]
0000000140401064 mov      al, byte ptr [rdi + r13 + 0x244c]
000000014040106c movzx    ecx, byte ptr [rdi + r13 + 0x2445]
0000000140401075 test     al, al
0000000140401077 lea      rax, [rip + 0x1f6d22]
000000014040107e cmovs    rsi, rax
0000000140401082 and      ecx, 3
0000000140401085 call     0x1403e93c0
000000014040108a movzx    edi, byte ptr [rdi + r13 + 0x2445]
0000000140401093 mov      dl, 2
0000000140401095 movzx    ebx, ax
0000000140401098 mov      rax, qword ptr [rsp + 0xb0]
00000001404010a0 shr      edi, 2
00000001404010a3 movzx    ecx, byte ptr [rax + r13 + 0x2444]
00000001404010ac and      ecx, 3
00000001404010af call     0x1403e93c0
00000001404010b4 mov      r8d, dword ptr [rsp + 0xa8]
00000001404010bc mov      edx, 0x44
00000001404010c1 mov      rcx, qword ptr [rsp + 0xb0]
00000001404010c9 mov      dword ptr [rsp + 0x70], r12d
00000001404010ce mov      dword ptr [rsp + 0x68], r15d
00000001404010d3 mov      dword ptr [rsp + 0x60], r8d
00000001404010d8 movzx    ecx, byte ptr [rcx + r13 + 0x2444]
00000001404010e1 mov      r8d, dword ptr [rsp + 0xc0]
00000001404010e9 movzx    r13d, byte ptr [rsp + 0x128]
00000001404010f2 mov      qword ptr [rsp + 0x58], r14
00000001404010f7 mov      r9d, r13d
00000001404010fa mov      dword ptr [rsp + 0x50], ebp
00000001404010fe mov      dword ptr [rsp + 0x48], r8d
0000000140401103 lea      r8, [rip + 0x2d5326]
000000014040110a mov      qword ptr [rsp + 0x40], rsi
000000014040110f shr      ecx, 2
0000000140401112 mov      dword ptr [rsp + 0x38], ebx
0000000140401116 movzx    eax, ax
0000000140401119 mov      dword ptr [rsp + 0x30], edi
000000014040111d mov      dword ptr [rsp + 0x28], eax
0000000140401121 mov      dword ptr [rsp + 0x20], ecx
0000000140401125 mov      rcx, qword ptr [rip + 0x51eed4]
000000014040112c mov      rcx, qword ptr [rcx + 0x158]
0000000140401133 call     0x1403feb44
0000000140401138 mov      r15, qword ptr [rsp + 0x110]
0000000140401140 lea      r14, [rip + 0x51eeb9]
0000000140401147 inc      r13b
000000014040114a mov      r12d, 4
0000000140401150 mov      byte ptr [rsp + 0x128], r13b
0000000140401158 cmp      r13b, byte ptr [r15 + 0x2438]
000000014040115f jb       0x140400e02
0000000140401165 mov      ebx, dword ptr [rsp + 0x118]
000000014040116c xor      ebp, ebp
000000014040116e bt       ebx, 0xf
0000000140401172 jae      0x140401a25
0000000140401178 mov      rcx, qword ptr [rip + 0x51ee81]
000000014040117f mov      r12d, 0x1000
0000000140401185 cmp      rcx, r14
0000000140401188 je       0x1404011bc
000000014040118a cmp      byte ptr [rcx + 0x169], 4
0000000140401191 jb       0x1404011bc
0000000140401193 test     dword ptr [rcx + 0x16c], r12d
000000014040119a je       0x1404011bc
000000014040119c movzx    r9d, byte ptr [r15 + 0x26f8]
00000001404011a4 lea      r8, [rip + 0x2d5285]
00000001404011ab mov      rcx, qword ptr [rcx + 0x158]
00000001404011b2 mov      edx, 0x47
00000001404011b7 call     0x140001bb0
00000001404011bc mov      sil, bpl
00000001404011bf mov      byte ptr [rsp + 0x128], bpl
00000001404011c7 cmp      byte ptr [r15 + 0x26f8], bpl
00000001404011ce jbe      0x140401a25
00000001404011d4 cmp      sil, 0x10
00000001404011d8 jae      0x140401a1e
00000001404011de mov      rax, qword ptr [rip + 0x51ee1b]
00000001404011e5 cmp      rax, r14
00000001404011e8 je       0x14040142c
00000001404011ee cmp      byte ptr [rax + 0x169], 4
00000001404011f5 jb       0x1404012be
00000001404011fb test     dword ptr [rax + 0x16c], r12d
0000000140401202 je       0x1404012be
0000000140401208 mov      r13, qword ptr [rsp + 0x110]
0000000140401210 mov      dl, 1
0000000140401212 movzx    eax, sil
0000000140401216 lea      rbx, [rax + rax*4]
000000014040121a movzx    ecx, byte ptr [r13 + rbx*8 + 0x2708]
0000000140401223 movzx    edi, byte ptr [r15 + rbx*8 + 0x2702]
000000014040122c and      ecx, 1
000000014040122f movzx    esi, byte ptr [r15 + rbx*8 + 0x2709]
0000000140401238 movzx    ebp, byte ptr [r15 + rbx*8 + 0x26fc]
0000000140401241 movzx    r14d, byte ptr [r15 + rbx*8 + 0x2703]
000000014040124a movzx    r15d, byte ptr [r15 + rbx*8 + 0x26fb]
0000000140401253 call     0x1403e93c0
0000000140401258 movzx    ecx, byte ptr [r13 + rbx*8 + 0x2708]
0000000140401261 lea      r8, [rip + 0x2d51c8]
0000000140401268 movzx    r9d, byte ptr [rsp + 0x128]
0000000140401271 mov      edx, 0x48
0000000140401276 mov      dword ptr [rsp + 0x50], edi
000000014040127a mov      dword ptr [rsp + 0x48], esi
000000014040127e mov      dword ptr [rsp + 0x40], ebp
0000000140401282 shr      ecx, 1
0000000140401284 mov      dword ptr [rsp + 0x38], r14d
0000000140401289 movzx    eax, ax
000000014040128c mov      dword ptr [rsp + 0x30], r15d
0000000140401291 mov      dword ptr [rsp + 0x28], eax
0000000140401295 mov      dword ptr [rsp + 0x20], ecx
0000000140401299 mov      rcx, qword ptr [rip + 0x51ed60]
00000001404012a0 mov      rcx, qword ptr [rcx + 0x158]
00000001404012a7 call     0x1400b9df8
00000001404012ac mov      sil, byte ptr [rsp + 0x128]
00000001404012b4 lea      r14, [rip + 0x51ed45]
00000001404012bb mov      r15, r13
00000001404012be mov      rcx, qword ptr [rip + 0x51ed3b]
00000001404012c5 cmp      rcx, r14
00000001404012c8 je       0x14040142c
00000001404012ce cmp      byte ptr [rcx + 0x169], 4
00000001404012d5 jb       0x140401355
00000001404012d7 test     dword ptr [rcx + 0x16c], r12d
00000001404012de je       0x140401355
00000001404012e0 mov      rcx, qword ptr [rcx + 0x158]
00000001404012e7 movzx    eax, sil
00000001404012eb movzx    r9d, sil
00000001404012ef lea      rdx, [rax + rax*4]
00000001404012f3 movzx    r8d, byte ptr [r15 + rdx*8 + 0x26ff]
00000001404012fc movzx    eax, byte ptr [r15 + rdx*8 + 0x2702]
0000000140401305 movzx    r10d, byte ptr [r15 + rdx*8 + 0x2701]
000000014040130e movzx    r11d, byte ptr [r15 + rdx*8 + 0x26fd]
0000000140401317 movzx    ebx, byte ptr [r15 + rdx*8 + 0x26fe]
0000000140401320 movzx    edi, byte ptr [r15 + rdx*8 + 0x26fa]
0000000140401329 mov      edx, 0x49
000000014040132e mov      dword ptr [rsp + 0x48], eax
0000000140401332 mov      dword ptr [rsp + 0x40], r8d
0000000140401337 lea      r8, [rip + 0x2d50f2]
000000014040133e mov      dword ptr [rsp + 0x38], r10d
0000000140401343 mov      dword ptr [rsp + 0x30], r11d
0000000140401348 mov      dword ptr [rsp + 0x28], ebx
000000014040134c mov      dword ptr [rsp + 0x20], edi
0000000140401350 call     0x140072f40
0000000140401355 mov      rax, qword ptr [rip + 0x51eca4]
000000014040135c cmp      rax, r14
000000014040135f je       0x14040142c
0000000140401365 cmp      byte ptr [rax + 0x169], 4
000000014040136c jb       0x14040142c
0000000140401372 test     dword ptr [rax + 0x16c], r12d
0000000140401379 je       0x14040142c
000000014040137f movzx    eax, sil
0000000140401383 lea      rbp, [rax + rax*4]
0000000140401387 movzx    edi, word ptr [r15 + rbp*8 + 0x270c]
0000000140401390 bt       edi, 0xf
0000000140401394 jae      0x140401399
0000000140401396 neg      di
0000000140401399 movzx    ebx, byte ptr [r15 + rbp*8 + 0x2700]
00000001404013a2 movzx    eax, di
00000001404013a5 movzx    ecx, ax
00000001404013a8 mov      dl, 2
00000001404013aa and      ecx, 3
00000001404013ad call     0x1403e93c0
00000001404013b2 movzx    ecx, byte ptr [r15 + rbp*8 + 0x2714]
00000001404013bb lea      r8, [rip + 0x1f634e]
00000001404013c2 movzx    r10d, ax
00000001404013c6 mov      edx, 0x4a
00000001404013cb movzx    eax, word ptr [r15 + rbp*8 + 0x270c]
00000001404013d4 mov      dword ptr [rsp + 0x48], ebx
00000001404013d8 mov      dword ptr [rsp + 0x40], r10d
00000001404013dd movzx    r11d, di
00000001404013e1 shr      r11d, 2
00000001404013e5 test     ax, ax
00000001404013e8 mov      dword ptr [rsp + 0x38], r11d
00000001404013ed lea      rax, [rip + 0x1f69ac]
00000001404013f4 movzx    r9d, sil
00000001404013f8 cmovs    r8, rax
00000001404013fc movzx    eax, byte ptr [r15 + rbp*8 + 0x270a]
0000000140401405 mov      qword ptr [rsp + 0x30], r8
000000014040140a lea      r8, [rip + 0x2d501f]
0000000140401411 mov      dword ptr [rsp + 0x28], eax
0000000140401415 mov      dword ptr [rsp + 0x20], ecx
0000000140401419 mov      rcx, qword ptr [rip + 0x51ebe0]
0000000140401420 mov      rcx, qword ptr [rcx + 0x158]
0000000140401427 call     0x1403fece8
000000014040142c mov      eax, dword ptr [r15 + 0x13f0]
0000000140401433 cmp      eax, 0x20000
0000000140401438 jne      0x1404015cc
000000014040143e mov      rax, qword ptr [rip + 0x51ebbb]
0000000140401445 cmp      rax, r14
0000000140401448 je       0x140401a00
000000014040144e cmp      byte ptr [rax + 0x169], 4
0000000140401455 jb       0x14040190f
000000014040145b test     dword ptr [rax + 0x16c], r12d
0000000140401462 je       0x14040190f
0000000140401468 movzx    eax, sil
000000014040146c lea      rsi, [rax + rax*4]
0000000140401470 mov      bl, byte ptr [r15 + rsi*8 + 0x2711]
0000000140401478 mov      qword ptr [rsp + 0xa8], rsi
0000000140401480 test     bl, bl
0000000140401482 jns      0x140401486
0000000140401484 neg      bl
0000000140401486 mov      dil, byte ptr [r15 + rsi*8 + 0x2710]
000000014040148e mov      al, bl
0000000140401490 test     dil, dil
0000000140401493 jns      0x140401498
0000000140401495 neg      dil
0000000140401498 movzx    ecx, al
000000014040149b mov      dl, 1
000000014040149d and      ecx, 1
00000001404014a0 mov      bpl, dil
00000001404014a3 call     0x1403e93c0
00000001404014a8 movzx    r12d, ax
00000001404014ac mov      dl, 1
00000001404014ae mov      al, byte ptr [r15 + rsi*8 + 0x2711]
00000001404014b6 lea      r15, [rip + 0x1f6253]
00000001404014bd movzx    ecx, dil
00000001404014c1 movzx    r13d, bl
00000001404014c5 shr      r13d, 1
00000001404014c8 test     al, al
00000001404014ca lea      rax, [rip + 0x1f68cf]
00000001404014d1 cmovs    r15, rax
00000001404014d5 and      ecx, 1
00000001404014d8 call     0x1403e93c0
00000001404014dd mov      rdx, qword ptr [rsp + 0xa8]
00000001404014e5 movzx    ebp, ax
00000001404014e8 movzx    r14d, dil
00000001404014ec mov      rdi, qword ptr [rsp + 0x110]
00000001404014f4 shr      r14d, 1
00000001404014f7 mov      al, byte ptr [rdi + rsi*8 + 0x2710]
00000001404014fe lea      rsi, [rip + 0x1f620b]
0000000140401505 movzx    ecx, byte ptr [rdi + rdx*8 + 0x2705]
000000014040150d test     al, al
000000014040150f lea      rax, [rip + 0x1f688a]
0000000140401516 mov      dl, 2
0000000140401518 cmovs    rsi, rax
000000014040151c and      ecx, 3
000000014040151f call     0x1403e93c0
0000000140401524 mov      rcx, qword ptr [rsp + 0xa8]
000000014040152c mov      dl, 2
000000014040152e movzx    ebx, ax
0000000140401531 mov      rax, qword ptr [rsp + 0x110]
0000000140401539 movzx    edi, byte ptr [rdi + rcx*8 + 0x2705]
0000000140401541 shr      edi, 2
0000000140401544 movzx    ecx, byte ptr [rax + rcx*8 + 0x2704]
000000014040154c and      ecx, 3
000000014040154f call     0x1403e93c0
0000000140401554 mov      rdx, qword ptr [rsp + 0xa8]
000000014040155c lea      r8, [rip + 0x2d4ecd]
0000000140401563 mov      rcx, qword ptr [rsp + 0x110]
000000014040156b movzx    r9d, byte ptr [rsp + 0x128]
0000000140401574 mov      dword ptr [rsp + 0x68], r12d
0000000140401579 mov      dword ptr [rsp + 0x60], r13d
000000014040157e movzx    ecx, byte ptr [rcx + rdx*8 + 0x2704]
0000000140401586 mov      edx, 0x4b
000000014040158b mov      qword ptr [rsp + 0x58], r15
0000000140401590 mov      dword ptr [rsp + 0x50], ebp
0000000140401594 mov      dword ptr [rsp + 0x48], r14d
0000000140401599 mov      qword ptr [rsp + 0x40], rsi
000000014040159e shr      ecx, 2
00000001404015a1 mov      dword ptr [rsp + 0x38], ebx
00000001404015a5 movzx    eax, ax
00000001404015a8 mov      dword ptr [rsp + 0x30], edi
00000001404015ac mov      dword ptr [rsp + 0x28], eax
00000001404015b0 mov      dword ptr [rsp + 0x20], ecx
00000001404015b4 mov      rcx, qword ptr [rip + 0x51ea45]
00000001404015bb mov      rcx, qword ptr [rcx + 0x158]
00000001404015c2 call     0x1403fe9b8
00000001404015c7 jmp      0x140401908
00000001404015cc test     eax, 0xfc0000
00000001404015d1 je       0x14040190f
00000001404015d7 mov      rax, qword ptr [rip + 0x51ea22]
00000001404015de cmp      rax, r14
00000001404015e1 je       0x140401a00
00000001404015e7 cmp      byte ptr [rax + 0x169], 4
00000001404015ee jb       0x1404016f4
00000001404015f4 test     dword ptr [rax + 0x16c], r12d
00000001404015fb je       0x1404016f4
0000000140401601 movzx    eax, sil
0000000140401605 mov      dl, 2
0000000140401607 lea      r12, [rax + rax*4]
000000014040160b movzx    ecx, byte ptr [r15 + r12*8 + 0x2721]
0000000140401614 and      ecx, 3
0000000140401617 call     0x1403e93c0
000000014040161c movzx    r15d, byte ptr [r15 + r12*8 + 0x2721]
0000000140401625 mov      dl, 2
0000000140401627 mov      r13, qword ptr [rsp + 0x110]
000000014040162f movzx    r14d, ax
0000000140401633 shr      r15d, 2
0000000140401637 movzx    ecx, byte ptr [r13 + r12*8 + 0x2720]
0000000140401640 and      ecx, 3
0000000140401643 call     0x1403e93c0
0000000140401648 movzx    ecx, byte ptr [r13 + r12*8 + 0x271f]
0000000140401651 mov      dl, 2
0000000140401653 movzx    ebp, byte ptr [r13 + r12*8 + 0x2720]
000000014040165c and      ecx, 3
000000014040165f movzx    esi, ax
0000000140401662 shr      ebp, 2
0000000140401665 call     0x1403e93c0
000000014040166a movzx    ecx, byte ptr [r13 + r12*8 + 0x271e]
0000000140401673 mov      dl, 2
0000000140401675 movzx    edi, byte ptr [r13 + r12*8 + 0x271f]
000000014040167e and      ecx, 3
0000000140401681 movzx    ebx, ax
0000000140401684 shr      edi, 2
0000000140401687 call     0x1403e93c0
000000014040168c movzx    ecx, byte ptr [r13 + r12*8 + 0x271e]
0000000140401695 lea      r8, [rip + 0x2d4d94]
000000014040169c movzx    r12d, byte ptr [rsp + 0x128]
00000001404016a5 mov      edx, 0x4c
00000001404016aa mov      dword ptr [rsp + 0x58], r14d
00000001404016af mov      r9d, r12d
00000001404016b2 mov      dword ptr [rsp + 0x50], r15d
00000001404016b7 mov      dword ptr [rsp + 0x48], esi
00000001404016bb mov      dword ptr [rsp + 0x40], ebp
00000001404016bf shr      ecx, 2
00000001404016c2 mov      dword ptr [rsp + 0x38], ebx
00000001404016c6 movzx    eax, ax
00000001404016c9 mov      dword ptr [rsp + 0x30], edi
00000001404016cd mov      dword ptr [rsp + 0x28], eax
00000001404016d1 mov      dword ptr [rsp + 0x20], ecx
00000001404016d5 mov      rcx, qword ptr [rip + 0x51e924]
00000001404016dc mov      rcx, qword ptr [rcx + 0x158]
00000001404016e3 call     0x140099b4c
00000001404016e8 mov      r15, r13
00000001404016eb lea      r14, [rip + 0x51e90e]
00000001404016f2 jmp      0x1404016fc
00000001404016f4 mov      r12b, byte ptr [rsp + 0x128]
00000001404016fc mov      rax, qword ptr [rip + 0x51e8fd]
0000000140401703 cmp      rax, r14
0000000140401706 je       0x1404019f8
000000014040170c cmp      byte ptr [rax + 0x169], 4
0000000140401713 jb       0x14040190f
0000000140401719 test     dword ptr [rax + 0x16c], 0x1000
0000000140401723 je       0x14040190f
0000000140401729 movzx    eax, r12b
000000014040172d mov      r8b, 0x80
0000000140401730 lea      rbp, [rax + rax*4]
0000000140401734 mov      bl, byte ptr [r15 + rbp*8 + 0x2713]
000000014040173c mov      qword ptr [rsp + 0xc0], rbp
0000000140401744 test     r8b, bl
0000000140401747 je       0x14040174b
0000000140401749 neg      bl
000000014040174b mov      dil, byte ptr [r15 + rbp*8 + 0x2712]
0000000140401753 mov      al, bl
0000000140401755 test     r8b, dil
0000000140401758 je       0x14040175d
000000014040175a neg      dil
000000014040175d mov      sil, byte ptr [r15 + rbp*8 + 0x2711]
0000000140401765 mov      r14b, dil
0000000140401768 test     r8b, sil
000000014040176b je       0x140401770
000000014040176d neg      sil
0000000140401770 mov      cl, byte ptr [r15 + rbp*8 + 0x2710]
0000000140401778 mov      dl, sil
000000014040177b mov      byte ptr [rsp + 0xa0], dl
0000000140401782 test     r8b, cl
0000000140401785 je       0x14040178b
0000000140401787 neg      cl
0000000140401789 jmp      0x140401792
000000014040178b mov      byte ptr [rsp + 0xa0], dl
0000000140401792 mov      byte ptr [rsp + 0xa2], cl
0000000140401799 mov      dl, 1
000000014040179b mov      byte ptr [rsp + 0xa1], cl
00000001404017a2 movzx    ecx, al
00000001404017a5 and      ecx, 1
00000001404017a8 call     0x1403e93c0
00000001404017ad movzx    r13d, ax
00000001404017b1 lea      r12, [rip + 0x1f5f58]
00000001404017b8 movzx    eax, bl
00000001404017bb mov      dl, 1
00000001404017bd shr      eax, 1
00000001404017bf mov      dword ptr [rsp + 0xa8], eax
00000001404017c6 mov      al, byte ptr [r15 + rbp*8 + 0x2713]
00000001404017ce test     al, al
00000001404017d0 movzx    ecx, r14b
00000001404017d4 lea      rax, [rip + 0x1f65c5]
00000001404017db cmovs    r12, rax
00000001404017df and      ecx, 1
00000001404017e2 call     0x1403e93c0
00000001404017e7 movzx    ecx, byte ptr [rsp + 0xa0]
00000001404017ef mov      dl, 1
00000001404017f1 mov      rbx, qword ptr [rsp + 0x110]
00000001404017f9 movzx    r14d, ax
00000001404017fd movzx    r15d, dil
0000000140401801 shr      r15d, 1
0000000140401804 mov      al, byte ptr [rbx + rbp*8 + 0x2712]
000000014040180b lea      rbp, [rip + 0x1f5efe]
0000000140401812 test     al, al
0000000140401814 lea      rax, [rip + 0x1f6585]
000000014040181b cmovs    rbp, rax
000000014040181f and      ecx, 1
0000000140401822 call     0x1403e93c0
0000000140401827 movzx    ecx, byte ptr [rsp + 0xa1]
000000014040182f mov      dl, 1
0000000140401831 movzx    edi, ax
0000000140401834 mov      rax, qword ptr [rsp + 0xc0]
000000014040183c movzx    esi, sil
0000000140401840 shr      esi, 1
0000000140401842 mov      al, byte ptr [rbx + rax*8 + 0x2711]
0000000140401849 lea      rbx, [rip + 0x1f5ec0]
0000000140401850 test     al, al
0000000140401852 lea      rax, [rip + 0x1f6547]
0000000140401859 cmovs    rbx, rax
000000014040185d and      ecx, 1
0000000140401860 call     0x1403e93c0
0000000140401865 mov      rcx, qword ptr [rsp + 0xc0]
000000014040186d mov      edx, 0x4d
0000000140401872 movzx    r10d, byte ptr [rsp + 0xa2]
000000014040187b movzx    r9d, byte ptr [rsp + 0x128]
0000000140401884 mov      dword ptr [rsp + 0x78], r13d
0000000140401889 movzx    r8d, ax
000000014040188d mov      rax, qword ptr [rsp + 0x110]
0000000140401895 shr      r10d, 1
0000000140401898 mov      al, byte ptr [rax + rcx*8 + 0x2710]
000000014040189f lea      rcx, [rip + 0x1f5e6a]
00000001404018a6 test     al, al
00000001404018a8 lea      rax, [rip + 0x1f64f1]
00000001404018af cmovs    rcx, rax
00000001404018b3 mov      eax, dword ptr [rsp + 0xa8]
00000001404018ba mov      dword ptr [rsp + 0x70], eax
00000001404018be mov      qword ptr [rsp + 0x68], r12
00000001404018c3 mov      dword ptr [rsp + 0x60], r14d
00000001404018c8 mov      dword ptr [rsp + 0x58], r15d
00000001404018cd mov      qword ptr [rsp + 0x50], rbp
00000001404018d2 mov      dword ptr [rsp + 0x48], edi
00000001404018d6 mov      dword ptr [rsp + 0x40], esi
00000001404018da mov      qword ptr [rsp + 0x38], rbx
00000001404018df mov      dword ptr [rsp + 0x30], r8d
00000001404018e4 lea      r8, [rip + 0x2d4b45]
00000001404018eb mov      dword ptr [rsp + 0x28], r10d
00000001404018f0 mov      qword ptr [rsp + 0x20], rcx
00000001404018f5 mov      rcx, qword ptr [rip + 0x51e704]
00000001404018fc mov      rcx, qword ptr [rcx + 0x158]
0000000140401903 call     0x1403fedd8
0000000140401908 lea      r14, [rip + 0x51e6f1]
000000014040190f mov      rax, qword ptr [rip + 0x51e6ea]
0000000140401916 mov      r15, qword ptr [rsp + 0x110]
000000014040191e cmp      rax, r14
0000000140401921 je       0x1404019f8
0000000140401927 cmp      byte ptr [rax + 0x169], 4
000000014040192e jb       0x1404019f8
0000000140401934 test     dword ptr [rax + 0x16c], 0x1000
000000014040193e je       0x1404019f8
0000000140401944 movzx    r12d, byte ptr [rsp + 0x128]
000000014040194d mov      dl, 2
000000014040194f lea      r14, [r12 + r12*4]
0000000140401953 movzx    ecx, word ptr [r15 + r14*8 + 0x271c]
000000014040195c and      ecx, 3
000000014040195f call     0x1403e93c0
0000000140401964 movzx    ecx, word ptr [r15 + r14*8 + 0x271a]
000000014040196d mov      dl, 2
000000014040196f movzx    ebp, word ptr [r15 + r14*8 + 0x271c]
0000000140401978 and      ecx, 3
000000014040197b movzx    esi, ax
000000014040197e shr      ebp, 2
0000000140401981 call     0x1403e93c0
0000000140401986 movzx    ecx, word ptr [r15 + r14*8 + 0x2718]
000000014040198f mov      dl, 2
0000000140401991 movzx    edi, word ptr [r15 + r14*8 + 0x271a]
000000014040199a and      ecx, 3
000000014040199d movzx    ebx, ax
00000001404019a0 shr      edi, 2
00000001404019a3 call     0x1403e93c0
00000001404019a8 movzx    ecx, word ptr [r15 + r14*8 + 0x2718]
00000001404019b1 lea      r8, [rip + 0x2d4a78]
00000001404019b8 mov      dword ptr [rsp + 0x48], esi
00000001404019bc mov      r9d, r12d
00000001404019bf mov      dword ptr [rsp + 0x40], ebp
00000001404019c3 mov      edx, 0x4e
00000001404019c8 shr      ecx, 2
00000001404019cb mov      dword ptr [rsp + 0x38], ebx
00000001404019cf movzx    eax, ax
00000001404019d2 mov      dword ptr [rsp + 0x30], edi
00000001404019d6 mov      dword ptr [rsp + 0x28], eax
00000001404019da mov      dword ptr [rsp + 0x20], ecx
00000001404019de mov      rcx, qword ptr [rip + 0x51e61b]
00000001404019e5 mov      rcx, qword ptr [rcx + 0x158]
00000001404019ec call     0x140072f40
00000001404019f1 lea      r14, [rip + 0x51e608]
00000001404019f8 mov      sil, byte ptr [rsp + 0x128]
0000000140401a00 inc      sil
0000000140401a03 mov      r12d, 0x1000
0000000140401a09 mov      byte ptr [rsp + 0x128], sil
0000000140401a11 cmp      sil, byte ptr [r15 + 0x26f8]
0000000140401a18 jb       0x1404011d4
0000000140401a1e mov      ebx, dword ptr [rsp + 0x118]
0000000140401a25 bt       ebx, 0x12
0000000140401a29 jae      0x140401a33
0000000140401a2b mov      rcx, r15
0000000140401a2e call     0x140401a6c
0000000140401a33 bt       ebx, 0x14
0000000140401a37 jae      0x140401a41
0000000140401a39 mov      rcx, r15
0000000140401a3c call     0x140401b34
0000000140401a41 bt       ebx, 0x16
0000000140401a45 jae      0x140401a4f
0000000140401a47 mov      rcx, r15
0000000140401a4a call     0x140401e48
0000000140401a4f mov      rbx, qword ptr [rsp + 0x120]
0000000140401a57 add      rsp, 0xd0
0000000140401a5e pop      r15
0000000140401a60 pop      r14
0000000140401a62 pop      r13
0000000140401a64 pop      r12
0000000140401a66 pop      rdi
0000000140401a67 pop      rsi
0000000140401a68 pop      rbp
0000000140401a69 ret      