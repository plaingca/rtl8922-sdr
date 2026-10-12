000000014051f500 push     rbp
000000014051f502 push     rbx
000000014051f503 push     rsi
000000014051f504 push     rdi
000000014051f505 push     r12
000000014051f507 push     r13
000000014051f509 push     r14
000000014051f50b push     r15
000000014051f50d mov      rbp, rsp
000000014051f510 sub      rsp, 0x78
000000014051f514 mov      rax, qword ptr [rip + 0x407f45]
000000014051f51b xor      rax, rsp
000000014051f51e mov      qword ptr [rbp - 0x10], rax
000000014051f522 mov      r13, qword ptr [rcx]
000000014051f525 xor      eax, eax
000000014051f527 mov      r15, qword ptr [rcx + 0x140]
000000014051f52e xorps    xmm0, xmm0
000000014051f531 movups   xmmword ptr [rbp - 0x2f], xmm0
000000014051f535 mov      qword ptr [rbp - 0x1f], rax
000000014051f539 mov      r14d, r9d
000000014051f53c mov      dword ptr [rbp - 0x17], eax
000000014051f53f mov      rsi, r8
000000014051f542 mov      word ptr [rbp - 0x13], ax
000000014051f546 mov      rbx, rdx
000000014051f549 mov      byte ptr [rbp - 0x11], al
000000014051f54c mov      rdi, rcx
000000014051f54f call     0x1405202e0
000000014051f554 cmp      r14d, eax
000000014051f557 je       0x14051f587
000000014051f559 mov      rax, qword ptr [rdi + 0x18]
000000014051f55d lea      r8, [rip + 0x1402ac]
000000014051f564 mov      rcx, qword ptr [rdi + 8]
000000014051f568 mov      r9d, r14d
000000014051f56b mov      edx, 2
000000014051f570 mov      rax, qword ptr [rax + 0x118]
000000014051f577 call     qword ptr [rip + 0x164d7b]
000000014051f57d mov      eax, 0xa
000000014051f582 jmp      0x14051fb97
000000014051f587 movzx    ecx, word ptr [rbx + 0x36]
000000014051f58b mov      r8d, 1
000000014051f591 movzx    eax, cx
000000014051f594 mov      edx, 0x3ffe
000000014051f599 sub      ax, r8w
000000014051f59d cmp      ax, dx
000000014051f5a0 ja       0x14051fb6e
000000014051f5a6 mov      eax, dword ptr [rdi + 0xeec]
000000014051f5ac xor      r12d, r12d
000000014051f5af mov      r14d, 0x400
000000014051f5b5 cmp      eax, r8d
000000014051f5b8 jne      0x14051f5cc
000000014051f5ba mov      al, byte ptr [rbx + 0x59]
000000014051f5bd neg      al
000000014051f5bf sbb      edx, edx
000000014051f5c1 and      edx, 0x80
000000014051f5c7 add      edx, r14d
000000014051f5ca jmp      0x14051f611
000000014051f5cc test     eax, eax
000000014051f5ce jne      0x14051f5ef
000000014051f5d0 mov      al, byte ptr [rbx + 0x5b]
000000014051f5d3 neg      al
000000014051f5d5 mov      al, byte ptr [rbx + 0x59]
000000014051f5d8 sbb      edx, edx
000000014051f5da and      edx, 0x200000
000000014051f5e0 add      edx, r14d
000000014051f5e3 neg      al
000000014051f5e5 sbb      ecx, ecx
000000014051f5e7 and      ecx, 0x80
000000014051f5ed jmp      0x14051f60f
000000014051f5ef mov      eax, dword ptr [rdi + 0x3b0]
000000014051f5f5 mov      ecx, r14d
000000014051f5f8 sub      eax, 3
000000014051f5fb cmp      eax, r8d
000000014051f5fe mov      al, byte ptr [rbx + 0x58]
000000014051f601 cmova    ecx, r12d
000000014051f605 neg      al
000000014051f607 sbb      edx, edx
000000014051f609 and      edx, 0x80
000000014051f60f or       edx, ecx
000000014051f611 mov      dword ptr [rsi], edx
000000014051f613 lea      r8, [rbp - 0x48]
000000014051f617 mov      rdx, rbx
000000014051f61a mov      rcx, rdi
000000014051f61d call     0x14050d644
000000014051f622 test     eax, eax
000000014051f624 jne      0x14051fb97
000000014051f62a lea      r9, [rbp - 0x46]
000000014051f62e mov      rdx, rbx
000000014051f631 lea      r8, [rbp - 0x47]
000000014051f635 mov      rcx, rdi
000000014051f638 call     0x14050d740
000000014051f63d test     eax, eax
000000014051f63f jne      0x14051fb97
000000014051f645 movzx    edx, byte ptr [rbx + 0x51]
000000014051f649 mov      r10d, 0x8000
000000014051f64f movzx    eax, byte ptr [rbp - 0x48]
000000014051f653 and      edx, 0xf
000000014051f656 shl      edx, 0xd
000000014051f659 and      eax, 0x1f
000000014051f65c or       edx, eax
000000014051f65e mov      al, byte ptr [rbx + 0x2e]
000000014051f661 neg      al
000000014051f663 movzx    eax, byte ptr [rbx + 0x3f]
000000014051f667 sbb      ecx, ecx
000000014051f669 and      eax, 7
000000014051f66c and      ecx, 0x40
000000014051f66f add      ecx, 0x100
000000014051f675 or       edx, ecx
000000014051f677 shl      edx, 9
000000014051f67a or       edx, eax
000000014051f67c mov      al, byte ptr [rbx + 0x5f]
000000014051f67f shl      edx, 2
000000014051f682 neg      al
000000014051f684 mov      al, byte ptr [rbx + 0x43]
000000014051f687 sbb      ecx, ecx
000000014051f689 and      ecx, 0x40
000000014051f68c or       edx, ecx
000000014051f68e neg      al
000000014051f690 movzx    eax, byte ptr [rbx + 0x3e]
000000014051f694 sbb      ecx, ecx
000000014051f696 and      eax, 3
000000014051f699 and      ecx, 0x20
000000014051f69c or       edx, ecx
000000014051f69e or       edx, eax
000000014051f6a0 mov      al, byte ptr [rbx + 0x59]
000000014051f6a3 neg      al
000000014051f6a5 mov      al, byte ptr [rbp - 0x47]
000000014051f6a8 sbb      ecx, ecx
000000014051f6aa and      ecx, 0x400000
000000014051f6b0 or       edx, ecx
000000014051f6b2 neg      al
000000014051f6b4 sbb      ecx, ecx
000000014051f6b6 and      ecx, 0x100000
000000014051f6bc or       edx, ecx
000000014051f6be or       dword ptr [rsi], edx
000000014051f6c0 movzx    edx, byte ptr [rbx + 0x54]
000000014051f6c4 movzx    eax, byte ptr [rbx + 0x5a]
000000014051f6c8 and      edx, 3
000000014051f6cb shl      eax, 2
000000014051f6ce or       edx, eax
000000014051f6d0 movzx    eax, byte ptr [rbx + 0x55]
000000014051f6d4 shl      edx, 4
000000014051f6d7 and      eax, 0xf
000000014051f6da or       edx, eax
000000014051f6dc movzx    eax, byte ptr [rbx + 0x61]
000000014051f6e0 shl      edx, 4
000000014051f6e3 and      eax, 3
000000014051f6e6 or       edx, eax
000000014051f6e8 movzx    eax, byte ptr [rbx + 0x77]
000000014051f6ec shl      edx, 4
000000014051f6ef and      eax, 0xf
000000014051f6f2 or       edx, eax
000000014051f6f4 mov      al, byte ptr [rbx + 0x60]
000000014051f6f7 shl      edx, 0xc
000000014051f6fa neg      al
000000014051f6fc sbb      ecx, ecx
000000014051f6fe and      ecx, 0x40000
000000014051f704 or       edx, ecx
000000014051f706 mov      dword ptr [rsi + 4], edx
000000014051f709 cmp      byte ptr [rbx + 0x5e], r12b
000000014051f70d jne      0x14051f71b
000000014051f70f mov      r8d, r12d
000000014051f712 cmp      byte ptr [rbx + 0x92], r12b
000000014051f719 je       0x14051f71e
000000014051f71b mov      r8d, r10d
000000014051f71e mov      al, byte ptr [rbx + 0x2e]
000000014051f721 mov      r11d, 0x4000
000000014051f727 movzx    edx, word ptr [rbx + 0x3c]
000000014051f72b mov      r9d, 0xfff
000000014051f731 shl      edx, 7
000000014051f734 neg      al
000000014051f736 movzx    eax, byte ptr [rbx + 0x34]
000000014051f73a sbb      ecx, ecx
000000014051f73c and      ecx, 8
000000014051f73f add      ecx, 0x12
000000014051f742 or       edx, ecx
000000014051f744 lea      rcx, [rip + 0x7a3f7d]
000000014051f74b mov      al, byte ptr [rax + rcx]
000000014051f74e shl      edx, 0x11
000000014051f751 neg      al
000000014051f753 mov      al, byte ptr [rbx + 0x5d]
000000014051f756 sbb      ecx, ecx
000000014051f758 and      ecx, 0x800000
000000014051f75e or       edx, ecx
000000014051f760 neg      al
000000014051f762 movzx    eax, word ptr [rbx + 0x36]
000000014051f766 sbb      ecx, ecx
000000014051f768 and      eax, 0x3fff
000000014051f76d and      ecx, r11d
000000014051f770 or       edx, ecx
000000014051f772 or       edx, eax
000000014051f774 or       edx, r8d
000000014051f777 mov      dword ptr [rsi + 8], edx
000000014051f77a movzx    eax, word ptr [rbx + 0x40]
000000014051f77e and      eax, r9d
000000014051f781 mov      dword ptr [rsi + 0xc], eax
000000014051f784 movzx    eax, byte ptr [rbx + 0x62]
000000014051f788 movzx    ecx, byte ptr [rbx + 0x63]
000000014051f78c shl      ecx, 8
000000014051f78f or       ecx, eax
000000014051f791 shl      ecx, 0x10
000000014051f794 mov      dword ptr [rsi + 0x10], ecx
000000014051f797 movzx    eax, byte ptr [rbx + 0x66]
000000014051f79b movzx    ecx, byte ptr [rbx + 0x67]
000000014051f79f shl      ecx, 8
000000014051f7a2 or       ecx, eax
000000014051f7a4 movzx    eax, byte ptr [rbx + 0x65]
000000014051f7a8 shl      ecx, 8
000000014051f7ab or       ecx, eax
000000014051f7ad movzx    eax, byte ptr [rbx + 0x64]
000000014051f7b1 shl      ecx, 8
000000014051f7b4 or       ecx, eax
000000014051f7b6 mov      dword ptr [rsi + 0x14], ecx
000000014051f7b9 cmp      byte ptr [rbx + 0x79], r12b
000000014051f7bd jne      0x14051f7c8
000000014051f7bf mov      r8d, r12d
000000014051f7c2 cmp      byte ptr [rbx + 0x7a], r12b
000000014051f7c6 je       0x14051f7ce
000000014051f7c8 mov      r8d, 0x800
000000014051f7ce mov      al, byte ptr [rbx + 0x4d]
000000014051f7d1 neg      al
000000014051f7d3 mov      dword ptr [rbp - 0x40], r12d
000000014051f7d7 mov      al, byte ptr [rbx + 0x6a]
000000014051f7da sbb      edx, edx
000000014051f7dc mov      dword ptr [rbp - 0x38], r9d
000000014051f7e0 and      edx, r11d
000000014051f7e3 neg      al
000000014051f7e5 mov      al, byte ptr [rbx + 0x6b]
000000014051f7e8 sbb      ecx, ecx
000000014051f7ea and      ecx, 0x1000
000000014051f7f0 or       edx, ecx
000000014051f7f2 neg      al
000000014051f7f4 mov      al, byte ptr [rbp - 0x46]
000000014051f7f7 sbb      ecx, ecx
000000014051f7f9 and      ecx, r10d
000000014051f7fc or       edx, ecx
000000014051f7fe neg      al
000000014051f800 sbb      ecx, ecx
000000014051f802 and      ecx, 0x2000
000000014051f808 or       edx, ecx
000000014051f80a mov      rcx, rdi
000000014051f80d or       edx, r8d
000000014051f810 mov      dword ptr [rsi + 0x18], edx
000000014051f813 lea      rdx, [rbp - 0x40]
000000014051f817 movzx    eax, word ptr [rbx + 0x70]
000000014051f81b mov      dword ptr [rbp - 0x3c], eax
000000014051f81e mov      rax, qword ptr [r13 + 0x5a0]
000000014051f825 call     qword ptr [rip + 0x164acd]
000000014051f82b mov      r9d, eax
000000014051f82e test     eax, eax
000000014051f830 je       0x14051f853
000000014051f832 mov      rcx, qword ptr [rdi + 0x18]
000000014051f836 lea      r8, [rip + 0x13ffb3]
000000014051f83d mov      edx, 2
000000014051f842 mov      rax, qword ptr [rcx + 0x118]
000000014051f849 mov      rcx, qword ptr [rdi + 8]
000000014051f84d call     qword ptr [rip + 0x164aa5]
000000014051f853 movzx    edx, byte ptr [rbx + 0x73]
000000014051f857 mov      r8d, 0x1000
000000014051f85d movzx    eax, byte ptr [rbx + 0x72]
000000014051f861 and      edx, 7
000000014051f864 shl      edx, 0xf
000000014051f867 and      eax, 7
000000014051f86a or       edx, eax
000000014051f86c mov      r10d, 0x800
000000014051f872 movzx    eax, byte ptr [rbx + 0x53]
000000014051f876 lea      r9d, [r8 - 1]
000000014051f87a and      eax, 0xf
000000014051f87d shl      edx, 7
000000014051f880 or       edx, eax
000000014051f882 mov      r11d, 0x80000000
000000014051f888 mov      al, byte ptr [rbx + 0x6e]
000000014051f88b shl      edx, 6
000000014051f88e neg      al
000000014051f890 mov      al, byte ptr [rbx + 0x6d]
000000014051f893 sbb      ecx, ecx
000000014051f895 and      ecx, r8d
000000014051f898 or       edx, ecx
000000014051f89a neg      al
000000014051f89c mov      al, byte ptr [rbx + 0x6f]
000000014051f89f sbb      ecx, ecx
000000014051f8a1 and      ecx, r10d
000000014051f8a4 or       edx, ecx
000000014051f8a6 neg      al
000000014051f8a8 mov      al, byte ptr [rbx + 0x74]
000000014051f8ab sbb      ecx, ecx
000000014051f8ad and      ecx, r14d
000000014051f8b0 or       edx, ecx
000000014051f8b2 neg      al
000000014051f8b4 mov      eax, dword ptr [rbp - 0x38]
000000014051f8b7 sbb      ecx, ecx
000000014051f8b9 and      eax, r9d
000000014051f8bc and      ecx, r11d
000000014051f8bf shl      eax, 0x10
000000014051f8c2 or       edx, ecx
000000014051f8c4 or       edx, eax
000000014051f8c6 mov      dword ptr [rsi + 0x1c], edx
000000014051f8c9 movzx    edx, byte ptr [rbx + 0x82]
000000014051f8d0 movzx    eax, byte ptr [rbx + 0x90]
000000014051f8d7 and      edx, 0x3f
000000014051f8da and      eax, 7
000000014051f8dd shl      edx, 0xc
000000014051f8e0 or       edx, eax
000000014051f8e2 mov      al, byte ptr [rbx + 0x7c]
000000014051f8e5 shl      edx, 4
000000014051f8e8 neg      al
000000014051f8ea mov      al, byte ptr [rbx + 0x7b]
000000014051f8ed sbb      ecx, ecx
000000014051f8ef and      ecx, r8d
000000014051f8f2 or       edx, ecx
000000014051f8f4 neg      al
000000014051f8f6 mov      al, byte ptr [rbx + 0x7e]
000000014051f8f9 sbb      ecx, ecx
000000014051f8fb and      ecx, r10d
000000014051f8fe or       edx, ecx
000000014051f900 neg      al
000000014051f902 mov      al, byte ptr [rbx + 0x7d]
000000014051f905 sbb      ecx, ecx
000000014051f907 and      ecx, r14d
000000014051f90a or       edx, ecx
000000014051f90c neg      al
000000014051f90e mov      al, byte ptr [rbx + 0x83]
000000014051f914 sbb      ecx, ecx
000000014051f916 and      ecx, 0x200
000000014051f91c or       edx, ecx
000000014051f91e neg      al
000000014051f920 movzx    eax, byte ptr [rbx + 0x8f]
000000014051f927 sbb      ecx, ecx
000000014051f929 and      eax, 0xf
000000014051f92c and      ecx, 0x400000
000000014051f932 or       edx, ecx
000000014051f934 or       edx, eax
000000014051f936 mov      al, byte ptr [rbx + 0x92]
000000014051f93c neg      al
000000014051f93e sbb      ecx, ecx
000000014051f940 and      ecx, r11d
000000014051f943 or       edx, ecx
000000014051f945 mov      dword ptr [rbp - 0x30], edx
000000014051f948 movzx    eax, word ptr [rbx + 0x84]
000000014051f94f test     ax, ax
000000014051f952 je       0x14051f95e
000000014051f954 dec      ax
000000014051f957 mov      word ptr [rbx + 0x84], ax
000000014051f95e movzx    eax, word ptr [rbx + 0x80]
000000014051f965 lea      rdx, [rbp - 0x40]
000000014051f969 mov      dword ptr [rbp - 0x3c], eax
000000014051f96c mov      rcx, rdi
000000014051f96f mov      dword ptr [rbp - 0x40], r12d
000000014051f973 mov      dword ptr [rbp - 0x38], r9d
000000014051f977 mov      rax, qword ptr [r13 + 0x5a0]
000000014051f97e call     qword ptr [rip + 0x164974]
000000014051f984 mov      al, byte ptr [rbx + 0x88]
000000014051f98a mov      r8d, 0x8000
000000014051f990 movzx    edx, byte ptr [rbx + 0xa0]
000000014051f997 mov      r9d, 0x80000000
000000014051f99d shl      edx, 0x1c
000000014051f9a0 neg      al
000000014051f9a2 mov      al, byte ptr [rbx + 0x87]
000000014051f9a8 sbb      ecx, ecx
000000014051f9aa and      ecx, 0x4000
000000014051f9b0 or       edx, ecx
000000014051f9b2 neg      al
000000014051f9b4 mov      al, byte ptr [rbx + 0x91]
000000014051f9ba sbb      ecx, ecx
000000014051f9bc and      ecx, 0x1000
000000014051f9c2 or       edx, ecx
000000014051f9c4 neg      al
000000014051f9c6 mov      al, byte ptr [rbx + 0x89]
000000014051f9cc sbb      ecx, ecx
000000014051f9ce and      ecx, r14d
000000014051f9d1 or       edx, ecx
000000014051f9d3 neg      al
000000014051f9d5 mov      eax, dword ptr [rbp - 0x38]
000000014051f9d8 sbb      ecx, ecx
000000014051f9da and      eax, 0xfff
000000014051f9df and      ecx, r8d
000000014051f9e2 shl      eax, 0x10
000000014051f9e5 or       edx, ecx
000000014051f9e7 or       edx, eax
000000014051f9e9 movzx    eax, word ptr [rbx + 0x84]
000000014051f9f0 movzx    ecx, al
000000014051f9f3 movzx    eax, byte ptr [rbx + 0x93]
000000014051f9fa or       edx, ecx
000000014051f9fc mov      dword ptr [rbp - 0x2c], edx
000000014051f9ff and      eax, 7
000000014051fa02 movzx    edx, byte ptr [rbx + 0x86]
000000014051fa09 and      edx, 7
000000014051fa0c shl      edx, 5
000000014051fa0f or       edx, eax
000000014051fa11 mov      al, byte ptr [rbx + 0x9e]
000000014051fa17 shl      edx, 0xd
000000014051fa1a neg      al
000000014051fa1c mov      al, byte ptr [rbx + 0x78]
000000014051fa1f sbb      ecx, ecx
000000014051fa21 and      ecx, 0x40000000
000000014051fa27 or       edx, ecx
000000014051fa29 neg      al
000000014051fa2b mov      al, byte ptr [rbx + 0x9c]
000000014051fa31 sbb      ecx, ecx
000000014051fa33 and      ecx, 0x100
000000014051fa39 or       edx, ecx
000000014051fa3b neg      al
000000014051fa3d movzx    eax, byte ptr [rbx + 0x8a]
000000014051fa44 sbb      ecx, ecx
000000014051fa46 and      ecx, r9d
000000014051fa49 or       edx, ecx
000000014051fa4b or       edx, eax
000000014051fa4d mov      al, byte ptr [rbx + 0x9d]
000000014051fa53 mov      dword ptr [rbp - 0x28], edx
000000014051fa56 movzx    edx, byte ptr [rbx + 0x9b]
000000014051fa5d and      edx, 0xf
000000014051fa60 shl      edx, 4
000000014051fa63 neg      al
000000014051fa65 mov      al, byte ptr [rbx + 0x9f]
000000014051fa6b sbb      ecx, ecx
000000014051fa6d and      ecx, 0x200
000000014051fa73 or       edx, ecx
000000014051fa75 neg      al
000000014051fa77 movzx    eax, byte ptr [rbx + 0x94]
000000014051fa7e sbb      ecx, ecx
000000014051fa80 and      eax, 0xf
000000014051fa83 and      ecx, r8d
000000014051fa86 or       edx, ecx
000000014051fa88 or       edx, eax
000000014051fa8a movzx    eax, byte ptr [rbx + 0x96]
000000014051fa91 and      eax, 3
000000014051fa94 mov      dword ptr [rbp - 0x24], edx
000000014051fa97 movzx    edx, byte ptr [rbx + 0x8d]
000000014051fa9e and      edx, 3
000000014051faa1 mov      qword ptr [rbp - 0x18], r12
000000014051faa5 shl      edx, 0xd
000000014051faa8 or       edx, eax
000000014051faaa mov      al, byte ptr [rbx + 0x8c]
000000014051fab0 shl      edx, 0x10
000000014051fab3 neg      al
000000014051fab5 mov      al, byte ptr [rbx + 0x8b]
000000014051fabb sbb      ecx, ecx
000000014051fabd and      ecx, 0x10000000
000000014051fac3 or       edx, ecx
000000014051fac5 neg      al
000000014051fac7 mov      al, byte ptr [rbx + 0xa1]
000000014051facd sbb      ecx, ecx
000000014051facf and      ecx, 0x8000000
000000014051fad5 or       edx, ecx
000000014051fad7 neg      al
000000014051fad9 mov      al, byte ptr [rbx + 0x8e]
000000014051fadf sbb      ecx, ecx
000000014051fae1 and      ecx, 0x40000
000000014051fae7 or       edx, ecx
000000014051fae9 neg      al
000000014051faeb movzx    eax, word ptr [rbx + 0x98]
000000014051faf2 sbb      ecx, ecx
000000014051faf4 and      ecx, r9d
000000014051faf7 or       edx, ecx
000000014051faf9 or       edx, eax
000000014051fafb mov      al, byte ptr [rbx + 0xa2]
000000014051fb01 neg      al
000000014051fb03 mov      dword ptr [rbp - 0x20], edx
000000014051fb06 movzx    eax, word ptr [rbx + 0xa4]
000000014051fb0d sbb      ecx, ecx
000000014051fb0f and      eax, 0x1f
000000014051fb12 and      ecx, 0x20
000000014051fb15 or       ecx, eax
000000014051fb17 mov      dword ptr [rbp - 0x1c], ecx
000000014051fb1a cmp      byte ptr [rbx + 0x59], r12b
000000014051fb1e je       0x14051fb4c
000000014051fb20 mov      rax, qword ptr [rdi + 0x18]
000000014051fb24 lea      r8, [rbp - 0x30]
000000014051fb28 movzx    edx, byte ptr [r15 + 0xe2]
000000014051fb30 movzx    r9d, byte ptr [r15 + 0xe3]
000000014051fb38 add      rdx, rsi
000000014051fb3b mov      rcx, qword ptr [rdi + 8]
000000014051fb3f mov      rax, qword ptr [rax + 0xa0]
000000014051fb46 call     qword ptr [rip + 0x1647ac]
000000014051fb4c mov      rax, qword ptr [rdi + 0x140]
000000014051fb53 cmp      byte ptr [rax + 0xf1], r12b
000000014051fb5a je       0x14051fb6a
000000014051fb5c mov      r8, rsi
000000014051fb5f mov      rdx, rbx
000000014051fb62 mov      rcx, rdi
000000014051fb65 call     0x140520338
000000014051fb6a xor      eax, eax
000000014051fb6c jmp      0x14051fb97
000000014051fb6e mov      rax, qword ptr [rdi + 0x18]
000000014051fb72 lea      r8, [rip + 0x13fc57]
000000014051fb79 mov      r9d, ecx
000000014051fb7c mov      edx, 2
000000014051fb81 mov      rcx, qword ptr [rdi + 8]
000000014051fb85 mov      rax, qword ptr [rax + 0x118]
000000014051fb8c call     qword ptr [rip + 0x164766]
000000014051fb92 mov      eax, 0x2e
000000014051fb97 mov      rcx, qword ptr [rbp - 0x10]
000000014051fb9b xor      rcx, rsp
000000014051fb9e call     0x1405f45b0
000000014051fba3 add      rsp, 0x78
000000014051fba7 pop      r15
000000014051fba9 pop      r14
000000014051fbab pop      r13
000000014051fbad pop      r12
000000014051fbaf pop      rdi
000000014051fbb0 pop      rsi
000000014051fbb1 pop      rbx
000000014051fbb2 pop      rbp
000000014051fbb3 ret      