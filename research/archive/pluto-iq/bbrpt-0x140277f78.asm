0000000140277f78 push     rbp
0000000140277f7a push     rbx
0000000140277f7b push     rsi
0000000140277f7c push     rdi
0000000140277f7d push     r12
0000000140277f7f push     r13
0000000140277f81 push     r14
0000000140277f83 push     r15
0000000140277f85 lea      rbp, [rsp - 0x1b8]
0000000140277f8d sub      rsp, 0x2b8
0000000140277f94 mov      rax, qword ptr [rip + 0x6af4c5]
0000000140277f9b xor      rax, rsp
0000000140277f9e mov      qword ptr [rbp + 0x1a0], rax
0000000140277fa5 mov      r12, qword ptr [rcx + 0x230]
0000000140277fac mov      bl, r8b
0000000140277faf movzx    r13d, dx
0000000140277fb3 mov      word ptr [rsp + 0x42], dx
0000000140277fb8 xor      edx, edx
0000000140277fba mov      qword ptr [rsp + 0x48], r12
0000000140277fbf mov      r8d, 0x248
0000000140277fc5 lea      rcx, [rsp + 0x50]
0000000140277fca mov      r14, r9
0000000140277fcd call     0x1405f4640
0000000140277fd2 mov      al, bl
0000000140277fd4 lea      rdi, [rip + 0x6a8025]
0000000140277fdb and      al, 1
0000000140277fdd lea      rsi, [rip + 0x3a3e0c]
0000000140277fe4 mov      byte ptr [rsp + 0x40], al
0000000140277fe8 test     bl, bl
0000000140277fea je       0x14027818c
0000000140277ff0 mov      dl, byte ptr [r14 + 0x161]
0000000140277ff7 mov      r8b, byte ptr [r14 + 1]
0000000140277ffb and      dl, 1
0000000140277ffe shl      dl, 2
0000000140278001 or       dl, al
0000000140278003 mov      byte ptr [rsp + 0x50], r8b
0000000140278008 mov      byte ptr [rsp + 0x40], dl
000000014027800c mov      rcx, qword ptr [rip + 0x6a7fed]
0000000140278013 cmp      rcx, rdi
0000000140278016 je       0x1402780b2
000000014027801c cmp      byte ptr [rcx + 0x169], 4
0000000140278023 jb       0x140278062
0000000140278025 mov      eax, dword ptr [rcx + 0x16c]
000000014027802b test     al, 1
000000014027802d je       0x140278062
000000014027802f mov      rcx, qword ptr [rcx + 0x158]
0000000140278036 lea      r9, [rip + 0x396353]
000000014027803d movzx    eax, dl
0000000140278040 lea      r8, [rip + 0x420e99]
0000000140278047 shr      eax, 2
000000014027804a mov      edx, 0x11a
000000014027804f mov      dword ptr [rsp + 0x28], eax
0000000140278053 mov      qword ptr [rsp + 0x20], rsi
0000000140278058 call     0x14003ca14
000000014027805d mov      r8b, byte ptr [rsp + 0x50]
0000000140278062 mov      rcx, qword ptr [rip + 0x6a7f97]
0000000140278069 cmp      rcx, rdi
000000014027806c je       0x1402780b2
000000014027806e cmp      byte ptr [rcx + 0x169], 4
0000000140278075 jb       0x1402780b2
0000000140278077 mov      eax, dword ptr [rcx + 0x16c]
000000014027807d test     al, 1
000000014027807f je       0x1402780b2
0000000140278081 mov      rcx, qword ptr [rcx + 0x158]
0000000140278088 lea      r9, [rip + 0x396301]
000000014027808f movzx    eax, r8b
0000000140278093 mov      edx, 0x11b
0000000140278098 mov      dword ptr [rsp + 0x28], eax
000000014027809c lea      r8, [rip + 0x420e3d]
00000001402780a3 mov      qword ptr [rsp + 0x20], rsi
00000001402780a8 call     0x14003ca14
00000001402780ad mov      r8b, byte ptr [rsp + 0x50]
00000001402780b2 xor      dil, dil
00000001402780b5 test     r8b, r8b
00000001402780b8 je       0x140278185
00000001402780be lea      r13, [rip + 0x6a7f3b]
00000001402780c5 lea      r12, [rip + 0x3a3d24]
00000001402780cc movzx    esi, dil
00000001402780d0 lea      r15, [rbp - 0x68]
00000001402780d4 imul     rbx, rsi, 0x23
00000001402780d8 lea      rdx, [r14 + 3]
00000001402780dc mov      r8d, 0x20
00000001402780e2 add      rdx, rbx
00000001402780e5 mov      al, byte ptr [rbx + r14 + 0x24]
00000001402780ea mov      byte ptr [rsp + rsi + 0x60], al
00000001402780ee mov      eax, esi
00000001402780f0 shl      rax, 5
00000001402780f4 add      r15, rax
00000001402780f7 mov      rcx, r15
00000001402780fa call     0x1400311e8
00000001402780ff mov      al, byte ptr [rbx + r14 + 0x25]
0000000140278104 mov      byte ptr [rsp + rsi + 0x70], al
0000000140278108 mov      rcx, qword ptr [rip + 0x6a7ef1]
000000014027810f cmp      rcx, r13
0000000140278112 je       0x140278165
0000000140278114 cmp      byte ptr [rcx + 0x169], 4
000000014027811b jb       0x140278165
000000014027811d mov      eax, dword ptr [rcx + 0x16c]
0000000140278123 test     al, 1
0000000140278125 je       0x140278165
0000000140278127 movzx    eax, byte ptr [rsp + rsi + 0x60]
000000014027812c lea      r9, [rip + 0x39625d]
0000000140278133 mov      rcx, qword ptr [rcx + 0x158]
000000014027813a mov      edx, 0x11c
000000014027813f mov      dword ptr [rsp + 0x38], eax
0000000140278143 movzx    r8d, dil
0000000140278147 inc      r8d
000000014027814a mov      qword ptr [rsp + 0x30], r15
000000014027814f mov      dword ptr [rsp + 0x28], r8d
0000000140278154 lea      r8, [rip + 0x420d85]
000000014027815b mov      qword ptr [rsp + 0x20], r12
0000000140278160 call     0x14020af00
0000000140278165 inc      dil
0000000140278168 cmp      dil, byte ptr [rsp + 0x50]
000000014027816d jb       0x1402780cc
0000000140278173 mov      r12, qword ptr [rsp + 0x48]
0000000140278178 lea      rsi, [rip + 0x3a3c71]
000000014027817f movzx    r13d, word ptr [rsp + 0x42]
0000000140278185 lea      rdi, [rip + 0x6a7e74]
000000014027818c mov      rax, qword ptr [r12]
0000000140278190 lea      r9, [rsp + 0x50]
0000000140278195 movzx    edx, r13b
0000000140278199 lea      r8, [rsp + 0x40]
000000014027819e mov      rcx, r12
00000001402781a1 mov      rax, qword ptr [rax + 0x7d8]
00000001402781a8 call     qword ptr [rip + 0x40c14a]
00000001402781ae test     eax, eax
00000001402781b0 je       0x140278201
00000001402781b2 mov      rcx, qword ptr [rip + 0x6a7e47]
00000001402781b9 cmp      rcx, rdi
00000001402781bc je       0x1402781fa
00000001402781be cmp      byte ptr [rcx + 0x169], 2
00000001402781c5 jb       0x1402781fa
00000001402781c7 mov      edx, dword ptr [rcx + 0x16c]
00000001402781cd test     dl, 1
00000001402781d0 je       0x1402781fa
00000001402781d2 mov      rcx, qword ptr [rcx + 0x158]
00000001402781d9 lea      r9, [rip + 0x3961b0]
00000001402781e0 mov      dword ptr [rsp + 0x28], eax
00000001402781e4 lea      r8, [rip + 0x420cf5]
00000001402781eb mov      edx, 0x11d
00000001402781f0 mov      qword ptr [rsp + 0x20], rsi
00000001402781f5 call     0x14003ca14
00000001402781fa mov      eax, 1
00000001402781ff jmp      0x140278203
0000000140278201 xor      eax, eax
0000000140278203 mov      rcx, qword ptr [rbp + 0x1a0]
000000014027820a xor      rcx, rsp
000000014027820d call     0x1405f45b0
0000000140278212 add      rsp, 0x2b8
0000000140278219 pop      r15
000000014027821b pop      r14
000000014027821d pop      r13
000000014027821f pop      r12
0000000140278221 pop      rdi
0000000140278222 pop      rsi
0000000140278223 pop      rbx
0000000140278224 pop      rbp
0000000140278225 ret      