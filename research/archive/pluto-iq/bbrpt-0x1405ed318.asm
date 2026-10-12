00000001405ed318 mov      rax, rsp
00000001405ed31b mov      qword ptr [rax + 8], rbx
00000001405ed31f mov      qword ptr [rax + 0x10], rbp
00000001405ed323 mov      qword ptr [rax + 0x18], rsi
00000001405ed327 mov      qword ptr [rax + 0x20], rdi
00000001405ed32b push     r12
00000001405ed32d push     r14
00000001405ed32f push     r15
00000001405ed331 sub      rsp, 0x30
00000001405ed335 movsxd   rsi, ecx
00000001405ed338 lea      rdi, [rip + 0x6e7009]
00000001405ed33f mov      rax, rsi
00000001405ed342 mov      rbx, rdx
00000001405ed345 inc      esi
00000001405ed347 mov      rdi, qword ptr [rdi + rax*8]
00000001405ed34b mov      r10, qword ptr [rip + 0x332cae]
00000001405ed352 lea      r15, [rip + 0x332ca7]
00000001405ed359 lea      r12, [rip + 0x319158]
00000001405ed360 mov      bpl, 4
00000001405ed363 mov      r14b, 8
00000001405ed366 cmp      r10, r15
00000001405ed369 je       0x1405ed3d2
00000001405ed36b cmp      byte ptr [r10 + 0x29], bpl
00000001405ed36f jb       0x1405ed3a4
00000001405ed371 mov      eax, dword ptr [r10 + 0x2c]
00000001405ed375 test     r14b, al
00000001405ed378 je       0x1405ed3a4
00000001405ed37a movzx    r8d, byte ptr [rdx]
00000001405ed37e mov      cl, r8b
00000001405ed381 call     0x1405ebf48
00000001405ed386 mov      rcx, qword ptr [r10 + 0x18]
00000001405ed38a mov      edx, 0x3d
00000001405ed38f mov      qword ptr [rsp + 0x28], rax
00000001405ed394 mov      r9, rdi
00000001405ed397 mov      dword ptr [rsp + 0x20], r8d
00000001405ed39c mov      r8, r12
00000001405ed39f call     0x1400fcc1c
00000001405ed3a4 mov      rcx, qword ptr [rip + 0x332c55]
00000001405ed3ab cmp      rcx, r15
00000001405ed3ae je       0x1405ed3d2
00000001405ed3b0 cmp      byte ptr [rcx + 0x29], bpl
00000001405ed3b4 jb       0x1405ed3d2
00000001405ed3b6 mov      eax, dword ptr [rcx + 0x2c]
00000001405ed3b9 test     r14b, al
00000001405ed3bc je       0x1405ed3d2
00000001405ed3be mov      rcx, qword ptr [rcx + 0x18]
00000001405ed3c2 mov      edx, 0x3e
00000001405ed3c7 mov      r9, rdi
00000001405ed3ca mov      r8, r12
00000001405ed3cd call     0x140008874
00000001405ed3d2 lea      rdx, [rbx + 1]
00000001405ed3d6 mov      ecx, esi
00000001405ed3d8 call     0x1405ebeb0
00000001405ed3dd mov      r10, qword ptr [rip + 0x332c1c]
00000001405ed3e4 cmp      r10, r15
00000001405ed3e7 je       0x1405ed524
00000001405ed3ed cmp      byte ptr [r10 + 0x29], bpl
00000001405ed3f1 jb       0x1405ed488
00000001405ed3f7 mov      eax, dword ptr [r10 + 0x2c]
00000001405ed3fb test     r14b, al
00000001405ed3fe je       0x1405ed488
00000001405ed404 movzx    eax, byte ptr [rbx + 7]
00000001405ed408 test     al, al
00000001405ed40a jne      0x1405ed415
00000001405ed40c lea      rcx, [rip + 0x95fed]
00000001405ed413 jmp      0x1405ed46b
00000001405ed415 cmp      al, 1
00000001405ed417 jne      0x1405ed422
00000001405ed419 lea      rcx, [rip + 0x95ff0]
00000001405ed420 jmp      0x1405ed46b
00000001405ed422 cmp      al, 2
00000001405ed424 jne      0x1405ed42f
00000001405ed426 lea      rcx, [rip + 0x95ff3]
00000001405ed42d jmp      0x1405ed46b
00000001405ed42f cmp      al, bpl
00000001405ed432 jne      0x1405ed43d
00000001405ed434 lea      rcx, [rip + 0x95ff5]
00000001405ed43b jmp      0x1405ed46b
00000001405ed43d cmp      al, 6
00000001405ed43f jne      0x1405ed44a
00000001405ed441 lea      rcx, [rip + 0x95ff8]
00000001405ed448 jmp      0x1405ed46b
00000001405ed44a cmp      al, 5
00000001405ed44c jne      0x1405ed457
00000001405ed44e lea      rcx, [rip + 0x95ffb]
00000001405ed455 jmp      0x1405ed46b
00000001405ed457 cmp      al, 3
00000001405ed459 lea      rcx, [rip + 0x96000]
00000001405ed460 lea      rdx, [rip + 0xb619]
00000001405ed467 cmovne   rcx, rdx
00000001405ed46b mov      qword ptr [rsp + 0x28], rcx
00000001405ed470 mov      edx, 0x3f
00000001405ed475 mov      rcx, qword ptr [r10 + 0x18]
00000001405ed479 mov      r9, rdi
00000001405ed47c mov      r8, r12
00000001405ed47f mov      dword ptr [rsp + 0x20], eax
00000001405ed483 call     0x1400fcc1c
00000001405ed488 mov      rcx, qword ptr [rip + 0x332b71]
00000001405ed48f cmp      rcx, r15
00000001405ed492 je       0x1405ed524
00000001405ed498 cmp      byte ptr [rcx + 0x29], bpl
00000001405ed49c jb       0x1405ed4c1
00000001405ed49e mov      eax, dword ptr [rcx + 0x2c]
00000001405ed4a1 test     r14b, al
00000001405ed4a4 je       0x1405ed4c1
00000001405ed4a6 mov      eax, dword ptr [rbx + 8]
00000001405ed4a9 mov      edx, 0x40
00000001405ed4ae mov      rcx, qword ptr [rcx + 0x18]
00000001405ed4b2 mov      r9, rdi
00000001405ed4b5 mov      r8, r12
00000001405ed4b8 mov      dword ptr [rsp + 0x20], eax
00000001405ed4bc call     0x1400088d8
00000001405ed4c1 mov      rcx, qword ptr [rip + 0x332b38]
00000001405ed4c8 cmp      rcx, r15
00000001405ed4cb je       0x1405ed524
00000001405ed4cd cmp      byte ptr [rcx + 0x29], bpl
00000001405ed4d1 jb       0x1405ed4f6
00000001405ed4d3 mov      eax, dword ptr [rcx + 0x2c]
00000001405ed4d6 test     r14b, al
00000001405ed4d9 je       0x1405ed4f6
00000001405ed4db mov      eax, dword ptr [rbx + 0xc]
00000001405ed4de mov      edx, 0x41
00000001405ed4e3 mov      rcx, qword ptr [rcx + 0x18]
00000001405ed4e7 mov      r9, rdi
00000001405ed4ea mov      r8, r12
00000001405ed4ed mov      dword ptr [rsp + 0x20], eax
00000001405ed4f1 call     0x1400088d8
00000001405ed4f6 mov      rcx, qword ptr [rip + 0x332b03]
00000001405ed4fd cmp      rcx, r15
00000001405ed500 je       0x1405ed524
00000001405ed502 cmp      byte ptr [rcx + 0x29], bpl
00000001405ed506 jb       0x1405ed524
00000001405ed508 mov      eax, dword ptr [rcx + 0x2c]
00000001405ed50b test     r14b, al
00000001405ed50e je       0x1405ed524
00000001405ed510 mov      rcx, qword ptr [rcx + 0x18]
00000001405ed514 mov      edx, 0x42
00000001405ed519 mov      r9, rdi
00000001405ed51c mov      r8, r12
00000001405ed51f call     0x140008874
00000001405ed524 lea      rdx, [rbx + 0x10]
00000001405ed528 mov      ecx, esi
00000001405ed52a call     0x1405ebeb0
00000001405ed52f mov      rcx, qword ptr [rip + 0x332aca]
00000001405ed536 cmp      rcx, r15
00000001405ed539 je       0x1405ed592
00000001405ed53b cmp      byte ptr [rcx + 0x29], bpl
00000001405ed53f jb       0x1405ed564
00000001405ed541 mov      eax, dword ptr [rcx + 0x2c]
00000001405ed544 test     r14b, al
00000001405ed547 je       0x1405ed564
00000001405ed549 mov      eax, dword ptr [rbx + 0x18]
00000001405ed54c mov      edx, 0x43
00000001405ed551 mov      rcx, qword ptr [rcx + 0x18]
00000001405ed555 mov      r9, rdi
00000001405ed558 mov      r8, r12
00000001405ed55b mov      dword ptr [rsp + 0x20], eax
00000001405ed55f call     0x1400088d8
00000001405ed564 mov      rcx, qword ptr [rip + 0x332a95]
00000001405ed56b cmp      rcx, r15
00000001405ed56e je       0x1405ed592
00000001405ed570 cmp      byte ptr [rcx + 0x29], bpl
00000001405ed574 jb       0x1405ed592
00000001405ed576 mov      eax, dword ptr [rcx + 0x2c]
00000001405ed579 test     r14b, al
00000001405ed57c je       0x1405ed592
00000001405ed57e mov      rcx, qword ptr [rcx + 0x18]
00000001405ed582 mov      edx, 0x44
00000001405ed587 mov      r9, rdi
00000001405ed58a mov      r8, r12
00000001405ed58d call     0x140008874
00000001405ed592 lea      rdx, [rbx + 0x1c]
00000001405ed596 mov      ecx, esi
00000001405ed598 call     0x1405ebeb0
00000001405ed59d mov      rcx, qword ptr [rip + 0x332a5c]
00000001405ed5a4 cmp      rcx, r15
00000001405ed5a7 je       0x1405ed67d
00000001405ed5ad cmp      byte ptr [rcx + 0x29], bpl
00000001405ed5b1 jb       0x1405ed5d7
00000001405ed5b3 mov      eax, dword ptr [rcx + 0x2c]
00000001405ed5b6 test     r14b, al
00000001405ed5b9 je       0x1405ed5d7
00000001405ed5bb movzx    eax, word ptr [rbx + 0x22]
00000001405ed5bf mov      edx, 0x45
00000001405ed5c4 mov      rcx, qword ptr [rcx + 0x18]
00000001405ed5c8 mov      r9, rdi
00000001405ed5cb mov      r8, r12
00000001405ed5ce mov      dword ptr [rsp + 0x20], eax
00000001405ed5d2 call     0x1400088d8
00000001405ed5d7 mov      rcx, qword ptr [rip + 0x332a22]
00000001405ed5de cmp      rcx, r15
00000001405ed5e1 je       0x1405ed67d
00000001405ed5e7 cmp      byte ptr [rcx + 0x29], bpl
00000001405ed5eb jb       0x1405ed611
00000001405ed5ed mov      eax, dword ptr [rcx + 0x2c]
00000001405ed5f0 test     r14b, al
00000001405ed5f3 je       0x1405ed611
00000001405ed5f5 movzx    eax, word ptr [rbx + 0x24]
00000001405ed5f9 mov      edx, 0x46
00000001405ed5fe mov      rcx, qword ptr [rcx + 0x18]
00000001405ed602 mov      r9, rdi
00000001405ed605 mov      r8, r12
00000001405ed608 mov      dword ptr [rsp + 0x20], eax
00000001405ed60c call     0x1400088d8
00000001405ed611 mov      rcx, qword ptr [rip + 0x3329e8]
00000001405ed618 cmp      rcx, r15
00000001405ed61b je       0x1405ed67d
00000001405ed61d cmp      byte ptr [rcx + 0x29], bpl
00000001405ed621 jb       0x1405ed647
00000001405ed623 mov      eax, dword ptr [rcx + 0x2c]
00000001405ed626 test     r14b, al
00000001405ed629 je       0x1405ed647
00000001405ed62b movzx    eax, byte ptr [rbx + 0x26]
00000001405ed62f mov      edx, 0x47
00000001405ed634 mov      rcx, qword ptr [rcx + 0x18]
00000001405ed638 mov      r9, rdi
00000001405ed63b mov      r8, r12
00000001405ed63e mov      dword ptr [rsp + 0x20], eax
00000001405ed642 call     0x1400088d8
00000001405ed647 mov      rcx, qword ptr [rip + 0x3329b2]
00000001405ed64e cmp      rcx, r15
00000001405ed651 je       0x1405ed67d
00000001405ed653 cmp      byte ptr [rcx + 0x29], bpl
00000001405ed657 jb       0x1405ed67d
00000001405ed659 mov      eax, dword ptr [rcx + 0x2c]
00000001405ed65c test     r14b, al
00000001405ed65f je       0x1405ed67d
00000001405ed661 movzx    eax, byte ptr [rbx + 0x27]
00000001405ed665 mov      edx, 0x48
00000001405ed66a mov      rcx, qword ptr [rcx + 0x18]
00000001405ed66e mov      r9, rdi
00000001405ed671 mov      r8, r12
00000001405ed674 mov      dword ptr [rsp + 0x20], eax
00000001405ed678 call     0x1400088d8
00000001405ed67d mov      rbx, qword ptr [rsp + 0x50]
00000001405ed682 mov      rbp, qword ptr [rsp + 0x58]
00000001405ed687 mov      rsi, qword ptr [rsp + 0x60]
00000001405ed68c mov      rdi, qword ptr [rsp + 0x68]
00000001405ed691 add      rsp, 0x30
00000001405ed695 pop      r15
00000001405ed697 pop      r14
00000001405ed699 pop      r12
00000001405ed69b ret      