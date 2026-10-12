000000014005b450 mov      qword ptr [rsp + 8], rbx
000000014005b455 push     rbp
000000014005b456 push     rsi
000000014005b457 push     rdi
000000014005b458 push     r12
000000014005b45a push     r13
000000014005b45c push     r14
000000014005b45e push     r15
000000014005b460 lea      rbp, [rsp - 0x27]
000000014005b465 sub      rsp, 0xd0
000000014005b46c mov      rax, qword ptr [rip + 0x8cbfed]
000000014005b473 xor      rax, rsp
000000014005b476 mov      qword ptr [rbp + 0x17], rax
000000014005b47a mov      rax, qword ptr [rdx + 0xaf3b8]
000000014005b481 mov      rdi, rdx
000000014005b484 mov      r13, qword ptr [rdx + 0x113720]
000000014005b48b mov      rbx, r8
000000014005b48e xor      edx, edx
000000014005b490 mov      r15, rcx
000000014005b493 lea      rcx, [rbp - 0x29]
000000014005b497 mov      r14, qword ptr [rax]
000000014005b49a lea      r8d, [rdx + 0x40]
000000014005b49e call     0x1405f4640
000000014005b4a3 xor      eax, eax
000000014005b4a5 xorps    xmm0, xmm0
000000014005b4a8 xor      esi, esi
000000014005b4aa mov      qword ptr [rbp - 0x31], rax
000000014005b4ae mov      qword ptr [rbp - 0x59], rsi
000000014005b4b2 movups   xmmword ptr [rbp - 0x51], xmm0
000000014005b4b6 movups   xmmword ptr [rbp - 0x41], xmm0
000000014005b4ba mov      rcx, qword ptr [rip + 0x8c4b3f]
000000014005b4c1 lea      r8, [rip + 0x8c4b38]
000000014005b4c8 lea      r10, [rip + 0x637669]
000000014005b4cf cmp      rcx, r8
000000014005b4d2 je       0x14005b4fa
000000014005b4d4 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b4d9 jae      0x14005b4fa
000000014005b4db mov      rcx, qword ptr [rcx + 0x18]
000000014005b4df mov      edx, 0x8e
000000014005b4e4 mov      r8, r10
000000014005b4e7 call     0x140001b88
000000014005b4ec lea      r8, [rip + 0x8c4b0d]
000000014005b4f3 lea      r10, [rip + 0x63763e]
000000014005b4fa movzx    edx, byte ptr [rbx + 2]
000000014005b4fe cmp      dl, 0x88
000000014005b501 je       0x14005b579
000000014005b503 mov      rcx, qword ptr [rip + 0x8c4af6]
000000014005b50a cmp      rcx, r8
000000014005b50d je       0x14005b56f
000000014005b50f cmp      byte ptr [rcx + 0x29], 3
000000014005b513 jb       0x14005b547
000000014005b515 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b51a jae      0x14005b547
000000014005b51c mov      r9d, dword ptr [rbx]
000000014005b51f mov      r8d, edx
000000014005b522 mov      rcx, qword ptr [rcx + 0x18]
000000014005b526 mov      edx, 0x8f
000000014005b52b movzx    eax, r9w
000000014005b52f mov      dword ptr [rsp + 0x28], eax
000000014005b533 mov      dword ptr [rsp + 0x20], r8d
000000014005b538 mov      r8, r10
000000014005b53b call     0x140001c34
000000014005b540 lea      r8, [rip + 0x8c4ab9]
000000014005b547 mov      rcx, qword ptr [rip + 0x8c4ab2]
000000014005b54e cmp      rcx, r8
000000014005b551 je       0x14005b56f
000000014005b553 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b558 jae      0x14005b56f
000000014005b55a mov      rcx, qword ptr [rcx + 0x18]
000000014005b55e lea      r8, [rip + 0x6375d3]
000000014005b565 mov      edx, 0x90
000000014005b56a call     0x140001b88
000000014005b56f mov      eax, 2
000000014005b574 jmp      0x14005bb28
000000014005b579 mov      r9d, dword ptr [rbx]
000000014005b57c bt       r9d, 0x19
000000014005b581 jae      0x14005b5f1
000000014005b583 mov      rcx, qword ptr [rip + 0x8c4a76]
000000014005b58a cmp      rcx, r8
000000014005b58d je       0x14005b5ad
000000014005b58f cmp      byte ptr [rcx + 0x29], 3
000000014005b593 jb       0x14005b5ad
000000014005b595 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b59a jae      0x14005b5ad
000000014005b59c mov      rcx, qword ptr [rcx + 0x18]
000000014005b5a0 mov      edx, 0x91
000000014005b5a5 mov      r8, r10
000000014005b5a8 call     0x140001bb0
000000014005b5ad mov      r8, rbx
000000014005b5b0 mov      rdx, rdi
000000014005b5b3 mov      rcx, r15
000000014005b5b6 call     0x14005ae90
000000014005b5bb mov      rcx, qword ptr [rip + 0x8c4a3e]
000000014005b5c2 lea      r15, [rip + 0x8c4a37]
000000014005b5c9 cmp      rcx, r15
000000014005b5cc je       0x14005b5ea
000000014005b5ce bt       dword ptr [rcx + 0x2c], 0xc
000000014005b5d3 jae      0x14005b5ea
000000014005b5d5 mov      rcx, qword ptr [rcx + 0x18]
000000014005b5d9 lea      r8, [rip + 0x637558]
000000014005b5e0 mov      edx, 0x92
000000014005b5e5 call     0x140001b88
000000014005b5ea xor      eax, eax
000000014005b5ec jmp      0x14005bb28
000000014005b5f1 mov      eax, dword ptr [rbp - 0x29]
000000014005b5f4 and      eax, 0xff88ffff
000000014005b5f9 or       eax, 0x880000
000000014005b5fe mov      dword ptr [rbp - 0x29], eax
000000014005b601 mov      eax, dword ptr [rbx + 4]
000000014005b604 mov      dword ptr [rbp - 0x25], eax
000000014005b607 movzx    eax, r9w
000000014005b60b sub      eax, 7
000000014005b60e je       0x14005bd0c
000000014005b614 sub      eax, 1
000000014005b617 je       0x14005bb4f
000000014005b61d sub      eax, 1
000000014005b620 je       0x14005bab6
000000014005b626 sub      eax, 0x15
000000014005b629 je       0x14005b802
000000014005b62f cmp      eax, 1
000000014005b632 jne      0x14005baf7
000000014005b638 mov      rcx, qword ptr [rip + 0x8c49c1]
000000014005b63f cmp      rcx, r8
000000014005b642 je       0x14005b662
000000014005b644 cmp      byte ptr [rcx + 0x29], 4
000000014005b648 jb       0x14005b662
000000014005b64a bt       dword ptr [rcx + 0x2c], 0xc
000000014005b64f jae      0x14005b662
000000014005b651 mov      rcx, qword ptr [rcx + 0x18]
000000014005b655 mov      edx, 0xa4
000000014005b65a mov      r8, r10
000000014005b65d call     0x140001b88
000000014005b662 lea      rdx, [rbp - 0x59]
000000014005b666 lea      rcx, [r14 + 0x8b008]
000000014005b66d call     0x1400ab68c
000000014005b672 test     al, al
000000014005b674 jne      0x14005b6ac
000000014005b676 mov      rcx, qword ptr [rip + 0x8c4983]
000000014005b67d lea      r15, [rip + 0x8c497c]
000000014005b684 cmp      rcx, r15
000000014005b687 je       0x14005bd7f
000000014005b68d cmp      byte ptr [rcx + 0x29], 3
000000014005b691 jb       0x14005bd7f
000000014005b697 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b69c jae      0x14005bd7f
000000014005b6a2 mov      edx, 0xa5
000000014005b6a7 jmp      0x14005bd6f
000000014005b6ac mov      rdx, qword ptr [rbp - 0x59]
000000014005b6b0 movzx    eax, word ptr [rdx + 0x24]
000000014005b6b4 test     ax, ax
000000014005b6b7 je       0x14005b6c8
000000014005b6b9 movzx    edx, ax
000000014005b6bc mov      rcx, rdi
000000014005b6bf call     0x140051e20
000000014005b6c4 mov      rdx, qword ptr [rbp - 0x59]
000000014005b6c8 mov      rdx, qword ptr [rdx + 0x28]
000000014005b6cc xor      r8d, r8d
000000014005b6cf mov      rcx, rdi
000000014005b6d2 call     0x14010bd6c
000000014005b6d7 mov      rdx, qword ptr [rbp - 0x59]
000000014005b6db mov      r9, qword ptr [rdx + 0x28]
000000014005b6df test     r9, r9
000000014005b6e2 je       0x14005b795
000000014005b6e8 mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005b6ef lea      r8, [rdx + 0x1d]
000000014005b6f3 mov      rbx, qword ptr [r9 + 0x20]
000000014005b6f7 add      rdx, 0x28
000000014005b6fb mov      dword ptr [rsp + 0x48], esi
000000014005b6ff mov      dword ptr [rsp + 0x40], esi
000000014005b703 mov      rcx, qword ptr [rax]
000000014005b706 mov      rax, qword ptr [r9 + 0x18]
000000014005b70a mov      r9, qword ptr [rdi + 0xab230]
000000014005b711 mov      byte ptr [rsp + 0x38], sil
000000014005b716 mov      rcx, qword ptr [rcx + 0x20708]
000000014005b71d mov      byte ptr [rsp + 0x30], sil
000000014005b722 mov      qword ptr [rsp + 0x28], rsi
000000014005b727 mov      qword ptr [rsp + 0x20], rax
000000014005b72c call     0x1401b62ec
000000014005b731 mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005b738 mov      rdx, rbx
000000014005b73b mov      rcx, qword ptr [rax]
000000014005b73e mov      rcx, qword ptr [rcx + 0x20708]
000000014005b745 call     0x1401b68c8
000000014005b74a test     eax, eax
000000014005b74c je       0x14005b789
000000014005b74e mov      rcx, qword ptr [rip + 0x8c48ab]
000000014005b755 lea      r15, [rip + 0x8c48a4]
000000014005b75c cmp      rcx, r15
000000014005b75f je       0x14005b783
000000014005b761 cmp      byte ptr [rcx + 0x29], 3
000000014005b765 jb       0x14005b783
000000014005b767 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b76c jae      0x14005b783
000000014005b76e mov      rcx, qword ptr [rcx + 0x18]
000000014005b772 lea      r8, [rip + 0x6373bf]
000000014005b779 mov      edx, 0xa6
000000014005b77e call     0x140001b88
000000014005b783 mov      rdx, qword ptr [rbp - 0x59]
000000014005b787 jmp      0x14005b79c
000000014005b789 mov      rax, qword ptr [rbp - 0x59]
000000014005b78d mov      qword ptr [rax + 0x28], rsi
000000014005b791 mov      rdx, qword ptr [rbp - 0x59]
000000014005b795 lea      r15, [rip + 0x8c4864]
000000014005b79c mov      ecx, dword ptr [rdx + 0x14]
000000014005b79f lea      eax, [rcx - 1]
000000014005b7a2 cmp      eax, 1
000000014005b7a5 jbe      0x14005b7c1
000000014005b7a7 cmp      ecx, 3
000000014005b7aa jne      0x14005b7f5
000000014005b7ac mov      rcx, rdi
000000014005b7af call     0x140051c10
000000014005b7b4 mov      rax, qword ptr [rbp - 0x59]
000000014005b7b8 mov      dword ptr [rax + 0x14], 1
000000014005b7bf jmp      0x14005b7f5
000000014005b7c1 mov      dl, 1
000000014005b7c3 lea      rcx, [r14 + 0x8b008]
000000014005b7ca call     0x1400ab314
000000014005b7cf mov      rdx, rax
000000014005b7d2 mov      qword ptr [rbp - 0x59], rax
000000014005b7d6 mov      rcx, rdi
000000014005b7d9 call     0x140051c10
000000014005b7de mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005b7e5 mov      rdx, qword ptr [rbp - 0x59]
000000014005b7e9 mov      rcx, qword ptr [rax]
000000014005b7ec add      rcx, 0x18
000000014005b7f0 call     0x140051e94
000000014005b7f5 mov      rcx, rdi
000000014005b7f8 call     0x14005acd8
000000014005b7fd jmp      0x14005bafe
000000014005b802 mov      rcx, qword ptr [rip + 0x8c47f7]
000000014005b809 cmp      rcx, r8
000000014005b80c je       0x14005b82c
000000014005b80e cmp      byte ptr [rcx + 0x29], 4
000000014005b812 jb       0x14005b82c
000000014005b814 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b819 jae      0x14005b82c
000000014005b81b mov      rcx, qword ptr [rcx + 0x18]
000000014005b81f mov      edx, 0x9d
000000014005b824 mov      r8, r10
000000014005b827 call     0x140001b88
000000014005b82c lea      rcx, [r14 + 0x8b008]
000000014005b833 lea      rdx, [rbp - 0x59]
000000014005b837 call     0x1400ab68c
000000014005b83c test     al, al
000000014005b83e jne      0x14005b876
000000014005b840 mov      rcx, qword ptr [rip + 0x8c47b9]
000000014005b847 lea      r15, [rip + 0x8c47b2]
000000014005b84e cmp      rcx, r15
000000014005b851 je       0x14005bd7f
000000014005b857 cmp      byte ptr [rcx + 0x29], 3
000000014005b85b jb       0x14005bd7f
000000014005b861 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b866 jae      0x14005bd7f
000000014005b86c mov      edx, 0x9e
000000014005b871 jmp      0x14005bd6f
000000014005b876 mov      r14, qword ptr [rbp - 0x59]
000000014005b87a mov      rbx, qword ptr [r14 + 0x28]
000000014005b87e test     rbx, rbx
000000014005b881 je       0x14005ba8f
000000014005b887 movzx    edx, byte ptr [rbx + 0x29]
000000014005b88b test     dl, dl
000000014005b88d je       0x14005ba65
000000014005b893 mov      rbx, qword ptr [rbx + 0x20]
000000014005b897 test     rbx, rbx
000000014005b89a je       0x14005ba26
000000014005b8a0 mov      r9d, dword ptr [rbx + 0x20]
000000014005b8a4 test     r9d, r9d
000000014005b8a7 je       0x14005b9ef
000000014005b8ad mov      dword ptr [rbx + 0x24], esi
000000014005b8b0 mov      rax, qword ptr [rbp - 0x59]
000000014005b8b4 cmp      byte ptr [rax + 0x59], sil
000000014005b8b8 je       0x14005b8f6
000000014005b8ba mov      byte ptr [rax + 0x59], sil
000000014005b8be mov      eax, 0xffff
000000014005b8c3 add      word ptr [rdi + 0xc0692], ax
000000014005b8ca mov      eax, dword ptr [rdi + 0x53e9a0]
000000014005b8d0 and      eax, 7
000000014005b8d3 cmp      al, 3
000000014005b8d5 jne      0x14005b8e0
000000014005b8d7 mov      rcx, qword ptr [rdi + 0x113728]
000000014005b8de jmp      0x14005b8f1
000000014005b8e0 mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005b8e7 mov      rcx, qword ptr [rax]
000000014005b8ea mov      rcx, qword ptr [rcx + 0x113728]
000000014005b8f1 call     0x14000a5f0
000000014005b8f6 lea      rdx, [rbx + 0x18]
000000014005b8fa mov      rcx, rdi
000000014005b8fd call     0x1400b71fc
000000014005b902 movzx    edx, word ptr [r14 + 0x24]
000000014005b907 mov      rcx, rdi
000000014005b90a call     0x140051e20
000000014005b90f mov      rdx, qword ptr [rbp - 0x59]
000000014005b913 mov      rcx, rdi
000000014005b916 add      rdx, 0x1d
000000014005b91a call     0x1400d42e4
000000014005b91f mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005b926 xor      r9d, r9d
000000014005b929 mov      rdx, qword ptr [rbp - 0x59]
000000014005b92d xor      r8d, r8d
000000014005b930 mov      dword ptr [rsp + 0x28], esi
000000014005b934 mov      dword ptr [rsp + 0x20], esi
000000014005b938 mov      rcx, qword ptr [rax]
000000014005b93b mov      rdx, qword ptr [rdx + 0x28]
000000014005b93f mov      rcx, qword ptr [rcx + 0x20708]
000000014005b946 call     0x1401b65dc
000000014005b94b test     eax, eax
000000014005b94d je       0x14005b986
000000014005b94f mov      rcx, qword ptr [rip + 0x8c46aa]
000000014005b956 lea      r15, [rip + 0x8c46a3]
000000014005b95d cmp      rcx, r15
000000014005b960 je       0x14005b98d
000000014005b962 cmp      byte ptr [rcx + 0x29], 3
000000014005b966 jb       0x14005b98d
000000014005b968 bt       dword ptr [rcx + 0x2c], 0xc
000000014005b96d jae      0x14005b98d
000000014005b96f mov      rcx, qword ptr [rcx + 0x18]
000000014005b973 lea      r8, [rip + 0x6371be]
000000014005b97a mov      edx, 0xa3
000000014005b97f call     0x140001b88
000000014005b984 jmp      0x14005b98d
000000014005b986 lea      r15, [rip + 0x8c4673]
000000014005b98d mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005b994 xor      r9d, r9d
000000014005b997 xor      r8d, r8d
000000014005b99a mov      dword ptr [rsp + 0x20], esi
000000014005b99e mov      rdx, rbx
000000014005b9a1 mov      rcx, qword ptr [rax]
000000014005b9a4 mov      rcx, qword ptr [rcx + 0x20708]
000000014005b9ab call     0x1401b6770
000000014005b9b0 mov      eax, dword ptr [rbp - 0x29]
000000014005b9b3 lea      r8, [rbp - 0x51]
000000014005b9b7 and      eax, 0xffff001f
000000014005b9bc lea      rdx, [rbp - 0x29]
000000014005b9c0 or       eax, 0x1f
000000014005b9c3 xor      r9d, r9d
000000014005b9c6 mov      dword ptr [rbp - 0x29], eax
000000014005b9c9 mov      rax, qword ptr [rdi + 0x53f620]
000000014005b9d0 mov      qword ptr [rbp - 9], rax
000000014005b9d4 mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005b9db mov      rcx, qword ptr [rax]
000000014005b9de mov      rcx, qword ptr [rcx + 0x20708]
000000014005b9e5 call     0x1401b9cbc
000000014005b9ea jmp      0x14005bafe
000000014005b9ef mov      rcx, qword ptr [rip + 0x8c460a]
000000014005b9f6 lea      r15, [rip + 0x8c4603]
000000014005b9fd cmp      rcx, r15
000000014005ba00 je       0x14005ba5b
000000014005ba02 cmp      byte ptr [rcx + 0x29], 3
000000014005ba06 jb       0x14005ba5b
000000014005ba08 bt       dword ptr [rcx + 0x2c], 0xc
000000014005ba0d jae      0x14005ba5b
000000014005ba0f mov      edx, 0x9f
000000014005ba14 mov      rcx, qword ptr [rcx + 0x18]
000000014005ba18 lea      r8, [rip + 0x637119]
000000014005ba1f call     0x140001bb0
000000014005ba24 jmp      0x14005ba5b
000000014005ba26 mov      rcx, qword ptr [rip + 0x8c45d3]
000000014005ba2d lea      r15, [rip + 0x8c45cc]
000000014005ba34 cmp      rcx, r15
000000014005ba37 je       0x14005ba5b
000000014005ba39 cmp      byte ptr [rcx + 0x29], 3
000000014005ba3d jb       0x14005ba5b
000000014005ba3f bt       dword ptr [rcx + 0x2c], 0xc
000000014005ba44 jae      0x14005ba5b
000000014005ba46 mov      edx, 0xa0
000000014005ba4b mov      rcx, qword ptr [rcx + 0x18]
000000014005ba4f lea      r8, [rip + 0x6370e2]
000000014005ba56 call     0x140001b88
000000014005ba5b mov      esi, 1
000000014005ba60 jmp      0x14005bafe
000000014005ba65 mov      rcx, qword ptr [rip + 0x8c4594]
000000014005ba6c lea      r15, [rip + 0x8c458d]
000000014005ba73 cmp      rcx, r15
000000014005ba76 je       0x14005ba5b
000000014005ba78 cmp      byte ptr [rcx + 0x29], 3
000000014005ba7c jb       0x14005ba5b
000000014005ba7e bt       dword ptr [rcx + 0x2c], 0xc
000000014005ba83 jae      0x14005ba5b
000000014005ba85 mov      r9d, edx
000000014005ba88 mov      edx, 0xa1
000000014005ba8d jmp      0x14005ba14
000000014005ba8f mov      rcx, qword ptr [rip + 0x8c456a]
000000014005ba96 lea      r15, [rip + 0x8c4563]
000000014005ba9d cmp      rcx, r15
000000014005baa0 je       0x14005ba5b
000000014005baa2 cmp      byte ptr [rcx + 0x29], 3
000000014005baa6 jb       0x14005ba5b
000000014005baa8 bt       dword ptr [rcx + 0x2c], 0xc
000000014005baad jae      0x14005ba5b
000000014005baaf mov      edx, 0xa2
000000014005bab4 jmp      0x14005ba4b
000000014005bab6 mov      rcx, qword ptr [rip + 0x8c4543]
000000014005babd cmp      rcx, r8
000000014005bac0 je       0x14005bae0
000000014005bac2 cmp      byte ptr [rcx + 0x29], 4
000000014005bac6 jb       0x14005bae0
000000014005bac8 bt       dword ptr [rcx + 0x2c], 0xc
000000014005bacd jae      0x14005bae0
000000014005bacf mov      rcx, qword ptr [rcx + 0x18]
000000014005bad3 mov      edx, 0x9c
000000014005bad8 mov      r8, r10
000000014005badb call     0x140001b88
000000014005bae0 mov      rdx, qword ptr [rbx + 0x28]
000000014005bae4 mov      r8b, 1
000000014005bae7 mov      rcx, rdi
000000014005baea call     0x14010bd6c
000000014005baef mov      rcx, rdi
000000014005baf2 call     0x14005acd8
000000014005baf7 lea      r15, [rip + 0x8c4502]
000000014005bafe mov      rcx, qword ptr [rip + 0x8c44fb]
000000014005bb05 cmp      rcx, r15
000000014005bb08 je       0x14005bb26
000000014005bb0a bt       dword ptr [rcx + 0x2c], 0xc
000000014005bb0f jae      0x14005bb26
000000014005bb11 mov      rcx, qword ptr [rcx + 0x18]
000000014005bb15 lea      r8, [rip + 0x63701c]
000000014005bb1c mov      edx, 0xa7
000000014005bb21 call     0x140001b88
000000014005bb26 mov      eax, esi
000000014005bb28 mov      rcx, qword ptr [rbp + 0x17]
000000014005bb2c xor      rcx, rsp
000000014005bb2f call     0x1405f45b0
000000014005bb34 mov      rbx, qword ptr [rsp + 0x110]
000000014005bb3c add      rsp, 0xd0
000000014005bb43 pop      r15
000000014005bb45 pop      r14
000000014005bb47 pop      r13
000000014005bb49 pop      r12
000000014005bb4b pop      rdi
000000014005bb4c pop      rsi
000000014005bb4d pop      rbp
000000014005bb4e ret      
000000014005bb4f mov      rcx, qword ptr [rip + 0x8c44aa]
000000014005bb56 cmp      rcx, r8
000000014005bb59 je       0x14005bb79
000000014005bb5b cmp      byte ptr [rcx + 0x29], 4
000000014005bb5f jb       0x14005bb79
000000014005bb61 bt       dword ptr [rcx + 0x2c], 0xc
000000014005bb66 jae      0x14005bb79
000000014005bb68 mov      rcx, qword ptr [rcx + 0x18]
000000014005bb6c mov      edx, 0x98
000000014005bb71 mov      r8, r10
000000014005bb74 call     0x140001b88
000000014005bb79 mov      rbx, qword ptr [rbx + 0x28]
000000014005bb7d lea      rdx, [rbp - 0x59]
000000014005bb81 lea      rcx, [r14 + 0x8b008]
000000014005bb88 call     0x1400ab68c
000000014005bb8d test     al, al
000000014005bb8f jne      0x14005bbc7
000000014005bb91 mov      rcx, qword ptr [rip + 0x8c4468]
000000014005bb98 lea      r15, [rip + 0x8c4461]
000000014005bb9f cmp      rcx, r15
000000014005bba2 je       0x14005bd7f
000000014005bba8 cmp      byte ptr [rcx + 0x29], 3
000000014005bbac jb       0x14005bd7f
000000014005bbb2 bt       dword ptr [rcx + 0x2c], 0xc
000000014005bbb7 jae      0x14005bd7f
000000014005bbbd mov      edx, 0x99
000000014005bbc2 jmp      0x14005bd6f
000000014005bbc7 mov      rax, qword ptr [rbp - 0x59]
000000014005bbcb cmp      rbx, qword ptr [rax + 0x28]
000000014005bbcf je       0x14005bc17
000000014005bbd1 mov      rcx, qword ptr [rip + 0x8c4428]
000000014005bbd8 lea      r15, [rip + 0x8c4421]
000000014005bbdf cmp      rcx, r15
000000014005bbe2 je       0x14005bb26
000000014005bbe8 cmp      byte ptr [rcx + 0x29], 3
000000014005bbec jb       0x14005bafe
000000014005bbf2 bt       dword ptr [rcx + 0x2c], 0xc
000000014005bbf7 jae      0x14005bafe
000000014005bbfd mov      rcx, qword ptr [rcx + 0x18]
000000014005bc01 lea      r8, [rip + 0x636f30]
000000014005bc08 mov      edx, 0x9a
000000014005bc0d call     0x140001b88
000000014005bc12 jmp      0x14005bafe
000000014005bc17 lea      rdx, [r13 + 0x188]
000000014005bc1e mov      rcx, rdi
000000014005bc21 call     0x1405c0f00
000000014005bc26 mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005bc2d lea      r8, [rbx + 0x36]
000000014005bc31 mov      dword ptr [rsp + 0x28], esi
000000014005bc35 mov      r9b, 1
000000014005bc38 mov      rdx, rbx
000000014005bc3b mov      dword ptr [rsp + 0x20], esi
000000014005bc3f mov      rcx, qword ptr [rax]
000000014005bc42 mov      rcx, qword ptr [rcx + 0x20708]
000000014005bc49 call     0x1401b65dc
000000014005bc4e test     eax, eax
000000014005bc50 je       0x14005bc89
000000014005bc52 mov      rcx, qword ptr [rip + 0x8c43a7]
000000014005bc59 lea      r15, [rip + 0x8c43a0]
000000014005bc60 cmp      rcx, r15
000000014005bc63 je       0x14005bc90
000000014005bc65 cmp      byte ptr [rcx + 0x29], 3
000000014005bc69 jb       0x14005bc90
000000014005bc6b bt       dword ptr [rcx + 0x2c], 0xc
000000014005bc70 jae      0x14005bc90
000000014005bc72 mov      rcx, qword ptr [rcx + 0x18]
000000014005bc76 lea      r8, [rip + 0x636ebb]
000000014005bc7d mov      edx, 0x9b
000000014005bc82 call     0x140001b88
000000014005bc87 jmp      0x14005bc90
000000014005bc89 lea      r15, [rip + 0x8c4370]
000000014005bc90 mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005bc97 xor      r9d, r9d
000000014005bc9a mov      rdx, qword ptr [rbx + 0x20]
000000014005bc9e mov      r8b, 1
000000014005bca1 mov      dword ptr [rsp + 0x20], esi
000000014005bca5 mov      rcx, qword ptr [rax]
000000014005bca8 mov      rcx, qword ptr [rcx + 0x20708]
000000014005bcaf call     0x1401b6770
000000014005bcb4 mov      rax, qword ptr [rbp - 0x59]
000000014005bcb8 lea      rcx, [r14 + 0x8b008]
000000014005bcbf mov      dl, 1
000000014005bcc1 mov      dword ptr [rax + 0x14], esi
000000014005bcc4 call     0x1400ab314
000000014005bcc9 mov      qword ptr [rbp - 0x59], rax
000000014005bccd xor      r8d, r8d
000000014005bcd0 mov      rdx, rax
000000014005bcd3 mov      rcx, qword ptr [rax + 0x38]
000000014005bcd7 add      rcx, 0x1400
000000014005bcde call     0x1400ab498
000000014005bce3 mov      rax, qword ptr [rdi + 0x53f620]
000000014005bcea mov      r8, rbx
000000014005bced movzx    edx, byte ptr [rax + 0x19]
000000014005bcf1 mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005bcf8 mov      rcx, qword ptr [rax]
000000014005bcfb mov      rcx, qword ptr [rcx + 0x20708]
000000014005bd02 call     0x140203168
000000014005bd07 jmp      0x14005bafe
000000014005bd0c mov      rcx, qword ptr [rip + 0x8c42ed]
000000014005bd13 cmp      rcx, r8
000000014005bd16 je       0x14005bd36
000000014005bd18 cmp      byte ptr [rcx + 0x29], 4
000000014005bd1c jb       0x14005bd36
000000014005bd1e bt       dword ptr [rcx + 0x2c], 0xc
000000014005bd23 jae      0x14005bd36
000000014005bd25 mov      rcx, qword ptr [rcx + 0x18]
000000014005bd29 mov      edx, 0x93
000000014005bd2e mov      r8, r10
000000014005bd31 call     0x140001b88
000000014005bd36 lea      rcx, [r14 + 0x8b008]
000000014005bd3d lea      rdx, [rbp - 0x59]
000000014005bd41 call     0x1400ab68c
000000014005bd46 test     al, al
000000014005bd48 jne      0x14005bd8c
000000014005bd4a mov      rcx, qword ptr [rip + 0x8c42af]
000000014005bd51 lea      r15, [rip + 0x8c42a8]
000000014005bd58 cmp      rcx, r15
000000014005bd5b je       0x14005bd7f
000000014005bd5d cmp      byte ptr [rcx + 0x29], 3
000000014005bd61 jb       0x14005bd7f
000000014005bd63 bt       dword ptr [rcx + 0x2c], 0xc
000000014005bd68 jae      0x14005bd7f
000000014005bd6a mov      edx, 0x94
000000014005bd6f mov      rcx, qword ptr [rcx + 0x18]
000000014005bd73 lea      r8, [rip + 0x636dbe]
000000014005bd7a call     0x140001b88
000000014005bd7f mov      rcx, rdi
000000014005bd82 call     0x14005d53c
000000014005bd87 jmp      0x14005bafe
000000014005bd8c cmp      dword ptr [rdi + 0xc0bb0], 2
000000014005bd93 mov      rax, qword ptr [rbp - 0x59]
000000014005bd97 je       0x14005bdfa
000000014005bd99 mov      r8d, dword ptr [rax + 0x44]
000000014005bd9d mov      r9d, dword ptr [rdi + 0xfc538]
000000014005bda4 bt       r9d, r8d
000000014005bda8 jb       0x14005bdfa
000000014005bdaa mov      rcx, qword ptr [rip + 0x8c424f]
000000014005bdb1 lea      r15, [rip + 0x8c4248]
000000014005bdb8 cmp      rcx, r15
000000014005bdbb je       0x14005bdf0
000000014005bdbd cmp      byte ptr [rcx + 0x29], 4
000000014005bdc1 jb       0x14005bdf0
000000014005bdc3 bt       dword ptr [rcx + 0x2c], 0xc
000000014005bdc8 jae      0x14005bdf0
000000014005bdca mov      rcx, qword ptr [rcx + 0x18]
000000014005bdce mov      edx, 0x95
000000014005bdd3 mov      dword ptr [rsp + 0x28], r9d
000000014005bdd8 lea      r9, [rip + 0x59cbc1]
000000014005bddf mov      dword ptr [rsp + 0x20], r8d
000000014005bde4 lea      r8, [rip + 0x636d4d]
000000014005bdeb call     0x140002b04
000000014005bdf0 mov      ebx, 0xd
000000014005bdf5 jmp      0x14005bf48
000000014005bdfa mov      rdx, qword ptr [rdi + 0xab230]
000000014005be01 lea      r8, [rax + 0x1d]
000000014005be05 mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005be0c mov      r9d, 1
000000014005be12 mov      rcx, qword ptr [rax]
000000014005be15 mov      rcx, qword ptr [rcx + 0x20708]
000000014005be1c call     0x1401b62c4
000000014005be21 mov      rbx, rax
000000014005be24 test     rax, rax
000000014005be27 je       0x14005bed7
000000014005be2d mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005be34 mov      rdx, qword ptr [rbp - 0x59]
000000014005be38 mov      r9, qword ptr [rdi + 0xab230]
000000014005be3f mov      dword ptr [rsp + 0x48], esi
000000014005be43 mov      rcx, qword ptr [rax]
000000014005be46 mov      rax, qword ptr [rdi + 0x53f620]
000000014005be4d lea      r8, [rdx + 0x1d]
000000014005be51 mov      dword ptr [rsp + 0x40], esi
000000014005be55 add      rdx, 0x28
000000014005be59 mov      byte ptr [rsp + 0x38], sil
000000014005be5e mov      rcx, qword ptr [rcx + 0x20708]
000000014005be65 mov      byte ptr [rsp + 0x30], 1
000000014005be6a mov      qword ptr [rsp + 0x28], rbx
000000014005be6f mov      qword ptr [rsp + 0x20], rax
000000014005be74 call     0x1401b62ec
000000014005be79 mov      dword ptr [rbx + 0x24], 1
000000014005be80 test     eax, eax
000000014005be82 jne      0x14005bf0e
000000014005be88 mov      rax, qword ptr [rbp - 0x59]
000000014005be8c mov      ebx, esi
000000014005be8e mov      byte ptr [rax + 0x4c], 2
000000014005be92 mov      rcx, qword ptr [rbp - 0x59]
000000014005be96 mov      rcx, qword ptr [rcx + 0x28]
000000014005be9a call     0x14005c03c
000000014005be9f mov      rax, qword ptr [r14 + 0x20710]
000000014005bea6 lea      rdx, [r13 + 0x188]
000000014005bead mov      ecx, 0x1388
000000014005beb2 mov      r8d, 0x1f4
000000014005beb8 cmp      dword ptr [rax + 0x9624], 2
000000014005bebf cmove    r8d, ecx
000000014005bec3 mov      rcx, rdi
000000014005bec6 call     0x1405c1a98
000000014005becb lea      r15, [rip + 0x8c412e]
000000014005bed2 jmp      0x14005bf82
000000014005bed7 mov      rcx, qword ptr [rip + 0x8c4122]
000000014005bede lea      r15, [rip + 0x8c411b]
000000014005bee5 cmp      rcx, r15
000000014005bee8 je       0x14005bf43
000000014005beea cmp      byte ptr [rcx + 0x29], 3
000000014005beee jb       0x14005bf15
000000014005bef0 bt       dword ptr [rcx + 0x2c], 0xc
000000014005bef5 jae      0x14005bf15
000000014005bef7 mov      rcx, qword ptr [rcx + 0x18]
000000014005befb lea      r8, [rip + 0x636c36]
000000014005bf02 mov      edx, 0x96
000000014005bf07 call     0x140001b88
000000014005bf0c jmp      0x14005bf15
000000014005bf0e lea      r15, [rip + 0x8c40eb]
000000014005bf15 mov      rcx, qword ptr [rip + 0x8c40e4]
000000014005bf1c cmp      rcx, r15
000000014005bf1f je       0x14005bf43
000000014005bf21 cmp      byte ptr [rcx + 0x29], 3
000000014005bf25 jb       0x14005bf43
000000014005bf27 bt       dword ptr [rcx + 0x2c], 0xc
000000014005bf2c jae      0x14005bf43
000000014005bf2e mov      rcx, qword ptr [rcx + 0x18]
000000014005bf32 lea      r8, [rip + 0x636bff]
000000014005bf39 mov      edx, 0x97
000000014005bf3e call     0x140001b88
000000014005bf43 mov      ebx, 0x11
000000014005bf48 mov      eax, dword ptr [rbp - 0x29]
000000014005bf4b lea      r8, [rbp - 0x51]
000000014005bf4f and      eax, 0xffff001f
000000014005bf54 lea      rdx, [rbp - 0x29]
000000014005bf58 or       eax, 0x1f
000000014005bf5b xor      r9d, r9d
000000014005bf5e mov      dword ptr [rbp - 0x29], eax
000000014005bf61 mov      rax, qword ptr [rdi + 0x53f620]
000000014005bf68 mov      qword ptr [rbp - 9], rax
000000014005bf6c mov      rax, qword ptr [rdi + 0xaf3b8]
000000014005bf73 mov      rcx, qword ptr [rax]
000000014005bf76 mov      rcx, qword ptr [rcx + 0x20708]
000000014005bf7d call     0x1401b9cbc
000000014005bf82 mov      rdx, qword ptr [rbp - 0x59]
000000014005bf86 cmp      dword ptr [rdx + 0x44], 3
000000014005bf8a je       0x14005bafe
000000014005bf90 mov      r8d, ebx
000000014005bf93 mov      rcx, rdi
000000014005bf96 call     0x14005c20c
000000014005bf9b jmp      0x14005bafe