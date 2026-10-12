00000001403d7cd0 mov      qword ptr [rsp + 8], rbx
00000001403d7cd5 push     rdi
00000001403d7cd6 sub      rsp, 0x20
00000001403d7cda mov      rdi, qword ptr [rcx + 0x9a0]
00000001403d7ce1 mov      rbx, rcx
00000001403d7ce4 mov      rcx, qword ptr [rip + 0x548315]
00000001403d7ceb lea      rax, [rip + 0x54830e]
00000001403d7cf2 cmp      rcx, rax
00000001403d7cf5 je       0x1403d7d2b
00000001403d7cf7 cmp      byte ptr [rcx + 0x169], 4
00000001403d7cfe jb       0x1403d7d2b
00000001403d7d00 test     dword ptr [rcx + 0x16c], 0x1000
00000001403d7d0a je       0x1403d7d2b
00000001403d7d0c mov      rcx, qword ptr [rcx + 0x158]
00000001403d7d13 lea      r9, [rip + 0x2755e6]
00000001403d7d1a mov      edx, 0x49
00000001403d7d1f lea      r8, [rip + 0x2fd4f2]
00000001403d7d26 call     0x140008874
00000001403d7d2b and      dword ptr [rdi + 0x1518], 0
00000001403d7d32 lea      r8, [rdi + 0x1514]
00000001403d7d39 mov      r9b, byte ptr [rbx + 0x998]
00000001403d7d40 mov      edx, 0x12c
00000001403d7d45 mov      rcx, qword ptr [rbx]
00000001403d7d48 mov      rbx, qword ptr [rsp + 0x30]
00000001403d7d4d add      rsp, 0x20
00000001403d7d51 pop      rdi
00000001403d7d52 jmp      0x140267c78