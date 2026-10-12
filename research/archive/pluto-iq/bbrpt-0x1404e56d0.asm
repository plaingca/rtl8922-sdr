00000001404e56d0 mov      qword ptr [rsp + 0x18], rbx
00000001404e56d5 mov      qword ptr [rsp + 0x20], rbp
00000001404e56da push     rsi
00000001404e56db push     rdi
00000001404e56dc push     r12
00000001404e56de push     r14
00000001404e56e0 push     r15
00000001404e56e2 sub      rsp, 0x70
00000001404e56e6 mov      rax, qword ptr [rip + 0x441d73]
00000001404e56ed xor      rax, rsp
00000001404e56f0 mov      qword ptr [rsp + 0x60], rax
00000001404e56f5 xor      r12d, r12d
00000001404e56f8 mov      rdi, rdx
00000001404e56fb movzx    edx, byte ptr [rdx]
00000001404e56fe mov      r14, rcx
00000001404e5701 mov      al, dl
00000001404e5703 mov      word ptr [rsp + 0x58], r12w
00000001404e5709 add      al, al
00000001404e570b lea      ebp, [rax + rdx]
00000001404e570e add      bpl, bpl
00000001404e5711 movzx    r15d, bpl
00000001404e5715 mov      rcx, qword ptr [rip + 0x43a8e4]
00000001404e571c lea      rbx, [rip + 0x43a8dd]
00000001404e5723 cmp      rcx, rbx
00000001404e5726 je       0x1404e5760
00000001404e5728 cmp      byte ptr [rcx + 0x169], 5
00000001404e572f jb       0x1404e5760
00000001404e5731 mov      eax, dword ptr [rcx + 0x16c]
00000001404e5737 test     al, 8
00000001404e5739 je       0x1404e5760
00000001404e573b mov      rcx, qword ptr [rcx + 0x158]
00000001404e5742 lea      r9, [rip + 0x177697]
00000001404e5749 mov      eax, edx
00000001404e574b lea      r8, [rip + 0x4048ce]
00000001404e5752 mov      edx, 0x94
00000001404e5757 mov      dword ptr [rsp + 0x20], eax
00000001404e575b call     0x1400088d8
00000001404e5760 mov      esi, r12d
00000001404e5763 cmp      byte ptr [rdi], r12b
00000001404e5766 jbe      0x1404e57f6
00000001404e576c mov      rcx, qword ptr [rip + 0x43a88d]
00000001404e5773 cmp      rcx, rbx
00000001404e5776 je       0x1404e57e9
00000001404e5778 cmp      byte ptr [rcx + 0x169], 5
00000001404e577f jb       0x1404e57e9
00000001404e5781 mov      eax, dword ptr [rcx + 0x16c]
00000001404e5787 test     al, 8
00000001404e5789 je       0x1404e57e9
00000001404e578b mov      rcx, qword ptr [rcx + 0x158]
00000001404e5792 mov      eax, esi
00000001404e5794 lea      rdx, [rax + rax*2]
00000001404e5798 movzx    r8d, byte ptr [rdi + rdx*2 + 5]
00000001404e579e movzx    eax, byte ptr [rdi + rdx*2 + 6]
00000001404e57a3 movzx    r10d, byte ptr [rdi + rdx*2 + 4]
00000001404e57a9 movzx    r11d, byte ptr [rdi + rdx*2 + 3]
00000001404e57af movzx    ebx, byte ptr [rdi + rdx*2 + 2]
00000001404e57b4 movzx    r9d, byte ptr [rdi + rdx*2 + 1]
00000001404e57ba mov      edx, 0x95
00000001404e57bf mov      dword ptr [rsp + 0x40], eax
00000001404e57c3 mov      dword ptr [rsp + 0x38], r8d
00000001404e57c8 lea      r8, [rip + 0x404851]
00000001404e57cf mov      dword ptr [rsp + 0x30], r10d
00000001404e57d4 mov      dword ptr [rsp + 0x28], r11d
00000001404e57d9 mov      dword ptr [rsp + 0x20], ebx
00000001404e57dd call     0x1400087f4
00000001404e57e2 lea      rbx, [rip + 0x43a817]
00000001404e57e9 movzx    eax, byte ptr [rdi]
00000001404e57ec inc      esi
00000001404e57ee cmp      esi, eax
00000001404e57f0 jb       0x1404e576c
00000001404e57f6 mov      ecx, 4
00000001404e57fb movzx    eax, bpl
00000001404e57ff add      ax, cx
00000001404e5802 mov      dword ptr [rsp + 0x54], 0x10010
00000001404e580a mov      word ptr [rsp + 0x50], ax
00000001404e580f mov      rax, qword ptr [r14 + 0x18]
00000001404e5813 mov      word ptr [rsp + 0x52], 0x101
00000001404e581a lea      edx, [rcx + r15]
00000001404e581e mov      rcx, qword ptr [r14 + 8]
00000001404e5822 mov      rax, qword ptr [rax + 0x98]
00000001404e5829 call     qword ptr [rip + 0x19eac9]
00000001404e582f mov      rsi, rax
00000001404e5832 test     rax, rax
00000001404e5835 jne      0x1404e587f
00000001404e5837 mov      rcx, qword ptr [rip + 0x43a7c2]
00000001404e583e cmp      rcx, rbx
00000001404e5841 je       0x1404e5875
00000001404e5843 cmp      byte ptr [rcx + 0x169], 2
00000001404e584a jb       0x1404e5875
00000001404e584c mov      eax, dword ptr [rcx + 0x16c]
00000001404e5852 test     al, 8
00000001404e5854 je       0x1404e5875
00000001404e5856 mov      rcx, qword ptr [rcx + 0x158]
00000001404e585d lea      r9, [rip + 0x17757c]
00000001404e5864 mov      edx, 0x96
00000001404e5869 lea      r8, [rip + 0x4047b0]
00000001404e5870 call     0x140008874
00000001404e5875 mov      eax, 9
00000001404e587a jmp      0x1404e5937
00000001404e587f movzx    eax, byte ptr [rdi]
00000001404e5882 lea      rdx, [rsi + 4]
00000001404e5886 mov      dword ptr [rsi], eax
00000001404e5888 mov      ecx, r12d
00000001404e588b movzx    r8d, bpl
00000001404e588f test     bpl, bpl
00000001404e5892 je       0x1404e58bf
00000001404e5894 mov      eax, r8d
00000001404e5897 mov      r9d, ecx
00000001404e589a sub      eax, ecx
00000001404e589c cmp      eax, 2
00000001404e589f je       0x1404e58aa
00000001404e58a1 mov      eax, dword ptr [r9 + rdi + 1]
00000001404e58a6 mov      dword ptr [rdx], eax
00000001404e58a8 jmp      0x1404e58b3
00000001404e58aa movzx    eax, word ptr [r9 + rdi + 1]
00000001404e58b0 mov      word ptr [rdx], ax
00000001404e58b3 add      ecx, 4
00000001404e58b6 add      rdx, 4
00000001404e58ba cmp      ecx, r8d
00000001404e58bd jb       0x1404e5894
00000001404e58bf mov      r8, rsi
00000001404e58c2 lea      rdx, [rsp + 0x50]
00000001404e58c7 mov      rcx, r14
00000001404e58ca call     0x14041621c
00000001404e58cf mov      ebx, eax
00000001404e58d1 test     eax, eax
00000001404e58d3 je       0x1404e5917
00000001404e58d5 mov      rcx, qword ptr [rip + 0x43a724]
00000001404e58dc lea      rax, [rip + 0x43a71d]
00000001404e58e3 cmp      rcx, rax
00000001404e58e6 je       0x1404e5917
00000001404e58e8 cmp      byte ptr [rcx + 0x169], 2
00000001404e58ef jb       0x1404e5917
00000001404e58f1 mov      edx, dword ptr [rcx + 0x16c]
00000001404e58f7 test     dl, 8
00000001404e58fa je       0x1404e5917
00000001404e58fc mov      rcx, qword ptr [rcx + 0x158]
00000001404e5903 lea      r8, [rip + 0x404716]
00000001404e590a mov      edx, 0x97
00000001404e590f mov      r9d, ebx
00000001404e5912 call     0x140001bb0
00000001404e5917 mov      rax, qword ptr [r14 + 0x18]
00000001404e591b mov      rdx, rsi
00000001404e591e movzx    r8d, word ptr [rsp + 0x50]
00000001404e5924 mov      rcx, qword ptr [r14 + 8]
00000001404e5928 mov      rax, qword ptr [rax + 0x90]
00000001404e592f call     qword ptr [rip + 0x19e9c3]
00000001404e5935 mov      eax, ebx
00000001404e5937 mov      rcx, qword ptr [rsp + 0x60]
00000001404e593c xor      rcx, rsp
00000001404e593f call     0x1405f45b0
00000001404e5944 lea      r11, [rsp + 0x70]
00000001404e5949 mov      rbx, qword ptr [r11 + 0x40]
00000001404e594d mov      rbp, qword ptr [r11 + 0x48]
00000001404e5951 mov      rsp, r11
00000001404e5954 pop      r15
00000001404e5956 pop      r14
00000001404e5958 pop      r12
00000001404e595a pop      rdi
00000001404e595b pop      rsi
00000001404e595c ret      