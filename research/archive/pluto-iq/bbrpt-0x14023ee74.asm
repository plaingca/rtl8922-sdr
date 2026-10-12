000000014023ee74 mov      qword ptr [rsp + 8], rbx
000000014023ee79 mov      qword ptr [rsp + 0x10], rbp
000000014023ee7e mov      qword ptr [rsp + 0x18], rsi
000000014023ee83 push     rdi
000000014023ee84 sub      rsp, 0x20
000000014023ee88 mov      rax, qword ptr [rcx + 0x798]
000000014023ee8f mov      rbx, rdx
000000014023ee92 mov      rdi, qword ptr [rcx + 0x8d10]
000000014023ee99 mov      rsi, rcx
000000014023ee9c mov      rbp, qword ptr [rax + 0x10330]
000000014023eea3 test     rdi, rdi
000000014023eea6 je       0x14023f03e
000000014023eeac cmp      byte ptr [rdi + 0x361], 1
000000014023eeb3 jne      0x14023eed7
000000014023eeb5 lea      rdx, [rdi + 0x380]
000000014023eebc mov      rcx, rbp
000000014023eebf call     0x1405c0f00
000000014023eec4 mov      r8, qword ptr [rbx + 0x10]
000000014023eec8 mov      r9d, 8
000000014023eece mov      rdx, qword ptr [rbx + 8]
000000014023eed2 jmp      0x14023f036
000000014023eed7 mov      ecx, dword ptr [rdx]
000000014023eed9 test     ecx, ecx
000000014023eedb je       0x14023f028
000000014023eee1 sub      ecx, 2
000000014023eee4 je       0x14023efbc
000000014023eeea sub      ecx, 2
000000014023eeed je       0x14023efb4
000000014023eef3 sub      ecx, 1
000000014023eef6 je       0x14023efb4
000000014023eefc sub      ecx, 1
000000014023eeff je       0x14023ef4d
000000014023ef01 cmp      ecx, 1
000000014023ef04 jne      0x14023f03e
000000014023ef0a movzx    eax, byte ptr [rdi + 0x2ec]
000000014023ef11 lea      rbx, [rdi + 0x380]
000000014023ef18 imul     rcx, rax, 0xb8
000000014023ef1f mov      rdx, rbx
000000014023ef22 mov      dword ptr [rcx + rdi + 0xa0], 7
000000014023ef2d mov      rcx, rbp
000000014023ef30 call     0x1405c0f00
000000014023ef35 movzx    r8d, byte ptr [rdi + 0x2f8]
000000014023ef3d mov      rdx, rbx
000000014023ef40 mov      rcx, rbp
000000014023ef43 call     0x1405c1a98
000000014023ef48 jmp      0x14023f03e
000000014023ef4d cmp      byte ptr [rdi + 0x2ee], 0
000000014023ef54 je       0x14023f03e
000000014023ef5a movzx    eax, byte ptr [rdi + 0x2ec]
000000014023ef61 mov      rcx, rsi
000000014023ef64 imul     rdx, rax, 0xb8
000000014023ef6b mov      dl, byte ptr [rdx + rdi + 0x14]
000000014023ef6f call     0x1401a0a14
000000014023ef74 test     rax, rax
000000014023ef77 je       0x14023f03e
000000014023ef7d movzx    ecx, byte ptr [rdi + 0x2ec]
000000014023ef84 xor      r9d, r9d
000000014023ef87 imul     r8, rcx, 0xb8
000000014023ef8e mov      rdx, rax
000000014023ef91 mov      rcx, rsi
000000014023ef94 add      r8, 8
000000014023ef98 add      r8, rdi
000000014023ef9b call     0x14023f39c
000000014023efa0 test     eax, eax
000000014023efa2 jne      0x14023f03e
000000014023efa8 mov      byte ptr [rdi + 0x360], 1
000000014023efaf jmp      0x14023f03e
000000014023efb4 mov      r9d, 7
000000014023efba jmp      0x14023f02e
000000014023efbc lea      rbx, [rdi + 0x380]
000000014023efc3 mov      rcx, rbp
000000014023efc6 mov      rdx, rbx
000000014023efc9 call     0x1405c0f00
000000014023efce movzx    r8d, byte ptr [rdi + 0x2f0]
000000014023efd6 mov      rdx, rbx
000000014023efd9 mov      rcx, rbp
000000014023efdc call     0x1405c1a98
000000014023efe1 mov      rcx, qword ptr [rip + 0x6e1018]
000000014023efe8 lea      rax, [rip + 0x6e1011]
000000014023efef cmp      rcx, rax
000000014023eff2 je       0x14023f03e
000000014023eff4 cmp      byte ptr [rcx + 0x169], 4
000000014023effb jb       0x14023f03e
000000014023effd mov      eax, dword ptr [rcx + 0x16c]
000000014023f003 test     al, 0x10
000000014023f005 je       0x14023f03e
000000014023f007 mov      rcx, qword ptr [rcx + 0x158]
000000014023f00e lea      r9, [rip + 0x3cf37b]
000000014023f015 mov      edx, 0x26
000000014023f01a lea      r8, [rip + 0x459a6f]
000000014023f021 call     0x140008874
000000014023f026 jmp      0x14023f03e
000000014023f028 mov      r9d, 2
000000014023f02e mov      r8, qword ptr [rdx + 0x10]
000000014023f032 mov      rdx, qword ptr [rdx + 8]
000000014023f036 mov      rcx, rsi
000000014023f039 call     0x14023f39c
000000014023f03e mov      rbx, qword ptr [rsp + 0x30]
000000014023f043 mov      rbp, qword ptr [rsp + 0x38]
000000014023f048 mov      rsi, qword ptr [rsp + 0x40]
000000014023f04d add      rsp, 0x20
000000014023f051 pop      rdi
000000014023f052 ret      