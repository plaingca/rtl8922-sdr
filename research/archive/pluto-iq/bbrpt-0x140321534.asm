0000000140321534 mov      qword ptr [rsp + 0x10], rbx
0000000140321539 push     rbp
000000014032153a push     rsi
000000014032153b push     rdi
000000014032153c push     r12
000000014032153e push     r13
0000000140321540 push     r14
0000000140321542 push     r15
0000000140321544 mov      rbp, rsp
0000000140321547 sub      rsp, 0x70
000000014032154b mov      rax, qword ptr [rip + 0x605f0e]
0000000140321552 xor      rax, rsp
0000000140321555 mov      qword ptr [rbp - 8], rax
0000000140321559 xor      dil, dil
000000014032155c lea      rdx, [rbp - 0x2c]
0000000140321560 mov      r15, rcx
0000000140321563 mov      qword ptr [rbp - 0x28], rdx
0000000140321567 xor      cl, cl
0000000140321569 lea      r9, [rip + 0x5fea90]
0000000140321570 mov      byte ptr [rbp - 0x30], cl
0000000140321573 mov      r14, r8
0000000140321576 cmp      cl, 1
0000000140321579 lea      rax, [r14 + 0x20]
000000014032157d cmovne   rax, r14
0000000140321581 mov      r14, rax
0000000140321584 movzx    ebx, byte ptr [rax + 1]
0000000140321588 movzx    eax, byte ptr [rax]
000000014032158b shl      bx, 8
000000014032158f or       bx, ax
0000000140321592 mov      word ptr [rdx], bx
0000000140321595 mov      rcx, qword ptr [rip + 0x5fea64]
000000014032159c cmp      rcx, r9
000000014032159f je       0x1403215e1
00000001403215a1 cmp      byte ptr [rcx + 0x1e9], 4
00000001403215a8 jb       0x1403215e1
00000001403215aa mov      eax, dword ptr [rcx + 0x1ec]
00000001403215b0 test     al, 1
00000001403215b2 je       0x1403215e1
00000001403215b4 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403215bb lea      r9, [rip + 0x31278e]
00000001403215c2 movzx    eax, bx
00000001403215c5 lea      r8, [rip + 0x3aff64]
00000001403215cc mov      edx, 0x8f
00000001403215d1 mov      dword ptr [rsp + 0x20], eax
00000001403215d5 call     0x1400088d8
00000001403215da lea      r9, [rip + 0x5fea1f]
00000001403215e1 mov      eax, 0x80
00000001403215e6 cmp      bx, ax
00000001403215e9 jb       0x140321620
00000001403215eb mov      rcx, qword ptr [rip + 0x5fea0e]
00000001403215f2 cmp      rcx, r9
00000001403215f5 je       0x1403218ec
00000001403215fb cmp      byte ptr [rcx + 0x1e9], 4
0000000140321602 jb       0x1403218ec
0000000140321608 mov      eax, dword ptr [rcx + 0x1ec]
000000014032160e test     al, 1
0000000140321610 je       0x1403218ec
0000000140321616 mov      edx, 0x90
000000014032161b jmp      0x1403218cb
0000000140321620 movzx    edx, bx
0000000140321623 cmp      byte ptr [rdx + r15 + 0x910], 0
000000014032162c je       0x140321635
000000014032162e mov      rax, qword ptr [r15 + rdx*8 + 0x10]
0000000140321633 jmp      0x14032166d
0000000140321635 mov      rcx, qword ptr [r15 + 0x990]
000000014032163c test     rcx, rcx
000000014032163f je       0x140321657
0000000140321641 cmp      dword ptr [r15 + 0x998], 1
0000000140321649 je       0x140321657
000000014032164b mov      rax, qword ptr [r15]
000000014032164e cmp      byte ptr [rax + 0xe0b1], 0
0000000140321655 jne      0x14032165a
0000000140321657 mov      rcx, r15
000000014032165a cmp      byte ptr [rdx + rcx + 0x910], 0
0000000140321662 je       0x1403218a7
0000000140321668 mov      rax, qword ptr [rcx + rdx*8 + 0x10]
000000014032166d test     rax, rax
0000000140321670 jne      0x1403216a7
0000000140321672 mov      rcx, qword ptr [rip + 0x5fe987]
0000000140321679 cmp      rcx, r9
000000014032167c je       0x1403218ec
0000000140321682 cmp      byte ptr [rcx + 0x1e9], 4
0000000140321689 jb       0x1403218ec
000000014032168f mov      eax, dword ptr [rcx + 0x1ec]
0000000140321695 test     al, 1
0000000140321697 je       0x1403218ec
000000014032169d mov      edx, 0x92
00000001403216a2 jmp      0x1403218cb
00000001403216a7 mov      rdx, qword ptr [rax + 0xb70]
00000001403216ae mov      qword ptr [rbp - 0x20], rdx
00000001403216b2 test     rdx, rdx
00000001403216b5 jne      0x1403216ec
00000001403216b7 mov      rcx, qword ptr [rip + 0x5fe942]
00000001403216be cmp      rcx, r9
00000001403216c1 je       0x1403218ec
00000001403216c7 cmp      byte ptr [rcx + 0x1e9], 4
00000001403216ce jb       0x1403218ec
00000001403216d4 mov      eax, dword ptr [rcx + 0x1ec]
00000001403216da test     al, 1
00000001403216dc je       0x1403218ec
00000001403216e2 mov      edx, 0x93
00000001403216e7 jmp      0x1403218cb
00000001403216ec movzx    ecx, byte ptr [r14 + 5]
00000001403216f1 lea      rsi, [rdx + 0xfc]
00000001403216f8 movzx    eax, byte ptr [r14 + 4]
00000001403216fd xor      r13b, r13b
0000000140321700 shl      cx, 8
0000000140321704 or       cx, ax
0000000140321707 movzx    eax, byte ptr [r14 + 6]
000000014032170c mov      word ptr [rbp - 0x18], cx
0000000140321710 movzx    ecx, byte ptr [r14 + 7]
0000000140321715 shl      cx, 8
0000000140321719 or       cx, ax
000000014032171c movzx    eax, byte ptr [r14 + 8]
0000000140321721 mov      word ptr [rbp - 0x16], cx
0000000140321725 movzx    ecx, byte ptr [r14 + 9]
000000014032172a shl      cx, 8
000000014032172e or       cx, ax
0000000140321731 movzx    eax, byte ptr [r14 + 0xa]
0000000140321736 mov      word ptr [rbp - 0x14], cx
000000014032173a movzx    ecx, byte ptr [r14 + 0xb]
000000014032173f shl      cx, 8
0000000140321743 or       cx, ax
0000000140321746 movzx    eax, byte ptr [r14 + 0xc]
000000014032174b mov      word ptr [rbp - 0x12], cx
000000014032174f movzx    ecx, byte ptr [r14 + 0xd]
0000000140321754 shl      cx, 8
0000000140321758 or       cx, ax
000000014032175b movzx    eax, byte ptr [r14 + 0xe]
0000000140321760 mov      word ptr [rbp - 0x10], cx
0000000140321764 movzx    ecx, byte ptr [r14 + 0xf]
0000000140321769 shl      cx, 8
000000014032176d or       cx, ax
0000000140321770 movzx    eax, byte ptr [r14 + 0x10]
0000000140321775 mov      word ptr [rbp - 0xe], cx
0000000140321779 movzx    ecx, byte ptr [r14 + 0x11]
000000014032177e shl      cx, 8
0000000140321782 or       cx, ax
0000000140321785 movzx    eax, byte ptr [r14 + 0x12]
000000014032178a mov      word ptr [rbp - 0xc], cx
000000014032178e movzx    ecx, byte ptr [r14 + 0x13]
0000000140321793 shl      cx, 8
0000000140321797 or       cx, ax
000000014032179a mov      word ptr [rbp - 0xa], cx
000000014032179e xor      r12d, r12d
00000001403217a1 mov      ecx, dword ptr [rsi - 0x10]
00000001403217a4 mov      eax, ecx
00000001403217a6 movzx    r10d, word ptr [rbp + r12 - 0x18]
00000001403217ac not      eax
00000001403217ae cmp      eax, r10d
00000001403217b1 jbe      0x1403217ba
00000001403217b3 lea      eax, [rcx + r10]
00000001403217b7 mov      dword ptr [rsi - 0x10], eax
00000001403217ba mov      ecx, dword ptr [rsi]
00000001403217bc mov      eax, ecx
00000001403217be movzx    r8d, word ptr [rbp + r12 - 0x10]
00000001403217c4 not      eax
00000001403217c6 cmp      eax, r8d
00000001403217c9 jbe      0x1403217d1
00000001403217cb lea      eax, [rcx + r8]
00000001403217cf mov      dword ptr [rsi], eax
00000001403217d1 mov      rcx, qword ptr [rip + 0x5fe828]
00000001403217d8 cmp      rcx, r9
00000001403217db je       0x140321822
00000001403217dd cmp      byte ptr [rcx + 0x1e9], 4
00000001403217e4 jb       0x140321822
00000001403217e6 mov      eax, dword ptr [rcx + 0x1ec]
00000001403217ec test     al, 1
00000001403217ee je       0x140321822
00000001403217f0 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403217f7 mov      edx, 0x94
00000001403217fc mov      dword ptr [rsp + 0x30], r8d
0000000140321801 lea      r8, [rip + 0x3afd28]
0000000140321808 movzx    r9d, r13b
000000014032180c mov      dword ptr [rsp + 0x28], r9d
0000000140321811 mov      dword ptr [rsp + 0x20], r10d
0000000140321816 call     0x140008794
000000014032181b lea      r9, [rip + 0x5fe7de]
0000000140321822 inc      r13b
0000000140321825 add      rsi, 4
0000000140321829 add      r12, 2
000000014032182d cmp      r13b, 3
0000000140321831 jbe      0x1403217a1
0000000140321837 movzx    eax, byte ptr [r14 + 0x18]
000000014032183c mov      rcx, qword ptr [rbp - 0x20]
0000000140321840 movzx    r8d, byte ptr [r14 + 0x19]
0000000140321845 shl      r8d, 8
0000000140321849 or       r8d, eax
000000014032184c mov      edx, dword ptr [rcx + 0x10c]
0000000140321852 mov      eax, edx
0000000140321854 not      eax
0000000140321856 cmp      eax, r8d
0000000140321859 jbe      0x140321865
000000014032185b lea      eax, [rdx + r8]
000000014032185f mov      dword ptr [rcx + 0x10c], eax
0000000140321865 mov      rcx, qword ptr [rip + 0x5fe794]
000000014032186c cmp      rcx, r9
000000014032186f je       0x1403218ef
0000000140321871 cmp      byte ptr [rcx + 0x1e9], 4
0000000140321878 jb       0x1403218ef
000000014032187a mov      eax, dword ptr [rcx + 0x1ec]
0000000140321880 test     al, 1
0000000140321882 je       0x1403218ef
0000000140321884 mov      rcx, qword ptr [rcx + 0x1d8]
000000014032188b mov      edx, 0x95
0000000140321890 mov      dword ptr [rsp + 0x20], r8d
0000000140321895 lea      r8, [rip + 0x3afc94]
000000014032189c movzx    r9d, bx
00000001403218a0 call     0x140001bec
00000001403218a5 jmp      0x1403218ef
00000001403218a7 mov      rcx, qword ptr [rip + 0x5fe752]
00000001403218ae cmp      rcx, r9
00000001403218b1 je       0x1403218ec
00000001403218b3 cmp      byte ptr [rcx + 0x1e9], 4
00000001403218ba jb       0x1403218ec
00000001403218bc mov      eax, dword ptr [rcx + 0x1ec]
00000001403218c2 test     al, 1
00000001403218c4 je       0x1403218ec
00000001403218c6 mov      edx, 0x91
00000001403218cb mov      rcx, qword ptr [rcx + 0x1d8]
00000001403218d2 lea      r9, [rip + 0x312477]
00000001403218d9 movzx    eax, bx
00000001403218dc lea      r8, [rip + 0x3afc4d]
00000001403218e3 mov      dword ptr [rsp + 0x20], eax
00000001403218e7 call     0x1400088d8
00000001403218ec inc      dil
00000001403218ef mov      cl, byte ptr [rbp - 0x30]
00000001403218f2 lea      r9, [rip + 0x5fe707]
00000001403218f9 mov      rdx, qword ptr [rbp - 0x28]
00000001403218fd inc      cl
00000001403218ff add      rdx, 2
0000000140321903 mov      byte ptr [rbp - 0x30], cl
0000000140321906 mov      qword ptr [rbp - 0x28], rdx
000000014032190a cmp      cl, 1
000000014032190d jbe      0x140321576
0000000140321913 cmp      dil, 2
0000000140321917 jb       0x140321972
0000000140321919 mov      rcx, qword ptr [rip + 0x5fe6e0]
0000000140321920 lea      rax, [rip + 0x5fe6d9]
0000000140321927 cmp      rcx, rax
000000014032192a je       0x140321972
000000014032192c cmp      byte ptr [rcx + 0x169], 3
0000000140321933 jb       0x140321972
0000000140321935 test     dword ptr [rcx + 0x16c], 0x1000
000000014032193f je       0x140321972
0000000140321941 movzx    eax, word ptr [rbp - 0x2c]
0000000140321945 lea      r9, [rip + 0x312404]
000000014032194c movzx    r10d, word ptr [rbp - 0x2a]
0000000140321951 lea      r8, [rip + 0x3afbd8]
0000000140321958 mov      rcx, qword ptr [rcx + 0x158]
000000014032195f mov      edx, 0x96
0000000140321964 mov      dword ptr [rsp + 0x28], eax
0000000140321968 mov      dword ptr [rsp + 0x20], r10d
000000014032196d call     0x140002b04
0000000140321972 xor      eax, eax
0000000140321974 mov      rcx, qword ptr [rbp - 8]
0000000140321978 xor      rcx, rsp
000000014032197b call     0x1405f45b0
0000000140321980 mov      rbx, qword ptr [rsp + 0xb8]
0000000140321988 add      rsp, 0x70
000000014032198c pop      r15
000000014032198e pop      r14
0000000140321990 pop      r13
0000000140321992 pop      r12
0000000140321994 pop      rdi
0000000140321995 pop      rsi
0000000140321996 pop      rbp
0000000140321997 ret      