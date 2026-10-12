0000000140045990 test     byte ptr [rsi + 0x41000000], dl
0000000140045996 lea      edx, [rcx + 2]
0000000140045999 mov      rax, rcx
000000014004599c lea      r10d, [rdx + 0x7e]
00000001400459a0 movups   xmm0, xmmword ptr [rax]
00000001400459a3 movups   xmmword ptr [r8], xmm0
00000001400459a7 movups   xmm1, xmmword ptr [rax + 0x10]
00000001400459ab movups   xmmword ptr [r8 + 0x10], xmm1
00000001400459b0 movups   xmm0, xmmword ptr [rax + 0x20]
00000001400459b4 movups   xmmword ptr [r8 + 0x20], xmm0
00000001400459b9 movups   xmm1, xmmword ptr [rax + 0x30]
00000001400459bd movups   xmmword ptr [r8 + 0x30], xmm1
00000001400459c2 movups   xmm0, xmmword ptr [rax + 0x40]
00000001400459c6 movups   xmmword ptr [r8 + 0x40], xmm0
00000001400459cb movups   xmm1, xmmword ptr [rax + 0x50]