0000000140348040 mov      qword ptr [rsp + 0x18], rbx
0000000140348045 push     rbp
0000000140348046 push     rsi
0000000140348047 push     rdi
0000000140348048 push     r13
000000014034804a push     r14
000000014034804c sub      rsp, 0x60
0000000140348050 mov      rax, qword ptr [rip + 0x5df409]
0000000140348057 xor      rax, rsp
000000014034805a mov      qword ptr [rsp + 0x58], rax
000000014034805f movsxd   rax, dword ptr [rcx + 0x998]
0000000140348066 mov      rbx, rcx
0000000140348069 mov      r14, qword ptr [rcx + 0x9a0]
0000000140348070 mov      rdi, rdx
0000000140348073 imul     rcx, rax, 0x6d0
000000014034807a xor      edx, edx
000000014034807c mov      dword ptr [rsp + 0x40], 0xffff
0000000140348084 mov      rax, qword ptr [rbx + 8]
0000000140348088 mov      dword ptr [rsp + 0x44], edx
000000014034808c mov      ebp, dword ptr [rcx + rax + 0x53c]
0000000140348093 mov      rax, qword ptr [rbx]
0000000140348096 movzx    esi, byte ptr [rax + 0xe190]
000000014034809d xor      eax, eax
000000014034809f mov      qword ptr [rsp + 0x48], rax
00000001403480a4 mov      word ptr [rsp + 0x50], ax
00000001403480a9 mov      byte ptr [rsp + 0x52], al
00000001403480ad mov      rcx, qword ptr [rip + 0x5d7f4c]
00000001403480b4 lea      r13, [rip + 0x5d7f45]
00000001403480bb cmp      rcx, r13
00000001403480be je       0x1403480f4
00000001403480c0 cmp      byte ptr [rcx + 0x1e9], 4
00000001403480c7 jb       0x1403480f4
00000001403480c9 mov      eax, dword ptr [rcx + 0x1ec]
00000001403480cf test     al, 0x20
00000001403480d1 je       0x1403480f4
00000001403480d3 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403480da lea      r9, [rip + 0x2ef85f]
00000001403480e1 mov      edx, 0x93
00000001403480e6 lea      r8, [rip + 0x389493]
00000001403480ed call     0x140008874
00000001403480f2 xor      edx, edx
00000001403480f4 cmp      word ptr [rdi + 4], dx
00000001403480f8 jne      0x14034812c
00000001403480fa mov      rcx, qword ptr [rip + 0x5d7eff]
0000000140348101 cmp      rcx, r13
0000000140348104 je       0x1403481aa
000000014034810a cmp      byte ptr [rcx + 0x1e9], 4
0000000140348111 jb       0x1403481aa
0000000140348117 mov      eax, dword ptr [rcx + 0x1ec]
000000014034811d test     al, 0x20
000000014034811f je       0x1403481aa
0000000140348125 mov      edx, 0x94
000000014034812a jmp      0x140348187
000000014034812c cmp      dword ptr [rdi + 8], 4
0000000140348130 jne      0x14034819c
0000000140348132 mov      al, byte ptr [rdi + 0xc]
0000000140348135 test     al, al
0000000140348137 jne      0x14034815f
0000000140348139 mov      rcx, qword ptr [rip + 0x5d7ec0]
0000000140348140 cmp      rcx, r13
0000000140348143 je       0x1403481aa
0000000140348145 cmp      byte ptr [rcx + 0x1e9], 4
000000014034814c jb       0x1403481aa
000000014034814e mov      eax, dword ptr [rcx + 0x1ec]
0000000140348154 test     al, 0x20
0000000140348156 je       0x1403481aa
0000000140348158 mov      edx, 0x95
000000014034815d jmp      0x140348187
000000014034815f cmp      al, 0xc
0000000140348161 jbe      0x14034819c
0000000140348163 mov      rcx, qword ptr [rip + 0x5d7e96]
000000014034816a cmp      rcx, r13
000000014034816d je       0x1403481aa
000000014034816f cmp      byte ptr [rcx + 0x1e9], 4
0000000140348176 jb       0x1403481aa
0000000140348178 mov      eax, dword ptr [rcx + 0x1ec]
000000014034817e test     al, 0x20
0000000140348180 je       0x1403481aa
0000000140348182 mov      edx, 0x96
0000000140348187 mov      rcx, qword ptr [rcx + 0x1d8]
000000014034818e lea      r8, [rip + 0x3893eb]
0000000140348195 call     0x140001b88
000000014034819a jmp      0x1403481aa
000000014034819c mov      edx, dword ptr [rdi]
000000014034819e mov      rcx, rbx
00000001403481a1 call     0x140347d08
00000001403481a6 test     al, al
00000001403481a8 jne      0x1403481b1
00000001403481aa xor      al, al
00000001403481ac jmp      0x14034852a
00000001403481b1 mov      r10, qword ptr [rip + 0x5d7e48]
00000001403481b8 cmp      r10, r13
00000001403481bb je       0x140348209
00000001403481bd cmp      byte ptr [r10 + 0x1e9], 4
00000001403481c5 jb       0x140348209
00000001403481c7 mov      eax, dword ptr [r10 + 0x1ec]
00000001403481ce test     al, 0x20
00000001403481d0 je       0x140348209
00000001403481d2 movzx    ecx, word ptr [rdi + 4]
00000001403481d6 mov      edx, 0x97
00000001403481db movzx    r8d, byte ptr [rdi + 0xf]
00000001403481e0 movzx    r9d, byte ptr [rdi + 0xe]
00000001403481e5 mov      dword ptr [rsp + 0x38], esi
00000001403481e9 mov      dword ptr [rsp + 0x30], ebp
00000001403481ed mov      dword ptr [rsp + 0x28], ecx
00000001403481f1 mov      rcx, qword ptr [r10 + 0x1d8]
00000001403481f8 mov      dword ptr [rsp + 0x20], r8d
00000001403481fd lea      r8, [rip + 0x38937c]
0000000140348204 call     0x140039d40
0000000140348209 test     ebp, ebp
000000014034820b jne      0x14034822c
000000014034820d cmp      sil, 7
0000000140348211 jne      0x14034821c
0000000140348213 movzx    esi, word ptr [rdi + 4]
0000000140348217 shr      si, 1
000000014034821a jmp      0x140348230
000000014034821c cmp      sil, 6
0000000140348220 jne      0x14034822c
0000000140348222 movzx    esi, word ptr [rdi + 4]
0000000140348226 shr      si, 2
000000014034822a jmp      0x140348230
000000014034822c movzx    esi, word ptr [rdi + 4]
0000000140348230 cmp      si, word ptr [rbx + 0x16e6]
0000000140348237 je       0x14034833c
000000014034823d lea      r9, [rsp + 0x44]
0000000140348242 movzx    edx, si
0000000140348245 lea      r8, [rsp + 0x40]
000000014034824a mov      rcx, rbx
000000014034824d call     0x140340054
0000000140348252 cmp      byte ptr [rbx + 0x16b4], 0
0000000140348259 mov      ebp, dword ptr [rsp + 0x40]
000000014034825d je       0x1403482b4
000000014034825f cmp      dword ptr [rdi + 8], 2
0000000140348263 jg       0x1403482b4
0000000140348265 mov      rcx, qword ptr [rip + 0x5d7d94]
000000014034826c cmp      rcx, r13
000000014034826f je       0x1403482ab
0000000140348271 cmp      byte ptr [rcx + 0x1e9], 4
0000000140348278 jb       0x1403482ab
000000014034827a mov      eax, dword ptr [rcx + 0x1ec]
0000000140348280 test     al, 0x20
0000000140348282 je       0x1403482ab
0000000140348284 movzx    r9d, word ptr [rbx + 0x1618]
000000014034828c lea      r8, [rip + 0x3892ed]
0000000140348293 mov      rcx, qword ptr [rcx + 0x1d8]
000000014034829a mov      edx, 0x98
000000014034829f movzx    eax, si
00000001403482a2 mov      dword ptr [rsp + 0x20], eax
00000001403482a6 call     0x140001bec
00000001403482ab mov      word ptr [rbx + 0x1618], si
00000001403482b2 jmp      0x14034832e
00000001403482b4 mov      r8d, dword ptr [r14 + 0x2158]
00000001403482bb mov      r9d, ebp
00000001403482be mov      edx, dword ptr [r14 + 0x2154]
00000001403482c5 mov      rcx, rbx
00000001403482c8 call     0x140316bec
00000001403482cd mov      r9d, dword ptr [rsp + 0x44]
00000001403482d2 mov      rcx, rbx
00000001403482d5 mov      r8d, dword ptr [r14 + 0x2160]
00000001403482dc mov      edx, dword ptr [r14 + 0x215c]
00000001403482e3 call     0x140316bec
00000001403482e8 mov      rcx, qword ptr [rip + 0x5d7d11]
00000001403482ef cmp      rcx, r13
00000001403482f2 je       0x14034832e
00000001403482f4 cmp      byte ptr [rcx + 0x1e9], 4
00000001403482fb jb       0x14034832e
00000001403482fd mov      eax, dword ptr [rcx + 0x1ec]
0000000140348303 test     al, 0x20
0000000140348305 je       0x14034832e
0000000140348307 movzx    r9d, word ptr [rbx + 0x16e6]
000000014034830f lea      r8, [rip + 0x38926a]
0000000140348316 mov      rcx, qword ptr [rcx + 0x1d8]
000000014034831d mov      edx, 0x99
0000000140348322 movzx    eax, si
0000000140348325 mov      dword ptr [rsp + 0x20], eax
0000000140348329 call     0x140001bec
000000014034832e mov      word ptr [rbx + 0x16e6], si
0000000140348335 mov      word ptr [rbx + 0x173a], bp
000000014034833c movzx    edx, byte ptr [rdi + 0xe]
0000000140348340 cmp      dl, byte ptr [rbx + 0x173c]
0000000140348346 je       0x140348414
000000014034834c cmp      byte ptr [rbx + 0x16b4], 0
0000000140348353 je       0x1403483ab
0000000140348355 cmp      dword ptr [rdi + 8], 2
0000000140348359 jg       0x1403483ab
000000014034835b mov      rcx, qword ptr [rip + 0x5d7c9e]
0000000140348362 cmp      rcx, r13
0000000140348365 je       0x1403483a0
0000000140348367 cmp      byte ptr [rcx + 0x1e9], 4
000000014034836e jb       0x1403483a0
0000000140348370 mov      eax, dword ptr [rcx + 0x1ec]
0000000140348376 test     al, 0x20
0000000140348378 je       0x1403483a0
000000014034837a movzx    r9d, byte ptr [rbx + 0x15f1]
0000000140348382 lea      r8, [rip + 0x3891f7]
0000000140348389 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140348390 mov      eax, edx
0000000140348392 mov      edx, 0x9a
0000000140348397 mov      dword ptr [rsp + 0x20], eax
000000014034839b call     0x140001bec
00000001403483a0 mov      al, byte ptr [rdi + 0xe]
00000001403483a3 mov      byte ptr [rbx + 0x15f1], al
00000001403483a9 jmp      0x14034840b
00000001403483ab mov      r8d, dword ptr [r14 + 0x2140]
00000001403483b2 mov      r9d, edx
00000001403483b5 mov      edx, dword ptr [r14 + 0x213c]
00000001403483bc mov      rcx, rbx
00000001403483bf call     0x140316bec
00000001403483c4 mov      rcx, qword ptr [rip + 0x5d7c35]
00000001403483cb cmp      rcx, r13
00000001403483ce je       0x14034840b
00000001403483d0 cmp      byte ptr [rcx + 0x1e9], 4
00000001403483d7 jb       0x14034840b
00000001403483d9 mov      eax, dword ptr [rcx + 0x1ec]
00000001403483df test     al, 0x20
00000001403483e1 je       0x14034840b
00000001403483e3 movzx    eax, byte ptr [rdi + 0xe]
00000001403483e7 lea      r8, [rip + 0x389192]
00000001403483ee movzx    r9d, byte ptr [rbx + 0x173c]
00000001403483f6 mov      edx, 0x9b
00000001403483fb mov      rcx, qword ptr [rcx + 0x1d8]
0000000140348402 mov      dword ptr [rsp + 0x20], eax
0000000140348406 call     0x140001bec
000000014034840b mov      al, byte ptr [rdi + 0xe]
000000014034840e mov      byte ptr [rbx + 0x173c], al
0000000140348414 movzx    edx, byte ptr [rdi + 0xf]
0000000140348418 cmp      dl, byte ptr [rbx + 0x173d]
000000014034841e je       0x1403484ec
0000000140348424 cmp      byte ptr [rbx + 0x16b4], 0
000000014034842b je       0x140348483
000000014034842d cmp      dword ptr [rdi + 8], 2
0000000140348431 jg       0x140348483
0000000140348433 mov      rcx, qword ptr [rip + 0x5d7bc6]
000000014034843a cmp      rcx, r13
000000014034843d je       0x140348478
000000014034843f cmp      byte ptr [rcx + 0x1e9], 4
0000000140348446 jb       0x140348478
0000000140348448 mov      eax, dword ptr [rcx + 0x1ec]
000000014034844e test     al, 0x20
0000000140348450 je       0x140348478
0000000140348452 movzx    r9d, byte ptr [rbx + 0x15f2]
000000014034845a lea      r8, [rip + 0x38911f]
0000000140348461 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140348468 mov      eax, edx
000000014034846a mov      edx, 0x9c
000000014034846f mov      dword ptr [rsp + 0x20], eax
0000000140348473 call     0x140001bec
0000000140348478 mov      al, byte ptr [rdi + 0xf]
000000014034847b mov      byte ptr [rbx + 0x15f2], al
0000000140348481 jmp      0x1403484e3
0000000140348483 mov      r8d, dword ptr [r14 + 0x2148]
000000014034848a mov      r9d, edx
000000014034848d mov      edx, dword ptr [r14 + 0x2144]
0000000140348494 mov      rcx, rbx
0000000140348497 call     0x140316bec
000000014034849c mov      rcx, qword ptr [rip + 0x5d7b5d]
00000001403484a3 cmp      rcx, r13
00000001403484a6 je       0x1403484e3
00000001403484a8 cmp      byte ptr [rcx + 0x1e9], 4
00000001403484af jb       0x1403484e3
00000001403484b1 mov      eax, dword ptr [rcx + 0x1ec]
00000001403484b7 test     al, 0x20
00000001403484b9 je       0x1403484e3
00000001403484bb movzx    eax, byte ptr [rdi + 0xf]
00000001403484bf lea      r8, [rip + 0x3890ba]
00000001403484c6 movzx    r9d, byte ptr [rbx + 0x173d]
00000001403484ce mov      edx, 0x9d
00000001403484d3 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403484da mov      dword ptr [rsp + 0x20], eax
00000001403484de call     0x140001bec
00000001403484e3 mov      al, byte ptr [rdi + 0xf]
00000001403484e6 mov      byte ptr [rbx + 0x173d], al
00000001403484ec lea      r8, [rsp + 0x48]
00000001403484f1 mov      rdx, rdi
00000001403484f4 mov      rcx, rbx
00000001403484f7 call     0x1403488d4
00000001403484fc test     al, al
00000001403484fe je       0x140348528
0000000140348500 mov      eax, dword ptr [rdi + 8]
0000000140348503 lea      rcx, [rbx + 0x173e]
000000014034850a mov      r8d, 0xb
0000000140348510 mov      dword ptr [rbx + 0x16e8], eax
0000000140348516 lea      rdx, [rsp + 0x48]
000000014034851b call     0x1400311e8
0000000140348520 mov      rcx, rbx
0000000140348523 call     0x14034854c
0000000140348528 mov      al, 1
000000014034852a mov      rcx, qword ptr [rsp + 0x58]
000000014034852f xor      rcx, rsp
0000000140348532 call     0x1405f45b0
0000000140348537 mov      rbx, qword ptr [rsp + 0xa0]
000000014034853f add      rsp, 0x60
0000000140348543 pop      r14
0000000140348545 pop      r13
0000000140348547 pop      rdi
0000000140348548 pop      rsi
0000000140348549 pop      rbp
000000014034854a ret      