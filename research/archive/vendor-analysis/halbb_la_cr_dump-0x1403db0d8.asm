00000001403db0d8 mov      qword ptr [rsp + 8], rbx
00000001403db0dd push     rdi
00000001403db0de sub      rsp, 0x20
00000001403db0e2 mov      rbx, qword ptr [rcx + 0x9a0]
00000001403db0e9 mov      rdi, rcx
00000001403db0ec mov      rcx, qword ptr [rip + 0x544f0d]
00000001403db0f3 lea      rax, [rip + 0x544f06]
00000001403db0fa cmp      rcx, rax
00000001403db0fd je       0x1403db133
00000001403db0ff cmp      byte ptr [rcx + 0x169], 4
00000001403db106 jb       0x1403db133
00000001403db108 test     dword ptr [rcx + 0x16c], 0x1000
00000001403db112 je       0x1403db133
00000001403db114 mov      rcx, qword ptr [rcx + 0x158]
00000001403db11b lea      r9, [rip + 0x27136e]
00000001403db122 mov      edx, 0x46
00000001403db127 lea      r8, [rip + 0x2fa0ea]
00000001403db12e call     0x140008874
00000001403db133 mov      r8d, 0xba
00000001403db139 lea      rdx, [rbx + 0x1040]
00000001403db140 mov      rcx, rdi
00000001403db143 mov      rbx, qword ptr [rsp + 0x30]
00000001403db148 add      rsp, 0x20
00000001403db14c pop      rdi
00000001403db14d jmp      0x1403c9c1c