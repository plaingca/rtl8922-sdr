000000014017a5a4 mov      qword ptr [rsp + 0x20], rbx
000000014017a5a9 mov      qword ptr [rsp + 0x10], rdx
000000014017a5ae push     rbp
000000014017a5af push     rsi
000000014017a5b0 push     rdi
000000014017a5b1 push     r12
000000014017a5b3 push     r13
000000014017a5b5 push     r14
000000014017a5b7 push     r15
000000014017a5b9 mov      rbp, rsp
000000014017a5bc sub      rsp, 0x80
000000014017a5c3 mov      r11, qword ptr [r8 + 0x18]
000000014017a5c7 mov      rsi, r9
000000014017a5ca mov      r10, qword ptr [rcx + 0xaf3b8]
000000014017a5d1 mov      r15, r8
000000014017a5d4 movaps   xmmword ptr [rsp + 0x70], xmm6
000000014017a5d9 mov      rbx, rcx
000000014017a5dc mov      r14, qword ptr [r11]
000000014017a5df mov      rax, qword ptr [r10]
000000014017a5e2 add      r14, 0x10
000000014017a5e6 mov      qword ptr [rbp - 0x48], rax
000000014017a5ea mov      rax, qword ptr [rax + 0xaf280]
000000014017a5f1 mov      al, byte ptr [rax + 0xbcc]
000000014017a5f7 mov      byte ptr [rbp - 0x17], 0
000000014017a5fb mov      r12, qword ptr [r11]
000000014017a5fe mov      r13, qword ptr [r10]
000000014017a601 mov      byte ptr [rbp + 0x40], al
000000014017a604 movzx    eax, word ptr [r11 + 0x10]
000000014017a609 mov      word ptr [rbp - 0x50], ax
000000014017a60d mov      word ptr [rbp - 0x38], ax
000000014017a611 mov      qword ptr [rbp - 0x40], r12
000000014017a615 call     0x1400b2f50
000000014017a61a mov      rdi, rax
000000014017a61d test     rax, rax
000000014017a620 je       0x14017aabd
000000014017a626 mov      rcx, qword ptr [rax + 0x2c8]
000000014017a62d mov      al, byte ptr [rcx + 0x4c]
000000014017a630 mov      rcx, rbx
000000014017a633 mov      byte ptr [rbp + 0x50], al
000000014017a636 call     0x1400b32fc
000000014017a63b test     al, al
000000014017a63d je       0x14017aabd
000000014017a643 mov      rcx, qword ptr [rdi + 0x2c8]
000000014017a64a mov      r8d, 6
000000014017a650 add      rcx, 0x36
000000014017a654 mov      rdx, r14
000000014017a657 call     0x14003113c
000000014017a65c test     eax, eax
000000014017a65e je       0x14017a697
000000014017a660 mov      rcx, qword ptr [rdi + 0x2c8]
000000014017a667 mov      r8d, 6
000000014017a66d add      rcx, 0x14a1
000000014017a674 mov      rdx, r14
000000014017a677 call     0x14003113c
000000014017a67c test     eax, eax
000000014017a67e je       0x14017a697
000000014017a680 mov      rdx, qword ptr [rbp + 0x48]
000000014017a684 mov      r9, r14
000000014017a687 mov      r8, rdi
000000014017a68a mov      rcx, rbx
000000014017a68d call     0x14017d104
000000014017a692 jmp      0x14017aabd
000000014017a697 mov      r9, rsi
000000014017a69a mov      byte ptr [rsp + 0x20], 0
000000014017a69f mov      r8, r15
000000014017a6a2 mov      rdx, rdi
000000014017a6a5 mov      rcx, rbx
000000014017a6a8 call     0x140094f00
000000014017a6ad movaps   xmm6, xmmword ptr [rbp - 0x40]
000000014017a6b1 lea      rcx, [rbp - 0x40]
000000014017a6b5 mov      rdx, qword ptr [rbp + 0x48]
000000014017a6b9 movdqa   xmmword ptr [rbp - 0x40], xmm6
000000014017a6be call     0x14017cfc8
000000014017a6c3 mov      rcx, qword ptr [rdi + 0x2c8]
000000014017a6ca mov      r8d, 6
000000014017a6d0 add      rcx, 0x14a1
000000014017a6d7 mov      rdx, r14
000000014017a6da call     0x14003113c
000000014017a6df xor      r14d, r14d
000000014017a6e2 test     eax, eax
000000014017a6e4 jne      0x14017a70e
000000014017a6e6 cmp      byte ptr [rsi + 0x1612], r14b
000000014017a6ed je       0x14017a741
000000014017a6ef mov      r9, qword ptr [rdi + 0x2c8]
000000014017a6f6 lea      rdx, [rbp - 0x40]
000000014017a6fa add      r9, 0x36
000000014017a6fe movdqa   xmmword ptr [rbp - 0x40], xmm6
000000014017a703 mov      r8, rsi
000000014017a706 mov      rcx, rbx
000000014017a709 call     0x14009ff80
000000014017a70e mov      rdx, rsi
000000014017a711 mov      rcx, rbx
000000014017a714 call     0x1401045fc
000000014017a719 mov      rdx, rsi
000000014017a71c mov      rcx, rdi
000000014017a71f call     0x140089410
000000014017a724 test     al, al
000000014017a726 jne      0x14017a7c2
000000014017a72c mov      rax, qword ptr [rbx + 0xaf3b8]
000000014017a733 mov      dl, 0x12
000000014017a735 mov      rcx, qword ptr [rax]
000000014017a738 add      rcx, 0xaa890
000000014017a73f jmp      0x14017a7b2
000000014017a741 test     r12, r12
000000014017a744 je       0x14017a799
000000014017a746 mov      rcx, qword ptr [rip + 0x7a58b3]
000000014017a74d lea      rax, [rip + 0x7a58ac]
000000014017a754 cmp      rcx, rax
000000014017a757 je       0x14017a799
000000014017a759 cmp      byte ptr [rcx + 0x29], 2
000000014017a75d jb       0x14017a799
000000014017a75f test     dword ptr [rcx + 0x2c], 0x100
000000014017a766 je       0x14017a799
000000014017a768 movzx    eax, word ptr [rbp - 0x50]
000000014017a76c lea      r9, [rip + 0x492a6d]
000000014017a773 mov      rcx, qword ptr [rcx + 0x18]
000000014017a777 lea      r8, [rip + 0x51a8da]
000000014017a77e mov      qword ptr [rbp - 0x38], rax
000000014017a782 mov      edx, 0x20
000000014017a787 lea      rax, [rbp - 0x40]
000000014017a78b mov      qword ptr [rbp - 0x40], r12
000000014017a78f mov      qword ptr [rsp + 0x20], rax
000000014017a794 call     0x140001c88
000000014017a799 mov      rcx, rbx
000000014017a79c call     0x1401398fc
000000014017a7a1 cmp      al, 1
000000014017a7a3 jne      0x14017aabd
000000014017a7a9 lea      rcx, [r13 + 0xaa890]
000000014017a7b0 mov      dl, 0x14
000000014017a7b2 xor      r9d, r9d
000000014017a7b5 xor      r8d, r8d
000000014017a7b8 call     0x14013a268
000000014017a7bd jmp      0x14017aabd
000000014017a7c2 inc      dword ptr [rbx + 0xb0840]
000000014017a7c8 call     0x140031188
000000014017a7cd lea      rcx, [rbx + 0x546a68]
000000014017a7d4 mov      qword ptr [rbx + 0xb0838], rax
000000014017a7db mov      rdx, rsi
000000014017a7de call     0x140178ec8
000000014017a7e3 mov      rcx, rbx
000000014017a7e6 call     0x1401398fc
000000014017a7eb cmp      al, 1
000000014017a7ed jne      0x14017a807
000000014017a7ef lea      r8, [r13 + 0xaaa16]
000000014017a7f6 xor      r9d, r9d
000000014017a7f9 lea      rcx, [r13 + 0xaa890]
000000014017a800 mov      dl, 0xc
000000014017a802 call     0x14013a268
000000014017a807 mov      rax, qword ptr [rbx + 0xaf3b8]
000000014017a80e mov      rcx, qword ptr [rax]
000000014017a811 mov      rcx, qword ptr [rcx + 0x20708]
000000014017a818 call     0x1401df978
000000014017a81d test     al, al
000000014017a81f je       0x14017a899
000000014017a821 mov      rdx, qword ptr [rdi + 0x2c0]
000000014017a828 mov      rax, qword ptr [rdx]
000000014017a82b cmp      dword ptr [rax + 8], 1
000000014017a82f jne      0x14017a899
000000014017a831 mov      rax, qword ptr [rbx + 0xaf3b8]
000000014017a838 mov      rcx, qword ptr [rax]
000000014017a83b mov      rcx, qword ptr [rcx + 0x20708]
000000014017a842 call     0x1401df82c
000000014017a847 mov      rdx, r15
000000014017a84a mov      rcx, rbx
000000014017a84d call     0x14009cfe0
000000014017a852 mov      rax, qword ptr [rbx + 0xaf3b8]
000000014017a859 mov      rcx, qword ptr [rax]
000000014017a85c mov      rcx, qword ptr [rcx + 0x20708]
000000014017a863 call     0x1401dec88
000000014017a868 test     al, al
000000014017a86a je       0x14017a899
000000014017a86c cmp      byte ptr [r15 + 0x39f3], r14b
000000014017a873 je       0x14017a899
000000014017a875 mov      rax, qword ptr [rbx + 0xaf3b8]
000000014017a87c xor      r9d, r9d
000000014017a87f mov      rdx, qword ptr [rdi + 0x2c0]
000000014017a886 mov      rcx, qword ptr [rax]
000000014017a889 lea      r8d, [r9 + 1]
000000014017a88d mov      rcx, qword ptr [rcx + 0x20708]
000000014017a894 call     0x1401df980
000000014017a899 mov      r8, rsi
000000014017a89c mov      rdx, rdi
000000014017a89f mov      rcx, rbx
000000014017a8a2 call     0x1400328d0
000000014017a8a7 cmp      al, 1
000000014017a8a9 jne      0x14017a981
000000014017a8af mov      rax, qword ptr [rbx + 0xaf280]
000000014017a8b6 cmp      byte ptr [rax + 0x129e], r14b
000000014017a8bd je       0x14017a8d8
000000014017a8bf mov      rax, qword ptr [rbx + 0xaf3b8]
000000014017a8c6 mov      rdx, rsi
000000014017a8c9 mov      rcx, qword ptr [rax]
000000014017a8cc add      rcx, 0x553d8
000000014017a8d3 call     0x140182090
000000014017a8d8 mov      r8, r15
000000014017a8db mov      rdx, rdi
000000014017a8de mov      rcx, rbx
000000014017a8e1 call     0x140133264
000000014017a8e6 mov      rcx, qword ptr [rbp - 0x48]
000000014017a8ea xor      r9d, r9d
000000014017a8ed xor      r8d, r8d
000000014017a8f0 mov      dl, 1
000000014017a8f2 call     0x1401546f4
000000014017a8f7 cmp      byte ptr [rdi + 0x339], r14b
000000014017a8fe jbe      0x14017a90e
000000014017a900 mov      r8, rsi
000000014017a903 mov      rdx, rdi
000000014017a906 mov      rcx, rbx
000000014017a909 call     0x1401585a0
000000014017a90e cmp      byte ptr [rdi + 0x11d9], r14b
000000014017a915 je       0x14017a925
000000014017a917 mov      r8, rsi
000000014017a91a mov      rdx, rdi
000000014017a91d mov      rcx, rbx
000000014017a920 call     0x1400e14ac
000000014017a925 cmp      byte ptr [rdi + 0x1299], r14b
000000014017a92c je       0x14017a93c
000000014017a92e mov      r8, rsi
000000014017a931 mov      rdx, rdi
000000014017a934 mov      rcx, rbx
000000014017a937 call     0x1400df52c
000000014017a93c cmp      byte ptr [rdi + 0x133d], r14b
000000014017a943 je       0x14017a953
000000014017a945 mov      r8, rsi
000000014017a948 mov      rdx, rdi
000000014017a94b mov      rcx, rbx
000000014017a94e call     0x14016b50c
000000014017a953 test     byte ptr [rdi + 0x13f0], 2
000000014017a95a je       0x14017a96a
000000014017a95c mov      r8, rsi
000000014017a95f mov      rdx, rdi
000000014017a962 mov      rcx, rbx
000000014017a965 call     0x14016dedc
000000014017a96a cmp      byte ptr [rdi + 0x11d9], r14b
000000014017a971 je       0x14017a981
000000014017a973 mov      r8, rsi
000000014017a976 mov      rdx, rdi
000000014017a979 mov      rcx, rbx
000000014017a97c call     0x140083bf0
000000014017a981 mov      rdx, rsi
000000014017a984 mov      rcx, rbx
000000014017a987 call     0x1400b5818
000000014017a98c lea      r8, [rbp - 0x40]
000000014017a990 movdqa   xmmword ptr [rbp - 0x40], xmm6
000000014017a995 mov      rdx, rdi
000000014017a998 mov      rcx, rbx
000000014017a99b call     0x1400f125c
000000014017a9a0 mov      r14, qword ptr [rbp + 0x48]
000000014017a9a4 lea      r8, [rbp - 0x40]
000000014017a9a8 mov      rdx, r14
000000014017a9ab movdqa   xmmword ptr [rbp - 0x40], xmm6
000000014017a9b0 mov      rcx, rbx
000000014017a9b3 call     0x1400f55d8
000000014017a9b8 mov      rdx, rdi
000000014017a9bb mov      rcx, rbx
000000014017a9be call     0x14017d2a0
000000014017a9c3 mov      rcx, qword ptr [rdi + 0x2c0]
000000014017a9ca mov      al, byte ptr [rsi + 0x2c]
000000014017a9cd cmp      byte ptr [rcx + 0x5fe], al
000000014017a9d3 je       0x14017aa3b
000000014017a9d5 test     al, al
000000014017a9d7 je       0x14017aa3b
000000014017a9d9 mov      byte ptr [rcx + 0x5fe], al
000000014017a9df mov      rcx, qword ptr [rip + 0x7a561a]
000000014017a9e6 lea      rax, [rip + 0x7a5613]
000000014017a9ed cmp      rcx, rax
000000014017a9f0 je       0x14017aa3b
000000014017a9f2 cmp      byte ptr [rcx + 0x29], 4
000000014017a9f6 jb       0x14017aa3b
000000014017a9f8 test     dword ptr [rcx + 0x2c], 0x100
000000014017a9ff je       0x14017aa3b
000000014017aa01 mov      rax, qword ptr [rdi + 0x2c0]
000000014017aa08 mov      edx, 0x21
000000014017aa0d mov      rcx, qword ptr [rcx + 0x18]
000000014017aa11 movzx    r8d, byte ptr [rax + 8]
000000014017aa16 movzx    r9d, byte ptr [rax + 0x5fe]
000000014017aa1e mov      dword ptr [rsp + 0x28], r8d
000000014017aa23 lea      r8, [rip + 0x51a62e]
000000014017aa2a mov      dword ptr [rsp + 0x20], r9d
000000014017aa2f lea      r9, [rip + 0x4927ca]
000000014017aa36 call     0x140002b04
000000014017aa3b mov      eax, dword ptr [rsi + 0x190]
000000014017aa41 mov      ecx, dword ptr [rsi + 0x194]
000000014017aa47 shl      rcx, 0x20
000000014017aa4b or       rcx, rax
000000014017aa4e mov      qword ptr [rbp - 0x30], r14
000000014017aa52 mov      rax, qword ptr [rsi + 0x30]
000000014017aa56 mov      qword ptr [rbp - 0x28], rax
000000014017aa5a mov      al, byte ptr [r15 + 0x397a]
000000014017aa61 mov      qword ptr [rbp - 0x20], rcx
000000014017aa65 movzx    ecx, byte ptr [r15 + 0x394a]
000000014017aa6d mov      byte ptr [rbp - 0x18], al
000000014017aa70 call     0x14008eab0
000000014017aa75 movzx    eax, ax
000000014017aa78 lea      rdx, [rbp - 0x30]
000000014017aa7c mov      dword ptr [rbp - 0x14], eax
000000014017aa7f movzx    eax, word ptr [r15 + 0x3948]
000000014017aa87 mov      word ptr [rbp - 0x16], ax
000000014017aa8b mov      rax, qword ptr [rbx + 0xaf3b8]
000000014017aa92 mov      rcx, qword ptr [rax]
000000014017aa95 mov      rcx, qword ptr [rcx + 0x20708]
000000014017aa9c call     0x1401b81bc
000000014017aaa1 cmp      byte ptr [rbp + 0x40], 0
000000014017aaa5 jne      0x14017aab2
000000014017aaa7 mov      al, byte ptr [rbp + 0x50]
000000014017aaaa cmp      byte ptr [rsi + 0x150], al
000000014017aab0 je       0x14017aabd
000000014017aab2 mov      rdx, rsi
000000014017aab5 mov      rcx, rbx
000000014017aab8 call     0x140029e00
000000014017aabd mov      rbx, qword ptr [rsp + 0xd8]
000000014017aac5 movaps   xmm6, xmmword ptr [rsp + 0x70]
000000014017aaca add      rsp, 0x80
000000014017aad1 pop      r15
000000014017aad3 pop      r14
000000014017aad5 pop      r13
000000014017aad7 pop      r12
000000014017aad9 pop      rdi
000000014017aada pop      rsi
000000014017aadb pop      rbp
000000014017aadc ret      