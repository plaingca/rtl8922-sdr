00000001403c72f0 push     rbp
00000001403c72f2 push     rbx
00000001403c72f3 push     rsi
00000001403c72f4 push     rdi
00000001403c72f5 push     r12
00000001403c72f7 push     r13
00000001403c72f9 push     r14
00000001403c72fb push     r15
00000001403c72fd lea      rbp, [rsp - 0x17]
00000001403c7302 sub      rsp, 0x98
00000001403c7309 mov      rax, qword ptr [rip + 0x560150]
00000001403c7310 xor      rax, rsp
00000001403c7313 mov      qword ptr [rbp + 7], rax
00000001403c7317 mov      r14, qword ptr [rbp + 0x7f]
00000001403c731b lea      r12, [rdx + 0x10]
00000001403c731f xor      eax, eax
00000001403c7321 xor      ebx, ebx
00000001403c7323 cmp      byte ptr [r12], 0x2d
00000001403c7328 xorps    xmm0, xmm0
00000001403c732b mov      qword ptr [rbp - 1], rax
00000001403c732f mov      r15, r9
00000001403c7332 mov      rax, qword ptr [rcx + 0x9a0]
00000001403c7339 mov      rdi, r8
00000001403c733c mov      qword ptr [rbp - 0x29], rax
00000001403c7340 mov      r13, rdx
00000001403c7343 mov      rsi, rcx
00000001403c7346 mov      word ptr [rbp - 0x31], bx
00000001403c734a movups   xmmword ptr [rbp - 0x21], xmm0
00000001403c734e movups   xmmword ptr [rbp - 0x11], xmm0
00000001403c7352 jne      0x1403c764e
00000001403c7358 cmp      byte ptr [r12 + 1], 0x68
00000001403c735e jne      0x1403c764e
00000001403c7364 cmp      byte ptr [r12 + 2], bl
00000001403c7369 jne      0x1403c764e
00000001403c736f mov      eax, dword ptr [r8]
00000001403c7372 mov      ecx, dword ptr [r14]
00000001403c7375 cmp      eax, ecx
00000001403c7377 jae      0x1403c7391
00000001403c7379 sub      ecx, eax
00000001403c737b lea      r8, [rip + 0x283cde]
00000001403c7382 mov      edx, ecx
00000001403c7384 lea      rcx, [r9 + rax]
00000001403c7388 call     0x140044426
00000001403c738d add      dword ptr [rdi], eax
00000001403c738f mov      eax, dword ptr [rdi]
00000001403c7391 mov      ecx, dword ptr [r14]
00000001403c7394 cmp      eax, ecx
00000001403c7396 jae      0x1403c73b1
00000001403c7398 sub      ecx, eax
00000001403c739a lea      r8, [rip + 0x283d0f]
00000001403c73a1 mov      edx, ecx
00000001403c73a3 mov      ecx, eax
00000001403c73a5 add      rcx, r15
00000001403c73a8 call     0x140044426
00000001403c73ad add      dword ptr [rdi], eax
00000001403c73af mov      eax, dword ptr [rdi]
00000001403c73b1 mov      ecx, dword ptr [r14]
00000001403c73b4 cmp      eax, ecx
00000001403c73b6 jae      0x1403c73d1
00000001403c73b8 sub      ecx, eax
00000001403c73ba lea      r8, [rip + 0x283d0f]
00000001403c73c1 mov      edx, ecx
00000001403c73c3 mov      ecx, eax
00000001403c73c5 add      rcx, r15
00000001403c73c8 call     0x140044426
00000001403c73cd add      dword ptr [rdi], eax
00000001403c73cf mov      eax, dword ptr [rdi]
00000001403c73d1 mov      ecx, dword ptr [r14]
00000001403c73d4 cmp      eax, ecx
00000001403c73d6 jae      0x1403c73f1
00000001403c73d8 sub      ecx, eax
00000001403c73da lea      r8, [rip + 0x283d1f]
00000001403c73e1 mov      edx, ecx
00000001403c73e3 mov      ecx, eax
00000001403c73e5 add      rcx, r15
00000001403c73e8 call     0x140044426
00000001403c73ed add      dword ptr [rdi], eax
00000001403c73ef mov      eax, dword ptr [rdi]
00000001403c73f1 mov      ecx, dword ptr [r14]
00000001403c73f4 cmp      eax, ecx
00000001403c73f6 jae      0x1403c7411
00000001403c73f8 sub      ecx, eax
00000001403c73fa lea      r8, [rip + 0x283d3f]
00000001403c7401 mov      edx, ecx
00000001403c7403 mov      ecx, eax
00000001403c7405 add      rcx, r15
00000001403c7408 call     0x140044426
00000001403c740d add      dword ptr [rdi], eax
00000001403c740f mov      eax, dword ptr [rdi]
00000001403c7411 mov      ecx, dword ptr [r14]
00000001403c7414 cmp      eax, ecx
00000001403c7416 jae      0x1403c7431
00000001403c7418 sub      ecx, eax
00000001403c741a lea      r8, [rip + 0x283d5f]
00000001403c7421 mov      edx, ecx
00000001403c7423 mov      ecx, eax
00000001403c7425 add      rcx, r15
00000001403c7428 call     0x140044426
00000001403c742d add      dword ptr [rdi], eax
00000001403c742f mov      eax, dword ptr [rdi]
00000001403c7431 mov      ecx, dword ptr [r14]
00000001403c7434 cmp      eax, ecx
00000001403c7436 jae      0x1403c7451
00000001403c7438 sub      ecx, eax
00000001403c743a lea      r8, [rip + 0x26570f]
00000001403c7441 mov      edx, ecx
00000001403c7443 mov      ecx, eax
00000001403c7445 add      rcx, r15
00000001403c7448 call     0x140044426
00000001403c744d add      dword ptr [rdi], eax
00000001403c744f mov      eax, dword ptr [rdi]
00000001403c7451 mov      ecx, dword ptr [r14]
00000001403c7454 cmp      eax, ecx
00000001403c7456 jae      0x1403c7471
00000001403c7458 sub      ecx, eax
00000001403c745a lea      r8, [rip + 0x283d4f]
00000001403c7461 mov      edx, ecx
00000001403c7463 mov      ecx, eax
00000001403c7465 add      rcx, r15
00000001403c7468 call     0x140044426
00000001403c746d add      dword ptr [rdi], eax
00000001403c746f mov      eax, dword ptr [rdi]
00000001403c7471 mov      ecx, dword ptr [r14]
00000001403c7474 cmp      eax, ecx
00000001403c7476 jae      0x1403c7491
00000001403c7478 sub      ecx, eax
00000001403c747a lea      r8, [rip + 0x283d3f]
00000001403c7481 mov      edx, ecx
00000001403c7483 mov      ecx, eax
00000001403c7485 add      rcx, r15
00000001403c7488 call     0x140044426
00000001403c748d add      dword ptr [rdi], eax
00000001403c748f mov      eax, dword ptr [rdi]
00000001403c7491 mov      ecx, dword ptr [r14]
00000001403c7494 cmp      eax, ecx
00000001403c7496 jae      0x1403c74b1
00000001403c7498 sub      ecx, eax
00000001403c749a lea      r8, [rip + 0x283d3f]
00000001403c74a1 mov      edx, ecx
00000001403c74a3 mov      ecx, eax
00000001403c74a5 add      rcx, r15
00000001403c74a8 call     0x140044426
00000001403c74ad add      dword ptr [rdi], eax
00000001403c74af mov      eax, dword ptr [rdi]
00000001403c74b1 mov      ecx, dword ptr [r14]
00000001403c74b4 cmp      eax, ecx
00000001403c74b6 jae      0x1403c74d1
00000001403c74b8 sub      ecx, eax
00000001403c74ba lea      r8, [rip + 0x283d3f]
00000001403c74c1 mov      edx, ecx
00000001403c74c3 mov      ecx, eax
00000001403c74c5 add      rcx, r15
00000001403c74c8 call     0x140044426
00000001403c74cd add      dword ptr [rdi], eax
00000001403c74cf mov      eax, dword ptr [rdi]
00000001403c74d1 mov      ecx, dword ptr [r14]
00000001403c74d4 cmp      eax, ecx
00000001403c74d6 jae      0x1403c74f1
00000001403c74d8 sub      ecx, eax
00000001403c74da lea      r8, [rip + 0x283d3f]
00000001403c74e1 mov      edx, ecx
00000001403c74e3 mov      ecx, eax
00000001403c74e5 add      rcx, r15
00000001403c74e8 call     0x140044426
00000001403c74ed add      dword ptr [rdi], eax
00000001403c74ef mov      eax, dword ptr [rdi]
00000001403c74f1 mov      ecx, dword ptr [r14]
00000001403c74f4 cmp      eax, ecx
00000001403c74f6 jae      0x1403c7511
00000001403c74f8 sub      ecx, eax
00000001403c74fa lea      r8, [rip + 0x283d2f]
00000001403c7501 mov      edx, ecx
00000001403c7503 mov      ecx, eax
00000001403c7505 add      rcx, r15
00000001403c7508 call     0x140044426
00000001403c750d add      dword ptr [rdi], eax
00000001403c750f mov      eax, dword ptr [rdi]
00000001403c7511 mov      ecx, dword ptr [r14]
00000001403c7514 cmp      eax, ecx
00000001403c7516 jae      0x1403c7531
00000001403c7518 sub      ecx, eax
00000001403c751a lea      r8, [rip + 0x283d2f]
00000001403c7521 mov      edx, ecx
00000001403c7523 mov      ecx, eax
00000001403c7525 add      rcx, r15
00000001403c7528 call     0x140044426
00000001403c752d add      dword ptr [rdi], eax
00000001403c752f mov      eax, dword ptr [rdi]
00000001403c7531 mov      ecx, dword ptr [r14]
00000001403c7534 cmp      eax, ecx
00000001403c7536 jae      0x1403c7551
00000001403c7538 sub      ecx, eax
00000001403c753a lea      r8, [rip + 0x283d2f]
00000001403c7541 mov      edx, ecx
00000001403c7543 mov      ecx, eax
00000001403c7545 add      rcx, r15
00000001403c7548 call     0x140044426
00000001403c754d add      dword ptr [rdi], eax
00000001403c754f mov      eax, dword ptr [rdi]
00000001403c7551 mov      ecx, dword ptr [r14]
00000001403c7554 cmp      eax, ecx
00000001403c7556 jae      0x1403c7571
00000001403c7558 sub      ecx, eax
00000001403c755a lea      r8, [rip + 0x283d2f]
00000001403c7561 mov      edx, ecx
00000001403c7563 mov      ecx, eax
00000001403c7565 add      rcx, r15
00000001403c7568 call     0x140044426
00000001403c756d add      dword ptr [rdi], eax
00000001403c756f mov      eax, dword ptr [rdi]
00000001403c7571 mov      ecx, dword ptr [r14]
00000001403c7574 cmp      eax, ecx
00000001403c7576 jae      0x1403c7591
00000001403c7578 sub      ecx, eax
00000001403c757a lea      r8, [rip + 0x283d1f]
00000001403c7581 mov      edx, ecx
00000001403c7583 mov      ecx, eax
00000001403c7585 add      rcx, r15
00000001403c7588 call     0x140044426
00000001403c758d add      dword ptr [rdi], eax
00000001403c758f mov      eax, dword ptr [rdi]
00000001403c7591 mov      ecx, dword ptr [r14]
00000001403c7594 cmp      eax, ecx
00000001403c7596 jae      0x1403c75b1
00000001403c7598 sub      ecx, eax
00000001403c759a lea      r8, [rip + 0x283d1f]
00000001403c75a1 mov      edx, ecx
00000001403c75a3 mov      ecx, eax
00000001403c75a5 add      rcx, r15
00000001403c75a8 call     0x140044426
00000001403c75ad add      dword ptr [rdi], eax
00000001403c75af mov      eax, dword ptr [rdi]
00000001403c75b1 mov      ecx, dword ptr [r14]
00000001403c75b4 cmp      eax, ecx
00000001403c75b6 jae      0x1403c75d1
00000001403c75b8 sub      ecx, eax
00000001403c75ba lea      r8, [rip + 0x283d2f]
00000001403c75c1 mov      edx, ecx
00000001403c75c3 mov      ecx, eax
00000001403c75c5 add      rcx, r15
00000001403c75c8 call     0x140044426
00000001403c75cd add      dword ptr [rdi], eax
00000001403c75cf mov      eax, dword ptr [rdi]
00000001403c75d1 mov      ecx, dword ptr [r14]
00000001403c75d4 cmp      eax, ecx
00000001403c75d6 jae      0x1403c75f1
00000001403c75d8 sub      ecx, eax
00000001403c75da lea      r8, [rip + 0x283d2f]
00000001403c75e1 mov      edx, ecx
00000001403c75e3 mov      ecx, eax
00000001403c75e5 add      rcx, r15
00000001403c75e8 call     0x140044426
00000001403c75ed add      dword ptr [rdi], eax
00000001403c75ef mov      eax, dword ptr [rdi]
00000001403c75f1 mov      ecx, dword ptr [r14]
00000001403c75f4 cmp      eax, ecx
00000001403c75f6 jae      0x1403c7611
00000001403c75f8 sub      ecx, eax
00000001403c75fa lea      r8, [rip + 0x283d3f]
00000001403c7601 mov      edx, ecx
00000001403c7603 mov      ecx, eax
00000001403c7605 add      rcx, r15
00000001403c7608 call     0x140044426
00000001403c760d add      dword ptr [rdi], eax
00000001403c760f mov      eax, dword ptr [rdi]
00000001403c7611 mov      ecx, dword ptr [r14]
00000001403c7614 cmp      eax, ecx
00000001403c7616 jae      0x1403c7631
00000001403c7618 sub      ecx, eax
00000001403c761a lea      r8, [rip + 0x283d3f]
00000001403c7621 mov      edx, ecx
00000001403c7623 mov      ecx, eax
00000001403c7625 add      rcx, r15
00000001403c7628 call     0x140044426
00000001403c762d add      dword ptr [rdi], eax
00000001403c762f mov      eax, dword ptr [rdi]
00000001403c7631 mov      ecx, dword ptr [r14]
00000001403c7634 cmp      eax, ecx
00000001403c7636 jae      0x1403c8c47
00000001403c763c sub      ecx, eax
00000001403c763e lea      r8, [rip + 0x283d2b]
00000001403c7645 mov      edx, ecx
00000001403c7647 mov      ecx, eax
00000001403c7649 jmp      0x1403c8c3d
00000001403c764e lea      rdx, [rip + 0x283d2b]
00000001403c7655 mov      rcx, r12
00000001403c7658 call     0x140044360
00000001403c765d test     eax, eax
00000001403c765f jne      0x1403c76b7
00000001403c7661 lea      rcx, [r13 + 0x20]
00000001403c7665 lea      r8, [rbp - 0x21]
00000001403c7669 lea      rdx, [rip + 0x254100]
00000001403c7670 call     0x140044420
00000001403c7675 mov      rcx, qword ptr [rsi + 0x9a0]
00000001403c767c mov      al, byte ptr [rbp - 0x21]
00000001403c767f mov      byte ptr [rcx + 0x24], al
00000001403c7682 mov      r8d, dword ptr [rdi]
00000001403c7685 mov      ecx, dword ptr [r14]
00000001403c7688 cmp      r8d, ecx
00000001403c768b jae      0x1403c8c47
00000001403c7691 mov      rax, qword ptr [rsi + 0x9a0]
00000001403c7698 sub      ecx, r8d
00000001403c769b mov      edx, ecx
00000001403c769d lea      rcx, [r15 + r8]
00000001403c76a1 lea      r8, [rip + 0x283ce8]
00000001403c76a8 movzx    r9d, byte ptr [rax + 0x24]
00000001403c76ad call     0x140044426
00000001403c76b2 jmp      0x1403c8c45
00000001403c76b7 cmp      byte ptr [r12], 0x63
00000001403c76bc jne      0x1403c7746
00000001403c76c2 cmp      byte ptr [r12 + 1], 0x72
00000001403c76c8 jne      0x1403c7746
00000001403c76ca cmp      byte ptr [r12 + 2], bl
00000001403c76cf jne      0x1403c7746
00000001403c76d1 lea      rcx, [r13 + 0x30]
00000001403c76d5 lea      r8, [rbp - 0x21]
00000001403c76d9 lea      rdx, [rip + 0x22fcc0]
00000001403c76e0 call     0x140044420
00000001403c76e5 lea      rcx, [r13 + 0x40]
00000001403c76e9 lea      r8, [rbp - 0x1d]
00000001403c76ed lea      rdx, [rip + 0x22fcac]
00000001403c76f4 call     0x140044420
00000001403c76f9 lea      rcx, [r13 + 0x50]
00000001403c76fd lea      r8, [rbp - 0x19]
00000001403c7701 lea      rdx, [rip + 0x22fc98]
00000001403c7708 call     0x140044420
00000001403c770d cmp      byte ptr [r13 + 0x20], 0x77
00000001403c7712 jne      0x1403c7732
00000001403c7714 cmp      byte ptr [r13 + 0x21], bl
00000001403c7718 jne      0x1403c7732
00000001403c771a mov      r9d, dword ptr [rbp - 0x19]
00000001403c771e mov      rcx, rsi
00000001403c7721 mov      r8d, dword ptr [rbp - 0x1d]
00000001403c7725 mov      edx, dword ptr [rbp - 0x21]
00000001403c7728 call     0x1403168c4
00000001403c772d jmp      0x1403c8c47
00000001403c7732 mov      r8d, dword ptr [rbp - 0x1d]
00000001403c7736 mov      rcx, rsi
00000001403c7739 mov      edx, dword ptr [rbp - 0x21]
00000001403c773c call     0x140315a88
00000001403c7741 jmp      0x1403c8c47
00000001403c7746 lea      rdx, [rip + 0x283c63]
00000001403c774d mov      rcx, r12
00000001403c7750 call     0x140044360
00000001403c7755 test     eax, eax
00000001403c7757 jne      0x1403c779a
00000001403c7759 lea      rcx, [r13 + 0x20]
00000001403c775d lea      r8, [rbp - 0x21]
00000001403c7761 lea      rdx, [rip + 0x254008]
00000001403c7768 call     0x140044420
00000001403c776d movzx    edx, byte ptr [rbp - 0x21]
00000001403c7771 mov      byte ptr [rsi + 0x83dc], dl
00000001403c7777 mov      ecx, dword ptr [rdi]
00000001403c7779 mov      eax, dword ptr [r14]
00000001403c777c cmp      ecx, eax
00000001403c777e jae      0x1403c8c47
00000001403c7784 sub      eax, ecx
00000001403c7786 lea      r8, [rip + 0x283c33]
00000001403c778d mov      r9d, edx
00000001403c7790 add      rcx, r15
00000001403c7793 mov      edx, eax
00000001403c7795 jmp      0x1403c76ad
00000001403c779a lea      rdx, [rip + 0x283c2f]
00000001403c77a1 mov      rcx, r12
00000001403c77a4 call     0x140044360
00000001403c77a9 test     eax, eax
00000001403c77ab jne      0x1403c7803
00000001403c77ad lea      rcx, [r13 + 0x20]
00000001403c77b1 lea      r8, [rbp - 0x21]
00000001403c77b5 lea      rdx, [rip + 0x253fb4]
00000001403c77bc call     0x140044420
00000001403c77c1 mov      r8d, dword ptr [rsi + 0x998]
00000001403c77c8 mov      rcx, rsi
00000001403c77cb mov      dl, byte ptr [rbp - 0x21]
00000001403c77ce call     0x1402ed504
00000001403c77d3 mov      r8d, dword ptr [rdi]
00000001403c77d6 mov      ecx, dword ptr [r14]
00000001403c77d9 cmp      r8d, ecx
00000001403c77dc jae      0x1403c8c47
00000001403c77e2 mov      rax, qword ptr [rsi + 0x9a0]
00000001403c77e9 sub      ecx, r8d
00000001403c77ec mov      edx, ecx
00000001403c77ee lea      rcx, [r15 + r8]
00000001403c77f2 lea      r8, [rip + 0x283be7]
00000001403c77f9 movzx    r9d, byte ptr [rax + 0x12]
00000001403c77fe jmp      0x1403c76ad
00000001403c7803 lea      rdx, [rip + 0x283bf6]
00000001403c780a mov      rcx, r12
00000001403c780d call     0x140044360
00000001403c7812 test     eax, eax
00000001403c7814 jne      0x1403c7926
00000001403c781a mov      r10d, dword ptr [rdi]
00000001403c781d mov      eax, dword ptr [r14]
00000001403c7820 cmp      r10d, eax
00000001403c7823 jae      0x1403c783f
00000001403c7825 sub      eax, r10d
00000001403c7828 lea      rcx, [r15 + r10]
00000001403c782c mov      edx, eax
00000001403c782e lea      r8, [rip + 0x283bdb]
00000001403c7835 call     0x140044426
00000001403c783a add      dword ptr [rdi], eax
00000001403c783c mov      r10d, dword ptr [rdi]
00000001403c783f mov      eax, dword ptr [r14]
00000001403c7842 cmp      r10d, eax
00000001403c7845 jae      0x1403c7863
00000001403c7847 sub      eax, r10d
00000001403c784a mov      ecx, r10d
00000001403c784d mov      edx, eax
00000001403c784f lea      r8, [rip + 0x283bda]
00000001403c7856 add      rcx, r15
00000001403c7859 call     0x140044426
00000001403c785e add      dword ptr [rdi], eax
00000001403c7860 mov      r10d, dword ptr [rdi]
00000001403c7863 movzx    r13d, byte ptr [rsi + 0x4752]
00000001403c786b mov      r9d, 0x31
00000001403c7871 movzx    edx, bx
00000001403c7874 lea      r12d, [r9 - 0x30]
00000001403c7878 mov      ecx, dword ptr [r14]
00000001403c787b cmp      dx, r9w
00000001403c787f jne      0x1403c78a1
00000001403c7881 cmp      r10d, ecx
00000001403c7884 jae      0x1403c78e2
00000001403c7886 movzx    eax, r13w
00000001403c788a movzx    r8d, byte ptr [rax + rsi + 0x4720]
00000001403c7893 mov      dword ptr [rsp + 0x20], r8d
00000001403c7898 lea      r8, [rip + 0x283bb1]
00000001403c789f jmp      0x1403c78c3
00000001403c78a1 cmp      r10d, ecx
00000001403c78a4 jae      0x1403c78e2
00000001403c78a6 movzx    eax, r13w
00000001403c78aa movzx    r9d, dx
00000001403c78ae movzx    r8d, byte ptr [rax + rsi + 0x4720]
00000001403c78b7 mov      dword ptr [rsp + 0x20], r8d
00000001403c78bc lea      r8, [rip + 0x283bbd]
00000001403c78c3 sub      ecx, r10d
00000001403c78c6 mov      edx, ecx
00000001403c78c8 mov      ecx, r10d
00000001403c78cb add      rcx, r15
00000001403c78ce call     0x140044426
00000001403c78d3 add      dword ptr [rdi], eax
00000001403c78d5 mov      r9d, 0x31
00000001403c78db mov      r10d, dword ptr [rdi]
00000001403c78de movzx    edx, word ptr [rbp - 0x31]
00000001403c78e2 add      dx, r12w
00000001403c78e6 lea      ecx, [r12 + r13]
00000001403c78ea movzx    eax, r13w
00000001403c78ee mov      word ptr [rbp - 0x31], dx
00000001403c78f2 cmp      ax, r9w
00000001403c78f6 mov      r13d, ebx
00000001403c78f9 cmovne   r13w, cx
00000001403c78fe cmp      dx, 0x32
00000001403c7902 jb       0x1403c7878
00000001403c7908 mov      eax, dword ptr [r14]
00000001403c790b cmp      r10d, eax
00000001403c790e jae      0x1403c8c47
00000001403c7914 sub      eax, r10d
00000001403c7917 mov      ecx, r10d
00000001403c791a lea      r8, [rip + 0x283b7f]
00000001403c7921 jmp      0x1403c8c3b
00000001403c7926 lea      rdx, [rip + 0x283b93]
00000001403c792d mov      rcx, r12
00000001403c7930 call     0x140044360
00000001403c7935 test     eax, eax
00000001403c7937 jne      0x1403c7983
00000001403c7939 lea      rcx, [r13 + 0x20]
00000001403c793d lea      r8, [rbp - 0x21]
00000001403c7941 lea      rdx, [rip + 0x253e28]
00000001403c7948 call     0x140044420
00000001403c794d mov      r8d, dword ptr [rsi + 0x998]
00000001403c7954 mov      rcx, rsi
00000001403c7957 mov      edx, dword ptr [rbp - 0x21]
00000001403c795a call     0x1402edd88
00000001403c795f mov      ecx, dword ptr [rdi]
00000001403c7961 mov      eax, dword ptr [r14]
00000001403c7964 cmp      ecx, eax
00000001403c7966 jae      0x1403c8c47
00000001403c796c mov      r9d, dword ptr [rbp - 0x21]
00000001403c7970 lea      r8, [rip + 0x283b59]
00000001403c7977 sub      eax, ecx
00000001403c7979 mov      edx, eax
00000001403c797b add      rcx, r15
00000001403c797e jmp      0x1403c76ad
00000001403c7983 lea      rdx, [rip + 0x25d0e6]
00000001403c798a mov      rcx, r12
00000001403c798d call     0x140044360
00000001403c7992 test     eax, eax
00000001403c7994 jne      0x1403c79ea
00000001403c7996 lea      rcx, [r13 + 0x20]
00000001403c799a lea      r8, [rbp - 0x21]
00000001403c799e lea      rdx, [rip + 0x253dcb]
00000001403c79a5 call     0x140044420
00000001403c79aa mov      al, byte ptr [rbp - 0x21]
00000001403c79ad and      al, 0xfe
00000001403c79af mov      byte ptr [rsi + 0x14cd], al
00000001403c79b5 cmp      al, 2
00000001403c79b7 jae      0x1403c79c2
00000001403c79b9 mov      byte ptr [rsi + 0x14cd], 2
00000001403c79c0 mov      al, 2
00000001403c79c2 mov      r8d, dword ptr [rdi]
00000001403c79c5 mov      ecx, dword ptr [r14]
00000001403c79c8 cmp      r8d, ecx
00000001403c79cb jae      0x1403c8c47
00000001403c79d1 sub      ecx, r8d
00000001403c79d4 movzx    r9d, al
00000001403c79d8 mov      edx, ecx
00000001403c79da lea      rcx, [r15 + r8]
00000001403c79de lea      r8, [rip + 0x283afb]
00000001403c79e5 jmp      0x1403c76ad
00000001403c79ea lea      rcx, [r13 + 0x10]
00000001403c79ee lea      rdx, [rip + 0x283afb]
00000001403c79f5 call     0x140044360
00000001403c79fa test     eax, eax
00000001403c79fc jne      0x1403c7aaf
00000001403c7a02 lea      rcx, [r13 + 0x20]
00000001403c7a06 lea      r8, [rbp - 0x21]
00000001403c7a0a lea      rdx, [rip + 0x253d5f]
00000001403c7a11 call     0x140044420
00000001403c7a16 mov      eax, dword ptr [rbp - 0x21]
00000001403c7a19 mov      dword ptr [rsi + 0x4a94], eax
00000001403c7a1f test     eax, eax
00000001403c7a21 jne      0x1403c7a5e
00000001403c7a23 mov      rcx, qword ptr [rip + 0x5585d6]
00000001403c7a2a lea      rax, [rip + 0x5585cf]
00000001403c7a31 cmp      rcx, rax
00000001403c7a34 je       0x1403c8c47
00000001403c7a3a cmp      byte ptr [rcx + 0x169], 4
00000001403c7a41 jb       0x1403c8c47
00000001403c7a47 test     dword ptr [rcx + 0x16c], 0x1000
00000001403c7a51 je       0x1403c8c47
00000001403c7a57 mov      edx, 0xdc
00000001403c7a5c jmp      0x1403c7a97
00000001403c7a5e mov      rcx, qword ptr [rip + 0x55859b]
00000001403c7a65 lea      rax, [rip + 0x558594]
00000001403c7a6c cmp      rcx, rax
00000001403c7a6f je       0x1403c8c47
00000001403c7a75 cmp      byte ptr [rcx + 0x169], 4
00000001403c7a7c jb       0x1403c8c47
00000001403c7a82 test     dword ptr [rcx + 0x16c], 0x1000
00000001403c7a8c je       0x1403c8c47
00000001403c7a92 mov      edx, 0xdd
00000001403c7a97 mov      rcx, qword ptr [rcx + 0x158]
00000001403c7a9e lea      r8, [rip + 0x30d6db]
00000001403c7aa5 call     0x140001b88
00000001403c7aaa jmp      0x1403c8c47
00000001403c7aaf lea      rcx, [r13 + 0x10]
00000001403c7ab3 lea      rdx, [rip + 0x283a46]
00000001403c7aba call     0x140044360
00000001403c7abf test     eax, eax
00000001403c7ac1 jne      0x1403c7b10
00000001403c7ac3 lea      rcx, [r13 + 0x20]
00000001403c7ac7 lea      r8, [rbp - 0x21]
00000001403c7acb lea      rdx, [rip + 0x253c9e]
00000001403c7ad2 call     0x140044420
00000001403c7ad7 cmp      byte ptr [rsi + 0x4a9b], bl
00000001403c7add jne      0x1403c7ae8
00000001403c7adf mov      al, byte ptr [rbp - 0x21]
00000001403c7ae2 mov      byte ptr [rsi + 0x4a98], al
00000001403c7ae8 mov      ecx, dword ptr [rdi]
00000001403c7aea mov      eax, dword ptr [r14]
00000001403c7aed cmp      ecx, eax
00000001403c7aef jae      0x1403c8c47
00000001403c7af5 movzx    r9d, byte ptr [rsi + 0x4a98]
00000001403c7afd lea      r8, [rip + 0x283a0c]
00000001403c7b04 sub      eax, ecx
00000001403c7b06 mov      edx, eax
00000001403c7b08 add      rcx, r15
00000001403c7b0b jmp      0x1403c76ad
00000001403c7b10 lea      rcx, [r13 + 0x10]
00000001403c7b14 lea      rdx, [rip + 0x283a15]
00000001403c7b1b call     0x140044360
00000001403c7b20 test     eax, eax
00000001403c7b22 jne      0x1403c7b63
00000001403c7b24 lea      rcx, [r13 + 0x20]
00000001403c7b28 lea      r8, [rbp - 0x21]
00000001403c7b2c lea      rdx, [rip + 0x253c3d]
00000001403c7b33 call     0x140044420
00000001403c7b38 mov      r9d, dword ptr [rbp - 0x21]
00000001403c7b3c mov      dword ptr [rsi + 0x4760], r9d
00000001403c7b43 mov      ecx, dword ptr [rdi]
00000001403c7b45 mov      eax, dword ptr [r14]
00000001403c7b48 cmp      ecx, eax
00000001403c7b4a jae      0x1403c8c47
00000001403c7b50 sub      eax, ecx
00000001403c7b52 lea      r8, [rip + 0x2839e7]
00000001403c7b59 mov      edx, eax
00000001403c7b5b add      rcx, r15
00000001403c7b5e jmp      0x1403c76ad
00000001403c7b63 lea      rcx, [r13 + 0x10]
00000001403c7b67 lea      rdx, [rip + 0x2839e2]
00000001403c7b6e call     0x140044360
00000001403c7b73 test     eax, eax
00000001403c7b75 jne      0x1403c7bb6
00000001403c7b77 lea      rcx, [r13 + 0x20]
00000001403c7b7b lea      r8, [rbp - 0x21]
00000001403c7b7f lea      rdx, [rip + 0x253bea]
00000001403c7b86 call     0x140044420
00000001403c7b8b mov      r9d, dword ptr [rbp - 0x21]
00000001403c7b8f mov      dword ptr [rsi + 0x49bc], r9d
00000001403c7b96 mov      ecx, dword ptr [rdi]
00000001403c7b98 mov      eax, dword ptr [r14]
00000001403c7b9b cmp      ecx, eax
00000001403c7b9d jae      0x1403c8c47
00000001403c7ba3 sub      eax, ecx
00000001403c7ba5 lea      r8, [rip + 0x2839b4]
00000001403c7bac mov      edx, eax
00000001403c7bae add      rcx, r15
00000001403c7bb1 jmp      0x1403c76ad
00000001403c7bb6 lea      rcx, [r13 + 0x10]
00000001403c7bba lea      rdx, [rip + 0x264fbf]
00000001403c7bc1 call     0x140044360
00000001403c7bc6 test     eax, eax
00000001403c7bc8 jne      0x1403c7c8a
00000001403c7bce call     0x140031188
00000001403c7bd3 sub      eax, dword ptr [rsi + 0x4790]
00000001403c7bd9 mov      r8d, dword ptr [rdi]
00000001403c7bdc mov      ecx, dword ptr [r14]
00000001403c7bdf cmp      r8d, ecx
00000001403c7be2 jae      0x1403c7c1a
00000001403c7be4 mov      r9d, dword ptr [rsi + 0x4768]
00000001403c7beb sub      ecx, r8d
00000001403c7bee mov      dword ptr [rsp + 0x30], eax
00000001403c7bf2 mov      eax, dword ptr [rsi + 0x476c]
00000001403c7bf8 mov      dword ptr [rsp + 0x28], eax
00000001403c7bfc mov      eax, dword ptr [rsi + 0x4764]
00000001403c7c02 mov      edx, ecx
00000001403c7c04 lea      rcx, [r15 + r8]
00000001403c7c08 lea      r8, [rip + 0x283971]
00000001403c7c0f mov      dword ptr [rsp + 0x20], eax
00000001403c7c13 call     0x140044426
00000001403c7c18 add      dword ptr [rdi], eax
00000001403c7c1a mov      rcx, rsi
00000001403c7c1d call     0x1403e7b68
00000001403c7c22 test     al, al
00000001403c7c24 je       0x1403c7c7d
00000001403c7c26 mov      ecx, dword ptr [rdi]
00000001403c7c28 mov      eax, dword ptr [r14]
00000001403c7c2b cmp      ecx, eax
00000001403c7c2d jae      0x1403c7c7d
00000001403c7c2f mov      r9d, dword ptr [rsi + 0x4770]
00000001403c7c36 lea      r8, [rip + 0x283983]
00000001403c7c3d sub      eax, ecx
00000001403c7c3f add      rcx, r15
00000001403c7c42 mov      edx, eax
00000001403c7c44 mov      eax, dword ptr [rsi + 0x4784]
00000001403c7c4a mov      dword ptr [rsp + 0x40], eax
00000001403c7c4e mov      eax, dword ptr [rsi + 0x4780]
00000001403c7c54 mov      dword ptr [rsp + 0x38], eax
00000001403c7c58 mov      eax, dword ptr [rsi + 0x477c]
00000001403c7c5e mov      dword ptr [rsp + 0x30], eax
00000001403c7c62 mov      eax, dword ptr [rsi + 0x4778]
00000001403c7c68 mov      dword ptr [rsp + 0x28], eax
00000001403c7c6c mov      eax, dword ptr [rsi + 0x4774]
00000001403c7c72 mov      dword ptr [rsp + 0x20], eax
00000001403c7c76 call     0x140044426
00000001403c7c7b add      dword ptr [rdi], eax
00000001403c7c7d mov      rcx, rsi
00000001403c7c80 call     0x1403171a4
00000001403c7c85 jmp      0x1403c8c47
00000001403c7c8a lea      rcx, [r13 + 0x10]
00000001403c7c8e lea      rdx, [rip + 0x28398b]
00000001403c7c95 call     0x140044360
00000001403c7c9a test     eax, eax
00000001403c7c9c jne      0x1403c7f10
00000001403c7ca2 mov      r10d, dword ptr [rdi]
00000001403c7ca5 mov      eax, dword ptr [r14]
00000001403c7ca8 cmp      r10d, eax
00000001403c7cab jae      0x1403c7cc7
00000001403c7cad sub      eax, r10d
00000001403c7cb0 lea      rcx, [r15 + r10]
00000001403c7cb4 mov      edx, eax
00000001403c7cb6 lea      r8, [rip + 0x283973]
00000001403c7cbd call     0x140044426
00000001403c7cc2 add      dword ptr [rdi], eax
00000001403c7cc4 mov      r10d, dword ptr [rdi]
00000001403c7cc7 mov      r12d, 1
00000001403c7ccd lea      r9, [rip + 0x30d21c]
00000001403c7cd4 movzx    ebx, r12w
00000001403c7cd8 lea      r13, [rip + 0x283961]
00000001403c7cdf mov      edx, dword ptr [r14]
00000001403c7ce2 mov      ecx, r10d
00000001403c7ce5 cmp      r10d, edx
00000001403c7ce8 jae      0x1403c7d45
00000001403c7cea movzx    r8d, bx
00000001403c7cee add      r9, -0x11
00000001403c7cf2 imul     rax, r8, 0x11
00000001403c7cf6 mov      ecx, r10d
00000001403c7cf9 sub      edx, r10d
00000001403c7cfc add      r9, rax
00000001403c7cff add      rcx, r15
00000001403c7d02 mov      eax, dword ptr [rsi + r8*4 + 0x4898]
00000001403c7d0a mov      dword ptr [rsp + 0x38], eax
00000001403c7d0e mov      eax, dword ptr [rsi + r8*4 + 0x4840]
00000001403c7d16 mov      dword ptr [rsp + 0x30], eax
00000001403c7d1a mov      eax, dword ptr [rsi + r8*4 + 0x47e8]
00000001403c7d22 mov      dword ptr [rsp + 0x28], eax
00000001403c7d26 mov      eax, dword ptr [rsi + r8*4 + 0x4790]
00000001403c7d2e mov      r8, r13
00000001403c7d31 mov      dword ptr [rsp + 0x20], eax
00000001403c7d35 call     0x140044426
00000001403c7d3a add      dword ptr [rdi], eax
00000001403c7d3c lea      r9, [rip + 0x30d1ad]
00000001403c7d43 mov      ecx, dword ptr [rdi]
00000001403c7d45 add      bx, r12w
00000001403c7d49 mov      r10d, ecx
00000001403c7d4c cmp      bx, 0x17
00000001403c7d50 jb       0x1403c7cdf
00000001403c7d52 mov      eax, dword ptr [r14]
00000001403c7d55 cmp      ecx, eax
00000001403c7d57 jae      0x1403c7d70
00000001403c7d59 sub      eax, ecx
00000001403c7d5b lea      r8, [rip + 0x28392e]
00000001403c7d62 mov      edx, eax
00000001403c7d64 add      rcx, r15
00000001403c7d67 call     0x140044426
00000001403c7d6c add      dword ptr [rdi], eax
00000001403c7d6e mov      ecx, dword ptr [rdi]
00000001403c7d70 mov      ebx, 0x33
00000001403c7d75 mov      edx, dword ptr [r14]
00000001403c7d78 mov      r10d, ecx
00000001403c7d7b cmp      ecx, edx
00000001403c7d7d jae      0x1403c7dd7
00000001403c7d7f movzx    r8d, bx
00000001403c7d83 sub      edx, ecx
00000001403c7d85 add      rcx, r15
00000001403c7d88 lea      rax, [r8 - 0x1d]
00000001403c7d8c imul     r9, rax, 0x11
00000001403c7d90 lea      rax, [rip + 0x30d159]
00000001403c7d97 add      r9, rax
00000001403c7d9a mov      eax, dword ptr [rsi + r8*4 + 0x4864]
00000001403c7da2 mov      dword ptr [rsp + 0x38], eax
00000001403c7da6 mov      eax, dword ptr [rsi + r8*4 + 0x4850]
00000001403c7dae mov      dword ptr [rsp + 0x30], eax
00000001403c7db2 mov      eax, dword ptr [rsi + r8*4 + 0x483c]
00000001403c7dba mov      dword ptr [rsp + 0x28], eax
00000001403c7dbe mov      eax, dword ptr [rsi + r8*4 + 0x4828]
00000001403c7dc6 mov      r8, r13
00000001403c7dc9 mov      dword ptr [rsp + 0x20], eax
00000001403c7dcd call     0x140044426
00000001403c7dd2 add      dword ptr [rdi], eax
00000001403c7dd4 mov      r10d, dword ptr [rdi]
00000001403c7dd7 add      bx, r12w
00000001403c7ddb mov      ecx, r10d
00000001403c7dde cmp      bx, 0x38
00000001403c7de2 jb       0x1403c7d75
00000001403c7de4 mov      eax, dword ptr [r14]
00000001403c7de7 cmp      r10d, eax
00000001403c7dea jae      0x1403c7e08
00000001403c7dec sub      eax, r10d
00000001403c7def mov      ecx, r10d
00000001403c7df2 mov      edx, eax
00000001403c7df4 lea      r8, [rip + 0x2838a5]
00000001403c7dfb add      rcx, r15
00000001403c7dfe call     0x140044426
00000001403c7e03 add      dword ptr [rdi], eax
00000001403c7e05 mov      r10d, dword ptr [rdi]
00000001403c7e08 mov      ebx, 0x65
00000001403c7e0d mov      edx, dword ptr [r14]
00000001403c7e10 mov      ecx, r10d
00000001403c7e13 cmp      r10d, edx
00000001403c7e16 jae      0x1403c7e73
00000001403c7e18 movzx    r8d, bx
00000001403c7e1c sub      edx, r10d
00000001403c7e1f mov      ecx, r10d
00000001403c7e22 add      rcx, r15
00000001403c7e25 lea      rax, [r8 - 0x4a]
00000001403c7e29 imul     r9, rax, 0x11
00000001403c7e2d lea      rax, [rip + 0x30d0bc]
00000001403c7e34 add      r9, rax
00000001403c7e37 mov      eax, dword ptr [rsi + r8*4 + 0x47d4]
00000001403c7e3f mov      dword ptr [rsp + 0x38], eax
00000001403c7e43 mov      eax, dword ptr [rsi + r8*4 + 0x47c8]
00000001403c7e4b mov      dword ptr [rsp + 0x30], eax
00000001403c7e4f mov      eax, dword ptr [rsi + r8*4 + 0x47bc]
00000001403c7e57 mov      dword ptr [rsp + 0x28], eax
00000001403c7e5b mov      eax, dword ptr [rsi + r8*4 + 0x47b0]
00000001403c7e63 mov      r8, r13
00000001403c7e66 mov      dword ptr [rsp + 0x20], eax
00000001403c7e6a call     0x140044426
00000001403c7e6f add      dword ptr [rdi], eax
00000001403c7e71 mov      ecx, dword ptr [rdi]
00000001403c7e73 add      bx, r12w
00000001403c7e77 mov      r10d, ecx
00000001403c7e7a cmp      bx, 0x68
00000001403c7e7e jb       0x1403c7e0d
00000001403c7e80 mov      eax, dword ptr [r14]
00000001403c7e83 cmp      ecx, eax
00000001403c7e85 jae      0x1403c7e9e
00000001403c7e87 sub      eax, ecx
00000001403c7e89 lea      r8, [rip + 0x283820]
00000001403c7e90 mov      edx, eax
00000001403c7e92 add      rcx, r15
00000001403c7e95 call     0x140044426
00000001403c7e9a add      dword ptr [rdi], eax
00000001403c7e9c mov      ecx, dword ptr [rdi]
00000001403c7e9e mov      ebx, 0x79
00000001403c7ea3 mov      edx, dword ptr [r14]
00000001403c7ea6 cmp      ecx, edx
00000001403c7ea8 jae      0x1403c7f01
00000001403c7eaa movzx    r8d, bx
00000001403c7eae sub      edx, ecx
00000001403c7eb0 add      rcx, r15
00000001403c7eb3 lea      rax, [r8 - 0x5b]
00000001403c7eb7 imul     r9, rax, 0x11
00000001403c7ebb lea      rax, [rip + 0x30d02e]
00000001403c7ec2 add      r9, rax
00000001403c7ec5 mov      eax, dword ptr [rsi + r8*4 + 0x47c0]
00000001403c7ecd mov      dword ptr [rsp + 0x38], eax
00000001403c7ed1 mov      eax, dword ptr [rsi + r8*4 + 0x47b0]
00000001403c7ed9 mov      dword ptr [rsp + 0x30], eax
00000001403c7edd mov      eax, dword ptr [rsi + r8*4 + 0x47a0]
00000001403c7ee5 mov      dword ptr [rsp + 0x28], eax
00000001403c7ee9 mov      eax, dword ptr [rsi + r8*4 + 0x4790]
00000001403c7ef1 mov      r8, r13
00000001403c7ef4 mov      dword ptr [rsp + 0x20], eax
00000001403c7ef8 call     0x140044426
00000001403c7efd add      dword ptr [rdi], eax
00000001403c7eff mov      ecx, dword ptr [rdi]
00000001403c7f01 add      bx, r12w
00000001403c7f05 cmp      bx, 0x7d
00000001403c7f09 jb       0x1403c7ea3
00000001403c7f0b jmp      0x1403c8c47
00000001403c7f10 lea      rcx, [r13 + 0x10]
00000001403c7f14 lea      rdx, [rip + 0x2837a5]
00000001403c7f1b call     0x140044360
00000001403c7f20 test     eax, eax
00000001403c7f22 jne      0x1403c7f3e
00000001403c7f24 mov      rcx, rsi
00000001403c7f27 mov      byte ptr [rsi + 0x49cc], 1
00000001403c7f2e call     0x1402f660c
00000001403c7f33 mov      byte ptr [rsi + 0x49cc], bl
00000001403c7f39 jmp      0x1403c8c47
00000001403c7f3e lea      rcx, [r13 + 0x10]
00000001403c7f42 lea      rdx, [rip + 0x283787]
00000001403c7f49 call     0x140044360
00000001403c7f4e test     eax, eax
00000001403c7f50 jne      0x1403c8006
00000001403c7f56 lea      rcx, [r13 + 0x20]
00000001403c7f5a lea      r8, [rbp - 0x21]
00000001403c7f5e lea      rdx, [rip + 0x25380b]
00000001403c7f65 call     0x140044420
00000001403c7f6a lea      rcx, [r13 + 0x30]
00000001403c7f6e lea      r8, [rbp - 0x1d]
00000001403c7f72 lea      rdx, [rip + 0x22f427]
00000001403c7f79 call     0x140044420
00000001403c7f7e mov      cl, byte ptr [rbp - 0x21]
00000001403c7f81 mov      eax, dword ptr [rbp - 0x1d]
00000001403c7f84 mov      byte ptr [rsi + 0x49cd], cl
00000001403c7f8a mov      dword ptr [rsi + 0x49d0], eax
00000001403c7f90 test     cl, cl
00000001403c7f92 je       0x1403c7ff9
00000001403c7f94 mov      ebx, dword ptr [rsi + 0x13f8]
00000001403c7f9a mov      dword ptr [rsi + 0x13f8], 4
00000001403c7fa4 mov      ecx, dword ptr [rdi]
00000001403c7fa6 mov      eax, dword ptr [r14]
00000001403c7fa9 cmp      ecx, eax
00000001403c7fab jae      0x1403c7fc8
00000001403c7fad sub      eax, ecx
00000001403c7faf lea      r8, [rip + 0x28372a]
00000001403c7fb6 mov      edx, eax
00000001403c7fb8 add      rcx, r15
00000001403c7fbb mov      r9d, 4
00000001403c7fc1 call     0x140044426
00000001403c7fc6 add      dword ptr [rdi], eax
00000001403c7fc8 mov      rcx, rsi
00000001403c7fcb call     0x1402f660c
00000001403c7fd0 mov      dword ptr [rsi + 0x13f8], ebx
00000001403c7fd6 mov      ecx, dword ptr [rdi]
00000001403c7fd8 mov      eax, dword ptr [r14]
00000001403c7fdb cmp      ecx, eax
00000001403c7fdd jae      0x1403c8c47
00000001403c7fe3 sub      eax, ecx
00000001403c7fe5 lea      r8, [rip + 0x283714]
00000001403c7fec mov      edx, eax
00000001403c7fee add      rcx, r15
00000001403c7ff1 mov      r9d, ebx
00000001403c7ff4 jmp      0x1403c76ad
00000001403c7ff9 mov      rcx, rsi
00000001403c7ffc call     0x1402f660c
00000001403c8001 jmp      0x1403c8c47
00000001403c8006 lea      rcx, [r13 + 0x10]
00000001403c800a lea      rdx, [rip + 0x28370f]
00000001403c8011 call     0x140044360
00000001403c8016 test     eax, eax
00000001403c8018 jne      0x1403c803c
00000001403c801a lea      rcx, [r13 + 0x20]
00000001403c801e lea      r8, [rbp - 0x21]
00000001403c8022 lea      rdx, [rip + 0x253747]
00000001403c8029 call     0x140044420
00000001403c802e mov      al, byte ptr [rbp - 0x21]
00000001403c8031 mov      byte ptr [rsi + 0x49d4], al
00000001403c8037 jmp      0x1403c8c47
00000001403c803c cmp      byte ptr [r13 + 0x10], 0x77
00000001403c8041 jne      0x1403c809a
00000001403c8043 cmp      byte ptr [r13 + 0x11], 0x64
00000001403c8048 jne      0x1403c809a
00000001403c804a cmp      byte ptr [r13 + 0x12], bl
00000001403c804e jne      0x1403c809a
00000001403c8050 lea      rcx, [r13 + 0x20]
00000001403c8054 lea      r8, [rbp - 0x21]
00000001403c8058 lea      rdx, [rip + 0x253711]
00000001403c805f call     0x140044420
00000001403c8064 mov      r8d, dword ptr [rsi + 0x998]
00000001403c806b mov      rcx, rsi
00000001403c806e mov      edx, dword ptr [rbp - 0x21]
00000001403c8071 call     0x1402ee408
00000001403c8076 mov      ecx, dword ptr [rdi]
00000001403c8078 mov      eax, dword ptr [r14]
00000001403c807b cmp      ecx, eax
00000001403c807d jae      0x1403c8c47
00000001403c8083 mov      r9d, dword ptr [rbp - 0x21]
00000001403c8087 lea      r8, [rip + 0x2836a2]
00000001403c808e sub      eax, ecx
00000001403c8090 mov      edx, eax
00000001403c8092 add      rcx, r15
00000001403c8095 jmp      0x1403c76ad
00000001403c809a lea      rcx, [r13 + 0x10]
00000001403c809e lea      rdx, [rip + 0x23099b]
00000001403c80a5 call     0x140044360
00000001403c80aa test     eax, eax
00000001403c80ac jne      0x1403c81dc
00000001403c80b2 lea      rcx, [r13 + 0x30]
00000001403c80b6 lea      r8, [rbp - 0x21]
00000001403c80ba lea      rdx, [rip + 0x2536af]
00000001403c80c1 call     0x140044420
00000001403c80c6 lea      rcx, [r13 + 0x40]
00000001403c80ca lea      r8, [rbp - 0x1d]
00000001403c80ce lea      rdx, [rip + 0x25369b]
00000001403c80d5 call     0x140044420
00000001403c80da lea      rcx, [r13 + 0x50]
00000001403c80de lea      r8, [rbp - 0x19]
00000001403c80e2 lea      rdx, [rip + 0x253687]
00000001403c80e9 call     0x140044420
00000001403c80ee cmp      byte ptr [r13 + 0x20], 0x63
00000001403c80f3 jne      0x1403c8142
00000001403c80f5 cmp      byte ptr [r13 + 0x21], 0x72
00000001403c80fa jne      0x1403c8142
00000001403c80fc cmp      byte ptr [r13 + 0x22], bl
00000001403c8100 jne      0x1403c8142
00000001403c8102 mov      eax, dword ptr [rbp - 0x21]
00000001403c8105 lea      r9, [rbp - 0x21]
00000001403c8109 xor      r8d, r8d
00000001403c810c mov      dword ptr [rsp + 0x20], eax
00000001403c8110 xor      edx, edx
00000001403c8112 mov      rcx, rsi
00000001403c8115 call     0x1402f2350
00000001403c811a mov      r8d, dword ptr [rdi]
00000001403c811d mov      ecx, dword ptr [r14]
00000001403c8120 cmp      r8d, ecx
00000001403c8123 jae      0x1403c8c47
00000001403c8129 sub      ecx, r8d
00000001403c812c movzx    r9d, al
00000001403c8130 mov      edx, ecx
00000001403c8132 lea      rcx, [r15 + r8]
00000001403c8136 lea      r8, [rip + 0x283613]
00000001403c813d jmp      0x1403c76ad
00000001403c8142 lea      rdx, [rip + 0x283627]
00000001403c8149 lea      rcx, [r13 + 0x20]
00000001403c814d call     0x140044360
00000001403c8152 test     eax, eax
00000001403c8154 jne      0x1403c818f
00000001403c8156 lea      r9, [rbp - 0x21]
00000001403c815a xor      r8d, r8d
00000001403c815d xor      edx, edx
00000001403c815f mov      rcx, rsi
00000001403c8162 call     0x1402f2608
00000001403c8167 mov      r8d, dword ptr [rdi]
00000001403c816a mov      ecx, dword ptr [r14]
00000001403c816d cmp      r8d, ecx
00000001403c8170 jae      0x1403c8c47
00000001403c8176 sub      ecx, r8d
00000001403c8179 movzx    r9d, al
00000001403c817d mov      edx, ecx
00000001403c817f lea      rcx, [r15 + r8]
00000001403c8183 lea      r8, [rip + 0x2835f6]
00000001403c818a jmp      0x1403c76ad
00000001403c818f lea      rdx, [rip + 0x28360a]
00000001403c8196 lea      rcx, [r13 + 0x20]
00000001403c819a call     0x140044360
00000001403c819f test     eax, eax
00000001403c81a1 jne      0x1403c81c3
00000001403c81a3 mov      al, byte ptr [rbp - 0x21]
00000001403c81a6 mov      byte ptr [rsi + 0x49d5], al
00000001403c81ac mov      eax, dword ptr [rbp - 0x1d]
00000001403c81af mov      dword ptr [rsi + 0x49dc], eax
00000001403c81b5 mov      eax, dword ptr [rbp - 0x19]
00000001403c81b8 mov      dword ptr [rsi + 0x49d8], eax
00000001403c81be jmp      0x1403c8c47
00000001403c81c3 mov      ecx, dword ptr [rdi]
00000001403c81c5 mov      eax, dword ptr [r14]
00000001403c81c8 cmp      ecx, eax
00000001403c81ca jae      0x1403c8c47
00000001403c81d0 lea      r8, [rip + 0x265079]
00000001403c81d7 jmp      0x1403c8c39
00000001403c81dc cmp      byte ptr [r13 + 0x10], 0x31
00000001403c81e1 jne      0x1403c823a
00000001403c81e3 cmp      byte ptr [r13 + 0x11], bl
00000001403c81e7 jne      0x1403c823a
00000001403c81e9 lea      rcx, [r13 + 0x20]
00000001403c81ed lea      r8, [rbp - 0x21]
00000001403c81f1 lea      rdx, [rip + 0x253578]
00000001403c81f8 call     0x140044420
00000001403c81fd mov      rcx, qword ptr [rsi + 8]
00000001403c8201 mov      al, byte ptr [rbp - 0x21]
00000001403c8204 mov      byte ptr [rcx + 0x12d5], al
00000001403c820a mov      r8d, dword ptr [rdi]
00000001403c820d mov      ecx, dword ptr [r14]
00000001403c8210 cmp      r8d, ecx
00000001403c8213 jae      0x1403c8c47
00000001403c8219 mov      rax, qword ptr [rsi + 8]
00000001403c821d sub      ecx, r8d
00000001403c8220 mov      edx, ecx
00000001403c8222 lea      rcx, [r15 + r8]
00000001403c8226 lea      r8, [rip + 0x283583]
00000001403c822d movzx    r9d, byte ptr [rax + 0x12d5]
00000001403c8235 jmp      0x1403c76ad
00000001403c823a lea      rcx, [r13 + 0x10]
00000001403c823e lea      rdx, [rip + 0x28358b]
00000001403c8245 call     0x140044360
00000001403c824a test     eax, eax
00000001403c824c jne      0x1403c8319
00000001403c8252 lea      r12d, [rax + 1]
00000001403c8256 mov      rcx, rsi
00000001403c8259 lea      r13d, [rax + 0x14]
00000001403c825d mov      r8d, r12d
00000001403c8260 mov      edx, r13d
00000001403c8263 call     0x140315a88
00000001403c8268 mov      ecx, dword ptr [r14]
00000001403c826b mov      ebx, eax
00000001403c826d mov      eax, dword ptr [rdi]
00000001403c826f cmp      eax, ecx
00000001403c8271 jae      0x1403c828c
00000001403c8273 sub      ecx, eax
00000001403c8275 lea      r8, [rip + 0x283564]
00000001403c827c mov      edx, ecx
00000001403c827e mov      r9d, ebx
00000001403c8281 lea      rcx, [r15 + rax]
00000001403c8285 call     0x140044426
00000001403c828a add      dword ptr [rdi], eax
00000001403c828c not      ebx
00000001403c828e mov      r8d, r12d
00000001403c8291 mov      r9d, ebx
00000001403c8294 mov      edx, r13d
00000001403c8297 mov      rcx, rsi
00000001403c829a call     0x1403168c4
00000001403c829f mov      r8d, r12d
00000001403c82a2 mov      edx, r13d
00000001403c82a5 mov      rcx, rsi
00000001403c82a8 call     0x140315a88
00000001403c82ad mov      ecx, dword ptr [r14]
00000001403c82b0 mov      ebx, eax
00000001403c82b2 mov      eax, dword ptr [rdi]
00000001403c82b4 cmp      eax, ecx
00000001403c82b6 jae      0x1403c82d1
00000001403c82b8 sub      ecx, eax
00000001403c82ba lea      r8, [rip + 0x28352f]
00000001403c82c1 mov      edx, ecx
00000001403c82c3 mov      r9d, ebx
00000001403c82c6 lea      rcx, [r15 + rax]
00000001403c82ca call     0x140044426
00000001403c82cf add      dword ptr [rdi], eax
00000001403c82d1 not      ebx
00000001403c82d3 mov      r8d, r12d
00000001403c82d6 mov      r9d, ebx
00000001403c82d9 mov      edx, r13d
00000001403c82dc mov      rcx, rsi
00000001403c82df call     0x1403168c4
00000001403c82e4 mov      r8d, r12d
00000001403c82e7 mov      edx, r13d
00000001403c82ea mov      rcx, rsi
00000001403c82ed call     0x140315a88
00000001403c82f2 mov      r8d, dword ptr [rdi]
00000001403c82f5 mov      ecx, dword ptr [r14]
00000001403c82f8 cmp      r8d, ecx
00000001403c82fb jae      0x1403c8c47
00000001403c8301 sub      ecx, r8d
00000001403c8304 mov      r9d, eax
00000001403c8307 mov      edx, ecx
00000001403c8309 lea      rcx, [r15 + r8]
00000001403c830d lea      r8, [rip + 0x2834ec]
00000001403c8314 jmp      0x1403c76ad
00000001403c8319 lea      rcx, [r13 + 0x10]
00000001403c831d lea      rdx, [rip + 0x2834ec]
00000001403c8324 call     0x140044360
00000001403c8329 test     eax, eax
00000001403c832b jne      0x1403c83a3
00000001403c832d lea      rcx, [r13 + 0x20]
00000001403c8331 lea      r8, [rbp - 0x21]
00000001403c8335 lea      rdx, [rip + 0x253434]
00000001403c833c call     0x140044420
00000001403c8341 lea      rcx, [r13 + 0x30]
00000001403c8345 lea      r8, [rbp - 0x1d]
00000001403c8349 lea      rdx, [rip + 0x253420]
00000001403c8350 call     0x140044420
00000001403c8355 mov      rax, qword ptr [rsi + 0x9a0]
00000001403c835c mov      r12d, 1
00000001403c8362 mov      rcx, rsi
00000001403c8365 cmp      dword ptr [rbp - 0x21], r12d
00000001403c8369 jne      0x1403c8382
00000001403c836b mov      byte ptr [rax + 0x11], r12b
00000001403c836f mov      eax, dword ptr [rbp - 0x1d]
00000001403c8372 mov      dword ptr [rsi + 0x14a8], eax
00000001403c8378 call     0x1402ed488
00000001403c837d jmp      0x1403c8c47
00000001403c8382 lea      r8, [rsi + 0x1428]
00000001403c8389 mov      byte ptr [rax + 0x11], bl
00000001403c838c mov      edx, r12d
00000001403c838f call     0x140315108
00000001403c8394 mov      dword ptr [rsi + 0x14a8], 0x7d0
00000001403c839e jmp      0x1403c8c47
00000001403c83a3 lea      rcx, [r13 + 0x10]
00000001403c83a7 lea      rdx, [rip + 0x283472]
00000001403c83ae call     0x140044360
00000001403c83b3 test     eax, eax
00000001403c83b5 jne      0x1403c83f8
00000001403c83b7 lea      rcx, [r13 + 0x20]
00000001403c83bb lea      r8, [rbp - 0x21]
00000001403c83bf lea      rdx, [rip + 0x2533aa]
00000001403c83c6 call     0x140044420
00000001403c83cb movzx    edx, byte ptr [rbp - 0x21]
00000001403c83cf mov      byte ptr [rsi + 0x14b8], dl
00000001403c83d5 mov      ecx, dword ptr [rdi]
00000001403c83d7 mov      eax, dword ptr [r14]
00000001403c83da cmp      ecx, eax
00000001403c83dc jae      0x1403c8c47
00000001403c83e2 sub      eax, ecx
00000001403c83e4 lea      r8, [rip + 0x283445]
00000001403c83eb mov      r9d, edx
00000001403c83ee add      rcx, r15
00000001403c83f1 mov      edx, eax
00000001403c83f3 jmp      0x1403c76ad
00000001403c83f8 lea      rcx, [r13 + 0x10]
00000001403c83fc lea      rdx, [rip + 0x28344d]
00000001403c8403 call     0x140044360
00000001403c8408 test     eax, eax
00000001403c840a jne      0x1403c88ba
00000001403c8410 lea      rcx, [r13 + 0x20]
00000001403c8414 lea      r8, [rbp - 0x21]
00000001403c8418 lea      rdx, [rip + 0x253351]
00000001403c841f call     0x140044420
00000001403c8424 movzx    eax, byte ptr [rsi + 0x1416]
00000001403c842b mov      r8d, dword ptr [rbp - 0x21]
00000001403c842f mov      ecx, dword ptr [rdi]
00000001403c8431 mov      edx, dword ptr [r14]
00000001403c8434 cmp      r8d, eax
00000001403c8437 jb       0x1403c8456
00000001403c8439 cmp      ecx, edx
00000001403c843b jae      0x1403c8c47
00000001403c8441 sub      edx, ecx
00000001403c8443 lea      r9d, [r8 + 0x41]
00000001403c8447 add      rcx, r15
00000001403c844a lea      r8, [rip + 0x28340f]
00000001403c8451 jmp      0x1403c76ad
00000001403c8456 cmp      ecx, edx
00000001403c8458 jae      0x1403c8477
00000001403c845a lea      r9d, [r8 + 0x41]
00000001403c845e sub      edx, ecx
00000001403c8460 add      rcx, r15
00000001403c8463 lea      r8, [rip + 0x283416]
00000001403c846a call     0x140044426
00000001403c846f add      dword ptr [rdi], eax
00000001403c8471 mov      ecx, dword ptr [rdi]
00000001403c8473 mov      r8d, dword ptr [rbp - 0x21]
00000001403c8477 mov      eax, dword ptr [r14]
00000001403c847a cmp      ecx, eax
00000001403c847c jae      0x1403c8497
00000001403c847e sub      eax, ecx
00000001403c8480 lea      r8, [rip + 0x283419]
00000001403c8487 mov      edx, eax
00000001403c8489 add      rcx, r15
00000001403c848c call     0x140044426
00000001403c8491 add      dword ptr [rdi], eax
00000001403c8493 mov      r8d, dword ptr [rbp - 0x21]
00000001403c8497 mov      eax, 0x400
00000001403c849c cmp      r8d, 2
00000001403c84a0 jb       0x1403c84af
00000001403c84a2 movzx    ecx, word ptr [rbp - 0x21]
00000001403c84a6 add      cx, 0xe
00000001403c84aa movzx    ecx, cx
00000001403c84ad jmp      0x1403c84b3
00000001403c84af movzx    ecx, word ptr [rbp - 0x21]
00000001403c84b3 mov      r13, qword ptr [rbp - 0x29]
00000001403c84b7 imul     ecx, eax
00000001403c84ba mov      edx, dword ptr [r13 + 0x4548]
00000001403c84c1 mov      r8d, dword ptr [r13 + 0x454c]
00000001403c84c8 movzx    ebx, cx
00000001403c84cb mov      rcx, rsi
00000001403c84ce add      edx, ebx
00000001403c84d0 call     0x140315a88
00000001403c84d5 mov      dword ptr [rbp - 0x1d], eax
00000001403c84d8 mov      rcx, rsi
00000001403c84db mov      edx, dword ptr [r13 + 0x4540]
00000001403c84e2 mov      r8d, dword ptr [r13 + 0x4544]
00000001403c84e9 add      edx, ebx
00000001403c84eb call     0x140315a88
00000001403c84f0 mov      dword ptr [rbp - 0x19], eax
00000001403c84f3 mov      eax, dword ptr [rsi + 0x13f0]
00000001403c84f9 sub      eax, 0x20000
00000001403c84fe test     eax, 0xfffdffff
00000001403c8503 jne      0x1403c8533
00000001403c8505 mov      r8d, 0xff
00000001403c850b lea      edx, [rbx + 0x41f8]
00000001403c8511 mov      rcx, rsi
00000001403c8514 call     0x140315a88
00000001403c8519 mov      r8d, 0xff00
00000001403c851f mov      dword ptr [rbp - 0x15], eax
00000001403c8522 lea      edx, [rbx + 0x41f8]
00000001403c8528 mov      rcx, rsi
00000001403c852b call     0x140315a88
00000001403c8530 mov      dword ptr [rbp - 0x11], eax
00000001403c8533 movzx    edx, byte ptr [rbp - 0x1d]
00000001403c8537 lea      rbx, [rsi + 0x14d0]
00000001403c853e mov      r12d, 0xc8
00000001403c8544 mov      r9b, 2
00000001403c8547 mov      word ptr [rsp + 0x28], r12w
00000001403c854d mov      r8b, 8
00000001403c8550 mov      rcx, rsi
00000001403c8553 mov      qword ptr [rsp + 0x20], rbx
00000001403c8558 call     0x1403e91a0
00000001403c855d mov      ecx, dword ptr [rdi]
00000001403c855f mov      eax, dword ptr [r14]
00000001403c8562 cmp      ecx, eax
00000001403c8564 jae      0x1403c857e
00000001403c8566 sub      eax, ecx
00000001403c8568 lea      r8, [rip + 0x283361]
00000001403c856f mov      edx, eax
00000001403c8571 add      rcx, r15
00000001403c8574 mov      r9, rbx
00000001403c8577 call     0x140044426
00000001403c857c add      dword ptr [rdi], eax
00000001403c857e mov      eax, dword ptr [rsi + 0x13f0]
00000001403c8584 mov      rcx, rsi
00000001403c8587 sub      eax, 0x20000
00000001403c858c mov      word ptr [rsp + 0x28], r12w
00000001403c8592 mov      qword ptr [rsp + 0x20], rbx
00000001403c8597 test     eax, 0xfffdffff
00000001403c859c je       0x1403c85ce
00000001403c859e mov      edx, dword ptr [rbp - 0x19]
00000001403c85a1 mov      r9b, 2
00000001403c85a4 and      edx, 0x3ff
00000001403c85aa mov      r8b, 0xa
00000001403c85ad call     0x1403e91a0
00000001403c85b2 mov      ecx, dword ptr [rdi]
00000001403c85b4 mov      eax, dword ptr [r14]
00000001403c85b7 cmp      ecx, eax
00000001403c85b9 jae      0x1403c8689
00000001403c85bf mov      r9, rbx
00000001403c85c2 lea      r8, [rip + 0x283327]
00000001403c85c9 jmp      0x1403c867b
00000001403c85ce movzx    edx, byte ptr [rbp - 0x19]
00000001403c85d2 mov      r9b, 4
00000001403c85d5 mov      r8b, 8
00000001403c85d8 call     0x1403e91a0
00000001403c85dd mov      ecx, dword ptr [rdi]
00000001403c85df mov      eax, dword ptr [r14]
00000001403c85e2 cmp      ecx, eax
00000001403c85e4 jae      0x1403c85fe
00000001403c85e6 sub      eax, ecx
00000001403c85e8 lea      r8, [rip + 0x283301]
00000001403c85ef mov      edx, eax
00000001403c85f1 add      rcx, r15
00000001403c85f4 mov      r9, rbx
00000001403c85f7 call     0x140044426
00000001403c85fc add      dword ptr [rdi], eax
00000001403c85fe movzx    edx, byte ptr [rbp - 0x15]
00000001403c8602 mov      r9b, 4
00000001403c8605 mov      word ptr [rsp + 0x28], r12w
00000001403c860b mov      r8b, 8
00000001403c860e mov      rcx, rsi
00000001403c8611 mov      qword ptr [rsp + 0x20], rbx
00000001403c8616 call     0x1403e91a0
00000001403c861b mov      ecx, dword ptr [rdi]
00000001403c861d mov      eax, dword ptr [r14]
00000001403c8620 cmp      ecx, eax
00000001403c8622 jae      0x1403c8640
00000001403c8624 sub      eax, ecx
00000001403c8626 lea      r9, [rsi + 0x14d0]
00000001403c862d mov      edx, eax
00000001403c862f lea      r8, [rip + 0x2832da]
00000001403c8636 add      rcx, r15
00000001403c8639 call     0x140044426
00000001403c863e add      dword ptr [rdi], eax
00000001403c8640 movzx    edx, byte ptr [rbp - 0x11]
00000001403c8644 lea      rax, [rsi + 0x14d0]
00000001403c864b mov      word ptr [rsp + 0x28], r12w
00000001403c8651 mov      r9b, 4
00000001403c8654 mov      r8b, 8
00000001403c8657 mov      qword ptr [rsp + 0x20], rax
00000001403c865c mov      rcx, rsi
00000001403c865f call     0x1403e91a0
00000001403c8664 mov      ecx, dword ptr [rdi]
00000001403c8666 mov      eax, dword ptr [r14]
00000001403c8669 cmp      ecx, eax
00000001403c866b jae      0x1403c8689
00000001403c866d lea      r9, [rsi + 0x14d0]
00000001403c8674 lea      r8, [rip + 0x2832b5]
00000001403c867b sub      eax, ecx
00000001403c867d add      rcx, r15
00000001403c8680 mov      edx, eax
00000001403c8682 call     0x140044426
00000001403c8687 add      dword ptr [rdi], eax
00000001403c8689 movsx    eax, byte ptr [rsi + 0x13da]
00000001403c8690 lea      rcx, [rsi + 0x14d0]
00000001403c8697 mov      word ptr [rsp + 0x28], r12w
00000001403c869d mov      r9b, 2
00000001403c86a0 mov      qword ptr [rsp + 0x20], rcx
00000001403c86a5 mov      r8b, 8
00000001403c86a8 mov      rcx, rsi
00000001403c86ab movzx    edx, al
00000001403c86ae call     0x1403e91a0
00000001403c86b3 mov      ecx, dword ptr [rdi]
00000001403c86b5 mov      eax, dword ptr [r14]
00000001403c86b8 cmp      ecx, eax
00000001403c86ba jae      0x1403c86d8
00000001403c86bc sub      eax, ecx
00000001403c86be lea      r9, [rsi + 0x14d0]
00000001403c86c5 mov      edx, eax
00000001403c86c7 lea      r8, [rip + 0x283282]
00000001403c86ce add      rcx, r15
00000001403c86d1 call     0x140044426
00000001403c86d6 add      dword ptr [rdi], eax
00000001403c86d8 mov      eax, dword ptr [rbp - 0x21]
00000001403c86db lea      r8, [rsi + 0x14d0]
00000001403c86e2 mov      word ptr [rsp + 0x28], r12w
00000001403c86e8 mov      r9b, 2
00000001403c86eb mov      qword ptr [rsp + 0x20], r8
00000001403c86f0 mov      r8b, 8
00000001403c86f3 movsx    ecx, byte ptr [rax + rsi + 0x13dd]
00000001403c86fb movzx    edx, cl
00000001403c86fe mov      rcx, rsi
00000001403c8701 call     0x1403e91a0
00000001403c8706 mov      ecx, dword ptr [rdi]
00000001403c8708 mov      eax, dword ptr [r14]
00000001403c870b cmp      ecx, eax
00000001403c870d jae      0x1403c872d
00000001403c870f sub      eax, ecx
00000001403c8711 lea      r9, [rsi + 0x14d0]
00000001403c8718 mov      edx, eax
00000001403c871a lea      r8, [rip + 0x28324f]
00000001403c8721 add      rcx, r15
00000001403c8724 call     0x140044426
00000001403c8729 add      dword ptr [rdi], eax
00000001403c872b mov      ecx, dword ptr [rdi]
00000001403c872d mov      edx, dword ptr [r14]
00000001403c8730 cmp      ecx, edx
00000001403c8732 jae      0x1403c8753
00000001403c8734 mov      eax, dword ptr [rsi + 0x2144]
00000001403c873a lea      r8, [rip + 0x28324f]
00000001403c8741 sub      edx, ecx
00000001403c8743 add      rcx, r15
00000001403c8746 lea      r9d, [rax + rax*2]
00000001403c874a call     0x140044426
00000001403c874f add      dword ptr [rdi], eax
00000001403c8751 mov      ecx, dword ptr [rdi]
00000001403c8753 mov      eax, dword ptr [r14]
00000001403c8756 cmp      ecx, eax
00000001403c8758 jae      0x1403c876f
00000001403c875a sub      eax, ecx
00000001403c875c lea      r8, [rip + 0x28313d]
00000001403c8763 mov      edx, eax
00000001403c8765 add      rcx, r15
00000001403c8768 call     0x140044426
00000001403c876d add      dword ptr [rdi], eax
00000001403c876f mov      r8d, dword ptr [r13 + 0x4554]
00000001403c8776 mov      rcx, rsi
00000001403c8779 mov      edx, dword ptr [r13 + 0x4550]
00000001403c8780 call     0x140315a88
00000001403c8785 mov      dword ptr [rbp - 0xd], eax
00000001403c8788 mov      rcx, rsi
00000001403c878b mov      r8d, dword ptr [r13 + 0x455c]
00000001403c8792 mov      edx, dword ptr [r13 + 0x4558]
00000001403c8799 call     0x140315a88
00000001403c879e mov      ecx, dword ptr [rdi]
00000001403c87a0 mov      dword ptr [rbp - 9], eax
00000001403c87a3 cmp      ecx, dword ptr [r14]
00000001403c87a6 jae      0x1403c87d4
00000001403c87a8 movzx    ecx, byte ptr [rbp - 0xd]
00000001403c87ac mov      dl, 8
00000001403c87ae mov      ebx, dword ptr [rdi]
00000001403c87b0 call     0x1403e8aa0
00000001403c87b5 mov      edx, dword ptr [r14]
00000001403c87b8 lea      rcx, [r15 + rbx]
00000001403c87bc sub      edx, ebx
00000001403c87be lea      r8, [rip + 0x2831eb]
00000001403c87c5 mov      r9d, eax
00000001403c87c8 call     0x140044426
00000001403c87cd add      dword ptr [rdi], eax
00000001403c87cf mov      ecx, dword ptr [rdi]
00000001403c87d1 mov      eax, dword ptr [rbp - 9]
00000001403c87d4 mov      edx, dword ptr [r14]
00000001403c87d7 cmp      ecx, edx
00000001403c87d9 jae      0x1403c881a
00000001403c87db shr      eax, 1
00000001403c87dd lea      r10, [rip + 0x22f5bc]
00000001403c87e4 and      eax, 3
00000001403c87e7 lea      r9, [rip + 0x22ef22]
00000001403c87ee imul     r8d, eax, 0x19
00000001403c87f2 cmp      dword ptr [rsi + 0x13f0], 0x20000
00000001403c87fc cmove    r9, r10
00000001403c8800 sub      edx, ecx
00000001403c8802 add      rcx, r15
00000001403c8805 mov      dword ptr [rsp + 0x20], r8d
00000001403c880a lea      r8, [rip + 0x2831bf]
00000001403c8811 call     0x140044426
00000001403c8816 add      dword ptr [rdi], eax
00000001403c8818 mov      ecx, dword ptr [rdi]
00000001403c881a cmp      ecx, dword ptr [r14]
00000001403c881d jae      0x1403c884c
00000001403c881f movsx    eax, byte ptr [rsi + 0x13db]
00000001403c8826 mov      dl, 8
00000001403c8828 mov      ebx, dword ptr [rdi]
00000001403c882a movzx    ecx, al
00000001403c882d call     0x1403e8aa0
00000001403c8832 mov      edx, dword ptr [r14]
00000001403c8835 lea      rcx, [r15 + rbx]
00000001403c8839 sub      edx, ebx
00000001403c883b lea      r8, [rip + 0x2831ae]
00000001403c8842 mov      r9d, eax
00000001403c8845 call     0x140044426
00000001403c884a add      dword ptr [rdi], eax
00000001403c884c movsx    edx, byte ptr [rsi + 0x13dc]
00000001403c8853 lea      rax, [rsi + 0x14d0]
00000001403c885a neg      edx
00000001403c885c mov      word ptr [rsp + 0x28], r12w
00000001403c8862 mov      r9b, 2
00000001403c8865 mov      qword ptr [rsp + 0x20], rax
00000001403c886a mov      r8b, 8
00000001403c886d mov      rcx, rsi
00000001403c8870 call     0x1403e91a0
00000001403c8875 mov      eax, dword ptr [rdi]
00000001403c8877 mov      ecx, dword ptr [r14]
00000001403c887a cmp      eax, ecx
00000001403c887c jae      0x1403c889d
00000001403c887e sub      ecx, eax
00000001403c8880 lea      r9, [rsi + 0x14d0]
00000001403c8887 mov      edx, ecx
00000001403c8889 lea      r8, [rip + 0x283190]
00000001403c8890 lea      rcx, [r15 + rax]
00000001403c8894 call     0x140044426
00000001403c8899 add      dword ptr [rdi], eax
00000001403c889b mov      eax, dword ptr [rdi]
00000001403c889d mov      ecx, dword ptr [r14]
00000001403c88a0 cmp      eax, ecx
00000001403c88a2 jae      0x1403c8c47
00000001403c88a8 sub      ecx, eax
00000001403c88aa lea      r8, [rip + 0x28319f]
00000001403c88b1 mov      edx, ecx
00000001403c88b3 mov      ecx, eax
00000001403c88b5 jmp      0x1403c8c3d
00000001403c88ba lea      rcx, [r13 + 0x10]
00000001403c88be lea      rdx, [rip + 0x2831bb]
00000001403c88c5 call     0x140044360
00000001403c88ca test     eax, eax
00000001403c88cc jne      0x1403c8c29
00000001403c88d2 lea      r12, [r13 + 0x20]
00000001403c88d6 cmp      byte ptr [r12], 0x2d
00000001403c88db jne      0x1403c894a
00000001403c88dd cmp      byte ptr [r12 + 1], 0x68
00000001403c88e3 jne      0x1403c894a
00000001403c88e5 cmp      byte ptr [r12 + 2], bl
00000001403c88ea jne      0x1403c894a
00000001403c88ec mov      eax, dword ptr [rdi]
00000001403c88ee mov      ecx, dword ptr [r14]
00000001403c88f1 cmp      eax, ecx
00000001403c88f3 jae      0x1403c890d
00000001403c88f5 sub      ecx, eax
00000001403c88f7 lea      r8, [rip + 0x283192]
00000001403c88fe mov      edx, ecx
00000001403c8900 lea      rcx, [r15 + rax]
00000001403c8904 call     0x140044426
00000001403c8909 add      dword ptr [rdi], eax
00000001403c890b mov      eax, dword ptr [rdi]
00000001403c890d mov      ecx, dword ptr [r14]
00000001403c8910 cmp      eax, ecx
00000001403c8912 jae      0x1403c892d
00000001403c8914 sub      ecx, eax
00000001403c8916 lea      r8, [rip + 0x2831a3]
00000001403c891d mov      edx, ecx
00000001403c891f mov      ecx, eax
00000001403c8921 add      rcx, r15
00000001403c8924 call     0x140044426
00000001403c8929 add      dword ptr [rdi], eax
00000001403c892b mov      eax, dword ptr [rdi]
00000001403c892d mov      ecx, dword ptr [r14]
00000001403c8930 cmp      eax, ecx
00000001403c8932 jae      0x1403c8c47
00000001403c8938 sub      ecx, eax
00000001403c893a lea      r8, [rip + 0x28318f]
00000001403c8941 mov      edx, ecx
00000001403c8943 mov      ecx, eax
00000001403c8945 jmp      0x1403c8c3d
00000001403c894a lea      rdx, [rip + 0x23490f]
00000001403c8951 mov      rcx, r12
00000001403c8954 call     0x140044360
00000001403c8959 test     eax, eax
00000001403c895b jne      0x1403c8a67
00000001403c8961 lea      rcx, [r13 + 0x30]
00000001403c8965 lea      r8, [rbp - 0x21]
00000001403c8969 lea      rdx, [rip + 0x252e00]
00000001403c8970 call     0x140044420
00000001403c8975 lea      rcx, [r13 + 0x40]
00000001403c8979 lea      r8, [rbp - 0x1d]
00000001403c897d lea      rdx, [rip + 0x252dec]
00000001403c8984 call     0x140044420
00000001403c8989 mov      eax, dword ptr [rbp - 0x21]
00000001403c898c mov      ecx, 0x831
00000001403c8991 cmp      eax, ecx
00000001403c8993 jb       0x1403c899a
00000001403c8995 mov      eax, ecx
00000001403c8997 mov      dword ptr [rbp - 0x21], ecx
00000001403c899a cmp      eax, 0x419
00000001403c899f jae      0x1403c89a6
00000001403c89a1 mov      dword ptr [rbp - 0x1d], ebx
00000001403c89a4 jmp      0x1403c89a9
00000001403c89a6 mov      ebx, dword ptr [rbp - 0x1d]
00000001403c89a9 imul     eax, eax, 0xfa
00000001403c89af lea      ecx, [rbx + 2]
00000001403c89b2 mov      r9d, ebx
00000001403c89b5 mov      rbx, qword ptr [rbp - 0x29]
00000001403c89b9 shr      eax, cl
00000001403c89bb mov      rcx, rsi
00000001403c89be mov      dword ptr [rbp - 0x19], eax
00000001403c89c1 mov      eax, dword ptr [rsi + 0x998]
00000001403c89c7 mov      r8d, dword ptr [rbx + 0x1bbc]
00000001403c89ce mov      edx, dword ptr [rbx + 0x1bb8]
00000001403c89d4 mov      dword ptr [rsp + 0x20], eax
00000001403c89d8 call     0x140316994
00000001403c89dd mov      eax, dword ptr [rsi + 0x998]
00000001403c89e3 mov      rcx, rsi
00000001403c89e6 mov      r9d, dword ptr [rbp - 0x19]
00000001403c89ea mov      r8d, dword ptr [rbx + 0x1bc4]
00000001403c89f1 mov      edx, dword ptr [rbx + 0x1bc0]
00000001403c89f7 mov      dword ptr [rsp + 0x20], eax
00000001403c89fb call     0x140316994
00000001403c8a00 mov      rcx, qword ptr [rsi + 0x9a0]
00000001403c8a07 mov      al, byte ptr [rbp - 0x1d]
00000001403c8a0a mov      byte ptr [rcx + 0x3d2e], al
00000001403c8a10 mov      rcx, qword ptr [rsi + 0x9a0]
00000001403c8a17 movzx    eax, word ptr [rbp - 0x19]
00000001403c8a1b mov      word ptr [rcx + 0x3d2c], ax
00000001403c8a22 mov      r10d, dword ptr [rdi]
00000001403c8a25 mov      ecx, dword ptr [r14]
00000001403c8a28 cmp      r10d, ecx
00000001403c8a2b jae      0x1403c8c47
00000001403c8a31 mov      rax, qword ptr [rsi + 0x9a0]
00000001403c8a38 sub      ecx, r10d
00000001403c8a3b mov      edx, ecx
00000001403c8a3d lea      rcx, [r15 + r10]
00000001403c8a41 movzx    r8d, byte ptr [rax + 0x3d2e]
00000001403c8a49 movzx    r9d, word ptr [rax + 0x3d2c]
00000001403c8a51 mov      dword ptr [rsp + 0x20], r8d
00000001403c8a56 lea      r8, [rip + 0x283083]
00000001403c8a5d call     0x140044426
00000001403c8a62 jmp      0x1403c8c45
00000001403c8a67 lea      rdx, [rip + 0x265b32]
00000001403c8a6e mov      rcx, r12
00000001403c8a71 call     0x140044360
00000001403c8a76 test     eax, eax
00000001403c8a78 jne      0x1403c8aeb
00000001403c8a7a mov      rax, qword ptr [rsi + 0x9a0]
00000001403c8a81 xor      r9d, r9d
00000001403c8a84 mov      rcx, rsi
00000001403c8a87 mov      byte ptr [rax + 0x3d24], bl
00000001403c8a8d mov      rbx, qword ptr [rbp - 0x29]
00000001403c8a91 mov      eax, dword ptr [rsi + 0x998]
00000001403c8a97 mov      dword ptr [rsp + 0x20], eax
00000001403c8a9b mov      r8d, dword ptr [rbx + 0x1bb4]
00000001403c8aa2 mov      edx, dword ptr [rbx + 0x1bb0]
00000001403c8aa8 call     0x140316994
00000001403c8aad mov      eax, dword ptr [rsi + 0x998]
00000001403c8ab3 mov      r9d, 1
00000001403c8ab9 mov      r8d, dword ptr [rbx + 0x1bb4]
00000001403c8ac0 mov      rcx, rsi
00000001403c8ac3 mov      edx, dword ptr [rbx + 0x1bb0]
00000001403c8ac9 mov      dword ptr [rsp + 0x20], eax
00000001403c8acd call     0x140316994
00000001403c8ad2 mov      ecx, dword ptr [rdi]
00000001403c8ad4 mov      eax, dword ptr [r14]
00000001403c8ad7 cmp      ecx, eax
00000001403c8ad9 jae      0x1403c8c47
00000001403c8adf lea      r8, [rip + 0x28302a]
00000001403c8ae6 jmp      0x1403c8c39
00000001403c8aeb lea      rdx, [rip + 0x2668ae]
00000001403c8af2 mov      rcx, r12
00000001403c8af5 call     0x140044360
00000001403c8afa test     eax, eax
00000001403c8afc jne      0x1403c8c47
00000001403c8b02 mov      r13, qword ptr [rbp - 0x29]
00000001403c8b06 mov      rcx, rsi
00000001403c8b09 mov      r9d, dword ptr [rsi + 0x998]
00000001403c8b10 mov      r8d, dword ptr [r13 + 0x1bcc]
00000001403c8b17 mov      edx, dword ptr [r13 + 0x1bc8]
00000001403c8b1e call     0x140315af0
00000001403c8b23 mov      r9d, dword ptr [rsi + 0x998]
00000001403c8b2a movzx    ecx, ax
00000001403c8b2d mov      dword ptr [rbp - 0x21], ecx
00000001403c8b30 mov      rcx, rsi
00000001403c8b33 mov      r8d, dword ptr [r13 + 0x1bd4]
00000001403c8b3a mov      edx, dword ptr [r13 + 0x1bd0]
00000001403c8b41 call     0x140315af0
00000001403c8b46 mov      r9d, dword ptr [rsi + 0x998]
00000001403c8b4d movzx    ecx, ax
00000001403c8b50 mov      dword ptr [rbp - 0x1d], ecx
00000001403c8b53 mov      rcx, rsi
00000001403c8b56 mov      r8d, dword ptr [r13 + 0x1bdc]
00000001403c8b5d mov      edx, dword ptr [r13 + 0x1bd8]
00000001403c8b64 call     0x140315af0
00000001403c8b69 mov      r8d, dword ptr [rdi]
00000001403c8b6c mov      r11d, dword ptr [r14]
00000001403c8b6f movzx    r9d, ax
00000001403c8b73 mov      dword ptr [rbp - 0x19], r9d
00000001403c8b77 cmp      r8d, r11d
00000001403c8b7a jae      0x1403c8be1
00000001403c8b7c mov      ecx, dword ptr [rbp - 0x15]
00000001403c8b7f test     ecx, ecx
00000001403c8b81 je       0x1403c8b90
00000001403c8b83 imul     eax, r9d, 0x64
00000001403c8b87 xor      edx, edx
00000001403c8b89 div      ecx
00000001403c8b8b mov      r10d, eax
00000001403c8b8e jmp      0x1403c8b93
00000001403c8b90 mov      r10d, ebx
00000001403c8b93 test     ecx, ecx
00000001403c8b95 je       0x1403c8ba4
00000001403c8b97 imul     eax, dword ptr [rbp - 0x1d], 0x64
00000001403c8b9b xor      edx, edx
00000001403c8b9d div      ecx
00000001403c8b9f mov      r9d, eax
00000001403c8ba2 jmp      0x1403c8ba7
00000001403c8ba4 mov      r9d, ebx
00000001403c8ba7 test     ecx, ecx
00000001403c8ba9 je       0x1403c8bb5
00000001403c8bab imul     eax, dword ptr [rbp - 0x21], 0x64
00000001403c8baf xor      edx, edx
00000001403c8bb1 div      ecx
00000001403c8bb3 mov      ebx, eax
00000001403c8bb5 sub      r11d, r8d
00000001403c8bb8 mov      dword ptr [rsp + 0x28], r10d
00000001403c8bbd mov      dword ptr [rsp + 0x20], r9d
00000001403c8bc2 lea      rcx, [r15 + r8]
00000001403c8bc6 mov      edx, r11d
00000001403c8bc9 lea      r8, [rip + 0x273530]
00000001403c8bd0 mov      r9d, ebx
00000001403c8bd3 call     0x140044426
00000001403c8bd8 add      dword ptr [rdi], eax
00000001403c8bda mov      r8d, dword ptr [rdi]
00000001403c8bdd mov      r9d, dword ptr [rbp - 0x19]
00000001403c8be1 mov      eax, dword ptr [r14]
00000001403c8be4 cmp      r8d, eax
00000001403c8be7 jae      0x1403c8c19
00000001403c8be9 sub      eax, r8d
00000001403c8bec mov      ecx, r8d
00000001403c8bef mov      edx, eax
00000001403c8bf1 lea      r8, [rip + 0x282f38]
00000001403c8bf8 mov      eax, dword ptr [rbp - 0x15]
00000001403c8bfb add      rcx, r15
00000001403c8bfe mov      dword ptr [rsp + 0x30], eax
00000001403c8c02 mov      eax, dword ptr [rbp - 0x1d]
00000001403c8c05 mov      dword ptr [rsp + 0x28], r9d
00000001403c8c0a mov      r9d, dword ptr [rbp - 0x21]
00000001403c8c0e mov      dword ptr [rsp + 0x20], eax
00000001403c8c12 call     0x140044426
00000001403c8c17 add      dword ptr [rdi], eax
00000001403c8c19 mov      rax, qword ptr [rsi + 0x9a0]
00000001403c8c20 mov      byte ptr [rax + 0x3d24], 1
00000001403c8c27 jmp      0x1403c8c47
00000001403c8c29 mov      ecx, dword ptr [rdi]
00000001403c8c2b mov      eax, dword ptr [r14]
00000001403c8c2e cmp      ecx, eax
00000001403c8c30 jae      0x1403c8c47
00000001403c8c32 lea      r8, [rip + 0x2628e7]
00000001403c8c39 sub      eax, ecx
00000001403c8c3b mov      edx, eax
00000001403c8c3d add      rcx, r15
00000001403c8c40 call     0x140044426
00000001403c8c45 add      dword ptr [rdi], eax
00000001403c8c47 mov      rcx, qword ptr [rbp + 7]
00000001403c8c4b xor      rcx, rsp
00000001403c8c4e call     0x1405f45b0
00000001403c8c53 add      rsp, 0x98
00000001403c8c5a pop      r15
00000001403c8c5c pop      r14
00000001403c8c5e pop      r13
00000001403c8c60 pop      r12
00000001403c8c62 pop      rdi
00000001403c8c63 pop      rsi
00000001403c8c64 pop      rbx
00000001403c8c65 pop      rbp
00000001403c8c66 ret      