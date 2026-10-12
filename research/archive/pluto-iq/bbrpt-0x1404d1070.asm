00000001404d1070 mov      qword ptr [rsp + 8], rbx
00000001404d1075 mov      qword ptr [rsp + 0x10], rsi
00000001404d107a push     rdi
00000001404d107b sub      rsp, 0x30
00000001404d107f mov      r8, qword ptr [r9 + 0x78]
00000001404d1083 mov      rsi, rdx
00000001404d1086 mov      rax, qword ptr [rdx + 0x70]
00000001404d108a xor      r9d, r9d
00000001404d108d mov      rdi, rcx
00000001404d1090 call     qword ptr [rip + 0x1b3262]
00000001404d1096 mov      ebx, eax
00000001404d1098 test     eax, eax
00000001404d109a je       0x1404d10fb
00000001404d109c mov      rcx, qword ptr [rip + 0x44ef5d]
00000001404d10a3 lea      rax, [rip + 0x44ef56]
00000001404d10aa cmp      rcx, rax
00000001404d10ad je       0x1404d1149
00000001404d10b3 cmp      byte ptr [rcx + 0x169], 2
00000001404d10ba jb       0x1404d1149
00000001404d10c0 mov      eax, dword ptr [rcx + 0x16c]
00000001404d10c6 test     al, 1
00000001404d10c8 je       0x1404d1149
00000001404d10ca mov      edx, 0x23
00000001404d10cf mov      rcx, qword ptr [rcx + 0x158]
00000001404d10d6 lea      rax, [rip + 0x18a923]
00000001404d10dd mov      dword ptr [rsp + 0x28], ebx
00000001404d10e1 lea      r9, [rip + 0x13d2a8]
00000001404d10e8 lea      r8, [rip + 0x416ff1]
00000001404d10ef mov      qword ptr [rsp + 0x20], rax
00000001404d10f4 call     0x14003ca14
00000001404d10f9 jmp      0x1404d1149
00000001404d10fb mov      rcx, rdi
00000001404d10fe call     0x14022b328
00000001404d1103 mov      rdx, rsi
00000001404d1106 mov      rcx, rdi
00000001404d1109 call     0x14025b4c4
00000001404d110e mov      ebx, eax
00000001404d1110 test     eax, eax
00000001404d1112 je       0x1404d1141
00000001404d1114 mov      rcx, qword ptr [rip + 0x44eee5]
00000001404d111b lea      rax, [rip + 0x44eede]
00000001404d1122 cmp      rcx, rax
00000001404d1125 je       0x1404d1149
00000001404d1127 cmp      byte ptr [rcx + 0x169], 2
00000001404d112e jb       0x1404d1149
00000001404d1130 mov      eax, dword ptr [rcx + 0x16c]
00000001404d1136 test     al, 1
00000001404d1138 je       0x1404d1149
00000001404d113a mov      edx, 0x24
00000001404d113f jmp      0x1404d10cf
00000001404d1141 mov      rcx, rdi
00000001404d1144 call     0x14022b340
00000001404d1149 mov      rsi, qword ptr [rsp + 0x48]
00000001404d114e mov      eax, ebx
00000001404d1150 mov      rbx, qword ptr [rsp + 0x40]
00000001404d1155 add      rsp, 0x30
00000001404d1159 pop      rdi
00000001404d115a ret      