00000001403baed8 mov      qword ptr [rsp + 8], rbx
00000001403baedd mov      qword ptr [rsp + 0x10], rdi
00000001403baee2 push     r12
00000001403baee4 sub      rsp, 0x30
00000001403baee8 mov      rbx, rdx
00000001403baeeb mov      rcx, qword ptr [rip + 0x56510e]
00000001403baef2 lea      rdi, [rip + 0x565107]
00000001403baef9 cmp      rcx, rdi
00000001403baefc je       0x1403bafd0
00000001403baf02 cmp      byte ptr [rcx + 0x169], 4
00000001403baf09 lea      r12, [rip + 0x28e970]
00000001403baf10 jb       0x1403baf48
00000001403baf12 mov      eax, dword ptr [rcx + 0x16c]
00000001403baf18 test     al, 1
00000001403baf1a je       0x1403baf48
00000001403baf1c movzx    eax, byte ptr [rdx + 0xc]
00000001403baf20 lea      r9, [rip + 0x253469]
00000001403baf27 mov      rcx, qword ptr [rcx + 0x158]
00000001403baf2e lea      r8, [rip + 0x3199d3]
00000001403baf35 mov      dword ptr [rsp + 0x28], eax
00000001403baf39 mov      edx, 0x1c
00000001403baf3e mov      qword ptr [rsp + 0x20], r12
00000001403baf43 call     0x14003ca14
00000001403baf48 mov      rcx, qword ptr [rip + 0x5650b1]
00000001403baf4f cmp      rcx, rdi
00000001403baf52 je       0x1403bafd0
00000001403baf54 cmp      byte ptr [rcx + 0x169], 4
00000001403baf5b jb       0x1403baf92
00000001403baf5d mov      eax, dword ptr [rcx + 0x16c]
00000001403baf63 test     al, 1
00000001403baf65 je       0x1403baf92
00000001403baf67 mov      eax, dword ptr [rbx + 4]
00000001403baf6a lea      r9, [rip + 0x25341f]
00000001403baf71 mov      rcx, qword ptr [rcx + 0x158]
00000001403baf78 lea      r8, [rip + 0x319989]
00000001403baf7f mov      dword ptr [rsp + 0x28], eax
00000001403baf83 mov      edx, 0x1d
00000001403baf88 mov      qword ptr [rsp + 0x20], r12
00000001403baf8d call     0x14003ca14
00000001403baf92 mov      rcx, qword ptr [rip + 0x565067]
00000001403baf99 cmp      rcx, rdi
00000001403baf9c je       0x1403bafd0
00000001403baf9e cmp      byte ptr [rcx + 0x169], 4
00000001403bafa5 jb       0x1403bafd0
00000001403bafa7 mov      eax, dword ptr [rcx + 0x16c]
00000001403bafad test     al, 1
00000001403bafaf je       0x1403bafd0
00000001403bafb1 mov      rcx, qword ptr [rcx + 0x158]
00000001403bafb8 lea      r9, [rip + 0x2533d1]
00000001403bafbf mov      edx, 0x1e
00000001403bafc4 lea      r8, [rip + 0x31993d]
00000001403bafcb call     0x140008874
00000001403bafd0 mov      rbx, qword ptr [rsp + 0x40]
00000001403bafd5 xor      eax, eax
00000001403bafd7 mov      rdi, qword ptr [rsp + 0x48]
00000001403bafdc add      rsp, 0x30
00000001403bafe0 pop      r12
00000001403bafe2 ret      