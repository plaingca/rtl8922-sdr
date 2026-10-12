00000001401bfd38 mov      qword ptr [rsp + 8], rcx
00000001401bfd3d push     rbp
00000001401bfd3e push     rbx
00000001401bfd3f push     rsi
00000001401bfd40 push     rdi
00000001401bfd41 push     r12
00000001401bfd43 push     r13
00000001401bfd45 push     r14
00000001401bfd47 push     r15
00000001401bfd49 mov      rbp, rsp
00000001401bfd4c sub      rsp, 0x78
00000001401bfd50 mov      rax, qword ptr [rdx + 0x798]
00000001401bfd57 mov      r14, rdx
00000001401bfd5a and      qword ptr [rbp - 0x30], 0
00000001401bfd5f lea      rdx, [rbp + 0x50]
00000001401bfd63 mov      qword ptr [rbp - 0x38], rax
00000001401bfd67 mov      rsi, r8
00000001401bfd6a mov      byte ptr [rbp + 0x50], 0xff
00000001401bfd6e mov      ebx, 1
00000001401bfd73 mov      rax, qword ptr [rax + 0x95c8]
00000001401bfd7a mov      qword ptr [rbp - 0x28], rax
00000001401bfd7e mov      byte ptr [rbp + 0x58], 0
00000001401bfd82 call     0x14028f8a0
00000001401bfd87 mov      ecx, dword ptr [rsi]
00000001401bfd89 lea      r15, [rip + 0x44e600]
00000001401bfd90 movzx    ecx, cx
00000001401bfd93 lea      r12, [rip + 0x4d85e6]
00000001401bfd9a lea      r13, [rip + 0x4513ff]
00000001401bfda1 lea      rdi, [rip + 0x760258]
00000001401bfda8 cmp      ecx, 0x24
00000001401bfdab ja       0x1401c0a97
00000001401bfdb1 je       0x1401c09f2
00000001401bfdb7 cmp      ecx, 0x1d
00000001401bfdba ja       0x1401c0458
00000001401bfdc0 je       0x1401c0444
00000001401bfdc6 sub      ecx, 3
00000001401bfdc9 je       0x1401c0430
00000001401bfdcf sub      ecx, ebx
00000001401bfdd1 je       0x1401c041c
00000001401bfdd7 sub      ecx, 3
00000001401bfdda je       0x1401c01de
00000001401bfde0 sub      ecx, ebx
00000001401bfde2 je       0x1401c013c
00000001401bfde8 sub      ecx, ebx
00000001401bfdea je       0x1401bff9d
00000001401bfdf0 cmp      ecx, 0x13
00000001401bfdf3 jne      0x1401bff85
00000001401bfdf9 cmp      byte ptr [rsi + 2], 0x4d
00000001401bfdfd mov      r8, rsi
00000001401bfe00 jne      0x1401bff8c
00000001401bfe06 mov      dl, byte ptr [rbp + 0x50]
00000001401bfe09 lea      rax, [rbp + 0x60]
00000001401bfe0d lea      r9, [rbp - 0x30]
00000001401bfe11 mov      qword ptr [rsp + 0x20], rax
00000001401bfe16 mov      rcx, r14
00000001401bfe19 call     0x1401fb774
00000001401bfe1e test     eax, eax
00000001401bfe20 jne      0x1401bff85
00000001401bfe26 mov      rbx, qword ptr [rbp - 0x30]
00000001401bfe2a mov      rcx, qword ptr [rip + 0x7601cf]
00000001401bfe31 lea      rdi, [rip + 0x7601c8]
00000001401bfe38 cmp      rcx, rdi
00000001401bfe3b je       0x1401bff85
00000001401bfe41 cmp      byte ptr [rcx + 0x169], 4
00000001401bfe48 lea      r15, [rip + 0x44e541]
00000001401bfe4f lea      r12, [rip + 0x4d852a]
00000001401bfe56 jb       0x1401bfe79
00000001401bfe58 mov      eax, dword ptr [rcx + 0x16c]
00000001401bfe5e test     al, 1
00000001401bfe60 je       0x1401bfe79
00000001401bfe62 mov      rcx, qword ptr [rcx + 0x158]
00000001401bfe69 mov      edx, 0x104
00000001401bfe6e mov      r9, r15
00000001401bfe71 mov      r8, r12
00000001401bfe74 call     0x140008874
00000001401bfe79 mov      rcx, qword ptr [rip + 0x760180]
00000001401bfe80 cmp      rcx, rdi
00000001401bfe83 je       0x1401bff85
00000001401bfe89 cmp      byte ptr [rcx + 0x169], 4
00000001401bfe90 jb       0x1401bfec0
00000001401bfe92 mov      eax, dword ptr [rcx + 0x16c]
00000001401bfe98 test     al, 1
00000001401bfe9a je       0x1401bfec0
00000001401bfe9c mov      rax, qword ptr [rbx]
00000001401bfe9f mov      edx, 0x105
00000001401bfea4 mov      rcx, qword ptr [rcx + 0x158]
00000001401bfeab mov      r9, r15
00000001401bfeae movzx    r8d, byte ptr [rax + 0x15]
00000001401bfeb3 mov      dword ptr [rsp + 0x20], r8d
00000001401bfeb8 mov      r8, r12
00000001401bfebb call     0x1400088d8
00000001401bfec0 mov      rcx, qword ptr [rip + 0x760139]
00000001401bfec7 cmp      rcx, rdi
00000001401bfeca je       0x1401bff85
00000001401bfed0 cmp      byte ptr [rcx + 0x169], 4
00000001401bfed7 jb       0x1401bff12
00000001401bfed9 mov      eax, dword ptr [rcx + 0x16c]
00000001401bfedf test     al, 1
00000001401bfee1 je       0x1401bff12
00000001401bfee3 mov      eax, dword ptr [rbx + 0x1c]
00000001401bfee6 mov      edx, 0x106
00000001401bfeeb movzx    r8d, byte ptr [rbx + 0x14]
00000001401bfef0 mov      r9, r15
00000001401bfef3 mov      rcx, qword ptr [rcx + 0x158]
00000001401bfefa mov      dword ptr [rsp + 0x30], eax
00000001401bfefe mov      eax, dword ptr [rbx + 0x18]
00000001401bff01 mov      dword ptr [rsp + 0x28], eax
00000001401bff05 mov      dword ptr [rsp + 0x20], r8d
00000001401bff0a mov      r8, r12
00000001401bff0d call     0x14001c670
00000001401bff12 mov      rcx, qword ptr [rip + 0x7600e7]
00000001401bff19 cmp      rcx, rdi
00000001401bff1c je       0x1401bff85
00000001401bff1e cmp      byte ptr [rcx + 0x169], 4
00000001401bff25 jb       0x1401bff4f
00000001401bff27 mov      eax, dword ptr [rcx + 0x16c]
00000001401bff2d test     al, 1
00000001401bff2f je       0x1401bff4f
00000001401bff31 mov      eax, dword ptr [rbx + 0x30]
00000001401bff34 mov      edx, 0x107
00000001401bff39 mov      rcx, qword ptr [rcx + 0x158]
00000001401bff40 mov      r9, r15
00000001401bff43 mov      r8, r12
00000001401bff46 mov      dword ptr [rsp + 0x20], eax
00000001401bff4a call     0x1400088d8
00000001401bff4f mov      rcx, qword ptr [rip + 0x7600aa]
00000001401bff56 cmp      rcx, rdi
00000001401bff59 je       0x1401bff85
00000001401bff5b cmp      byte ptr [rcx + 0x169], 4
00000001401bff62 jb       0x1401bff85
00000001401bff64 mov      eax, dword ptr [rcx + 0x16c]
00000001401bff6a test     al, 1
00000001401bff6c je       0x1401bff85
00000001401bff6e mov      rcx, qword ptr [rcx + 0x158]
00000001401bff75 mov      edx, 0x108
00000001401bff7a mov      r9, r15
00000001401bff7d mov      r8, r12
00000001401bff80 call     0x140008874
00000001401bff85 xor      ebx, ebx
00000001401bff87 jmp      0x1401c1470
00000001401bff8c mov      rcx, qword ptr [rbp + 0x48]
00000001401bff90 mov      rdx, r14
00000001401bff93 call     0x1401c7244
00000001401bff98 jmp      0x1401c0aec
00000001401bff9d mov      al, byte ptr [rsi + 2]
00000001401bffa0 cmp      al, 0x83
00000001401bffa2 je       0x1401bffb2
00000001401bffa4 cmp      al, 0x88
00000001401bffa6 je       0x1401bffb2
00000001401bffa8 mov      ebx, 2
00000001401bffad jmp      0x1401c1470
00000001401bffb2 mov      rcx, qword ptr [rip + 0x760047]
00000001401bffb9 lea      rdi, [rip + 0x760040]
00000001401bffc0 cmp      rcx, rdi
00000001401bffc3 je       0x1401bfffc
00000001401bffc5 cmp      byte ptr [rcx + 0x169], 4
00000001401bffcc jb       0x1401bfffc
00000001401bffce mov      eax, dword ptr [rcx + 0x16c]
00000001401bffd4 test     bl, al
00000001401bffd6 je       0x1401bfffc
00000001401bffd8 movzx    eax, byte ptr [rbp + 0x50]
00000001401bffdc mov      edx, 0x123
00000001401bffe1 mov      rcx, qword ptr [rcx + 0x158]
00000001401bffe8 mov      r9, r15
00000001401bffeb mov      dword ptr [rsp + 0x28], eax
00000001401bffef mov      r8, r12
00000001401bfff2 mov      qword ptr [rsp + 0x20], r13
00000001401bfff7 call     0x14003ca14
00000001401bfffc mov      rax, qword ptr [rsi + 0x20]
00000001401c0000 mov      qword ptr [rbp - 0x20], rax
00000001401c0004 test     rax, rax
00000001401c0007 jne      0x1401c0055
00000001401c0009 mov      rcx, qword ptr [rip + 0x75fff0]
00000001401c0010 cmp      rcx, rdi
00000001401c0013 je       0x1401c1470
00000001401c0019 cmp      byte ptr [rcx + 0x169], 3
00000001401c0020 jb       0x1401c1422
00000001401c0026 mov      eax, dword ptr [rcx + 0x16c]
00000001401c002c test     bl, al
00000001401c002e je       0x1401c1422
00000001401c0034 mov      edx, 0x124
00000001401c0039 mov      rcx, qword ptr [rcx + 0x158]
00000001401c0040 mov      r9, r15
00000001401c0043 mov      r8, r12
00000001401c0046 mov      qword ptr [rsp + 0x20], r13
00000001401c004b call     0x14003c968
00000001401c0050 jmp      0x1401c1422
00000001401c0055 mov      rdx, qword ptr [rax]
00000001401c0058 mov      rcx, r14
00000001401c005b mov      al, byte ptr [rax + 0x19]
00000001401c005e mov      byte ptr [rbp + 0x58], al
00000001401c0061 mov      qword ptr [rbp - 0x18], rdx
00000001401c0065 call     0x1401c4fac
00000001401c006a test     eax, eax
00000001401c006c jne      0x1401c1422
00000001401c0072 mov      rdx, qword ptr [rbp - 0x20]
00000001401c0076 mov      rcx, r14
00000001401c0079 call     0x1401b7324
00000001401c007e mov      rcx, qword ptr [rax + 0x20]
00000001401c0082 mov      edx, dword ptr [rcx + 0x24]
00000001401c0085 lea      eax, [rdx - 3]
00000001401c0088 test     eax, 0xfffffffc
00000001401c008d jne      0x1401c011f
00000001401c0093 cmp      edx, 5
00000001401c0096 je       0x1401c011f
00000001401c009c mov      rdi, qword ptr [rbp - 0x18]
00000001401c00a0 mov      ecx, dword ptr [rdi + 8]
00000001401c00a3 lea      eax, [rcx - 1]
00000001401c00a6 test     eax, 0xfffffff5
00000001401c00ab jne      0x1401c011f
00000001401c00ad cmp      ecx, 3
00000001401c00b0 je       0x1401c011f
00000001401c00b2 mov      r12b, byte ptr [rbp + 0x58]
00000001401c00b6 xor      r15b, r15b
00000001401c00b9 cmp      byte ptr [rdi + 0x250], r15b
00000001401c00c0 jbe      0x1401c0123
00000001401c00c2 mov      rbx, qword ptr [rbp - 0x38]
00000001401c00c6 movzx    eax, r15b
00000001401c00ca imul     r8, rax, 0xa38
00000001401c00d1 mov      al, byte ptr [rdi + 0x16c9]
00000001401c00d7 add      r8, 0x258
00000001401c00de add      r8, rdi
00000001401c00e1 cmp      byte ptr [r8 + 8], al
00000001401c00e5 je       0x1401c0111
00000001401c00e7 mov      rax, qword ptr [rbp - 0x28]
00000001401c00eb xor      r9d, r9d
00000001401c00ee mov      qword ptr [rsp + 0x30], rax
00000001401c00f3 mov      dl, r12b
00000001401c00f6 mov      al, byte ptr [rsi + 2]
00000001401c00f9 mov      rcx, r14
00000001401c00fc mov      byte ptr [rsp + 0x28], al
00000001401c0100 mov      rax, qword ptr [rbx + 0x10330]
00000001401c0107 mov      qword ptr [rsp + 0x20], rax
00000001401c010c call     0x1401c74fc
00000001401c0111 inc      r15b
00000001401c0114 cmp      r15b, byte ptr [rdi + 0x250]
00000001401c011b jb       0x1401c00c6
00000001401c011d jmp      0x1401c0123
00000001401c011f mov      r12b, byte ptr [rbp + 0x58]
00000001401c0123 mov      r8b, r12b
00000001401c0126 mov      eax, dword ptr [rsi]
00000001401c0128 mov      rcx, qword ptr [r14 + 0x8d08]
00000001401c012f movzx    edx, ax
00000001401c0132 call     0x140267d7c
00000001401c0137 jmp      0x1401bff85
00000001401c013c cmp      byte ptr [rsi + 2], 0x83
00000001401c0140 jne      0x1401bffa8
00000001401c0146 mov      rcx, qword ptr [rip + 0x75feb3]
00000001401c014d lea      rdi, [rip + 0x75feac]
00000001401c0154 cmp      rcx, rdi
00000001401c0157 je       0x1401c0190
00000001401c0159 cmp      byte ptr [rcx + 0x169], 4
00000001401c0160 jb       0x1401c0190
00000001401c0162 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0168 test     bl, al
00000001401c016a je       0x1401c0190
00000001401c016c movzx    eax, byte ptr [rbp + 0x50]
00000001401c0170 mov      edx, 0x11e
00000001401c0175 mov      rcx, qword ptr [rcx + 0x158]
00000001401c017c mov      r9, r15
00000001401c017f mov      dword ptr [rsp + 0x28], eax
00000001401c0183 mov      r8, r12
00000001401c0186 mov      qword ptr [rsp + 0x20], r13
00000001401c018b call     0x14003ca14
00000001401c0190 mov      rdx, qword ptr [rsi + 0x20]
00000001401c0194 test     rdx, rdx
00000001401c0197 jne      0x1401c01ce
00000001401c0199 mov      rcx, qword ptr [rip + 0x75fe60]
00000001401c01a0 cmp      rcx, rdi
00000001401c01a3 je       0x1401c1470
00000001401c01a9 cmp      byte ptr [rcx + 0x169], 3
00000001401c01b0 jb       0x1401c1422
00000001401c01b6 mov      eax, dword ptr [rcx + 0x16c]
00000001401c01bc test     bl, al
00000001401c01be je       0x1401c1422
00000001401c01c4 mov      edx, 0x11f
00000001401c01c9 jmp      0x1401c0039
00000001401c01ce mov      rdx, qword ptr [rdx]
00000001401c01d1 mov      rcx, r14
00000001401c01d4 call     0x1401bf4f4
00000001401c01d9 jmp      0x1401bff85
00000001401c01de mov      al, byte ptr [rsi + 2]
00000001401c01e1 cmp      al, 0x83
00000001401c01e3 je       0x1401c01ed
00000001401c01e5 cmp      al, 0x88
00000001401c01e7 jne      0x1401bffa8
00000001401c01ed mov      rcx, qword ptr [rsi + 0x20]
00000001401c01f1 mov      qword ptr [rbp - 0x28], rcx
00000001401c01f5 test     rcx, rcx
00000001401c01f8 jne      0x1401c0236
00000001401c01fa mov      rcx, qword ptr [rip + 0x75fdff]
00000001401c0201 lea      rdi, [rip + 0x75fdf8]
00000001401c0208 cmp      rcx, rdi
00000001401c020b je       0x1401c1470
00000001401c0211 cmp      byte ptr [rcx + 0x169], 3
00000001401c0218 jb       0x1401c1422
00000001401c021e mov      eax, dword ptr [rcx + 0x16c]
00000001401c0224 test     bl, al
00000001401c0226 je       0x1401c1422
00000001401c022c mov      edx, 0x111
00000001401c0231 jmp      0x1401c0039
00000001401c0236 mov      r10, qword ptr [rip + 0x75fdc3]
00000001401c023d lea      rdi, [rip + 0x75fdbc]
00000001401c0244 cmp      r10, rdi
00000001401c0247 je       0x1401c0286
00000001401c0249 cmp      byte ptr [r10 + 0x169], 4
00000001401c0251 jb       0x1401c0286
00000001401c0253 mov      eax, dword ptr [r10 + 0x16c]
00000001401c025a test     bl, al
00000001401c025c je       0x1401c0286
00000001401c025e movzx    eax, byte ptr [rbp + 0x50]
00000001401c0262 mov      edx, 0x112
00000001401c0267 mov      rcx, qword ptr [r10 + 0x158]
00000001401c026e mov      r9, r15
00000001401c0271 mov      dword ptr [rsp + 0x28], eax
00000001401c0275 mov      r8, r12
00000001401c0278 mov      qword ptr [rsp + 0x20], r13
00000001401c027d call     0x14003ca14
00000001401c0282 mov      rcx, qword ptr [rbp - 0x28]
00000001401c0286 mov      rax, qword ptr [rcx]
00000001401c0289 mov      cl, byte ptr [rcx + 0x19]
00000001401c028c mov      byte ptr [rbp + 0x58], cl
00000001401c028f mov      rcx, qword ptr [r14 + 0x798]
00000001401c0296 mov      qword ptr [rbp - 0x20], rax
00000001401c029a cmp      byte ptr [rcx + 0x94f8], 0
00000001401c02a1 je       0x1401c030f
00000001401c02a3 mov      edx, dword ptr [rsi + 4]
00000001401c02a6 lea      r8, [rbp - 0x18]
00000001401c02aa xorps    xmm0, xmm0
00000001401c02ad movups   xmmword ptr [rbp - 0x18], xmm0
00000001401c02b1 mov      byte ptr [rbp - 0x10], bl
00000001401c02b4 mov      qword ptr [rbp - 0x18], rax
00000001401c02b8 mov      rax, qword ptr [rcx + 0x94e8]
00000001401c02bf mov      rcx, qword ptr [rcx + 0x10330]
00000001401c02c6 call     qword ptr [rip + 0x4c402c]
00000001401c02cc cmp      al, bl
00000001401c02ce je       0x1401c0305
00000001401c02d0 mov      rcx, qword ptr [rip + 0x75fd29]
00000001401c02d7 cmp      rcx, rdi
00000001401c02da je       0x1401c1422
00000001401c02e0 cmp      byte ptr [rcx + 0x169], 2
00000001401c02e7 jb       0x1401c1422
00000001401c02ed mov      eax, dword ptr [rcx + 0x16c]
00000001401c02f3 test     bl, al
00000001401c02f5 je       0x1401c1422
00000001401c02fb mov      edx, 0x113
00000001401c0300 jmp      0x1401c0039
00000001401c0305 mov      ebx, 3
00000001401c030a jmp      0x1401c1470
00000001401c030f mov      rcx, r14
00000001401c0312 call     0x1401cb77c
00000001401c0317 mov      rcx, qword ptr [rbp - 0x38]
00000001401c031b test     al, al
00000001401c031d je       0x1401c0381
00000001401c031f cmp      byte ptr [rcx + 0x9510], 0
00000001401c0326 je       0x1401c0381
00000001401c0328 mov      al, byte ptr [rcx + 0x9520]
00000001401c032e mov      r8, rsi
00000001401c0331 mov      rdx, qword ptr [rbp - 0x20]
00000001401c0335 mov      r9, qword ptr [rbp - 0x28]
00000001401c0339 mov      rcx, qword ptr [rbp + 0x48]
00000001401c033d mov      byte ptr [rdx + 0x2c], al
00000001401c0340 mov      rdx, r14
00000001401c0343 call     0x1401c69b0
00000001401c0348 test     eax, eax
00000001401c034a je       0x1401c0305
00000001401c034c mov      rcx, qword ptr [rip + 0x75fcad]
00000001401c0353 cmp      rcx, rdi
00000001401c0356 je       0x1401c1470
00000001401c035c cmp      byte ptr [rcx + 0x169], 2
00000001401c0363 jb       0x1401c1422
00000001401c0369 mov      eax, dword ptr [rcx + 0x16c]
00000001401c036f test     bl, al
00000001401c0371 je       0x1401c1422
00000001401c0377 mov      edx, 0x114
00000001401c037c jmp      0x1401c0039
00000001401c0381 cmp      byte ptr [rcx + 0x94fa], 0
00000001401c0388 je       0x1401c03fb
00000001401c038a movzx    eax, byte ptr [rsi + 2]
00000001401c038e xor      r8d, r8d
00000001401c0391 mov      rdx, qword ptr [rcx + 0x9500]
00000001401c0398 mov      rcx, r14
00000001401c039b mov      r9d, dword ptr [rsi + 4]
00000001401c039f mov      dword ptr [rsp + 0x20], eax
00000001401c03a3 call     0x1401f9340
00000001401c03a8 test     eax, eax
00000001401c03aa je       0x1401c0305
00000001401c03b0 mov      rcx, qword ptr [rip + 0x75fc49]
00000001401c03b7 cmp      rcx, rdi
00000001401c03ba je       0x1401c03eb
00000001401c03bc cmp      byte ptr [rcx + 0x169], 2
00000001401c03c3 jb       0x1401c03eb
00000001401c03c5 mov      eax, dword ptr [rcx + 0x16c]
00000001401c03cb test     bl, al
00000001401c03cd je       0x1401c03eb
00000001401c03cf mov      rcx, qword ptr [rcx + 0x158]
00000001401c03d6 mov      edx, 0x115
00000001401c03db mov      r9, r15
00000001401c03de mov      qword ptr [rsp + 0x20], r13
00000001401c03e3 mov      r8, r12
00000001401c03e6 call     0x14003c968
00000001401c03eb mov      rbx, qword ptr [rbp - 0x38]
00000001401c03ef mov      byte ptr [rbx + 0x94fa], 0
00000001401c03f6 jmp      0x1401bff85
00000001401c03fb mov      r8, qword ptr [rbp - 0x28]
00000001401c03ff mov      rcx, r14
00000001401c0402 mov      rdx, qword ptr [rbp - 0x20]
00000001401c0406 call     0x1401c53dc
00000001401c040b test     eax, eax
00000001401c040d jne      0x1401c1422
00000001401c0413 mov      r8b, byte ptr [rbp + 0x58]
00000001401c0417 jmp      0x1401c0126
00000001401c041c mov      rcx, qword ptr [rbp + 0x48]
00000001401c0420 mov      r8, rsi
00000001401c0423 mov      rdx, r14
00000001401c0426 call     0x1401c4420
00000001401c042b jmp      0x1401c0aec
00000001401c0430 mov      rcx, qword ptr [rbp + 0x48]
00000001401c0434 mov      r8, rsi
00000001401c0437 mov      rdx, r14
00000001401c043a call     0x1401c47c0
00000001401c043f jmp      0x1401c0aec
00000001401c0444 mov      rcx, qword ptr [rbp + 0x48]
00000001401c0448 mov      r8, rsi
00000001401c044b mov      rdx, r14
00000001401c044e call     0x1401c7164
00000001401c0453 jmp      0x1401c0aec
00000001401c0458 mov      eax, ecx
00000001401c045a sub      eax, 0x1e
00000001401c045d je       0x1401c093d
00000001401c0463 sub      eax, ebx
00000001401c0465 je       0x1401c083a
00000001401c046b sub      eax, ebx
00000001401c046d je       0x1401c0b69
00000001401c0473 sub      eax, ebx
00000001401c0475 je       0x1401c0747
00000001401c047b sub      eax, ebx
00000001401c047d je       0x1401c0687
00000001401c0483 cmp      eax, ebx
00000001401c0485 jne      0x1401bff85
00000001401c048b cmp      byte ptr [rsi + 2], 0x85
00000001401c048f jne      0x1401bffa8
00000001401c0495 mov      rcx, qword ptr [rip + 0x75fb64]
00000001401c049c lea      rdi, [rip + 0x75fb5d]
00000001401c04a3 cmp      rcx, rdi
00000001401c04a6 je       0x1401c04df
00000001401c04a8 cmp      byte ptr [rcx + 0x169], 4
00000001401c04af jb       0x1401c04df
00000001401c04b1 mov      eax, dword ptr [rcx + 0x16c]
00000001401c04b7 test     bl, al
00000001401c04b9 je       0x1401c04df
00000001401c04bb movzx    eax, byte ptr [rbp + 0x50]
00000001401c04bf mov      edx, 0x131
00000001401c04c4 mov      rcx, qword ptr [rcx + 0x158]
00000001401c04cb mov      r9, r15
00000001401c04ce mov      dword ptr [rsp + 0x28], eax
00000001401c04d2 mov      r8, r12
00000001401c04d5 mov      qword ptr [rsp + 0x20], r13
00000001401c04da call     0x14003ca14
00000001401c04df mov      rax, qword ptr [rsi + 0x20]
00000001401c04e3 mov      qword ptr [rbp + 0x58], rax
00000001401c04e7 test     rax, rax
00000001401c04ea jne      0x1401c0521
00000001401c04ec mov      rcx, qword ptr [rip + 0x75fb0d]
00000001401c04f3 cmp      rcx, rdi
00000001401c04f6 je       0x1401c1470
00000001401c04fc cmp      byte ptr [rcx + 0x169], 3
00000001401c0503 jb       0x1401c1422
00000001401c0509 mov      eax, dword ptr [rcx + 0x16c]
00000001401c050f test     bl, al
00000001401c0511 je       0x1401c1422
00000001401c0517 mov      edx, 0x132
00000001401c051c jmp      0x1401c0039
00000001401c0521 mov      rcx, qword ptr [r14 + 0x798]
00000001401c0528 cmp      byte ptr [rcx + 0x94f8], 0
00000001401c052f je       0x1401c059a
00000001401c0531 mov      rax, qword ptr [rax]
00000001401c0534 lea      r8, [rbp - 0x18]
00000001401c0538 mov      edx, dword ptr [rsi + 4]
00000001401c053b xorps    xmm0, xmm0
00000001401c053e movups   xmmword ptr [rbp - 0x18], xmm0
00000001401c0542 mov      byte ptr [rbp - 0x10], bl
00000001401c0545 mov      qword ptr [rbp - 0x18], rax
00000001401c0549 mov      rax, qword ptr [rcx + 0x94e8]
00000001401c0550 mov      rcx, qword ptr [rcx + 0x10330]
00000001401c0557 call     qword ptr [rip + 0x4c3d9b]
00000001401c055d cmp      al, bl
00000001401c055f je       0x1401c0305
00000001401c0565 mov      rcx, qword ptr [rip + 0x75fa94]
00000001401c056c cmp      rcx, rdi
00000001401c056f je       0x1401c1422
00000001401c0575 cmp      byte ptr [rcx + 0x169], 2
00000001401c057c jb       0x1401c1422
00000001401c0582 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0588 test     bl, al
00000001401c058a je       0x1401c1422
00000001401c0590 mov      edx, 0x133
00000001401c0595 jmp      0x1401c0039
00000001401c059a mov      rcx, r14
00000001401c059d call     0x1401cb77c
00000001401c05a2 mov      rbx, qword ptr [rbp - 0x38]
00000001401c05a6 test     al, al
00000001401c05a8 je       0x1401c0608
00000001401c05aa cmp      byte ptr [rbx + 0x9510], 0
00000001401c05b1 je       0x1401c0608
00000001401c05b3 mov      r9, qword ptr [rbp + 0x58]
00000001401c05b7 mov      r8, rsi
00000001401c05ba mov      rcx, qword ptr [rbp + 0x48]
00000001401c05be mov      rdx, r14
00000001401c05c1 call     0x1401c69b0
00000001401c05c6 test     eax, eax
00000001401c05c8 je       0x1401c0305
00000001401c05ce mov      ebx, 1
00000001401c05d3 mov      rcx, qword ptr [rip + 0x75fa26]
00000001401c05da cmp      rcx, rdi
00000001401c05dd je       0x1401c1470
00000001401c05e3 cmp      byte ptr [rcx + 0x169], 2
00000001401c05ea jb       0x1401c1422
00000001401c05f0 mov      eax, dword ptr [rcx + 0x16c]
00000001401c05f6 test     bl, al
00000001401c05f8 je       0x1401c1422
00000001401c05fe mov      edx, 0x134
00000001401c0603 jmp      0x1401c0039
00000001401c0608 cmp      byte ptr [rbx + 0x94fa], 0
00000001401c060f je       0x1401bff85
00000001401c0615 movzx    eax, byte ptr [rsi + 2]
00000001401c0619 xor      r8d, r8d
00000001401c061c mov      r9d, dword ptr [rsi + 4]
00000001401c0620 mov      rcx, r14
00000001401c0623 mov      rdx, qword ptr [rbx + 0x9500]
00000001401c062a mov      dword ptr [rsp + 0x20], eax
00000001401c062e call     0x1401f9340
00000001401c0633 test     eax, eax
00000001401c0635 je       0x1401c0305
00000001401c063b mov      rcx, qword ptr [rip + 0x75f9be]
00000001401c0642 cmp      rcx, rdi
00000001401c0645 je       0x1401c03ef
00000001401c064b cmp      byte ptr [rcx + 0x169], 2
00000001401c0652 jb       0x1401c03ef
00000001401c0658 mov      eax, dword ptr [rcx + 0x16c]
00000001401c065e test     al, 1
00000001401c0660 je       0x1401c03ef
00000001401c0666 mov      edx, 0x135
00000001401c066b mov      rcx, qword ptr [rcx + 0x158]
00000001401c0672 mov      r9, r15
00000001401c0675 mov      r8, r12
00000001401c0678 mov      qword ptr [rsp + 0x20], r13
00000001401c067d call     0x14003c968
00000001401c0682 jmp      0x1401c03ef
00000001401c0687 cmp      byte ptr [rsi + 2], 0xa
00000001401c068b jne      0x1401bffa8
00000001401c0691 mov      rcx, qword ptr [rip + 0x75f968]
00000001401c0698 lea      rdi, [rip + 0x75f961]
00000001401c069f cmp      rcx, rdi
00000001401c06a2 je       0x1401c06db
00000001401c06a4 cmp      byte ptr [rcx + 0x169], 4
00000001401c06ab jb       0x1401c06db
00000001401c06ad mov      eax, dword ptr [rcx + 0x16c]
00000001401c06b3 test     bl, al
00000001401c06b5 je       0x1401c06db
00000001401c06b7 movzx    eax, byte ptr [rbp + 0x50]
00000001401c06bb mov      edx, 0x10f
00000001401c06c0 mov      rcx, qword ptr [rcx + 0x158]
00000001401c06c7 mov      r9, r15
00000001401c06ca mov      dword ptr [rsp + 0x28], eax
00000001401c06ce mov      r8, r12
00000001401c06d1 mov      qword ptr [rsp + 0x20], r13
00000001401c06d6 call     0x14003ca14
00000001401c06db mov      rdx, qword ptr [rsi + 0x28]
00000001401c06df test     rdx, rdx
00000001401c06e2 jne      0x1401c0719
00000001401c06e4 mov      rcx, qword ptr [rip + 0x75f915]
00000001401c06eb cmp      rcx, rdi
00000001401c06ee je       0x1401c1470
00000001401c06f4 cmp      byte ptr [rcx + 0x169], 3
00000001401c06fb jb       0x1401c1422
00000001401c0701 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0707 test     bl, al
00000001401c0709 je       0x1401c1422
00000001401c070f mov      edx, 0x110
00000001401c0714 jmp      0x1401c0039
00000001401c0719 mov      rax, qword ptr [rbp - 0x28]
00000001401c071d xor      r8d, r8d
00000001401c0720 mov      rbx, qword ptr [rbp - 0x38]
00000001401c0724 mov      rcx, r14
00000001401c0727 mov      dl, byte ptr [rdx + 0x19]
00000001401c072a mov      qword ptr [rsp + 0x28], rax
00000001401c072f mov      al, byte ptr [rsi + 2]
00000001401c0732 mov      r9, qword ptr [rbx + 0x10330]
00000001401c0739 mov      byte ptr [rsp + 0x20], al
00000001401c073d call     0x1401c348c
00000001401c0742 jmp      0x1401bff85
00000001401c0747 cmp      byte ptr [rsi + 2], 0x4d
00000001401c074b jne      0x1401bffa8
00000001401c0751 mov      rcx, qword ptr [rip + 0x75f8a8]
00000001401c0758 lea      rdi, [rip + 0x75f8a1]
00000001401c075f cmp      rcx, rdi
00000001401c0762 je       0x1401c079b
00000001401c0764 cmp      byte ptr [rcx + 0x169], 4
00000001401c076b jb       0x1401c079b
00000001401c076d mov      eax, dword ptr [rcx + 0x16c]
00000001401c0773 test     bl, al
00000001401c0775 je       0x1401c079b
00000001401c0777 movzx    eax, byte ptr [rbp + 0x50]
00000001401c077b mov      edx, 0x109
00000001401c0780 mov      rcx, qword ptr [rcx + 0x158]
00000001401c0787 mov      r9, r15
00000001401c078a mov      dword ptr [rsp + 0x28], eax
00000001401c078e mov      r8, r12
00000001401c0791 mov      qword ptr [rsp + 0x20], r13
00000001401c0796 call     0x14003ca14
00000001401c079b mov      dl, byte ptr [rsi + 4]
00000001401c079e lea      rax, [rbp + 0x60]
00000001401c07a2 lea      r9, [rbp - 0x30]
00000001401c07a6 mov      qword ptr [rsp + 0x20], rax
00000001401c07ab mov      r8, rsi
00000001401c07ae mov      rcx, r14
00000001401c07b1 call     0x1401fb774
00000001401c07b6 test     eax, eax
00000001401c07b8 je       0x1401c07ef
00000001401c07ba mov      rcx, qword ptr [rip + 0x75f83f]
00000001401c07c1 cmp      rcx, rdi
00000001401c07c4 je       0x1401c1470
00000001401c07ca cmp      byte ptr [rcx + 0x169], 2
00000001401c07d1 jb       0x1401c1422
00000001401c07d7 mov      eax, dword ptr [rcx + 0x16c]
00000001401c07dd test     bl, al
00000001401c07df je       0x1401c1422
00000001401c07e5 mov      edx, 0x10a
00000001401c07ea jmp      0x1401c0039
00000001401c07ef mov      rax, qword ptr [rbp - 0x30]
00000001401c07f3 test     rax, rax
00000001401c07f6 jne      0x1401c082d
00000001401c07f8 mov      rcx, qword ptr [rip + 0x75f801]
00000001401c07ff cmp      rcx, rdi
00000001401c0802 je       0x1401c1470
00000001401c0808 cmp      byte ptr [rcx + 0x169], 3
00000001401c080f jb       0x1401c1422
00000001401c0815 mov      eax, dword ptr [rcx + 0x16c]
00000001401c081b test     bl, al
00000001401c081d je       0x1401c1422
00000001401c0823 mov      edx, 0x10b
00000001401c0828 jmp      0x1401c0039
00000001401c082d mov      rax, qword ptr [rax + 0x18]
00000001401c0831 or       dword ptr [rax + 0x1c], 4
00000001401c0835 jmp      0x1401bff85
00000001401c083a mov      al, byte ptr [rsi + 2]
00000001401c083d add      al, 0x7d
00000001401c083f cmp      al, 7
00000001401c0841 ja       0x1401bffa8
00000001401c0847 mov      ecx, 0xa3
00000001401c084c bt       ecx, eax
00000001401c084f jae      0x1401bffa8
00000001401c0855 mov      rcx, qword ptr [rip + 0x75f7a4]
00000001401c085c lea      rdi, [rip + 0x75f79d]
00000001401c0863 cmp      rcx, rdi
00000001401c0866 je       0x1401c089f
00000001401c0868 cmp      byte ptr [rcx + 0x169], 4
00000001401c086f jb       0x1401c089f
00000001401c0871 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0877 test     bl, al
00000001401c0879 je       0x1401c089f
00000001401c087b movzx    eax, byte ptr [rbp + 0x50]
00000001401c087f mov      edx, 0x127
00000001401c0884 mov      rcx, qword ptr [rcx + 0x158]
00000001401c088b mov      r9, r15
00000001401c088e mov      dword ptr [rsp + 0x28], eax
00000001401c0892 mov      r8, r12
00000001401c0895 mov      qword ptr [rsp + 0x20], r13
00000001401c089a call     0x14003ca14
00000001401c089f mov      rax, qword ptr [rsi + 0x20]
00000001401c08a3 test     rax, rax
00000001401c08a6 jne      0x1401c08dd
00000001401c08a8 mov      rcx, qword ptr [rip + 0x75f751]
00000001401c08af cmp      rcx, rdi
00000001401c08b2 je       0x1401c1470
00000001401c08b8 cmp      byte ptr [rcx + 0x169], 3
00000001401c08bf jb       0x1401c1422
00000001401c08c5 mov      eax, dword ptr [rcx + 0x16c]
00000001401c08cb test     bl, al
00000001401c08cd je       0x1401c1422
00000001401c08d3 mov      edx, 0x128
00000001401c08d8 jmp      0x1401c0039
00000001401c08dd cmp      byte ptr [rsi + 2], 0x8a
00000001401c08e1 mov      rdx, qword ptr [rax]
00000001401c08e4 jne      0x1401c0922
00000001401c08e6 mov      al, byte ptr [rsi + 0x30]
00000001401c08e9 test     al, al
00000001401c08eb jne      0x1401c0925
00000001401c08ed mov      rcx, qword ptr [rip + 0x75f70c]
00000001401c08f4 cmp      rcx, rdi
00000001401c08f7 je       0x1401c1470
00000001401c08fd cmp      byte ptr [rcx + 0x169], 3
00000001401c0904 jb       0x1401c1422
00000001401c090a mov      eax, dword ptr [rcx + 0x16c]
00000001401c0910 test     bl, al
00000001401c0912 je       0x1401c1422
00000001401c0918 mov      edx, 0x129
00000001401c091d jmp      0x1401c0039
00000001401c0922 mov      al, byte ptr [rbp + 0x58]
00000001401c0925 mov      r8b, al
00000001401c0928 mov      rcx, r14
00000001401c092b call     0x1401c63fc
00000001401c0930 test     eax, eax
00000001401c0932 jne      0x1401c1422
00000001401c0938 jmp      0x1401bff85
00000001401c093d mov      cl, byte ptr [rsi + 2]
00000001401c0940 lea      eax, [rcx + 0x7d]
00000001401c0943 cmp      al, bl
00000001401c0945 jbe      0x1401c0950
00000001401c0947 cmp      cl, 0x8a
00000001401c094a jne      0x1401bffa8
00000001401c0950 mov      rcx, qword ptr [rip + 0x75f6a9]
00000001401c0957 lea      rdi, [rip + 0x75f6a2]
00000001401c095e cmp      rcx, rdi
00000001401c0961 je       0x1401c099a
00000001401c0963 cmp      byte ptr [rcx + 0x169], 4
00000001401c096a jb       0x1401c099a
00000001401c096c mov      eax, dword ptr [rcx + 0x16c]
00000001401c0972 test     bl, al
00000001401c0974 je       0x1401c099a
00000001401c0976 movzx    eax, byte ptr [rbp + 0x50]
00000001401c097a mov      edx, 0x125
00000001401c097f mov      rcx, qword ptr [rcx + 0x158]
00000001401c0986 mov      r9, r15
00000001401c0989 mov      dword ptr [rsp + 0x28], eax
00000001401c098d mov      r8, r12
00000001401c0990 mov      qword ptr [rsp + 0x20], r13
00000001401c0995 call     0x14003ca14
00000001401c099a mov      rdx, qword ptr [rsi + 0x20]
00000001401c099e test     rdx, rdx
00000001401c09a1 jne      0x1401c09d8
00000001401c09a3 mov      rcx, qword ptr [rip + 0x75f656]
00000001401c09aa cmp      rcx, rdi
00000001401c09ad je       0x1401c1470
00000001401c09b3 cmp      byte ptr [rcx + 0x169], 3
00000001401c09ba jb       0x1401c1422
00000001401c09c0 mov      eax, dword ptr [rcx + 0x16c]
00000001401c09c6 test     bl, al
00000001401c09c8 je       0x1401c1422
00000001401c09ce mov      edx, 0x126
00000001401c09d3 jmp      0x1401c0039
00000001401c09d8 cmp      byte ptr [rsi + 2], 0x8a
00000001401c09dc je       0x1401bff85
00000001401c09e2 mov      rdx, qword ptr [rdx]
00000001401c09e5 mov      rcx, r14
00000001401c09e8 call     0x140232278
00000001401c09ed jmp      0x1401bff85
00000001401c09f2 cmp      byte ptr [rsi + 2], 0x85
00000001401c09f6 jne      0x1401bffa8
00000001401c09fc mov      rcx, qword ptr [rip + 0x75f5fd]
00000001401c0a03 lea      rdi, [rip + 0x75f5f6]
00000001401c0a0a cmp      rcx, rdi
00000001401c0a0d je       0x1401c0a46
00000001401c0a0f cmp      byte ptr [rcx + 0x169], 4
00000001401c0a16 jb       0x1401c0a46
00000001401c0a18 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0a1e test     bl, al
00000001401c0a20 je       0x1401c0a46
00000001401c0a22 movzx    eax, byte ptr [rbp + 0x50]
00000001401c0a26 mov      edx, 0x136
00000001401c0a2b mov      rcx, qword ptr [rcx + 0x158]
00000001401c0a32 mov      r9, r15
00000001401c0a35 mov      dword ptr [rsp + 0x28], eax
00000001401c0a39 mov      r8, r12
00000001401c0a3c mov      qword ptr [rsp + 0x20], r13
00000001401c0a41 call     0x14003ca14
00000001401c0a46 mov      rdx, qword ptr [rsi + 0x20]
00000001401c0a4a test     rdx, rdx
00000001401c0a4d jne      0x1401c0a84
00000001401c0a4f mov      rcx, qword ptr [rip + 0x75f5aa]
00000001401c0a56 cmp      rcx, rdi
00000001401c0a59 je       0x1401c1470
00000001401c0a5f cmp      byte ptr [rcx + 0x169], 3
00000001401c0a66 jb       0x1401c1422
00000001401c0a6c mov      eax, dword ptr [rcx + 0x16c]
00000001401c0a72 test     bl, al
00000001401c0a74 je       0x1401c1422
00000001401c0a7a mov      edx, 0x137
00000001401c0a7f jmp      0x1401c0039
00000001401c0a84 mov      r8, rdx
00000001401c0a87 mov      rcx, r14
00000001401c0a8a mov      rdx, qword ptr [rdx]
00000001401c0a8d call     0x1401c49fc
00000001401c0a92 jmp      0x1401c0930
00000001401c0a97 cmp      ecx, 0x67
00000001401c0a9a ja       0x1401c10a6
00000001401c0aa0 je       0x1401c0fba
00000001401c0aa6 mov      eax, ecx
00000001401c0aa8 sub      eax, 0x25
00000001401c0aab je       0x1401c0ece
00000001401c0ab1 sub      eax, 2
00000001401c0ab4 je       0x1401c0e38
00000001401c0aba sub      eax, ebx
00000001401c0abc je       0x1401c0b69
00000001401c0ac2 sub      eax, 0x10
00000001401c0ac5 je       0x1401c0af3
00000001401c0ac7 sub      eax, 7
00000001401c0aca je       0x1401c0ae1
00000001401c0acc cmp      eax, ebx
00000001401c0ace jne      0x1401bff85
00000001401c0ad4 mov      rdx, rsi
00000001401c0ad7 mov      rcx, r14
00000001401c0ada call     0x1401c1794
00000001401c0adf jmp      0x1401c0aec
00000001401c0ae1 mov      rdx, rsi
00000001401c0ae4 mov      rcx, r14
00000001401c0ae7 call     0x1401c18c8
00000001401c0aec mov      ebx, eax
00000001401c0aee jmp      0x1401c141d
00000001401c0af3 cmp      byte ptr [rsi + 2], 0x2a
00000001401c0af7 jne      0x1401bffa8
00000001401c0afd mov      rcx, qword ptr [rip + 0x75f4fc]
00000001401c0b04 lea      rdi, [rip + 0x75f4f5]
00000001401c0b0b cmp      rcx, rdi
00000001401c0b0e je       0x1401c0b4e
00000001401c0b10 cmp      byte ptr [rcx + 0x169], 4
00000001401c0b17 jb       0x1401c0b4e
00000001401c0b19 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0b1f test     bl, al
00000001401c0b21 je       0x1401c0b4e
00000001401c0b23 mov      rcx, qword ptr [rcx + 0x158]
00000001401c0b2a lea      r13, [rip + 0x45066f]
00000001401c0b31 mov      edx, 0x13d
00000001401c0b36 mov      qword ptr [rsp + 0x20], r13
00000001401c0b3b lea      r9, [rip + 0x44d84e]
00000001401c0b42 lea      r8, [rip + 0x4d7837]
00000001401c0b49 call     0x14003c968
00000001401c0b4e mov      eax, dword ptr [rsi]
00000001401c0b50 cmp      ax, 0x38
00000001401c0b54 jne      0x1401bff85
00000001401c0b5a xor      edx, edx
00000001401c0b5c mov      rcx, r14
00000001401c0b5f call     0x1402133a0
00000001401c0b64 jmp      0x1401bff85
00000001401c0b69 mov      dl, byte ptr [rsi + 2]
00000001401c0b6c lea      eax, [rdx + 0x7d]
00000001401c0b6f cmp      al, 3
00000001401c0b71 jbe      0x1401c0b7c
00000001401c0b73 cmp      dl, 0x8a
00000001401c0b76 jne      0x1401bffa8
00000001401c0b7c cmp      ecx, 0x20
00000001401c0b7f jne      0x1401c0ba7
00000001401c0b81 mov      rcx, qword ptr [rip + 0x75f478]
00000001401c0b88 cmp      rcx, rdi
00000001401c0b8b je       0x1401c0bea
00000001401c0b8d cmp      byte ptr [rcx + 0x169], 4
00000001401c0b94 jb       0x1401c0bea
00000001401c0b96 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0b9c test     bl, al
00000001401c0b9e je       0x1401c0bea
00000001401c0ba0 mov      edx, 0x12a
00000001401c0ba5 jmp      0x1401c0bcb
00000001401c0ba7 mov      rcx, qword ptr [rip + 0x75f452]
00000001401c0bae cmp      rcx, rdi
00000001401c0bb1 je       0x1401c0bea
00000001401c0bb3 cmp      byte ptr [rcx + 0x169], 4
00000001401c0bba jb       0x1401c0bea
00000001401c0bbc mov      eax, dword ptr [rcx + 0x16c]
00000001401c0bc2 test     bl, al
00000001401c0bc4 je       0x1401c0bea
00000001401c0bc6 mov      edx, 0x12b
00000001401c0bcb movzx    eax, byte ptr [rbp + 0x50]
00000001401c0bcf mov      r9, r15
00000001401c0bd2 mov      rcx, qword ptr [rcx + 0x158]
00000001401c0bd9 mov      r8, r12
00000001401c0bdc mov      dword ptr [rsp + 0x28], eax
00000001401c0be0 mov      qword ptr [rsp + 0x20], r13
00000001401c0be5 call     0x14003ca14
00000001401c0bea mov      rax, qword ptr [rsi + 0x20]
00000001401c0bee mov      qword ptr [rbp - 0x20], rax
00000001401c0bf2 test     rax, rax
00000001401c0bf5 jne      0x1401c0c2c
00000001401c0bf7 mov      rcx, qword ptr [rip + 0x75f402]
00000001401c0bfe cmp      rcx, rdi
00000001401c0c01 je       0x1401c1470
00000001401c0c07 cmp      byte ptr [rcx + 0x169], 2
00000001401c0c0e jb       0x1401c1422
00000001401c0c14 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0c1a test     bl, al
00000001401c0c1c je       0x1401c1422
00000001401c0c22 mov      edx, 0x12c
00000001401c0c27 jmp      0x1401c0039
00000001401c0c2c cmp      byte ptr [rsi + 2], 0x8a
00000001401c0c30 jne      0x1401c0c6e
00000001401c0c32 mov      cl, byte ptr [rsi + 0x30]
00000001401c0c35 test     cl, cl
00000001401c0c37 jne      0x1401c0c71
00000001401c0c39 mov      rcx, qword ptr [rip + 0x75f3c0]
00000001401c0c40 cmp      rcx, rdi
00000001401c0c43 je       0x1401c1470
00000001401c0c49 cmp      byte ptr [rcx + 0x169], 3
00000001401c0c50 jb       0x1401c1422
00000001401c0c56 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0c5c test     bl, al
00000001401c0c5e je       0x1401c1422
00000001401c0c64 mov      edx, 0x12d
00000001401c0c69 jmp      0x1401c0039
00000001401c0c6e mov      cl, byte ptr [rbp + 0x58]
00000001401c0c71 mov      r9b, cl
00000001401c0c74 mov      r8, rax
00000001401c0c77 mov      rcx, r14
00000001401c0c7a mov      rdx, rsi
00000001401c0c7d call     0x1401c6250
00000001401c0c82 test     eax, eax
00000001401c0c84 jne      0x1401c1422
00000001401c0c8a mov      rax, qword ptr [r14 + 0x798]
00000001401c0c91 cmp      byte ptr [rax + 0x94f8], 0
00000001401c0c98 je       0x1401c0d34
00000001401c0c9e mov      rcx, qword ptr [rbp + 0x48]
00000001401c0ca2 mov      r8, rsi
00000001401c0ca5 mov      rdx, r14
00000001401c0ca8 call     0x1401c5cc4
00000001401c0cad mov      ebx, eax
00000001401c0caf test     eax, eax
00000001401c0cb1 jne      0x1401c141d
00000001401c0cb7 mov      rcx, qword ptr [r14 + 0x798]
00000001401c0cbe lea      r8, [rbp - 0x18]
00000001401c0cc2 mov      rax, qword ptr [rbp - 0x20]
00000001401c0cc6 xorps    xmm0, xmm0
00000001401c0cc9 mov      edx, dword ptr [rsi + 4]
00000001401c0ccc movups   xmmword ptr [rbp - 0x18], xmm0
00000001401c0cd0 mov      rax, qword ptr [rax]
00000001401c0cd3 mov      qword ptr [rbp - 0x18], rax
00000001401c0cd7 mov      rax, qword ptr [rcx + 0x94e8]
00000001401c0cde mov      rcx, qword ptr [rcx + 0x10330]
00000001401c0ce5 call     qword ptr [rip + 0x4c360d]
00000001401c0ceb cmp      al, 1
00000001401c0ced je       0x1401c0d62
00000001401c0cef mov      rcx, qword ptr [rip + 0x75f30a]
00000001401c0cf6 cmp      rcx, rdi
00000001401c0cf9 je       0x1401c0d2a
00000001401c0cfb cmp      byte ptr [rcx + 0x169], 2
00000001401c0d02 jb       0x1401c0d2a
00000001401c0d04 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0d0a test     al, 1
00000001401c0d0c je       0x1401c0d2a
00000001401c0d0e mov      rcx, qword ptr [rcx + 0x158]
00000001401c0d15 mov      edx, 0x12e
00000001401c0d1a mov      r9, r15
00000001401c0d1d mov      qword ptr [rsp + 0x20], r13
00000001401c0d22 mov      r8, r12
00000001401c0d25 call     0x14003c968
00000001401c0d2a mov      ebx, 1
00000001401c0d2f jmp      0x1401c1422
00000001401c0d34 mov      rcx, r14
00000001401c0d37 call     0x1401cb77c
00000001401c0d3c mov      rbx, qword ptr [rbp - 0x38]
00000001401c0d40 test     al, al
00000001401c0d42 je       0x1401c0d66
00000001401c0d44 cmp      byte ptr [rbx + 0x9510], 0
00000001401c0d4b jne      0x1401c0d66
00000001401c0d4d cmp      byte ptr [rsi + 2], 0x8a
00000001401c0d51 jne      0x1401c0d66
00000001401c0d53 xor      r8d, r8d
00000001401c0d56 xor      edx, edx
00000001401c0d58 mov      rcx, r14
00000001401c0d5b call     0x1401c4100
00000001401c0d60 jmp      0x1401c0d66
00000001401c0d62 mov      rbx, qword ptr [rbp - 0x38]
00000001401c0d66 mov      rcx, r14
00000001401c0d69 call     0x1401cb77c
00000001401c0d6e test     al, al
00000001401c0d70 je       0x1401c0dd0
00000001401c0d72 cmp      byte ptr [rbx + 0x9510], 0
00000001401c0d79 jne      0x1401c0dd0
00000001401c0d7b mov      r9, qword ptr [rbp - 0x20]
00000001401c0d7f mov      r8, rsi
00000001401c0d82 mov      rcx, qword ptr [rbp + 0x48]
00000001401c0d86 mov      rdx, r14
00000001401c0d89 call     0x1401c69b0
00000001401c0d8e test     eax, eax
00000001401c0d90 je       0x1401c0305
00000001401c0d96 mov      ebx, 1
00000001401c0d9b mov      rcx, qword ptr [rip + 0x75f25e]
00000001401c0da2 cmp      rcx, rdi
00000001401c0da5 je       0x1401c1470
00000001401c0dab cmp      byte ptr [rcx + 0x169], 2
00000001401c0db2 jb       0x1401c1422
00000001401c0db8 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0dbe test     bl, al
00000001401c0dc0 je       0x1401c1422
00000001401c0dc6 mov      edx, 0x12f
00000001401c0dcb jmp      0x1401c0039
00000001401c0dd0 cmp      byte ptr [rbx + 0x94fa], 0
00000001401c0dd7 je       0x1401bff85
00000001401c0ddd movzx    eax, byte ptr [rsi + 2]
00000001401c0de1 xor      r8d, r8d
00000001401c0de4 mov      r9d, dword ptr [rsi + 4]
00000001401c0de8 mov      rcx, r14
00000001401c0deb mov      rdx, qword ptr [rbx + 0x9500]
00000001401c0df2 mov      dword ptr [rsp + 0x20], eax
00000001401c0df6 call     0x1401f9340
00000001401c0dfb test     eax, eax
00000001401c0dfd je       0x1401c0305
00000001401c0e03 mov      rcx, qword ptr [rip + 0x75f1f6]
00000001401c0e0a cmp      rcx, rdi
00000001401c0e0d je       0x1401c03ef
00000001401c0e13 cmp      byte ptr [rcx + 0x169], 2
00000001401c0e1a jb       0x1401c03ef
00000001401c0e20 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0e26 test     al, 1
00000001401c0e28 je       0x1401c03ef
00000001401c0e2e mov      edx, 0x130
00000001401c0e33 jmp      0x1401c066b
00000001401c0e38 cmp      byte ptr [rsi + 2], 0x86
00000001401c0e3c jne      0x1401bffa8
00000001401c0e42 mov      rcx, qword ptr [rip + 0x75f1b7]
00000001401c0e49 lea      rdi, [rip + 0x75f1b0]
00000001401c0e50 cmp      rcx, rdi
00000001401c0e53 je       0x1401c0e8c
00000001401c0e55 cmp      byte ptr [rcx + 0x169], 4
00000001401c0e5c jb       0x1401c0e8c
00000001401c0e5e mov      eax, dword ptr [rcx + 0x16c]
00000001401c0e64 test     bl, al
00000001401c0e66 je       0x1401c0e8c
00000001401c0e68 movzx    eax, byte ptr [rbp + 0x50]
00000001401c0e6c mov      edx, 0x13b
00000001401c0e71 mov      rcx, qword ptr [rcx + 0x158]
00000001401c0e78 mov      r9, r15
00000001401c0e7b mov      dword ptr [rsp + 0x28], eax
00000001401c0e7f mov      r8, r12
00000001401c0e82 mov      qword ptr [rsp + 0x20], r13
00000001401c0e87 call     0x14003ca14
00000001401c0e8c mov      rdx, qword ptr [rsi + 0x20]
00000001401c0e90 test     rdx, rdx
00000001401c0e93 jne      0x1401c0fa7
00000001401c0e99 mov      rcx, qword ptr [rip + 0x75f160]
00000001401c0ea0 cmp      rcx, rdi
00000001401c0ea3 je       0x1401c1470
00000001401c0ea9 cmp      byte ptr [rcx + 0x169], 3
00000001401c0eb0 jb       0x1401c1422
00000001401c0eb6 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0ebc test     bl, al
00000001401c0ebe je       0x1401c1422
00000001401c0ec4 mov      edx, 0x13c
00000001401c0ec9 jmp      0x1401c0039
00000001401c0ece cmp      byte ptr [rsi + 2], 0x85
00000001401c0ed2 jne      0x1401bffa8
00000001401c0ed8 mov      rcx, qword ptr [rip + 0x75f121]
00000001401c0edf lea      rdi, [rip + 0x75f11a]
00000001401c0ee6 cmp      rcx, rdi
00000001401c0ee9 je       0x1401c0f22
00000001401c0eeb cmp      byte ptr [rcx + 0x169], 4
00000001401c0ef2 jb       0x1401c0f22
00000001401c0ef4 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0efa test     bl, al
00000001401c0efc je       0x1401c0f22
00000001401c0efe movzx    eax, byte ptr [rbp + 0x50]
00000001401c0f02 mov      edx, 0x138
00000001401c0f07 mov      rcx, qword ptr [rcx + 0x158]
00000001401c0f0e mov      r9, r15
00000001401c0f11 mov      dword ptr [rsp + 0x28], eax
00000001401c0f15 mov      r8, r12
00000001401c0f18 mov      qword ptr [rsp + 0x20], r13
00000001401c0f1d call     0x14003ca14
00000001401c0f22 mov      rdx, qword ptr [rsi + 0x20]
00000001401c0f26 test     rdx, rdx
00000001401c0f29 jne      0x1401c0f60
00000001401c0f2b mov      rcx, qword ptr [rip + 0x75f0ce]
00000001401c0f32 cmp      rcx, rdi
00000001401c0f35 je       0x1401c1470
00000001401c0f3b cmp      byte ptr [rcx + 0x169], 3
00000001401c0f42 jb       0x1401c1422
00000001401c0f48 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0f4e test     bl, al
00000001401c0f50 je       0x1401c1422
00000001401c0f56 mov      edx, 0x139
00000001401c0f5b jmp      0x1401c0039
00000001401c0f60 mov      rax, qword ptr [rsi + 8]
00000001401c0f64 test     rax, rax
00000001401c0f67 jne      0x1401c0f9e
00000001401c0f69 mov      rcx, qword ptr [rip + 0x75f090]
00000001401c0f70 cmp      rcx, rdi
00000001401c0f73 je       0x1401c1422
00000001401c0f79 cmp      byte ptr [rcx + 0x169], 3
00000001401c0f80 jb       0x1401c1422
00000001401c0f86 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0f8c test     bl, al
00000001401c0f8e je       0x1401c1422
00000001401c0f94 mov      edx, 0x13a
00000001401c0f99 jmp      0x1401c0039
00000001401c0f9e cmp      byte ptr [rax], 0
00000001401c0fa1 je       0x1401bff85
00000001401c0fa7 mov      r8, rdx
00000001401c0faa mov      rcx, r14
00000001401c0fad mov      rdx, qword ptr [rdx]
00000001401c0fb0 call     0x1401c4d1c
00000001401c0fb5 jmp      0x1401c0930
00000001401c0fba cmp      byte ptr [rsi + 2], 0xa
00000001401c0fbe jne      0x1401bffa8
00000001401c0fc4 mov      rcx, qword ptr [rip + 0x75f035]
00000001401c0fcb lea      rdi, [rip + 0x75f02e]
00000001401c0fd2 cmp      rcx, rdi
00000001401c0fd5 je       0x1401c100e
00000001401c0fd7 cmp      byte ptr [rcx + 0x169], 4
00000001401c0fde jb       0x1401c100e
00000001401c0fe0 mov      eax, dword ptr [rcx + 0x16c]
00000001401c0fe6 test     bl, al
00000001401c0fe8 je       0x1401c100e
00000001401c0fea movzx    eax, byte ptr [rbp + 0x50]
00000001401c0fee mov      edx, 0x10c
00000001401c0ff3 mov      rcx, qword ptr [rcx + 0x158]
00000001401c0ffa mov      r9, r15
00000001401c0ffd mov      dword ptr [rsp + 0x28], eax
00000001401c1001 mov      r8, r12
00000001401c1004 mov      qword ptr [rsp + 0x20], r13
00000001401c1009 call     0x14003ca14
00000001401c100e mov      rdx, qword ptr [rsi + 0x20]
00000001401c1012 test     rdx, rdx
00000001401c1015 jne      0x1401c104c
00000001401c1017 mov      rcx, qword ptr [rip + 0x75efe2]
00000001401c101e cmp      rcx, rdi
00000001401c1021 je       0x1401c1470
00000001401c1027 cmp      byte ptr [rcx + 0x169], 3
00000001401c102e jb       0x1401c1422
00000001401c1034 mov      eax, dword ptr [rcx + 0x16c]
00000001401c103a test     bl, al
00000001401c103c je       0x1401c1422
00000001401c1042 mov      edx, 0x10d
00000001401c1047 jmp      0x1401c0039
00000001401c104c mov      dl, byte ptr [rdx + 0x19]
00000001401c104f mov      rcx, r14
00000001401c1052 call     0x1401c857c
00000001401c1057 test     eax, eax
00000001401c1059 je       0x1401bff85
00000001401c105f mov      rcx, qword ptr [rip + 0x75ef9a]
00000001401c1066 cmp      rcx, rdi
00000001401c1069 je       0x1401c1470
00000001401c106f cmp      byte ptr [rcx + 0x169], 3
00000001401c1076 jb       0x1401c1422
00000001401c107c mov      eax, dword ptr [rcx + 0x16c]
00000001401c1082 test     bl, al
00000001401c1084 je       0x1401c1422
00000001401c108a mov      rcx, qword ptr [rcx + 0x158]
00000001401c1091 mov      edx, 0x10e
00000001401c1096 mov      r9, r15
00000001401c1099 mov      r8, r12
00000001401c109c call     0x140008874
00000001401c10a1 jmp      0x1401c1422
00000001401c10a6 sub      ecx, 0x6d
00000001401c10a9 je       0x1401c138c
00000001401c10af sub      ecx, ebx
00000001401c10b1 je       0x1401c1341
00000001401c10b7 sub      ecx, 9
00000001401c10ba je       0x1401c12f2
00000001401c10c0 sub      ecx, 0x29
00000001401c10c3 je       0x1401c1206
00000001401c10c9 sub      ecx, 0x24
00000001401c10cc je       0x1401c115f
00000001401c10d2 cmp      ecx, 0x36
00000001401c10d5 jne      0x1401bff85
00000001401c10db cmp      byte ptr [rsi + 2], 0x2a
00000001401c10df jne      0x1401bffa8
00000001401c10e5 mov      rcx, qword ptr [rip + 0x75ef14]
00000001401c10ec lea      rdi, [rip + 0x75ef0d]
00000001401c10f3 cmp      rcx, rdi
00000001401c10f6 je       0x1401c1136
00000001401c10f8 cmp      byte ptr [rcx + 0x169], 4
00000001401c10ff jb       0x1401c1136
00000001401c1101 mov      eax, dword ptr [rcx + 0x16c]
00000001401c1107 test     bl, al
00000001401c1109 je       0x1401c1136
00000001401c110b mov      rcx, qword ptr [rcx + 0x158]
00000001401c1112 lea      r13, [rip + 0x450087]
00000001401c1119 mov      edx, 0x13f
00000001401c111e mov      qword ptr [rsp + 0x20], r13
00000001401c1123 lea      r9, [rip + 0x44d266]
00000001401c112a lea      r8, [rip + 0x4d724f]
00000001401c1131 call     0x14003c968
00000001401c1136 xor      edx, edx
00000001401c1138 mov      rcx, r14
00000001401c113b call     0x1401c857c
00000001401c1140 mov      dl, bl
00000001401c1142 mov      rcx, r14
00000001401c1145 call     0x1401c857c
00000001401c114a mov      rcx, r14
00000001401c114d call     0x1401cb578
00000001401c1152 mov      rcx, r14
00000001401c1155 call     0x14029e494
00000001401c115a jmp      0x1401bff85
00000001401c115f mov      cl, byte ptr [rsi + 2]
00000001401c1162 lea      eax, [rcx + 0x7d]
00000001401c1165 cmp      al, 3
00000001401c1167 jbe      0x1401c1172
00000001401c1169 cmp      cl, 2
00000001401c116c jne      0x1401bffa8
00000001401c1172 mov      rax, qword ptr [rsi + 0x20]
00000001401c1176 mov      rcx, r14
00000001401c1179 mov      r9, qword ptr [rbp - 0x28]
00000001401c117d mov      rdx, rax
00000001401c1180 mov      r8b, byte ptr [rsi + 0x28]
00000001401c1184 mov      qword ptr [rbp + 0x58], rax
00000001401c1188 call     0x1401c82f4
00000001401c118d test     eax, eax
00000001401c118f je       0x1401c11ce
00000001401c1191 mov      rcx, qword ptr [rip + 0x75ee68]
00000001401c1198 cmp      rcx, rdi
00000001401c119b je       0x1401c11ec
00000001401c119d cmp      byte ptr [rcx + 0x169], 2
00000001401c11a4 jb       0x1401c11ec
00000001401c11a6 mov      eax, dword ptr [rcx + 0x16c]
00000001401c11ac test     bl, al
00000001401c11ae je       0x1401c11ec
00000001401c11b0 mov      rcx, qword ptr [rcx + 0x158]
00000001401c11b7 mov      edx, 0x13e
00000001401c11bc mov      r9, r15
00000001401c11bf mov      qword ptr [rsp + 0x20], r13
00000001401c11c4 mov      r8, r12
00000001401c11c7 call     0x14003c968
00000001401c11cc jmp      0x1401c11ec
00000001401c11ce mov      rcx, qword ptr [rbp + 0x58]
00000001401c11d2 mov      eax, dword ptr [rcx + 0x24]
00000001401c11d5 sub      eax, 5
00000001401c11d8 neg      eax
00000001401c11da sbb      eax, eax
00000001401c11dc add      eax, 6
00000001401c11df mov      dword ptr [rcx + 0x24], eax
00000001401c11e2 mov      rcx, r14
00000001401c11e5 call     0x1401cb578
00000001401c11ea xor      ebx, ebx
00000001401c11ec mov      rax, qword ptr [rbp - 0x38]
00000001401c11f0 mov      byte ptr [rax + 0x94fa], 0
00000001401c11f7 cmp      byte ptr [rsi + 2], 2
00000001401c11fb je       0x1401c141d
00000001401c1201 jmp      0x1401c1412
00000001401c1206 mov      rcx, qword ptr [rip + 0x75edf3]
00000001401c120d cmp      rcx, rdi
00000001401c1210 je       0x1401c1241
00000001401c1212 cmp      byte ptr [rcx + 0x169], 4
00000001401c1219 jb       0x1401c1241
00000001401c121b mov      eax, dword ptr [rcx + 0x16c]
00000001401c1221 test     bl, al
00000001401c1223 je       0x1401c1241
00000001401c1225 mov      rcx, qword ptr [rcx + 0x158]
00000001401c122c mov      edx, 0x11b
00000001401c1231 mov      r9, r15
00000001401c1234 mov      qword ptr [rsp + 0x20], r13
00000001401c1239 mov      r8, r12
00000001401c123c call     0x14003c968
00000001401c1241 mov      rbx, qword ptr [rsi + 8]
00000001401c1245 mov      rcx, r14
00000001401c1248 call     0x1401cb77c
00000001401c124d test     al, al
00000001401c124f jne      0x1401c12a1
00000001401c1251 mov      rax, qword ptr [rbp - 0x38]
00000001401c1255 cmp      qword ptr [rax + 0x9518], 0
00000001401c125d jne      0x1401c12a1
00000001401c125f mov      rcx, qword ptr [rip + 0x75ed9a]
00000001401c1266 cmp      rcx, rdi
00000001401c1269 je       0x1401c129a
00000001401c126b cmp      byte ptr [rcx + 0x169], 2
00000001401c1272 jb       0x1401c129a
00000001401c1274 mov      eax, dword ptr [rcx + 0x16c]
00000001401c127a test     al, 1
00000001401c127c je       0x1401c129a
00000001401c127e mov      rcx, qword ptr [rcx + 0x158]
00000001401c1285 mov      edx, 0x11c
00000001401c128a mov      r9, r15
00000001401c128d mov      qword ptr [rsp + 0x20], r13
00000001401c1292 mov      r8, r12
00000001401c1295 call     0x14003c968
00000001401c129a xor      ebx, ebx
00000001401c129c jmp      0x1401c1412
00000001401c12a1 mov      rcx, qword ptr [rbp + 0x48]
00000001401c12a5 mov      r9, rbx
00000001401c12a8 mov      r8, rsi
00000001401c12ab mov      rdx, r14
00000001401c12ae call     0x1401c69b0
00000001401c12b3 mov      ebx, eax
00000001401c12b5 test     eax, eax
00000001401c12b7 je       0x1401c1412
00000001401c12bd mov      rcx, qword ptr [rip + 0x75ed3c]
00000001401c12c4 cmp      rcx, rdi
00000001401c12c7 je       0x1401c1412
00000001401c12cd cmp      byte ptr [rcx + 0x169], 2
00000001401c12d4 jb       0x1401c1412
00000001401c12da mov      eax, dword ptr [rcx + 0x16c]
00000001401c12e0 test     al, 1
00000001401c12e2 je       0x1401c1412
00000001401c12e8 mov      edx, 0x11d
00000001401c12ed jmp      0x1401c1400
00000001401c12f2 mov      rcx, qword ptr [rip + 0x75ed07]
00000001401c12f9 cmp      rcx, rdi
00000001401c12fc je       0x1401c132d
00000001401c12fe cmp      byte ptr [rcx + 0x169], 4
00000001401c1305 jb       0x1401c132d
00000001401c1307 mov      eax, dword ptr [rcx + 0x16c]
00000001401c130d test     bl, al
00000001401c130f je       0x1401c132d
00000001401c1311 mov      rcx, qword ptr [rcx + 0x158]
00000001401c1318 mov      edx, 0x103
00000001401c131d mov      r9, r15
00000001401c1320 mov      qword ptr [rsp + 0x20], r13
00000001401c1325 mov      r8, r12
00000001401c1328 call     0x14003c968
00000001401c132d mov      rcx, qword ptr [rbp + 0x48]
00000001401c1331 mov      r8, rsi
00000001401c1334 mov      rdx, r14
00000001401c1337 call     0x1401bfb8c
00000001401c133c jmp      0x1401c0aec
00000001401c1341 mov      rcx, qword ptr [rbp + 0x48]
00000001401c1345 mov      r8, rsi
00000001401c1348 mov      rdx, r14
00000001401c134b call     0x1401c5cc4
00000001401c1350 mov      ebx, eax
00000001401c1352 test     eax, eax
00000001401c1354 je       0x1401c1412
00000001401c135a mov      rcx, qword ptr [rip + 0x75ec9f]
00000001401c1361 cmp      rcx, rdi
00000001401c1364 je       0x1401c1412
00000001401c136a cmp      byte ptr [rcx + 0x169], 2
00000001401c1371 jb       0x1401c1412
00000001401c1377 mov      eax, dword ptr [rcx + 0x16c]
00000001401c137d test     al, 1
00000001401c137f je       0x1401c1412
00000001401c1385 mov      edx, 0x118
00000001401c138a jmp      0x1401c1400
00000001401c138c mov      rcx, qword ptr [rip + 0x75ec6d]
00000001401c1393 cmp      rcx, rdi
00000001401c1396 je       0x1401c13c7
00000001401c1398 cmp      byte ptr [rcx + 0x169], 4
00000001401c139f jb       0x1401c13c7
00000001401c13a1 mov      eax, dword ptr [rcx + 0x16c]
00000001401c13a7 test     bl, al
00000001401c13a9 je       0x1401c13c7
00000001401c13ab mov      rcx, qword ptr [rcx + 0x158]
00000001401c13b2 mov      edx, 0x116
00000001401c13b7 mov      r9, r15
00000001401c13ba mov      qword ptr [rsp + 0x20], r13
00000001401c13bf mov      r8, r12
00000001401c13c2 call     0x14003c968
00000001401c13c7 mov      rcx, qword ptr [rbp + 0x48]
00000001401c13cb mov      r8, rsi
00000001401c13ce mov      rdx, r14
00000001401c13d1 call     0x1401c6144
00000001401c13d6 mov      ebx, eax
00000001401c13d8 test     eax, eax
00000001401c13da je       0x1401c1412
00000001401c13dc mov      rcx, qword ptr [rip + 0x75ec1d]
00000001401c13e3 cmp      rcx, rdi
00000001401c13e6 je       0x1401c1412
00000001401c13e8 cmp      byte ptr [rcx + 0x169], 2
00000001401c13ef jb       0x1401c1412
00000001401c13f1 mov      eax, dword ptr [rcx + 0x16c]
00000001401c13f7 test     al, 1
00000001401c13f9 je       0x1401c1412
00000001401c13fb mov      edx, 0x117
00000001401c1400 mov      rcx, qword ptr [rcx + 0x158]
00000001401c1407 mov      r9, r15
00000001401c140a mov      r8, r12
00000001401c140d call     0x140008874
00000001401c1412 mov      dl, byte ptr [rsi + 4]
00000001401c1415 mov      rcx, r14
00000001401c1418 call     0x1401b90fc
00000001401c141d cmp      ebx, 1
00000001401c1420 jne      0x1401c1470
00000001401c1422 mov      rcx, qword ptr [rip + 0x75ebd7]
00000001401c1429 cmp      rcx, rdi
00000001401c142c je       0x1401c1470
00000001401c142e cmp      byte ptr [rcx + 0x169], 2
00000001401c1435 jb       0x1401c1470
00000001401c1437 mov      eax, dword ptr [rcx + 0x16c]
00000001401c143d test     al, 1
00000001401c143f je       0x1401c1470
00000001401c1441 mov      eax, dword ptr [rsi]
00000001401c1443 mov      edx, 0x140
00000001401c1448 mov      rcx, qword ptr [rcx + 0x158]
00000001401c144f mov      r9, r15
00000001401c1452 movzx    r8d, ax
00000001401c1456 movzx    eax, byte ptr [rsi + 2]
00000001401c145a mov      dword ptr [rsp + 0x30], r8d
00000001401c145f mov      r8, r12
00000001401c1462 mov      dword ptr [rsp + 0x28], eax
00000001401c1466 mov      qword ptr [rsp + 0x20], r13
00000001401c146b call     0x1400aa578
00000001401c1470 mov      eax, ebx
00000001401c1472 add      rsp, 0x78
00000001401c1476 pop      r15
00000001401c1478 pop      r14
00000001401c147a pop      r13
00000001401c147c pop      r12
00000001401c147e pop      rdi
00000001401c147f pop      rsi
00000001401c1480 pop      rbx
00000001401c1481 pop      rbp
00000001401c1482 ret      