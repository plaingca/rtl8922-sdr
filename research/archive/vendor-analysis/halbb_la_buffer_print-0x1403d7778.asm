00000001403d7778 push     rbp
00000001403d777a push     rbx
00000001403d777b push     rsi
00000001403d777c push     rdi
00000001403d777d push     r12
00000001403d777f push     r13
00000001403d7781 push     r14
00000001403d7783 push     r15
00000001403d7785 lea      rbp, [rsp - 0x17]
00000001403d778a sub      rsp, 0x98
00000001403d7791 mov      rax, qword ptr [rip + 0x54fcc8]
00000001403d7798 xor      rax, rsp
00000001403d779b mov      qword ptr [rbp - 1], rax
00000001403d779f mov      rdi, qword ptr [rcx + 0x9a0]
00000001403d77a6 xorps    xmm0, xmm0
00000001403d77a9 mov      rsi, qword ptr [rbp + 0x7f]
00000001403d77ad xor      eax, eax
00000001403d77af xor      r14d, r14d
00000001403d77b2 mov      qword ptr [rbp - 9], rax
00000001403d77b6 movups   xmmword ptr [rbp - 0x29], xmm0
00000001403d77ba mov      r15, r9
00000001403d77bd mov      rbx, r8
00000001403d77c0 movups   xmmword ptr [rbp - 0x19], xmm0
00000001403d77c4 mov      r13, rdx
00000001403d77c7 mov      r12, rcx
00000001403d77ca cmp      qword ptr [rdi + 0x1328], r14
00000001403d77d1 je       0x1403d7c63
00000001403d77d7 mov      eax, dword ptr [rdi + 0x1330]
00000001403d77dd test     eax, eax
00000001403d77df je       0x1403d7c63
00000001403d77e5 cmp      eax, dword ptr [rdi + 0x135c]
00000001403d77eb jb       0x1403d7c63
00000001403d77f1 lea      rax, [rdx + 0x20]
00000001403d77f5 mov      rcx, rax
00000001403d77f8 mov      qword ptr [rbp - 0x31], rax
00000001403d77fc lea      r8, [rbp - 0x29]
00000001403d7800 lea      rdx, [rip + 0x243f69]
00000001403d7807 call     0x140044420
00000001403d780c lea      rcx, [r13 + 0x30]
00000001403d7810 lea      r8, [rbp - 0x25]
00000001403d7814 lea      rdx, [rip + 0x243f55]
00000001403d781b call     0x140044420
00000001403d7820 lea      rcx, [r13 + 0x40]
00000001403d7824 lea      r8, [rbp - 0x21]
00000001403d7828 lea      rdx, [rip + 0x243f41]
00000001403d782f call     0x140044420
00000001403d7834 lea      rcx, [r13 + 0x50]
00000001403d7838 lea      r8, [rbp - 0x1d]
00000001403d783c lea      rdx, [rip + 0x243f2d]
00000001403d7843 call     0x140044420
00000001403d7848 mov      ecx, dword ptr [rbx]
00000001403d784a mov      eax, dword ptr [rsi]
00000001403d784c cmp      ecx, eax
00000001403d784e jae      0x1403d78aa
00000001403d7850 mov      r9d, dword ptr [rdi + 0x1378]
00000001403d7857 lea      r8, [rip + 0x274c72]
00000001403d785e sub      eax, ecx
00000001403d7860 add      rcx, r15
00000001403d7863 mov      edx, eax
00000001403d7865 mov      eax, dword ptr [rdi + 0x1354]
00000001403d786b mov      dword ptr [rsp + 0x48], eax
00000001403d786f mov      eax, dword ptr [rdi + 0x1370]
00000001403d7875 mov      dword ptr [rsp + 0x40], eax
00000001403d7879 mov      eax, dword ptr [rdi + 0x136c]
00000001403d787f mov      dword ptr [rsp + 0x38], eax
00000001403d7883 mov      eax, dword ptr [rdi + 0x1350]
00000001403d7889 mov      dword ptr [rsp + 0x30], eax
00000001403d788d mov      eax, dword ptr [rdi + 0x1448]
00000001403d7893 mov      dword ptr [rsp + 0x28], eax
00000001403d7897 mov      eax, dword ptr [rdi + 0x13ac]
00000001403d789d mov      dword ptr [rsp + 0x20], eax
00000001403d78a1 call     0x140044426
00000001403d78a6 add      dword ptr [rbx], eax
00000001403d78a8 mov      ecx, dword ptr [rbx]
00000001403d78aa mov      edx, dword ptr [rsi]
00000001403d78ac cmp      ecx, edx
00000001403d78ae jae      0x1403d78d9
00000001403d78b0 movzx    eax, byte ptr [rdi + 0x137c]
00000001403d78b7 lea      r8, [rip + 0x274c42]
00000001403d78be mov      r9d, dword ptr [rdi + 0x1350]
00000001403d78c5 sub      edx, ecx
00000001403d78c7 add      rcx, r15
00000001403d78ca mov      dword ptr [rsp + 0x20], eax
00000001403d78ce call     0x140044426
00000001403d78d3 add      dword ptr [rbx], eax
00000001403d78d5 mov      ecx, dword ptr [rbx]
00000001403d78d7 mov      edx, dword ptr [rsi]
00000001403d78d9 mov      r13d, 0x1fe0000
00000001403d78df test     dword ptr [r12 + 0x13f0], r13d
00000001403d78e7 je       0x1403d7912
00000001403d78e9 cmp      ecx, edx
00000001403d78eb jae      0x1403d792b
00000001403d78ed movzx    eax, byte ptr [rdi + 0x13b0]
00000001403d78f4 lea      r8, [rip + 0x274c25]
00000001403d78fb mov      r9d, dword ptr [rdi + 0x1520]
00000001403d7902 sub      edx, ecx
00000001403d7904 add      rcx, r15
00000001403d7907 mov      dword ptr [rsp + 0x20], eax
00000001403d790b call     0x140044426
00000001403d7910 jmp      0x1403d7927
00000001403d7912 cmp      ecx, edx
00000001403d7914 jae      0x1403d792b
00000001403d7916 sub      edx, ecx
00000001403d7918 lea      r8, [rip + 0x274c31]
00000001403d791f add      rcx, r15
00000001403d7922 call     0x140044426
00000001403d7927 add      dword ptr [rbx], eax
00000001403d7929 mov      ecx, dword ptr [rbx]
00000001403d792b mov      edx, dword ptr [rsi]
00000001403d792d cmp      ecx, edx
00000001403d792f jae      0x1403d796d
00000001403d7931 mov      eax, dword ptr [rdi + 0x13a0]
00000001403d7937 lea      r8, [rip + 0x274c42]
00000001403d793e mov      r9d, dword ptr [rdi + 0x1394]
00000001403d7945 sub      edx, ecx
00000001403d7947 mov      dword ptr [rsp + 0x30], eax
00000001403d794b add      rcx, r15
00000001403d794e mov      eax, dword ptr [rdi + 0x139c]
00000001403d7954 mov      dword ptr [rsp + 0x28], eax
00000001403d7958 mov      eax, dword ptr [rdi + 0x1398]
00000001403d795e mov      dword ptr [rsp + 0x20], eax
00000001403d7962 call     0x140044426
00000001403d7967 add      dword ptr [rbx], eax
00000001403d7969 mov      ecx, dword ptr [rbx]
00000001403d796b mov      edx, dword ptr [rsi]
00000001403d796d test     dword ptr [r12 + 0x13f0], r13d
00000001403d7975 je       0x1403d79b3
00000001403d7977 cmp      ecx, edx
00000001403d7979 jae      0x1403d79cc
00000001403d797b mov      eax, dword ptr [rdi + 0x13c0]
00000001403d7981 lea      r8, [rip + 0x274c28]
00000001403d7988 mov      r9d, dword ptr [rdi + 0x13b4]
00000001403d798f sub      edx, ecx
00000001403d7991 mov      dword ptr [rsp + 0x30], eax
00000001403d7995 add      rcx, r15
00000001403d7998 mov      eax, dword ptr [rdi + 0x13bc]
00000001403d799e mov      dword ptr [rsp + 0x28], eax
00000001403d79a2 mov      eax, dword ptr [rdi + 0x13b8]
00000001403d79a8 mov      dword ptr [rsp + 0x20], eax
00000001403d79ac call     0x140044426
00000001403d79b1 jmp      0x1403d79c8
00000001403d79b3 cmp      ecx, edx
00000001403d79b5 jae      0x1403d79cc
00000001403d79b7 sub      edx, ecx
00000001403d79b9 lea      r8, [rip + 0x274c20]
00000001403d79c0 add      rcx, r15
00000001403d79c3 call     0x140044426
00000001403d79c8 add      dword ptr [rbx], eax
00000001403d79ca mov      ecx, dword ptr [rbx]
00000001403d79cc mov      eax, dword ptr [rsi]
00000001403d79ce cmp      ecx, eax
00000001403d79d0 jae      0x1403d79f0
00000001403d79d2 mov      r9d, dword ptr [rdi + 0x135c]
00000001403d79d9 lea      r8, [rip + 0x274c30]
00000001403d79e0 sub      eax, ecx
00000001403d79e2 add      rcx, r15
00000001403d79e5 mov      edx, eax
00000001403d79e7 call     0x140044426
00000001403d79ec add      dword ptr [rbx], eax
00000001403d79ee mov      ecx, dword ptr [rbx]
00000001403d79f0 mov      eax, dword ptr [rsi]
00000001403d79f2 cmp      ecx, eax
00000001403d79f4 jae      0x1403d7a0b
00000001403d79f6 sub      eax, ecx
00000001403d79f8 lea      r8, [rip + 0x274c31]
00000001403d79ff mov      edx, eax
00000001403d7a01 add      rcx, r15
00000001403d7a04 call     0x140044426
00000001403d7a09 add      dword ptr [rbx], eax
00000001403d7a0b mov      r13, qword ptr [rbp - 0x31]
00000001403d7a0f lea      rdx, [rip + 0x25735a]
00000001403d7a16 mov      rcx, r13
00000001403d7a19 call     0x140044360
00000001403d7a1e test     eax, eax
00000001403d7a20 je       0x1403d7beb
00000001403d7a26 cmp      dword ptr [rbp - 0x29], r14d
00000001403d7a2a je       0x1403d7beb
00000001403d7a30 lea      rdx, [rip + 0x274c09]
00000001403d7a37 mov      rcx, r13
00000001403d7a3a call     0x140044360
00000001403d7a3f test     eax, eax
00000001403d7a41 jne      0x1403d7c4b
00000001403d7a47 mov      al, byte ptr [rbp - 0x25]
00000001403d7a4a mov      byte ptr [rdi + 0x1455], al
00000001403d7a50 mov      al, byte ptr [rbp - 0x21]
00000001403d7a53 mov      byte ptr [rdi + 0x1456], al
00000001403d7a59 mov      al, byte ptr [rbp - 0x1d]
00000001403d7a5c mov      byte ptr [rdi + 0x1457], al
00000001403d7a62 mov      eax, dword ptr [rbp - 0x25]
00000001403d7a65 test     eax, eax
00000001403d7a67 jne      0x1403d7a7a
00000001403d7a69 mov      ecx, dword ptr [rbx]
00000001403d7a6b mov      eax, dword ptr [rsi]
00000001403d7a6d cmp      ecx, eax
00000001403d7a6f jae      0x1403d7ab2
00000001403d7a71 lea      r8, [rip + 0x274bd8]
00000001403d7a78 jmp      0x1403d7aa4
00000001403d7a7a cmp      eax, 1
00000001403d7a7d jne      0x1403d7a90
00000001403d7a7f mov      ecx, dword ptr [rbx]
00000001403d7a81 mov      eax, dword ptr [rsi]
00000001403d7a83 cmp      ecx, eax
00000001403d7a85 jae      0x1403d7ab2
00000001403d7a87 lea      r8, [rip + 0x274bd2]
00000001403d7a8e jmp      0x1403d7aa4
00000001403d7a90 cmp      eax, 2
00000001403d7a93 jne      0x1403d7ab2
00000001403d7a95 mov      ecx, dword ptr [rbx]
00000001403d7a97 mov      eax, dword ptr [rsi]
00000001403d7a99 cmp      ecx, eax
00000001403d7a9b jae      0x1403d7ab2
00000001403d7a9d lea      r8, [rip + 0x274bcc]
00000001403d7aa4 sub      eax, ecx
00000001403d7aa6 add      rcx, r15
00000001403d7aa9 mov      edx, eax
00000001403d7aab call     0x140044426
00000001403d7ab0 add      dword ptr [rbx], eax
00000001403d7ab2 mov      eax, dword ptr [rbx]
00000001403d7ab4 mov      ecx, dword ptr [rsi]
00000001403d7ab6 cmp      eax, ecx
00000001403d7ab8 jae      0x1403d7add
00000001403d7aba mov      r9d, dword ptr [rbp - 0x1d]
00000001403d7abe lea      r8, [rip + 0x274bbb]
00000001403d7ac5 sub      ecx, eax
00000001403d7ac7 mov      edx, ecx
00000001403d7ac9 lea      rcx, [r15 + rax]
00000001403d7acd mov      eax, dword ptr [rbp - 0x21]
00000001403d7ad0 mov      dword ptr [rsp + 0x20], eax
00000001403d7ad4 call     0x140044426
00000001403d7ad9 add      dword ptr [rbx], eax
00000001403d7adb mov      eax, dword ptr [rbx]
00000001403d7add mov      r12d, dword ptr [rbp - 0x1d]
00000001403d7ae1 cmp      dword ptr [rbp - 0x21], r12d
00000001403d7ae5 jbe      0x1403d7b0d
00000001403d7ae7 mov      ecx, dword ptr [rsi]
00000001403d7ae9 cmp      eax, ecx
00000001403d7aeb jae      0x1403d7caa
00000001403d7af1 sub      ecx, eax
00000001403d7af3 lea      r8, [rip + 0x274b96]
00000001403d7afa mov      edx, ecx
00000001403d7afc mov      ecx, eax
00000001403d7afe add      rcx, r15
00000001403d7b01 call     0x140044426
00000001403d7b06 add      dword ptr [rbx], eax
00000001403d7b08 jmp      0x1403d7caa
00000001403d7b0d sub      r12b, byte ptr [rbp - 0x21]
00000001403d7b11 inc      r12b
00000001403d7b14 mov      cl, r12b
00000001403d7b17 call     0x1403e8e18
00000001403d7b1c mov      ecx, dword ptr [rbp - 0x21]
00000001403d7b1f mov      r9, rax
00000001403d7b22 shl      r9, cl
00000001403d7b25 mov      r13d, r14d
00000001403d7b28 mov      qword ptr [rbp - 0x31], r9
00000001403d7b2c cmp      dword ptr [rdi + 0x135c], r14d
00000001403d7b33 jbe      0x1403d7c4b
00000001403d7b39 mov      rcx, qword ptr [rdi + 0x1328]
00000001403d7b40 lea      edx, [r13*2 + 1]
00000001403d7b48 mov      eax, dword ptr [rcx + rdx*4]
00000001403d7b4b mov      ecx, dword ptr [rbp - 0x21]
00000001403d7b4e mov      r8d, eax
00000001403d7b51 shl      r8, 0x20
00000001403d7b55 or       r8, rax
00000001403d7b58 and      r8, r9
00000001403d7b5b shr      r8, cl
00000001403d7b5e cmp      dword ptr [rbp - 0x25], r14d
00000001403d7b62 jne      0x1403d7b7f
00000001403d7b64 mov      ecx, dword ptr [rbx]
00000001403d7b66 mov      eax, dword ptr [rsi]
00000001403d7b68 cmp      ecx, eax
00000001403d7b6a jae      0x1403d7bd9
00000001403d7b6c sub      eax, ecx
00000001403d7b6e mov      r9, r8
00000001403d7b71 mov      edx, eax
00000001403d7b73 lea      r8, [rip + 0x274b36]
00000001403d7b7a add      rcx, r15
00000001403d7b7d jmp      0x1403d7bce
00000001403d7b7f cmp      dword ptr [rbp - 0x25], 1
00000001403d7b83 jne      0x1403d7ba0
00000001403d7b85 mov      ecx, dword ptr [rbx]
00000001403d7b87 mov      eax, dword ptr [rsi]
00000001403d7b89 cmp      ecx, eax
00000001403d7b8b jae      0x1403d7bd9
00000001403d7b8d sub      eax, ecx
00000001403d7b8f mov      r9, r8
00000001403d7b92 mov      edx, eax
00000001403d7b94 lea      r8, [rip + 0x274b25]
00000001403d7b9b add      rcx, r15
00000001403d7b9e jmp      0x1403d7bce
00000001403d7ba0 cmp      dword ptr [rbp - 0x25], 2
00000001403d7ba4 jne      0x1403d7bd9
00000001403d7ba6 mov      dl, r12b
00000001403d7ba9 mov      rcx, r8
00000001403d7bac call     0x1403e8ac8
00000001403d7bb1 mov      r8d, dword ptr [rbx]
00000001403d7bb4 mov      ecx, dword ptr [rsi]
00000001403d7bb6 cmp      r8d, ecx
00000001403d7bb9 jae      0x1403d7bd5
00000001403d7bbb sub      ecx, r8d
00000001403d7bbe mov      r9, rax
00000001403d7bc1 mov      edx, ecx
00000001403d7bc3 lea      rcx, [r15 + r8]
00000001403d7bc7 lea      r8, [rip + 0x274b02]
00000001403d7bce call     0x140044426
00000001403d7bd3 add      dword ptr [rbx], eax
00000001403d7bd5 mov      r9, qword ptr [rbp - 0x31]
00000001403d7bd9 inc      r13d
00000001403d7bdc cmp      r13d, dword ptr [rdi + 0x135c]
00000001403d7be3 jb       0x1403d7b39
00000001403d7be9 jmp      0x1403d7c4b
00000001403d7beb cmp      dword ptr [rdi + 0x135c], r14d
00000001403d7bf2 jbe      0x1403d7c4b
00000001403d7bf4 mov      r11d, dword ptr [rbx]
00000001403d7bf7 lea      eax, [r14 + r14]
00000001403d7bfb mov      ecx, dword ptr [rsi]
00000001403d7bfd cmp      r11d, ecx
00000001403d7c00 jae      0x1403d7c30
00000001403d7c02 mov      r10, qword ptr [rdi + 0x1328]
00000001403d7c09 lea      r9d, [rax + 1]
00000001403d7c0d sub      ecx, r11d
00000001403d7c10 lea      r8, [rip + 0x255eb9]
00000001403d7c17 mov      edx, ecx
00000001403d7c19 lea      rcx, [r15 + r11]
00000001403d7c1d mov      eax, dword ptr [r10 + rax*4]
00000001403d7c21 mov      r9d, dword ptr [r10 + r9*4]
00000001403d7c25 mov      dword ptr [rsp + 0x20], eax
00000001403d7c29 call     0x140044426
00000001403d7c2e add      dword ptr [rbx], eax
00000001403d7c30 movzx    edx, byte ptr [rdi + 0x1459]
00000001403d7c37 mov      rcx, r12
00000001403d7c3a call     0x1403154ac
00000001403d7c3f inc      r14d
00000001403d7c42 cmp      r14d, dword ptr [rdi + 0x135c]
00000001403d7c49 jb       0x1403d7bf4
00000001403d7c4b mov      ecx, dword ptr [rbx]
00000001403d7c4d mov      eax, dword ptr [rsi]
00000001403d7c4f cmp      ecx, eax
00000001403d7c51 jae      0x1403d7caa
00000001403d7c53 sub      eax, ecx
00000001403d7c55 lea      r8, [rip + 0x274a84]
00000001403d7c5c mov      edx, eax
00000001403d7c5e jmp      0x1403d7afe
00000001403d7c63 mov      rcx, qword ptr [rip + 0x548396]
00000001403d7c6a lea      rax, [rip + 0x54838f]
00000001403d7c71 cmp      rcx, rax
00000001403d7c74 je       0x1403d7caa
00000001403d7c76 cmp      byte ptr [rcx + 0x169], 3
00000001403d7c7d jb       0x1403d7caa
00000001403d7c7f test     dword ptr [rcx + 0x16c], 0x1000
00000001403d7c89 je       0x1403d7caa
00000001403d7c8b mov      rcx, qword ptr [rcx + 0x158]
00000001403d7c92 lea      r9, [rip + 0x274817]
00000001403d7c99 mov      edx, 0x47
00000001403d7c9e lea      r8, [rip + 0x2fd573]
00000001403d7ca5 call     0x140008874
00000001403d7caa mov      rcx, qword ptr [rbp - 1]
00000001403d7cae xor      rcx, rsp
00000001403d7cb1 call     0x1405f45b0
00000001403d7cb6 add      rsp, 0x98
00000001403d7cbd pop      r15
00000001403d7cbf pop      r14
00000001403d7cc1 pop      r13
00000001403d7cc3 pop      r12
00000001403d7cc5 pop      rdi
00000001403d7cc6 pop      rsi
00000001403d7cc7 pop      rbx
00000001403d7cc8 pop      rbp
00000001403d7cc9 ret      