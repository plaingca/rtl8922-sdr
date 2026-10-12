000000014035927c mov      rax, rsp
000000014035927f mov      qword ptr [rax + 0x20], r9
0000000140359283 mov      qword ptr [rax + 0x18], r8
0000000140359287 mov      qword ptr [rax + 0x10], rdx
000000014035928b mov      qword ptr [rax + 8], rcx
000000014035928f push     rbx
0000000140359290 push     rbp
0000000140359291 push     rsi
0000000140359292 push     rdi
0000000140359293 push     r12
0000000140359295 push     r13
0000000140359297 push     r14
0000000140359299 push     r15
000000014035929b sub      rsp, 0xa8
00000001403592a2 cmp      dword ptr [rcx + 0x14bc], 0
00000001403592a9 mov      rbx, r9
00000001403592ac mov      rdi, r8
00000001403592af mov      r12, rdx
00000001403592b2 mov      r13, rcx
00000001403592b5 jne      0x140359954
00000001403592bb test     byte ptr [r13 + 0x16bd], 0x2e
00000001403592c3 mov      ecx, dword ptr [rdx]
00000001403592c5 mov      edx, dword ptr [r9]
00000001403592c8 mov      dword ptr [rsp + 0x90], ecx
00000001403592cf jne      0x14035933c
00000001403592d1 cmp      ecx, edx
00000001403592d3 jae      0x1403592f5
00000001403592d5 sub      edx, ecx
00000001403592d7 add      rcx, r8
00000001403592da lea      r8, [rip + 0x2e0b4f]
00000001403592e1 call     0x140044426
00000001403592e6 add      dword ptr [r12], eax
00000001403592ea mov      ecx, dword ptr [r12]
00000001403592ee mov      dword ptr [rsp + 0x90], ecx
00000001403592f5 mov      eax, dword ptr [rbx]
00000001403592f7 cmp      ecx, eax
00000001403592f9 jae      0x140359330
00000001403592fb mov      r9d, dword ptr [r13 + 0x16c8]
0000000140359302 lea      r8, [rip + 0x2e0b67]
0000000140359309 sub      eax, ecx
000000014035930b add      rcx, rdi
000000014035930e mov      edx, eax
0000000140359310 mov      eax, dword ptr [r13 + 0x16f0]
0000000140359317 mov      dword ptr [rsp + 0x28], eax
000000014035931b mov      eax, dword ptr [r13 + 0x16d8]
0000000140359322 mov      dword ptr [rsp + 0x20], eax
0000000140359326 call     0x140044426
000000014035932b jmp      0x1403593de
0000000140359330 mov      ecx, dword ptr [rsp + 0x90]
0000000140359337 jmp      0x1403593ed
000000014035933c mov      r11d, ecx
000000014035933f cmp      ecx, edx
0000000140359341 jae      0x14035938a
0000000140359343 movzx    r8d, byte ptr [r13 + 0x189e]
000000014035934b sub      edx, ecx
000000014035934d movzx    eax, byte ptr [r13 + 0x1833]
0000000140359355 add      rcx, rdi
0000000140359358 movzx    r10d, byte ptr [r13 + 0x17f8]
0000000140359360 movzx    r9d, byte ptr [r13 + 0x1832]
0000000140359368 mov      dword ptr [rsp + 0x30], eax
000000014035936c mov      dword ptr [rsp + 0x28], r8d
0000000140359371 lea      r8, [rip + 0x2e0b28]
0000000140359378 mov      dword ptr [rsp + 0x20], r10d
000000014035937d call     0x140044426
0000000140359382 add      dword ptr [r12], eax
0000000140359386 mov      r11d, dword ptr [r12]
000000014035938a mov      edx, dword ptr [rbx]
000000014035938c mov      ecx, r11d
000000014035938f mov      dword ptr [rsp + 0x90], ecx
0000000140359396 cmp      r11d, edx
0000000140359399 jae      0x1403593ed
000000014035939b movzx    r8d, byte ptr [r13 + 0x1836]
00000001403593a3 sub      edx, r11d
00000001403593a6 movzx    eax, byte ptr [r13 + 0x1837]
00000001403593ae movzx    r10d, byte ptr [r13 + 0x1835]
00000001403593b6 movzx    r9d, byte ptr [r13 + 0x1834]
00000001403593be mov      dword ptr [rsp + 0x30], eax
00000001403593c2 mov      dword ptr [rsp + 0x28], r8d
00000001403593c7 lea      r8, [rip + 0x2df4d2]
00000001403593ce mov      ecx, r11d
00000001403593d1 add      rcx, rdi
00000001403593d4 mov      dword ptr [rsp + 0x20], r10d
00000001403593d9 call     0x140044426
00000001403593de add      dword ptr [r12], eax
00000001403593e2 mov      ecx, dword ptr [r12]
00000001403593e6 mov      dword ptr [rsp + 0x90], ecx
00000001403593ed test     byte ptr [r13 + 0x16bd], 1
00000001403593f5 jne      0x140359435
00000001403593f7 mov      r9d, dword ptr [r13 + 0x16d0]
00000001403593fe cmp      r9d, 3
0000000140359402 je       0x140359435
0000000140359404 mov      eax, dword ptr [rbx]
0000000140359406 cmp      ecx, eax
0000000140359408 jae      0x1403596cd
000000014035940e sub      eax, ecx
0000000140359410 lea      r8, [rip + 0x2e0ae9]
0000000140359417 mov      edx, eax
0000000140359419 add      rcx, rdi
000000014035941c call     0x140044426
0000000140359421 add      dword ptr [r12], eax
0000000140359425 mov      ecx, dword ptr [r12]
0000000140359429 mov      dword ptr [rsp + 0x90], ecx
0000000140359430 jmp      0x1403596cd
0000000140359435 mov      edx, dword ptr [rbx]
0000000140359437 mov      dword ptr [rsp + 0x90], ecx
000000014035943e cmp      ecx, edx
0000000140359440 jae      0x14035948b
0000000140359442 movzx    r8d, byte ptr [r13 + 0x182b]
000000014035944a sub      edx, ecx
000000014035944c movzx    eax, byte ptr [r13 + 0x182d]
0000000140359454 add      rcx, rdi
0000000140359457 movzx    r10d, byte ptr [r13 + 0x182c]
000000014035945f movzx    r9d, byte ptr [r13 + 0x182a]
0000000140359467 mov      dword ptr [rsp + 0x30], eax
000000014035946b mov      dword ptr [rsp + 0x28], r8d
0000000140359470 lea      r8, [rip + 0x2df4d9]
0000000140359477 mov      dword ptr [rsp + 0x20], r10d
000000014035947c call     0x140044426
0000000140359481 add      dword ptr [r12], eax
0000000140359485 mov      ecx, dword ptr [r12]
0000000140359489 jmp      0x14035948d
000000014035948b mov      ecx, ecx
000000014035948d mov      eax, dword ptr [rbx]
000000014035948f mov      edx, ecx
0000000140359491 mov      dword ptr [rsp + 0x94], eax
0000000140359498 mov      dword ptr [rsp + 0x90], ecx
000000014035949f cmp      ecx, eax
00000001403594a1 jae      0x140359588
00000001403594a7 movzx    r9d, byte ptr [r13 + 0x1720]
00000001403594af movzx    r8d, byte ptr [r13 + 0x1721]
00000001403594b7 movzx    r15d, byte ptr [r13 + 0x1718]
00000001403594bf movzx    r14d, byte ptr [r13 + 0x1719]
00000001403594c7 movzx    ebp, byte ptr [r13 + 0x171a]
00000001403594cf movzx    esi, byte ptr [r13 + 0x171b]
00000001403594d7 movzx    edi, byte ptr [r13 + 0x171c]
00000001403594df movzx    ebx, byte ptr [r13 + 0x171d]
00000001403594e7 movzx    r11d, byte ptr [r13 + 0x171e]
00000001403594ef movzx    r10d, byte ptr [r13 + 0x171f]
00000001403594f7 movzx    eax, byte ptr [r13 + 0x1722]
00000001403594ff mov      edx, dword ptr [rsp + 0x94]
0000000140359506 shr      r9d, 1
0000000140359509 sub      edx, ecx
000000014035950b add      rcx, qword ptr [rsp + 0x100]
0000000140359513 shr      r8d, 1
0000000140359516 shr      r11d, 1
0000000140359519 shr      r10d, 1
000000014035951c shr      eax, 1
000000014035951e shr      r15d, 1
0000000140359521 mov      dword ptr [rsp + 0x70], r15d
0000000140359526 shr      r14d, 1
0000000140359529 mov      dword ptr [rsp + 0x68], r14d
000000014035952e shr      ebp, 1
0000000140359530 mov      dword ptr [rsp + 0x60], ebp
0000000140359534 shr      esi, 1
0000000140359536 mov      dword ptr [rsp + 0x58], esi
000000014035953a shr      edi, 1
000000014035953c mov      dword ptr [rsp + 0x50], edi
0000000140359540 shr      ebx, 1
0000000140359542 mov      dword ptr [rsp + 0x48], ebx
0000000140359546 mov      dword ptr [rsp + 0x40], r11d
000000014035954b mov      dword ptr [rsp + 0x38], r10d
0000000140359550 mov      dword ptr [rsp + 0x30], r9d
0000000140359555 lea      r9, [rip + 0x2df1a4]
000000014035955c mov      dword ptr [rsp + 0x28], r8d
0000000140359561 lea      r8, [rip + 0x2df428]
0000000140359568 mov      dword ptr [rsp + 0x20], eax
000000014035956c call     0x140044426
0000000140359571 add      dword ptr [r12], eax
0000000140359575 mov      edx, dword ptr [r12]
0000000140359579 mov      rbx, qword ptr [rsp + 0x108]
0000000140359581 mov      dword ptr [rsp + 0x90], edx
0000000140359588 mov      eax, dword ptr [rbx]
000000014035958a mov      dword ptr [rsp + 0x94], eax
0000000140359591 cmp      edx, eax
0000000140359593 jae      0x1403596be
0000000140359599 mov      rcx, qword ptr [rsp + 0xf0]
00000001403595a1 movzx    r10d, byte ptr [r13 + 0x181e]
00000001403595a9 movzx    r11d, byte ptr [r13 + 0x181f]
00000001403595b1 movzx    ebx, byte ptr [r13 + 0x1820]
00000001403595b9 movzx    eax, byte ptr [rcx + 0x1828]
00000001403595c0 movzx    edi, byte ptr [r13 + 0x1821]
00000001403595c8 movzx    esi, byte ptr [r13 + 0x1822]
00000001403595d0 movzx    ebp, byte ptr [r13 + 0x1823]
00000001403595d8 movzx    r14d, byte ptr [r13 + 0x1824]
00000001403595e0 movzx    r15d, byte ptr [r13 + 0x1825]
00000001403595e8 movzx    r12d, byte ptr [r13 + 0x1826]
00000001403595f0 movzx    r9d, byte ptr [rcx + 0x1830]
00000001403595f8 movzx    r13d, byte ptr [r13 + 0x1827]
0000000140359600 mov      dword ptr [rsp + 0x80], r10d
0000000140359608 mov      dword ptr [rsp + 0x78], r11d
000000014035960d mov      dword ptr [rsp + 0x70], ebx
0000000140359611 mov      dword ptr [rsp + 0x68], edi
0000000140359615 mov      dword ptr [rsp + 0x98], eax
000000014035961c movzx    eax, byte ptr [rcx + 0x1829]
0000000140359623 mov      dword ptr [rsp + 0x60], esi
0000000140359627 mov      dword ptr [rsp + 0x9c], eax
000000014035962e movzx    eax, byte ptr [rcx + 0x1831]
0000000140359635 mov      ecx, dword ptr [rsp + 0x90]
000000014035963c and      eax, 1
000000014035963f add      rcx, qword ptr [rsp + 0x100]
0000000140359647 mov      dword ptr [rsp + 0x58], ebp
000000014035964b mov      dword ptr [rsp + 0x50], r14d
0000000140359650 lea      r8d, [rax + rax*4]
0000000140359654 mov      dword ptr [rsp + 0x48], r15d
0000000140359659 mov      eax, dword ptr [rsp + 0x94]
0000000140359660 sub      eax, edx
0000000140359662 mov      dword ptr [rsp + 0x40], r12d
0000000140359667 mov      edx, eax
0000000140359669 mov      eax, dword ptr [rsp + 0x98]
0000000140359670 mov      dword ptr [rsp + 0x38], r13d
0000000140359675 mov      dword ptr [rsp + 0x30], eax
0000000140359679 mov      eax, dword ptr [rsp + 0x9c]
0000000140359680 mov      dword ptr [rsp + 0x28], eax
0000000140359684 mov      dword ptr [rsp + 0x20], r8d
0000000140359689 lea      r8, [rip + 0x2df350]
0000000140359690 call     0x140044426
0000000140359695 mov      r12, qword ptr [rsp + 0xf8]
000000014035969d mov      r13, qword ptr [rsp + 0xf0]
00000001403596a5 mov      rbx, qword ptr [rsp + 0x108]
00000001403596ad add      dword ptr [r12], eax
00000001403596b1 mov      ecx, dword ptr [r12]
00000001403596b5 mov      dword ptr [rsp + 0x90], ecx
00000001403596bc jmp      0x1403596c5
00000001403596be mov      ecx, dword ptr [rsp + 0x90]
00000001403596c5 mov      rdi, qword ptr [rsp + 0x100]
00000001403596cd cmp      byte ptr [r13 + 0x16e1], 0
00000001403596d5 jne      0x14035970a
00000001403596d7 mov      r9d, dword ptr [r13 + 0x16e8]
00000001403596de cmp      r9d, 2
00000001403596e2 je       0x14035970a
00000001403596e4 mov      eax, dword ptr [rbx]
00000001403596e6 cmp      ecx, eax
00000001403596e8 jae      0x140359954
00000001403596ee sub      eax, ecx
00000001403596f0 lea      r8, [rip + 0x2e0849]
00000001403596f7 mov      edx, eax
00000001403596f9 add      rcx, rdi
00000001403596fc call     0x140044426
0000000140359701 add      dword ptr [r12], eax
0000000140359705 jmp      0x140359954
000000014035970a mov      r8d, dword ptr [rsp + 0x90]
0000000140359712 mov      ecx, dword ptr [rbx]
0000000140359714 cmp      r8d, ecx
0000000140359717 jae      0x140359752
0000000140359719 movzx    eax, byte ptr [r13 + 0x1897]
0000000140359721 sub      ecx, r8d
0000000140359724 movzx    r9d, byte ptr [r13 + 0x1896]
000000014035972c mov      edx, ecx
000000014035972e lea      rcx, [rdi + r8]
0000000140359732 lea      r8, [rip + 0x2e0847]
0000000140359739 mov      dword ptr [rsp + 0x20], eax
000000014035973d call     0x140044426
0000000140359742 add      dword ptr [r12], eax
0000000140359746 mov      r8d, dword ptr [r12]
000000014035974a mov      dword ptr [rsp + 0x90], r8d
0000000140359752 mov      edx, dword ptr [rbx]
0000000140359754 cmp      r8d, edx
0000000140359757 jae      0x14035984c
000000014035975d mov      rcx, qword ptr [rsp + 0xf0]
0000000140359765 lea      r9, [rip + 0x2def94]
000000014035976c movzx    r13d, byte ptr [r13 + 0x173e]
0000000140359774 sub      edx, r8d
0000000140359777 shr      r13d, 1
000000014035977a mov      dword ptr [rsp + 0x70], r13d
000000014035977f movzx    r12d, byte ptr [rcx + 0x173f]
0000000140359787 movzx    r15d, byte ptr [rcx + 0x1740]
000000014035978f movzx    r14d, byte ptr [rcx + 0x1741]
0000000140359797 movzx    ebp, byte ptr [rcx + 0x1742]
000000014035979e movzx    esi, byte ptr [rcx + 0x1743]
00000001403597a5 movzx    edi, byte ptr [rcx + 0x1744]
00000001403597ac movzx    ebx, byte ptr [rcx + 0x1745]
00000001403597b3 movzx    r11d, byte ptr [rcx + 0x1746]
00000001403597bb movzx    r10d, byte ptr [rcx + 0x1747]
00000001403597c3 movzx    eax, byte ptr [rcx + 0x1748]
00000001403597ca mov      ecx, r8d
00000001403597cd lea      r8, [rip + 0x2df1bc]
00000001403597d4 add      rcx, qword ptr [rsp + 0x100]
00000001403597dc shr      r11d, 1
00000001403597df shr      r10d, 1
00000001403597e2 shr      eax, 1
00000001403597e4 shr      r12d, 1
00000001403597e7 mov      dword ptr [rsp + 0x68], r12d
00000001403597ec shr      r15d, 1
00000001403597ef mov      dword ptr [rsp + 0x60], r15d
00000001403597f4 shr      r14d, 1
00000001403597f7 mov      dword ptr [rsp + 0x58], r14d
00000001403597fc shr      ebp, 1
00000001403597fe mov      dword ptr [rsp + 0x50], ebp
0000000140359802 shr      esi, 1
0000000140359804 mov      dword ptr [rsp + 0x48], esi
0000000140359808 shr      edi, 1
000000014035980a mov      dword ptr [rsp + 0x40], edi
000000014035980e shr      ebx, 1
0000000140359810 mov      dword ptr [rsp + 0x38], ebx
0000000140359814 mov      dword ptr [rsp + 0x30], r11d
0000000140359819 mov      dword ptr [rsp + 0x28], r10d
000000014035981e mov      dword ptr [rsp + 0x20], eax
0000000140359822 call     0x140044426
0000000140359827 mov      rcx, qword ptr [rsp + 0xf8]
000000014035982f mov      r13, qword ptr [rsp + 0xf0]
0000000140359837 mov      rbx, qword ptr [rsp + 0x108]
000000014035983f add      dword ptr [rcx], eax
0000000140359841 mov      r8d, dword ptr [rcx]
0000000140359844 mov      dword ptr [rsp + 0x90], r8d
000000014035984c mov      edx, dword ptr [rbx]
000000014035984e cmp      r8d, edx
0000000140359851 jae      0x140359954
0000000140359857 mov      rcx, qword ptr [rsp + 0xf0]
000000014035985f movzx    r10d, byte ptr [r13 + 0x1888]
0000000140359867 movzx    r11d, byte ptr [r13 + 0x1889]
000000014035986f movzx    ebx, byte ptr [r13 + 0x188a]
0000000140359877 movzx    eax, byte ptr [rcx + 0x1892]
000000014035987e movzx    edi, byte ptr [r13 + 0x188b]
0000000140359886 movzx    esi, byte ptr [r13 + 0x188c]
000000014035988e movzx    ebp, byte ptr [r13 + 0x188d]
0000000140359896 movzx    r14d, byte ptr [r13 + 0x188e]
000000014035989e movzx    r15d, byte ptr [r13 + 0x188f]
00000001403598a6 movzx    r12d, byte ptr [r13 + 0x1890]
00000001403598ae movzx    r9d, byte ptr [rcx + 0x189c]
00000001403598b6 movzx    r13d, byte ptr [r13 + 0x1891]
00000001403598be mov      dword ptr [rsp + 0x80], r10d
00000001403598c6 mov      dword ptr [rsp + 0x78], r11d
00000001403598cb mov      dword ptr [rsp + 0x70], ebx
00000001403598cf mov      dword ptr [rsp + 0x68], edi
00000001403598d3 mov      dword ptr [rsp + 0x60], esi
00000001403598d7 mov      dword ptr [rsp + 0x58], ebp
00000001403598db mov      dword ptr [rsp + 0xf0], eax
00000001403598e2 movzx    eax, byte ptr [rcx + 0x1893]
00000001403598e9 mov      dword ptr [rsp + 0x50], r14d
00000001403598ee mov      dword ptr [rsp + 0x9c], eax
00000001403598f5 movzx    eax, byte ptr [rcx + 0x189d]
00000001403598fc mov      ecx, dword ptr [rsp + 0x90]
0000000140359903 and      eax, 1
0000000140359906 mov      dword ptr [rsp + 0x48], r15d
000000014035990b sub      edx, ecx
000000014035990d add      rcx, qword ptr [rsp + 0x100]
0000000140359915 mov      dword ptr [rsp + 0x40], r12d
000000014035991a lea      r8d, [rax + rax*4]
000000014035991e mov      dword ptr [rsp + 0x38], r13d
0000000140359923 mov      eax, dword ptr [rsp + 0xf0]
000000014035992a mov      dword ptr [rsp + 0x30], eax
000000014035992e mov      eax, dword ptr [rsp + 0x9c]
0000000140359935 mov      dword ptr [rsp + 0x28], eax
0000000140359939 mov      dword ptr [rsp + 0x20], r8d
000000014035993e lea      r8, [rip + 0x2df13b]
0000000140359945 call     0x140044426
000000014035994a mov      rcx, qword ptr [rsp + 0xf8]
0000000140359952 add      dword ptr [rcx], eax
0000000140359954 add      rsp, 0xa8
000000014035995b pop      r15
000000014035995d pop      r14
000000014035995f pop      r13
0000000140359961 pop      r12
0000000140359963 pop      rdi
0000000140359964 pop      rsi
0000000140359965 pop      rbp
0000000140359966 pop      rbx
0000000140359967 ret      