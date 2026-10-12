00000001404d3190 push     rbx
00000001404d3192 sub      rsp, 0x30
00000001404d3196 mov      rbx, rcx
00000001404d3199 mov      rcx, qword ptr [rip + 0x44ce60]
00000001404d31a0 lea      rax, [rip + 0x44ce59]
00000001404d31a7 cmp      rcx, rax
00000001404d31aa je       0x1404d31ea
00000001404d31ac cmp      byte ptr [rcx + 0x169], 4
00000001404d31b3 jb       0x1404d31ea
00000001404d31b5 mov      eax, dword ptr [rcx + 0x16c]
00000001404d31bb test     al, 1
00000001404d31bd je       0x1404d31ea
00000001404d31bf mov      rcx, qword ptr [rcx + 0x158]
00000001404d31c6 lea      r8, [rip + 0x188963]
00000001404d31cd mov      qword ptr [rsp + 0x20], r8
00000001404d31d2 lea      r9, [rip + 0x13b1b7]
00000001404d31d9 lea      r8, [rip + 0x416938]
00000001404d31e0 mov      edx, 0x3a
00000001404d31e5 call     0x14003c968
00000001404d31ea test     rbx, rbx
00000001404d31ed jne      0x1404d31f8
00000001404d31ef lea      eax, [rbx + 1]
00000001404d31f2 add      rsp, 0x30
00000001404d31f6 pop      rbx
00000001404d31f7 ret      
00000001404d31f8 lea      r9, [rip + 0x46c539]
00000001404d31ff mov      edx, 0x1fc
00000001404d3204 mov      r8d, 4
00000001404d320a mov      rcx, rbx
00000001404d320d call     0x140265dec
00000001404d3212 test     eax, eax
00000001404d3214 jne      0x1404d321e
00000001404d3216 mov      rcx, rbx
00000001404d3219 call     0x140265edc
00000001404d321e add      rsp, 0x30
00000001404d3222 pop      rbx
00000001404d3223 ret      