00000001405c727c test     rcx, rcx
00000001405c727f je       0x1405c731b
00000001405c7285 mov      qword ptr [rsp + 8], rbx
00000001405c728a push     rdi
00000001405c728b sub      rsp, 0x20
00000001405c728f cmp      byte ptr [rcx + 0x38], 0
00000001405c7293 mov      rdi, rcx
00000001405c7296 je       0x1405c7311
00000001405c7298 mov      rcx, qword ptr [rip + 0x358d61]
00000001405c729f lea      rax, [rip + 0x358d5a]
00000001405c72a6 cmp      rcx, rax
00000001405c72a9 je       0x1405c72d3
00000001405c72ab cmp      byte ptr [rcx + 0x29], 4
00000001405c72af jb       0x1405c72d3
00000001405c72b1 test     dword ptr [rcx + 0x2c], 0x40000000
00000001405c72b8 je       0x1405c72d3
00000001405c72ba mov      rcx, qword ptr [rcx + 0x18]
00000001405c72be lea      r9, [rdi + 0x3a]
00000001405c72c2 mov      edx, 0x13
00000001405c72c7 lea      r8, [rip + 0x33efe2]
00000001405c72ce call     0x140008874
00000001405c72d3 lea      rdx, [rip + 0xb9fe6]
00000001405c72da lea      rcx, [rdi + 0x10]
00000001405c72de call     0x140031478
00000001405c72e3 lea      rdx, [rip + 0xb9fd6]
00000001405c72ea mov      byte ptr [rdi + 0x39], 1
00000001405c72ee lea      rcx, [rdi + 0x10]
00000001405c72f2 call     0x140031684
00000001405c72f7 mov      rax, qword ptr [rdi + 0x30]
00000001405c72fb test     rax, rax
00000001405c72fe je       0x1405c7309
00000001405c7300 mov      rcx, rdi
00000001405c7303 call     qword ptr [rip + 0xbcfef]
00000001405c7309 mov      rcx, rdi
00000001405c730c call     0x1405c79cc
00000001405c7311 mov      rbx, qword ptr [rsp + 0x30]
00000001405c7316 add      rsp, 0x20
00000001405c731a pop      rdi
00000001405c731b ret      