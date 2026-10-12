0000000140270220 mov      qword ptr [rsp + 8], rbx
0000000140270225 mov      qword ptr [rsp + 0x10], rbp
000000014027022a mov      qword ptr [rsp + 0x18], rsi
000000014027022f push     rdi
0000000140270230 push     r12
0000000140270232 push     r13
0000000140270234 push     r14
0000000140270236 push     r15
0000000140270238 sub      rsp, 0x90
000000014027023f mov      r12, rcx
0000000140270242 mov      rcx, qword ptr [rip + 0x6afdb7]
0000000140270249 lea      rsi, [rip + 0x6afdb0]
0000000140270250 cmp      rcx, rsi
0000000140270253 je       0x140270c1c
0000000140270259 cmp      byte ptr [rcx + 0x169], 4
0000000140270260 lea      rbp, [rip + 0x39e129]
0000000140270267 lea      r14, [rip + 0x428c72]
000000014027026e jb       0x14027029e
0000000140270270 mov      eax, dword ptr [rcx + 0x16c]
0000000140270276 test     al, 1
0000000140270278 je       0x14027029e
000000014027027a movzx    eax, word ptr [r12 + 0xd8]
0000000140270283 mov      edx, 0x8c
0000000140270288 mov      rcx, qword ptr [rcx + 0x158]
000000014027028f mov      r9, rbp
0000000140270292 mov      r8, r14
0000000140270295 mov      dword ptr [rsp + 0x20], eax
0000000140270299 call     0x1400088d8
000000014027029e mov      rcx, qword ptr [rip + 0x6afd5b]
00000001402702a5 cmp      rcx, rsi
00000001402702a8 je       0x140270c1c
00000001402702ae cmp      byte ptr [rcx + 0x169], 4
00000001402702b5 lea      r15, [rip + 0x3ab704]
00000001402702bc jb       0x140270307
00000001402702be mov      eax, dword ptr [rcx + 0x16c]
00000001402702c4 test     al, 1
00000001402702c6 je       0x140270307
00000001402702c8 mov      eax, dword ptr [r12 + 0xc]
00000001402702cd mov      edx, 0x8d
00000001402702d2 mov      rcx, qword ptr [rcx + 0x158]
00000001402702d9 mov      r9, rbp
00000001402702dc mov      dword ptr [rsp + 0x40], eax
00000001402702e0 mov      r8, r14
00000001402702e3 mov      eax, dword ptr [r12 + 8]
00000001402702e8 mov      dword ptr [rsp + 0x38], eax
00000001402702ec mov      eax, dword ptr [r12 + 4]
00000001402702f1 mov      dword ptr [rsp + 0x30], eax
00000001402702f5 mov      eax, dword ptr [r12]
00000001402702f9 mov      dword ptr [rsp + 0x28], eax
00000001402702fd mov      qword ptr [rsp + 0x20], r15
0000000140270302 call     0x14019ee74
0000000140270307 mov      rcx, qword ptr [rip + 0x6afcf2]
000000014027030e cmp      rcx, rsi
0000000140270311 je       0x140270c1c
0000000140270317 cmp      byte ptr [rcx + 0x169], 4
000000014027031e jb       0x140270373
0000000140270320 mov      eax, dword ptr [rcx + 0x16c]
0000000140270326 test     al, 1
0000000140270328 je       0x140270373
000000014027032a mov      eax, dword ptr [r12 + 0x20]
000000014027032f mov      edx, 0x8e
0000000140270334 mov      rcx, qword ptr [rcx + 0x158]
000000014027033b mov      r9, rbp
000000014027033e mov      dword ptr [rsp + 0x48], eax
0000000140270342 mov      r8, r14
0000000140270345 mov      eax, dword ptr [r12 + 0x1c]
000000014027034a mov      dword ptr [rsp + 0x40], eax
000000014027034e mov      eax, dword ptr [r12 + 0x18]
0000000140270353 mov      dword ptr [rsp + 0x38], eax
0000000140270357 mov      eax, dword ptr [r12 + 0x14]
000000014027035c mov      dword ptr [rsp + 0x30], eax
0000000140270360 mov      eax, dword ptr [r12 + 0x10]
0000000140270365 mov      dword ptr [rsp + 0x28], eax
0000000140270369 mov      qword ptr [rsp + 0x20], r15
000000014027036e call     0x1401ad98c
0000000140270373 mov      rcx, qword ptr [rip + 0x6afc86]
000000014027037a cmp      rcx, rsi
000000014027037d je       0x140270c1c
0000000140270383 cmp      byte ptr [rcx + 0x169], 4
000000014027038a jb       0x1402703d1
000000014027038c mov      eax, dword ptr [rcx + 0x16c]
0000000140270392 test     al, 1
0000000140270394 je       0x1402703d1
0000000140270396 movzx    eax, word ptr [r12 + 0xd8]
000000014027039f mov      edx, 0x8f
00000001402703a4 mov      rcx, qword ptr [rcx + 0x158]
00000001402703ab mov      r9, rbp
00000001402703ae mov      dword ptr [rsp + 0x38], eax
00000001402703b2 mov      r8, r14
00000001402703b5 mov      eax, dword ptr [r12 + 0x28]
00000001402703ba mov      dword ptr [rsp + 0x30], eax
00000001402703be mov      eax, dword ptr [r12 + 0x24]
00000001402703c3 mov      dword ptr [rsp + 0x28], eax
00000001402703c7 mov      qword ptr [rsp + 0x20], r15
00000001402703cc call     0x1400328d4
00000001402703d1 mov      r13, qword ptr [rip + 0x6afc28]
00000001402703d8 cmp      r13, rsi
00000001402703db je       0x140270c1c
00000001402703e1 cmp      byte ptr [r13 + 0x169], 4
00000001402703e9 jb       0x1402704db
00000001402703ef mov      eax, dword ptr [r13 + 0x16c]
00000001402703f6 test     al, 1
00000001402703f8 je       0x1402704db
00000001402703fe movzx    ecx, byte ptr [r12 + 0xe4]
0000000140270407 mov      edx, 0x90
000000014027040c movzx    r8d, byte ptr [r12 + 0xe3]
0000000140270415 movzx    r9d, byte ptr [r12 + 0xe2]
000000014027041e movzx    ebp, byte ptr [r12 + 0xdc]
0000000140270427 movzx    r14d, byte ptr [r12 + 0xdb]
0000000140270430 movzx    r15d, byte ptr [r12 + 0xda]
0000000140270439 movzx    eax, byte ptr [r12 + 0xe5]
0000000140270442 movzx    r10d, byte ptr [r12 + 0xe1]
000000014027044b movzx    r11d, byte ptr [r12 + 0xe0]
0000000140270454 movzx    ebx, byte ptr [r12 + 0xdf]
000000014027045d movzx    edi, byte ptr [r12 + 0xde]
0000000140270466 movzx    esi, byte ptr [r12 + 0xdd]
000000014027046f mov      dword ptr [rsp + 0x80], eax
0000000140270476 mov      dword ptr [rsp + 0x78], ecx
000000014027047a mov      rcx, qword ptr [r13 + 0x158]
0000000140270481 mov      dword ptr [rsp + 0x70], r8d
0000000140270486 mov      dword ptr [rsp + 0x68], r9d
000000014027048b mov      dword ptr [rsp + 0x60], r10d
0000000140270490 mov      dword ptr [rsp + 0x58], r11d
0000000140270495 mov      dword ptr [rsp + 0x50], ebx
0000000140270499 mov      dword ptr [rsp + 0x48], edi
000000014027049d mov      dword ptr [rsp + 0x40], esi
00000001402704a1 mov      dword ptr [rsp + 0x38], ebp
00000001402704a5 lea      rbp, [rip + 0x39dee4]
00000001402704ac mov      dword ptr [rsp + 0x30], r14d
00000001402704b1 mov      r9, rbp
00000001402704b4 mov      dword ptr [rsp + 0x28], r15d
00000001402704b9 lea      r14, [rip + 0x428a20]
00000001402704c0 lea      r15, [rip + 0x3ab4f9]
00000001402704c7 mov      r8, r14
00000001402704ca mov      qword ptr [rsp + 0x20], r15
00000001402704cf call     0x14016e0d4
00000001402704d4 lea      rsi, [rip + 0x6afb25]
00000001402704db mov      rcx, qword ptr [rip + 0x6afb1e]
00000001402704e2 cmp      rcx, rsi
00000001402704e5 je       0x140270c1c
00000001402704eb cmp      byte ptr [rcx + 0x169], 4
00000001402704f2 jb       0x14027056c
00000001402704f4 mov      eax, dword ptr [rcx + 0x16c]
00000001402704fa test     al, 1
00000001402704fc je       0x14027056c
00000001402704fe movzx    r8d, byte ptr [r12 + 0xea]
0000000140270507 mov      edx, 0x91
000000014027050c movzx    r9d, byte ptr [r12 + 0xe9]
0000000140270515 movzx    eax, byte ptr [r12 + 0xeb]
000000014027051e movzx    r10d, byte ptr [r12 + 0xe8]
0000000140270527 movzx    r11d, byte ptr [r12 + 0xe7]
0000000140270530 movzx    ebx, byte ptr [r12 + 0xe6]
0000000140270539 mov      rcx, qword ptr [rcx + 0x158]
0000000140270540 mov      dword ptr [rsp + 0x50], eax
0000000140270544 mov      dword ptr [rsp + 0x48], r8d
0000000140270549 mov      r8, r14
000000014027054c mov      dword ptr [rsp + 0x40], r9d
0000000140270551 mov      r9, rbp
0000000140270554 mov      dword ptr [rsp + 0x38], r10d
0000000140270559 mov      dword ptr [rsp + 0x30], r11d
000000014027055e mov      dword ptr [rsp + 0x28], ebx
0000000140270562 mov      qword ptr [rsp + 0x20], r15
0000000140270567 call     0x1401a5640
000000014027056c mov      r13, qword ptr [rip + 0x6afa8d]
0000000140270573 cmp      r13, rsi
0000000140270576 je       0x140270c1c
000000014027057c cmp      byte ptr [r13 + 0x169], 4
0000000140270584 jb       0x140270676
000000014027058a mov      eax, dword ptr [r13 + 0x16c]
0000000140270591 test     al, 1
0000000140270593 je       0x140270676
0000000140270599 movzx    ecx, byte ptr [r12 + 0xf6]
00000001402705a2 mov      edx, 0x92
00000001402705a7 movzx    r8d, byte ptr [r12 + 0xf5]
00000001402705b0 movzx    r9d, byte ptr [r12 + 0xf4]
00000001402705b9 movzx    ebp, byte ptr [r12 + 0xee]
00000001402705c2 movzx    r14d, byte ptr [r12 + 0xed]
00000001402705cb movzx    r15d, byte ptr [r12 + 0xec]
00000001402705d4 movzx    eax, byte ptr [r12 + 0xf7]
00000001402705dd movzx    r10d, byte ptr [r12 + 0xf3]
00000001402705e6 movzx    r11d, byte ptr [r12 + 0xf2]
00000001402705ef movzx    ebx, byte ptr [r12 + 0xf1]
00000001402705f8 movzx    edi, byte ptr [r12 + 0xf0]
0000000140270601 movzx    esi, byte ptr [r12 + 0xef]
000000014027060a mov      dword ptr [rsp + 0x80], eax
0000000140270611 mov      dword ptr [rsp + 0x78], ecx
0000000140270615 mov      rcx, qword ptr [r13 + 0x158]
000000014027061c mov      dword ptr [rsp + 0x70], r8d
0000000140270621 mov      dword ptr [rsp + 0x68], r9d
0000000140270626 mov      dword ptr [rsp + 0x60], r10d
000000014027062b mov      dword ptr [rsp + 0x58], r11d
0000000140270630 mov      dword ptr [rsp + 0x50], ebx
0000000140270634 mov      dword ptr [rsp + 0x48], edi
0000000140270638 mov      dword ptr [rsp + 0x40], esi
000000014027063c mov      dword ptr [rsp + 0x38], ebp
0000000140270640 lea      rbp, [rip + 0x39dd49]
0000000140270647 mov      dword ptr [rsp + 0x30], r14d
000000014027064c mov      r9, rbp
000000014027064f mov      dword ptr [rsp + 0x28], r15d
0000000140270654 lea      r14, [rip + 0x428885]
000000014027065b lea      r15, [rip + 0x3ab35e]
0000000140270662 mov      r8, r14
0000000140270665 mov      qword ptr [rsp + 0x20], r15
000000014027066a call     0x14016e0d4
000000014027066f lea      rsi, [rip + 0x6af98a]
0000000140270676 mov      rcx, qword ptr [rip + 0x6af983]
000000014027067d cmp      rcx, rsi
0000000140270680 je       0x140270c1c
0000000140270686 cmp      byte ptr [rcx + 0x169], 4
000000014027068d mov      edi, 1
0000000140270692 jb       0x14027070d
0000000140270694 mov      eax, dword ptr [rcx + 0x16c]
000000014027069a test     dil, al
000000014027069d je       0x14027070d
000000014027069f movzx    r8d, byte ptr [r12 + 0xfc]
00000001402706a8 mov      edx, 0x93
00000001402706ad movzx    r9d, byte ptr [r12 + 0xfb]
00000001402706b6 movzx    eax, byte ptr [r12 + 0xfd]
00000001402706bf movzx    r10d, byte ptr [r12 + 0xfa]
00000001402706c8 movzx    r11d, byte ptr [r12 + 0xf9]
00000001402706d1 movzx    ebx, byte ptr [r12 + 0xf8]
00000001402706da mov      rcx, qword ptr [rcx + 0x158]
00000001402706e1 mov      dword ptr [rsp + 0x50], eax
00000001402706e5 mov      dword ptr [rsp + 0x48], r8d
00000001402706ea mov      r8, r14
00000001402706ed mov      dword ptr [rsp + 0x40], r9d
00000001402706f2 mov      r9, rbp
00000001402706f5 mov      dword ptr [rsp + 0x38], r10d
00000001402706fa mov      dword ptr [rsp + 0x30], r11d
00000001402706ff mov      dword ptr [rsp + 0x28], ebx
0000000140270703 mov      qword ptr [rsp + 0x20], r15
0000000140270708 call     0x1401a5640
000000014027070d mov      rcx, qword ptr [rip + 0x6af8ec]
0000000140270714 cmp      rcx, rsi
0000000140270717 je       0x140270c1c
000000014027071d cmp      byte ptr [rcx + 0x169], 4
0000000140270724 jb       0x14027078a
0000000140270726 mov      eax, dword ptr [rcx + 0x16c]
000000014027072c test     dil, al
000000014027072f je       0x14027078a
0000000140270731 movzx    r9d, byte ptr [r12 + 0xff]
000000014027073a mov      edx, 0x94
000000014027073f movzx    r10d, byte ptr [r12 + 0xfe]
0000000140270748 mov      r8d, r9d
000000014027074b mov      rcx, qword ptr [rcx + 0x158]
0000000140270752 mov      eax, r10d
0000000140270755 shr      r8d, 2
0000000140270759 and      r9d, 3
000000014027075d and      r8d, edi
0000000140270760 shr      eax, 6
0000000140270763 mov      dword ptr [rsp + 0x40], r8d
0000000140270768 and      r10d, 0x3f
000000014027076c mov      dword ptr [rsp + 0x38], r9d
0000000140270771 mov      r8, r14
0000000140270774 mov      dword ptr [rsp + 0x30], eax
0000000140270778 mov      r9, rbp
000000014027077b mov      dword ptr [rsp + 0x28], r10d
0000000140270780 mov      qword ptr [rsp + 0x20], r15
0000000140270785 call     0x14019ee74
000000014027078a mov      rcx, qword ptr [rip + 0x6af86f]
0000000140270791 cmp      rcx, rsi
0000000140270794 je       0x140270c1c
000000014027079a cmp      byte ptr [rcx + 0x169], 4
00000001402707a1 jb       0x140270809
00000001402707a3 mov      eax, dword ptr [rcx + 0x16c]
00000001402707a9 test     dil, al
00000001402707ac je       0x140270809
00000001402707ae movzx    r10d, byte ptr [r12 + 0x100]
00000001402707b7 mov      edx, 0x95
00000001402707bc movzx    eax, byte ptr [r12 + 0xff]
00000001402707c5 mov      r9d, r10d
00000001402707c8 mov      rcx, qword ptr [rcx + 0x158]
00000001402707cf mov      r8d, r10d
00000001402707d2 shr      r9d, 2
00000001402707d6 and      r10d, edi
00000001402707d9 shr      r8d, 1
00000001402707dc and      r9d, 7
00000001402707e0 mov      dword ptr [rsp + 0x40], r9d
00000001402707e5 and      r8d, edi
00000001402707e8 mov      dword ptr [rsp + 0x38], r8d
00000001402707ed mov      r9, rbp
00000001402707f0 mov      dword ptr [rsp + 0x30], r10d
00000001402707f5 mov      r8, r14
00000001402707f8 shr      eax, 5
00000001402707fb mov      dword ptr [rsp + 0x28], eax
00000001402707ff mov      qword ptr [rsp + 0x20], r15
0000000140270804 call     0x14019ee74
0000000140270809 mov      rcx, qword ptr [rip + 0x6af7f0]
0000000140270810 cmp      rcx, rsi
0000000140270813 je       0x140270c1c
0000000140270819 cmp      byte ptr [rcx + 0x169], 4
0000000140270820 jb       0x140270888
0000000140270822 mov      eax, dword ptr [rcx + 0x16c]
0000000140270828 test     dil, al
000000014027082b je       0x140270888
000000014027082d movzx    r10d, byte ptr [r12 + 0x100]
0000000140270836 mov      edx, 0x96
000000014027083b movzx    r9d, byte ptr [r12 + 0x101]
0000000140270844 mov      r8d, r10d
0000000140270847 mov      rcx, qword ptr [rcx + 0x158]
000000014027084e mov      eax, r10d
0000000140270851 and      r9d, 7
0000000140270855 shr      r8d, 7
0000000140270859 mov      dword ptr [rsp + 0x40], r9d
000000014027085e mov      r9, rbp
0000000140270861 mov      dword ptr [rsp + 0x38], r8d
0000000140270866 mov      r8, r14
0000000140270869 shr      eax, 6
000000014027086c shr      r10d, 5
0000000140270870 and      eax, edi
0000000140270872 mov      dword ptr [rsp + 0x30], eax
0000000140270876 and      r10d, edi
0000000140270879 mov      dword ptr [rsp + 0x28], r10d
000000014027087e mov      qword ptr [rsp + 0x20], r15
0000000140270883 call     0x14019ee74
0000000140270888 mov      rcx, qword ptr [rip + 0x6af771]
000000014027088f cmp      rcx, rsi
0000000140270892 je       0x140270c1c
0000000140270898 cmp      byte ptr [rcx + 0x169], 4
000000014027089f jb       0x140270908
00000001402708a1 mov      eax, dword ptr [rcx + 0x16c]
00000001402708a7 test     dil, al
00000001402708aa je       0x140270908
00000001402708ac movzx    r9d, byte ptr [r12 + 0x102]
00000001402708b5 mov      edx, 0x97
00000001402708ba movzx    r10d, byte ptr [r12 + 0x101]
00000001402708c3 mov      r8d, r9d
00000001402708c6 mov      rcx, qword ptr [rcx + 0x158]
00000001402708cd mov      eax, r10d
00000001402708d0 shr      r8d, 1
00000001402708d3 and      r9d, edi
00000001402708d6 and      r8d, edi
00000001402708d9 shr      eax, 4
00000001402708dc mov      dword ptr [rsp + 0x40], r8d
00000001402708e1 and      eax, edi
00000001402708e3 mov      dword ptr [rsp + 0x38], r9d
00000001402708e8 mov      r8, r14
00000001402708eb mov      dword ptr [rsp + 0x30], eax
00000001402708ef mov      r9, rbp
00000001402708f2 shr      r10d, 3
00000001402708f6 and      r10d, edi
00000001402708f9 mov      dword ptr [rsp + 0x28], r10d
00000001402708fe mov      qword ptr [rsp + 0x20], r15
0000000140270903 call     0x14019ee74
0000000140270908 mov      rcx, qword ptr [rip + 0x6af6f1]
000000014027090f cmp      rcx, rsi
0000000140270912 je       0x140270c1c
0000000140270918 cmp      byte ptr [rcx + 0x169], 4
000000014027091f jb       0x140270986
0000000140270921 mov      eax, dword ptr [rcx + 0x16c]
0000000140270927 test     dil, al
000000014027092a je       0x140270986
000000014027092c movzx    r10d, byte ptr [r12 + 0x102]
0000000140270935 mov      edx, 0x98
000000014027093a mov      rcx, qword ptr [rcx + 0x158]
0000000140270941 mov      r8d, r10d
0000000140270944 mov      r9d, r10d
0000000140270947 shr      r8d, 5
000000014027094b mov      eax, r10d
000000014027094e shr      r9d, 7
0000000140270952 mov      dword ptr [rsp + 0x40], r9d
0000000140270957 and      r8d, 3
000000014027095b mov      dword ptr [rsp + 0x38], r8d
0000000140270960 mov      r9, rbp
0000000140270963 shr      eax, 4
0000000140270966 mov      r8, r14
0000000140270969 shr      r10d, 2
000000014027096d and      eax, edi
000000014027096f mov      dword ptr [rsp + 0x30], eax
0000000140270973 and      r10d, 3
0000000140270977 mov      dword ptr [rsp + 0x28], r10d
000000014027097c mov      qword ptr [rsp + 0x20], r15
0000000140270981 call     0x14019ee74
0000000140270986 mov      rcx, qword ptr [rip + 0x6af673]
000000014027098d cmp      rcx, rsi
0000000140270990 je       0x140270c1c
0000000140270996 cmp      byte ptr [rcx + 0x169], 4
000000014027099d jb       0x1402709ff
000000014027099f mov      eax, dword ptr [rcx + 0x16c]
00000001402709a5 test     dil, al
00000001402709a8 je       0x1402709ff
00000001402709aa movzx    r10d, byte ptr [r12 + 0x103]
00000001402709b3 mov      edx, 0x99
00000001402709b8 mov      rcx, qword ptr [rcx + 0x158]
00000001402709bf mov      r8d, r10d
00000001402709c2 mov      r9d, r10d
00000001402709c5 shr      r8d, 3
00000001402709c9 mov      eax, r10d
00000001402709cc shr      r9d, 5
00000001402709d0 mov      dword ptr [rsp + 0x40], r9d
00000001402709d5 and      r8d, 3
00000001402709d9 mov      dword ptr [rsp + 0x38], r8d
00000001402709de and      r10d, edi
00000001402709e1 shr      eax, 1
00000001402709e3 mov      r9, rbp
00000001402709e6 and      eax, 3
00000001402709e9 mov      r8, r14
00000001402709ec mov      dword ptr [rsp + 0x30], eax
00000001402709f0 mov      dword ptr [rsp + 0x28], r10d
00000001402709f5 mov      qword ptr [rsp + 0x20], r15
00000001402709fa call     0x14019ee74
00000001402709ff mov      rcx, qword ptr [rip + 0x6af5fa]
0000000140270a06 cmp      rcx, rsi
0000000140270a09 je       0x140270c1c
0000000140270a0f cmp      byte ptr [rcx + 0x169], 4
0000000140270a16 jb       0x140270a79
0000000140270a18 mov      eax, dword ptr [rcx + 0x16c]
0000000140270a1e test     dil, al
0000000140270a21 je       0x140270a79
0000000140270a23 movzx    r10d, byte ptr [r12 + 0x108]
0000000140270a2c mov      edx, 0x9a
0000000140270a31 movzx    r8d, word ptr [r12 + 0x104]
0000000140270a3a mov      r9d, r10d
0000000140270a3d movzx    eax, word ptr [r12 + 0x106]
0000000140270a46 and      r10d, edi
0000000140270a49 mov      rcx, qword ptr [rcx + 0x158]
0000000140270a50 shr      r9d, 1
0000000140270a53 and      r9d, edi
0000000140270a56 mov      dword ptr [rsp + 0x40], r9d
0000000140270a5b mov      r9, rbp
0000000140270a5e mov      dword ptr [rsp + 0x38], r10d
0000000140270a63 mov      dword ptr [rsp + 0x30], eax
0000000140270a67 mov      dword ptr [rsp + 0x28], r8d
0000000140270a6c mov      r8, r14
0000000140270a6f mov      qword ptr [rsp + 0x20], r15
0000000140270a74 call     0x14019ee74
0000000140270a79 mov      rcx, qword ptr [rip + 0x6af580]
0000000140270a80 cmp      rcx, rsi
0000000140270a83 je       0x140270c1c
0000000140270a89 cmp      byte ptr [rcx + 0x169], 4
0000000140270a90 jb       0x140270af8
0000000140270a92 mov      eax, dword ptr [rcx + 0x16c]
0000000140270a98 test     dil, al
0000000140270a9b je       0x140270af8
0000000140270a9d movzx    r10d, byte ptr [r12 + 0x108]
0000000140270aa6 mov      edx, 0x9b
0000000140270aab mov      rcx, qword ptr [rcx + 0x158]
0000000140270ab2 mov      r9d, r10d
0000000140270ab5 mov      r8d, r10d
0000000140270ab8 shr      r9d, 5
0000000140270abc mov      eax, r10d
0000000140270abf shr      r8d, 4
0000000140270ac3 and      r9d, edi
0000000140270ac6 shr      eax, 3
0000000140270ac9 mov      dword ptr [rsp + 0x40], r9d
0000000140270ace and      r8d, edi
0000000140270ad1 mov      dword ptr [rsp + 0x38], r8d
0000000140270ad6 and      eax, edi
0000000140270ad8 mov      dword ptr [rsp + 0x30], eax
0000000140270adc mov      r9, rbp
0000000140270adf shr      r10d, 2
0000000140270ae3 mov      r8, r14
0000000140270ae6 and      r10d, edi
0000000140270ae9 mov      dword ptr [rsp + 0x28], r10d
0000000140270aee mov      qword ptr [rsp + 0x20], r15
0000000140270af3 call     0x14019ee74
0000000140270af8 mov      rcx, qword ptr [rip + 0x6af501]
0000000140270aff cmp      rcx, rsi
0000000140270b02 je       0x140270c1c
0000000140270b08 cmp      byte ptr [rcx + 0x169], 4
0000000140270b0f jb       0x140270b6c
0000000140270b11 mov      eax, dword ptr [rcx + 0x16c]
0000000140270b17 test     dil, al
0000000140270b1a je       0x140270b6c
0000000140270b1c movzx    r9d, byte ptr [r12 + 0x109]
0000000140270b25 mov      edx, 0x9c
0000000140270b2a movzx    eax, byte ptr [r12 + 0x108]
0000000140270b33 mov      r8d, r9d
0000000140270b36 mov      rcx, qword ptr [rcx + 0x158]
0000000140270b3d and      r9d, 7
0000000140270b41 shr      r8d, 3
0000000140270b45 and      r8d, 7
0000000140270b49 shr      eax, 6
0000000140270b4c mov      dword ptr [rsp + 0x38], r8d
0000000140270b51 and      eax, edi
0000000140270b53 mov      dword ptr [rsp + 0x30], r9d
0000000140270b58 mov      r8, r14
0000000140270b5b mov      dword ptr [rsp + 0x28], eax
0000000140270b5f mov      r9, rbp
0000000140270b62 mov      qword ptr [rsp + 0x20], r15
0000000140270b67 call     0x1400328d4
0000000140270b6c mov      rcx, qword ptr [rip + 0x6af48d]
0000000140270b73 cmp      rcx, rsi
0000000140270b76 je       0x140270c1c
0000000140270b7c cmp      byte ptr [rcx + 0x169], 4
0000000140270b83 jb       0x140270bd8
0000000140270b85 mov      eax, dword ptr [rcx + 0x16c]
0000000140270b8b test     dil, al
0000000140270b8e je       0x140270bd8
0000000140270b90 movzx    r9d, byte ptr [r12 + 0x10a]
0000000140270b99 mov      edx, 0x9d
0000000140270b9e mov      rcx, qword ptr [rcx + 0x158]
0000000140270ba5 mov      r8d, r9d
0000000140270ba8 mov      eax, r9d
0000000140270bab shr      r8d, 2
0000000140270baf and      r8d, 0xf
0000000140270bb3 shr      eax, 1
0000000140270bb5 mov      dword ptr [rsp + 0x38], r8d
0000000140270bba and      r9d, edi
0000000140270bbd and      eax, edi
0000000140270bbf mov      r8, r14
0000000140270bc2 mov      dword ptr [rsp + 0x30], eax
0000000140270bc6 mov      dword ptr [rsp + 0x28], r9d
0000000140270bcb mov      r9, rbp
0000000140270bce mov      qword ptr [rsp + 0x20], r15
0000000140270bd3 call     0x1400328d4
0000000140270bd8 mov      rcx, qword ptr [rip + 0x6af421]
0000000140270bdf cmp      rcx, rsi
0000000140270be2 je       0x140270c1c
0000000140270be4 cmp      byte ptr [rcx + 0x169], 4
0000000140270beb jb       0x140270c1c
0000000140270bed mov      eax, dword ptr [rcx + 0x16c]
0000000140270bf3 test     dil, al
0000000140270bf6 je       0x140270c1c
0000000140270bf8 movzx    eax, word ptr [r12 + 0xd8]
0000000140270c01 mov      edx, 0x9e
0000000140270c06 mov      rcx, qword ptr [rcx + 0x158]
0000000140270c0d mov      r9, rbp
0000000140270c10 mov      r8, r14
0000000140270c13 mov      dword ptr [rsp + 0x20], eax
0000000140270c17 call     0x1400088d8
0000000140270c1c lea      r11, [rsp + 0x90]
0000000140270c24 mov      rbx, qword ptr [r11 + 0x30]
0000000140270c28 mov      rbp, qword ptr [r11 + 0x38]
0000000140270c2c mov      rsi, qword ptr [r11 + 0x40]
0000000140270c30 mov      rsp, r11
0000000140270c33 pop      r15
0000000140270c35 pop      r14
0000000140270c37 pop      r13
0000000140270c39 pop      r12
0000000140270c3b pop      rdi
0000000140270c3c ret      