00000001401a9508 mov      qword ptr [rsp + 0x10], rbx
00000001401a950d mov      qword ptr [rsp + 0x18], rdi
00000001401a9512 push     rbp
00000001401a9513 push     r12
00000001401a9515 push     r13
00000001401a9517 push     r14
00000001401a9519 push     r15
00000001401a951b mov      rbp, rsp
00000001401a951e sub      rsp, 0x30
00000001401a9522 mov      rbx, qword ptr [rcx + 0x798]
00000001401a9529 mov      rdi, rcx
00000001401a952c mov      rcx, qword ptr [rip + 0x776acd]
00000001401a9533 lea      r15, [rip + 0x776ac6]
00000001401a953a mov      r12b, 1
00000001401a953d cmp      rcx, r15
00000001401a9540 je       0x1401a957d
00000001401a9542 cmp      byte ptr [rcx + 0x169], 5
00000001401a9549 jb       0x1401a957d
00000001401a954b mov      eax, dword ptr [rcx + 0x16c]
00000001401a9551 test     r12b, al
00000001401a9554 je       0x1401a957d
00000001401a9556 mov      rcx, qword ptr [rcx + 0x158]
00000001401a955d lea      r9, [rip + 0x464e2c]
00000001401a9564 mov      edx, 0xc
00000001401a9569 mov      dword ptr [rsp + 0x20], 2
00000001401a9571 lea      r8, [rip + 0x4eec08]
00000001401a9578 call     0x1400088d8
00000001401a957d lea      r13, [rip + 0x4654ac]
00000001401a9584 mov      rcx, r13
00000001401a9587 call     0x14007dbe0
00000001401a958c and      qword ptr [rbp + 0x30], 0
00000001401a9591 lea      rdx, [rbp + 0x30]
00000001401a9595 mov      r14d, 0x100000
00000001401a959b mov      ecx, eax
00000001401a959d mov      r8d, r14d
00000001401a95a0 call     0x1400310f0
00000001401a95a5 test     eax, eax
00000001401a95a7 je       0x1401a95ad
00000001401a95a9 xor      eax, eax
00000001401a95ab jmp      0x1401a95bd
00000001401a95ad mov      rcx, qword ptr [rbp + 0x30]
00000001401a95b1 mov      edx, r14d
00000001401a95b4 call     0x140031290
00000001401a95b9 mov      rax, qword ptr [rbp + 0x30]
00000001401a95bd mov      qword ptr [rbx + 0xe278], rax
00000001401a95c4 test     rax, rax
00000001401a95c7 jne      0x1401a95ff
00000001401a95c9 mov      rcx, qword ptr [rip + 0x776a30]
00000001401a95d0 cmp      rcx, r15
00000001401a95d3 je       0x1401a9a25
00000001401a95d9 cmp      byte ptr [rcx + 0x169], 2
00000001401a95e0 jb       0x1401a9a25
00000001401a95e6 mov      eax, dword ptr [rcx + 0x16c]
00000001401a95ec test     r12b, al
00000001401a95ef je       0x1401a9a25
00000001401a95f5 mov      edx, 0xd
00000001401a95fa jmp      0x1401a9a06
00000001401a95ff mov      rcx, r13
00000001401a9602 call     0x14007dbe0
00000001401a9607 and      qword ptr [rbp + 0x30], 0
00000001401a960c lea      rdx, [rbp + 0x30]
00000001401a9610 mov      r8d, r14d
00000001401a9613 mov      ecx, eax
00000001401a9615 call     0x1400310f0
00000001401a961a test     eax, eax
00000001401a961c je       0x1401a9622
00000001401a961e xor      eax, eax
00000001401a9620 jmp      0x1401a9632
00000001401a9622 mov      rcx, qword ptr [rbp + 0x30]
00000001401a9626 mov      edx, r14d
00000001401a9629 call     0x140031290
00000001401a962e mov      rax, qword ptr [rbp + 0x30]
00000001401a9632 mov      qword ptr [rbx + 0xe388], rax
00000001401a9639 test     rax, rax
00000001401a963c jne      0x1401a9674
00000001401a963e mov      rcx, qword ptr [rip + 0x7769bb]
00000001401a9645 cmp      rcx, r15
00000001401a9648 je       0x1401a9a25
00000001401a964e cmp      byte ptr [rcx + 0x169], 2
00000001401a9655 jb       0x1401a9a25
00000001401a965b mov      eax, dword ptr [rcx + 0x16c]
00000001401a9661 test     r12b, al
00000001401a9664 je       0x1401a9a25
00000001401a966a mov      edx, 0xe
00000001401a966f jmp      0x1401a9a06
00000001401a9674 mov      rcx, r13
00000001401a9677 call     0x14007dbe0
00000001401a967c and      qword ptr [rbp + 0x30], 0
00000001401a9681 lea      rdx, [rbp + 0x30]
00000001401a9685 mov      r8d, r14d
00000001401a9688 mov      ecx, eax
00000001401a968a call     0x1400310f0
00000001401a968f test     eax, eax
00000001401a9691 je       0x1401a9697
00000001401a9693 xor      eax, eax
00000001401a9695 jmp      0x1401a96a7
00000001401a9697 mov      rcx, qword ptr [rbp + 0x30]
00000001401a969b mov      edx, r14d
00000001401a969e call     0x140031290
00000001401a96a3 mov      rax, qword ptr [rbp + 0x30]
00000001401a96a7 mov      qword ptr [rbx + 0xe4e0], rax
00000001401a96ae test     rax, rax
00000001401a96b1 jne      0x1401a96e9
00000001401a96b3 mov      rcx, qword ptr [rip + 0x776946]
00000001401a96ba cmp      rcx, r15
00000001401a96bd je       0x1401a9a25
00000001401a96c3 cmp      byte ptr [rcx + 0x169], 2
00000001401a96ca jb       0x1401a9a25
00000001401a96d0 mov      eax, dword ptr [rcx + 0x16c]
00000001401a96d6 test     r12b, al
00000001401a96d9 je       0x1401a9a25
00000001401a96df mov      edx, 0xf
00000001401a96e4 jmp      0x1401a9a06
00000001401a96e9 mov      rcx, r13
00000001401a96ec call     0x14007dbe0
00000001401a96f1 and      qword ptr [rbp + 0x30], 0
00000001401a96f6 lea      rdx, [rbp + 0x30]
00000001401a96fa mov      r8d, r14d
00000001401a96fd mov      ecx, eax
00000001401a96ff call     0x1400310f0
00000001401a9704 test     eax, eax
00000001401a9706 je       0x1401a970c
00000001401a9708 xor      eax, eax
00000001401a970a jmp      0x1401a971c
00000001401a970c mov      rcx, qword ptr [rbp + 0x30]
00000001401a9710 mov      edx, r14d
00000001401a9713 call     0x140031290
00000001401a9718 mov      rax, qword ptr [rbp + 0x30]
00000001401a971c mov      qword ptr [rbx + 0xe5f0], rax
00000001401a9723 test     rax, rax
00000001401a9726 jne      0x1401a975e
00000001401a9728 mov      rcx, qword ptr [rip + 0x7768d1]
00000001401a972f cmp      rcx, r15
00000001401a9732 je       0x1401a9a25
00000001401a9738 cmp      byte ptr [rcx + 0x169], 2
00000001401a973f jb       0x1401a9a25
00000001401a9745 mov      eax, dword ptr [rcx + 0x16c]
00000001401a974b test     r12b, al
00000001401a974e je       0x1401a9a25
00000001401a9754 mov      edx, 0x10
00000001401a9759 jmp      0x1401a9a06
00000001401a975e mov      rcx, r13
00000001401a9761 call     0x14007dbe0
00000001401a9766 and      qword ptr [rbp + 0x30], 0
00000001401a976b lea      rdx, [rbp + 0x30]
00000001401a976f mov      r8d, r14d
00000001401a9772 mov      ecx, eax
00000001401a9774 call     0x1400310f0
00000001401a9779 test     eax, eax
00000001401a977b je       0x1401a9781
00000001401a977d xor      eax, eax
00000001401a977f jmp      0x1401a9791
00000001401a9781 mov      rcx, qword ptr [rbp + 0x30]
00000001401a9785 mov      edx, r14d
00000001401a9788 call     0x140031290
00000001401a978d mov      rax, qword ptr [rbp + 0x30]
00000001401a9791 mov      qword ptr [rbx + 0xe738], rax
00000001401a9798 test     rax, rax
00000001401a979b jne      0x1401a97d3
00000001401a979d mov      rcx, qword ptr [rip + 0x77685c]
00000001401a97a4 cmp      rcx, r15
00000001401a97a7 je       0x1401a9a25
00000001401a97ad cmp      byte ptr [rcx + 0x169], 2
00000001401a97b4 jb       0x1401a9a25
00000001401a97ba mov      eax, dword ptr [rcx + 0x16c]
00000001401a97c0 test     r12b, al
00000001401a97c3 je       0x1401a9a25
00000001401a97c9 mov      edx, 0x11
00000001401a97ce jmp      0x1401a9a06
00000001401a97d3 mov      rcx, r13
00000001401a97d6 call     0x14007dbe0
00000001401a97db and      qword ptr [rbp + 0x30], 0
00000001401a97e0 lea      rdx, [rbp + 0x30]
00000001401a97e4 mov      r8d, r14d
00000001401a97e7 mov      ecx, eax
00000001401a97e9 call     0x1400310f0
00000001401a97ee test     eax, eax
00000001401a97f0 je       0x1401a97f6
00000001401a97f2 xor      eax, eax
00000001401a97f4 jmp      0x1401a9806
00000001401a97f6 mov      rcx, qword ptr [rbp + 0x30]
00000001401a97fa mov      edx, r14d
00000001401a97fd call     0x140031290
00000001401a9802 mov      rax, qword ptr [rbp + 0x30]
00000001401a9806 mov      qword ptr [rbx + 0xe848], rax
00000001401a980d test     rax, rax
00000001401a9810 jne      0x1401a9848
00000001401a9812 mov      rcx, qword ptr [rip + 0x7767e7]
00000001401a9819 cmp      rcx, r15
00000001401a981c je       0x1401a9a25
00000001401a9822 cmp      byte ptr [rcx + 0x169], 2
00000001401a9829 jb       0x1401a9a25
00000001401a982f mov      eax, dword ptr [rcx + 0x16c]
00000001401a9835 test     r12b, al
00000001401a9838 je       0x1401a9a25
00000001401a983e mov      edx, 0x12
00000001401a9843 jmp      0x1401a9a06
00000001401a9848 mov      rcx, r13
00000001401a984b call     0x14007dbe0
00000001401a9850 and      qword ptr [rbp + 0x30], 0
00000001401a9855 lea      rdx, [rbp + 0x30]
00000001401a9859 mov      r8d, r14d
00000001401a985c mov      ecx, eax
00000001401a985e call     0x1400310f0
00000001401a9863 test     eax, eax
00000001401a9865 je       0x1401a986b
00000001401a9867 xor      eax, eax
00000001401a9869 jmp      0x1401a987b
00000001401a986b mov      rcx, qword ptr [rbp + 0x30]
00000001401a986f mov      edx, r14d
00000001401a9872 call     0x140031290
00000001401a9877 mov      rax, qword ptr [rbp + 0x30]
00000001401a987b mov      qword ptr [rbx + 0xe4a8], rax
00000001401a9882 test     rax, rax
00000001401a9885 jne      0x1401a98bd
00000001401a9887 mov      rcx, qword ptr [rip + 0x776772]
00000001401a988e cmp      rcx, r15
00000001401a9891 je       0x1401a9a25
00000001401a9897 cmp      byte ptr [rcx + 0x169], 3
00000001401a989e jb       0x1401a9a25
00000001401a98a4 mov      eax, dword ptr [rcx + 0x16c]
00000001401a98aa test     r12b, al
00000001401a98ad je       0x1401a9a25
00000001401a98b3 mov      edx, 0x13
00000001401a98b8 jmp      0x1401a9a06
00000001401a98bd mov      rcx, r13
00000001401a98c0 call     0x14007dbe0
00000001401a98c5 and      qword ptr [rbp + 0x30], 0
00000001401a98ca lea      rdx, [rbp + 0x30]
00000001401a98ce mov      r8d, r14d
00000001401a98d1 mov      ecx, eax
00000001401a98d3 call     0x1400310f0
00000001401a98d8 test     eax, eax
00000001401a98da je       0x1401a98e0
00000001401a98dc xor      eax, eax
00000001401a98de jmp      0x1401a98f0
00000001401a98e0 mov      rcx, qword ptr [rbp + 0x30]
00000001401a98e4 mov      edx, r14d
00000001401a98e7 call     0x140031290
00000001401a98ec mov      rax, qword ptr [rbp + 0x30]
00000001401a98f0 mov      qword ptr [rbx + 0xe700], rax
00000001401a98f7 test     rax, rax
00000001401a98fa jne      0x1401a9932
00000001401a98fc mov      rcx, qword ptr [rip + 0x7766fd]
00000001401a9903 cmp      rcx, r15
00000001401a9906 je       0x1401a9a25
00000001401a990c cmp      byte ptr [rcx + 0x169], 3
00000001401a9913 jb       0x1401a9a25
00000001401a9919 mov      eax, dword ptr [rcx + 0x16c]
00000001401a991f test     r12b, al
00000001401a9922 je       0x1401a9a25
00000001401a9928 mov      edx, 0x14
00000001401a992d jmp      0x1401a9a06
00000001401a9932 mov      rcx, r13
00000001401a9935 call     0x14007dbe0
00000001401a993a and      qword ptr [rbp + 0x30], 0
00000001401a993f lea      rdx, [rbp + 0x30]
00000001401a9943 mov      r8d, r14d
00000001401a9946 mov      ecx, eax
00000001401a9948 call     0x1400310f0
00000001401a994d test     eax, eax
00000001401a994f je       0x1401a9955
00000001401a9951 xor      eax, eax
00000001401a9953 jmp      0x1401a9965
00000001401a9955 mov      rcx, qword ptr [rbp + 0x30]
00000001401a9959 mov      edx, r14d
00000001401a995c call     0x140031290
00000001401a9961 mov      rax, qword ptr [rbp + 0x30]
00000001401a9965 mov      qword ptr [rbx + 0xe958], rax
00000001401a996c test     rax, rax
00000001401a996f jne      0x1401a99a4
00000001401a9971 mov      rcx, qword ptr [rip + 0x776688]
00000001401a9978 cmp      rcx, r15
00000001401a997b je       0x1401a9a25
00000001401a9981 cmp      byte ptr [rcx + 0x169], 3
00000001401a9988 jb       0x1401a9a25
00000001401a998e mov      eax, dword ptr [rcx + 0x16c]
00000001401a9994 test     r12b, al
00000001401a9997 je       0x1401a9a25
00000001401a999d mov      edx, 0x15
00000001401a99a2 jmp      0x1401a9a06
00000001401a99a4 mov      rcx, r13
00000001401a99a7 call     0x14007dbe0
00000001401a99ac and      qword ptr [rbp + 0x30], 0
00000001401a99b1 lea      rdx, [rbp + 0x30]
00000001401a99b5 mov      r8d, r14d
00000001401a99b8 mov      ecx, eax
00000001401a99ba call     0x1400310f0
00000001401a99bf test     eax, eax
00000001401a99c1 je       0x1401a99c7
00000001401a99c3 xor      eax, eax
00000001401a99c5 jmp      0x1401a99d7
00000001401a99c7 mov      rcx, qword ptr [rbp + 0x30]
00000001401a99cb mov      edx, r14d
00000001401a99ce call     0x140031290
00000001401a99d3 mov      rax, qword ptr [rbp + 0x30]
00000001401a99d7 mov      qword ptr [rbx + 0xe4b8], rax
00000001401a99de test     rax, rax
00000001401a99e1 jne      0x1401a9a34
00000001401a99e3 mov      rcx, qword ptr [rip + 0x776616]
00000001401a99ea cmp      rcx, r15
00000001401a99ed je       0x1401a9a25
00000001401a99ef cmp      byte ptr [rcx + 0x169], 3
00000001401a99f6 jb       0x1401a9a25
00000001401a99f8 mov      edx, dword ptr [rcx + 0x16c]
00000001401a99fe test     r12b, dl
00000001401a9a01 je       0x1401a9a25
00000001401a9a03 lea      edx, [rax + 0x16]
00000001401a9a06 mov      rcx, qword ptr [rcx + 0x158]
00000001401a9a0d lea      r9, [rip + 0x46497c]
00000001401a9a14 lea      r8, [rip + 0x4ee765]
00000001401a9a1b mov      qword ptr [rsp + 0x20], r13
00000001401a9a20 call     0x14003c968
00000001401a9a25 mov      rcx, rdi
00000001401a9a28 call     0x1401a93bc
00000001401a9a2d mov      eax, 2
00000001401a9a32 jmp      0x1401a9a7a
00000001401a9a34 mov      rcx, qword ptr [rip + 0x7765c5]
00000001401a9a3b cmp      rcx, r15
00000001401a9a3e je       0x1401a9a78
00000001401a9a40 cmp      byte ptr [rcx + 0x169], 5
00000001401a9a47 jb       0x1401a9a78
00000001401a9a49 mov      eax, dword ptr [rcx + 0x16c]
00000001401a9a4f test     r12b, al
00000001401a9a52 je       0x1401a9a78
00000001401a9a54 and      dword ptr [rsp + 0x20], 0
00000001401a9a59 lea      r9, [rip + 0x464930]
00000001401a9a60 mov      rcx, qword ptr [rcx + 0x158]
00000001401a9a67 lea      r8, [rip + 0x4ee712]
00000001401a9a6e mov      edx, 0x17
00000001401a9a73 call     0x1400088d8
00000001401a9a78 xor      eax, eax
00000001401a9a7a mov      rbx, qword ptr [rsp + 0x68]
00000001401a9a7f mov      rdi, qword ptr [rsp + 0x70]
00000001401a9a84 add      rsp, 0x30
00000001401a9a88 pop      r15
00000001401a9a8a pop      r14
00000001401a9a8c pop      r13
00000001401a9a8e pop      r12
00000001401a9a90 pop      rbp
00000001401a9a91 ret      