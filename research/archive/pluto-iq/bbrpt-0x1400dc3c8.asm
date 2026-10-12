00000001400dc3c8 push     rbx
00000001400dc3ca sub      rsp, 0x20
00000001400dc3ce mov      r9, qword ptr [rcx + 0x1136f8]
00000001400dc3d5 xor      ebx, ebx
00000001400dc3d7 mov      al, byte ptr [r9 + 0x226]
00000001400dc3de lea      r10d, [rbx + 1]
00000001400dc3e2 cmp      byte ptr [r9 + 0x225], r10b
00000001400dc3e9 jae      0x1400dc42c
00000001400dc3eb mov      rcx, qword ptr [rip + 0x843c0e]
00000001400dc3f2 lea      rax, [rip + 0x843c07]
00000001400dc3f9 cmp      rcx, rax
00000001400dc3fc je       0x1400dc498
00000001400dc402 cmp      byte ptr [rcx + 0x69], 4
00000001400dc406 jb       0x1400dc498
00000001400dc40c mov      eax, dword ptr [rcx + 0x6c]
00000001400dc40f test     al, 0x10
00000001400dc411 je       0x1400dc498
00000001400dc417 lea      edx, [rbx + 0x1b]
00000001400dc41a mov      rcx, qword ptr [rcx + 0x58]
00000001400dc41e lea      r8, [rip + 0x5b691b]
00000001400dc425 call     0x140001b88
00000001400dc42a jmp      0x1400dc498
00000001400dc42c cmp      r8d, 3
00000001400dc430 jae      0x1400dc459
00000001400dc432 mov      rcx, qword ptr [rip + 0x843bc7]
00000001400dc439 lea      rax, [rip + 0x843bc0]
00000001400dc440 cmp      rcx, rax
00000001400dc443 je       0x1400dc498
00000001400dc445 cmp      byte ptr [rcx + 0x69], 4
00000001400dc449 jb       0x1400dc498
00000001400dc44b mov      eax, dword ptr [rcx + 0x6c]
00000001400dc44e test     al, 0x10
00000001400dc450 je       0x1400dc498
00000001400dc452 mov      edx, 0x1c
00000001400dc457 jmp      0x1400dc41a
00000001400dc459 cmp      al, r10b
00000001400dc45c je       0x1400dc485
00000001400dc45e mov      rcx, qword ptr [rip + 0x843b9b]
00000001400dc465 lea      rax, [rip + 0x843b94]
00000001400dc46c cmp      rcx, rax
00000001400dc46f je       0x1400dc498
00000001400dc471 cmp      byte ptr [rcx + 0x69], 4
00000001400dc475 jb       0x1400dc498
00000001400dc477 mov      eax, dword ptr [rcx + 0x6c]
00000001400dc47a test     al, 0x10
00000001400dc47c je       0x1400dc498
00000001400dc47e mov      edx, 0x1d
00000001400dc483 jmp      0x1400dc41a
00000001400dc485 mov      word ptr [rdx], r10w
00000001400dc489 mov      ebx, 3
00000001400dc48e mov      al, byte ptr [r9 + 0x225]
00000001400dc495 mov      byte ptr [rdx + 2], al
00000001400dc498 mov      eax, ebx
00000001400dc49a add      rsp, 0x20
00000001400dc49e pop      rbx
00000001400dc49f ret      