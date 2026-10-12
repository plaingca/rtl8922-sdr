00000001403dc620 mov      qword ptr [rsp + 0x10], rbx
00000001403dc625 mov      byte ptr [rsp + 0x18], r8b
00000001403dc62a mov      qword ptr [rsp + 8], rcx
00000001403dc62f push     rbp
00000001403dc630 push     rsi
00000001403dc631 push     rdi
00000001403dc632 push     r12
00000001403dc634 push     r13
00000001403dc636 push     r14
00000001403dc638 push     r15
00000001403dc63a sub      rsp, 0x30
00000001403dc63e mov      rdi, qword ptr [rcx + 0x9a0]
00000001403dc645 xor      r13d, r13d
00000001403dc648 mov      r12b, r8b
00000001403dc64b movzx    r14d, dx
00000001403dc64f cmp      dword ptr [rdi + 0x1348], 2
00000001403dc656 je       0x1403dc6ad
00000001403dc658 mov      rcx, qword ptr [rip + 0x5439a1]
00000001403dc65f lea      rsi, [rip + 0x54399a]
00000001403dc666 cmp      rcx, rsi
00000001403dc669 je       0x1403dc9b3
00000001403dc66f cmp      byte ptr [rcx + 0x169], 3
00000001403dc676 jb       0x1403dc9b3
00000001403dc67c bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc684 jae      0x1403dc9b3
00000001403dc68a mov      rcx, qword ptr [rcx + 0x158]
00000001403dc691 lea      edx, [r13 + 0x12]
00000001403dc695 lea      r9, [rip + 0x26fd24]
00000001403dc69c lea      r8, [rip + 0x2f8b75]
00000001403dc6a3 call     0x140008874
00000001403dc6a8 jmp      0x1403dc9b3
00000001403dc6ad mov      rcx, qword ptr [rip + 0x54394c]
00000001403dc6b4 lea      rsi, [rip + 0x543945]
00000001403dc6bb lea      rbp, [rip + 0x2f8b56]
00000001403dc6c2 cmp      rcx, rsi
00000001403dc6c5 je       0x1403dc6f5
00000001403dc6c7 cmp      byte ptr [rcx + 0x169], 4
00000001403dc6ce jb       0x1403dc6f5
00000001403dc6d0 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc6d8 jae      0x1403dc6f5
00000001403dc6da mov      rcx, qword ptr [rcx + 0x158]
00000001403dc6e1 lea      r9, [rip + 0x26fcd8]
00000001403dc6e8 mov      edx, 0x13
00000001403dc6ed mov      r8, rbp
00000001403dc6f0 call     0x140008874
00000001403dc6f5 mov      r9d, dword ptr [rdi + 0x1338]
00000001403dc6fc lea      eax, [r14*8]
00000001403dc704 mov      r15d, r14d
00000001403dc707 mov      dword ptr [rsp + 0x88], eax
00000001403dc70e lea      r14d, [r9 + rax]
00000001403dc712 mov      rcx, qword ptr [rip + 0x5438e7]
00000001403dc719 cmp      rcx, rsi
00000001403dc71c je       0x1403dc759
00000001403dc71e cmp      byte ptr [rcx + 0x169], 4
00000001403dc725 jb       0x1403dc759
00000001403dc727 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc72f jae      0x1403dc759
00000001403dc731 mov      eax, dword ptr [rdi + 0x1334]
00000001403dc737 mov      edx, 0x14
00000001403dc73c mov      rcx, qword ptr [rcx + 0x158]
00000001403dc743 mov      r8, rbp
00000001403dc746 mov      dword ptr [rsp + 0x28], eax
00000001403dc74a mov      eax, dword ptr [rdi + 0x133c]
00000001403dc750 mov      dword ptr [rsp + 0x20], eax
00000001403dc754 call     0x140001c34
00000001403dc759 test     r12b, r12b
00000001403dc75c je       0x1403dc7fa
00000001403dc762 mov      r13d, dword ptr [rdi + 0x133c]
00000001403dc769 mov      r12d, r14d
00000001403dc76c sub      r13d, r14d
00000001403dc76f mov      rcx, qword ptr [rip + 0x54388a]
00000001403dc776 cmp      rcx, rsi
00000001403dc779 je       0x1403dc7ee
00000001403dc77b cmp      byte ptr [rcx + 0x169], 4
00000001403dc782 jb       0x1403dc7a5
00000001403dc784 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc78c jae      0x1403dc7a5
00000001403dc78e mov      rcx, qword ptr [rcx + 0x158]
00000001403dc795 mov      edx, 0x15
00000001403dc79a mov      r9d, r15d
00000001403dc79d mov      r8, rbp
00000001403dc7a0 call     0x140001bb0
00000001403dc7a5 mov      rcx, qword ptr [rip + 0x543854]
00000001403dc7ac cmp      rcx, rsi
00000001403dc7af je       0x1403dc7ee
00000001403dc7b1 cmp      byte ptr [rcx + 0x169], 4
00000001403dc7b8 jb       0x1403dc7ee
00000001403dc7ba bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc7c2 jae      0x1403dc7ee
00000001403dc7c4 mov      eax, dword ptr [rdi + 0x133c]
00000001403dc7ca mov      edx, 0x16
00000001403dc7cf mov      r9d, dword ptr [rdi + 0x1338]
00000001403dc7d6 mov      r8, rbp
00000001403dc7d9 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc7e0 mov      dword ptr [rsp + 0x28], eax
00000001403dc7e4 mov      dword ptr [rsp + 0x20], r14d
00000001403dc7e9 call     0x140001c34
00000001403dc7ee mov      r14d, dword ptr [rdi + 0x1340]
00000001403dc7f5 jmp      0x1403dc894
00000001403dc7fa mov      r12d, dword ptr [rdi + 0x1338]
00000001403dc801 mov      rcx, qword ptr [rip + 0x5437f8]
00000001403dc808 cmp      rcx, rsi
00000001403dc80b je       0x1403dc87d
00000001403dc80d cmp      byte ptr [rcx + 0x169], 4
00000001403dc814 jb       0x1403dc834
00000001403dc816 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc81e jae      0x1403dc834
00000001403dc820 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc827 mov      edx, 0x17
00000001403dc82c mov      r8, rbp
00000001403dc82f call     0x140001b88
00000001403dc834 mov      rcx, qword ptr [rip + 0x5437c5]
00000001403dc83b cmp      rcx, rsi
00000001403dc83e je       0x1403dc87d
00000001403dc840 cmp      byte ptr [rcx + 0x169], 4
00000001403dc847 jb       0x1403dc87d
00000001403dc849 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc851 jae      0x1403dc87d
00000001403dc853 mov      eax, dword ptr [rdi + 0x133c]
00000001403dc859 mov      edx, 0x18
00000001403dc85e mov      r9d, dword ptr [rdi + 0x1338]
00000001403dc865 mov      r8, rbp
00000001403dc868 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc86f mov      dword ptr [rsp + 0x28], eax
00000001403dc873 mov      dword ptr [rsp + 0x20], r14d
00000001403dc878 call     0x140001c34
00000001403dc87d mov      eax, r14d
00000001403dc880 mov      ecx, r12d
00000001403dc883 sub      ecx, r14d
00000001403dc886 sub      r14d, r12d
00000001403dc889 cmp      r12d, eax
00000001403dc88c cmovae   r14d, ecx
00000001403dc890 shr      r14d, 3
00000001403dc894 mov      eax, 0x135c
00000001403dc899 mov      rcx, rdi
00000001403dc89c mov      dword ptr [rcx + rax], r14d
00000001403dc8a0 mov      rcx, qword ptr [rip + 0x543759]
00000001403dc8a7 cmp      rcx, rsi
00000001403dc8aa je       0x1403dc909
00000001403dc8ac cmp      byte ptr [rcx + 0x169], 4
00000001403dc8b3 jb       0x1403dc8d6
00000001403dc8b5 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc8bd jae      0x1403dc8d6
00000001403dc8bf mov      rcx, qword ptr [rcx + 0x158]
00000001403dc8c6 mov      edx, 0x19
00000001403dc8cb mov      r9d, r14d
00000001403dc8ce mov      r8, rbp
00000001403dc8d1 call     0x140001bb0
00000001403dc8d6 mov      rcx, qword ptr [rip + 0x543723]
00000001403dc8dd cmp      rcx, rsi
00000001403dc8e0 je       0x1403dc909
00000001403dc8e2 cmp      byte ptr [rcx + 0x169], 4
00000001403dc8e9 jb       0x1403dc909
00000001403dc8eb bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc8f3 jae      0x1403dc909
00000001403dc8f5 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc8fc mov      edx, 0x1a
00000001403dc901 mov      r8, rbp
00000001403dc904 call     0x140001b88
00000001403dc909 mov      r14, qword ptr [rdi + 0x1328]
00000001403dc910 test     r14, r14
00000001403dc913 je       0x1403dc9b3
00000001403dc919 cmp      byte ptr [rsp + 0x80], 0
00000001403dc921 mov      r15, qword ptr [rsp + 0x70]
00000001403dc926 je       0x1403dc948
00000001403dc928 mov      rcx, qword ptr [r15 + 8]
00000001403dc92c mov      r9d, r13d
00000001403dc92f mov      r8, r14
00000001403dc932 mov      dword ptr [rsp + 0x20], 1
00000001403dc93a mov      edx, r12d
00000001403dc93d call     0x14027bd40
00000001403dc942 mov      eax, r13d
00000001403dc945 add      r14, rax
00000001403dc948 mov      r9d, dword ptr [rsp + 0x88]
00000001403dc950 mov      r8, r14
00000001403dc953 mov      edx, dword ptr [rdi + 0x1338]
00000001403dc959 mov      rcx, qword ptr [r15 + 8]
00000001403dc95d mov      dword ptr [rsp + 0x20], 1
00000001403dc965 call     0x14027bd40
00000001403dc96a mov      rcx, r15
00000001403dc96d call     0x1403dc180
00000001403dc972 mov      rcx, qword ptr [rip + 0x543687]
00000001403dc979 cmp      rcx, rsi
00000001403dc97c je       0x1403dc9b3
00000001403dc97e cmp      byte ptr [rcx + 0x169], 4
00000001403dc985 jb       0x1403dc9b3
00000001403dc987 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc98f jae      0x1403dc9b3
00000001403dc991 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc998 mov      edx, 0x1c
00000001403dc99d movzx    r9d, al
00000001403dc9a1 mov      r8, rbp
00000001403dc9a4 mov      eax, dword ptr [rdi + 0x1354]
00000001403dc9aa mov      dword ptr [rsp + 0x20], eax
00000001403dc9ae call     0x140001bec
00000001403dc9b3 mov      rbx, qword ptr [rsp + 0x78]
00000001403dc9b8 add      rsp, 0x30
00000001403dc9bc pop      r15
00000001403dc9be pop      r14
00000001403dc9c0 pop      r13
00000001403dc9c2 pop      r12
00000001403dc9c4 pop      rdi
00000001403dc9c5 pop      rsi
00000001403dc9c6 pop      rbp
00000001403dc9c7 ret      