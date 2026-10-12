00000001403d6e8c sub      rsp, 0x38
00000001403d6e90 movsxd   rax, dword ptr [rcx + 0x998]
00000001403d6e97 mov      r10, qword ptr [rcx + 0x9a0]
00000001403d6e9e imul     r9, rax, 0x6d0
00000001403d6ea5 mov      rax, qword ptr [rcx + 8]
00000001403d6ea9 mov      ecx, dword ptr [r9 + rax + 0x53c]
00000001403d6eb1 test     dl, dl
00000001403d6eb3 jne      0x1403d6f2c
00000001403d6eb5 cmp      r8d, 9
00000001403d6eb9 je       0x1403d6f12
00000001403d6ebb mov      rcx, qword ptr [rip + 0x54913e]
00000001403d6ec2 lea      rax, [rip + 0x549137]
00000001403d6ec9 cmp      rcx, rax
00000001403d6ecc je       0x1403d6fc8
00000001403d6ed2 cmp      byte ptr [rcx + 0x169], 3
00000001403d6ed9 jb       0x1403d6fc8
00000001403d6edf test     dword ptr [rcx + 0x16c], 0x1000
00000001403d6ee9 je       0x1403d6fc8
00000001403d6eef mov      rcx, qword ptr [rcx + 0x158]
00000001403d6ef6 lea      r9, [rip + 0x275523]
00000001403d6efd mov      edx, 0x26
00000001403d6f02 lea      r8, [rip + 0x2fe30f]
00000001403d6f09 add      rsp, 0x38
00000001403d6f0d jmp      0x140008874
00000001403d6f12 cmp      ecx, 3
00000001403d6f15 jl       0x1403d6f1f
00000001403d6f17 mov      r8d, 7
00000001403d6f1d jmp      0x1403d6f2c
00000001403d6f1f mov      r8d, 2
00000001403d6f25 test     ecx, ecx
00000001403d6f27 js       0x1403d6f2c
00000001403d6f29 sub      r8d, ecx
00000001403d6f2c cmp      r8d, 7
00000001403d6f30 mov      edx, 0x50
00000001403d6f35 mov      ecx, r8d
00000001403d6f38 sete     al
00000001403d6f3b sar      edx, cl
00000001403d6f3d mov      byte ptr [r10 + 0x13a4], al
00000001403d6f44 cmp      r8d, 7
00000001403d6f48 mov      byte ptr [r10 + 0x13a5], al
00000001403d6f4f mov      byte ptr [r10 + 0x13a6], al
00000001403d6f56 mov      byte ptr [r10 + 0x13a7], al
00000001403d6f5d mov      eax, 0xa0
00000001403d6f62 cmove    dx, ax
00000001403d6f66 mov      dword ptr [r10 + 0x1370], r8d
00000001403d6f6d mov      word ptr [r10 + 0x1374], dx
00000001403d6f75 mov      rcx, qword ptr [rip + 0x549084]
00000001403d6f7c lea      rax, [rip + 0x54907d]
00000001403d6f83 cmp      rcx, rax
00000001403d6f86 je       0x1403d6fc8
00000001403d6f88 cmp      byte ptr [rcx + 0x1e9], 4
00000001403d6f8f jb       0x1403d6fc8
00000001403d6f91 test     dword ptr [rcx + 0x1ec], 0x2000000
00000001403d6f9b je       0x1403d6fc8
00000001403d6f9d mov      rcx, qword ptr [rcx + 0x1d8]
00000001403d6fa4 lea      r9, [rip + 0x275475]
00000001403d6fab movzx    eax, dx
00000001403d6fae mov      edx, 0x27
00000001403d6fb3 mov      dword ptr [rsp + 0x28], eax
00000001403d6fb7 mov      dword ptr [rsp + 0x20], r8d
00000001403d6fbc lea      r8, [rip + 0x2fe255]
00000001403d6fc3 call     0x140002b04
00000001403d6fc8 add      rsp, 0x38
00000001403d6fcc ret      