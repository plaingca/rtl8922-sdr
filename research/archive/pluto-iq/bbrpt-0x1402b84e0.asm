00000001402b84e0 mov      qword ptr [rsp + 0x20], rbx
00000001402b84e5 push     rbp
00000001402b84e6 push     rsi
00000001402b84e7 push     rdi
00000001402b84e8 push     r12
00000001402b84ea push     r13
00000001402b84ec push     r14
00000001402b84ee push     r15
00000001402b84f0 lea      rbp, [rsp - 0x40]
00000001402b84f5 sub      rsp, 0x140
00000001402b84fc mov      rax, qword ptr [rip + 0x66ef5d]
00000001402b8503 xor      rax, rsp
00000001402b8506 mov      qword ptr [rbp + 0x38], rax
00000001402b850a xor      r15d, r15d
00000001402b850d mov      qword ptr [rbp - 0x50], rdx
00000001402b8511 mov      qword ptr [rbp - 0x40], rcx
00000001402b8515 mov      rdi, r8
00000001402b8518 mov      qword ptr [rsp + 0x78], r15
00000001402b851d mov      rsi, rdx
00000001402b8520 mov      qword ptr [rbp - 0x80], r15
00000001402b8524 mov      rbx, rcx
00000001402b8527 mov      qword ptr [rsp + 0x68], r15
00000001402b852c mov      r14b, r15b
00000001402b852f mov      byte ptr [rsp + 0x50], r15b
00000001402b8534 mov      dword ptr [rsp + 0x70], r15d
00000001402b8539 mov      dword ptr [rsp + 0x54], r15d
00000001402b853e test     r8, r8
00000001402b8541 jne      0x1402b859d
00000001402b8543 mov      rcx, qword ptr [rip + 0x667ab6]
00000001402b854a lea      r15, [rip + 0x667aaf]
00000001402b8551 cmp      rcx, r15
00000001402b8554 je       0x1402b8596
00000001402b8556 cmp      byte ptr [rcx + 0x169], 4
00000001402b855d jb       0x1402b8596
00000001402b855f mov      eax, dword ptr [rcx + 0x16c]
00000001402b8565 lea      ebx, [r8 + 1]
00000001402b8569 test     bl, al
00000001402b856b je       0x1402b8596
00000001402b856d mov      rcx, qword ptr [rcx + 0x158]
00000001402b8574 lea      rax, [rip + 0x36ceb5]
00000001402b857b lea      edx, [rbx + 0x7d]
00000001402b857e mov      qword ptr [rsp + 0x20], rax
00000001402b8583 lea      r9, [rip + 0x355e06]
00000001402b858a lea      r8, [rip + 0x3e0e47]
00000001402b8591 call     0x14003c968
00000001402b8596 xor      eax, eax
00000001402b8598 jmp      0x1402b93e8
00000001402b859d mov      rax, qword ptr [rcx + 8]
00000001402b85a1 mov      rax, qword ptr [rax + 0x1498]
00000001402b85a8 mov      qword ptr [rbp - 0x48], rax
00000001402b85ac call     0x1402b4064
00000001402b85b1 mov      rcx, rbx
00000001402b85b4 mov      byte ptr [rsp + 0x64], al
00000001402b85b8 call     0x1402b3fdc
00000001402b85bd mov      rcx, rbx
00000001402b85c0 mov      byte ptr [rsp + 0x62], al
00000001402b85c4 call     0x1402b3fd4
00000001402b85c9 mov      word ptr [rsi + 0x4ca], r15w
00000001402b85d1 mov      ebx, 1
00000001402b85d6 mov      byte ptr [rsp + 0x63], al
00000001402b85da mov      rsi, rdi
00000001402b85dd mov      al, byte ptr [rdi]
00000001402b85df jmp      0x1402b8600
00000001402b85e1 lea      rdx, [rip + 0x33f1d8]
00000001402b85e8 mov      cl, 0xd
00000001402b85ea cmp      al, cl
00000001402b85ec je       0x1402b871a
00000001402b85f2 add      rdx, rbx
00000001402b85f5 mov      cl, byte ptr [rdx]
00000001402b85f7 test     cl, cl
00000001402b85f9 jne      0x1402b85ea
00000001402b85fb add      rsi, rbx
00000001402b85fe mov      al, byte ptr [rsi]
00000001402b8600 mov      qword ptr [rsp + 0x58], rsi
00000001402b8605 test     al, al
00000001402b8607 jne      0x1402b85e1
00000001402b8609 mov      rsi, r15
00000001402b860c mov      qword ptr [rsp + 0x58], r15
00000001402b8611 lea      r15, [rip + 0x6679e8]
00000001402b8618 lea      r13, [rip + 0x355d71]
00000001402b861f mov      dl, bl
00000001402b8621 lea      r12, [rip + 0x3e0db0]
00000001402b8628 mov      rcx, rdi
00000001402b862b call     0x140371e7c
00000001402b8630 test     al, al
00000001402b8632 jne      0x1402b9535
00000001402b8638 mov      rcx, rdi
00000001402b863b call     0x140371eb4
00000001402b8640 test     al, al
00000001402b8642 jne      0x1402b9530
00000001402b8648 test     r14b, r14b
00000001402b864b je       0x1402b9290
00000001402b8651 cmp      r14b, bl
00000001402b8654 je       0x1402b9412
00000001402b865a mov      r8d, 2
00000001402b8660 cmp      r14b, r8b
00000001402b8663 je       0x1402b9227
00000001402b8669 cmp      r14b, 3
00000001402b866d je       0x1402b9060
00000001402b8673 cmp      r14b, 4
00000001402b8677 je       0x1402b8e69
00000001402b867d cmp      r14b, 6
00000001402b8681 jne      0x1402b8a11
00000001402b8687 movsx    r8d, byte ptr [rdi]
00000001402b868b cmp      r8b, 0x23
00000001402b868f je       0x1402b9530
00000001402b8695 movsx    r9d, byte ptr [rdi + 1]
00000001402b869a cmp      r9b, 0x23
00000001402b869e je       0x1402b9530
00000001402b86a4 lea      eax, [r8 - 0x50]
00000001402b86a8 test     al, 0xdf
00000001402b86aa jne      0x1402b86b4
00000001402b86ac lea      eax, [r9 - 0x53]
00000001402b86b0 test     al, 0xdf
00000001402b86b2 je       0x1402b8733
00000001402b86b4 mov      r10, qword ptr [rip + 0x667945]
00000001402b86bb cmp      r10, r15
00000001402b86be je       0x1402b8700
00000001402b86c0 cmp      byte ptr [r10 + 0x169], 4
00000001402b86c8 jb       0x1402b8700
00000001402b86ca mov      eax, dword ptr [r10 + 0x16c]
00000001402b86d1 test     bl, al
00000001402b86d3 je       0x1402b8700
00000001402b86d5 mov      rcx, qword ptr [r10 + 0x158]
00000001402b86dc mov      edx, 0x90
00000001402b86e1 mov      dword ptr [rsp + 0x38], r9d
00000001402b86e6 mov      dword ptr [rsp + 0x30], r8d
00000001402b86eb mov      byte ptr [rsp + 0x28], r9b
00000001402b86f0 mov      r9, r13
00000001402b86f3 mov      byte ptr [rsp + 0x20], r8b
00000001402b86f8 mov      r8, r12
00000001402b86fb call     0x1400752c4
00000001402b8700 mov      dl, bl
00000001402b8702 mov      rcx, rdi
00000001402b8705 mov      r14b, 5
00000001402b8708 call     0x140371e7c
00000001402b870d test     al, al
00000001402b870f je       0x1402b8638
00000001402b8715 jmp      0x1402b9530
00000001402b871a test     rsi, rsi
00000001402b871d je       0x1402b8611
00000001402b8723 mov      byte ptr [rsi], r15b
00000001402b8726 inc      rsi
00000001402b8729 mov      qword ptr [rsp + 0x58], rsi
00000001402b872e jmp      0x1402b8611
00000001402b8733 mov      rcx, qword ptr [rip + 0x6678c6]
00000001402b873a cmp      rcx, r15
00000001402b873d je       0x1402b8773
00000001402b873f cmp      byte ptr [rcx + 0x169], 4
00000001402b8746 jb       0x1402b8773
00000001402b8748 mov      eax, dword ptr [rcx + 0x16c]
00000001402b874e test     bl, al
00000001402b8750 je       0x1402b8773
00000001402b8752 mov      rcx, qword ptr [rcx + 0x158]
00000001402b8759 mov      edx, 0x91
00000001402b875e mov      byte ptr [rsp + 0x28], r9b
00000001402b8763 mov      r9, r13
00000001402b8766 mov      byte ptr [rsp + 0x20], r8b
00000001402b876b mov      r8, r12
00000001402b876e call     0x14005a9e8
00000001402b8773 xor      r14d, r14d
00000001402b8776 mov      esi, 6
00000001402b877b mov      dword ptr [rsp + 0x54], esi
00000001402b877f cmp      byte ptr [rsp + 0x50], r14b
00000001402b8784 jbe      0x1402b8945
00000001402b878a mov      eax, esi
00000001402b878c mov      r8b, byte ptr [rax + rdi]
00000001402b8790 cmp      r8b, 0x20
00000001402b8794 je       0x1402b893a
00000001402b879a cmp      r8b, 9
00000001402b879e je       0x1402b893a
00000001402b87a4 mov      r12d, esi
00000001402b87a7 mov      rcx, qword ptr [rip + 0x667852]
00000001402b87ae cmp      rcx, r15
00000001402b87b1 je       0x1402b87ee
00000001402b87b3 cmp      byte ptr [rcx + 0x169], 4
00000001402b87ba jb       0x1402b87ee
00000001402b87bc mov      eax, dword ptr [rcx + 0x16c]
00000001402b87c2 test     bl, al
00000001402b87c4 je       0x1402b87ee
00000001402b87c6 mov      rcx, qword ptr [rcx + 0x158]
00000001402b87cd mov      edx, 0x92
00000001402b87d2 mov      byte ptr [rsp + 0x28], r8b
00000001402b87d7 mov      r9, r13
00000001402b87da lea      r8, [rip + 0x3e0bf7]
00000001402b87e1 mov      dword ptr [rsp + 0x20], esi
00000001402b87e5 call     0x1402b49c8
00000001402b87ea mov      esi, dword ptr [rsp + 0x54]
00000001402b87ee mov      eax, esi
00000001402b87f0 cmp      byte ptr [rax + rdi], 0x20
00000001402b87f4 je       0x1402b8810
00000001402b87f6 mov      eax, esi
00000001402b87f8 mov      cl, byte ptr [rax + rdi]
00000001402b87fb cmp      cl, 9
00000001402b87fe je       0x1402b8810
00000001402b8800 test     cl, cl
00000001402b8802 je       0x1402b8810
00000001402b8804 add      esi, ebx
00000001402b8806 mov      dword ptr [rsp + 0x54], esi
00000001402b880a cmp      byte ptr [rsi + rdi], 0x20
00000001402b880e jne      0x1402b87f6
00000001402b8810 sub      esi, r12d
00000001402b8813 lea      rcx, [rip + 0x36cc16]
00000001402b881a add      esi, ebx
00000001402b881c call     0x14007dbe0
00000001402b8821 and      qword ptr [rbp - 0x78], 0
00000001402b8826 lea      rdx, [rbp - 0x78]
00000001402b882a mov      r8d, esi
00000001402b882d mov      ecx, eax
00000001402b882f call     0x1400310f0
00000001402b8834 test     eax, eax
00000001402b8836 je       0x1402b883d
00000001402b8838 xor      r8d, r8d
00000001402b883b jmp      0x1402b884c
00000001402b883d mov      rcx, qword ptr [rbp - 0x78]
00000001402b8841 mov      edx, esi
00000001402b8843 call     0x140031290
00000001402b8848 mov      r8, qword ptr [rbp - 0x78]
00000001402b884c mov      rax, qword ptr [rsp + 0x68]
00000001402b8851 mov      qword ptr [rax + r14*8], r8
00000001402b8855 test     r8, r8
00000001402b8858 je       0x1402b9584
00000001402b885e mov      rcx, qword ptr [rip + 0x66779b]
00000001402b8865 cmp      rcx, r15
00000001402b8868 je       0x1402b88a2
00000001402b886a cmp      byte ptr [rcx + 0x169], 4
00000001402b8871 jb       0x1402b88a2
00000001402b8873 mov      eax, dword ptr [rcx + 0x16c]
00000001402b8879 test     bl, al
00000001402b887b je       0x1402b88a2
00000001402b887d mov      rcx, qword ptr [rcx + 0x158]
00000001402b8884 mov      edx, 0x94
00000001402b8889 mov      qword ptr [rsp + 0x28], r8
00000001402b888e mov      r9, r13
00000001402b8891 lea      r8, [rip + 0x3e0b40]
00000001402b8898 mov      dword ptr [rsp + 0x20], r14d
00000001402b889d call     0x1400fcc1c
00000001402b88a2 mov      r8d, dword ptr [rsp + 0x54]
00000001402b88a7 lea      rdx, [rdi + r12]
00000001402b88ab mov      rcx, qword ptr [rsp + 0x68]
00000001402b88b0 sub      r8d, r12d
00000001402b88b3 mov      rcx, qword ptr [rcx + r14*8]
00000001402b88b7 call     0x1400311e8
00000001402b88bc mov      ecx, dword ptr [rsp + 0x54]
00000001402b88c0 mov      r8, qword ptr [rsp + 0x68]
00000001402b88c5 sub      ecx, r12d
00000001402b88c8 mov      rax, qword ptr [r8 + r14*8]
00000001402b88cc mov      byte ptr [rcx + rax], 0
00000001402b88d0 mov      rcx, qword ptr [rip + 0x667729]
00000001402b88d7 cmp      rcx, r15
00000001402b88da je       0x1402b891d
00000001402b88dc cmp      byte ptr [rcx + 0x169], 4
00000001402b88e3 jb       0x1402b891d
00000001402b88e5 mov      eax, dword ptr [rcx + 0x16c]
00000001402b88eb lea      r12, [rip + 0x3e0ae6]
00000001402b88f2 test     bl, al
00000001402b88f4 je       0x1402b8924
00000001402b88f6 mov      rax, qword ptr [r8 + r14*8]
00000001402b88fa mov      edx, 0x95
00000001402b88ff mov      rcx, qword ptr [rcx + 0x158]
00000001402b8906 mov      r9, r13
00000001402b8909 mov      qword ptr [rsp + 0x28], rax
00000001402b890e mov      r8, r12
00000001402b8911 mov      dword ptr [rsp + 0x20], r14d
00000001402b8916 call     0x1400fcc1c
00000001402b891b jmp      0x1402b8924
00000001402b891d lea      r12, [rip + 0x3e0ab4]
00000001402b8924 movzx    eax, byte ptr [rsp + 0x50]
00000001402b8929 add      r14d, ebx
00000001402b892c cmp      r14d, eax
00000001402b892f jae      0x1402b8945
00000001402b8931 mov      esi, dword ptr [rsp + 0x54]
00000001402b8935 jmp      0x1402b878a
00000001402b893a add      esi, ebx
00000001402b893c mov      dword ptr [rsp + 0x54], esi
00000001402b8940 jmp      0x1402b878a
00000001402b8945 mov      rcx, qword ptr [rip + 0x6676b4]
00000001402b894c cmp      rcx, r15
00000001402b894f je       0x1402b897b
00000001402b8951 cmp      byte ptr [rcx + 0x169], 4
00000001402b8958 jb       0x1402b897b
00000001402b895a mov      eax, dword ptr [rcx + 0x16c]
00000001402b8960 test     bl, al
00000001402b8962 je       0x1402b897b
00000001402b8964 mov      rcx, qword ptr [rcx + 0x158]
00000001402b896b mov      edx, 0x96
00000001402b8970 mov      r9, r13
00000001402b8973 mov      r8, r12
00000001402b8976 call     0x140008874
00000001402b897b xor      edi, edi
00000001402b897d cmp      byte ptr [rsp + 0x50], dil
00000001402b8982 jbe      0x1402b89d3
00000001402b8984 mov      rcx, qword ptr [rip + 0x667675]
00000001402b898b cmp      rcx, r15
00000001402b898e je       0x1402b89c8
00000001402b8990 cmp      byte ptr [rcx + 0x169], 4
00000001402b8997 jb       0x1402b89c8
00000001402b8999 mov      eax, dword ptr [rcx + 0x16c]
00000001402b899f test     bl, al
00000001402b89a1 je       0x1402b89c8
00000001402b89a3 mov      r8, qword ptr [rsp + 0x68]
00000001402b89a8 mov      edx, 0x97
00000001402b89ad mov      rcx, qword ptr [rcx + 0x158]
00000001402b89b4 mov      r9, r13
00000001402b89b7 mov      rax, qword ptr [r8 + rdi*8]
00000001402b89bb mov      r8, r12
00000001402b89be mov      qword ptr [rsp + 0x20], rax
00000001402b89c3 call     0x14003c968
00000001402b89c8 movzx    eax, byte ptr [rsp + 0x50]
00000001402b89cd add      edi, ebx
00000001402b89cf cmp      edi, eax
00000001402b89d1 jb       0x1402b8984
00000001402b89d3 mov      rcx, qword ptr [rip + 0x667626]
00000001402b89da cmp      rcx, r15
00000001402b89dd je       0x1402b8a09
00000001402b89df cmp      byte ptr [rcx + 0x169], 4
00000001402b89e6 jb       0x1402b8a09
00000001402b89e8 mov      eax, dword ptr [rcx + 0x16c]
00000001402b89ee test     bl, al
00000001402b89f0 je       0x1402b8a09
00000001402b89f2 mov      rcx, qword ptr [rcx + 0x158]
00000001402b89f9 mov      edx, 0x98
00000001402b89fe mov      r9, r13
00000001402b8a01 mov      r8, r12
00000001402b8a04 call     0x140008874
00000001402b8a09 mov      r14b, 5
00000001402b8a0c jmp      0x1402b9530
00000001402b8a11 cmp      r14b, 5
00000001402b8a15 jne      0x1402b9530
00000001402b8a1b movsx    r9d, byte ptr [rdi]
00000001402b8a1f xor      eax, eax
00000001402b8a21 mov      qword ptr [rbp - 0x28], rax
00000001402b8a25 mov      word ptr [rbp - 0x20], ax
00000001402b8a29 mov      qword ptr [rbp - 0x38], rax
00000001402b8a2d mov      word ptr [rbp - 0x30], ax
00000001402b8a31 cmp      r9b, 0x23
00000001402b8a35 jne      0x1402b8b72
00000001402b8a3b cmp      byte ptr [rdi + 1], r9b
00000001402b8a3f jne      0x1402b8e08
00000001402b8a45 mov      dword ptr [rsp + 0x54], r8d
00000001402b8a4a mov      eax, r8d
00000001402b8a4d mov      edx, r8d
00000001402b8a50 mov      ecx, r8d
00000001402b8a53 mov      r9d, eax
00000001402b8a56 add      r9, rdi
00000001402b8a59 mov      al, byte ptr [r9]
00000001402b8a5c cmp      al, 0x20
00000001402b8a5e je       0x1402b8a66
00000001402b8a60 cmp      al, 9
00000001402b8a62 jne      0x1402b8a76
00000001402b8a64 cmp      al, 0x20
00000001402b8a66 cmove    ecx, edx
00000001402b8a69 lea      eax, [rcx + 1]
00000001402b8a6c mov      dword ptr [rsp + 0x54], eax
00000001402b8a70 mov      edx, eax
00000001402b8a72 mov      ecx, eax
00000001402b8a74 jmp      0x1402b8a53
00000001402b8a76 mov      r8d, 3
00000001402b8a7c lea      rdx, [rip + 0x36c94d]
00000001402b8a83 mov      rcx, r9
00000001402b8a86 call     0x1405f2018
00000001402b8a8b test     eax, eax
00000001402b8a8d jne      0x1402b95d4
00000001402b8a93 mov      r12, qword ptr [rsp + 0x78]
00000001402b8a98 mov      r14b, bl
00000001402b8a9b test     r12, r12
00000001402b8a9e je       0x1402b8af0
00000001402b8aa0 mov      cl, byte ptr [rsp + 0x50]
00000001402b8aa4 xor      edi, edi
00000001402b8aa6 test     cl, cl
00000001402b8aa8 je       0x1402b8adc
00000001402b8aaa mov      rax, qword ptr [r12 + rdi*8]
00000001402b8aae test     rax, rax
00000001402b8ab1 je       0x1402b8ad3
00000001402b8ab3 or       rdx, 0xffffffffffffffff
00000001402b8ab7 inc      rdx
00000001402b8aba cmp      byte ptr [rax + rdx], 0
00000001402b8abe jne      0x1402b8ab7
00000001402b8ac0 add      edx, ebx
00000001402b8ac2 mov      rcx, rax
00000001402b8ac5 call     0x140031160
00000001402b8aca and      qword ptr [r12 + rdi*8], 0
00000001402b8acf mov      cl, byte ptr [rsp + 0x50]
00000001402b8ad3 add      edi, ebx
00000001402b8ad5 movzx    eax, cl
00000001402b8ad8 cmp      edi, eax
00000001402b8ada jb       0x1402b8aaa
00000001402b8adc movzx    edx, cl
00000001402b8adf mov      rcx, r12
00000001402b8ae2 shl      edx, 3
00000001402b8ae5 call     0x140031160
00000001402b8aea and      qword ptr [rsp + 0x78], 0
00000001402b8af0 mov      rax, qword ptr [rbp - 0x80]
00000001402b8af4 test     rax, rax
00000001402b8af7 je       0x1402b8b0e
00000001402b8af9 movzx    edx, byte ptr [rsp + 0x50]
00000001402b8afe mov      rcx, rax
00000001402b8b01 shl      edx, 2
00000001402b8b04 call     0x140031160
00000001402b8b09 and      qword ptr [rbp - 0x80], 0
00000001402b8b0e mov      r12, qword ptr [rsp + 0x68]
00000001402b8b13 test     r12, r12
00000001402b8b16 je       0x1402b8b68
00000001402b8b18 mov      cl, byte ptr [rsp + 0x50]
00000001402b8b1c xor      edi, edi
00000001402b8b1e test     cl, cl
00000001402b8b20 je       0x1402b8b54
00000001402b8b22 mov      rax, qword ptr [r12 + rdi*8]
00000001402b8b26 test     rax, rax
00000001402b8b29 je       0x1402b8b4b
00000001402b8b2b or       rdx, 0xffffffffffffffff
00000001402b8b2f inc      rdx
00000001402b8b32 cmp      byte ptr [rax + rdx], 0
00000001402b8b36 jne      0x1402b8b2f
00000001402b8b38 add      edx, ebx
00000001402b8b3a mov      rcx, rax
00000001402b8b3d call     0x140031160
00000001402b8b42 and      qword ptr [r12 + rdi*8], 0
00000001402b8b47 mov      cl, byte ptr [rsp + 0x50]
00000001402b8b4b add      edi, ebx
00000001402b8b4d movzx    eax, cl
00000001402b8b50 cmp      edi, eax
00000001402b8b52 jb       0x1402b8b22
00000001402b8b54 movzx    edx, cl
00000001402b8b57 mov      rcx, r12
00000001402b8b5a shl      edx, 3
00000001402b8b5d call     0x140031160
00000001402b8b62 and      qword ptr [rsp + 0x68], 0
00000001402b8b68 mov      byte ptr [rsp + 0x50], 0
00000001402b8b6d jmp      0x1402b9530
00000001402b8b72 lea      eax, [r9 - 0x43]
00000001402b8b76 test     al, 0xdf
00000001402b8b78 jne      0x1402b8e08
00000001402b8b7e mov      al, byte ptr [rdi + 1]
00000001402b8b81 sub      al, 0x48
00000001402b8b83 test     al, 0xdf
00000001402b8b85 jne      0x1402b8e08
00000001402b8b8b xor      dl, dl
00000001402b8b8d mov      dword ptr [rsp + 0x54], r8d
00000001402b8b92 cmp      byte ptr [rdi + 2], 0x30
00000001402b8b96 jl       0x1402b8bbf
00000001402b8b98 mov      ecx, r8d
00000001402b8b9b mov      eax, ecx
00000001402b8b9d mov      cl, byte ptr [rax + rdi]
00000001402b8ba0 cmp      cl, 0x39
00000001402b8ba3 jg       0x1402b8bbf
00000001402b8ba5 movzx    eax, dl
00000001402b8ba8 add      dl, bl
00000001402b8baa mov      byte ptr [rbp + rax - 0x28], cl
00000001402b8bae lea      ecx, [r8 + 1]
00000001402b8bb2 mov      dword ptr [rsp + 0x54], ecx
00000001402b8bb6 mov      r8d, ecx
00000001402b8bb9 cmp      byte ptr [rcx + rdi], 0x30
00000001402b8bbd jge      0x1402b8b9b
00000001402b8bbf mov      rcx, qword ptr [rip + 0x66743a]
00000001402b8bc6 cmp      rcx, r15
00000001402b8bc9 je       0x1402b8bfe
00000001402b8bcb cmp      byte ptr [rcx + 0x169], 4
00000001402b8bd2 jb       0x1402b8bfe
00000001402b8bd4 mov      eax, dword ptr [rcx + 0x16c]
00000001402b8bda test     bl, al
00000001402b8bdc je       0x1402b8bfe
00000001402b8bde mov      rcx, qword ptr [rcx + 0x158]
00000001402b8be5 lea      rax, [rbp - 0x28]
00000001402b8be9 mov      edx, 0x9b
00000001402b8bee mov      qword ptr [rsp + 0x20], rax
00000001402b8bf3 mov      r9, r13
00000001402b8bf6 mov      r8, r12
00000001402b8bf9 call     0x14003c968
00000001402b8bfe xor      r12d, r12d
00000001402b8c01 cmp      byte ptr [rsp + 0x50], r12b
00000001402b8c06 jbe      0x1402b9530
00000001402b8c0c mov      eax, dword ptr [rsp + 0x54]
00000001402b8c10 mov      cl, byte ptr [rax + rdi]
00000001402b8c13 cmp      cl, 0x20
00000001402b8c16 je       0x1402b8dff
00000001402b8c1c cmp      cl, 9
00000001402b8c1f je       0x1402b8dff
00000001402b8c25 xor      r8d, r8d
00000001402b8c28 lea      rcx, [rbp - 0x38]
00000001402b8c2c lea      esi, [r8 + 0xa]
00000001402b8c30 mov      edx, esi
00000001402b8c32 call     0x140031144
00000001402b8c37 mov      edx, dword ptr [rsp + 0x54]
00000001402b8c3b movsx    r9, byte ptr [rdx + rdi]
00000001402b8c40 cmp      r9b, 0x57
00000001402b8c44 jne      0x1402b8c5b
00000001402b8c46 lea      eax, [rdx + 1]
00000001402b8c49 cmp      byte ptr [rax + rdi], r9b
00000001402b8c4d jne      0x1402b9660
00000001402b8c53 movsx    r9d, byte ptr [rsp + 0x62]
00000001402b8c59 jmp      0x1402b8c74
00000001402b8c5b cmp      r9b, 0x4e
00000001402b8c5f jne      0x1402b8c91
00000001402b8c61 lea      eax, [rdx + 1]
00000001402b8c64 cmp      byte ptr [rax + rdi], 0x41
00000001402b8c68 jne      0x1402b9660
00000001402b8c6e movsx    r9d, byte ptr [rsp + 0x63]
00000001402b8c74 lea      r8, [rip + 0x362af5]
00000001402b8c7b mov      rdx, rsi
00000001402b8c7e lea      rcx, [rbp - 0x38]
00000001402b8c82 call     0x140044426
00000001402b8c87 add      dword ptr [rsp + 0x54], 2
00000001402b8c8c jmp      0x1402b8d4d
00000001402b8c91 cmp      r9b, 0x39
00000001402b8c95 ja       0x1402b9660
00000001402b8c9b movabs   rcx, 0x3ff680000000000
00000001402b8ca5 bt       rcx, r9
00000001402b8ca9 jae      0x1402b9660
00000001402b8caf xor      sil, sil
00000001402b8cb2 mov      byte ptr [rsp + 0x61], 0
00000001402b8cb7 mov      byte ptr [rsp + 0x60], 0
00000001402b8cbc cmp      r9b, 0x2b
00000001402b8cc0 je       0x1402b8cc8
00000001402b8cc2 cmp      r9b, 0x2d
00000001402b8cc6 jne      0x1402b8cd6
00000001402b8cc8 add      edx, ebx
00000001402b8cca cmp      r9b, 0x2d
00000001402b8cce mov      dword ptr [rsp + 0x54], edx
00000001402b8cd2 sete     sil
00000001402b8cd6 mov      ecx, edx
00000001402b8cd8 lea      r9, [rbp - 0x70]
00000001402b8cdc add      rcx, rdi
00000001402b8cdf lea      r8, [rsp + 0x60]
00000001402b8ce4 lea      rdx, [rsp + 0x61]
00000001402b8ce9 call     0x140371bd0
00000001402b8cee test     al, al
00000001402b8cf0 je       0x1402b9609
00000001402b8cf6 mov      eax, dword ptr [rbp - 0x70]
00000001402b8cf9 add      dword ptr [rsp + 0x54], eax
00000001402b8cfd movsx    r8d, byte ptr [rsp + 0x64]
00000001402b8d03 movzx    ecx, byte ptr [rsp + 0x60]
00000001402b8d08 movzx    eax, r8b
00000001402b8d0c imul     ecx, eax
00000001402b8d0f mov      eax, 0x51eb851f
00000001402b8d14 mul      ecx
00000001402b8d16 movsx    ecx, byte ptr [rsp + 0x61]
00000001402b8d1b imul     ecx, r8d
00000001402b8d1f lea      r8, [rip + 0x362a4a]
00000001402b8d26 shr      edx, 5
00000001402b8d29 add      dl, cl
00000001402b8d2b movzx    edx, dl
00000001402b8d2e mov      al, dl
00000001402b8d30 neg      al
00000001402b8d32 movzx    ecx, al
00000001402b8d35 test     sil, sil
00000001402b8d38 cmove    ecx, edx
00000001402b8d3b mov      edx, 0xa
00000001402b8d40 movsx    r9d, cl
00000001402b8d44 lea      rcx, [rbp - 0x38]
00000001402b8d48 call     0x140044426
00000001402b8d4d mov      rcx, qword ptr [rbp - 0x80]
00000001402b8d51 cmp      dword ptr [rcx + r12*4], 0
00000001402b8d56 jl       0x1402b8de9
00000001402b8d5c mov      dl, byte ptr [rcx + r12*4]
00000001402b8d60 lea      r9, [rbp - 8]
00000001402b8d64 mov      rax, qword ptr [rsp + 0x68]
00000001402b8d69 lea      r8, [rbp - 0x18]
00000001402b8d6d mov      rcx, qword ptr [rbp - 0x40]
00000001402b8d71 mov      rax, qword ptr [rax + r12*8]
00000001402b8d75 mov      qword ptr [rsp + 0x40], rax
00000001402b8d7a lea      rax, [rbp - 0x38]
00000001402b8d7e mov      qword ptr [rsp + 0x38], rax
00000001402b8d83 lea      rax, [rbp - 0x28]
00000001402b8d87 mov      qword ptr [rsp + 0x30], rax
00000001402b8d8c lea      rax, [rbp + 8]
00000001402b8d90 mov      qword ptr [rsp + 0x28], rax
00000001402b8d95 lea      rax, [rbp + 0x18]
00000001402b8d99 mov      qword ptr [rsp + 0x20], rax
00000001402b8d9e call     0x1402ba648
00000001402b8da3 mov      rcx, qword ptr [rip + 0x667256]
00000001402b8daa cmp      rcx, r15
00000001402b8dad je       0x1402b8de5
00000001402b8daf cmp      byte ptr [rcx + 0x169], 5
00000001402b8db6 jb       0x1402b8de5
00000001402b8db8 mov      eax, dword ptr [rcx + 0x16c]
00000001402b8dbe test     bl, al
00000001402b8dc0 je       0x1402b8de5
00000001402b8dc2 mov      eax, dword ptr [rsp + 0x70]
00000001402b8dc6 lea      r8, [rip + 0x3e060b]
00000001402b8dcd mov      rcx, qword ptr [rcx + 0x158]
00000001402b8dd4 mov      edx, 0x9e
00000001402b8dd9 mov      r9, r13
00000001402b8ddc mov      dword ptr [rsp + 0x20], eax
00000001402b8de0 call     0x1400088d8
00000001402b8de5 add      dword ptr [rsp + 0x70], ebx
00000001402b8de9 movzx    eax, byte ptr [rsp + 0x50]
00000001402b8dee add      r12d, ebx
00000001402b8df1 cmp      r12d, eax
00000001402b8df4 jb       0x1402b8c0c
00000001402b8dfa jmp      0x1402b9530
00000001402b8dff add      dword ptr [rsp + 0x54], ebx
00000001402b8e03 jmp      0x1402b8c0c
00000001402b8e08 mov      r10, qword ptr [rip + 0x6671f1]
00000001402b8e0f cmp      r10, r15
00000001402b8e12 je       0x1402b9530
00000001402b8e18 cmp      byte ptr [r10 + 0x169], r8b
00000001402b8e1f jb       0x1402b9530
00000001402b8e25 mov      eax, dword ptr [r10 + 0x16c]
00000001402b8e2c test     bl, al
00000001402b8e2e je       0x1402b9530
00000001402b8e34 movsx    r8d, byte ptr [rdi + 1]
00000001402b8e39 mov      edx, 0x9a
00000001402b8e3e mov      rcx, qword ptr [r10 + 0x158]
00000001402b8e45 mov      dword ptr [rsp + 0x38], r8d
00000001402b8e4a mov      dword ptr [rsp + 0x30], r9d
00000001402b8e4f mov      byte ptr [rsp + 0x28], r8b
00000001402b8e54 mov      r8, r12
00000001402b8e57 mov      byte ptr [rsp + 0x20], r9b
00000001402b8e5c mov      r9, r13
00000001402b8e5f call     0x1400752c4
00000001402b8e64 jmp      0x1402b9530
00000001402b8e69 cmp      byte ptr [rdi], 0x23
00000001402b8e6c jne      0x1402b9530
00000001402b8e72 cmp      byte ptr [rdi + 1], 0x23
00000001402b8e76 jne      0x1402b9530
00000001402b8e7c xor      r12d, r12d
00000001402b8e7f mov      dword ptr [rsp + 0x54], r8d
00000001402b8e84 mov      esi, r8d
00000001402b8e87 cmp      byte ptr [rsp + 0x50], r12b
00000001402b8e8c jbe      0x1402b8f88
00000001402b8e92 mov      eax, esi
00000001402b8e94 mov      cl, byte ptr [rax + rdi]
00000001402b8e97 cmp      cl, 0x20
00000001402b8e9a je       0x1402b8f7d
00000001402b8ea0 cmp      cl, 9
00000001402b8ea3 je       0x1402b8f7d
00000001402b8ea9 mov      ecx, esi
00000001402b8eab mov      r8d, esi
00000001402b8eae mov      r14d, esi
00000001402b8eb1 mov      edx, esi
00000001402b8eb3 mov      eax, ecx
00000001402b8eb5 mov      cl, byte ptr [rax + rdi]
00000001402b8eb8 cmp      cl, 9
00000001402b8ebb je       0x1402b8eda
00000001402b8ebd mov      r14d, edx
00000001402b8ec0 test     cl, cl
00000001402b8ec2 je       0x1402b8eda
00000001402b8ec4 lea      ecx, [r8 + 1]
00000001402b8ec8 mov      dword ptr [rsp + 0x54], ecx
00000001402b8ecc mov      r14d, ecx
00000001402b8ecf cmp      byte ptr [rcx + rdi], 0x20
00000001402b8ed3 mov      r8d, ecx
00000001402b8ed6 mov      edx, ecx
00000001402b8ed8 jne      0x1402b8eb3
00000001402b8eda sub      r14d, esi
00000001402b8edd lea      rcx, [rip + 0x36c54c]
00000001402b8ee4 add      r14d, ebx
00000001402b8ee7 call     0x14007dbe0
00000001402b8eec and      qword ptr [rbp - 0x78], 0
00000001402b8ef1 lea      rdx, [rbp - 0x78]
00000001402b8ef5 mov      r8d, r14d
00000001402b8ef8 mov      ecx, eax
00000001402b8efa call     0x1400310f0
00000001402b8eff test     eax, eax
00000001402b8f01 je       0x1402b8f07
00000001402b8f03 xor      ecx, ecx
00000001402b8f05 jmp      0x1402b8f17
00000001402b8f07 mov      rcx, qword ptr [rbp - 0x78]
00000001402b8f0b mov      edx, r14d
00000001402b8f0e call     0x140031290
00000001402b8f13 mov      rcx, qword ptr [rbp - 0x78]
00000001402b8f17 mov      rax, qword ptr [rsp + 0x78]
00000001402b8f1c mov      qword ptr [rax + r12*8], rcx
00000001402b8f20 test     rcx, rcx
00000001402b8f23 je       0x1402b96c9
00000001402b8f29 mov      r8d, dword ptr [rsp + 0x54]
00000001402b8f2e mov      edx, esi
00000001402b8f30 sub      r8d, esi
00000001402b8f33 add      rdx, rdi
00000001402b8f36 call     0x1400311e8
00000001402b8f3b mov      ecx, dword ptr [rsp + 0x54]
00000001402b8f3f mov      rdx, qword ptr [rbp - 0x50]
00000001402b8f43 sub      ecx, esi
00000001402b8f45 mov      rsi, qword ptr [rsp + 0x78]
00000001402b8f4a mov      rax, qword ptr [rsi + r12*8]
00000001402b8f4e mov      byte ptr [rcx + rax], 0
00000001402b8f52 mov      r8, qword ptr [rsi + r12*8]
00000001402b8f56 mov      rcx, qword ptr [rbp - 0x48]
00000001402b8f5a call     0x1402b54a4
00000001402b8f5f mov      rcx, qword ptr [rbp - 0x80]
00000001402b8f63 mov      dword ptr [rcx + r12*4], eax
00000001402b8f67 add      r12d, ebx
00000001402b8f6a movzx    eax, byte ptr [rsp + 0x50]
00000001402b8f6f cmp      r12d, eax
00000001402b8f72 jae      0x1402b8f8d
00000001402b8f74 mov      esi, dword ptr [rsp + 0x54]
00000001402b8f78 jmp      0x1402b8e92
00000001402b8f7d add      esi, ebx
00000001402b8f7f mov      dword ptr [rsp + 0x54], esi
00000001402b8f83 jmp      0x1402b8e92
00000001402b8f88 mov      rsi, qword ptr [rsp + 0x78]
00000001402b8f8d mov      rcx, qword ptr [rip + 0x66706c]
00000001402b8f94 cmp      rcx, r15
00000001402b8f97 je       0x1402b8fc7
00000001402b8f99 cmp      byte ptr [rcx + 0x169], 4
00000001402b8fa0 jb       0x1402b8fc7
00000001402b8fa2 mov      eax, dword ptr [rcx + 0x16c]
00000001402b8fa8 test     bl, al
00000001402b8faa je       0x1402b8fc7
00000001402b8fac mov      rcx, qword ptr [rcx + 0x158]
00000001402b8fb3 lea      r8, [rip + 0x3e041e]
00000001402b8fba mov      edx, 0x8d
00000001402b8fbf mov      r9, r13
00000001402b8fc2 call     0x140008874
00000001402b8fc7 xor      edi, edi
00000001402b8fc9 cmp      byte ptr [rsp + 0x50], dil
00000001402b8fce jbe      0x1402b901e
00000001402b8fd0 mov      rcx, qword ptr [rip + 0x667029]
00000001402b8fd7 cmp      rcx, r15
00000001402b8fda je       0x1402b9013
00000001402b8fdc cmp      byte ptr [rcx + 0x169], 4
00000001402b8fe3 jb       0x1402b9013
00000001402b8fe5 mov      eax, dword ptr [rcx + 0x16c]
00000001402b8feb test     bl, al
00000001402b8fed je       0x1402b9013
00000001402b8fef mov      rax, qword ptr [rsi + rdi*8]
00000001402b8ff3 lea      r8, [rip + 0x3e03de]
00000001402b8ffa mov      rcx, qword ptr [rcx + 0x158]
00000001402b9001 mov      edx, 0x8e
00000001402b9006 mov      r9, r13
00000001402b9009 mov      qword ptr [rsp + 0x20], rax
00000001402b900e call     0x14003c968
00000001402b9013 movzx    eax, byte ptr [rsp + 0x50]
00000001402b9018 add      edi, ebx
00000001402b901a cmp      edi, eax
00000001402b901c jb       0x1402b8fd0
00000001402b901e mov      rcx, qword ptr [rip + 0x666fdb]
00000001402b9025 cmp      rcx, r15
00000001402b9028 je       0x1402b9058
00000001402b902a cmp      byte ptr [rcx + 0x169], 4
00000001402b9031 jb       0x1402b9058
00000001402b9033 mov      eax, dword ptr [rcx + 0x16c]
00000001402b9039 test     bl, al
00000001402b903b je       0x1402b9058
00000001402b903d mov      rcx, qword ptr [rcx + 0x158]
00000001402b9044 lea      r8, [rip + 0x3e038d]
00000001402b904b mov      edx, 0x8f
00000001402b9050 mov      r9, r13
00000001402b9053 call     0x140008874
00000001402b9058 mov      r14b, 6
00000001402b905b jmp      0x1402b9530
00000001402b9060 cmp      byte ptr [rdi], 0x23
00000001402b9063 jne      0x1402b9071
00000001402b9065 cmp      byte ptr [rdi + 1], 0x23
00000001402b9069 jne      0x1402b9071
00000001402b906b mov      ecx, dword ptr [rsp + 0x54]
00000001402b906f jmp      0x1402b9078
00000001402b9071 mov      ecx, r8d
00000001402b9074 mov      dword ptr [rsp + 0x54], ecx
00000001402b9078 mov      eax, ecx
00000001402b907a mov      dl, byte ptr [rax + rdi]
00000001402b907d cmp      dl, 0x20
00000001402b9080 je       0x1402b9087
00000001402b9082 cmp      dl, 9
00000001402b9085 jne      0x1402b908b
00000001402b9087 add      ecx, ebx
00000001402b9089 jmp      0x1402b9074
00000001402b908b xor      r8d, r8d
00000001402b908e lea      rcx, [rbp + 0x28]
00000001402b9092 lea      edx, [r8 + 0xa]
00000001402b9096 call     0x140031144
00000001402b909b mov      r9b, 0x23
00000001402b909e mov      byte ptr [rsp + 0x20], 0x23
00000001402b90a3 lea      r8, [rbp + 0x28]
00000001402b90a7 mov      rcx, rdi
00000001402b90aa lea      rdx, [rsp + 0x54]
00000001402b90af call     0x140371f54
00000001402b90b4 xor      r14d, r14d
00000001402b90b7 test     al, al
00000001402b90b9 je       0x1402b9837
00000001402b90bf lea      rdx, [rsp + 0x50]
00000001402b90c4 lea      rcx, [rbp + 0x28]
00000001402b90c8 call     0x140371e2c
00000001402b90cd test     al, al
00000001402b90cf je       0x1402b97e7
00000001402b90d5 movzx    edx, byte ptr [rsp + 0x50]
00000001402b90da test     dl, dl
00000001402b90dc je       0x1402b97b2
00000001402b90e2 mov      rcx, qword ptr [rip + 0x666f17]
00000001402b90e9 cmp      rcx, r15
00000001402b90ec je       0x1402b9146
00000001402b90ee cmp      byte ptr [rcx + 0x169], 4
00000001402b90f5 jb       0x1402b9146
00000001402b90f7 mov      eax, dword ptr [rcx + 0x16c]
00000001402b90fd test     bl, al
00000001402b90ff je       0x1402b9146
00000001402b9101 mov      rcx, qword ptr [rcx + 0x158]
00000001402b9108 mov      eax, edx
00000001402b910a mov      dword ptr [rsp + 0x40], eax
00000001402b910e mov      edx, 0x88
00000001402b9113 lea      rax, [rbp + 8]
00000001402b9117 mov      r9, r13
00000001402b911a mov      qword ptr [rsp + 0x38], rax
00000001402b911f mov      r8, r12
00000001402b9122 lea      rax, [rbp + 0x18]
00000001402b9126 mov      qword ptr [rsp + 0x30], rax
00000001402b912b lea      rax, [rbp - 8]
00000001402b912f mov      qword ptr [rsp + 0x28], rax
00000001402b9134 lea      rax, [rbp - 0x18]
00000001402b9138 mov      qword ptr [rsp + 0x20], rax
00000001402b913d call     0x1402b4a58
00000001402b9142 mov      dl, byte ptr [rsp + 0x50]
00000001402b9146 movzx    edi, dl
00000001402b9149 lea      rsi, [rip + 0x36c2e0]
00000001402b9150 mov      rcx, rsi
00000001402b9153 shl      edi, 3
00000001402b9156 call     0x14007dbe0
00000001402b915b mov      r8d, edi
00000001402b915e mov      qword ptr [rbp - 0x68], r14
00000001402b9162 lea      rdx, [rbp - 0x68]
00000001402b9166 mov      ecx, eax
00000001402b9168 call     0x1400310f0
00000001402b916d test     eax, eax
00000001402b916f jne      0x1402b9778
00000001402b9175 mov      rcx, qword ptr [rbp - 0x68]
00000001402b9179 mov      edx, edi
00000001402b917b call     0x140031290
00000001402b9180 mov      rax, qword ptr [rbp - 0x68]
00000001402b9184 mov      qword ptr [rsp + 0x78], rax
00000001402b9189 test     rax, rax
00000001402b918c je       0x1402b977d
00000001402b9192 movzx    edi, byte ptr [rsp + 0x50]
00000001402b9197 mov      rcx, rsi
00000001402b919a shl      edi, 2
00000001402b919d call     0x14007dbe0
00000001402b91a2 mov      r8d, edi
00000001402b91a5 mov      qword ptr [rbp - 0x60], r14
00000001402b91a9 lea      rdx, [rbp - 0x60]
00000001402b91ad mov      ecx, eax
00000001402b91af call     0x1400310f0
00000001402b91b4 test     eax, eax
00000001402b91b6 jne      0x1402b973f
00000001402b91bc mov      rcx, qword ptr [rbp - 0x60]
00000001402b91c0 mov      edx, edi
00000001402b91c2 call     0x140031290
00000001402b91c7 mov      rax, qword ptr [rbp - 0x60]
00000001402b91cb mov      qword ptr [rbp - 0x80], rax
00000001402b91cf test     rax, rax
00000001402b91d2 je       0x1402b9743
00000001402b91d8 movzx    edi, byte ptr [rsp + 0x50]
00000001402b91dd mov      rcx, rsi
00000001402b91e0 shl      edi, 3
00000001402b91e3 call     0x14007dbe0
00000001402b91e8 mov      r8d, edi
00000001402b91eb mov      qword ptr [rbp - 0x58], r14
00000001402b91ef lea      rdx, [rbp - 0x58]
00000001402b91f3 mov      ecx, eax
00000001402b91f5 call     0x1400310f0
00000001402b91fa test     eax, eax
00000001402b91fc jne      0x1402b9705
00000001402b9202 mov      rcx, qword ptr [rbp - 0x58]
00000001402b9206 mov      edx, edi
00000001402b9208 call     0x140031290
00000001402b920d mov      rax, qword ptr [rbp - 0x58]
00000001402b9211 mov      qword ptr [rsp + 0x68], rax
00000001402b9216 test     rax, rax
00000001402b9219 je       0x1402b970a
00000001402b921f mov      r14b, 4
00000001402b9222 jmp      0x1402b9530
00000001402b9227 cmp      byte ptr [rdi], 0x23
00000001402b922a jne      0x1402b9530
00000001402b9230 cmp      byte ptr [rdi + 1], 0x23
00000001402b9234 jne      0x1402b9530
00000001402b923a mov      dword ptr [rsp + 0x54], r8d
00000001402b923f mov      eax, r8d
00000001402b9242 mov      edx, r8d
00000001402b9245 mov      ecx, r8d
00000001402b9248 mov      r9d, eax
00000001402b924b add      r9, rdi
00000001402b924e mov      al, byte ptr [r9]
00000001402b9251 cmp      al, 0x20
00000001402b9253 je       0x1402b925b
00000001402b9255 cmp      al, 9
00000001402b9257 jne      0x1402b926b
00000001402b9259 cmp      al, 0x20
00000001402b925b cmove    ecx, edx
00000001402b925e lea      eax, [rcx + 1]
00000001402b9261 mov      dword ptr [rsp + 0x54], eax
00000001402b9265 mov      edx, eax
00000001402b9267 mov      ecx, eax
00000001402b9269 jmp      0x1402b9248
00000001402b926b mov      r8d, 5
00000001402b9271 lea      rdx, [rip + 0x345ef8]
00000001402b9278 mov      rcx, r9
00000001402b927b call     0x1405f2018
00000001402b9280 test     eax, eax
00000001402b9282 jne      0x1402b987e
00000001402b9288 mov      r14b, 3
00000001402b928b jmp      0x1402b9530
00000001402b9290 cmp      byte ptr [rdi], 0x23
00000001402b9293 je       0x1402b940f
00000001402b9299 cmp      byte ptr [rdi + 1], 0x23
00000001402b929d je       0x1402b940f
00000001402b92a3 mov      r8, qword ptr [rbp - 0x50]
00000001402b92a7 mov      rdx, rdi
00000001402b92aa mov      rcx, qword ptr [rbp - 0x48]
00000001402b92ae call     0x1402bd54c
00000001402b92b3 test     al, al
00000001402b92b5 jne      0x1402b9530
00000001402b92bb mov      rcx, qword ptr [rip + 0x666d3e]
00000001402b92c2 cmp      rcx, r15
00000001402b92c5 je       0x1402b92f1
00000001402b92c7 cmp      byte ptr [rcx + 0x169], 2
00000001402b92ce jb       0x1402b92f1
00000001402b92d0 mov      eax, dword ptr [rcx + 0x16c]
00000001402b92d6 test     bl, al
00000001402b92d8 je       0x1402b92f1
00000001402b92da mov      rcx, qword ptr [rcx + 0x158]
00000001402b92e1 mov      edx, 0x7f
00000001402b92e6 mov      r9, r13
00000001402b92e9 mov      r8, r12
00000001402b92ec call     0x140008874
00000001402b92f1 mov      r14d, dword ptr [rsp + 0x70]
00000001402b92f6 test     r14d, r14d
00000001402b92f9 jne      0x1402b932c
00000001402b92fb mov      rsi, qword ptr [rbp - 0x50]
00000001402b92ff mov      r8d, 4
00000001402b9305 mov      rdi, qword ptr [rbp - 0x40]
00000001402b9309 mov      rcx, rdi
00000001402b930c cmp      dword ptr [rsi + 0x144], 0
00000001402b9313 setne    dl
00000001402b9316 add      dl, 3
00000001402b9319 call     0x1402bf030
00000001402b931e mov      rcx, qword ptr [rdi]
00000001402b9321 xor      r8d, r8d
00000001402b9324 mov      rdx, rsi
00000001402b9327 call     0x1402b9f44
00000001402b932c mov      r15, qword ptr [rsp + 0x78]
00000001402b9331 test     r15, r15
00000001402b9334 je       0x1402b937c
00000001402b9336 xor      edi, edi
00000001402b9338 cmp      byte ptr [rsp + 0x50], dil
00000001402b933d jbe      0x1402b936c
00000001402b933f mov      rcx, qword ptr [r15 + rdi*8]
00000001402b9343 test     rcx, rcx
00000001402b9346 je       0x1402b9361
00000001402b9348 or       rdx, 0xffffffffffffffff
00000001402b934c inc      rdx
00000001402b934f cmp      byte ptr [rcx + rdx], 0
00000001402b9353 jne      0x1402b934c
00000001402b9355 add      edx, ebx
00000001402b9357 call     0x140031160
00000001402b935c and      qword ptr [r15 + rdi*8], 0
00000001402b9361 movzx    eax, byte ptr [rsp + 0x50]
00000001402b9366 add      edi, ebx
00000001402b9368 cmp      edi, eax
00000001402b936a jb       0x1402b933f
00000001402b936c movzx    edx, byte ptr [rsp + 0x50]
00000001402b9371 mov      rcx, r15
00000001402b9374 shl      edx, 3
00000001402b9377 call     0x140031160
00000001402b937c mov      rax, qword ptr [rbp - 0x80]
00000001402b9380 test     rax, rax
00000001402b9383 je       0x1402b9395
00000001402b9385 movzx    edx, byte ptr [rsp + 0x50]
00000001402b938a mov      rcx, rax
00000001402b938d shl      edx, 2
00000001402b9390 call     0x140031160
00000001402b9395 mov      r15, qword ptr [rsp + 0x68]
00000001402b939a test     r15, r15
00000001402b939d je       0x1402b93e5
00000001402b939f xor      edi, edi
00000001402b93a1 cmp      byte ptr [rsp + 0x50], dil
00000001402b93a6 jbe      0x1402b93d5
00000001402b93a8 mov      rcx, qword ptr [r15 + rdi*8]
00000001402b93ac test     rcx, rcx
00000001402b93af je       0x1402b93ca
00000001402b93b1 or       rdx, 0xffffffffffffffff
00000001402b93b5 inc      rdx
00000001402b93b8 cmp      byte ptr [rcx + rdx], 0
00000001402b93bc jne      0x1402b93b5
00000001402b93be add      edx, ebx
00000001402b93c0 call     0x140031160
00000001402b93c5 and      qword ptr [r15 + rdi*8], 0
00000001402b93ca movzx    ecx, byte ptr [rsp + 0x50]
00000001402b93cf add      edi, ebx
00000001402b93d1 cmp      edi, ecx
00000001402b93d3 jb       0x1402b93a8
00000001402b93d5 movzx    edx, byte ptr [rsp + 0x50]
00000001402b93da mov      rcx, r15
00000001402b93dd shl      edx, 3
00000001402b93e0 call     0x140031160
00000001402b93e5 mov      eax, r14d
00000001402b93e8 mov      rcx, qword ptr [rbp + 0x38]
00000001402b93ec xor      rcx, rsp
00000001402b93ef call     0x1405f45b0
00000001402b93f4 mov      rbx, qword ptr [rsp + 0x198]
00000001402b93fc add      rsp, 0x140
00000001402b9403 pop      r15
00000001402b9405 pop      r14
00000001402b9407 pop      r13
00000001402b9409 pop      r12
00000001402b940b pop      rdi
00000001402b940c pop      rsi
00000001402b940d pop      rbp
00000001402b940e ret      
00000001402b940f mov      r14b, bl
00000001402b9412 cmp      byte ptr [rdi], 0x23
00000001402b9415 jne      0x1402b9530
00000001402b941b cmp      byte ptr [rdi + 1], 0x23
00000001402b941f jne      0x1402b9530
00000001402b9425 mov      esi, 2
00000001402b942a mov      dword ptr [rsp + 0x54], esi
00000001402b942e mov      r8d, esi
00000001402b9431 mov      eax, esi
00000001402b9433 mov      edx, esi
00000001402b9435 mov      r9d, esi
00000001402b9438 mov      cl, byte ptr [rax + rdi]
00000001402b943b cmp      cl, 0x20
00000001402b943e je       0x1402b9448
00000001402b9440 cmp      cl, 9
00000001402b9443 jne      0x1402b945d
00000001402b9445 cmp      cl, 0x20
00000001402b9448 cmove    edx, r8d
00000001402b944c lea      eax, [rdx + 1]
00000001402b944f mov      dword ptr [rsp + 0x54], eax
00000001402b9453 mov      r8d, eax
00000001402b9456 mov      edx, eax
00000001402b9458 mov      r9d, eax
00000001402b945b jmp      0x1402b9438
00000001402b945d lea      eax, [r9 - 1]
00000001402b9461 xor      r8d, r8d
00000001402b9464 mov      dword ptr [rsp + 0x54], eax
00000001402b9468 lea      rcx, [rbp - 0x18]
00000001402b946c mov      byte ptr [rax + rdi], 0x20
00000001402b9470 lea      r14d, [r8 + 0xa]
00000001402b9474 mov      edx, r14d
00000001402b9477 call     0x140031144
00000001402b947c xor      r8d, r8d
00000001402b947f lea      rcx, [rbp - 8]
00000001402b9483 mov      edx, r14d
00000001402b9486 call     0x140031144
00000001402b948b xor      r8d, r8d
00000001402b948e lea      rcx, [rbp + 8]
00000001402b9492 mov      edx, r14d
00000001402b9495 call     0x140031144
00000001402b949a xor      r8d, r8d
00000001402b949d lea      rcx, [rbp + 0x18]
00000001402b94a1 mov      edx, r14d
00000001402b94a4 call     0x140031144
00000001402b94a9 mov      r9b, 0x20
00000001402b94ac mov      byte ptr [rsp + 0x20], 0x2c
00000001402b94b1 lea      r8, [rbp - 0x18]
00000001402b94b5 mov      rcx, rdi
00000001402b94b8 lea      rdx, [rsp + 0x54]
00000001402b94bd call     0x140371f54
00000001402b94c2 test     al, al
00000001402b94c4 je       0x1402b9931
00000001402b94ca mov      r9b, 0x20
00000001402b94cd mov      byte ptr [rsp + 0x20], 0x2c
00000001402b94d2 lea      r8, [rbp - 8]
00000001402b94d6 mov      rcx, rdi
00000001402b94d9 lea      rdx, [rsp + 0x54]
00000001402b94de call     0x140371f54
00000001402b94e3 test     al, al
00000001402b94e5 je       0x1402b990b
00000001402b94eb mov      r9b, 0x20
00000001402b94ee mov      byte ptr [rsp + 0x20], 0x2c
00000001402b94f3 lea      r8, [rbp + 8]
00000001402b94f7 mov      rcx, rdi
00000001402b94fa lea      rdx, [rsp + 0x54]
00000001402b94ff call     0x140371f54
00000001402b9504 test     al, al
00000001402b9506 je       0x1402b98e5
00000001402b950c mov      r9b, 0x20
00000001402b950f mov      byte ptr [rsp + 0x20], 0x20
00000001402b9514 lea      r8, [rbp + 0x18]
00000001402b9518 mov      rcx, rdi
00000001402b951b lea      rdx, [rsp + 0x54]
00000001402b9520 call     0x140371f54
00000001402b9525 test     al, al
00000001402b9527 je       0x1402b98b3
00000001402b952d mov      r14b, sil
00000001402b9530 mov      rsi, qword ptr [rsp + 0x58]
00000001402b9535 mov      rdi, rsi
00000001402b9538 test     rsi, rsi
00000001402b953b je       0x1402b92f1
00000001402b9541 jmp      0x1402b955c
00000001402b9543 lea      rdx, [rip + 0x33e276]
00000001402b954a mov      cl, 0xd
00000001402b954c cmp      al, cl
00000001402b954e je       0x1402b956e
00000001402b9550 add      rdx, rbx
00000001402b9553 mov      cl, byte ptr [rdx]
00000001402b9555 test     cl, cl
00000001402b9557 jne      0x1402b954c
00000001402b9559 add      rsi, rbx
00000001402b955c mov      al, byte ptr [rsi]
00000001402b955e test     al, al
00000001402b9560 jne      0x1402b9543
00000001402b9562 xor      esi, esi
00000001402b9564 mov      qword ptr [rsp + 0x58], rsi
00000001402b9569 jmp      0x1402b861f
00000001402b956e mov      qword ptr [rsp + 0x58], rsi
00000001402b9573 test     rsi, rsi
00000001402b9576 je       0x1402b861f
00000001402b957c mov      byte ptr [rsi], 0
00000001402b957f inc      rsi
00000001402b9582 jmp      0x1402b9564
00000001402b9584 mov      rcx, qword ptr [rip + 0x666a75]
00000001402b958b cmp      rcx, r15
00000001402b958e je       0x1402b92f1
00000001402b9594 cmp      byte ptr [rcx + 0x169], 2
00000001402b959b jb       0x1402b92f1
00000001402b95a1 mov      eax, dword ptr [rcx + 0x16c]
00000001402b95a7 test     bl, al
00000001402b95a9 je       0x1402b92f1
00000001402b95af mov      rcx, qword ptr [rcx + 0x158]
00000001402b95b6 lea      r8, [rip + 0x3dfe1b]
00000001402b95bd mov      edx, 0x93
00000001402b95c2 mov      dword ptr [rsp + 0x20], r14d
00000001402b95c7 mov      r9, r13
00000001402b95ca call     0x1400088d8
00000001402b95cf jmp      0x1402b92f1
00000001402b95d4 mov      rcx, qword ptr [rip + 0x666a25]
00000001402b95db cmp      rcx, r15
00000001402b95de je       0x1402b9967
00000001402b95e4 cmp      byte ptr [rcx + 0x169], 2
00000001402b95eb jb       0x1402b9967
00000001402b95f1 mov      eax, dword ptr [rcx + 0x16c]
00000001402b95f7 test     bl, al
00000001402b95f9 je       0x1402b9967
00000001402b95ff mov      edx, 0x99
00000001402b9604 jmp      0x1402b9955
00000001402b9609 mov      rcx, qword ptr [rip + 0x6669f0]
00000001402b9610 cmp      rcx, r15
00000001402b9613 je       0x1402b9967
00000001402b9619 cmp      byte ptr [rcx + 0x169], 2
00000001402b9620 jb       0x1402b9967
00000001402b9626 mov      eax, dword ptr [rcx + 0x16c]
00000001402b962c test     bl, al
00000001402b962e je       0x1402b9967
00000001402b9634 mov      eax, dword ptr [rsp + 0x54]
00000001402b9638 lea      r8, [rip + 0x3dfd99]
00000001402b963f mov      rcx, qword ptr [rcx + 0x158]
00000001402b9646 add      rax, rdi
00000001402b9649 mov      edx, 0x9c
00000001402b964e mov      qword ptr [rsp + 0x20], rax
00000001402b9653 mov      r9, r13
00000001402b9656 call     0x14003c968
00000001402b965b jmp      0x1402b9967
00000001402b9660 mov      r10, qword ptr [rip + 0x666999]
00000001402b9667 cmp      r10, r15
00000001402b966a je       0x1402b9967
00000001402b9670 cmp      byte ptr [r10 + 0x169], 2
00000001402b9678 jb       0x1402b9967
00000001402b967e mov      eax, dword ptr [r10 + 0x16c]
00000001402b9685 test     bl, al
00000001402b9687 je       0x1402b9967
00000001402b968d mov      rcx, qword ptr [r10 + 0x158]
00000001402b9694 lea      eax, [rdx + 1]
00000001402b9697 movsx    r8d, byte ptr [rax + rdi]
00000001402b969c mov      edx, 0x9d
00000001402b96a1 mov      dword ptr [rsp + 0x38], r8d
00000001402b96a6 mov      dword ptr [rsp + 0x30], r9d
00000001402b96ab mov      byte ptr [rsp + 0x28], r8b
00000001402b96b0 lea      r8, [rip + 0x3dfd21]
00000001402b96b7 mov      byte ptr [rsp + 0x20], r9b
00000001402b96bc mov      r9, r13
00000001402b96bf call     0x1400752c4
00000001402b96c4 jmp      0x1402b9967
00000001402b96c9 mov      rcx, qword ptr [rip + 0x666930]
00000001402b96d0 cmp      rcx, r15
00000001402b96d3 je       0x1402b9967
00000001402b96d9 cmp      byte ptr [rcx + 0x169], 2
00000001402b96e0 jb       0x1402b9967
00000001402b96e6 mov      eax, dword ptr [rcx + 0x16c]
00000001402b96ec test     bl, al
00000001402b96ee je       0x1402b9967
00000001402b96f4 mov      edx, 0x8c
00000001402b96f9 lea      r8, [rip + 0x3dfcd8]
00000001402b9700 jmp      0x1402b9958
00000001402b9705 mov      qword ptr [rsp + 0x68], r14
00000001402b970a mov      rcx, qword ptr [rip + 0x6668ef]
00000001402b9711 cmp      rcx, r15
00000001402b9714 je       0x1402b92fb
00000001402b971a cmp      byte ptr [rcx + 0x169], 2
00000001402b9721 jb       0x1402b92fb
00000001402b9727 mov      eax, dword ptr [rcx + 0x16c]
00000001402b972d test     bl, al
00000001402b972f je       0x1402b92fb
00000001402b9735 mov      edx, 0x8b
00000001402b973a jmp      0x1402b9867
00000001402b973f mov      qword ptr [rbp - 0x80], r14
00000001402b9743 mov      rcx, qword ptr [rip + 0x6668b6]
00000001402b974a cmp      rcx, r15
00000001402b974d je       0x1402b92fb
00000001402b9753 cmp      byte ptr [rcx + 0x169], 2
00000001402b975a jb       0x1402b92fb
00000001402b9760 mov      eax, dword ptr [rcx + 0x16c]
00000001402b9766 test     bl, al
00000001402b9768 je       0x1402b92fb
00000001402b976e mov      edx, 0x8a
00000001402b9773 jmp      0x1402b9867
00000001402b9778 mov      qword ptr [rsp + 0x78], r14
00000001402b977d mov      rcx, qword ptr [rip + 0x66687c]
00000001402b9784 cmp      rcx, r15
00000001402b9787 je       0x1402b92fb
00000001402b978d cmp      byte ptr [rcx + 0x169], 2
00000001402b9794 jb       0x1402b92fb
00000001402b979a mov      eax, dword ptr [rcx + 0x16c]
00000001402b97a0 test     bl, al
00000001402b97a2 je       0x1402b92fb
00000001402b97a8 mov      edx, 0x89
00000001402b97ad jmp      0x1402b9867
00000001402b97b2 mov      rcx, qword ptr [rip + 0x666847]
00000001402b97b9 cmp      rcx, r15
00000001402b97bc je       0x1402b92fb
00000001402b97c2 cmp      byte ptr [rcx + 0x169], 2
00000001402b97c9 jb       0x1402b92fb
00000001402b97cf mov      eax, dword ptr [rcx + 0x16c]
00000001402b97d5 test     bl, al
00000001402b97d7 je       0x1402b92fb
00000001402b97dd mov      edx, 0x87
00000001402b97e2 jmp      0x1402b9867
00000001402b97e7 mov      rcx, qword ptr [rip + 0x666812]
00000001402b97ee cmp      rcx, r15
00000001402b97f1 je       0x1402b92fb
00000001402b97f7 cmp      byte ptr [rcx + 0x169], 2
00000001402b97fe jb       0x1402b92fb
00000001402b9804 mov      eax, dword ptr [rcx + 0x16c]
00000001402b980a test     bl, al
00000001402b980c je       0x1402b92fb
00000001402b9812 mov      rcx, qword ptr [rcx + 0x158]
00000001402b9819 lea      rax, [rbp + 0x28]
00000001402b981d mov      edx, 0x86
00000001402b9822 mov      qword ptr [rsp + 0x20], rax
00000001402b9827 mov      r9, r13
00000001402b982a mov      r8, r12
00000001402b982d call     0x14003c968
00000001402b9832 jmp      0x1402b92fb
00000001402b9837 mov      rcx, qword ptr [rip + 0x6667c2]
00000001402b983e cmp      rcx, r15
00000001402b9841 je       0x1402b92fb
00000001402b9847 cmp      byte ptr [rcx + 0x169], 2
00000001402b984e jb       0x1402b92fb
00000001402b9854 mov      eax, dword ptr [rcx + 0x16c]
00000001402b985a test     bl, al
00000001402b985c je       0x1402b92fb
00000001402b9862 mov      edx, 0x85
00000001402b9867 mov      rcx, qword ptr [rcx + 0x158]
00000001402b986e mov      r9, r13
00000001402b9871 mov      r8, r12
00000001402b9874 call     0x140008874
00000001402b9879 jmp      0x1402b92fb
00000001402b987e mov      rcx, qword ptr [rip + 0x66677b]
00000001402b9885 cmp      rcx, r15
00000001402b9888 je       0x1402b9967
00000001402b988e cmp      byte ptr [rcx + 0x169], 2
00000001402b9895 jb       0x1402b9967
00000001402b989b mov      eax, dword ptr [rcx + 0x16c]
00000001402b98a1 test     bl, al
00000001402b98a3 je       0x1402b9967
00000001402b98a9 mov      edx, 0x84
00000001402b98ae jmp      0x1402b9955
00000001402b98b3 mov      rcx, qword ptr [rip + 0x666746]
00000001402b98ba cmp      rcx, r15
00000001402b98bd je       0x1402b9967
00000001402b98c3 cmp      byte ptr [rcx + 0x169], sil
00000001402b98ca jb       0x1402b9967
00000001402b98d0 mov      eax, dword ptr [rcx + 0x16c]
00000001402b98d6 test     bl, al
00000001402b98d8 je       0x1402b9967
00000001402b98de mov      edx, 0x83
00000001402b98e3 jmp      0x1402b9955
00000001402b98e5 mov      rcx, qword ptr [rip + 0x666714]
00000001402b98ec cmp      rcx, r15
00000001402b98ef je       0x1402b9967
00000001402b98f1 cmp      byte ptr [rcx + 0x169], sil
00000001402b98f8 jb       0x1402b9967
00000001402b98fa mov      eax, dword ptr [rcx + 0x16c]
00000001402b9900 test     bl, al
00000001402b9902 je       0x1402b9967
00000001402b9904 mov      edx, 0x82
00000001402b9909 jmp      0x1402b9955
00000001402b990b mov      rcx, qword ptr [rip + 0x6666ee]
00000001402b9912 cmp      rcx, r15
00000001402b9915 je       0x1402b9967
00000001402b9917 cmp      byte ptr [rcx + 0x169], sil
00000001402b991e jb       0x1402b9967
00000001402b9920 mov      eax, dword ptr [rcx + 0x16c]
00000001402b9926 test     bl, al
00000001402b9928 je       0x1402b9967
00000001402b992a mov      edx, 0x81
00000001402b992f jmp      0x1402b9955
00000001402b9931 mov      rcx, qword ptr [rip + 0x6666c8]
00000001402b9938 cmp      rcx, r15
00000001402b993b je       0x1402b9967
00000001402b993d cmp      byte ptr [rcx + 0x169], sil
00000001402b9944 jb       0x1402b9967
00000001402b9946 mov      eax, dword ptr [rcx + 0x16c]
00000001402b994c test     bl, al
00000001402b994e je       0x1402b9967
00000001402b9950 mov      edx, 0x80
00000001402b9955 mov      r8, r12
00000001402b9958 mov      rcx, qword ptr [rcx + 0x158]
00000001402b995f mov      r9, r13
00000001402b9962 call     0x140008874
00000001402b9967 xor      r14d, r14d
00000001402b996a jmp      0x1402b92fb