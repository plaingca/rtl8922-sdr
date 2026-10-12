000000014031e5c8 mov      qword ptr [rsp + 8], rbx
000000014031e5cd mov      qword ptr [rsp + 0x10], rbp
000000014031e5d2 mov      qword ptr [rsp + 0x18], rsi
000000014031e5d7 push     rdi
000000014031e5d8 push     r12
000000014031e5da push     r13
000000014031e5dc push     r14
000000014031e5de push     r15
000000014031e5e0 sub      rsp, 0x30
000000014031e5e4 mov      rbx, qword ptr [rcx + 0x9a0]
000000014031e5eb mov      esi, edx
000000014031e5ed mov      rdi, rcx
000000014031e5f0 mov      rcx, qword ptr [rip + 0x601a09]
000000014031e5f7 lea      rax, [rip + 0x601a02]
000000014031e5fe cmp      rcx, rax
000000014031e601 je       0x14031e63b
000000014031e603 cmp      byte ptr [rcx + 0x1e9], 4
000000014031e60a jb       0x14031e63b
000000014031e60c test     dword ptr [rcx + 0x1ec], 0x10000000
000000014031e616 je       0x14031e63b
000000014031e618 mov      rcx, qword ptr [rcx + 0x1d8]
000000014031e61f lea      r9, [rip + 0x31380a]
000000014031e626 mov      edx, 0xf
000000014031e62b mov      dword ptr [rsp + 0x20], esi
000000014031e62f lea      r8, [rip + 0x3b2eca]
000000014031e636 call     0x1400088d8
000000014031e63b test     dword ptr [rdi + 0x13f0], 0x1880000
000000014031e645 mov      rcx, rdi
000000014031e648 je       0x14031e661
000000014031e64a mov      r8d, dword ptr [rbx + 0x30a0]
000000014031e651 mov      r9d, esi
000000014031e654 mov      edx, dword ptr [rbx + 0x309c]
000000014031e65a call     0x140315af0
000000014031e65f jmp      0x14031e686
000000014031e661 test     esi, esi
000000014031e663 jne      0x14031e674
000000014031e665 mov      r8d, dword ptr [rbx + 0x30a0]
000000014031e66c mov      edx, dword ptr [rbx + 0x309c]
000000014031e672 jmp      0x14031e681
000000014031e674 mov      r8d, dword ptr [rbx + 0x30a8]
000000014031e67b mov      edx, dword ptr [rbx + 0x30a4]
000000014031e681 call     0x140315a88
000000014031e686 mov      r8d, dword ptr [rbx + 0x30b0]
000000014031e68d mov      r9d, esi
000000014031e690 mov      edx, dword ptr [rbx + 0x30ac]
000000014031e696 mov      rcx, rdi
000000014031e699 mov      ebp, eax
000000014031e69b call     0x140315af0
000000014031e6a0 mov      r8d, dword ptr [rbx + 0x30b8]
000000014031e6a7 mov      r9d, esi
000000014031e6aa mov      edx, dword ptr [rbx + 0x30b4]
000000014031e6b0 mov      rcx, rdi
000000014031e6b3 mov      r14d, eax
000000014031e6b6 call     0x140315af0
000000014031e6bb mov      r8d, dword ptr [rbx + 0x30c0]
000000014031e6c2 mov      r9d, esi
000000014031e6c5 mov      edx, dword ptr [rbx + 0x30bc]
000000014031e6cb mov      rcx, rdi
000000014031e6ce mov      r15d, eax
000000014031e6d1 call     0x140315af0
000000014031e6d6 mov      r8d, dword ptr [rbx + 0x30c8]
000000014031e6dd mov      r9d, esi
000000014031e6e0 mov      edx, dword ptr [rbx + 0x30c4]
000000014031e6e6 mov      rcx, rdi
000000014031e6e9 mov      r12d, eax
000000014031e6ec call     0x140315af0
000000014031e6f1 mov      r8d, dword ptr [rbx + 0x30d0]
000000014031e6f8 mov      r9d, esi
000000014031e6fb mov      edx, dword ptr [rbx + 0x30cc]
000000014031e701 mov      rcx, rdi
000000014031e704 mov      r13d, eax
000000014031e707 call     0x140315af0
000000014031e70c mov      ecx, eax
000000014031e70e mov      edx, 0xffff
000000014031e713 add      eax, r13d
000000014031e716 add      eax, r12d
000000014031e719 add      eax, r15d
000000014031e71c add      eax, r14d
000000014031e71f add      eax, ebp
000000014031e721 cmp      ebp, edx
000000014031e723 je       0x14031e73d
000000014031e725 cmp      r14d, edx
000000014031e728 je       0x14031e73d
000000014031e72a cmp      r15d, edx
000000014031e72d je       0x14031e73d
000000014031e72f cmp      r12d, edx
000000014031e732 je       0x14031e73d
000000014031e734 cmp      r13d, edx
000000014031e737 je       0x14031e73d
000000014031e739 cmp      ecx, edx
000000014031e73b jne      0x14031e77a
000000014031e73d mov      r8d, dword ptr [rbx + 0x30d8]
000000014031e744 mov      r9d, 1
000000014031e74a mov      edx, dword ptr [rbx + 0x30d4]
000000014031e750 mov      rcx, rdi
000000014031e753 mov      dword ptr [rsp + 0x20], esi
000000014031e757 call     0x140316994
000000014031e75c mov      r8d, dword ptr [rbx + 0x30d8]
000000014031e763 xor      r9d, r9d
000000014031e766 mov      edx, dword ptr [rbx + 0x30d4]
000000014031e76c mov      rcx, rdi
000000014031e76f mov      dword ptr [rsp + 0x20], esi
000000014031e773 call     0x140316994
000000014031e778 xor      eax, eax
000000014031e77a mov      rbx, qword ptr [rsp + 0x60]
000000014031e77f mov      rbp, qword ptr [rsp + 0x68]
000000014031e784 mov      rsi, qword ptr [rsp + 0x70]
000000014031e789 add      rsp, 0x30
000000014031e78d pop      r15
000000014031e78f pop      r14
000000014031e791 pop      r13
000000014031e793 pop      r12
000000014031e795 pop      rdi
000000014031e796 ret      