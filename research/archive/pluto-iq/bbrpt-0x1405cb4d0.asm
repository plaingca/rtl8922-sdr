00000001405cb4d0 mov      qword ptr [rsp + 8], rbx
00000001405cb4d5 mov      qword ptr [rsp + 0x10], rbp
00000001405cb4da mov      qword ptr [rsp + 0x18], rsi
00000001405cb4df push     rdi
00000001405cb4e0 sub      rsp, 0x20
00000001405cb4e4 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001405cb4eb mov      ebx, edx
00000001405cb4ed mov      rsi, rcx
00000001405cb4f0 mov      rbp, qword ptr [rax]
00000001405cb4f3 mov      rcx, qword ptr [rip + 0x354b06]
00000001405cb4fa lea      rax, [rip + 0x354aff]
00000001405cb501 cmp      rcx, rax
00000001405cb504 je       0x1405cb52d
00000001405cb506 cmp      byte ptr [rcx + 0x29], 4
00000001405cb50a jb       0x1405cb52d
00000001405cb50c test     dword ptr [rcx + 0x2c], 0x200000
00000001405cb513 je       0x1405cb52d
00000001405cb515 mov      rcx, qword ptr [rcx + 0x18]
00000001405cb519 lea      r8, [rip + 0x33adc0]
00000001405cb520 mov      edx, 0x69
00000001405cb525 mov      r9d, ebx
00000001405cb528 call     0x140001bb0
00000001405cb52d mov      ecx, ebx
00000001405cb52f mov      dword ptr [rsi + 0xb0500], ebx
00000001405cb535 sub      ecx, 1
00000001405cb538 je       0x1405cb5d4
00000001405cb53e mov      edi, 0xa
00000001405cb543 sub      ecx, 7
00000001405cb546 je       0x1405cb56b
00000001405cb548 sub      ecx, 1
00000001405cb54b je       0x1405cb5a9
00000001405cb54d sub      ecx, 1
00000001405cb550 je       0x1405cb5a2
00000001405cb552 sub      ecx, 1
00000001405cb555 je       0x1405cb5a2
00000001405cb557 sub      ecx, 2
00000001405cb55a je       0x1405cb56b
00000001405cb55c sub      ecx, 1
00000001405cb55f je       0x1405cb56b
00000001405cb561 sub      ecx, 1
00000001405cb564 je       0x1405cb56b
00000001405cb566 cmp      ecx, 1
00000001405cb569 jne      0x1405cb575
00000001405cb56b mov      edx, edi
00000001405cb56d mov      rcx, rsi
00000001405cb570 call     0x1405ce1ec
00000001405cb575 sub      ebx, 1
00000001405cb578 je       0x1405cb5e1
00000001405cb57a sub      ebx, 7
00000001405cb57d je       0x1405cb5cf
00000001405cb57f sub      ebx, 1
00000001405cb582 je       0x1405cb5b6
00000001405cb584 sub      ebx, 1
00000001405cb587 je       0x1405cb5ca
00000001405cb589 sub      ebx, 3
00000001405cb58c je       0x1405cb5c5
00000001405cb58e sub      ebx, 1
00000001405cb591 je       0x1405cb5c0
00000001405cb593 sub      ebx, 1
00000001405cb596 je       0x1405cb5bb
00000001405cb598 cmp      ebx, 1
00000001405cb59b jne      0x1405cb5e4
00000001405cb59d mov      dil, 9
00000001405cb5a0 jmp      0x1405cb5e4
00000001405cb5a2 mov      edx, 0xb
00000001405cb5a7 jmp      0x1405cb56d
00000001405cb5a9 mov      edx, 0xd
00000001405cb5ae mov      rcx, rsi
00000001405cb5b1 call     0x1405ce1ec
00000001405cb5b6 mov      dil, 3
00000001405cb5b9 jmp      0x1405cb5e4
00000001405cb5bb mov      dil, 8
00000001405cb5be jmp      0x1405cb5e4
00000001405cb5c0 mov      dil, 7
00000001405cb5c3 jmp      0x1405cb5e4
00000001405cb5c5 mov      dil, 6
00000001405cb5c8 jmp      0x1405cb5e4
00000001405cb5ca mov      dil, 5
00000001405cb5cd jmp      0x1405cb5e4
00000001405cb5cf mov      dil, 2
00000001405cb5d2 jmp      0x1405cb5e4
00000001405cb5d4 mov      edx, 0x3e
00000001405cb5d9 mov      rcx, rsi
00000001405cb5dc call     0x1405ce1ec
00000001405cb5e1 mov      dil, 1
00000001405cb5e4 lea      rcx, [rbp + 0x53e30]
00000001405cb5eb mov      dl, dil
00000001405cb5ee mov      rbx, qword ptr [rsp + 0x30]
00000001405cb5f3 mov      rbp, qword ptr [rsp + 0x38]
00000001405cb5f8 mov      rsi, qword ptr [rsp + 0x40]
00000001405cb5fd add      rsp, 0x20
00000001405cb601 pop      rdi
00000001405cb602 jmp      0x14014f5b0