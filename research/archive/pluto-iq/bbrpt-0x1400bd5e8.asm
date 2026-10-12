00000001400bd5e8 mov      qword ptr [rsp + 0x18], rbx
00000001400bd5ed push     rbp
00000001400bd5ee push     rsi
00000001400bd5ef push     rdi
00000001400bd5f0 push     r12
00000001400bd5f2 push     r13
00000001400bd5f4 push     r14
00000001400bd5f6 push     r15
00000001400bd5f8 sub      rsp, 0x70
00000001400bd5fc mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400bd603 lea      r14, [rdx + 0x178]
00000001400bd60a mov      rdi, qword ptr [rcx + 0xab230]
00000001400bd611 xor      ebp, ebp
00000001400bd613 mov      rbx, rcx
00000001400bd616 mov      r13, qword ptr [rax]
00000001400bd619 mov      rax, qword ptr [rdx + 0x248]
00000001400bd620 mov      rsi, qword ptr [r13 + 0x20710]
00000001400bd627 mov      r15, qword ptr [rax]
00000001400bd62a mov      qword ptr [rsp + 0xb8], rsi
00000001400bd632 cmp      byte ptr [rdx + 0x4d0], bpl
00000001400bd639 je       0x1400bd858
00000001400bd63f cmp      byte ptr [rcx + 0xc15a5], bpl
00000001400bd646 jne      0x1400bd858
00000001400bd64c mov      rcx, qword ptr [r14 + 0x18]
00000001400bd650 call     0x14007de8c
00000001400bd655 mov      r12b, al
00000001400bd658 test     al, al
00000001400bd65a je       0x1400bd664
00000001400bd65c mov      ecx, dword ptr [rbx + 0xc0ba4]
00000001400bd662 jmp      0x1400bd66a
00000001400bd664 mov      ecx, dword ptr [rbx + 0xc0ba0]
00000001400bd66a call     0x1400d53d8
00000001400bd66f xor      r9d, r9d
00000001400bd672 movzx    r8d, al
00000001400bd676 mov      rcx, r14
00000001400bd679 lea      edx, [r9 + 0x2f]
00000001400bd67d call     0x1401dd494
00000001400bd682 cmp      byte ptr [r14 + 0x77], bpl
00000001400bd686 mov      r8d, ebp
00000001400bd689 mov      rcx, r14
00000001400bd68c seta     r8b
00000001400bd690 xor      r9d, r9d
00000001400bd693 lea      edx, [r9 + 0x30]
00000001400bd697 call     0x1401dd494
00000001400bd69c xor      r9d, r9d
00000001400bd69f xor      r8d, r8d
00000001400bd6a2 mov      rcx, r14
00000001400bd6a5 lea      edx, [r9 + 0x5c]
00000001400bd6a9 call     0x1401dd494
00000001400bd6ae movzx    r8d, byte ptr [rsi + 0xe11c]
00000001400bd6b6 xor      r9d, r9d
00000001400bd6b9 shr      r8d, 2
00000001400bd6bd mov      rcx, r14
00000001400bd6c0 and      r8d, 1
00000001400bd6c4 lea      edx, [r9 + 0x5b]
00000001400bd6c8 call     0x1401dd494
00000001400bd6cd movzx    r8d, byte ptr [rsi + 0xe11c]
00000001400bd6d5 xor      r9d, r9d
00000001400bd6d8 shr      r8d, 1
00000001400bd6db mov      rcx, r14
00000001400bd6de not      r8d
00000001400bd6e1 and      r8d, 1
00000001400bd6e5 lea      edx, [r9 + 0x16]
00000001400bd6e9 call     0x1401dd494
00000001400bd6ee movzx    edx, word ptr [r14 + 0x3c]
00000001400bd6f3 mov      rcx, qword ptr [r13 + 0x20708]
00000001400bd6fa call     0x1401b71e0
00000001400bd6ff test     byte ptr [rsi + 0xe11c], 1
00000001400bd706 mov      r10, rax
00000001400bd709 mov      qword ptr [rsp + 0xb0], rax
00000001400bd711 mov      r8b, 4
00000001400bd714 je       0x1400bd870
00000001400bd71a cmp      byte ptr [r14 + 0x77], r8b
00000001400bd71e je       0x1400bd870
00000001400bd724 mov      edx, dword ptr [rdi + 8]
00000001400bd727 mov      r8b, r12b
00000001400bd72a mov      rcx, rbx
00000001400bd72d call     0x1400d48d0
00000001400bd732 mov      r15b, al
00000001400bd735 cmp      byte ptr [r14 + 0x5f], bpl
00000001400bd739 jne      0x1400bd808
00000001400bd73f mov      r8d, dword ptr [rdi + 8]
00000001400bd743 mov      r9b, r12b
00000001400bd746 mov      rdx, r14
00000001400bd749 mov      rcx, rbx
00000001400bd74c call     0x1400c003c
00000001400bd751 mov      rcx, qword ptr [rip + 0x8628a8]
00000001400bd758 lea      rax, [rip + 0x8628a1]
00000001400bd75f cmp      rcx, rax
00000001400bd762 je       0x1400bd808
00000001400bd768 cmp      byte ptr [rcx + 0x29], 5
00000001400bd76c jb       0x1400bd808
00000001400bd772 test     dword ptr [rcx + 0x2c], 0x800
00000001400bd779 je       0x1400bd808
00000001400bd77f movzx    r9d, byte ptr [r14 + 0x62]
00000001400bd784 lea      rax, [rip + 0x53fee5]
00000001400bd78b movzx    r10d, byte ptr [r14 + 0x63]
00000001400bd790 lea      r8, [rip + 0x53fee9]
00000001400bd797 movzx    r11d, byte ptr [r14 + 0x64]
00000001400bd79c test     r12b, r12b
00000001400bd79f movzx    ebx, byte ptr [r14 + 0x65]
00000001400bd7a4 mov      edx, 0x56
00000001400bd7a9 movzx    edi, byte ptr [r14 + 0x66]
00000001400bd7ae cmovne   r8, rax
00000001400bd7b2 movzx    esi, byte ptr [r14 + 0x67]
00000001400bd7b7 movzx    ebp, byte ptr [r14 + 0x61]
00000001400bd7bc movzx    eax, byte ptr [r14 + 0x77]
00000001400bd7c1 mov      rcx, qword ptr [rcx + 0x18]
00000001400bd7c5 mov      dword ptr [rsp + 0x60], r9d
00000001400bd7ca lea      r9, [rip + 0x53febf]
00000001400bd7d1 mov      dword ptr [rsp + 0x58], r10d
00000001400bd7d6 mov      dword ptr [rsp + 0x50], r11d
00000001400bd7db mov      dword ptr [rsp + 0x48], ebx
00000001400bd7df mov      dword ptr [rsp + 0x40], edi
00000001400bd7e3 mov      dword ptr [rsp + 0x38], esi
00000001400bd7e7 mov      dword ptr [rsp + 0x30], ebp
00000001400bd7eb mov      qword ptr [rsp + 0x28], r8
00000001400bd7f0 lea      r8, [rip + 0x5d5519]
00000001400bd7f7 mov      dword ptr [rsp + 0x20], eax
00000001400bd7fb call     0x140085444
00000001400bd800 mov      rsi, qword ptr [rsp + 0xb8]
00000001400bd808 mov      r10, qword ptr [rsp + 0xb0]
00000001400bd810 test     byte ptr [rsi + 0xe11c], 2
00000001400bd817 jne      0x1400bd845
00000001400bd819 mov      rcx, qword ptr [r13 + 0x20708]
00000001400bd820 test     r12b, r12b
00000001400bd823 mov      r8b, r15b
00000001400bd826 mov      rdx, r10
00000001400bd829 setne    r9b
00000001400bd82d call     0x140202c78
00000001400bd832 xor      r9d, r9d
00000001400bd835 movzx    r8d, al
00000001400bd839 mov      rcx, r14
00000001400bd83c lea      edx, [r9 + 0x17]
00000001400bd840 call     0x1401dd494
00000001400bd845 xor      r9d, r9d
00000001400bd848 movzx    r8d, r15b
00000001400bd84c mov      rcx, r14
00000001400bd84f lea      edx, [r9 + 0x5d]
00000001400bd853 call     0x1401dd494
00000001400bd858 mov      rbx, qword ptr [rsp + 0xc0]
00000001400bd860 add      rsp, 0x70
00000001400bd864 pop      r15
00000001400bd866 pop      r14
00000001400bd868 pop      r13
00000001400bd86a pop      r12
00000001400bd86c pop      rdi
00000001400bd86d pop      rsi
00000001400bd86e pop      rbp
00000001400bd86f ret      
00000001400bd870 mov      dl, byte ptr [r15]
00000001400bd873 mov      cl, dl
00000001400bd875 and      cl, 0xc
00000001400bd878 cmp      cl, 8
00000001400bd87b jne      0x1400bd885
00000001400bd87d test     dl, dl
00000001400bd87f jns      0x1400bd885
00000001400bd881 mov      al, 0x1a
00000001400bd883 jmp      0x1400bd890
00000001400bd885 mov      al, 0x18
00000001400bd887 cmp      cl, 8
00000001400bd88a jne      0x1400bd899
00000001400bd88c test     dl, dl
00000001400bd88e jns      0x1400bd899
00000001400bd890 cmp      byte ptr [r15 + 1], bpl
00000001400bd894 jge      0x1400bd899
00000001400bd896 add      al, r8b
00000001400bd899 movzx    ecx, al
00000001400bd89c cmp      byte ptr [r14 + 0x77], r8b
00000001400bd8a0 jne      0x1400bd8af
00000001400bd8a2 mov      r15b, byte ptr [rcx + r15]
00000001400bd8a6 and      r15b, 1
00000001400bd8aa jmp      0x1400bd810
00000001400bd8af mov      r15d, dword ptr [rcx + r15]
00000001400bd8b3 shr      r15d, 0x1e
00000001400bd8b7 jmp      0x1400bd810