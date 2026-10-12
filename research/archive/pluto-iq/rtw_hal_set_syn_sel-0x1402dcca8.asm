00000001402dcca8 mov      r11, rsp
00000001402dccab mov      qword ptr [r11 + 8], rbx
00000001402dccaf mov      qword ptr [r11 + 0x10], rdi
00000001402dccb3 mov      qword ptr [r11 + 0x18], r13
00000001402dccb7 push     r14
00000001402dccb9 sub      rsp, 0x30
00000001402dccbd mov      rax, qword ptr [rcx + 0x88]
00000001402dccc4 mov      rbx, rdx
00000001402dccc7 mov      rdi, qword ptr [rax + 8]
00000001402dcccb mov      rcx, qword ptr [rip + 0x64332e]
00000001402dccd2 lea      r14, [rip + 0x643327]
00000001402dccd9 cmp      rcx, r14
00000001402dccdc je       0x1402dcdc1
00000001402dcce2 cmp      byte ptr [rcx + 0x169], 4
00000001402dcce9 lea      r13, [rip + 0x34d180]
00000001402dccf0 jb       0x1402dcd27
00000001402dccf2 mov      eax, dword ptr [rcx + 0x16c]
00000001402dccf8 test     al, 1
00000001402dccfa je       0x1402dcd27
00000001402dccfc movzx    eax, byte ptr [rdx + 0xb]
00000001402dcd00 lea      r9, [rip + 0x331689]
00000001402dcd07 mov      rcx, qword ptr [rcx + 0x158]
00000001402dcd0e lea      r8, [rip + 0x3be2a3]
00000001402dcd15 mov      dword ptr [rsp + 0x28], eax
00000001402dcd19 mov      edx, 0x41
00000001402dcd1e mov      qword ptr [r11 - 0x18], r13
00000001402dcd22 call     0x14003ca14
00000001402dcd27 mov      rcx, qword ptr [rip + 0x6432d2]
00000001402dcd2e cmp      rcx, r14
00000001402dcd31 je       0x1402dcdc1
00000001402dcd37 cmp      byte ptr [rcx + 0x169], 4
00000001402dcd3e jb       0x1402dcd76
00000001402dcd40 mov      eax, dword ptr [rcx + 0x16c]
00000001402dcd46 test     al, 1
00000001402dcd48 je       0x1402dcd76
00000001402dcd4a movzx    eax, byte ptr [rbx + 0x38]
00000001402dcd4e lea      r9, [rip + 0x33163b]
00000001402dcd55 mov      rcx, qword ptr [rcx + 0x158]
00000001402dcd5c lea      r8, [rip + 0x3be255]
00000001402dcd63 mov      dword ptr [rsp + 0x28], eax
00000001402dcd67 mov      edx, 0x42
00000001402dcd6c mov      qword ptr [rsp + 0x20], r13
00000001402dcd71 call     0x14003ca14
00000001402dcd76 mov      rcx, qword ptr [rip + 0x643283]
00000001402dcd7d cmp      rcx, r14
00000001402dcd80 je       0x1402dcdc1
00000001402dcd82 cmp      byte ptr [rcx + 0x169], 4
00000001402dcd89 jb       0x1402dcdc1
00000001402dcd8b mov      eax, dword ptr [rcx + 0x16c]
00000001402dcd91 test     al, 1
00000001402dcd93 je       0x1402dcdc1
00000001402dcd95 movzx    eax, byte ptr [rbx + 0x34]
00000001402dcd99 lea      r9, [rip + 0x3315f0]
00000001402dcda0 mov      rcx, qword ptr [rcx + 0x158]
00000001402dcda7 lea      r8, [rip + 0x3be20a]
00000001402dcdae mov      dword ptr [rsp + 0x28], eax
00000001402dcdb2 mov      edx, 0x43
00000001402dcdb7 mov      qword ptr [rsp + 0x20], r13
00000001402dcdbc call     0x14003ca14
00000001402dcdc1 movzx    r9d, byte ptr [rbx + 0x34]
00000001402dcdc6 mov      rcx, rdi
00000001402dcdc9 movzx    edx, byte ptr [rbx + 0xb]
00000001402dcdcd mov      r8b, byte ptr [rbx + 0x38]
00000001402dcdd1 call     0x14026d38c
00000001402dcdd6 mov      rbx, qword ptr [rsp + 0x40]
00000001402dcddb xor      eax, eax
00000001402dcddd mov      rdi, qword ptr [rsp + 0x48]
00000001402dcde2 mov      r13, qword ptr [rsp + 0x50]
00000001402dcde7 add      rsp, 0x30
00000001402dcdeb pop      r14
00000001402dcded ret      