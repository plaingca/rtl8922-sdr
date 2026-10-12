0000000140457340 mov      rax, rsp
0000000140457343 mov      qword ptr [rax + 8], rbx
0000000140457347 mov      qword ptr [rax + 0x10], rbp
000000014045734b mov      qword ptr [rax + 0x20], rsi
000000014045734f mov      qword ptr [rax + 0x18], r8
0000000140457353 push     rdi
0000000140457354 push     r12
0000000140457356 push     r13
0000000140457358 push     r14
000000014045735a push     r15
000000014045735c sub      rsp, 0x40
0000000140457360 mov      edi, dword ptr [rdx]
0000000140457362 mov      r12d, r9d
0000000140457365 mov      r13, qword ptr [rcx + 0x1390]
000000014045736c mov      r15, rdx
000000014045736f mov      rbx, rcx
0000000140457372 xor      sil, sil
0000000140457375 mov      rcx, qword ptr [rip + 0x4c8c84]
000000014045737c lea      r14, [rip + 0x4c8c7d]
0000000140457383 cmp      rcx, r14
0000000140457386 je       0x1404573ba
0000000140457388 cmp      byte ptr [rcx + 0x169], 1
000000014045738f jb       0x1404573ba
0000000140457391 mov      eax, dword ptr [rcx + 0x16c]
0000000140457397 test     al, 8
0000000140457399 je       0x1404573ba
000000014045739b mov      rcx, qword ptr [rcx + 0x158]
00000001404573a2 lea      r9, [rip + 0x2008f7]
00000001404573a9 mov      edx, 0x60
00000001404573ae lea      r8, [rip + 0x286483]
00000001404573b5 call     0x140008874
00000001404573ba mov      rax, qword ptr [rbx + 0x18]
00000001404573be mov      edx, edi
00000001404573c0 mov      rcx, qword ptr [rbx + 8]
00000001404573c4 mov      rax, qword ptr [rax + 0x98]
00000001404573cb call     qword ptr [rip + 0x22cf27]
00000001404573d1 mov      rbp, rax
00000001404573d4 test     rax, rax
00000001404573d7 jne      0x140457418
00000001404573d9 mov      rcx, qword ptr [rip + 0x4c8c20]
00000001404573e0 cmp      rcx, r14
00000001404573e3 je       0x14045740e
00000001404573e5 cmp      byte ptr [rcx + 0x169], 2
00000001404573ec jb       0x14045740e
00000001404573ee mov      eax, dword ptr [rcx + 0x16c]
00000001404573f4 test     al, 8
00000001404573f6 je       0x14045740e
00000001404573f8 mov      rcx, qword ptr [rcx + 0x158]
00000001404573ff lea      edx, [rbp + 0x61]
0000000140457402 lea      r8, [rip + 0x28642f]
0000000140457409 call     0x140001b88
000000014045740e mov      eax, 0xe
0000000140457413 jmp      0x14045774c
0000000140457418 mov      rax, qword ptr [rbx + 0x18]
000000014045741c mov      r9d, edi
000000014045741f mov      rcx, qword ptr [rbx + 8]
0000000140457423 mov      r8b, 0xff
0000000140457426 mov      rdx, rbp
0000000140457429 mov      rax, qword ptr [rax + 0xa8]
0000000140457430 call     qword ptr [rip + 0x22cec2]
0000000140457436 cmp      byte ptr [rsp + 0x90], sil
000000014045743e je       0x1404574e9
0000000140457444 mov      rax, qword ptr [rbx + 0x18]
0000000140457448 mov      r9d, edi
000000014045744b mov      r8, qword ptr [rbx + 0x2f8]
0000000140457452 mov      rdx, rbp
0000000140457455 mov      rcx, qword ptr [rbx + 8]
0000000140457459 mov      rax, qword ptr [rax + 0xa0]
0000000140457460 mov      r8, qword ptr [r8]
0000000140457463 call     qword ptr [rip + 0x22ce8f]
0000000140457469 mov      rax, qword ptr [rbx + 0x18]
000000014045746d mov      edx, edi
000000014045746f mov      rcx, qword ptr [rbx + 8]
0000000140457473 mov      rax, qword ptr [rax + 0x98]
000000014045747a call     qword ptr [rip + 0x22ce78]
0000000140457480 mov      r14, rax
0000000140457483 test     rax, rax
0000000140457486 jne      0x140457571
000000014045748c mov      rcx, qword ptr [rip + 0x4c8b6d]
0000000140457493 lea      rax, [rip + 0x4c8b66]
000000014045749a cmp      rcx, rax
000000014045749d je       0x1404574c9
000000014045749f cmp      byte ptr [rcx + 0x169], 2
00000001404574a6 jb       0x1404574c9
00000001404574a8 mov      eax, dword ptr [rcx + 0x16c]
00000001404574ae test     al, 8
00000001404574b0 je       0x1404574c9
00000001404574b2 mov      rcx, qword ptr [rcx + 0x158]
00000001404574b9 lea      edx, [r14 + 0x63]
00000001404574bd lea      r8, [rip + 0x286374]
00000001404574c4 call     0x140001b88
00000001404574c9 mov      rax, qword ptr [rbx + 0x18]
00000001404574cd mov      r8d, edi
00000001404574d0 mov      rcx, qword ptr [rbx + 8]
00000001404574d4 mov      rdx, rbp
00000001404574d7 mov      rax, qword ptr [rax + 0x90]
00000001404574de call     qword ptr [rip + 0x22ce14]
00000001404574e4 jmp      0x14045740e
00000001404574e9 lea      rdx, [rsp + 0x30]
00000001404574ee mov      qword ptr [rsp + 0x30], rbp
00000001404574f3 mov      rcx, rbx
00000001404574f6 mov      dword ptr [rsp + 0x38], r12d
00000001404574fb mov      dword ptr [rsp + 0x3c], edi
00000001404574ff call     0x140456fb0
0000000140457504 mov      r14d, eax
0000000140457507 test     eax, eax
0000000140457509 je       0x140457469
000000014045750f mov      rcx, qword ptr [rip + 0x4c8aea]
0000000140457516 lea      rax, [rip + 0x4c8ae3]
000000014045751d cmp      rcx, rax
0000000140457520 je       0x14045754e
0000000140457522 cmp      byte ptr [rcx + 0x169], 2
0000000140457529 jb       0x14045754e
000000014045752b mov      edx, dword ptr [rcx + 0x16c]
0000000140457531 test     dl, 8
0000000140457534 je       0x14045754e
0000000140457536 mov      rcx, qword ptr [rcx + 0x158]
000000014045753d lea      r8, [rip + 0x2862f4]
0000000140457544 mov      edx, 0x62
0000000140457549 call     0x140001b88
000000014045754e mov      rax, qword ptr [rbx + 0x18]
0000000140457552 mov      r8d, edi
0000000140457555 mov      rcx, qword ptr [rbx + 8]
0000000140457559 mov      rdx, rbp
000000014045755c mov      rax, qword ptr [rax + 0x90]
0000000140457563 call     qword ptr [rip + 0x22cd8f]
0000000140457569 mov      eax, r14d
000000014045756c jmp      0x14045774c
0000000140457571 mov      rax, qword ptr [rbx + 0x18]
0000000140457575 mov      r9d, edi
0000000140457578 mov      rcx, qword ptr [rbx + 8]
000000014045757c mov      r8b, 0xff
000000014045757f mov      rdx, r14
0000000140457582 mov      rax, qword ptr [rax + 0xa8]
0000000140457589 call     qword ptr [rip + 0x22cd69]
000000014045758f mov      rdx, qword ptr [rbx + 0x2f0]
0000000140457596 lea      r8, [rsp + 0x30]
000000014045759b mov      qword ptr [rsp + 0x30], r14
00000001404575a0 mov      r9d, 1
00000001404575a6 mov      dword ptr [rsp + 0x38], r12d
00000001404575ab mov      rcx, rbx
00000001404575ae mov      dword ptr [rsp + 0x3c], edi
00000001404575b2 mov      rdx, qword ptr [rdx]
00000001404575b5 mov      rax, qword ptr [r13 + 0x508]
00000001404575bc call     qword ptr [rip + 0x22cd36]
00000001404575c2 mov      r12d, eax
00000001404575c5 test     eax, eax
00000001404575c7 je       0x140457646
00000001404575c9 mov      rcx, qword ptr [rip + 0x4c8a30]
00000001404575d0 lea      rax, [rip + 0x4c8a29]
00000001404575d7 cmp      rcx, rax
00000001404575da je       0x140457608
00000001404575dc cmp      byte ptr [rcx + 0x169], 2
00000001404575e3 jb       0x140457608
00000001404575e5 mov      edx, dword ptr [rcx + 0x16c]
00000001404575eb test     dl, 8
00000001404575ee je       0x140457608
00000001404575f0 mov      rcx, qword ptr [rcx + 0x158]
00000001404575f7 lea      r8, [rip + 0x28623a]
00000001404575fe mov      edx, 0x64
0000000140457603 call     0x140001b88
0000000140457608 mov      rax, qword ptr [rbx + 0x18]
000000014045760c mov      r8d, edi
000000014045760f mov      rcx, qword ptr [rbx + 8]
0000000140457613 mov      rdx, r14
0000000140457616 mov      rax, qword ptr [rax + 0x90]
000000014045761d call     qword ptr [rip + 0x22ccd5]
0000000140457623 mov      rax, qword ptr [rbx + 0x18]
0000000140457627 mov      r8d, edi
000000014045762a mov      rcx, qword ptr [rbx + 8]
000000014045762e mov      rdx, rbp
0000000140457631 mov      rax, qword ptr [rax + 0x90]
0000000140457638 call     qword ptr [rip + 0x22ccba]
000000014045763e mov      eax, r12d
0000000140457641 jmp      0x14045774c
0000000140457646 mov      rax, qword ptr [rbx + 0x18]
000000014045764a mov      r12, qword ptr [rsp + 0x80]
0000000140457652 mov      r9d, dword ptr [r15 + 4]
0000000140457656 mov      rdx, r12
0000000140457659 mov      r8, qword ptr [r15 + 0x10]
000000014045765d mov      rax, qword ptr [rax + 0xa0]
0000000140457664 mov      rcx, qword ptr [rbx + 8]
0000000140457668 mov      r13, qword ptr [r15 + 8]
000000014045766c call     qword ptr [rip + 0x22cc86]
0000000140457672 xor      r8d, r8d
0000000140457675 cmp      dword ptr [r15], r8d
0000000140457678 jbe      0x140457714
000000014045767e xor      dl, dl
0000000140457680 mov      r9d, r8d
0000000140457683 shr      r9d, 4
0000000140457687 mov      r10d, r8d
000000014045768a movzx    eax, dl
000000014045768d add      rax, r10
0000000140457690 movzx    ecx, ax
0000000140457693 movzx    eax, word ptr [rcx + rbp]
0000000140457697 cmp      word ptr [rcx + r13], ax
000000014045769c jne      0x1404576ff
000000014045769e cmp      byte ptr [rcx + r14], 0
00000001404576a3 jne      0x1404576ff
00000001404576a5 test     dl, dl
00000001404576a7 je       0x1404576ef
00000001404576a9 cmp      dl, 2
00000001404576ac je       0x1404576ea
00000001404576ae cmp      dl, 4
00000001404576b1 je       0x1404576e5
00000001404576b3 cmp      dl, 6
00000001404576b6 je       0x1404576e0
00000001404576b8 cmp      dl, 8
00000001404576bb je       0x1404576db
00000001404576bd cmp      dl, 0xa
00000001404576c0 je       0x1404576d6
00000001404576c2 cmp      dl, 0xc
00000001404576c5 je       0x1404576d1
00000001404576c7 cmp      dl, 0xe
00000001404576ca jne      0x1404576f2
00000001404576cc mov      sil, 8
00000001404576cf jmp      0x1404576f2
00000001404576d1 mov      sil, 4
00000001404576d4 jmp      0x1404576f2
00000001404576d6 mov      sil, 2
00000001404576d9 jmp      0x1404576f2
00000001404576db mov      sil, 1
00000001404576de jmp      0x1404576f2
00000001404576e0 mov      sil, 0x80
00000001404576e3 jmp      0x1404576f2
00000001404576e5 mov      sil, 0x40
00000001404576e8 jmp      0x1404576f2
00000001404576ea mov      sil, 0x20
00000001404576ed jmp      0x1404576f2
00000001404576ef mov      sil, 0x10
00000001404576f2 movzx    ecx, r9w
00000001404576f6 mov      al, sil
00000001404576f9 not      al
00000001404576fb and      byte ptr [rcx + r12], al
00000001404576ff add      dl, 2
0000000140457702 cmp      dl, 0x10
0000000140457705 jb       0x14045768a
0000000140457707 add      r8d, 0x10
000000014045770b cmp      r8d, dword ptr [r15]
000000014045770e jb       0x14045767e
0000000140457714 mov      rax, qword ptr [rbx + 0x18]
0000000140457718 mov      r8d, edi
000000014045771b mov      rcx, qword ptr [rbx + 8]
000000014045771f mov      rdx, rbp
0000000140457722 mov      rax, qword ptr [rax + 0x90]
0000000140457729 call     qword ptr [rip + 0x22cbc9]
000000014045772f mov      rax, qword ptr [rbx + 0x18]
0000000140457733 mov      r8d, edi
0000000140457736 mov      rcx, qword ptr [rbx + 8]
000000014045773a mov      rdx, r14
000000014045773d mov      rax, qword ptr [rax + 0x90]
0000000140457744 call     qword ptr [rip + 0x22cbae]
000000014045774a xor      eax, eax
000000014045774c lea      r11, [rsp + 0x40]
0000000140457751 mov      rbx, qword ptr [r11 + 0x30]
0000000140457755 mov      rbp, qword ptr [r11 + 0x38]
0000000140457759 mov      rsi, qword ptr [r11 + 0x48]
000000014045775d mov      rsp, r11
0000000140457760 pop      r15
0000000140457762 pop      r14
0000000140457764 pop      r13
0000000140457766 pop      r12
0000000140457768 pop      rdi
0000000140457769 ret      