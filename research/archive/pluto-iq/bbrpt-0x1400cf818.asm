00000001400cf818 mov      rax, rsp
00000001400cf81b mov      qword ptr [rax + 8], rbx
00000001400cf81f mov      qword ptr [rax + 0x10], rbp
00000001400cf823 mov      qword ptr [rax + 0x18], rsi
00000001400cf827 mov      qword ptr [rax + 0x20], rdi
00000001400cf82b push     r12
00000001400cf82d push     r13
00000001400cf82f push     r14
00000001400cf831 sub      rsp, 0x30
00000001400cf835 mov      rdi, rcx
00000001400cf838 lea      rbp, [rdx + 4]
00000001400cf83c mov      ecx, dword ptr [rcx + 0xc0ba0]
00000001400cf842 lea      rbx, [rdx + 0x18]
00000001400cf846 cmp      byte ptr [rdi + 0x1136ea], 0
00000001400cf84d jne      0x1400cfcb4
00000001400cf853 mov      r8b, byte ptr [rdx]
00000001400cf856 mov      al, r8b
00000001400cf859 and      al, 0xc
00000001400cf85b cmp      al, 8
00000001400cf85d jne      0x1400cf872
00000001400cf85f test     r8b, r8b
00000001400cf862 jns      0x1400cf872
00000001400cf864 add      rbx, 2
00000001400cf868 cmp      byte ptr [rdx + 1], 0
00000001400cf86c jge      0x1400cf872
00000001400cf86e add      rbx, 4
00000001400cf872 movzx    eax, word ptr [rdx]
00000001400cf875 lea      r12, [rip + 0x850784]
00000001400cf87c mov      edx, 0x300
00000001400cf881 mov      r14, rbx
00000001400cf884 and      ax, dx
00000001400cf887 mov      esi, 1
00000001400cf88c cmp      ax, dx
00000001400cf88f jne      0x1400cf93f
00000001400cf895 mov      rcx, qword ptr [rip + 0x850764]
00000001400cf89c cmp      rcx, r12
00000001400cf89f je       0x1400cf8c3
00000001400cf8a1 cmp      byte ptr [rcx + 0x29], 4
00000001400cf8a5 jb       0x1400cf8c3
00000001400cf8a7 test     dword ptr [rcx + 0x2c], 0x800
00000001400cf8ae je       0x1400cf8c3
00000001400cf8b0 mov      rcx, qword ptr [rcx + 0x18]
00000001400cf8b4 lea      edx, [rsi + 0x1f]
00000001400cf8b7 lea      r8, [rip + 0x5c3472]
00000001400cf8be call     0x140001b88
00000001400cf8c3 add      rbx, 6
00000001400cf8c7 mov      r13b, sil
00000001400cf8ca mov      r14, rbx
00000001400cf8cd cmp      byte ptr [rdi + 0x1136eb], 0
00000001400cf8d4 jne      0x1400cfa93
00000001400cf8da mov      rcx, rdi
00000001400cf8dd call     0x1400dbea4
00000001400cf8e2 test     eax, eax
00000001400cf8e4 jg       0x1400cfa93
00000001400cf8ea test     r13b, r13b
00000001400cf8ed je       0x1400cf91f
00000001400cf8ef mov      rcx, qword ptr [rip + 0x85070a]
00000001400cf8f6 cmp      rcx, r12
00000001400cf8f9 je       0x1400cf91f
00000001400cf8fb cmp      byte ptr [rcx + 0x29], 4
00000001400cf8ff jb       0x1400cf91f
00000001400cf901 test     dword ptr [rcx + 0x2c], 0x800
00000001400cf908 je       0x1400cf91f
00000001400cf90a mov      rcx, qword ptr [rcx + 0x18]
00000001400cf90e lea      r8, [rip + 0x5c341b]
00000001400cf915 mov      edx, 0x21
00000001400cf91a call     0x140001b88
00000001400cf91f mov      al, byte ptr [rdi + 0xc16c0]
00000001400cf925 mov      byte ptr [rbx], al
00000001400cf927 mov      eax, dword ptr [rdi + 0xc16c0]
00000001400cf92d shr      rax, 8
00000001400cf931 mov      byte ptr [rbx + 1], al
00000001400cf934 mov      word ptr [rbx + 2], 0x2000
00000001400cf93a jmp      0x1400cfb74
00000001400cf93f cmp      ecx, 2
00000001400cf942 je       0x1400cfbca
00000001400cf948 xor      r13b, r13b
00000001400cf94b cmp      ecx, 4
00000001400cf94e je       0x1400cf8cd
00000001400cf954 lea      eax, [rcx - 8]
00000001400cf957 test     eax, 0xfffffff7
00000001400cf95c je       0x1400cfa43
00000001400cf962 cmp      ecx, 0x20
00000001400cf965 je       0x1400cfa25
00000001400cf96b lea      eax, [rcx - 0x100]
00000001400cf971 test     eax, 0xfffffeff
00000001400cf976 jne      0x1400cfcb4
00000001400cf97c mov      rcx, rdi
00000001400cf97f call     0x1400dbea4
00000001400cf984 test     eax, eax
00000001400cf986 jg       0x1400cf9dd
00000001400cf988 mov      al, byte ptr [rdi + 0xc16c0]
00000001400cf98e mov      byte ptr [rbx], al
00000001400cf990 mov      eax, dword ptr [rdi + 0xc16c0]
00000001400cf996 shr      rax, 8
00000001400cf99a mov      byte ptr [rbx + 1], al
00000001400cf99d mov      word ptr [rbx + 2], 0x2000
00000001400cf9a3 mov      al, byte ptr [rdi + 0xc16c2]
00000001400cf9a9 mov      byte ptr [rbx + 4], al
00000001400cf9ac mov      al, byte ptr [rdi + 0xc16c3]
00000001400cf9b2 mov      byte ptr [rbx + 5], al
00000001400cf9b5 mov      rax, qword ptr [rdi + 0xc16c0]
00000001400cf9bc shr      rax, 0x20
00000001400cf9c0 mov      byte ptr [rbx + 6], al
00000001400cf9c3 mov      rax, qword ptr [rdi + 0xc16c0]
00000001400cf9ca shr      rax, 0x28
00000001400cf9ce mov      byte ptr [rbx + 7], al
00000001400cf9d1 add      qword ptr [rdi + 0xc16c0], rsi
00000001400cf9d8 jmp      0x1400cfcb4
00000001400cf9dd mov      rcx, qword ptr [rip + 0x85061c]
00000001400cf9e4 lea      r12, [rip + 0x850615]
00000001400cf9eb cmp      rcx, r12
00000001400cf9ee je       0x1400cfcb4
00000001400cf9f4 cmp      byte ptr [rcx + 0x29], 4
00000001400cf9f8 jb       0x1400cfcb4
00000001400cf9fe test     dword ptr [rcx + 0x2c], 0x800
00000001400cfa05 je       0x1400cfcb4
00000001400cfa0b mov      rcx, qword ptr [rcx + 0x18]
00000001400cfa0f lea      r8, [rip + 0x5c331a]
00000001400cfa16 mov      edx, 0x22
00000001400cfa1b call     0x140001b88
00000001400cfa20 jmp      0x1400cfcb4
00000001400cfa25 and      qword ptr [rsp + 0x20], 0
00000001400cfa2b mov      r9, rbx
00000001400cfa2e mov      r8, rbp
00000001400cfa31 mov      rdx, rdi
00000001400cfa34 mov      ecx, 0x12
00000001400cfa39 call     0x1400e4918
00000001400cfa3e jmp      0x1400cfcb4
00000001400cfa43 mov      al, byte ptr [rdi + 0xc16c0]
00000001400cfa49 mov      byte ptr [rbx], al
00000001400cfa4b mov      eax, dword ptr [rdi + 0xc16c0]
00000001400cfa51 shr      rax, 8
00000001400cfa55 mov      byte ptr [rbx + 1], al
00000001400cfa58 mov      eax, dword ptr [rdi + 0xc16c0]
00000001400cfa5e shr      rax, 0x10
00000001400cfa62 mov      byte ptr [rbx + 2], al
00000001400cfa65 mov      rcx, qword ptr [rdi + 0xc16c0]
00000001400cfa6c cmp      rcx, 0xffffff
00000001400cfa73 lea      rax, [rcx + 1]
00000001400cfa77 cmovne   rsi, rax
00000001400cfa7b mov      al, byte ptr [rdi + 0xc0bb4]
00000001400cfa81 shl      al, 6
00000001400cfa84 mov      qword ptr [rdi + 0xc16c0], rsi
00000001400cfa8b mov      byte ptr [rbx + 3], al
00000001400cfa8e jmp      0x1400cfcb4
00000001400cfa93 mov      rcx, rdi
00000001400cfa96 call     0x1400dbea4
00000001400cfa9b mov      rcx, rbp
00000001400cfa9e test     eax, eax
00000001400cfaa0 jle      0x1400cfb3c
00000001400cfaa6 call     0x14007de8c
00000001400cfaab test     al, al
00000001400cfaad jne      0x1400cfb1b
00000001400cfaaf mov      rdx, rbp
00000001400cfab2 mov      rcx, rdi
00000001400cfab5 call     0x140051568
00000001400cfaba mov      rdx, rax
00000001400cfabd test     rax, rax
00000001400cfac0 je       0x1400cfcb4
00000001400cfac6 mov      cl, byte ptr [rax + 0x228]
00000001400cfacc mov      byte ptr [rbx], cl
00000001400cface mov      ecx, dword ptr [rax + 0x228]
00000001400cfad4 mov      word ptr [rbx + 2], 0x2000
00000001400cfada shr      rcx, 8
00000001400cfade mov      byte ptr [rbx + 1], cl
00000001400cfae1 mov      cl, byte ptr [rax + 0x22a]
00000001400cfae7 mov      byte ptr [rbx + 4], cl
00000001400cfaea mov      al, byte ptr [rax + 0x22b]
00000001400cfaf0 mov      byte ptr [rbx + 5], al
00000001400cfaf3 mov      rax, qword ptr [rdx + 0x228]
00000001400cfafa shr      rax, 0x20
00000001400cfafe mov      byte ptr [rbx + 6], al
00000001400cfb01 mov      rax, qword ptr [rdx + 0x228]
00000001400cfb08 shr      rax, 0x28
00000001400cfb0c mov      byte ptr [rbx + 7], al
00000001400cfb0f add      qword ptr [rdx + 0x228], rsi
00000001400cfb16 jmp      0x1400cfcb4
00000001400cfb1b mov      al, byte ptr [rdi + 0xc16c0]
00000001400cfb21 mov      byte ptr [rbx], al
00000001400cfb23 mov      eax, dword ptr [rdi + 0xc16c0]
00000001400cfb29 shr      rax, 8
00000001400cfb2d mov      byte ptr [rbx + 1], al
00000001400cfb30 mov      byte ptr [rbx + 2], 0
00000001400cfb34 mov      al, byte ptr [rdi + 0xc0961]
00000001400cfb3a jmp      0x1400cfb6c
00000001400cfb3c call     0x14007de8c
00000001400cfb41 mov      cl, byte ptr [rdi + 0xc16c0]
00000001400cfb47 mov      byte ptr [r14], cl
00000001400cfb4a mov      rcx, qword ptr [rdi + 0xc16c0]
00000001400cfb51 shr      rcx, 8
00000001400cfb55 mov      byte ptr [rbx + 2], 0
00000001400cfb59 mov      byte ptr [rbx + 1], cl
00000001400cfb5c test     al, al
00000001400cfb5e jne      0x1400cfb66
00000001400cfb60 mov      byte ptr [rbx + 3], 0x20
00000001400cfb64 jmp      0x1400cfb74
00000001400cfb66 mov      al, byte ptr [rdi + 0xc0bb4]
00000001400cfb6c shl      al, 6
00000001400cfb6f or       al, 0x20
00000001400cfb71 mov      byte ptr [rbx + 3], al
00000001400cfb74 mov      al, byte ptr [rdi + 0xc16c2]
00000001400cfb7a movabs   r9, 0xffffffffffff
00000001400cfb84 mov      byte ptr [rbx + 4], al
00000001400cfb87 mov      al, byte ptr [rdi + 0xc16c3]
00000001400cfb8d mov      byte ptr [rbx + 5], al
00000001400cfb90 mov      rax, qword ptr [rdi + 0xc16c0]
00000001400cfb97 shr      rax, 0x20
00000001400cfb9b mov      byte ptr [rbx + 6], al
00000001400cfb9e mov      rax, qword ptr [rdi + 0xc16c0]
00000001400cfba5 shr      rax, 0x28
00000001400cfba9 mov      byte ptr [rbx + 7], al
00000001400cfbac mov      rcx, qword ptr [rdi + 0xc16c0]
00000001400cfbb3 cmp      rcx, r9
00000001400cfbb6 lea      rax, [rcx + 1]
00000001400cfbba cmovne   rsi, rax
00000001400cfbbe mov      qword ptr [rdi + 0xc16c0], rsi
00000001400cfbc5 jmp      0x1400cfcb4
00000001400cfbca mov      rcx, rdi
00000001400cfbcd call     0x1400dbea4
00000001400cfbd2 test     eax, eax
00000001400cfbd4 jg       0x1400cfc0d
00000001400cfbd6 mov      rcx, qword ptr [rdi + 0xc16c0]
00000001400cfbdd movabs   r9, 0xffffffffffff
00000001400cfbe7 movzx    edx, word ptr [rdi + 0xc16c0]
00000001400cfbee mov      r8, rcx
00000001400cfbf1 shr      r8, 0x10
00000001400cfbf5 cmp      rcx, r9
00000001400cfbf8 lea      rax, [rcx + 1]
00000001400cfbfc cmovne   rsi, rax
00000001400cfc00 mov      qword ptr [rdi + 0xc16c0], rsi
00000001400cfc07 mov      byte ptr [rbx + 3], 0x20
00000001400cfc0b jmp      0x1400cfc83
00000001400cfc0d mov      rcx, rbp
00000001400cfc10 call     0x14007de8c
00000001400cfc15 test     al, al
00000001400cfc17 jne      0x1400cfc4e
00000001400cfc19 mov      rdx, rbp
00000001400cfc1c mov      rcx, rdi
00000001400cfc1f call     0x140051568
00000001400cfc24 test     rax, rax
00000001400cfc27 je       0x1400cfcb4
00000001400cfc2d mov      rcx, qword ptr [rax + 0x228]
00000001400cfc34 movzx    edx, word ptr [rax + 0x228]
00000001400cfc3b mov      r8, rcx
00000001400cfc3e shr      r8, 0x10
00000001400cfc42 inc      rcx
00000001400cfc45 mov      qword ptr [rax + 0x228], rcx
00000001400cfc4c jmp      0x1400cfc07
00000001400cfc4e mov      rcx, qword ptr [rdi + 0xc16c0]
00000001400cfc55 movabs   r9, 0xffffffffffff
00000001400cfc5f movzx    edx, word ptr [rdi + 0xc16c0]
00000001400cfc66 mov      r8, rcx
00000001400cfc69 shr      r8, 0x10
00000001400cfc6d cmp      rcx, r9
00000001400cfc70 lea      rax, [rcx + 1]
00000001400cfc74 cmovne   rsi, rax
00000001400cfc78 mov      qword ptr [rdi + 0xc16c0], rsi
00000001400cfc7f mov      byte ptr [rbx + 3], 0x60
00000001400cfc83 movzx    eax, dx
00000001400cfc86 mov      byte ptr [rbx + 4], r8b
00000001400cfc8a shr      ax, 8
00000001400cfc8e mov      byte ptr [rbx], al
00000001400cfc90 and      al, 0x5f
00000001400cfc92 or       al, 0x20
00000001400cfc94 mov      byte ptr [rbx + 2], dl
00000001400cfc97 mov      byte ptr [rbx + 1], al
00000001400cfc9a mov      eax, r8d
00000001400cfc9d shr      eax, 8
00000001400cfca0 mov      byte ptr [rbx + 5], al
00000001400cfca3 mov      eax, r8d
00000001400cfca6 shr      eax, 0x10
00000001400cfca9 shr      r8d, 0x18
00000001400cfcad mov      byte ptr [rbx + 7], r8b
00000001400cfcb1 mov      byte ptr [rbx + 6], al
00000001400cfcb4 mov      rbx, qword ptr [rsp + 0x50]
00000001400cfcb9 mov      rbp, qword ptr [rsp + 0x58]
00000001400cfcbe mov      rsi, qword ptr [rsp + 0x60]
00000001400cfcc3 mov      rdi, qword ptr [rsp + 0x68]
00000001400cfcc8 add      rsp, 0x30
00000001400cfccc pop      r14
00000001400cfcce pop      r13
00000001400cfcd0 pop      r12
00000001400cfcd2 ret      