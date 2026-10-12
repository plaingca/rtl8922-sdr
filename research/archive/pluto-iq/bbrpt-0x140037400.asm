0000000140037400 mov      qword ptr [rsp + 8], rbx
0000000140037405 push     rbp
0000000140037406 push     rsi
0000000140037407 push     rdi
0000000140037408 push     r12
000000014003740a push     r13
000000014003740c push     r14
000000014003740e push     r15
0000000140037410 sub      rsp, 0x90
0000000140037417 mov      rax, qword ptr [rip + 0xc9d7da]
000000014003741e mov      rdx, rcx
0000000140037421 mov      r8, qword ptr [rip + 0x8eea08]
0000000140037428 mov      rcx, qword ptr [rip + 0xc9d7f9]
000000014003742f mov      rax, qword ptr [rax + 0x650]
0000000140037436 call     qword ptr [rip + 0x64cebc]
000000014003743c xor      edi, edi
000000014003743e mov      r15, rax
0000000140037441 movzx    ebx, di
0000000140037444 movzx    r12d, di
0000000140037448 mov      rdx, qword ptr [rax + 0x28]
000000014003744c mov      rcx, qword ptr [rax]
000000014003744f mov      r14, qword ptr [rdx]
0000000140037452 mov      r13, qword ptr [rcx + 0x60]
0000000140037456 mov      rbp, qword ptr [rdx + 8]
000000014003745a mov      rcx, qword ptr [rip + 0x8e8b9f]
0000000140037461 lea      rax, [rip + 0x8e8b98]
0000000140037468 cmp      rcx, rax
000000014003746b je       0x140037507
0000000140037471 cmp      byte ptr [rcx + 0x29], 5
0000000140037475 jb       0x140037507
000000014003747b mov      eax, dword ptr [rcx + 0x2c]
000000014003747e test     al, 0x10
0000000140037480 je       0x140037507
0000000140037486 mov      r10d, dword ptr [rbp + 0xc]
000000014003748a mov      edx, 0x21
000000014003748f mov      r11d, dword ptr [rbp + 0x30]
0000000140037493 mov      r9d, r10d
0000000140037496 mov      ebx, dword ptr [r14 + 0xc]
000000014003749a sub      r9d, r11d
000000014003749d and      r9d, dword ptr [rbp + 8]
00000001400374a1 mov      eax, ebx
00000001400374a3 mov      edi, dword ptr [r14 + 0x30]
00000001400374a7 sub      eax, edi
00000001400374a9 and      eax, dword ptr [r14 + 8]
00000001400374ad mov      r8, qword ptr [r13 + 0xaf288]
00000001400374b4 mov      rcx, qword ptr [rcx + 0x18]
00000001400374b8 mov      dword ptr [rsp + 0x60], r10d
00000001400374bd mov      dword ptr [rsp + 0x58], r11d
00000001400374c2 mov      dword ptr [rsp + 0x50], r9d
00000001400374c7 lea      r9, [rip + 0x5bf7d2]
00000001400374ce mov      dword ptr [rsp + 0x48], ebx
00000001400374d2 mov      dword ptr [rsp + 0x40], edi
00000001400374d6 mov      dword ptr [rsp + 0x38], eax
00000001400374da mov      eax, dword ptr [r13 + 0xaf390]
00000001400374e1 mov      dword ptr [rsp + 0x30], eax
00000001400374e5 mov      eax, dword ptr [r8 + 8]
00000001400374e9 lea      r8, [rip + 0x652b00]
00000001400374f0 mov      dword ptr [rsp + 0x28], eax
00000001400374f4 mov      eax, dword ptr [r15 + 0x20]
00000001400374f8 mov      dword ptr [rsp + 0x20], eax
00000001400374fc call     0x140038830
0000000140037501 xor      edi, edi
0000000140037503 movzx    ebx, r12w
0000000140037507 lea      r8, [r15 + 0x20]
000000014003750b mov      r9, rbp
000000014003750e lea      rdx, [r15 + 0x10]
0000000140037512 mov      rcx, r13
0000000140037515 call     0x140038704
000000014003751a mov      rsi, rax
000000014003751d test     rax, rax
0000000140037520 je       0x140037928
0000000140037526 mov      r11d, 1
000000014003752c mov      al, byte ptr [rsi + 0x3938]
0000000140037532 add      bx, r11w
0000000140037536 mov      word ptr [rsp + 0xe0], bx
000000014003753e test     al, al
0000000140037540 jne      0x1400376cc
0000000140037546 cmp      byte ptr [rsi + 0x3972], dil
000000014003754d je       0x1400375c0
000000014003754f mov      rax, qword ptr [rsi + 0x18]
0000000140037553 movzx    r8d, word ptr [rsi + 0x22]
0000000140037558 add      r8, qword ptr [rax]
000000014003755b je       0x1400375c0
000000014003755d mov      rcx, qword ptr [rip + 0x8e8a9c]
0000000140037564 lea      rax, [rip + 0x8e8a95]
000000014003756b cmp      rcx, rax
000000014003756e je       0x1400375c0
0000000140037570 cmp      byte ptr [rcx + 0x29], 4
0000000140037574 jb       0x1400375c0
0000000140037576 mov      eax, dword ptr [rcx + 0x2c]
0000000140037579 test     al, al
000000014003757b jns      0x1400375c0
000000014003757d movzx    eax, word ptr [rsi + 0x20]
0000000140037581 lea      r9, [rip + 0x5bf738]
0000000140037588 mov      rcx, qword ptr [rcx + 0x18]
000000014003758c mov      edx, 0x22
0000000140037591 mov      qword ptr [rsp + 0x88], rax
0000000140037599 lea      rax, [rsp + 0x80]
00000001400375a1 mov      qword ptr [rsp + 0x80], r8
00000001400375a9 lea      r8, [rip + 0x652a40]
00000001400375b0 mov      qword ptr [rsp + 0x20], rax
00000001400375b5 call     0x140001c88
00000001400375ba mov      r11d, 1
00000001400375c0 mov      r10d, dword ptr [rbp + 0x30]
00000001400375c4 movabs   rax, 0xc00fffffffffffff
00000001400375ce movzx    r8d, word ptr [rbp + 2]
00000001400375d3 mov      r9d, r10d
00000001400375d6 imul     r9, qword ptr [r15 + 0x38]
00000001400375db imul     r8, r10
00000001400375df imul     r10, qword ptr [r15 + 0x60]
00000001400375e4 add      r9, qword ptr [r15 + 0x30]
00000001400375e8 add      r10, qword ptr [r15 + 0x58]
00000001400375ec and      qword ptr [r8 + rbp + 0x40], rax
00000001400375f1 mov      rax, qword ptr [rsi + 0x18]
00000001400375f5 mov      rcx, qword ptr [r8 + rbp + 0x40]
00000001400375fa movzx    edx, word ptr [rax + 0x10]
00000001400375fe movabs   rax, 0xfff0000003ffffff
0000000140037608 and      rcx, rax
000000014003760b shl      rdx, 0x1a
000000014003760f or       rdx, rcx
0000000140037612 mov      qword ptr [r8 + rbp + 0x40], rdx
0000000140037617 and      rdx, 0xfffffffffc000000
000000014003761e mov      rax, qword ptr [rsi + 0x18]
0000000140037622 movzx    ecx, word ptr [rax + 0x10]
0000000140037626 or       rcx, rdx
0000000140037629 mov      qword ptr [r8 + rbp + 0x40], rcx
000000014003762e mov      rax, qword ptr [rsi + 0x18]
0000000140037632 movzx    ecx, word ptr [rsi + 0x22]
0000000140037636 add      rcx, qword ptr [rax]
0000000140037639 mov      qword ptr [r9], rcx
000000014003763c mov      eax, dword ptr [r14 + 0x30]
0000000140037640 movzx    ecx, word ptr [r14 + 2]
0000000140037645 imul     rcx, rax
0000000140037649 mov      word ptr [rcx + r14 + 0x44], r11w
000000014003764f mov      eax, dword ptr [rbp + 0x30]
0000000140037652 mov      dword ptr [rcx + r14 + 0x40], eax
0000000140037657 xor      eax, eax
0000000140037659 mov      dword ptr [rcx + r14 + 0x46], eax
000000014003765e mov      byte ptr [rcx + r14 + 0x4a], al
0000000140037663 mov      rax, qword ptr [r13 + 0xaf280]
000000014003766a mov      edx, dword ptr [rsi + 0x39f4]
0000000140037670 cmp      byte ptr [rax + 0x502], dil
0000000140037677 je       0x14003769d
0000000140037679 mov      ecx, dword ptr [r14 + 0x30]
000000014003767d imul     rcx, qword ptr [r15 + 0x88]
0000000140037685 add      rcx, qword ptr [r15 + 0x80]
000000014003768c mov      al, byte ptr [rcx]
000000014003768e cmp      edx, 4
0000000140037691 jge      0x140037699
0000000140037693 and      al, 0xd4
0000000140037695 or       al, 0x14
0000000140037697 jmp      0x14003769b
0000000140037699 and      al, 0xc0
000000014003769b mov      byte ptr [rcx], al
000000014003769d mov      qword ptr [r10], rsi
00000001400376a0 mov      eax, dword ptr [rbp + 0x30]
00000001400376a3 add      eax, r11d
00000001400376a6 and      eax, dword ptr [rbp + 8]
00000001400376a9 mov      dword ptr [rbp + 0x30], eax
00000001400376ac mov      eax, dword ptr [r14 + 0x30]
00000001400376b0 add      eax, r11d
00000001400376b3 and      eax, dword ptr [r14 + 8]
00000001400376b7 mov      dword ptr [r14 + 0x30], eax
00000001400376bb add      r12w, r11w
00000001400376bf mov      eax, edi
00000001400376c1 xchg     dword ptr [rsi + 0x393c], eax
00000001400376c7 jmp      0x14003789c
00000001400376cc mov      word ptr [rsp + 0xd8], di
00000001400376d4 lea      r9, [rsi + 0x26]
00000001400376d8 mov      qword ptr [rsp + 0xe8], r9
00000001400376e0 test     al, al
00000001400376e2 je       0x14003789c
00000001400376e8 mov      ecx, dword ptr [rbp + 0x30]
00000001400376eb mov      r8d, 0x18
00000001400376f1 movzx    eax, word ptr [rbp + 2]
00000001400376f5 mov      edi, ecx
00000001400376f7 imul     rdi, qword ptr [r15 + 0x38]
00000001400376fc imul     rax, rcx
0000000140037700 imul     rcx, qword ptr [r15 + 0x60]
0000000140037705 movzx    edx, word ptr [rsi + 0x22]
0000000140037709 add      rdi, qword ptr [r15 + 0x30]
000000014003770d mov      qword ptr [rsp + 0x70], rax
0000000140037712 mov      rax, qword ptr [rsi + 0x18]
0000000140037716 add      rcx, qword ptr [r15 + 0x58]
000000014003771a mov      qword ptr [rsp + 0x78], rcx
000000014003771f mov      rcx, r9
0000000140037722 add      rdx, qword ptr [rax]
0000000140037725 call     0x1400311e8
000000014003772a movzx    ebx, word ptr [rsp + 0xd8]
0000000140037732 mov      rcx, qword ptr [rsp + 0xe8]
000000014003773a add      rcx, 0x18
000000014003773e movzx    r8d, word ptr [rsi + rbx*2 + 0x38b8]
0000000140037747 mov      rdx, qword ptr [rsi + rbx*8 + 0x36b8]
000000014003774f call     0x1400311e8
0000000140037754 mov      r8, qword ptr [rsp + 0x70]
0000000140037759 movabs   rax, 0xc00fffffffffffff
0000000140037763 mov      r9, qword ptr [rsp + 0xe8]
000000014003776b movabs   rdx, 0xfff0000003ffffff
0000000140037775 mov      r10d, 1
000000014003777b and      qword ptr [r8 + rbp + 0x40], rax
0000000140037780 movzx    ecx, word ptr [rsi + rbx*2 + 0x38b8]
0000000140037788 mov      rax, qword ptr [r8 + rbp + 0x40]
000000014003778d add      rcx, 0x18
0000000140037791 and      rax, rdx
0000000140037794 shl      rcx, 0x1a
0000000140037798 or       rcx, rax
000000014003779b mov      qword ptr [r8 + rbp + 0x40], rcx
00000001400377a0 and      rcx, 0xfffffffffc000000
00000001400377a7 movzx    eax, word ptr [rsi + rbx*2 + 0x38b8]
00000001400377af add      rax, 0x18
00000001400377b3 or       rax, rcx
00000001400377b6 mov      qword ptr [r8 + rbp + 0x40], rax
00000001400377bb mov      qword ptr [rdi], r9
00000001400377be xor      edi, edi
00000001400377c0 movzx    eax, word ptr [r14 + 2]
00000001400377c5 mov      ecx, dword ptr [r14 + 0x30]
00000001400377c9 imul     rcx, rax
00000001400377cd mov      word ptr [rcx + r14 + 0x44], r10w
00000001400377d3 mov      eax, dword ptr [rbp + 0x30]
00000001400377d6 mov      dword ptr [rcx + r14 + 0x40], eax
00000001400377db xor      eax, eax
00000001400377dd mov      dword ptr [rcx + r14 + 0x46], eax
00000001400377e2 mov      byte ptr [rcx + r14 + 0x4a], al
00000001400377e7 mov      rax, qword ptr [r13 + 0xaf280]
00000001400377ee mov      edx, dword ptr [rsi + 0x39f4]
00000001400377f4 cmp      byte ptr [rax + 0x502], dil
00000001400377fb je       0x140037821
00000001400377fd mov      ecx, dword ptr [r14 + 0x30]
0000000140037801 imul     rcx, qword ptr [r15 + 0x88]
0000000140037809 add      rcx, qword ptr [r15 + 0x80]
0000000140037810 mov      al, byte ptr [rcx]
0000000140037812 cmp      edx, 4
0000000140037815 jge      0x14003781d
0000000140037817 and      al, 0xd4
0000000140037819 or       al, 0x14
000000014003781b jmp      0x14003781f
000000014003781d and      al, 0xc0
000000014003781f mov      byte ptr [rcx], al
0000000140037821 movzx    edx, word ptr [rsp + 0xd8]
0000000140037829 add      r12w, r10w
000000014003782d mov      rax, qword ptr [rsp + 0x78]
0000000140037832 mov      qword ptr [rax], rsi
0000000140037835 mov      eax, dword ptr [rbp + 0x30]
0000000140037838 add      eax, r10d
000000014003783b and      eax, dword ptr [rbp + 8]
000000014003783e mov      dword ptr [rbp + 0x30], eax
0000000140037841 mov      eax, dword ptr [r14 + 0x30]
0000000140037845 add      eax, r10d
0000000140037848 and      eax, dword ptr [r14 + 8]
000000014003784c mov      dword ptr [r14 + 0x30], eax
0000000140037850 lea      eax, [r10 + rdx]
0000000140037854 xchg     dword ptr [rsi + 0x393c], eax
000000014003785a mov      ecx, dword ptr [r8 + rbp + 0x40]
000000014003785f add      dx, r10w
0000000140037863 movzx    eax, byte ptr [rsi + 0x3938]
000000014003786a and      ecx, 0x3ffffff
0000000140037870 add      rcx, 3
0000000140037874 mov      word ptr [rsp + 0xd8], dx
000000014003787c and      rcx, 0xfffffffffffffffc
0000000140037880 add      r9, rcx
0000000140037883 mov      qword ptr [rsp + 0xe8], r9
000000014003788b cmp      dx, ax
000000014003788e jb       0x1400376e8
0000000140037894 movzx    ebx, word ptr [rsp + 0xe0]
000000014003789c mov      r9, rbp
000000014003789f lea      r8, [r15 + 0x20]
00000001400378a3 lea      rdx, [r15 + 0x10]
00000001400378a7 mov      rcx, r13
00000001400378aa call     0x140038704
00000001400378af mov      rsi, rax
00000001400378b2 mov      r11d, 1
00000001400378b8 test     rax, rax
00000001400378bb jne      0x14003752c
00000001400378c1 test     bx, bx
00000001400378c4 jne      0x1400378cc
00000001400378c6 test     r12w, r12w
00000001400378ca je       0x140037928
00000001400378cc mov      rcx, qword ptr [rip + 0x8e872d]
00000001400378d3 lea      rax, [rip + 0x8e8726]
00000001400378da cmp      rcx, rax
00000001400378dd je       0x140037919
00000001400378df cmp      byte ptr [rcx + 0x29], 5
00000001400378e3 jb       0x140037919
00000001400378e5 mov      eax, dword ptr [rcx + 0x2c]
00000001400378e8 test     al, 0x10
00000001400378ea je       0x140037919
00000001400378ec mov      rcx, qword ptr [rcx + 0x18]
00000001400378f0 lea      r9, [rip + 0x5bf3a9]
00000001400378f7 movzx    eax, r12w
00000001400378fb lea      r8, [rip + 0x6526ee]
0000000140037902 movzx    r10d, bx
0000000140037906 mov      edx, 0x23
000000014003790b mov      dword ptr [rsp + 0x28], eax
000000014003790f mov      dword ptr [rsp + 0x20], r10d
0000000140037914 call     0x140002b04
0000000140037919 movzx    r8d, r12w
000000014003791d movzx    edx, bx
0000000140037920 mov      rcx, r13
0000000140037923 call     0x14003d2d4
0000000140037928 mov      rbx, qword ptr [rsp + 0xd0]
0000000140037930 add      rsp, 0x90
0000000140037937 pop      r15
0000000140037939 pop      r14
000000014003793b pop      r13
000000014003793d pop      r12
000000014003793f pop      rdi
0000000140037940 pop      rsi
0000000140037941 pop      rbp
0000000140037942 ret      