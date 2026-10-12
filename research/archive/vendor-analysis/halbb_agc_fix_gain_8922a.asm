00000001403ea0f8 mov      rax, rsp
00000001403ea0fb mov      qword ptr [rax + 8], rbx
00000001403ea0ff mov      qword ptr [rax + 0x10], rsi
00000001403ea103 push     rdi
00000001403ea104 sub      rsp, 0x40
00000001403ea108 movsxd   rbx, r8d
00000001403ea10b mov      edi, r9d
00000001403ea10e movzx    esi, dl
00000001403ea111 mov      dword ptr [rax - 0x18], 0x415c
00000001403ea118 mov      dword ptr [rax - 0x14], 0x455c
00000001403ea11f cmp      ebx, 1
00000001403ea122 jle      0x1403ea17d
00000001403ea124 mov      rcx, qword ptr [rip + 0x535ed5]
00000001403ea12b lea      rax, [rip + 0x535ece]
00000001403ea132 cmp      rcx, rax
00000001403ea135 je       0x1403ea1e4
00000001403ea13b cmp      byte ptr [rcx + 0x169], 3
00000001403ea142 jb       0x1403ea1e4
00000001403ea148 test     dword ptr [rcx + 0x16c], 0x1000
00000001403ea152 je       0x1403ea1e4
00000001403ea158 mov      rcx, qword ptr [rcx + 0x158]
00000001403ea15f lea      r9, [rip + 0x265e3a]
00000001403ea166 mov      edx, 0x60
00000001403ea16b mov      dword ptr [rsp + 0x20], ebx
00000001403ea16f lea      r8, [rip + 0x2eb37a]
00000001403ea176 call     0x1400088d8
00000001403ea17b jmp      0x1403ea1e4
00000001403ea17d xor      r9d, r9d
00000001403ea180 mov      dword ptr [rsp + 0x20], edi
00000001403ea184 test     dl, dl
00000001403ea186 mov      r8d, 0x10
00000001403ea18c mov      edx, dword ptr [rsp + rbx*4 + 0x30]
00000001403ea190 sete     r9b
00000001403ea194 call     0x140316994
00000001403ea199 mov      rcx, qword ptr [rip + 0x535e60]
00000001403ea1a0 lea      rax, [rip + 0x535e59]
00000001403ea1a7 cmp      rcx, rax
00000001403ea1aa je       0x1403ea1e4
00000001403ea1ac cmp      byte ptr [rcx + 0x1e9], 4
00000001403ea1b3 jb       0x1403ea1e4
00000001403ea1b5 test     dword ptr [rcx + 0x1ec], 0x1000000
00000001403ea1bf je       0x1403ea1e4
00000001403ea1c1 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403ea1c8 lea      r8, [rip + 0x2eb321]
00000001403ea1cf mov      edx, 0x61
00000001403ea1d4 mov      dword ptr [rsp + 0x28], esi
00000001403ea1d8 mov      r9d, ebx
00000001403ea1db mov      dword ptr [rsp + 0x20], edi
00000001403ea1df call     0x140001c34
00000001403ea1e4 mov      rbx, qword ptr [rsp + 0x50]
00000001403ea1e9 mov      rsi, qword ptr [rsp + 0x58]
00000001403ea1ee add      rsp, 0x40
00000001403ea1f2 pop      rdi
00000001403ea1f3 ret      