00000001400f57c4 push     rbx
00000001400f57c6 sub      rsp, 0x30
00000001400f57ca movzx    r11d, byte ptr [rdx]
00000001400f57ce mov      ebx, 1
00000001400f57d3 mov      r8d, r11d
00000001400f57d6 mov      r10, rdx
00000001400f57d9 mov      r9, rcx
00000001400f57dc sub      r8d, ebx
00000001400f57df je       0x1400f599e
00000001400f57e5 sub      r8d, ebx
00000001400f57e8 je       0x1400f5994
00000001400f57ee sub      r8d, ebx
00000001400f57f1 je       0x1400f598a
00000001400f57f7 sub      r8d, ebx
00000001400f57fa je       0x1400f5936
00000001400f5800 sub      r8d, ebx
00000001400f5803 je       0x1400f58d6
00000001400f5809 sub      r8d, ebx
00000001400f580c je       0x1400f5876
00000001400f580e cmp      r8d, ebx
00000001400f5811 je       0x1400f5865
00000001400f5813 mov      rcx, qword ptr [rip + 0x82a7e6]
00000001400f581a lea      rax, [rip + 0x82a7df]
00000001400f5821 cmp      rcx, rax
00000001400f5824 je       0x1400f59ac
00000001400f582a cmp      byte ptr [rcx + 0x29], 3
00000001400f582e jb       0x1400f59ac
00000001400f5834 mov      eax, dword ptr [rcx + 0x2c]
00000001400f5837 test     al, al
00000001400f5839 jns      0x1400f59ac
00000001400f583f mov      edx, 0x85
00000001400f5844 mov      dword ptr [rsp + 0x20], r11d
00000001400f5849 lea      r9, [rip + 0x50cbd0]
00000001400f5850 mov      rcx, qword ptr [rcx + 0x18]
00000001400f5854 lea      r8, [rip + 0x59dad5]
00000001400f585b call     0x1400088d8
00000001400f5860 jmp      0x1400f59ac
00000001400f5865 mov      dl, byte ptr [rdx + 1]
00000001400f5868 mov      r8b, byte ptr [r10 + 2]
00000001400f586c call     0x1400f3e24
00000001400f5871 jmp      0x1400f59aa
00000001400f5876 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400f587d mov      rdx, qword ptr [r9 + 0xab230]
00000001400f5884 mov      rcx, qword ptr [rax]
00000001400f5887 mov      rcx, qword ptr [rcx + 0x20708]
00000001400f588e call     0x14023183c
00000001400f5893 mov      ebx, eax
00000001400f5895 mov      rcx, qword ptr [rip + 0x82a764]
00000001400f589c lea      rax, [rip + 0x82a75d]
00000001400f58a3 cmp      rcx, rax
00000001400f58a6 je       0x1400f59ac
00000001400f58ac cmp      byte ptr [rcx + 0x29], 4
00000001400f58b0 jb       0x1400f59ac
00000001400f58b6 mov      eax, dword ptr [rcx + 0x2c]
00000001400f58b9 test     al, al
00000001400f58bb jns      0x1400f59ac
00000001400f58c1 mov      edx, 0x80
00000001400f58c6 mov      dword ptr [rsp + 0x20], ebx
00000001400f58ca lea      r9, [rip + 0x50cb0f]
00000001400f58d1 jmp      0x1400f5850
00000001400f58d6 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400f58dd mov      rdx, qword ptr [r9 + 0xab230]
00000001400f58e4 mov      rcx, qword ptr [rax]
00000001400f58e7 mov      rcx, qword ptr [rcx + 0x20708]
00000001400f58ee call     0x1402315d8
00000001400f58f3 mov      ebx, eax
00000001400f58f5 mov      rcx, qword ptr [rip + 0x82a704]
00000001400f58fc lea      rax, [rip + 0x82a6fd]
00000001400f5903 cmp      rcx, rax
00000001400f5906 je       0x1400f59ac
00000001400f590c cmp      byte ptr [rcx + 0x29], 4
00000001400f5910 jb       0x1400f59ac
00000001400f5916 mov      eax, dword ptr [rcx + 0x2c]
00000001400f5919 test     al, al
00000001400f591b jns      0x1400f59ac
00000001400f5921 mov      edx, 0x7f
00000001400f5926 mov      dword ptr [rsp + 0x20], ebx
00000001400f592a lea      r9, [rip + 0x50ca8f]
00000001400f5931 jmp      0x1400f5850
00000001400f5936 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400f593d mov      rdx, qword ptr [r9 + 0xab230]
00000001400f5944 mov      rcx, qword ptr [rax]
00000001400f5947 mov      rcx, qword ptr [rcx + 0x20708]
00000001400f594e call     0x140232278
00000001400f5953 mov      ebx, eax
00000001400f5955 mov      rcx, qword ptr [rip + 0x82a6a4]
00000001400f595c lea      rax, [rip + 0x82a69d]
00000001400f5963 cmp      rcx, rax
00000001400f5966 je       0x1400f59ac
00000001400f5968 cmp      byte ptr [rcx + 0x29], 4
00000001400f596c jb       0x1400f59ac
00000001400f596e mov      eax, dword ptr [rcx + 0x2c]
00000001400f5971 test     al, al
00000001400f5973 jns      0x1400f59ac
00000001400f5975 mov      edx, 0x7e
00000001400f597a mov      dword ptr [rsp + 0x20], ebx
00000001400f597e lea      r9, [rip + 0x50ca1b]
00000001400f5985 jmp      0x1400f5850
00000001400f598a mov      dl, byte ptr [rdx + 1]
00000001400f598d call     0x1400f412c
00000001400f5992 jmp      0x1400f59aa
00000001400f5994 mov      dl, byte ptr [rdx + 1]
00000001400f5997 call     0x1400f41ec
00000001400f599c jmp      0x1400f59aa
00000001400f599e mov      dl, byte ptr [rdx + 1]
00000001400f59a1 mov      r8b, byte ptr [r10 + 2]
00000001400f59a5 call     0x1400f3f1c
00000001400f59aa mov      ebx, eax
00000001400f59ac mov      eax, ebx
00000001400f59ae add      rsp, 0x30
00000001400f59b2 pop      rbx
00000001400f59b3 ret      