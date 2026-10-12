000000014001caac mov      qword ptr [rsp + 8], rbx
000000014001cab1 push     rsi
000000014001cab2 sub      rsp, 0x20
000000014001cab6 mov      rbx, rcx
000000014001cab9 mov      rcx, qword ptr [rip + 0x903540]
000000014001cac0 lea      rsi, [rip + 0x903539]
000000014001cac7 cmp      rcx, rsi
000000014001caca je       0x14001caee
000000014001cacc cmp      byte ptr [rcx + 0x29], 3
000000014001cad0 jb       0x14001caee
000000014001cad2 mov      eax, dword ptr [rcx + 0x2c]
000000014001cad5 test     al, 2
000000014001cad7 je       0x14001caee
000000014001cad9 mov      rcx, qword ptr [rcx + 0x18]
000000014001cadd lea      r8, [rip + 0x66a0b4]
000000014001cae4 mov      edx, 0x11a
000000014001cae9 call     0x140001b88
000000014001caee mov      edx, 0x88
000000014001caf3 mov      rcx, rbx
000000014001caf6 call     0x14002fb4c
000000014001cafb and      al, 0xbf
000000014001cafd mov      edx, 0x88
000000014001cb02 mov      r8b, al
000000014001cb05 mov      rcx, rbx
000000014001cb08 call     0x140030028
000000014001cb0d mov      edx, 0xc04
000000014001cb12 mov      r8d, 0x18008000
000000014001cb18 mov      rcx, rbx
000000014001cb1b call     0x140030314
000000014001cb20 mov      edx, 0x40000
000000014001cb25 mov      rcx, rbx
000000014001cb28 call     0x14002fe34
000000014001cb2d mov      rcx, qword ptr [rip + 0x9034cc]
000000014001cb34 cmp      rcx, rsi
000000014001cb37 je       0x14001cb5b
000000014001cb39 cmp      byte ptr [rcx + 0x29], 3
000000014001cb3d jb       0x14001cb5b
000000014001cb3f mov      eax, dword ptr [rcx + 0x2c]
000000014001cb42 test     al, 2
000000014001cb44 je       0x14001cb5b
000000014001cb46 mov      rcx, qword ptr [rcx + 0x18]
000000014001cb4a lea      r8, [rip + 0x66a047]
000000014001cb51 mov      edx, 0x11b
000000014001cb56 call     0x140001b88
000000014001cb5b mov      rbx, qword ptr [rsp + 0x30]
000000014001cb60 add      rsp, 0x20
000000014001cb64 pop      rsi
000000014001cb65 ret      