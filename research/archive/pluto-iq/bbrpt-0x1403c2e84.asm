00000001403c2e84 mov      qword ptr [rsp + 8], rbx
00000001403c2e89 push     rsi
00000001403c2e8a sub      rsp, 0x20
00000001403c2e8e test     byte ptr [rcx + 0x1632], 0x20
00000001403c2e95 mov      rbx, rcx
00000001403c2e98 je       0x1403c2f2c
00000001403c2e9e cmp      dword ptr [rcx + 0x14bc], 0
00000001403c2ea5 jne      0x1403c2f2c
00000001403c2eab mov      rcx, qword ptr [rip + 0x55d14e]
00000001403c2eb2 lea      rsi, [rip + 0x55d147]
00000001403c2eb9 cmp      rcx, rsi
00000001403c2ebc je       0x1403c2eeb
00000001403c2ebe cmp      byte ptr [rcx + 0x1e9], 4
00000001403c2ec5 jb       0x1403c2eeb
00000001403c2ec7 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403c2ed1 je       0x1403c2eeb
00000001403c2ed3 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c2eda lea      r8, [rip + 0x31229f]
00000001403c2ee1 mov      edx, 0x96
00000001403c2ee6 call     0x140001b88
00000001403c2eeb mov      rcx, rbx
00000001403c2eee call     0x1403c2bb0
00000001403c2ef3 mov      rcx, qword ptr [rip + 0x55d106]
00000001403c2efa cmp      rcx, rsi
00000001403c2efd je       0x1403c2f2c
00000001403c2eff cmp      byte ptr [rcx + 0x1e9], 4
00000001403c2f06 jb       0x1403c2f2c
00000001403c2f08 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403c2f12 je       0x1403c2f2c
00000001403c2f14 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c2f1b lea      r8, [rip + 0x31225e]
00000001403c2f22 mov      edx, 0x97
00000001403c2f27 call     0x140001b88
00000001403c2f2c mov      rbx, qword ptr [rsp + 0x30]
00000001403c2f31 add      rsp, 0x20
00000001403c2f35 pop      rsi
00000001403c2f36 ret      