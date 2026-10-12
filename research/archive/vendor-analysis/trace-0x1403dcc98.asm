00000001403dcc98 mov      qword ptr [rsp + 8], rbx
00000001403dcc9d push     rdi
00000001403dcc9e sub      rsp, 0x30
00000001403dcca2 test     dword ptr [rcx + 0x13f0], 0x1fc0000
00000001403dccac mov      rbx, rcx
00000001403dccaf mov      rdi, qword ptr [rcx + 0x9a0]
00000001403dccb6 je       0x1403dcd33
00000001403dccb8 cmp      byte ptr [rdi + 0x1524], 0
00000001403dccbf je       0x1403dcd33
00000001403dccc1 mov      eax, dword ptr [rcx + 0x998]
00000001403dccc7 movzx    r9d, byte ptr [rdi + 0x1525]
00000001403dcccf mov      r8d, dword ptr [rdi + 0x130c]
00000001403dccd6 mov      edx, dword ptr [rdi + 0x1308]
00000001403dccdc mov      dword ptr [rsp + 0x20], eax
00000001403dcce0 call     0x140316994
00000001403dcce5 mov      eax, dword ptr [rbx + 0x998]
00000001403dcceb mov      rcx, rbx
00000001403dccee movzx    r9d, byte ptr [rdi + 0x1526]
00000001403dccf6 mov      r8d, dword ptr [rdi + 0x1314]
00000001403dccfd mov      edx, dword ptr [rdi + 0x1310]
00000001403dcd03 mov      dword ptr [rsp + 0x20], eax
00000001403dcd07 call     0x140316994
00000001403dcd0c mov      eax, dword ptr [rbx + 0x998]
00000001403dcd12 mov      rcx, rbx
00000001403dcd15 movzx    r9d, byte ptr [rdi + 0x1527]
00000001403dcd1d mov      r8d, dword ptr [rdi + 0x131c]
00000001403dcd24 mov      edx, dword ptr [rdi + 0x1318]
00000001403dcd2a mov      dword ptr [rsp + 0x20], eax
00000001403dcd2e call     0x140316994
00000001403dcd33 mov      rbx, qword ptr [rsp + 0x40]
00000001403dcd38 add      rsp, 0x30
00000001403dcd3c pop      rdi
00000001403dcd3d ret      