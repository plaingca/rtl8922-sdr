00000001402f7e24 push     rbx
00000001402f7e26 sub      rsp, 0x30
00000001402f7e2a mov      rbx, rcx
00000001402f7e2d mov      rcx, qword ptr [rip + 0x6281cc]
00000001402f7e34 lea      rax, [rip + 0x6281c5]
00000001402f7e3b cmp      rcx, rax
00000001402f7e3e je       0x1402f7e7e
00000001402f7e40 cmp      byte ptr [rcx + 0x1e9], 4
00000001402f7e47 jb       0x1402f7e7e
00000001402f7e49 test     dword ptr [rcx + 0x1ec], 0x20000000
00000001402f7e53 je       0x1402f7e7e
00000001402f7e55 mov      eax, dword ptr [rbx + 0x998]
00000001402f7e5b lea      r9, [rip + 0x334c1e]
00000001402f7e62 mov      rcx, qword ptr [rcx + 0x1d8]
00000001402f7e69 lea      r8, [rip + 0x3d8ff8]
00000001402f7e70 mov      edx, 0x38
00000001402f7e75 mov      dword ptr [rsp + 0x20], eax
00000001402f7e79 call     0x1400088d8
00000001402f7e7e mov      rcx, rbx
00000001402f7e81 call     0x1403ddd54
00000001402f7e86 mov      rcx, rbx
00000001402f7e89 call     0x1403e75e4
00000001402f7e8e mov      rcx, rbx
00000001402f7e91 call     0x1403cdb48
00000001402f7e96 mov      rcx, rbx
00000001402f7e99 call     0x1403e3ff0
00000001402f7e9e mov      rcx, rbx
00000001402f7ea1 call     0x14030152c
00000001402f7ea6 mov      rcx, rbx
00000001402f7ea9 call     0x1403dcd40
00000001402f7eae mov      rcx, rbx
00000001402f7eb1 add      rsp, 0x30
00000001402f7eb5 pop      rbx
00000001402f7eb6 jmp      0x1402edce0