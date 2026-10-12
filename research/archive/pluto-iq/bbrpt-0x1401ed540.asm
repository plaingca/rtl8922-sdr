00000001401ed540 mov      qword ptr [rsp + 0x20], rbx
00000001401ed545 push     rbp
00000001401ed546 push     rsi
00000001401ed547 push     rdi
00000001401ed548 push     r12
00000001401ed54a push     r13
00000001401ed54c push     r14
00000001401ed54e push     r15
00000001401ed550 mov      rbp, rsp
00000001401ed553 sub      rsp, 0x20
00000001401ed557 mov      rax, qword ptr [rcx + 0x8b88]
00000001401ed55e mov      r12, rcx
00000001401ed561 mov      qword ptr [rbp + 0x50], rax
00000001401ed565 mov      rbx, rdx
00000001401ed568 mov      rax, qword ptr [rcx + 0x798]
00000001401ed56f lea      rcx, [rdx + 0xd0]
00000001401ed576 lea      rdx, [rip + 0x421373]
00000001401ed57d movzx    edi, word ptr [rax + 0x96ca]
00000001401ed584 mov      word ptr [rbp + 0x40], di
00000001401ed588 call     0x140031550
00000001401ed58d mov      r14d, edi
00000001401ed590 lea      rsi, [rip + 0x425bf9]
00000001401ed597 lea      edi, [rdi + rdi*2]
00000001401ed59a mov      rcx, rsi
00000001401ed59d shl      edi, 5
00000001401ed5a0 call     0x14007dbe0
00000001401ed5a5 xor      r15d, r15d
00000001401ed5a8 lea      rdx, [rbp + 0x48]
00000001401ed5ac mov      r8d, edi
00000001401ed5af mov      qword ptr [rbp + 0x48], r15
00000001401ed5b3 mov      ecx, eax
00000001401ed5b5 call     0x1400310f0
00000001401ed5ba test     eax, eax
00000001401ed5bc je       0x1401ed5c3
00000001401ed5be mov      eax, r15d
00000001401ed5c1 jmp      0x1401ed5d2
00000001401ed5c3 mov      rcx, qword ptr [rbp + 0x48]
00000001401ed5c7 mov      edx, edi
00000001401ed5c9 call     0x140031290
00000001401ed5ce mov      rax, qword ptr [rbp + 0x48]
00000001401ed5d2 mov      rcx, rsi
00000001401ed5d5 mov      qword ptr [rbx + 0xa0], rax
00000001401ed5dc call     0x14007dbe0
00000001401ed5e1 mov      r8d, edi
00000001401ed5e4 mov      qword ptr [rbp + 0x48], r15
00000001401ed5e8 lea      rdx, [rbp + 0x48]
00000001401ed5ec mov      ecx, eax
00000001401ed5ee call     0x1400310f0
00000001401ed5f3 test     eax, eax
00000001401ed5f5 je       0x1401ed5fc
00000001401ed5f7 mov      rax, r15
00000001401ed5fa jmp      0x1401ed60b
00000001401ed5fc mov      rcx, qword ptr [rbp + 0x48]
00000001401ed600 mov      edx, edi
00000001401ed602 call     0x140031290
00000001401ed607 mov      rax, qword ptr [rbp + 0x48]
00000001401ed60b mov      rcx, rsi
00000001401ed60e mov      qword ptr [rbx + 0xa8], rax
00000001401ed615 call     0x14007dbe0
00000001401ed61a mov      r8d, edi
00000001401ed61d mov      qword ptr [rbp + 0x48], r15
00000001401ed621 lea      rdx, [rbp + 0x48]
00000001401ed625 mov      ecx, eax
00000001401ed627 call     0x1400310f0
00000001401ed62c test     eax, eax
00000001401ed62e je       0x1401ed635
00000001401ed630 mov      r13, r15
00000001401ed633 jmp      0x1401ed644
00000001401ed635 mov      rcx, qword ptr [rbp + 0x48]
00000001401ed639 mov      edx, edi
00000001401ed63b call     0x140031290
00000001401ed640 mov      r13, qword ptr [rbp + 0x48]
00000001401ed644 mov      rsi, qword ptr [rbx + 0xa0]
00000001401ed64b mov      qword ptr [rbx + 0xb0], r13
00000001401ed652 test     rsi, rsi
00000001401ed655 je       0x1401ed95f
00000001401ed65b mov      r15, qword ptr [rbx + 0xa8]
00000001401ed662 test     r15, r15
00000001401ed665 je       0x1401ed95f
00000001401ed66b test     r13, r13
00000001401ed66e je       0x1401ed95f
00000001401ed674 xor      r8d, r8d
00000001401ed677 mov      edx, edi
00000001401ed679 mov      rcx, rsi
00000001401ed67c call     0x140031144
00000001401ed681 xor      r8d, r8d
00000001401ed684 mov      edx, edi
00000001401ed686 mov      rcx, r15
00000001401ed689 call     0x140031144
00000001401ed68e xor      r8d, r8d
00000001401ed691 mov      edx, edi
00000001401ed693 mov      rcx, r13
00000001401ed696 call     0x140031144
00000001401ed69b lea      rcx, [rip + 0x425aee]
00000001401ed6a2 lea      edi, [r14*8]
00000001401ed6aa call     0x14007dbe0
00000001401ed6af xor      r14d, r14d
00000001401ed6b2 lea      rdx, [rbp + 0x48]
00000001401ed6b6 mov      r8d, edi
00000001401ed6b9 mov      qword ptr [rbp + 0x48], r14
00000001401ed6bd mov      ecx, eax
00000001401ed6bf call     0x1400310f0
00000001401ed6c4 test     eax, eax
00000001401ed6c6 je       0x1401ed6cd
00000001401ed6c8 mov      eax, r14d
00000001401ed6cb jmp      0x1401ed6dc
00000001401ed6cd mov      rcx, qword ptr [rbp + 0x48]
00000001401ed6d1 mov      edx, edi
00000001401ed6d3 call     0x140031290
00000001401ed6d8 mov      rax, qword ptr [rbp + 0x48]
00000001401ed6dc lea      rcx, [rip + 0x425aad]
00000001401ed6e3 mov      qword ptr [rbx + 0xb8], rax
00000001401ed6ea call     0x14007dbe0
00000001401ed6ef mov      r8d, edi
00000001401ed6f2 mov      qword ptr [rbp + 0x48], r14
00000001401ed6f6 lea      rdx, [rbp + 0x48]
00000001401ed6fa mov      ecx, eax
00000001401ed6fc call     0x1400310f0
00000001401ed701 test     eax, eax
00000001401ed703 je       0x1401ed70a
00000001401ed705 mov      rax, r14
00000001401ed708 jmp      0x1401ed719
00000001401ed70a mov      rcx, qword ptr [rbp + 0x48]
00000001401ed70e mov      edx, edi
00000001401ed710 call     0x140031290
00000001401ed715 mov      rax, qword ptr [rbp + 0x48]
00000001401ed719 lea      rcx, [rip + 0x425a70]
00000001401ed720 mov      qword ptr [rbx + 0xc0], rax
00000001401ed727 call     0x14007dbe0
00000001401ed72c mov      r8d, edi
00000001401ed72f mov      qword ptr [rbp + 0x48], r14
00000001401ed733 lea      rdx, [rbp + 0x48]
00000001401ed737 mov      ecx, eax
00000001401ed739 call     0x1400310f0
00000001401ed73e test     eax, eax
00000001401ed740 je       0x1401ed747
00000001401ed742 mov      rax, r14
00000001401ed745 jmp      0x1401ed756
00000001401ed747 mov      rcx, qword ptr [rbp + 0x48]
00000001401ed74b mov      edx, edi
00000001401ed74d call     0x140031290
00000001401ed752 mov      rax, qword ptr [rbp + 0x48]
00000001401ed756 mov      rcx, qword ptr [rbx + 0xb8]
00000001401ed75d mov      qword ptr [rbx + 0xc8], rax
00000001401ed764 test     rcx, rcx
00000001401ed767 je       0x1401ed958
00000001401ed76d cmp      qword ptr [rbx + 0xc0], r14
00000001401ed774 je       0x1401ed958
00000001401ed77a test     rax, rax
00000001401ed77d je       0x1401ed958
00000001401ed783 xor      r8d, r8d
00000001401ed786 mov      edx, edi
00000001401ed788 call     0x140031144
00000001401ed78d mov      rcx, qword ptr [rbx + 0xc0]
00000001401ed794 xor      r8d, r8d
00000001401ed797 mov      edx, edi
00000001401ed799 call     0x140031144
00000001401ed79e mov      rcx, qword ptr [rbx + 0xc8]
00000001401ed7a5 xor      r8d, r8d
00000001401ed7a8 mov      edx, edi
00000001401ed7aa call     0x140031144
00000001401ed7af xor      edx, edx
00000001401ed7b1 cmp      dx, word ptr [rbp + 0x40]
00000001401ed7b5 jae      0x1401ed93f
00000001401ed7bb lea      rdi, [rsi + 0x54]
00000001401ed7bf mov      rax, qword ptr [rbp + 0x50]
00000001401ed7c3 lea      rsi, [rdi - 0x54]
00000001401ed7c7 mov      byte ptr [rdi - 0x1c], dl
00000001401ed7ca mov      r8d, 0x60
00000001401ed7d0 mov      byte ptr [rdi], dl
00000001401ed7d2 mov      rcx, r12
00000001401ed7d5 mov      dword ptr [rdi - 0x14], 0x60
00000001401ed7dc mov      rdx, rsi
00000001401ed7df mov      rax, qword ptr [rax + 0x50]
00000001401ed7e3 call     qword ptr [rip + 0x496b0f]
00000001401ed7e9 mov      rax, qword ptr [rdi - 0x44]
00000001401ed7ed xor      edx, edx
00000001401ed7ef test     rax, rax
00000001401ed7f2 je       0x1401ed95f
00000001401ed7f8 add      rax, 0x20
00000001401ed7fc mov      qword ptr [rdi - 0x4c], rsi
00000001401ed800 mov      qword ptr [rdi - 0x3c], rax
00000001401ed804 mov      qword ptr [rdi - 0x2c], rax
00000001401ed808 add      rax, 0x40
00000001401ed80c mov      qword ptr [rdi - 0x34], rax
00000001401ed810 add      rdi, 0x60
00000001401ed814 mov      qword ptr [rsi], rsi
00000001401ed817 mov      rax, qword ptr [rbx + 0xb8]
00000001401ed81e movzx    ecx, r14w
00000001401ed822 inc      r14w
00000001401ed826 mov      qword ptr [rax + rcx*8], rsi
00000001401ed82a inc      word ptr [rbx + 0xd8]
00000001401ed831 cmp      r14w, word ptr [rbp + 0x40]
00000001401ed836 jb       0x1401ed7bf
00000001401ed838 lea      rdi, [r15 + 0x54]
00000001401ed83c movzx    r14d, dx
00000001401ed840 mov      r15d, 0x120
00000001401ed846 mov      rax, qword ptr [rbp + 0x50]
00000001401ed84a lea      rsi, [rdi - 0x54]
00000001401ed84e mov      byte ptr [rdi], dl
00000001401ed850 mov      r8d, r15d
00000001401ed853 mov      byte ptr [rdi - 0x1c], 1
00000001401ed857 mov      rdx, rsi
00000001401ed85a mov      dword ptr [rdi - 0x14], r15d
00000001401ed85e mov      rcx, r12
00000001401ed861 mov      rax, qword ptr [rax + 0x50]
00000001401ed865 call     qword ptr [rip + 0x496a8d]
00000001401ed86b mov      rax, qword ptr [rdi - 0x44]
00000001401ed86f xor      edx, edx
00000001401ed871 test     rax, rax
00000001401ed874 je       0x1401ed95f
00000001401ed87a add      rax, 0x20
00000001401ed87e mov      qword ptr [rdi - 0x4c], rsi
00000001401ed882 mov      qword ptr [rdi - 0x3c], rax
00000001401ed886 mov      qword ptr [rdi - 0x2c], rax
00000001401ed88a add      rax, 0x100
00000001401ed890 mov      qword ptr [rdi - 0x34], rax
00000001401ed894 add      rdi, 0x60
00000001401ed898 mov      qword ptr [rsi], rsi
00000001401ed89b mov      rax, qword ptr [rbx + 0xc0]
00000001401ed8a2 movzx    ecx, r14w
00000001401ed8a6 inc      r14w
00000001401ed8aa mov      qword ptr [rax + rcx*8], rsi
00000001401ed8ae inc      word ptr [rbx + 0xdc]
00000001401ed8b5 cmp      r14w, word ptr [rbp + 0x40]
00000001401ed8ba jb       0x1401ed846
00000001401ed8bc lea      rsi, [r13 + 0x54]
00000001401ed8c0 movzx    r15d, dx
00000001401ed8c4 mov      r13d, 0x820
00000001401ed8ca lea      edi, [rdx + 2]
00000001401ed8cd mov      rax, qword ptr [rbp + 0x50]
00000001401ed8d1 lea      r14, [rsi - 0x54]
00000001401ed8d5 mov      byte ptr [rsi], dl
00000001401ed8d7 mov      r8d, r13d
00000001401ed8da mov      byte ptr [rsi - 0x1c], dil
00000001401ed8de mov      rdx, r14
00000001401ed8e1 mov      dword ptr [rsi - 0x14], r13d
00000001401ed8e5 mov      rcx, r12
00000001401ed8e8 mov      rax, qword ptr [rax + 0x50]
00000001401ed8ec call     qword ptr [rip + 0x496a06]
00000001401ed8f2 mov      rax, qword ptr [rsi - 0x44]
00000001401ed8f6 xor      edx, edx
00000001401ed8f8 test     rax, rax
00000001401ed8fb je       0x1401ed964
00000001401ed8fd add      rax, 0x20
00000001401ed901 mov      qword ptr [rsi - 0x4c], r14
00000001401ed905 mov      qword ptr [rsi - 0x3c], rax
00000001401ed909 mov      qword ptr [rsi - 0x2c], rax
00000001401ed90d add      rax, 0x800
00000001401ed913 mov      qword ptr [rsi - 0x34], rax
00000001401ed917 add      rsi, 0x60
00000001401ed91b mov      qword ptr [r14], r14
00000001401ed91e mov      rax, qword ptr [rbx + 0xc8]
00000001401ed925 movzx    ecx, r15w
00000001401ed929 inc      r15w
00000001401ed92d mov      qword ptr [rax + rcx*8], r14
00000001401ed931 inc      word ptr [rbx + 0xe0]
00000001401ed938 cmp      r15w, word ptr [rbp + 0x40]
00000001401ed93d jb       0x1401ed8cd
00000001401ed93f mov      word ptr [rbx + 0xda], dx
00000001401ed946 mov      edi, edx
00000001401ed948 mov      word ptr [rbx + 0xde], dx
00000001401ed94f mov      word ptr [rbx + 0xe2], dx
00000001401ed956 jmp      0x1401ed99c
00000001401ed958 mov      edi, 2
00000001401ed95d jmp      0x1401ed967
00000001401ed95f mov      edi, 2
00000001401ed964 xor      r14d, r14d
00000001401ed967 mov      rdx, rbx
00000001401ed96a mov      rcx, r12
00000001401ed96d call     0x1401f002c
00000001401ed972 mov      qword ptr [rbx + 0xa0], r14
00000001401ed979 mov      qword ptr [rbx + 0xa8], r14
00000001401ed980 mov      qword ptr [rbx + 0xb0], r14
00000001401ed987 mov      qword ptr [rbx + 0xb8], r14
00000001401ed98e mov      qword ptr [rbx + 0xc0], r14
00000001401ed995 mov      qword ptr [rbx + 0xc8], r14
00000001401ed99c mov      rbx, qword ptr [rsp + 0x78]
00000001401ed9a1 mov      eax, edi
00000001401ed9a3 add      rsp, 0x20
00000001401ed9a7 pop      r15
00000001401ed9a9 pop      r14
00000001401ed9ab pop      r13
00000001401ed9ad pop      r12
00000001401ed9af pop      rdi
00000001401ed9b0 pop      rsi
00000001401ed9b1 pop      rbp
00000001401ed9b2 ret      