00000001400a470c mov      qword ptr [rsp + 0x20], rbx
00000001400a4711 push     rbp
00000001400a4712 push     rsi
00000001400a4713 push     rdi
00000001400a4714 push     r12
00000001400a4716 push     r13
00000001400a4718 push     r14
00000001400a471a push     r15
00000001400a471c lea      rbp, [rsp - 0x27]
00000001400a4721 sub      rsp, 0xf0
00000001400a4728 mov      rax, qword ptr [rip + 0x882d31]
00000001400a472f xor      rax, rsp
00000001400a4732 mov      qword ptr [rbp + 0x17], rax
00000001400a4736 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400a473d mov      r14, rdx
00000001400a4740 movzx    edi, r8b
00000001400a4744 mov      rsi, rcx
00000001400a4747 mov      byte ptr [rbp - 0x68], dil
00000001400a474b mov      qword ptr [rbp - 0x61], rcx
00000001400a474f mov      r15, qword ptr [rax]
00000001400a4752 add      r15, 0x18
00000001400a4756 mov      qword ptr [rbp + 0xf], r15
00000001400a475a call     0x1400b2d18
00000001400a475f mov      rcx, qword ptr [rsi + 0xaf3b8]
00000001400a4766 mov      ebx, 1
00000001400a476b movzx    r12d, byte ptr [r14]
00000001400a476f mov      qword ptr [rbp - 0x39], rax
00000001400a4773 mov      rax, qword ptr [rsi + 0xab230]
00000001400a477a mov      rcx, qword ptr [rcx]
00000001400a477d mov      rdx, rax
00000001400a4780 mov      dword ptr [rbp + 7], r12d
00000001400a4784 mov      qword ptr [rbp - 0x59], rax
00000001400a4788 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a478f call     0x1401b6de0
00000001400a4794 mov      r8d, edi
00000001400a4797 mov      dword ptr [rbp - 0x51], edi
00000001400a479a mov      qword ptr [rbp - 0x49], rax
00000001400a479e mov      r9, rax
00000001400a47a1 lea      rdi, [rip + 0x5ee518]
00000001400a47a8 mov      edx, ebx
00000001400a47aa lea      ecx, [rbx + 2]
00000001400a47ad lea      r13, [rip + 0x87b84c]
00000001400a47b4 cmp      r8d, ebx
00000001400a47b7 jb       0x1400a77a4
00000001400a47bd cmp      r12b, 0x1f
00000001400a47c1 ja       0x1400a4ff8
00000001400a47c7 je       0x1400a4e2d
00000001400a47cd cmp      r12b, 0x11
00000001400a47d1 ja       0x1400a4c88
00000001400a47d7 je       0x1400a5c68
00000001400a47dd lea      r15d, [rbx + 1]
00000001400a47e1 sub      r12d, ebx
00000001400a47e4 je       0x1400a4c24
00000001400a47ea sub      r12d, r15d
00000001400a47ed je       0x1400a4b36
00000001400a47f3 sub      r12d, ecx
00000001400a47f6 je       0x1400a4af4
00000001400a47fc sub      r12d, ebx
00000001400a47ff je       0x1400a4a55
00000001400a4805 sub      r12d, ebx
00000001400a4808 je       0x1400a492e
00000001400a480e sub      r12d, 4
00000001400a4812 je       0x1400a48ec
00000001400a4818 sub      r12d, ebx
00000001400a481b je       0x1400a48aa
00000001400a4821 cmp      r12d, ecx
00000001400a4824 jne      0x1400a4d4f
00000001400a482a mov      ebx, r15d
00000001400a482d cmp      r8d, r15d
00000001400a4830 jb       0x1400a77a4
00000001400a4836 mov      rcx, qword ptr [rip + 0x87b7c3]
00000001400a483d lea      r13, [rip + 0x87b7bc]
00000001400a4844 cmp      rcx, r13
00000001400a4847 je       0x1400a4d4f
00000001400a484d cmp      byte ptr [rcx + 0x69], 4
00000001400a4851 jb       0x1400a4d4f
00000001400a4857 mov      eax, dword ptr [rcx + 0x6c]
00000001400a485a test     dl, al
00000001400a485c je       0x1400a4d4f
00000001400a4862 lea      edx, [r15 + 0x7a]
00000001400a4866 movzx    r9d, byte ptr [r14 + 1]
00000001400a486b mov      rcx, qword ptr [rcx + 0x58]
00000001400a486f lea      r8, [rip + 0x5ee44a]
00000001400a4876 call     0x140001bb0
00000001400a487b mov      edi, 1
00000001400a4880 mov      al, dil
00000001400a4883 mov      rcx, qword ptr [rbp + 0x17]
00000001400a4887 xor      rcx, rsp
00000001400a488a call     0x1405f45b0
00000001400a488f mov      rbx, qword ptr [rsp + 0x148]
00000001400a4897 add      rsp, 0xf0
00000001400a489e pop      r15
00000001400a48a0 pop      r14
00000001400a48a2 pop      r13
00000001400a48a4 pop      r12
00000001400a48a6 pop      rdi
00000001400a48a7 pop      rsi
00000001400a48a8 pop      rbp
00000001400a48a9 ret      
00000001400a48aa mov      ebx, r15d
00000001400a48ad cmp      r8d, r15d
00000001400a48b0 jb       0x1400a77a4
00000001400a48b6 mov      rcx, qword ptr [rip + 0x87b743]
00000001400a48bd lea      r13, [rip + 0x87b73c]
00000001400a48c4 cmp      rcx, r13
00000001400a48c7 je       0x1400a4d4f
00000001400a48cd cmp      byte ptr [rcx + 0x69], 4
00000001400a48d1 jb       0x1400a4d4f
00000001400a48d7 mov      eax, dword ptr [rcx + 0x6c]
00000001400a48da test     dl, al
00000001400a48dc je       0x1400a4d4f
00000001400a48e2 mov      edx, 0x72
00000001400a48e7 jmp      0x1400a4866
00000001400a48ec mov      ebx, r15d
00000001400a48ef cmp      r8d, r15d
00000001400a48f2 jb       0x1400a77a4
00000001400a48f8 mov      rcx, qword ptr [rip + 0x87b701]
00000001400a48ff lea      r13, [rip + 0x87b6fa]
00000001400a4906 cmp      rcx, r13
00000001400a4909 je       0x1400a4d4f
00000001400a490f cmp      byte ptr [rcx + 0x69], 4
00000001400a4913 jb       0x1400a4d4f
00000001400a4919 mov      eax, dword ptr [rcx + 0x6c]
00000001400a491c test     dl, al
00000001400a491e je       0x1400a4d4f
00000001400a4924 mov      edx, 0x71
00000001400a4929 jmp      0x1400a4866
00000001400a492e mov      rcx, qword ptr [rbp + 0xf]
00000001400a4932 mov      ebx, 4
00000001400a4937 mov      r9, qword ptr [rcx + 0x206f8]
00000001400a493e cmp      r8d, ebx
00000001400a4941 jb       0x1400a77a4
00000001400a4947 movzx    edi, byte ptr [r14 + 1]
00000001400a494c mov      dl, 0xff
00000001400a494e movzx    r12d, byte ptr [r14 + 2]
00000001400a4953 movzx    esi, byte ptr [r14 + 3]
00000001400a4958 cmp      dil, dl
00000001400a495b je       0x1400a496d
00000001400a495d mov      eax, edi
00000001400a495f mov      dword ptr [r9 + 0xbb9c], eax
00000001400a4966 mov      dword ptr [r9 + 0xde8c], eax
00000001400a496d cmp      r12b, dl
00000001400a4970 je       0x1400a4983
00000001400a4972 mov      eax, r12d
00000001400a4975 mov      dword ptr [r9 + 0xbba0], eax
00000001400a497c mov      dword ptr [r9 + 0xde90], eax
00000001400a4983 cmp      sil, dl
00000001400a4986 je       0x1400a4998
00000001400a4988 mov      eax, esi
00000001400a498a mov      dword ptr [r9 + 0xbba4], eax
00000001400a4991 mov      dword ptr [r9 + 0xde94], eax
00000001400a4998 mov      rcx, qword ptr [rcx + 0x206f0]
00000001400a499f call     0x14020aed0
00000001400a49a4 mov      rcx, qword ptr [rip + 0x87b655]
00000001400a49ab lea      r13, [rip + 0x87b64e]
00000001400a49b2 cmp      rcx, r13
00000001400a49b5 je       0x1400a487b
00000001400a49bb cmp      byte ptr [rcx + 0x29], 4
00000001400a49bf lea      rbx, [rip + 0x5ee2fa]
00000001400a49c6 jb       0x1400a49e4
00000001400a49c8 mov      eax, dword ptr [rcx + 0x2c]
00000001400a49cb test     r15b, al
00000001400a49ce je       0x1400a49e4
00000001400a49d0 mov      rcx, qword ptr [rcx + 0x18]
00000001400a49d4 mov      r9d, edi
00000001400a49d7 mov      edx, 0x6b
00000001400a49dc mov      r8, rbx
00000001400a49df call     0x140001bb0
00000001400a49e4 mov      rcx, qword ptr [rip + 0x87b615]
00000001400a49eb cmp      rcx, r13
00000001400a49ee je       0x1400a487b
00000001400a49f4 cmp      byte ptr [rcx + 0x29], 4
00000001400a49f8 jb       0x1400a4a16
00000001400a49fa mov      eax, dword ptr [rcx + 0x2c]
00000001400a49fd test     r15b, al
00000001400a4a00 je       0x1400a4a16
00000001400a4a02 mov      rcx, qword ptr [rcx + 0x18]
00000001400a4a06 mov      r9d, r12d
00000001400a4a09 mov      edx, 0x6c
00000001400a4a0e mov      r8, rbx
00000001400a4a11 call     0x140001bb0
00000001400a4a16 mov      rcx, qword ptr [rip + 0x87b5e3]
00000001400a4a1d cmp      rcx, r13
00000001400a4a20 je       0x1400a487b
00000001400a4a26 cmp      byte ptr [rcx + 0x29], 4
00000001400a4a2a jb       0x1400a487b
00000001400a4a30 mov      eax, dword ptr [rcx + 0x2c]
00000001400a4a33 test     r15b, al
00000001400a4a36 je       0x1400a487b
00000001400a4a3c mov      rcx, qword ptr [rcx + 0x18]
00000001400a4a40 mov      r9d, esi
00000001400a4a43 mov      edx, 0x6d
00000001400a4a48 mov      r8, rbx
00000001400a4a4b call     0x140001bb0
00000001400a4a50 jmp      0x1400a487b
00000001400a4a55 mov      ebx, r15d
00000001400a4a58 cmp      r8d, r15d
00000001400a4a5b jb       0x1400a77a4
00000001400a4a61 mov      rcx, qword ptr [rip + 0x87b598]
00000001400a4a68 lea      r13, [rip + 0x87b591]
00000001400a4a6f cmp      rcx, r13
00000001400a4a72 je       0x1400a4a9a
00000001400a4a74 cmp      byte ptr [rcx + 0x69], 4
00000001400a4a78 jb       0x1400a4a9a
00000001400a4a7a mov      eax, dword ptr [rcx + 0x6c]
00000001400a4a7d test     dl, al
00000001400a4a7f je       0x1400a4a9a
00000001400a4a81 mov      rcx, qword ptr [rcx + 0x58]
00000001400a4a85 lea      r8, [rip + 0x5ee234]
00000001400a4a8c mov      edx, 0x69
00000001400a4a91 call     0x140001b88
00000001400a4a96 mov      r8d, dword ptr [rbp - 0x51]
00000001400a4a9a dec      r8d
00000001400a4a9d lea      rdx, [r14 + 1]
00000001400a4aa1 mov      rcx, rsi
00000001400a4aa4 call     0x1400a45c0
00000001400a4aa9 test     eax, eax
00000001400a4aab je       0x1400a487b
00000001400a4ab1 mov      rcx, qword ptr [rip + 0x87b548]
00000001400a4ab8 cmp      rcx, r13
00000001400a4abb je       0x1400a77f2
00000001400a4ac1 mov      edx, 3
00000001400a4ac6 cmp      byte ptr [rcx + 0x69], dl
00000001400a4ac9 jb       0x1400a77f2
00000001400a4acf mov      edx, dword ptr [rcx + 0x6c]
00000001400a4ad2 mov      r8d, 1
00000001400a4ad8 test     r8b, dl
00000001400a4adb je       0x1400a77f2
00000001400a4ae1 lea      edx, [r8 + 0x69]
00000001400a4ae5 mov      r9d, eax
00000001400a4ae8 lea      r8, [rip + 0x5ee1d1]
00000001400a4aef jmp      0x1400a5cfe
00000001400a4af4 mov      ebx, r15d
00000001400a4af7 cmp      r8d, r15d
00000001400a4afa jb       0x1400a77a4
00000001400a4b00 mov      rcx, qword ptr [rip + 0x87b4f9]
00000001400a4b07 lea      r13, [rip + 0x87b4f2]
00000001400a4b0e cmp      rcx, r13
00000001400a4b11 je       0x1400a4d4f
00000001400a4b17 cmp      byte ptr [rcx + 0x69], 4
00000001400a4b1b jb       0x1400a4d4f
00000001400a4b21 mov      eax, dword ptr [rcx + 0x6c]
00000001400a4b24 test     dl, al
00000001400a4b26 je       0x1400a4d4f
00000001400a4b2c mov      edx, 0x81
00000001400a4b31 jmp      0x1400a4866
00000001400a4b36 mov      ebx, 4
00000001400a4b3b cmp      r8d, ebx
00000001400a4b3e jb       0x1400a77a4
00000001400a4b44 mov      dl, byte ptr [r14 + 1]
00000001400a4b48 movzx    r12d, byte ptr [r14 + 2]
00000001400a4b4d movzx    edi, byte ptr [r14 + 3]
00000001400a4b52 movzx    esi, byte ptr [r14 + 4]
00000001400a4b57 mov      byte ptr [rbp - 0x69], dl
00000001400a4b5a mov      rcx, qword ptr [rip + 0x87b49f]
00000001400a4b61 lea      r13, [rip + 0x87b498]
00000001400a4b68 xor      ebx, ebx
00000001400a4b6a cmp      rcx, r13
00000001400a4b6d je       0x1400a4bac
00000001400a4b6f cmp      byte ptr [rcx + 0x29], 4
00000001400a4b73 jb       0x1400a4bac
00000001400a4b75 mov      eax, dword ptr [rcx + 0x2c]
00000001400a4b78 test     r15b, al
00000001400a4b7b je       0x1400a4bac
00000001400a4b7d mov      rcx, qword ptr [rcx + 0x18]
00000001400a4b81 lea      r8, [rip + 0x5ee138]
00000001400a4b88 test     dl, dl
00000001400a4b8a mov      dword ptr [rsp + 0x30], esi
00000001400a4b8e mov      r10d, ebx
00000001400a4b91 mov      dword ptr [rsp + 0x28], edi
00000001400a4b95 sete     r10b
00000001400a4b99 mov      dword ptr [rsp + 0x20], r12d
00000001400a4b9e mov      r9d, r10d
00000001400a4ba1 lea      edx, [rbx + 0x68]
00000001400a4ba4 call     0x140008794
00000001400a4ba9 mov      dl, byte ptr [rbp - 0x69]
00000001400a4bac mov      rcx, qword ptr [rbp + 0xf]
00000001400a4bb0 test     dl, dl
00000001400a4bb2 jne      0x1400a4bec
00000001400a4bb4 test     r12b, r12b
00000001400a4bb7 je       0x1400a4be1
00000001400a4bb9 test     sil, sil
00000001400a4bbc je       0x1400a4bcd
00000001400a4bbe mov      dword ptr [rcx + 0xaa458], 3
00000001400a4bc8 jmp      0x1400a487b
00000001400a4bcd neg      dil
00000001400a4bd0 sbb      eax, eax
00000001400a4bd2 neg      eax
00000001400a4bd4 inc      eax
00000001400a4bd6 mov      dword ptr [rcx + 0xaa458], eax
00000001400a4bdc jmp      0x1400a487b
00000001400a4be1 mov      dword ptr [rcx + 0xaa458], ebx
00000001400a4be7 jmp      0x1400a487b
00000001400a4bec test     r12b, r12b
00000001400a4bef je       0x1400a4c19
00000001400a4bf1 test     sil, sil
00000001400a4bf4 je       0x1400a4c05
00000001400a4bf6 mov      dword ptr [rcx + 0xaa45c], 3
00000001400a4c00 jmp      0x1400a487b
00000001400a4c05 neg      dil
00000001400a4c08 sbb      eax, eax
00000001400a4c0a neg      eax
00000001400a4c0c inc      eax
00000001400a4c0e mov      dword ptr [rcx + 0xaa45c], eax
00000001400a4c14 jmp      0x1400a487b
00000001400a4c19 mov      dword ptr [rcx + 0xaa45c], ebx
00000001400a4c1f jmp      0x1400a487b
00000001400a4c24 mov      ebx, r15d
00000001400a4c27 cmp      r8d, r15d
00000001400a4c2a jb       0x1400a77a4
00000001400a4c30 movzx    edx, byte ptr [r14 + 1]
00000001400a4c35 mov      byte ptr [rsi + 0x5405d1], dl
00000001400a4c3b mov      rcx, qword ptr [rip + 0x87b3be]
00000001400a4c42 lea      r13, [rip + 0x87b3b7]
00000001400a4c49 cmp      rcx, r13
00000001400a4c4c je       0x1400a487b
00000001400a4c52 cmp      byte ptr [rcx + 0x69], 4
00000001400a4c56 mov      edi, 1
00000001400a4c5b jb       0x1400a4880
00000001400a4c61 mov      eax, dword ptr [rcx + 0x6c]
00000001400a4c64 test     dil, al
00000001400a4c67 je       0x1400a4880
00000001400a4c6d mov      r9d, edx
00000001400a4c70 lea      edx, [rdi + 0x66]
00000001400a4c73 lea      r8, [rip + 0x5ee046]
00000001400a4c7a mov      rcx, qword ptr [rcx + 0x58]
00000001400a4c7e call     0x140001bb0
00000001400a4c83 jmp      0x1400a4880
00000001400a4c88 sub      r12d, 0x12
00000001400a4c8c je       0x1400a4e11
00000001400a4c92 sub      r12d, edx
00000001400a4c95 je       0x1400a4d56
00000001400a4c9b sub      r12d, edx
00000001400a4c9e je       0x1400a4d44
00000001400a4ca4 sub      r12d, edx
00000001400a4ca7 je       0x1400a4d3a
00000001400a4cad mov      r15d, 2
00000001400a4cb3 sub      r12d, r15d
00000001400a4cb6 je       0x1400a4d07
00000001400a4cb8 sub      r12d, edx
00000001400a4cbb jne      0x1400a4d4f
00000001400a4cc1 mov      ebx, r15d
00000001400a4cc4 cmp      r8d, r15d
00000001400a4cc7 jb       0x1400a77a4
00000001400a4ccd mov      rcx, qword ptr [rip + 0x87b32c]
00000001400a4cd4 lea      r13, [rip + 0x87b325]
00000001400a4cdb cmp      rcx, r13
00000001400a4cde je       0x1400a4d4f
00000001400a4ce0 cmp      byte ptr [rcx + 0x69], 4
00000001400a4ce4 jb       0x1400a4d4f
00000001400a4ce6 mov      eax, dword ptr [rcx + 0x6c]
00000001400a4ce9 test     dl, al
00000001400a4ceb je       0x1400a4d4f
00000001400a4ced mov      edx, 0x83
00000001400a4cf2 mov      rcx, qword ptr [rcx + 0x58]
00000001400a4cf6 lea      r8, [rip + 0x5edfc3]
00000001400a4cfd call     0x140001b88
00000001400a4d02 jmp      0x1400a487b
00000001400a4d07 mov      ebx, r15d
00000001400a4d0a cmp      r8d, r15d
00000001400a4d0d jb       0x1400a77a4
00000001400a4d13 mov      rcx, qword ptr [rip + 0x87b2e6]
00000001400a4d1a lea      r13, [rip + 0x87b2df]
00000001400a4d21 cmp      rcx, r13
00000001400a4d24 je       0x1400a4d4f
00000001400a4d26 cmp      byte ptr [rcx + 0x69], 4
00000001400a4d2a jb       0x1400a4d4f
00000001400a4d2c mov      eax, dword ptr [rcx + 0x6c]
00000001400a4d2f test     dl, al
00000001400a4d31 je       0x1400a4d4f
00000001400a4d33 mov      edx, 0x82
00000001400a4d38 jmp      0x1400a4cf2
00000001400a4d3a mov      ebx, 4
00000001400a4d3f cmp      r8d, ebx
00000001400a4d42 jmp      0x1400a4d49
00000001400a4d44 mov      ebx, ecx
00000001400a4d46 cmp      r8d, ecx
00000001400a4d49 jb       0x1400a77a4
00000001400a4d4f mov      edi, edx
00000001400a4d51 jmp      0x1400a4880
00000001400a4d56 mov      ebx, ecx
00000001400a4d58 cmp      r8d, ecx
00000001400a4d5b jb       0x1400a77a4
00000001400a4d61 movzx    edx, byte ptr [r14 + 1]
00000001400a4d66 mov      r12, qword ptr [rbp - 0x61]
00000001400a4d6a mov      byte ptr [rsi + 0x540698], dl
00000001400a4d70 xor      esi, esi
00000001400a4d72 test     dl, dl
00000001400a4d74 jne      0x1400a4d83
00000001400a4d76 mov      byte ptr [r12 + 0x540690], sil
00000001400a4d7e jmp      0x1400a487b
00000001400a4d83 mov      byte ptr [r12 + 0x540690], 1
00000001400a4d8c movzx    eax, byte ptr [r14 + 2]
00000001400a4d91 mov      dword ptr [r12 + 0x540694], eax
00000001400a4d99 mov      rcx, qword ptr [rip + 0x87b260]
00000001400a4da0 lea      r13, [rip + 0x87b259]
00000001400a4da7 cmp      rcx, r13
00000001400a4daa je       0x1400a487b
00000001400a4db0 cmp      byte ptr [rcx + 0x69], 4
00000001400a4db4 mov      edi, 1
00000001400a4db9 jb       0x1400a4dd9
00000001400a4dbb mov      eax, dword ptr [rcx + 0x6c]
00000001400a4dbe test     dil, al
00000001400a4dc1 je       0x1400a4dd9
00000001400a4dc3 mov      rcx, qword ptr [rcx + 0x58]
00000001400a4dc7 lea      r8, [rip + 0x5edef2]
00000001400a4dce mov      r9d, edx
00000001400a4dd1 lea      edx, [rdi + 0x77]
00000001400a4dd4 call     0x140001bb0
00000001400a4dd9 mov      rcx, qword ptr [rip + 0x87b220]
00000001400a4de0 cmp      rcx, r13
00000001400a4de3 je       0x1400a4880
00000001400a4de9 cmp      byte ptr [rcx + 0x69], 4
00000001400a4ded jb       0x1400a4880
00000001400a4df3 mov      eax, dword ptr [rcx + 0x6c]
00000001400a4df6 test     dil, al
00000001400a4df9 je       0x1400a4880
00000001400a4dff mov      r9d, dword ptr [r12 + 0x540694]
00000001400a4e07 mov      edx, 0x79
00000001400a4e0c jmp      0x1400a4c73
00000001400a4e11 mov      ebx, ecx
00000001400a4e13 cmp      r8d, ecx
00000001400a4e16 jb       0x1400a77a4
00000001400a4e1c movzx    eax, byte ptr [r14 + 1]
00000001400a4e21 mov      dword ptr [r15 + 0xaa454], eax
00000001400a4e28 jmp      0x1400a4d4f
00000001400a4e2d xor      esi, esi
00000001400a4e2f mov      byte ptr [rbp - 0x67], sil
00000001400a4e33 mov      rcx, qword ptr [rip + 0x87b1c6]
00000001400a4e3a lea      r13, [rip + 0x87b1bf]
00000001400a4e41 lea      rbx, [rip + 0x5ede78]
00000001400a4e48 mov      r8d, edx
00000001400a4e4b cmp      rcx, r13
00000001400a4e4e je       0x1400a4e72
00000001400a4e50 cmp      byte ptr [rcx + 0x69], 4
00000001400a4e54 jb       0x1400a4e72
00000001400a4e56 mov      eax, dword ptr [rcx + 0x6c]
00000001400a4e59 test     dl, al
00000001400a4e5b je       0x1400a4e72
00000001400a4e5d mov      rcx, qword ptr [rcx + 0x58]
00000001400a4e61 mov      edx, 0x84
00000001400a4e66 mov      r8, rbx
00000001400a4e69 call     0x140001b88
00000001400a4e6e lea      r8d, [rsi + 1]
00000001400a4e72 cmp      byte ptr [rbp - 0x68], 4
00000001400a4e76 jae      0x1400a4e7f
00000001400a4e78 mov      al, 9
00000001400a4e7a jmp      0x1400a4883
00000001400a4e7f movzx    r12d, byte ptr [r14 + 1]
00000001400a4e84 movzx    edi, word ptr [r14 + 2]
00000001400a4e89 mov      rcx, qword ptr [rip + 0x87b170]
00000001400a4e90 cmp      rcx, r13
00000001400a4e93 je       0x1400a4ebb
00000001400a4e95 cmp      byte ptr [rcx + 0x69], 4
00000001400a4e99 jb       0x1400a4ebb
00000001400a4e9b mov      eax, dword ptr [rcx + 0x6c]
00000001400a4e9e test     r8b, al
00000001400a4ea1 je       0x1400a4ebb
00000001400a4ea3 mov      rcx, qword ptr [rcx + 0x58]
00000001400a4ea7 mov      r9d, r12d
00000001400a4eaa mov      edx, 0x85
00000001400a4eaf mov      dword ptr [rsp + 0x20], edi
00000001400a4eb3 mov      r8, rbx
00000001400a4eb6 call     0x140001bec
00000001400a4ebb mov      r8d, 1
00000001400a4ec1 cmp      r12b, r8b
00000001400a4ec4 jne      0x1400a4f04
00000001400a4ec6 mov      rcx, qword ptr [rip + 0x87b133]
00000001400a4ecd cmp      rcx, r13
00000001400a4ed0 je       0x1400a4ef7
00000001400a4ed2 cmp      byte ptr [rcx + 0x69], 4
00000001400a4ed6 jb       0x1400a4ef7
00000001400a4ed8 mov      eax, dword ptr [rcx + 0x6c]
00000001400a4edb test     r8b, al
00000001400a4ede je       0x1400a4ef7
00000001400a4ee0 mov      rcx, qword ptr [rcx + 0x58]
00000001400a4ee4 mov      edx, 0x86
00000001400a4ee9 mov      r8, rbx
00000001400a4eec call     0x140001b88
00000001400a4ef1 mov      r8d, 1
00000001400a4ef7 cmp      di, r8w
00000001400a4efb sete     r9b
00000001400a4eff jmp      0x1400a4fae
00000001400a4f04 mov      r15d, 2
00000001400a4f0a cmp      r12b, r15b
00000001400a4f0d jne      0x1400a4f4f
00000001400a4f0f mov      rcx, qword ptr [rip + 0x87b0ea]
00000001400a4f16 cmp      rcx, r13
00000001400a4f19 je       0x1400a4f3e
00000001400a4f1b cmp      byte ptr [rcx + 0x69], 4
00000001400a4f1f jb       0x1400a4f3e
00000001400a4f21 mov      eax, dword ptr [rcx + 0x6c]
00000001400a4f24 test     r8b, al
00000001400a4f27 je       0x1400a4f3e
00000001400a4f29 mov      rcx, qword ptr [rcx + 0x58]
00000001400a4f2d mov      edx, 0x87
00000001400a4f32 mov      r8, rbx
00000001400a4f35 call     0x140001b88
00000001400a4f3a lea      r8d, [r15 - 1]
00000001400a4f3e mov      r9b, byte ptr [rbp - 0x67]
00000001400a4f42 cmp      di, r8w
00000001400a4f46 mov      dl, r9b
00000001400a4f49 sete     sil
00000001400a4f4d jmp      0x1400a4fb1
00000001400a4f4f mov      edx, 3
00000001400a4f54 cmp      r12b, dl
00000001400a4f57 jne      0x1400a4fab
00000001400a4f59 mov      rcx, qword ptr [rip + 0x87b0a0]
00000001400a4f60 cmp      rcx, r13
00000001400a4f63 je       0x1400a4f8a
00000001400a4f65 cmp      byte ptr [rcx + 0x69], 4
00000001400a4f69 jb       0x1400a4f8a
00000001400a4f6b mov      eax, dword ptr [rcx + 0x6c]
00000001400a4f6e test     r8b, al
00000001400a4f71 je       0x1400a4f8a
00000001400a4f73 mov      rcx, qword ptr [rcx + 0x58]
00000001400a4f77 mov      edx, 0x88
00000001400a4f7c mov      r8, rbx
00000001400a4f7f call     0x140001b88
00000001400a4f84 mov      r8d, 1
00000001400a4f8a mov      dl, r8b
00000001400a4f8d test     di, di
00000001400a4f90 je       0x1400a4fa4
00000001400a4f92 mov      r12, qword ptr [rbp - 0x61]
00000001400a4f96 mov      r9b, sil
00000001400a4f99 mov      word ptr [r12 + 0x5405e8], di
00000001400a4fa2 jmp      0x1400a4fb5
00000001400a4fa4 mov      al, 0xe
00000001400a4fa6 jmp      0x1400a4883
00000001400a4fab mov      r9b, sil
00000001400a4fae mov      dl, sil
00000001400a4fb1 mov      r12, qword ptr [rbp - 0x61]
00000001400a4fb5 mov      r8b, sil
00000001400a4fb8 mov      rcx, r12
00000001400a4fbb call     0x14018bb00
00000001400a4fc0 mov      rcx, qword ptr [rip + 0x87b039]
00000001400a4fc7 cmp      rcx, r13
00000001400a4fca je       0x1400a487b
00000001400a4fd0 cmp      byte ptr [rcx + 0x69], 4
00000001400a4fd4 mov      edi, 1
00000001400a4fd9 jb       0x1400a4880
00000001400a4fdf mov      eax, dword ptr [rcx + 0x6c]
00000001400a4fe2 test     dil, al
00000001400a4fe5 je       0x1400a4880
00000001400a4feb mov      edx, 0x89
00000001400a4ff0 mov      r8, rbx
00000001400a4ff3 jmp      0x1400a51cd
00000001400a4ff8 cmp      r12b, 0xa1
00000001400a4ffc ja       0x1400a6770
00000001400a5002 je       0x1400a649b
00000001400a5008 cmp      r12b, 0x94
00000001400a500c ja       0x1400a5d63
00000001400a5012 je       0x1400a5d0c
00000001400a5018 cmp      r12b, 0x8c
00000001400a501c ja       0x1400a544f
00000001400a5022 je       0x1400a5408
00000001400a5028 sub      r12d, 0x81
00000001400a502f je       0x1400a5336
00000001400a5035 sub      r12d, 6
00000001400a5039 je       0x1400a52cd
00000001400a503f sub      r12d, edx
00000001400a5042 je       0x1400a51db
00000001400a5048 sub      r12d, edx
00000001400a504b je       0x1400a509d
00000001400a504d mov      r15d, 2
00000001400a5053 cmp      r12d, r15d
00000001400a5056 jne      0x1400a4d4f
00000001400a505c mov      ebx, r15d
00000001400a505f cmp      r8d, r15d
00000001400a5062 jb       0x1400a77a4
00000001400a5068 mov      rcx, qword ptr [rip + 0x87af91]
00000001400a506f lea      r13, [rip + 0x87af8a]
00000001400a5076 cmp      rcx, r13
00000001400a5079 je       0x1400a4d4f
00000001400a507f cmp      byte ptr [rcx + 0x69], 4
00000001400a5083 jb       0x1400a4d4f
00000001400a5089 mov      eax, dword ptr [rcx + 0x6c]
00000001400a508c test     dl, al
00000001400a508e je       0x1400a4d4f
00000001400a5094 lea      edx, [r15 + 0x71]
00000001400a5098 jmp      0x1400a4866
00000001400a509d mov      eax, ecx
00000001400a509f mov      ebx, ecx
00000001400a50a1 cmp      r8d, ecx
00000001400a50a4 jae      0x1400a50f5
00000001400a50a6 mov      rcx, qword ptr [rip + 0x87af53]
00000001400a50ad lea      r13, [rip + 0x87af4c]
00000001400a50b4 cmp      rcx, r13
00000001400a50b7 je       0x1400a77be
00000001400a50bd cmp      byte ptr [rcx + 0x69], al
00000001400a50c0 jb       0x1400a77be
00000001400a50c6 mov      eax, dword ptr [rcx + 0x6c]
00000001400a50c9 test     dl, al
00000001400a50cb je       0x1400a77bc
00000001400a50d1 mov      rcx, qword ptr [rcx + 0x58]
00000001400a50d5 mov      r9d, r8d
00000001400a50d8 mov      r8, rdi
00000001400a50db mov      edx, 0x7d
00000001400a50e0 call     0x140001bb0
00000001400a50e5 mov      r14b, byte ptr [rbp - 0x68]
00000001400a50e9 mov      eax, ebx
00000001400a50eb mov      edx, 1
00000001400a50f0 jmp      0x1400a77c1
00000001400a50f5 mov      al, byte ptr [r14 + 1]
00000001400a50f9 cmp      al, dl
00000001400a50fb jne      0x1400a514b
00000001400a50fd mov      byte ptr [rsi + 0x1137da], dl
00000001400a5103 movzx    edx, byte ptr [r14 + 2]
00000001400a5108 mov      byte ptr [rsi + 0x1137db], dl
00000001400a510e mov      rcx, qword ptr [rip + 0x87aeeb]
00000001400a5115 lea      r13, [rip + 0x87aee4]
00000001400a511c cmp      rcx, r13
00000001400a511f je       0x1400a487b
00000001400a5125 cmp      byte ptr [rcx + 0x69], 4
00000001400a5129 mov      edi, 1
00000001400a512e jb       0x1400a4880
00000001400a5134 mov      eax, dword ptr [rcx + 0x6c]
00000001400a5137 test     dil, al
00000001400a513a je       0x1400a4880
00000001400a5140 mov      r9d, edx
00000001400a5143 lea      edx, [rdi + 0x7d]
00000001400a5146 jmp      0x1400a4c73
00000001400a514b or       word ptr [rsi + 0x1137da], 0xffff
00000001400a5154 mov      r15d, 2
00000001400a515a cmp      al, r15b
00000001400a515d jne      0x1400a5193
00000001400a515f mov      rcx, qword ptr [rip + 0x87ae9a]
00000001400a5166 lea      r13, [rip + 0x87ae93]
00000001400a516d cmp      rcx, r13
00000001400a5170 je       0x1400a4d4f
00000001400a5176 cmp      byte ptr [rcx + 0x69], 4
00000001400a517a mov      edi, edx
00000001400a517c jb       0x1400a4880
00000001400a5182 mov      eax, dword ptr [rcx + 0x6c]
00000001400a5185 test     dl, al
00000001400a5187 je       0x1400a4880
00000001400a518d lea      edx, [r15 + 0x7d]
00000001400a5191 jmp      0x1400a51c6
00000001400a5193 mov      rcx, qword ptr [rip + 0x87ae66]
00000001400a519a lea      r13, [rip + 0x87ae5f]
00000001400a51a1 cmp      rcx, r13
00000001400a51a4 je       0x1400a4d4f
00000001400a51aa cmp      byte ptr [rcx + 0x69], 4
00000001400a51ae mov      edi, edx
00000001400a51b0 jb       0x1400a4880
00000001400a51b6 mov      eax, dword ptr [rcx + 0x6c]
00000001400a51b9 test     dl, al
00000001400a51bb je       0x1400a4880
00000001400a51c1 mov      edx, 0x80
00000001400a51c6 lea      r8, [rip + 0x5edaf3]
00000001400a51cd mov      rcx, qword ptr [rcx + 0x58]
00000001400a51d1 call     0x140001b88
00000001400a51d6 jmp      0x1400a4880
00000001400a51db mov      ebx, ecx
00000001400a51dd cmp      r8d, ecx
00000001400a51e0 jb       0x1400a77a4
00000001400a51e6 mov      rcx, qword ptr [rip + 0x87ae13]
00000001400a51ed lea      r13, [rip + 0x87ae0c]
00000001400a51f4 lea      rbx, [rip + 0x5edac5]
00000001400a51fb cmp      rcx, r13
00000001400a51fe je       0x1400a521e
00000001400a5200 cmp      byte ptr [rcx + 0x69], 4
00000001400a5204 jb       0x1400a521e
00000001400a5206 mov      eax, dword ptr [rcx + 0x6c]
00000001400a5209 test     dl, al
00000001400a520b je       0x1400a521e
00000001400a520d mov      rcx, qword ptr [rcx + 0x58]
00000001400a5211 mov      edx, 0x75
00000001400a5216 mov      r8, rbx
00000001400a5219 call     0x140001b88
00000001400a521e movzx    edx, byte ptr [r14 + 1]
00000001400a5223 lea      rcx, [rip + 0x557276]
00000001400a522a mov      dword ptr [rsi + 0x540694], edx
00000001400a5230 call     0x140044366
00000001400a5235 mov      al, byte ptr [r14 + 2]
00000001400a5239 mov      rcx, rsi
00000001400a523c mov      byte ptr [rsi + 0x540698], al
00000001400a5242 mov      rax, qword ptr [rbp - 0x39]
00000001400a5246 mov      rdx, rax
00000001400a5249 mov      r8, qword ptr [rax + 0x2c8]
00000001400a5250 add      r8, 0x36
00000001400a5254 call     0x1400dda8c
00000001400a5259 mov      rcx, qword ptr [rip + 0x87ada0]
00000001400a5260 cmp      rcx, r13
00000001400a5263 je       0x1400a487b
00000001400a5269 cmp      byte ptr [rcx + 0x69], 4
00000001400a526d mov      edi, 1
00000001400a5272 jb       0x1400a5292
00000001400a5274 mov      eax, dword ptr [rcx + 0x6c]
00000001400a5277 test     dil, al
00000001400a527a je       0x1400a5292
00000001400a527c mov      r9d, dword ptr [rsi + 0x540694]
00000001400a5283 lea      edx, [rdi + 0x75]
00000001400a5286 mov      rcx, qword ptr [rcx + 0x58]
00000001400a528a mov      r8, rbx
00000001400a528d call     0x140001bb0
00000001400a5292 mov      rcx, qword ptr [rip + 0x87ad67]
00000001400a5299 cmp      rcx, r13
00000001400a529c je       0x1400a4880
00000001400a52a2 cmp      byte ptr [rcx + 0x69], 4
00000001400a52a6 jb       0x1400a4880
00000001400a52ac mov      eax, dword ptr [rcx + 0x6c]
00000001400a52af test     dil, al
00000001400a52b2 je       0x1400a4880
00000001400a52b8 movzx    r9d, byte ptr [rsi + 0x540698]
00000001400a52c0 mov      edx, 0x77
00000001400a52c5 mov      r8, rbx
00000001400a52c8 jmp      0x1400a4c7a
00000001400a52cd mov      r15d, 2
00000001400a52d3 mov      ebx, r15d
00000001400a52d6 cmp      r8d, r15d
00000001400a52d9 jb       0x1400a77a4
00000001400a52df movzx    edx, byte ptr [r14 + 1]
00000001400a52e4 mov      byte ptr [rsi + 0x540531], dl
00000001400a52ea mov      rcx, qword ptr [rip + 0x87ad0f]
00000001400a52f1 lea      r13, [rip + 0x87ad08]
00000001400a52f8 cmp      rcx, r13
00000001400a52fb je       0x1400a487b
00000001400a5301 cmp      byte ptr [rcx + 0x69], 4
00000001400a5305 lea      edi, [r15 - 1]
00000001400a5309 jb       0x1400a4880
00000001400a530f mov      eax, dword ptr [rcx + 0x6c]
00000001400a5312 test     dil, al
00000001400a5315 je       0x1400a4880
00000001400a531b mov      rcx, qword ptr [rcx + 0x58]
00000001400a531f lea      r8, [rip + 0x5ed99a]
00000001400a5326 mov      r9d, edx
00000001400a5329 lea      edx, [rdi + 0x6f]
00000001400a532c call     0x140001bb0
00000001400a5331 jmp      0x1400a4880
00000001400a5336 movzx    r14d, byte ptr [r14 + 1]
00000001400a533b xor      esi, esi
00000001400a533d mov      qword ptr [rbp - 0x49], rsi
00000001400a5341 lea      r15d, [rsi + 2]
00000001400a5345 mov      ebx, r15d
00000001400a5348 cmp      r8d, r15d
00000001400a534b jb       0x1400a77a4
00000001400a5351 mov      rdx, qword ptr [rbp - 0x39]
00000001400a5355 mov      r9b, r14b
00000001400a5358 mov      r12, qword ptr [rbp - 0x61]
00000001400a535c mov      byte ptr [rsp + 0x28], 1
00000001400a5361 mov      rcx, r12
00000001400a5364 mov      dword ptr [rsp + 0x20], esi
00000001400a5368 mov      rax, qword ptr [rdx + 0x2c8]
00000001400a536f lea      rdx, [rbp - 0x49]
00000001400a5373 mov      r8, qword ptr [rax + 0x20]
00000001400a5377 add      r8, 0x18
00000001400a537b call     0x1400b6b40
00000001400a5380 test     al, al
00000001400a5382 je       0x1400a53cb
00000001400a5384 mov      rdx, qword ptr [rbp - 0x49]
00000001400a5388 mov      rcx, r12
00000001400a538b call     0x1400b7bec
00000001400a5390 mov      rcx, qword ptr [rip + 0x87ac69]
00000001400a5397 lea      r13, [rip + 0x87ac62]
00000001400a539e cmp      rcx, r13
00000001400a53a1 je       0x1400a487b
00000001400a53a7 cmp      byte ptr [rcx + 0x69], 4
00000001400a53ab lea      edi, [rsi + 1]
00000001400a53ae jb       0x1400a4880
00000001400a53b4 mov      eax, dword ptr [rcx + 0x6c]
00000001400a53b7 test     dil, al
00000001400a53ba je       0x1400a4880
00000001400a53c0 mov      r9d, r14d
00000001400a53c3 lea      edx, [rsi + 0x6e]
00000001400a53c6 jmp      0x1400a4c73
00000001400a53cb mov      rcx, qword ptr [rip + 0x87ac2e]
00000001400a53d2 lea      r13, [rip + 0x87ac27]
00000001400a53d9 cmp      rcx, r13
00000001400a53dc je       0x1400a487b
00000001400a53e2 cmp      byte ptr [rcx + 0x69], 4
00000001400a53e6 mov      edi, 1
00000001400a53eb jb       0x1400a4880
00000001400a53f1 mov      eax, dword ptr [rcx + 0x6c]
00000001400a53f4 test     dil, al
00000001400a53f7 je       0x1400a4880
00000001400a53fd mov      r9d, r14d
00000001400a5400 lea      edx, [rdi + 0x6e]
00000001400a5403 jmp      0x1400a4c73
00000001400a5408 mov      r15d, 2
00000001400a540e mov      ebx, r15d
00000001400a5411 cmp      r8d, r15d
00000001400a5414 jb       0x1400a77a4
00000001400a541a mov      rcx, qword ptr [rip + 0x87abdf]
00000001400a5421 lea      r13, [rip + 0x87abd8]
00000001400a5428 cmp      rcx, r13
00000001400a542b je       0x1400a4d4f
00000001400a5431 cmp      byte ptr [rcx + 0x69], 4
00000001400a5435 jb       0x1400a4d4f
00000001400a543b mov      eax, dword ptr [rcx + 0x6c]
00000001400a543e test     dl, al
00000001400a5440 je       0x1400a4d4f
00000001400a5446 lea      edx, [r15 + 0x72]
00000001400a544a jmp      0x1400a4866
00000001400a544f sub      r12d, 0x8d
00000001400a5456 je       0x1400a5c68
00000001400a545c sub      r12d, 4
00000001400a5460 je       0x1400a5a33
00000001400a5466 sub      r12d, edx
00000001400a5469 je       0x1400a59db
00000001400a546f cmp      r12d, edx
00000001400a5472 jne      0x1400a4d4f
00000001400a5478 mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400a547f mov      rdx, qword ptr [rbp - 0x59]
00000001400a5483 mov      rcx, qword ptr [rax]
00000001400a5486 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a548d call     0x1401b6de0
00000001400a5492 mov      r12, rax
00000001400a5495 xor      eax, eax
00000001400a5497 cmp      dword ptr [rbp - 0x51], 0xd
00000001400a549b mov      dword ptr [rbp - 1], eax
00000001400a549e mov      word ptr [rbp + 3], ax
00000001400a54a2 mov      dword ptr [rbp + 7], eax
00000001400a54a5 mov      word ptr [rbp + 0xb], ax
00000001400a54a9 mov      dword ptr [rbp + 0xf], eax
00000001400a54ac mov      word ptr [rbp + 0x13], ax
00000001400a54b0 jb       0x1400a779f
00000001400a54b6 lea      rdx, [r14 + 1]
00000001400a54ba lea      r8d, [rax + 6]
00000001400a54be lea      rcx, [rbp - 1]
00000001400a54c2 call     0x1400311e8
00000001400a54c7 lea      rdx, [r14 + 7]
00000001400a54cb mov      r8d, 6
00000001400a54d1 lea      rcx, [rbp + 7]
00000001400a54d5 call     0x1400311e8
00000001400a54da mov      rcx, qword ptr [rip + 0x87ab1f]
00000001400a54e1 lea      r13, [rip + 0x87ab18]
00000001400a54e8 lea      rdi, [rip + 0x5ed7d1]
00000001400a54ef mov      r15d, 2
00000001400a54f5 cmp      rcx, r13
00000001400a54f8 je       0x1400a554c
00000001400a54fa cmp      byte ptr [rcx + 0x29], 4
00000001400a54fe jb       0x1400a554c
00000001400a5500 mov      eax, dword ptr [rcx + 0x2c]
00000001400a5503 test     r15b, al
00000001400a5506 je       0x1400a554c
00000001400a5508 movzx    r8d, byte ptr [rbp + 3]
00000001400a550d mov      edx, 0x90
00000001400a5512 movzx    eax, byte ptr [rbp + 4]
00000001400a5516 movzx    r10d, byte ptr [rbp + 2]
00000001400a551b movzx    r11d, byte ptr [rbp + 1]
00000001400a5520 movzx    ebx, byte ptr [rbp]
00000001400a5524 movzx    r9d, byte ptr [rbp - 1]
00000001400a5529 mov      rcx, qword ptr [rcx + 0x18]
00000001400a552d mov      dword ptr [rsp + 0x40], eax
00000001400a5531 mov      dword ptr [rsp + 0x38], r8d
00000001400a5536 mov      r8, rdi
00000001400a5539 mov      dword ptr [rsp + 0x30], r10d
00000001400a553e mov      dword ptr [rsp + 0x28], r11d
00000001400a5543 mov      dword ptr [rsp + 0x20], ebx
00000001400a5547 call     0x1400087f4
00000001400a554c mov      r8d, 6
00000001400a5552 lea      rdx, [rbp + 0xf]
00000001400a5556 lea      rcx, [rbp + 7]
00000001400a555a call     0x14003113c
00000001400a555f xor      esi, esi
00000001400a5561 test     eax, eax
00000001400a5563 je       0x1400a55c3
00000001400a5565 mov      rcx, qword ptr [rip + 0x87aa94]
00000001400a556c cmp      rcx, r13
00000001400a556f je       0x1400a55c3
00000001400a5571 cmp      byte ptr [rcx + 0x29], 4
00000001400a5575 jb       0x1400a55c3
00000001400a5577 mov      eax, dword ptr [rcx + 0x2c]
00000001400a557a test     r15b, al
00000001400a557d je       0x1400a55c3
00000001400a557f movzx    r8d, byte ptr [rbp + 0xb]
00000001400a5584 mov      edx, 0x91
00000001400a5589 movzx    eax, byte ptr [rbp + 0xc]
00000001400a558d movzx    r10d, byte ptr [rbp + 0xa]
00000001400a5592 movzx    r11d, byte ptr [rbp + 9]
00000001400a5597 movzx    ebx, byte ptr [rbp + 8]
00000001400a559b movzx    r9d, byte ptr [rbp + 7]
00000001400a55a0 mov      rcx, qword ptr [rcx + 0x18]
00000001400a55a4 mov      dword ptr [rsp + 0x40], eax
00000001400a55a8 mov      dword ptr [rsp + 0x38], r8d
00000001400a55ad mov      r8, rdi
00000001400a55b0 mov      dword ptr [rsp + 0x30], r10d
00000001400a55b5 mov      dword ptr [rsp + 0x28], r11d
00000001400a55ba mov      dword ptr [rsp + 0x20], ebx
00000001400a55be call     0x1400087f4
00000001400a55c3 mov      ecx, dword ptr [r12 + 0x24]
00000001400a55c8 cmp      ecx, r15d
00000001400a55cb je       0x1400a57d9
00000001400a55d1 cmp      ecx, 5
00000001400a55d4 je       0x1400a57d9
00000001400a55da lea      eax, [rcx - 3]
00000001400a55dd test     eax, 0xfffffffc
00000001400a55e2 jne      0x1400a487b
00000001400a55e8 cmp      ecx, 5
00000001400a55eb je       0x1400a487b
00000001400a55f1 mov      rbx, qword ptr [rbp - 0x59]
00000001400a55f5 mov      al, sil
00000001400a55f8 mov      byte ptr [rbp - 0x69], al
00000001400a55fb cmp      byte ptr [rbx + 0x250], sil
00000001400a5602 jbe      0x1400a487b
00000001400a5608 mov      r12, qword ptr [rbp - 0x61]
00000001400a560c mov      r14d, 6
00000001400a5612 movzx    eax, al
00000001400a5615 lea      rdx, [rbp - 1]
00000001400a5619 imul     rax, rax, 0xa38
00000001400a5620 mov      r8d, r14d
00000001400a5623 mov      qword ptr [rbp - 0x39], rax
00000001400a5627 add      rax, 0x261
00000001400a562d add      rax, rbx
00000001400a5630 mov      rcx, rax
00000001400a5633 mov      qword ptr [rbp - 0x49], rax
00000001400a5637 call     0x14003113c
00000001400a563c test     eax, eax
00000001400a563e jne      0x1400a56e0
00000001400a5644 mov      rcx, qword ptr [rbp - 0x39]
00000001400a5648 mov      eax, dword ptr [rcx + rbx + 0x274]
00000001400a564f mov      ecx, 1
00000001400a5654 test     cl, al
00000001400a5656 je       0x1400a56b3
00000001400a5658 mov      rcx, qword ptr [rip + 0x87a9a1]
00000001400a565f cmp      rcx, r13
00000001400a5662 je       0x1400a5683
00000001400a5664 cmp      byte ptr [rcx + 0x29], 4
00000001400a5668 jb       0x1400a5683
00000001400a566a mov      eax, dword ptr [rcx + 0x2c]
00000001400a566d test     r15b, al
00000001400a5670 je       0x1400a5683
00000001400a5672 mov      edx, 0x96
00000001400a5677 mov      rcx, qword ptr [rcx + 0x18]
00000001400a567b mov      r8, rdi
00000001400a567e call     0x140001b88
00000001400a5683 mov      rax, qword ptr [rbp - 0x39]
00000001400a5687 xor      r9d, r9d
00000001400a568a mov      dl, byte ptr [rbx + 0x15]
00000001400a568d mov      rcx, r12
00000001400a5690 mov      byte ptr [rsp + 0x20], 0xa
00000001400a5695 mov      r8b, byte ptr [rax + rbx + 0x260]
00000001400a569d call     0x1401428f0
00000001400a56a2 mov      rax, qword ptr [rbp - 0x39]
00000001400a56a6 and      dword ptr [rax + rbx + 0x274], 0xfffffffe
00000001400a56ae jmp      0x1400a57c0
00000001400a56b3 mov      rcx, qword ptr [rip + 0x87a946]
00000001400a56ba cmp      rcx, r13
00000001400a56bd je       0x1400a57c0
00000001400a56c3 cmp      byte ptr [rcx + 0x29], 4
00000001400a56c7 jb       0x1400a57c0
00000001400a56cd mov      eax, dword ptr [rcx + 0x2c]
00000001400a56d0 test     r15b, al
00000001400a56d3 je       0x1400a57c0
00000001400a56d9 mov      edx, 0x97
00000001400a56de jmp      0x1400a5755
00000001400a56e0 mov      rcx, qword ptr [rbp - 0x49]
00000001400a56e4 lea      rdx, [rbp + 7]
00000001400a56e8 mov      r8d, r14d
00000001400a56eb call     0x14003113c
00000001400a56f0 mov      rcx, qword ptr [rbp - 0x39]
00000001400a56f4 mov      edx, dword ptr [rcx + rbx + 0x274]
00000001400a56fb and      edx, 1
00000001400a56fe test     eax, eax
00000001400a5700 jne      0x1400a5763
00000001400a5702 test     edx, edx
00000001400a5704 je       0x1400a5736
00000001400a5706 mov      rcx, qword ptr [rip + 0x87a8f3]
00000001400a570d cmp      rcx, r13
00000001400a5710 je       0x1400a5683
00000001400a5716 cmp      byte ptr [rcx + 0x29], 4
00000001400a571a jb       0x1400a5683
00000001400a5720 mov      eax, dword ptr [rcx + 0x2c]
00000001400a5723 test     r15b, al
00000001400a5726 je       0x1400a5683
00000001400a572c mov      edx, 0x98
00000001400a5731 jmp      0x1400a5677
00000001400a5736 mov      rcx, qword ptr [rip + 0x87a8c3]
00000001400a573d cmp      rcx, r13
00000001400a5740 je       0x1400a57c0
00000001400a5742 cmp      byte ptr [rcx + 0x29], 4
00000001400a5746 jb       0x1400a57c0
00000001400a5748 mov      eax, dword ptr [rcx + 0x2c]
00000001400a574b test     r15b, al
00000001400a574e je       0x1400a57c0
00000001400a5750 mov      edx, 0x99
00000001400a5755 mov      rcx, qword ptr [rcx + 0x18]
00000001400a5759 mov      r8, rdi
00000001400a575c call     0x140001b88
00000001400a5761 jmp      0x1400a57c0
00000001400a5763 test     edx, edx
00000001400a5765 jne      0x1400a57c0
00000001400a5767 mov      rcx, qword ptr [rip + 0x87a892]
00000001400a576e cmp      rcx, r13
00000001400a5771 je       0x1400a5792
00000001400a5773 cmp      byte ptr [rcx + 0x29], 4
00000001400a5777 jb       0x1400a5792
00000001400a5779 mov      eax, dword ptr [rcx + 0x2c]
00000001400a577c test     r15b, al
00000001400a577f je       0x1400a5792
00000001400a5781 mov      rcx, qword ptr [rcx + 0x18]
00000001400a5785 mov      edx, 0x9a
00000001400a578a mov      r8, rdi
00000001400a578d call     0x140001b88
00000001400a5792 mov      rax, qword ptr [rbp - 0x39]
00000001400a5796 mov      r9d, 1
00000001400a579c mov      dl, byte ptr [rbx + 0x15]
00000001400a579f mov      rcx, r12
00000001400a57a2 mov      byte ptr [rsp + 0x20], 0xa
00000001400a57a7 mov      r8b, byte ptr [rax + rbx + 0x260]
00000001400a57af call     0x1401428f0
00000001400a57b4 mov      rax, qword ptr [rbp - 0x39]
00000001400a57b8 or       dword ptr [rax + rbx + 0x274], 1
00000001400a57c0 mov      al, byte ptr [rbp - 0x69]
00000001400a57c3 inc      al
00000001400a57c5 mov      byte ptr [rbp - 0x69], al
00000001400a57c8 cmp      al, byte ptr [rbx + 0x250]
00000001400a57ce jb       0x1400a5612
00000001400a57d4 jmp      0x1400a487b
00000001400a57d9 mov      r12, qword ptr [rbp - 0x61]
00000001400a57dd mov      rax, qword ptr [r12 + 0xaf3b8]
00000001400a57e5 mov      rcx, qword ptr [rax]
00000001400a57e8 cmp      byte ptr [rcx + 0xaaffa], sil
00000001400a57ef je       0x1400a5804
00000001400a57f1 cmp      rcx, r12
00000001400a57f4 jne      0x1400a5804
00000001400a57f6 mov      dl, sil
00000001400a57f9 mov      r14d, 3
00000001400a57ff mov      byte ptr [rbp - 0x69], dl
00000001400a5802 jmp      0x1400a5823
00000001400a5804 mov      rax, qword ptr [r12 + 0xab230]
00000001400a580c mov      dl, sil
00000001400a580f mov      byte ptr [rbp - 0x69], dl
00000001400a5812 mov      cl, byte ptr [rax + 0x250]
00000001400a5818 mov      r14b, cl
00000001400a581b test     cl, cl
00000001400a581d je       0x1400a593c
00000001400a5823 movzx    eax, dl
00000001400a5826 lea      r8, [r12 + 0x544ca0]
00000001400a582e imul     rbx, rax, 0x1dc0
00000001400a5835 add      rbx, 0x53f360
00000001400a583c add      rbx, r12
00000001400a583f cmp      dl, r15b
00000001400a5842 cmove    rbx, r8
00000001400a5846 mov      qword ptr [rbp - 0x49], rbx
00000001400a584a mov      rcx, qword ptr [rip + 0x87a7af]
00000001400a5851 cmp      rcx, r13
00000001400a5854 je       0x1400a58b0
00000001400a5856 cmp      byte ptr [rcx + 0x29], 4
00000001400a585a jb       0x1400a58b0
00000001400a585c test     dword ptr [rcx + 0x2c], 0x100
00000001400a5863 je       0x1400a58b0
00000001400a5865 movzx    r8d, byte ptr [rbx + 4]
00000001400a586a mov      rdx, qword ptr [rbp - 0x49]
00000001400a586e movzx    eax, byte ptr [rbx + 5]
00000001400a5872 movzx    r10d, byte ptr [rbx + 3]
00000001400a5877 movzx    r11d, byte ptr [rbx + 2]
00000001400a587c movzx    r9d, byte ptr [rdx]
00000001400a5880 mov      edx, 0x92
00000001400a5885 movzx    ebx, byte ptr [rbx + 1]
00000001400a5889 mov      rcx, qword ptr [rcx + 0x18]
00000001400a588d mov      dword ptr [rsp + 0x40], eax
00000001400a5891 mov      dword ptr [rsp + 0x38], r8d
00000001400a5896 mov      r8, rdi
00000001400a5899 mov      dword ptr [rsp + 0x30], r10d
00000001400a589e mov      dword ptr [rsp + 0x28], r11d
00000001400a58a3 mov      dword ptr [rsp + 0x20], ebx
00000001400a58a7 call     0x1400087f4
00000001400a58ac mov      rbx, qword ptr [rbp - 0x49]
00000001400a58b0 mov      r8d, 6
00000001400a58b6 lea      rdx, [rbp - 1]
00000001400a58ba mov      rcx, rbx
00000001400a58bd call     0x14003113c
00000001400a58c2 test     eax, eax
00000001400a58c4 jne      0x1400a592a
00000001400a58c6 mov      rcx, qword ptr [rbx + 0x2c8]
00000001400a58cd mov      qword ptr [rbp - 0x49], rcx
00000001400a58d1 mov      rax, qword ptr [rip + 0x87a728]
00000001400a58d8 cmp      rax, r13
00000001400a58db je       0x1400a5921
00000001400a58dd cmp      byte ptr [rax + 0x29], 4
00000001400a58e1 jb       0x1400a5921
00000001400a58e3 test     dword ptr [rax + 0x2c], 0x100
00000001400a58ea je       0x1400a5921
00000001400a58ec call     0x140225b84
00000001400a58f1 test     al, al
00000001400a58f3 lea      rcx, [rip + 0x556bb6]
00000001400a58fa lea      r9, [rip + 0x556bbf]
00000001400a5901 mov      edx, 0x93
00000001400a5906 cmovne   r9, rcx
00000001400a590a mov      r8, rdi
00000001400a590d mov      rcx, qword ptr [rip + 0x87a6ec]
00000001400a5914 mov      rcx, qword ptr [rcx + 0x18]
00000001400a5918 call     0x140008874
00000001400a591d mov      rcx, qword ptr [rbp - 0x49]
00000001400a5921 call     0x140225b84
00000001400a5926 test     al, al
00000001400a5928 jne      0x1400a5973
00000001400a592a mov      dl, byte ptr [rbp - 0x69]
00000001400a592d add      dl, 1
00000001400a5930 mov      byte ptr [rbp - 0x69], dl
00000001400a5933 cmp      dl, r14b
00000001400a5936 jb       0x1400a5823
00000001400a593c mov      rcx, qword ptr [rip + 0x87a6bd]
00000001400a5943 cmp      rcx, r13
00000001400a5946 je       0x1400a487b
00000001400a594c cmp      byte ptr [rcx + 0x29], 4
00000001400a5950 jb       0x1400a487b
00000001400a5956 mov      eax, dword ptr [rcx + 0x2c]
00000001400a5959 test     r15b, al
00000001400a595c je       0x1400a487b
00000001400a5962 mov      rcx, qword ptr [rcx + 0x18]
00000001400a5966 mov      edx, 0x95
00000001400a596b mov      r8, rdi
00000001400a596e jmp      0x1400a4cfd
00000001400a5973 mov      qword ptr [rbp - 0x45], rsi
00000001400a5977 mov      rcx, qword ptr [rip + 0x87a682]
00000001400a597e cmp      rcx, r13
00000001400a5981 je       0x1400a59a2
00000001400a5983 cmp      byte ptr [rcx + 0x29], 4
00000001400a5987 jb       0x1400a59a2
00000001400a5989 mov      eax, dword ptr [rcx + 0x2c]
00000001400a598c test     r15b, al
00000001400a598f je       0x1400a59a2
00000001400a5991 mov      rcx, qword ptr [rcx + 0x18]
00000001400a5995 mov      edx, 0x94
00000001400a599a mov      r8, rdi
00000001400a599d call     0x140001b88
00000001400a59a2 mov      eax, 1
00000001400a59a7 lea      rcx, [rbp - 0x45]
00000001400a59ab mov      rdx, rbx
00000001400a59ae mov      dword ptr [rbp - 0x49], eax
00000001400a59b1 lea      r8d, [rax + 5]
00000001400a59b5 call     0x1400311e8
00000001400a59ba movsd    xmm0, qword ptr [rbp - 0x49]
00000001400a59bf lea      rdx, [rbp - 0x39]
00000001400a59c3 mov      eax, dword ptr [rbp - 0x41]
00000001400a59c6 mov      rcx, r12
00000001400a59c9 movsd    qword ptr [rbp - 0x39], xmm0
00000001400a59ce mov      dword ptr [rbp - 0x31], eax
00000001400a59d1 call     0x14010561c
00000001400a59d6 jmp      0x1400a487b
00000001400a59db mov      ebx, ecx
00000001400a59dd cmp      r8d, ecx
00000001400a59e0 jb       0x1400a77a4
00000001400a59e6 movzx    r9d, byte ptr [r14 + 1]
00000001400a59eb mov      dword ptr [r15 + 0xaa434], r9d
00000001400a59f2 mov      rcx, qword ptr [rip + 0x87a607]
00000001400a59f9 lea      r13, [rip + 0x87a600]
00000001400a5a00 cmp      rcx, r13
00000001400a5a03 je       0x1400a4d4f
00000001400a5a09 cmp      byte ptr [rcx + 0x29], 4
00000001400a5a0d jb       0x1400a4d4f
00000001400a5a13 mov      eax, dword ptr [rcx + 0x2c]
00000001400a5a16 mov      r15d, 2
00000001400a5a1c test     r15b, al
00000001400a5a1f je       0x1400a4d4f
00000001400a5a25 mov      edx, 0x8e
00000001400a5a2a mov      rcx, qword ptr [rcx + 0x18]
00000001400a5a2e jmp      0x1400a486f
00000001400a5a33 mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400a5a3a mov      rdx, qword ptr [rbp - 0x39]
00000001400a5a3e mov      rcx, qword ptr [rax]
00000001400a5a41 lea      r12, [rdx + 0x1d34]
00000001400a5a48 mov      rdx, qword ptr [rdx + 0x2c0]
00000001400a5a4f mov      rcx, qword ptr [rcx + 0x20708]
00000001400a5a56 call     0x1401b7324
00000001400a5a5b mov      ebx, 6
00000001400a5a60 mov      qword ptr [rbp - 0x49], rax
00000001400a5a64 cmp      dword ptr [rbp - 0x51], ebx
00000001400a5a67 jb       0x1400a77a4
00000001400a5a6d mov      rdi, qword ptr [rbp - 0x39]
00000001400a5a71 lea      rcx, [rax + 0xb0e]
00000001400a5a78 xor      ebx, ebx
00000001400a5a7a mov      byte ptr [rdi + 0x1d32], bl
00000001400a5a80 movzx    edx, byte ptr [r14 + 2]
00000001400a5a85 lea      r8d, [rbx + 1]
00000001400a5a89 movzx    r9d, byte ptr [r14 + 1]
00000001400a5a8e test     r8b, dl
00000001400a5a91 je       0x1400a5a9b
00000001400a5a93 mov      al, byte ptr [r14 + 3]
00000001400a5a97 and      al, 0xf
00000001400a5a99 jmp      0x1400a5aa3
00000001400a5a9b mov      al, byte ptr [rcx]
00000001400a5a9d shr      al, 5
00000001400a5aa0 sub      al, r8b
00000001400a5aa3 mov      r15d, 2
00000001400a5aa9 mov      byte ptr [r12 + 9], al
00000001400a5aae test     r15b, dl
00000001400a5ab1 je       0x1400a5abc
00000001400a5ab3 mov      al, byte ptr [r14 + 3]
00000001400a5ab7 shr      al, 4
00000001400a5aba jmp      0x1400a5ac6
00000001400a5abc mov      al, byte ptr [rcx]
00000001400a5abe shr      al, 2
00000001400a5ac1 and      al, 7
00000001400a5ac3 sub      al, r8b
00000001400a5ac6 mov      byte ptr [r12], al
00000001400a5aca test     dl, 4
00000001400a5acd je       0x1400a5b0f
00000001400a5acf mov      cl, byte ptr [r14 + 4]
00000001400a5ad3 test     cl, cl
00000001400a5ad5 je       0x1400a5b05
00000001400a5ad7 cmp      cl, r8b
00000001400a5ada jne      0x1400a5ae6
00000001400a5adc mov      dword ptr [r12 + 4], r8d
00000001400a5ae1 mov      r15d, r8d
00000001400a5ae4 jmp      0x1400a5b21
00000001400a5ae6 cmp      cl, r15b
00000001400a5ae9 jne      0x1400a5af2
00000001400a5aeb mov      dword ptr [r12 + 4], r15d
00000001400a5af0 jmp      0x1400a5b21
00000001400a5af2 mov      eax, 3
00000001400a5af7 cmp      cl, al
00000001400a5af9 jne      0x1400a5b05
00000001400a5afb mov      dword ptr [r12 + 4], eax
00000001400a5b00 mov      r15d, eax
00000001400a5b03 jmp      0x1400a5b21
00000001400a5b05 mov      dword ptr [r12 + 4], ebx
00000001400a5b0a mov      r15d, ebx
00000001400a5b0d jmp      0x1400a5b21
00000001400a5b0f mov      rax, qword ptr [rdi + 0x2c8]
00000001400a5b16 mov      ecx, dword ptr [rax + 0x50]
00000001400a5b19 mov      r15d, ecx
00000001400a5b1c mov      dword ptr [r12 + 4], ecx
00000001400a5b21 test     dl, 8
00000001400a5b24 je       0x1400a5b32
00000001400a5b26 mov      al, byte ptr [r14 + 5]
00000001400a5b2a and      al, r8b
00000001400a5b2d mov      byte ptr [r12 + 8], al
00000001400a5b32 test     dl, 0x10
00000001400a5b35 je       0x1400a5b45
00000001400a5b37 mov      al, byte ptr [r14 + 5]
00000001400a5b3b shr      al, 1
00000001400a5b3d and      al, r8b
00000001400a5b40 mov      byte ptr [r12 + 0xc], al
00000001400a5b45 test     dl, 0x20
00000001400a5b48 je       0x1400a5b59
00000001400a5b4a mov      al, byte ptr [r14 + 5]
00000001400a5b4e shr      al, 2
00000001400a5b51 and      al, r8b
00000001400a5b54 mov      byte ptr [r12 + 0xb], al
00000001400a5b59 test     dl, 0x40
00000001400a5b5c je       0x1400a5b6d
00000001400a5b5e mov      al, byte ptr [r14 + 5]
00000001400a5b62 shr      al, 3
00000001400a5b65 and      al, r8b
00000001400a5b68 mov      byte ptr [r12 + 0xa], al
00000001400a5b6d mov      rcx, qword ptr [rip + 0x87a48c]
00000001400a5b74 lea      r13, [rip + 0x87a485]
00000001400a5b7b cmp      rcx, r13
00000001400a5b7e je       0x1400a5c23
00000001400a5b84 cmp      byte ptr [rcx + 0x69], 4
00000001400a5b88 jb       0x1400a5bce
00000001400a5b8a mov      eax, dword ptr [rcx + 0x6c]
00000001400a5b8d test     r8b, al
00000001400a5b90 je       0x1400a5bce
00000001400a5b92 movzx    r8d, byte ptr [r12 + 9]
00000001400a5b98 mov      r10d, edx
00000001400a5b9b movzx    eax, byte ptr [r12]
00000001400a5ba0 mov      edx, 0x8c
00000001400a5ba5 mov      rcx, qword ptr [rcx + 0x58]
00000001400a5ba9 mov      dword ptr [rsp + 0x38], r15d
00000001400a5bae mov      dword ptr [rsp + 0x30], eax
00000001400a5bb2 mov      dword ptr [rsp + 0x28], r8d
00000001400a5bb7 lea      r8, [rip + 0x5ed102]
00000001400a5bbe mov      dword ptr [rsp + 0x20], r10d
00000001400a5bc3 call     0x140039d40
00000001400a5bc8 mov      r8d, 1
00000001400a5bce mov      rcx, qword ptr [rip + 0x87a42b]
00000001400a5bd5 cmp      rcx, r13
00000001400a5bd8 je       0x1400a5c23
00000001400a5bda cmp      byte ptr [rcx + 0x69], 4
00000001400a5bde jb       0x1400a5c23
00000001400a5be0 mov      eax, dword ptr [rcx + 0x6c]
00000001400a5be3 test     r8b, al
00000001400a5be6 je       0x1400a5c23
00000001400a5be8 movzx    r8d, byte ptr [r12 + 0xa]
00000001400a5bee mov      edx, 0x8d
00000001400a5bf3 movzx    eax, byte ptr [r12 + 0xb]
00000001400a5bf9 movzx    r10d, byte ptr [r12 + 0xc]
00000001400a5bff movzx    r9d, byte ptr [r12 + 8]
00000001400a5c05 mov      rcx, qword ptr [rcx + 0x58]
00000001400a5c09 mov      dword ptr [rsp + 0x30], eax
00000001400a5c0d mov      dword ptr [rsp + 0x28], r8d
00000001400a5c12 lea      r8, [rip + 0x5ed0a7]
00000001400a5c19 mov      dword ptr [rsp + 0x20], r10d
00000001400a5c1e call     0x140008794
00000001400a5c23 mov      rdx, qword ptr [rbp - 0x49]
00000001400a5c27 mov      r8d, 0xd3
00000001400a5c2d mov      r9, r12
00000001400a5c30 mov      byte ptr [r12 + 0xd], bl
00000001400a5c35 mov      rcx, rsi
00000001400a5c38 mov      dword ptr [rsp + 0x20], ebx
00000001400a5c3c call     0x14018a4f8
00000001400a5c41 mov      rdx, qword ptr [rbp - 0x49]
00000001400a5c45 mov      r8d, 0xd0
00000001400a5c4b mov      r9, r12
00000001400a5c4e mov      dword ptr [rsp + 0x20], ebx
00000001400a5c52 mov      rcx, rsi
00000001400a5c55 call     0x14018a4f8
00000001400a5c5a mov      word ptr [rdi + 0x1d32], 1
00000001400a5c63 jmp      0x1400a487b
00000001400a5c68 mov      r15d, 2
00000001400a5c6e movzx    r12d, r8b
00000001400a5c72 mov      ebx, r15d
00000001400a5c75 cmp      r12b, r15b
00000001400a5c78 jb       0x1400a77a4
00000001400a5c7e mov      rcx, qword ptr [rip + 0x87a37b]
00000001400a5c85 cmp      rcx, r13
00000001400a5c88 je       0x1400a5cab
00000001400a5c8a cmp      byte ptr [rcx + 0x69], 4
00000001400a5c8e jb       0x1400a5cab
00000001400a5c90 mov      eax, dword ptr [rcx + 0x6c]
00000001400a5c93 test     dl, al
00000001400a5c95 je       0x1400a5cab
00000001400a5c97 mov      rcx, qword ptr [rcx + 0x58]
00000001400a5c9b lea      edx, [r15 + 0x78]
00000001400a5c9f mov      r8, rdi
00000001400a5ca2 call     0x140001b88
00000001400a5ca7 lea      edx, [r15 - 1]
00000001400a5cab mov      r8d, r12d
00000001400a5cae mov      rcx, rsi
00000001400a5cb1 sub      r8d, edx
00000001400a5cb4 lea      rdx, [r14 + 1]
00000001400a5cb8 call     0x1400a3888
00000001400a5cbd mov      r9d, eax
00000001400a5cc0 test     eax, eax
00000001400a5cc2 je       0x1400a77a4
00000001400a5cc8 mov      rcx, qword ptr [rip + 0x87a331]
00000001400a5ccf cmp      rcx, r13
00000001400a5cd2 je       0x1400a77f2
00000001400a5cd8 mov      edx, 3
00000001400a5cdd cmp      byte ptr [rcx + 0x69], dl
00000001400a5ce0 jb       0x1400a77f2
00000001400a5ce6 mov      eax, dword ptr [rcx + 0x6c]
00000001400a5ce9 mov      edx, 1
00000001400a5cee test     dl, al
00000001400a5cf0 je       0x1400a77f2
00000001400a5cf6 mov      edx, 0x7b
00000001400a5cfb mov      r8, rdi
00000001400a5cfe mov      rcx, qword ptr [rcx + 0x58]
00000001400a5d02 call     0x140001bb0
00000001400a5d07 jmp      0x1400a77f2
00000001400a5d0c mov      ebx, ecx
00000001400a5d0e cmp      r8d, ecx
00000001400a5d11 jb       0x1400a77a4
00000001400a5d17 movzx    edx, byte ptr [r14 + 1]
00000001400a5d1c mov      byte ptr [r15 + 0xaa430], dl
00000001400a5d23 mov      rcx, qword ptr [rip + 0x87a2d6]
00000001400a5d2a lea      r13, [rip + 0x87a2cf]
00000001400a5d31 cmp      rcx, r13
00000001400a5d34 je       0x1400a487b
00000001400a5d3a cmp      byte ptr [rcx + 0x29], 4
00000001400a5d3e jb       0x1400a487b
00000001400a5d44 mov      eax, dword ptr [rcx + 0x2c]
00000001400a5d47 mov      r15d, 2
00000001400a5d4d test     r15b, al
00000001400a5d50 je       0x1400a487b
00000001400a5d56 mov      r9d, edx
00000001400a5d59 mov      edx, 0x9b
00000001400a5d5e jmp      0x1400a5a2a
00000001400a5d63 cmp      r12b, 0x9b
00000001400a5d67 ja       0x1400a6278
00000001400a5d6d mov      r15d, 2
00000001400a5d73 je       0x1400a622c
00000001400a5d79 sub      r12d, 0x95
00000001400a5d80 je       0x1400a60fd
00000001400a5d86 sub      r12d, r15d
00000001400a5d89 je       0x1400a5f88
00000001400a5d8f sub      r12d, edx
00000001400a5d92 je       0x1400a5e25
00000001400a5d98 sub      r12d, edx
00000001400a5d9b je       0x1400a5dcc
00000001400a5d9d cmp      r12d, edx
00000001400a5da0 jne      0x1400a4d4f
00000001400a5da6 lea      eax, [r15 + 0x23]
00000001400a5daa movzx    ebx, r8b
00000001400a5dae mov      dword ptr [rbp - 1], eax
00000001400a5db1 cmp      bl, al
00000001400a5db3 jb       0x1400a779b
00000001400a5db9 mov      r8d, ebx
00000001400a5dbc mov      rdx, r14
00000001400a5dbf mov      rcx, rsi
00000001400a5dc2 call     0x1400aa654
00000001400a5dc7 jmp      0x1400a6d23
00000001400a5dcc mov      ebx, ecx
00000001400a5dce cmp      r8b, cl
00000001400a5dd1 jb       0x1400a77a4
00000001400a5dd7 mov      rcx, qword ptr [rbp + 0xf]
00000001400a5ddb movzx    edx, byte ptr [r14 + 1]
00000001400a5de0 mov      byte ptr [rcx + 0xaa43d], dl
00000001400a5de6 mov      rcx, qword ptr [rip + 0x87a213]
00000001400a5ded cmp      rcx, r13
00000001400a5df0 je       0x1400a77a4
00000001400a5df6 cmp      byte ptr [rcx + 0x29], 4
00000001400a5dfa jb       0x1400a77a4
00000001400a5e00 mov      eax, dword ptr [rcx + 0x2c]
00000001400a5e03 test     r15b, al
00000001400a5e06 je       0x1400a77a4
00000001400a5e0c mov      r9d, edx
00000001400a5e0f mov      edx, 0x9e
00000001400a5e14 mov      rcx, qword ptr [rcx + 0x18]
00000001400a5e18 mov      r8, rdi
00000001400a5e1b call     0x140001bb0
00000001400a5e20 jmp      0x1400a77a4
00000001400a5e25 mov      ebx, r15d
00000001400a5e28 cmp      r8b, r15b
00000001400a5e2b jb       0x1400a77a4
00000001400a5e31 mov      r12b, byte ptr [r14 + 1]
00000001400a5e35 mov      r14, qword ptr [rbp - 0x59]
00000001400a5e39 mov      byte ptr [rbp - 0x66], r12b
00000001400a5e3d mov      rax, qword ptr [r14]
00000001400a5e40 mov      byte ptr [rax + 0xbba9], r12b
00000001400a5e47 mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400a5e4e mov      rcx, qword ptr [rax]
00000001400a5e51 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a5e58 call     0x14020aed0
00000001400a5e5d mov      r8, qword ptr [rbp + 0xf]
00000001400a5e61 xor      esi, esi
00000001400a5e63 mov      dl, sil
00000001400a5e66 mov      byte ptr [rbp - 0x69], dl
00000001400a5e69 mov      byte ptr [r8 + 0xaa465], r12b
00000001400a5e70 cmp      byte ptr [r14 + 0x250], sil
00000001400a5e77 jbe      0x1400a77a4
00000001400a5e7d mov      r12, qword ptr [rbp - 0x61]
00000001400a5e81 lea      r9, [r12 + 0x544f60]
00000001400a5e89 movzx    eax, dl
00000001400a5e8c imul     r10, rax, 0x1dc0
00000001400a5e93 add      r10, 0x53f620
00000001400a5e9a add      r10, r12
00000001400a5e9d cmp      dl, r15b
00000001400a5ea0 cmove    r10, r9
00000001400a5ea4 mov      qword ptr [rbp - 0x49], r10
00000001400a5ea8 mov      rax, qword ptr [r10]
00000001400a5eab movzx    ecx, byte ptr [rax + 0x19]
00000001400a5eaf mov      rax, qword ptr [r8 + 0x206f8]
00000001400a5eb6 lea      rdx, [rcx + rcx*8]
00000001400a5eba movzx    r11d, byte ptr [rax + rdx*4 + 0xdec9]
00000001400a5ec3 mov      byte ptr [rbp - 0x67], r11b
00000001400a5ec7 mov      rcx, qword ptr [rip + 0x87a132]
00000001400a5ece cmp      rcx, r13
00000001400a5ed1 je       0x1400a5f01
00000001400a5ed3 cmp      byte ptr [rcx + 0x29], 4
00000001400a5ed7 jb       0x1400a5f01
00000001400a5ed9 mov      eax, dword ptr [rcx + 0x2c]
00000001400a5edc test     r15b, al
00000001400a5edf je       0x1400a5f01
00000001400a5ee1 mov      rcx, qword ptr [rcx + 0x18]
00000001400a5ee5 mov      r9d, r11d
00000001400a5ee8 mov      edx, 0x8b
00000001400a5eed mov      r8, rdi
00000001400a5ef0 call     0x140001bb0
00000001400a5ef5 mov      r8, qword ptr [rbp + 0xf]
00000001400a5ef9 mov      r10, qword ptr [rbp - 0x49]
00000001400a5efd mov      r11b, byte ptr [rbp - 0x67]
00000001400a5f01 mov      rax, qword ptr [r10]
00000001400a5f04 movzx    ecx, byte ptr [rbp - 0x66]
00000001400a5f08 lea      r9, [rax + 0xee]
00000001400a5f0f test     cl, cl
00000001400a5f11 je       0x1400a5f1f
00000001400a5f13 cmp      cl, r11b
00000001400a5f16 movzx    edx, r11b
00000001400a5f1a cmovbe   edx, ecx
00000001400a5f1d jmp      0x1400a5f35
00000001400a5f1f movzx    eax, byte ptr [rax + 0x19]
00000001400a5f23 lea      rcx, [rax + rax*8]
00000001400a5f27 mov      rax, qword ptr [r8 + 0x206f8]
00000001400a5f2e mov      dl, byte ptr [rax + rcx*4 + 0xdec9]
00000001400a5f35 mov      al, byte ptr [r9]
00000001400a5f38 xor      r8d, r8d
00000001400a5f3b shl      dl, 5
00000001400a5f3e and      al, 0x1f
00000001400a5f40 or       dl, al
00000001400a5f42 mov      byte ptr [rsp + 0x30], sil
00000001400a5f47 mov      byte ptr [r9], dl
00000001400a5f4a xor      r9d, r9d
00000001400a5f4d mov      rcx, qword ptr [r10]
00000001400a5f50 xor      edx, edx
00000001400a5f52 mov      byte ptr [rsp + 0x28], sil
00000001400a5f57 mov      byte ptr [rsp + 0x20], sil
00000001400a5f5c call     0x14007f6ec
00000001400a5f61 mov      dl, byte ptr [rbp - 0x69]
00000001400a5f64 lea      r9, [r12 + 0x544f60]
00000001400a5f6c mov      r8, qword ptr [rbp + 0xf]
00000001400a5f70 add      dl, 1
00000001400a5f73 mov      byte ptr [rbp - 0x69], dl
00000001400a5f76 cmp      dl, byte ptr [r14 + 0x250]
00000001400a5f7d jb       0x1400a5e89
00000001400a5f83 jmp      0x1400a77a4
00000001400a5f88 mov      ebx, r15d
00000001400a5f8b cmp      r8b, r15b
00000001400a5f8e jb       0x1400a77a4
00000001400a5f94 mov      r12b, byte ptr [r14 + 1]
00000001400a5f98 mov      r14, qword ptr [rbp - 0x59]
00000001400a5f9c mov      byte ptr [rbp - 0x66], r12b
00000001400a5fa0 mov      rax, qword ptr [r14]
00000001400a5fa3 mov      byte ptr [rax + 0xbba8], r12b
00000001400a5faa mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400a5fb1 mov      rcx, qword ptr [rax]
00000001400a5fb4 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a5fbb call     0x14020aed0
00000001400a5fc0 mov      r9, qword ptr [rbp + 0xf]
00000001400a5fc4 xor      esi, esi
00000001400a5fc6 mov      dl, sil
00000001400a5fc9 mov      byte ptr [rbp - 0x67], dl
00000001400a5fcc mov      byte ptr [r9 + 0xaa464], r12b
00000001400a5fd3 cmp      byte ptr [r14 + 0x250], sil
00000001400a5fda jbe      0x1400a77a4
00000001400a5fe0 mov      r12, qword ptr [rbp - 0x61]
00000001400a5fe4 lea      r8, [r12 + 0x544f60]
00000001400a5fec movzx    eax, dl
00000001400a5fef imul     r11, rax, 0x1dc0
00000001400a5ff6 add      r11, 0x53f620
00000001400a5ffd add      r11, r12
00000001400a6000 cmp      dl, r15b
00000001400a6003 cmove    r11, r8
00000001400a6007 mov      qword ptr [rbp - 0x49], r11
00000001400a600b mov      rax, qword ptr [r11]
00000001400a600e movzx    ecx, byte ptr [rax + 0x19]
00000001400a6012 mov      rax, qword ptr [r9 + 0x206f8]
00000001400a6019 lea      rdx, [rcx + rcx*8]
00000001400a601d movzx    edx, byte ptr [rax + rdx*4 + 0xdec8]
00000001400a6025 mov      byte ptr [rbp - 0x69], dl
00000001400a6028 mov      rcx, qword ptr [rip + 0x879fd1]
00000001400a602f cmp      rcx, r13
00000001400a6032 je       0x1400a6061
00000001400a6034 cmp      byte ptr [rcx + 0x29], 4
00000001400a6038 jb       0x1400a6061
00000001400a603a mov      eax, dword ptr [rcx + 0x2c]
00000001400a603d test     r15b, al
00000001400a6040 je       0x1400a6061
00000001400a6042 mov      rcx, qword ptr [rcx + 0x18]
00000001400a6046 mov      r9d, edx
00000001400a6049 mov      edx, 0x8a
00000001400a604e mov      r8, rdi
00000001400a6051 call     0x140001bb0
00000001400a6056 mov      r9, qword ptr [rbp + 0xf]
00000001400a605a mov      r11, qword ptr [rbp - 0x49]
00000001400a605e mov      dl, byte ptr [rbp - 0x69]
00000001400a6061 mov      rax, qword ptr [r11]
00000001400a6064 movzx    r8d, byte ptr [rbp - 0x66]
00000001400a6069 lea      r10, [rax + 0xee]
00000001400a6070 test     r8b, r8b
00000001400a6073 je       0x1400a608f
00000001400a6075 cmp      r8b, byte ptr [rbp - 0x69]
00000001400a6079 mov      cl, byte ptr [r10]
00000001400a607c movzx    edx, dl
00000001400a607f cmovbe   edx, r8d
00000001400a6083 shl      dl, 2
00000001400a6086 xor      dl, cl
00000001400a6088 and      dl, 0x1c
00000001400a608b xor      dl, cl
00000001400a608d jmp      0x1400a60b4
00000001400a608f movzx    eax, byte ptr [rax + 0x19]
00000001400a6093 mov      r8b, byte ptr [r10]
00000001400a6096 lea      rcx, [rax + rax*8]
00000001400a609a mov      rax, qword ptr [r9 + 0x206f8]
00000001400a60a1 mov      dl, byte ptr [rax + rcx*4 + 0xdec8]
00000001400a60a8 shl      dl, 2
00000001400a60ab xor      dl, r8b
00000001400a60ae and      dl, 0x1c
00000001400a60b1 xor      dl, r8b
00000001400a60b4 mov      byte ptr [r10], dl
00000001400a60b7 xor      r9d, r9d
00000001400a60ba mov      rcx, qword ptr [r11]
00000001400a60bd xor      edx, edx
00000001400a60bf mov      byte ptr [rsp + 0x30], sil
00000001400a60c4 xor      r8d, r8d
00000001400a60c7 mov      byte ptr [rsp + 0x28], sil
00000001400a60cc mov      byte ptr [rsp + 0x20], sil
00000001400a60d1 call     0x14007f6ec
00000001400a60d6 mov      dl, byte ptr [rbp - 0x67]
00000001400a60d9 lea      r8, [r12 + 0x544f60]
00000001400a60e1 mov      r9, qword ptr [rbp + 0xf]
00000001400a60e5 add      dl, 1
00000001400a60e8 mov      byte ptr [rbp - 0x67], dl
00000001400a60eb cmp      dl, byte ptr [r14 + 0x250]
00000001400a60f2 jb       0x1400a5fec
00000001400a60f8 jmp      0x1400a77a4
00000001400a60fd mov      ebx, r15d
00000001400a6100 cmp      r8b, r15b
00000001400a6103 jb       0x1400a77a4
00000001400a6109 movzx    esi, byte ptr [r14 + 1]
00000001400a610e mov      r10, qword ptr [rip + 0x879eeb]
00000001400a6115 cmp      r10, r13
00000001400a6118 je       0x1400a6143
00000001400a611a cmp      byte ptr [r10 + 0x29], 4
00000001400a611f jb       0x1400a6143
00000001400a6121 mov      eax, dword ptr [r10 + 0x2c]
00000001400a6125 test     r15b, al
00000001400a6128 je       0x1400a6143
00000001400a612a mov      rcx, qword ptr [r10 + 0x18]
00000001400a612e mov      r9d, esi
00000001400a6131 mov      edx, 0x9c
00000001400a6136 mov      r8, rdi
00000001400a6139 call     0x140001bb0
00000001400a613e mov      ecx, 3
00000001400a6143 cmp      sil, 7
00000001400a6147 jne      0x1400a614e
00000001400a6149 mov      sil, cl
00000001400a614c jmp      0x1400a6161
00000001400a614e cmp      sil, 9
00000001400a6152 jne      0x1400a6159
00000001400a6154 mov      sil, r15b
00000001400a6157 jmp      0x1400a6161
00000001400a6159 cmp      sil, 0xb
00000001400a615d sete     sil
00000001400a6161 mov      byte ptr [rbp - 0x69], sil
00000001400a6165 mov      rcx, qword ptr [rip + 0x879e94]
00000001400a616c cmp      rcx, r13
00000001400a616f je       0x1400a6194
00000001400a6171 cmp      byte ptr [rcx + 0x29], 4
00000001400a6175 jb       0x1400a6194
00000001400a6177 mov      eax, dword ptr [rcx + 0x2c]
00000001400a617a test     r15b, al
00000001400a617d je       0x1400a6194
00000001400a617f mov      rcx, qword ptr [rcx + 0x18]
00000001400a6183 mov      edx, 0x9d
00000001400a6188 movzx    r9d, sil
00000001400a618c mov      r8, rdi
00000001400a618f call     0x140001bb0
00000001400a6194 mov      rcx, qword ptr [rbp + 0xf]
00000001400a6198 mov      r14, qword ptr [rbp - 0x59]
00000001400a619c movzx    eax, sil
00000001400a61a0 xor      esi, esi
00000001400a61a2 mov      dl, sil
00000001400a61a5 mov      dword ptr [rcx + 0xaa468], eax
00000001400a61ab mov      byte ptr [rbp - 0x67], dl
00000001400a61ae cmp      byte ptr [r14 + 0x250], sil
00000001400a61b5 jbe      0x1400a77a4
00000001400a61bb mov      r12, qword ptr [rbp - 0x61]
00000001400a61bf mov      r13b, byte ptr [rbp - 0x69]
00000001400a61c3 lea      r8, [r12 + 0x544f60]
00000001400a61cb movzx    eax, dl
00000001400a61ce imul     rcx, rax, 0x1dc0
00000001400a61d5 mov      byte ptr [rsp + 0x30], sil
00000001400a61da add      rcx, 0x53f620
00000001400a61e1 mov      byte ptr [rsp + 0x28], sil
00000001400a61e6 add      rcx, r12
00000001400a61e9 mov      byte ptr [rsp + 0x20], sil
00000001400a61ee cmp      dl, r15b
00000001400a61f1 mov      dl, r13b
00000001400a61f4 cmove    rcx, r8
00000001400a61f8 xor      r9d, r9d
00000001400a61fb mov      r8b, r13b
00000001400a61fe mov      rcx, qword ptr [rcx]
00000001400a6201 call     0x14007f6ec
00000001400a6206 mov      dl, byte ptr [rbp - 0x67]
00000001400a6209 lea      r8, [r12 + 0x544f60]
00000001400a6211 add      dl, 1
00000001400a6214 mov      byte ptr [rbp - 0x67], dl
00000001400a6217 cmp      dl, byte ptr [r14 + 0x250]
00000001400a621e jb       0x1400a61cb
00000001400a6220 lea      r13, [rip + 0x879dd9]
00000001400a6227 jmp      0x1400a77a4
00000001400a622c mov      ebx, r15d
00000001400a622f cmp      r8b, r15b
00000001400a6232 jb       0x1400a77a4
00000001400a6238 mov      rcx, qword ptr [rbp + 0xf]
00000001400a623c movzx    r9d, byte ptr [r14 + 1]
00000001400a6241 mov      dword ptr [rcx + 0xaa460], r9d
00000001400a6248 mov      rcx, qword ptr [rip + 0x879db1]
00000001400a624f cmp      rcx, r13
00000001400a6252 je       0x1400a77a4
00000001400a6258 cmp      byte ptr [rcx + 0x29], 4
00000001400a625c jb       0x1400a77a4
00000001400a6262 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6265 test     r15b, al
00000001400a6268 je       0x1400a77a4
00000001400a626e mov      edx, 0xa1
00000001400a6273 jmp      0x1400a5e14
00000001400a6278 sub      r12d, 0x9c
00000001400a627f je       0x1400a63f4
00000001400a6285 sub      r12d, edx
00000001400a6288 je       0x1400a63a2
00000001400a628e sub      r12d, edx
00000001400a6291 je       0x1400a634f
00000001400a6297 mov      r15d, 2
00000001400a629d cmp      r12d, r15d
00000001400a62a0 jne      0x1400a4d4f
00000001400a62a6 mov      dword ptr [rbp - 1], 7
00000001400a62ad cmp      r8b, 7
00000001400a62b1 jb       0x1400a6d23
00000001400a62b7 mov      rbx, qword ptr [rbp + 0xf]
00000001400a62bb lea      rdx, [r14 + 1]
00000001400a62bf lea      r8d, [r15 + 4]
00000001400a62c3 lea      rsi, [rbx + 0xaa43e]
00000001400a62ca mov      rcx, rsi
00000001400a62cd call     0x1400311e8
00000001400a62d2 mov      rcx, qword ptr [rip + 0x879d27]
00000001400a62d9 cmp      rcx, r13
00000001400a62dc je       0x1400a6d23
00000001400a62e2 cmp      byte ptr [rcx + 0x29], 4
00000001400a62e6 jb       0x1400a6d23
00000001400a62ec mov      eax, dword ptr [rcx + 0x2c]
00000001400a62ef test     r15b, al
00000001400a62f2 je       0x1400a6d23
00000001400a62f8 movzx    eax, byte ptr [rbx + 0xaa443]
00000001400a62ff mov      edx, 0xa2
00000001400a6304 movzx    r8d, byte ptr [rbx + 0xaa442]
00000001400a630c movzx    r10d, byte ptr [rbx + 0xaa441]
00000001400a6314 movzx    r11d, byte ptr [rbx + 0xaa440]
00000001400a631c movzx    ebx, byte ptr [rbx + 0xaa43f]
00000001400a6323 movzx    r9d, byte ptr [rsi]
00000001400a6327 mov      rcx, qword ptr [rcx + 0x18]
00000001400a632b mov      dword ptr [rsp + 0x40], eax
00000001400a632f mov      dword ptr [rsp + 0x38], r8d
00000001400a6334 mov      r8, rdi
00000001400a6337 mov      dword ptr [rsp + 0x30], r10d
00000001400a633c mov      dword ptr [rsp + 0x28], r11d
00000001400a6341 mov      dword ptr [rsp + 0x20], ebx
00000001400a6345 call     0x1400087f4
00000001400a634a jmp      0x1400a6d23
00000001400a634f mov      dword ptr [rbp - 1], ecx
00000001400a6352 cmp      r8b, cl
00000001400a6355 jb       0x1400a6d23
00000001400a635b mov      rcx, qword ptr [rip + 0x879c9e]
00000001400a6362 cmp      rcx, r13
00000001400a6365 je       0x1400a638c
00000001400a6367 cmp      byte ptr [rcx + 0x29], 4
00000001400a636b jb       0x1400a638c
00000001400a636d mov      eax, dword ptr [rcx + 0x2c]
00000001400a6370 mov      r15d, 2
00000001400a6376 test     r15b, al
00000001400a6379 je       0x1400a638c
00000001400a637b mov      rcx, qword ptr [rcx + 0x18]
00000001400a637f mov      edx, 0xa4
00000001400a6384 mov      r8, rdi
00000001400a6387 call     0x140001b88
00000001400a638c movzx    edx, byte ptr [r14 + 1]
00000001400a6391 mov      rcx, rsi
00000001400a6394 mov      r8b, byte ptr [r14 + 2]
00000001400a6398 call     0x1400aa994
00000001400a639d jmp      0x1400a6d23
00000001400a63a2 mov      dword ptr [rbp - 1], ecx
00000001400a63a5 cmp      r8b, cl
00000001400a63a8 jb       0x1400a6d23
00000001400a63ae mov      rcx, qword ptr [rip + 0x879c4b]
00000001400a63b5 cmp      rcx, r13
00000001400a63b8 je       0x1400a63df
00000001400a63ba cmp      byte ptr [rcx + 0x29], 4
00000001400a63be jb       0x1400a63df
00000001400a63c0 mov      eax, dword ptr [rcx + 0x2c]
00000001400a63c3 mov      r15d, 2
00000001400a63c9 test     r15b, al
00000001400a63cc je       0x1400a63df
00000001400a63ce mov      rcx, qword ptr [rcx + 0x18]
00000001400a63d2 mov      edx, 0xa3
00000001400a63d7 mov      r8, rdi
00000001400a63da call     0x140001b88
00000001400a63df mov      r8b, byte ptr [r14 + 2]
00000001400a63e3 mov      rcx, rsi
00000001400a63e6 mov      dl, byte ptr [r14 + 1]
00000001400a63ea call     0x1400aaad4
00000001400a63ef jmp      0x1400a6d23
00000001400a63f4 mov      rcx, qword ptr [rip + 0x879c05]
00000001400a63fb lea      r13, [rip + 0x879bfe]
00000001400a6402 mov      r15d, 2
00000001400a6408 cmp      rcx, r13
00000001400a640b je       0x1400a6430
00000001400a640d cmp      byte ptr [rcx + 0x29], 4
00000001400a6411 jb       0x1400a6430
00000001400a6413 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6416 test     r15b, al
00000001400a6419 je       0x1400a6430
00000001400a641b mov      rcx, qword ptr [rcx + 0x18]
00000001400a641f lea      r8, [rip + 0x5ec89a]
00000001400a6426 mov      edx, 0x9f
00000001400a642b call     0x140001b88
00000001400a6430 mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400a6437 xor      r8d, r8d
00000001400a643a mov      rdx, qword ptr [rbp - 0x59]
00000001400a643e xor      esi, esi
00000001400a6440 mov      dword ptr [rsp + 0x38], esi
00000001400a6444 mov      dword ptr [rsp + 0x30], esi
00000001400a6448 mov      rcx, qword ptr [rax]
00000001400a644b mov      byte ptr [rsp + 0x28], sil
00000001400a6450 lea      r9d, [rsi + 0xf]
00000001400a6454 mov      qword ptr [rsp + 0x20], rsi
00000001400a6459 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a6460 call     0x1401a30dc
00000001400a6465 mov      rcx, qword ptr [rip + 0x879b94]
00000001400a646c cmp      rcx, r13
00000001400a646f je       0x1400a6494
00000001400a6471 cmp      byte ptr [rcx + 0x29], 4
00000001400a6475 jb       0x1400a6494
00000001400a6477 mov      eax, dword ptr [rcx + 0x2c]
00000001400a647a test     r15b, al
00000001400a647d je       0x1400a6494
00000001400a647f mov      rcx, qword ptr [rcx + 0x18]
00000001400a6483 lea      r8, [rip + 0x5ec836]
00000001400a648a mov      edx, 0xa0
00000001400a648f call     0x140001b88
00000001400a6494 mov      edi, ebx
00000001400a6496 jmp      0x1400a4880
00000001400a649b mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400a64a2 mov      r15, qword ptr [rbp - 0x39]
00000001400a64a6 mov      rcx, qword ptr [rax]
00000001400a64a9 mov      rdx, qword ptr [r15 + 0x2c0]
00000001400a64b0 lea      r12, [r15 + 0x1d34]
00000001400a64b7 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a64be call     0x1401b7324
00000001400a64c3 cmp      dword ptr [rbp - 0x51], 6
00000001400a64c7 mov      rcx, rax
00000001400a64ca mov      qword ptr [rbp - 0x49], rax
00000001400a64ce mov      dword ptr [rbp - 1], 6
00000001400a64d5 jb       0x1400a6d23
00000001400a64db xor      edi, edi
00000001400a64dd mov      r8d, ebx
00000001400a64e0 mov      byte ptr [r15 + 0x1d32], dil
00000001400a64e7 movzx    r9d, byte ptr [r14 + 2]
00000001400a64ec movzx    r11d, byte ptr [r14 + 1]
00000001400a64f1 test     bl, r9b
00000001400a64f4 je       0x1400a64fe
00000001400a64f6 mov      al, byte ptr [r14 + 3]
00000001400a64fa and      al, 0xf
00000001400a64fc jmp      0x1400a6513
00000001400a64fe mov      al, byte ptr [rax + 0xb0e]
00000001400a6504 cmp      al, 0x20
00000001400a6506 jae      0x1400a650d
00000001400a6508 mov      al, dil
00000001400a650b jmp      0x1400a6513
00000001400a650d shr      al, 5
00000001400a6510 sub      al, r8b
00000001400a6513 mov      r15d, 2
00000001400a6519 mov      byte ptr [r12 + 9], al
00000001400a651e test     r15b, r9b
00000001400a6521 je       0x1400a652c
00000001400a6523 mov      al, byte ptr [r14 + 3]
00000001400a6527 shr      al, 4
00000001400a652a jmp      0x1400a6543
00000001400a652c mov      al, byte ptr [rcx + 0xb0e]
00000001400a6532 test     al, 0x1c
00000001400a6534 jne      0x1400a653b
00000001400a6536 mov      al, dil
00000001400a6539 jmp      0x1400a6543
00000001400a653b shr      al, 2
00000001400a653e and      al, 7
00000001400a6540 sub      al, r8b
00000001400a6543 mov      byte ptr [r12], al
00000001400a6547 test     r9b, 4
00000001400a654b je       0x1400a6583
00000001400a654d mov      al, byte ptr [r14 + 4]
00000001400a6551 test     al, al
00000001400a6553 je       0x1400a6579
00000001400a6555 cmp      al, r8b
00000001400a6558 jne      0x1400a6564
00000001400a655a mov      dword ptr [r12 + 4], r8d
00000001400a655f mov      r15d, r8d
00000001400a6562 jmp      0x1400a6599
00000001400a6564 cmp      al, r15b
00000001400a6567 je       0x1400a6572
00000001400a6569 mov      edx, 3
00000001400a656e cmp      al, dl
00000001400a6570 jne      0x1400a6579
00000001400a6572 mov      dword ptr [r12 + 4], r15d
00000001400a6577 jmp      0x1400a6599
00000001400a6579 mov      dword ptr [r12 + 4], edi
00000001400a657e mov      r15d, edi
00000001400a6581 jmp      0x1400a6599
00000001400a6583 mov      rdx, qword ptr [rbp - 0x39]
00000001400a6587 mov      rax, qword ptr [rdx + 0x2c8]
00000001400a658e mov      ecx, dword ptr [rax + 0x50]
00000001400a6591 mov      r15d, ecx
00000001400a6594 mov      dword ptr [r12 + 4], ecx
00000001400a6599 test     r9b, 8
00000001400a659d je       0x1400a65ab
00000001400a659f mov      al, byte ptr [r14 + 5]
00000001400a65a3 and      al, r8b
00000001400a65a6 mov      byte ptr [r12 + 8], al
00000001400a65ab test     r9b, 0x10
00000001400a65af je       0x1400a65bf
00000001400a65b1 mov      al, byte ptr [r14 + 5]
00000001400a65b5 shr      al, 1
00000001400a65b7 and      al, r8b
00000001400a65ba mov      byte ptr [r12 + 0xc], al
00000001400a65bf test     r9b, 0x20
00000001400a65c3 je       0x1400a65d4
00000001400a65c5 mov      al, byte ptr [r14 + 5]
00000001400a65c9 shr      al, 2
00000001400a65cc and      al, r8b
00000001400a65cf mov      byte ptr [r12 + 0xb], al
00000001400a65d4 test     r9b, 0x40
00000001400a65d8 je       0x1400a65e9
00000001400a65da mov      al, byte ptr [r14 + 5]
00000001400a65de shr      al, 3
00000001400a65e1 and      al, r8b
00000001400a65e4 mov      byte ptr [r12 + 0xa], al
00000001400a65e9 mov      al, byte ptr [r14 + 6]
00000001400a65ed mov      byte ptr [r12 + 0xd], al
00000001400a65f2 mov      al, byte ptr [r14 + 7]
00000001400a65f6 and      al, r8b
00000001400a65f9 mov      byte ptr [r12 + 0xe], al
00000001400a65fe mov      al, byte ptr [r14 + 7]
00000001400a6602 shr      al, 1
00000001400a6604 and      al, r8b
00000001400a6607 mov      byte ptr [r12 + 0xf], al
00000001400a660c mov      al, byte ptr [r14 + 7]
00000001400a6610 shr      al, 2
00000001400a6613 and      al, r8b
00000001400a6616 mov      byte ptr [r12 + 0x10], al
00000001400a661b mov      rcx, qword ptr [rip + 0x8799de]
00000001400a6622 lea      r13, [rip + 0x8799d7]
00000001400a6629 cmp      rcx, r13
00000001400a662c je       0x1400a672c
00000001400a6632 cmp      byte ptr [rcx + 0x69], 4
00000001400a6636 lea      rbx, [rip + 0x5ec683]
00000001400a663d jb       0x1400a6682
00000001400a663f mov      eax, dword ptr [rcx + 0x6c]
00000001400a6642 test     r8b, al
00000001400a6645 je       0x1400a6682
00000001400a6647 movzx    r8d, byte ptr [r12 + 9]
00000001400a664d mov      r10d, r9d
00000001400a6650 movzx    eax, byte ptr [r12]
00000001400a6655 mov      r9d, r11d
00000001400a6658 mov      rcx, qword ptr [rcx + 0x58]
00000001400a665c mov      edx, 0xa8
00000001400a6661 mov      dword ptr [rsp + 0x38], r15d
00000001400a6666 mov      dword ptr [rsp + 0x30], eax
00000001400a666a mov      dword ptr [rsp + 0x28], r8d
00000001400a666f mov      r8, rbx
00000001400a6672 mov      dword ptr [rsp + 0x20], r10d
00000001400a6677 call     0x140039d40
00000001400a667c mov      r8d, 1
00000001400a6682 mov      rcx, qword ptr [rip + 0x879977]
00000001400a6689 cmp      rcx, r13
00000001400a668c je       0x1400a672c
00000001400a6692 cmp      byte ptr [rcx + 0x69], 4
00000001400a6696 jb       0x1400a66d7
00000001400a6698 mov      eax, dword ptr [rcx + 0x6c]
00000001400a669b test     r8b, al
00000001400a669e je       0x1400a66d7
00000001400a66a0 movzx    r8d, byte ptr [r12 + 0xa]
00000001400a66a6 mov      edx, 0xa9
00000001400a66ab movzx    eax, byte ptr [r12 + 0xb]
00000001400a66b1 movzx    r10d, byte ptr [r12 + 0xc]
00000001400a66b7 movzx    r9d, byte ptr [r12 + 8]
00000001400a66bd mov      rcx, qword ptr [rcx + 0x58]
00000001400a66c1 mov      dword ptr [rsp + 0x30], eax
00000001400a66c5 mov      dword ptr [rsp + 0x28], r8d
00000001400a66ca mov      r8, rbx
00000001400a66cd mov      dword ptr [rsp + 0x20], r10d
00000001400a66d2 call     0x140008794
00000001400a66d7 mov      rcx, qword ptr [rip + 0x879922]
00000001400a66de cmp      rcx, r13
00000001400a66e1 je       0x1400a672c
00000001400a66e3 cmp      byte ptr [rcx + 0x69], 4
00000001400a66e7 jb       0x1400a672c
00000001400a66e9 mov      eax, dword ptr [rcx + 0x6c]
00000001400a66ec mov      edx, 1
00000001400a66f1 test     dl, al
00000001400a66f3 je       0x1400a672c
00000001400a66f5 movzx    r8d, byte ptr [r12 + 0xf]
00000001400a66fb mov      edx, 0xaa
00000001400a6700 movzx    eax, byte ptr [r12 + 0x10]
00000001400a6706 movzx    r10d, byte ptr [r12 + 0xe]
00000001400a670c movzx    r9d, byte ptr [r12 + 0xd]
00000001400a6712 mov      rcx, qword ptr [rcx + 0x58]
00000001400a6716 mov      dword ptr [rsp + 0x30], eax
00000001400a671a mov      dword ptr [rsp + 0x28], r8d
00000001400a671f mov      r8, rbx
00000001400a6722 mov      dword ptr [rsp + 0x20], r10d
00000001400a6727 call     0x140008794
00000001400a672c mov      rdx, qword ptr [rbp - 0x49]
00000001400a6730 mov      r8d, 0x103
00000001400a6736 mov      r9, r12
00000001400a6739 mov      dword ptr [rsp + 0x20], edi
00000001400a673d mov      rcx, rsi
00000001400a6740 call     0x14018a4f8
00000001400a6745 mov      rdx, qword ptr [rbp - 0x49]
00000001400a6749 mov      r8d, 0x100
00000001400a674f mov      r9, r12
00000001400a6752 mov      dword ptr [rsp + 0x20], edi
00000001400a6756 mov      rcx, rsi
00000001400a6759 call     0x14018a4f8
00000001400a675e mov      rax, qword ptr [rbp - 0x39]
00000001400a6762 mov      word ptr [rax + 0x1d32], 1
00000001400a676b jmp      0x1400a487b
00000001400a6770 cmp      r12b, 0xac
00000001400a6774 ja       0x1400a7125
00000001400a677a je       0x1400a7074
00000001400a6780 mov      edx, 0xa7
00000001400a6785 cmp      r12b, dl
00000001400a6788 ja       0x1400a6d2b
00000001400a678e je       0x1400a6cde
00000001400a6794 sub      r12d, 0xa2
00000001400a679b je       0x1400a6c6f
00000001400a67a1 sub      r12d, ebx
00000001400a67a4 je       0x1400a6a59
00000001400a67aa sub      r12d, ebx
00000001400a67ad je       0x1400a6a0e
00000001400a67b3 sub      r12d, ebx
00000001400a67b6 je       0x1400a69b9
00000001400a67bc cmp      r12d, ebx
00000001400a67bf jne      0x1400a6494
00000001400a67c5 xor      eax, eax
00000001400a67c7 mov      dword ptr [rbp - 1], ecx
00000001400a67ca mov      qword ptr [rbp - 9], rax
00000001400a67ce xorps    xmm0, xmm0
00000001400a67d1 movups   xmmword ptr [rbp - 0x19], xmm0
00000001400a67d5 cmp      r8b, cl
00000001400a67d8 jb       0x1400a6d23
00000001400a67de movzx    edx, byte ptr [r9 + 0x28]
00000001400a67e3 lea      r15d, [rax + 2]
00000001400a67e7 cmp      dl, r15b
00000001400a67ea jae      0x1400a6820
00000001400a67ec mov      rcx, qword ptr [rip + 0x87980d]
00000001400a67f3 cmp      rcx, r13
00000001400a67f6 je       0x1400a6d23
00000001400a67fc cmp      byte ptr [rcx + 0x29], 4
00000001400a6800 jb       0x1400a6d23
00000001400a6806 test     dword ptr [rcx + 0x2c], 0x100
00000001400a680d je       0x1400a6d23
00000001400a6813 mov      r9d, edx
00000001400a6816 mov      edx, 0xb0
00000001400a681b jmp      0x1400a6d17
00000001400a6820 movzx    edx, byte ptr [r14 + 1]
00000001400a6825 movzx    r14d, byte ptr [r14 + 2]
00000001400a682a mov      byte ptr [rbp - 0x66], dl
00000001400a682d mov      rcx, qword ptr [rip + 0x8797cc]
00000001400a6834 cmp      rcx, r13
00000001400a6837 je       0x1400a687e
00000001400a6839 cmp      byte ptr [rcx + 0x29], 4
00000001400a683d jb       0x1400a687e
00000001400a683f bt       dword ptr [rcx + 0x2c], 8
00000001400a6844 jae      0x1400a687e
00000001400a6846 mov      rax, qword ptr [r9 + 0x38]
00000001400a684a mov      rcx, qword ptr [rcx + 0x18]
00000001400a684e movzx    r10d, byte ptr [rax + 0x28]
00000001400a6853 mov      rax, qword ptr [r9 + 0x30]
00000001400a6857 mov      r9d, edx
00000001400a685a mov      dword ptr [rsp + 0x30], r10d
00000001400a685f mov      edx, 0xb1
00000001400a6864 mov      dword ptr [rsp + 0x28], r14d
00000001400a6869 movzx    r8d, byte ptr [rax + 0x28]
00000001400a686e mov      dword ptr [rsp + 0x20], r8d
00000001400a6873 mov      r8, rdi
00000001400a6876 call     0x140008794
00000001400a687b mov      dl, byte ptr [rbp - 0x66]
00000001400a687e mov      al, byte ptr [rbp - 0x19]
00000001400a6881 mov      r10d, r14d
00000001400a6884 and      al, 0xfd
00000001400a6886 mov      dword ptr [rbp - 0x51], r14d
00000001400a688a or       al, 0x21
00000001400a688c lea      r14, [rbp - 0x11]
00000001400a6890 xor      esi, esi
00000001400a6892 mov      byte ptr [rbp - 0x19], al
00000001400a6895 movzx    eax, dl
00000001400a6898 mov      r12b, sil
00000001400a689b mov      rsi, qword ptr [rbp - 0x49]
00000001400a689f mov      dword ptr [rbp + 7], eax
00000001400a68a2 movzx    r9d, r12b
00000001400a68a6 mov      r8d, ebx
00000001400a68a9 mov      ecx, r9d
00000001400a68ac shl      r8d, cl
00000001400a68af test     eax, r8d
00000001400a68b2 je       0x1400a68d2
00000001400a68b4 movzx    edx, word ptr [r14]
00000001400a68b8 mov      rax, qword ptr [rsi + 0x30]
00000001400a68bc movzx    ecx, byte ptr [rax + 0x28]
00000001400a68c0 bts      edx, ecx
00000001400a68c3 mov      word ptr [r14], dx
00000001400a68c7 movzx    eax, byte ptr [rbp - 0x18]
00000001400a68cb bts      eax, r9d
00000001400a68cf mov      byte ptr [rbp - 0x18], al
00000001400a68d2 test     r10d, r8d
00000001400a68d5 je       0x1400a68f5
00000001400a68d7 movzx    edx, word ptr [r14]
00000001400a68db mov      rax, qword ptr [rsi + 0x38]
00000001400a68df movzx    ecx, byte ptr [rax + 0x28]
00000001400a68e3 bts      edx, ecx
00000001400a68e6 mov      word ptr [r14], dx
00000001400a68ea movzx    eax, byte ptr [rbp - 0x18]
00000001400a68ee bts      eax, r9d
00000001400a68f2 mov      byte ptr [rbp - 0x18], al
00000001400a68f5 mov      rcx, qword ptr [rip + 0x879704]
00000001400a68fc cmp      rcx, r13
00000001400a68ff je       0x1400a692f
00000001400a6901 cmp      byte ptr [rcx + 0x29], 4
00000001400a6905 jb       0x1400a692f
00000001400a6907 bt       dword ptr [rcx + 0x2c], 8
00000001400a690c jae      0x1400a692f
00000001400a690e movzx    eax, word ptr [r14]
00000001400a6912 mov      edx, 0xb2
00000001400a6917 mov      rcx, qword ptr [rcx + 0x18]
00000001400a691b mov      r8, rdi
00000001400a691e movzx    r9d, r12b
00000001400a6922 mov      dword ptr [rsp + 0x20], eax
00000001400a6926 call     0x140001bec
00000001400a692b mov      r10d, dword ptr [rbp - 0x51]
00000001400a692f mov      eax, dword ptr [rbp + 7]
00000001400a6932 add      r12b, bl
00000001400a6935 add      r14, r15
00000001400a6938 cmp      r12b, 8
00000001400a693c jb       0x1400a68a2
00000001400a6942 mov      rcx, qword ptr [rip + 0x8796b7]
00000001400a6949 mov      esi, 0
00000001400a694e cmp      rcx, r13
00000001400a6951 je       0x1400a6976
00000001400a6953 cmp      byte ptr [rcx + 0x29], 4
00000001400a6957 jb       0x1400a6976
00000001400a6959 bt       dword ptr [rcx + 0x2c], 8
00000001400a695e jae      0x1400a6976
00000001400a6960 movzx    r9d, byte ptr [rbp - 0x18]
00000001400a6965 mov      edx, 0xb3
00000001400a696a mov      rcx, qword ptr [rcx + 0x18]
00000001400a696e mov      r8, rdi
00000001400a6971 call     0x140001bb0
00000001400a6976 mov      r12, qword ptr [rbp - 0x61]
00000001400a697a mov      r9d, ebx
00000001400a697d mov      rdx, qword ptr [rbp - 0x39]
00000001400a6981 xor      r8d, r8d
00000001400a6984 mov      qword ptr [rsp + 0x28], rsi
00000001400a6989 mov      rax, qword ptr [r12 + 0xaf3b8]
00000001400a6991 mov      rdx, qword ptr [rdx + 0x2c8]
00000001400a6998 mov      rcx, qword ptr [rax]
00000001400a699b lea      rax, [rbp - 0x19]
00000001400a699f mov      rdx, qword ptr [rdx + 0x20]
00000001400a69a3 mov      qword ptr [rsp + 0x20], rax
00000001400a69a8 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a69af call     0x1401f9bac
00000001400a69b4 jmp      0x1400a6d23
00000001400a69b9 mov      r15d, 2
00000001400a69bf mov      dword ptr [rbp - 1], r15d
00000001400a69c3 cmp      r8b, r15b
00000001400a69c6 jb       0x1400a6d23
00000001400a69cc movzx    ebx, byte ptr [r14 + 1]
00000001400a69d1 mov      rcx, qword ptr [rip + 0x879628]
00000001400a69d8 cmp      rcx, r13
00000001400a69db je       0x1400a69ff
00000001400a69dd cmp      byte ptr [rcx + 0x29], 4
00000001400a69e1 jb       0x1400a69ff
00000001400a69e3 mov      eax, dword ptr [rcx + 0x2c]
00000001400a69e6 test     r15b, al
00000001400a69e9 je       0x1400a69ff
00000001400a69eb mov      rcx, qword ptr [rcx + 0x18]
00000001400a69ef mov      r9d, ebx
00000001400a69f2 mov      edx, 0xab
00000001400a69f7 mov      r8, rdi
00000001400a69fa call     0x140001bb0
00000001400a69ff mov      rcx, qword ptr [rbp + 0xf]
00000001400a6a03 mov      byte ptr [rcx + 0xaa46c], bl
00000001400a6a09 jmp      0x1400a6d23
00000001400a6a0e mov      r15d, 2
00000001400a6a14 mov      dword ptr [rbp - 1], r15d
00000001400a6a18 cmp      r8b, r15b
00000001400a6a1b jb       0x1400a6d23
00000001400a6a21 mov      rcx, qword ptr [rip + 0x8795d8]
00000001400a6a28 cmp      rcx, r13
00000001400a6a2b je       0x1400a6a47
00000001400a6a2d cmp      byte ptr [rcx + 0x29], 4
00000001400a6a31 jb       0x1400a6a47
00000001400a6a33 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6a36 test     r15b, al
00000001400a6a39 je       0x1400a6a47
00000001400a6a3b mov      rcx, qword ptr [rcx + 0x18]
00000001400a6a3f mov      r8, rdi
00000001400a6a42 call     0x140001b88
00000001400a6a47 mov      dl, byte ptr [r14 + 1]
00000001400a6a4b mov      rcx, qword ptr [rbp + 0xf]
00000001400a6a4f call     0x140153928
00000001400a6a54 jmp      0x1400a6d23
00000001400a6a59 mov      rax, qword ptr [rsi + 0xaf3b8]
00000001400a6a60 mov      rdx, qword ptr [rsi + 0xab230]
00000001400a6a67 mov      rcx, qword ptr [rax]
00000001400a6a6a mov      rcx, qword ptr [rcx + 0x20708]
00000001400a6a71 call     0x1401b6de0
00000001400a6a76 mov      qword ptr [rbp - 0x49], rax
00000001400a6a7a xor      eax, eax
00000001400a6a7c cmp      byte ptr [rbp - 0x68], 8
00000001400a6a80 mov      dword ptr [rbp + 7], eax
00000001400a6a83 mov      word ptr [rbp + 0xb], ax
00000001400a6a87 mov      dword ptr [rbp - 1], 8
00000001400a6a8e jb       0x1400a6d23
00000001400a6a94 mov      rcx, qword ptr [rip + 0x879565]
00000001400a6a9b lea      r15d, [rax + 2]
00000001400a6a9f cmp      rcx, r13
00000001400a6aa2 je       0x1400a6ac3
00000001400a6aa4 cmp      byte ptr [rcx + 0x29], 4
00000001400a6aa8 jb       0x1400a6ac3
00000001400a6aaa mov      eax, dword ptr [rcx + 0x2c]
00000001400a6aad test     r15b, al
00000001400a6ab0 je       0x1400a6ac3
00000001400a6ab2 mov      rcx, qword ptr [rcx + 0x18]
00000001400a6ab6 mov      edx, 0xac
00000001400a6abb mov      r8, rdi
00000001400a6abe call     0x140001b88
00000001400a6ac3 mov      al, byte ptr [r14 + 1]
00000001400a6ac7 lea      rdx, [r14 + 2]
00000001400a6acb mov      r14d, 6
00000001400a6ad1 mov      byte ptr [rbp - 0x66], al
00000001400a6ad4 mov      r8d, r14d
00000001400a6ad7 lea      rcx, [rbp + 7]
00000001400a6adb call     0x1400311e8
00000001400a6ae0 mov      rcx, qword ptr [rip + 0x879519]
00000001400a6ae7 cmp      rcx, r13
00000001400a6aea je       0x1400a6b3e
00000001400a6aec cmp      byte ptr [rcx + 0x29], 4
00000001400a6af0 jb       0x1400a6b3e
00000001400a6af2 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6af5 test     r15b, al
00000001400a6af8 je       0x1400a6b3e
00000001400a6afa movzx    r8d, byte ptr [rbp + 0xb]
00000001400a6aff mov      edx, 0xad
00000001400a6b04 movzx    eax, byte ptr [rbp + 0xc]
00000001400a6b08 movzx    r10d, byte ptr [rbp + 0xa]
00000001400a6b0d movzx    r11d, byte ptr [rbp + 9]
00000001400a6b12 movzx    ebx, byte ptr [rbp + 8]
00000001400a6b16 movzx    r9d, byte ptr [rbp + 7]
00000001400a6b1b mov      rcx, qword ptr [rcx + 0x18]
00000001400a6b1f mov      dword ptr [rsp + 0x40], eax
00000001400a6b23 mov      dword ptr [rsp + 0x38], r8d
00000001400a6b28 mov      r8, rdi
00000001400a6b2b mov      dword ptr [rsp + 0x30], r10d
00000001400a6b30 mov      dword ptr [rsp + 0x28], r11d
00000001400a6b35 mov      dword ptr [rsp + 0x20], ebx
00000001400a6b39 call     0x1400087f4
00000001400a6b3e mov      rbx, qword ptr [rbp - 0x59]
00000001400a6b42 xor      esi, esi
00000001400a6b44 mov      r12, qword ptr [rbp - 0x61]
00000001400a6b48 mov      dl, sil
00000001400a6b4b mov      byte ptr [rbp - 0x69], dl
00000001400a6b4e cmp      byte ptr [rbx + 0x250], sil
00000001400a6b55 jbe      0x1400a6bfb
00000001400a6b5b lea      r8, [r12 + 0x544ca0]
00000001400a6b63 movzx    eax, dl
00000001400a6b66 imul     rax, rax, 0x1dc0
00000001400a6b6d add      rax, 0x53f360
00000001400a6b73 add      rax, r12
00000001400a6b76 cmp      dl, r15b
00000001400a6b79 lea      rdx, [rbp + 7]
00000001400a6b7d cmove    rax, r8
00000001400a6b81 mov      r8d, r14d
00000001400a6b84 mov      rcx, rax
00000001400a6b87 mov      qword ptr [rbp - 0x59], rax
00000001400a6b8b call     0x14003113c
00000001400a6b90 test     eax, eax
00000001400a6b92 je       0x1400a6baf
00000001400a6b94 mov      dl, byte ptr [rbp - 0x69]
00000001400a6b97 lea      r8, [r12 + 0x544ca0]
00000001400a6b9f add      dl, 1
00000001400a6ba2 mov      byte ptr [rbp - 0x69], dl
00000001400a6ba5 cmp      dl, byte ptr [rbx + 0x250]
00000001400a6bab jb       0x1400a6b63
00000001400a6bad jmp      0x1400a6bfb
00000001400a6baf mov      rcx, qword ptr [rip + 0x87944a]
00000001400a6bb6 mov      rbx, qword ptr [rbp - 0x59]
00000001400a6bba cmp      rcx, r13
00000001400a6bbd je       0x1400a6bea
00000001400a6bbf cmp      byte ptr [rcx + 0x29], 4
00000001400a6bc3 jb       0x1400a6bea
00000001400a6bc5 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6bc8 test     r15b, al
00000001400a6bcb je       0x1400a6bea
00000001400a6bcd mov      rax, qword ptr [rbx + 0x2c0]
00000001400a6bd4 mov      edx, 0xae
00000001400a6bd9 mov      rcx, qword ptr [rcx + 0x18]
00000001400a6bdd mov      r8, rdi
00000001400a6be0 movzx    r9d, byte ptr [rax + 0x19]
00000001400a6be5 call     0x140001bb0
00000001400a6bea mov      rax, qword ptr [rbx + 0x2c0]
00000001400a6bf1 mov      cl, byte ptr [rax + 0x19]
00000001400a6bf4 mov      rax, qword ptr [rbp - 0x49]
00000001400a6bf8 mov      byte ptr [rax + 0x55], cl
00000001400a6bfb mov      rax, qword ptr [r12 + 0xaf3b8]
00000001400a6c03 mov      rdx, qword ptr [rbp - 0x39]
00000001400a6c07 mov      rcx, qword ptr [rax]
00000001400a6c0a mov      rdx, qword ptr [rdx + 0x2c8]
00000001400a6c11 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a6c18 call     0x1401f8a50
00000001400a6c1d mov      rcx, qword ptr [rip + 0x8793dc]
00000001400a6c24 cmp      rcx, r13
00000001400a6c27 je       0x1400a6d23
00000001400a6c2d cmp      byte ptr [rcx + 0x29], 4
00000001400a6c31 jb       0x1400a6d23
00000001400a6c37 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6c3a test     r15b, al
00000001400a6c3d je       0x1400a6d23
00000001400a6c43 cmp      byte ptr [rbp - 0x66], sil
00000001400a6c47 lea      rax, [rip + 0x555882]
00000001400a6c4e mov      rcx, qword ptr [rcx + 0x18]
00000001400a6c52 lea      r9, [rip + 0x555887]
00000001400a6c59 cmovne   r9, rax
00000001400a6c5d mov      edx, 0xaf
00000001400a6c62 mov      r8, rdi
00000001400a6c65 call     0x140008874
00000001400a6c6a jmp      0x1400a6d23
00000001400a6c6f mov      r15d, 2
00000001400a6c75 mov      dword ptr [rbp - 1], r15d
00000001400a6c79 cmp      r8b, r15b
00000001400a6c7c jb       0x1400a6d23
00000001400a6c82 mov      rcx, qword ptr [rip + 0x879377]
00000001400a6c89 cmp      rcx, r13
00000001400a6c8c je       0x1400a6cad
00000001400a6c8e cmp      byte ptr [rcx + 0x29], 4
00000001400a6c92 jb       0x1400a6cad
00000001400a6c94 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6c97 test     r15b, al
00000001400a6c9a je       0x1400a6cad
00000001400a6c9c mov      rcx, qword ptr [rcx + 0x18]
00000001400a6ca0 mov      edx, 0xa5
00000001400a6ca5 mov      r8, rdi
00000001400a6ca8 call     0x140001b88
00000001400a6cad mov      rcx, qword ptr [rbp + 0xf]
00000001400a6cb1 movzx    r9d, byte ptr [r14 + 1]
00000001400a6cb6 mov      dword ptr [rcx + 0xaa450], r9d
00000001400a6cbd mov      rcx, qword ptr [rip + 0x87933c]
00000001400a6cc4 cmp      rcx, r13
00000001400a6cc7 je       0x1400a6d23
00000001400a6cc9 cmp      byte ptr [rcx + 0x29], 4
00000001400a6ccd jb       0x1400a6d23
00000001400a6ccf mov      eax, dword ptr [rcx + 0x2c]
00000001400a6cd2 test     r15b, al
00000001400a6cd5 je       0x1400a6d23
00000001400a6cd7 mov      edx, 0xa6
00000001400a6cdc jmp      0x1400a6d17
00000001400a6cde mov      dword ptr [rbp - 1], ecx
00000001400a6ce1 cmp      r8b, cl
00000001400a6ce4 jb       0x1400a6d23
00000001400a6ce6 movzx    r9d, byte ptr [r14 + 1]
00000001400a6ceb mov      dword ptr [r15 + 0xaa438], r9d
00000001400a6cf2 mov      rcx, qword ptr [rip + 0x879307]
00000001400a6cf9 cmp      rcx, r13
00000001400a6cfc je       0x1400a6d23
00000001400a6cfe cmp      byte ptr [rcx + 0x29], 4
00000001400a6d02 jb       0x1400a6d23
00000001400a6d04 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6d07 mov      r15d, 2
00000001400a6d0d test     r15b, al
00000001400a6d10 je       0x1400a6d23
00000001400a6d12 mov      edx, 0x8f
00000001400a6d17 mov      rcx, qword ptr [rcx + 0x18]
00000001400a6d1b mov      r8, rdi
00000001400a6d1e call     0x140001bb0
00000001400a6d23 mov      ebx, dword ptr [rbp - 1]
00000001400a6d26 jmp      0x1400a77a4
00000001400a6d2b sub      r12d, 0xa8
00000001400a6d32 je       0x1400a6e8c
00000001400a6d38 sub      r12d, ebx
00000001400a6d3b je       0x1400a6e48
00000001400a6d41 sub      r12d, ebx
00000001400a6d44 je       0x1400a6df8
00000001400a6d4a cmp      r12d, ebx
00000001400a6d4d jne      0x1400a6494
00000001400a6d53 mov      r15d, 2
00000001400a6d59 mov      dword ptr [rbp - 1], r15d
00000001400a6d5d cmp      r8b, r15b
00000001400a6d60 jb       0x1400a6d23
00000001400a6d62 movzx    ebx, byte ptr [r14 + 1]
00000001400a6d67 mov      rcx, qword ptr [rip + 0x879292]
00000001400a6d6e cmp      rcx, r13
00000001400a6d71 je       0x1400a6d95
00000001400a6d73 cmp      byte ptr [rcx + 0x29], 4
00000001400a6d77 jb       0x1400a6d95
00000001400a6d79 mov      eax, dword ptr [rcx + 0x2c]
00000001400a6d7c test     r15b, al
00000001400a6d7f je       0x1400a6d95
00000001400a6d81 mov      rcx, qword ptr [rcx + 0x18]
00000001400a6d85 mov      r9d, ebx
00000001400a6d88 mov      edx, 0xba
00000001400a6d8d mov      r8, rdi
00000001400a6d90 call     0x140001bb0
00000001400a6d95 mov      r9, qword ptr [rbp - 0x59]
00000001400a6d99 xor      r8d, r8d
00000001400a6d9c cmp      byte ptr [r9 + 0x250], r8b
00000001400a6da3 jbe      0x1400a6d23
00000001400a6da9 lea      r10, [rsi + 0x544f60]
00000001400a6db0 lea      r14d, [r8 + 1]
00000001400a6db4 movzx    eax, r8b
00000001400a6db8 mov      cl, bl
00000001400a6dba imul     rax, rax, 0x1dc0
00000001400a6dc1 add      rax, 0x53f620
00000001400a6dc7 add      rax, rsi
00000001400a6dca cmp      r8b, r15b
00000001400a6dcd cmove    rax, r10
00000001400a6dd1 add      r8b, r14b
00000001400a6dd4 mov      rdx, qword ptr [rax]
00000001400a6dd7 mov      al, byte ptr [rdx + 0x128]
00000001400a6ddd xor      cl, al
00000001400a6ddf and      cl, r14b
00000001400a6de2 xor      cl, al
00000001400a6de4 mov      byte ptr [rdx + 0x128], cl
00000001400a6dea cmp      r8b, byte ptr [r9 + 0x250]
00000001400a6df1 jb       0x1400a6db4
00000001400a6df3 jmp      0x1400a6d23
00000001400a6df8 movzx    ebx, byte ptr [r14 + 1]
00000001400a6dfd mov      rcx, qword ptr [rip + 0x8791fc]
00000001400a6e04 lea      r13, [rip + 0x8791f5]
00000001400a6e0b cmp      rcx, r13
00000001400a6e0e je       0x1400a6e37
00000001400a6e10 cmp      byte ptr [rcx + 0x29], 4
00000001400a6e14 jb       0x1400a6e37
00000001400a6e16 test     dword ptr [rcx + 0x2c], 0x100
00000001400a6e1d je       0x1400a6e37
00000001400a6e1f mov      rcx, qword ptr [rcx + 0x18]
00000001400a6e23 lea      r8, [rip + 0x5ebe96]
00000001400a6e2a mov      r9d, ebx
00000001400a6e2d mov      edx, 0xb9
00000001400a6e32 call     0x140001bb0
00000001400a6e37 test     bl, bl
00000001400a6e39 setne    al
00000001400a6e3c mov      byte ptr [r15 + 0xaae90], al
00000001400a6e43 jmp      0x1400a487b
00000001400a6e48 mov      rcx, qword ptr [rip + 0x8791b1]
00000001400a6e4f lea      r13, [rip + 0x8791aa]
00000001400a6e56 cmp      rcx, r13
00000001400a6e59 je       0x1400a6e7f
00000001400a6e5b cmp      byte ptr [rcx + 0x29], 4
00000001400a6e5f jb       0x1400a6e7f
00000001400a6e61 test     dword ptr [rcx + 0x2c], 0x100
00000001400a6e68 je       0x1400a6e7f
00000001400a6e6a mov      rcx, qword ptr [rcx + 0x18]
00000001400a6e6e lea      r8, [rip + 0x5ebe4b]
00000001400a6e75 mov      edx, 0xb8
00000001400a6e7a call     0x140001b88
00000001400a6e7f mov      rcx, rsi
00000001400a6e82 call     0x140105400
00000001400a6e87 jmp      0x1400a6494
00000001400a6e8c xor      eax, eax
00000001400a6e8e mov      dword ptr [rbp - 1], ecx
00000001400a6e91 mov      qword ptr [rbp - 0x29], rax
00000001400a6e95 xorps    xmm0, xmm0
00000001400a6e98 movups   xmmword ptr [rbp - 0x39], xmm0
00000001400a6e9c cmp      r8b, cl
00000001400a6e9f jb       0x1400a6d23
00000001400a6ea5 movzx    edx, byte ptr [r9 + 0x28]
00000001400a6eaa lea      r15d, [rax + 2]
00000001400a6eae cmp      dl, r15b
00000001400a6eb1 jae      0x1400a6ee7
00000001400a6eb3 mov      rcx, qword ptr [rip + 0x879146]
00000001400a6eba cmp      rcx, r13
00000001400a6ebd je       0x1400a6d23
00000001400a6ec3 cmp      byte ptr [rcx + 0x29], 4
00000001400a6ec7 jb       0x1400a6d23
00000001400a6ecd test     dword ptr [rcx + 0x2c], 0x100
00000001400a6ed4 je       0x1400a6d23
00000001400a6eda mov      r9d, edx
00000001400a6edd mov      edx, 0xb4
00000001400a6ee2 jmp      0x1400a6d17
00000001400a6ee7 movzx    edx, byte ptr [r14 + 2]
00000001400a6eec movzx    r12d, byte ptr [r14 + 1]
00000001400a6ef1 movzx    esi, byte ptr [r14 + 3]
00000001400a6ef6 mov      byte ptr [rbp - 0x66], dl
00000001400a6ef9 mov      rcx, qword ptr [rip + 0x879100]
00000001400a6f00 mov      ebx, 0x100
00000001400a6f05 cmp      rcx, r13
00000001400a6f08 je       0x1400a6f53
00000001400a6f0a cmp      byte ptr [rcx + 0x29], 4
00000001400a6f0e jb       0x1400a6f53
00000001400a6f10 test     dword ptr [rcx + 0x2c], ebx
00000001400a6f13 je       0x1400a6f53
00000001400a6f15 mov      rax, qword ptr [r9 + 0x38]
00000001400a6f19 mov      r11d, edx
00000001400a6f1c mov      rcx, qword ptr [rcx + 0x18]
00000001400a6f20 lea      edx, [rbx - 0x4b]
00000001400a6f23 mov      dword ptr [rsp + 0x38], esi
00000001400a6f27 movzx    r10d, byte ptr [rax + 0x28]
00000001400a6f2c mov      rax, qword ptr [r9 + 0x30]
00000001400a6f30 mov      r9d, r12d
00000001400a6f33 mov      dword ptr [rsp + 0x30], r10d
00000001400a6f38 mov      dword ptr [rsp + 0x28], r11d
00000001400a6f3d movzx    r8d, byte ptr [rax + 0x28]
00000001400a6f42 mov      dword ptr [rsp + 0x20], r8d
00000001400a6f47 mov      r8, rdi
00000001400a6f4a call     0x140039d40
00000001400a6f4f mov      r9, qword ptr [rbp - 0x49]
00000001400a6f53 mov      al, byte ptr [rbp - 0x39]
00000001400a6f56 lea      r14, [rbp - 0x31]
00000001400a6f5a cmp      sil, r15b
00000001400a6f5d mov      ecx, esi
00000001400a6f5f mov      dl, 0xff
00000001400a6f61 cmova    ecx, r15d
00000001400a6f65 mov      byte ptr [rbp - 0x38], dl
00000001400a6f68 and      al, 0xfc
00000001400a6f6a and      cl, 3
00000001400a6f6d or       cl, al
00000001400a6f6f mov      eax, r12d
00000001400a6f72 movzx    r12d, byte ptr [rbp - 0x66]
00000001400a6f77 xor      esi, esi
00000001400a6f79 mov      dword ptr [rbp + 7], eax
00000001400a6f7c mov      byte ptr [rbp - 0x39], cl
00000001400a6f7f movzx    r10d, sil
00000001400a6f83 mov      r8d, 1
00000001400a6f89 mov      ecx, r10d
00000001400a6f8c shl      r8d, cl
00000001400a6f8f test     r8d, eax
00000001400a6f92 je       0x1400a6fb2
00000001400a6f94 movzx    edx, word ptr [r14]
00000001400a6f98 mov      rax, qword ptr [r9 + 0x30]
00000001400a6f9c movzx    ecx, byte ptr [rax + 0x28]
00000001400a6fa0 bts      edx, ecx
00000001400a6fa3 mov      word ptr [r14], dx
00000001400a6fa7 movzx    edx, byte ptr [rbp - 0x38]
00000001400a6fab bts      edx, r10d
00000001400a6faf mov      byte ptr [rbp - 0x38], dl
00000001400a6fb2 test     r8d, r12d
00000001400a6fb5 je       0x1400a6fd7
00000001400a6fb7 movzx    edx, word ptr [r14]
00000001400a6fbb mov      rax, qword ptr [r9 + 0x38]
00000001400a6fbf movzx    ecx, byte ptr [rax + 0x28]
00000001400a6fc3 bts      edx, ecx
00000001400a6fc6 mov      word ptr [r14], dx
00000001400a6fca movzx    eax, byte ptr [rbp - 0x38]
00000001400a6fce bts      eax, r10d
00000001400a6fd2 mov      dl, al
00000001400a6fd4 mov      byte ptr [rbp - 0x38], al
00000001400a6fd7 mov      rcx, qword ptr [rip + 0x879022]
00000001400a6fde cmp      rcx, r13
00000001400a6fe1 je       0x1400a700e
00000001400a6fe3 cmp      byte ptr [rcx + 0x29], 4
00000001400a6fe7 jb       0x1400a700e
00000001400a6fe9 test     dword ptr [rcx + 0x2c], ebx
00000001400a6fec je       0x1400a700e
00000001400a6fee movzx    eax, word ptr [r14]
00000001400a6ff2 mov      edx, 0xb6
00000001400a6ff7 mov      rcx, qword ptr [rcx + 0x18]
00000001400a6ffb mov      r8, rdi
00000001400a6ffe movzx    r9d, sil
00000001400a7002 mov      dword ptr [rsp + 0x20], eax
00000001400a7006 call     0x140001bec
00000001400a700b mov      dl, byte ptr [rbp - 0x38]
00000001400a700e mov      r9, qword ptr [rbp - 0x49]
00000001400a7012 add      sil, 1
00000001400a7016 mov      eax, dword ptr [rbp + 7]
00000001400a7019 add      r14, r15
00000001400a701c cmp      sil, 8
00000001400a7020 jb       0x1400a6f7f
00000001400a7026 mov      rcx, qword ptr [rip + 0x878fd3]
00000001400a702d cmp      rcx, r13
00000001400a7030 je       0x1400a7052
00000001400a7032 cmp      byte ptr [rcx + 0x29], 4
00000001400a7036 jb       0x1400a7052
00000001400a7038 test     dword ptr [rcx + 0x2c], ebx
00000001400a703b je       0x1400a7052
00000001400a703d mov      rcx, qword ptr [rcx + 0x18]
00000001400a7041 mov      r8, rdi
00000001400a7044 movzx    r9d, dl
00000001400a7048 mov      edx, 0xb7
00000001400a704d call     0x140001bb0
00000001400a7052 mov      rcx, qword ptr [rbp - 0x61]
00000001400a7056 lea      r8, [rbp - 0x39]
00000001400a705a xor      r9d, r9d
00000001400a705d lea      edx, [r9 + 1]
00000001400a7061 call     0x140102d34
00000001400a7066 mov      rcx, qword ptr [rbp - 0x61]
00000001400a706a call     0x1401044b8
00000001400a706f jmp      0x1400a6d23
00000001400a7074 mov      r15d, 2
00000001400a707a mov      dword ptr [rbp - 1], r15d
00000001400a707e cmp      r8d, r15d
00000001400a7081 jb       0x1400a6d23
00000001400a7087 movzx    ebx, byte ptr [r14 + 1]
00000001400a708c mov      rcx, qword ptr [rip + 0x878f6d]
00000001400a7093 lea      r13, [rip + 0x878f66]
00000001400a709a cmp      rcx, r13
00000001400a709d je       0x1400a70c5
00000001400a709f cmp      byte ptr [rcx + 0x29], 4
00000001400a70a3 jb       0x1400a70c5
00000001400a70a5 mov      eax, dword ptr [rcx + 0x2c]
00000001400a70a8 test     r15b, al
00000001400a70ab je       0x1400a70c5
00000001400a70ad mov      rcx, qword ptr [rcx + 0x18]
00000001400a70b1 lea      r8, [rip + 0x5ebc08]
00000001400a70b8 mov      r9d, ebx
00000001400a70bb mov      edx, 0xbb
00000001400a70c0 call     0x140001bb0
00000001400a70c5 mov      r9, qword ptr [rbp - 0x59]
00000001400a70c9 xor      r8d, r8d
00000001400a70cc lea      edi, [r8 + 1]
00000001400a70d0 cmp      byte ptr [r9 + 0x250], r8b
00000001400a70d7 jbe      0x1400a4880
00000001400a70dd lea      r10, [rsi + 0x544f60]
00000001400a70e4 shl      bl, 2
00000001400a70e7 movzx    eax, r8b
00000001400a70eb imul     rax, rax, 0x1dc0
00000001400a70f2 add      rax, 0x53f620
00000001400a70f8 add      rax, rsi
00000001400a70fb cmp      r8b, r15b
00000001400a70fe cmove    rax, r10
00000001400a7102 add      r8b, dil
00000001400a7105 mov      rdx, qword ptr [rax]
00000001400a7108 mov      al, byte ptr [rdx + 0x75]
00000001400a710b mov      cl, al
00000001400a710d xor      cl, bl
00000001400a710f and      cl, 4
00000001400a7112 xor      cl, al
00000001400a7114 mov      byte ptr [rdx + 0x75], cl
00000001400a7117 cmp      r8b, byte ptr [r9 + 0x250]
00000001400a711e jb       0x1400a70e7
00000001400a7120 jmp      0x1400a4880
00000001400a7125 cmp      r12b, 0xb2
00000001400a7129 ja       0x1400a73f1
00000001400a712f je       0x1400a7387
00000001400a7135 sub      r12d, 0xad
00000001400a713c je       0x1400a733e
00000001400a7142 sub      r12d, edx
00000001400a7145 je       0x1400a72f5
00000001400a714b sub      r12d, edx
00000001400a714e je       0x1400a7248
00000001400a7154 sub      r12d, edx
00000001400a7157 je       0x1400a71b5
00000001400a7159 cmp      r12d, edx
00000001400a715c jne      0x1400a4d4f
00000001400a7162 mov      r15d, 2
00000001400a7168 mov      dword ptr [rbp - 1], r15d
00000001400a716c cmp      r8b, r15b
00000001400a716f jb       0x1400a6d23
00000001400a7175 mov      rcx, qword ptr [rbp + 0xf]
00000001400a7179 movzx    r9d, byte ptr [r14 + 1]
00000001400a717e mov      dword ptr [rcx + 0xaa670], r9d
00000001400a7185 mov      rcx, qword ptr [rip + 0x878e74]
00000001400a718c cmp      rcx, r13
00000001400a718f je       0x1400a6d23
00000001400a7195 cmp      byte ptr [rcx + 0x29], 4
00000001400a7199 jb       0x1400a6d23
00000001400a719f mov      eax, dword ptr [rcx + 0x2c]
00000001400a71a2 test     r15b, al
00000001400a71a5 je       0x1400a6d23
00000001400a71ab mov      edx, 0xc0
00000001400a71b0 jmp      0x1400a6d17
00000001400a71b5 mov      dword ptr [rbp - 1], 7
00000001400a71bc cmp      r8b, 7
00000001400a71c0 jb       0x1400a6d23
00000001400a71c6 lea      r12, [r15 + 0xaa444]
00000001400a71cd mov      r8d, 6
00000001400a71d3 mov      rcx, r12
00000001400a71d6 lea      rdx, [r14 + 1]
00000001400a71da call     0x1400311e8
00000001400a71df mov      rsi, qword ptr [rip + 0x878e1a]
00000001400a71e6 cmp      rsi, r13
00000001400a71e9 je       0x1400a6d23
00000001400a71ef cmp      byte ptr [rsi + 0x29], 4
00000001400a71f3 jb       0x1400a6d23
00000001400a71f9 mov      eax, dword ptr [rsi + 0x2c]
00000001400a71fc mov      r15d, 2
00000001400a7202 test     r15b, al
00000001400a7205 je       0x1400a6d23
00000001400a720b mov      rcx, qword ptr [rbp + 0xf]
00000001400a720f mov      edx, 0xbf
00000001400a7214 movzx    r9d, byte ptr [r12]
00000001400a7219 movzx    eax, byte ptr [rcx + 0xaa449]
00000001400a7220 movzx    r8d, byte ptr [rcx + 0xaa448]
00000001400a7228 movzx    r10d, byte ptr [rcx + 0xaa447]
00000001400a7230 movzx    r11d, byte ptr [rcx + 0xaa446]
00000001400a7238 movzx    ebx, byte ptr [rcx + 0xaa445]
00000001400a723f mov      rcx, qword ptr [rsi + 0x18]
00000001400a7243 jmp      0x1400a632b
00000001400a7248 mov      r15d, 2
00000001400a724e mov      dword ptr [rbp - 1], r15d
00000001400a7252 cmp      r8b, r15b
00000001400a7255 jb       0x1400a6d23
00000001400a725b movzx    ebx, byte ptr [r14 + 1]
00000001400a7260 mov      rcx, qword ptr [rip + 0x878d99]
00000001400a7267 cmp      rcx, r13
00000001400a726a je       0x1400a728e
00000001400a726c cmp      byte ptr [rcx + 0x29], 4
00000001400a7270 jb       0x1400a728e
00000001400a7272 mov      eax, dword ptr [rcx + 0x2c]
00000001400a7275 test     r15b, al
00000001400a7278 je       0x1400a728e
00000001400a727a mov      rcx, qword ptr [rcx + 0x18]
00000001400a727e mov      r9d, ebx
00000001400a7281 mov      edx, 0xbe
00000001400a7286 mov      r8, rdi
00000001400a7289 call     0x140001bb0
00000001400a728e mov      r9, qword ptr [rbp - 0x59]
00000001400a7292 xor      r8d, r8d
00000001400a7295 cmp      byte ptr [r9 + 0x250], r8b
00000001400a729c jbe      0x1400a6d23
00000001400a72a2 lea      r10, [rsi + 0x544f60]
00000001400a72a9 shl      bl, 3
00000001400a72ac lea      r13d, [r8 + 1]
00000001400a72b0 movzx    eax, r8b
00000001400a72b4 imul     rax, rax, 0x1dc0
00000001400a72bb add      rax, 0x53f620
00000001400a72c1 add      rax, rsi
00000001400a72c4 cmp      r8b, r15b
00000001400a72c7 cmove    rax, r10
00000001400a72cb add      r8b, r13b
00000001400a72ce mov      rdx, qword ptr [rax]
00000001400a72d1 mov      al, byte ptr [rdx + 0x76]
00000001400a72d4 mov      cl, al
00000001400a72d6 xor      cl, bl
00000001400a72d8 and      cl, 8
00000001400a72db xor      cl, al
00000001400a72dd mov      byte ptr [rdx + 0x76], cl
00000001400a72e0 cmp      r8b, byte ptr [r9 + 0x250]
00000001400a72e7 jb       0x1400a72b0
00000001400a72e9 lea      r13, [rip + 0x878d10]
00000001400a72f0 jmp      0x1400a6d23
00000001400a72f5 mov      rcx, qword ptr [rip + 0x878d04]
00000001400a72fc lea      r13, [rip + 0x878cfd]
00000001400a7303 cmp      rcx, r13
00000001400a7306 je       0x1400a7331
00000001400a7308 cmp      byte ptr [rcx + 0x29], 4
00000001400a730c jb       0x1400a7331
00000001400a730e mov      eax, dword ptr [rcx + 0x2c]
00000001400a7311 mov      r15d, 2
00000001400a7317 test     r15b, al
00000001400a731a je       0x1400a7331
00000001400a731c mov      rcx, qword ptr [rcx + 0x18]
00000001400a7320 lea      r8, [rip + 0x5eb999]
00000001400a7327 mov      edx, 0xbd
00000001400a732c call     0x140001b88
00000001400a7331 mov      rcx, rsi
00000001400a7334 call     0x14016d5d8
00000001400a7339 jmp      0x1400a6494
00000001400a733e mov      rcx, qword ptr [rip + 0x878cbb]
00000001400a7345 lea      r13, [rip + 0x878cb4]
00000001400a734c cmp      rcx, r13
00000001400a734f je       0x1400a737a
00000001400a7351 cmp      byte ptr [rcx + 0x29], 4
00000001400a7355 jb       0x1400a737a
00000001400a7357 mov      eax, dword ptr [rcx + 0x2c]
00000001400a735a mov      r15d, 2
00000001400a7360 test     r15b, al
00000001400a7363 je       0x1400a737a
00000001400a7365 mov      rcx, qword ptr [rcx + 0x18]
00000001400a7369 lea      r8, [rip + 0x5eb950]
00000001400a7370 mov      edx, 0xbc
00000001400a7375 call     0x140001b88
00000001400a737a mov      rcx, rsi
00000001400a737d call     0x14016d668
00000001400a7382 jmp      0x1400a6494
00000001400a7387 mov      r15d, 2
00000001400a738d mov      dword ptr [rbp - 1], r15d
00000001400a7391 cmp      r8d, r15d
00000001400a7394 jb       0x1400a6d23
00000001400a739a mov      rcx, qword ptr [rbp + 0xf]
00000001400a739e movzx    r9d, byte ptr [r14 + 1]
00000001400a73a3 mov      dword ptr [rcx + 0xaa674], r9d
00000001400a73aa mov      rcx, qword ptr [rip + 0x878c4f]
00000001400a73b1 lea      r13, [rip + 0x878c48]
00000001400a73b8 cmp      rcx, r13
00000001400a73bb je       0x1400a4d4f
00000001400a73c1 cmp      byte ptr [rcx + 0x29], 4
00000001400a73c5 jb       0x1400a4d4f
00000001400a73cb mov      eax, dword ptr [rcx + 0x2c]
00000001400a73ce test     r15b, al
00000001400a73d1 je       0x1400a4d4f
00000001400a73d7 mov      edx, 0xc1
00000001400a73dc mov      rcx, qword ptr [rcx + 0x18]
00000001400a73e0 lea      r8, [rip + 0x5eb8d9]
00000001400a73e7 call     0x140001bb0
00000001400a73ec jmp      0x1400a6494
00000001400a73f1 mov      edx, r12d
00000001400a73f4 sub      edx, 0xb3
00000001400a73fa je       0x1400a7742
00000001400a7400 sub      edx, ebx
00000001400a7402 je       0x1400a74d4
00000001400a7408 sub      edx, ebx
00000001400a740a je       0x1400a74d4
00000001400a7410 cmp      edx, ebx
00000001400a7412 jne      0x1400a6494
00000001400a7418 mov      dword ptr [rbp - 1], 7
00000001400a741f cmp      r8d, 7
00000001400a7423 jb       0x1400a6d23
00000001400a7429 lea      rsi, [r15 + 0xaa44a]
00000001400a7430 mov      r8d, 6
00000001400a7436 mov      rcx, rsi
00000001400a7439 lea      rdx, [r14 + 1]
00000001400a743d call     0x1400311e8
00000001400a7442 mov      rdi, qword ptr [rip + 0x878bb7]
00000001400a7449 lea      r13, [rip + 0x878bb0]
00000001400a7450 cmp      rdi, r13
00000001400a7453 je       0x1400a6494
00000001400a7459 cmp      byte ptr [rdi + 0x29], 4
00000001400a745d jb       0x1400a6494
00000001400a7463 mov      eax, dword ptr [rdi + 0x2c]
00000001400a7466 mov      r15d, 2
00000001400a746c test     r15b, al
00000001400a746f je       0x1400a6494
00000001400a7475 mov      rcx, qword ptr [rbp + 0xf]
00000001400a7479 mov      edx, 0xc7
00000001400a747e movzx    r9d, byte ptr [rsi]
00000001400a7482 movzx    r8d, byte ptr [rcx + 0xaa44e]
00000001400a748a movzx    eax, byte ptr [rcx + 0xaa44f]
00000001400a7491 movzx    r10d, byte ptr [rcx + 0xaa44d]
00000001400a7499 movzx    r11d, byte ptr [rcx + 0xaa44c]
00000001400a74a1 movzx    ebx, byte ptr [rcx + 0xaa44b]
00000001400a74a8 mov      rcx, qword ptr [rdi + 0x18]
00000001400a74ac mov      dword ptr [rsp + 0x40], eax
00000001400a74b0 mov      dword ptr [rsp + 0x38], r8d
00000001400a74b5 lea      r8, [rip + 0x5eb804]
00000001400a74bc mov      dword ptr [rsp + 0x30], r10d
00000001400a74c1 mov      dword ptr [rsp + 0x28], r11d
00000001400a74c6 mov      dword ptr [rsp + 0x20], ebx
00000001400a74ca call     0x1400087f4
00000001400a74cf jmp      0x1400a487b
00000001400a74d4 lea      rdi, [r15 + 0xaa680]
00000001400a74db movzx    r8d, byte ptr [rdi + 0xa]
00000001400a74e0 lea      rcx, [r15 + 0x8b048]
00000001400a74e7 mov      r15d, 2
00000001400a74ed cmp      r8b, r15b
00000001400a74f0 jb       0x1400a7539
00000001400a74f2 mov      rcx, qword ptr [rip + 0x878b07]
00000001400a74f9 lea      r13, [rip + 0x878b00]
00000001400a7500 cmp      rcx, r13
00000001400a7503 je       0x1400a77f2
00000001400a7509 cmp      byte ptr [rcx + 0x29], 4
00000001400a750d jb       0x1400a77f2
00000001400a7513 mov      eax, dword ptr [rcx + 0x2c]
00000001400a7516 test     r15b, al
00000001400a7519 je       0x1400a77f2
00000001400a751f mov      rcx, qword ptr [rcx + 0x18]
00000001400a7523 lea      r8, [rip + 0x5eb796]
00000001400a752a mov      edx, 0xc3
00000001400a752f call     0x140001b88
00000001400a7534 jmp      0x1400a77f2
00000001400a7539 mov      al, byte ptr [r14 + 1]
00000001400a753d lea      r10, [rdi + r8*4]
00000001400a7541 add      r10, r8
00000001400a7544 xor      ebx, ebx
00000001400a7546 mov      r11b, bl
00000001400a7549 mov      byte ptr [r10 + 4], al
00000001400a754d test     al, al
00000001400a754f je       0x1400a757c
00000001400a7551 lea      esi, [rbx + 1]
00000001400a7554 movzx    r9d, r11b
00000001400a7558 movzx    edx, r11b
00000001400a755c add      r11b, sil
00000001400a755f mov      al, byte ptr [r14 + r9*2 + 2]
00000001400a7564 mov      byte ptr [r10 + rdx*2], al
00000001400a7568 mov      al, byte ptr [r14 + r9*2 + 3]
00000001400a756d mov      byte ptr [r10 + rdx*2 + 1], al
00000001400a7572 cmp      r11b, byte ptr [r10 + 4]
00000001400a7576 jb       0x1400a7554
00000001400a7578 mov      rsi, qword ptr [rbp - 0x61]
00000001400a757c mov      edx, 1
00000001400a7581 add      byte ptr [rdi + 0xa], dl
00000001400a7584 mov      rdx, rdi
00000001400a7587 call     0x140154118
00000001400a758c mov      rcx, qword ptr [rip + 0x878a6d]
00000001400a7593 lea      r13, [rip + 0x878a66]
00000001400a759a cmp      rcx, r13
00000001400a759d je       0x1400a75c7
00000001400a759f cmp      byte ptr [rcx + 0x29], 4
00000001400a75a3 jb       0x1400a75c7
00000001400a75a5 mov      eax, dword ptr [rcx + 0x2c]
00000001400a75a8 test     r15b, al
00000001400a75ab je       0x1400a75c7
00000001400a75ad movzx    r9d, byte ptr [rdi + 0xa]
00000001400a75b2 lea      r8, [rip + 0x5eb707]
00000001400a75b9 mov      rcx, qword ptr [rcx + 0x18]
00000001400a75bd mov      edx, 0xc4
00000001400a75c2 call     0x140001bb0
00000001400a75c7 mov      r14b, bl
00000001400a75ca mov      byte ptr [rbp - 0x67], bl
00000001400a75cd cmp      byte ptr [rdi + 0xa], bl
00000001400a75d0 jbe      0x1400a772b
00000001400a75d6 mov      r12, rdi
00000001400a75d9 mov      esi, 1
00000001400a75de mov      rcx, qword ptr [rip + 0x878a1b]
00000001400a75e5 cmp      rcx, r13
00000001400a75e8 je       0x1400a761e
00000001400a75ea cmp      byte ptr [rcx + 0x29], 4
00000001400a75ee jb       0x1400a761e
00000001400a75f0 mov      eax, dword ptr [rcx + 0x2c]
00000001400a75f3 test     r15b, al
00000001400a75f6 je       0x1400a761e
00000001400a75f8 mov      rcx, qword ptr [rcx + 0x18]
00000001400a75fc lea      r8, [rip + 0x5eb6bd]
00000001400a7603 movzx    eax, r14b
00000001400a7607 lea      rdx, [rax + rax*4]
00000001400a760b add      rdx, rdx
00000001400a760e movzx    r9d, byte ptr [r12 + rdx*8 + 0x58]
00000001400a7614 mov      edx, 0xc5
00000001400a7619 call     0x140001bb0
00000001400a761e movzx    eax, r14b
00000001400a7622 mov      r9b, bl
00000001400a7625 mov      byte ptr [rbp - 0x69], bl
00000001400a7628 lea      rdx, [rax + rax*4]
00000001400a762c shl      rdx, 4
00000001400a7630 mov      qword ptr [rbp - 0x39], rdx
00000001400a7634 cmp      byte ptr [rdx + r12 + 0x58], bl
00000001400a7639 jbe      0x1400a7711
00000001400a763f mov      ebx, 1
00000001400a7644 mov      rax, qword ptr [rip + 0x8789b5]
00000001400a764b mov      qword ptr [rbp - 0x49], rax
00000001400a764f cmp      rax, r13
00000001400a7652 je       0x1400a76f6
00000001400a7658 cmp      byte ptr [rax + 0x29], 4
00000001400a765c jb       0x1400a76f6
00000001400a7662 mov      eax, dword ptr [rax + 0x2c]
00000001400a7665 test     r15b, al
00000001400a7668 je       0x1400a76f6
00000001400a766e movzx    eax, r9b
00000001400a7672 movzx    r9d, r9b
00000001400a7676 lea      rcx, [rax + rax*2]
00000001400a767a lea      r14, [rdx + rcx*8]
00000001400a767e mov      rcx, qword ptr [rbp - 0x49]
00000001400a7682 movzx    eax, byte ptr [r14 + r12 + 0x1a]
00000001400a7688 mov      edx, 0xc6
00000001400a768d movzx    r8d, byte ptr [r14 + r12 + 0x19]
00000001400a7693 movzx    r10d, byte ptr [r14 + r12 + 0x18]
00000001400a7699 movzx    r11d, byte ptr [r14 + r12 + 0x17]
00000001400a769f movzx    ebx, byte ptr [r14 + r12 + 0x16]
00000001400a76a5 movzx    edi, byte ptr [r14 + r12 + 0x15]
00000001400a76ab movzx    esi, byte ptr [r14 + r12 + 0x14]
00000001400a76b1 mov      rcx, qword ptr [rcx + 0x18]
00000001400a76b5 mov      dword ptr [rsp + 0x58], eax
00000001400a76b9 mov      eax, dword ptr [r14 + r12 + 0x10]
00000001400a76be mov      dword ptr [rsp + 0x50], r8d
00000001400a76c3 lea      r8, [rip + 0x5eb5f6]
00000001400a76ca mov      dword ptr [rsp + 0x48], r10d
00000001400a76cf mov      dword ptr [rsp + 0x40], r11d
00000001400a76d4 mov      dword ptr [rsp + 0x38], ebx
00000001400a76d8 mov      dword ptr [rsp + 0x30], edi
00000001400a76dc mov      dword ptr [rsp + 0x28], esi
00000001400a76e0 mov      dword ptr [rsp + 0x20], eax
00000001400a76e4 call     0x140099b4c
00000001400a76e9 mov      rdx, qword ptr [rbp - 0x39]
00000001400a76ed mov      ebx, 1
00000001400a76f2 mov      r9b, byte ptr [rbp - 0x69]
00000001400a76f6 add      r9b, bl
00000001400a76f9 mov      byte ptr [rbp - 0x69], r9b
00000001400a76fd cmp      r9b, byte ptr [rdx + r12 + 0x58]
00000001400a7702 jb       0x1400a7644
00000001400a7708 mov      r14b, byte ptr [rbp - 0x67]
00000001400a770c xor      ebx, ebx
00000001400a770e lea      esi, [rbx + 1]
00000001400a7711 add      r14b, sil
00000001400a7714 mov      byte ptr [rbp - 0x67], r14b
00000001400a7718 cmp      r14b, byte ptr [r12 + 0xa]
00000001400a771d jb       0x1400a75de
00000001400a7723 mov      r12d, dword ptr [rbp + 7]
00000001400a7727 mov      rsi, qword ptr [rbp - 0x61]
00000001400a772b cmp      r12b, 0xb5
00000001400a772f jne      0x1400a487b
00000001400a7735 mov      rcx, rsi
00000001400a7738 call     0x140153b34
00000001400a773d jmp      0x1400a487b
00000001400a7742 mov      dword ptr [rbp - 1], ecx
00000001400a7745 cmp      r8d, ecx
00000001400a7748 jb       0x1400a6d23
00000001400a774e movzx    edx, word ptr [r14 + 1]
00000001400a7753 mov      word ptr [r15 + 0xaa678], dx
00000001400a775b mov      rcx, qword ptr [rip + 0x87889e]
00000001400a7762 lea      r13, [rip + 0x878897]
00000001400a7769 cmp      rcx, r13
00000001400a776c je       0x1400a6494
00000001400a7772 cmp      byte ptr [rcx + 0x29], 4
00000001400a7776 jb       0x1400a6494
00000001400a777c mov      eax, dword ptr [rcx + 0x2c]
00000001400a777f mov      r15d, 2
00000001400a7785 test     r15b, al
00000001400a7788 je       0x1400a6494
00000001400a778e mov      r9d, edx
00000001400a7791 mov      edx, 0xc2
00000001400a7796 jmp      0x1400a73dc
00000001400a779b mov      ebx, eax
00000001400a779d jmp      0x1400a77a4
00000001400a779f mov      ebx, 0xd
00000001400a77a4 movzx    r14d, byte ptr [rbp - 0x68]
00000001400a77a9 cmp      r14d, ebx
00000001400a77ac jae      0x1400a487b
00000001400a77b2 mov      eax, 3
00000001400a77b7 jmp      0x1400a50eb
00000001400a77bc mov      eax, ebx
00000001400a77be mov      r14b, r8b
00000001400a77c1 mov      rcx, qword ptr [rip + 0x878838]
00000001400a77c8 cmp      rcx, r13
00000001400a77cb je       0x1400a77f2
00000001400a77cd cmp      byte ptr [rcx + 0x69], al
00000001400a77d0 jb       0x1400a77f2
00000001400a77d2 mov      eax, dword ptr [rcx + 0x6c]
00000001400a77d5 test     dl, al
00000001400a77d7 je       0x1400a77f2
00000001400a77d9 mov      rcx, qword ptr [rcx + 0x58]
00000001400a77dd mov      edx, 0xc8
00000001400a77e2 movzx    r9d, r14b
00000001400a77e6 mov      r8, rdi
00000001400a77e9 mov      dword ptr [rsp + 0x20], ebx
00000001400a77ed call     0x140001bec
00000001400a77f2 xor      al, al
00000001400a77f4 jmp      0x1400a4883