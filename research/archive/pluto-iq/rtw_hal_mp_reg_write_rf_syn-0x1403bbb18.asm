00000001403bbb18 mov      qword ptr [rsp + 8], rbx
00000001403bbb1d mov      qword ptr [rsp + 0x10], rdi
00000001403bbb22 push     r12
00000001403bbb24 sub      rsp, 0x30
00000001403bbb28 mov      rbx, rdx
00000001403bbb2b mov      rcx, qword ptr [rip + 0x5644ce]
00000001403bbb32 lea      rdi, [rip + 0x5644c7]
00000001403bbb39 cmp      rcx, rdi
00000001403bbb3c je       0x1403bbc5e
00000001403bbb42 cmp      byte ptr [rcx + 0x169], 4
00000001403bbb49 lea      r12, [rip + 0x28dd50]
00000001403bbb50 jb       0x1403bbb88
00000001403bbb52 mov      eax, dword ptr [rcx + 0x16c]
00000001403bbb58 test     al, 1
00000001403bbb5a je       0x1403bbb88
00000001403bbb5c movzx    eax, byte ptr [rdx + 0xc]
00000001403bbb60 lea      r9, [rip + 0x252829]
00000001403bbb67 mov      rcx, qword ptr [rcx + 0x158]
00000001403bbb6e lea      r8, [rip + 0x318d93]
00000001403bbb75 mov      dword ptr [rsp + 0x28], eax
00000001403bbb79 mov      edx, 0x20
00000001403bbb7e mov      qword ptr [rsp + 0x20], r12
00000001403bbb83 call     0x14003ca14
00000001403bbb88 mov      rcx, qword ptr [rip + 0x564471]
00000001403bbb8f cmp      rcx, rdi
00000001403bbb92 je       0x1403bbc5e
00000001403bbb98 cmp      byte ptr [rcx + 0x169], 4
00000001403bbb9f jb       0x1403bbbd6
00000001403bbba1 mov      eax, dword ptr [rcx + 0x16c]
00000001403bbba7 test     al, 1
00000001403bbba9 je       0x1403bbbd6
00000001403bbbab mov      eax, dword ptr [rbx + 4]
00000001403bbbae lea      r9, [rip + 0x2527db]
00000001403bbbb5 mov      rcx, qword ptr [rcx + 0x158]
00000001403bbbbc lea      r8, [rip + 0x318d45]
00000001403bbbc3 mov      dword ptr [rsp + 0x28], eax
00000001403bbbc7 mov      edx, 0x21
00000001403bbbcc mov      qword ptr [rsp + 0x20], r12
00000001403bbbd1 call     0x14003ca14
00000001403bbbd6 mov      rcx, qword ptr [rip + 0x564423]
00000001403bbbdd cmp      rcx, rdi
00000001403bbbe0 je       0x1403bbc5e
00000001403bbbe2 cmp      byte ptr [rcx + 0x169], 4
00000001403bbbe9 jb       0x1403bbc20
00000001403bbbeb mov      eax, dword ptr [rcx + 0x16c]
00000001403bbbf1 test     al, 1
00000001403bbbf3 je       0x1403bbc20
00000001403bbbf5 mov      eax, dword ptr [rbx + 8]
00000001403bbbf8 lea      r9, [rip + 0x252791]
00000001403bbbff mov      rcx, qword ptr [rcx + 0x158]
00000001403bbc06 lea      r8, [rip + 0x318cfb]
00000001403bbc0d mov      dword ptr [rsp + 0x28], eax
00000001403bbc11 mov      edx, 0x22
00000001403bbc16 mov      qword ptr [rsp + 0x20], r12
00000001403bbc1b call     0x14003ca14
00000001403bbc20 mov      rcx, qword ptr [rip + 0x5643d9]
00000001403bbc27 cmp      rcx, rdi
00000001403bbc2a je       0x1403bbc5e
00000001403bbc2c cmp      byte ptr [rcx + 0x169], 4
00000001403bbc33 jb       0x1403bbc5e
00000001403bbc35 mov      eax, dword ptr [rcx + 0x16c]
00000001403bbc3b test     al, 1
00000001403bbc3d je       0x1403bbc5e
00000001403bbc3f mov      rcx, qword ptr [rcx + 0x158]
00000001403bbc46 lea      r9, [rip + 0x252743]
00000001403bbc4d mov      edx, 0x23
00000001403bbc52 lea      r8, [rip + 0x318caf]
00000001403bbc59 call     0x140008874
00000001403bbc5e mov      rbx, qword ptr [rsp + 0x40]
00000001403bbc63 xor      eax, eax
00000001403bbc65 mov      rdi, qword ptr [rsp + 0x48]
00000001403bbc6a add      rsp, 0x30
00000001403bbc6e pop      r12
00000001403bbc70 ret      