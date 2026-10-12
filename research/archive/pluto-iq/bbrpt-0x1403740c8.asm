00000001403740c8 mov      qword ptr [rsp + 8], rbx
00000001403740cd mov      qword ptr [rsp + 0x10], rbp
00000001403740d2 mov      qword ptr [rsp + 0x18], rsi
00000001403740d7 push     rdi
00000001403740d8 push     r12
00000001403740da push     r13
00000001403740dc push     r14
00000001403740de push     r15
00000001403740e0 sub      rsp, 0x60
00000001403740e4 mov      rsi, rcx
00000001403740e7 mov      rcx, qword ptr [rip + 0x5abf12]
00000001403740ee lea      r12, [rip + 0x5abf0b]
00000001403740f5 xor      ebp, ebp
00000001403740f7 lea      r13, [rip + 0x35e312]
00000001403740fe mov      r14b, 4
0000000140374101 cmp      rcx, r12
0000000140374104 je       0x140374146
0000000140374106 cmp      byte ptr [rcx + 0x169], r14b
000000014037410d jb       0x140374146
000000014037410f bt       dword ptr [rcx + 0x16c], 0xd
0000000140374117 jae      0x140374146
0000000140374119 cmp      byte ptr [rsi + 0x12d7c], bpl
0000000140374120 lea      rdx, [rip + 0x2cb409]
0000000140374127 mov      rcx, qword ptr [rcx + 0x158]
000000014037412e lea      r9, [rip + 0x292c1b]
0000000140374135 cmovne   r9, rdx
0000000140374139 mov      r8, r13
000000014037413c mov      edx, 0x8f
0000000140374141 call     0x140008874
0000000140374146 cmp      byte ptr [rsi + 0x12d7c], 1
000000014037414d jne      0x1403741a9
000000014037414f mov      rcx, qword ptr [rip + 0x5abeaa]
0000000140374156 cmp      rcx, r12
0000000140374159 je       0x1403741a9
000000014037415b cmp      byte ptr [rcx + 0x169], r14b
0000000140374162 jb       0x1403741a9
0000000140374164 bt       dword ptr [rcx + 0x16c], 0xd
000000014037416c jae      0x1403741a9
000000014037416e movzx    r8d, byte ptr [rsi + 0x12d7d]
0000000140374176 lea      r9, [rip + 0x2cb3c3]
000000014037417d movzx    eax, byte ptr [rsi + 0x12d7e]
0000000140374184 mov      edx, 0x90
0000000140374189 mov      rcx, qword ptr [rcx + 0x158]
0000000140374190 mov      dword ptr [rsp + 0x30], 3
0000000140374198 mov      dword ptr [rsp + 0x28], eax
000000014037419c mov      dword ptr [rsp + 0x20], r8d
00000001403741a1 mov      r8, r13
00000001403741a4 call     0x14001c670
00000001403741a9 mov      r8d, dword ptr [rsi + 0x12d54]
00000001403741b0 test     r8d, r8d
00000001403741b3 jne      0x140374200
00000001403741b5 mov      rcx, qword ptr [rip + 0x5abe44]
00000001403741bc cmp      rcx, r12
00000001403741bf je       0x140375494
00000001403741c5 cmp      byte ptr [rcx + 0x169], r14b
00000001403741cc jb       0x140375494
00000001403741d2 bt       dword ptr [rcx + 0x16c], 0xd
00000001403741da jae      0x140375494
00000001403741e0 mov      rcx, qword ptr [rcx + 0x158]
00000001403741e7 lea      r9, [rip + 0x2cb382]
00000001403741ee mov      edx, 0x91
00000001403741f3 mov      r8, r13
00000001403741f6 call     0x140008874
00000001403741fb jmp      0x140375494
0000000140374200 mov      rcx, qword ptr [rip + 0x5abdf9]
0000000140374207 cmp      rcx, r12
000000014037420a je       0x140374283
000000014037420c cmp      byte ptr [rcx + 0x169], r14b
0000000140374213 jb       0x14037423f
0000000140374215 bt       dword ptr [rcx + 0x16c], 0xd
000000014037421d jae      0x14037423f
000000014037421f mov      rcx, qword ptr [rcx + 0x158]
0000000140374226 lea      r9, [rip + 0x2cb363]
000000014037422d mov      dword ptr [rsp + 0x20], r8d
0000000140374232 mov      edx, 0x92
0000000140374237 mov      r8, r13
000000014037423a call     0x1400088d8
000000014037423f mov      rcx, qword ptr [rip + 0x5abdba]
0000000140374246 cmp      rcx, r12
0000000140374249 je       0x140374283
000000014037424b cmp      byte ptr [rcx + 0x169], r14b
0000000140374252 jb       0x140374283
0000000140374254 bt       dword ptr [rcx + 0x16c], 0xd
000000014037425c jae      0x140374283
000000014037425e mov      eax, dword ptr [rsi + 0x12d58]
0000000140374264 lea      r9, [rip + 0x2cb335]
000000014037426b mov      rcx, qword ptr [rcx + 0x158]
0000000140374272 mov      edx, 0x93
0000000140374277 mov      r8, r13
000000014037427a mov      dword ptr [rsp + 0x20], eax
000000014037427e call     0x1400088d8
0000000140374283 cmp      dword ptr [rsi + 0x510], 0x64
000000014037428a jbe      0x140374413
0000000140374290 cmp      byte ptr [rsi + 0x12d7c], 1
0000000140374297 jne      0x14037433d
000000014037429d mov      rcx, qword ptr [rip + 0x5abd5c]
00000001403742a4 cmp      rcx, r12
00000001403742a7 je       0x140374497
00000001403742ad cmp      byte ptr [rcx + 0x169], r14b
00000001403742b4 jb       0x140374497
00000001403742ba bt       dword ptr [rcx + 0x16c], 0xd
00000001403742c2 jae      0x140374497
00000001403742c8 movzx    r8d, byte ptr [rsi + 0x12dec]
00000001403742d0 mov      edx, 0x94
00000001403742d5 movzx    r9d, byte ptr [rsi + 0x12deb]
00000001403742dd movzx    eax, byte ptr [rsi + 0x12ded]
00000001403742e4 movzx    r10d, byte ptr [rsi + 0x12dea]
00000001403742ec movzx    r11d, byte ptr [rsi + 0x12de9]
00000001403742f4 movzx    ebx, byte ptr [rsi + 0x12de8]
00000001403742fb movzx    edi, byte ptr [rsi + 0x12de7]
0000000140374302 mov      rcx, qword ptr [rcx + 0x158]
0000000140374309 mov      dword ptr [rsp + 0x50], eax
000000014037430d mov      dword ptr [rsp + 0x48], r8d
0000000140374312 mov      r8, r13
0000000140374315 mov      dword ptr [rsp + 0x40], r9d
000000014037431a lea      r9, [rip + 0x2cb29f]
0000000140374321 mov      dword ptr [rsp + 0x38], r10d
0000000140374326 mov      dword ptr [rsp + 0x30], r11d
000000014037432b mov      dword ptr [rsp + 0x28], ebx
000000014037432f mov      dword ptr [rsp + 0x20], edi
0000000140374333 call     0x140032cc0
0000000140374338 jmp      0x140374497
000000014037433d mov      rcx, qword ptr [rip + 0x5abcbc]
0000000140374344 cmp      rcx, r12
0000000140374347 je       0x140374497
000000014037434d cmp      byte ptr [rcx + 0x169], r14b
0000000140374354 jb       0x1403743ad
0000000140374356 bt       dword ptr [rcx + 0x16c], 0xd
000000014037435e jae      0x1403743ad
0000000140374360 movzx    r8d, byte ptr [rsi + 0x12d70]
0000000140374368 mov      edx, 0x95
000000014037436d movzx    r9d, byte ptr [rsi + 0x12d6c]
0000000140374375 movzx    eax, byte ptr [rsi + 0x12d71]
000000014037437c movzx    r10d, byte ptr [rsi + 0x12d6b]
0000000140374384 mov      rcx, qword ptr [rcx + 0x158]
000000014037438b mov      dword ptr [rsp + 0x38], eax
000000014037438f mov      dword ptr [rsp + 0x30], r8d
0000000140374394 mov      r8, r13
0000000140374397 mov      dword ptr [rsp + 0x28], r9d
000000014037439c lea      r9, [rip + 0x2cb25d]
00000001403743a3 mov      dword ptr [rsp + 0x20], r10d
00000001403743a8 call     0x14001c710
00000001403743ad mov      rcx, qword ptr [rip + 0x5abc4c]
00000001403743b4 cmp      rcx, r12
00000001403743b7 je       0x140374497
00000001403743bd cmp      byte ptr [rcx + 0x169], r14b
00000001403743c4 jb       0x140374497
00000001403743ca bt       dword ptr [rcx + 0x16c], 0xd
00000001403743d2 jae      0x140374497
00000001403743d8 movzx    r9d, byte ptr [rsi + 0x12d62]
00000001403743e0 mov      edx, 0x96
00000001403743e5 movzx    eax, byte ptr [rsi + 0x12d67]
00000001403743ec movzx    r8d, byte ptr [rsi + 0x12d66]
00000001403743f4 movzx    r10d, byte ptr [rsi + 0x12d61]
00000001403743fc mov      dword ptr [rsp + 0x48], eax
0000000140374400 mov      dword ptr [rsp + 0x40], r8d
0000000140374405 mov      dword ptr [rsp + 0x38], r9d
000000014037440a lea      r9, [rip + 0x2cb21f]
0000000140374411 jmp      0x14037446b
0000000140374413 mov      rcx, qword ptr [rip + 0x5abbe6]
000000014037441a cmp      rcx, r12
000000014037441d je       0x140374497
000000014037441f cmp      byte ptr [rcx + 0x169], r14b
0000000140374426 jb       0x140374497
0000000140374428 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374430 jae      0x140374497
0000000140374432 movzx    r9d, byte ptr [rsi + 0x12d6c]
000000014037443a mov      edx, 0x97
000000014037443f movzx    eax, byte ptr [rsi + 0x12d71]
0000000140374446 movzx    r8d, byte ptr [rsi + 0x12d70]
000000014037444e movzx    r10d, byte ptr [rsi + 0x12d6b]
0000000140374456 mov      dword ptr [rsp + 0x48], eax
000000014037445a mov      dword ptr [rsp + 0x40], r8d
000000014037445f mov      dword ptr [rsp + 0x38], r9d
0000000140374464 lea      r9, [rip + 0x2cb215]
000000014037446b movzx    r11d, byte ptr [rsi + 0x12d5d]
0000000140374473 mov      r8, r13
0000000140374476 movzx    ebx, byte ptr [rsi + 0x12d5c]
000000014037447d mov      rcx, qword ptr [rcx + 0x158]
0000000140374484 mov      dword ptr [rsp + 0x30], r10d
0000000140374489 mov      dword ptr [rsp + 0x28], r11d
000000014037448e mov      dword ptr [rsp + 0x20], ebx
0000000140374492 call     0x140032bdc
0000000140374497 cmp      byte ptr [rsi + 0x12d7c], bpl
000000014037449e je       0x1403744a8
00000001403744a0 mov      dl, byte ptr [rsi + 0x12dee]
00000001403744a6 jmp      0x1403744ae
00000001403744a8 mov      dl, byte ptr [rsi + 0x12d7b]
00000001403744ae mov      rcx, qword ptr [rip + 0x5abb4b]
00000001403744b5 cmp      rcx, r12
00000001403744b8 je       0x140374534
00000001403744ba cmp      byte ptr [rcx + 0x169], r14b
00000001403744c1 jb       0x140374501
00000001403744c3 bt       dword ptr [rcx + 0x16c], 0xd
00000001403744cb jae      0x140374501
00000001403744cd mov      rcx, qword ptr [rcx + 0x158]
00000001403744d4 lea      r8, [rip + 0x28ad05]
00000001403744db test     dl, dl
00000001403744dd lea      rax, [rip + 0x28ad0c]
00000001403744e4 mov      edx, 0x98
00000001403744e9 lea      r9, [rip + 0x2cb1d0]
00000001403744f0 cmovne   rax, r8
00000001403744f4 mov      r8, r13
00000001403744f7 mov      qword ptr [rsp + 0x20], rax
00000001403744fc call     0x14003c968
0000000140374501 mov      rcx, qword ptr [rip + 0x5abaf8]
0000000140374508 cmp      rcx, r12
000000014037450b je       0x140374534
000000014037450d cmp      byte ptr [rcx + 0x169], r14b
0000000140374514 jb       0x140374534
0000000140374516 bt       dword ptr [rcx + 0x16c], 0xd
000000014037451e jae      0x140374534
0000000140374520 mov      rcx, qword ptr [rcx + 0x158]
0000000140374527 mov      edx, 0x99
000000014037452c mov      r8, r13
000000014037452f call     0x140001b88
0000000140374534 cmp      byte ptr [rsi + 0x12d7c], bpl
000000014037453b je       0x140374545
000000014037453d mov      dl, byte ptr [rsi + 0x12df1]
0000000140374543 jmp      0x14037454b
0000000140374545 mov      dl, byte ptr [rsi + 0x12c2f]
000000014037454b mov      rcx, qword ptr [rip + 0x5abaae]
0000000140374552 cmp      rcx, r12
0000000140374555 je       0x14037458c
0000000140374557 cmp      byte ptr [rcx + 0x169], r14b
000000014037455e jb       0x14037458c
0000000140374560 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374568 jae      0x14037458c
000000014037456a mov      rcx, qword ptr [rcx + 0x158]
0000000140374571 lea      r9, [rip + 0x2cb158]
0000000140374578 movzx    eax, dl
000000014037457b mov      r8, r13
000000014037457e mov      edx, 0x9a
0000000140374583 mov      dword ptr [rsp + 0x20], eax
0000000140374587 call     0x1400088d8
000000014037458c cmp      dword ptr [rsi + 0x510], 0x64
0000000140374593 jbe      0x140374660
0000000140374599 mov      rcx, qword ptr [rip + 0x5aba60]
00000001403745a0 cmp      rcx, r12
00000001403745a3 je       0x1403745cc
00000001403745a5 cmp      byte ptr [rcx + 0x169], r14b
00000001403745ac jb       0x1403745cc
00000001403745ae bt       dword ptr [rcx + 0x16c], 0xd
00000001403745b6 jae      0x1403745cc
00000001403745b8 mov      rcx, qword ptr [rcx + 0x158]
00000001403745bf mov      edx, 0x9b
00000001403745c4 mov      r8, r13
00000001403745c7 call     0x140001b88
00000001403745cc cmp      byte ptr [rsi + 0x12d7c], 1
00000001403745d3 jne      0x14037460e
00000001403745d5 mov      rcx, qword ptr [rip + 0x5aba24]
00000001403745dc cmp      rcx, r12
00000001403745df je       0x140374693
00000001403745e5 cmp      byte ptr [rcx + 0x169], r14b
00000001403745ec jb       0x140374660
00000001403745ee bt       dword ptr [rcx + 0x16c], 0xd
00000001403745f6 jae      0x140374660
00000001403745f8 movzx    eax, byte ptr [rsi + 0x12df0]
00000001403745ff mov      edx, 0x9c
0000000140374604 movzx    r8d, byte ptr [rsi + 0x12def]
000000014037460c jmp      0x140374641
000000014037460e mov      rcx, qword ptr [rip + 0x5ab9eb]
0000000140374615 cmp      rcx, r12
0000000140374618 je       0x140374693
000000014037461a cmp      byte ptr [rcx + 0x169], r14b
0000000140374621 jb       0x140374660
0000000140374623 bt       dword ptr [rcx + 0x16c], 0xd
000000014037462b jae      0x140374660
000000014037462d movzx    eax, byte ptr [rsi + 0x12c31]
0000000140374634 mov      edx, 0x9d
0000000140374639 movzx    r8d, byte ptr [rsi + 0x12c30]
0000000140374641 mov      rcx, qword ptr [rcx + 0x158]
0000000140374648 lea      r9, [rip + 0x2cb091]
000000014037464f mov      dword ptr [rsp + 0x28], eax
0000000140374653 mov      dword ptr [rsp + 0x20], r8d
0000000140374658 mov      r8, r13
000000014037465b call     0x140002b04
0000000140374660 mov      rcx, qword ptr [rip + 0x5ab999]
0000000140374667 cmp      rcx, r12
000000014037466a je       0x140374693
000000014037466c cmp      byte ptr [rcx + 0x169], r14b
0000000140374673 jb       0x140374693
0000000140374675 bt       dword ptr [rcx + 0x16c], 0xd
000000014037467d jae      0x140374693
000000014037467f mov      rcx, qword ptr [rcx + 0x158]
0000000140374686 mov      edx, 0x9e
000000014037468b mov      r8, r13
000000014037468e call     0x140001b88
0000000140374693 cmp      dword ptr [rsi + 0x510], 0x64
000000014037469a lea      rbx, [rip + 0x2cb04f]
00000001403746a1 lea      rdi, [rip + 0x2cb058]
00000001403746a8 jbe      0x1403749c1
00000001403746ae cmp      byte ptr [rsi + 0x12d7c], 1
00000001403746b5 jne      0x14037487c
00000001403746bb mov      rcx, qword ptr [rip + 0x5ab93e]
00000001403746c2 cmp      rcx, r12
00000001403746c5 je       0x140374a69
00000001403746cb cmp      byte ptr [rcx + 0x169], r14b
00000001403746d2 jb       0x14037472b
00000001403746d4 bt       dword ptr [rcx + 0x16c], 0xd
00000001403746dc jae      0x14037472b
00000001403746de movzx    r9d, byte ptr [rsi + 0x12dcc]
00000001403746e6 mov      edx, 0x9f
00000001403746eb movzx    eax, byte ptr [rsi + 0x12dd4]
00000001403746f2 movzx    r8d, byte ptr [rsi + 0x12dcb]
00000001403746fa mov      rcx, qword ptr [rcx + 0x158]
0000000140374701 shl      r9d, 8
0000000140374705 or       r9d, eax
0000000140374708 shl      r8d, 8
000000014037470c movzx    eax, byte ptr [rsi + 0x12dd3]
0000000140374713 or       r8d, eax
0000000140374716 mov      dword ptr [rsp + 0x28], r9d
000000014037471b mov      dword ptr [rsp + 0x20], r8d
0000000140374720 mov      r9, rbx
0000000140374723 mov      r8, r13
0000000140374726 call     0x140002b04
000000014037472b mov      rcx, qword ptr [rip + 0x5ab8ce]
0000000140374732 cmp      rcx, r12
0000000140374735 je       0x140374a69
000000014037473b cmp      byte ptr [rcx + 0x169], r14b
0000000140374742 jb       0x14037479b
0000000140374744 bt       dword ptr [rcx + 0x16c], 0xd
000000014037474c jae      0x14037479b
000000014037474e movzx    r9d, byte ptr [rsi + 0x12dce]
0000000140374756 mov      edx, 0xa0
000000014037475b movzx    eax, byte ptr [rsi + 0x12dd6]
0000000140374762 movzx    r8d, byte ptr [rsi + 0x12dcd]
000000014037476a mov      rcx, qword ptr [rcx + 0x158]
0000000140374771 shl      r9d, 8
0000000140374775 or       r9d, eax
0000000140374778 shl      r8d, 8
000000014037477c movzx    eax, byte ptr [rsi + 0x12dd5]
0000000140374783 or       r8d, eax
0000000140374786 mov      dword ptr [rsp + 0x28], r9d
000000014037478b mov      dword ptr [rsp + 0x20], r8d
0000000140374790 mov      r9, rdi
0000000140374793 mov      r8, r13
0000000140374796 call     0x140002b04
000000014037479b mov      rcx, qword ptr [rip + 0x5ab85e]
00000001403747a2 cmp      rcx, r12
00000001403747a5 je       0x140374a69
00000001403747ab cmp      byte ptr [rcx + 0x169], r14b
00000001403747b2 jb       0x14037480f
00000001403747b4 bt       dword ptr [rcx + 0x16c], 0xd
00000001403747bc jae      0x14037480f
00000001403747be movzx    r9d, byte ptr [rsi + 0x12dd0]
00000001403747c6 mov      edx, 0xa1
00000001403747cb movzx    eax, byte ptr [rsi + 0x12dd8]
00000001403747d2 movzx    r8d, byte ptr [rsi + 0x12dcf]
00000001403747da mov      rcx, qword ptr [rcx + 0x158]
00000001403747e1 shl      r9d, 8
00000001403747e5 or       r9d, eax
00000001403747e8 shl      r8d, 8
00000001403747ec movzx    eax, byte ptr [rsi + 0x12dd7]
00000001403747f3 or       r8d, eax
00000001403747f6 mov      dword ptr [rsp + 0x28], r9d
00000001403747fb mov      dword ptr [rsp + 0x20], r8d
0000000140374800 lea      r9, [rip + 0x2caf09]
0000000140374807 mov      r8, r13
000000014037480a call     0x140002b04
000000014037480f mov      rcx, qword ptr [rip + 0x5ab7ea]
0000000140374816 cmp      rcx, r12
0000000140374819 je       0x140374a69
000000014037481f cmp      byte ptr [rcx + 0x169], r14b
0000000140374826 jb       0x140374a69
000000014037482c bt       dword ptr [rcx + 0x16c], 0xd
0000000140374834 jae      0x140374a69
000000014037483a movzx    r9d, byte ptr [rsi + 0x12dd2]
0000000140374842 mov      edx, 0xa2
0000000140374847 movzx    eax, byte ptr [rsi + 0x12dda]
000000014037484e movzx    r8d, byte ptr [rsi + 0x12dd1]
0000000140374856 shl      r9d, 8
000000014037485a or       r9d, eax
000000014037485d shl      r8d, 8
0000000140374861 movzx    eax, byte ptr [rsi + 0x12dd9]
0000000140374868 mov      dword ptr [rsp + 0x28], r9d
000000014037486d or       r8d, eax
0000000140374870 lea      r9, [rip + 0x2caea9]
0000000140374877 jmp      0x140374a55
000000014037487c mov      rcx, qword ptr [rip + 0x5ab77d]
0000000140374883 cmp      rcx, r12
0000000140374886 je       0x140374a69
000000014037488c cmp      byte ptr [rcx + 0x169], r14b
0000000140374893 jb       0x1403748ce
0000000140374895 bt       dword ptr [rcx + 0x16c], 0xd
000000014037489d jae      0x1403748ce
000000014037489f movzx    r8d, word ptr [rsi + 0x12d04]
00000001403748a7 mov      edx, 0xa3
00000001403748ac movzx    eax, word ptr [rsi + 0x12d06]
00000001403748b3 mov      r9, rbx
00000001403748b6 mov      rcx, qword ptr [rcx + 0x158]
00000001403748bd mov      dword ptr [rsp + 0x28], eax
00000001403748c1 mov      dword ptr [rsp + 0x20], r8d
00000001403748c6 mov      r8, r13
00000001403748c9 call     0x140002b04
00000001403748ce mov      rcx, qword ptr [rip + 0x5ab72b]
00000001403748d5 cmp      rcx, r12
00000001403748d8 je       0x140374a69
00000001403748de cmp      byte ptr [rcx + 0x169], r14b
00000001403748e5 jb       0x140374920
00000001403748e7 bt       dword ptr [rcx + 0x16c], 0xd
00000001403748ef jae      0x140374920
00000001403748f1 movzx    r8d, word ptr [rsi + 0x12d08]
00000001403748f9 mov      edx, 0xa4
00000001403748fe movzx    eax, word ptr [rsi + 0x12d0a]
0000000140374905 mov      r9, rdi
0000000140374908 mov      rcx, qword ptr [rcx + 0x158]
000000014037490f mov      dword ptr [rsp + 0x28], eax
0000000140374913 mov      dword ptr [rsp + 0x20], r8d
0000000140374918 mov      r8, r13
000000014037491b call     0x140002b04
0000000140374920 mov      rcx, qword ptr [rip + 0x5ab6d9]
0000000140374927 cmp      rcx, r12
000000014037492a je       0x140374a69
0000000140374930 cmp      byte ptr [rcx + 0x169], r14b
0000000140374937 jb       0x140374976
0000000140374939 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374941 jae      0x140374976
0000000140374943 movzx    r8d, word ptr [rsi + 0x12d0c]
000000014037494b lea      r9, [rip + 0x2cadbe]
0000000140374952 movzx    eax, word ptr [rsi + 0x12d0e]
0000000140374959 mov      edx, 0xa5
000000014037495e mov      rcx, qword ptr [rcx + 0x158]
0000000140374965 mov      dword ptr [rsp + 0x28], eax
0000000140374969 mov      dword ptr [rsp + 0x20], r8d
000000014037496e mov      r8, r13
0000000140374971 call     0x140002b04
0000000140374976 mov      rcx, qword ptr [rip + 0x5ab683]
000000014037497d cmp      rcx, r12
0000000140374980 je       0x140374a69
0000000140374986 cmp      byte ptr [rcx + 0x169], r14b
000000014037498d jb       0x140374a69
0000000140374993 bt       dword ptr [rcx + 0x16c], 0xd
000000014037499b jae      0x140374a69
00000001403749a1 movzx    eax, word ptr [rsi + 0x12d12]
00000001403749a8 lea      r9, [rip + 0x2cad71]
00000001403749af movzx    r8d, word ptr [rsi + 0x12d10]
00000001403749b7 mov      edx, 0xa6
00000001403749bc jmp      0x140374a51
00000001403749c1 mov      rcx, qword ptr [rip + 0x5ab638]
00000001403749c8 cmp      rcx, r12
00000001403749cb je       0x140374a69
00000001403749d1 cmp      byte ptr [rcx + 0x169], r14b
00000001403749d8 jb       0x140374a17
00000001403749da bt       dword ptr [rcx + 0x16c], 0xd
00000001403749e2 jae      0x140374a17
00000001403749e4 movzx    r8d, word ptr [rsi + 0x12cf0]
00000001403749ec lea      r9, [rip + 0x2cad3d]
00000001403749f3 movzx    eax, word ptr [rsi + 0x12cf2]
00000001403749fa mov      edx, 0xa7
00000001403749ff mov      rcx, qword ptr [rcx + 0x158]
0000000140374a06 mov      dword ptr [rsp + 0x28], eax
0000000140374a0a mov      dword ptr [rsp + 0x20], r8d
0000000140374a0f mov      r8, r13
0000000140374a12 call     0x140002b04
0000000140374a17 mov      rcx, qword ptr [rip + 0x5ab5e2]
0000000140374a1e cmp      rcx, r12
0000000140374a21 je       0x140374a69
0000000140374a23 cmp      byte ptr [rcx + 0x169], r14b
0000000140374a2a jb       0x140374a69
0000000140374a2c bt       dword ptr [rcx + 0x16c], 0xd
0000000140374a34 jae      0x140374a69
0000000140374a36 movzx    eax, word ptr [rsi + 0x12cf6]
0000000140374a3d lea      r9, [rip + 0x2cacfc]
0000000140374a44 movzx    r8d, word ptr [rsi + 0x12cf4]
0000000140374a4c mov      edx, 0xa8
0000000140374a51 mov      dword ptr [rsp + 0x28], eax
0000000140374a55 mov      rcx, qword ptr [rcx + 0x158]
0000000140374a5c mov      dword ptr [rsp + 0x20], r8d
0000000140374a61 mov      r8, r13
0000000140374a64 call     0x140002b04
0000000140374a69 cmp      dword ptr [rsi + 0x510], 0x64
0000000140374a70 jbe      0x140374f41
0000000140374a76 cmp      byte ptr [rsi + 0x12d7c], 1
0000000140374a7d jne      0x140374cdb
0000000140374a83 mov      rcx, qword ptr [rip + 0x5ab576]
0000000140374a8a cmp      rcx, r12
0000000140374a8d je       0x140374f41
0000000140374a93 cmp      byte ptr [rcx + 0x169], r14b
0000000140374a9a jb       0x140374aba
0000000140374a9c bt       dword ptr [rcx + 0x16c], 0xd
0000000140374aa4 jae      0x140374aba
0000000140374aa6 mov      rcx, qword ptr [rcx + 0x158]
0000000140374aad mov      edx, 0xa9
0000000140374ab2 mov      r8, r13
0000000140374ab5 call     0x140001b88
0000000140374aba mov      rcx, qword ptr [rip + 0x5ab53f]
0000000140374ac1 cmp      rcx, r12
0000000140374ac4 je       0x140374f41
0000000140374aca cmp      byte ptr [rcx + 0x169], r14b
0000000140374ad1 jb       0x140374b0c
0000000140374ad3 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374adb jae      0x140374b0c
0000000140374add movzx    r8d, byte ptr [rsi + 0x12dc3]
0000000140374ae5 mov      edx, 0xaa
0000000140374aea movzx    eax, byte ptr [rsi + 0x12dc4]
0000000140374af1 mov      r9, rbx
0000000140374af4 mov      rcx, qword ptr [rcx + 0x158]
0000000140374afb mov      dword ptr [rsp + 0x28], eax
0000000140374aff mov      dword ptr [rsp + 0x20], r8d
0000000140374b04 mov      r8, r13
0000000140374b07 call     0x140002b04
0000000140374b0c mov      rcx, qword ptr [rip + 0x5ab4ed]
0000000140374b13 cmp      rcx, r12
0000000140374b16 je       0x140374f41
0000000140374b1c cmp      byte ptr [rcx + 0x169], r14b
0000000140374b23 jb       0x140374b5e
0000000140374b25 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374b2d jae      0x140374b5e
0000000140374b2f movzx    r8d, byte ptr [rsi + 0x12dc5]
0000000140374b37 mov      edx, 0xab
0000000140374b3c movzx    eax, byte ptr [rsi + 0x12dc6]
0000000140374b43 mov      r9, rdi
0000000140374b46 mov      rcx, qword ptr [rcx + 0x158]
0000000140374b4d mov      dword ptr [rsp + 0x28], eax
0000000140374b51 mov      dword ptr [rsp + 0x20], r8d
0000000140374b56 mov      r8, r13
0000000140374b59 call     0x140002b04
0000000140374b5e mov      rcx, qword ptr [rip + 0x5ab49b]
0000000140374b65 cmp      rcx, r12
0000000140374b68 je       0x140374f41
0000000140374b6e cmp      byte ptr [rcx + 0x169], r14b
0000000140374b75 jb       0x140374bb4
0000000140374b77 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374b7f jae      0x140374bb4
0000000140374b81 movzx    r8d, byte ptr [rsi + 0x12dc7]
0000000140374b89 lea      r9, [rip + 0x2cab80]
0000000140374b90 movzx    eax, byte ptr [rsi + 0x12dc8]
0000000140374b97 mov      edx, 0xac
0000000140374b9c mov      rcx, qword ptr [rcx + 0x158]
0000000140374ba3 mov      dword ptr [rsp + 0x28], eax
0000000140374ba7 mov      dword ptr [rsp + 0x20], r8d
0000000140374bac mov      r8, r13
0000000140374baf call     0x140002b04
0000000140374bb4 mov      rcx, qword ptr [rip + 0x5ab445]
0000000140374bbb cmp      rcx, r12
0000000140374bbe je       0x140374f41
0000000140374bc4 cmp      byte ptr [rcx + 0x169], r14b
0000000140374bcb jb       0x140374c0a
0000000140374bcd bt       dword ptr [rcx + 0x16c], 0xd
0000000140374bd5 jae      0x140374c0a
0000000140374bd7 movzx    r8d, byte ptr [rsi + 0x12dc9]
0000000140374bdf lea      r9, [rip + 0x2cab3a]
0000000140374be6 movzx    eax, byte ptr [rsi + 0x12dca]
0000000140374bed mov      edx, 0xad
0000000140374bf2 mov      rcx, qword ptr [rcx + 0x158]
0000000140374bf9 mov      dword ptr [rsp + 0x28], eax
0000000140374bfd mov      dword ptr [rsp + 0x20], r8d
0000000140374c02 mov      r8, r13
0000000140374c05 call     0x140002b04
0000000140374c0a mov      rcx, qword ptr [rip + 0x5ab3ef]
0000000140374c11 cmp      rcx, r12
0000000140374c14 je       0x140374f41
0000000140374c1a cmp      byte ptr [rcx + 0x169], r14b
0000000140374c21 jb       0x140374c41
0000000140374c23 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374c2b jae      0x140374c41
0000000140374c2d mov      rcx, qword ptr [rcx + 0x158]
0000000140374c34 mov      edx, 0xae
0000000140374c39 mov      r8, r13
0000000140374c3c call     0x140001b88
0000000140374c41 mov      rcx, qword ptr [rip + 0x5ab3b8]
0000000140374c48 cmp      rcx, r12
0000000140374c4b je       0x140374f41
0000000140374c51 cmp      byte ptr [rcx + 0x169], r14b
0000000140374c58 jb       0x140374c97
0000000140374c5a bt       dword ptr [rcx + 0x16c], 0xd
0000000140374c62 jae      0x140374c97
0000000140374c64 movzx    r8d, byte ptr [rsi + 0x12ddb]
0000000140374c6c lea      r9, [rip + 0x2caabd]
0000000140374c73 movzx    eax, byte ptr [rsi + 0x12ddc]
0000000140374c7a mov      edx, 0xaf
0000000140374c7f mov      rcx, qword ptr [rcx + 0x158]
0000000140374c86 mov      dword ptr [rsp + 0x28], eax
0000000140374c8a mov      dword ptr [rsp + 0x20], r8d
0000000140374c8f mov      r8, r13
0000000140374c92 call     0x140002b04
0000000140374c97 mov      rcx, qword ptr [rip + 0x5ab362]
0000000140374c9e cmp      rcx, r12
0000000140374ca1 je       0x140374f41
0000000140374ca7 cmp      byte ptr [rcx + 0x169], r14b
0000000140374cae jb       0x140374f41
0000000140374cb4 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374cbc jae      0x140374f41
0000000140374cc2 movzx    eax, byte ptr [rsi + 0x12dde]
0000000140374cc9 mov      edx, 0xb0
0000000140374cce movzx    r8d, byte ptr [rsi + 0x12ddd]
0000000140374cd6 jmp      0x140374f22
0000000140374cdb mov      rcx, qword ptr [rip + 0x5ab31e]
0000000140374ce2 cmp      rcx, r12
0000000140374ce5 je       0x140374f41
0000000140374ceb cmp      byte ptr [rcx + 0x169], r14b
0000000140374cf2 jb       0x140374d12
0000000140374cf4 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374cfc jae      0x140374d12
0000000140374cfe mov      rcx, qword ptr [rcx + 0x158]
0000000140374d05 mov      edx, 0xb1
0000000140374d0a mov      r8, r13
0000000140374d0d call     0x140001b88
0000000140374d12 mov      rcx, qword ptr [rip + 0x5ab2e7]
0000000140374d19 cmp      rcx, r12
0000000140374d1c je       0x140374f41
0000000140374d22 cmp      byte ptr [rcx + 0x169], r14b
0000000140374d29 jb       0x140374d64
0000000140374d2b bt       dword ptr [rcx + 0x16c], 0xd
0000000140374d33 jae      0x140374d64
0000000140374d35 movzx    r8d, byte ptr [rsi + 0x12cdc]
0000000140374d3d mov      edx, 0xb2
0000000140374d42 movzx    eax, byte ptr [rsi + 0x12cdd]
0000000140374d49 mov      r9, rbx
0000000140374d4c mov      rcx, qword ptr [rcx + 0x158]
0000000140374d53 mov      dword ptr [rsp + 0x28], eax
0000000140374d57 mov      dword ptr [rsp + 0x20], r8d
0000000140374d5c mov      r8, r13
0000000140374d5f call     0x140002b04
0000000140374d64 mov      rcx, qword ptr [rip + 0x5ab295]
0000000140374d6b cmp      rcx, r12
0000000140374d6e je       0x140374f41
0000000140374d74 cmp      byte ptr [rcx + 0x169], r14b
0000000140374d7b jb       0x140374db6
0000000140374d7d bt       dword ptr [rcx + 0x16c], 0xd
0000000140374d85 jae      0x140374db6
0000000140374d87 movzx    r8d, byte ptr [rsi + 0x12cde]
0000000140374d8f mov      edx, 0xb3
0000000140374d94 movzx    eax, byte ptr [rsi + 0x12cdf]
0000000140374d9b mov      r9, rdi
0000000140374d9e mov      rcx, qword ptr [rcx + 0x158]
0000000140374da5 mov      dword ptr [rsp + 0x28], eax
0000000140374da9 mov      dword ptr [rsp + 0x20], r8d
0000000140374dae mov      r8, r13
0000000140374db1 call     0x140002b04
0000000140374db6 mov      rcx, qword ptr [rip + 0x5ab243]
0000000140374dbd cmp      rcx, r12
0000000140374dc0 je       0x140374f41
0000000140374dc6 cmp      byte ptr [rcx + 0x169], r14b
0000000140374dcd jb       0x140374e0c
0000000140374dcf bt       dword ptr [rcx + 0x16c], 0xd
0000000140374dd7 jae      0x140374e0c
0000000140374dd9 movzx    r8d, byte ptr [rsi + 0x12ce0]
0000000140374de1 lea      r9, [rip + 0x2ca928]
0000000140374de8 movzx    eax, byte ptr [rsi + 0x12ce1]
0000000140374def mov      edx, 0xb4
0000000140374df4 mov      rcx, qword ptr [rcx + 0x158]
0000000140374dfb mov      dword ptr [rsp + 0x28], eax
0000000140374dff mov      dword ptr [rsp + 0x20], r8d
0000000140374e04 mov      r8, r13
0000000140374e07 call     0x140002b04
0000000140374e0c mov      rcx, qword ptr [rip + 0x5ab1ed]
0000000140374e13 cmp      rcx, r12
0000000140374e16 je       0x140374f41
0000000140374e1c cmp      byte ptr [rcx + 0x169], r14b
0000000140374e23 jb       0x140374e62
0000000140374e25 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374e2d jae      0x140374e62
0000000140374e2f movzx    r8d, byte ptr [rsi + 0x12ce2]
0000000140374e37 lea      r9, [rip + 0x2ca8e2]
0000000140374e3e movzx    eax, byte ptr [rsi + 0x12ce3]
0000000140374e45 mov      edx, 0xb5
0000000140374e4a mov      rcx, qword ptr [rcx + 0x158]
0000000140374e51 mov      dword ptr [rsp + 0x28], eax
0000000140374e55 mov      dword ptr [rsp + 0x20], r8d
0000000140374e5a mov      r8, r13
0000000140374e5d call     0x140002b04
0000000140374e62 mov      rcx, qword ptr [rip + 0x5ab197]
0000000140374e69 cmp      rcx, r12
0000000140374e6c je       0x140374f41
0000000140374e72 cmp      byte ptr [rcx + 0x169], r14b
0000000140374e79 jb       0x140374e99
0000000140374e7b bt       dword ptr [rcx + 0x16c], 0xd
0000000140374e83 jae      0x140374e99
0000000140374e85 mov      rcx, qword ptr [rcx + 0x158]
0000000140374e8c mov      edx, 0xb6
0000000140374e91 mov      r8, r13
0000000140374e94 call     0x140001b88
0000000140374e99 mov      rcx, qword ptr [rip + 0x5ab160]
0000000140374ea0 cmp      rcx, r12
0000000140374ea3 je       0x140374f41
0000000140374ea9 cmp      byte ptr [rcx + 0x169], r14b
0000000140374eb0 jb       0x140374eef
0000000140374eb2 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374eba jae      0x140374eef
0000000140374ebc movzx    r8d, word ptr [rsi + 0x12d2c]
0000000140374ec4 lea      r9, [rip + 0x2ca865]
0000000140374ecb movzx    eax, word ptr [rsi + 0x12d2e]
0000000140374ed2 mov      edx, 0xb7
0000000140374ed7 mov      rcx, qword ptr [rcx + 0x158]
0000000140374ede mov      dword ptr [rsp + 0x28], eax
0000000140374ee2 mov      dword ptr [rsp + 0x20], r8d
0000000140374ee7 mov      r8, r13
0000000140374eea call     0x140002b04
0000000140374eef mov      rcx, qword ptr [rip + 0x5ab10a]
0000000140374ef6 cmp      rcx, r12
0000000140374ef9 je       0x140374f41
0000000140374efb cmp      byte ptr [rcx + 0x169], r14b
0000000140374f02 jb       0x140374f41
0000000140374f04 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374f0c jae      0x140374f41
0000000140374f0e movzx    eax, word ptr [rsi + 0x12d32]
0000000140374f15 mov      edx, 0xb8
0000000140374f1a movzx    r8d, word ptr [rsi + 0x12d30]
0000000140374f22 mov      rcx, qword ptr [rcx + 0x158]
0000000140374f29 lea      r9, [rip + 0x2ca810]
0000000140374f30 mov      dword ptr [rsp + 0x28], eax
0000000140374f34 mov      dword ptr [rsp + 0x20], r8d
0000000140374f39 mov      r8, r13
0000000140374f3c call     0x140002b04
0000000140374f41 mov      bl, 1
0000000140374f43 cmp      byte ptr [rsi + 0x12d7c], bl
0000000140374f49 jne      0x140375214
0000000140374f4f mov      rcx, qword ptr [rip + 0x5ab0aa]
0000000140374f56 cmp      rcx, r12
0000000140374f59 je       0x140375184
0000000140374f5f cmp      byte ptr [rcx + 0x169], r14b
0000000140374f66 jb       0x140374f86
0000000140374f68 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374f70 jae      0x140374f86
0000000140374f72 mov      rcx, qword ptr [rcx + 0x158]
0000000140374f79 mov      edx, 0xb9
0000000140374f7e mov      r8, r13
0000000140374f81 call     0x140001b88
0000000140374f86 mov      rcx, qword ptr [rip + 0x5ab073]
0000000140374f8d cmp      rcx, r12
0000000140374f90 je       0x140375184
0000000140374f96 cmp      byte ptr [rcx + 0x169], r14b
0000000140374f9d jb       0x140374fdc
0000000140374f9f bt       dword ptr [rcx + 0x16c], 0xd
0000000140374fa7 jae      0x140374fdc
0000000140374fa9 movzx    r8d, byte ptr [rsi + 0x12dbf]
0000000140374fb1 lea      r9, [rip + 0x2ca778]
0000000140374fb8 movzx    eax, byte ptr [rsi + 0x12dc0]
0000000140374fbf mov      edx, 0xba
0000000140374fc4 mov      rcx, qword ptr [rcx + 0x158]
0000000140374fcb mov      dword ptr [rsp + 0x28], eax
0000000140374fcf mov      dword ptr [rsp + 0x20], r8d
0000000140374fd4 mov      r8, r13
0000000140374fd7 call     0x140002b04
0000000140374fdc mov      rcx, qword ptr [rip + 0x5ab01d]
0000000140374fe3 cmp      rcx, r12
0000000140374fe6 je       0x140375184
0000000140374fec cmp      byte ptr [rcx + 0x169], r14b
0000000140374ff3 jb       0x140375032
0000000140374ff5 bt       dword ptr [rcx + 0x16c], 0xd
0000000140374ffd jae      0x140375032
0000000140374fff movzx    r8d, byte ptr [rsi + 0x12dc1]
0000000140375007 lea      r9, [rip + 0x2ca732]
000000014037500e movzx    eax, byte ptr [rsi + 0x12dc2]
0000000140375015 mov      edx, 0xbb
000000014037501a mov      rcx, qword ptr [rcx + 0x158]
0000000140375021 mov      dword ptr [rsp + 0x28], eax
0000000140375025 mov      dword ptr [rsp + 0x20], r8d
000000014037502a mov      r8, r13
000000014037502d call     0x140002b04
0000000140375032 mov      rcx, qword ptr [rip + 0x5aafc7]
0000000140375039 cmp      rcx, r12
000000014037503c je       0x140375184
0000000140375042 cmp      byte ptr [rcx + 0x169], r14b
0000000140375049 jb       0x140375069
000000014037504b bt       dword ptr [rcx + 0x16c], 0xd
0000000140375053 jae      0x140375069
0000000140375055 mov      rcx, qword ptr [rcx + 0x158]
000000014037505c mov      edx, 0xbc
0000000140375061 mov      r8, r13
0000000140375064 call     0x140001b88
0000000140375069 mov      rcx, qword ptr [rip + 0x5aaf90]
0000000140375070 cmp      rcx, r12
0000000140375073 je       0x140375184
0000000140375079 cmp      byte ptr [rcx + 0x169], r14b
0000000140375080 jb       0x1403750dd
0000000140375082 bt       dword ptr [rcx + 0x16c], 0xd
000000014037508a jae      0x1403750dd
000000014037508c movzx    eax, byte ptr [rsi + 0x12de4]
0000000140375093 lea      r9, [rip + 0x2ca696]
000000014037509a movzx    r8d, byte ptr [rsi + 0x12ddf]
00000001403750a2 mov      edx, 0xbd
00000001403750a7 movzx    r10d, byte ptr [rsi + 0x12de0]
00000001403750af mov      rcx, qword ptr [rcx + 0x158]
00000001403750b6 shl      r8d, 8
00000001403750ba shl      r10d, 8
00000001403750be or       r10d, eax
00000001403750c1 movzx    eax, byte ptr [rsi + 0x12de3]
00000001403750c8 or       r8d, eax
00000001403750cb mov      dword ptr [rsp + 0x28], r10d
00000001403750d0 mov      dword ptr [rsp + 0x20], r8d
00000001403750d5 mov      r8, r13
00000001403750d8 call     0x140002b04
00000001403750dd mov      rcx, qword ptr [rip + 0x5aaf1c]
00000001403750e4 cmp      rcx, r12
00000001403750e7 je       0x140375184
00000001403750ed cmp      byte ptr [rcx + 0x169], r14b
00000001403750f4 jb       0x140375151
00000001403750f6 bt       dword ptr [rcx + 0x16c], 0xd
00000001403750fe jae      0x140375151
0000000140375100 movzx    eax, byte ptr [rsi + 0x12de6]
0000000140375107 lea      r9, [rip + 0x2ca632]
000000014037510e movzx    r8d, byte ptr [rsi + 0x12de1]
0000000140375116 mov      edx, 0xbe
000000014037511b movzx    r10d, byte ptr [rsi + 0x12de2]
0000000140375123 mov      rcx, qword ptr [rcx + 0x158]
000000014037512a shl      r8d, 8
000000014037512e shl      r10d, 8
0000000140375132 or       r10d, eax
0000000140375135 movzx    eax, byte ptr [rsi + 0x12de5]
000000014037513c or       r8d, eax
000000014037513f mov      dword ptr [rsp + 0x28], r10d
0000000140375144 mov      dword ptr [rsp + 0x20], r8d
0000000140375149 mov      r8, r13
000000014037514c call     0x140002b04
0000000140375151 mov      rcx, qword ptr [rip + 0x5aaea8]
0000000140375158 cmp      rcx, r12
000000014037515b je       0x140375184
000000014037515d cmp      byte ptr [rcx + 0x169], r14b
0000000140375164 jb       0x140375184
0000000140375166 bt       dword ptr [rcx + 0x16c], 0xd
000000014037516e jae      0x140375184
0000000140375170 mov      rcx, qword ptr [rcx + 0x158]
0000000140375177 mov      edx, 0xbf
000000014037517c mov      r8, r13
000000014037517f call     0x140001b88
0000000140375184 mov      rcx, qword ptr [rip + 0x5aae75]
000000014037518b cmp      rcx, r12
000000014037518e je       0x140375202
0000000140375190 cmp      byte ptr [rcx + 0x169], r14b
0000000140375197 jb       0x140375202
0000000140375199 bt       dword ptr [rcx + 0x16c], 0xd
00000001403751a1 jae      0x140375202
00000001403751a3 mov      rcx, qword ptr [rcx + 0x158]
00000001403751aa mov      edx, 0xc0
00000001403751af movzx    eax, bpl
00000001403751b3 movzx    r8d, byte ptr [rax + rsi + 0x12daf]
00000001403751bc movzx    r9d, byte ptr [rax + rsi + 0x12d9f]
00000001403751c5 movzx    r10d, byte ptr [rax + rsi + 0x12d8f]
00000001403751ce movzx    r11d, byte ptr [rax + rsi + 0x12d7f]
00000001403751d7 mov      dword ptr [rsp + 0x40], r8d
00000001403751dc mov      r8, r13
00000001403751df mov      dword ptr [rsp + 0x38], r9d
00000001403751e4 lea      r9, [rip + 0x2ca565]
00000001403751eb mov      dword ptr [rsp + 0x30], r10d
00000001403751f0 movzx    eax, bpl
00000001403751f4 mov      dword ptr [rsp + 0x28], r11d
00000001403751f9 mov      dword ptr [rsp + 0x20], eax
00000001403751fd call     0x14003c780
0000000140375202 add      bpl, bl
0000000140375205 cmp      bpl, 0x10
0000000140375209 jb       0x140375184
000000014037520f jmp      0x140375494
0000000140375214 mov      rcx, qword ptr [rip + 0x5aade5]
000000014037521b cmp      rcx, r12
000000014037521e je       0x140375409
0000000140375224 cmp      byte ptr [rcx + 0x169], r14b
000000014037522b jb       0x14037524b
000000014037522d bt       dword ptr [rcx + 0x16c], 0xd
0000000140375235 jae      0x14037524b
0000000140375237 mov      rcx, qword ptr [rcx + 0x158]
000000014037523e mov      edx, 0xc1
0000000140375243 mov      r8, r13
0000000140375246 call     0x140001b88
000000014037524b mov      rcx, qword ptr [rip + 0x5aadae]
0000000140375252 cmp      rcx, r12
0000000140375255 je       0x140375409
000000014037525b cmp      byte ptr [rcx + 0x169], r14b
0000000140375262 jb       0x1403752a1
0000000140375264 bt       dword ptr [rcx + 0x16c], 0xd
000000014037526c jae      0x1403752a1
000000014037526e movzx    r8d, byte ptr [rsi + 0x12cd2]
0000000140375276 lea      r9, [rip + 0x2ca4b3]
000000014037527d movzx    eax, byte ptr [rsi + 0x12cd3]
0000000140375284 mov      edx, 0xc2
0000000140375289 mov      rcx, qword ptr [rcx + 0x158]
0000000140375290 mov      dword ptr [rsp + 0x28], eax
0000000140375294 mov      dword ptr [rsp + 0x20], r8d
0000000140375299 mov      r8, r13
000000014037529c call     0x140002b04
00000001403752a1 mov      rcx, qword ptr [rip + 0x5aad58]
00000001403752a8 cmp      rcx, r12
00000001403752ab je       0x140375409
00000001403752b1 cmp      byte ptr [rcx + 0x169], r14b
00000001403752b8 jb       0x1403752f7
00000001403752ba bt       dword ptr [rcx + 0x16c], 0xd
00000001403752c2 jae      0x1403752f7
00000001403752c4 movzx    r8d, byte ptr [rsi + 0x12cd4]
00000001403752cc lea      r9, [rip + 0x2ca46d]
00000001403752d3 movzx    eax, byte ptr [rsi + 0x12cd5]
00000001403752da mov      edx, 0xc3
00000001403752df mov      rcx, qword ptr [rcx + 0x158]
00000001403752e6 mov      dword ptr [rsp + 0x28], eax
00000001403752ea mov      dword ptr [rsp + 0x20], r8d
00000001403752ef mov      r8, r13
00000001403752f2 call     0x140002b04
00000001403752f7 mov      rcx, qword ptr [rip + 0x5aad02]
00000001403752fe cmp      rcx, r12
0000000140375301 je       0x140375409
0000000140375307 cmp      byte ptr [rcx + 0x169], r14b
000000014037530e jb       0x14037532e
0000000140375310 bt       dword ptr [rcx + 0x16c], 0xd
0000000140375318 jae      0x14037532e
000000014037531a mov      rcx, qword ptr [rcx + 0x158]
0000000140375321 mov      edx, 0xc4
0000000140375326 mov      r8, r13
0000000140375329 call     0x140001b88
000000014037532e mov      rcx, qword ptr [rip + 0x5aaccb]
0000000140375335 cmp      rcx, r12
0000000140375338 je       0x140375409
000000014037533e cmp      byte ptr [rcx + 0x169], r14b
0000000140375345 jb       0x140375384
0000000140375347 bt       dword ptr [rcx + 0x16c], 0xd
000000014037534f jae      0x140375384
0000000140375351 movzx    r8d, word ptr [rsi + 0x12d40]
0000000140375359 lea      r9, [rip + 0x2ca3d0]
0000000140375360 movzx    eax, word ptr [rsi + 0x12d42]
0000000140375367 mov      edx, 0xc5
000000014037536c mov      rcx, qword ptr [rcx + 0x158]
0000000140375373 mov      dword ptr [rsp + 0x28], eax
0000000140375377 mov      dword ptr [rsp + 0x20], r8d
000000014037537c mov      r8, r13
000000014037537f call     0x140002b04
0000000140375384 mov      rcx, qword ptr [rip + 0x5aac75]
000000014037538b cmp      rcx, r12
000000014037538e je       0x140375409
0000000140375390 cmp      byte ptr [rcx + 0x169], r14b
0000000140375397 jb       0x1403753d6
0000000140375399 bt       dword ptr [rcx + 0x16c], 0xd
00000001403753a1 jae      0x1403753d6
00000001403753a3 movzx    r8d, word ptr [rsi + 0x12d44]
00000001403753ab lea      r9, [rip + 0x2ca38e]
00000001403753b2 movzx    eax, word ptr [rsi + 0x12d46]
00000001403753b9 mov      edx, 0xc6
00000001403753be mov      rcx, qword ptr [rcx + 0x158]
00000001403753c5 mov      dword ptr [rsp + 0x28], eax
00000001403753c9 mov      dword ptr [rsp + 0x20], r8d
00000001403753ce mov      r8, r13
00000001403753d1 call     0x140002b04
00000001403753d6 mov      rcx, qword ptr [rip + 0x5aac23]
00000001403753dd cmp      rcx, r12
00000001403753e0 je       0x140375409
00000001403753e2 cmp      byte ptr [rcx + 0x169], r14b
00000001403753e9 jb       0x140375409
00000001403753eb bt       dword ptr [rcx + 0x16c], 0xd
00000001403753f3 jae      0x140375409
00000001403753f5 mov      rcx, qword ptr [rcx + 0x158]
00000001403753fc mov      edx, 0xc7
0000000140375401 mov      r8, r13
0000000140375404 call     0x140001b88
0000000140375409 mov      rcx, qword ptr [rip + 0x5aabf0]
0000000140375410 cmp      rcx, r12
0000000140375413 je       0x140375487
0000000140375415 cmp      byte ptr [rcx + 0x169], r14b
000000014037541c jb       0x140375487
000000014037541e bt       dword ptr [rcx + 0x16c], 0xd
0000000140375426 jae      0x140375487
0000000140375428 mov      rcx, qword ptr [rcx + 0x158]
000000014037542f mov      edx, 0xc8
0000000140375434 movzx    eax, bpl
0000000140375438 movzx    r8d, byte ptr [rax + rsi + 0x12c62]
0000000140375441 movzx    r9d, byte ptr [rax + rsi + 0x12c52]
000000014037544a movzx    r10d, byte ptr [rax + rsi + 0x12c42]
0000000140375453 movzx    r11d, byte ptr [rax + rsi + 0x12c32]
000000014037545c mov      dword ptr [rsp + 0x40], r8d
0000000140375461 mov      r8, r13
0000000140375464 mov      dword ptr [rsp + 0x38], r9d
0000000140375469 lea      r9, [rip + 0x2ca2e0]
0000000140375470 mov      dword ptr [rsp + 0x30], r10d
0000000140375475 movzx    eax, bpl
0000000140375479 mov      dword ptr [rsp + 0x28], r11d
000000014037547e mov      dword ptr [rsp + 0x20], eax
0000000140375482 call     0x14003c780
0000000140375487 add      bpl, bl
000000014037548a cmp      bpl, 0x10
000000014037548e jb       0x140375409
0000000140375494 lea      r11, [rsp + 0x60]
0000000140375499 mov      rbx, qword ptr [r11 + 0x30]
000000014037549d mov      rbp, qword ptr [r11 + 0x38]
00000001403754a1 mov      rsi, qword ptr [r11 + 0x40]
00000001403754a5 mov      rsp, r11
00000001403754a8 pop      r15
00000001403754aa pop      r14
00000001403754ac pop      r13
00000001403754ae pop      r12
00000001403754b0 pop      rdi
00000001403754b1 ret      