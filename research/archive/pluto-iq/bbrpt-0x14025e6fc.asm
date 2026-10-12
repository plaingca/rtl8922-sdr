000000014025e6fc sub      rsp, 0x48
000000014025e700 movzx    r9d, word ptr [rdx + 0x42]
000000014025e705 test     r9w, r9w
000000014025e709 je       0x14025e7a5
000000014025e70f movzx    r10d, word ptr [rdx + 0x40]
000000014025e714 mov      dword ptr [rdx + 0x16c], 1
000000014025e71e lea      rax, [r10 + r8]
000000014025e722 mov      qword ptr [rdx + 0x170], rax
000000014025e729 cmp      dword ptr [rcx + 0x9618], 1
000000014025e730 jne      0x14025e73d
000000014025e732 add      rax, 4
000000014025e736 mov      qword ptr [rdx + 0x170], rax
000000014025e73d mov      rcx, qword ptr [rip + 0x6c18bc]
000000014025e744 lea      rax, [rip + 0x6c18b5]
000000014025e74b cmp      rcx, rax
000000014025e74e je       0x14025e7a5
000000014025e750 cmp      byte ptr [rcx + 0x169], 5
000000014025e757 jb       0x14025e7a5
000000014025e759 mov      eax, dword ptr [rcx + 0x16c]
000000014025e75f test     al, 2
000000014025e761 je       0x14025e7a5
000000014025e763 mov      rcx, qword ptr [rcx + 0x158]
000000014025e76a lea      rax, [rip + 0x3bc19f]
000000014025e771 mov      r8d, r9d
000000014025e774 mov      dword ptr [rsp + 0x38], r10d
000000014025e779 movzx    r9d, word ptr [rdx + 0x32]
000000014025e77e mov      edx, 0x4d
000000014025e783 mov      dword ptr [rsp + 0x30], r8d
000000014025e788 lea      r8, [rip + 0x43a529]
000000014025e78f mov      dword ptr [rsp + 0x28], r9d
000000014025e794 lea      r9, [rip + 0x3afbf5]
000000014025e79b mov      qword ptr [rsp + 0x20], rax
000000014025e7a0 call     0x1400328d4
000000014025e7a5 add      rsp, 0x48
000000014025e7a9 ret      