00000001404800d4 mov      qword ptr [rsp + 0x20], rbx
00000001404800d9 mov      qword ptr [rsp + 8], rcx
00000001404800de push     rbp
00000001404800df push     rsi
00000001404800e0 push     rdi
00000001404800e1 push     r12
00000001404800e3 push     r13
00000001404800e5 push     r14
00000001404800e7 push     r15
00000001404800e9 sub      rsp, 0x40
00000001404800ed mov      rax, qword ptr [rcx + 8]
00000001404800f1 mov      rbx, rcx
00000001404800f4 movsxd   r13, edx
00000001404800f7 imul     r8, r13, 0x6d0
00000001404800fe lea      rsi, [rax + 0x8e0]
0000000140480105 add      rsi, r8
0000000140480108 mov      qword ptr [rsp + 0x90], rsi
0000000140480110 movzx    edi, byte ptr [r8 + rax + 0x544]
0000000140480119 mov      byte ptr [rsp + 0x88], dil
0000000140480121 mov      rcx, qword ptr [rip + 0x49fed8]
0000000140480128 lea      rax, [rip + 0x49fed1]
000000014048012f cmp      rcx, rax
0000000140480132 je       0x14048016c
0000000140480134 cmp      byte ptr [rcx + 0x229], 4
000000014048013b jb       0x14048016c
000000014048013d test     dword ptr [rcx + 0x22c], 0x400
0000000140480147 je       0x14048016c
0000000140480149 mov      rcx, qword ptr [rcx + 0x218]
0000000140480150 lea      r9, [rip + 0x1d8ff9]
0000000140480157 mov      edx, 0x35
000000014048015c mov      dword ptr [rsp + 0x20], edi
0000000140480160 lea      r8, [rip + 0x467e79]
0000000140480167 call     0x1400088d8
000000014048016c xor      r8d, r8d
000000014048016f mov      edx, 0xa0
0000000140480174 mov      rcx, rsi
0000000140480177 call     0x140031144
000000014048017c xor      ebp, ebp
000000014048017e lea      r12d, [rdi - 0xe]
0000000140480182 mov      byte ptr [rsp + 0x30], r12b
0000000140480187 mov      r14d, 0x63
000000014048018d mov      byte ptr [rsp + 0x28], bpl
0000000140480192 mov      r9d, r14d
0000000140480195 xor      r8d, r8d
0000000140480198 mov      byte ptr [rsp + 0x20], bpl
000000014048019d mov      edx, r13d
00000001404801a0 mov      rcx, rbx
00000001404801a3 call     0x1403871f8
00000001404801a8 movsx    eax, al
00000001404801ab lea      r15d, [rdi - 0xa]
00000001404801af cdq      
00000001404801b0 mov      byte ptr [rsp + 0x30], r15b
00000001404801b5 sub      eax, edx
00000001404801b7 mov      byte ptr [rsp + 0x28], bpl
00000001404801bc sar      eax, 1
00000001404801be mov      r9d, r14d
00000001404801c1 xor      r8d, r8d
00000001404801c4 mov      byte ptr [rsi], al
00000001404801c6 mov      edx, r13d
00000001404801c9 mov      byte ptr [rsp + 0x20], bpl
00000001404801ce mov      rcx, rbx
00000001404801d1 call     0x1403871f8
00000001404801d6 movsx    eax, al
00000001404801d9 lea      r14d, [rdi - 6]
00000001404801dd cdq      
00000001404801de mov      byte ptr [rsp + 0x30], r14b
00000001404801e3 sub      eax, edx
00000001404801e5 mov      byte ptr [rsp + 0x28], bpl
00000001404801ea sar      eax, 1
00000001404801ec lea      r9d, [rbp + 0x63]
00000001404801f0 xor      r8d, r8d
00000001404801f3 mov      byte ptr [rsi + 1], al
00000001404801f6 mov      edx, r13d
00000001404801f9 mov      byte ptr [rsp + 0x20], bpl
00000001404801fe mov      rcx, rbx
0000000140480201 call     0x1403871f8
0000000140480206 movsx    eax, al
0000000140480209 lea      ebp, [rdi - 2]
000000014048020c cdq      
000000014048020d mov      byte ptr [rsp + 0x30], bpl
0000000140480212 sub      eax, edx
0000000140480214 mov      byte ptr [rsp + 0x28], 0
0000000140480219 sar      eax, 1
000000014048021b mov      r9d, 0x63
0000000140480221 xor      r8d, r8d
0000000140480224 mov      byte ptr [rsi + 2], al
0000000140480227 mov      edx, r13d
000000014048022a mov      byte ptr [rsp + 0x20], 0
000000014048022f mov      rcx, rbx
0000000140480232 call     0x1403871f8
0000000140480237 movsx    eax, al
000000014048023a mov      r9d, 0x63
0000000140480240 cdq      
0000000140480241 xor      r8d, r8d
0000000140480244 sub      eax, edx
0000000140480246 mov      rcx, rbx
0000000140480249 sar      eax, 1
000000014048024b mov      edx, r13d
000000014048024e mov      byte ptr [rsi + 3], al
0000000140480251 lea      esi, [rdi + 2]
0000000140480254 mov      byte ptr [rsp + 0x30], sil
0000000140480259 mov      byte ptr [rsp + 0x28], 0
000000014048025e mov      byte ptr [rsp + 0x20], 0
0000000140480263 call     0x1403871f8
0000000140480268 mov      rcx, qword ptr [rsp + 0x90]
0000000140480270 mov      r9d, 0x63
0000000140480276 movsx    eax, al
0000000140480279 cdq      
000000014048027a sub      eax, edx
000000014048027c sar      eax, 1
000000014048027e add      dil, 6
0000000140480282 mov      byte ptr [rcx + 4], al
0000000140480285 mov      byte ptr [rsp + 0x30], dil
000000014048028a mov      byte ptr [rsp + 0x28], 0
000000014048028f xor      r8d, r8d
0000000140480292 mov      byte ptr [rsp + 0x20], 0
0000000140480297 mov      edx, r13d
000000014048029a mov      rcx, rbx
000000014048029d call     0x1403871f8
00000001404802a2 mov      rcx, qword ptr [rsp + 0x90]
00000001404802aa mov      r9d, 0x63
00000001404802b0 movsx    eax, al
00000001404802b3 xor      r8d, r8d
00000001404802b6 cdq      
00000001404802b7 sub      eax, edx
00000001404802b9 mov      edx, r13d
00000001404802bc sar      eax, 1
00000001404802be mov      byte ptr [rcx + 5], al
00000001404802c1 mov      al, byte ptr [rsp + 0x88]
00000001404802c8 mov      rcx, qword ptr [rsp + 0x80]
00000001404802d0 lea      ebx, [rax + 0xa]
00000001404802d3 mov      byte ptr [rsp + 0x30], bl
00000001404802d7 mov      byte ptr [rsp + 0x28], 0
00000001404802dc mov      byte ptr [rsp + 0x20], 0
00000001404802e1 call     0x1403871f8
00000001404802e6 mov      rcx, qword ptr [rsp + 0x90]
00000001404802ee mov      r9d, 0x63
00000001404802f4 movsx    eax, al
00000001404802f7 xor      r8d, r8d
00000001404802fa cdq      
00000001404802fb sub      eax, edx
00000001404802fd mov      edx, r13d
0000000140480300 sar      eax, 1
0000000140480302 mov      byte ptr [rcx + 6], al
0000000140480305 mov      al, byte ptr [rsp + 0x88]
000000014048030c mov      rcx, qword ptr [rsp + 0x80]
0000000140480314 add      al, 0xe
0000000140480316 mov      byte ptr [rsp + 0x30], al
000000014048031a mov      byte ptr [rsp + 0x28], 0
000000014048031f mov      byte ptr [rsp + 0x20], 0
0000000140480324 mov      byte ptr [rsp + 0x88], al
000000014048032b call     0x1403871f8
0000000140480330 mov      rcx, qword ptr [rsp + 0x90]
0000000140480338 mov      r9d, 0x63
000000014048033e movsx    eax, al
0000000140480341 xor      r8d, r8d
0000000140480344 cdq      
0000000140480345 mov      byte ptr [rsp + 0x30], r12b
000000014048034a sub      eax, edx
000000014048034c mov      byte ptr [rsp + 0x28], 0
0000000140480351 sar      eax, 1
0000000140480353 mov      edx, r13d
0000000140480356 mov      byte ptr [rcx + 7], al
0000000140480359 mov      rcx, qword ptr [rsp + 0x80]
0000000140480361 mov      byte ptr [rsp + 0x20], 1
0000000140480366 call     0x1403871f8
000000014048036b mov      rcx, qword ptr [rsp + 0x90]
0000000140480373 mov      r9d, 0x63
0000000140480379 movsx    eax, al
000000014048037c xor      r8d, r8d
000000014048037f cdq      
0000000140480380 mov      byte ptr [rsp + 0x30], r15b
0000000140480385 sub      eax, edx
0000000140480387 mov      byte ptr [rsp + 0x28], 0
000000014048038c sar      eax, 1
000000014048038e mov      edx, r13d
0000000140480391 mov      byte ptr [rcx + 0x10], al
0000000140480394 mov      rcx, qword ptr [rsp + 0x80]
000000014048039c mov      byte ptr [rsp + 0x20], 1
00000001404803a1 call     0x1403871f8
00000001404803a6 mov      rcx, qword ptr [rsp + 0x90]
00000001404803ae mov      r9d, 0x63
00000001404803b4 movsx    eax, al
00000001404803b7 xor      r8d, r8d
00000001404803ba cdq      
00000001404803bb mov      byte ptr [rsp + 0x30], r14b
00000001404803c0 sub      eax, edx
00000001404803c2 mov      byte ptr [rsp + 0x28], 0
00000001404803c7 sar      eax, 1
00000001404803c9 mov      edx, r13d
00000001404803cc mov      byte ptr [rcx + 0x11], al
00000001404803cf mov      rcx, qword ptr [rsp + 0x80]
00000001404803d7 mov      byte ptr [rsp + 0x20], 1
00000001404803dc call     0x1403871f8
00000001404803e1 movsx    eax, al
00000001404803e4 mov      rcx, qword ptr [rsp + 0x90]
00000001404803ec cdq      
00000001404803ed sub      eax, edx
00000001404803ef mov      byte ptr [rsp + 0x30], bpl
00000001404803f4 sar      eax, 1
00000001404803f6 mov      r9d, 0x63
00000001404803fc mov      byte ptr [rsp + 0x28], 0
0000000140480401 xor      r8d, r8d
0000000140480404 mov      byte ptr [rcx + 0x12], al
0000000140480407 mov      edx, r13d
000000014048040a mov      rcx, qword ptr [rsp + 0x80]
0000000140480412 mov      byte ptr [rsp + 0x20], 1
0000000140480417 call     0x1403871f8
000000014048041c mov      rcx, qword ptr [rsp + 0x90]
0000000140480424 mov      r9d, 0x63
000000014048042a movsx    eax, al
000000014048042d xor      r8d, r8d
0000000140480430 cdq      
0000000140480431 mov      byte ptr [rsp + 0x30], sil
0000000140480436 sub      eax, edx
0000000140480438 mov      byte ptr [rsp + 0x28], 0
000000014048043d sar      eax, 1
000000014048043f mov      edx, r13d
0000000140480442 mov      byte ptr [rcx + 0x13], al
0000000140480445 mov      rcx, qword ptr [rsp + 0x80]
000000014048044d mov      byte ptr [rsp + 0x20], 1
0000000140480452 call     0x1403871f8
0000000140480457 mov      rcx, qword ptr [rsp + 0x90]
000000014048045f mov      r9d, 0x63
0000000140480465 movsx    eax, al
0000000140480468 xor      r8d, r8d
000000014048046b cdq      
000000014048046c mov      byte ptr [rsp + 0x30], dil
0000000140480471 sub      eax, edx
0000000140480473 mov      byte ptr [rsp + 0x28], 0
0000000140480478 sar      eax, 1
000000014048047a mov      edx, r13d
000000014048047d mov      byte ptr [rcx + 0x14], al
0000000140480480 mov      rcx, qword ptr [rsp + 0x80]
0000000140480488 mov      byte ptr [rsp + 0x20], 1
000000014048048d call     0x1403871f8
0000000140480492 mov      rcx, qword ptr [rsp + 0x90]
000000014048049a mov      r9d, 0x63
00000001404804a0 movsx    eax, al
00000001404804a3 xor      r8d, r8d
00000001404804a6 cdq      
00000001404804a7 mov      byte ptr [rsp + 0x30], bl
00000001404804ab sub      eax, edx
00000001404804ad mov      byte ptr [rsp + 0x28], 0
00000001404804b2 sar      eax, 1
00000001404804b4 mov      edx, r13d
00000001404804b7 mov      byte ptr [rcx + 0x15], al
00000001404804ba mov      rcx, qword ptr [rsp + 0x80]
00000001404804c2 mov      byte ptr [rsp + 0x20], 1
00000001404804c7 call     0x1403871f8
00000001404804cc mov      rcx, qword ptr [rsp + 0x90]
00000001404804d4 mov      r9d, 0x63
00000001404804da movsx    eax, al
00000001404804dd xor      r8d, r8d
00000001404804e0 cdq      
00000001404804e1 sub      eax, edx
00000001404804e3 mov      edx, r13d
00000001404804e6 sar      eax, 1
00000001404804e8 mov      byte ptr [rcx + 0x16], al
00000001404804eb mov      al, byte ptr [rsp + 0x88]
00000001404804f2 mov      rcx, qword ptr [rsp + 0x80]
00000001404804fa mov      byte ptr [rsp + 0x30], al
00000001404804fe mov      byte ptr [rsp + 0x28], 0
0000000140480503 mov      byte ptr [rsp + 0x20], 1
0000000140480508 call     0x1403871f8
000000014048050d mov      rcx, qword ptr [rsp + 0x90]
0000000140480515 mov      r9d, 0x93
000000014048051b movsx    eax, al
000000014048051e cdq      
000000014048051f mov      byte ptr [rsp + 0x30], r12b
0000000140480524 sub      eax, edx
0000000140480526 mov      byte ptr [rsp + 0x28], 0
000000014048052b sar      eax, 1
000000014048052d mov      byte ptr [rcx + 0x17], al
0000000140480530 xor      r8d, r8d
0000000140480533 mov      byte ptr [rsp + 0x20], 3
0000000140480538 mov      rcx, qword ptr [rsp + 0x80]
0000000140480540 mov      edx, r13d
0000000140480543 call     0x1403871f8
0000000140480548 mov      rcx, qword ptr [rsp + 0x90]
0000000140480550 mov      r9d, 0x93
0000000140480556 movsx    eax, al
0000000140480559 xor      r8d, r8d
000000014048055c cdq      
000000014048055d mov      byte ptr [rsp + 0x30], r15b
0000000140480562 sub      eax, edx
0000000140480564 mov      byte ptr [rsp + 0x28], 0
0000000140480569 sar      eax, 1
000000014048056b mov      edx, r13d
000000014048056e mov      byte ptr [rcx + 0x60], al
0000000140480571 mov      rcx, qword ptr [rsp + 0x80]
0000000140480579 mov      byte ptr [rsp + 0x20], 3
000000014048057e call     0x1403871f8
0000000140480583 mov      rcx, qword ptr [rsp + 0x90]
000000014048058b mov      r9d, 0x93
0000000140480591 movsx    eax, al
0000000140480594 xor      r8d, r8d
0000000140480597 cdq      
0000000140480598 mov      byte ptr [rsp + 0x30], r14b
000000014048059d sub      eax, edx
000000014048059f mov      byte ptr [rsp + 0x28], 0
00000001404805a4 sar      eax, 1
00000001404805a6 mov      edx, r13d
00000001404805a9 mov      byte ptr [rcx + 0x61], al
00000001404805ac mov      rcx, qword ptr [rsp + 0x80]
00000001404805b4 mov      byte ptr [rsp + 0x20], 3
00000001404805b9 call     0x1403871f8
00000001404805be mov      rcx, qword ptr [rsp + 0x90]
00000001404805c6 mov      r9d, 0x93
00000001404805cc movsx    eax, al
00000001404805cf xor      r8d, r8d
00000001404805d2 cdq      
00000001404805d3 mov      byte ptr [rsp + 0x30], bpl
00000001404805d8 sub      eax, edx
00000001404805da mov      byte ptr [rsp + 0x28], 0
00000001404805df sar      eax, 1
00000001404805e1 mov      edx, r13d
00000001404805e4 mov      byte ptr [rcx + 0x62], al
00000001404805e7 mov      rcx, qword ptr [rsp + 0x80]
00000001404805ef mov      byte ptr [rsp + 0x20], 3
00000001404805f4 call     0x1403871f8
00000001404805f9 mov      rcx, qword ptr [rsp + 0x90]
0000000140480601 mov      r9d, 0x93
0000000140480607 movsx    eax, al
000000014048060a xor      r8d, r8d
000000014048060d cdq      
000000014048060e mov      byte ptr [rsp + 0x30], sil
0000000140480613 sub      eax, edx
0000000140480615 mov      byte ptr [rsp + 0x28], 0
000000014048061a sar      eax, 1
000000014048061c mov      edx, r13d
000000014048061f mov      byte ptr [rcx + 0x63], al
0000000140480622 mov      rcx, qword ptr [rsp + 0x80]
000000014048062a mov      byte ptr [rsp + 0x20], 3
000000014048062f call     0x1403871f8
0000000140480634 mov      rcx, qword ptr [rsp + 0x90]
000000014048063c mov      r9d, 0x93
0000000140480642 movsx    eax, al
0000000140480645 xor      r8d, r8d
0000000140480648 cdq      
0000000140480649 mov      byte ptr [rsp + 0x30], dil
000000014048064e sub      eax, edx
0000000140480650 mov      byte ptr [rsp + 0x28], 0
0000000140480655 sar      eax, 1
0000000140480657 mov      edx, r13d
000000014048065a mov      byte ptr [rcx + 0x64], al
000000014048065d mov      rcx, qword ptr [rsp + 0x80]
0000000140480665 mov      byte ptr [rsp + 0x20], 3
000000014048066a call     0x1403871f8
000000014048066f mov      rcx, qword ptr [rsp + 0x90]
0000000140480677 mov      r9d, 0x93
000000014048067d movsx    eax, al
0000000140480680 cdq      
0000000140480681 mov      byte ptr [rsp + 0x30], bl
0000000140480685 sub      eax, edx
0000000140480687 sar      eax, 1
0000000140480689 mov      byte ptr [rcx + 0x65], al
000000014048068c mov      rcx, qword ptr [rsp + 0x80]
0000000140480694 xor      r8d, r8d
0000000140480697 mov      byte ptr [rsp + 0x28], 0
000000014048069c mov      edx, r13d
000000014048069f mov      byte ptr [rsp + 0x20], 3
00000001404806a4 call     0x1403871f8
00000001404806a9 mov      rcx, qword ptr [rsp + 0x90]
00000001404806b1 mov      r9d, 0x93
00000001404806b7 movsx    eax, al
00000001404806ba xor      r8d, r8d
00000001404806bd cdq      
00000001404806be sub      eax, edx
00000001404806c0 mov      edx, r13d
00000001404806c3 sar      eax, 1
00000001404806c5 mov      byte ptr [rcx + 0x66], al
00000001404806c8 mov      al, byte ptr [rsp + 0x88]
00000001404806cf mov      rcx, qword ptr [rsp + 0x80]
00000001404806d7 mov      byte ptr [rsp + 0x30], al
00000001404806db mov      byte ptr [rsp + 0x28], 0
00000001404806e0 mov      byte ptr [rsp + 0x20], 3
00000001404806e5 call     0x1403871f8
00000001404806ea mov      rcx, qword ptr [rsp + 0x90]
00000001404806f2 mov      r9d, 0x63
00000001404806f8 movsx    eax, al
00000001404806fb xor      r8d, r8d
00000001404806fe cdq      
00000001404806ff mov      byte ptr [rsp + 0x30], r12b
0000000140480704 sub      eax, edx
0000000140480706 mov      byte ptr [rsp + 0x28], 0
000000014048070b sar      eax, 1
000000014048070d mov      edx, r13d
0000000140480710 mov      byte ptr [rcx + 0x67], al
0000000140480713 mov      rcx, qword ptr [rsp + 0x80]
000000014048071b mov      byte ptr [rsp + 0x20], 2
0000000140480720 call     0x1403871f8
0000000140480725 mov      rcx, qword ptr [rsp + 0x90]
000000014048072d mov      r9d, 0x63
0000000140480733 movsx    eax, al
0000000140480736 xor      r8d, r8d
0000000140480739 cdq      
000000014048073a mov      byte ptr [rsp + 0x30], r15b
000000014048073f sub      eax, edx
0000000140480741 mov      byte ptr [rsp + 0x28], 0
0000000140480746 sar      eax, 1
0000000140480748 mov      edx, r13d
000000014048074b mov      byte ptr [rcx + 0x20], al
000000014048074e mov      rcx, qword ptr [rsp + 0x80]
0000000140480756 mov      byte ptr [rsp + 0x20], 2
000000014048075b call     0x1403871f8
0000000140480760 mov      rcx, qword ptr [rsp + 0x90]
0000000140480768 mov      r9d, 0x63
000000014048076e movsx    eax, al
0000000140480771 xor      r8d, r8d
0000000140480774 cdq      
0000000140480775 mov      byte ptr [rsp + 0x30], r14b
000000014048077a sub      eax, edx
000000014048077c mov      byte ptr [rsp + 0x28], 0
0000000140480781 sar      eax, 1
0000000140480783 mov      edx, r13d
0000000140480786 mov      byte ptr [rcx + 0x21], al
0000000140480789 mov      rcx, qword ptr [rsp + 0x80]
0000000140480791 mov      byte ptr [rsp + 0x20], 2
0000000140480796 call     0x1403871f8
000000014048079b mov      rcx, qword ptr [rsp + 0x90]
00000001404807a3 mov      r9d, 0x63
00000001404807a9 movsx    eax, al
00000001404807ac xor      r8d, r8d
00000001404807af cdq      
00000001404807b0 mov      byte ptr [rsp + 0x30], bpl
00000001404807b5 sub      eax, edx
00000001404807b7 mov      byte ptr [rsp + 0x28], 0
00000001404807bc sar      eax, 1
00000001404807be mov      edx, r13d
00000001404807c1 mov      byte ptr [rcx + 0x22], al
00000001404807c4 mov      rcx, qword ptr [rsp + 0x80]
00000001404807cc mov      byte ptr [rsp + 0x20], 2
00000001404807d1 call     0x1403871f8
00000001404807d6 movsx    eax, al
00000001404807d9 cdq      
00000001404807da sub      eax, edx
00000001404807dc sar      eax, 1
00000001404807de mov      rcx, qword ptr [rsp + 0x90]
00000001404807e6 mov      r9d, 0x63
00000001404807ec mov      byte ptr [rsp + 0x30], sil
00000001404807f1 xor      r8d, r8d
00000001404807f4 mov      byte ptr [rsp + 0x28], 0
00000001404807f9 mov      edx, r13d
00000001404807fc mov      byte ptr [rsp + 0x20], 2
0000000140480801 mov      byte ptr [rcx + 0x23], al
0000000140480804 mov      rcx, qword ptr [rsp + 0x80]
000000014048080c call     0x1403871f8
0000000140480811 mov      rcx, qword ptr [rsp + 0x90]
0000000140480819 mov      r9d, 0x63
000000014048081f movsx    eax, al
0000000140480822 xor      r8d, r8d
0000000140480825 cdq      
0000000140480826 mov      byte ptr [rsp + 0x30], dil
000000014048082b sub      eax, edx
000000014048082d mov      byte ptr [rsp + 0x28], 0
0000000140480832 sar      eax, 1
0000000140480834 mov      edx, r13d
0000000140480837 mov      byte ptr [rcx + 0x24], al
000000014048083a mov      rcx, qword ptr [rsp + 0x80]
0000000140480842 mov      byte ptr [rsp + 0x20], 2
0000000140480847 call     0x1403871f8
000000014048084c mov      rcx, qword ptr [rsp + 0x90]
0000000140480854 mov      r9d, 0x63
000000014048085a movsx    eax, al
000000014048085d xor      r8d, r8d
0000000140480860 cdq      
0000000140480861 mov      byte ptr [rsp + 0x30], bl
0000000140480865 sub      eax, edx
0000000140480867 mov      byte ptr [rsp + 0x28], 0
000000014048086c sar      eax, 1
000000014048086e mov      edx, r13d
0000000140480871 mov      byte ptr [rcx + 0x25], al
0000000140480874 mov      rcx, qword ptr [rsp + 0x80]
000000014048087c mov      byte ptr [rsp + 0x20], 2
0000000140480881 call     0x1403871f8
0000000140480886 mov      rcx, qword ptr [rsp + 0x90]
000000014048088e mov      r9d, 0x63
0000000140480894 movsx    eax, al
0000000140480897 xor      r8d, r8d
000000014048089a cdq      
000000014048089b sub      eax, edx
000000014048089d mov      edx, r13d
00000001404808a0 sar      eax, 1
00000001404808a2 mov      byte ptr [rcx + 0x26], al
00000001404808a5 mov      al, byte ptr [rsp + 0x88]
00000001404808ac mov      rcx, qword ptr [rsp + 0x80]
00000001404808b4 mov      byte ptr [rsp + 0x30], al
00000001404808b8 mov      byte ptr [rsp + 0x28], 0
00000001404808bd mov      byte ptr [rsp + 0x20], 2
00000001404808c2 call     0x1403871f8
00000001404808c7 mov      rcx, qword ptr [rsp + 0x90]
00000001404808cf mov      r9d, 0x93
00000001404808d5 movsx    eax, al
00000001404808d8 xor      r8d, r8d
00000001404808db cdq      
00000001404808dc mov      byte ptr [rsp + 0x30], r12b
00000001404808e1 sub      eax, edx
00000001404808e3 mov      byte ptr [rsp + 0x28], 0
00000001404808e8 sar      eax, 1
00000001404808ea mov      edx, r13d
00000001404808ed mov      byte ptr [rcx + 0x27], al
00000001404808f0 mov      rcx, qword ptr [rsp + 0x80]
00000001404808f8 mov      byte ptr [rsp + 0x20], 4
00000001404808fd call     0x1403871f8
0000000140480902 mov      rcx, qword ptr [rsp + 0x90]
000000014048090a mov      r9d, 0x93
0000000140480910 movsx    eax, al
0000000140480913 xor      r8d, r8d
0000000140480916 cdq      
0000000140480917 mov      byte ptr [rsp + 0x30], r15b
000000014048091c sub      eax, edx
000000014048091e mov      byte ptr [rsp + 0x28], 0
0000000140480923 sar      eax, 1
0000000140480925 mov      edx, r13d
0000000140480928 mov      byte ptr [rcx + 0x80], al
000000014048092e mov      rcx, qword ptr [rsp + 0x80]
0000000140480936 mov      byte ptr [rsp + 0x20], 4
000000014048093b call     0x1403871f8
0000000140480940 mov      rcx, qword ptr [rsp + 0x90]
0000000140480948 mov      r9d, 0x93
000000014048094e movsx    eax, al
0000000140480951 xor      r8d, r8d
0000000140480954 cdq      
0000000140480955 mov      byte ptr [rsp + 0x30], r14b
000000014048095a sub      eax, edx
000000014048095c mov      byte ptr [rsp + 0x28], 0
0000000140480961 sar      eax, 1
0000000140480963 mov      edx, r13d
0000000140480966 mov      byte ptr [rcx + 0x81], al
000000014048096c mov      rcx, qword ptr [rsp + 0x80]
0000000140480974 mov      byte ptr [rsp + 0x20], 4
0000000140480979 call     0x1403871f8
000000014048097e mov      rcx, qword ptr [rsp + 0x90]
0000000140480986 mov      r9d, 0x93
000000014048098c movsx    eax, al
000000014048098f xor      r8d, r8d
0000000140480992 cdq      
0000000140480993 mov      byte ptr [rsp + 0x30], bpl
0000000140480998 sub      eax, edx
000000014048099a mov      byte ptr [rsp + 0x28], 0
000000014048099f sar      eax, 1
00000001404809a1 mov      edx, r13d
00000001404809a4 mov      byte ptr [rcx + 0x82], al
00000001404809aa mov      rcx, qword ptr [rsp + 0x80]
00000001404809b2 mov      byte ptr [rsp + 0x20], 4
00000001404809b7 call     0x1403871f8
00000001404809bc mov      rcx, qword ptr [rsp + 0x90]
00000001404809c4 mov      r9d, 0x93
00000001404809ca movsx    eax, al
00000001404809cd xor      r8d, r8d
00000001404809d0 cdq      
00000001404809d1 mov      byte ptr [rsp + 0x30], sil
00000001404809d6 sub      eax, edx
00000001404809d8 mov      byte ptr [rsp + 0x28], 0
00000001404809dd sar      eax, 1
00000001404809df mov      edx, r13d
00000001404809e2 mov      byte ptr [rcx + 0x83], al
00000001404809e8 mov      rcx, qword ptr [rsp + 0x80]
00000001404809f0 mov      byte ptr [rsp + 0x20], 4
00000001404809f5 call     0x1403871f8
00000001404809fa mov      rcx, qword ptr [rsp + 0x90]
0000000140480a02 mov      r9d, 0x93
0000000140480a08 movsx    eax, al
0000000140480a0b xor      r8d, r8d
0000000140480a0e cdq      
0000000140480a0f mov      byte ptr [rsp + 0x30], dil
0000000140480a14 sub      eax, edx
0000000140480a16 mov      byte ptr [rsp + 0x28], 0
0000000140480a1b sar      eax, 1
0000000140480a1d mov      edx, r13d
0000000140480a20 mov      byte ptr [rcx + 0x84], al
0000000140480a26 mov      rcx, qword ptr [rsp + 0x80]
0000000140480a2e mov      byte ptr [rsp + 0x20], 4
0000000140480a33 call     0x1403871f8
0000000140480a38 mov      rcx, qword ptr [rsp + 0x90]
0000000140480a40 mov      r9d, 0x93
0000000140480a46 movsx    eax, al
0000000140480a49 xor      r8d, r8d
0000000140480a4c cdq      
0000000140480a4d mov      byte ptr [rsp + 0x30], bl
0000000140480a51 sub      eax, edx
0000000140480a53 mov      byte ptr [rsp + 0x28], 0
0000000140480a58 sar      eax, 1
0000000140480a5a mov      edx, r13d
0000000140480a5d mov      byte ptr [rcx + 0x85], al
0000000140480a63 mov      rcx, qword ptr [rsp + 0x80]
0000000140480a6b mov      byte ptr [rsp + 0x20], 4
0000000140480a70 call     0x1403871f8
0000000140480a75 mov      rcx, qword ptr [rsp + 0x90]
0000000140480a7d mov      r9d, 0x93
0000000140480a83 movsx    eax, al
0000000140480a86 cdq      
0000000140480a87 sub      eax, edx
0000000140480a89 sar      eax, 1
0000000140480a8b mov      byte ptr [rcx + 0x86], al
0000000140480a91 mov      al, byte ptr [rsp + 0x88]
0000000140480a98 mov      byte ptr [rsp + 0x30], al
0000000140480a9c mov      byte ptr [rsp + 0x28], 0
0000000140480aa1 mov      byte ptr [rsp + 0x20], 4
0000000140480aa6 mov      rcx, qword ptr [rsp + 0x80]
0000000140480aae xor      r8d, r8d
0000000140480ab1 mov      edx, r13d
0000000140480ab4 call     0x1403871f8
0000000140480ab9 mov      rcx, qword ptr [rsp + 0x90]
0000000140480ac1 mov      r9d, 0x63
0000000140480ac7 movsx    eax, al
0000000140480aca xor      r8d, r8d
0000000140480acd cdq      
0000000140480ace mov      byte ptr [rsp + 0x30], r12b
0000000140480ad3 sub      eax, edx
0000000140480ad5 mov      byte ptr [rsp + 0x28], 1
0000000140480ada sar      eax, 1
0000000140480adc mov      edx, r13d
0000000140480adf mov      byte ptr [rcx + 0x87], al
0000000140480ae5 mov      rcx, qword ptr [rsp + 0x80]
0000000140480aed mov      byte ptr [rsp + 0x20], 0
0000000140480af2 call     0x1403871f8
0000000140480af7 mov      rcx, qword ptr [rsp + 0x90]
0000000140480aff mov      r9d, 0x63
0000000140480b05 movsx    eax, al
0000000140480b08 xor      r8d, r8d
0000000140480b0b cdq      
0000000140480b0c mov      byte ptr [rsp + 0x30], r15b
0000000140480b11 sub      eax, edx
0000000140480b13 mov      byte ptr [rsp + 0x28], 1
0000000140480b18 sar      eax, 1
0000000140480b1a mov      edx, r13d
0000000140480b1d mov      byte ptr [rcx + 0x30], al
0000000140480b20 mov      rcx, qword ptr [rsp + 0x80]
0000000140480b28 mov      byte ptr [rsp + 0x20], 0
0000000140480b2d call     0x1403871f8
0000000140480b32 mov      rcx, qword ptr [rsp + 0x90]
0000000140480b3a mov      r9d, 0x63
0000000140480b40 movsx    eax, al
0000000140480b43 xor      r8d, r8d
0000000140480b46 cdq      
0000000140480b47 mov      byte ptr [rsp + 0x30], r14b
0000000140480b4c sub      eax, edx
0000000140480b4e mov      byte ptr [rsp + 0x28], 1
0000000140480b53 sar      eax, 1
0000000140480b55 mov      edx, r13d
0000000140480b58 mov      byte ptr [rcx + 0x31], al
0000000140480b5b mov      rcx, qword ptr [rsp + 0x80]
0000000140480b63 mov      byte ptr [rsp + 0x20], 0
0000000140480b68 call     0x1403871f8
0000000140480b6d mov      rcx, qword ptr [rsp + 0x90]
0000000140480b75 mov      r9d, 0x63
0000000140480b7b movsx    eax, al
0000000140480b7e xor      r8d, r8d
0000000140480b81 cdq      
0000000140480b82 mov      byte ptr [rsp + 0x30], bpl
0000000140480b87 sub      eax, edx
0000000140480b89 mov      byte ptr [rsp + 0x28], 1
0000000140480b8e sar      eax, 1
0000000140480b90 mov      edx, r13d
0000000140480b93 mov      byte ptr [rcx + 0x32], al
0000000140480b96 mov      rcx, qword ptr [rsp + 0x80]
0000000140480b9e mov      byte ptr [rsp + 0x20], 0
0000000140480ba3 call     0x1403871f8
0000000140480ba8 mov      rcx, qword ptr [rsp + 0x90]
0000000140480bb0 mov      r9d, 0x63
0000000140480bb6 movsx    eax, al
0000000140480bb9 xor      r8d, r8d
0000000140480bbc cdq      
0000000140480bbd mov      byte ptr [rsp + 0x30], sil
0000000140480bc2 sub      eax, edx
0000000140480bc4 mov      byte ptr [rsp + 0x28], 1
0000000140480bc9 sar      eax, 1
0000000140480bcb mov      edx, r13d
0000000140480bce mov      byte ptr [rcx + 0x33], al
0000000140480bd1 mov      rcx, qword ptr [rsp + 0x80]
0000000140480bd9 mov      byte ptr [rsp + 0x20], 0
0000000140480bde call     0x1403871f8
0000000140480be3 mov      rcx, qword ptr [rsp + 0x90]
0000000140480beb mov      r9d, 0x63
0000000140480bf1 movsx    eax, al
0000000140480bf4 cdq      
0000000140480bf5 sub      eax, edx
0000000140480bf7 sar      eax, 1
0000000140480bf9 mov      byte ptr [rcx + 0x34], al
0000000140480bfc mov      rcx, qword ptr [rsp + 0x80]
0000000140480c04 xor      r8d, r8d
0000000140480c07 mov      byte ptr [rsp + 0x30], dil
0000000140480c0c mov      edx, r13d
0000000140480c0f mov      byte ptr [rsp + 0x28], 1
0000000140480c14 mov      byte ptr [rsp + 0x20], 0
0000000140480c19 call     0x1403871f8
0000000140480c1e mov      rcx, qword ptr [rsp + 0x90]
0000000140480c26 mov      r9d, 0x63
0000000140480c2c movsx    eax, al
0000000140480c2f xor      r8d, r8d
0000000140480c32 cdq      
0000000140480c33 mov      byte ptr [rsp + 0x30], bl
0000000140480c37 sub      eax, edx
0000000140480c39 mov      byte ptr [rsp + 0x28], 1
0000000140480c3e sar      eax, 1
0000000140480c40 mov      edx, r13d
0000000140480c43 mov      byte ptr [rcx + 0x35], al
0000000140480c46 mov      rcx, qword ptr [rsp + 0x80]
0000000140480c4e mov      byte ptr [rsp + 0x20], 0
0000000140480c53 call     0x1403871f8
0000000140480c58 mov      rcx, qword ptr [rsp + 0x90]
0000000140480c60 mov      r9d, 0x63
0000000140480c66 movsx    eax, al
0000000140480c69 xor      r8d, r8d
0000000140480c6c cdq      
0000000140480c6d sub      eax, edx
0000000140480c6f mov      edx, r13d
0000000140480c72 sar      eax, 1
0000000140480c74 mov      byte ptr [rcx + 0x36], al
0000000140480c77 mov      al, byte ptr [rsp + 0x88]
0000000140480c7e mov      rcx, qword ptr [rsp + 0x80]
0000000140480c86 mov      byte ptr [rsp + 0x30], al
0000000140480c8a mov      byte ptr [rsp + 0x28], 1
0000000140480c8f mov      byte ptr [rsp + 0x20], 0
0000000140480c94 call     0x1403871f8
0000000140480c99 mov      rcx, qword ptr [rsp + 0x90]
0000000140480ca1 mov      r9d, 0x63
0000000140480ca7 movsx    eax, al
0000000140480caa xor      r8d, r8d
0000000140480cad cdq      
0000000140480cae mov      byte ptr [rsp + 0x30], r12b
0000000140480cb3 sub      eax, edx
0000000140480cb5 mov      byte ptr [rsp + 0x28], 1
0000000140480cba sar      eax, 1
0000000140480cbc mov      edx, r13d
0000000140480cbf mov      byte ptr [rcx + 0x37], al
0000000140480cc2 mov      rcx, qword ptr [rsp + 0x80]
0000000140480cca mov      byte ptr [rsp + 0x20], 1
0000000140480ccf call     0x1403871f8
0000000140480cd4 mov      rcx, qword ptr [rsp + 0x90]
0000000140480cdc mov      r9d, 0x63
0000000140480ce2 movsx    eax, al
0000000140480ce5 xor      r8d, r8d
0000000140480ce8 cdq      
0000000140480ce9 mov      byte ptr [rsp + 0x30], r15b
0000000140480cee sub      eax, edx
0000000140480cf0 mov      byte ptr [rsp + 0x28], 1
0000000140480cf5 sar      eax, 1
0000000140480cf7 mov      edx, r13d
0000000140480cfa mov      byte ptr [rcx + 0x40], al
0000000140480cfd mov      rcx, qword ptr [rsp + 0x80]
0000000140480d05 mov      byte ptr [rsp + 0x20], 1
0000000140480d0a call     0x1403871f8
0000000140480d0f mov      rcx, qword ptr [rsp + 0x90]
0000000140480d17 mov      r9d, 0x63
0000000140480d1d movsx    eax, al
0000000140480d20 xor      r8d, r8d
0000000140480d23 cdq      
0000000140480d24 mov      byte ptr [rsp + 0x30], r14b
0000000140480d29 sub      eax, edx
0000000140480d2b mov      byte ptr [rsp + 0x28], 1
0000000140480d30 sar      eax, 1
0000000140480d32 mov      edx, r13d
0000000140480d35 mov      byte ptr [rcx + 0x41], al
0000000140480d38 mov      rcx, qword ptr [rsp + 0x80]
0000000140480d40 mov      byte ptr [rsp + 0x20], 1
0000000140480d45 call     0x1403871f8
0000000140480d4a movsx    eax, al
0000000140480d4d cdq      
0000000140480d4e sub      eax, edx
0000000140480d50 mov      rcx, qword ptr [rsp + 0x90]
0000000140480d58 mov      r9d, 0x63
0000000140480d5e sar      eax, 1
0000000140480d60 xor      r8d, r8d
0000000140480d63 mov      byte ptr [rsp + 0x30], bpl
0000000140480d68 mov      edx, r13d
0000000140480d6b mov      byte ptr [rsp + 0x28], 1
0000000140480d70 mov      byte ptr [rcx + 0x42], al
0000000140480d73 mov      rcx, qword ptr [rsp + 0x80]
0000000140480d7b mov      byte ptr [rsp + 0x20], 1
0000000140480d80 call     0x1403871f8
0000000140480d85 mov      rcx, qword ptr [rsp + 0x90]
0000000140480d8d mov      r9d, 0x63
0000000140480d93 movsx    eax, al
0000000140480d96 xor      r8d, r8d
0000000140480d99 cdq      
0000000140480d9a mov      byte ptr [rsp + 0x30], sil
0000000140480d9f sub      eax, edx
0000000140480da1 mov      byte ptr [rsp + 0x28], 1
0000000140480da6 sar      eax, 1
0000000140480da8 mov      edx, r13d
0000000140480dab mov      byte ptr [rcx + 0x43], al
0000000140480dae mov      rcx, qword ptr [rsp + 0x80]
0000000140480db6 mov      byte ptr [rsp + 0x20], 1
0000000140480dbb call     0x1403871f8
0000000140480dc0 mov      rcx, qword ptr [rsp + 0x90]
0000000140480dc8 mov      r9d, 0x63
0000000140480dce movsx    eax, al
0000000140480dd1 xor      r8d, r8d
0000000140480dd4 cdq      
0000000140480dd5 mov      byte ptr [rsp + 0x30], dil
0000000140480dda sub      eax, edx
0000000140480ddc mov      byte ptr [rsp + 0x28], 1
0000000140480de1 sar      eax, 1
0000000140480de3 mov      edx, r13d
0000000140480de6 mov      byte ptr [rcx + 0x44], al
0000000140480de9 mov      rcx, qword ptr [rsp + 0x80]
0000000140480df1 mov      byte ptr [rsp + 0x20], 1
0000000140480df6 call     0x1403871f8
0000000140480dfb mov      rcx, qword ptr [rsp + 0x90]
0000000140480e03 mov      r9d, 0x63
0000000140480e09 movsx    eax, al
0000000140480e0c xor      r8d, r8d
0000000140480e0f cdq      
0000000140480e10 mov      byte ptr [rsp + 0x30], bl
0000000140480e14 sub      eax, edx
0000000140480e16 mov      byte ptr [rsp + 0x28], 1
0000000140480e1b sar      eax, 1
0000000140480e1d mov      edx, r13d
0000000140480e20 mov      byte ptr [rcx + 0x45], al
0000000140480e23 mov      rcx, qword ptr [rsp + 0x80]
0000000140480e2b mov      byte ptr [rsp + 0x20], 1
0000000140480e30 call     0x1403871f8
0000000140480e35 mov      rcx, qword ptr [rsp + 0x90]
0000000140480e3d mov      r9d, 0x63
0000000140480e43 movsx    eax, al
0000000140480e46 xor      r8d, r8d
0000000140480e49 cdq      
0000000140480e4a sub      eax, edx
0000000140480e4c mov      edx, r13d
0000000140480e4f sar      eax, 1
0000000140480e51 mov      byte ptr [rcx + 0x46], al
0000000140480e54 mov      al, byte ptr [rsp + 0x88]
0000000140480e5b mov      rcx, qword ptr [rsp + 0x80]
0000000140480e63 mov      byte ptr [rsp + 0x30], al
0000000140480e67 mov      byte ptr [rsp + 0x28], 1
0000000140480e6c mov      byte ptr [rsp + 0x20], 1
0000000140480e71 call     0x1403871f8
0000000140480e76 mov      rcx, qword ptr [rsp + 0x90]
0000000140480e7e mov      r9d, 0x93
0000000140480e84 movsx    eax, al
0000000140480e87 cdq      
0000000140480e88 mov      byte ptr [rsp + 0x30], r12b
0000000140480e8d sub      eax, edx
0000000140480e8f mov      byte ptr [rsp + 0x28], 1
0000000140480e94 sar      eax, 1
0000000140480e96 mov      edx, r13d
0000000140480e99 mov      byte ptr [rcx + 0x47], al
0000000140480e9c xor      r8d, r8d
0000000140480e9f mov      rcx, qword ptr [rsp + 0x80]
0000000140480ea7 mov      byte ptr [rsp + 0x20], 3
0000000140480eac call     0x1403871f8
0000000140480eb1 mov      rcx, qword ptr [rsp + 0x90]
0000000140480eb9 mov      r9d, 0x93
0000000140480ebf movsx    eax, al
0000000140480ec2 xor      r8d, r8d
0000000140480ec5 cdq      
0000000140480ec6 mov      byte ptr [rsp + 0x30], r15b
0000000140480ecb sub      eax, edx
0000000140480ecd mov      byte ptr [rsp + 0x28], 1
0000000140480ed2 sar      eax, 1
0000000140480ed4 mov      edx, r13d
0000000140480ed7 mov      byte ptr [rcx + 0x70], al
0000000140480eda mov      rcx, qword ptr [rsp + 0x80]
0000000140480ee2 mov      byte ptr [rsp + 0x20], 3
0000000140480ee7 call     0x1403871f8
0000000140480eec mov      rcx, qword ptr [rsp + 0x90]
0000000140480ef4 mov      r9d, 0x93
0000000140480efa movsx    eax, al
0000000140480efd xor      r8d, r8d
0000000140480f00 cdq      
0000000140480f01 mov      byte ptr [rsp + 0x30], r14b
0000000140480f06 sub      eax, edx
0000000140480f08 mov      byte ptr [rsp + 0x28], 1
0000000140480f0d sar      eax, 1
0000000140480f0f mov      edx, r13d
0000000140480f12 mov      byte ptr [rcx + 0x71], al
0000000140480f15 mov      rcx, qword ptr [rsp + 0x80]
0000000140480f1d mov      byte ptr [rsp + 0x20], 3
0000000140480f22 call     0x1403871f8
0000000140480f27 mov      rcx, qword ptr [rsp + 0x90]
0000000140480f2f mov      r9d, 0x93
0000000140480f35 movsx    eax, al
0000000140480f38 xor      r8d, r8d
0000000140480f3b cdq      
0000000140480f3c mov      byte ptr [rsp + 0x30], bpl
0000000140480f41 sub      eax, edx
0000000140480f43 mov      byte ptr [rsp + 0x28], 1
0000000140480f48 sar      eax, 1
0000000140480f4a mov      edx, r13d
0000000140480f4d mov      byte ptr [rcx + 0x72], al
0000000140480f50 mov      rcx, qword ptr [rsp + 0x80]
0000000140480f58 mov      byte ptr [rsp + 0x20], 3
0000000140480f5d call     0x1403871f8
0000000140480f62 mov      rcx, qword ptr [rsp + 0x90]
0000000140480f6a mov      r9d, 0x93
0000000140480f70 movsx    eax, al
0000000140480f73 xor      r8d, r8d
0000000140480f76 cdq      
0000000140480f77 mov      byte ptr [rsp + 0x30], sil
0000000140480f7c sub      eax, edx
0000000140480f7e mov      byte ptr [rsp + 0x28], 1
0000000140480f83 sar      eax, 1
0000000140480f85 mov      edx, r13d
0000000140480f88 mov      byte ptr [rcx + 0x73], al
0000000140480f8b mov      rcx, qword ptr [rsp + 0x80]
0000000140480f93 mov      byte ptr [rsp + 0x20], 3
0000000140480f98 call     0x1403871f8
0000000140480f9d mov      rcx, qword ptr [rsp + 0x90]
0000000140480fa5 mov      r9d, 0x93
0000000140480fab movsx    eax, al
0000000140480fae xor      r8d, r8d
0000000140480fb1 cdq      
0000000140480fb2 mov      byte ptr [rsp + 0x30], dil
0000000140480fb7 sub      eax, edx
0000000140480fb9 mov      byte ptr [rsp + 0x28], 1
0000000140480fbe sar      eax, 1
0000000140480fc0 mov      edx, r13d
0000000140480fc3 mov      byte ptr [rcx + 0x74], al
0000000140480fc6 mov      rcx, qword ptr [rsp + 0x80]
0000000140480fce mov      byte ptr [rsp + 0x20], 3
0000000140480fd3 call     0x1403871f8
0000000140480fd8 mov      rcx, qword ptr [rsp + 0x90]
0000000140480fe0 mov      r9d, 0x93
0000000140480fe6 movsx    eax, al
0000000140480fe9 cdq      
0000000140480fea mov      byte ptr [rsp + 0x30], bl
0000000140480fee sub      eax, edx
0000000140480ff0 mov      byte ptr [rsp + 0x28], 1
0000000140480ff5 sar      eax, 1
0000000140480ff7 mov      byte ptr [rcx + 0x75], al
0000000140480ffa mov      byte ptr [rsp + 0x20], 3
0000000140480fff mov      rcx, qword ptr [rsp + 0x80]
0000000140481007 xor      r8d, r8d
000000014048100a mov      edx, r13d
000000014048100d call     0x1403871f8
0000000140481012 mov      rcx, qword ptr [rsp + 0x90]
000000014048101a mov      r9d, 0x93
0000000140481020 movsx    eax, al
0000000140481023 xor      r8d, r8d
0000000140481026 cdq      
0000000140481027 sub      eax, edx
0000000140481029 mov      edx, r13d
000000014048102c sar      eax, 1
000000014048102e mov      byte ptr [rcx + 0x76], al
0000000140481031 mov      al, byte ptr [rsp + 0x88]
0000000140481038 mov      rcx, qword ptr [rsp + 0x80]
0000000140481040 mov      byte ptr [rsp + 0x30], al
0000000140481044 mov      byte ptr [rsp + 0x28], 1
0000000140481049 mov      byte ptr [rsp + 0x20], 3
000000014048104e call     0x1403871f8
0000000140481053 mov      rcx, qword ptr [rsp + 0x90]
000000014048105b mov      r9d, 0x63
0000000140481061 movsx    eax, al
0000000140481064 xor      r8d, r8d
0000000140481067 cdq      
0000000140481068 mov      byte ptr [rsp + 0x30], r12b
000000014048106d sub      eax, edx
000000014048106f mov      byte ptr [rsp + 0x28], 1
0000000140481074 sar      eax, 1
0000000140481076 mov      edx, r13d
0000000140481079 mov      byte ptr [rcx + 0x77], al
000000014048107c mov      rcx, qword ptr [rsp + 0x80]
0000000140481084 mov      byte ptr [rsp + 0x20], 2
0000000140481089 call     0x1403871f8
000000014048108e mov      rcx, qword ptr [rsp + 0x90]
0000000140481096 mov      r9d, 0x63
000000014048109c movsx    eax, al
000000014048109f xor      r8d, r8d
00000001404810a2 cdq      
00000001404810a3 mov      byte ptr [rsp + 0x30], r15b
00000001404810a8 sub      eax, edx
00000001404810aa mov      byte ptr [rsp + 0x28], 1
00000001404810af sar      eax, 1
00000001404810b1 mov      edx, r13d
00000001404810b4 mov      byte ptr [rcx + 0x50], al
00000001404810b7 mov      rcx, qword ptr [rsp + 0x80]
00000001404810bf mov      byte ptr [rsp + 0x20], 2
00000001404810c4 call     0x1403871f8
00000001404810c9 mov      rcx, qword ptr [rsp + 0x90]
00000001404810d1 mov      r9d, 0x63
00000001404810d7 movsx    eax, al
00000001404810da xor      r8d, r8d
00000001404810dd cdq      
00000001404810de mov      byte ptr [rsp + 0x30], r14b
00000001404810e3 sub      eax, edx
00000001404810e5 mov      byte ptr [rsp + 0x28], 1
00000001404810ea sar      eax, 1
00000001404810ec mov      edx, r13d
00000001404810ef mov      byte ptr [rcx + 0x51], al
00000001404810f2 mov      rcx, qword ptr [rsp + 0x80]
00000001404810fa mov      byte ptr [rsp + 0x20], 2
00000001404810ff call     0x1403871f8
0000000140481104 mov      rcx, qword ptr [rsp + 0x90]
000000014048110c mov      r9d, 0x63
0000000140481112 movsx    eax, al
0000000140481115 xor      r8d, r8d
0000000140481118 cdq      
0000000140481119 mov      byte ptr [rsp + 0x30], bpl
000000014048111e sub      eax, edx
0000000140481120 mov      byte ptr [rsp + 0x28], 1
0000000140481125 sar      eax, 1
0000000140481127 mov      edx, r13d
000000014048112a mov      byte ptr [rcx + 0x52], al
000000014048112d mov      rcx, qword ptr [rsp + 0x80]
0000000140481135 mov      byte ptr [rsp + 0x20], 2
000000014048113a call     0x1403871f8
000000014048113f mov      rcx, qword ptr [rsp + 0x90]
0000000140481147 movsx    eax, al
000000014048114a cdq      
000000014048114b sub      eax, edx
000000014048114d sar      eax, 1
000000014048114f mov      byte ptr [rcx + 0x53], al
0000000140481152 mov      rcx, qword ptr [rsp + 0x80]
000000014048115a mov      r9d, 0x63
0000000140481160 mov      byte ptr [rsp + 0x30], sil
0000000140481165 xor      r8d, r8d
0000000140481168 mov      byte ptr [rsp + 0x28], 1
000000014048116d mov      edx, r13d
0000000140481170 mov      byte ptr [rsp + 0x20], 2
0000000140481175 call     0x1403871f8
000000014048117a mov      rcx, qword ptr [rsp + 0x90]
0000000140481182 mov      r9d, 0x63
0000000140481188 movsx    eax, al
000000014048118b xor      r8d, r8d
000000014048118e cdq      
000000014048118f mov      byte ptr [rsp + 0x30], dil
0000000140481194 sub      eax, edx
0000000140481196 mov      byte ptr [rsp + 0x28], 1
000000014048119b sar      eax, 1
000000014048119d mov      edx, r13d
00000001404811a0 mov      byte ptr [rcx + 0x54], al
00000001404811a3 mov      rcx, qword ptr [rsp + 0x80]
00000001404811ab mov      byte ptr [rsp + 0x20], 2
00000001404811b0 call     0x1403871f8
00000001404811b5 mov      rcx, qword ptr [rsp + 0x90]
00000001404811bd mov      r9d, 0x63
00000001404811c3 movsx    eax, al
00000001404811c6 xor      r8d, r8d
00000001404811c9 cdq      
00000001404811ca mov      byte ptr [rsp + 0x30], bl
00000001404811ce sub      eax, edx
00000001404811d0 mov      byte ptr [rsp + 0x28], 1
00000001404811d5 sar      eax, 1
00000001404811d7 mov      edx, r13d
00000001404811da mov      byte ptr [rcx + 0x55], al
00000001404811dd mov      rcx, qword ptr [rsp + 0x80]
00000001404811e5 mov      byte ptr [rsp + 0x20], 2
00000001404811ea call     0x1403871f8
00000001404811ef mov      rcx, qword ptr [rsp + 0x90]
00000001404811f7 mov      r9d, 0x63
00000001404811fd movsx    eax, al
0000000140481200 xor      r8d, r8d
0000000140481203 cdq      
0000000140481204 sub      eax, edx
0000000140481206 mov      edx, r13d
0000000140481209 sar      eax, 1
000000014048120b mov      byte ptr [rcx + 0x56], al
000000014048120e mov      al, byte ptr [rsp + 0x88]
0000000140481215 mov      rcx, qword ptr [rsp + 0x80]
000000014048121d mov      byte ptr [rsp + 0x30], al
0000000140481221 mov      byte ptr [rsp + 0x28], 1
0000000140481226 mov      byte ptr [rsp + 0x20], 2
000000014048122b call     0x1403871f8
0000000140481230 mov      rcx, qword ptr [rsp + 0x90]
0000000140481238 mov      r9d, 0x93
000000014048123e movsx    eax, al
0000000140481241 xor      r8d, r8d
0000000140481244 cdq      
0000000140481245 mov      byte ptr [rsp + 0x30], r12b
000000014048124a mov      r12, qword ptr [rsp + 0x80]
0000000140481252 sub      eax, edx
0000000140481254 sar      eax, 1
0000000140481256 mov      edx, r13d
0000000140481259 mov      byte ptr [rcx + 0x57], al
000000014048125c mov      rcx, r12
000000014048125f mov      byte ptr [rsp + 0x28], 1
0000000140481264 mov      byte ptr [rsp + 0x20], 4
0000000140481269 call     0x1403871f8
000000014048126e mov      rcx, qword ptr [rsp + 0x90]
0000000140481276 mov      r9d, 0x93
000000014048127c movsx    eax, al
000000014048127f xor      r8d, r8d
0000000140481282 cdq      
0000000140481283 mov      byte ptr [rsp + 0x30], r15b
0000000140481288 sub      eax, edx
000000014048128a mov      byte ptr [rsp + 0x28], 1
000000014048128f sar      eax, 1
0000000140481291 mov      edx, r13d
0000000140481294 mov      byte ptr [rcx + 0x90], al
000000014048129a mov      rcx, r12
000000014048129d mov      byte ptr [rsp + 0x20], 4
00000001404812a2 call     0x1403871f8
00000001404812a7 movsx    eax, al
00000001404812aa mov      r15, qword ptr [rsp + 0x90]
00000001404812b2 cdq      
00000001404812b3 sub      eax, edx
00000001404812b5 mov      byte ptr [rsp + 0x30], r14b
00000001404812ba sar      eax, 1
00000001404812bc mov      r9d, 0x93
00000001404812c2 mov      byte ptr [rsp + 0x28], 1
00000001404812c7 xor      r8d, r8d
00000001404812ca mov      edx, r13d
00000001404812cd mov      byte ptr [r15 + 0x91], al
00000001404812d4 mov      rcx, r12
00000001404812d7 mov      byte ptr [rsp + 0x20], 4
00000001404812dc call     0x1403871f8
00000001404812e1 movsx    eax, al
00000001404812e4 mov      r14d, 0x93
00000001404812ea cdq      
00000001404812eb mov      byte ptr [rsp + 0x30], bpl
00000001404812f0 sub      eax, edx
00000001404812f2 mov      byte ptr [rsp + 0x28], 1
00000001404812f7 sar      eax, 1
00000001404812f9 mov      r9d, r14d
00000001404812fc xor      r8d, r8d
00000001404812ff mov      byte ptr [r15 + 0x92], al
0000000140481306 mov      edx, r13d
0000000140481309 mov      byte ptr [rsp + 0x20], 4
000000014048130e mov      rcx, r12
0000000140481311 call     0x1403871f8
0000000140481316 movsx    eax, al
0000000140481319 mov      r9d, r14d
000000014048131c cdq      
000000014048131d mov      byte ptr [rsp + 0x30], sil
0000000140481322 sub      eax, edx
0000000140481324 mov      byte ptr [rsp + 0x28], 1
0000000140481329 sar      eax, 1
000000014048132b xor      r8d, r8d
000000014048132e mov      edx, r13d
0000000140481331 mov      byte ptr [r15 + 0x93], al
0000000140481338 mov      rcx, r12
000000014048133b mov      byte ptr [rsp + 0x20], 4
0000000140481340 call     0x1403871f8
0000000140481345 movsx    eax, al
0000000140481348 mov      r9d, r14d
000000014048134b cdq      
000000014048134c mov      byte ptr [rsp + 0x30], dil
0000000140481351 sub      eax, edx
0000000140481353 mov      byte ptr [rsp + 0x28], 1
0000000140481358 sar      eax, 1
000000014048135a xor      r8d, r8d
000000014048135d mov      edx, r13d
0000000140481360 mov      byte ptr [r15 + 0x94], al
0000000140481367 mov      rcx, r12
000000014048136a mov      byte ptr [rsp + 0x20], 4
000000014048136f call     0x1403871f8
0000000140481374 movsx    eax, al
0000000140481377 mov      r9d, r14d
000000014048137a cdq      
000000014048137b mov      byte ptr [rsp + 0x30], bl
000000014048137f sub      eax, edx
0000000140481381 mov      byte ptr [rsp + 0x28], 1
0000000140481386 sar      eax, 1
0000000140481388 xor      r8d, r8d
000000014048138b mov      edx, r13d
000000014048138e mov      byte ptr [r15 + 0x95], al
0000000140481395 mov      rcx, r12
0000000140481398 mov      byte ptr [rsp + 0x20], 4
000000014048139d call     0x1403871f8
00000001404813a2 movsx    eax, al
00000001404813a5 mov      r9d, r14d
00000001404813a8 cdq      
00000001404813a9 xor      r8d, r8d
00000001404813ac sub      eax, edx
00000001404813ae mov      rcx, r12
00000001404813b1 sar      eax, 1
00000001404813b3 mov      edx, r13d
00000001404813b6 mov      byte ptr [r15 + 0x96], al
00000001404813bd mov      al, byte ptr [rsp + 0x88]
00000001404813c4 mov      byte ptr [rsp + 0x30], al
00000001404813c8 mov      byte ptr [rsp + 0x28], 1
00000001404813cd mov      byte ptr [rsp + 0x20], 4
00000001404813d2 call     0x1403871f8
00000001404813d7 movsx    eax, al
00000001404813da mov      rbx, qword ptr [rsp + 0x98]
00000001404813e2 cdq      
00000001404813e3 sub      eax, edx
00000001404813e5 sar      eax, 1
00000001404813e7 mov      byte ptr [r15 + 0x97], al
00000001404813ee add      rsp, 0x40
00000001404813f2 pop      r15
00000001404813f4 pop      r14
00000001404813f6 pop      r13
00000001404813f8 pop      r12
00000001404813fa pop      rdi
00000001404813fb pop      rsi
00000001404813fc pop      rbp
00000001404813fd ret      