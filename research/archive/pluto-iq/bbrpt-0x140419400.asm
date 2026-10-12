0000000140419400 mov      r11, rsp
0000000140419403 mov      qword ptr [r11 + 0x10], rbx
0000000140419407 mov      qword ptr [r11 + 0x18], rbp
000000014041940b mov      qword ptr [r11 + 0x20], rsi
000000014041940f push     rdi
0000000140419410 push     r14
0000000140419412 push     r15
0000000140419414 sub      rsp, 0x60
0000000140419418 mov      rax, qword ptr [rip + 0x50e041]
000000014041941f xor      rax, rsp
0000000140419422 mov      qword ptr [rsp + 0x50], rax
0000000140419427 xor      r14d, r14d
000000014041942a mov      rbx, rdx
000000014041942d mov      word ptr [r11 - 0x30], r14w
0000000140419432 mov      rdi, rcx
0000000140419435 test     rdx, rdx
0000000140419438 jne      0x140419442
000000014041943a lea      eax, [rdx + 3]
000000014041943d jmp      0x14041960b
0000000140419442 mov      rcx, qword ptr [rip + 0x506bb7]
0000000140419449 lea      r15, [rip + 0x506bb0]
0000000140419450 mov      ebp, 8
0000000140419455 cmp      rcx, r15
0000000140419458 je       0x1404194ff
000000014041945e cmp      byte ptr [rcx + 0x169], 1
0000000140419465 jb       0x1404194b4
0000000140419467 mov      eax, dword ptr [rcx + 0x16c]
000000014041946d test     bpl, al
0000000140419470 je       0x1404194b4
0000000140419472 mov      edx, dword ptr [rdx]
0000000140419474 mov      r9d, edx
0000000140419477 mov      eax, dword ptr [rbx + 4]
000000014041947a mov      rcx, qword ptr [rcx + 0x158]
0000000140419481 movzx    r8d, al
0000000140419485 mov      dword ptr [rsp + 0x30], r8d
000000014041948a lea      r8, [rip + 0x2bd127]
0000000140419491 shr      r9d, 0x10
0000000140419495 and      r9d, 3
0000000140419499 movzx    eax, dx
000000014041949c mov      dword ptr [rsp + 0x28], r9d
00000001404194a1 lea      edx, [rbp + 0xd]
00000001404194a4 lea      r9, [rip + 0x2387d5]
00000001404194ab mov      dword ptr [rsp + 0x20], eax
00000001404194af call     0x14001c670
00000001404194b4 mov      rcx, qword ptr [rip + 0x506b45]
00000001404194bb cmp      rcx, r15
00000001404194be je       0x1404194ff
00000001404194c0 cmp      byte ptr [rcx + 0x169], 1
00000001404194c7 jb       0x1404194ff
00000001404194c9 mov      eax, dword ptr [rcx + 0x16c]
00000001404194cf test     bpl, al
00000001404194d2 je       0x1404194ff
00000001404194d4 mov      eax, dword ptr [rbx]
00000001404194d6 lea      r9, [rip + 0x2387a3]
00000001404194dd mov      rcx, qword ptr [rcx + 0x158]
00000001404194e4 lea      r8, [rip + 0x2bd0cd]
00000001404194eb shr      eax, 0x12
00000001404194ee mov      edx, 0x16
00000001404194f3 and      eax, 1
00000001404194f6 mov      dword ptr [rsp + 0x20], eax
00000001404194fa call     0x1400088d8
00000001404194ff mov      rax, qword ptr [rdi + 0x18]
0000000140419503 mov      edx, ebp
0000000140419505 mov      rcx, qword ptr [rdi + 8]
0000000140419509 mov      dword ptr [rsp + 0x44], 4
0000000140419511 mov      dword ptr [rsp + 0x40], 0x2010008
0000000140419519 mov      rax, qword ptr [rax + 0x98]
0000000140419520 call     qword ptr [rip + 0x26add2]
0000000140419526 mov      rsi, rax
0000000140419529 test     rax, rax
000000014041952c jne      0x140419575
000000014041952e mov      rcx, qword ptr [rip + 0x506acb]
0000000140419535 cmp      rcx, r15
0000000140419538 je       0x14041956b
000000014041953a cmp      byte ptr [rcx + 0x169], 2
0000000140419541 jb       0x14041956b
0000000140419543 mov      eax, dword ptr [rcx + 0x16c]
0000000140419549 test     bpl, al
000000014041954c je       0x14041956b
000000014041954e mov      rcx, qword ptr [rcx + 0x158]
0000000140419555 lea      edx, [rsi + 0x17]
0000000140419558 lea      r9, [rip + 0x238721]
000000014041955f lea      r8, [rip + 0x2bd052]
0000000140419566 call     0x140008874
000000014041956b mov      eax, 5
0000000140419570 jmp      0x14041960b
0000000140419575 mov      eax, dword ptr [rbx]
0000000140419577 lea      rdx, [rsp + 0x40]
000000014041957c mov      ecx, eax
000000014041957e mov      r8, rsi
0000000140419581 shr      ecx, 8
0000000140419584 and      ecx, 0xf00
000000014041958a movzx    eax, al
000000014041958d or       ecx, eax
000000014041958f mov      dword ptr [rsi], ecx
0000000140419591 mov      eax, dword ptr [rbx + 4]
0000000140419594 movzx    ecx, ax
0000000140419597 mov      dword ptr [rsi + 4], ecx
000000014041959a mov      rcx, rdi
000000014041959d call     0x14041621c
00000001404195a2 mov      ebx, eax
00000001404195a4 test     eax, eax
00000001404195a6 je       0x1404195eb
00000001404195a8 mov      rcx, qword ptr [rip + 0x506a51]
00000001404195af cmp      rcx, r15
00000001404195b2 je       0x1404195eb
00000001404195b4 cmp      byte ptr [rcx + 0x169], 2
00000001404195bb jb       0x1404195eb
00000001404195bd mov      edx, dword ptr [rcx + 0x16c]
00000001404195c3 test     bpl, dl
00000001404195c6 je       0x1404195eb
00000001404195c8 mov      rcx, qword ptr [rcx + 0x158]
00000001404195cf lea      r9, [rip + 0x2386aa]
00000001404195d6 mov      edx, 0x18
00000001404195db mov      dword ptr [rsp + 0x20], eax
00000001404195df lea      r8, [rip + 0x2bcfd2]
00000001404195e6 call     0x1400088d8
00000001404195eb mov      rax, qword ptr [rdi + 0x18]
00000001404195ef mov      rdx, rsi
00000001404195f2 movzx    r8d, word ptr [rsp + 0x40]
00000001404195f8 mov      rcx, qword ptr [rdi + 8]
00000001404195fc mov      rax, qword ptr [rax + 0x90]
0000000140419603 call     qword ptr [rip + 0x26acef]
0000000140419609 mov      eax, ebx
000000014041960b mov      rcx, qword ptr [rsp + 0x50]
0000000140419610 xor      rcx, rsp
0000000140419613 call     0x1405f45b0
0000000140419618 lea      r11, [rsp + 0x60]
000000014041961d mov      rbx, qword ptr [r11 + 0x28]
0000000140419621 mov      rbp, qword ptr [r11 + 0x30]
0000000140419625 mov      rsi, qword ptr [r11 + 0x38]
0000000140419629 mov      rsp, r11
000000014041962c pop      r15
000000014041962e pop      r14
0000000140419630 pop      rdi
0000000140419631 ret      