00000001403c268c mov      qword ptr [rsp + 8], rbx
00000001403c2691 mov      qword ptr [rsp + 0x10], rbp
00000001403c2696 push     rsi
00000001403c2697 sub      rsp, 0x20
00000001403c269b test     byte ptr [rcx + 0x1632], 0x10
00000001403c26a2 mov      rbx, rcx
00000001403c26a5 je       0x1403c27c8
00000001403c26ab mov      rcx, qword ptr [rip + 0x55d94e]
00000001403c26b2 lea      rbp, [rip + 0x55d947]
00000001403c26b9 cmp      rcx, rbp
00000001403c26bc je       0x1403c26e9
00000001403c26be cmp      byte ptr [rcx + 0x1e9], 4
00000001403c26c5 jb       0x1403c26e9
00000001403c26c7 bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c26cf jae      0x1403c26e9
00000001403c26d1 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c26d8 lea      r8, [rip + 0x312aa1]
00000001403c26df mov      edx, 0x89
00000001403c26e4 call     0x140001b88
00000001403c26e9 mov      rax, qword ptr [rbx + 0x9a0]
00000001403c26f0 mov      ecx, dword ptr [rax + 0x1014]
00000001403c26f6 cmp      ecx, 0x1002
00000001403c26fc jne      0x1403c2739
00000001403c26fe cmp      dword ptr [rbx + 0x998], 1
00000001403c2705 jne      0x1403c2770
00000001403c2707 mov      rcx, qword ptr [rip + 0x55d8f2]
00000001403c270e cmp      rcx, rbp
00000001403c2711 je       0x1403c27c8
00000001403c2717 cmp      byte ptr [rcx + 0x1e9], 4
00000001403c271e jb       0x1403c27c8
00000001403c2724 bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c272c jae      0x1403c27c8
00000001403c2732 mov      edx, 0x8a
00000001403c2737 jmp      0x1403c27b5
00000001403c2739 cmp      ecx, 0x1020
00000001403c273f jne      0x1403c2770
00000001403c2741 cmp      dword ptr [rbx + 0x998], 0
00000001403c2748 jne      0x1403c2770
00000001403c274a mov      rcx, qword ptr [rip + 0x55d8af]
00000001403c2751 cmp      rcx, rbp
00000001403c2754 je       0x1403c27c8
00000001403c2756 cmp      byte ptr [rcx + 0x1e9], 4
00000001403c275d jb       0x1403c27c8
00000001403c275f bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c2767 jae      0x1403c27c8
00000001403c2769 mov      edx, 0x8b
00000001403c276e jmp      0x1403c27b5
00000001403c2770 mov      rcx, rbx
00000001403c2773 call     0x1403c0edc
00000001403c2778 cmp      byte ptr [rbx + 0x467c], 0
00000001403c277f je       0x1403c2791
00000001403c2781 mov      rcx, rbx
00000001403c2784 call     0x1403c224c
00000001403c2789 mov      rcx, rbx
00000001403c278c call     0x1403c1ccc
00000001403c2791 mov      rcx, qword ptr [rip + 0x55d868]
00000001403c2798 cmp      rcx, rbp
00000001403c279b je       0x1403c27c8
00000001403c279d cmp      byte ptr [rcx + 0x1e9], 4
00000001403c27a4 jb       0x1403c27c8
00000001403c27a6 bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c27ae jae      0x1403c27c8
00000001403c27b0 mov      edx, 0x8c
00000001403c27b5 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c27bc lea      r8, [rip + 0x3129bd]
00000001403c27c3 call     0x140001b88
00000001403c27c8 mov      rbx, qword ptr [rsp + 0x30]
00000001403c27cd mov      rbp, qword ptr [rsp + 0x38]
00000001403c27d2 add      rsp, 0x20
00000001403c27d6 pop      rsi
00000001403c27d7 ret      