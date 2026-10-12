00000001401dc54c push     rbx
00000001401dc54e sub      rsp, 0x30
00000001401dc552 movzx    r8d, cl
00000001401dc556 xor      ebx, ebx
00000001401dc558 mov      ecx, r8d
00000001401dc55b test     r8d, r8d
00000001401dc55e je       0x1401dc618
00000001401dc564 sub      ecx, 1
00000001401dc567 je       0x1401dc613
00000001401dc56d sub      ecx, 1
00000001401dc570 je       0x1401dc60c
00000001401dc576 sub      ecx, 1
00000001401dc579 je       0x1401dc605
00000001401dc57f sub      ecx, 1
00000001401dc582 je       0x1401dc5fe
00000001401dc584 sub      ecx, 1
00000001401dc587 je       0x1401dc5f7
00000001401dc589 sub      ecx, 1
00000001401dc58c je       0x1401dc5f0
00000001401dc58e cmp      ecx, 1
00000001401dc591 je       0x1401dc5e9
00000001401dc593 mov      rcx, qword ptr [rip + 0x743a66]
00000001401dc59a lea      rax, [rip + 0x743a5f]
00000001401dc5a1 cmp      rcx, rax
00000001401dc5a4 je       0x1401dc618
00000001401dc5a6 cmp      byte ptr [rcx + 0x169], 3
00000001401dc5ad jb       0x1401dc618
00000001401dc5af mov      eax, dword ptr [rcx + 0x16c]
00000001401dc5b5 test     al, 1
00000001401dc5b7 je       0x1401dc618
00000001401dc5b9 mov      rcx, qword ptr [rcx + 0x158]
00000001401dc5c0 lea      rax, [rip + 0x435779]
00000001401dc5c7 mov      dword ptr [rsp + 0x28], r8d
00000001401dc5cc lea      edx, [rbx + 0x5f]
00000001401dc5cf lea      r8, [rip + 0x4bbe5a]
00000001401dc5d6 mov      qword ptr [rsp + 0x20], rax
00000001401dc5db lea      r9, [rip + 0x431dae]
00000001401dc5e2 call     0x14003ca14
00000001401dc5e7 jmp      0x1401dc618
00000001401dc5e9 mov      ebx, 7
00000001401dc5ee jmp      0x1401dc618
00000001401dc5f0 mov      ebx, 6
00000001401dc5f5 jmp      0x1401dc618
00000001401dc5f7 mov      ebx, 5
00000001401dc5fc jmp      0x1401dc618
00000001401dc5fe mov      ebx, 4
00000001401dc603 jmp      0x1401dc618
00000001401dc605 mov      ebx, 3
00000001401dc60a jmp      0x1401dc618
00000001401dc60c mov      ebx, 2
00000001401dc611 jmp      0x1401dc618
00000001401dc613 mov      ebx, 1
00000001401dc618 mov      eax, ebx
00000001401dc61a add      rsp, 0x30
00000001401dc61e pop      rbx
00000001401dc61f ret      