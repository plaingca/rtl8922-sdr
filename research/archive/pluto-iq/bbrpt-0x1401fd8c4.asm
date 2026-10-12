00000001401fd8c4 mov      qword ptr [rsp + 8], rbx
00000001401fd8c9 push     rbp
00000001401fd8ca sub      rsp, 0x30
00000001401fd8ce mov      rbx, rcx
00000001401fd8d1 mov      rcx, qword ptr [rip + 0x722728]
00000001401fd8d8 lea      rbp, [rip + 0x722721]
00000001401fd8df cmp      rcx, rbp
00000001401fd8e2 je       0x1401fd916
00000001401fd8e4 cmp      byte ptr [rcx + 0x169], 4
00000001401fd8eb jb       0x1401fd916
00000001401fd8ed mov      eax, dword ptr [rcx + 0x16c]
00000001401fd8f3 test     al, 1
00000001401fd8f5 je       0x1401fd916
00000001401fd8f7 mov      rcx, qword ptr [rcx + 0x158]
00000001401fd8fe lea      r9, [rip + 0x410a8b]
00000001401fd905 mov      edx, 0x5a
00000001401fd90a lea      r8, [rip + 0x49ac1f]
00000001401fd911 call     0x140008874
00000001401fd916 cmp      byte ptr [rbx + 8], 0
00000001401fd91a je       0x1401fd978
00000001401fd91c mov      rcx, qword ptr [rip + 0x7226dd]
00000001401fd923 cmp      rcx, rbp
00000001401fd926 je       0x1401fd9c2
00000001401fd92c cmp      byte ptr [rcx + 0x169], 4
00000001401fd933 jb       0x1401fd9c2
00000001401fd939 mov      eax, dword ptr [rcx + 0x16c]
00000001401fd93f test     al, 1
00000001401fd941 je       0x1401fd9c2
00000001401fd943 movzx    eax, byte ptr [rbx + 9]
00000001401fd947 lea      r9, [rip + 0x410a42]
00000001401fd94e mov      rcx, qword ptr [rcx + 0x158]
00000001401fd955 lea      r8, [rip + 0x49abd4]
00000001401fd95c mov      dword ptr [rsp + 0x28], eax
00000001401fd960 mov      edx, 0x5b
00000001401fd965 lea      rax, [rip + 0x416664]
00000001401fd96c mov      qword ptr [rsp + 0x20], rax
00000001401fd971 call     0x14003ca14
00000001401fd976 jmp      0x1401fd9c2
00000001401fd978 mov      rcx, qword ptr [rip + 0x722681]
00000001401fd97f cmp      rcx, rbp
00000001401fd982 je       0x1401fd9c2
00000001401fd984 cmp      byte ptr [rcx + 0x169], 4
00000001401fd98b jb       0x1401fd9c2
00000001401fd98d mov      eax, dword ptr [rcx + 0x16c]
00000001401fd993 test     al, 1
00000001401fd995 je       0x1401fd9c2
00000001401fd997 mov      rcx, qword ptr [rcx + 0x158]
00000001401fd99e lea      rax, [rip + 0x41662b]
00000001401fd9a5 mov      edx, 0x5c
00000001401fd9aa mov      qword ptr [rsp + 0x20], rax
00000001401fd9af lea      r9, [rip + 0x4109da]
00000001401fd9b6 lea      r8, [rip + 0x49ab73]
00000001401fd9bd call     0x14003c968
00000001401fd9c2 mov      rbx, qword ptr [rsp + 0x40]
00000001401fd9c7 add      rsp, 0x30
00000001401fd9cb pop      rbp
00000001401fd9cc ret      