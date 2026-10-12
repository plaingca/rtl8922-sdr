0000000140140838 mov      qword ptr [rsp + 8], rbx
000000014014083d push     rdi
000000014014083e sub      rsp, 0x20
0000000140140842 mov      rdi, rcx
0000000140140845 lea      rdx, [rip + 0x4c6d54]
000000014014084c lea      rcx, [rip + 0xb94f05]
0000000140140853 call     0x140031478
0000000140140858 mov      rbx, qword ptr [rip + 0xb94ee9]
000000014014085f test     rbx, rbx
0000000140140862 je       0x14014090c
0000000140140868 cmp      qword ptr [rip + 0xb94ee0], 0
0000000140140870 je       0x14014090c
0000000140140876 lea      rax, [rip + 0xb94ecb]
000000014014087d lea      rdx, [rip + 0x4c6d1c]
0000000140140884 lea      rcx, [rip + 0xb94ecd]
000000014014088b cmp      rbx, rax
000000014014088e je       0x1401408d0
0000000140140890 mov      r8, qword ptr [rbx + 8]
0000000140140894 mov      r9, qword ptr [rbx]
0000000140140897 mov      qword ptr [r8], r9
000000014014089a mov      qword ptr [r9 + 8], r8
000000014014089e mov      qword ptr [rbx], 0x100100
00000001401408a5 mov      qword ptr [rbx + 8], 0x200200
00000001401408ad call     0x140031684
00000001401408b2 mov      rcx, qword ptr [rdi + 0xaf3b8]
00000001401408b9 mov      rax, rbx
00000001401408bc mov      rdx, qword ptr [rcx]
00000001401408bf and      dword ptr [rbx + 0x70], 0
00000001401408c3 mov      qword ptr [rbx + 0x10], rdx
00000001401408c7 mov      dword ptr [rbx + 0x74], 0x58
00000001401408ce jmp      0x140140921
00000001401408d0 call     0x140031684
00000001401408d5 mov      rcx, qword ptr [rip + 0x7df724]
00000001401408dc lea      rax, [rip + 0x7df71d]
00000001401408e3 cmp      rcx, rax
00000001401408e6 je       0x14014091f
00000001401408e8 cmp      byte ptr [rcx + 0x29], 3
00000001401408ec jb       0x14014091f
00000001401408ee mov      eax, dword ptr [rcx + 0x2c]
00000001401408f1 test     al, 2
00000001401408f3 je       0x14014091f
00000001401408f5 mov      rcx, qword ptr [rcx + 0x18]
00000001401408f9 lea      r8, [rip + 0x5531a8]
0000000140140900 mov      edx, 0xa
0000000140140905 call     0x140001b88
000000014014090a jmp      0x14014091f
000000014014090c lea      rdx, [rip + 0x4c6c8d]
0000000140140913 lea      rcx, [rip + 0xb94e3e]
000000014014091a call     0x140031684
000000014014091f xor      eax, eax
0000000140140921 mov      rbx, qword ptr [rsp + 0x30]
0000000140140926 add      rsp, 0x20
000000014014092a pop      rdi
000000014014092b ret      