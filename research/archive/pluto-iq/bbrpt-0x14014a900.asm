000000014014a900 mov      qword ptr [rsp + 8], rbx
000000014014a905 mov      qword ptr [rsp + 0x10], rbp
000000014014a90a mov      qword ptr [rsp + 0x18], rsi
000000014014a90f push     rdi
000000014014a910 push     r13
000000014014a912 push     r15
000000014014a914 sub      rsp, 0x20
000000014014a918 xor      sil, sil
000000014014a91b mov      rdi, rcx
000000014014a91e mov      r15d, 1
000000014014a924 test     rcx, rcx
000000014014a927 je       0x14014ab1e
000000014014a92d mov      rax, qword ptr [rcx]
000000014014a930 mov      r8, qword ptr [rax + 0xaf3b8]
000000014014a937 mov      rax, qword ptr [r8]
000000014014a93a cmp      byte ptr [rax + 0xaf548], sil
000000014014a941 jne      0x14014ab1e
000000014014a947 cmp      byte ptr [rax + 0xaf549], sil
000000014014a94e jne      0x14014ab1e
000000014014a954 cmp      byte ptr [rax + 0x53e918], sil
000000014014a95b jne      0x14014ab1e
000000014014a961 cmp      byte ptr [rcx + 0x40], 3
000000014014a965 jne      0x14014a971
000000014014a967 call     0x14014bd54
000000014014a96c jmp      0x14014ab21
000000014014a971 movzx    ebx, byte ptr [rcx + 0x1a1]
000000014014a978 lea      rdx, [rip + 0x4bcf11]
000000014014a97f add      rcx, 0x28
000000014014a983 shl      rbx, 6
000000014014a987 call     0x140031478
000000014014a98c and      qword ptr [rdi + 0x78], 0
000000014014a991 and      dword ptr [rdi + 0x44], 0
000000014014a995 call     0x1405c2040
000000014014a99a cmp      dword ptr [rdi + 0x80], 0
000000014014a9a1 lea      r13, [rip - 0x14a9a8]
000000014014a9a8 mov      qword ptr [rdi + 0x38], rax
000000014014a9ac mov      byte ptr [rdi + 0x96], sil
000000014014a9b3 je       0x14014aa00
000000014014a9b5 mov      rcx, qword ptr [rdi + 0x88]
000000014014a9bc call     0x1405c1fcc
000000014014a9c1 cmp      rax, 0x1b58
000000014014a9c7 ja       0x14014aa00
000000014014a9c9 test     byte ptr [rbx + rdi + 0xe8], 2
000000014014a9d1 je       0x14014a9d8
000000014014a9d3 mov      sil, r15b
000000014014a9d6 jmp      0x14014aa00
000000014014a9d8 movsxd   rax, dword ptr [rdi + 0x20]
000000014014a9dc movzx    esi, sil
000000014014a9e0 movzx    edx, byte ptr [r13 + rax*8 + 0x693b36]
000000014014a9e9 lea      rax, [rdx + rdx*2]
000000014014a9ed mov      al, byte ptr [rax + r13 + 0x693b29]
000000014014a9f5 cmp      byte ptr [rbx + rdi + 0xf4], al
000000014014a9fc cmovb    esi, r15d
000000014014aa00 and      dword ptr [rdi + 0x80], 0
000000014014aa07 lea      rdx, [rip + 0x4bce82]
000000014014aa0e lea      rcx, [rdi + 0x28]
000000014014aa12 call     0x140031684
000000014014aa17 lea      rdx, [rip + 0x4bce72]
000000014014aa1e lea      rcx, [rdi + 0x10]
000000014014aa22 call     0x140031478
000000014014aa27 lea      rdx, [rip + 0x4bce62]
000000014014aa2e mov      dword ptr [rdi + 0x24], r15d
000000014014aa32 lea      rcx, [rdi + 0x10]
000000014014aa36 call     0x140031684
000000014014aa3b mov      eax, dword ptr [rdi + 0x1c]
000000014014aa3e test     r15b, al
000000014014aa41 je       0x14014ab1e
000000014014aa47 cmp      dword ptr [rdi + 0x20], 0
000000014014aa4b je       0x14014ab1e
000000014014aa51 test     sil, sil
000000014014aa54 je       0x14014ab1e
000000014014aa5a mov      rcx, qword ptr [rdi + 8]
000000014014aa5e call     0x14008aa14
000000014014aa63 mov      dl, r15b
000000014014aa66 mov      rcx, rdi
000000014014aa69 call     0x140147fc4
000000014014aa6e mov      rcx, rdi
000000014014aa71 call     0x140145d14
000000014014aa76 mov      rcx, qword ptr [rip + 0x7d5583]
000000014014aa7d lea      rsi, [rip + 0x7d557c]
000000014014aa84 cmp      rcx, rsi
000000014014aa87 je       0x14014aab2
000000014014aa89 cmp      byte ptr [rcx + 0x29], 4
000000014014aa8d jb       0x14014aab2
000000014014aa8f bt       dword ptr [rcx + 0x2c], 8
000000014014aa94 jae      0x14014aab2
000000014014aa96 mov      r9d, dword ptr [rdi + 0x80]
000000014014aa9d lea      r8, [rip + 0x5490cc]
000000014014aaa4 mov      rcx, qword ptr [rcx + 0x18]
000000014014aaa8 mov      edx, 0x1a
000000014014aaad call     0x140001bb0
000000014014aab2 mov      eax, dword ptr [rdi + 0x80]
000000014014aab8 test     r15b, al
000000014014aabb je       0x14014ab05
000000014014aabd mov      rcx, qword ptr [rip + 0x7d553c]
000000014014aac4 cmp      rcx, rsi
000000014014aac7 je       0x14014ab05
000000014014aac9 cmp      byte ptr [rcx + 0x29], 4
000000014014aacd jb       0x14014ab05
000000014014aacf bt       dword ptr [rcx + 0x2c], 8
000000014014aad4 jae      0x14014ab05
000000014014aad6 movsxd   rax, dword ptr [rdi + 0x20]
000000014014aada lea      r8, [rip + 0x54908f]
000000014014aae1 mov      rcx, qword ptr [rcx + 0x18]
000000014014aae5 movzx    eax, byte ptr [r13 + rax*8 + 0x693b36]
000000014014aaee lea      rdx, [rax + rax*2]
000000014014aaf2 movzx    r9d, byte ptr [rdx + r13 + 0x693b29]
000000014014aafb mov      edx, 0x1b
000000014014ab00 call     0x140001bb0
000000014014ab05 mov      edx, r15d
000000014014ab08 mov      rcx, rdi
000000014014ab0b call     0x14014e04c
000000014014ab10 test     al, al
000000014014ab12 jne      0x14014ab1e
000000014014ab14 mov      dl, 5
000000014014ab16 mov      rcx, rdi
000000014014ab19 call     0x140147fc4
000000014014ab1e mov      eax, r15d
000000014014ab21 mov      rbx, qword ptr [rsp + 0x40]
000000014014ab26 mov      rbp, qword ptr [rsp + 0x48]
000000014014ab2b mov      rsi, qword ptr [rsp + 0x50]
000000014014ab30 add      rsp, 0x20
000000014014ab34 pop      r15
000000014014ab36 pop      r13
000000014014ab38 pop      rdi
000000014014ab39 ret      