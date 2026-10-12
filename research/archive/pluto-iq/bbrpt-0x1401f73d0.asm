00000001401f73d0 mov      qword ptr [rsp + 8], rbx
00000001401f73d5 mov      qword ptr [rsp + 0x20], rbp
00000001401f73da push     rsi
00000001401f73db push     rdi
00000001401f73dc push     r12
00000001401f73de push     r14
00000001401f73e0 push     r15
00000001401f73e2 sub      rsp, 0xb0
00000001401f73e9 mov      rax, qword ptr [rip + 0x730070]
00000001401f73f0 xor      rax, rsp
00000001401f73f3 mov      qword ptr [rsp + 0xa0], rax
00000001401f73fb mov      rax, qword ptr [rdx + 0x10]
00000001401f73ff mov      r14, rdx
00000001401f7402 mov      r15, qword ptr [rdx + 0x20]
00000001401f7406 mov      r12, r8
00000001401f7409 mov      rbp, rcx
00000001401f740c lea      rcx, [rsp + 0x60]
00000001401f7411 mov      rdx, qword ptr [rax]
00000001401f7414 mov      rsi, qword ptr [rdx + 0x10328]
00000001401f741b xor      edx, edx
00000001401f741d lea      r8d, [rdx + 0x40]
00000001401f7421 call     0x1405f4640
00000001401f7426 mov      r8d, dword ptr [r12]
00000001401f742a xorps    xmm0, xmm0
00000001401f742d xor      eax, eax
00000001401f742f movzx    r10d, r8w
00000001401f7433 cmp      byte ptr [r12 + 2], 0x89
00000001401f7439 movups   xmmword ptr [rsp + 0x30], xmm0
00000001401f743e mov      qword ptr [rsp + 0x50], rax
00000001401f7443 movups   xmmword ptr [rsp + 0x40], xmm0
00000001401f7448 movzx    r9d, byte ptr [r15 + 0x55]
00000001401f744d je       0x1401f74af
00000001401f744f mov      rcx, qword ptr [rip + 0x728baa]
00000001401f7456 lea      rbx, [rip + 0x728ba3]
00000001401f745d cmp      rcx, rbx
00000001401f7460 je       0x1401f74a5
00000001401f7462 cmp      byte ptr [rcx + 0x169], 3
00000001401f7469 jb       0x1401f74a5
00000001401f746b mov      eax, dword ptr [rcx + 0x16c]
00000001401f7471 test     al, 1
00000001401f7473 je       0x1401f74a5
00000001401f7475 mov      rcx, qword ptr [rcx + 0x158]
00000001401f747c lea      rdi, [rip + 0x41c12d]
00000001401f7483 mov      dword ptr [rsp + 0x28], r8d
00000001401f7488 lea      r9, [rip + 0x416f01]
00000001401f748f lea      r8, [rip + 0x4a104a]
00000001401f7496 mov      qword ptr [rsp + 0x20], rdi
00000001401f749b mov      edx, 0x16
00000001401f74a0 call     0x14003ca14
00000001401f74a5 mov      eax, 2
00000001401f74aa jmp      0x1401f759c
00000001401f74af bt       r8d, 0x19
00000001401f74b4 jae      0x1401f7521
00000001401f74b6 mov      rcx, qword ptr [rip + 0x728b43]
00000001401f74bd lea      rbx, [rip + 0x728b3c]
00000001401f74c4 cmp      rcx, rbx
00000001401f74c7 je       0x1401f750c
00000001401f74c9 cmp      byte ptr [rcx + 0x169], 3
00000001401f74d0 jb       0x1401f750c
00000001401f74d2 mov      eax, dword ptr [rcx + 0x16c]
00000001401f74d8 test     al, 1
00000001401f74da je       0x1401f750c
00000001401f74dc mov      rcx, qword ptr [rcx + 0x158]
00000001401f74e3 lea      rdi, [rip + 0x41c0c6]
00000001401f74ea mov      dword ptr [rsp + 0x28], r8d
00000001401f74ef lea      r9, [rip + 0x416e9a]
00000001401f74f6 lea      r8, [rip + 0x4a0fe3]
00000001401f74fd mov      qword ptr [rsp + 0x20], rdi
00000001401f7502 mov      edx, 0x17
00000001401f7507 call     0x14003ca14
00000001401f750c mov      r9, r12
00000001401f750f mov      r8, r14
00000001401f7512 mov      rdx, rbp
00000001401f7515 mov      rcx, rsi
00000001401f7518 call     0x1401f72c8
00000001401f751d xor      eax, eax
00000001401f751f jmp      0x1401f759c
00000001401f7521 mov      dl, byte ptr [r15 + 0x28]
00000001401f7525 xor      cl, cl
00000001401f7527 test     dl, dl
00000001401f7529 je       0x1401f7546
00000001401f752b movzx    eax, cl
00000001401f752e mov      rbp, qword ptr [r15 + rax*8 + 0x30]
00000001401f7533 cmp      byte ptr [rbp + 0x1408], 0
00000001401f753a jne      0x1401f75c8
00000001401f7540 inc      cl
00000001401f7542 cmp      cl, dl
00000001401f7544 jb       0x1401f752b
00000001401f7546 mov      rcx, qword ptr [rip + 0x728ab3]
00000001401f754d lea      rbx, [rip + 0x728aac]
00000001401f7554 cmp      rcx, rbx
00000001401f7557 je       0x1401f7597
00000001401f7559 cmp      byte ptr [rcx + 0x169], 3
00000001401f7560 jb       0x1401f7597
00000001401f7562 mov      eax, dword ptr [rcx + 0x16c]
00000001401f7568 test     al, 1
00000001401f756a je       0x1401f7597
00000001401f756c mov      edx, 0x18
00000001401f7571 mov      rcx, qword ptr [rcx + 0x158]
00000001401f7578 lea      rdi, [rip + 0x41c031]
00000001401f757f lea      r9, [rip + 0x416e0a]
00000001401f7586 mov      qword ptr [rsp + 0x20], rdi
00000001401f758b lea      r8, [rip + 0x4a0f4e]
00000001401f7592 call     0x14003c968
00000001401f7597 mov      eax, 1
00000001401f759c mov      rcx, qword ptr [rsp + 0xa0]
00000001401f75a4 xor      rcx, rsp
00000001401f75a7 call     0x1405f45b0
00000001401f75ac lea      r11, [rsp + 0xb0]
00000001401f75b4 mov      rbx, qword ptr [r11 + 0x30]
00000001401f75b8 mov      rbp, qword ptr [r11 + 0x48]
00000001401f75bc mov      rsp, r11
00000001401f75bf pop      r15
00000001401f75c1 pop      r14
00000001401f75c3 pop      r12
00000001401f75c5 pop      rdi
00000001401f75c6 pop      rsi
00000001401f75c7 ret      
00000001401f75c8 test     rbp, rbp
00000001401f75cb je       0x1401f7546
00000001401f75d1 mov      edx, dword ptr [rsp + 0x60]
00000001401f75d5 lea      rdi, [rip + 0x41bfd4]
00000001401f75dc and      edx, 0xff89ffff
00000001401f75e2 mov      ecx, r10d
00000001401f75e5 or       edx, 0x890000
00000001401f75eb sub      ecx, 0x96
00000001401f75f1 je       0x1401f7746
00000001401f75f7 sub      ecx, 0xe
00000001401f75fa je       0x1401f7695
00000001401f7600 sub      ecx, 1
00000001401f7603 je       0x1401f7695
00000001401f7609 cmp      ecx, 2
00000001401f760c jne      0x1401f751d
00000001401f7612 mov      rcx, qword ptr [rip + 0x7289e7]
00000001401f7619 lea      rbx, [rip + 0x7289e0]
00000001401f7620 cmp      rcx, rbx
00000001401f7623 je       0x1401f765c
00000001401f7625 cmp      byte ptr [rcx + 0x169], 4
00000001401f762c jb       0x1401f765c
00000001401f762e mov      eax, dword ptr [rcx + 0x16c]
00000001401f7634 test     al, 1
00000001401f7636 je       0x1401f765c
00000001401f7638 mov      rcx, qword ptr [rcx + 0x158]
00000001401f763f lea      r9, [rip + 0x416d4a]
00000001401f7646 mov      edx, 0x1a
00000001401f764b mov      qword ptr [rsp + 0x20], rdi
00000001401f7650 lea      r8, [rip + 0x4a0e89]
00000001401f7657 call     0x14003c968
00000001401f765c mov      r8, r12
00000001401f765f mov      rdx, r14
00000001401f7662 mov      rcx, rsi
00000001401f7665 call     0x1401f7828
00000001401f766a cmp      r14, rbp
00000001401f766d je       0x1401f7686
00000001401f766f mov      r8, r14
00000001401f7672 mov      edx, 0x89
00000001401f7677 mov      rcx, rsi
00000001401f767a call     0x1401f8d10
00000001401f767f test     eax, eax
00000001401f7681 setne    al
00000001401f7684 jmp      0x1401f7688
00000001401f7686 mov      al, 1
00000001401f7688 test     al, al
00000001401f768a je       0x1401f751d
00000001401f7690 jmp      0x1401f7790
00000001401f7695 and      dword ptr [rsp + 0x80], 0
00000001401f769d and      edx, 0xffff00a7
00000001401f76a3 or       edx, 0xa7
00000001401f76a9 mov      dword ptr [rsp + 0x28], r9d
00000001401f76ae xor      eax, eax
00000001401f76b0 mov      dword ptr [rsp + 0x60], edx
00000001401f76b4 cmp      r10d, 0xa4
00000001401f76bb mov      dword ptr [rsp + 0x20], 2
00000001401f76c3 mov      r8, rbp
00000001401f76c6 mov      edx, r10d
00000001401f76c9 sete     al
00000001401f76cc mov      rcx, rsi
00000001401f76cf xor      r9d, r9d
00000001401f76d2 mov      dword ptr [rsp + 0x88], eax
00000001401f76d9 call     0x1401f78a4
00000001401f76de test     eax, eax
00000001401f76e0 je       0x1401f76ed
00000001401f76e2 mov      dword ptr [rsp + 0x80], 1
00000001401f76ed xor      r9d, r9d
00000001401f76f0 lea      r8, [rsp + 0x30]
00000001401f76f5 lea      rdx, [rsp + 0x60]
00000001401f76fa mov      rcx, rsi
00000001401f76fd call     0x1401b97bc
00000001401f7702 test     eax, eax
00000001401f7704 je       0x1401f751d
00000001401f770a mov      rcx, qword ptr [rip + 0x7288ef]
00000001401f7711 lea      rbx, [rip + 0x7288e8]
00000001401f7718 cmp      rcx, rbx
00000001401f771b je       0x1401f7597
00000001401f7721 cmp      byte ptr [rcx + 0x169], 2
00000001401f7728 jb       0x1401f7597
00000001401f772e mov      eax, dword ptr [rcx + 0x16c]
00000001401f7734 test     al, 1
00000001401f7736 je       0x1401f7597
00000001401f773c mov      edx, 0x19
00000001401f7741 jmp      0x1401f7571
00000001401f7746 mov      rcx, qword ptr [rip + 0x7288b3]
00000001401f774d lea      rbx, [rip + 0x7288ac]
00000001401f7754 cmp      rcx, rbx
00000001401f7757 je       0x1401f7790
00000001401f7759 cmp      byte ptr [rcx + 0x169], 4
00000001401f7760 jb       0x1401f7790
00000001401f7762 mov      eax, dword ptr [rcx + 0x16c]
00000001401f7768 test     al, 1
00000001401f776a je       0x1401f7790
00000001401f776c mov      rcx, qword ptr [rcx + 0x158]
00000001401f7773 lea      r9, [rip + 0x416c16]
00000001401f777a mov      edx, 0x1b
00000001401f777f mov      qword ptr [rsp + 0x20], rdi
00000001401f7784 lea      r8, [rip + 0x4a0d55]
00000001401f778b call     0x14003c968
00000001401f7790 lea      r8, [r15 + 0x50]
00000001401f7794 xor      edx, edx
00000001401f7796 mov      rcx, rsi
00000001401f7799 call     0x1401b9324
00000001401f779e test     eax, eax
00000001401f77a0 je       0x1401f751d
00000001401f77a6 mov      rcx, qword ptr [rip + 0x728853]
00000001401f77ad cmp      rcx, rbx
00000001401f77b0 je       0x1401f751d
00000001401f77b6 cmp      byte ptr [rcx + 0x169], 3
00000001401f77bd jb       0x1401f751d
00000001401f77c3 mov      eax, dword ptr [rcx + 0x16c]
00000001401f77c9 test     al, 1
00000001401f77cb je       0x1401f751d
00000001401f77d1 mov      rcx, qword ptr [rcx + 0x158]
00000001401f77d8 lea      r9, [rip + 0x416bb1]
00000001401f77df mov      edx, 0x1c
00000001401f77e4 mov      qword ptr [rsp + 0x20], rdi
00000001401f77e9 lea      r8, [rip + 0x4a0cf0]
00000001401f77f0 call     0x14003c968
00000001401f77f5 jmp      0x1401f751d