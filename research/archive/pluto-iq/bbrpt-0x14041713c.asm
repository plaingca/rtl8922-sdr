000000014041713c mov      qword ptr [rsp + 0x10], rbx
0000000140417141 mov      qword ptr [rsp + 8], rcx
0000000140417146 push     rbp
0000000140417147 push     rsi
0000000140417148 push     rdi
0000000140417149 push     r12
000000014041714b push     r13
000000014041714d push     r14
000000014041714f push     r15
0000000140417151 sub      rsp, 0x70
0000000140417155 mov      rax, qword ptr [rcx + 0x18]
0000000140417159 mov      r14, r8
000000014041715c mov      rbx, qword ptr [rsp + 0xd0]
0000000140417164 mov      r13d, edx
0000000140417167 mov      rcx, qword ptr [rcx + 8]
000000014041716b mov      r8b, 0xea
000000014041716e mov      edi, r9d
0000000140417171 mov      rdx, rbx
0000000140417174 mov      rax, qword ptr [rax + 0xa8]
000000014041717b mov      r9d, 0xd0
0000000140417181 call     qword ptr [rip + 0x26d171]
0000000140417187 and      dword ptr [rbx + 0xcc], 0
000000014041718e mov      eax, edi
0000000140417190 shr      eax, 2
0000000140417193 test     eax, eax
0000000140417195 je       0x1404171a6
0000000140417197 mov      rcx, r14
000000014041719a mov      edx, eax
000000014041719c lea      rcx, [rcx + 4]
00000001404171a0 sub      rdx, 1
00000001404171a4 jne      0x14041719c
00000001404171a6 lea      rcx, [r14 + rdi]
00000001404171aa mov      qword ptr [rsp + 0x68], rcx
00000001404171af cmp      r14, rcx
00000001404171b2 jae      0x1404174f0
00000001404171b8 lea      rdx, [rip + 0x508e41]
00000001404171bf mov      ebp, dword ptr [r14]
00000001404171c2 mov      r12b, byte ptr [r14]
00000001404171c5 shr      ebp, 8
00000001404171c8 and      r12b, 0x1f
00000001404171cc and      bpl, 0xf
00000001404171d0 movzx    eax, bpl
00000001404171d4 shl      rax, 2
00000001404171d8 mov      qword ptr [rsp + 0x60], rax
00000001404171dd add      rax, r14
00000001404171e0 mov      dword ptr [rsp + 0xc8], ebp
00000001404171e7 movzx    esi, bpl
00000001404171eb cmp      rax, rcx
00000001404171ee jb       0x14041722a
00000001404171f0 mov      rcx, qword ptr [rip + 0x508e09]
00000001404171f7 cmp      rcx, rdx
00000001404171fa je       0x14041722a
00000001404171fc cmp      byte ptr [rcx + 0x169], 2
0000000140417203 jb       0x14041722a
0000000140417205 mov      eax, dword ptr [rcx + 0x16c]
000000014041720b test     al, 8
000000014041720d je       0x14041722a
000000014041720f mov      rcx, qword ptr [rcx + 0x158]
0000000140417216 lea      r8, [rip + 0x2bf243]
000000014041721d mov      edx, 0x94
0000000140417222 mov      r9d, r13d
0000000140417225 call     0x140001bb0
000000014041722a movzx    edi, r12b
000000014041722e cmp      edi, 7
0000000140417231 ja       0x1404172a4
0000000140417233 je       0x14041729e
0000000140417235 mov      ecx, edi
0000000140417237 test     r12b, r12b
000000014041723a je       0x140417296
000000014041723c sub      ecx, 1
000000014041723f je       0x14041728a
0000000140417241 sub      ecx, 1
0000000140417244 je       0x14041727e
0000000140417246 sub      ecx, 1
0000000140417249 je       0x140417272
000000014041724b sub      ecx, 1
000000014041724e je       0x14041726c
0000000140417250 sub      ecx, 1
0000000140417253 je       0x140417260
0000000140417255 cmp      ecx, 1
0000000140417258 jne      0x1404172c9
000000014041725a lea      rdx, [rbx + 0x64]
000000014041725e jmp      0x140417264
0000000140417260 lea      rdx, [rbx + 0x4c]
0000000140417264 mov      r15b, 6
0000000140417267 jmp      0x140417316
000000014041726c lea      rdx, [rbx + 0x40]
0000000140417270 jmp      0x14041728e
0000000140417272 lea      rdx, [rbx + 0x3c]
0000000140417276 mov      r15b, 1
0000000140417279 jmp      0x140417316
000000014041727e lea      rdx, [rbx + 0x2c]
0000000140417282 mov      r15b, 4
0000000140417285 jmp      0x140417316
000000014041728a lea      rdx, [rbx + 0x20]
000000014041728e mov      r15b, 3
0000000140417291 jmp      0x140417316
0000000140417296 mov      rdx, rbx
0000000140417299 mov      r15b, 8
000000014041729c jmp      0x140417316
000000014041729e lea      rdx, [rbx + 0x7c]
00000001404172a2 jmp      0x140417264
00000001404172a4 mov      ecx, edi
00000001404172a6 sub      ecx, 8
00000001404172a9 je       0x14041730c
00000001404172ab sub      ecx, 1
00000001404172ae je       0x140417303
00000001404172b0 sub      ecx, 1
00000001404172b3 je       0x1404172f7
00000001404172b5 sub      ecx, 1
00000001404172b8 je       0x1404172eb
00000001404172ba sub      ecx, 1
00000001404172bd je       0x1404172e2
00000001404172bf sub      ecx, 1
00000001404172c2 je       0x1404172d9
00000001404172c4 cmp      ecx, 1
00000001404172c7 je       0x1404172d0
00000001404172c9 xor      edx, edx
00000001404172cb xor      r15b, r15b
00000001404172ce jmp      0x140417316
00000001404172d0 lea      rdx, [rbx + 0xc8]
00000001404172d7 jmp      0x140417276
00000001404172d9 lea      rdx, [rbx + 0xc4]
00000001404172e0 jmp      0x140417276
00000001404172e2 lea      rdx, [rbx + 0xbc]
00000001404172e9 jmp      0x140417313
00000001404172eb lea      rdx, [rbx + 0xa8]
00000001404172f2 mov      r15b, 5
00000001404172f5 jmp      0x140417316
00000001404172f7 lea      rdx, [rbx + 0xa4]
00000001404172fe jmp      0x140417276
0000000140417303 lea      rdx, [rbx + 0x9c]
000000014041730a jmp      0x140417313
000000014041730c lea      rdx, [rbx + 0x94]
0000000140417313 mov      r15b, 2
0000000140417316 add      r14, 4
000000014041731a mov      qword ptr [rsp + 0xc0], r14
0000000140417322 test     rdx, rdx
0000000140417325 je       0x140417368
0000000140417327 mov      r10, qword ptr [rsp + 0xb0]
000000014041732f mov      r9d, esi
0000000140417332 movzx    eax, r15b
0000000140417336 cmp      r15b, bpl
0000000140417339 mov      r8, r14
000000014041733c cmovb    r9d, eax
0000000140417340 mov      rcx, qword ptr [r10 + 0x18]
0000000140417344 shl      r9d, 2
0000000140417348 mov      rax, qword ptr [rcx + 0xa0]
000000014041734f mov      rcx, qword ptr [r10 + 8]
0000000140417353 call     qword ptr [rip + 0x26cf9f]
0000000140417359 mov      eax, dword ptr [rbx + 0xcc]
000000014041735f bts      eax, edi
0000000140417362 mov      dword ptr [rbx + 0xcc], eax
0000000140417368 cmp      edi, 7
000000014041736b ja       0x140417951
0000000140417371 je       0x140417867
0000000140417377 mov      ecx, edi
0000000140417379 test     r12b, r12b
000000014041737c je       0x14041777f
0000000140417382 sub      ecx, 1
0000000140417385 je       0x140417732
000000014041738b sub      ecx, 1
000000014041738e je       0x140417665
0000000140417394 sub      ecx, 1
0000000140417397 je       0x1404175f8
000000014041739d sub      ecx, 1
00000001404173a0 je       0x14041757d
00000001404173a6 sub      ecx, 1
00000001404173a9 je       0x140417508
00000001404173af cmp      ecx, 1
00000001404173b2 jne      0x14041798e
00000001404173b8 mov      rcx, qword ptr [rip + 0x508c41]
00000001404173bf lea      rdi, [rip + 0x508c3a]
00000001404173c6 cmp      rcx, rdi
00000001404173c9 je       0x140417437
00000001404173cb cmp      byte ptr [rcx + 0x169], 1
00000001404173d2 jb       0x140417437
00000001404173d4 mov      eax, dword ptr [rcx + 0x16c]
00000001404173da test     al, 8
00000001404173dc je       0x140417437
00000001404173de mov      eax, dword ptr [rbx + 0x78]
00000001404173e1 lea      rsi, [rip + 0x526438]
00000001404173e8 mov      dword ptr [rsp + 0x50], eax
00000001404173ec mov      edx, 0x9d
00000001404173f1 mov      eax, dword ptr [rbx + 0x74]
00000001404173f4 mov      dword ptr [rsp + 0x48], eax
00000001404173f8 mov      eax, dword ptr [rbx + 0x70]
00000001404173fb mov      dword ptr [rsp + 0x40], eax
00000001404173ff mov      eax, dword ptr [rbx + 0x6c]
0000000140417402 mov      dword ptr [rsp + 0x38], eax
0000000140417406 mov      eax, dword ptr [rbx + 0x68]
0000000140417409 mov      dword ptr [rsp + 0x30], eax
000000014041740d mov      eax, dword ptr [rbx + 0x64]
0000000140417410 movzx    r8d, r12b
0000000140417414 mov      dword ptr [rsp + 0x28], eax
0000000140417418 mov      rax, qword ptr [rsi + r8*8]
000000014041741c mov      rcx, qword ptr [rcx + 0x158]
0000000140417423 lea      r8, [rip + 0x2bf036]
000000014041742a mov      r9d, r13d
000000014041742d mov      qword ptr [rsp + 0x20], rax
0000000140417432 call     0x140413104
0000000140417437 lea      rdx, [rip + 0x508bc2]
000000014041743e cmp      r12b, 0xf
0000000140417442 jae      0x1404174dd
0000000140417448 cmp      bpl, r15b
000000014041744b jb       0x1404174dd
0000000140417451 movzx    ebp, bpl
0000000140417455 mov      edi, 0
000000014041745a movzx    eax, r15b
000000014041745e sub      ebp, eax
0000000140417460 je       0x1404174dd
0000000140417462 xor      esi, esi
0000000140417464 lea      rbx, [rip + 0x5263b5]
000000014041746b mov      rcx, qword ptr [rip + 0x508b8e]
0000000140417472 cmp      rcx, rdx
0000000140417475 je       0x1404174cc
0000000140417477 cmp      byte ptr [rcx + 0x169], 1
000000014041747e jb       0x1404174cc
0000000140417480 mov      eax, dword ptr [rcx + 0x16c]
0000000140417486 test     al, 8
0000000140417488 je       0x1404174cc
000000014041748a mov      rcx, qword ptr [rcx + 0x158]
0000000140417491 mov      edx, 0xaa
0000000140417496 movzx    r8d, r12b
000000014041749a mov      r9d, r13d
000000014041749d movzx    eax, r15b
00000001404174a1 add      rax, rsi
00000001404174a4 mov      eax, dword ptr [r14 + rax*4]
00000001404174a8 mov      dword ptr [rsp + 0x30], eax
00000001404174ac mov      rax, qword ptr [rbx + r8*8]
00000001404174b0 lea      r8, [rip + 0x2befa9]
00000001404174b7 mov      dword ptr [rsp + 0x28], edi
00000001404174bb mov      qword ptr [rsp + 0x20], rax
00000001404174c0 call     0x1400f0d70
00000001404174c5 lea      rdx, [rip + 0x508b34]
00000001404174cc inc      edi
00000001404174ce inc      rsi
00000001404174d1 cmp      edi, ebp
00000001404174d3 jb       0x14041746b
00000001404174d5 mov      rbx, qword ptr [rsp + 0xd0]
00000001404174dd add      r14, qword ptr [rsp + 0x60]
00000001404174e2 mov      rcx, qword ptr [rsp + 0x68]
00000001404174e7 cmp      r14, rcx
00000001404174ea jb       0x1404171bf
00000001404174f0 mov      rbx, qword ptr [rsp + 0xb8]
00000001404174f8 add      rsp, 0x70
00000001404174fc pop      r15
00000001404174fe pop      r14
0000000140417500 pop      r13
0000000140417502 pop      r12
0000000140417504 pop      rdi
0000000140417505 pop      rsi
0000000140417506 pop      rbp
0000000140417507 ret      
0000000140417508 mov      rcx, qword ptr [rip + 0x508af1]
000000014041750f lea      rdx, [rip + 0x508aea]
0000000140417516 cmp      rcx, rdx
0000000140417519 je       0x14041743e
000000014041751f cmp      byte ptr [rcx + 0x169], 1
0000000140417526 jb       0x14041743e
000000014041752c mov      eax, dword ptr [rcx + 0x16c]
0000000140417532 test     al, 8
0000000140417534 je       0x14041743e
000000014041753a mov      eax, dword ptr [rbx + 0x60]
000000014041753d mov      edx, 0x9c
0000000140417542 mov      dword ptr [rsp + 0x50], eax
0000000140417546 mov      eax, dword ptr [rbx + 0x5c]
0000000140417549 mov      dword ptr [rsp + 0x48], eax
000000014041754d mov      eax, dword ptr [rbx + 0x58]
0000000140417550 mov      dword ptr [rsp + 0x40], eax
0000000140417554 mov      eax, dword ptr [rbx + 0x54]
0000000140417557 mov      dword ptr [rsp + 0x38], eax
000000014041755b mov      eax, dword ptr [rbx + 0x50]
000000014041755e mov      dword ptr [rsp + 0x30], eax
0000000140417562 mov      eax, dword ptr [rbx + 0x4c]
0000000140417565 mov      dword ptr [rsp + 0x28], eax
0000000140417569 lea      rax, [rip + 0x5262b0]
0000000140417570 movzx    r8d, r12b
0000000140417574 mov      rax, qword ptr [rax + r8*8]
0000000140417578 jmp      0x14041741c
000000014041757d mov      rcx, qword ptr [rip + 0x508a7c]
0000000140417584 lea      rdx, [rip + 0x508a75]
000000014041758b cmp      rcx, rdx
000000014041758e je       0x14041743e
0000000140417594 cmp      byte ptr [rcx + 0x169], 1
000000014041759b jb       0x14041743e
00000001404175a1 mov      eax, dword ptr [rcx + 0x16c]
00000001404175a7 test     al, 8
00000001404175a9 je       0x14041743e
00000001404175af mov      eax, dword ptr [rbx + 0x48]
00000001404175b2 mov      edx, 0x9b
00000001404175b7 mov      dword ptr [rsp + 0x38], eax
00000001404175bb mov      eax, dword ptr [rbx + 0x44]
00000001404175be mov      dword ptr [rsp + 0x30], eax
00000001404175c2 mov      eax, dword ptr [rbx + 0x40]
00000001404175c5 mov      dword ptr [rsp + 0x28], eax
00000001404175c9 lea      rax, [rip + 0x526250]
00000001404175d0 movzx    r8d, r12b
00000001404175d4 mov      rax, qword ptr [rax + r8*8]
00000001404175d8 mov      rcx, qword ptr [rcx + 0x158]
00000001404175df lea      r8, [rip + 0x2bee7a]
00000001404175e6 mov      r9d, r13d
00000001404175e9 mov      qword ptr [rsp + 0x20], rax
00000001404175ee call     0x14002aeb4
00000001404175f3 jmp      0x140417437
00000001404175f8 mov      rcx, qword ptr [rip + 0x508a01]
00000001404175ff lea      rdx, [rip + 0x5089fa]
0000000140417606 cmp      rcx, rdx
0000000140417609 je       0x14041743e
000000014041760f cmp      byte ptr [rcx + 0x169], 1
0000000140417616 jb       0x14041743e
000000014041761c mov      eax, dword ptr [rcx + 0x16c]
0000000140417622 test     al, 8
0000000140417624 je       0x14041743e
000000014041762a mov      eax, dword ptr [rbx + 0x3c]
000000014041762d mov      edx, 0x9a
0000000140417632 mov      rcx, qword ptr [rcx + 0x158]
0000000140417639 mov      r9d, r13d
000000014041763c mov      dword ptr [rsp + 0x28], eax
0000000140417640 lea      rax, [rip + 0x5261d9]
0000000140417647 movzx    r8d, r12b
000000014041764b mov      rax, qword ptr [rax + r8*8]
000000014041764f lea      r8, [rip + 0x2bee0a]
0000000140417656 mov      qword ptr [rsp + 0x20], rax
000000014041765b call     0x1400730bc
0000000140417660 jmp      0x140417437
0000000140417665 mov      rcx, qword ptr [rip + 0x508994]
000000014041766c lea      rdi, [rip + 0x50898d]
0000000140417673 cmp      rcx, rdi
0000000140417676 je       0x140417437
000000014041767c cmp      byte ptr [rcx + 0x169], 1
0000000140417683 lea      rsi, [rip + 0x526196]
000000014041768a jb       0x1404176cc
000000014041768c mov      eax, dword ptr [rcx + 0x16c]
0000000140417692 test     al, 8
0000000140417694 je       0x1404176cc
0000000140417696 mov      eax, dword ptr [rbx + 0x30]
0000000140417699 mov      edx, 0x98
000000014041769e mov      rcx, qword ptr [rcx + 0x158]
00000001404176a5 mov      r9d, r13d
00000001404176a8 mov      dword ptr [rsp + 0x30], eax
00000001404176ac mov      eax, dword ptr [rbx + 0x2c]
00000001404176af mov      dword ptr [rsp + 0x28], eax
00000001404176b3 movzx    r8d, r12b
00000001404176b7 mov      rax, qword ptr [rsi + r8*8]
00000001404176bb lea      r8, [rip + 0x2bed9e]
00000001404176c2 mov      qword ptr [rsp + 0x20], rax
00000001404176c7 call     0x1400f0d70
00000001404176cc mov      rcx, qword ptr [rip + 0x50892d]
00000001404176d3 cmp      rcx, rdi
00000001404176d6 je       0x140417437
00000001404176dc cmp      byte ptr [rcx + 0x169], 1
00000001404176e3 jb       0x140417437
00000001404176e9 mov      eax, dword ptr [rcx + 0x16c]
00000001404176ef test     al, 8
00000001404176f1 je       0x140417437
00000001404176f7 mov      eax, dword ptr [rbx + 0x38]
00000001404176fa mov      edx, 0x99
00000001404176ff mov      dword ptr [rsp + 0x30], eax
0000000140417703 mov      eax, dword ptr [rbx + 0x34]
0000000140417706 movzx    r8d, r12b
000000014041770a mov      dword ptr [rsp + 0x28], eax
000000014041770e mov      rax, qword ptr [rsi + r8*8]
0000000140417712 mov      rcx, qword ptr [rcx + 0x158]
0000000140417719 lea      r8, [rip + 0x2bed40]
0000000140417720 mov      r9d, r13d
0000000140417723 mov      qword ptr [rsp + 0x20], rax
0000000140417728 call     0x1400f0d70
000000014041772d jmp      0x140417437
0000000140417732 mov      rcx, qword ptr [rip + 0x5088c7]
0000000140417739 lea      rdx, [rip + 0x5088c0]
0000000140417740 cmp      rcx, rdx
0000000140417743 je       0x14041743e
0000000140417749 cmp      byte ptr [rcx + 0x169], 1
0000000140417750 jb       0x14041743e
0000000140417756 mov      eax, dword ptr [rcx + 0x16c]
000000014041775c test     al, 8
000000014041775e je       0x14041743e
0000000140417764 mov      eax, dword ptr [rbx + 0x28]
0000000140417767 mov      edx, 0x97
000000014041776c mov      dword ptr [rsp + 0x38], eax
0000000140417770 mov      eax, dword ptr [rbx + 0x24]
0000000140417773 mov      dword ptr [rsp + 0x30], eax
0000000140417777 mov      eax, dword ptr [rbx + 0x20]
000000014041777a jmp      0x1404175c5
000000014041777f mov      rcx, qword ptr [rip + 0x50887a]
0000000140417786 lea      rdi, [rip + 0x508873]
000000014041778d cmp      rcx, rdi
0000000140417790 je       0x140417437
0000000140417796 cmp      byte ptr [rcx + 0x169], 1
000000014041779d lea      rsi, [rip + 0x52607c]
00000001404177a4 jb       0x1404177f3
00000001404177a6 mov      eax, dword ptr [rcx + 0x16c]
00000001404177ac test     al, 8
00000001404177ae je       0x1404177f3
00000001404177b0 mov      eax, dword ptr [rbx + 0xc]
00000001404177b3 mov      edx, 0x95
00000001404177b8 mov      rcx, qword ptr [rcx + 0x158]
00000001404177bf mov      r9d, r13d
00000001404177c2 mov      dword ptr [rsp + 0x40], eax
00000001404177c6 mov      eax, dword ptr [rbx + 8]
00000001404177c9 mov      dword ptr [rsp + 0x38], eax
00000001404177cd mov      eax, dword ptr [rbx + 4]
00000001404177d0 mov      dword ptr [rsp + 0x30], eax
00000001404177d4 mov      eax, dword ptr [rbx]
00000001404177d6 mov      dword ptr [rsp + 0x28], eax
00000001404177da movzx    r8d, r12b
00000001404177de mov      rax, qword ptr [rsi + r8*8]
00000001404177e2 lea      r8, [rip + 0x2bec77]
00000001404177e9 mov      qword ptr [rsp + 0x20], rax
00000001404177ee call     0x14041302c
00000001404177f3 mov      rcx, qword ptr [rip + 0x508806]
00000001404177fa cmp      rcx, rdi
00000001404177fd je       0x140417437
0000000140417803 cmp      byte ptr [rcx + 0x169], 1
000000014041780a jb       0x140417437
0000000140417810 mov      eax, dword ptr [rcx + 0x16c]
0000000140417816 test     al, 8
0000000140417818 je       0x140417437
000000014041781e mov      eax, dword ptr [rbx + 0x1c]
0000000140417821 mov      edx, 0x96
0000000140417826 mov      dword ptr [rsp + 0x40], eax
000000014041782a mov      eax, dword ptr [rbx + 0x18]
000000014041782d mov      dword ptr [rsp + 0x38], eax
0000000140417831 mov      eax, dword ptr [rbx + 0x14]
0000000140417834 mov      dword ptr [rsp + 0x30], eax
0000000140417838 mov      eax, dword ptr [rbx + 0x10]
000000014041783b movzx    r8d, r12b
000000014041783f mov      dword ptr [rsp + 0x28], eax
0000000140417843 mov      rax, qword ptr [rsi + r8*8]
0000000140417847 mov      rcx, qword ptr [rcx + 0x158]
000000014041784e lea      r8, [rip + 0x2bec0b]
0000000140417855 mov      r9d, r13d
0000000140417858 mov      qword ptr [rsp + 0x20], rax
000000014041785d call     0x14041302c
0000000140417862 jmp      0x140417437
0000000140417867 mov      rcx, qword ptr [rip + 0x508792]
000000014041786e lea      rdi, [rip + 0x50878b]
0000000140417875 cmp      rcx, rdi
0000000140417878 je       0x140417437
000000014041787e cmp      byte ptr [rcx + 0x169], 1
0000000140417885 lea      rsi, [rip + 0x525f94]
000000014041788c jb       0x1404178c7
000000014041788e mov      eax, dword ptr [rcx + 0x16c]
0000000140417894 test     al, 8
0000000140417896 je       0x1404178c7
0000000140417898 mov      eax, dword ptr [rbx + 0x7c]
000000014041789b mov      edx, 0x9e
00000001404178a0 mov      rcx, qword ptr [rcx + 0x158]
00000001404178a7 mov      r9d, r13d
00000001404178aa mov      dword ptr [rsp + 0x28], eax
00000001404178ae movzx    r8d, r12b
00000001404178b2 mov      rax, qword ptr [rsi + r8*8]
00000001404178b6 lea      r8, [rip + 0x2beba3]
00000001404178bd mov      qword ptr [rsp + 0x20], rax
00000001404178c2 call     0x1400730bc
00000001404178c7 mov      rcx, qword ptr [rip + 0x508732]
00000001404178ce cmp      rcx, rdi
00000001404178d1 je       0x140417437
00000001404178d7 cmp      byte ptr [rcx + 0x169], 1
00000001404178de jb       0x140417437
00000001404178e4 mov      eax, dword ptr [rcx + 0x16c]
00000001404178ea test     al, 8
00000001404178ec je       0x140417437
00000001404178f2 mov      eax, dword ptr [rbx + 0x90]
00000001404178f8 mov      edx, 0x9f
00000001404178fd mov      rcx, qword ptr [rcx + 0x158]
0000000140417904 mov      r9d, r13d
0000000140417907 mov      dword ptr [rsp + 0x48], eax
000000014041790b mov      eax, dword ptr [rbx + 0x8c]
0000000140417911 mov      dword ptr [rsp + 0x40], eax
0000000140417915 mov      eax, dword ptr [rbx + 0x88]
000000014041791b mov      dword ptr [rsp + 0x38], eax
000000014041791f mov      eax, dword ptr [rbx + 0x84]
0000000140417925 mov      dword ptr [rsp + 0x30], eax
0000000140417929 mov      eax, dword ptr [rbx + 0x80]
000000014041792f mov      dword ptr [rsp + 0x28], eax
0000000140417933 movzx    r8d, r12b
0000000140417937 mov      rax, qword ptr [rsi + r8*8]
000000014041793b lea      r8, [rip + 0x2beb1e]
0000000140417942 mov      qword ptr [rsp + 0x20], rax
0000000140417947 call     0x140314458
000000014041794c jmp      0x140417437
0000000140417951 mov      ecx, edi
0000000140417953 sub      ecx, 8
0000000140417956 je       0x140417d6f
000000014041795c sub      ecx, 1
000000014041795f je       0x140417d10
0000000140417965 sub      ecx, 1
0000000140417968 je       0x140417cce
000000014041796e sub      ecx, 1
0000000140417971 je       0x140417bd0
0000000140417977 sub      ecx, 1
000000014041797a je       0x140417b02
0000000140417980 sub      ecx, 1
0000000140417983 je       0x140417a81
0000000140417989 cmp      ecx, 1
000000014041798c je       0x140417a0d
000000014041798e movzx    ebp, bpl
0000000140417992 lea      rdx, [rip + 0x508667]
0000000140417999 xor      esi, esi
000000014041799b test     ebp, ebp
000000014041799d je       0x140417a01
000000014041799f mov      rcx, qword ptr [rip + 0x50865a]
00000001404179a6 cmp      rcx, rdx
00000001404179a9 je       0x1404179ef
00000001404179ab cmp      byte ptr [rcx + 0x169], 1
00000001404179b2 jb       0x1404179ef
00000001404179b4 mov      eax, dword ptr [rcx + 0x16c]
00000001404179ba test     al, 8
00000001404179bc je       0x1404179ef
00000001404179be mov      eax, dword ptr [r14]
00000001404179c1 lea      r8, [rip + 0x2bea98]
00000001404179c8 mov      rcx, qword ptr [rcx + 0x158]
00000001404179cf mov      edx, 0xa9
00000001404179d4 mov      dword ptr [rsp + 0x30], eax
00000001404179d8 mov      r9d, r13d
00000001404179db mov      dword ptr [rsp + 0x28], esi
00000001404179df mov      dword ptr [rsp + 0x20], edi
00000001404179e3 call     0x140008794
00000001404179e8 lea      rdx, [rip + 0x508611]
00000001404179ef inc      esi
00000001404179f1 add      r14, 4
00000001404179f5 cmp      esi, ebp
00000001404179f7 jb       0x14041799f
00000001404179f9 mov      r14, qword ptr [rsp + 0xc0]
0000000140417a01 mov      ebp, dword ptr [rsp + 0xc8]
0000000140417a08 jmp      0x14041743e
0000000140417a0d mov      rcx, qword ptr [rip + 0x5085ec]
0000000140417a14 lea      rdx, [rip + 0x5085e5]
0000000140417a1b cmp      rcx, rdx
0000000140417a1e je       0x14041743e
0000000140417a24 cmp      byte ptr [rcx + 0x169], 1
0000000140417a2b jb       0x14041743e
0000000140417a31 mov      eax, dword ptr [rcx + 0x16c]
0000000140417a37 test     al, 8
0000000140417a39 je       0x14041743e
0000000140417a3f mov      eax, dword ptr [rbx + 0xc8]
0000000140417a45 mov      edx, 0xa8
0000000140417a4a movzx    r9d, byte ptr [rbx + 0xca]
0000000140417a52 movzx    r10d, byte ptr [rbx + 0xc9]
0000000140417a5a movzx    r8d, al
0000000140417a5e mov      dword ptr [rsp + 0x38], r9d
0000000140417a63 movzx    eax, r12b
0000000140417a67 mov      dword ptr [rsp + 0x30], r10d
0000000140417a6c mov      dword ptr [rsp + 0x28], r8d
0000000140417a71 lea      r8, [rip + 0x525da8]
0000000140417a78 mov      rax, qword ptr [r8 + rax*8]
0000000140417a7c jmp      0x1404175d8
0000000140417a81 mov      rcx, qword ptr [rip + 0x508578]
0000000140417a88 lea      rdx, [rip + 0x508571]
0000000140417a8f cmp      rcx, rdx
0000000140417a92 je       0x14041743e
0000000140417a98 cmp      byte ptr [rcx + 0x169], 1
0000000140417a9f jb       0x14041743e
0000000140417aa5 mov      eax, dword ptr [rcx + 0x16c]
0000000140417aab test     al, 8
0000000140417aad je       0x14041743e
0000000140417ab3 mov      eax, dword ptr [rbx + 0xc4]
0000000140417ab9 mov      edx, 0xa7
0000000140417abe movzx    r9d, byte ptr [rbx + 0xc7]
0000000140417ac6 movzx    r10d, byte ptr [rbx + 0xc6]
0000000140417ace movzx    r11d, byte ptr [rbx + 0xc5]
0000000140417ad6 movzx    r8d, al
0000000140417ada mov      dword ptr [rsp + 0x40], r9d
0000000140417adf mov      dword ptr [rsp + 0x38], r10d
0000000140417ae4 movzx    eax, r12b
0000000140417ae8 mov      dword ptr [rsp + 0x30], r11d
0000000140417aed mov      dword ptr [rsp + 0x28], r8d
0000000140417af2 lea      r8, [rip + 0x525d27]
0000000140417af9 mov      rax, qword ptr [r8 + rax*8]
0000000140417afd jmp      0x140417847
0000000140417b02 mov      rcx, qword ptr [rip + 0x5084f7]
0000000140417b09 lea      rdi, [rip + 0x5084f0]
0000000140417b10 cmp      rcx, rdi
0000000140417b13 je       0x140417437
0000000140417b19 cmp      byte ptr [rcx + 0x169], 1
0000000140417b20 lea      rsi, [rip + 0x525cf9]
0000000140417b27 jb       0x140417b77
0000000140417b29 mov      eax, dword ptr [rcx + 0x16c]
0000000140417b2f test     al, 8
0000000140417b31 je       0x140417b77
0000000140417b33 mov      eax, dword ptr [rbx + 0xc0]
0000000140417b39 mov      edx, 0xa5
0000000140417b3e movzx    r9d, word ptr [rbx + 0xc2]
0000000140417b46 mov      rcx, qword ptr [rcx + 0x158]
0000000140417b4d movzx    r8d, ax
0000000140417b51 mov      dword ptr [rsp + 0x30], r9d
0000000140417b56 mov      r9d, r13d
0000000140417b59 mov      dword ptr [rsp + 0x28], r8d
0000000140417b5e lea      r8, [rip + 0x2be8fb]
0000000140417b65 movzx    eax, r12b
0000000140417b69 mov      rax, qword ptr [rsi + rax*8]
0000000140417b6d mov      qword ptr [rsp + 0x20], rax
0000000140417b72 call     0x1400f0d70
0000000140417b77 mov      rcx, qword ptr [rip + 0x508482]
0000000140417b7e cmp      rcx, rdi
0000000140417b81 je       0x140417437
0000000140417b87 cmp      byte ptr [rcx + 0x169], 1
0000000140417b8e jb       0x140417437
0000000140417b94 mov      eax, dword ptr [rcx + 0x16c]
0000000140417b9a test     al, 8
0000000140417b9c je       0x140417437
0000000140417ba2 mov      eax, dword ptr [rbx + 0xbc]
0000000140417ba8 mov      edx, 0xa6
0000000140417bad movzx    r9d, word ptr [rbx + 0xbe]
0000000140417bb5 movzx    r8d, ax
0000000140417bb9 movzx    eax, r12b
0000000140417bbd mov      dword ptr [rsp + 0x30], r9d
0000000140417bc2 mov      dword ptr [rsp + 0x28], r8d
0000000140417bc7 mov      rax, qword ptr [rsi + rax*8]
0000000140417bcb jmp      0x140417712
0000000140417bd0 mov      rcx, qword ptr [rip + 0x508429]
0000000140417bd7 lea      rdi, [rip + 0x508422]
0000000140417bde cmp      rcx, rdi
0000000140417be1 je       0x140417437
0000000140417be7 cmp      byte ptr [rcx + 0x169], 1
0000000140417bee lea      rsi, [rip + 0x525c2b]
0000000140417bf5 jb       0x140417c5e
0000000140417bf7 mov      eax, dword ptr [rcx + 0x16c]
0000000140417bfd test     al, 8
0000000140417bff je       0x140417c5e
0000000140417c01 mov      eax, dword ptr [rbx + 0xb0]
0000000140417c07 mov      edx, 0xa3
0000000140417c0c movzx    r11d, word ptr [rbx + 0xb2]
0000000140417c14 mov      rcx, qword ptr [rcx + 0x158]
0000000140417c1b movzx    r10d, ax
0000000140417c1f mov      eax, dword ptr [rbx + 0xa8]
0000000140417c25 movzx    r8d, ax
0000000140417c29 mov      eax, dword ptr [rbx + 0xb8]
0000000140417c2f mov      dword ptr [rsp + 0x40], eax
0000000140417c33 mov      dword ptr [rsp + 0x38], r11d
0000000140417c38 movzx    r9d, r12b
0000000140417c3c mov      dword ptr [rsp + 0x30], r10d
0000000140417c41 mov      dword ptr [rsp + 0x28], r8d
0000000140417c46 lea      r8, [rip + 0x2be813]
0000000140417c4d mov      rax, qword ptr [rsi + r9*8]
0000000140417c51 mov      r9d, r13d
0000000140417c54 mov      qword ptr [rsp + 0x20], rax
0000000140417c59 call     0x14041302c
0000000140417c5e mov      rcx, qword ptr [rip + 0x50839b]
0000000140417c65 cmp      rcx, rdi
0000000140417c68 je       0x140417437
0000000140417c6e cmp      byte ptr [rcx + 0x169], 1
0000000140417c75 jb       0x140417437
0000000140417c7b mov      eax, dword ptr [rcx + 0x16c]
0000000140417c81 test     al, 8
0000000140417c83 je       0x140417437
0000000140417c89 mov      eax, dword ptr [rbx + 0xac]
0000000140417c8f mov      edx, 0xa4
0000000140417c94 movzx    r11d, word ptr [rbx + 0xae]
0000000140417c9c movzx    r9d, word ptr [rbx + 0xaa]
0000000140417ca4 movzx    r8d, ax
0000000140417ca8 mov      eax, dword ptr [rbx + 0xb4]
0000000140417cae mov      dword ptr [rsp + 0x40], eax
0000000140417cb2 mov      dword ptr [rsp + 0x38], r11d
0000000140417cb7 movzx    r10d, r12b
0000000140417cbb mov      dword ptr [rsp + 0x30], r8d
0000000140417cc0 mov      dword ptr [rsp + 0x28], r9d
0000000140417cc5 mov      rax, qword ptr [rsi + r10*8]
0000000140417cc9 jmp      0x140417847
0000000140417cce mov      rcx, qword ptr [rip + 0x50832b]
0000000140417cd5 lea      rdx, [rip + 0x508324]
0000000140417cdc cmp      rcx, rdx
0000000140417cdf je       0x14041743e
0000000140417ce5 cmp      byte ptr [rcx + 0x169], 1
0000000140417cec jb       0x14041743e
0000000140417cf2 mov      eax, dword ptr [rcx + 0x16c]
0000000140417cf8 test     al, 8
0000000140417cfa je       0x14041743e
0000000140417d00 mov      eax, dword ptr [rbx + 0xa4]
0000000140417d06 mov      edx, 0xa2
0000000140417d0b jmp      0x140417632
0000000140417d10 mov      rcx, qword ptr [rip + 0x5082e9]
0000000140417d17 lea      rdx, [rip + 0x5082e2]
0000000140417d1e cmp      rcx, rdx
0000000140417d21 je       0x14041743e
0000000140417d27 cmp      byte ptr [rcx + 0x169], 1
0000000140417d2e jb       0x14041743e
0000000140417d34 mov      eax, dword ptr [rcx + 0x16c]
0000000140417d3a test     al, 8
0000000140417d3c je       0x14041743e
0000000140417d42 mov      eax, dword ptr [rbx + 0xa0]
0000000140417d48 mov      edx, 0xa1
0000000140417d4d mov      dword ptr [rsp + 0x30], eax
0000000140417d51 mov      eax, dword ptr [rbx + 0x9c]
0000000140417d57 mov      dword ptr [rsp + 0x28], eax
0000000140417d5b lea      rax, [rip + 0x525abe]
0000000140417d62 movzx    r8d, r12b
0000000140417d66 mov      rax, qword ptr [rax + r8*8]
0000000140417d6a jmp      0x140417712
0000000140417d6f mov      rcx, qword ptr [rip + 0x50828a]
0000000140417d76 lea      rdx, [rip + 0x508283]
0000000140417d7d cmp      rcx, rdx
0000000140417d80 je       0x14041743e
0000000140417d86 cmp      byte ptr [rcx + 0x169], 1
0000000140417d8d jb       0x14041743e
0000000140417d93 mov      eax, dword ptr [rcx + 0x16c]
0000000140417d99 test     al, 8
0000000140417d9b je       0x14041743e
0000000140417da1 mov      eax, dword ptr [rbx + 0x98]
0000000140417da7 mov      edx, 0xa0
0000000140417dac mov      dword ptr [rsp + 0x30], eax
0000000140417db0 mov      eax, dword ptr [rbx + 0x94]
0000000140417db6 jmp      0x140417d57