00000001404ed3d0 mov      qword ptr [rsp + 8], rbx
00000001404ed3d5 mov      qword ptr [rsp + 0x10], rsi
00000001404ed3da mov      qword ptr [rsp + 0x18], rdi
00000001404ed3df push     r14
00000001404ed3e1 sub      rsp, 0x20
00000001404ed3e5 xor      esi, esi
00000001404ed3e7 mov      r14, rcx
00000001404ed3ea mov      rcx, qword ptr [rcx + 0x1390]
00000001404ed3f1 mov      rbx, r8
00000001404ed3f4 test     r8, r8
00000001404ed3f7 jne      0x1404ed446
00000001404ed3f9 mov      rcx, qword ptr [rip + 0x432c00]
00000001404ed400 lea      rax, [rip + 0x432bf9]
00000001404ed407 cmp      rcx, rax
00000001404ed40a je       0x1404ed43c
00000001404ed40c cmp      byte ptr [rcx + 0x169], 2
00000001404ed413 jb       0x1404ed43c
00000001404ed415 mov      eax, dword ptr [rcx + 0x16c]
00000001404ed41b test     al, 8
00000001404ed41d je       0x1404ed43c
00000001404ed41f mov      rcx, qword ptr [rcx + 0x158]
00000001404ed426 lea      edx, [rsi + 0x11]
00000001404ed429 lea      r9, [rip + 0x16fcb0]
00000001404ed430 lea      r8, [rip + 0x4132a9]
00000001404ed437 call     0x140008874
00000001404ed43c mov      eax, 5
00000001404ed441 jmp      0x1404edbc0
00000001404ed446 mov      eax, 0x8c
00000001404ed44b cmp      edx, eax
00000001404ed44d jg       0x1404ed8d2
00000001404ed453 je       0x1404ed8c6
00000001404ed459 cmp      edx, 0x7a
00000001404ed45c jg       0x1404ed605
00000001404ed462 je       0x1404ed5f5
00000001404ed468 cmp      edx, 0x70
00000001404ed46b jg       0x1404ed541
00000001404ed471 je       0x1404ed531
00000001404ed477 sub      edx, 0x60
00000001404ed47a je       0x1404edbbe
00000001404ed480 sub      edx, 8
00000001404ed483 je       0x1404ed521
00000001404ed489 sub      edx, 1
00000001404ed48c je       0x1404ed50c
00000001404ed48e sub      edx, 1
00000001404ed491 je       0x1404ed503
00000001404ed493 sub      edx, 1
00000001404ed496 je       0x1404ed4eb
00000001404ed498 sub      edx, 1
00000001404ed49b je       0x1404ed4d3
00000001404ed49d sub      edx, 2
00000001404ed4a0 je       0x1404ed4bb
00000001404ed4a2 cmp      edx, 1
00000001404ed4a5 jne      0x1404edb51
00000001404ed4ab mov      rdx, rbx
00000001404ed4ae mov      rcx, r14
00000001404ed4b1 call     0x140502e88
00000001404ed4b6 jmp      0x1404edbbc
00000001404ed4bb mov      rax, qword ptr [rcx + 0xbb8]
00000001404ed4c2 mov      edx, dword ptr [r8]
00000001404ed4c5 mov      rcx, r14
00000001404ed4c8 call     qword ptr [rip + 0x196e2a]
00000001404ed4ce jmp      0x1404edbbc
00000001404ed4d3 mov      rax, qword ptr [rcx + 0xb30]
00000001404ed4da mov      dl, byte ptr [r8]
00000001404ed4dd mov      rcx, r14
00000001404ed4e0 call     qword ptr [rip + 0x196e12]
00000001404ed4e6 jmp      0x1404edbbc
00000001404ed4eb mov      rax, qword ptr [rcx + 0xa88]
00000001404ed4f2 mov      rdx, rbx
00000001404ed4f5 mov      rcx, r14
00000001404ed4f8 call     qword ptr [rip + 0x196dfa]
00000001404ed4fe jmp      0x1404edbbc
00000001404ed503 mov      rax, qword ptr [rcx + 0xa80]
00000001404ed50a jmp      0x1404ed4da
00000001404ed50c mov      rax, qword ptr [rcx + 0xbb0]
00000001404ed513 mov      rcx, r14
00000001404ed516 call     qword ptr [rip + 0x196ddc]
00000001404ed51c jmp      0x1404edbbc
00000001404ed521 mov      rdx, rbx
00000001404ed524 mov      rcx, r14
00000001404ed527 call     0x1404f92ac
00000001404ed52c jmp      0x1404edbbc
00000001404ed531 mov      rdx, rbx
00000001404ed534 mov      rcx, r14
00000001404ed537 call     0x140502968
00000001404ed53c jmp      0x1404edbbc
00000001404ed541 sub      edx, 0x72
00000001404ed544 je       0x1404ed5e5
00000001404ed54a sub      edx, 1
00000001404ed54d je       0x1404ed5d5
00000001404ed553 sub      edx, 1
00000001404ed556 je       0x1404ed5c5
00000001404ed558 sub      edx, 1
00000001404ed55b je       0x1404ed5b5
00000001404ed55d sub      edx, 1
00000001404ed560 je       0x1404ed5a5
00000001404ed562 sub      edx, 1
00000001404ed565 je       0x1404ed595
00000001404ed567 sub      edx, 1
00000001404ed56a je       0x1404ed585
00000001404ed56c cmp      edx, 1
00000001404ed56f jne      0x1404edb51
00000001404ed575 mov      rdx, rbx
00000001404ed578 mov      rcx, r14
00000001404ed57b call     0x1404f8154
00000001404ed580 jmp      0x1404edbbc
00000001404ed585 mov      rdx, rbx
00000001404ed588 mov      rcx, r14
00000001404ed58b call     0x1404f7e70
00000001404ed590 jmp      0x1404edbbc
00000001404ed595 mov      rdx, rbx
00000001404ed598 mov      rcx, r14
00000001404ed59b call     0x1404f82b0
00000001404ed5a0 jmp      0x1404edbbc
00000001404ed5a5 mov      rdx, rbx
00000001404ed5a8 mov      rcx, r14
00000001404ed5ab call     0x1404ffc1c
00000001404ed5b0 jmp      0x1404edbbc
00000001404ed5b5 mov      rdx, rbx
00000001404ed5b8 mov      rcx, r14
00000001404ed5bb call     0x1404fd620
00000001404ed5c0 jmp      0x1404edbbc
00000001404ed5c5 mov      rdx, rbx
00000001404ed5c8 mov      rcx, r14
00000001404ed5cb call     0x140500a4c
00000001404ed5d0 jmp      0x1404edbbc
00000001404ed5d5 mov      rdx, rbx
00000001404ed5d8 mov      rcx, r14
00000001404ed5db call     0x1404fd548
00000001404ed5e0 jmp      0x1404edbbc
00000001404ed5e5 mov      rdx, rbx
00000001404ed5e8 mov      rcx, r14
00000001404ed5eb call     0x140500a24
00000001404ed5f0 jmp      0x1404edbbc
00000001404ed5f5 mov      rdx, rbx
00000001404ed5f8 mov      rcx, r14
00000001404ed5fb call     0x1404ffec8
00000001404ed600 jmp      0x1404edbbc
00000001404ed605 mov      eax, 0x83
00000001404ed60a cmp      edx, eax
00000001404ed60c jg       0x1404ed6d0
00000001404ed612 je       0x1404ed6c4
00000001404ed618 sub      edx, 0x7b
00000001404ed61b je       0x1404ed6b4
00000001404ed621 sub      edx, 1
00000001404ed624 je       0x1404ed6a4
00000001404ed626 sub      edx, 1
00000001404ed629 je       0x1404ed698
00000001404ed62b sub      edx, 1
00000001404ed62e je       0x1404ed688
00000001404ed630 sub      edx, 1
00000001404ed633 je       0x1404ed678
00000001404ed635 sub      edx, 1
00000001404ed638 je       0x1404ed66c
00000001404ed63a sub      edx, 1
00000001404ed63d je       0x1404ed654
00000001404ed63f cmp      edx, 1
00000001404ed642 jne      0x1404edb51
00000001404ed648 mov      rax, qword ptr [rcx + 0x408]
00000001404ed64f jmp      0x1404ed4f2
00000001404ed654 mov      rax, qword ptr [rcx + 0x938]
00000001404ed65b mov      rdx, rbx
00000001404ed65e mov      rcx, r14
00000001404ed661 call     qword ptr [rip + 0x196c91]
00000001404ed667 jmp      0x1404edbbe
00000001404ed66c mov      rax, qword ptr [rcx + 0x400]
00000001404ed673 jmp      0x1404ed4f2
00000001404ed678 mov      rdx, rbx
00000001404ed67b mov      rcx, r14
00000001404ed67e call     0x1404ee1b4
00000001404ed683 jmp      0x1404edbbc
00000001404ed688 mov      rdx, rbx
00000001404ed68b mov      rcx, r14
00000001404ed68e call     0x1404f7e58
00000001404ed693 jmp      0x1404edbbc
00000001404ed698 mov      rax, qword ptr [rcx + 0x2c8]
00000001404ed69f jmp      0x1404ed4f2
00000001404ed6a4 mov      rdx, rbx
00000001404ed6a7 mov      rcx, r14
00000001404ed6aa call     0x1405001ec
00000001404ed6af jmp      0x1404edbbc
00000001404ed6b4 mov      rdx, rbx
00000001404ed6b7 mov      rcx, r14
00000001404ed6ba call     0x14010b7f0
00000001404ed6bf jmp      0x1404edbbc
00000001404ed6c4 mov      rax, qword ptr [rcx + 0x3f0]
00000001404ed6cb jmp      0x1404ed4f2
00000001404ed6d0 sub      edx, 0x84
00000001404ed6d6 je       0x1404ed8b6
00000001404ed6dc sub      edx, 1
00000001404ed6df je       0x1404edbbe
00000001404ed6e5 sub      edx, 1
00000001404ed6e8 je       0x1404ed870
00000001404ed6ee sub      edx, 1
00000001404ed6f1 je       0x1404ed82b
00000001404ed6f7 sub      edx, 1
00000001404ed6fa je       0x1404ed81b
00000001404ed700 sub      edx, 1
00000001404ed703 je       0x1404ed80f
00000001404ed709 sub      edx, 1
00000001404ed70c je       0x1404ed727
00000001404ed70e cmp      edx, 1
00000001404ed711 jne      0x1404edb51
00000001404ed717 mov      rdx, rbx
00000001404ed71a mov      rcx, r14
00000001404ed71d call     0x14050d8a8
00000001404ed722 jmp      0x1404edbbc
00000001404ed727 mov      edx, 7
00000001404ed72c mov      rcx, r14
00000001404ed72f call     0x14036c07c
00000001404ed734 test     al, al
00000001404ed736 jne      0x1404ed76b
00000001404ed738 mov      edx, 8
00000001404ed73d mov      rcx, r14
00000001404ed740 call     0x14036c07c
00000001404ed745 test     al, al
00000001404ed747 jne      0x1404ed76b
00000001404ed749 mov      edx, 9
00000001404ed74e mov      rcx, r14
00000001404ed751 call     0x14036c07c
00000001404ed756 test     al, al
00000001404ed758 jne      0x1404ed76b
00000001404ed75a mov      edx, 0xa
00000001404ed75f mov      rcx, r14
00000001404ed762 call     0x14036c07c
00000001404ed767 test     al, al
00000001404ed769 je       0x1404ed778
00000001404ed76b mov      edx, dword ptr [rbx]
00000001404ed76d xor      r8d, r8d
00000001404ed770 mov      rcx, r14
00000001404ed773 call     0x14050d9a0
00000001404ed778 mov      edx, 0xb
00000001404ed77d mov      rcx, r14
00000001404ed780 call     0x14036c07c
00000001404ed785 test     al, al
00000001404ed787 jne      0x1404ed7c0
00000001404ed789 mov      edx, 0x10
00000001404ed78e mov      rcx, r14
00000001404ed791 call     0x14036c07c
00000001404ed796 test     al, al
00000001404ed798 jne      0x1404ed7c0
00000001404ed79a mov      edx, 0xd
00000001404ed79f mov      rcx, r14
00000001404ed7a2 call     0x14036c07c
00000001404ed7a7 test     al, al
00000001404ed7a9 jne      0x1404ed7c0
00000001404ed7ab mov      edx, 0xc
00000001404ed7b0 mov      rcx, r14
00000001404ed7b3 call     0x14036c07c
00000001404ed7b8 test     al, al
00000001404ed7ba je       0x1404edbbe
00000001404ed7c0 mov      rcx, qword ptr [rip + 0x432839]
00000001404ed7c7 lea      rax, [rip + 0x432832]
00000001404ed7ce cmp      rcx, rax
00000001404ed7d1 je       0x1404edbbe
00000001404ed7d7 cmp      byte ptr [rcx + 0x169], 2
00000001404ed7de jb       0x1404edbbe
00000001404ed7e4 mov      eax, dword ptr [rcx + 0x16c]
00000001404ed7ea test     al, 8
00000001404ed7ec je       0x1404edbbe
00000001404ed7f2 mov      rcx, qword ptr [rcx + 0x158]
00000001404ed7f9 lea      r8, [rip + 0x412ee0]
00000001404ed800 mov      edx, 0x12
00000001404ed805 call     0x140001b88
00000001404ed80a jmp      0x1404edbbe
00000001404ed80f mov      rax, qword ptr [rcx + 0x490]
00000001404ed816 jmp      0x1404ed4f2
00000001404ed81b mov      rdx, rbx
00000001404ed81e mov      rcx, r14
00000001404ed821 call     0x1404ff634
00000001404ed826 jmp      0x1404edbbe
00000001404ed82b mov      rax, qword ptr [r14]
00000001404ed82e mov      edx, 0x9c10
00000001404ed833 movzx    ebx, byte ptr [r8]
00000001404ed837 mov      rcx, r14
00000001404ed83a mov      rdi, qword ptr [rax]
00000001404ed83d mov      rax, qword ptr [rdi + 0x20]
00000001404ed841 call     qword ptr [rip + 0x196ab1]
00000001404ed847 mov      edx, 0x9c10
00000001404ed84c mov      rcx, r14
00000001404ed84f mov      r8d, eax
00000001404ed852 mov      eax, ebx
00000001404ed854 shl      eax, 0x10
00000001404ed857 and      r8d, 0xff00ffff
00000001404ed85e or       r8d, eax
00000001404ed861 mov      rax, qword ptr [rdi + 0x28]
00000001404ed865 call     qword ptr [rip + 0x196a8d]
00000001404ed86b jmp      0x1404edbbe
00000001404ed870 mov      rax, qword ptr [r14]
00000001404ed873 mov      edx, 0x9c00
00000001404ed878 mov      bl, byte ptr [r8]
00000001404ed87b mov      rcx, r14
00000001404ed87e mov      rdi, qword ptr [rax]
00000001404ed881 mov      rax, qword ptr [rdi]
00000001404ed884 call     qword ptr [rip + 0x196a6e]
00000001404ed88a mov      cl, al
00000001404ed88c mov      edx, 0x9c00
00000001404ed891 and      al, 0xfe
00000001404ed893 or       cl, 1
00000001404ed896 movzx    r8d, al
00000001404ed89a cmp      bl, 1
00000001404ed89d movzx    eax, cl
00000001404ed8a0 mov      rcx, r14
00000001404ed8a3 cmove    r8d, eax
00000001404ed8a7 mov      rax, qword ptr [rdi + 8]
00000001404ed8ab call     qword ptr [rip + 0x196a47]
00000001404ed8b1 jmp      0x1404edbbe
00000001404ed8b6 mov      rdx, rbx
00000001404ed8b9 mov      rcx, r14
00000001404ed8bc call     0x1404fffcc
00000001404ed8c1 jmp      0x1404edbbc
00000001404ed8c6 mov      rax, qword ptr [rcx + 0x498]
00000001404ed8cd jmp      0x1404ed4c2
00000001404ed8d2 mov      eax, 0xa0
00000001404ed8d7 cmp      edx, eax
00000001404ed8d9 jg       0x1404eda48
00000001404ed8df je       0x1404eda38
00000001404ed8e5 mov      eax, 0x95
00000001404ed8ea cmp      edx, eax
00000001404ed8ec jg       0x1404ed99c
00000001404ed8f2 je       0x1404ed98f
00000001404ed8f8 sub      edx, 0x8d
00000001404ed8fe je       0x1404ed97f
00000001404ed900 sub      edx, 1
00000001404ed903 je       0x1404ed973
00000001404ed905 sub      edx, 1
00000001404ed908 je       0x1404edbbe
00000001404ed90e sub      edx, 1
00000001404ed911 je       0x1404ed963
00000001404ed913 sub      edx, 1
00000001404ed916 je       0x1404ed953
00000001404ed918 sub      edx, 1
00000001404ed91b je       0x1404ed947
00000001404ed91d sub      edx, 1
00000001404ed920 je       0x1404ed93b
00000001404ed922 cmp      edx, 1
00000001404ed925 jne      0x1404edb51
00000001404ed92b mov      rdx, rbx
00000001404ed92e mov      rcx, r14
00000001404ed931 call     0x1404ff5c0
00000001404ed936 jmp      0x1404edbbc
00000001404ed93b mov      rax, qword ptr [rcx + 0x920]
00000001404ed942 jmp      0x1404ed4f2
00000001404ed947 mov      rax, qword ptr [rcx + 0x2d8]
00000001404ed94e jmp      0x1404ed4f2
00000001404ed953 mov      rdx, rbx
00000001404ed956 mov      rcx, r14
00000001404ed959 call     0x1404fd1c0
00000001404ed95e jmp      0x1404edbbc
00000001404ed963 mov      rdx, rbx
00000001404ed966 mov      rcx, r14
00000001404ed969 call     0x1404eeb24
00000001404ed96e jmp      0x1404edbbc
00000001404ed973 mov      rax, qword ptr [rcx + 0x8a0]
00000001404ed97a jmp      0x1404ed4c2
00000001404ed97f mov      rdx, rbx
00000001404ed982 mov      rcx, r14
00000001404ed985 call     0x1404fcd94
00000001404ed98a jmp      0x1404edbbc
00000001404ed98f mov      rcx, r14
00000001404ed992 call     0x1404eb478
00000001404ed997 jmp      0x1404edbbc
00000001404ed99c sub      edx, 0x96
00000001404ed9a2 je       0x1404eda2c
00000001404ed9a8 sub      edx, 1
00000001404ed9ab je       0x1404eda1c
00000001404ed9ad sub      edx, 1
00000001404ed9b0 je       0x1404eda0c
00000001404ed9b2 sub      edx, 2
00000001404ed9b5 je       0x1404ed9fc
00000001404ed9b7 sub      edx, 1
00000001404ed9ba je       0x1404ed9ec
00000001404ed9bc sub      edx, 1
00000001404ed9bf je       0x1404ed9e0
00000001404ed9c1 sub      edx, 1
00000001404ed9c4 je       0x1404ed9d4
00000001404ed9c6 cmp      edx, 1
00000001404ed9c9 jne      0x1404edb51
00000001404ed9cf jmp      0x1404edbbe
00000001404ed9d4 mov      rax, qword ptr [rcx + 0x338]
00000001404ed9db jmp      0x1404ed4f2
00000001404ed9e0 mov      rax, qword ptr [rcx + 0x328]
00000001404ed9e7 jmp      0x1404ed4f2
00000001404ed9ec mov      rdx, rbx
00000001404ed9ef mov      rcx, r14
00000001404ed9f2 call     0x1404ee158
00000001404ed9f7 jmp      0x1404edbbc
00000001404ed9fc mov      dl, byte ptr [r8]
00000001404ed9ff mov      rcx, r14
00000001404eda02 call     0x1404eec20
00000001404eda07 jmp      0x1404edbbc
00000001404eda0c mov      dl, byte ptr [r8]
00000001404eda0f mov      rcx, r14
00000001404eda12 call     0x1404fd4e4
00000001404eda17 jmp      0x1404edbbc
00000001404eda1c mov      rdx, rbx
00000001404eda1f mov      rcx, r14
00000001404eda22 call     0x1404fd3d8
00000001404eda27 jmp      0x1404edbbc
00000001404eda2c mov      rax, qword ptr [rcx + 0x3e8]
00000001404eda33 jmp      0x1404ed4f2
00000001404eda38 mov      rdx, rbx
00000001404eda3b mov      rcx, r14
00000001404eda3e call     0x1404fd45c
00000001404eda43 jmp      0x1404edbbc
00000001404eda48 mov      eax, 0xab
00000001404eda4d cmp      edx, eax
00000001404eda4f jg       0x1404edb22
00000001404eda55 je       0x1404edb12
00000001404eda5b sub      edx, 0xa1
00000001404eda61 je       0x1404edb02
00000001404eda67 sub      edx, 1
00000001404eda6a je       0x1404edaf2
00000001404eda70 sub      edx, 2
00000001404eda73 je       0x1404edae2
00000001404eda75 sub      edx, 1
00000001404eda78 je       0x1404edad2
00000001404eda7a sub      edx, 1
00000001404eda7d je       0x1404edac2
00000001404eda7f sub      edx, 1
00000001404eda82 je       0x1404edab2
00000001404eda84 sub      edx, 1
00000001404eda87 je       0x1404edaa2
00000001404eda89 cmp      edx, 2
00000001404eda8c jne      0x1404edb51
00000001404eda92 mov      rdx, rbx
00000001404eda95 mov      rcx, r14
00000001404eda98 call     0x1404ed2fc
00000001404eda9d jmp      0x1404edbbc
00000001404edaa2 mov      rdx, rbx
00000001404edaa5 mov      rcx, r14
00000001404edaa8 call     0x14050d7dc
00000001404edaad jmp      0x1404edbbc
00000001404edab2 mov      rdx, rbx
00000001404edab5 mov      rcx, r14
00000001404edab8 call     0x1404ffa80
00000001404edabd jmp      0x1404edbbe
00000001404edac2 mov      rdx, rbx
00000001404edac5 mov      rcx, r14
00000001404edac8 call     0x1404eedec
00000001404edacd jmp      0x1404edbbc
00000001404edad2 mov      rdx, rbx
00000001404edad5 mov      rcx, r14
00000001404edad8 call     0x140508440
00000001404edadd jmp      0x1404edbbc
00000001404edae2 mov      dl, byte ptr [r8]
00000001404edae5 mov      rcx, r14
00000001404edae8 call     0x140501214
00000001404edaed jmp      0x1404edbbc
00000001404edaf2 mov      rdx, rbx
00000001404edaf5 mov      rcx, r14
00000001404edaf8 call     0x1404ff8e8
00000001404edafd jmp      0x1404edbbc
00000001404edb02 mov      rdx, rbx
00000001404edb05 mov      rcx, r14
00000001404edb08 call     0x14050044c
00000001404edb0d jmp      0x1404edbbc
00000001404edb12 mov      rdx, rbx
00000001404edb15 mov      rcx, r14
00000001404edb18 call     0x1404eec78
00000001404edb1d jmp      0x1404edbbc
00000001404edb22 sub      edx, 0xac
00000001404edb28 je       0x1404edbb1
00000001404edb2e sub      edx, 1
00000001404edb31 je       0x1404edba5
00000001404edb33 sub      edx, 1
00000001404edb36 je       0x1404edb99
00000001404edb38 sub      edx, 1
00000001404edb3b je       0x1404edb8c
00000001404edb3d sub      edx, 1
00000001404edb40 je       0x1404edb7f
00000001404edb42 sub      edx, 1
00000001404edb45 je       0x1404edb72
00000001404edb47 sub      edx, 1
00000001404edb4a je       0x1404edb65
00000001404edb4c cmp      edx, 1
00000001404edb4f je       0x1404edb58
00000001404edb51 mov      eax, 0xb
00000001404edb56 jmp      0x1404edbc0
00000001404edb58 mov      rdx, rbx
00000001404edb5b mov      rcx, r14
00000001404edb5e call     0x140501184
00000001404edb63 jmp      0x1404edbbc
00000001404edb65 mov      rdx, rbx
00000001404edb68 mov      rcx, r14
00000001404edb6b call     0x1404f8018
00000001404edb70 jmp      0x1404edbbc
00000001404edb72 mov      rdx, rbx
00000001404edb75 mov      rcx, r14
00000001404edb78 call     0x14050ab9c
00000001404edb7d jmp      0x1404edbbc
00000001404edb7f mov      rdx, rbx
00000001404edb82 mov      rcx, r14
00000001404edb85 call     0x1404ee9b8
00000001404edb8a jmp      0x1404edbbc
00000001404edb8c mov      rdx, rbx
00000001404edb8f mov      rcx, r14
00000001404edb92 call     0x1404f7df4
00000001404edb97 jmp      0x1404edbbc
00000001404edb99 mov      rax, qword ptr [rcx + 0x220]
00000001404edba0 jmp      0x1404ed4f2
00000001404edba5 mov      rax, qword ptr [rcx + 0x340]
00000001404edbac jmp      0x1404ed4f2
00000001404edbb1 mov      rdx, rbx
00000001404edbb4 mov      rcx, r14
00000001404edbb7 call     0x140500908
00000001404edbbc mov      esi, eax
00000001404edbbe mov      eax, esi
00000001404edbc0 mov      rbx, qword ptr [rsp + 0x30]
00000001404edbc5 mov      rsi, qword ptr [rsp + 0x38]
00000001404edbca mov      rdi, qword ptr [rsp + 0x40]
00000001404edbcf add      rsp, 0x20
00000001404edbd3 pop      r14
00000001404edbd5 ret      