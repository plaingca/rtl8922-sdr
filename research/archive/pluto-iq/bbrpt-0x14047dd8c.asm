000000014047dd8c sub      rsp, 0x48
000000014047dd90 mov      ecx, dword ptr [rdx]
000000014047dd92 mov      r9, rdx
000000014047dd95 cmp      ecx, 0x15
000000014047dd98 ja       0x14047e64b
000000014047dd9e je       0x14047e604
000000014047dda4 cmp      ecx, 0xa
000000014047dda7 ja       0x14047e232
000000014047ddad je       0x14047e1f6
000000014047ddb3 cmp      ecx, 5
000000014047ddb6 ja       0x14047dfc8
000000014047ddbc je       0x14047df7a
000000014047ddc2 mov      eax, ecx
000000014047ddc4 test     ecx, ecx
000000014047ddc6 je       0x14047df1f
000000014047ddcc sub      eax, 1
000000014047ddcf je       0x14047dec4
000000014047ddd5 sub      eax, 1
000000014047ddd8 je       0x14047de61
000000014047ddde sub      eax, 1
000000014047dde1 je       0x14047de25
000000014047dde3 cmp      eax, 1
000000014047dde6 jne      0x14047ebb2
000000014047ddec mov      rcx, qword ptr [rip + 0x4a220d]
000000014047ddf3 lea      rax, [rip + 0x4a2206]
000000014047ddfa cmp      rcx, rax
000000014047ddfd je       0x14047edcc
000000014047de03 cmp      byte ptr [rcx + 0x229], 4
000000014047de0a jb       0x14047edcc
000000014047de10 mov      eax, dword ptr [rcx + 0x22c]
000000014047de16 test     al, 8
000000014047de18 je       0x14047edcc
000000014047de1e mov      edx, 0x56
000000014047de23 jmp      0x14047de98
000000014047de25 mov      rcx, qword ptr [rip + 0x4a21d4]
000000014047de2c lea      rax, [rip + 0x4a21cd]
000000014047de33 cmp      rcx, rax
000000014047de36 je       0x14047edcc
000000014047de3c cmp      byte ptr [rcx + 0x229], 4
000000014047de43 jb       0x14047edcc
000000014047de49 mov      eax, dword ptr [rcx + 0x22c]
000000014047de4f test     al, 8
000000014047de51 je       0x14047edcc
000000014047de57 mov      edx, 0x55
000000014047de5c jmp      0x14047defb
000000014047de61 mov      rcx, qword ptr [rip + 0x4a2198]
000000014047de68 lea      rax, [rip + 0x4a2191]
000000014047de6f cmp      rcx, rax
000000014047de72 je       0x14047edcc
000000014047de78 cmp      byte ptr [rcx + 0x229], 4
000000014047de7f jb       0x14047edcc
000000014047de85 mov      eax, dword ptr [rcx + 0x22c]
000000014047de8b test     al, 8
000000014047de8d je       0x14047edcc
000000014047de93 mov      edx, 0x54
000000014047de98 mov      eax, dword ptr [r9 + 0xc]
000000014047de9c lea      r8, [rip + 0x46a12d]
000000014047dea3 mov      rcx, qword ptr [rcx + 0x218]
000000014047deaa mov      dword ptr [rsp + 0x28], eax
000000014047deae mov      eax, dword ptr [r9 + 8]
000000014047deb2 mov      r9d, dword ptr [r9 + 4]
000000014047deb6 mov      dword ptr [rsp + 0x20], eax
000000014047deba call     0x140001c34
000000014047debf jmp      0x14047edcc
000000014047dec4 mov      rcx, qword ptr [rip + 0x4a2135]
000000014047decb lea      rax, [rip + 0x4a212e]
000000014047ded2 cmp      rcx, rax
000000014047ded5 je       0x14047edcc
000000014047dedb cmp      byte ptr [rcx + 0x229], 4
000000014047dee2 jb       0x14047edcc
000000014047dee8 mov      eax, dword ptr [rcx + 0x22c]
000000014047deee test     al, 8
000000014047def0 je       0x14047edcc
000000014047def6 mov      edx, 0x53
000000014047defb mov      eax, dword ptr [r9 + 8]
000000014047deff lea      r8, [rip + 0x46a0ca]
000000014047df06 mov      r9d, dword ptr [r9 + 4]
000000014047df0a mov      rcx, qword ptr [rcx + 0x218]
000000014047df11 mov      dword ptr [rsp + 0x20], eax
000000014047df15 call     0x140001bec
000000014047df1a jmp      0x14047edcc
000000014047df1f mov      rcx, qword ptr [rip + 0x4a20da]
000000014047df26 lea      rax, [rip + 0x4a20d3]
000000014047df2d cmp      rcx, rax
000000014047df30 je       0x14047edcc
000000014047df36 cmp      byte ptr [rcx + 0x229], 4
000000014047df3d jb       0x14047edcc
000000014047df43 mov      eax, dword ptr [rcx + 0x22c]
000000014047df49 test     al, 8
000000014047df4b je       0x14047edcc
000000014047df51 mov      edx, 0x52
000000014047df56 mov      eax, dword ptr [r9 + 8]
000000014047df5a lea      r8, [rip + 0x46a06f]
000000014047df61 mov      r9d, dword ptr [r9 + 4]
000000014047df65 mov      rcx, qword ptr [rcx + 0x218]
000000014047df6c mov      dword ptr [rsp + 0x20], eax
000000014047df70 call     0x140001bec
000000014047df75 jmp      0x14047edcc
000000014047df7a mov      rcx, qword ptr [rip + 0x4a207f]
000000014047df81 lea      rax, [rip + 0x4a2078]
000000014047df88 cmp      rcx, rax
000000014047df8b je       0x14047edcc
000000014047df91 cmp      byte ptr [rcx + 0x229], 4
000000014047df98 jb       0x14047edcc
000000014047df9e mov      eax, dword ptr [rcx + 0x22c]
000000014047dfa4 test     al, 8
000000014047dfa6 je       0x14047edcc
000000014047dfac mov      edx, 0x57
000000014047dfb1 mov      rcx, qword ptr [rcx + 0x218]
000000014047dfb8 lea      r8, [rip + 0x46a011]
000000014047dfbf add      rsp, 0x48
000000014047dfc3 jmp      0x140001b88
000000014047dfc8 mov      eax, ecx
000000014047dfca sub      eax, 6
000000014047dfcd je       0x14047e158
000000014047dfd3 sub      eax, 1
000000014047dfd6 je       0x14047e0a0
000000014047dfdc sub      eax, 1
000000014047dfdf je       0x14047e03c
000000014047dfe1 cmp      eax, 1
000000014047dfe4 jne      0x14047ebb2
000000014047dfea mov      rcx, qword ptr [rip + 0x4a200f]
000000014047dff1 lea      rax, [rip + 0x4a2008]
000000014047dff8 cmp      rcx, rax
000000014047dffb je       0x14047edcc
000000014047e001 cmp      byte ptr [rcx + 0x229], 4
000000014047e008 jb       0x14047edcc
000000014047e00e mov      eax, dword ptr [rcx + 0x22c]
000000014047e014 test     al, 8
000000014047e016 je       0x14047edcc
000000014047e01c mov      edx, 0x5b
000000014047e021 mov      r9d, dword ptr [r9 + 4]
000000014047e025 lea      r8, [rip + 0x469fa4]
000000014047e02c mov      rcx, qword ptr [rcx + 0x218]
000000014047e033 add      rsp, 0x48
000000014047e037 jmp      0x140001bb0
000000014047e03c mov      rcx, qword ptr [rip + 0x4a1fbd]
000000014047e043 lea      rax, [rip + 0x4a1fb6]
000000014047e04a cmp      rcx, rax
000000014047e04d je       0x14047edcc
000000014047e053 cmp      byte ptr [rcx + 0x229], 4
000000014047e05a jb       0x14047edcc
000000014047e060 mov      eax, dword ptr [rcx + 0x22c]
000000014047e066 test     al, 8
000000014047e068 je       0x14047edcc
000000014047e06e cmp      dword ptr [rdx + 4], 0
000000014047e072 lea      r10, [rip + 0x17e7f7]
000000014047e079 lea      r9, [rip + 0x17e800]
000000014047e080 mov      edx, 0x5a
000000014047e085 cmovne   r9, r10
000000014047e089 mov      rcx, qword ptr [rcx + 0x218]
000000014047e090 lea      r8, [rip + 0x469f39]
000000014047e097 add      rsp, 0x48
000000014047e09b jmp      0x140008874
000000014047e0a0 mov      rcx, qword ptr [rip + 0x4a1f59]
000000014047e0a7 lea      rax, [rip + 0x4a1f52]
000000014047e0ae cmp      rcx, rax
000000014047e0b1 je       0x14047edcc
000000014047e0b7 cmp      byte ptr [rcx + 0x229], 4
000000014047e0be jb       0x14047edcc
000000014047e0c4 mov      eax, dword ptr [rcx + 0x22c]
000000014047e0ca test     al, 8
000000014047e0cc je       0x14047edcc
000000014047e0d2 mov      edx, dword ptr [rdx + 0xc]
000000014047e0d5 test     edx, edx
000000014047e0d7 jne      0x14047e0e2
000000014047e0d9 lea      rax, [rip + 0x188370]
000000014047e0e0 jmp      0x14047e105
000000014047e0e2 cmp      edx, 1
000000014047e0e5 jne      0x14047e0f0
000000014047e0e7 lea      rax, [rip + 0x188372]
000000014047e0ee jmp      0x14047e105
000000014047e0f0 cmp      edx, 2
000000014047e0f3 lea      r8, [rip + 0x188376]
000000014047e0fa lea      rax, [rip + 0x18837f]
000000014047e101 cmove    rax, r8
000000014047e105 mov      edx, dword ptr [r9 + 4]
000000014047e109 test     edx, edx
000000014047e10b jne      0x14047e116
000000014047e10d lea      r8, [rip + 0x17c9ac]
000000014047e114 jmp      0x14047e12b
000000014047e116 cmp      edx, 1
000000014047e119 lea      r10, [rip + 0x17c9b0]
000000014047e120 lea      r8, [rip + 0x17c9b9]
000000014047e127 cmove    r8, r10
000000014047e12b mov      rcx, qword ptr [rcx + 0x218]
000000014047e132 mov      edx, 0x59
000000014047e137 mov      qword ptr [rsp + 0x28], rax
000000014047e13c mov      eax, dword ptr [r9 + 8]
000000014047e140 mov      r9, r8
000000014047e143 lea      r8, [rip + 0x469e86]
000000014047e14a mov      dword ptr [rsp + 0x20], eax
000000014047e14e call     0x1400fcc1c
000000014047e153 jmp      0x14047edcc
000000014047e158 mov      rcx, qword ptr [rip + 0x4a1ea1]
000000014047e15f lea      rax, [rip + 0x4a1e9a]
000000014047e166 cmp      rcx, rax
000000014047e169 je       0x14047edcc
000000014047e16f cmp      byte ptr [rcx + 0x229], 4
000000014047e176 jb       0x14047edcc
000000014047e17c mov      eax, dword ptr [rcx + 0x22c]
000000014047e182 test     al, 8
000000014047e184 je       0x14047edcc
000000014047e18a mov      eax, dword ptr [rdx + 0xc]
000000014047e18d cmp      eax, 0x1011
000000014047e192 jne      0x14047e19d
000000014047e194 lea      r8, [rip + 0x1ca6c5]
000000014047e19b jmp      0x14047e1b4
000000014047e19d cmp      eax, 0x1002
000000014047e1a2 lea      rdx, [rip + 0x1ca697]
000000014047e1a9 lea      r8, [rip + 0x1ca6a0]
000000014047e1b0 cmove    r8, rdx
000000014047e1b4 cmp      dword ptr [r9 + 8], 0
000000014047e1b9 lea      rdx, [rip + 0x1a2400]
000000014047e1c0 mov      r9d, dword ptr [r9 + 4]
000000014047e1c4 lea      r10, [rip + 0x1a23e5]
000000014047e1cb mov      rcx, qword ptr [rcx + 0x218]
000000014047e1d2 cmovne   r10, rdx
000000014047e1d6 mov      qword ptr [rsp + 0x28], r8
000000014047e1db mov      edx, 0x58
000000014047e1e0 lea      r8, [rip + 0x469de9]
000000014047e1e7 mov      qword ptr [rsp + 0x20], r10
000000014047e1ec call     0x14005ee00
000000014047e1f1 jmp      0x14047edcc
000000014047e1f6 mov      rcx, qword ptr [rip + 0x4a1e03]
000000014047e1fd lea      rax, [rip + 0x4a1dfc]
000000014047e204 cmp      rcx, rax
000000014047e207 je       0x14047edcc
000000014047e20d cmp      byte ptr [rcx + 0x229], 4
000000014047e214 jb       0x14047edcc
000000014047e21a mov      eax, dword ptr [rcx + 0x22c]
000000014047e220 test     al, 8
000000014047e222 je       0x14047edcc
000000014047e228 mov      edx, 0x5c
000000014047e22d jmp      0x14047e021
000000014047e232 cmp      ecx, 0x10
000000014047e235 ja       0x14047e46d
000000014047e23b je       0x14047e412
000000014047e241 mov      eax, ecx
000000014047e243 sub      eax, 0xb
000000014047e246 je       0x14047e3a3
000000014047e24c sub      eax, 1
000000014047e24f je       0x14047e34e
000000014047e255 sub      eax, 1
000000014047e258 je       0x14047e2fb
000000014047e25e sub      eax, 1
000000014047e261 je       0x14047e2a8
000000014047e263 cmp      eax, 1
000000014047e266 jne      0x14047ebb2
000000014047e26c mov      rcx, qword ptr [rip + 0x4a1d8d]
000000014047e273 lea      rax, [rip + 0x4a1d86]
000000014047e27a cmp      rcx, rax
000000014047e27d je       0x14047edcc
000000014047e283 cmp      byte ptr [rcx + 0x229], 4
000000014047e28a jb       0x14047edcc
000000014047e290 mov      eax, dword ptr [rcx + 0x22c]
000000014047e296 test     al, 8
000000014047e298 je       0x14047edcc
000000014047e29e mov      edx, 0x61
000000014047e2a3 jmp      0x14047e021
000000014047e2a8 mov      rcx, qword ptr [rip + 0x4a1d51]
000000014047e2af lea      rax, [rip + 0x4a1d4a]
000000014047e2b6 cmp      rcx, rax
000000014047e2b9 je       0x14047edcc
000000014047e2bf cmp      byte ptr [rcx + 0x229], 4
000000014047e2c6 jb       0x14047edcc
000000014047e2cc mov      eax, dword ptr [rcx + 0x22c]
000000014047e2d2 test     al, 8
000000014047e2d4 je       0x14047edcc
000000014047e2da mov      eax, dword ptr [rdx + 4]
000000014047e2dd lea      r9, [rip + 0x1c89fc]
000000014047e2e4 lea      rdx, [rip + 0x1dac15]
000000014047e2eb test     eax, eax
000000014047e2ed cmovne   r9, rdx
000000014047e2f1 mov      edx, 0x60
000000014047e2f6 jmp      0x14047e089
000000014047e2fb mov      rcx, qword ptr [rip + 0x4a1cfe]
000000014047e302 lea      rax, [rip + 0x4a1cf7]
000000014047e309 cmp      rcx, rax
000000014047e30c je       0x14047edcc
000000014047e312 cmp      byte ptr [rcx + 0x229], 4
000000014047e319 jb       0x14047edcc
000000014047e31f mov      eax, dword ptr [rcx + 0x22c]
000000014047e325 test     al, 8
000000014047e327 je       0x14047edcc
000000014047e32d mov      eax, dword ptr [rdx + 4]
000000014047e330 lea      r9, [rip + 0x1dabb9]
000000014047e337 lea      rdx, [rip + 0x1daba2]
000000014047e33e test     eax, eax
000000014047e340 cmovne   r9, rdx
000000014047e344 mov      edx, 0x5f
000000014047e349 jmp      0x14047e089
000000014047e34e mov      rcx, qword ptr [rip + 0x4a1cab]
000000014047e355 lea      rax, [rip + 0x4a1ca4]
000000014047e35c cmp      rcx, rax
000000014047e35f je       0x14047edcc
000000014047e365 cmp      byte ptr [rcx + 0x229], 4
000000014047e36c jb       0x14047edcc
000000014047e372 mov      eax, dword ptr [rcx + 0x22c]
000000014047e378 test     al, 8
000000014047e37a je       0x14047edcc
000000014047e380 cmp      dword ptr [r9 + 8], 0
000000014047e385 lea      rdx, [rip + 0x1a2234]
000000014047e38c lea      r10, [rip + 0x1a221d]
000000014047e393 cmovne   r10, rdx
000000014047e397 mov      edx, 0x5e
000000014047e39c mov      qword ptr [rsp + 0x20], r10
000000014047e3a1 jmp      0x14047e3f6
000000014047e3a3 mov      rcx, qword ptr [rip + 0x4a1c56]
000000014047e3aa lea      rax, [rip + 0x4a1c4f]
000000014047e3b1 cmp      rcx, rax
000000014047e3b4 je       0x14047edcc
000000014047e3ba cmp      byte ptr [rcx + 0x229], 4
000000014047e3c1 jb       0x14047edcc
000000014047e3c7 mov      eax, dword ptr [rcx + 0x22c]
000000014047e3cd test     al, 8
000000014047e3cf je       0x14047edcc
000000014047e3d5 cmp      dword ptr [r9 + 8], 0
000000014047e3da lea      rdx, [rip + 0x19e09f]
000000014047e3e1 lea      r8, [rip + 0x18da18]
000000014047e3e8 cmovne   r8, rdx
000000014047e3ec mov      edx, 0x5d
000000014047e3f1 mov      qword ptr [rsp + 0x20], r8
000000014047e3f6 mov      r9d, dword ptr [r9 + 4]
000000014047e3fa lea      r8, [rip + 0x469bcf]
000000014047e401 mov      rcx, qword ptr [rcx + 0x218]
000000014047e408 call     0x14000ce54
000000014047e40d jmp      0x14047edcc
000000014047e412 mov      rcx, qword ptr [rip + 0x4a1be7]
000000014047e419 lea      rax, [rip + 0x4a1be0]
000000014047e420 cmp      rcx, rax
000000014047e423 je       0x14047edcc
000000014047e429 cmp      byte ptr [rcx + 0x229], 4
000000014047e430 jb       0x14047edcc
000000014047e436 mov      eax, dword ptr [rcx + 0x22c]
000000014047e43c test     al, 8
000000014047e43e je       0x14047edcc
000000014047e444 mov      edx, 0x62
000000014047e449 mov      eax, dword ptr [r9 + 8]
000000014047e44d lea      r8, [rip + 0x469b7c]
000000014047e454 mov      r9d, dword ptr [r9 + 4]
000000014047e458 mov      rcx, qword ptr [rcx + 0x218]
000000014047e45f mov      dword ptr [rsp + 0x20], eax
000000014047e463 call     0x140001bec
000000014047e468 jmp      0x14047edcc
000000014047e46d mov      eax, ecx
000000014047e46f sub      eax, 0x11
000000014047e472 je       0x14047e5c8
000000014047e478 sub      eax, 1
000000014047e47b je       0x14047e55d
000000014047e481 sub      eax, 1
000000014047e484 je       0x14047e4f2
000000014047e486 cmp      eax, 1
000000014047e489 jne      0x14047ebb2
000000014047e48f mov      rcx, qword ptr [rip + 0x4a1b6a]
000000014047e496 lea      rax, [rip + 0x4a1b63]
000000014047e49d cmp      rcx, rax
000000014047e4a0 je       0x14047edcc
000000014047e4a6 cmp      byte ptr [rcx + 0x229], 4
000000014047e4ad jb       0x14047edcc
000000014047e4b3 mov      eax, dword ptr [rcx + 0x22c]
000000014047e4b9 test     al, 8
000000014047e4bb je       0x14047edcc
000000014047e4c1 mov      edx, 0x66
000000014047e4c6 mov      eax, dword ptr [r9 + 0xc]
000000014047e4ca lea      r8, [rip + 0x469aff]
000000014047e4d1 mov      rcx, qword ptr [rcx + 0x218]
000000014047e4d8 mov      dword ptr [rsp + 0x28], eax
000000014047e4dc mov      eax, dword ptr [r9 + 8]
000000014047e4e0 mov      r9d, dword ptr [r9 + 4]
000000014047e4e4 mov      dword ptr [rsp + 0x20], eax
000000014047e4e8 call     0x140001c34
000000014047e4ed jmp      0x14047edcc
000000014047e4f2 mov      rcx, qword ptr [rip + 0x4a1b07]
000000014047e4f9 lea      rax, [rip + 0x4a1b00]
000000014047e500 cmp      rcx, rax
000000014047e503 je       0x14047edcc
000000014047e509 cmp      byte ptr [rcx + 0x229], 4
000000014047e510 jb       0x14047edcc
000000014047e516 mov      eax, dword ptr [rcx + 0x22c]
000000014047e51c test     al, 8
000000014047e51e je       0x14047edcc
000000014047e524 mov      eax, dword ptr [r9 + 0x10]
000000014047e528 lea      r8, [rip + 0x469aa1]
000000014047e52f mov      rcx, qword ptr [rcx + 0x218]
000000014047e536 mov      edx, 0x65
000000014047e53b mov      dword ptr [rsp + 0x30], eax
000000014047e53f mov      eax, dword ptr [r9 + 0xc]
000000014047e543 mov      dword ptr [rsp + 0x28], eax
000000014047e547 mov      eax, dword ptr [r9 + 8]
000000014047e54b mov      r9d, dword ptr [r9 + 4]
000000014047e54f mov      dword ptr [rsp + 0x20], eax
000000014047e553 call     0x140008794
000000014047e558 jmp      0x14047edcc
000000014047e55d mov      rcx, qword ptr [rip + 0x4a1a9c]
000000014047e564 lea      rax, [rip + 0x4a1a95]
000000014047e56b cmp      rcx, rax
000000014047e56e je       0x14047edcc
000000014047e574 cmp      byte ptr [rcx + 0x229], 4
000000014047e57b jb       0x14047edcc
000000014047e581 mov      eax, dword ptr [rcx + 0x22c]
000000014047e587 test     al, 8
000000014047e589 je       0x14047edcc
000000014047e58f mov      eax, dword ptr [r9 + 0x10]
000000014047e593 lea      r8, [rip + 0x469a36]
000000014047e59a mov      rcx, qword ptr [rcx + 0x218]
000000014047e5a1 mov      edx, 0x64
000000014047e5a6 mov      dword ptr [rsp + 0x30], eax
000000014047e5aa mov      eax, dword ptr [r9 + 0xc]
000000014047e5ae mov      dword ptr [rsp + 0x28], eax
000000014047e5b2 mov      eax, dword ptr [r9 + 8]
000000014047e5b6 mov      r9d, dword ptr [r9 + 4]
000000014047e5ba mov      dword ptr [rsp + 0x20], eax
000000014047e5be call     0x140008794
000000014047e5c3 jmp      0x14047edcc
000000014047e5c8 mov      rcx, qword ptr [rip + 0x4a1a31]
000000014047e5cf lea      rax, [rip + 0x4a1a2a]
000000014047e5d6 cmp      rcx, rax
000000014047e5d9 je       0x14047edcc
000000014047e5df cmp      byte ptr [rcx + 0x229], 4
000000014047e5e6 jb       0x14047edcc
000000014047e5ec mov      eax, dword ptr [rcx + 0x22c]
000000014047e5f2 test     al, 8
000000014047e5f4 je       0x14047edcc
000000014047e5fa mov      edx, 0x63
000000014047e5ff jmp      0x14047defb
000000014047e604 mov      rcx, qword ptr [rip + 0x4a19f5]
000000014047e60b lea      rax, [rip + 0x4a19ee]
000000014047e612 cmp      rcx, rax
000000014047e615 je       0x14047edcc
000000014047e61b cmp      byte ptr [rcx + 0x229], 4
000000014047e622 jb       0x14047edcc
000000014047e628 mov      eax, dword ptr [rcx + 0x22c]
000000014047e62e test     al, 8
000000014047e630 je       0x14047edcc
000000014047e636 mov      edx, 0x67
000000014047e63b mov      r9d, dword ptr [r9 + 4]
000000014047e63f mov      rcx, qword ptr [rcx + 0x218]
000000014047e646 jmp      0x14047ebf7
000000014047e64b cmp      ecx, 0x20
000000014047e64e ja       0x14047e94a
000000014047e654 je       0x14047e90e
000000014047e65a cmp      ecx, 0x1b
000000014047e65d ja       0x14047e7fc
000000014047e663 je       0x14047e7c0
000000014047e669 mov      eax, ecx
000000014047e66b sub      eax, 0x16
000000014047e66e je       0x14047e784
000000014047e674 sub      eax, 1
000000014047e677 je       0x14047e748
000000014047e67d sub      eax, 1
000000014047e680 je       0x14047e70c
000000014047e686 sub      eax, 1
000000014047e689 je       0x14047e6d0
000000014047e68b cmp      eax, 1
000000014047e68e jne      0x14047ebb2
000000014047e694 mov      rcx, qword ptr [rip + 0x4a1965]
000000014047e69b lea      rax, [rip + 0x4a195e]
000000014047e6a2 cmp      rcx, rax
000000014047e6a5 je       0x14047edcc
000000014047e6ab cmp      byte ptr [rcx + 0x229], 4
000000014047e6b2 jb       0x14047edcc
000000014047e6b8 mov      eax, dword ptr [rcx + 0x22c]
000000014047e6be test     al, 8
000000014047e6c0 je       0x14047edcc
000000014047e6c6 mov      edx, 0x6c
000000014047e6cb jmp      0x14047df56
000000014047e6d0 mov      rcx, qword ptr [rip + 0x4a1929]
000000014047e6d7 lea      rax, [rip + 0x4a1922]
000000014047e6de cmp      rcx, rax
000000014047e6e1 je       0x14047edcc
000000014047e6e7 cmp      byte ptr [rcx + 0x229], 4
000000014047e6ee jb       0x14047edcc
000000014047e6f4 mov      eax, dword ptr [rcx + 0x22c]
000000014047e6fa test     al, 8
000000014047e6fc je       0x14047edcc
000000014047e702 mov      edx, 0x6b
000000014047e707 jmp      0x14047defb
000000014047e70c mov      rcx, qword ptr [rip + 0x4a18ed]
000000014047e713 lea      rax, [rip + 0x4a18e6]
000000014047e71a cmp      rcx, rax
000000014047e71d je       0x14047edcc
000000014047e723 cmp      byte ptr [rcx + 0x229], 4
000000014047e72a jb       0x14047edcc
000000014047e730 mov      eax, dword ptr [rcx + 0x22c]
000000014047e736 test     al, 8
000000014047e738 je       0x14047edcc
000000014047e73e mov      edx, 0x6a
000000014047e743 jmp      0x14047defb
000000014047e748 mov      rcx, qword ptr [rip + 0x4a18b1]
000000014047e74f lea      rax, [rip + 0x4a18aa]
000000014047e756 cmp      rcx, rax
000000014047e759 je       0x14047edcc
000000014047e75f cmp      byte ptr [rcx + 0x229], 4
000000014047e766 jb       0x14047edcc
000000014047e76c mov      eax, dword ptr [rcx + 0x22c]
000000014047e772 test     al, 8
000000014047e774 je       0x14047edcc
000000014047e77a mov      edx, 0x69
000000014047e77f jmp      0x14047dfb1
000000014047e784 mov      rcx, qword ptr [rip + 0x4a1875]
000000014047e78b lea      rax, [rip + 0x4a186e]
000000014047e792 cmp      rcx, rax
000000014047e795 je       0x14047edcc
000000014047e79b cmp      byte ptr [rcx + 0x229], 4
000000014047e7a2 jb       0x14047edcc
000000014047e7a8 mov      eax, dword ptr [rcx + 0x22c]
000000014047e7ae test     al, 8
000000014047e7b0 je       0x14047edcc
000000014047e7b6 mov      edx, 0x68
000000014047e7bb jmp      0x14047e449
000000014047e7c0 mov      rcx, qword ptr [rip + 0x4a1839]
000000014047e7c7 lea      rax, [rip + 0x4a1832]
000000014047e7ce cmp      rcx, rax
000000014047e7d1 je       0x14047edcc
000000014047e7d7 cmp      byte ptr [rcx + 0x229], 4
000000014047e7de jb       0x14047edcc
000000014047e7e4 mov      eax, dword ptr [rcx + 0x22c]
000000014047e7ea test     al, 8
000000014047e7ec je       0x14047edcc
000000014047e7f2 mov      edx, 0x6d
000000014047e7f7 jmp      0x14047e63b
000000014047e7fc mov      eax, ecx
000000014047e7fe sub      eax, 0x1c
000000014047e801 je       0x14047e8d2
000000014047e807 sub      eax, 1
000000014047e80a je       0x14047e896
000000014047e810 sub      eax, 1
000000014047e813 je       0x14047e85a
000000014047e815 cmp      eax, 1
000000014047e818 jne      0x14047ebb2
000000014047e81e mov      rcx, qword ptr [rip + 0x4a17db]
000000014047e825 lea      rax, [rip + 0x4a17d4]
000000014047e82c cmp      rcx, rax
000000014047e82f je       0x14047edcc
000000014047e835 cmp      byte ptr [rcx + 0x229], 4
000000014047e83c jb       0x14047edcc
000000014047e842 mov      eax, dword ptr [rcx + 0x22c]
000000014047e848 test     al, 8
000000014047e84a je       0x14047edcc
000000014047e850 mov      edx, 0x71
000000014047e855 jmp      0x14047dfb1
000000014047e85a mov      rcx, qword ptr [rip + 0x4a179f]
000000014047e861 lea      rax, [rip + 0x4a1798]
000000014047e868 cmp      rcx, rax
000000014047e86b je       0x14047edcc
000000014047e871 cmp      byte ptr [rcx + 0x229], 4
000000014047e878 jb       0x14047edcc
000000014047e87e mov      eax, dword ptr [rcx + 0x22c]
000000014047e884 test     al, 8
000000014047e886 je       0x14047edcc
000000014047e88c mov      edx, 0x70
000000014047e891 jmp      0x14047e449
000000014047e896 mov      rcx, qword ptr [rip + 0x4a1763]
000000014047e89d lea      rax, [rip + 0x4a175c]
000000014047e8a4 cmp      rcx, rax
000000014047e8a7 je       0x14047edcc
000000014047e8ad cmp      byte ptr [rcx + 0x229], 4
000000014047e8b4 jb       0x14047edcc
000000014047e8ba mov      eax, dword ptr [rcx + 0x22c]
000000014047e8c0 test     al, 8
000000014047e8c2 je       0x14047edcc
000000014047e8c8 mov      edx, 0x6f
000000014047e8cd jmp      0x14047e63b
000000014047e8d2 mov      rcx, qword ptr [rip + 0x4a1727]
000000014047e8d9 lea      rax, [rip + 0x4a1720]
000000014047e8e0 cmp      rcx, rax
000000014047e8e3 je       0x14047edcc
000000014047e8e9 cmp      byte ptr [rcx + 0x229], 4
000000014047e8f0 jb       0x14047edcc
000000014047e8f6 mov      eax, dword ptr [rcx + 0x22c]
000000014047e8fc test     al, 8
000000014047e8fe je       0x14047edcc
000000014047e904 mov      edx, 0x6e
000000014047e909 jmp      0x14047e021
000000014047e90e mov      rcx, qword ptr [rip + 0x4a16eb]
000000014047e915 lea      rax, [rip + 0x4a16e4]
000000014047e91c cmp      rcx, rax
000000014047e91f je       0x14047edcc
000000014047e925 cmp      byte ptr [rcx + 0x229], 4
000000014047e92c jb       0x14047edcc
000000014047e932 mov      eax, dword ptr [rcx + 0x22c]
000000014047e938 test     al, 8
000000014047e93a je       0x14047edcc
000000014047e940 mov      edx, 0x72
000000014047e945 jmp      0x14047dfb1
000000014047e94a cmp      ecx, 0x26
000000014047e94d ja       0x14047eb90
000000014047e953 je       0x14047eb54
000000014047e959 mov      eax, ecx
000000014047e95b sub      eax, 0x21
000000014047e95e je       0x14047eb18
000000014047e964 sub      eax, 1
000000014047e967 je       0x14047eadc
000000014047e96d sub      eax, 1
000000014047e970 je       0x14047ea79
000000014047e976 sub      eax, 1
000000014047e979 je       0x14047e9fa
000000014047e97b cmp      eax, 1
000000014047e97e jne      0x14047ebb2
000000014047e984 mov      rcx, qword ptr [rip + 0x4a1675]
000000014047e98b lea      rax, [rip + 0x4a166e]
000000014047e992 cmp      rcx, rax
000000014047e995 je       0x14047edcc
000000014047e99b cmp      byte ptr [rcx + 0x229], 4
000000014047e9a2 jb       0x14047edcc
000000014047e9a8 mov      eax, dword ptr [rcx + 0x22c]
000000014047e9ae test     al, 8
000000014047e9b0 je       0x14047edcc
000000014047e9b6 cmp      dword ptr [rdx + 0xc], 0
000000014047e9ba lea      r8, [rip + 0x17debf]
000000014047e9c1 mov      eax, dword ptr [r9 + 8]
000000014047e9c5 lea      r10, [rip + 0x17dea4]
000000014047e9cc mov      r9d, dword ptr [r9 + 4]
000000014047e9d0 cmove    r10, r8
000000014047e9d4 mov      rcx, qword ptr [rcx + 0x218]
000000014047e9db lea      r8, [rip + 0x4695ee]
000000014047e9e2 mov      qword ptr [rsp + 0x28], r10
000000014047e9e7 mov      edx, 0x77
000000014047e9ec mov      dword ptr [rsp + 0x20], eax
000000014047e9f0 call     0x14003e444
000000014047e9f5 jmp      0x14047edcc
000000014047e9fa mov      rcx, qword ptr [rip + 0x4a15ff]
000000014047ea01 lea      rax, [rip + 0x4a15f8]
000000014047ea08 cmp      rcx, rax
000000014047ea0b je       0x14047edcc
000000014047ea11 cmp      byte ptr [rcx + 0x229], 4
000000014047ea18 jb       0x14047edcc
000000014047ea1e mov      eax, dword ptr [rcx + 0x22c]
000000014047ea24 test     al, 8
000000014047ea26 je       0x14047edcc
000000014047ea2c mov      eax, dword ptr [r9 + 0xc]
000000014047ea30 lea      rdx, [rip + 0x1da489]
000000014047ea37 cmp      dword ptr [r9 + 0x10], 0
000000014047ea3c lea      r8, [rip + 0x1da48d]
000000014047ea43 mov      rcx, qword ptr [rcx + 0x218]
000000014047ea4a cmovne   r8, rdx
000000014047ea4e mov      edx, 0x76
000000014047ea53 mov      qword ptr [rsp + 0x30], r8
000000014047ea58 lea      r8, [rip + 0x469571]
000000014047ea5f mov      dword ptr [rsp + 0x28], eax
000000014047ea63 mov      eax, dword ptr [r9 + 8]
000000014047ea67 mov      r9d, dword ptr [r9 + 4]
000000014047ea6b mov      dword ptr [rsp + 0x20], eax
000000014047ea6f call     0x1402fae84
000000014047ea74 jmp      0x14047edcc
000000014047ea79 mov      rcx, qword ptr [rip + 0x4a1580]
000000014047ea80 lea      rax, [rip + 0x4a1579]
000000014047ea87 cmp      rcx, rax
000000014047ea8a je       0x14047edcc
000000014047ea90 cmp      byte ptr [rcx + 0x229], 4
000000014047ea97 jb       0x14047edcc
000000014047ea9d mov      eax, dword ptr [rcx + 0x22c]
000000014047eaa3 test     al, 8
000000014047eaa5 je       0x14047edcc
000000014047eaab mov      eax, dword ptr [r9 + 0xc]
000000014047eaaf lea      r8, [rip + 0x46951a]
000000014047eab6 mov      rcx, qword ptr [rcx + 0x218]
000000014047eabd mov      edx, 0x75
000000014047eac2 mov      dword ptr [rsp + 0x28], eax
000000014047eac6 mov      eax, dword ptr [r9 + 8]
000000014047eaca mov      r9d, dword ptr [r9 + 4]
000000014047eace mov      dword ptr [rsp + 0x20], eax
000000014047ead2 call     0x140001c34
000000014047ead7 jmp      0x14047edcc
000000014047eadc mov      rcx, qword ptr [rip + 0x4a151d]
000000014047eae3 lea      rax, [rip + 0x4a1516]
000000014047eaea cmp      rcx, rax
000000014047eaed je       0x14047edcc
000000014047eaf3 cmp      byte ptr [rcx + 0x229], 4
000000014047eafa jb       0x14047edcc
000000014047eb00 mov      eax, dword ptr [rcx + 0x22c]
000000014047eb06 test     al, 8
000000014047eb08 je       0x14047edcc
000000014047eb0e mov      edx, 0x74
000000014047eb13 jmp      0x14047dfb1
000000014047eb18 mov      rcx, qword ptr [rip + 0x4a14e1]
000000014047eb1f lea      rax, [rip + 0x4a14da]
000000014047eb26 cmp      rcx, rax
000000014047eb29 je       0x14047edcc
000000014047eb2f cmp      byte ptr [rcx + 0x229], 4
000000014047eb36 jb       0x14047edcc
000000014047eb3c mov      eax, dword ptr [rcx + 0x22c]
000000014047eb42 test     al, 8
000000014047eb44 je       0x14047edcc
000000014047eb4a mov      edx, 0x73
000000014047eb4f jmp      0x14047e449
000000014047eb54 mov      rcx, qword ptr [rip + 0x4a14a5]
000000014047eb5b lea      rax, [rip + 0x4a149e]
000000014047eb62 cmp      rcx, rax
000000014047eb65 je       0x14047edcc
000000014047eb6b cmp      byte ptr [rcx + 0x229], 4
000000014047eb72 jb       0x14047edcc
000000014047eb78 mov      eax, dword ptr [rcx + 0x22c]
000000014047eb7e test     al, 8
000000014047eb80 je       0x14047edcc
000000014047eb86 mov      edx, 0x78
000000014047eb8b jmp      0x14047dfb1
000000014047eb90 mov      eax, ecx
000000014047eb92 sub      eax, 0x27
000000014047eb95 je       0x14047ecbb
000000014047eb9b sub      eax, 1
000000014047eb9e je       0x14047ec7f
000000014047eba4 sub      eax, 1
000000014047eba7 je       0x14047ec43
000000014047ebad cmp      eax, 1
000000014047ebb0 je       0x14047ec07
000000014047ebb2 mov      r10, qword ptr [rip + 0x4a1447]
000000014047ebb9 lea      rax, [rip + 0x4a1440]
000000014047ebc0 cmp      r10, rax
000000014047ebc3 je       0x14047edcc
000000014047ebc9 cmp      byte ptr [r10 + 0x169], 3
000000014047ebd1 jb       0x14047edcc
000000014047ebd7 test     dword ptr [r10 + 0x16c], 0x2000
000000014047ebe2 je       0x14047edcc
000000014047ebe8 mov      r9d, ecx
000000014047ebeb mov      edx, 0x7d
000000014047ebf0 mov      rcx, qword ptr [r10 + 0x158]
000000014047ebf7 lea      r8, [rip + 0x4693d2]
000000014047ebfe add      rsp, 0x48
000000014047ec02 jmp      0x140001bb0
000000014047ec07 mov      rcx, qword ptr [rip + 0x4a13f2]
000000014047ec0e lea      rax, [rip + 0x4a13eb]
000000014047ec15 cmp      rcx, rax
000000014047ec18 je       0x14047edcc
000000014047ec1e cmp      byte ptr [rcx + 0x229], 4
000000014047ec25 jb       0x14047edcc
000000014047ec2b mov      eax, dword ptr [rcx + 0x22c]
000000014047ec31 test     al, 8
000000014047ec33 je       0x14047edcc
000000014047ec39 mov      edx, 0x7c
000000014047ec3e jmp      0x14047defb
000000014047ec43 mov      rcx, qword ptr [rip + 0x4a13b6]
000000014047ec4a lea      rax, [rip + 0x4a13af]
000000014047ec51 cmp      rcx, rax
000000014047ec54 je       0x14047edcc
000000014047ec5a cmp      byte ptr [rcx + 0x229], 4
000000014047ec61 jb       0x14047edcc
000000014047ec67 mov      eax, dword ptr [rcx + 0x22c]
000000014047ec6d test     al, 8
000000014047ec6f je       0x14047edcc
000000014047ec75 mov      edx, 0x7b
000000014047ec7a jmp      0x14047e4c6
000000014047ec7f mov      rcx, qword ptr [rip + 0x4a137a]
000000014047ec86 lea      rax, [rip + 0x4a1373]
000000014047ec8d cmp      rcx, rax
000000014047ec90 je       0x14047edcc
000000014047ec96 cmp      byte ptr [rcx + 0x229], 4
000000014047ec9d jb       0x14047edcc
000000014047eca3 mov      eax, dword ptr [rcx + 0x22c]
000000014047eca9 test     al, 8
000000014047ecab je       0x14047edcc
000000014047ecb1 mov      edx, 0x7a
000000014047ecb6 jmp      0x14047df56
000000014047ecbb mov      r10, qword ptr [rip + 0x4a133e]
000000014047ecc2 lea      rax, [rip + 0x4a1337]
000000014047ecc9 cmp      r10, rax
000000014047eccc je       0x14047edcc
000000014047ecd2 cmp      byte ptr [r10 + 0x229], 4
000000014047ecda jb       0x14047edcc
000000014047ece0 mov      eax, dword ptr [r10 + 0x22c]
000000014047ece7 test     al, 8
000000014047ece9 je       0x14047edcc
000000014047ecef mov      eax, dword ptr [rdx + 4]
000000014047ecf2 cmp      eax, 0x28
000000014047ecf5 jne      0x14047ed03
000000014047ecf7 lea      rcx, [rip + 0x1da102]
000000014047ecfe jmp      0x14047ed99
000000014047ed03 cmp      eax, 0x29
000000014047ed06 jne      0x14047ed14
000000014047ed08 lea      rcx, [rip + 0x1da101]
000000014047ed0f jmp      0x14047ed99
000000014047ed14 cmp      eax, 0x20
000000014047ed17 jne      0x14047ed22
000000014047ed19 lea      rcx, [rip + 0x1da100]
000000014047ed20 jmp      0x14047ed99
000000014047ed22 cmp      eax, 0x21
000000014047ed25 jne      0x14047ed30
000000014047ed27 lea      rcx, [rip + 0x1da102]
000000014047ed2e jmp      0x14047ed99
000000014047ed30 cmp      eax, 0x22
000000014047ed33 jne      0x14047ed3e
000000014047ed35 lea      rcx, [rip + 0x1da104]
000000014047ed3c jmp      0x14047ed99
000000014047ed3e cmp      eax, 0x23
000000014047ed41 jne      0x14047ed4c
000000014047ed43 lea      rcx, [rip + 0x1da106]
000000014047ed4a jmp      0x14047ed99
000000014047ed4c cmp      eax, 0x2c
000000014047ed4f jne      0x14047ed5a
000000014047ed51 lea      rcx, [rip + 0x1da108]
000000014047ed58 jmp      0x14047ed99
000000014047ed5a cmp      eax, 0x2d
000000014047ed5d jne      0x14047ed68
000000014047ed5f lea      rcx, [rip + 0x1da10a]
000000014047ed66 jmp      0x14047ed99
000000014047ed68 cmp      eax, 0x2f
000000014047ed6b jne      0x14047ed76
000000014047ed6d lea      rcx, [rip + 0x1da10c]
000000014047ed74 jmp      0x14047ed99
000000014047ed76 cmp      eax, 0x31
000000014047ed79 jne      0x14047ed84
000000014047ed7b lea      rcx, [rip + 0x1da10e]
000000014047ed82 jmp      0x14047ed99
000000014047ed84 cmp      eax, 0x17
000000014047ed87 lea      rdx, [rip + 0x1da112]
000000014047ed8e lea      rcx, [rip + 0x1da11b]
000000014047ed95 cmove    rcx, rdx
000000014047ed99 mov      eax, dword ptr [r9 + 0x10]
000000014047ed9d lea      r8, [rip + 0x46922c]
000000014047eda4 mov      dword ptr [rsp + 0x30], eax
000000014047eda8 mov      edx, 0x79
000000014047edad mov      eax, dword ptr [r9 + 0xc]
000000014047edb1 mov      dword ptr [rsp + 0x28], eax
000000014047edb5 mov      eax, dword ptr [r9 + 8]
000000014047edb9 mov      r9, rcx
000000014047edbc mov      rcx, qword ptr [r10 + 0x218]
000000014047edc3 mov      dword ptr [rsp + 0x20], eax
000000014047edc7 call     0x14001c670
000000014047edcc add      rsp, 0x48
000000014047edd0 ret      