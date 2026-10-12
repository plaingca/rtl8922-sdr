00000001403dcd40 mov      qword ptr [rsp + 8], rbx
00000001403dcd45 push     rdi
00000001403dcd46 sub      rsp, 0x30
00000001403dcd4a mov      rbx, qword ptr [rcx + 0x9a0]
00000001403dcd51 mov      rdi, rcx
00000001403dcd54 mov      rcx, qword ptr [rip + 0x5432a5]
00000001403dcd5b lea      rax, [rip + 0x54329e]
00000001403dcd62 cmp      rcx, rax
00000001403dcd65 je       0x1403dcd9b
00000001403dcd67 cmp      byte ptr [rcx + 0x1e9], 4
00000001403dcd6e jb       0x1403dcd9b
00000001403dcd70 test     dword ptr [rcx + 0x1ec], 0x20000000
00000001403dcd7a je       0x1403dcd9b
00000001403dcd7c mov      rcx, qword ptr [rcx + 0x1d8]
00000001403dcd83 lea      r9, [rip + 0x270596]
00000001403dcd8a mov      edx, 0x4a
00000001403dcd8f lea      r8, [rip + 0x2f8482]
00000001403dcd96 call     0x140008874
00000001403dcd9b and      dword ptr [rbx + 0x1518], 0
00000001403dcda2 lea      rax, [rip + 0x270597]
00000001403dcda9 mov      dword ptr [rbx + 0x1514], 4
00000001403dcdb3 lea      r8, [rip - 0x50ea]
00000001403dcdba mov      rcx, qword ptr [rdi + 8]
00000001403dcdbe lea      rdx, [rbx + 0x1490]
00000001403dcdc5 mov      r9, rdi
00000001403dcdc8 mov      qword ptr [rsp + 0x20], rax
00000001403dcdcd mov      rcx, qword ptr [rcx + 0x1498]
00000001403dcdd4 call     0x1405c13d8
00000001403dcdd9 mov      rbx, qword ptr [rsp + 0x40]
00000001403dcdde add      rsp, 0x30
00000001403dcde2 pop      rdi
00000001403dcde3 ret      