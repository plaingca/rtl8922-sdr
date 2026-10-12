0000000140422340 mov      qword ptr [rsp + 8], rbx
0000000140422345 mov      qword ptr [rsp + 0x10], rbp
000000014042234a push     rsi
000000014042234b push     rdi
000000014042234c push     r12
000000014042234e push     r14
0000000140422350 push     r15
0000000140422352 sub      rsp, 0x30
0000000140422356 mov      rax, qword ptr [rcx + 0x18]
000000014042235a mov      r14d, r8d
000000014042235d and      dword ptr [rsp + 0x70], 0
0000000140422362 mov      rbp, rdx
0000000140422365 mov      rbx, rcx
0000000140422368 mov      edi, 2
000000014042236d mov      rcx, qword ptr [rcx + 8]
0000000140422371 add      rdx, 0x20
0000000140422375 mov      rax, qword ptr [rax + 0x160]
000000014042237c xor      esi, esi
000000014042237e lea      r8d, [rdi + 0xe]
0000000140422382 call     qword ptr [rip + 0x261f70]
0000000140422388 mov      rcx, qword ptr [rbx + 8]
000000014042238c lea      rdx, [rbp + 0x30]
0000000140422390 mov      r12d, eax
0000000140422393 lea      r8d, [rdi + 0xe]
0000000140422397 mov      rax, qword ptr [rbx + 0x18]
000000014042239b mov      rax, qword ptr [rax + 0x160]
00000001404223a2 call     qword ptr [rip + 0x261f50]
00000001404223a8 mov      r15d, eax
00000001404223ab cmp      r14d, 4
00000001404223af jne      0x140422877
00000001404223b5 mov      rax, qword ptr [rbx + 0x18]
00000001404223b9 lea      r8, [rip + 0x2312f0]
00000001404223c0 mov      rcx, qword ptr [rbx + 8]
00000001404223c4 add      rbp, 0x10
00000001404223c8 mov      rdx, rbp
00000001404223cb mov      rax, qword ptr [rax + 0x138]
00000001404223d2 call     qword ptr [rip + 0x261f20]
00000001404223d8 test     eax, eax
00000001404223da jne      0x1404223e6
00000001404223dc mov      esi, 0x18006000
00000001404223e1 jmp      0x1404227f6
00000001404223e6 mov      rax, qword ptr [rbx + 0x18]
00000001404223ea lea      r8, [rip + 0x2312cf]
00000001404223f1 mov      rcx, qword ptr [rbx + 8]
00000001404223f5 mov      rdx, rbp
00000001404223f8 mov      rax, qword ptr [rax + 0x138]
00000001404223ff call     qword ptr [rip + 0x261ef3]
0000000140422405 test     eax, eax
0000000140422407 jne      0x140422416
0000000140422409 lea      edi, [rax + 3]
000000014042240c mov      esi, 0x18818000
0000000140422411 jmp      0x1404227f6
0000000140422416 mov      rax, qword ptr [rbx + 0x18]
000000014042241a lea      r8, [rip + 0x2312af]
0000000140422421 mov      rcx, qword ptr [rbx + 8]
0000000140422425 mov      rdx, rbp
0000000140422428 mov      rax, qword ptr [rax + 0x138]
000000014042242f call     qword ptr [rip + 0x261ec3]
0000000140422435 test     eax, eax
0000000140422437 jne      0x140422446
0000000140422439 lea      edi, [rax + 4]
000000014042243c mov      esi, 0x18823000
0000000140422441 jmp      0x1404227f6
0000000140422446 mov      rax, qword ptr [rbx + 0x18]
000000014042244a lea      r8, [rip + 0x23129f]
0000000140422451 mov      rcx, qword ptr [rbx + 8]
0000000140422455 mov      rdx, rbp
0000000140422458 mov      rax, qword ptr [rax + 0x138]
000000014042245f call     qword ptr [rip + 0x261e93]
0000000140422465 test     eax, eax
0000000140422467 jne      0x140422476
0000000140422469 lea      edi, [rax + 5]
000000014042246c mov      esi, 0x18824000
0000000140422471 jmp      0x1404227f6
0000000140422476 mov      rax, qword ptr [rbx + 0x18]
000000014042247a lea      r8, [rip + 0x23127f]
0000000140422481 mov      rcx, qword ptr [rbx + 8]
0000000140422485 mov      rdx, rbp
0000000140422488 mov      rax, qword ptr [rax + 0x138]
000000014042248f call     qword ptr [rip + 0x261e63]
0000000140422495 test     eax, eax
0000000140422497 jne      0x1404224a6
0000000140422499 lea      edi, [rax + 6]
000000014042249c mov      esi, 0x18828000
00000001404224a1 jmp      0x1404227f6
00000001404224a6 mov      rax, qword ptr [rbx + 0x18]
00000001404224aa lea      r8, [rip + 0x23125f]
00000001404224b1 mov      rcx, qword ptr [rbx + 8]
00000001404224b5 mov      rdx, rbp
00000001404224b8 mov      rax, qword ptr [rax + 0x138]
00000001404224bf call     qword ptr [rip + 0x261e33]
00000001404224c5 test     eax, eax
00000001404224c7 jne      0x1404224d6
00000001404224c9 lea      edi, [rax + 7]
00000001404224cc mov      esi, 0x18840000
00000001404224d1 jmp      0x1404227f6
00000001404224d6 mov      rax, qword ptr [rbx + 0x18]
00000001404224da lea      r8, [rip + 0x23123f]
00000001404224e1 mov      rcx, qword ptr [rbx + 8]
00000001404224e5 mov      rdx, rbp
00000001404224e8 mov      rax, qword ptr [rax + 0x138]
00000001404224ef call     qword ptr [rip + 0x261e03]
00000001404224f5 test     eax, eax
00000001404224f7 jne      0x140422506
00000001404224f9 lea      edi, [rax + 8]
00000001404224fc mov      esi, 0x18850000
0000000140422501 jmp      0x1404227f6
0000000140422506 mov      rax, qword ptr [rbx + 0x18]
000000014042250a lea      r8, [rip + 0x23121f]
0000000140422511 mov      rcx, qword ptr [rbx + 8]
0000000140422515 mov      rdx, rbp
0000000140422518 mov      rax, qword ptr [rax + 0x138]
000000014042251f call     qword ptr [rip + 0x261dd3]
0000000140422525 test     eax, eax
0000000140422527 jne      0x140422536
0000000140422529 lea      edi, [rax + 9]
000000014042252c mov      esi, 0x18858000
0000000140422531 jmp      0x1404227f6
0000000140422536 mov      rax, qword ptr [rbx + 0x18]
000000014042253a lea      r8, [rip + 0x2311ff]
0000000140422541 mov      rcx, qword ptr [rbx + 8]
0000000140422545 mov      rdx, rbp
0000000140422548 mov      rax, qword ptr [rax + 0x138]
000000014042254f call     qword ptr [rip + 0x261da3]
0000000140422555 test     eax, eax
0000000140422557 jne      0x140422566
0000000140422559 lea      edi, [rax + 0xa]
000000014042255c mov      esi, 0x18859000
0000000140422561 jmp      0x1404227f6
0000000140422566 mov      rax, qword ptr [rbx + 0x18]
000000014042256a lea      r8, [rip + 0x2311df]
0000000140422571 mov      rcx, qword ptr [rbx + 8]
0000000140422575 mov      rdx, rbp
0000000140422578 mov      rax, qword ptr [rax + 0x138]
000000014042257f call     qword ptr [rip + 0x261d73]
0000000140422585 test     eax, eax
0000000140422587 jne      0x140422596
0000000140422589 lea      edi, [rax + 0xb]
000000014042258c mov      esi, 0x18860000
0000000140422591 jmp      0x1404227f6
0000000140422596 mov      rax, qword ptr [rbx + 0x18]
000000014042259a lea      r8, [rip + 0x2311bf]
00000001404225a1 mov      rcx, qword ptr [rbx + 8]
00000001404225a5 mov      rdx, rbp
00000001404225a8 mov      rax, qword ptr [rax + 0x138]
00000001404225af call     qword ptr [rip + 0x261d43]
00000001404225b5 test     eax, eax
00000001404225b7 jne      0x1404225c6
00000001404225b9 lea      edi, [rax + 0xc]
00000001404225bc mov      esi, 0x18700000
00000001404225c1 jmp      0x1404227f6
00000001404225c6 mov      rax, qword ptr [rbx + 0x18]
00000001404225ca lea      r8, [rip + 0x23119f]
00000001404225d1 mov      rcx, qword ptr [rbx + 8]
00000001404225d5 mov      rdx, rbp
00000001404225d8 mov      rax, qword ptr [rax + 0x138]
00000001404225df call     qword ptr [rip + 0x261d13]
00000001404225e5 test     eax, eax
00000001404225e7 jne      0x1404225f6
00000001404225e9 lea      edi, [rax + 0xd]
00000001404225ec mov      esi, 0x18800000
00000001404225f1 jmp      0x1404227f6
00000001404225f6 mov      rax, qword ptr [rbx + 0x18]
00000001404225fa lea      r8, [rip + 0x23117f]
0000000140422601 mov      rcx, qword ptr [rbx + 8]
0000000140422605 mov      rdx, rbp
0000000140422608 mov      rax, qword ptr [rax + 0x138]
000000014042260f call     qword ptr [rip + 0x261ce3]
0000000140422615 test     eax, eax
0000000140422617 jne      0x140422626
0000000140422619 lea      edi, [rax + 0xe]
000000014042261c mov      esi, 0x18800800
0000000140422621 jmp      0x1404227f6
0000000140422626 mov      rax, qword ptr [rbx + 0x18]
000000014042262a lea      r8, [rip + 0x23116f]
0000000140422631 mov      rcx, qword ptr [rbx + 8]
0000000140422635 mov      rdx, rbp
0000000140422638 mov      rax, qword ptr [rax + 0x138]
000000014042263f call     qword ptr [rip + 0x261cb3]
0000000140422645 test     eax, eax
0000000140422647 jne      0x140422656
0000000140422649 lea      edi, [rax + 0xf]
000000014042264c mov      esi, 0x18880000
0000000140422651 jmp      0x1404227f6
0000000140422656 mov      rax, qword ptr [rbx + 0x18]
000000014042265a lea      r8, [rip + 0x23114f]
0000000140422661 mov      rcx, qword ptr [rbx + 8]
0000000140422665 mov      rdx, rbp
0000000140422668 mov      rax, qword ptr [rax + 0x138]
000000014042266f call     qword ptr [rip + 0x261c83]
0000000140422675 test     eax, eax
0000000140422677 jne      0x140422681
0000000140422679 lea      edi, [rax + 0x10]
000000014042267c jmp      0x1404227f6
0000000140422681 mov      rax, qword ptr [rbx + 0x18]
0000000140422685 lea      r8, [rip + 0x231134]
000000014042268c mov      rcx, qword ptr [rbx + 8]
0000000140422690 mov      rdx, rbp
0000000140422693 mov      rax, qword ptr [rax + 0x138]
000000014042269a call     qword ptr [rip + 0x261c58]
00000001404226a0 test     eax, eax
00000001404226a2 jne      0x1404226b1
00000001404226a4 lea      edi, [rax + 0x11]
00000001404226a7 mov      esi, 0x19c02000
00000001404226ac jmp      0x1404227f6
00000001404226b1 mov      rax, qword ptr [rbx + 0x18]
00000001404226b5 lea      r8, [rip + 0x231114]
00000001404226bc mov      rcx, qword ptr [rbx + 8]
00000001404226c0 mov      rdx, rbp
00000001404226c3 mov      rax, qword ptr [rax + 0x138]
00000001404226ca call     qword ptr [rip + 0x261c28]
00000001404226d0 test     eax, eax
00000001404226d2 jne      0x1404226e1
00000001404226d4 lea      edi, [rax + 0x12]
00000001404226d7 mov      esi, 0x18862000
00000001404226dc jmp      0x1404227f6
00000001404226e1 mov      rax, qword ptr [rbx + 0x18]
00000001404226e5 lea      r8, [rip + 0x2310f4]
00000001404226ec mov      rcx, qword ptr [rbx + 8]
00000001404226f0 mov      rdx, rbp
00000001404226f3 mov      rax, qword ptr [rax + 0x138]
00000001404226fa call     qword ptr [rip + 0x261bf8]
0000000140422700 test     eax, eax
0000000140422702 jne      0x140422711
0000000140422704 lea      edi, [rax + 0x13]
0000000140422707 mov      esi, 0x18881800
000000014042270c jmp      0x1404227f6
0000000140422711 mov      rax, qword ptr [rbx + 0x18]
0000000140422715 lea      r8, [rip + 0x2310d4]
000000014042271c mov      rcx, qword ptr [rbx + 8]
0000000140422720 mov      rdx, rbp
0000000140422723 mov      rax, qword ptr [rax + 0x138]
000000014042272a call     qword ptr [rip + 0x261bc8]
0000000140422730 test     eax, eax
0000000140422732 jne      0x140422741
0000000140422734 lea      edi, [rax + 0x14]
0000000140422737 mov      esi, 0x18861000
000000014042273c jmp      0x1404227f6
0000000140422741 mov      rax, qword ptr [rbx + 0x18]
0000000140422745 lea      r8, [rip + 0x2310c4]
000000014042274c mov      rcx, qword ptr [rbx + 8]
0000000140422750 mov      rdx, rbp
0000000140422753 mov      rax, qword ptr [rax + 0x138]
000000014042275a call     qword ptr [rip + 0x261b98]
0000000140422760 test     eax, eax
0000000140422762 jne      0x140422771
0000000140422764 lea      edi, [rax + 0x15]
0000000140422767 mov      esi, 0x18881000
000000014042276c jmp      0x1404227f6
0000000140422771 mov      rax, qword ptr [rbx + 0x18]
0000000140422775 lea      r8, [rip + 0x2310b4]
000000014042277c mov      rcx, qword ptr [rbx + 8]
0000000140422780 mov      rdx, rbp
0000000140422783 mov      rax, qword ptr [rax + 0x138]
000000014042278a call     qword ptr [rip + 0x261b68]
0000000140422790 test     eax, eax
0000000140422792 jne      0x14042279e
0000000140422794 lea      edi, [rax + 0x16]
0000000140422797 mov      esi, 0x18820000
000000014042279c jmp      0x1404227f6
000000014042279e mov      rax, qword ptr [rbx + 0x18]
00000001404227a2 lea      r8, [rip + 0x231097]
00000001404227a9 mov      rcx, qword ptr [rbx + 8]
00000001404227ad mov      rdx, rbp
00000001404227b0 mov      rax, qword ptr [rax + 0x138]
00000001404227b7 call     qword ptr [rip + 0x261b3b]
00000001404227bd test     eax, eax
00000001404227bf jne      0x1404227cb
00000001404227c1 lea      edi, [rax + 0x17]
00000001404227c4 mov      esi, 0x18829000
00000001404227c9 jmp      0x1404227f6
00000001404227cb mov      rax, qword ptr [rbx + 0x18]
00000001404227cf lea      r8, [rip + 0x23107a]
00000001404227d6 mov      rcx, qword ptr [rbx + 8]
00000001404227da mov      rdx, rbp
00000001404227dd mov      rax, qword ptr [rax + 0x138]
00000001404227e4 call     qword ptr [rip + 0x261b0e]
00000001404227ea test     eax, eax
00000001404227ec jne      0x1404227f6
00000001404227ee lea      edi, [rax + 0x18]
00000001404227f1 mov      esi, 0x1882a000
00000001404227f6 xor      r14d, r14d
00000001404227f9 test     r15d, r15d
00000001404227fc je       0x140422870
00000001404227fe lea      rbp, [rip + 0x4fd7fb]
0000000140422805 lea      edx, [r12 + r14]
0000000140422809 mov      r9d, edi
000000014042280c lea      r8, [rsp + 0x70]
0000000140422811 mov      rcx, rbx
0000000140422814 call     0x1403695ac
0000000140422819 test     eax, eax
000000014042281b jne      0x140422910
0000000140422821 mov      rcx, qword ptr [rip + 0x4fd7d8]
0000000140422828 cmp      rcx, rbp
000000014042282b je       0x140422867
000000014042282d cmp      byte ptr [rcx + 0x169], 1
0000000140422834 jb       0x140422867
0000000140422836 mov      eax, dword ptr [rcx + 0x16c]
000000014042283c test     al, 8
000000014042283e je       0x140422867
0000000140422840 mov      eax, dword ptr [rsp + 0x70]
0000000140422844 lea      r9d, [r12 + rsi]
0000000140422848 mov      rcx, qword ptr [rcx + 0x158]
000000014042284f lea      r8, [rip + 0x2b3d82]
0000000140422856 add      r9d, r14d
0000000140422859 mov      dword ptr [rsp + 0x20], eax
000000014042285d mov      edx, 0x86
0000000140422862 call     0x140001bec
0000000140422867 add      r14d, 4
000000014042286b cmp      r14d, r15d
000000014042286e jb       0x140422805
0000000140422870 xor      eax, eax
0000000140422872 jmp      0x140422910
0000000140422877 cmp      r14d, edi
000000014042287a jne      0x1404228cd
000000014042287c mov      rax, qword ptr [rbx + 0x18]
0000000140422880 lea      rdx, [rbp + 0x10]
0000000140422884 mov      rcx, qword ptr [rbx + 8]
0000000140422888 lea      r8, [rip + 0x1d5c71]
000000014042288f mov      rax, qword ptr [rax + 0x138]
0000000140422896 call     qword ptr [rip + 0x261a5c]
000000014042289c test     eax, eax
000000014042289e jne      0x140422870
00000001404228a0 mov      rcx, qword ptr [rip + 0x4fd759]
00000001404228a7 lea      rbp, [rip + 0x4fd752]
00000001404228ae cmp      rcx, rbp
00000001404228b1 je       0x14042290b
00000001404228b3 cmp      byte ptr [rcx + 0x169], 1
00000001404228ba jb       0x14042290b
00000001404228bc mov      eax, dword ptr [rcx + 0x16c]
00000001404228c2 test     al, 8
00000001404228c4 je       0x14042290b
00000001404228c6 mov      edx, 0x87
00000001404228cb jmp      0x1404228f8
00000001404228cd mov      rcx, qword ptr [rip + 0x4fd72c]
00000001404228d4 lea      rbp, [rip + 0x4fd725]
00000001404228db cmp      rcx, rbp
00000001404228de je       0x14042290b
00000001404228e0 cmp      byte ptr [rcx + 0x169], dil
00000001404228e7 jb       0x14042290b
00000001404228e9 mov      eax, dword ptr [rcx + 0x16c]
00000001404228ef test     al, 8
00000001404228f1 je       0x14042290b
00000001404228f3 mov      edx, 0x88
00000001404228f8 mov      rcx, qword ptr [rcx + 0x158]
00000001404228ff lea      r8, [rip + 0x2b3cd2]
0000000140422906 call     0x140001b88
000000014042290b mov      eax, 0xb
0000000140422910 mov      rbx, qword ptr [rsp + 0x60]
0000000140422915 mov      rbp, qword ptr [rsp + 0x68]
000000014042291a add      rsp, 0x30
000000014042291e pop      r15
0000000140422920 pop      r14
0000000140422922 pop      r12
0000000140422924 pop      rdi
0000000140422925 pop      rsi
0000000140422926 ret      