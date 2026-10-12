00000001404edbd8 push     rbx
00000001404edbda sub      rsp, 0x20
00000001404edbde mov      rax, qword ptr [rcx]
00000001404edbe1 mov      rbx, rcx
00000001404edbe4 mov      rax, qword ptr [rax]
00000001404edbe7 test     dl, 3
00000001404edbea je       0x1404edc3c
00000001404edbec mov      rcx, qword ptr [rip + 0x43240d]
00000001404edbf3 lea      rax, [rip + 0x432406]
00000001404edbfa cmp      rcx, rax
00000001404edbfd je       0x1404edc31
00000001404edbff cmp      byte ptr [rcx + 0x169], 2
00000001404edc06 jb       0x1404edc31
00000001404edc08 mov      eax, dword ptr [rcx + 0x16c]
00000001404edc0e test     al, 8
00000001404edc10 je       0x1404edc31
00000001404edc12 mov      rcx, qword ptr [rcx + 0x158]
00000001404edc19 lea      r9, [rip + 0x16f5e0]
00000001404edc20 mov      edx, 0x31
00000001404edc25 lea      r8, [rip + 0x412ab4]
00000001404edc2c call     0x140008874
00000001404edc31 mov      eax, 0x96
00000001404edc36 add      rsp, 0x20
00000001404edc3a pop      rbx
00000001404edc3b ret      
00000001404edc3c cmp      byte ptr [rcx + 0x24a], 0
00000001404edc43 jne      0x1404edc5f
00000001404edc45 mov      rax, qword ptr [rax + 0x28]
00000001404edc49 mov      r8d, edx
00000001404edc4c mov      edx, 0xc04
00000001404edc51 call     qword ptr [rip + 0x1966a1]
00000001404edc57 xor      eax, eax
00000001404edc59 add      rsp, 0x20
00000001404edc5d pop      rbx
00000001404edc5e ret      
00000001404edc5f call     0x1404ecea8
00000001404edc64 test     eax, eax
00000001404edc66 jne      0x1404edc72
00000001404edc68 xor      edx, edx
00000001404edc6a mov      rcx, rbx
00000001404edc6d call     0x1404ec900
00000001404edc72 add      rsp, 0x20
00000001404edc76 pop      rbx
00000001404edc77 ret      