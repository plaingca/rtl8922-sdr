000000014002a040 push     rbx
000000014002a042 sub      rsp, 0x20
000000014002a046 mov      rax, qword ptr [rip + 0xcaabab]
000000014002a04d mov      r8, qword ptr [rip + 0x8fbd64]
000000014002a054 mov      rcx, qword ptr [rip + 0xcaabcd]
000000014002a05b mov      rax, qword ptr [rax + 0x650]
000000014002a062 call     qword ptr [rip + 0x65a290]
000000014002a068 mov      rbx, rax
000000014002a06b mov      rcx, qword ptr [rip + 0x8f5f8e]
000000014002a072 lea      rax, [rip + 0x8f5f87]
000000014002a079 cmp      rcx, rax
000000014002a07c je       0x14002a0a7
000000014002a07e cmp      byte ptr [rcx + 0x29], 4
000000014002a082 jb       0x14002a0a7
000000014002a084 mov      eax, dword ptr [rcx + 0x2c]
000000014002a087 test     al, 2
000000014002a089 je       0x14002a0a7
000000014002a08b mov      rcx, qword ptr [rcx + 0x18]
000000014002a08f lea      r9, [rip + 0x5cc5ca]
000000014002a096 mov      edx, 0x96
000000014002a09b lea      r8, [rip + 0x65feb6]
000000014002a0a2 call     0x140008874
000000014002a0a7 lea      rcx, [rbx + 8]
000000014002a0ab add      rsp, 0x20
000000014002a0af pop      rbx
000000014002a0b0 jmp      0x140026f24