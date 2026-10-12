00000001400e572c mov      r11, rsp
00000001400e572f mov      qword ptr [r11 + 0x18], rbx
00000001400e5733 push     rbp
00000001400e5734 push     rsi
00000001400e5735 push     rdi
00000001400e5736 push     r12
00000001400e5738 push     r13
00000001400e573a push     r14
00000001400e573c push     r15
00000001400e573e sub      rsp, 0x50
00000001400e5742 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400e5749 xor      edi, edi
00000001400e574b mov      r14, r8
00000001400e574e mov      ebx, edx
00000001400e5750 mov      r13d, r9d
00000001400e5753 mov      rsi, rcx
00000001400e5756 mov      rdx, qword ptr [rax]
00000001400e5759 lea      r8d, [rdi + 4]
00000001400e575d mov      qword ptr [rsp + 0x40], rdx
00000001400e5762 mov      ebp, r8d
00000001400e5765 mov      byte ptr [r11 + 8], dil
00000001400e5769 mov      dword ptr [rsp + 0x30], edi
00000001400e576d mov      rcx, qword ptr [rip + 0x83a88c]
00000001400e5774 lea      r9, [rip + 0x83a885]
00000001400e577b lea      r10, [rip + 0x5ad9d6]
00000001400e5782 cmp      rcx, r9
00000001400e5785 je       0x1400e57b4
00000001400e5787 mov      eax, dword ptr [rcx + 0x2c]
00000001400e578a test     r8b, al
00000001400e578d je       0x1400e57b4
00000001400e578f mov      rcx, qword ptr [rcx + 0x18]
00000001400e5793 lea      edx, [rdi + 0x22]
00000001400e5796 mov      r8, r10
00000001400e5799 call     0x140001b88
00000001400e579e mov      rdx, qword ptr [rsp + 0x40]
00000001400e57a3 lea      r9, [rip + 0x83a856]
00000001400e57aa mov      r8d, ebp
00000001400e57ad lea      r10, [rip + 0x5ad9a4]
00000001400e57b4 mov      r15, qword ptr [rsp + 0xb0]
00000001400e57bc mov      r12, qword ptr [rsp + 0xb8]
00000001400e57c4 mov      dword ptr [r15], edi
00000001400e57c7 mov      dword ptr [r12], edi
00000001400e57cb cmp      ebx, 0xffedc201
00000001400e57d1 je       0x1400e5e49
00000001400e57d7 cmp      ebx, 0xffedc203
00000001400e57dd je       0x1400e5e0c
00000001400e57e3 cmp      ebx, 0xffedc204
00000001400e57e9 je       0x1400e5c1a
00000001400e57ef cmp      ebx, 0xffedc207
00000001400e57f5 je       0x1400e5aa2
00000001400e57fb cmp      ebx, 0xffedc209
00000001400e5801 je       0x1400e59f1
00000001400e5807 cmp      ebx, 0xffedc20a
00000001400e580d je       0x1400e5819
00000001400e580f mov      edi, 0x10001
00000001400e5814 jmp      0x1400e5e42
00000001400e5819 mov      eax, 0x1c2
00000001400e581e mov      bl, dil
00000001400e5821 mov      byte ptr [rsp + 0x98], bl
00000001400e5828 mov      ebp, 1
00000001400e582d mov      word ptr [rsp + 0xb8], bp
00000001400e5835 cmp      r13d, eax
00000001400e5838 jb       0x1400e5e85
00000001400e583e mov      rcx, qword ptr [rip + 0x83a7bb]
00000001400e5845 cmp      rcx, r9
00000001400e5848 je       0x1400e5867
00000001400e584a cmp      byte ptr [rcx + 0x29], r8b
00000001400e584e jb       0x1400e5867
00000001400e5850 mov      eax, dword ptr [rcx + 0x2c]
00000001400e5853 test     r8b, al
00000001400e5856 je       0x1400e5867
00000001400e5858 mov      rcx, qword ptr [rcx + 0x18]
00000001400e585c lea      edx, [rbp + 0x24]
00000001400e585f mov      r8, r10
00000001400e5862 call     0x140001b88
00000001400e5867 lea      r12, [rsi + 0xc6ee8]
00000001400e586e mov      rax, qword ptr [r12]
00000001400e5872 test     rax, rax
00000001400e5875 je       0x1400e5c12
00000001400e587b cmp      rax, r12
00000001400e587e je       0x1400e5c12
00000001400e5884 mov      r13d, 7
00000001400e588a lea      r8, [rip + 0x51979f]
00000001400e5891 mov      edx, r13d
00000001400e5894 mov      r9d, 0x576
00000001400e589a mov      rcx, rsi
00000001400e589d call     0x1405c3264
00000001400e58a2 mov      rax, qword ptr [r12]
00000001400e58a6 test     rax, rax
00000001400e58a9 je       0x1400e596c
00000001400e58af lea      r8d, [r13 - 1]
00000001400e58b3 mov      r15, rax
00000001400e58b6 movzx    edx, bp
00000001400e58b9 cmp      r15, r12
00000001400e58bc je       0x1400e5964
00000001400e58c2 mov      rax, qword ptr [r15 + 8]
00000001400e58c6 mov      rcx, qword ptr [r15]
00000001400e58c9 mov      qword ptr [rax], rcx
00000001400e58cc mov      qword ptr [rcx + 8], rax
00000001400e58d0 movzx    ecx, dx
00000001400e58d3 add      dx, bp
00000001400e58d6 mov      qword ptr [r15], 0x100100
00000001400e58dd mov      qword ptr [r15 + 8], 0x200200
00000001400e58e5 mov      al, byte ptr [r15 + 0x10]
00000001400e58e9 mov      byte ptr [rcx + r14], al
00000001400e58ed movzx    ecx, dx
00000001400e58f0 mov      word ptr [rsp + 0xb8], dx
00000001400e58f8 add      rcx, r14
00000001400e58fb lea      rdx, [r15 + 0x11]
00000001400e58ff call     0x1400311e8
00000001400e5904 movzx    edx, word ptr [rsp + 0xb8]
00000001400e590c lea      rcx, [rsi + 0xc6ed8]
00000001400e5913 mov      bl, byte ptr [rsp + 0x98]
00000001400e591a xor      eax, eax
00000001400e591c mov      dword ptr [r15 + 0x11], eax
00000001400e5920 add      bl, bpl
00000001400e5923 mov      word ptr [r15 + 0x15], ax
00000001400e5928 mov      r8d, 6
00000001400e592e mov      byte ptr [r15 + 0x10], dil
00000001400e5932 add      dx, r8w
00000001400e5936 mov      rax, qword ptr [rcx + 8]
00000001400e593a mov      qword ptr [r15], rcx
00000001400e593d mov      qword ptr [r15 + 8], rax
00000001400e5941 mov      word ptr [rsp + 0xb8], dx
00000001400e5949 mov      qword ptr [rax], r15
00000001400e594c mov      qword ptr [rcx + 8], r15
00000001400e5950 mov      r15, qword ptr [r12]
00000001400e5954 mov      byte ptr [rsp + 0x98], bl
00000001400e595b test     r15, r15
00000001400e595e jne      0x1400e58b9
00000001400e5964 mov      r15, qword ptr [rsp + 0xb0]
00000001400e596c mov      r9d, 0x583
00000001400e5972 lea      r8, [rip + 0x5196b7]
00000001400e5979 mov      edx, r13d
00000001400e597c mov      rcx, rsi
00000001400e597f call     0x1405c3724
00000001400e5984 mov      byte ptr [r14], bl
00000001400e5987 mov      rcx, qword ptr [rip + 0x83a672]
00000001400e598e lea      rax, [rip + 0x83a66b]
00000001400e5995 cmp      rcx, rax
00000001400e5998 je       0x1400e59e1
00000001400e599a cmp      byte ptr [rcx + 0x29], 4
00000001400e599e jb       0x1400e59e1
00000001400e59a0 bt       dword ptr [rcx + 0x2c], 0xb
00000001400e59a5 jae      0x1400e59e1
00000001400e59a7 movzx    ebx, word ptr [rsp + 0xb8]
00000001400e59af lea      rax, [rsp + 0x40]
00000001400e59b4 mov      rcx, qword ptr [rcx + 0x18]
00000001400e59b8 lea      r9, [rip + 0x519691]
00000001400e59bf mov      edx, 0x26
00000001400e59c4 mov      qword ptr [rsp + 0x48], rbx
00000001400e59c9 lea      r8, [rip + 0x5ad788]
00000001400e59d0 mov      qword ptr [rsp + 0x20], rax
00000001400e59d5 mov      qword ptr [rsp + 0x40], r14
00000001400e59da call     0x140001c88
00000001400e59df jmp      0x1400e59e9
00000001400e59e1 movzx    ebx, word ptr [rsp + 0xb8]
00000001400e59e9 movzx    eax, bx
00000001400e59ec jmp      0x1400e5efe
00000001400e59f1 mov      ebp, 1
00000001400e59f6 cmp      r13d, ebp
00000001400e59f9 jae      0x1400e5a0c
00000001400e59fb mov      dword ptr [r12], ebp
00000001400e59ff mov      eax, 0xc0010016
00000001400e5a04 mov      dword ptr [r15], edi
00000001400e5a07 jmp      0x1400e5f03
00000001400e5a0c mov      rcx, qword ptr [rip + 0x83a5ed]
00000001400e5a13 cmp      rcx, r9
00000001400e5a16 je       0x1400e5a45
00000001400e5a18 cmp      byte ptr [rcx + 0x29], r8b
00000001400e5a1c jb       0x1400e5a45
00000001400e5a1e bt       dword ptr [rcx + 0x2c], 0xb
00000001400e5a23 jae      0x1400e5a45
00000001400e5a25 movzx    r9d, byte ptr [rdx + 0xc5d80]
00000001400e5a2d mov      r8, r10
00000001400e5a30 mov      rcx, qword ptr [rcx + 0x18]
00000001400e5a34 mov      edx, 0x23
00000001400e5a39 call     0x140001bb0
00000001400e5a3e lea      r9, [rip + 0x83a5bb]
00000001400e5a45 mov      rdx, qword ptr [rsp + 0x40]
00000001400e5a4a lea      rsi, [rsp + 0x90]
00000001400e5a52 movzx    edx, byte ptr [rdx + 0xc5d80]
00000001400e5a59 mov      byte ptr [rsp + 0x90], dl
00000001400e5a60 mov      rcx, qword ptr [rip + 0x83a599]
00000001400e5a67 cmp      rcx, r9
00000001400e5a6a je       0x1400e5e31
00000001400e5a70 cmp      byte ptr [rcx + 0x29], 4
00000001400e5a74 jb       0x1400e5e31
00000001400e5a7a bt       dword ptr [rcx + 0x2c], 0xb
00000001400e5a7f jae      0x1400e5e31
00000001400e5a85 mov      rcx, qword ptr [rcx + 0x18]
00000001400e5a89 lea      r8, [rip + 0x5ad6c8]
00000001400e5a90 mov      r9d, edx
00000001400e5a93 mov      edx, 0x24
00000001400e5a98 call     0x140001bb0
00000001400e5a9d jmp      0x1400e5e31
00000001400e5aa2 mov      eax, 0x1c2
00000001400e5aa7 mov      byte ptr [rsp + 0x98], dil
00000001400e5aaf mov      ebp, 1
00000001400e5ab4 movzx    ebx, bp
00000001400e5ab7 cmp      r13d, eax
00000001400e5aba jb       0x1400e5e85
00000001400e5ac0 mov      rcx, qword ptr [rip + 0x83a539]
00000001400e5ac7 cmp      rcx, r9
00000001400e5aca je       0x1400e5ae9
00000001400e5acc cmp      byte ptr [rcx + 0x29], 5
00000001400e5ad0 jb       0x1400e5ae9
00000001400e5ad2 mov      eax, dword ptr [rcx + 0x2c]
00000001400e5ad5 test     r8b, al
00000001400e5ad8 je       0x1400e5ae9
00000001400e5ada mov      rcx, qword ptr [rcx + 0x18]
00000001400e5ade lea      edx, [rbp + 0x26]
00000001400e5ae1 mov      r8, r10
00000001400e5ae4 call     0x140001b88
00000001400e5ae9 lea      r13, [rsi + 0xc7508]
00000001400e5af0 mov      rax, qword ptr [r13]
00000001400e5af4 test     rax, rax
00000001400e5af7 je       0x1400e5c12
00000001400e5afd cmp      rax, r13
00000001400e5b00 je       0x1400e5c12
00000001400e5b06 mov      r9d, 0x5a5
00000001400e5b0c lea      r8, [rip + 0x51951d]
00000001400e5b13 mov      edx, 7
00000001400e5b18 mov      rcx, rsi
00000001400e5b1b call     0x1405c3264
00000001400e5b20 mov      r12, qword ptr [r13]
00000001400e5b24 test     r12, r12
00000001400e5b27 je       0x1400e5be9
00000001400e5b2d mov      edx, 6
00000001400e5b32 movzx    r15d, bx
00000001400e5b36 cmp      r12, r13
00000001400e5b39 je       0x1400e5bd0
00000001400e5b3f mov      rax, qword ptr [r12 + 8]
00000001400e5b44 mov      r8d, edx
00000001400e5b47 mov      rcx, qword ptr [r12]
00000001400e5b4b lea      rdx, [r12 + 0x11]
00000001400e5b50 mov      qword ptr [rax], rcx
00000001400e5b53 mov      qword ptr [rcx + 8], rax
00000001400e5b57 movzx    ecx, r15w
00000001400e5b5b add      r15w, bp
00000001400e5b5f mov      qword ptr [r12], 0x100100
00000001400e5b67 mov      qword ptr [r12 + 8], 0x200200
00000001400e5b70 mov      al, byte ptr [r12 + 0x10]
00000001400e5b75 mov      byte ptr [rcx + r14], al
00000001400e5b79 movzx    ecx, r15w
00000001400e5b7d add      rcx, r14
00000001400e5b80 call     0x1400311e8
00000001400e5b85 add      byte ptr [rsp + 0x98], bpl
00000001400e5b8d lea      rcx, [rsi + 0xc74f8]
00000001400e5b94 xor      eax, eax
00000001400e5b96 mov      edx, 6
00000001400e5b9b mov      dword ptr [r12 + 0x11], eax
00000001400e5ba0 add      r15w, dx
00000001400e5ba4 mov      word ptr [r12 + 0x15], ax
00000001400e5baa mov      byte ptr [r12 + 0x10], dil
00000001400e5baf mov      rax, qword ptr [rcx + 8]
00000001400e5bb3 mov      qword ptr [r12], rcx
00000001400e5bb7 mov      qword ptr [r12 + 8], rax
00000001400e5bbc mov      qword ptr [rax], r12
00000001400e5bbf mov      qword ptr [rcx + 8], r12
00000001400e5bc3 mov      r12, qword ptr [r13]
00000001400e5bc7 test     r12, r12
00000001400e5bca jne      0x1400e5b36
00000001400e5bd0 mov      word ptr [rsp + 0xb8], r15w
00000001400e5bd9 movzx    ebx, word ptr [rsp + 0xb8]
00000001400e5be1 mov      r15, qword ptr [rsp + 0xb0]
00000001400e5be9 mov      r9d, 0x5b2
00000001400e5bef lea      r8, [rip + 0x51943a]
00000001400e5bf6 mov      edx, 7
00000001400e5bfb mov      rcx, rsi
00000001400e5bfe call     0x1405c3724
00000001400e5c03 mov      al, byte ptr [rsp + 0x98]
00000001400e5c0a mov      byte ptr [r14], al
00000001400e5c0d jmp      0x1400e59e9
00000001400e5c12 mov      dword ptr [r15], ebp
00000001400e5c15 jmp      0x1400e5f01
00000001400e5c1a mov      bpl, dil
00000001400e5c1d mov      rcx, qword ptr [rip + 0x83a3dc]
00000001400e5c24 cmp      rcx, r9
00000001400e5c27 je       0x1400e5c48
00000001400e5c29 cmp      byte ptr [rcx + 0x29], r8b
00000001400e5c2d jb       0x1400e5c48
00000001400e5c2f mov      eax, dword ptr [rcx + 0x2c]
00000001400e5c32 test     r8b, al
00000001400e5c35 je       0x1400e5c48
00000001400e5c37 mov      rcx, qword ptr [rcx + 0x18]
00000001400e5c3b mov      edx, 0x28
00000001400e5c40 mov      r8, r10
00000001400e5c43 call     0x140001b88
00000001400e5c48 lea      r12, [rsi + 0xf7128]
00000001400e5c4f mov      rax, qword ptr [r12]
00000001400e5c53 test     rax, rax
00000001400e5c56 je       0x1400e5e05
00000001400e5c5c cmp      rax, r12
00000001400e5c5f je       0x1400e5e05
00000001400e5c65 mov      r13d, 8
00000001400e5c6b lea      r8, [rip + 0x5193be]
00000001400e5c72 mov      edx, r13d
00000001400e5c75 mov      r9d, 0x5c9
00000001400e5c7b mov      rcx, rsi
00000001400e5c7e call     0x1405c3264
00000001400e5c83 mov      rbx, qword ptr [r12]
00000001400e5c87 mov      eax, dword ptr [rbx + 0x5f2]
00000001400e5c8d cmp      eax, dword ptr [rsi + 0xf7138]
00000001400e5c93 jne      0x1400e5d2f
00000001400e5c99 movzx    eax, word ptr [rbx + 0x5f6]
00000001400e5ca0 cmp      ax, word ptr [rsi + 0xf713c]
00000001400e5ca7 jne      0x1400e5d2f
00000001400e5cad mov      al, byte ptr [rsi + 0xf713e]
00000001400e5cb3 cmp      byte ptr [rbx + 0x10], al
00000001400e5cb6 jne      0x1400e5d2f
00000001400e5cb8 movzx    r8d, word ptr [rbx + 0x5f0]
00000001400e5cc0 lea      rdx, [rbx + 0x11]
00000001400e5cc4 mov      rcx, r14
00000001400e5cc7 call     0x1400311e8
00000001400e5ccc movzx    eax, word ptr [rbx + 0x5f0]
00000001400e5cd3 mov      dword ptr [r15], eax
00000001400e5cd6 xor      eax, eax
00000001400e5cd8 mov      dword ptr [rbx + 0x5f2], eax
00000001400e5cde mov      word ptr [rbx + 0x5f6], ax
00000001400e5ce5 mov      byte ptr [rbx + 0x10], dil
00000001400e5ce9 mov      rdx, qword ptr [r12]
00000001400e5ced mov      byte ptr [rsi + 0xf713e], dil
00000001400e5cf4 mov      rax, qword ptr [rdx + 8]
00000001400e5cf8 mov      rcx, qword ptr [rdx]
00000001400e5cfb mov      qword ptr [rax], rcx
00000001400e5cfe mov      qword ptr [rcx + 8], rax
00000001400e5d02 lea      rcx, [rsi + 0xf7118]
00000001400e5d09 mov      qword ptr [rdx], 0x100100
00000001400e5d10 mov      qword ptr [rdx + 8], 0x200200
00000001400e5d18 mov      rax, qword ptr [rcx + 8]
00000001400e5d1c mov      qword ptr [rdx], rcx
00000001400e5d1f mov      qword ptr [rdx + 8], rax
00000001400e5d23 mov      qword ptr [rax], rdx
00000001400e5d26 mov      qword ptr [rcx + 8], rdx
00000001400e5d2a jmp      0x1400e5ddf
00000001400e5d2f mov      rbx, qword ptr [rbx]
00000001400e5d32 cmp      rbx, r12
00000001400e5d35 je       0x1400e5de4
00000001400e5d3b mov      eax, dword ptr [rbx + 0x5f2]
00000001400e5d41 cmp      eax, dword ptr [rsi + 0xf7138]
00000001400e5d47 jne      0x1400e5d64
00000001400e5d49 movzx    eax, word ptr [rbx + 0x5f6]
00000001400e5d50 cmp      ax, word ptr [rsi + 0xf713c]
00000001400e5d57 jne      0x1400e5d64
00000001400e5d59 mov      al, byte ptr [rsi + 0xf713e]
00000001400e5d5f cmp      byte ptr [rbx + 0x10], al
00000001400e5d62 je       0x1400e5d71
00000001400e5d64 mov      rax, qword ptr [rbx]
00000001400e5d67 mov      rbx, rax
00000001400e5d6a cmp      rax, r12
00000001400e5d6d jne      0x1400e5d3b
00000001400e5d6f jmp      0x1400e5de4
00000001400e5d71 movzx    r8d, word ptr [rbx + 0x5f0]
00000001400e5d79 lea      rdx, [rbx + 0x11]
00000001400e5d7d mov      rcx, r14
00000001400e5d80 call     0x1400311e8
00000001400e5d85 movzx    eax, word ptr [rbx + 0x5f0]
00000001400e5d8c mov      dword ptr [r15], eax
00000001400e5d8f xor      eax, eax
00000001400e5d91 mov      dword ptr [rbx + 0x5f2], eax
00000001400e5d97 mov      word ptr [rbx + 0x5f6], ax
00000001400e5d9e mov      byte ptr [rbx + 0x10], dil
00000001400e5da2 mov      byte ptr [rsi + 0xf713e], dil
00000001400e5da9 mov      rax, qword ptr [rbx + 8]
00000001400e5dad mov      rcx, qword ptr [rbx]
00000001400e5db0 mov      qword ptr [rax], rcx
00000001400e5db3 mov      qword ptr [rcx + 8], rax
00000001400e5db7 lea      rcx, [rsi + 0xf7118]
00000001400e5dbe mov      qword ptr [rbx], 0x100100
00000001400e5dc5 mov      qword ptr [rbx + 8], 0x200200
00000001400e5dcd mov      rax, qword ptr [rcx + 8]
00000001400e5dd1 mov      qword ptr [rbx], rcx
00000001400e5dd4 mov      qword ptr [rbx + 8], rax
00000001400e5dd8 mov      qword ptr [rax], rbx
00000001400e5ddb mov      qword ptr [rcx + 8], rbx
00000001400e5ddf mov      ebp, 1
00000001400e5de4 mov      r9d, 0x5ea
00000001400e5dea lea      r8, [rip + 0x51923f]
00000001400e5df1 mov      edx, r13d
00000001400e5df4 mov      rcx, rsi
00000001400e5df7 call     0x1405c3724
00000001400e5dfc test     bpl, bpl
00000001400e5dff jne      0x1400e5f01
00000001400e5e05 mov      eax, edi
00000001400e5e07 jmp      0x1400e5e8e
00000001400e5e0c mov      r8d, 0x10
00000001400e5e12 cmp      r13d, r8d
00000001400e5e15 jae      0x1400e5e1d
00000001400e5e17 mov      dword ptr [r12], r8d
00000001400e5e1b jmp      0x1400e5e89
00000001400e5e1d lea      rdx, [rsi + 0xf713f]
00000001400e5e24 mov      rcx, r14
00000001400e5e27 call     0x1400311e8
00000001400e5e2c lea      rsi, [rsp + 0x30]
00000001400e5e31 mov      r8d, ebp
00000001400e5e34 mov      dword ptr [r15], ebp
00000001400e5e37 mov      rdx, rsi
00000001400e5e3a mov      rcx, r14
00000001400e5e3d call     0x1400311e8
00000001400e5e42 mov      eax, edi
00000001400e5e44 jmp      0x1400e5f03
00000001400e5e49 lea      rbx, [rsi + 0xc5d88]
00000001400e5e50 mov      rcx, qword ptr [rip + 0x83a1a9]
00000001400e5e57 cmp      rcx, r9
00000001400e5e5a je       0x1400e5e7b
00000001400e5e5c cmp      byte ptr [rcx + 0x29], r8b
00000001400e5e60 jb       0x1400e5e7b
00000001400e5e62 mov      eax, dword ptr [rcx + 0x2c]
00000001400e5e65 test     r8b, al
00000001400e5e68 je       0x1400e5e7b
00000001400e5e6a mov      rcx, qword ptr [rcx + 0x18]
00000001400e5e6e mov      edx, 0x2a
00000001400e5e73 mov      r8, r10
00000001400e5e76 call     0x140001b88
00000001400e5e7b mov      eax, 0x200
00000001400e5e80 cmp      r13d, eax
00000001400e5e83 jae      0x1400e5e93
00000001400e5e85 mov      dword ptr [r12], eax
00000001400e5e89 mov      eax, 0xc0010016
00000001400e5e8e mov      dword ptr [r15], edi
00000001400e5e91 jmp      0x1400e5f03
00000001400e5e93 mov      rcx, rsi
00000001400e5e96 call     0x1400b32fc
00000001400e5e9b test     al, al
00000001400e5e9d je       0x1400e5ec5
00000001400e5e9f mov      al, byte ptr [rbx + 0x100]
00000001400e5ea5 lea      rcx, [r14 + 1]
00000001400e5ea9 mov      byte ptr [r14], al
00000001400e5eac mov      rdx, rbx
00000001400e5eaf movzx    r8d, byte ptr [rbx + 0x100]
00000001400e5eb7 call     0x1400311e8
00000001400e5ebc mov      dil, byte ptr [rbx + 0x100]
00000001400e5ec3 jmp      0x1400e5ef6
00000001400e5ec5 cmp      byte ptr [rsi + 0xbbbf4], dil
00000001400e5ecc je       0x1400e5efa
00000001400e5ece mov      al, byte ptr [rbx + 0x302]
00000001400e5ed4 lea      rdx, [rbx + 0x202]
00000001400e5edb mov      byte ptr [r14], al
00000001400e5ede lea      rcx, [r14 + 1]
00000001400e5ee2 movzx    r8d, byte ptr [rbx + 0x302]
00000001400e5eea call     0x1400311e8
00000001400e5eef mov      dil, byte ptr [rbx + 0x302]
00000001400e5ef6 add      dil, 1
00000001400e5efa movzx    eax, dil
00000001400e5efe mov      dword ptr [r15], eax
00000001400e5f01 xor      eax, eax
00000001400e5f03 mov      rbx, qword ptr [rsp + 0xa0]
00000001400e5f0b add      rsp, 0x50
00000001400e5f0f pop      r15
00000001400e5f11 pop      r14
00000001400e5f13 pop      r13
00000001400e5f15 pop      r12
00000001400e5f17 pop      rdi
00000001400e5f18 pop      rsi
00000001400e5f19 pop      rbp
00000001400e5f1a ret      