00000001404eae40 mov      qword ptr [rsp + 8], rbx
00000001404eae45 mov      qword ptr [rsp + 0x10], rsi
00000001404eae4a push     rdi
00000001404eae4b sub      rsp, 0x30
00000001404eae4f mov      edi, edx
00000001404eae51 xor      ebx, ebx
00000001404eae53 mov      rcx, qword ptr [rip + 0x4351a6]
00000001404eae5a lea      rsi, [rip + 0x43519f]
00000001404eae61 cmp      rcx, rsi
00000001404eae64 je       0x1404eae9a
00000001404eae66 cmp      byte ptr [rcx + 0x169], 5
00000001404eae6d jb       0x1404eae9a
00000001404eae6f mov      eax, dword ptr [rcx + 0x16c]
00000001404eae75 test     al, 8
00000001404eae77 je       0x1404eae9a
00000001404eae79 mov      rcx, qword ptr [rcx + 0x158]
00000001404eae80 lea      edx, [rbx + 0xe]
00000001404eae83 lea      r9, [rip + 0x1721e6]
00000001404eae8a mov      dword ptr [rsp + 0x20], edi
00000001404eae8e lea      r8, [rip + 0x41583b]
00000001404eae95 call     0x1400088d8
00000001404eae9a test     edi, edi
00000001404eae9c je       0x1404eaea8
00000001404eae9e cmp      edi, 1
00000001404eaea1 je       0x1404eaea8
00000001404eaea3 mov      ebx, 0x96
00000001404eaea8 mov      rcx, qword ptr [rip + 0x435151]
00000001404eaeaf cmp      rcx, rsi
00000001404eaeb2 je       0x1404eaeeb
00000001404eaeb4 cmp      byte ptr [rcx + 0x169], 5
00000001404eaebb jb       0x1404eaeeb
00000001404eaebd mov      edx, dword ptr [rcx + 0x16c]
00000001404eaec3 test     dl, 8
00000001404eaec6 je       0x1404eaeeb
00000001404eaec8 mov      rcx, qword ptr [rcx + 0x158]
00000001404eaecf lea      r9, [rip + 0x17219a]
00000001404eaed6 mov      edx, 0x11
00000001404eaedb mov      dword ptr [rsp + 0x20], edi
00000001404eaedf lea      r8, [rip + 0x4157ea]
00000001404eaee6 call     0x1400088d8
00000001404eaeeb mov      rsi, qword ptr [rsp + 0x48]
00000001404eaef0 mov      eax, ebx
00000001404eaef2 mov      rbx, qword ptr [rsp + 0x40]
00000001404eaef7 add      rsp, 0x30
00000001404eaefb pop      rdi
00000001404eaefc ret      