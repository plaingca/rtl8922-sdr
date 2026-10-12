000000014026e118 mov      rcx, qword ptr [rcx + 0x1490]
000000014026e11f mov      rcx, qword ptr [rcx + 0x238]
000000014026e126 jmp      0x140308d74
000000014026e12b int3     
000000014026e12c push     rbx
000000014026e12e sub      rsp, 0x20
000000014026e132 mov      rbx, rcx
000000014026e135 mov      edx, 1
000000014026e13a mov      rcx, qword ptr [rcx + 0x238]
000000014026e141 call     0x1402f21ac
000000014026e146 mov      rcx, qword ptr [rbx + 0x238]
000000014026e14d add      rsp, 0x20
000000014026e151 pop      rbx
000000014026e152 jmp      0x14000a5f0
000000014026e157 int3     
000000014026e3a4 mov      rcx, qword ptr [rcx + 0x1490]
000000014026e3ab mov      rcx, qword ptr [rcx + 0x238]
000000014026e3b2 jmp      0x1402ee410
000000014026e3b7 int3     
000000014026e3b8 mov      rax, rsp
000000014026e3bb mov      qword ptr [rax + 8], rbx
000000014026e3bf push     rbp
000000014026e3c0 lea      rbp, [rax + 0x78]
000000014026e3c4 sub      rsp, 0x130
000000014026e3cb mov      r11, rcx
000000014026e3ce test     r9, r9
000000014026e3d1 je       0x14026e3e6
000000014026e3d3 or       r10, 0xffffffffffffffff
000000014026e3d7 inc      r10
000000014026e3da cmp      byte ptr [r9 + r10], 0
000000014026e3df jne      0x14026e3d7
000000014026e3e1 inc      r10