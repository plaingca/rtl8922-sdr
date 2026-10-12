00000001405c4fdf jmp      0x1605c507a
00000001405c4fe4 or       byte ptr [rax + 0x97e1], 0x20
00000001405c4feb ret      
00000001405c4fec sub      rsp, 0x28
00000001405c4ff0 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001405c4ff7 mov      r9, qword ptr [rax]
00000001405c4ffa cmp      r8d, 8
00000001405c4ffe jae      0x1405c5012
00000001405c5000 mov      rax, qword ptr [rsp + 0x50]
00000001405c5005 mov      dword ptr [rax], 8
00000001405c500b mov      eax, 0xc0010014
00000001405c5010 jmp      0x1405c5069
00000001405c5012 mov      ecx, dword ptr [rdx + 4]
00000001405c5015 mov      r8d, dword ptr [rdx]
00000001405c5018 sub      ecx, 1
00000001405c501b je       0x1405c504e