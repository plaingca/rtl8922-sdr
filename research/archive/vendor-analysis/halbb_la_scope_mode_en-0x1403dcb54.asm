00000001403dcb54 mov      qword ptr [rsp + 8], rbx
00000001403dcb59 mov      qword ptr [rsp + 0x10], rsi
00000001403dcb5e push     rdi
00000001403dcb5f sub      rsp, 0x30
00000001403dcb63 mov      rsi, qword ptr [rcx + 0x9a0]
00000001403dcb6a mov      rdi, rcx
00000001403dcb6d movzx    ebx, dl
00000001403dcb70 mov      rcx, qword ptr [rip + 0x543489]
00000001403dcb77 lea      rax, [rip + 0x543482]
00000001403dcb7e cmp      rcx, rax
00000001403dcb81 je       0x1403dcbbb
00000001403dcb83 cmp      byte ptr [rcx + 0x1e9], 4
00000001403dcb8a jb       0x1403dcbbb
00000001403dcb8c test     dword ptr [rcx + 0x1ec], 0x2000000
00000001403dcb96 je       0x1403dcbbb
00000001403dcb98 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403dcb9f lea      r9, [rip + 0x26f7fa]
00000001403dcba6 mov      edx, 0xa
00000001403dcbab mov      dword ptr [rsp + 0x20], ebx
00000001403dcbaf lea      r8, [rip + 0x2f8662]
00000001403dcbb6 call     0x1400088d8
00000001403dcbbb mov      eax, dword ptr [rdi + 0x998]
00000001403dcbc1 mov      r9d, ebx
00000001403dcbc4 mov      r8d, dword ptr [rsi + 0x126c]
00000001403dcbcb mov      rcx, rdi
00000001403dcbce mov      edx, dword ptr [rsi + 0x1268]
00000001403dcbd4 mov      dword ptr [rsp + 0x20], eax
00000001403dcbd8 call     0x140316994
00000001403dcbdd mov      eax, dword ptr [rdi + 0x998]
00000001403dcbe3 mov      r9d, ebx
00000001403dcbe6 mov      r8d, dword ptr [rsi + 0x1274]
00000001403dcbed mov      rcx, rdi
00000001403dcbf0 mov      edx, dword ptr [rsi + 0x1270]
00000001403dcbf6 mov      dword ptr [rsp + 0x20], eax
00000001403dcbfa call     0x140316994
00000001403dcbff mov      rbx, qword ptr [rsp + 0x40]
00000001403dcc04 mov      rsi, qword ptr [rsp + 0x48]
00000001403dcc09 add      rsp, 0x30
00000001403dcc0d pop      rdi
00000001403dcc0e ret      