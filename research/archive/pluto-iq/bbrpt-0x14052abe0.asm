000000014052abe0 sub      rsp, 0x28
000000014052abe4 mov      byte ptr [rcx + 0x379], dl
000000014052abea mov      r8, rcx
000000014052abed mov      rax, qword ptr [rcx + 0x140]
000000014052abf4 mov      byte ptr [rax + 0xde], dl
000000014052abfa mov      rcx, qword ptr [rip + 0x3f53ff]
000000014052ac01 lea      rax, [rip + 0x3f53f8]
000000014052ac08 cmp      rcx, rax
000000014052ac0b je       0x14052ac40
000000014052ac0d cmp      byte ptr [rcx + 0x169], 1
000000014052ac14 jb       0x14052ac40
000000014052ac16 mov      eax, dword ptr [rcx + 0x16c]
000000014052ac1c test     al, 8
000000014052ac1e je       0x14052ac40
000000014052ac20 movzx    r9d, byte ptr [r8 + 0x379]
000000014052ac28 mov      edx, 0x96
000000014052ac2d mov      rcx, qword ptr [rcx + 0x158]
000000014052ac34 lea      r8, [rip + 0x3d7195]
000000014052ac3b call     0x140001bb0
000000014052ac40 xor      eax, eax
000000014052ac42 add      rsp, 0x28
000000014052ac46 ret      