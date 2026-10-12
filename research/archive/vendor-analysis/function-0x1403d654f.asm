00000001403d654f int3     
00000001403d6550 mov      qword ptr [rsp + 8], rbx
00000001403d6555 mov      qword ptr [rsp + 0x10], rsi
00000001403d655a push     rdi
00000001403d655b sub      rsp, 0x30
00000001403d655f movsxd   rax, dword ptr [rcx + 0x998]
00000001403d6566 mov      r9d, 3
00000001403d656c mov      rbx, qword ptr [rcx + 0x9a0]
00000001403d6573 mov      rdi, rcx
00000001403d6576 imul     rdx, rax, 0x6d0
00000001403d657d mov      rax, qword ptr [rcx + 8]
00000001403d6581 mov      r8d, dword ptr [rdx + rax + 0x53c]
00000001403d6589 cmp      r8d, r9d