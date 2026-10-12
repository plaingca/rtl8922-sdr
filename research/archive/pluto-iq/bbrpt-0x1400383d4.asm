00000001400383d4 mov      qword ptr [rsp + 0x18], rsi
00000001400383d9 mov      qword ptr [rsp + 0x20], r12
00000001400383de push     r13
00000001400383e0 push     r14
00000001400383e2 push     r15
00000001400383e4 sub      rsp, 0x30
00000001400383e8 xor      r12d, r12d
00000001400383eb mov      r14, rcx
00000001400383ee test     rcx, rcx
00000001400383f1 jne      0x140038428
00000001400383f3 mov      rcx, qword ptr [rip + 0x8e7c06]
00000001400383fa lea      rsi, [rip + 0x8e7bff]
0000000140038401 cmp      rcx, rsi
0000000140038404 je       0x1400386e7
000000014003840a cmp      byte ptr [rcx + 0x29], 4
000000014003840e jb       0x1400386e7
0000000140038414 mov      eax, dword ptr [rcx + 0x2c]
0000000140038417 test     al, 2
0000000140038419 je       0x1400386e7
000000014003841f lea      edx, [r14 + 0x34]
0000000140038423 jmp      0x1400386d0
0000000140038428 mov      eax, dword ptr [rcx]
000000014003842a xchg     dword ptr [rcx], eax
000000014003842c test     eax, eax
000000014003842e jne      0x140038469
0000000140038430 mov      rcx, qword ptr [rip + 0x8e7bc9]
0000000140038437 lea      rsi, [rip + 0x8e7bc2]
000000014003843e cmp      rcx, rsi
0000000140038441 je       0x1400386e7
0000000140038447 cmp      byte ptr [rcx + 0x29], 4
000000014003844b jb       0x1400386e7
0000000140038451 mov      eax, dword ptr [rcx + 0x2c]
0000000140038454 test     al, 2
0000000140038456 je       0x1400386e7
000000014003845c mov      eax, dword ptr [r14]
000000014003845f mov      edx, 0x35
0000000140038464 jmp      0x140038695
0000000140038469 mov      rax, qword ptr [rip + 0xc9c788]
0000000140038470 mov      rdx, qword ptr [rcx + 0x10]
0000000140038474 mov      r8, qword ptr [rip + 0x8ed965]
000000014003847b mov      rcx, qword ptr [rip + 0xc9c7a6]
0000000140038482 mov      rax, qword ptr [rax + 0x650]
0000000140038489 call     qword ptr [rip + 0x64be69]
000000014003848f mov      r15, rax
0000000140038492 mov      qword ptr [rsp + 0x58], rax
0000000140038497 mov      r9, qword ptr [rax + 0x60]
000000014003849b mov      qword ptr [rsp + 0x50], r9
00000001400384a0 mov      rcx, qword ptr [rip + 0x8e7b59]
00000001400384a7 lea      rsi, [rip + 0x8e7b52]
00000001400384ae cmp      rcx, rsi
00000001400384b1 je       0x1400384f6
00000001400384b3 cmp      byte ptr [rcx + 0x29], 4
00000001400384b7 jb       0x1400384f6
00000001400384b9 mov      eax, dword ptr [rcx + 0x2c]
00000001400384bc test     al, 2
00000001400384be je       0x1400384f6
00000001400384c0 mov      eax, dword ptr [r9 + 0xaf390]
00000001400384c7 mov      edx, 0x36
00000001400384cc mov      r8, qword ptr [r14 + 0xaf288]
00000001400384d3 lea      r9, [rip + 0x5be976]
00000001400384da mov      rcx, qword ptr [rcx + 0x18]
00000001400384de mov      dword ptr [rsp + 0x28], eax
00000001400384e2 mov      eax, dword ptr [r8 + 8]
00000001400384e6 lea      r8, [rip + 0x651b03]
00000001400384ed mov      dword ptr [rsp + 0x20], eax
00000001400384f1 call     0x140002b04
00000001400384f6 mov      eax, dword ptr [r15 + 0x10]
00000001400384fa xchg     dword ptr [r15 + 0x10], eax
00000001400384fe cmp      eax, 1
0000000140038501 jne      0x1400386b2
0000000140038507 mov      rax, qword ptr [rip + 0xc9c6ea]
000000014003850e mov      rdx, qword ptr [r15 + 0x58]
0000000140038512 mov      r8, qword ptr [rip + 0x8ed917]
0000000140038519 mov      rcx, qword ptr [rip + 0xc9c708]
0000000140038520 mov      rax, qword ptr [rax + 0x650]
0000000140038527 call     qword ptr [rip + 0x64bdcb]
000000014003852d mov      r9d, 0x57b
0000000140038533 lea      r8, [rip + 0x5be916]
000000014003853a mov      edx, 0x10
000000014003853f mov      rcx, r14
0000000140038542 mov      r13, rax
0000000140038545 call     0x1405c3264
000000014003854a mov      rdx, qword ptr [rsp + 0x50]
000000014003854f jmp      0x1400385e0
0000000140038554 cmp      r15, rax
0000000140038557 je       0x1400385f3
000000014003855d mov      rax, qword ptr [r15 + 8]
0000000140038561 mov      rcx, qword ptr [r15]
0000000140038564 mov      qword ptr [rax], rcx
0000000140038567 mov      qword ptr [rcx + 8], rax
000000014003856b mov      qword ptr [r15], 0x100100
0000000140038572 mov      qword ptr [r15 + 8], 0x200200
000000014003857a dec      dword ptr [rdx + 0xaf390]
0000000140038580 mov      rcx, qword ptr [rip + 0x8e7a79]
0000000140038587 cmp      rcx, rsi
000000014003858a je       0x1400385c6
000000014003858c cmp      byte ptr [rcx + 0x29], 4
0000000140038590 jb       0x1400385c6
0000000140038592 mov      eax, dword ptr [rcx + 0x2c]
0000000140038595 test     al, 2
0000000140038597 je       0x1400385c6
0000000140038599 movzx    eax, word ptr [r15 + 0x3960]
00000001400385a1 lea      r9, [rip + 0x5be8a8]
00000001400385a8 mov      rcx, qword ptr [rcx + 0x18]
00000001400385ac lea      r8, [rip + 0x651a3d]
00000001400385b3 mov      edx, 0x37
00000001400385b8 mov      dword ptr [rsp + 0x20], eax
00000001400385bc call     0x1400088d8
00000001400385c1 mov      rdx, qword ptr [rsp + 0x50]
00000001400385c6 lea      rcx, [r13 + 0x10]
00000001400385ca mov      rax, qword ptr [rcx + 8]
00000001400385ce mov      qword ptr [r15], rcx
00000001400385d1 mov      qword ptr [r15 + 8], rax
00000001400385d5 mov      qword ptr [rax], r15
00000001400385d8 mov      qword ptr [rcx + 8], r15
00000001400385dc inc      dword ptr [r13 + 0x20]
00000001400385e0 lea      rax, [rdx + 0xaf380]
00000001400385e7 mov      r15, qword ptr [rax]
00000001400385ea test     r15, r15
00000001400385ed jne      0x140038554
00000001400385f3 mov      r9d, 0x584
00000001400385f9 lea      r8, [rip + 0x5be850]
0000000140038600 mov      edx, 0x10
0000000140038605 mov      rcx, r14
0000000140038608 call     0x1405c3724
000000014003860d xchg     dword ptr [r13 + 8], r12d
0000000140038611 cmp      r12d, 1
0000000140038615 jne      0x140038673
0000000140038617 mov      rcx, qword ptr [rip + 0x8e79e2]
000000014003861e cmp      rcx, rsi
0000000140038621 je       0x140038654
0000000140038623 cmp      byte ptr [rcx + 0x29], 4
0000000140038627 jb       0x140038654
0000000140038629 mov      eax, dword ptr [rcx + 0x2c]
000000014003862c test     al, 0x10
000000014003862e je       0x140038654
0000000140038630 mov      eax, dword ptr [r13 + 0x20]
0000000140038634 lea      edx, [r12 + 0x37]
0000000140038639 mov      rcx, qword ptr [rcx + 0x18]
000000014003863d lea      r9, [rip + 0x5be80c]
0000000140038644 lea      r8, [rip + 0x6519a5]
000000014003864b mov      dword ptr [rsp + 0x20], eax
000000014003864f call     0x1400088d8
0000000140038654 mov      rdx, qword ptr [rsp + 0x58]
0000000140038659 mov      rax, qword ptr [rip + 0xca7258]
0000000140038660 mov      rcx, qword ptr [rip + 0xca0ed1]
0000000140038667 mov      rdx, qword ptr [rdx + 0x58]
000000014003866b call     qword ptr [rip + 0x64bc87]
0000000140038671 jmp      0x1400386e7
0000000140038673 mov      rcx, qword ptr [rip + 0x8e7986]
000000014003867a cmp      rcx, rsi
000000014003867d je       0x1400386e7
000000014003867f cmp      byte ptr [rcx + 0x29], 4
0000000140038683 jb       0x1400386e7
0000000140038685 mov      eax, dword ptr [rcx + 0x2c]
0000000140038688 test     al, 0x10
000000014003868a je       0x1400386e7
000000014003868c mov      eax, dword ptr [r13 + 8]
0000000140038690 mov      edx, 0x39
0000000140038695 mov      rcx, qword ptr [rcx + 0x18]
0000000140038699 lea      r9, [rip + 0x5be7b0]
00000001400386a0 lea      r8, [rip + 0x651949]
00000001400386a7 mov      dword ptr [rsp + 0x20], eax
00000001400386ab call     0x1400088d8
00000001400386b0 jmp      0x1400386e7
00000001400386b2 mov      rcx, qword ptr [rip + 0x8e7947]
00000001400386b9 cmp      rcx, rsi
00000001400386bc je       0x1400386e7
00000001400386be cmp      byte ptr [rcx + 0x29], 4
00000001400386c2 jb       0x1400386e7
00000001400386c4 mov      eax, dword ptr [rcx + 0x2c]
00000001400386c7 test     al, 2
00000001400386c9 je       0x1400386e7
00000001400386cb mov      edx, 0x3a
00000001400386d0 mov      rcx, qword ptr [rcx + 0x18]
00000001400386d4 lea      r9, [rip + 0x5be775]
00000001400386db lea      r8, [rip + 0x65190e]
00000001400386e2 call     0x140008874
00000001400386e7 mov      rsi, qword ptr [rsp + 0x60]
00000001400386ec mov      r12, qword ptr [rsp + 0x68]
00000001400386f1 add      rsp, 0x30
00000001400386f5 pop      r15
00000001400386f7 pop      r14
00000001400386f9 pop      r13
00000001400386fb ret      