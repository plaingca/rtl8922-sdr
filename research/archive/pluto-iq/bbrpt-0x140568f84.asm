0000000140568f84 mov      rax, rsp
0000000140568f87 mov      qword ptr [rax + 0x20], r9
0000000140568f8b mov      dword ptr [rax + 0x18], r8d
0000000140568f8f mov      qword ptr [rax + 0x10], rdx
0000000140568f93 mov      qword ptr [rax + 8], rcx
0000000140568f97 push     rbp
0000000140568f98 push     rbx
0000000140568f99 push     rsi
0000000140568f9a push     rdi
0000000140568f9b push     r12
0000000140568f9d push     r13
0000000140568f9f push     r14
0000000140568fa1 push     r15
0000000140568fa3 mov      rbp, rsp
0000000140568fa6 sub      rsp, 0x68
0000000140568faa mov      rax, qword ptr [rcx]
0000000140568fad lea      r15, [rcx + 0x1208]
0000000140568fb4 mov      r12, rdx
0000000140568fb7 mov      rbx, rcx
0000000140568fba xor      r13d, r13d
0000000140568fbd mov      rdx, r15
0000000140568fc0 mov      rsi, r9
0000000140568fc3 mov      dword ptr [rbp - 0x38], r13d
0000000140568fc7 mov      r14, qword ptr [rax]
0000000140568fca mov      edi, r8d
0000000140568fcd mov      rax, qword ptr [rcx + 0x18]
0000000140568fd1 mov      rcx, qword ptr [rcx + 8]
0000000140568fd5 mov      qword ptr [rbp - 0x18], r14
0000000140568fd9 mov      rax, qword ptr [rax + 0x108]
0000000140568fe0 call     qword ptr [rip + 0x11b312]
0000000140568fe6 mov      ecx, dword ptr [rbx + 0xef8]
0000000140568fec lea      edx, [r13 + 1]
0000000140568ff0 inc      ecx
0000000140568ff2 mov      dword ptr [rbx + 0xef8], ecx
0000000140568ff8 cmp      ecx, edx
0000000140568ffa je       0x14056904b
0000000140568ffc mov      rax, qword ptr [rbx + 0x18]
0000000140569000 lea      r8, [rip + 0xfc4f9]
0000000140569007 mov      r9d, dword ptr [rbp + 0x68]
000000014056900b lea      edx, [r13 + 2]
000000014056900f mov      dword ptr [rsp + 0x20], ecx
0000000140569013 mov      rcx, qword ptr [rbx + 8]
0000000140569017 mov      rax, qword ptr [rax + 0x118]
000000014056901e call     qword ptr [rip + 0x11b2d4]
0000000140569024 mov      rax, qword ptr [rbx + 0x18]
0000000140569028 mov      rdx, r15
000000014056902b dec      dword ptr [rbx + 0xef8]
0000000140569031 mov      rcx, qword ptr [rbx + 8]
0000000140569035 mov      rax, qword ptr [rax + 0x110]
000000014056903c call     qword ptr [rip + 0x11b2b6]
0000000140569042 lea      eax, [r13 + 0x10]
0000000140569046 jmp      0x14056c7ac
000000014056904b mov      eax, dword ptr [rbp + 0x68]
000000014056904e cmp      eax, 0x24
0000000140569051 ja       0x14056a2d7
0000000140569057 je       0x14056a25c
000000014056905d cmp      eax, 0x12
0000000140569060 ja       0x140569a03
0000000140569066 je       0x14056998c
000000014056906c cmp      eax, 9
000000014056906f ja       0x1405695a6
0000000140569075 je       0x140569542
000000014056907b test     eax, eax
000000014056907d je       0x14056949b
0000000140569083 sub      eax, edx
0000000140569085 je       0x140569425
000000014056908b sub      eax, edx
000000014056908d je       0x1405693af
0000000140569093 sub      eax, edx
0000000140569095 je       0x140569339
000000014056909b sub      eax, edx
000000014056909d je       0x1405692c6
00000001405690a3 sub      eax, edx
00000001405690a5 je       0x14056924a
00000001405690ab sub      eax, edx
00000001405690ad je       0x1405691d8
00000001405690b3 sub      eax, edx
00000001405690b5 je       0x14056915c
00000001405690bb cmp      eax, edx
00000001405690bd jne      0x14056c784
00000001405690c3 mov      rax, qword ptr [r14 + 0x10]
00000001405690c7 mov      r15d, 0x10ef4
00000001405690cd mov      edx, r15d
00000001405690d0 mov      rcx, rbx
00000001405690d3 call     qword ptr [rip + 0x11b21f]
00000001405690d9 mov      ecx, 0xe00
00000001405690de test     cx, ax
00000001405690e1 je       0x14056c784
00000001405690e7 mov      rax, qword ptr [r14 + 0x10]
00000001405690eb mov      edx, r15d
00000001405690ee mov      rcx, rbx
00000001405690f1 call     qword ptr [rip + 0x11b201]
00000001405690f7 mov      rcx, qword ptr [rbx + 8]
00000001405690fb lea      r15, [rbx + 0x1320]
0000000140569102 movzx    r14d, ax
0000000140569106 mov      rdx, r15
0000000140569109 mov      rax, qword ptr [rbx + 0x18]
000000014056910d shr      r14d, 9
0000000140569111 and      r14d, 7
0000000140569115 mov      rax, qword ptr [rax + 0x108]
000000014056911c call     qword ptr [rip + 0x11b1d6]
0000000140569122 mov      ecx, dword ptr [rsi]
0000000140569124 cmp      ecx, edi
0000000140569126 jae      0x140569154
0000000140569128 lea      r9, [rip + 0xfc581]
000000014056912f sub      edi, ecx
0000000140569131 mov      dword ptr [rsp + 0x20], r14d
0000000140569136 lea      rdx, [r12 + rcx]
000000014056913a mov      rax, qword ptr [rbx + 0x18]
000000014056913e mov      rcx, qword ptr [rbx + 8]
0000000140569142 mov      r8d, edi
0000000140569145 mov      rax, qword ptr [rax + 0x128]
000000014056914c call     qword ptr [rip + 0x11b1a6]
0000000140569152 add      dword ptr [rsi], eax
0000000140569154 mov      rdx, r15
0000000140569157 jmp      0x140569522
000000014056915c mov      rax, qword ptr [r14 + 0x20]
0000000140569160 mov      r15d, 0x10e40
0000000140569166 mov      edx, r15d
0000000140569169 mov      rcx, rbx
000000014056916c call     qword ptr [rip + 0x11b186]
0000000140569172 mov      dword ptr [rbp - 0x34], eax
0000000140569175 test     eax, eax
0000000140569177 je       0x14056c784
000000014056917d mov      rax, qword ptr [r14 + 0x20]
0000000140569181 mov      edx, r15d
0000000140569184 mov      rcx, rbx
0000000140569187 call     qword ptr [rip + 0x11b16b]
000000014056918d mov      rcx, qword ptr [rbx + 8]
0000000140569191 lea      r14, [rbx + 0x1320]
0000000140569198 mov      r15d, eax
000000014056919b mov      dword ptr [rbp - 0x34], eax
000000014056919e mov      rax, qword ptr [rbx + 0x18]
00000001405691a2 mov      rdx, r14
00000001405691a5 mov      rax, qword ptr [rax + 0x108]
00000001405691ac call     qword ptr [rip + 0x11b146]
00000001405691b2 mov      edx, dword ptr [rsi]
00000001405691b4 cmp      edx, edi
00000001405691b6 jae      0x14056951f
00000001405691bc mov      rcx, qword ptr [rbx + 0x18]
00000001405691c0 lea      r9, [rip + 0xfc4b9]
00000001405691c7 sub      edi, edx
00000001405691c9 add      rdx, r12
00000001405691cc mov      rax, qword ptr [rcx + 0x128]
00000001405691d3 jmp      0x14056950b
00000001405691d8 mov      rax, qword ptr [r14 + 0x10]
00000001405691dc mov      r15d, 0x10e20
00000001405691e2 mov      edx, r15d
00000001405691e5 mov      rcx, rbx
00000001405691e8 call     qword ptr [rip + 0x11b10a]
00000001405691ee bt       ax, 0xe
00000001405691f3 jae      0x14056c784
00000001405691f9 mov      rax, qword ptr [r14 + 0x10]
00000001405691fd mov      edx, r15d
0000000140569200 mov      rcx, rbx
0000000140569203 call     qword ptr [rip + 0x11b0ef]
0000000140569209 mov      rcx, qword ptr [rbx + 8]
000000014056920d lea      r15, [rbx + 0x1320]
0000000140569214 movzx    r14d, ax
0000000140569218 mov      rdx, r15
000000014056921b mov      rax, qword ptr [rbx + 0x18]
000000014056921f shr      r14d, 0xe
0000000140569223 and      r14d, 1
0000000140569227 mov      rax, qword ptr [rax + 0x108]
000000014056922e call     qword ptr [rip + 0x11b0c4]
0000000140569234 mov      ecx, dword ptr [rsi]
0000000140569236 cmp      ecx, edi
0000000140569238 jae      0x140569154
000000014056923e lea      r9, [rip + 0xfc40b]
0000000140569245 jmp      0x14056912f
000000014056924a mov      rax, qword ptr [r14 + 0x20]
000000014056924e mov      r15d, 0x10e28
0000000140569254 mov      edx, r15d
0000000140569257 mov      rcx, rbx
000000014056925a call     qword ptr [rip + 0x11b098]
0000000140569260 mov      dword ptr [rbp - 0x34], eax
0000000140569263 test     eax, eax
0000000140569265 je       0x14056c784
000000014056926b mov      rax, qword ptr [r14 + 0x20]
000000014056926f mov      edx, r15d
0000000140569272 mov      rcx, rbx
0000000140569275 call     qword ptr [rip + 0x11b07d]
000000014056927b mov      rcx, qword ptr [rbx + 8]
000000014056927f lea      r14, [rbx + 0x1320]
0000000140569286 mov      r15d, eax
0000000140569289 mov      dword ptr [rbp - 0x34], eax
000000014056928c mov      rax, qword ptr [rbx + 0x18]
0000000140569290 mov      rdx, r14
0000000140569293 mov      rax, qword ptr [rax + 0x108]
000000014056929a call     qword ptr [rip + 0x11b058]
00000001405692a0 mov      edx, dword ptr [rsi]
00000001405692a2 cmp      edx, edi
00000001405692a4 jae      0x14056951f
00000001405692aa mov      rcx, qword ptr [rbx + 0x18]
00000001405692ae lea      r9, [rip + 0xfc36b]
00000001405692b5 sub      edi, edx
00000001405692b7 add      rdx, r12
00000001405692ba mov      rax, qword ptr [rcx + 0x128]
00000001405692c1 jmp      0x14056950b
00000001405692c6 mov      rax, qword ptr [r14 + 0x20]
00000001405692ca mov      r15d, 0x10e24
00000001405692d0 mov      edx, r15d
00000001405692d3 mov      rcx, rbx
00000001405692d6 call     qword ptr [rip + 0x11b01c]
00000001405692dc mov      dword ptr [rbp - 0x34], eax
00000001405692df test     eax, 0xffff0000
00000001405692e4 je       0x14056c784
00000001405692ea mov      rax, qword ptr [r14 + 0x20]
00000001405692ee mov      edx, r15d
00000001405692f1 mov      rcx, rbx
00000001405692f4 call     qword ptr [rip + 0x11affe]
00000001405692fa mov      rcx, qword ptr [rbx + 8]
00000001405692fe lea      r15, [rbx + 0x1320]
0000000140569305 mov      r14d, eax
0000000140569308 mov      dword ptr [rbp - 0x34], eax
000000014056930b mov      rax, qword ptr [rbx + 0x18]
000000014056930f mov      rdx, r15
0000000140569312 mov      rax, qword ptr [rax + 0x108]
0000000140569319 call     qword ptr [rip + 0x11afd9]
000000014056931f mov      ecx, dword ptr [rsi]
0000000140569321 cmp      ecx, edi
0000000140569323 jae      0x140569154
0000000140569329 shr      r14d, 0x10
000000014056932d lea      r9, [rip + 0xfc2bc]
0000000140569334 jmp      0x14056912f
0000000140569339 mov      rax, qword ptr [r14 + 0x20]
000000014056933d mov      r15d, 0x10e10
0000000140569343 mov      edx, r15d
0000000140569346 mov      rcx, rbx
0000000140569349 call     qword ptr [rip + 0x11afa9]
000000014056934f mov      dword ptr [rbp - 0x34], eax
0000000140569352 bt       eax, 0x14
0000000140569356 jae      0x14056c784
000000014056935c mov      rax, qword ptr [r14 + 0x20]
0000000140569360 mov      edx, r15d
0000000140569363 mov      rcx, rbx
0000000140569366 call     qword ptr [rip + 0x11af8c]
000000014056936c mov      rcx, qword ptr [rbx + 8]
0000000140569370 lea      r15, [rbx + 0x1320]
0000000140569377 mov      r14d, eax
000000014056937a mov      dword ptr [rbp - 0x34], eax
000000014056937d mov      rax, qword ptr [rbx + 0x18]
0000000140569381 mov      rdx, r15
0000000140569384 mov      rax, qword ptr [rax + 0x108]
000000014056938b call     qword ptr [rip + 0x11af67]
0000000140569391 mov      ecx, dword ptr [rsi]
0000000140569393 cmp      ecx, edi
0000000140569395 jae      0x140569154
000000014056939b shr      r14d, 0x14
000000014056939f lea      r9, [rip + 0xfc21a]
00000001405693a6 and      r14d, 1
00000001405693aa jmp      0x14056912f
00000001405693af mov      rax, qword ptr [r14 + 0x20]
00000001405693b3 mov      r15d, 0x10e10
00000001405693b9 mov      edx, r15d
00000001405693bc mov      rcx, rbx
00000001405693bf call     qword ptr [rip + 0x11af33]
00000001405693c5 mov      dword ptr [rbp - 0x34], eax
00000001405693c8 bt       eax, 0x10
00000001405693cc jae      0x14056c784
00000001405693d2 mov      rax, qword ptr [r14 + 0x20]
00000001405693d6 mov      edx, r15d
00000001405693d9 mov      rcx, rbx
00000001405693dc call     qword ptr [rip + 0x11af16]
00000001405693e2 mov      rcx, qword ptr [rbx + 8]
00000001405693e6 lea      r15, [rbx + 0x1320]
00000001405693ed mov      r14d, eax
00000001405693f0 mov      dword ptr [rbp - 0x34], eax
00000001405693f3 mov      rax, qword ptr [rbx + 0x18]
00000001405693f7 mov      rdx, r15
00000001405693fa mov      rax, qword ptr [rax + 0x108]
0000000140569401 call     qword ptr [rip + 0x11aef1]
0000000140569407 mov      ecx, dword ptr [rsi]
0000000140569409 cmp      ecx, edi
000000014056940b jae      0x140569154
0000000140569411 shr      r14d, 0x10
0000000140569415 lea      r9, [rip + 0xfc174]
000000014056941c and      r14d, 1
0000000140569420 jmp      0x14056912f
0000000140569425 mov      rax, qword ptr [r14 + 0x20]
0000000140569429 mov      r15d, 0x10e10
000000014056942f mov      edx, r15d
0000000140569432 mov      rcx, rbx
0000000140569435 call     qword ptr [rip + 0x11aebd]
000000014056943b mov      dword ptr [rbp - 0x34], eax
000000014056943e bt       eax, 0x11
0000000140569442 jae      0x14056c784
0000000140569448 mov      rax, qword ptr [r14 + 0x20]
000000014056944c mov      edx, r15d
000000014056944f mov      rcx, rbx
0000000140569452 call     qword ptr [rip + 0x11aea0]
0000000140569458 mov      rcx, qword ptr [rbx + 8]
000000014056945c lea      r15, [rbx + 0x1320]
0000000140569463 mov      r14d, eax
0000000140569466 mov      dword ptr [rbp - 0x34], eax
0000000140569469 mov      rax, qword ptr [rbx + 0x18]
000000014056946d mov      rdx, r15
0000000140569470 mov      rax, qword ptr [rax + 0x108]
0000000140569477 call     qword ptr [rip + 0x11ae7b]
000000014056947d mov      ecx, dword ptr [rsi]
000000014056947f cmp      ecx, edi
0000000140569481 jae      0x140569154
0000000140569487 shr      r14d, 0x11
000000014056948b lea      r9, [rip + 0xfc0ce]
0000000140569492 and      r14d, 1
0000000140569496 jmp      0x14056912f
000000014056949b mov      rax, qword ptr [r14 + 0x10]
000000014056949f mov      r15d, 0x10e10
00000001405694a5 mov      edx, r15d
00000001405694a8 mov      rcx, rbx
00000001405694ab call     qword ptr [rip + 0x11ae47]
00000001405694b1 test     ax, ax
00000001405694b4 je       0x14056c784
00000001405694ba mov      rax, qword ptr [r14 + 0x10]
00000001405694be mov      edx, r15d
00000001405694c1 mov      rcx, rbx
00000001405694c4 call     qword ptr [rip + 0x11ae2e]
00000001405694ca mov      rcx, qword ptr [rbx + 8]
00000001405694ce lea      r14, [rbx + 0x1320]
00000001405694d5 movzx    r15d, ax
00000001405694d9 mov      rdx, r14
00000001405694dc mov      rax, qword ptr [rbx + 0x18]
00000001405694e0 mov      rax, qword ptr [rax + 0x108]
00000001405694e7 call     qword ptr [rip + 0x11ae0b]
00000001405694ed mov      ecx, dword ptr [rsi]
00000001405694ef cmp      ecx, edi
00000001405694f1 jae      0x14056951f
00000001405694f3 lea      r9, [rip + 0xfc036]
00000001405694fa lea      rdx, [r12 + rcx]
00000001405694fe sub      edi, ecx
0000000140569500 mov      rax, qword ptr [rbx + 0x18]
0000000140569504 mov      rax, qword ptr [rax + 0x128]
000000014056950b mov      dword ptr [rsp + 0x20], r15d
0000000140569510 mov      rcx, qword ptr [rbx + 8]
0000000140569514 mov      r8d, edi
0000000140569517 call     qword ptr [rip + 0x11addb]
000000014056951d add      dword ptr [rsi], eax
000000014056951f mov      rdx, r14
0000000140569522 mov      rax, qword ptr [rbx + 0x18]
0000000140569526 mov      rcx, qword ptr [rbx + 8]
000000014056952a mov      rax, qword ptr [rax + 0x110]
0000000140569531 call     qword ptr [rip + 0x11adc1]
0000000140569537 mov      r15d, 0x10
000000014056953d jmp      0x14056c787
0000000140569542 mov      rax, qword ptr [r14 + 0x10]
0000000140569546 mov      r15d, 0x14e10
000000014056954c mov      edx, r15d
000000014056954f mov      rcx, rbx
0000000140569552 call     qword ptr [rip + 0x11ada0]
0000000140569558 test     ax, ax
000000014056955b je       0x14056c784
0000000140569561 mov      rax, qword ptr [r14 + 0x10]
0000000140569565 mov      edx, r15d
0000000140569568 mov      rcx, rbx
000000014056956b call     qword ptr [rip + 0x11ad87]
0000000140569571 mov      rcx, qword ptr [rbx + 8]
0000000140569575 lea      r14, [rbx + 0x1320]
000000014056957c movzx    r15d, ax
0000000140569580 mov      rdx, r14
0000000140569583 mov      rax, qword ptr [rbx + 0x18]
0000000140569587 mov      rax, qword ptr [rax + 0x108]
000000014056958e call     qword ptr [rip + 0x11ad64]
0000000140569594 mov      ecx, dword ptr [rsi]
0000000140569596 cmp      ecx, edi
0000000140569598 jae      0x14056951f
000000014056959a lea      r9, [rip + 0xfc13f]
00000001405695a1 jmp      0x1405694fa
00000001405695a6 sub      eax, 0xa
00000001405695a9 je       0x140569916
00000001405695af sub      eax, edx
00000001405695b1 je       0x1405698a7
00000001405695b7 sub      eax, edx
00000001405695b9 je       0x140569835
00000001405695bf sub      eax, edx
00000001405695c1 je       0x1405697c2
00000001405695c7 sub      eax, edx
00000001405695c9 je       0x140569746
00000001405695cf sub      eax, edx
00000001405695d1 je       0x1405696d4
00000001405695d7 sub      eax, edx
00000001405695d9 je       0x140569658
00000001405695db cmp      eax, edx
00000001405695dd jne      0x14056c784
00000001405695e3 mov      rax, qword ptr [r14 + 0x10]
00000001405695e7 mov      r15d, 0x14ef4
00000001405695ed mov      edx, r15d
00000001405695f0 mov      rcx, rbx
00000001405695f3 call     qword ptr [rip + 0x11acff]
00000001405695f9 mov      ecx, 0xe00
00000001405695fe test     cx, ax
0000000140569601 je       0x14056c784
0000000140569607 mov      rax, qword ptr [r14 + 0x10]
000000014056960b mov      edx, r15d
000000014056960e mov      rcx, rbx
0000000140569611 call     qword ptr [rip + 0x11ace1]
0000000140569617 mov      rcx, qword ptr [rbx + 8]
000000014056961b lea      r15, [rbx + 0x1320]
0000000140569622 movzx    r14d, ax
0000000140569626 mov      rdx, r15
0000000140569629 mov      rax, qword ptr [rbx + 0x18]
000000014056962d shr      r14d, 9
0000000140569631 and      r14d, 7
0000000140569635 mov      rax, qword ptr [rax + 0x108]
000000014056963c call     qword ptr [rip + 0x11acb6]
0000000140569642 mov      ecx, dword ptr [rsi]
0000000140569644 cmp      ecx, edi
0000000140569646 jae      0x140569154
000000014056964c lea      r9, [rip + 0xfc20d]
0000000140569653 jmp      0x14056912f
0000000140569658 mov      rax, qword ptr [r14 + 0x20]
000000014056965c mov      r15d, 0x14e40
0000000140569662 mov      edx, r15d
0000000140569665 mov      rcx, rbx
0000000140569668 call     qword ptr [rip + 0x11ac8a]
000000014056966e mov      dword ptr [rbp - 0x34], eax
0000000140569671 test     eax, eax
0000000140569673 je       0x14056c784
0000000140569679 mov      rax, qword ptr [r14 + 0x20]
000000014056967d mov      edx, r15d
0000000140569680 mov      rcx, rbx
0000000140569683 call     qword ptr [rip + 0x11ac6f]
0000000140569689 mov      rcx, qword ptr [rbx + 8]
000000014056968d lea      r14, [rbx + 0x1320]
0000000140569694 mov      r15d, eax
0000000140569697 mov      dword ptr [rbp - 0x34], eax
000000014056969a mov      rax, qword ptr [rbx + 0x18]
000000014056969e mov      rdx, r14
00000001405696a1 mov      rax, qword ptr [rax + 0x108]
00000001405696a8 call     qword ptr [rip + 0x11ac4a]
00000001405696ae mov      edx, dword ptr [rsi]
00000001405696b0 cmp      edx, edi
00000001405696b2 jae      0x14056951f
00000001405696b8 mov      rcx, qword ptr [rbx + 0x18]
00000001405696bc lea      r9, [rip + 0xfc16d]
00000001405696c3 sub      edi, edx
00000001405696c5 add      rdx, r12
00000001405696c8 mov      rax, qword ptr [rcx + 0x128]
00000001405696cf jmp      0x14056950b
00000001405696d4 mov      rax, qword ptr [r14 + 0x10]
00000001405696d8 mov      r15d, 0x14e20
00000001405696de mov      edx, r15d
00000001405696e1 mov      rcx, rbx
00000001405696e4 call     qword ptr [rip + 0x11ac0e]
00000001405696ea bt       ax, 0xe
00000001405696ef jae      0x14056c784
00000001405696f5 mov      rax, qword ptr [r14 + 0x10]
00000001405696f9 mov      edx, r15d
00000001405696fc mov      rcx, rbx
00000001405696ff call     qword ptr [rip + 0x11abf3]
0000000140569705 mov      rcx, qword ptr [rbx + 8]
0000000140569709 lea      r15, [rbx + 0x1320]
0000000140569710 movzx    r14d, ax
0000000140569714 mov      rdx, r15
0000000140569717 mov      rax, qword ptr [rbx + 0x18]
000000014056971b shr      r14d, 0xe
000000014056971f and      r14d, 1
0000000140569723 mov      rax, qword ptr [rax + 0x108]
000000014056972a call     qword ptr [rip + 0x11abc8]
0000000140569730 mov      ecx, dword ptr [rsi]
0000000140569732 cmp      ecx, edi
0000000140569734 jae      0x140569154
000000014056973a lea      r9, [rip + 0xfc0bf]
0000000140569741 jmp      0x14056912f
0000000140569746 mov      rax, qword ptr [r14 + 0x20]
000000014056974a mov      r15d, 0x14e28
0000000140569750 mov      edx, r15d
0000000140569753 mov      rcx, rbx
0000000140569756 call     qword ptr [rip + 0x11ab9c]
000000014056975c mov      dword ptr [rbp - 0x34], eax
000000014056975f test     eax, eax
0000000140569761 je       0x14056c784
0000000140569767 mov      rax, qword ptr [r14 + 0x20]
000000014056976b mov      edx, r15d
000000014056976e mov      rcx, rbx
0000000140569771 call     qword ptr [rip + 0x11ab81]
0000000140569777 mov      rcx, qword ptr [rbx + 8]
000000014056977b lea      r14, [rbx + 0x1320]
0000000140569782 mov      r15d, eax
0000000140569785 mov      dword ptr [rbp - 0x34], eax
0000000140569788 mov      rax, qword ptr [rbx + 0x18]
000000014056978c mov      rdx, r14
000000014056978f mov      rax, qword ptr [rax + 0x108]
0000000140569796 call     qword ptr [rip + 0x11ab5c]
000000014056979c mov      edx, dword ptr [rsi]
000000014056979e cmp      edx, edi
00000001405697a0 jae      0x14056951f
00000001405697a6 mov      rcx, qword ptr [rbx + 0x18]
00000001405697aa lea      r9, [rip + 0xfc01f]
00000001405697b1 sub      edi, edx
00000001405697b3 add      rdx, r12
00000001405697b6 mov      rax, qword ptr [rcx + 0x128]
00000001405697bd jmp      0x14056950b
00000001405697c2 mov      rax, qword ptr [r14 + 0x20]
00000001405697c6 mov      r15d, 0x14e24
00000001405697cc mov      edx, r15d
00000001405697cf mov      rcx, rbx
00000001405697d2 call     qword ptr [rip + 0x11ab20]
00000001405697d8 mov      dword ptr [rbp - 0x34], eax
00000001405697db test     eax, 0xffff0000
00000001405697e0 je       0x14056c784
00000001405697e6 mov      rax, qword ptr [r14 + 0x20]
00000001405697ea mov      edx, r15d
00000001405697ed mov      rcx, rbx
00000001405697f0 call     qword ptr [rip + 0x11ab02]
00000001405697f6 mov      rcx, qword ptr [rbx + 8]
00000001405697fa lea      r15, [rbx + 0x1320]
0000000140569801 mov      r14d, eax
0000000140569804 mov      dword ptr [rbp - 0x34], eax
0000000140569807 mov      rax, qword ptr [rbx + 0x18]
000000014056980b mov      rdx, r15
000000014056980e mov      rax, qword ptr [rax + 0x108]
0000000140569815 call     qword ptr [rip + 0x11aadd]
000000014056981b mov      ecx, dword ptr [rsi]
000000014056981d cmp      ecx, edi
000000014056981f jae      0x140569154
0000000140569825 shr      r14d, 0x10
0000000140569829 lea      r9, [rip + 0xfbf70]
0000000140569830 jmp      0x14056912f
0000000140569835 mov      rax, qword ptr [r14 + 0x20]
0000000140569839 mov      r15d, 0x14e10
000000014056983f mov      edx, r15d
0000000140569842 mov      rcx, rbx
0000000140569845 call     qword ptr [rip + 0x11aaad]
000000014056984b mov      dword ptr [rbp - 0x34], eax
000000014056984e bt       eax, 0x14
0000000140569852 jae      0x14056c784
0000000140569858 mov      rax, qword ptr [r14 + 0x20]
000000014056985c mov      edx, r15d
000000014056985f mov      rcx, rbx
0000000140569862 call     qword ptr [rip + 0x11aa90]
0000000140569868 mov      rcx, qword ptr [rbx + 8]
000000014056986c lea      r15, [rbx + 0x1320]
0000000140569873 mov      r14d, eax
0000000140569876 mov      dword ptr [rbp - 0x34], eax
0000000140569879 mov      rax, qword ptr [rbx + 0x18]
000000014056987d mov      rdx, r15
0000000140569880 mov      rax, qword ptr [rax + 0x108]
0000000140569887 call     qword ptr [rip + 0x11aa6b]
000000014056988d mov      ecx, dword ptr [rsi]
000000014056988f cmp      ecx, edi
0000000140569891 jae      0x140569154
0000000140569897 shr      r14d, 0x14
000000014056989b lea      r9, [rip + 0xfbece]
00000001405698a2 jmp      0x140569983
00000001405698a7 mov      rax, qword ptr [r14 + 0x20]
00000001405698ab mov      r15d, 0x14e10
00000001405698b1 mov      edx, r15d
00000001405698b4 mov      rcx, rbx
00000001405698b7 call     qword ptr [rip + 0x11aa3b]
00000001405698bd mov      dword ptr [rbp - 0x34], eax
00000001405698c0 bt       eax, 0x10
00000001405698c4 jae      0x14056c784
00000001405698ca mov      rax, qword ptr [r14 + 0x20]
00000001405698ce mov      edx, r15d
00000001405698d1 mov      rcx, rbx
00000001405698d4 call     qword ptr [rip + 0x11aa1e]
00000001405698da mov      rcx, qword ptr [rbx + 8]
00000001405698de lea      r15, [rbx + 0x1320]
00000001405698e5 mov      r14d, eax
00000001405698e8 mov      dword ptr [rbp - 0x34], eax
00000001405698eb mov      rax, qword ptr [rbx + 0x18]
00000001405698ef mov      rdx, r15
00000001405698f2 mov      rax, qword ptr [rax + 0x108]
00000001405698f9 call     qword ptr [rip + 0x11a9f9]
00000001405698ff mov      ecx, dword ptr [rsi]
0000000140569901 cmp      ecx, edi
0000000140569903 jae      0x140569154
0000000140569909 shr      r14d, 0x10
000000014056990d lea      r9, [rip + 0xfbe2c]
0000000140569914 jmp      0x140569983
0000000140569916 mov      rax, qword ptr [r14 + 0x20]
000000014056991a mov      r15d, 0x14e10
0000000140569920 mov      edx, r15d
0000000140569923 mov      rcx, rbx
0000000140569926 call     qword ptr [rip + 0x11a9cc]
000000014056992c mov      dword ptr [rbp - 0x34], eax
000000014056992f bt       eax, 0x11
0000000140569933 jae      0x14056c784
0000000140569939 mov      rax, qword ptr [r14 + 0x20]
000000014056993d mov      edx, r15d
0000000140569940 mov      rcx, rbx
0000000140569943 call     qword ptr [rip + 0x11a9af]
0000000140569949 mov      rcx, qword ptr [rbx + 8]
000000014056994d lea      r15, [rbx + 0x1320]
0000000140569954 mov      r14d, eax
0000000140569957 mov      dword ptr [rbp - 0x34], eax
000000014056995a mov      rax, qword ptr [rbx + 0x18]
000000014056995e mov      rdx, r15
0000000140569961 mov      rax, qword ptr [rax + 0x108]
0000000140569968 call     qword ptr [rip + 0x11a98a]
000000014056996e mov      ecx, dword ptr [rsi]
0000000140569970 cmp      ecx, edi
0000000140569972 jae      0x140569154
0000000140569978 shr      r14d, 0x11
000000014056997c lea      r9, [rip + 0xfbd8d]
0000000140569983 and      r14d, 1
0000000140569987 jmp      0x14056912f
000000014056998c mov      rax, qword ptr [r14 + 0x20]
0000000140569990 mov      r15d, 0x11440
0000000140569996 mov      edx, r15d
0000000140569999 mov      rcx, rbx
000000014056999c call     qword ptr [rip + 0x11a956]
00000001405699a2 mov      dword ptr [rbp - 0x34], eax
00000001405699a5 test     eax, 0xf0000
00000001405699aa je       0x14056c784
00000001405699b0 mov      rax, qword ptr [r14 + 0x20]
00000001405699b4 mov      edx, r15d
00000001405699b7 mov      rcx, rbx
00000001405699ba call     qword ptr [rip + 0x11a938]
00000001405699c0 mov      rcx, qword ptr [rbx + 8]
00000001405699c4 lea      r15, [rbx + 0x1320]
00000001405699cb mov      r14d, eax
00000001405699ce mov      dword ptr [rbp - 0x34], eax
00000001405699d1 mov      rax, qword ptr [rbx + 0x18]
00000001405699d5 mov      rdx, r15
00000001405699d8 mov      rax, qword ptr [rax + 0x108]
00000001405699df call     qword ptr [rip + 0x11a913]
00000001405699e5 mov      ecx, dword ptr [rsi]
00000001405699e7 cmp      ecx, edi
00000001405699e9 jae      0x140569154
00000001405699ef shr      r14d, 0x10
00000001405699f3 lea      r9, [rip + 0xfbe96]
00000001405699fa and      r14d, 0xf
00000001405699fe jmp      0x14056912f
0000000140569a03 cmp      eax, 0x1b
0000000140569a06 ja       0x140569e50
0000000140569a0c je       0x140569de2
0000000140569a12 sub      eax, 0x13
0000000140569a15 je       0x140569d70
0000000140569a1b sub      eax, edx
0000000140569a1d je       0x140569cf9
0000000140569a23 sub      eax, edx
0000000140569a25 je       0x140569c87
0000000140569a2b sub      eax, edx
0000000140569a2d je       0x140569c19
0000000140569a33 sub      eax, edx
0000000140569a35 je       0x140569bab
0000000140569a3b sub      eax, edx
0000000140569a3d je       0x140569b3d
0000000140569a43 sub      eax, edx
0000000140569a45 je       0x140569acf
0000000140569a4b cmp      eax, edx
0000000140569a4d jne      0x14056c784
0000000140569a53 mov      rax, qword ptr [r14 + 0x20]
0000000140569a57 mov      r15d, 0x968c
0000000140569a5d mov      edx, r15d
0000000140569a60 mov      rcx, rbx
0000000140569a63 call     qword ptr [rip + 0x11a88f]
0000000140569a69 mov      dword ptr [rbp - 0x34], eax
0000000140569a6c test     eax, eax
0000000140569a6e je       0x14056c784
0000000140569a74 mov      rax, qword ptr [r14 + 0x20]
0000000140569a78 mov      edx, r15d
0000000140569a7b mov      rcx, rbx
0000000140569a7e call     qword ptr [rip + 0x11a874]
0000000140569a84 mov      rcx, qword ptr [rbx + 8]
0000000140569a88 lea      r14, [rbx + 0x1320]
0000000140569a8f mov      r15d, eax
0000000140569a92 mov      dword ptr [rbp - 0x34], eax
0000000140569a95 mov      rax, qword ptr [rbx + 0x18]
0000000140569a99 mov      rdx, r14
0000000140569a9c mov      rax, qword ptr [rax + 0x108]
0000000140569aa3 call     qword ptr [rip + 0x11a84f]
0000000140569aa9 mov      edx, dword ptr [rsi]
0000000140569aab cmp      edx, edi
0000000140569aad jae      0x14056951f
0000000140569ab3 mov      rcx, qword ptr [rbx + 0x18]
0000000140569ab7 lea      r9, [rip + 0xfbf52]
0000000140569abe sub      edi, edx
0000000140569ac0 add      rdx, r12
0000000140569ac3 mov      rax, qword ptr [rcx + 0x128]
0000000140569aca jmp      0x14056950b
0000000140569acf mov      rax, qword ptr [r14]
0000000140569ad2 mov      r15d, 0x966c
0000000140569ad8 mov      edx, r15d
0000000140569adb mov      rcx, rbx
0000000140569ade call     qword ptr [rip + 0x11a814]
0000000140569ae4 test     al, 1
0000000140569ae6 je       0x14056c784
0000000140569aec mov      rax, qword ptr [r14]
0000000140569aef mov      edx, r15d
0000000140569af2 mov      rcx, rbx
0000000140569af5 call     qword ptr [rip + 0x11a7fd]
0000000140569afb mov      rcx, qword ptr [rbx + 8]
0000000140569aff lea      r14, [rbx + 0x1320]
0000000140569b06 movzx    r15d, al
0000000140569b0a mov      rdx, r14
0000000140569b0d mov      rax, qword ptr [rbx + 0x18]
0000000140569b11 mov      rax, qword ptr [rax + 0x108]
0000000140569b18 call     qword ptr [rip + 0x11a7da]
0000000140569b1e mov      edx, dword ptr [rsi]
0000000140569b20 cmp      edx, edi
0000000140569b22 jae      0x14056951f
0000000140569b28 and      r15d, 1
0000000140569b2c lea      r9, [rip + 0xfbead]
0000000140569b33 sub      edi, edx
0000000140569b35 add      rdx, r12
0000000140569b38 jmp      0x140569500
0000000140569b3d mov      rax, qword ptr [r14]
0000000140569b40 mov      r15d, 0x963c
0000000140569b46 mov      edx, r15d
0000000140569b49 mov      rcx, rbx
0000000140569b4c call     qword ptr [rip + 0x11a7a6]
0000000140569b52 test     al, 1
0000000140569b54 je       0x14056c784
0000000140569b5a mov      rax, qword ptr [r14]
0000000140569b5d mov      edx, r15d
0000000140569b60 mov      rcx, rbx
0000000140569b63 call     qword ptr [rip + 0x11a78f]
0000000140569b69 mov      rcx, qword ptr [rbx + 8]
0000000140569b6d lea      r14, [rbx + 0x1320]
0000000140569b74 movzx    r15d, al
0000000140569b78 mov      rdx, r14
0000000140569b7b mov      rax, qword ptr [rbx + 0x18]
0000000140569b7f mov      rax, qword ptr [rax + 0x108]
0000000140569b86 call     qword ptr [rip + 0x11a76c]
0000000140569b8c mov      edx, dword ptr [rsi]
0000000140569b8e cmp      edx, edi
0000000140569b90 jae      0x14056951f
0000000140569b96 and      r15d, 1
0000000140569b9a lea      r9, [rip + 0xfbe0f]
0000000140569ba1 sub      edi, edx
0000000140569ba3 add      rdx, r12
0000000140569ba6 jmp      0x140569500
0000000140569bab mov      rax, qword ptr [r14]
0000000140569bae mov      r15d, 0x962c
0000000140569bb4 mov      edx, r15d
0000000140569bb7 mov      rcx, rbx
0000000140569bba call     qword ptr [rip + 0x11a738]
0000000140569bc0 test     al, 3
0000000140569bc2 je       0x14056c784
0000000140569bc8 mov      rax, qword ptr [r14]
0000000140569bcb mov      edx, r15d
0000000140569bce mov      rcx, rbx
0000000140569bd1 call     qword ptr [rip + 0x11a721]
0000000140569bd7 mov      rcx, qword ptr [rbx + 8]
0000000140569bdb lea      r14, [rbx + 0x1320]
0000000140569be2 movzx    r15d, al
0000000140569be6 mov      rdx, r14
0000000140569be9 mov      rax, qword ptr [rbx + 0x18]
0000000140569bed mov      rax, qword ptr [rax + 0x108]
0000000140569bf4 call     qword ptr [rip + 0x11a6fe]
0000000140569bfa mov      edx, dword ptr [rsi]
0000000140569bfc cmp      edx, edi
0000000140569bfe jae      0x14056951f
0000000140569c04 and      r15d, 3
0000000140569c08 lea      r9, [rip + 0xfbd71]
0000000140569c0f sub      edi, edx
0000000140569c11 add      rdx, r12
0000000140569c14 jmp      0x140569500
0000000140569c19 mov      rax, qword ptr [r14]
0000000140569c1c mov      r15d, 0x960c
0000000140569c22 mov      edx, r15d
0000000140569c25 mov      rcx, rbx
0000000140569c28 call     qword ptr [rip + 0x11a6ca]
0000000140569c2e test     al, 3
0000000140569c30 je       0x14056c784
0000000140569c36 mov      rax, qword ptr [r14]
0000000140569c39 mov      edx, r15d
0000000140569c3c mov      rcx, rbx
0000000140569c3f call     qword ptr [rip + 0x11a6b3]
0000000140569c45 mov      rcx, qword ptr [rbx + 8]
0000000140569c49 lea      r14, [rbx + 0x1320]
0000000140569c50 movzx    r15d, al
0000000140569c54 mov      rdx, r14
0000000140569c57 mov      rax, qword ptr [rbx + 0x18]
0000000140569c5b mov      rax, qword ptr [rax + 0x108]
0000000140569c62 call     qword ptr [rip + 0x11a690]
0000000140569c68 mov      edx, dword ptr [rsi]
0000000140569c6a cmp      edx, edi
0000000140569c6c jae      0x14056951f
0000000140569c72 and      r15d, 3
0000000140569c76 lea      r9, [rip + 0xfbcd3]
0000000140569c7d sub      edi, edx
0000000140569c7f add      rdx, r12
0000000140569c82 jmp      0x140569500
0000000140569c87 mov      rax, qword ptr [r14 + 0x10]
0000000140569c8b mov      r13d, 0x154f4
0000000140569c91 mov      edx, r13d
0000000140569c94 mov      rcx, rbx
0000000140569c97 call     qword ptr [rip + 0x11a65b]
0000000140569c9d mov      r15d, 0x3ff
0000000140569ca3 test     r15w, ax
0000000140569ca7 je       0x14056c77e
0000000140569cad mov      rax, qword ptr [r14 + 0x10]
0000000140569cb1 mov      edx, r13d
0000000140569cb4 mov      rcx, rbx
0000000140569cb7 call     qword ptr [rip + 0x11a63b]
0000000140569cbd mov      rcx, qword ptr [rbx + 8]
0000000140569cc1 movzx    r14d, ax
0000000140569cc5 mov      rax, qword ptr [rbx + 0x18]
0000000140569cc9 and      r14d, r15d
0000000140569ccc lea      r15, [rbx + 0x1320]
0000000140569cd3 mov      rdx, r15
0000000140569cd6 mov      rax, qword ptr [rax + 0x108]
0000000140569cdd call     qword ptr [rip + 0x11a615]
0000000140569ce3 mov      ecx, dword ptr [rsi]
0000000140569ce5 cmp      ecx, edi
0000000140569ce7 jae      0x140569154
0000000140569ced lea      r9, [rip + 0xfbc2c]
0000000140569cf4 jmp      0x14056912f
0000000140569cf9 mov      rax, qword ptr [r14 + 0x20]
0000000140569cfd mov      r15d, 0x15440
0000000140569d03 mov      edx, r15d
0000000140569d06 mov      rcx, rbx
0000000140569d09 call     qword ptr [rip + 0x11a5e9]
0000000140569d0f mov      dword ptr [rbp - 0x34], eax
0000000140569d12 test     eax, 0xf0000
0000000140569d17 je       0x14056c784
0000000140569d1d mov      rax, qword ptr [r14 + 0x20]
0000000140569d21 mov      edx, r15d
0000000140569d24 mov      rcx, rbx
0000000140569d27 call     qword ptr [rip + 0x11a5cb]
0000000140569d2d mov      rcx, qword ptr [rbx + 8]
0000000140569d31 lea      r15, [rbx + 0x1320]
0000000140569d38 mov      r14d, eax
0000000140569d3b mov      dword ptr [rbp - 0x34], eax
0000000140569d3e mov      rax, qword ptr [rbx + 0x18]
0000000140569d42 mov      rdx, r15
0000000140569d45 mov      rax, qword ptr [rax + 0x108]
0000000140569d4c call     qword ptr [rip + 0x11a5a6]
0000000140569d52 mov      ecx, dword ptr [rsi]
0000000140569d54 cmp      ecx, edi
0000000140569d56 jae      0x140569154
0000000140569d5c shr      r14d, 0x10
0000000140569d60 lea      r9, [rip + 0xfbb89]
0000000140569d67 and      r14d, 0xf
0000000140569d6b jmp      0x14056912f
0000000140569d70 mov      rax, qword ptr [r14 + 0x10]
0000000140569d74 mov      r13d, 0x114f4
0000000140569d7a mov      edx, r13d
0000000140569d7d mov      rcx, rbx
0000000140569d80 call     qword ptr [rip + 0x11a572]
0000000140569d86 mov      r15d, 0x3ff
0000000140569d8c test     r15w, ax
0000000140569d90 je       0x14056c77e
0000000140569d96 mov      rax, qword ptr [r14 + 0x10]
0000000140569d9a mov      edx, r13d
0000000140569d9d mov      rcx, rbx
0000000140569da0 call     qword ptr [rip + 0x11a552]
0000000140569da6 mov      rcx, qword ptr [rbx + 8]
0000000140569daa movzx    r14d, ax
0000000140569dae mov      rax, qword ptr [rbx + 0x18]
0000000140569db2 and      r14d, r15d
0000000140569db5 lea      r15, [rbx + 0x1320]
0000000140569dbc mov      rdx, r15
0000000140569dbf mov      rax, qword ptr [rax + 0x108]
0000000140569dc6 call     qword ptr [rip + 0x11a52c]
0000000140569dcc mov      ecx, dword ptr [rsi]
0000000140569dce cmp      ecx, edi
0000000140569dd0 jae      0x140569154
0000000140569dd6 lea      r9, [rip + 0xfbae3]
0000000140569ddd jmp      0x14056912f
0000000140569de2 mov      rax, qword ptr [r14]
0000000140569de5 mov      r15d, 0xb714
0000000140569deb mov      edx, r15d
0000000140569dee mov      rcx, rbx
0000000140569df1 call     qword ptr [rip + 0x11a501]
0000000140569df7 test     al, 0xf
0000000140569df9 je       0x14056c784
0000000140569dff mov      rax, qword ptr [r14]
0000000140569e02 mov      edx, r15d
0000000140569e05 mov      rcx, rbx
0000000140569e08 call     qword ptr [rip + 0x11a4ea]
0000000140569e0e mov      rcx, qword ptr [rbx + 8]
0000000140569e12 lea      r14, [rbx + 0x1320]
0000000140569e19 movzx    r15d, al
0000000140569e1d mov      rdx, r14
0000000140569e20 mov      rax, qword ptr [rbx + 0x18]
0000000140569e24 mov      rax, qword ptr [rax + 0x108]
0000000140569e2b call     qword ptr [rip + 0x11a4c7]
0000000140569e31 mov      edx, dword ptr [rsi]
0000000140569e33 cmp      edx, edi
0000000140569e35 jae      0x14056951f
0000000140569e3b and      r15d, 0xf
0000000140569e3f lea      r9, [rip + 0xfbbfa]
0000000140569e46 sub      edi, edx
0000000140569e48 add      rdx, r12
0000000140569e4b jmp      0x140569500
0000000140569e50 sub      eax, 0x1c
0000000140569e53 je       0x14056a1ee
0000000140569e59 sub      eax, edx
0000000140569e5b je       0x14056a173
0000000140569e61 sub      eax, edx
0000000140569e63 je       0x14056a0f8
0000000140569e69 sub      eax, edx
0000000140569e6b je       0x14056a07d
0000000140569e71 sub      eax, edx
0000000140569e73 je       0x14056a002
0000000140569e79 sub      eax, edx
0000000140569e7b je       0x140569f87
0000000140569e81 sub      eax, edx
0000000140569e83 je       0x140569f0c
0000000140569e89 cmp      eax, edx
0000000140569e8b jne      0x14056c784
0000000140569e91 cmp      dword ptr [rbp + 0x70], edx
0000000140569e94 jb       0x14056c784
0000000140569e9a mov      rax, qword ptr [r14 + 0x10]
0000000140569e9e mov      r13d, 0xb768
0000000140569ea4 mov      edx, r13d
0000000140569ea7 mov      rcx, rbx
0000000140569eaa call     qword ptr [rip + 0x11a448]
0000000140569eb0 mov      r15d, 0x1fff
0000000140569eb6 test     r15w, ax
0000000140569eba je       0x14056c77e
0000000140569ec0 mov      rax, qword ptr [r14 + 0x10]
0000000140569ec4 mov      edx, r13d
0000000140569ec7 mov      rcx, rbx
0000000140569eca call     qword ptr [rip + 0x11a428]
0000000140569ed0 mov      rcx, qword ptr [rbx + 8]
0000000140569ed4 movzx    r14d, ax
0000000140569ed8 mov      rax, qword ptr [rbx + 0x18]
0000000140569edc and      r14d, r15d
0000000140569edf lea      r15, [rbx + 0x1320]
0000000140569ee6 mov      rdx, r15
0000000140569ee9 mov      rax, qword ptr [rax + 0x108]
0000000140569ef0 call     qword ptr [rip + 0x11a402]
0000000140569ef6 mov      ecx, dword ptr [rsi]
0000000140569ef8 cmp      ecx, edi
0000000140569efa jae      0x140569154
0000000140569f00 lea      r9, [rip + 0xfbcb9]
0000000140569f07 jmp      0x14056912f
0000000140569f0c cmp      dword ptr [rbp + 0x70], edx
0000000140569f0f jb       0x14056c784
0000000140569f15 mov      rax, qword ptr [r14 + 0x10]
0000000140569f19 mov      r13d, 0xb764
0000000140569f1f mov      edx, r13d
0000000140569f22 mov      rcx, rbx
0000000140569f25 call     qword ptr [rip + 0x11a3cd]
0000000140569f2b mov      r15d, 0x1fff
0000000140569f31 test     r15w, ax
0000000140569f35 je       0x14056c77e
0000000140569f3b mov      rax, qword ptr [r14 + 0x10]
0000000140569f3f mov      edx, r13d
0000000140569f42 mov      rcx, rbx
0000000140569f45 call     qword ptr [rip + 0x11a3ad]
0000000140569f4b mov      rcx, qword ptr [rbx + 8]
0000000140569f4f movzx    r14d, ax
0000000140569f53 mov      rax, qword ptr [rbx + 0x18]
0000000140569f57 and      r14d, r15d
0000000140569f5a lea      r15, [rbx + 0x1320]
0000000140569f61 mov      rdx, r15
0000000140569f64 mov      rax, qword ptr [rax + 0x108]
0000000140569f6b call     qword ptr [rip + 0x11a387]
0000000140569f71 mov      ecx, dword ptr [rsi]
0000000140569f73 cmp      ecx, edi
0000000140569f75 jae      0x140569154
0000000140569f7b lea      r9, [rip + 0xfbc0e]
0000000140569f82 jmp      0x14056912f
0000000140569f87 cmp      dword ptr [rbp + 0x70], edx
0000000140569f8a jb       0x14056c784
0000000140569f90 mov      rax, qword ptr [r14 + 0x10]
0000000140569f94 mov      r13d, 0xb760
0000000140569f9a mov      edx, r13d
0000000140569f9d mov      rcx, rbx
0000000140569fa0 call     qword ptr [rip + 0x11a352]
0000000140569fa6 mov      r15d, 0x1fff
0000000140569fac test     r15w, ax
0000000140569fb0 je       0x14056c77e
0000000140569fb6 mov      rax, qword ptr [r14 + 0x10]
0000000140569fba mov      edx, r13d
0000000140569fbd mov      rcx, rbx
0000000140569fc0 call     qword ptr [rip + 0x11a332]
0000000140569fc6 mov      rcx, qword ptr [rbx + 8]
0000000140569fca movzx    r14d, ax
0000000140569fce mov      rax, qword ptr [rbx + 0x18]
0000000140569fd2 and      r14d, r15d
0000000140569fd5 lea      r15, [rbx + 0x1320]
0000000140569fdc mov      rdx, r15
0000000140569fdf mov      rax, qword ptr [rax + 0x108]
0000000140569fe6 call     qword ptr [rip + 0x11a30c]
0000000140569fec mov      ecx, dword ptr [rsi]
0000000140569fee cmp      ecx, edi
0000000140569ff0 jae      0x140569154
0000000140569ff6 lea      r9, [rip + 0xfbb63]
0000000140569ffd jmp      0x14056912f
000000014056a002 cmp      dword ptr [rbp + 0x70], edx
000000014056a005 jb       0x14056c784
000000014056a00b mov      rax, qword ptr [r14 + 0x10]
000000014056a00f mov      r13d, 0xb75c
000000014056a015 mov      edx, r13d
000000014056a018 mov      rcx, rbx
000000014056a01b call     qword ptr [rip + 0x11a2d7]
000000014056a021 mov      r15d, 0x1fff
000000014056a027 test     r15w, ax
000000014056a02b je       0x14056c77e
000000014056a031 mov      rax, qword ptr [r14 + 0x10]
000000014056a035 mov      edx, r13d
000000014056a038 mov      rcx, rbx
000000014056a03b call     qword ptr [rip + 0x11a2b7]
000000014056a041 mov      rcx, qword ptr [rbx + 8]
000000014056a045 movzx    r14d, ax
000000014056a049 mov      rax, qword ptr [rbx + 0x18]
000000014056a04d and      r14d, r15d
000000014056a050 lea      r15, [rbx + 0x1320]
000000014056a057 mov      rdx, r15
000000014056a05a mov      rax, qword ptr [rax + 0x108]
000000014056a061 call     qword ptr [rip + 0x11a291]
000000014056a067 mov      ecx, dword ptr [rsi]
000000014056a069 cmp      ecx, edi
000000014056a06b jae      0x140569154
000000014056a071 lea      r9, [rip + 0xfbab8]
000000014056a078 jmp      0x14056912f
000000014056a07d cmp      dword ptr [rbp + 0x70], edx
000000014056a080 jb       0x14056c784
000000014056a086 mov      rax, qword ptr [r14 + 0x10]
000000014056a08a mov      r13d, 0xb758
000000014056a090 mov      edx, r13d
000000014056a093 mov      rcx, rbx
000000014056a096 call     qword ptr [rip + 0x11a25c]
000000014056a09c mov      r15d, 0x1fff
000000014056a0a2 test     r15w, ax
000000014056a0a6 je       0x14056c77e
000000014056a0ac mov      rax, qword ptr [r14 + 0x10]
000000014056a0b0 mov      edx, r13d
000000014056a0b3 mov      rcx, rbx
000000014056a0b6 call     qword ptr [rip + 0x11a23c]
000000014056a0bc mov      rcx, qword ptr [rbx + 8]
000000014056a0c0 movzx    r14d, ax
000000014056a0c4 mov      rax, qword ptr [rbx + 0x18]
000000014056a0c8 and      r14d, r15d
000000014056a0cb lea      r15, [rbx + 0x1320]
000000014056a0d2 mov      rdx, r15
000000014056a0d5 mov      rax, qword ptr [rax + 0x108]
000000014056a0dc call     qword ptr [rip + 0x11a216]
000000014056a0e2 mov      ecx, dword ptr [rsi]
000000014056a0e4 cmp      ecx, edi
000000014056a0e6 jae      0x140569154
000000014056a0ec lea      r9, [rip + 0xfba0d]
000000014056a0f3 jmp      0x14056912f
000000014056a0f8 cmp      dword ptr [rbp + 0x70], edx
000000014056a0fb jb       0x14056c784
000000014056a101 mov      rax, qword ptr [r14 + 0x10]
000000014056a105 mov      r13d, 0xb754
000000014056a10b mov      edx, r13d
000000014056a10e mov      rcx, rbx
000000014056a111 call     qword ptr [rip + 0x11a1e1]
000000014056a117 mov      r15d, 0x1fff
000000014056a11d test     r15w, ax
000000014056a121 je       0x14056c77e
000000014056a127 mov      rax, qword ptr [r14 + 0x10]
000000014056a12b mov      edx, r13d
000000014056a12e mov      rcx, rbx
000000014056a131 call     qword ptr [rip + 0x11a1c1]
000000014056a137 mov      rcx, qword ptr [rbx + 8]
000000014056a13b movzx    r14d, ax
000000014056a13f mov      rax, qword ptr [rbx + 0x18]
000000014056a143 and      r14d, r15d
000000014056a146 lea      r15, [rbx + 0x1320]
000000014056a14d mov      rdx, r15
000000014056a150 mov      rax, qword ptr [rax + 0x108]
000000014056a157 call     qword ptr [rip + 0x11a19b]
000000014056a15d mov      ecx, dword ptr [rsi]
000000014056a15f cmp      ecx, edi
000000014056a161 jae      0x140569154
000000014056a167 lea      r9, [rip + 0xfb962]
000000014056a16e jmp      0x14056912f
000000014056a173 cmp      dword ptr [rbp + 0x70], edx
000000014056a176 jb       0x14056c784
000000014056a17c mov      rax, qword ptr [r14 + 0x10]
000000014056a180 mov      r13d, 0xb750
000000014056a186 mov      edx, r13d
000000014056a189 mov      rcx, rbx
000000014056a18c call     qword ptr [rip + 0x11a166]
000000014056a192 mov      r15d, 0x1fff
000000014056a198 test     r15w, ax
000000014056a19c je       0x14056c77e
000000014056a1a2 mov      rax, qword ptr [r14 + 0x10]
000000014056a1a6 mov      edx, r13d
000000014056a1a9 mov      rcx, rbx
000000014056a1ac call     qword ptr [rip + 0x11a146]
000000014056a1b2 mov      rcx, qword ptr [rbx + 8]
000000014056a1b6 movzx    r14d, ax
000000014056a1ba mov      rax, qword ptr [rbx + 0x18]
000000014056a1be and      r14d, r15d
000000014056a1c1 lea      r15, [rbx + 0x1320]
000000014056a1c8 mov      rdx, r15
000000014056a1cb mov      rax, qword ptr [rax + 0x108]
000000014056a1d2 call     qword ptr [rip + 0x11a120]
000000014056a1d8 mov      ecx, dword ptr [rsi]
000000014056a1da cmp      ecx, edi
000000014056a1dc jae      0x140569154
000000014056a1e2 lea      r9, [rip + 0xfb8b7]
000000014056a1e9 jmp      0x14056912f
000000014056a1ee mov      rax, qword ptr [r14]
000000014056a1f1 mov      r15d, 0xb028
000000014056a1f7 mov      edx, r15d
000000014056a1fa mov      rcx, rbx
000000014056a1fd call     qword ptr [rip + 0x11a0f5]
000000014056a203 test     al, 0x1f
000000014056a205 je       0x14056c784
000000014056a20b mov      rax, qword ptr [r14]
000000014056a20e mov      edx, r15d
000000014056a211 mov      rcx, rbx
000000014056a214 call     qword ptr [rip + 0x11a0de]
000000014056a21a mov      rcx, qword ptr [rbx + 8]
000000014056a21e lea      r14, [rbx + 0x1320]
000000014056a225 movzx    r15d, al
000000014056a229 mov      rdx, r14
000000014056a22c mov      rax, qword ptr [rbx + 0x18]
000000014056a230 mov      rax, qword ptr [rax + 0x108]
000000014056a237 call     qword ptr [rip + 0x11a0bb]
000000014056a23d mov      edx, dword ptr [rsi]
000000014056a23f cmp      edx, edi
000000014056a241 jae      0x14056951f
000000014056a247 and      r15d, 0x1f
000000014056a24b lea      r9, [rip + 0xfb81e]
000000014056a252 sub      edi, edx
000000014056a254 add      rdx, r12
000000014056a257 jmp      0x140569500
000000014056a25c cmp      dword ptr [rbp + 0x70], edx
000000014056a25f jb       0x14056c784
000000014056a265 mov      rax, qword ptr [r14 + 0x10]
000000014056a269 mov      r13d, 0xb76c
000000014056a26f mov      edx, r13d
000000014056a272 mov      rcx, rbx
000000014056a275 call     qword ptr [rip + 0x11a07d]
000000014056a27b mov      r15d, 0x1fff
000000014056a281 test     r15w, ax
000000014056a285 je       0x14056c77e
000000014056a28b mov      rax, qword ptr [r14 + 0x10]
000000014056a28f mov      edx, r13d
000000014056a292 mov      rcx, rbx
000000014056a295 call     qword ptr [rip + 0x11a05d]
000000014056a29b mov      rcx, qword ptr [rbx + 8]
000000014056a29f movzx    r14d, ax
000000014056a2a3 mov      rax, qword ptr [rbx + 0x18]
000000014056a2a7 and      r14d, r15d
000000014056a2aa lea      r15, [rbx + 0x1320]
000000014056a2b1 mov      rdx, r15
000000014056a2b4 mov      rax, qword ptr [rax + 0x108]
000000014056a2bb call     qword ptr [rip + 0x11a037]
000000014056a2c1 mov      ecx, dword ptr [rsi]
000000014056a2c3 cmp      ecx, edi
000000014056a2c5 jae      0x140569154
000000014056a2cb lea      r9, [rip + 0xfb91e]
000000014056a2d2 jmp      0x14056912f
000000014056a2d7 cmp      eax, 0x36
000000014056a2da ja       0x14056bab3
000000014056a2e0 je       0x14056ba20
000000014056a2e6 cmp      eax, 0x2d
000000014056a2e9 ja       0x14056a788
000000014056a2ef je       0x14056a713
000000014056a2f5 sub      eax, 0x25
000000014056a2f8 je       0x14056a698
000000014056a2fe sub      eax, edx
000000014056a300 je       0x14056a61d
000000014056a306 sub      eax, edx
000000014056a308 je       0x14056a5a2
000000014056a30e sub      eax, edx
000000014056a310 je       0x14056a527
000000014056a316 sub      eax, edx
000000014056a318 je       0x14056a4ac
000000014056a31e sub      eax, edx
000000014056a320 je       0x14056a424
000000014056a326 sub      eax, edx
000000014056a328 je       0x14056a3a0
000000014056a32a cmp      eax, edx
000000014056a32c jne      0x14056c784
000000014056a332 mov      rax, qword ptr [r14]
000000014056a335 mov      r15d, 0xb000
000000014056a33b mov      edx, r15d
000000014056a33e mov      rcx, rbx
000000014056a341 call     qword ptr [rip + 0x119fb1]
000000014056a347 test     al, al
000000014056a349 jns      0x14056c784
000000014056a34f mov      rax, qword ptr [r14]
000000014056a352 mov      edx, r15d
000000014056a355 mov      rcx, rbx
000000014056a358 call     qword ptr [rip + 0x119f9a]
000000014056a35e mov      rcx, qword ptr [rbx + 8]
000000014056a362 lea      r14, [rbx + 0x1320]
000000014056a369 movzx    r15d, al
000000014056a36d mov      rdx, r14
000000014056a370 mov      rax, qword ptr [rbx + 0x18]
000000014056a374 mov      rax, qword ptr [rax + 0x108]
000000014056a37b call     qword ptr [rip + 0x119f77]
000000014056a381 mov      edx, dword ptr [rsi]
000000014056a383 cmp      edx, edi
000000014056a385 jae      0x14056951f
000000014056a38b shr      r15d, 7
000000014056a38f lea      r9, [rip + 0xfb9da]
000000014056a396 sub      edi, edx
000000014056a398 add      rdx, r12
000000014056a39b jmp      0x140569500
000000014056a3a0 mov      rax, qword ptr [r14]
000000014056a3a3 mov      r15d, 0xb000
000000014056a3a9 mov      edx, r15d
000000014056a3ac mov      rcx, rbx
000000014056a3af call     qword ptr [rip + 0x119f43]
000000014056a3b5 and      al, 0x30
000000014056a3b7 cmp      al, 0x30
000000014056a3b9 je       0x14056c784
000000014056a3bf mov      rax, qword ptr [r14]
000000014056a3c2 mov      edx, r15d
000000014056a3c5 mov      rcx, rbx
000000014056a3c8 call     qword ptr [rip + 0x119f2a]
000000014056a3ce mov      rcx, qword ptr [rbx + 8]
000000014056a3d2 lea      r14, [rbx + 0x1320]
000000014056a3d9 movzx    r15d, al
000000014056a3dd mov      rdx, r14
000000014056a3e0 mov      rax, qword ptr [rbx + 0x18]
000000014056a3e4 mov      rax, qword ptr [rax + 0x108]
000000014056a3eb call     qword ptr [rip + 0x119f07]
000000014056a3f1 mov      edx, dword ptr [rsi]
000000014056a3f3 cmp      edx, edi
000000014056a3f5 jae      0x14056951f
000000014056a3fb mov      rax, qword ptr [rbx + 0x18]
000000014056a3ff lea      r9, [rip + 0xfb93a]
000000014056a406 mov      ecx, r15d
000000014056a409 sub      edi, edx
000000014056a40b shr      ecx, 4
000000014056a40e and      ecx, 3
000000014056a411 mov      rax, qword ptr [rax + 0x128]
000000014056a418 add      rdx, r12
000000014056a41b mov      dword ptr [rsp + 0x20], ecx
000000014056a41f jmp      0x140569510
000000014056a424 cmp      dword ptr [rbp + 0x70], edx
000000014056a427 jb       0x14056c784
000000014056a42d mov      rax, qword ptr [r14 + 0x20]
000000014056a431 mov      r15d, 0xb01c
000000014056a437 mov      edx, r15d
000000014056a43a mov      rcx, rbx
000000014056a43d call     qword ptr [rip + 0x119eb5]
000000014056a443 mov      dword ptr [rbp - 0x34], eax
000000014056a446 cmp      eax, 0x3000000
000000014056a44b je       0x14056c784
000000014056a451 mov      rax, qword ptr [r14 + 0x20]
000000014056a455 mov      edx, r15d
000000014056a458 mov      rcx, rbx
000000014056a45b call     qword ptr [rip + 0x119e97]
000000014056a461 mov      rcx, qword ptr [rbx + 8]
000000014056a465 lea      r14, [rbx + 0x1320]
000000014056a46c mov      r15d, eax
000000014056a46f mov      dword ptr [rbp - 0x34], eax
000000014056a472 mov      rax, qword ptr [rbx + 0x18]
000000014056a476 mov      rdx, r14
000000014056a479 mov      rax, qword ptr [rax + 0x108]
000000014056a480 call     qword ptr [rip + 0x119e72]
000000014056a486 mov      edx, dword ptr [rsi]
000000014056a488 cmp      edx, edi
000000014056a48a jae      0x14056951f
000000014056a490 mov      rcx, qword ptr [rbx + 0x18]
000000014056a494 lea      r9, [rip + 0xfb875]
000000014056a49b sub      edi, edx
000000014056a49d add      rdx, r12
000000014056a4a0 mov      rax, qword ptr [rcx + 0x128]
000000014056a4a7 jmp      0x14056950b
000000014056a4ac cmp      dword ptr [rbp + 0x70], edx
000000014056a4af jb       0x14056c784
000000014056a4b5 mov      rax, qword ptr [r14 + 0x10]
000000014056a4b9 mov      r13d, 0xb784
000000014056a4bf mov      edx, r13d
000000014056a4c2 mov      rcx, rbx
000000014056a4c5 call     qword ptr [rip + 0x119e2d]
000000014056a4cb mov      r15d, 0x1fff
000000014056a4d1 test     r15w, ax
000000014056a4d5 je       0x14056c77e
000000014056a4db mov      rax, qword ptr [r14 + 0x10]
000000014056a4df mov      edx, r13d
000000014056a4e2 mov      rcx, rbx
000000014056a4e5 call     qword ptr [rip + 0x119e0d]
000000014056a4eb mov      rcx, qword ptr [rbx + 8]
000000014056a4ef movzx    r14d, ax
000000014056a4f3 mov      rax, qword ptr [rbx + 0x18]
000000014056a4f7 and      r14d, r15d
000000014056a4fa lea      r15, [rbx + 0x1320]
000000014056a501 mov      rdx, r15
000000014056a504 mov      rax, qword ptr [rax + 0x108]
000000014056a50b call     qword ptr [rip + 0x119de7]
000000014056a511 mov      ecx, dword ptr [rsi]
000000014056a513 cmp      ecx, edi
000000014056a515 jae      0x140569154
000000014056a51b lea      r9, [rip + 0xfb7be]
000000014056a522 jmp      0x14056912f
000000014056a527 cmp      dword ptr [rbp + 0x70], edx
000000014056a52a jb       0x14056c784
000000014056a530 mov      rax, qword ptr [r14 + 0x10]
000000014056a534 mov      r13d, 0xb77c
000000014056a53a mov      edx, r13d
000000014056a53d mov      rcx, rbx
000000014056a540 call     qword ptr [rip + 0x119db2]
000000014056a546 mov      r15d, 0x1fff
000000014056a54c test     r15w, ax
000000014056a550 je       0x14056c77e
000000014056a556 mov      rax, qword ptr [r14 + 0x10]
000000014056a55a mov      edx, r13d
000000014056a55d mov      rcx, rbx
000000014056a560 call     qword ptr [rip + 0x119d92]
000000014056a566 mov      rcx, qword ptr [rbx + 8]
000000014056a56a movzx    r14d, ax
000000014056a56e mov      rax, qword ptr [rbx + 0x18]
000000014056a572 and      r14d, r15d
000000014056a575 lea      r15, [rbx + 0x1320]
000000014056a57c mov      rdx, r15
000000014056a57f mov      rax, qword ptr [rax + 0x108]
000000014056a586 call     qword ptr [rip + 0x119d6c]
000000014056a58c mov      ecx, dword ptr [rsi]
000000014056a58e cmp      ecx, edi
000000014056a590 jae      0x140569154
000000014056a596 lea      r9, [rip + 0xfb713]
000000014056a59d jmp      0x14056912f
000000014056a5a2 cmp      dword ptr [rbp + 0x70], edx
000000014056a5a5 jb       0x14056c784
000000014056a5ab mov      rax, qword ptr [r14 + 0x10]
000000014056a5af mov      r13d, 0xb778
000000014056a5b5 mov      edx, r13d
000000014056a5b8 mov      rcx, rbx
000000014056a5bb call     qword ptr [rip + 0x119d37]
000000014056a5c1 mov      r15d, 0x1fff
000000014056a5c7 test     r15w, ax
000000014056a5cb je       0x14056c77e
000000014056a5d1 mov      rax, qword ptr [r14 + 0x10]
000000014056a5d5 mov      edx, r13d
000000014056a5d8 mov      rcx, rbx
000000014056a5db call     qword ptr [rip + 0x119d17]
000000014056a5e1 mov      rcx, qword ptr [rbx + 8]
000000014056a5e5 movzx    r14d, ax
000000014056a5e9 mov      rax, qword ptr [rbx + 0x18]
000000014056a5ed and      r14d, r15d
000000014056a5f0 lea      r15, [rbx + 0x1320]
000000014056a5f7 mov      rdx, r15
000000014056a5fa mov      rax, qword ptr [rax + 0x108]
000000014056a601 call     qword ptr [rip + 0x119cf1]
000000014056a607 mov      ecx, dword ptr [rsi]
000000014056a609 cmp      ecx, edi
000000014056a60b jae      0x140569154
000000014056a611 lea      r9, [rip + 0xfb668]
000000014056a618 jmp      0x14056912f
000000014056a61d cmp      dword ptr [rbp + 0x70], edx
000000014056a620 jb       0x14056c784
000000014056a626 mov      rax, qword ptr [r14 + 0x10]
000000014056a62a mov      r13d, 0xb774
000000014056a630 mov      edx, r13d
000000014056a633 mov      rcx, rbx
000000014056a636 call     qword ptr [rip + 0x119cbc]
000000014056a63c mov      r15d, 0x1fff
000000014056a642 test     r15w, ax
000000014056a646 je       0x14056c77e
000000014056a64c mov      rax, qword ptr [r14 + 0x10]
000000014056a650 mov      edx, r13d
000000014056a653 mov      rcx, rbx
000000014056a656 call     qword ptr [rip + 0x119c9c]
000000014056a65c mov      rcx, qword ptr [rbx + 8]
000000014056a660 movzx    r14d, ax
000000014056a664 mov      rax, qword ptr [rbx + 0x18]
000000014056a668 and      r14d, r15d
000000014056a66b lea      r15, [rbx + 0x1320]
000000014056a672 mov      rdx, r15
000000014056a675 mov      rax, qword ptr [rax + 0x108]
000000014056a67c call     qword ptr [rip + 0x119c76]
000000014056a682 mov      ecx, dword ptr [rsi]
000000014056a684 cmp      ecx, edi
000000014056a686 jae      0x140569154
000000014056a68c lea      r9, [rip + 0xfb5bd]
000000014056a693 jmp      0x14056912f
000000014056a698 cmp      dword ptr [rbp + 0x70], edx
000000014056a69b jb       0x14056c784
000000014056a6a1 mov      rax, qword ptr [r14 + 0x10]
000000014056a6a5 mov      r13d, 0xb770
000000014056a6ab mov      edx, r13d
000000014056a6ae mov      rcx, rbx
000000014056a6b1 call     qword ptr [rip + 0x119c41]
000000014056a6b7 mov      r15d, 0x1fff
000000014056a6bd test     r15w, ax
000000014056a6c1 je       0x14056c77e
000000014056a6c7 mov      rax, qword ptr [r14 + 0x10]
000000014056a6cb mov      edx, r13d
000000014056a6ce mov      rcx, rbx
000000014056a6d1 call     qword ptr [rip + 0x119c21]
000000014056a6d7 mov      rcx, qword ptr [rbx + 8]
000000014056a6db movzx    r14d, ax
000000014056a6df mov      rax, qword ptr [rbx + 0x18]
000000014056a6e3 and      r14d, r15d
000000014056a6e6 lea      r15, [rbx + 0x1320]
000000014056a6ed mov      rdx, r15
000000014056a6f0 mov      rax, qword ptr [rax + 0x108]
000000014056a6f7 call     qword ptr [rip + 0x119bfb]
000000014056a6fd mov      ecx, dword ptr [rsi]
000000014056a6ff cmp      ecx, edi
000000014056a701 jae      0x140569154
000000014056a707 lea      r9, [rip + 0xfb512]
000000014056a70e jmp      0x14056912f
000000014056a713 mov      rax, qword ptr [r14 + 0x10]
000000014056a717 mov      r15d, 0xb000
000000014056a71d mov      edx, r15d
000000014056a720 mov      rcx, rbx
000000014056a723 call     qword ptr [rip + 0x119bcf]
000000014056a729 mov      ecx, 0x1800
000000014056a72e test     cx, ax
000000014056a731 je       0x14056c784
000000014056a737 mov      rax, qword ptr [r14 + 0x10]
000000014056a73b mov      edx, r15d
000000014056a73e mov      rcx, rbx
000000014056a741 call     qword ptr [rip + 0x119bb1]
000000014056a747 mov      rcx, qword ptr [rbx + 8]
000000014056a74b lea      r15, [rbx + 0x1320]
000000014056a752 movzx    r14d, ax
000000014056a756 mov      rdx, r15
000000014056a759 mov      rax, qword ptr [rbx + 0x18]
000000014056a75d shr      r14d, 0xb
000000014056a761 and      r14d, 3
000000014056a765 mov      rax, qword ptr [rax + 0x108]
000000014056a76c call     qword ptr [rip + 0x119b86]
000000014056a772 mov      ecx, dword ptr [rsi]
000000014056a774 cmp      ecx, edi
000000014056a776 jae      0x140569154
000000014056a77c lea      r9, [rip + 0xfb61d]
000000014056a783 jmp      0x14056912f
000000014056a788 sub      eax, 0x2e
000000014056a78b je       0x14056abb6
000000014056a791 sub      eax, edx
000000014056a793 je       0x14056ab4c
000000014056a799 sub      eax, edx
000000014056a79b je       0x14056aacc
000000014056a7a1 sub      eax, edx
000000014056a7a3 je       0x14056aa38
000000014056a7a9 sub      eax, edx
000000014056a7ab je       0x14056a9a4
000000014056a7b1 sub      eax, edx
000000014056a7b3 je       0x14056a902
000000014056a7b9 sub      eax, edx
000000014056a7bb je       0x14056a860
000000014056a7c1 cmp      eax, edx
000000014056a7c3 jne      0x14056c784
000000014056a7c9 cmp      byte ptr [rbx + 0x105], 5
000000014056a7d0 jne      0x14056c784
000000014056a7d6 cmp      dword ptr [rbp + 0x70], edx
000000014056a7d9 jb       0x14056c784
000000014056a7df mov      r13d, 2
000000014056a7e5 lea      r8, [rbp - 0x34]
000000014056a7e9 mov      r9d, r13d
000000014056a7ec mov      edx, 0x100
000000014056a7f1 mov      rcx, rbx
000000014056a7f4 call     0x1403695ac
000000014056a7f9 test     eax, eax
000000014056a7fb jne      0x14056c779
000000014056a801 cmp      dword ptr [rbp - 0x34], 3
000000014056a805 je       0x14056c779
000000014056a80b mov      r9d, r13d
000000014056a80e lea      r8, [rbp - 0x34]
000000014056a812 mov      edx, 0x100
000000014056a817 mov      rcx, rbx
000000014056a81a call     0x1403695ac
000000014056a81f test     eax, eax
000000014056a821 jne      0x14056c779
000000014056a827 mov      rax, qword ptr [rbx + 0x18]
000000014056a82b lea      r14, [rbx + 0x1320]
000000014056a832 mov      rcx, qword ptr [rbx + 8]
000000014056a836 mov      rdx, r14
000000014056a839 mov      r15d, dword ptr [rbp - 0x34]
000000014056a83d mov      rax, qword ptr [rax + 0x108]
000000014056a844 call     qword ptr [rip + 0x119aae]
000000014056a84a mov      ecx, dword ptr [rsi]
000000014056a84c cmp      ecx, edi
000000014056a84e jae      0x14056951f
000000014056a854 lea      r9, [rip + 0xfb935]
000000014056a85b jmp      0x1405694fa
000000014056a860 cmp      byte ptr [rbx + 0x105], 5
000000014056a867 jne      0x14056c784
000000014056a86d cmp      dword ptr [rbp + 0x70], edx
000000014056a870 jb       0x14056c784
000000014056a876 mov      r13d, 2
000000014056a87c lea      r8, [rbp - 0x34]
000000014056a880 mov      r14d, 0x728
000000014056a886 mov      r9d, r13d
000000014056a889 mov      edx, r14d
000000014056a88c mov      rcx, rbx
000000014056a88f call     0x1403695ac
000000014056a894 test     eax, eax
000000014056a896 jne      0x14056c779
000000014056a89c mov      r15d, 0x1fff
000000014056a8a2 test     dword ptr [rbp - 0x34], r15d
000000014056a8a6 je       0x14056c779
000000014056a8ac mov      r9d, r13d
000000014056a8af lea      r8, [rbp - 0x34]
000000014056a8b3 mov      edx, r14d
000000014056a8b6 mov      rcx, rbx
000000014056a8b9 call     0x1403695ac
000000014056a8be test     eax, eax
000000014056a8c0 jne      0x14056c779
000000014056a8c6 mov      r14d, dword ptr [rbp - 0x34]
000000014056a8ca mov      rax, qword ptr [rbx + 0x18]
000000014056a8ce and      r14d, r15d
000000014056a8d1 mov      rcx, qword ptr [rbx + 8]
000000014056a8d5 lea      r15, [rbx + 0x1320]
000000014056a8dc mov      rdx, r15
000000014056a8df mov      rax, qword ptr [rax + 0x108]
000000014056a8e6 call     qword ptr [rip + 0x119a0c]
000000014056a8ec mov      ecx, dword ptr [rsi]
000000014056a8ee cmp      ecx, edi
000000014056a8f0 jae      0x140569154
000000014056a8f6 lea      r9, [rip + 0xfb863]
000000014056a8fd jmp      0x14056912f
000000014056a902 cmp      byte ptr [rbx + 0x105], 5
000000014056a909 jne      0x14056c784
000000014056a90f cmp      dword ptr [rbp + 0x70], edx
000000014056a912 jb       0x14056c784
000000014056a918 mov      r13d, 2
000000014056a91e lea      r8, [rbp - 0x34]
000000014056a922 mov      r14d, 0x724
000000014056a928 mov      r9d, r13d
000000014056a92b mov      edx, r14d
000000014056a92e mov      rcx, rbx
000000014056a931 call     0x1403695ac
000000014056a936 test     eax, eax
000000014056a938 jne      0x14056c779
000000014056a93e mov      r15d, 0x1fff
000000014056a944 test     dword ptr [rbp - 0x34], r15d
000000014056a948 je       0x14056c779
000000014056a94e mov      r9d, r13d
000000014056a951 lea      r8, [rbp - 0x34]
000000014056a955 mov      edx, r14d
000000014056a958 mov      rcx, rbx
000000014056a95b call     0x1403695ac
000000014056a960 test     eax, eax
000000014056a962 jne      0x14056c779
000000014056a968 mov      r14d, dword ptr [rbp - 0x34]
000000014056a96c mov      rax, qword ptr [rbx + 0x18]
000000014056a970 and      r14d, r15d
000000014056a973 mov      rcx, qword ptr [rbx + 8]
000000014056a977 lea      r15, [rbx + 0x1320]
000000014056a97e mov      rdx, r15
000000014056a981 mov      rax, qword ptr [rax + 0x108]
000000014056a988 call     qword ptr [rip + 0x11996a]
000000014056a98e mov      ecx, dword ptr [rsi]
000000014056a990 cmp      ecx, edi
000000014056a992 jae      0x140569154
000000014056a998 lea      r9, [rip + 0xfb791]
000000014056a99f jmp      0x14056912f
000000014056a9a4 cmp      byte ptr [rbx + 0x105], 5
000000014056a9ab jne      0x14056c784
000000014056a9b1 mov      r13d, 2
000000014056a9b7 lea      r8, [rbp - 0x34]
000000014056a9bb mov      r14d, 0x504
000000014056a9c1 mov      r9d, r13d
000000014056a9c4 mov      edx, r14d
000000014056a9c7 mov      rcx, rbx
000000014056a9ca call     0x1403695ac
000000014056a9cf test     eax, eax
000000014056a9d1 jne      0x14056c779
000000014056a9d7 test     byte ptr [rbp - 0x34], 0xf
000000014056a9db je       0x14056c779
000000014056a9e1 mov      r9d, r13d
000000014056a9e4 lea      r8, [rbp - 0x34]
000000014056a9e8 mov      edx, r14d
000000014056a9eb mov      rcx, rbx
000000014056a9ee call     0x1403695ac
000000014056a9f3 test     eax, eax
000000014056a9f5 jne      0x14056c779
000000014056a9fb mov      rax, qword ptr [rbx + 0x18]
000000014056a9ff lea      r15, [rbx + 0x1320]
000000014056aa06 mov      r14d, dword ptr [rbp - 0x34]
000000014056aa0a mov      rdx, r15
000000014056aa0d mov      rcx, qword ptr [rbx + 8]
000000014056aa11 and      r14d, 0xf
000000014056aa15 mov      rax, qword ptr [rax + 0x108]
000000014056aa1c call     qword ptr [rip + 0x1198d6]
000000014056aa22 mov      ecx, dword ptr [rsi]
000000014056aa24 cmp      ecx, edi
000000014056aa26 jae      0x140569154
000000014056aa2c lea      r9, [rip + 0xfb6cd]
000000014056aa33 jmp      0x14056912f
000000014056aa38 cmp      byte ptr [rbx + 0x105], 5
000000014056aa3f jne      0x14056c784
000000014056aa45 mov      r13d, 2
000000014056aa4b lea      r8, [rbp - 0x34]
000000014056aa4f mov      r14d, 0x780
000000014056aa55 mov      r9d, r13d
000000014056aa58 mov      edx, r14d
000000014056aa5b mov      rcx, rbx
000000014056aa5e call     0x1403695ac
000000014056aa63 test     eax, eax
000000014056aa65 jne      0x14056c779
000000014056aa6b test     byte ptr [rbp - 0x34], 0xf
000000014056aa6f je       0x14056c779
000000014056aa75 mov      r9d, r13d
000000014056aa78 lea      r8, [rbp - 0x34]
000000014056aa7c mov      edx, r14d
000000014056aa7f mov      rcx, rbx
000000014056aa82 call     0x1403695ac
000000014056aa87 test     eax, eax
000000014056aa89 jne      0x14056c779
000000014056aa8f mov      rax, qword ptr [rbx + 0x18]
000000014056aa93 lea      r15, [rbx + 0x1320]
000000014056aa9a mov      r14d, dword ptr [rbp - 0x34]
000000014056aa9e mov      rdx, r15
000000014056aaa1 mov      rcx, qword ptr [rbx + 8]
000000014056aaa5 and      r14d, 0xf
000000014056aaa9 mov      rax, qword ptr [rax + 0x108]
000000014056aab0 call     qword ptr [rip + 0x119842]
000000014056aab6 mov      ecx, dword ptr [rsi]
000000014056aab8 cmp      ecx, edi
000000014056aaba jae      0x140569154
000000014056aac0 lea      r9, [rip + 0xfb609]
000000014056aac7 jmp      0x14056912f
000000014056aacc mov      rax, qword ptr [r14 + 0x20]
000000014056aad0 mov      r15d, 0xb704
000000014056aad6 mov      edx, r15d
000000014056aad9 mov      rcx, rbx
000000014056aadc call     qword ptr [rip + 0x119816]
000000014056aae2 mov      dword ptr [rbp - 0x34], eax
000000014056aae5 test     eax, 0xff0000
000000014056aaea jne      0x14056c784
000000014056aaf0 mov      rax, qword ptr [r14 + 0x20]
000000014056aaf4 mov      edx, r15d
000000014056aaf7 mov      rcx, rbx
000000014056aafa call     qword ptr [rip + 0x1197f8]
000000014056ab00 mov      rcx, qword ptr [rbx + 0x18]
000000014056ab04 lea      r15, [rbx + 0x1320]
000000014056ab0b mov      r14d, eax
000000014056ab0e mov      dword ptr [rbp - 0x34], eax
000000014056ab11 mov      rdx, r15
000000014056ab14 mov      rax, qword ptr [rcx + 0x108]
000000014056ab1b mov      rcx, qword ptr [rbx + 8]
000000014056ab1f call     qword ptr [rip + 0x1197d3]
000000014056ab25 mov      edx, dword ptr [rsi]
000000014056ab27 cmp      edx, edi
000000014056ab29 jae      0x140569154
000000014056ab2f shr      r14d, 0x10
000000014056ab33 lea      r9, [rip + 0xfb566]
000000014056ab3a movzx    ecx, r14b
000000014056ab3e sub      edi, edx
000000014056ab40 mov      dword ptr [rsp + 0x20], ecx
000000014056ab44 add      rdx, r12
000000014056ab47 jmp      0x14056913a
000000014056ab4c mov      rax, qword ptr [r14]
000000014056ab4f mov      r15d, 0xb704
000000014056ab55 mov      edx, r15d
000000014056ab58 mov      rcx, rbx
000000014056ab5b call     qword ptr [rip + 0x119797]
000000014056ab61 test     al, al
000000014056ab63 jne      0x14056c784
000000014056ab69 mov      rax, qword ptr [r14]
000000014056ab6c mov      edx, r15d
000000014056ab6f mov      rcx, rbx
000000014056ab72 call     qword ptr [rip + 0x119780]
000000014056ab78 mov      rcx, qword ptr [rbx + 0x18]
000000014056ab7c lea      r14, [rbx + 0x1320]
000000014056ab83 movzx    r15d, al
000000014056ab87 mov      rdx, r14
000000014056ab8a mov      rax, qword ptr [rcx + 0x108]
000000014056ab91 mov      rcx, qword ptr [rbx + 8]
000000014056ab95 call     qword ptr [rip + 0x11975d]
000000014056ab9b mov      edx, dword ptr [rsi]
000000014056ab9d cmp      edx, edi
000000014056ab9f jae      0x14056951f
000000014056aba5 sub      edi, edx
000000014056aba7 lea      r9, [rip + 0xfb4c2]
000000014056abae add      rdx, r12
000000014056abb1 jmp      0x140569500
000000014056abb6 cmp      dword ptr [rbp + 0x70], edx
000000014056abb9 jb       0x14056c784
000000014056abbf mov      rax, qword ptr [r14 + 0x20]
000000014056abc3 mov      edx, 0xb79c
000000014056abc8 mov      rcx, rbx
000000014056abcb call     qword ptr [rip + 0x119727]
000000014056abd1 mov      dword ptr [rbp - 0x20], eax
000000014056abd4 mov      edx, 0xb750
000000014056abd9 mov      rax, qword ptr [r14 + 0x20]
000000014056abdd mov      rcx, rbx
000000014056abe0 call     qword ptr [rip + 0x119712]
000000014056abe6 mov      dword ptr [rbp - 0x30], eax
000000014056abe9 mov      edx, 0xb754
000000014056abee mov      rax, qword ptr [r14 + 0x20]
000000014056abf2 mov      rcx, rbx
000000014056abf5 call     qword ptr [rip + 0x1196fd]
000000014056abfb mov      dword ptr [rbp - 0x24], eax
000000014056abfe mov      edx, 0xb758
000000014056ac03 mov      rax, qword ptr [r14 + 0x20]
000000014056ac07 mov      rcx, rbx
000000014056ac0a call     qword ptr [rip + 0x1196e8]
000000014056ac10 mov      dword ptr [rbp - 0x28], eax
000000014056ac13 mov      edx, 0xb75c
000000014056ac18 mov      rax, qword ptr [r14 + 0x20]
000000014056ac1c mov      rcx, rbx
000000014056ac1f call     qword ptr [rip + 0x1196d3]
000000014056ac25 mov      dword ptr [rbp - 0x2c], eax
000000014056ac28 mov      edx, 0xb760
000000014056ac2d mov      rax, qword ptr [r14 + 0x20]
000000014056ac31 mov      rcx, rbx
000000014056ac34 call     qword ptr [rip + 0x1196be]
000000014056ac3a mov      edx, 0xb764
000000014056ac3f mov      rcx, rbx
000000014056ac42 mov      r13d, eax
000000014056ac45 mov      rax, qword ptr [r14 + 0x20]
000000014056ac49 call     qword ptr [rip + 0x1196a9]
000000014056ac4f mov      edx, 0xb768
000000014056ac54 mov      rcx, rbx
000000014056ac57 mov      r12d, eax
000000014056ac5a mov      rax, qword ptr [r14 + 0x20]
000000014056ac5e call     qword ptr [rip + 0x119694]
000000014056ac64 mov      edx, 0xb76c
000000014056ac69 mov      rcx, rbx
000000014056ac6c mov      r15d, eax
000000014056ac6f mov      rax, qword ptr [r14 + 0x20]
000000014056ac73 call     qword ptr [rip + 0x11967f]
000000014056ac79 mov      rdi, qword ptr [rbp - 0x18]
000000014056ac7d mov      edx, 0xb770
000000014056ac82 mov      r14d, eax
000000014056ac85 mov      rcx, rbx
000000014056ac88 mov      rax, qword ptr [rdi + 0x20]
000000014056ac8c call     qword ptr [rip + 0x119666]
000000014056ac92 mov      edx, 0xb774
000000014056ac97 mov      rcx, rbx
000000014056ac9a mov      esi, eax
000000014056ac9c mov      rax, qword ptr [rdi + 0x20]
000000014056aca0 call     qword ptr [rip + 0x119652]
000000014056aca6 mov      edx, 0xb778
000000014056acab mov      rcx, rbx
000000014056acae mov      edi, eax
000000014056acb0 mov      rax, qword ptr [rbp - 0x18]
000000014056acb4 mov      rax, qword ptr [rax + 0x20]
000000014056acb8 call     qword ptr [rip + 0x11963a]
000000014056acbe mov      rcx, qword ptr [rbp + 0x48]
000000014056acc2 mov      edx, 0xb77c
000000014056acc7 mov      ebx, eax
000000014056acc9 mov      rax, qword ptr [rbp - 0x18]
000000014056accd mov      rax, qword ptr [rax + 0x20]
000000014056acd1 call     qword ptr [rip + 0x119621]
000000014056acd7 mov      ecx, eax
000000014056acd9 mov      dword ptr [rbp - 0x34], eax
000000014056acdc shr      ecx, 0x10
000000014056acdf mov      r8d, eax
000000014056ace2 movzx    r9d, cl
000000014056ace6 mov      ecx, ebx
000000014056ace8 shr      ecx, 0x10
000000014056aceb movzx    ecx, cl
000000014056acee add      r9d, ecx
000000014056acf1 mov      ecx, edi
000000014056acf3 shr      ecx, 0x10
000000014056acf6 movzx    edx, cl
000000014056acf9 mov      ecx, esi
000000014056acfb add      r9d, edx
000000014056acfe mov      edx, dword ptr [rbp - 0x2c]
000000014056ad01 mov      r10d, dword ptr [rbp - 0x28]
000000014056ad05 mov      r11d, dword ptr [rbp - 0x24]
000000014056ad09 shr      ecx, 0x10
000000014056ad0c movzx    eax, cl
000000014056ad0f add      r9d, eax
000000014056ad12 mov      eax, r14d
000000014056ad15 shr      eax, 0x10
000000014056ad18 movzx    ecx, al
000000014056ad1b mov      eax, r15d
000000014056ad1e add      r9d, ecx
000000014056ad21 shr      eax, 0x10
000000014056ad24 movzx    ecx, al
000000014056ad27 mov      eax, r12d
000000014056ad2a add      r9d, ecx
000000014056ad2d shr      eax, 0x10
000000014056ad30 movzx    ecx, al
000000014056ad33 mov      eax, r13d
000000014056ad36 add      r9d, ecx
000000014056ad39 shr      eax, 0x10
000000014056ad3c movzx    ecx, al
000000014056ad3f mov      eax, edx
000000014056ad41 add      r9d, ecx
000000014056ad44 shr      eax, 0x10
000000014056ad47 movzx    ecx, al
000000014056ad4a mov      eax, r10d
000000014056ad4d add      r9d, ecx
000000014056ad50 shr      eax, 0x10
000000014056ad53 movzx    ecx, al
000000014056ad56 mov      eax, r11d
000000014056ad59 add      r9d, ecx
000000014056ad5c shr      eax, 0x10
000000014056ad5f movzx    ecx, al
000000014056ad62 mov      eax, dword ptr [rbp - 0x30]
000000014056ad65 add      r9d, ecx
000000014056ad68 shr      eax, 0x10
000000014056ad6b movzx    ecx, al
000000014056ad6e mov      eax, 0x1fff
000000014056ad73 add      r9d, ecx
000000014056ad76 and      ebx, eax
000000014056ad78 mov      ecx, dword ptr [rbp - 0x20]
000000014056ad7b and      r12d, eax
000000014056ad7e and      r8d, eax
000000014056ad81 and      edi, eax
000000014056ad83 add      r9d, r8d
000000014056ad86 and      esi, eax
000000014056ad88 add      r9d, ebx
000000014056ad8b and      r14d, eax
000000014056ad8e mov      rbx, qword ptr [rbp + 0x48]
000000014056ad92 add      r9d, edi
000000014056ad95 add      r9d, esi
000000014056ad98 and      r15d, eax
000000014056ad9b add      r9d, r14d
000000014056ad9e and      r13d, eax
000000014056ada1 and      edx, eax
000000014056ada3 and      r10d, eax
000000014056ada6 and      r11d, eax
000000014056ada9 add      r9d, r15d
000000014056adac add      r9d, r12d
000000014056adaf mov      r12d, eax
000000014056adb2 mov      eax, dword ptr [rbp - 0x30]
000000014056adb5 add      r9d, r13d
000000014056adb8 and      eax, r12d
000000014056adbb add      r9d, edx
000000014056adbe add      r9d, r10d
000000014056adc1 add      r9d, r11d
000000014056adc4 add      r9d, eax
000000014056adc7 mov      eax, ecx
000000014056adc9 shr      eax, 0x10
000000014056adcc and      ecx, r12d
000000014056adcf and      eax, r12d
000000014056add2 add      eax, ecx
000000014056add4 cmp      eax, r9d
000000014056add7 je       0x14056c77e
000000014056addd mov      r14, qword ptr [rbp - 0x18]
000000014056ade1 mov      edx, 0xb79c
000000014056ade6 mov      rcx, rbx
000000014056ade9 mov      rax, qword ptr [r14 + 0x20]
000000014056aded call     qword ptr [rip + 0x119505]
000000014056adf3 mov      rcx, qword ptr [rbx + 0x18]
000000014056adf7 lea      r13, [rbx + 0x1320]
000000014056adfe mov      r15d, eax
000000014056ae01 mov      dword ptr [rbp - 0x34], eax
000000014056ae04 mov      rdx, r13
000000014056ae07 mov      rax, qword ptr [rcx + 0x108]
000000014056ae0e mov      rcx, qword ptr [rbx + 8]
000000014056ae12 call     qword ptr [rip + 0x1194e0]
000000014056ae18 mov      rsi, qword ptr [rbp + 0x60]
000000014056ae1c mov      edi, dword ptr [rbp + 0x58]
000000014056ae1f mov      edx, dword ptr [rsi]
000000014056ae21 cmp      edx, edi
000000014056ae23 jae      0x14056ae60
000000014056ae25 mov      rcx, qword ptr [rbx + 0x18]
000000014056ae29 lea      r9, [rip + 0xfafa0]
000000014056ae30 and      r15d, r12d
000000014056ae33 mov      r8d, edi
000000014056ae36 mov      dword ptr [rbp + 0x48], r15d
000000014056ae3a sub      r8d, edx
000000014056ae3d mov      r15, qword ptr [rbp + 0x50]
000000014056ae41 mov      rax, qword ptr [rcx + 0x128]
000000014056ae48 add      rdx, r15
000000014056ae4b mov      ecx, dword ptr [rbp + 0x48]
000000014056ae4e mov      dword ptr [rsp + 0x20], ecx
000000014056ae52 mov      rcx, qword ptr [rbx + 8]
000000014056ae56 call     qword ptr [rip + 0x11949c]
000000014056ae5c add      dword ptr [rsi], eax
000000014056ae5e jmp      0x14056ae64
000000014056ae60 mov      r15, qword ptr [rbp + 0x50]
000000014056ae64 mov      rax, qword ptr [rbx + 0x18]
000000014056ae68 mov      rdx, r13
000000014056ae6b mov      rcx, qword ptr [rbx + 8]
000000014056ae6f mov      rax, qword ptr [rax + 0x110]
000000014056ae76 call     qword ptr [rip + 0x11947c]
000000014056ae7c mov      eax, dword ptr [rbp - 0x34]
000000014056ae7f mov      rdx, r13
000000014056ae82 mov      rcx, qword ptr [rbx + 8]
000000014056ae86 shr      eax, 0x10
000000014056ae89 and      eax, r12d
000000014056ae8c mov      dword ptr [rbp + 0x48], eax
000000014056ae8f mov      rax, qword ptr [rbx + 0x18]
000000014056ae93 mov      rax, qword ptr [rax + 0x108]
000000014056ae9a call     qword ptr [rip + 0x119458]
000000014056aea0 mov      edx, dword ptr [rsi]
000000014056aea2 cmp      edx, edi
000000014056aea4 jae      0x14056aed4
000000014056aea6 mov      rcx, qword ptr [rbx + 0x18]
000000014056aeaa lea      r9, [rip + 0xfaf4f]
000000014056aeb1 mov      r8d, edi
000000014056aeb4 sub      r8d, edx
000000014056aeb7 add      rdx, r15
000000014056aeba mov      rax, qword ptr [rcx + 0x128]
000000014056aec1 mov      ecx, dword ptr [rbp + 0x48]
000000014056aec4 mov      dword ptr [rsp + 0x20], ecx
000000014056aec8 mov      rcx, qword ptr [rbx + 8]
000000014056aecc call     qword ptr [rip + 0x119426]
000000014056aed2 add      dword ptr [rsi], eax
000000014056aed4 mov      rax, qword ptr [rbx + 0x18]
000000014056aed8 mov      rdx, r13
000000014056aedb mov      rcx, qword ptr [rbx + 8]
000000014056aedf mov      rax, qword ptr [rax + 0x110]
000000014056aee6 call     qword ptr [rip + 0x11940c]
000000014056aeec mov      rax, qword ptr [r14 + 0x20]
000000014056aef0 mov      edx, 0xb750
000000014056aef5 mov      rcx, rbx
000000014056aef8 call     qword ptr [rip + 0x1193fa]
000000014056aefe mov      rcx, qword ptr [rbx + 0x18]
000000014056af02 mov      rdx, r13
000000014056af05 mov      dword ptr [rbp + 0x48], eax
000000014056af08 mov      dword ptr [rbp - 0x34], eax
000000014056af0b mov      rax, qword ptr [rcx + 0x108]
000000014056af12 mov      rcx, qword ptr [rbx + 8]
000000014056af16 call     qword ptr [rip + 0x1193dc]
000000014056af1c mov      edx, dword ptr [rsi]
000000014056af1e cmp      edx, edi
000000014056af20 jae      0x14056af55
000000014056af22 mov      rcx, qword ptr [rbx + 0x18]
000000014056af26 mov      r8d, edi
000000014056af29 mov      r9d, dword ptr [rbp + 0x48]
000000014056af2d sub      r8d, edx
000000014056af30 and      r9d, r12d
000000014056af33 add      rdx, r15
000000014056af36 mov      dword ptr [rsp + 0x20], r9d
000000014056af3b lea      r9, [rip + 0xfab5e]
000000014056af42 mov      rax, qword ptr [rcx + 0x128]
000000014056af49 mov      rcx, qword ptr [rbx + 8]
000000014056af4d call     qword ptr [rip + 0x1193a5]
000000014056af53 add      dword ptr [rsi], eax
000000014056af55 mov      rax, qword ptr [rbx + 0x18]
000000014056af59 mov      rdx, r13
000000014056af5c mov      rcx, qword ptr [rbx + 8]
000000014056af60 mov      rax, qword ptr [rax + 0x110]
000000014056af67 call     qword ptr [rip + 0x11938b]
000000014056af6d mov      eax, dword ptr [rbp - 0x34]
000000014056af70 mov      rdx, r13
000000014056af73 mov      rcx, qword ptr [rbx + 8]
000000014056af77 shr      eax, 0x10
000000014056af7a movzx    eax, al
000000014056af7d mov      dword ptr [rbp + 0x48], eax
000000014056af80 mov      rax, qword ptr [rbx + 0x18]
000000014056af84 mov      rax, qword ptr [rax + 0x108]
000000014056af8b call     qword ptr [rip + 0x119367]
000000014056af91 mov      edx, dword ptr [rsi]
000000014056af93 cmp      edx, edi
000000014056af95 jae      0x14056afc5
000000014056af97 mov      rcx, qword ptr [rbx + 0x18]
000000014056af9b lea      r9, [rip + 0xfae8e]
000000014056afa2 mov      r8d, edi
000000014056afa5 sub      r8d, edx
000000014056afa8 add      rdx, r15
000000014056afab mov      rax, qword ptr [rcx + 0x128]
000000014056afb2 mov      ecx, dword ptr [rbp + 0x48]
000000014056afb5 mov      dword ptr [rsp + 0x20], ecx
000000014056afb9 mov      rcx, qword ptr [rbx + 8]
000000014056afbd call     qword ptr [rip + 0x119335]
000000014056afc3 add      dword ptr [rsi], eax
000000014056afc5 mov      rax, qword ptr [rbx + 0x18]
000000014056afc9 mov      rdx, r13
000000014056afcc mov      rcx, qword ptr [rbx + 8]
000000014056afd0 mov      rax, qword ptr [rax + 0x110]
000000014056afd7 call     qword ptr [rip + 0x11931b]
000000014056afdd mov      rax, qword ptr [r14 + 0x20]
000000014056afe1 mov      edx, 0xb754
000000014056afe6 mov      rcx, rbx
000000014056afe9 call     qword ptr [rip + 0x119309]
000000014056afef mov      rcx, qword ptr [rbx + 0x18]
000000014056aff3 mov      rdx, r13
000000014056aff6 mov      dword ptr [rbp + 0x48], eax
000000014056aff9 mov      dword ptr [rbp - 0x34], eax
000000014056affc mov      rax, qword ptr [rcx + 0x108]
000000014056b003 mov      rcx, qword ptr [rbx + 8]
000000014056b007 call     qword ptr [rip + 0x1192eb]
000000014056b00d mov      edx, dword ptr [rsi]
000000014056b00f cmp      edx, edi
000000014056b011 jae      0x14056b046
000000014056b013 mov      rcx, qword ptr [rbx + 0x18]
000000014056b017 mov      r8d, edi
000000014056b01a mov      r9d, dword ptr [rbp + 0x48]
000000014056b01e sub      r8d, edx
000000014056b021 and      r9d, r12d
000000014056b024 add      rdx, r15
000000014056b027 mov      dword ptr [rsp + 0x20], r9d
000000014056b02c lea      r9, [rip + 0xfaa9d]
000000014056b033 mov      rax, qword ptr [rcx + 0x128]
000000014056b03a mov      rcx, qword ptr [rbx + 8]
000000014056b03e call     qword ptr [rip + 0x1192b4]
000000014056b044 add      dword ptr [rsi], eax
000000014056b046 mov      rax, qword ptr [rbx + 0x18]
000000014056b04a mov      rdx, r13
000000014056b04d mov      rcx, qword ptr [rbx + 8]
000000014056b051 mov      rax, qword ptr [rax + 0x110]
000000014056b058 call     qword ptr [rip + 0x11929a]
000000014056b05e mov      eax, dword ptr [rbp - 0x34]
000000014056b061 mov      rdx, r13
000000014056b064 mov      rcx, qword ptr [rbx + 8]
000000014056b068 shr      eax, 0x10
000000014056b06b movzx    eax, al
000000014056b06e mov      dword ptr [rbp + 0x48], eax
000000014056b071 mov      rax, qword ptr [rbx + 0x18]
000000014056b075 mov      rax, qword ptr [rax + 0x108]
000000014056b07c call     qword ptr [rip + 0x119276]
000000014056b082 mov      edx, dword ptr [rsi]
000000014056b084 cmp      edx, edi
000000014056b086 jae      0x14056b0b6
000000014056b088 mov      rcx, qword ptr [rbx + 0x18]
000000014056b08c lea      r9, [rip + 0xfadcd]
000000014056b093 mov      r8d, edi
000000014056b096 sub      r8d, edx
000000014056b099 add      rdx, r15
000000014056b09c mov      rax, qword ptr [rcx + 0x128]
000000014056b0a3 mov      ecx, dword ptr [rbp + 0x48]
000000014056b0a6 mov      dword ptr [rsp + 0x20], ecx
000000014056b0aa mov      rcx, qword ptr [rbx + 8]
000000014056b0ae call     qword ptr [rip + 0x119244]
000000014056b0b4 add      dword ptr [rsi], eax
000000014056b0b6 mov      rax, qword ptr [rbx + 0x18]
000000014056b0ba mov      rdx, r13
000000014056b0bd mov      rcx, qword ptr [rbx + 8]
000000014056b0c1 mov      rax, qword ptr [rax + 0x110]
000000014056b0c8 call     qword ptr [rip + 0x11922a]
000000014056b0ce mov      rax, qword ptr [r14 + 0x20]
000000014056b0d2 mov      edx, 0xb758
000000014056b0d7 mov      rcx, rbx
000000014056b0da call     qword ptr [rip + 0x119218]
000000014056b0e0 mov      rcx, qword ptr [rbx + 0x18]
000000014056b0e4 mov      rdx, r13
000000014056b0e7 mov      dword ptr [rbp + 0x48], eax
000000014056b0ea mov      dword ptr [rbp - 0x34], eax
000000014056b0ed mov      rax, qword ptr [rcx + 0x108]
000000014056b0f4 mov      rcx, qword ptr [rbx + 8]
000000014056b0f8 call     qword ptr [rip + 0x1191fa]
000000014056b0fe mov      edx, dword ptr [rsi]
000000014056b100 cmp      edx, edi
000000014056b102 jae      0x14056b137
000000014056b104 mov      rcx, qword ptr [rbx + 0x18]
000000014056b108 mov      r8d, edi
000000014056b10b mov      r9d, dword ptr [rbp + 0x48]
000000014056b10f sub      r8d, edx
000000014056b112 and      r9d, r12d
000000014056b115 add      rdx, r15
000000014056b118 mov      dword ptr [rsp + 0x20], r9d
000000014056b11d lea      r9, [rip + 0xfa9dc]
000000014056b124 mov      rax, qword ptr [rcx + 0x128]
000000014056b12b mov      rcx, qword ptr [rbx + 8]
000000014056b12f call     qword ptr [rip + 0x1191c3]
000000014056b135 add      dword ptr [rsi], eax
000000014056b137 mov      rax, qword ptr [rbx + 0x18]
000000014056b13b mov      rdx, r13
000000014056b13e mov      rcx, qword ptr [rbx + 8]
000000014056b142 mov      rax, qword ptr [rax + 0x110]
000000014056b149 call     qword ptr [rip + 0x1191a9]
000000014056b14f mov      eax, dword ptr [rbp - 0x34]
000000014056b152 mov      rdx, r13
000000014056b155 mov      rcx, qword ptr [rbx + 8]
000000014056b159 shr      eax, 0x10
000000014056b15c movzx    eax, al
000000014056b15f mov      dword ptr [rbp + 0x48], eax
000000014056b162 mov      rax, qword ptr [rbx + 0x18]
000000014056b166 mov      rax, qword ptr [rax + 0x108]
000000014056b16d call     qword ptr [rip + 0x119185]
000000014056b173 mov      edx, dword ptr [rsi]
000000014056b175 cmp      edx, edi
000000014056b177 jae      0x14056b1a7
000000014056b179 mov      rcx, qword ptr [rbx + 0x18]
000000014056b17d lea      r9, [rip + 0xfad0c]
000000014056b184 mov      r8d, edi
000000014056b187 sub      r8d, edx
000000014056b18a add      rdx, r15
000000014056b18d mov      rax, qword ptr [rcx + 0x128]
000000014056b194 mov      ecx, dword ptr [rbp + 0x48]
000000014056b197 mov      dword ptr [rsp + 0x20], ecx
000000014056b19b mov      rcx, qword ptr [rbx + 8]
000000014056b19f call     qword ptr [rip + 0x119153]
000000014056b1a5 add      dword ptr [rsi], eax
000000014056b1a7 mov      rax, qword ptr [rbx + 0x18]
000000014056b1ab mov      rdx, r13
000000014056b1ae mov      rcx, qword ptr [rbx + 8]
000000014056b1b2 mov      rax, qword ptr [rax + 0x110]
000000014056b1b9 call     qword ptr [rip + 0x119139]
000000014056b1bf mov      rax, qword ptr [r14 + 0x20]
000000014056b1c3 mov      edx, 0xb75c
000000014056b1c8 mov      rcx, rbx
000000014056b1cb call     qword ptr [rip + 0x119127]
000000014056b1d1 mov      rcx, qword ptr [rbx + 0x18]
000000014056b1d5 mov      rdx, r13
000000014056b1d8 mov      dword ptr [rbp + 0x48], eax
000000014056b1db mov      dword ptr [rbp - 0x34], eax
000000014056b1de mov      rax, qword ptr [rcx + 0x108]
000000014056b1e5 mov      rcx, qword ptr [rbx + 8]
000000014056b1e9 call     qword ptr [rip + 0x119109]
000000014056b1ef mov      edx, dword ptr [rsi]
000000014056b1f1 cmp      edx, edi
000000014056b1f3 jae      0x14056b228
000000014056b1f5 mov      rcx, qword ptr [rbx + 0x18]
000000014056b1f9 mov      r8d, edi
000000014056b1fc mov      r9d, dword ptr [rbp + 0x48]
000000014056b200 sub      r8d, edx
000000014056b203 and      r9d, r12d
000000014056b206 add      rdx, r15
000000014056b209 mov      dword ptr [rsp + 0x20], r9d
000000014056b20e lea      r9, [rip + 0xfa91b]
000000014056b215 mov      rax, qword ptr [rcx + 0x128]
000000014056b21c mov      rcx, qword ptr [rbx + 8]
000000014056b220 call     qword ptr [rip + 0x1190d2]
000000014056b226 add      dword ptr [rsi], eax
000000014056b228 mov      rax, qword ptr [rbx + 0x18]
000000014056b22c mov      rdx, r13
000000014056b22f mov      rcx, qword ptr [rbx + 8]
000000014056b233 mov      rax, qword ptr [rax + 0x110]
000000014056b23a call     qword ptr [rip + 0x1190b8]
000000014056b240 mov      eax, dword ptr [rbp - 0x34]
000000014056b243 mov      rdx, r13
000000014056b246 mov      rcx, qword ptr [rbx + 8]
000000014056b24a shr      eax, 0x10
000000014056b24d movzx    eax, al
000000014056b250 mov      dword ptr [rbp + 0x48], eax
000000014056b253 mov      rax, qword ptr [rbx + 0x18]
000000014056b257 mov      rax, qword ptr [rax + 0x108]
000000014056b25e call     qword ptr [rip + 0x119094]
000000014056b264 mov      edx, dword ptr [rsi]
000000014056b266 cmp      edx, edi
000000014056b268 jae      0x14056b298
000000014056b26a mov      rcx, qword ptr [rbx + 0x18]
000000014056b26e lea      r9, [rip + 0xfac4b]
000000014056b275 mov      r8d, edi
000000014056b278 sub      r8d, edx
000000014056b27b add      rdx, r15
000000014056b27e mov      rax, qword ptr [rcx + 0x128]
000000014056b285 mov      ecx, dword ptr [rbp + 0x48]
000000014056b288 mov      dword ptr [rsp + 0x20], ecx
000000014056b28c mov      rcx, qword ptr [rbx + 8]
000000014056b290 call     qword ptr [rip + 0x119062]
000000014056b296 add      dword ptr [rsi], eax
000000014056b298 mov      rax, qword ptr [rbx + 0x18]
000000014056b29c mov      rdx, r13
000000014056b29f mov      rcx, qword ptr [rbx + 8]
000000014056b2a3 mov      rax, qword ptr [rax + 0x110]
000000014056b2aa call     qword ptr [rip + 0x119048]
000000014056b2b0 mov      rax, qword ptr [r14 + 0x20]
000000014056b2b4 mov      edx, 0xb760
000000014056b2b9 mov      rcx, rbx
000000014056b2bc call     qword ptr [rip + 0x119036]
000000014056b2c2 mov      rcx, qword ptr [rbx + 0x18]
000000014056b2c6 mov      rdx, r13
000000014056b2c9 mov      dword ptr [rbp + 0x48], eax
000000014056b2cc mov      dword ptr [rbp - 0x34], eax
000000014056b2cf mov      rax, qword ptr [rcx + 0x108]
000000014056b2d6 mov      rcx, qword ptr [rbx + 8]
000000014056b2da call     qword ptr [rip + 0x119018]
000000014056b2e0 mov      edx, dword ptr [rsi]
000000014056b2e2 cmp      edx, edi
000000014056b2e4 jae      0x14056b319
000000014056b2e6 mov      rcx, qword ptr [rbx + 0x18]
000000014056b2ea mov      r8d, edi
000000014056b2ed mov      r9d, dword ptr [rbp + 0x48]
000000014056b2f1 sub      r8d, edx
000000014056b2f4 and      r9d, r12d
000000014056b2f7 add      rdx, r15
000000014056b2fa mov      dword ptr [rsp + 0x20], r9d
000000014056b2ff lea      r9, [rip + 0xfa85a]
000000014056b306 mov      rax, qword ptr [rcx + 0x128]
000000014056b30d mov      rcx, qword ptr [rbx + 8]
000000014056b311 call     qword ptr [rip + 0x118fe1]
000000014056b317 add      dword ptr [rsi], eax
000000014056b319 mov      rax, qword ptr [rbx + 0x18]
000000014056b31d mov      rdx, r13
000000014056b320 mov      rcx, qword ptr [rbx + 8]
000000014056b324 mov      rax, qword ptr [rax + 0x110]
000000014056b32b call     qword ptr [rip + 0x118fc7]
000000014056b331 mov      eax, dword ptr [rbp - 0x34]
000000014056b334 mov      rdx, r13
000000014056b337 mov      rcx, qword ptr [rbx + 8]
000000014056b33b shr      eax, 0x10
000000014056b33e movzx    eax, al
000000014056b341 mov      dword ptr [rbp + 0x48], eax
000000014056b344 mov      rax, qword ptr [rbx + 0x18]
000000014056b348 mov      rax, qword ptr [rax + 0x108]
000000014056b34f call     qword ptr [rip + 0x118fa3]
000000014056b355 mov      edx, dword ptr [rsi]
000000014056b357 cmp      edx, edi
000000014056b359 jae      0x14056b389
000000014056b35b mov      rcx, qword ptr [rbx + 0x18]
000000014056b35f lea      r9, [rip + 0xfab8a]
000000014056b366 mov      r8d, edi
000000014056b369 sub      r8d, edx
000000014056b36c add      rdx, r15
000000014056b36f mov      rax, qword ptr [rcx + 0x128]
000000014056b376 mov      ecx, dword ptr [rbp + 0x48]
000000014056b379 mov      dword ptr [rsp + 0x20], ecx
000000014056b37d mov      rcx, qword ptr [rbx + 8]
000000014056b381 call     qword ptr [rip + 0x118f71]
000000014056b387 add      dword ptr [rsi], eax
000000014056b389 mov      rax, qword ptr [rbx + 0x18]
000000014056b38d mov      rdx, r13
000000014056b390 mov      rcx, qword ptr [rbx + 8]
000000014056b394 mov      rax, qword ptr [rax + 0x110]
000000014056b39b call     qword ptr [rip + 0x118f57]
000000014056b3a1 mov      rax, qword ptr [r14 + 0x20]
000000014056b3a5 mov      edx, 0xb764
000000014056b3aa mov      rcx, rbx
000000014056b3ad call     qword ptr [rip + 0x118f45]
000000014056b3b3 mov      rcx, qword ptr [rbx + 0x18]
000000014056b3b7 mov      rdx, r13
000000014056b3ba mov      dword ptr [rbp + 0x48], eax
000000014056b3bd mov      dword ptr [rbp - 0x34], eax
000000014056b3c0 mov      rax, qword ptr [rcx + 0x108]
000000014056b3c7 mov      rcx, qword ptr [rbx + 8]
000000014056b3cb call     qword ptr [rip + 0x118f27]
000000014056b3d1 mov      edx, dword ptr [rsi]
000000014056b3d3 cmp      edx, edi
000000014056b3d5 jae      0x14056b40a
000000014056b3d7 mov      rcx, qword ptr [rbx + 0x18]
000000014056b3db mov      r8d, edi
000000014056b3de mov      r9d, dword ptr [rbp + 0x48]
000000014056b3e2 sub      r8d, edx
000000014056b3e5 and      r9d, r12d
000000014056b3e8 add      rdx, r15
000000014056b3eb mov      dword ptr [rsp + 0x20], r9d
000000014056b3f0 lea      r9, [rip + 0xfa799]
000000014056b3f7 mov      rax, qword ptr [rcx + 0x128]
000000014056b3fe mov      rcx, qword ptr [rbx + 8]
000000014056b402 call     qword ptr [rip + 0x118ef0]
000000014056b408 add      dword ptr [rsi], eax
000000014056b40a mov      rax, qword ptr [rbx + 0x18]
000000014056b40e mov      rdx, r13
000000014056b411 mov      rcx, qword ptr [rbx + 8]
000000014056b415 mov      rax, qword ptr [rax + 0x110]
000000014056b41c call     qword ptr [rip + 0x118ed6]
000000014056b422 mov      eax, dword ptr [rbp - 0x34]
000000014056b425 mov      rdx, r13
000000014056b428 mov      rcx, qword ptr [rbx + 8]
000000014056b42c shr      eax, 0x10
000000014056b42f movzx    eax, al
000000014056b432 mov      dword ptr [rbp + 0x48], eax
000000014056b435 mov      rax, qword ptr [rbx + 0x18]
000000014056b439 mov      rax, qword ptr [rax + 0x108]
000000014056b440 call     qword ptr [rip + 0x118eb2]
000000014056b446 mov      edx, dword ptr [rsi]
000000014056b448 cmp      edx, edi
000000014056b44a jae      0x14056b47a
000000014056b44c mov      rcx, qword ptr [rbx + 0x18]
000000014056b450 lea      r9, [rip + 0xfaac9]
000000014056b457 mov      r8d, edi
000000014056b45a sub      r8d, edx
000000014056b45d add      rdx, r15
000000014056b460 mov      rax, qword ptr [rcx + 0x128]
000000014056b467 mov      ecx, dword ptr [rbp + 0x48]
000000014056b46a mov      dword ptr [rsp + 0x20], ecx
000000014056b46e mov      rcx, qword ptr [rbx + 8]
000000014056b472 call     qword ptr [rip + 0x118e80]
000000014056b478 add      dword ptr [rsi], eax
000000014056b47a mov      rax, qword ptr [rbx + 0x18]
000000014056b47e mov      rdx, r13
000000014056b481 mov      rcx, qword ptr [rbx + 8]
000000014056b485 mov      rax, qword ptr [rax + 0x110]
000000014056b48c call     qword ptr [rip + 0x118e66]
000000014056b492 mov      rax, qword ptr [r14 + 0x20]
000000014056b496 mov      edx, 0xb768
000000014056b49b mov      rcx, rbx
000000014056b49e call     qword ptr [rip + 0x118e54]
000000014056b4a4 mov      rcx, qword ptr [rbx + 0x18]
000000014056b4a8 mov      rdx, r13
000000014056b4ab mov      dword ptr [rbp + 0x48], eax
000000014056b4ae mov      dword ptr [rbp - 0x34], eax
000000014056b4b1 mov      rax, qword ptr [rcx + 0x108]
000000014056b4b8 mov      rcx, qword ptr [rbx + 8]
000000014056b4bc call     qword ptr [rip + 0x118e36]
000000014056b4c2 mov      edx, dword ptr [rsi]
000000014056b4c4 cmp      edx, edi
000000014056b4c6 jae      0x14056b4fb
000000014056b4c8 mov      rcx, qword ptr [rbx + 0x18]
000000014056b4cc mov      r8d, edi
000000014056b4cf mov      r9d, dword ptr [rbp + 0x48]
000000014056b4d3 sub      r8d, edx
000000014056b4d6 and      r9d, r12d
000000014056b4d9 add      rdx, r15
000000014056b4dc mov      dword ptr [rsp + 0x20], r9d
000000014056b4e1 lea      r9, [rip + 0xfa6d8]
000000014056b4e8 mov      rax, qword ptr [rcx + 0x128]
000000014056b4ef mov      rcx, qword ptr [rbx + 8]
000000014056b4f3 call     qword ptr [rip + 0x118dff]
000000014056b4f9 add      dword ptr [rsi], eax
000000014056b4fb mov      rax, qword ptr [rbx + 0x18]
000000014056b4ff mov      rdx, r13
000000014056b502 mov      rcx, qword ptr [rbx + 8]
000000014056b506 mov      rax, qword ptr [rax + 0x110]
000000014056b50d call     qword ptr [rip + 0x118de5]
000000014056b513 mov      eax, dword ptr [rbp - 0x34]
000000014056b516 mov      rdx, r13
000000014056b519 mov      rcx, qword ptr [rbx + 8]
000000014056b51d shr      eax, 0x10
000000014056b520 movzx    eax, al
000000014056b523 mov      dword ptr [rbp + 0x48], eax
000000014056b526 mov      rax, qword ptr [rbx + 0x18]
000000014056b52a mov      rax, qword ptr [rax + 0x108]
000000014056b531 call     qword ptr [rip + 0x118dc1]
000000014056b537 mov      edx, dword ptr [rsi]
000000014056b539 cmp      edx, edi
000000014056b53b jae      0x14056b56b
000000014056b53d mov      rcx, qword ptr [rbx + 0x18]
000000014056b541 lea      r9, [rip + 0xfaa08]
000000014056b548 mov      r8d, edi
000000014056b54b sub      r8d, edx
000000014056b54e add      rdx, r15
000000014056b551 mov      rax, qword ptr [rcx + 0x128]
000000014056b558 mov      ecx, dword ptr [rbp + 0x48]
000000014056b55b mov      dword ptr [rsp + 0x20], ecx
000000014056b55f mov      rcx, qword ptr [rbx + 8]
000000014056b563 call     qword ptr [rip + 0x118d8f]
000000014056b569 add      dword ptr [rsi], eax
000000014056b56b mov      rax, qword ptr [rbx + 0x18]
000000014056b56f mov      rdx, r13
000000014056b572 mov      rcx, qword ptr [rbx + 8]
000000014056b576 mov      rax, qword ptr [rax + 0x110]
000000014056b57d call     qword ptr [rip + 0x118d75]
000000014056b583 mov      rax, qword ptr [r14 + 0x20]
000000014056b587 mov      edx, 0xb76c
000000014056b58c mov      rcx, rbx
000000014056b58f call     qword ptr [rip + 0x118d63]
000000014056b595 mov      rcx, qword ptr [rbx + 0x18]
000000014056b599 mov      rdx, r13
000000014056b59c mov      dword ptr [rbp + 0x48], eax
000000014056b59f mov      dword ptr [rbp - 0x34], eax
000000014056b5a2 mov      rax, qword ptr [rcx + 0x108]
000000014056b5a9 mov      rcx, qword ptr [rbx + 8]
000000014056b5ad call     qword ptr [rip + 0x118d45]
000000014056b5b3 mov      edx, dword ptr [rsi]
000000014056b5b5 cmp      edx, edi
000000014056b5b7 jae      0x14056b5ec
000000014056b5b9 mov      rcx, qword ptr [rbx + 0x18]
000000014056b5bd mov      r8d, edi
000000014056b5c0 mov      r9d, dword ptr [rbp + 0x48]
000000014056b5c4 sub      r8d, edx
000000014056b5c7 and      r9d, r12d
000000014056b5ca add      rdx, r15
000000014056b5cd mov      dword ptr [rsp + 0x20], r9d
000000014056b5d2 lea      r9, [rip + 0xfa617]
000000014056b5d9 mov      rax, qword ptr [rcx + 0x128]
000000014056b5e0 mov      rcx, qword ptr [rbx + 8]
000000014056b5e4 call     qword ptr [rip + 0x118d0e]
000000014056b5ea add      dword ptr [rsi], eax
000000014056b5ec mov      rax, qword ptr [rbx + 0x18]
000000014056b5f0 mov      rdx, r13
000000014056b5f3 mov      rcx, qword ptr [rbx + 8]
000000014056b5f7 mov      rax, qword ptr [rax + 0x110]
000000014056b5fe call     qword ptr [rip + 0x118cf4]
000000014056b604 mov      eax, dword ptr [rbp - 0x34]
000000014056b607 mov      rdx, r13
000000014056b60a mov      rcx, qword ptr [rbx + 8]
000000014056b60e shr      eax, 0x10
000000014056b611 movzx    eax, al
000000014056b614 mov      dword ptr [rbp + 0x48], eax
000000014056b617 mov      rax, qword ptr [rbx + 0x18]
000000014056b61b mov      rax, qword ptr [rax + 0x108]
000000014056b622 call     qword ptr [rip + 0x118cd0]
000000014056b628 mov      edx, dword ptr [rsi]
000000014056b62a cmp      edx, edi
000000014056b62c jae      0x14056b65c
000000014056b62e mov      rcx, qword ptr [rbx + 0x18]
000000014056b632 lea      r9, [rip + 0xfa947]
000000014056b639 mov      r8d, edi
000000014056b63c sub      r8d, edx
000000014056b63f add      rdx, r15
000000014056b642 mov      rax, qword ptr [rcx + 0x128]
000000014056b649 mov      ecx, dword ptr [rbp + 0x48]
000000014056b64c mov      dword ptr [rsp + 0x20], ecx
000000014056b650 mov      rcx, qword ptr [rbx + 8]
000000014056b654 call     qword ptr [rip + 0x118c9e]
000000014056b65a add      dword ptr [rsi], eax
000000014056b65c mov      rax, qword ptr [rbx + 0x18]
000000014056b660 mov      rdx, r13
000000014056b663 mov      rcx, qword ptr [rbx + 8]
000000014056b667 mov      rax, qword ptr [rax + 0x110]
000000014056b66e call     qword ptr [rip + 0x118c84]
000000014056b674 mov      rax, qword ptr [r14 + 0x20]
000000014056b678 mov      edx, 0xb770
000000014056b67d mov      rcx, rbx
000000014056b680 call     qword ptr [rip + 0x118c72]
000000014056b686 mov      rcx, qword ptr [rbx + 0x18]
000000014056b68a mov      rdx, r13
000000014056b68d mov      dword ptr [rbp + 0x48], eax
000000014056b690 mov      dword ptr [rbp - 0x34], eax
000000014056b693 mov      rax, qword ptr [rcx + 0x108]
000000014056b69a mov      rcx, qword ptr [rbx + 8]
000000014056b69e call     qword ptr [rip + 0x118c54]
000000014056b6a4 mov      edx, dword ptr [rsi]
000000014056b6a6 cmp      edx, edi
000000014056b6a8 jae      0x14056b6dd
000000014056b6aa mov      rcx, qword ptr [rbx + 0x18]
000000014056b6ae mov      r8d, edi
000000014056b6b1 mov      r9d, dword ptr [rbp + 0x48]
000000014056b6b5 sub      r8d, edx
000000014056b6b8 and      r9d, r12d
000000014056b6bb add      rdx, r15
000000014056b6be mov      dword ptr [rsp + 0x20], r9d
000000014056b6c3 lea      r9, [rip + 0xfa556]
000000014056b6ca mov      rax, qword ptr [rcx + 0x128]
000000014056b6d1 mov      rcx, qword ptr [rbx + 8]
000000014056b6d5 call     qword ptr [rip + 0x118c1d]
000000014056b6db add      dword ptr [rsi], eax
000000014056b6dd mov      rax, qword ptr [rbx + 0x18]
000000014056b6e1 mov      rdx, r13
000000014056b6e4 mov      rcx, qword ptr [rbx + 8]
000000014056b6e8 mov      rax, qword ptr [rax + 0x110]
000000014056b6ef call     qword ptr [rip + 0x118c03]
000000014056b6f5 mov      eax, dword ptr [rbp - 0x34]
000000014056b6f8 mov      rdx, r13
000000014056b6fb mov      rcx, qword ptr [rbx + 8]
000000014056b6ff shr      eax, 0x10
000000014056b702 movzx    eax, al
000000014056b705 mov      dword ptr [rbp + 0x48], eax
000000014056b708 mov      rax, qword ptr [rbx + 0x18]
000000014056b70c mov      rax, qword ptr [rax + 0x108]
000000014056b713 call     qword ptr [rip + 0x118bdf]
000000014056b719 mov      edx, dword ptr [rsi]
000000014056b71b cmp      edx, edi
000000014056b71d jae      0x14056b74d
000000014056b71f mov      rcx, qword ptr [rbx + 0x18]
000000014056b723 lea      r9, [rip + 0xfa886]
000000014056b72a mov      r8d, edi
000000014056b72d sub      r8d, edx
000000014056b730 add      rdx, r15
000000014056b733 mov      rax, qword ptr [rcx + 0x128]
000000014056b73a mov      ecx, dword ptr [rbp + 0x48]
000000014056b73d mov      dword ptr [rsp + 0x20], ecx
000000014056b741 mov      rcx, qword ptr [rbx + 8]
000000014056b745 call     qword ptr [rip + 0x118bad]
000000014056b74b add      dword ptr [rsi], eax
000000014056b74d mov      rax, qword ptr [rbx + 0x18]
000000014056b751 mov      rdx, r13
000000014056b754 mov      rcx, qword ptr [rbx + 8]
000000014056b758 mov      rax, qword ptr [rax + 0x110]
000000014056b75f call     qword ptr [rip + 0x118b93]
000000014056b765 mov      rax, qword ptr [r14 + 0x20]
000000014056b769 mov      edx, 0xb774
000000014056b76e mov      rcx, rbx
000000014056b771 call     qword ptr [rip + 0x118b81]
000000014056b777 mov      rcx, qword ptr [rbx + 0x18]
000000014056b77b mov      rdx, r13
000000014056b77e mov      dword ptr [rbp + 0x48], eax
000000014056b781 mov      dword ptr [rbp - 0x34], eax
000000014056b784 mov      rax, qword ptr [rcx + 0x108]
000000014056b78b mov      rcx, qword ptr [rbx + 8]
000000014056b78f call     qword ptr [rip + 0x118b63]
000000014056b795 mov      edx, dword ptr [rsi]
000000014056b797 cmp      edx, edi
000000014056b799 jae      0x14056b7ce
000000014056b79b mov      rcx, qword ptr [rbx + 0x18]
000000014056b79f mov      r8d, edi
000000014056b7a2 mov      r9d, dword ptr [rbp + 0x48]
000000014056b7a6 sub      r8d, edx
000000014056b7a9 and      r9d, r12d
000000014056b7ac add      rdx, r15
000000014056b7af mov      dword ptr [rsp + 0x20], r9d
000000014056b7b4 lea      r9, [rip + 0xfa495]
000000014056b7bb mov      rax, qword ptr [rcx + 0x128]
000000014056b7c2 mov      rcx, qword ptr [rbx + 8]
000000014056b7c6 call     qword ptr [rip + 0x118b2c]
000000014056b7cc add      dword ptr [rsi], eax
000000014056b7ce mov      rax, qword ptr [rbx + 0x18]
000000014056b7d2 mov      rdx, r13
000000014056b7d5 mov      rcx, qword ptr [rbx + 8]
000000014056b7d9 mov      rax, qword ptr [rax + 0x110]
000000014056b7e0 call     qword ptr [rip + 0x118b12]
000000014056b7e6 mov      eax, dword ptr [rbp - 0x34]
000000014056b7e9 mov      rdx, r13
000000014056b7ec mov      rcx, qword ptr [rbx + 8]
000000014056b7f0 shr      eax, 0x10
000000014056b7f3 movzx    eax, al
000000014056b7f6 mov      dword ptr [rbp + 0x48], eax
000000014056b7f9 mov      rax, qword ptr [rbx + 0x18]
000000014056b7fd mov      rax, qword ptr [rax + 0x108]
000000014056b804 call     qword ptr [rip + 0x118aee]
000000014056b80a mov      edx, dword ptr [rsi]
000000014056b80c cmp      edx, edi
000000014056b80e jae      0x14056b83e
000000014056b810 mov      rcx, qword ptr [rbx + 0x18]
000000014056b814 lea      r9, [rip + 0xfa7c5]
000000014056b81b mov      r8d, edi
000000014056b81e sub      r8d, edx
000000014056b821 add      rdx, r15
000000014056b824 mov      rax, qword ptr [rcx + 0x128]
000000014056b82b mov      ecx, dword ptr [rbp + 0x48]
000000014056b82e mov      dword ptr [rsp + 0x20], ecx
000000014056b832 mov      rcx, qword ptr [rbx + 8]
000000014056b836 call     qword ptr [rip + 0x118abc]
000000014056b83c add      dword ptr [rsi], eax
000000014056b83e mov      rax, qword ptr [rbx + 0x18]
000000014056b842 mov      rdx, r13
000000014056b845 mov      rcx, qword ptr [rbx + 8]
000000014056b849 mov      rax, qword ptr [rax + 0x110]
000000014056b850 call     qword ptr [rip + 0x118aa2]
000000014056b856 mov      rax, qword ptr [r14 + 0x20]
000000014056b85a mov      edx, 0xb778
000000014056b85f mov      rcx, rbx
000000014056b862 call     qword ptr [rip + 0x118a90]
000000014056b868 mov      rcx, qword ptr [rbx + 0x18]
000000014056b86c mov      rdx, r13
000000014056b86f mov      dword ptr [rbp + 0x48], eax
000000014056b872 mov      dword ptr [rbp - 0x34], eax
000000014056b875 mov      rax, qword ptr [rcx + 0x108]
000000014056b87c mov      rcx, qword ptr [rbx + 8]
000000014056b880 call     qword ptr [rip + 0x118a72]
000000014056b886 mov      edx, dword ptr [rsi]
000000014056b888 cmp      edx, edi
000000014056b88a jae      0x14056b8bf
000000014056b88c mov      rcx, qword ptr [rbx + 0x18]
000000014056b890 mov      r8d, edi
000000014056b893 mov      r9d, dword ptr [rbp + 0x48]
000000014056b897 sub      r8d, edx
000000014056b89a and      r9d, r12d
000000014056b89d add      rdx, r15
000000014056b8a0 mov      dword ptr [rsp + 0x20], r9d
000000014056b8a5 lea      r9, [rip + 0xfa3d4]
000000014056b8ac mov      rax, qword ptr [rcx + 0x128]
000000014056b8b3 mov      rcx, qword ptr [rbx + 8]
000000014056b8b7 call     qword ptr [rip + 0x118a3b]
000000014056b8bd add      dword ptr [rsi], eax
000000014056b8bf mov      rax, qword ptr [rbx + 0x18]
000000014056b8c3 mov      rdx, r13
000000014056b8c6 mov      rcx, qword ptr [rbx + 8]
000000014056b8ca mov      rax, qword ptr [rax + 0x110]
000000014056b8d1 call     qword ptr [rip + 0x118a21]
000000014056b8d7 mov      eax, dword ptr [rbp - 0x34]
000000014056b8da mov      rdx, r13
000000014056b8dd mov      rcx, qword ptr [rbx + 8]
000000014056b8e1 shr      eax, 0x10
000000014056b8e4 movzx    eax, al
000000014056b8e7 mov      dword ptr [rbp + 0x48], eax
000000014056b8ea mov      rax, qword ptr [rbx + 0x18]
000000014056b8ee mov      rax, qword ptr [rax + 0x108]
000000014056b8f5 call     qword ptr [rip + 0x1189fd]
000000014056b8fb mov      edx, dword ptr [rsi]
000000014056b8fd cmp      edx, edi
000000014056b8ff jae      0x14056b92f
000000014056b901 mov      rcx, qword ptr [rbx + 0x18]
000000014056b905 lea      r9, [rip + 0xfa704]
000000014056b90c mov      r8d, edi
000000014056b90f sub      r8d, edx
000000014056b912 add      rdx, r15
000000014056b915 mov      rax, qword ptr [rcx + 0x128]
000000014056b91c mov      ecx, dword ptr [rbp + 0x48]
000000014056b91f mov      dword ptr [rsp + 0x20], ecx
000000014056b923 mov      rcx, qword ptr [rbx + 8]
000000014056b927 call     qword ptr [rip + 0x1189cb]
000000014056b92d add      dword ptr [rsi], eax
000000014056b92f mov      rax, qword ptr [rbx + 0x18]
000000014056b933 mov      rdx, r13
000000014056b936 mov      rcx, qword ptr [rbx + 8]
000000014056b93a mov      rax, qword ptr [rax + 0x110]
000000014056b941 call     qword ptr [rip + 0x1189b1]
000000014056b947 mov      rax, qword ptr [r14 + 0x20]
000000014056b94b mov      edx, 0xb77c
000000014056b950 mov      rcx, rbx
000000014056b953 call     qword ptr [rip + 0x11899f]
000000014056b959 mov      rcx, qword ptr [rbx + 0x18]
000000014056b95d mov      rdx, r13
000000014056b960 mov      r14d, eax
000000014056b963 mov      dword ptr [rbp - 0x34], eax
000000014056b966 mov      rax, qword ptr [rcx + 0x108]
000000014056b96d mov      rcx, qword ptr [rbx + 8]
000000014056b971 call     qword ptr [rip + 0x118981]
000000014056b977 mov      edx, dword ptr [rsi]
000000014056b979 cmp      edx, edi
000000014056b97b jae      0x14056b9ac
000000014056b97d mov      rcx, qword ptr [rbx + 0x18]
000000014056b981 lea      r9, [rip + 0xfa328]
000000014056b988 mov      r8d, edi
000000014056b98b and      r14d, r12d
000000014056b98e sub      r8d, edx
000000014056b991 mov      dword ptr [rsp + 0x20], r14d
000000014056b996 add      rdx, r15
000000014056b999 mov      rax, qword ptr [rcx + 0x128]
000000014056b9a0 mov      rcx, qword ptr [rbx + 8]
000000014056b9a4 call     qword ptr [rip + 0x11894e]
000000014056b9aa add      dword ptr [rsi], eax
000000014056b9ac mov      rax, qword ptr [rbx + 0x18]
000000014056b9b0 mov      rdx, r13
000000014056b9b3 mov      rcx, qword ptr [rbx + 8]
000000014056b9b7 mov      rax, qword ptr [rax + 0x110]
000000014056b9be call     qword ptr [rip + 0x118934]
000000014056b9c4 mov      eax, dword ptr [rbp - 0x34]
000000014056b9c7 mov      rdx, r13
000000014056b9ca mov      rcx, qword ptr [rbx + 8]
000000014056b9ce shr      eax, 0x10
000000014056b9d1 movzx    r14d, al
000000014056b9d5 mov      rax, qword ptr [rbx + 0x18]
000000014056b9d9 mov      rax, qword ptr [rax + 0x108]
000000014056b9e0 call     qword ptr [rip + 0x118912]
000000014056b9e6 mov      ecx, dword ptr [rsi]
000000014056b9e8 cmp      ecx, edi
000000014056b9ea jae      0x14056ba18
000000014056b9ec lea      rdx, [r15 + rcx]
000000014056b9f0 lea      r9, [rip + 0xfa649]
000000014056b9f7 mov      rax, qword ptr [rbx + 0x18]
000000014056b9fb sub      edi, ecx
000000014056b9fd mov      rcx, qword ptr [rbx + 8]
000000014056ba01 mov      r8d, edi
000000014056ba04 mov      dword ptr [rsp + 0x20], r14d
000000014056ba09 mov      rax, qword ptr [rax + 0x128]
000000014056ba10 call     qword ptr [rip + 0x1188e2]
000000014056ba16 add      dword ptr [rsi], eax
000000014056ba18 mov      rdx, r13
000000014056ba1b jmp      0x140569522
000000014056ba20 cmp      byte ptr [rbx + 0x105], 5
000000014056ba27 jne      0x14056c784
000000014056ba2d mov      r13d, 2
000000014056ba33 lea      r8, [rbp - 0x34]
000000014056ba37 mov      r9d, r13d
000000014056ba3a xor      edx, edx
000000014056ba3c mov      rcx, rbx
000000014056ba3f call     0x1403695ac
000000014056ba44 test     eax, eax
000000014056ba46 jne      0x14056c779
000000014056ba4c test     dword ptr [rbp - 0x34], 0x800
000000014056ba53 jne      0x14056c779
000000014056ba59 mov      r9d, r13d
000000014056ba5c lea      r8, [rbp - 0x34]
000000014056ba60 xor      edx, edx
000000014056ba62 mov      rcx, rbx
000000014056ba65 call     0x1403695ac
000000014056ba6a test     eax, eax
000000014056ba6c jne      0x14056c779
000000014056ba72 mov      rax, qword ptr [rbx + 0x18]
000000014056ba76 lea      r15, [rbx + 0x1320]
000000014056ba7d mov      r14d, dword ptr [rbp - 0x34]
000000014056ba81 mov      rdx, r15
000000014056ba84 mov      rcx, qword ptr [rbx + 8]
000000014056ba88 shr      r14d, 0xb
000000014056ba8c mov      rax, qword ptr [rax + 0x108]
000000014056ba93 and      r14d, 1
000000014056ba97 call     qword ptr [rip + 0x11885b]
000000014056ba9d mov      ecx, dword ptr [rsi]
000000014056ba9f cmp      ecx, edi
000000014056baa1 jae      0x140569154
000000014056baa7 lea      r9, [rip + 0xfa712]
000000014056baae jmp      0x14056912f
000000014056bab3 cmp      eax, 0x3f
000000014056bab6 ja       0x14056c33f
000000014056babc je       0x14056c2c3
000000014056bac2 sub      eax, 0x37
000000014056bac5 je       0x14056c230
000000014056bacb sub      eax, edx
000000014056bacd je       0x14056c19d
000000014056bad3 sub      eax, edx
000000014056bad5 je       0x14056be27
000000014056badb sub      eax, edx
000000014056badd je       0x14056bd97
000000014056bae3 sub      eax, edx
000000014056bae5 je       0x14056bcfe
000000014056baeb sub      eax, edx
000000014056baed je       0x14056bc94
000000014056baf3 sub      eax, edx
000000014056baf5 je       0x14056bc21
000000014056bafb cmp      eax, edx
000000014056bafd jne      0x14056c784
000000014056bb03 mov      rax, qword ptr [r14 + 0x20]
000000014056bb07 lea      r13, [rbx + 0x1320]
000000014056bb0e mov      r15d, 0x8808
000000014056bb14 mov      rcx, rbx
000000014056bb17 mov      edx, r15d
000000014056bb1a call     qword ptr [rip + 0x1187d8]
000000014056bb20 test     eax, 0xfffffff
000000014056bb25 je       0x14056bbaf
000000014056bb2b mov      rax, qword ptr [r14 + 0x20]
000000014056bb2f mov      edx, r15d
000000014056bb32 mov      rcx, rbx
000000014056bb35 call     qword ptr [rip + 0x1187bd]
000000014056bb3b mov      rcx, qword ptr [rbx + 0x18]
000000014056bb3f mov      rdx, r13
000000014056bb42 mov      r15d, eax
000000014056bb45 mov      rax, qword ptr [rcx + 0x108]
000000014056bb4c mov      rcx, qword ptr [rbx + 8]
000000014056bb50 call     qword ptr [rip + 0x1187a2]
000000014056bb56 mov      edx, dword ptr [rsi]
000000014056bb58 cmp      edx, edi
000000014056bb5a jae      0x14056bb8f
000000014056bb5c mov      rcx, qword ptr [rbx + 0x18]
000000014056bb60 lea      r9, [rip + 0xfa869]
000000014056bb67 mov      r8d, edi
000000014056bb6a and      r15d, 0xfffffff
000000014056bb71 sub      r8d, edx
000000014056bb74 mov      dword ptr [rsp + 0x20], r15d
000000014056bb79 add      rdx, r12
000000014056bb7c mov      rax, qword ptr [rcx + 0x128]
000000014056bb83 mov      rcx, qword ptr [rbx + 8]
000000014056bb87 call     qword ptr [rip + 0x11876b]
000000014056bb8d add      dword ptr [rsi], eax
000000014056bb8f mov      rax, qword ptr [rbx + 0x18]
000000014056bb93 mov      rdx, r13
000000014056bb96 mov      rcx, qword ptr [rbx + 8]
000000014056bb9a mov      rax, qword ptr [rax + 0x110]
000000014056bba1 call     qword ptr [rip + 0x118751]
000000014056bba7 mov      r15d, 0x10
000000014056bbad jmp      0x14056bbb3
000000014056bbaf mov      r15d, dword ptr [rbp - 0x38]
000000014056bbb3 mov      rax, qword ptr [r14 + 0x20]
000000014056bbb7 mov      edx, 0x8808
000000014056bbbc mov      rcx, rbx
000000014056bbbf call     qword ptr [rip + 0x118733]
000000014056bbc5 mov      dword ptr [rbp - 0x34], eax
000000014056bbc8 cmp      eax, 0x40000000
000000014056bbcd jb       0x14056c787
000000014056bbd3 mov      rax, qword ptr [r14 + 0x20]
000000014056bbd7 mov      edx, 0x8808
000000014056bbdc mov      rcx, rbx
000000014056bbdf call     qword ptr [rip + 0x118713]
000000014056bbe5 mov      rcx, qword ptr [rbx + 0x18]
000000014056bbe9 mov      rdx, r13
000000014056bbec mov      r14d, eax
000000014056bbef mov      dword ptr [rbp - 0x34], eax
000000014056bbf2 mov      rax, qword ptr [rcx + 0x108]
000000014056bbf9 mov      rcx, qword ptr [rbx + 8]
000000014056bbfd call     qword ptr [rip + 0x1186f5]
000000014056bc03 mov      ecx, dword ptr [rsi]
000000014056bc05 cmp      ecx, edi
000000014056bc07 jae      0x14056ba18
000000014056bc0d shr      r14d, 0x1e
000000014056bc11 lea      rdx, [r12 + rcx]
000000014056bc15 lea      r9, [rip + 0xfa7e4]
000000014056bc1c jmp      0x14056b9f7
000000014056bc21 mov      rax, qword ptr [r14 + 0x20]
000000014056bc25 mov      r15d, 0x8804
000000014056bc2b mov      edx, r15d
000000014056bc2e mov      rcx, rbx
000000014056bc31 call     qword ptr [rip + 0x1186c1]
000000014056bc37 mov      dword ptr [rbp - 0x34], eax
000000014056bc3a cmp      eax, 0x200
000000014056bc3f jb       0x14056c784
000000014056bc45 mov      rax, qword ptr [r14 + 0x20]
000000014056bc49 mov      edx, r15d
000000014056bc4c mov      rcx, rbx
000000014056bc4f call     qword ptr [rip + 0x1186a3]
000000014056bc55 mov      rcx, qword ptr [rbx + 0x18]
000000014056bc59 lea      r15, [rbx + 0x1320]
000000014056bc60 mov      r14d, eax
000000014056bc63 mov      dword ptr [rbp - 0x34], eax
000000014056bc66 mov      rdx, r15
000000014056bc69 mov      rax, qword ptr [rcx + 0x108]
000000014056bc70 mov      rcx, qword ptr [rbx + 8]
000000014056bc74 call     qword ptr [rip + 0x11867e]
000000014056bc7a mov      ecx, dword ptr [rsi]
000000014056bc7c cmp      ecx, edi
000000014056bc7e jae      0x140569154
000000014056bc84 shr      r14d, 9
000000014056bc88 lea      r9, [rip + 0xfa711]
000000014056bc8f jmp      0x14056912f
000000014056bc94 mov      rax, qword ptr [r14]
000000014056bc97 mov      r15d, 0x8804
000000014056bc9d mov      edx, r15d
000000014056bca0 mov      rcx, rbx
000000014056bca3 call     qword ptr [rip + 0x11864f]
000000014056bca9 test     al, al
000000014056bcab je       0x14056c784
000000014056bcb1 mov      rax, qword ptr [r14]
000000014056bcb4 mov      edx, r15d
000000014056bcb7 mov      rcx, rbx
000000014056bcba call     qword ptr [rip + 0x118638]
000000014056bcc0 mov      rcx, qword ptr [rbx + 0x18]
000000014056bcc4 lea      r14, [rbx + 0x1320]
000000014056bccb movzx    r15d, al
000000014056bccf mov      rdx, r14
000000014056bcd2 mov      rax, qword ptr [rcx + 0x108]
000000014056bcd9 mov      rcx, qword ptr [rbx + 8]
000000014056bcdd call     qword ptr [rip + 0x118615]
000000014056bce3 mov      edx, dword ptr [rsi]
000000014056bce5 cmp      edx, edi
000000014056bce7 jae      0x14056951f
000000014056bced sub      edi, edx
000000014056bcef lea      r9, [rip + 0xfa67a]
000000014056bcf6 add      rdx, r12
000000014056bcf9 jmp      0x140569500
000000014056bcfe cmp      byte ptr [rbx + 0x105], 5
000000014056bd05 jne      0x14056c784
000000014056bd0b mov      r13d, 2
000000014056bd11 lea      r8, [rbp - 0x34]
000000014056bd15 mov      r14d, 0x704
000000014056bd1b mov      r9d, r13d
000000014056bd1e mov      edx, r14d
000000014056bd21 mov      rcx, rbx
000000014056bd24 call     0x1403695ac
000000014056bd29 test     eax, eax
000000014056bd2b jne      0x14056c779
000000014056bd31 test     dword ptr [rbp - 0x34], 0xff0000
000000014056bd38 jne      0x14056c779
000000014056bd3e mov      r9d, r13d
000000014056bd41 lea      r8, [rbp - 0x34]
000000014056bd45 mov      edx, r14d
000000014056bd48 mov      rcx, rbx
000000014056bd4b call     0x1403695ac
000000014056bd50 test     eax, eax
000000014056bd52 jne      0x14056c779
000000014056bd58 mov      eax, dword ptr [rbp - 0x34]
000000014056bd5b lea      r14, [rbx + 0x1320]
000000014056bd62 mov      rcx, qword ptr [rbx + 8]
000000014056bd66 mov      rdx, r14
000000014056bd69 shr      eax, 0x10
000000014056bd6c movzx    r15d, al
000000014056bd70 mov      rax, qword ptr [rbx + 0x18]
000000014056bd74 mov      rax, qword ptr [rax + 0x108]
000000014056bd7b call     qword ptr [rip + 0x118577]
000000014056bd81 mov      ecx, dword ptr [rsi]
000000014056bd83 cmp      ecx, edi
000000014056bd85 jae      0x14056951f
000000014056bd8b lea      r9, [rip + 0xfa5ae]
000000014056bd92 jmp      0x1405694fa
000000014056bd97 cmp      byte ptr [rbx + 0x105], 5
000000014056bd9e jne      0x14056c784
000000014056bda4 mov      r13d, 2
000000014056bdaa lea      r8, [rbp - 0x34]
000000014056bdae mov      r14d, 0x704
000000014056bdb4 mov      r9d, r13d
000000014056bdb7 mov      edx, r14d
000000014056bdba mov      rcx, rbx
000000014056bdbd call     0x1403695ac
000000014056bdc2 test     eax, eax
000000014056bdc4 jne      0x14056c779
000000014056bdca cmp      byte ptr [rbp - 0x34], al
000000014056bdcd jne      0x14056c779
000000014056bdd3 mov      r9d, r13d
000000014056bdd6 lea      r8, [rbp - 0x34]
000000014056bdda mov      edx, r14d
000000014056bddd mov      rcx, rbx
000000014056bde0 call     0x1403695ac
000000014056bde5 test     eax, eax
000000014056bde7 jne      0x14056c779
000000014056bded mov      rax, qword ptr [rbx + 0x18]
000000014056bdf1 lea      r14, [rbx + 0x1320]
000000014056bdf8 mov      rcx, qword ptr [rbx + 8]
000000014056bdfc mov      rdx, r14
000000014056bdff movzx    r15d, byte ptr [rbp - 0x34]
000000014056be04 mov      rax, qword ptr [rax + 0x108]
000000014056be0b call     qword ptr [rip + 0x1184e7]
000000014056be11 mov      ecx, dword ptr [rsi]
000000014056be13 cmp      ecx, edi
000000014056be15 jae      0x14056951f
000000014056be1b lea      r9, [rip + 0xfa4ee]
000000014056be22 jmp      0x1405694fa
000000014056be27 cmp      byte ptr [rbx + 0x105], 5
000000014056be2e jne      0x14056c784
000000014056be34 cmp      dword ptr [rbp + 0x70], edx
000000014056be37 jb       0x14056c784
000000014056be3d mov      r13d, 2
000000014056be43 lea      r8, [rbp - 0x34]
000000014056be47 mov      r9d, r13d
000000014056be4a mov      edx, 0x758
000000014056be4f mov      rcx, rbx
000000014056be52 call     0x1403695ac
000000014056be57 test     eax, eax
000000014056be59 jne      0x14056c779
000000014056be5f mov      eax, dword ptr [rbp - 0x34]
000000014056be62 lea      r8, [rbp - 0x34]
000000014056be66 mov      r15d, eax
000000014056be69 mov      r14d, 0x1fff
000000014056be6f shr      r15d, 0x10
000000014056be73 and      eax, r14d
000000014056be76 and      r15d, r14d
000000014056be79 mov      r9d, r13d
000000014056be7c mov      edx, 0x724
000000014056be81 mov      rcx, rbx
000000014056be84 add      r15d, eax
000000014056be87 call     0x1403695ac
000000014056be8c test     eax, eax
000000014056be8e jne      0x14056c779
000000014056be94 mov      ecx, dword ptr [rbp - 0x34]
000000014056be97 lea      r8, [rbp - 0x34]
000000014056be9b mov      eax, ecx
000000014056be9d mov      r9d, r13d
000000014056bea0 shr      eax, 0x10
000000014056bea3 and      ecx, r14d
000000014056bea6 movzx    eax, al
000000014056bea9 mov      edx, 0x728
000000014056beae add      eax, ecx
000000014056beb0 mov      rcx, rbx
000000014056beb3 mov      dword ptr [rbp + 0x48], eax
000000014056beb6 call     0x1403695ac
000000014056bebb mov      dword ptr [rbp - 0x38], eax
000000014056bebe test     eax, eax
000000014056bec0 jne      0x14056c779
000000014056bec6 mov      r8d, dword ptr [rbp - 0x34]
000000014056beca mov      eax, r8d
000000014056becd shr      eax, 0x10
000000014056bed0 and      r8d, r14d
000000014056bed3 movzx    ecx, al
000000014056bed6 mov      eax, dword ptr [rbp + 0x48]
000000014056bed9 add      eax, ecx
000000014056bedb add      r8d, eax
000000014056bede cmp      r15d, r8d
000000014056bee1 je       0x14056c77e
000000014056bee7 mov      r9d, r13d
000000014056beea lea      r8, [rbp - 0x34]
000000014056beee mov      edx, 0x758
000000014056bef3 mov      rcx, rbx
000000014056bef6 call     0x1403695ac
000000014056befb test     eax, eax
000000014056befd jne      0x14056c779
000000014056bf03 mov      eax, dword ptr [rbp - 0x34]
000000014056bf06 lea      r15, [rbx + 0x1320]
000000014056bf0d mov      rcx, qword ptr [rbx + 8]
000000014056bf11 and      eax, r14d
000000014056bf14 mov      dword ptr [rbp + 0x48], eax
000000014056bf17 mov      rdx, r15
000000014056bf1a mov      rax, qword ptr [rbx + 0x18]
000000014056bf1e mov      rax, qword ptr [rax + 0x108]
000000014056bf25 call     qword ptr [rip + 0x1183cd]
000000014056bf2b mov      edx, dword ptr [rsi]
000000014056bf2d cmp      edx, edi
000000014056bf2f jae      0x14056bf5f
000000014056bf31 mov      rcx, qword ptr [rbx + 0x18]
000000014056bf35 lea      r9, [rip + 0xfa314]
000000014056bf3c mov      r8d, edi
000000014056bf3f sub      r8d, edx
000000014056bf42 add      rdx, r12
000000014056bf45 mov      rax, qword ptr [rcx + 0x128]
000000014056bf4c mov      ecx, dword ptr [rbp + 0x48]
000000014056bf4f mov      dword ptr [rsp + 0x20], ecx
000000014056bf53 mov      rcx, qword ptr [rbx + 8]
000000014056bf57 call     qword ptr [rip + 0x11839b]
000000014056bf5d add      dword ptr [rsi], eax
000000014056bf5f mov      rax, qword ptr [rbx + 0x18]
000000014056bf63 mov      rdx, r15
000000014056bf66 mov      rcx, qword ptr [rbx + 8]
000000014056bf6a mov      rax, qword ptr [rax + 0x110]
000000014056bf71 call     qword ptr [rip + 0x118381]
000000014056bf77 mov      eax, dword ptr [rbp - 0x34]
000000014056bf7a mov      rdx, r15
000000014056bf7d mov      rcx, qword ptr [rbx + 8]
000000014056bf81 shr      eax, 0x10
000000014056bf84 and      eax, r14d
000000014056bf87 mov      dword ptr [rbp + 0x48], eax
000000014056bf8a mov      rax, qword ptr [rbx + 0x18]
000000014056bf8e mov      rax, qword ptr [rax + 0x108]
000000014056bf95 call     qword ptr [rip + 0x11835d]
000000014056bf9b mov      edx, dword ptr [rsi]
000000014056bf9d cmp      edx, edi
000000014056bf9f jae      0x14056bfcf
000000014056bfa1 mov      rcx, qword ptr [rbx + 0x18]
000000014056bfa5 lea      r9, [rip + 0xfa2d4]
000000014056bfac mov      r8d, edi
000000014056bfaf sub      r8d, edx
000000014056bfb2 add      rdx, r12
000000014056bfb5 mov      rax, qword ptr [rcx + 0x128]
000000014056bfbc mov      ecx, dword ptr [rbp + 0x48]
000000014056bfbf mov      dword ptr [rsp + 0x20], ecx
000000014056bfc3 mov      rcx, qword ptr [rbx + 8]
000000014056bfc7 call     qword ptr [rip + 0x11832b]
000000014056bfcd add      dword ptr [rsi], eax
000000014056bfcf mov      rax, qword ptr [rbx + 0x18]
000000014056bfd3 mov      rdx, r15
000000014056bfd6 mov      rcx, qword ptr [rbx + 8]
000000014056bfda mov      rax, qword ptr [rax + 0x110]
000000014056bfe1 call     qword ptr [rip + 0x118311]
000000014056bfe7 mov      r9d, r13d
000000014056bfea lea      r8, [rbp - 0x34]
000000014056bfee mov      edx, 0x724
000000014056bff3 mov      rcx, rbx
000000014056bff6 call     0x1403695ac
000000014056bffb test     eax, eax
000000014056bffd jne      0x14056c779
000000014056c003 mov      eax, dword ptr [rbp - 0x34]
000000014056c006 mov      rdx, r15
000000014056c009 mov      rcx, qword ptr [rbx + 8]
000000014056c00d and      eax, r14d
000000014056c010 mov      dword ptr [rbp + 0x48], eax
000000014056c013 mov      rax, qword ptr [rbx + 0x18]
000000014056c017 mov      rax, qword ptr [rax + 0x108]
000000014056c01e call     qword ptr [rip + 0x1182d4]
000000014056c024 mov      edx, dword ptr [rsi]
000000014056c026 cmp      edx, edi
000000014056c028 jae      0x14056c058
000000014056c02a mov      rcx, qword ptr [rbx + 0x18]
000000014056c02e lea      r9, [rip + 0xfa0fb]
000000014056c035 mov      r8d, edi
000000014056c038 sub      r8d, edx
000000014056c03b add      rdx, r12
000000014056c03e mov      rax, qword ptr [rcx + 0x128]
000000014056c045 mov      ecx, dword ptr [rbp + 0x48]
000000014056c048 mov      dword ptr [rsp + 0x20], ecx
000000014056c04c mov      rcx, qword ptr [rbx + 8]
000000014056c050 call     qword ptr [rip + 0x1182a2]
000000014056c056 add      dword ptr [rsi], eax
000000014056c058 mov      rax, qword ptr [rbx + 0x18]
000000014056c05c mov      rdx, r15
000000014056c05f mov      rcx, qword ptr [rbx + 8]
000000014056c063 mov      rax, qword ptr [rax + 0x110]
000000014056c06a call     qword ptr [rip + 0x118288]
000000014056c070 mov      eax, dword ptr [rbp - 0x34]
000000014056c073 mov      rdx, r15
000000014056c076 mov      rcx, qword ptr [rbx + 8]
000000014056c07a shr      eax, 0x10
000000014056c07d movzx    eax, al
000000014056c080 mov      dword ptr [rbp + 0x48], eax
000000014056c083 mov      rax, qword ptr [rbx + 0x18]
000000014056c087 mov      rax, qword ptr [rax + 0x108]
000000014056c08e call     qword ptr [rip + 0x118264]
000000014056c094 mov      edx, dword ptr [rsi]
000000014056c096 cmp      edx, edi
000000014056c098 jae      0x14056c0c8
000000014056c09a mov      rcx, qword ptr [rbx + 0x18]
000000014056c09e lea      r9, [rip + 0xfa20b]
000000014056c0a5 mov      r8d, edi
000000014056c0a8 sub      r8d, edx
000000014056c0ab add      rdx, r12
000000014056c0ae mov      rax, qword ptr [rcx + 0x128]
000000014056c0b5 mov      ecx, dword ptr [rbp + 0x48]
000000014056c0b8 mov      dword ptr [rsp + 0x20], ecx
000000014056c0bc mov      rcx, qword ptr [rbx + 8]
000000014056c0c0 call     qword ptr [rip + 0x118232]
000000014056c0c6 add      dword ptr [rsi], eax
000000014056c0c8 mov      rax, qword ptr [rbx + 0x18]
000000014056c0cc mov      rdx, r15
000000014056c0cf mov      rcx, qword ptr [rbx + 8]
000000014056c0d3 mov      rax, qword ptr [rax + 0x110]
000000014056c0da call     qword ptr [rip + 0x118218]
000000014056c0e0 mov      r9d, r13d
000000014056c0e3 lea      r8, [rbp - 0x34]
000000014056c0e7 mov      edx, 0x728
000000014056c0ec mov      rcx, rbx
000000014056c0ef call     0x1403695ac
000000014056c0f4 test     eax, eax
000000014056c0f6 jne      0x14056c779
000000014056c0fc mov      rax, qword ptr [rbx + 0x18]
000000014056c100 mov      rdx, r15
000000014056c103 mov      r13d, dword ptr [rbp - 0x34]
000000014056c107 mov      rcx, qword ptr [rbx + 8]
000000014056c10b and      r13d, r14d
000000014056c10e mov      rax, qword ptr [rax + 0x108]
000000014056c115 call     qword ptr [rip + 0x1181dd]
000000014056c11b mov      edx, dword ptr [rsi]
000000014056c11d cmp      edx, edi
000000014056c11f jae      0x14056c14d
000000014056c121 mov      rcx, qword ptr [rbx + 0x18]
000000014056c125 lea      r9, [rip + 0xfa034]
000000014056c12c mov      r8d, edi
000000014056c12f mov      dword ptr [rsp + 0x20], r13d
000000014056c134 sub      r8d, edx
000000014056c137 add      rdx, r12
000000014056c13a mov      rax, qword ptr [rcx + 0x128]
000000014056c141 mov      rcx, qword ptr [rbx + 8]
000000014056c145 call     qword ptr [rip + 0x1181ad]
000000014056c14b add      dword ptr [rsi], eax
000000014056c14d mov      rax, qword ptr [rbx + 0x18]
000000014056c151 mov      rdx, r15
000000014056c154 mov      rcx, qword ptr [rbx + 8]
000000014056c158 mov      rax, qword ptr [rax + 0x110]
000000014056c15f call     qword ptr [rip + 0x118193]
000000014056c165 mov      eax, dword ptr [rbp - 0x34]
000000014056c168 mov      rdx, r15
000000014056c16b mov      rcx, qword ptr [rbx + 8]
000000014056c16f shr      eax, 0x10
000000014056c172 movzx    r14d, al
000000014056c176 mov      rax, qword ptr [rbx + 0x18]
000000014056c17a mov      rax, qword ptr [rax + 0x108]
000000014056c181 call     qword ptr [rip + 0x118171]
000000014056c187 mov      ecx, dword ptr [rsi]
000000014056c189 cmp      ecx, edi
000000014056c18b jae      0x140569154
000000014056c191 lea      r9, [rip + 0xfa148]
000000014056c198 jmp      0x14056912f
000000014056c19d cmp      byte ptr [rbx + 0x105], 5
000000014056c1a4 jne      0x14056c784
000000014056c1aa mov      r13d, 2
000000014056c1b0 lea      r8, [rbp - 0x34]
000000014056c1b4 mov      r9d, r13d
000000014056c1b7 xor      edx, edx
000000014056c1b9 mov      rcx, rbx
000000014056c1bc call     0x1403695ac
000000014056c1c1 test     eax, eax
000000014056c1c3 jne      0x14056c779
000000014056c1c9 test     dword ptr [rbp - 0x34], 0x100000
000000014056c1d0 je       0x14056c779
000000014056c1d6 mov      r9d, r13d
000000014056c1d9 lea      r8, [rbp - 0x34]
000000014056c1dd xor      edx, edx
000000014056c1df mov      rcx, rbx
000000014056c1e2 call     0x1403695ac
000000014056c1e7 test     eax, eax
000000014056c1e9 jne      0x14056c779
000000014056c1ef mov      rax, qword ptr [rbx + 0x18]
000000014056c1f3 lea      r15, [rbx + 0x1320]
000000014056c1fa mov      r14d, dword ptr [rbp - 0x34]
000000014056c1fe mov      rdx, r15
000000014056c201 mov      rcx, qword ptr [rbx + 8]
000000014056c205 shr      r14d, 0x14
000000014056c209 mov      rax, qword ptr [rax + 0x108]
000000014056c210 and      r14d, 1
000000014056c214 call     qword ptr [rip + 0x1180de]
000000014056c21a mov      ecx, dword ptr [rsi]
000000014056c21c cmp      ecx, edi
000000014056c21e jae      0x140569154
000000014056c224 lea      r9, [rip + 0xf9ff5]
000000014056c22b jmp      0x14056912f
000000014056c230 cmp      byte ptr [rbx + 0x105], 5
000000014056c237 jne      0x14056c784
000000014056c23d mov      r13d, 2
000000014056c243 lea      r8, [rbp - 0x34]
000000014056c247 mov      r9d, r13d
000000014056c24a xor      edx, edx
000000014056c24c mov      rcx, rbx
000000014056c24f call     0x1403695ac
000000014056c254 test     eax, eax
000000014056c256 jne      0x14056c779
000000014056c25c test     dword ptr [rbp - 0x34], 0x2000
000000014056c263 jne      0x14056c779
000000014056c269 mov      r9d, r13d
000000014056c26c lea      r8, [rbp - 0x34]
000000014056c270 xor      edx, edx
000000014056c272 mov      rcx, rbx
000000014056c275 call     0x1403695ac
000000014056c27a test     eax, eax
000000014056c27c jne      0x14056c779
000000014056c282 mov      rax, qword ptr [rbx + 0x18]
000000014056c286 lea      r15, [rbx + 0x1320]
000000014056c28d mov      r14d, dword ptr [rbp - 0x34]
000000014056c291 mov      rdx, r15
000000014056c294 mov      rcx, qword ptr [rbx + 8]
000000014056c298 shr      r14d, 0xd
000000014056c29c mov      rax, qword ptr [rax + 0x108]
000000014056c2a3 and      r14d, 1
000000014056c2a7 call     qword ptr [rip + 0x11804b]
000000014056c2ad mov      ecx, dword ptr [rsi]
000000014056c2af cmp      ecx, edi
000000014056c2b1 jae      0x140569154
000000014056c2b7 lea      r9, [rip + 0xf9f32]
000000014056c2be jmp      0x14056912f
000000014056c2c3 mov      rax, qword ptr [r14 + 0x20]
000000014056c2c7 mov      r15d, 0x880c
000000014056c2cd mov      edx, r15d
000000014056c2d0 mov      rcx, rbx
000000014056c2d3 call     qword ptr [rip + 0x11801f]
000000014056c2d9 mov      dword ptr [rbp - 0x34], eax
000000014056c2dc test     eax, eax
000000014056c2de je       0x14056c784
000000014056c2e4 mov      rax, qword ptr [r14 + 0x20]
000000014056c2e8 mov      edx, r15d
000000014056c2eb mov      rcx, rbx
000000014056c2ee call     qword ptr [rip + 0x118004]
000000014056c2f4 mov      rcx, qword ptr [rbx + 0x18]
000000014056c2f8 lea      r14, [rbx + 0x1320]
000000014056c2ff mov      r15d, eax
000000014056c302 mov      dword ptr [rbp - 0x34], eax
000000014056c305 mov      rdx, r14
000000014056c308 mov      rax, qword ptr [rcx + 0x108]
000000014056c30f mov      rcx, qword ptr [rbx + 8]
000000014056c313 call     qword ptr [rip + 0x117fdf]
000000014056c319 mov      edx, dword ptr [rsi]
000000014056c31b cmp      edx, edi
000000014056c31d jae      0x14056951f
000000014056c323 mov      rcx, qword ptr [rbx + 0x18]
000000014056c327 lea      r9, [rip + 0xfa102]
000000014056c32e sub      edi, edx
000000014056c330 add      rdx, r12
000000014056c333 mov      rax, qword ptr [rcx + 0x128]
000000014056c33a jmp      0x14056950b
000000014056c33f sub      eax, 0x40
000000014056c342 je       0x14056c6f8
000000014056c348 sub      eax, edx
000000014056c34a je       0x14056c67c
000000014056c350 sub      eax, edx
000000014056c352 je       0x14056c600
000000014056c358 sub      eax, edx
000000014056c35a je       0x14056c57a
000000014056c360 sub      eax, edx
000000014056c362 je       0x14056c501
000000014056c368 sub      eax, edx
000000014056c36a je       0x14056c478
000000014056c370 sub      eax, edx
000000014056c372 je       0x14056c3fc
000000014056c378 cmp      eax, edx
000000014056c37a jne      0x14056c784
000000014056c380 mov      rax, qword ptr [r14 + 0x20]
000000014056c384 mov      r15d, 0x15880
000000014056c38a mov      edx, r15d
000000014056c38d mov      rcx, rbx
000000014056c390 call     qword ptr [rip + 0x117f62]
000000014056c396 mov      dword ptr [rbp - 0x34], eax
000000014056c399 test     eax, eax
000000014056c39b je       0x14056c784
000000014056c3a1 mov      rax, qword ptr [r14 + 0x20]
000000014056c3a5 mov      edx, r15d
000000014056c3a8 mov      rcx, rbx
000000014056c3ab call     qword ptr [rip + 0x117f47]
000000014056c3b1 mov      rcx, qword ptr [rbx + 0x18]
000000014056c3b5 lea      r14, [rbx + 0x1320]
000000014056c3bc mov      r15d, eax
000000014056c3bf mov      dword ptr [rbp - 0x34], eax
000000014056c3c2 mov      rdx, r14
000000014056c3c5 mov      rax, qword ptr [rcx + 0x108]
000000014056c3cc mov      rcx, qword ptr [rbx + 8]
000000014056c3d0 call     qword ptr [rip + 0x117f22]
000000014056c3d6 mov      edx, dword ptr [rsi]
000000014056c3d8 cmp      edx, edi
000000014056c3da jae      0x14056951f
000000014056c3e0 mov      rcx, qword ptr [rbx + 0x18]
000000014056c3e4 lea      r9, [rip + 0xfa1c5]
000000014056c3eb sub      edi, edx
000000014056c3ed add      rdx, r12
000000014056c3f0 mov      rax, qword ptr [rcx + 0x128]
000000014056c3f7 jmp      0x14056950b
000000014056c3fc mov      rax, qword ptr [r14 + 0x20]
000000014056c400 mov      r15d, 0x11880
000000014056c406 mov      edx, r15d
000000014056c409 mov      rcx, rbx
000000014056c40c call     qword ptr [rip + 0x117ee6]
000000014056c412 mov      dword ptr [rbp - 0x34], eax
000000014056c415 test     eax, eax
000000014056c417 je       0x14056c784
000000014056c41d mov      rax, qword ptr [r14 + 0x20]
000000014056c421 mov      edx, r15d
000000014056c424 mov      rcx, rbx
000000014056c427 call     qword ptr [rip + 0x117ecb]
000000014056c42d mov      rcx, qword ptr [rbx + 0x18]
000000014056c431 lea      r14, [rbx + 0x1320]
000000014056c438 mov      r15d, eax
000000014056c43b mov      dword ptr [rbp - 0x34], eax
000000014056c43e mov      rdx, r14
000000014056c441 mov      rax, qword ptr [rcx + 0x108]
000000014056c448 mov      rcx, qword ptr [rbx + 8]
000000014056c44c call     qword ptr [rip + 0x117ea6]
000000014056c452 mov      edx, dword ptr [rsi]
000000014056c454 cmp      edx, edi
000000014056c456 jae      0x14056951f
000000014056c45c mov      rcx, qword ptr [rbx + 0x18]
000000014056c460 lea      r9, [rip + 0xfa119]
000000014056c467 sub      edi, edx
000000014056c469 add      rdx, r12
000000014056c46c mov      rax, qword ptr [rcx + 0x128]
000000014056c473 jmp      0x14056950b
000000014056c478 cmp      dword ptr [rbp + 0x70], edx
000000014056c47b jb       0x14056c784
000000014056c481 mov      rax, qword ptr [r14 + 0x20]
000000014056c485 mov      r15d, 0x88a4
000000014056c48b mov      edx, r15d
000000014056c48e mov      rcx, rbx
000000014056c491 call     qword ptr [rip + 0x117e61]
000000014056c497 mov      dword ptr [rbp - 0x34], eax
000000014056c49a test     eax, 0xff0000
000000014056c49f je       0x14056c784
000000014056c4a5 mov      rax, qword ptr [r14 + 0x20]
000000014056c4a9 mov      edx, r15d
000000014056c4ac mov      rcx, rbx
000000014056c4af call     qword ptr [rip + 0x117e43]
000000014056c4b5 mov      rcx, qword ptr [rbx + 0x18]
000000014056c4b9 lea      r15, [rbx + 0x1320]
000000014056c4c0 mov      r14d, eax
000000014056c4c3 mov      dword ptr [rbp - 0x34], eax
000000014056c4c6 mov      rdx, r15
000000014056c4c9 mov      rax, qword ptr [rcx + 0x108]
000000014056c4d0 mov      rcx, qword ptr [rbx + 8]
000000014056c4d4 call     qword ptr [rip + 0x117e1e]
000000014056c4da mov      edx, dword ptr [rsi]
000000014056c4dc cmp      edx, edi
000000014056c4de jae      0x140569154
000000014056c4e4 shr      r14d, 0x10
000000014056c4e8 lea      r9, [rip + 0xfa061]
000000014056c4ef movzx    ecx, r14b
000000014056c4f3 sub      edi, edx
000000014056c4f5 mov      dword ptr [rsp + 0x20], ecx
000000014056c4f9 add      rdx, r12
000000014056c4fc jmp      0x14056913a
000000014056c501 cmp      dword ptr [rbp + 0x70], edx
000000014056c504 jb       0x14056c784
000000014056c50a mov      rax, qword ptr [r14 + 0x10]
000000014056c50e mov      r15d, 0x88a4
000000014056c514 mov      edx, r15d
000000014056c517 mov      rcx, rbx
000000014056c51a call     qword ptr [rip + 0x117dd8]
000000014056c520 mov      ecx, 0xff0
000000014056c525 test     cx, ax
000000014056c528 je       0x14056c784
000000014056c52e mov      rax, qword ptr [r14 + 0x10]
000000014056c532 mov      edx, r15d
000000014056c535 mov      rcx, rbx
000000014056c538 call     qword ptr [rip + 0x117dba]
000000014056c53e mov      rcx, qword ptr [rbx + 8]
000000014056c542 lea      r14, [rbx + 0x1320]
000000014056c549 shr      eax, 4
000000014056c54c mov      rdx, r14
000000014056c54f movzx    r15d, al
000000014056c553 mov      rax, qword ptr [rbx + 0x18]
000000014056c557 mov      rax, qword ptr [rax + 0x108]
000000014056c55e call     qword ptr [rip + 0x117d94]
000000014056c564 mov      ecx, dword ptr [rsi]
000000014056c566 cmp      ecx, edi
000000014056c568 jae      0x14056951f
000000014056c56e lea      r9, [rip + 0xf9fab]
000000014056c575 jmp      0x1405694fa
000000014056c57a cmp      dword ptr [rbp + 0x70], edx
000000014056c57d jb       0x14056c784
000000014056c583 mov      rax, qword ptr [r14 + 0x20]
000000014056c587 mov      r15d, 0x889c
000000014056c58d mov      edx, r15d
000000014056c590 mov      rcx, rbx
000000014056c593 call     qword ptr [rip + 0x117d5f]
000000014056c599 mov      dword ptr [rbp - 0x34], eax
000000014056c59c cmp      eax, -1
000000014056c59f je       0x14056c784
000000014056c5a5 mov      rax, qword ptr [r14 + 0x20]
000000014056c5a9 mov      edx, r15d
000000014056c5ac mov      rcx, rbx
000000014056c5af call     qword ptr [rip + 0x117d43]
000000014056c5b5 mov      rcx, qword ptr [rbx + 0x18]
000000014056c5b9 lea      r14, [rbx + 0x1320]
000000014056c5c0 mov      r15d, eax
000000014056c5c3 mov      dword ptr [rbp - 0x34], eax
000000014056c5c6 mov      rdx, r14
000000014056c5c9 mov      rax, qword ptr [rcx + 0x108]
000000014056c5d0 mov      rcx, qword ptr [rbx + 8]
000000014056c5d4 call     qword ptr [rip + 0x117d1e]
000000014056c5da mov      edx, dword ptr [rsi]
000000014056c5dc cmp      edx, edi
000000014056c5de jae      0x14056951f
000000014056c5e4 mov      rcx, qword ptr [rbx + 0x18]
000000014056c5e8 lea      r9, [rip + 0xf9f01]
000000014056c5ef sub      edi, edx
000000014056c5f1 add      rdx, r12
000000014056c5f4 mov      rax, qword ptr [rcx + 0x128]
000000014056c5fb jmp      0x14056950b
000000014056c600 cmp      dword ptr [rbp + 0x70], edx
000000014056c603 jb       0x14056c784
000000014056c609 mov      rax, qword ptr [r14 + 0x20]
000000014056c60d mov      r15d, 0x8888
000000014056c613 mov      edx, r15d
000000014056c616 mov      rcx, rbx
000000014056c619 call     qword ptr [rip + 0x117cd9]
000000014056c61f mov      dword ptr [rbp - 0x34], eax
000000014056c622 cmp      eax, 0x100
000000014056c627 jb       0x14056c784
000000014056c62d mov      rax, qword ptr [r14 + 0x20]
000000014056c631 mov      edx, r15d
000000014056c634 mov      rcx, rbx
000000014056c637 call     qword ptr [rip + 0x117cbb]
000000014056c63d mov      rcx, qword ptr [rbx + 0x18]
000000014056c641 lea      r15, [rbx + 0x1320]
000000014056c648 mov      r14d, eax
000000014056c64b mov      dword ptr [rbp - 0x34], eax
000000014056c64e mov      rdx, r15
000000014056c651 mov      rax, qword ptr [rcx + 0x108]
000000014056c658 mov      rcx, qword ptr [rbx + 8]
000000014056c65c call     qword ptr [rip + 0x117c96]
000000014056c662 mov      ecx, dword ptr [rsi]
000000014056c664 cmp      ecx, edi
000000014056c666 jae      0x140569154
000000014056c66c shr      r14d, 8
000000014056c670 lea      r9, [rip + 0xf9e49]
000000014056c677 jmp      0x14056912f
000000014056c67c cmp      dword ptr [rbp + 0x70], edx
000000014056c67f jb       0x14056c784
000000014056c685 mov      rax, qword ptr [r14 + 0x20]
000000014056c689 mov      r15d, 0x8884
000000014056c68f mov      edx, r15d
000000014056c692 mov      rcx, rbx
000000014056c695 call     qword ptr [rip + 0x117c5d]
000000014056c69b mov      dword ptr [rbp - 0x34], eax
000000014056c69e cmp      eax, 0x100000
000000014056c6a3 jb       0x14056c784
000000014056c6a9 mov      rax, qword ptr [r14 + 0x20]
000000014056c6ad mov      edx, r15d
000000014056c6b0 mov      rcx, rbx
000000014056c6b3 call     qword ptr [rip + 0x117c3f]
000000014056c6b9 mov      rcx, qword ptr [rbx + 0x18]
000000014056c6bd lea      r15, [rbx + 0x1320]
000000014056c6c4 mov      r14d, eax
000000014056c6c7 mov      dword ptr [rbp - 0x34], eax
000000014056c6ca mov      rdx, r15
000000014056c6cd mov      rax, qword ptr [rcx + 0x108]
000000014056c6d4 mov      rcx, qword ptr [rbx + 8]
000000014056c6d8 call     qword ptr [rip + 0x117c1a]
000000014056c6de mov      ecx, dword ptr [rsi]
000000014056c6e0 cmp      ecx, edi
000000014056c6e2 jae      0x140569154
000000014056c6e8 shr      r14d, 0x14
000000014056c6ec lea      r9, [rip + 0xf9d9d]
000000014056c6f3 jmp      0x14056912f
000000014056c6f8 cmp      dword ptr [rbp + 0x70], edx
000000014056c6fb jb       0x14056c784
000000014056c701 mov      rax, qword ptr [r14 + 0x20]
000000014056c705 mov      r15d, 0x8880
000000014056c70b mov      edx, r15d
000000014056c70e mov      rcx, rbx
000000014056c711 call     qword ptr [rip + 0x117be1]
000000014056c717 mov      dword ptr [rbp - 0x34], eax
000000014056c71a test     eax, eax
000000014056c71c je       0x14056c784
000000014056c71e mov      rax, qword ptr [r14 + 0x20]
000000014056c722 mov      edx, r15d
000000014056c725 mov      rcx, rbx
000000014056c728 call     qword ptr [rip + 0x117bca]
000000014056c72e mov      rcx, qword ptr [rbx + 0x18]
000000014056c732 lea      r14, [rbx + 0x1320]
000000014056c739 mov      r15d, eax
000000014056c73c mov      dword ptr [rbp - 0x34], eax
000000014056c73f mov      rdx, r14
000000014056c742 mov      rax, qword ptr [rcx + 0x108]
000000014056c749 mov      rcx, qword ptr [rbx + 8]
000000014056c74d call     qword ptr [rip + 0x117ba5]
000000014056c753 mov      edx, dword ptr [rsi]
000000014056c755 cmp      edx, edi
000000014056c757 jae      0x14056951f
000000014056c75d mov      rcx, qword ptr [rbx + 0x18]
000000014056c761 lea      r9, [rip + 0xf9cf8]
000000014056c768 sub      edi, edx
000000014056c76a add      rdx, r12
000000014056c76d mov      rax, qword ptr [rcx + 0x128]
000000014056c774 jmp      0x14056950b
000000014056c779 mov      r15d, eax
000000014056c77c jmp      0x14056c787
000000014056c77e mov      r15d, dword ptr [rbp - 0x38]
000000014056c782 jmp      0x14056c787
000000014056c784 mov      r15d, r13d
000000014056c787 mov      rax, qword ptr [rbx + 0x18]
000000014056c78b lea      rdx, [rbx + 0x1208]
000000014056c792 dec      dword ptr [rbx + 0xef8]
000000014056c798 mov      rcx, qword ptr [rbx + 8]
000000014056c79c mov      rax, qword ptr [rax + 0x110]
000000014056c7a3 call     qword ptr [rip + 0x117b4f]
000000014056c7a9 mov      eax, r15d
000000014056c7ac add      rsp, 0x68
000000014056c7b0 pop      r15
000000014056c7b2 pop      r14
000000014056c7b4 pop      r13
000000014056c7b6 pop      r12
000000014056c7b8 pop      rdi
000000014056c7b9 pop      rsi
000000014056c7ba pop      rbx
000000014056c7bb pop      rbp
000000014056c7bc ret      