000000014034125c mov      rax, rsp
000000014034125f mov      qword ptr [rax + 8], rbx
0000000140341263 mov      qword ptr [rax + 0x10], rbp
0000000140341267 mov      qword ptr [rax + 0x18], rdi
000000014034126b mov      qword ptr [rax + 0x20], r12
000000014034126f push     r13
0000000140341271 push     r14
0000000140341273 push     r15
0000000140341275 sub      rsp, 0x20
0000000140341279 mov      rbx, qword ptr [rcx + 0x9a0]
0000000140341280 lea      rbp, [rip + 0x5ded79]
0000000140341287 mov      eax, dword ptr [rcx + 0x13f8]
000000014034128d add      rbx, 0x1f6c
0000000140341294 mov      rdi, rcx
0000000140341297 cmp      eax, 4
000000014034129a je       0x140341e7d
00000001403412a0 cmp      eax, 7
00000001403412a3 je       0x14034134c
00000001403412a9 mov      rcx, qword ptr [rip + 0x5ded50]
00000001403412b0 cmp      rcx, rbp
00000001403412b3 je       0x1403412e9
00000001403412b5 cmp      byte ptr [rcx + 0x169], 3
00000001403412bc jb       0x1403412e9
00000001403412be test     dword ptr [rcx + 0x16c], 0x1000
00000001403412c8 je       0x1403412e9
00000001403412ca mov      rcx, qword ptr [rcx + 0x158]
00000001403412d1 lea      r9, [rip + 0x2f7d18]
00000001403412d8 mov      edx, 0x139
00000001403412dd lea      r8, [rip + 0x39029c]
00000001403412e4 call     0x140008874
00000001403412e9 cmp      byte ptr [rdi + 0x49cd], 0
00000001403412f0 je       0x1403429d3
00000001403412f6 mov      rcx, qword ptr [rip + 0x5ded03]
00000001403412fd cmp      rcx, rbp
0000000140341300 je       0x140341336
0000000140341302 cmp      byte ptr [rcx + 0x169], 4
0000000140341309 jb       0x140341336
000000014034130b test     dword ptr [rcx + 0x16c], 0x1000
0000000140341315 je       0x140341336
0000000140341317 mov      rcx, qword ptr [rcx + 0x158]
000000014034131e lea      r9, [rip + 0x2f7ccb]
0000000140341325 mov      edx, 0x13a
000000014034132a lea      r8, [rip + 0x39024f]
0000000140341331 call     0x140008874
0000000140341336 mov      r8d, 0x17e
000000014034133c mov      rdx, rbx
000000014034133f mov      rcx, rdi
0000000140341342 call     0x1403c9a3c
0000000140341347 jmp      0x1403429d3
000000014034134c mov      eax, 0x20c00
0000000140341351 mov      dword ptr [rbx + 0x14], 4
0000000140341358 mov      edx, 0xffff
000000014034135d mov      dword ptr [rbx], eax
000000014034135f mov      r10d, 0x20ec8
0000000140341365 mov      dword ptr [rbx + 8], eax
0000000140341368 mov      r8d, 0x20ec4
000000014034136e mov      dword ptr [rbx + 0x90], r10d
0000000140341375 lea      r9d, [rax + 4]
0000000140341379 mov      dword ptr [rbx + 0x68], r8d
000000014034137d lea      r15d, [r9 + 0x7c]
0000000140341381 mov      dword ptr [rbx + 0x48], r9d
0000000140341385 mov      ebp, 1
000000014034138a mov      dword ptr [rbx + 0x70], r8d
000000014034138e mov      r8d, 0x30000
0000000140341394 mov      dword ptr [rbx + 0x78], r9d
0000000140341398 mov      dword ptr [rbx + 0x80], r9d
000000014034139f lea      r13d, [r15 - 0x6c]
00000001403413a3 mov      dword ptr [rbx + 0x88], r9d
00000001403413aa lea      r14d, [rdx + 1]
00000001403413ae mov      r9d, 0x40000
00000001403413b4 mov      dword ptr [rbx + 0x98], r10d
00000001403413bb lea      r10d, [r15 - 0x78]
00000001403413bf mov      dword ptr [rbx + 0x50], r15d
00000001403413c3 lea      r11d, [rbp + 1]
00000001403413c7 mov      dword ptr [rbx + 0x58], r15d
00000001403413cb mov      dword ptr [rbx + 0x60], r15d
00000001403413cf mov      r12d, 0xc00
00000001403413d5 mov      dword ptr [rbx + 0xc8], r15d
00000001403413dc mov      ecx, 0xffff0000
00000001403413e1 mov      dword ptr [rbx + 0xd0], r15d
00000001403413e8 mov      dword ptr [rbx + 0xd8], r15d
00000001403413ef lea      r15d, [r10 + 4]
00000001403413f3 mov      dword ptr [rbx + 0xa0], r10d
00000001403413fa mov      dword ptr [rbx + 0xb0], r10d
0000000140341401 mov      dword ptr [rbx + 0xb8], r10d
0000000140341408 mov      dword ptr [rbx + 0xc0], r10d
000000014034140f mov      dword ptr [rbx + 0xe0], r10d
0000000140341416 mov      r10d, 0xff
000000014034141c mov      dword ptr [rbx + 0x10], eax
000000014034141f mov      dword ptr [rbx + 0x18], eax
0000000140341422 mov      dword ptr [rbx + 0x28], eax
0000000140341425 mov      dword ptr [rbx + 0x30], eax
0000000140341428 mov      dword ptr [rbx + 0x38], eax
000000014034142b mov      dword ptr [rbx + 0x40], eax
000000014034142e mov      eax, 0xff00
0000000140341433 mov      dword ptr [rbx + 0x84], r8d
000000014034143a mov      dword ptr [rbx + 0x8c], r9d
0000000140341441 mov      dword ptr [rbx + 0xa4], r9d
0000000140341448 mov      r9d, 0xff000000
000000014034144e mov      dword ptr [rbx + 0xac], r8d
0000000140341455 mov      dword ptr [rbx + 0xbc], r8d
000000014034145c mov      r8d, 0xff0000
0000000140341462 mov      dword ptr [rbx + 0xec], r10d
0000000140341469 mov      dword ptr [rbx + 4], ebp
000000014034146c mov      dword ptr [rbx + 0xc], r11d
0000000140341470 mov      dword ptr [rbx + 0x1c], 0xf0
0000000140341477 mov      dword ptr [rbx + 0x20], 0x26168
000000014034147e mov      dword ptr [rbx + 0x24], 0x380
0000000140341485 mov      dword ptr [rbx + 0x2c], r12d
0000000140341489 mov      dword ptr [rbx + 0x34], 0x100
0000000140341490 mov      dword ptr [rbx + 0x3c], 0xf000
0000000140341497 mov      dword ptr [rbx + 0x44], ecx
000000014034149a mov      dword ptr [rbx + 0x4c], 0x3f00000
00000001403414a1 mov      dword ptr [rbx + 0x54], r11d
00000001403414a5 mov      dword ptr [rbx + 0x5c], ebp
00000001403414a8 mov      dword ptr [rbx + 0x64], eax
00000001403414ab mov      dword ptr [rbx + 0x6c], edx
00000001403414ae mov      dword ptr [rbx + 0x74], r14d
00000001403414b2 mov      dword ptr [rbx + 0x7c], edx
00000001403414b5 mov      dword ptr [rbx + 0x94], edx
00000001403414bb mov      dword ptr [rbx + 0x9c], r14d
00000001403414c2 mov      dword ptr [rbx + 0xa8], r13d
00000001403414c9 mov      dword ptr [rbx + 0xb4], edx
00000001403414cf mov      dword ptr [rbx + 0xc4], 0x80000
00000001403414d9 mov      dword ptr [rbx + 0xcc], 0x20
00000001403414e3 mov      dword ptr [rbx + 0xd4], 0x10
00000001403414ed mov      dword ptr [rbx + 0xdc], r8d
00000001403414f4 mov      dword ptr [rbx + 0xe4], r9d
00000001403414fb mov      dword ptr [rbx + 0xe8], r15d
0000000140341502 mov      dword ptr [rbx + 0xf0], r15d
0000000140341509 mov      dword ptr [rbx + 0xf8], r15d
0000000140341510 mov      dword ptr [rbx + 0x100], r15d
0000000140341517 lea      r15d, [r13 - 4]
000000014034151b mov      dword ptr [rbx + 0x108], r15d
0000000140341522 mov      dword ptr [rbx + 0x110], r15d
0000000140341529 mov      dword ptr [rbx + 0x118], r15d
0000000140341530 mov      dword ptr [rbx + 0x120], r15d
0000000140341537 mov      r15d, 0x20e88
000000014034153d mov      dword ptr [rbx + 0x138], r15d
0000000140341544 mov      dword ptr [rbx + 0x140], r15d
000000014034154b mov      r15d, 0x20e8c
0000000140341551 mov      dword ptr [rbx + 0x148], r15d
0000000140341558 mov      dword ptr [rbx + 0x150], r15d
000000014034155f mov      r15d, 0x20e90
0000000140341565 mov      dword ptr [rbx + 0x158], r15d
000000014034156c mov      dword ptr [rbx + 0x160], r15d
0000000140341573 mov      r15d, 0x20e94
0000000140341579 mov      dword ptr [rbx + 0x168], r15d
0000000140341580 mov      dword ptr [rbx + 0x170], r15d
0000000140341587 mov      r15d, 0x20e98
000000014034158d mov      dword ptr [rbx + 0x178], r15d
0000000140341594 mov      dword ptr [rbx + 0xf4], eax
000000014034159a mov      dword ptr [rbx + 0xfc], r8d
00000001403415a1 mov      dword ptr [rbx + 0x104], r9d
00000001403415a8 mov      dword ptr [rbx + 0x10c], r10d
00000001403415af mov      dword ptr [rbx + 0x114], eax
00000001403415b5 mov      dword ptr [rbx + 0x11c], r8d
00000001403415bc mov      dword ptr [rbx + 0x124], r9d
00000001403415c3 mov      dword ptr [rbx + 0x128], r13d
00000001403415ca mov      dword ptr [rbx + 0x12c], r10d
00000001403415d1 mov      dword ptr [rbx + 0x130], r13d
00000001403415d8 mov      dword ptr [rbx + 0x134], eax
00000001403415de mov      dword ptr [rbx + 0x13c], edx
00000001403415e4 mov      dword ptr [rbx + 0x144], ecx
00000001403415ea mov      dword ptr [rbx + 0x14c], edx
00000001403415f0 mov      dword ptr [rbx + 0x154], ecx
00000001403415f6 mov      dword ptr [rbx + 0x15c], edx
00000001403415fc mov      dword ptr [rbx + 0x164], ecx
0000000140341602 mov      dword ptr [rbx + 0x16c], edx
0000000140341608 mov      dword ptr [rbx + 0x174], ecx
000000014034160e mov      dword ptr [rbx + 0x17c], edx
0000000140341614 mov      dword ptr [rbx + 0x180], r15d
000000014034161b mov      r15d, 0x20e9c
0000000140341621 mov      dword ptr [rbx + 0x184], ecx
0000000140341627 mov      dword ptr [rbx + 0x188], r15d
000000014034162e mov      dword ptr [rbx + 0x18c], edx
0000000140341634 mov      dword ptr [rbx + 0x190], r15d
000000014034163b mov      r15d, 0x20ea0
0000000140341641 mov      dword ptr [rbx + 0x194], ecx
0000000140341647 mov      dword ptr [rbx + 0x198], r15d
000000014034164e mov      dword ptr [rbx + 0x19c], edx
0000000140341654 mov      dword ptr [rbx + 0x1a0], r15d
000000014034165b mov      r15d, 0x20ea4
0000000140341661 mov      dword ptr [rbx + 0x1a4], ecx
0000000140341667 mov      dword ptr [rbx + 0x1a8], r15d
000000014034166e mov      dword ptr [rbx + 0x1ac], edx
0000000140341674 mov      dword ptr [rbx + 0x1b0], r15d
000000014034167b lea      r15d, [r13 + 4]
000000014034167f mov      dword ptr [rbx + 0x1b4], r14d
0000000140341686 mov      dword ptr [rbx + 0x1b8], r15d
000000014034168d mov      dword ptr [rbx + 0x1bc], ebp
0000000140341693 mov      dword ptr [rbx + 0x1c0], r15d
000000014034169a mov      dword ptr [rbx + 0x1c4], r11d
00000001403416a1 lea      r11d, [r13 + 8]
00000001403416a5 mov      dword ptr [rbx + 0x1c8], r15d
00000001403416ac mov      dword ptr [rbx + 0x1cc], 4
00000001403416b6 mov      dword ptr [rbx + 0x1d0], r15d
00000001403416bd mov      dword ptr [rbx + 0x1d4], 0x38
00000001403416c7 mov      dword ptr [rbx + 0x1d8], r15d
00000001403416ce mov      dword ptr [rbx + 0x1dc], 0x1c0
00000001403416d8 mov      dword ptr [rbx + 0x1e8], r15d
00000001403416df mov      dword ptr [rbx + 0x1ec], ecx
00000001403416e5 mov      dword ptr [rbx + 0x1f0], r15d
00000001403416ec mov      dword ptr [rbx + 0x1f4], r12d
00000001403416f3 mov      dword ptr [rbx + 0x1f8], r11d
00000001403416fa mov      dword ptr [rbx + 0x1fc], 0x70
0000000140341704 mov      dword ptr [rbx + 0x200], r11d
000000014034170b mov      dword ptr [rbx + 0x204], r8d
0000000140341712 mov      dword ptr [rbx + 0x208], r11d
0000000140341719 lea      r11d, [r13 + 0xc]
000000014034171d mov      dword ptr [rbx + 0x20c], r9d
0000000140341724 mov      dword ptr [rbx + 0x210], r11d
000000014034172b lea      r15d, [r13 + 0x14]
000000014034172f mov      dword ptr [rbx + 0x214], r10d
0000000140341736 mov      dword ptr [rbx + 0x218], r11d
000000014034173d mov      dword ptr [rbx + 0x21c], eax
0000000140341743 mov      dword ptr [rbx + 0x220], r11d
000000014034174a mov      dword ptr [rbx + 0x224], r8d
0000000140341751 mov      dword ptr [rbx + 0x228], r11d
0000000140341758 lea      r11d, [r13 + 0x10]
000000014034175c mov      dword ptr [rbx + 0x22c], r9d
0000000140341763 mov      dword ptr [rbx + 0x230], r11d
000000014034176a mov      dword ptr [rbx + 0x234], r10d
0000000140341771 mov      dword ptr [rbx + 0x238], r11d
0000000140341778 mov      dword ptr [rbx + 0x23c], eax
000000014034177e mov      dword ptr [rbx + 0x240], r11d
0000000140341785 mov      dword ptr [rbx + 0x244], r8d
000000014034178c mov      dword ptr [rbx + 0x248], r11d
0000000140341793 mov      r11d, 0x20ea8
0000000140341799 mov      dword ptr [rbx + 0x24c], r9d
00000001403417a0 mov      dword ptr [rbx + 0x250], r15d
00000001403417a7 mov      dword ptr [rbx + 0x254], r10d
00000001403417ae mov      dword ptr [rbx + 0x1e0], r15d
00000001403417b5 mov      dword ptr [rbx + 0x1e4], 0x100
00000001403417bf mov      dword ptr [rbx + 0x258], r11d
00000001403417c6 mov      dword ptr [rbx + 0x25c], edx
00000001403417cc mov      dword ptr [rbx + 0x260], r11d
00000001403417d3 mov      r11d, 0x20eac
00000001403417d9 mov      dword ptr [rbx + 0x264], ecx
00000001403417df mov      dword ptr [rbx + 0x268], r11d
00000001403417e6 mov      dword ptr [rbx + 0x26c], edx
00000001403417ec mov      dword ptr [rbx + 0x270], r11d
00000001403417f3 mov      r11d, 0x20eb0
00000001403417f9 mov      dword ptr [rbx + 0x274], ecx
00000001403417ff mov      dword ptr [rbx + 0x278], r11d
0000000140341806 mov      dword ptr [rbx + 0x27c], edx
000000014034180c mov      dword ptr [rbx + 0x280], r11d
0000000140341813 mov      r11d, 0x20eb4
0000000140341819 mov      dword ptr [rbx + 0x284], ecx
000000014034181f mov      dword ptr [rbx + 0x288], r11d
0000000140341826 mov      dword ptr [rbx + 0x28c], edx
000000014034182c mov      dword ptr [rbx + 0x290], r11d
0000000140341833 mov      r11d, 0x20eb8
0000000140341839 mov      dword ptr [rbx + 0x294], ecx
000000014034183f mov      dword ptr [rbx + 0x298], r11d
0000000140341846 mov      dword ptr [rbx + 0x29c], edx
000000014034184c mov      dword ptr [rbx + 0x2a0], r11d
0000000140341853 mov      r11d, 0x20ebc
0000000140341859 mov      dword ptr [rbx + 0x2a4], ecx
000000014034185f mov      dword ptr [rbx + 0x2a8], r11d
0000000140341866 mov      dword ptr [rbx + 0x2ac], edx
000000014034186c mov      dword ptr [rbx + 0x2b0], r11d
0000000140341873 mov      r11d, 0x20ec0
0000000140341879 mov      dword ptr [rbx + 0x2b4], ecx
000000014034187f mov      dword ptr [rbx + 0x2b8], r11d
0000000140341886 mov      dword ptr [rbx + 0x2bc], edx
000000014034188c mov      dword ptr [rbx + 0x2c0], r11d
0000000140341893 mov      r11d, 0x8000
0000000140341899 mov      dword ptr [rbx + 0x2c4], r14d
00000001403418a0 mov      dword ptr [rbx + 0x2c8], r15d
00000001403418a7 mov      dword ptr [rbx + 0x2cc], 0x1000
00000001403418b1 mov      dword ptr [rbx + 0x2d0], r15d
00000001403418b8 mov      dword ptr [rbx + 0x2d4], 0x2000
00000001403418c2 mov      dword ptr [rbx + 0x2d8], r15d
00000001403418c9 mov      dword ptr [rbx + 0x2dc], ecx
00000001403418cf mov      dword ptr [rbx + 0x2e0], r15d
00000001403418d6 lea      r15d, [r13 + 0x18]
00000001403418da mov      dword ptr [rbx + 0x2e4], 0xc000
00000001403418e4 mov      r13d, 0x20cc4
00000001403418ea mov      dword ptr [rbx + 0x2e8], r15d
00000001403418f1 mov      dword ptr [rbx + 0x2ec], r11d
00000001403418f8 mov      dword ptr [rbx + 0x2f0], 0x20c30
0000000140341902 mov      dword ptr [rbx + 0x2f4], r11d
0000000140341909 mov      dword ptr [rbx + 0x2f8], 0x20c34
0000000140341913 mov      dword ptr [rbx + 0x2fc], r11d
000000014034191a mov      dword ptr [rbx + 0x300], 0x20c38
0000000140341924 mov      dword ptr [rbx + 0x304], r11d
000000014034192b mov      dword ptr [rbx + 0x308], r13d
0000000140341932 mov      dword ptr [rbx + 0x30c], r11d
0000000140341939 mov      dword ptr [rbx + 0x310], r15d
0000000140341940 lea      r15d, [r11 - 1]
0000000140341944 mov      dword ptr [rbx + 0x314], r15d
000000014034194b mov      dword ptr [rbx + 0x318], 0x20c30
0000000140341955 mov      dword ptr [rbx + 0x31c], r15d
000000014034195c mov      dword ptr [rbx + 0x320], 0x20c34
0000000140341966 mov      dword ptr [rbx + 0x324], r15d
000000014034196d mov      dword ptr [rbx + 0x328], 0x20c38
0000000140341977 mov      dword ptr [rbx + 0x32c], r15d
000000014034197e mov      dword ptr [rbx + 0x330], r13d
0000000140341985 mov      dword ptr [rbx + 0x334], r15d
000000014034198c mov      r15d, 0x20ecc
0000000140341992 mov      dword ptr [rbx + 0x338], 0x20c2c
000000014034199c mov      dword ptr [rbx + 0x33c], ecx
00000001403419a2 mov      dword ptr [rbx + 0x340], 0x20c30
00000001403419ac mov      dword ptr [rbx + 0x344], ecx
00000001403419b2 mov      dword ptr [rbx + 0x348], 0x20c34
00000001403419bc mov      dword ptr [rbx + 0x34c], ecx
00000001403419c2 mov      dword ptr [rbx + 0x350], 0x20c38
00000001403419cc mov      dword ptr [rbx + 0x354], ecx
00000001403419d2 mov      dword ptr [rbx + 0x358], r13d
00000001403419d9 mov      r13d, 0x22f9c
00000001403419df mov      dword ptr [rbx + 0x35c], ecx
00000001403419e5 mov      dword ptr [rbx + 0x360], r15d
00000001403419ec mov      dword ptr [rbx + 0x364], edx
00000001403419f2 mov      dword ptr [rbx + 0x368], r15d
00000001403419f9 mov      r15d, 0x20ed0
00000001403419ff mov      dword ptr [rbx + 0x36c], ecx
0000000140341a05 mov      dword ptr [rbx + 0x370], r15d
0000000140341a0c mov      dword ptr [rbx + 0x374], edx
0000000140341a12 mov      dword ptr [rbx + 0x378], r15d
0000000140341a19 mov      r15d, 0x20ed4
0000000140341a1f mov      dword ptr [rbx + 0x37c], ecx
0000000140341a25 mov      dword ptr [rbx + 0x380], r15d
0000000140341a2c mov      dword ptr [rbx + 0x384], edx
0000000140341a32 mov      dword ptr [rbx + 0x388], r15d
0000000140341a39 mov      r15d, 0x20f50
0000000140341a3f mov      dword ptr [rbx + 0x38c], ecx
0000000140341a45 mov      dword ptr [rbx + 0x390], r15d
0000000140341a4c mov      dword ptr [rbx + 0x394], edx
0000000140341a52 mov      dword ptr [rbx + 0x398], r15d
0000000140341a59 mov      r15d, 0x20f54
0000000140341a5f mov      dword ptr [rbx + 0x39c], ecx
0000000140341a65 mov      dword ptr [rbx + 0x3a0], r15d
0000000140341a6c mov      dword ptr [rbx + 0x3a4], edx
0000000140341a72 mov      dword ptr [rbx + 0x3a8], r15d
0000000140341a79 mov      r15d, 0x20edc
0000000140341a7f mov      dword ptr [rbx + 0x3ac], ecx
0000000140341a85 mov      dword ptr [rbx + 0x3b0], 0x22f80
0000000140341a8f mov      dword ptr [rbx + 0x3b4], edx
0000000140341a95 mov      dword ptr [rbx + 0x3b8], r15d
0000000140341a9c mov      dword ptr [rbx + 0x3bc], edx
0000000140341aa2 mov      dword ptr [rbx + 0x3c0], r15d
0000000140341aa9 mov      r15d, 0x20ee0
0000000140341aaf mov      dword ptr [rbx + 0x3c4], ecx
0000000140341ab5 mov      dword ptr [rbx + 0x3c8], r15d
0000000140341abc mov      dword ptr [rbx + 0x3cc], edx
0000000140341ac2 mov      dword ptr [rbx + 0x3d0], r15d
0000000140341ac9 mov      r15d, 0x20ee4
0000000140341acf mov      dword ptr [rbx + 0x3d4], ecx
0000000140341ad5 mov      dword ptr [rbx + 0x3d8], r13d
0000000140341adc mov      dword ptr [rbx + 0x3dc], ecx
0000000140341ae2 mov      dword ptr [rbx + 0x3e0], r15d
0000000140341ae9 mov      dword ptr [rbx + 0x3e4], edx
0000000140341aef mov      dword ptr [rbx + 0x3e8], r15d
0000000140341af6 mov      r15d, 0x20ee8
0000000140341afc mov      dword ptr [rbx + 0x3ec], ecx
0000000140341b02 mov      dword ptr [rbx + 0x3f0], r15d
0000000140341b09 mov      dword ptr [rbx + 0x3f4], edx
0000000140341b0f mov      dword ptr [rbx + 0x3f8], r15d
0000000140341b16 mov      r15d, 0x20eec
0000000140341b1c mov      dword ptr [rbx + 0x3fc], ecx
0000000140341b22 mov      dword ptr [rbx + 0x400], r13d
0000000140341b29 mov      dword ptr [rbx + 0x404], edx
0000000140341b2f mov      dword ptr [rbx + 0x408], r15d
0000000140341b36 mov      dword ptr [rbx + 0x40c], edx
0000000140341b3c mov      dword ptr [rbx + 0x410], r15d
0000000140341b43 mov      dword ptr [rbx + 0x414], r14d
0000000140341b4a mov      r14d, 0x2632c
0000000140341b50 mov      dword ptr [rbx + 0x418], 0x20cb0
0000000140341b5a mov      dword ptr [rbx + 0x41c], 0x3f000000
0000000140341b64 mov      dword ptr [rbx + 0x448], r14d
0000000140341b6b mov      dword ptr [rbx + 0x44c], 0x300
0000000140341b75 mov      dword ptr [rbx + 0x420], r14d
0000000140341b7c mov      dword ptr [rbx + 0x424], r12d
0000000140341b83 mov      dword ptr [rbx + 0x450], r14d
0000000140341b8a mov      dword ptr [rbx + 0x454], 0x3000
0000000140341b94 mov      dword ptr [rbx + 0x458], r14d
0000000140341b9b mov      dword ptr [rbx + 0x45c], 0x4000
0000000140341ba5 mov      dword ptr [rbx + 0x460], r14d
0000000140341bac mov      dword ptr [rbx + 0x464], r11d
0000000140341bb3 mov      r11d, 0x26244
0000000140341bb9 mov      dword ptr [rbx + 0x468], 0x26240
0000000140341bc3 mov      dword ptr [rbx + 0x4a8], r9d
0000000140341bca mov      dword ptr [rbx + 0x46c], r11d
0000000140341bd1 mov      dword ptr [rbx + 0x4ac], r10d
0000000140341bd8 mov      dword ptr [rbx + 0x470], r11d
0000000140341bdf mov      dword ptr [rbx + 0x4b0], eax
0000000140341be5 mov      dword ptr [rbx + 0x474], r11d
0000000140341bec mov      dword ptr [rbx + 0x4b4], r8d
0000000140341bf3 mov      dword ptr [rbx + 0x478], r11d
0000000140341bfa mov      r11d, 0x26248
0000000140341c00 mov      dword ptr [rbx + 0x4b8], r9d
0000000140341c07 mov      dword ptr [rbx + 0x47c], r11d
0000000140341c0e mov      dword ptr [rbx + 0x4bc], r10d
0000000140341c15 mov      dword ptr [rbx + 0x480], r11d
0000000140341c1c mov      dword ptr [rbx + 0x4c0], eax
0000000140341c22 mov      dword ptr [rbx + 0x484], r11d
0000000140341c29 lea      r11d, [rbp + 7]
0000000140341c2d mov      dword ptr [rbx + 0x4c4], r8d
0000000140341c34 lea      r8, [rbx + 0x4c8]
0000000140341c3b mov      eax, dword ptr [rdi + 0x49d0]
0000000140341c41 mov      dword ptr [r8 - 0x40], eax
0000000140341c45 mov      eax, dword ptr [rdi + 0x49d0]
0000000140341c4b mov      dword ptr [r8], eax
0000000140341c4e lea      r8, [r8 + 4]
0000000140341c52 sub      r11, rbp
0000000140341c55 jne      0x140341c3b
0000000140341c57 mov      dword ptr [rbx + 0x428], 0x26250
0000000140341c61 mov      dword ptr [rbx + 0x438], r9d
0000000140341c68 mov      dword ptr [rbx + 0x42c], 0x26254
0000000140341c72 mov      dword ptr [rbx + 0x43c], r10d
0000000140341c79 mov      eax, dword ptr [rdi + 0x49d0]
0000000140341c7f mov      dword ptr [rbx + 0x430], eax
0000000140341c85 mov      eax, dword ptr [rdi + 0x49d0]
0000000140341c8b mov      dword ptr [rbx + 0x440], eax
0000000140341c91 mov      eax, dword ptr [rdi + 0x49d0]
0000000140341c97 mov      dword ptr [rbx + 0x434], eax
0000000140341c9d mov      eax, dword ptr [rdi + 0x49d0]
0000000140341ca3 mov      dword ptr [rbx + 0x444], eax
0000000140341ca9 mov      eax, 0x22f28
0000000140341cae mov      dword ptr [rbx + 0x4e8], eax
0000000140341cb4 mov      dword ptr [rbx + 0x528], edx
0000000140341cba mov      dword ptr [rbx + 0x4ec], eax
0000000140341cc0 mov      eax, 0x22f2c
0000000140341cc5 mov      dword ptr [rbx + 0x52c], ecx
0000000140341ccb mov      dword ptr [rbx + 0x4f0], eax
0000000140341cd1 mov      dword ptr [rbx + 0x530], edx
0000000140341cd7 mov      dword ptr [rbx + 0x4f4], eax
0000000140341cdd mov      eax, 0x22f30
0000000140341ce2 mov      dword ptr [rbx + 0x534], ecx
0000000140341ce8 mov      dword ptr [rbx + 0x4f8], eax
0000000140341cee mov      dword ptr [rbx + 0x538], edx
0000000140341cf4 mov      dword ptr [rbx + 0x4fc], eax
0000000140341cfa mov      eax, 0x22f34
0000000140341cff mov      dword ptr [rbx + 0x53c], ecx
0000000140341d05 mov      dword ptr [rbx + 0x500], eax
0000000140341d0b mov      dword ptr [rbx + 0x540], edx
0000000140341d11 mov      dword ptr [rbx + 0x504], eax
0000000140341d17 mov      eax, 0x22f38
0000000140341d1c mov      dword ptr [rbx + 0x544], ecx
0000000140341d22 mov      dword ptr [rbx + 0x508], eax
0000000140341d28 mov      dword ptr [rbx + 0x548], edx
0000000140341d2e mov      dword ptr [rbx + 0x50c], eax
0000000140341d34 mov      eax, 0x22f3c
0000000140341d39 mov      dword ptr [rbx + 0x54c], ecx
0000000140341d3f mov      dword ptr [rbx + 0x510], eax
0000000140341d45 mov      dword ptr [rbx + 0x550], edx
0000000140341d4b mov      dword ptr [rbx + 0x514], eax
0000000140341d51 mov      eax, 0x22f40
0000000140341d56 mov      dword ptr [rbx + 0x554], ecx
0000000140341d5c mov      dword ptr [rbx + 0x518], eax
0000000140341d62 mov      dword ptr [rbx + 0x558], edx
0000000140341d68 mov      dword ptr [rbx + 0x51c], eax
0000000140341d6e mov      eax, 0x22f44
0000000140341d73 mov      dword ptr [rbx + 0x55c], ecx
0000000140341d79 mov      dword ptr [rbx + 0x520], eax
0000000140341d7f mov      dword ptr [rbx + 0x560], edx
0000000140341d85 mov      dword ptr [rbx + 0x524], eax
0000000140341d8b mov      eax, 0x22f48
0000000140341d90 mov      dword ptr [rbx + 0x564], ecx
0000000140341d96 mov      dword ptr [rbx + 0x568], eax
0000000140341d9c mov      dword ptr [rbx + 0x5a8], edx
0000000140341da2 mov      dword ptr [rbx + 0x56c], eax
0000000140341da8 mov      eax, 0x22f4c
0000000140341dad mov      dword ptr [rbx + 0x5ac], ecx
0000000140341db3 mov      dword ptr [rbx + 0x570], eax
0000000140341db9 mov      dword ptr [rbx + 0x5b0], edx
0000000140341dbf mov      dword ptr [rbx + 0x574], eax
0000000140341dc5 mov      eax, 0x22f50
0000000140341dca mov      dword ptr [rbx + 0x5b4], ecx
0000000140341dd0 mov      dword ptr [rbx + 0x578], eax
0000000140341dd6 mov      dword ptr [rbx + 0x5b8], edx
0000000140341ddc mov      dword ptr [rbx + 0x57c], eax
0000000140341de2 mov      eax, 0x22f54
0000000140341de7 mov      dword ptr [rbx + 0x5bc], ecx
0000000140341ded mov      dword ptr [rbx + 0x580], eax
0000000140341df3 mov      dword ptr [rbx + 0x5c0], edx
0000000140341df9 mov      dword ptr [rbx + 0x584], eax
0000000140341dff mov      eax, 0x22f58
0000000140341e04 mov      dword ptr [rbx + 0x5c4], ecx
0000000140341e0a mov      dword ptr [rbx + 0x588], eax
0000000140341e10 mov      dword ptr [rbx + 0x5c8], edx
0000000140341e16 mov      dword ptr [rbx + 0x58c], eax
0000000140341e1c mov      eax, 0x22f5c
0000000140341e21 mov      dword ptr [rbx + 0x5cc], ecx
0000000140341e27 mov      dword ptr [rbx + 0x590], eax
0000000140341e2d mov      dword ptr [rbx + 0x5d0], edx
0000000140341e33 mov      dword ptr [rbx + 0x594], eax
0000000140341e39 mov      dword ptr [rbx + 0x5d4], ecx
0000000140341e3f mov      eax, 0x22f60
0000000140341e44 mov      dword ptr [rbx + 0x598], eax
0000000140341e4a mov      dword ptr [rbx + 0x5d8], edx
0000000140341e50 mov      dword ptr [rbx + 0x59c], eax
0000000140341e56 mov      eax, 0x22f64
0000000140341e5b mov      dword ptr [rbx + 0x5dc], ecx
0000000140341e61 mov      dword ptr [rbx + 0x5a0], eax
0000000140341e67 mov      dword ptr [rbx + 0x5e0], edx
0000000140341e6d mov      dword ptr [rbx + 0x5a4], eax
0000000140341e73 mov      eax, 0x22f68
0000000140341e78 jmp      0x1403429ae
0000000140341e7d mov      r12d, 0xc00
0000000140341e83 mov      dword ptr [rbx + 0x14], 4
0000000140341e8a mov      edx, 0xffff
0000000140341e8f mov      dword ptr [rbx], r12d
0000000140341e92 mov      r8d, 0xec4
0000000140341e98 mov      dword ptr [rbx + 8], r12d
0000000140341e9c mov      r10d, 0xec8
0000000140341ea2 mov      dword ptr [rbx + 0x68], r8d
0000000140341ea6 lea      r9d, [r12 + 4]
0000000140341eab mov      dword ptr [rbx + 0x70], r8d
0000000140341eaf lea      r15d, [r9 + 0x7c]
0000000140341eb3 mov      dword ptr [rbx + 0x48], r9d
0000000140341eb7 mov      r8d, 0x30000
0000000140341ebd mov      dword ptr [rbx + 0x78], r9d
0000000140341ec1 mov      ebp, 1
0000000140341ec6 mov      dword ptr [rbx + 0x80], r9d
0000000140341ecd mov      dword ptr [rbx + 0x88], r9d
0000000140341ed4 lea      r14d, [rdx + 1]
0000000140341ed8 mov      r9d, 0x40000
0000000140341ede mov      dword ptr [rbx + 0x90], r10d
0000000140341ee5 mov      dword ptr [rbx + 0x98], r10d
0000000140341eec lea      r13d, [r12 + 0x14]
0000000140341ef1 lea      r10d, [r12 + 8]
0000000140341ef6 mov      dword ptr [rbx + 0x8c], r9d
0000000140341efd lea      r11d, [rbp + 1]
0000000140341f01 mov      dword ptr [rbx + 0xa4], r9d
0000000140341f08 mov      eax, 0xff00
0000000140341f0d mov      dword ptr [rbx + 0x50], r15d
0000000140341f11 mov      dword ptr [rbx + 0x58], r15d
0000000140341f15 mov      r9d, 0xff000000
0000000140341f1b mov      dword ptr [rbx + 0x60], r15d
0000000140341f1f mov      ecx, 0xffff0000
0000000140341f24 mov      dword ptr [rbx + 0x84], r8d
0000000140341f2b mov      dword ptr [rbx + 0xa0], r10d
0000000140341f32 mov      dword ptr [rbx + 0xac], r8d
0000000140341f39 mov      dword ptr [rbx + 0xb0], r10d
0000000140341f40 mov      dword ptr [rbx + 0xb8], r10d
0000000140341f47 mov      dword ptr [rbx + 0xbc], r8d
0000000140341f4e mov      r8d, 0xff0000
0000000140341f54 mov      dword ptr [rbx + 0xc0], r10d
0000000140341f5b mov      dword ptr [rbx + 0xc8], r15d
0000000140341f62 mov      dword ptr [rbx + 0xd0], r15d
0000000140341f69 mov      dword ptr [rbx + 0xd8], r15d
0000000140341f70 lea      r15d, [r12 + 0xc]
0000000140341f75 mov      dword ptr [rbx + 0xe0], r10d
0000000140341f7c mov      r10d, 0xff
0000000140341f82 mov      dword ptr [rbx + 0xe4], r9d
0000000140341f89 mov      dword ptr [rbx + 4], ebp
0000000140341f8c mov      dword ptr [rbx + 0xc], r11d
0000000140341f90 mov      dword ptr [rbx + 0x10], r12d
0000000140341f94 mov      dword ptr [rbx + 0x18], r12d
0000000140341f98 mov      dword ptr [rbx + 0x1c], 0xf0
0000000140341f9f mov      dword ptr [rbx + 0x20], 0x6034
0000000140341fa6 mov      dword ptr [rbx + 0x24], 0x380
0000000140341fad mov      dword ptr [rbx + 0x28], r12d
0000000140341fb1 mov      dword ptr [rbx + 0x2c], r12d
0000000140341fb5 mov      dword ptr [rbx + 0x30], r12d
0000000140341fb9 mov      dword ptr [rbx + 0x34], 0x100
0000000140341fc0 mov      dword ptr [rbx + 0x38], r12d
0000000140341fc4 mov      dword ptr [rbx + 0x3c], 0xf000
0000000140341fcb mov      dword ptr [rbx + 0x40], r12d
0000000140341fcf mov      dword ptr [rbx + 0x44], ecx
0000000140341fd2 mov      dword ptr [rbx + 0x4c], 0x3f00000
0000000140341fd9 mov      dword ptr [rbx + 0x54], r11d
0000000140341fdd mov      dword ptr [rbx + 0x5c], ebp
0000000140341fe0 mov      dword ptr [rbx + 0x64], eax
0000000140341fe3 mov      dword ptr [rbx + 0x6c], edx
0000000140341fe6 mov      dword ptr [rbx + 0x74], r14d
0000000140341fea mov      dword ptr [rbx + 0x7c], edx
0000000140341fed mov      dword ptr [rbx + 0x94], edx
0000000140341ff3 mov      dword ptr [rbx + 0x9c], r14d
0000000140341ffa mov      dword ptr [rbx + 0xa8], r13d
0000000140342001 mov      dword ptr [rbx + 0xb4], edx
0000000140342007 mov      dword ptr [rbx + 0xc4], 0x80000
0000000140342011 mov      dword ptr [rbx + 0xcc], 0x20
000000014034201b mov      dword ptr [rbx + 0xd4], 0x10
0000000140342025 mov      dword ptr [rbx + 0xdc], r8d
000000014034202c mov      dword ptr [rbx + 0xe8], r15d
0000000140342033 mov      dword ptr [rbx + 0xec], r10d
000000014034203a mov      dword ptr [rbx + 0xf0], r15d
0000000140342041 mov      dword ptr [rbx + 0xf4], eax
0000000140342047 mov      dword ptr [rbx + 0xf8], r15d
000000014034204e mov      dword ptr [rbx + 0x100], r15d
0000000140342055 lea      r15d, [r12 + 0x10]
000000014034205a mov      dword ptr [rbx + 0x108], r15d
0000000140342061 mov      dword ptr [rbx + 0x110], r15d
0000000140342068 mov      dword ptr [rbx + 0x118], r15d
000000014034206f mov      dword ptr [rbx + 0x120], r15d
0000000140342076 mov      r15d, 0xe88
000000014034207c mov      dword ptr [rbx + 0x138], r15d
0000000140342083 mov      dword ptr [rbx + 0x140], r15d
000000014034208a mov      r15d, 0xe8c
0000000140342090 mov      dword ptr [rbx + 0x148], r15d
0000000140342097 mov      dword ptr [rbx + 0x150], r15d
000000014034209e mov      r15d, 0xe90
00000001403420a4 mov      dword ptr [rbx + 0x158], r15d
00000001403420ab mov      dword ptr [rbx + 0x160], r15d
00000001403420b2 mov      r15d, 0xe94
00000001403420b8 mov      dword ptr [rbx + 0x168], r15d
00000001403420bf mov      dword ptr [rbx + 0x170], r15d
00000001403420c6 mov      r15d, 0xe98
00000001403420cc mov      dword ptr [rbx + 0x178], r15d
00000001403420d3 mov      dword ptr [rbx + 0xfc], r8d
00000001403420da mov      dword ptr [rbx + 0x104], r9d
00000001403420e1 mov      dword ptr [rbx + 0x10c], r10d
00000001403420e8 mov      dword ptr [rbx + 0x114], eax
00000001403420ee mov      dword ptr [rbx + 0x11c], r8d
00000001403420f5 mov      dword ptr [rbx + 0x124], r9d
00000001403420fc mov      dword ptr [rbx + 0x128], r13d
0000000140342103 mov      dword ptr [rbx + 0x12c], r10d
000000014034210a mov      dword ptr [rbx + 0x130], r13d
0000000140342111 mov      dword ptr [rbx + 0x134], eax
0000000140342117 mov      dword ptr [rbx + 0x13c], edx
000000014034211d mov      dword ptr [rbx + 0x144], ecx
0000000140342123 mov      dword ptr [rbx + 0x14c], edx
0000000140342129 mov      dword ptr [rbx + 0x154], ecx
000000014034212f mov      dword ptr [rbx + 0x15c], edx
0000000140342135 mov      dword ptr [rbx + 0x164], ecx
000000014034213b mov      dword ptr [rbx + 0x16c], edx
0000000140342141 mov      dword ptr [rbx + 0x174], ecx
0000000140342147 mov      dword ptr [rbx + 0x17c], edx
000000014034214d mov      dword ptr [rbx + 0x180], r15d
0000000140342154 mov      r15d, 0xe9c
000000014034215a mov      dword ptr [rbx + 0x184], ecx
0000000140342160 mov      dword ptr [rbx + 0x188], r15d
0000000140342167 mov      dword ptr [rbx + 0x18c], edx
000000014034216d mov      dword ptr [rbx + 0x190], r15d
0000000140342174 mov      r15d, 0xea0
000000014034217a mov      dword ptr [rbx + 0x194], ecx
0000000140342180 mov      dword ptr [rbx + 0x198], r15d
0000000140342187 mov      dword ptr [rbx + 0x19c], edx
000000014034218d mov      dword ptr [rbx + 0x1a0], r15d
0000000140342194 mov      r15d, 0xea4
000000014034219a mov      dword ptr [rbx + 0x1a4], ecx
00000001403421a0 mov      dword ptr [rbx + 0x1a8], r15d
00000001403421a7 mov      dword ptr [rbx + 0x1ac], edx
00000001403421ad mov      dword ptr [rbx + 0x1b0], r15d
00000001403421b4 lea      r15d, [r12 + 0x18]
00000001403421b9 mov      dword ptr [rbx + 0x1b4], r14d
00000001403421c0 mov      dword ptr [rbx + 0x1b8], r15d
00000001403421c7 mov      dword ptr [rbx + 0x1bc], ebp
00000001403421cd mov      dword ptr [rbx + 0x1c0], r15d
00000001403421d4 mov      dword ptr [rbx + 0x1c4], r11d
00000001403421db lea      r11d, [r12 + 0x1c]
00000001403421e0 mov      dword ptr [rbx + 0x1c8], r15d
00000001403421e7 mov      dword ptr [rbx + 0x1cc], 4
00000001403421f1 mov      dword ptr [rbx + 0x1d0], r15d
00000001403421f8 mov      dword ptr [rbx + 0x1d4], 0x38
0000000140342202 mov      dword ptr [rbx + 0x1d8], r15d
0000000140342209 mov      dword ptr [rbx + 0x1dc], 0x1c0
0000000140342213 mov      dword ptr [rbx + 0x1e8], r15d
000000014034221a mov      dword ptr [rbx + 0x1ec], ecx
0000000140342220 mov      dword ptr [rbx + 0x1f0], r15d
0000000140342227 mov      dword ptr [rbx + 0x1f4], r12d
000000014034222e mov      dword ptr [rbx + 0x1f8], r11d
0000000140342235 mov      dword ptr [rbx + 0x1fc], 0x70
000000014034223f mov      dword ptr [rbx + 0x200], r11d
0000000140342246 mov      dword ptr [rbx + 0x204], r8d
000000014034224d mov      dword ptr [rbx + 0x208], r11d
0000000140342254 lea      r11d, [r12 + 0x20]
0000000140342259 mov      dword ptr [rbx + 0x20c], r9d
0000000140342260 mov      dword ptr [rbx + 0x210], r11d
0000000140342267 mov      dword ptr [rbx + 0x214], r10d
000000014034226e lea      ebp, [r12 + 0x28]
0000000140342273 mov      dword ptr [rbx + 0x218], r11d
000000014034227a lea      r15d, [r12 + 0x2c]
000000014034227f mov      dword ptr [rbx + 0x21c], eax
0000000140342285 lea      r13d, [r12 + 0x38]
000000014034228a mov      dword ptr [rbx + 0x220], r11d
0000000140342291 mov      dword ptr [rbx + 0x224], r8d
0000000140342298 mov      dword ptr [rbx + 0x228], r11d
000000014034229f lea      r11d, [r12 + 0x24]
00000001403422a4 mov      dword ptr [rbx + 0x22c], r9d
00000001403422ab mov      dword ptr [rbx + 0x230], r11d
00000001403422b2 mov      dword ptr [rbx + 0x234], r10d
00000001403422b9 mov      dword ptr [rbx + 0x238], r11d
00000001403422c0 mov      dword ptr [rbx + 0x23c], eax
00000001403422c6 mov      dword ptr [rbx + 0x240], r11d
00000001403422cd mov      dword ptr [rbx + 0x244], r8d
00000001403422d4 mov      dword ptr [rbx + 0x248], r11d
00000001403422db mov      r11d, 0xea8
00000001403422e1 mov      dword ptr [rbx + 0x24c], r9d
00000001403422e8 mov      dword ptr [rbx + 0x250], ebp
00000001403422ee mov      dword ptr [rbx + 0x254], r10d
00000001403422f5 mov      dword ptr [rbx + 0x1e0], ebp
00000001403422fb mov      dword ptr [rbx + 0x1e4], 0x100
0000000140342305 mov      dword ptr [rbx + 0x258], r11d
000000014034230c mov      dword ptr [rbx + 0x25c], edx
0000000140342312 mov      dword ptr [rbx + 0x260], r11d
0000000140342319 mov      r11d, 0xeac
000000014034231f mov      dword ptr [rbx + 0x264], ecx
0000000140342325 mov      dword ptr [rbx + 0x268], r11d
000000014034232c mov      dword ptr [rbx + 0x26c], edx
0000000140342332 mov      dword ptr [rbx + 0x270], r11d
0000000140342339 mov      r11d, 0xeb0
000000014034233f mov      dword ptr [rbx + 0x274], ecx
0000000140342345 mov      dword ptr [rbx + 0x278], r11d
000000014034234c mov      dword ptr [rbx + 0x27c], edx
0000000140342352 mov      dword ptr [rbx + 0x280], r11d
0000000140342359 mov      r11d, 0xeb4
000000014034235f mov      dword ptr [rbx + 0x284], ecx
0000000140342365 mov      dword ptr [rbx + 0x288], r11d
000000014034236c mov      dword ptr [rbx + 0x28c], edx
0000000140342372 mov      dword ptr [rbx + 0x290], r11d
0000000140342379 mov      r11d, 0xeb8
000000014034237f mov      dword ptr [rbx + 0x294], ecx
0000000140342385 mov      dword ptr [rbx + 0x298], r11d
000000014034238c mov      dword ptr [rbx + 0x29c], edx
0000000140342392 mov      dword ptr [rbx + 0x2a0], r11d
0000000140342399 mov      r11d, 0xebc
000000014034239f mov      dword ptr [rbx + 0x2a4], ecx
00000001403423a5 mov      dword ptr [rbx + 0x2a8], r11d
00000001403423ac mov      dword ptr [rbx + 0x2ac], edx
00000001403423b2 mov      dword ptr [rbx + 0x2b0], r11d
00000001403423b9 mov      r11d, 0xec0
00000001403423bf mov      dword ptr [rbx + 0x2b4], ecx
00000001403423c5 mov      dword ptr [rbx + 0x2b8], r11d
00000001403423cc mov      dword ptr [rbx + 0x2bc], edx
00000001403423d2 mov      dword ptr [rbx + 0x2c0], r11d
00000001403423d9 mov      r11d, 0x8000
00000001403423df mov      dword ptr [rbx + 0x2c4], r14d
00000001403423e6 mov      dword ptr [rbx + 0x2c8], ebp
00000001403423ec mov      dword ptr [rbx + 0x2cc], 0x1000
00000001403423f6 mov      dword ptr [rbx + 0x2d0], ebp
00000001403423fc mov      dword ptr [rbx + 0x2d4], 0x2000
0000000140342406 mov      dword ptr [rbx + 0x2d8], ebp
000000014034240c mov      dword ptr [rbx + 0x2dc], ecx
0000000140342412 mov      dword ptr [rbx + 0x2e0], ebp
0000000140342418 mov      ebp, 0xcc4
000000014034241d mov      dword ptr [rbx + 0x2e4], 0xc000
0000000140342427 mov      dword ptr [rbx + 0x2e8], r15d
000000014034242e mov      dword ptr [rbx + 0x2ec], r11d
0000000140342435 mov      dword ptr [rbx + 0x2f0], 0xc30
000000014034243f mov      dword ptr [rbx + 0x2f4], r11d
0000000140342446 mov      dword ptr [rbx + 0x2f8], 0xc34
0000000140342450 mov      dword ptr [rbx + 0x2fc], r11d
0000000140342457 mov      dword ptr [rbx + 0x300], r13d
000000014034245e mov      dword ptr [rbx + 0x304], r11d
0000000140342465 mov      dword ptr [rbx + 0x308], ebp
000000014034246b mov      dword ptr [rbx + 0x30c], r11d
0000000140342472 mov      dword ptr [rbx + 0x310], r15d
0000000140342479 lea      r15d, [r11 - 1]
000000014034247d mov      dword ptr [rbx + 0x314], r15d
0000000140342484 mov      dword ptr [rbx + 0x318], 0xc30
000000014034248e mov      dword ptr [rbx + 0x31c], r15d
0000000140342495 mov      dword ptr [rbx + 0x320], 0xc34
000000014034249f mov      dword ptr [rbx + 0x324], r15d
00000001403424a6 mov      dword ptr [rbx + 0x328], r13d
00000001403424ad mov      dword ptr [rbx + 0x32c], r15d
00000001403424b4 mov      dword ptr [rbx + 0x330], ebp
00000001403424ba mov      dword ptr [rbx + 0x334], r15d
00000001403424c1 mov      r15d, 0x2f9c
00000001403424c7 mov      dword ptr [rbx + 0x338], 0xc2c
00000001403424d1 mov      dword ptr [rbx + 0x33c], ecx
00000001403424d7 mov      dword ptr [rbx + 0x340], 0xc30
00000001403424e1 mov      dword ptr [rbx + 0x344], ecx
00000001403424e7 mov      dword ptr [rbx + 0x348], 0xc34
00000001403424f1 mov      dword ptr [rbx + 0x34c], ecx
00000001403424f7 mov      dword ptr [rbx + 0x350], r13d
00000001403424fe mov      dword ptr [rbx + 0x354], ecx
0000000140342504 mov      dword ptr [rbx + 0x358], ebp
000000014034250a mov      ebp, 0xecc
000000014034250f mov      dword ptr [rbx + 0x35c], ecx
0000000140342515 mov      dword ptr [rbx + 0x360], ebp
000000014034251b mov      dword ptr [rbx + 0x364], edx
0000000140342521 mov      dword ptr [rbx + 0x368], ebp
0000000140342527 mov      ebp, 0xed0
000000014034252c mov      dword ptr [rbx + 0x36c], ecx
0000000140342532 mov      dword ptr [rbx + 0x370], ebp
0000000140342538 mov      dword ptr [rbx + 0x374], edx
000000014034253e mov      dword ptr [rbx + 0x378], ebp
0000000140342544 mov      ebp, 0xed4
0000000140342549 mov      dword ptr [rbx + 0x37c], ecx
000000014034254f mov      dword ptr [rbx + 0x380], ebp
0000000140342555 mov      dword ptr [rbx + 0x384], edx
000000014034255b mov      dword ptr [rbx + 0x388], ebp
0000000140342561 mov      ebp, 0xf50
0000000140342566 mov      dword ptr [rbx + 0x38c], ecx
000000014034256c mov      dword ptr [rbx + 0x390], ebp
0000000140342572 mov      dword ptr [rbx + 0x394], edx
0000000140342578 mov      dword ptr [rbx + 0x398], ebp
000000014034257e mov      ebp, 0xf54
0000000140342583 mov      dword ptr [rbx + 0x39c], ecx
0000000140342589 mov      dword ptr [rbx + 0x3a0], ebp
000000014034258f mov      dword ptr [rbx + 0x3a4], edx
0000000140342595 mov      dword ptr [rbx + 0x3a8], ebp
000000014034259b mov      ebp, 0xedc
00000001403425a0 mov      dword ptr [rbx + 0x3ac], ecx
00000001403425a6 mov      dword ptr [rbx + 0x3b0], 0x2f80
00000001403425b0 mov      dword ptr [rbx + 0x3b4], edx
00000001403425b6 mov      dword ptr [rbx + 0x3b8], ebp
00000001403425bc mov      dword ptr [rbx + 0x3bc], edx
00000001403425c2 mov      dword ptr [rbx + 0x3c0], ebp
00000001403425c8 mov      ebp, 0xee0
00000001403425cd mov      dword ptr [rbx + 0x3c4], ecx
00000001403425d3 mov      dword ptr [rbx + 0x3c8], ebp
00000001403425d9 mov      dword ptr [rbx + 0x3cc], edx
00000001403425df mov      dword ptr [rbx + 0x3d0], ebp
00000001403425e5 mov      ebp, 0xee4
00000001403425ea mov      dword ptr [rbx + 0x3d4], ecx
00000001403425f0 mov      dword ptr [rbx + 0x3d8], r15d
00000001403425f7 mov      dword ptr [rbx + 0x3dc], ecx
00000001403425fd mov      dword ptr [rbx + 0x3e0], ebp
0000000140342603 mov      dword ptr [rbx + 0x3e4], edx
0000000140342609 mov      dword ptr [rbx + 0x3e8], ebp
000000014034260f mov      ebp, 0xee8
0000000140342614 mov      dword ptr [rbx + 0x3ec], ecx
000000014034261a mov      dword ptr [rbx + 0x3f0], ebp
0000000140342620 mov      dword ptr [rbx + 0x3f4], edx
0000000140342626 mov      dword ptr [rbx + 0x3f8], ebp
000000014034262c mov      ebp, 0xeec
0000000140342631 mov      dword ptr [rbx + 0x3fc], ecx
0000000140342637 mov      dword ptr [rbx + 0x400], r15d
000000014034263e mov      dword ptr [rbx + 0x404], edx
0000000140342644 mov      dword ptr [rbx + 0x408], ebp
000000014034264a mov      dword ptr [rbx + 0x40c], edx
0000000140342650 mov      dword ptr [rbx + 0x410], ebp
0000000140342656 mov      ebp, 0x6a80
000000014034265b mov      dword ptr [rbx + 0x414], r14d
0000000140342662 mov      dword ptr [rbx + 0x418], 0xcb0
000000014034266c mov      dword ptr [rbx + 0x41c], 0x3f000000
0000000140342676 mov      dword ptr [rbx + 0x448], ebp
000000014034267c mov      dword ptr [rbx + 0x44c], 0x300
0000000140342686 mov      dword ptr [rbx + 0x420], ebp
000000014034268c mov      dword ptr [rbx + 0x424], r12d
0000000140342693 mov      dword ptr [rbx + 0x450], ebp
0000000140342699 mov      dword ptr [rbx + 0x454], 0x3000
00000001403426a3 mov      dword ptr [rbx + 0x458], ebp
00000001403426a9 mov      dword ptr [rbx + 0x45c], 0x4000
00000001403426b3 mov      dword ptr [rbx + 0x460], ebp
00000001403426b9 mov      dword ptr [rbx + 0x464], r11d
00000001403426c0 mov      r11d, 0x69f4
00000001403426c6 mov      dword ptr [rbx + 0x468], 0x69f0
00000001403426d0 mov      dword ptr [rbx + 0x4a8], r9d
00000001403426d7 mov      dword ptr [rbx + 0x46c], r11d
00000001403426de mov      dword ptr [rbx + 0x4ac], r10d
00000001403426e5 mov      dword ptr [rbx + 0x470], r11d
00000001403426ec mov      dword ptr [rbx + 0x4b0], eax
00000001403426f2 mov      dword ptr [rbx + 0x474], r11d
00000001403426f9 mov      dword ptr [rbx + 0x4b4], r8d
0000000140342700 mov      dword ptr [rbx + 0x478], r11d
0000000140342707 mov      r11d, 0x69f8
000000014034270d mov      dword ptr [rbx + 0x4b8], r9d
0000000140342714 mov      dword ptr [rbx + 0x47c], r11d
000000014034271b mov      dword ptr [rbx + 0x4bc], r10d
0000000140342722 mov      dword ptr [rbx + 0x480], r11d
0000000140342729 mov      dword ptr [rbx + 0x4c0], eax
000000014034272f mov      dword ptr [rbx + 0x484], r11d
0000000140342736 mov      dword ptr [rbx + 0x4c4], r8d
000000014034273d mov      dword ptr [rbx + 0x488], r11d
0000000140342744 mov      r11d, 0x69fc
000000014034274a mov      dword ptr [rbx + 0x4c8], r9d
0000000140342751 mov      dword ptr [rbx + 0x48c], r11d
0000000140342758 mov      dword ptr [rbx + 0x4cc], r10d
000000014034275f mov      dword ptr [rbx + 0x490], r11d
0000000140342766 mov      dword ptr [rbx + 0x4d0], eax
000000014034276c mov      dword ptr [rbx + 0x494], r11d
0000000140342773 mov      dword ptr [rbx + 0x4d4], r8d
000000014034277a mov      dword ptr [rbx + 0x498], r11d
0000000140342781 lea      r11d, [rbp - 0x80]
0000000140342785 mov      dword ptr [rbx + 0x4d8], r9d
000000014034278c mov      dword ptr [rbx + 0x49c], r11d
0000000140342793 mov      dword ptr [rbx + 0x4dc], r10d
000000014034279a mov      dword ptr [rbx + 0x4a0], r11d
00000001403427a1 mov      dword ptr [rbx + 0x4e0], eax
00000001403427a7 mov      dword ptr [rbx + 0x4a4], r11d
00000001403427ae mov      dword ptr [rbx + 0x4e4], r8d
00000001403427b5 mov      dword ptr [rbx + 0x428], r11d
00000001403427bc mov      dword ptr [rbx + 0x438], r9d
00000001403427c3 lea      r9d, [rbp - 0x7c]
00000001403427c7 mov      dword ptr [rbx + 0x42c], r9d
00000001403427ce mov      dword ptr [rbx + 0x43c], r10d
00000001403427d5 mov      dword ptr [rbx + 0x430], r9d
00000001403427dc mov      dword ptr [rbx + 0x440], eax
00000001403427e2 lea      eax, [r15 - 0x74]
00000001403427e6 mov      dword ptr [rbx + 0x434], r9d
00000001403427ed mov      dword ptr [rbx + 0x444], r8d
00000001403427f4 mov      dword ptr [rbx + 0x4e8], eax
00000001403427fa mov      dword ptr [rbx + 0x528], edx
0000000140342800 mov      dword ptr [rbx + 0x4ec], eax
0000000140342806 lea      eax, [r15 - 0x70]
000000014034280a mov      dword ptr [rbx + 0x52c], ecx
0000000140342810 mov      dword ptr [rbx + 0x4f0], eax
0000000140342816 mov      dword ptr [rbx + 0x530], edx
000000014034281c mov      dword ptr [rbx + 0x4f4], eax
0000000140342822 lea      eax, [r15 - 0x6c]
0000000140342826 mov      dword ptr [rbx + 0x534], ecx
000000014034282c mov      dword ptr [rbx + 0x4f8], eax
0000000140342832 mov      dword ptr [rbx + 0x538], edx
0000000140342838 mov      dword ptr [rbx + 0x4fc], eax
000000014034283e lea      eax, [r15 - 0x68]
0000000140342842 mov      dword ptr [rbx + 0x53c], ecx
0000000140342848 mov      dword ptr [rbx + 0x500], eax
000000014034284e mov      dword ptr [rbx + 0x540], edx
0000000140342854 mov      dword ptr [rbx + 0x504], eax
000000014034285a lea      eax, [r15 - 0x64]
000000014034285e mov      dword ptr [rbx + 0x544], ecx
0000000140342864 mov      dword ptr [rbx + 0x508], eax
000000014034286a mov      dword ptr [rbx + 0x548], edx
0000000140342870 mov      dword ptr [rbx + 0x50c], eax
0000000140342876 lea      eax, [r15 - 0x60]
000000014034287a mov      dword ptr [rbx + 0x54c], ecx
0000000140342880 mov      dword ptr [rbx + 0x510], eax
0000000140342886 mov      dword ptr [rbx + 0x550], edx
000000014034288c mov      dword ptr [rbx + 0x514], eax
0000000140342892 mov      dword ptr [rbx + 0x554], ecx
0000000140342898 lea      eax, [r15 - 0x5c]
000000014034289c mov      dword ptr [rbx + 0x518], eax
00000001403428a2 mov      dword ptr [rbx + 0x558], edx
00000001403428a8 mov      dword ptr [rbx + 0x51c], eax
00000001403428ae lea      eax, [r15 - 0x58]
00000001403428b2 mov      dword ptr [rbx + 0x55c], ecx
00000001403428b8 mov      dword ptr [rbx + 0x520], eax
00000001403428be mov      dword ptr [rbx + 0x560], edx
00000001403428c4 mov      dword ptr [rbx + 0x524], eax
00000001403428ca lea      eax, [r15 - 0x54]
00000001403428ce mov      dword ptr [rbx + 0x564], ecx
00000001403428d4 mov      dword ptr [rbx + 0x568], eax
00000001403428da mov      dword ptr [rbx + 0x5a8], edx
00000001403428e0 mov      dword ptr [rbx + 0x56c], eax
00000001403428e6 lea      eax, [r15 - 0x50]
00000001403428ea mov      dword ptr [rbx + 0x5ac], ecx
00000001403428f0 mov      dword ptr [rbx + 0x570], eax
00000001403428f6 mov      dword ptr [rbx + 0x5b0], edx
00000001403428fc mov      dword ptr [rbx + 0x574], eax
0000000140342902 lea      eax, [r15 - 0x4c]
0000000140342906 mov      dword ptr [rbx + 0x5b4], ecx
000000014034290c mov      dword ptr [rbx + 0x578], eax
0000000140342912 mov      dword ptr [rbx + 0x5b8], edx
0000000140342918 mov      dword ptr [rbx + 0x57c], eax
000000014034291e lea      eax, [r15 - 0x48]
0000000140342922 mov      dword ptr [rbx + 0x5bc], ecx
0000000140342928 mov      dword ptr [rbx + 0x580], eax
000000014034292e mov      dword ptr [rbx + 0x5c0], edx
0000000140342934 mov      dword ptr [rbx + 0x584], eax
000000014034293a lea      eax, [r15 - 0x44]
000000014034293e mov      dword ptr [rbx + 0x5c4], ecx
0000000140342944 mov      dword ptr [rbx + 0x588], eax
000000014034294a mov      dword ptr [rbx + 0x5c8], edx
0000000140342950 mov      dword ptr [rbx + 0x58c], eax
0000000140342956 lea      eax, [r15 - 0x40]
000000014034295a mov      dword ptr [rbx + 0x5cc], ecx
0000000140342960 mov      dword ptr [rbx + 0x590], eax
0000000140342966 mov      dword ptr [rbx + 0x5d0], edx
000000014034296c mov      dword ptr [rbx + 0x594], eax
0000000140342972 lea      eax, [r15 - 0x3c]
0000000140342976 mov      dword ptr [rbx + 0x5d4], ecx
000000014034297c mov      dword ptr [rbx + 0x598], eax
0000000140342982 mov      dword ptr [rbx + 0x5d8], edx
0000000140342988 mov      dword ptr [rbx + 0x59c], eax
000000014034298e lea      eax, [r15 - 0x38]
0000000140342992 mov      dword ptr [rbx + 0x5dc], ecx
0000000140342998 mov      dword ptr [rbx + 0x5a0], eax
000000014034299e mov      dword ptr [rbx + 0x5e0], edx
00000001403429a4 mov      dword ptr [rbx + 0x5a4], eax
00000001403429aa lea      eax, [r15 - 0x34]
00000001403429ae mov      dword ptr [rbx + 0x5e4], ecx
00000001403429b4 lea      rbp, [rip + 0x5dd645]
00000001403429bb mov      dword ptr [rbx + 0x5e8], eax
00000001403429c1 mov      dword ptr [rbx + 0x5ec], edx
00000001403429c7 mov      dword ptr [rbx + 0x5f0], eax
00000001403429cd mov      dword ptr [rbx + 0x5f4], ecx
00000001403429d3 cmp      byte ptr [rdi + 0x49cc], 0
00000001403429da je       0x140342a2d
00000001403429dc mov      rcx, qword ptr [rip + 0x5dd61d]
00000001403429e3 cmp      rcx, rbp
00000001403429e6 je       0x140342a1c
00000001403429e8 cmp      byte ptr [rcx + 0x169], 4
00000001403429ef jb       0x140342a1c
00000001403429f1 test     dword ptr [rcx + 0x16c], 0x1000
00000001403429fb je       0x140342a1c
00000001403429fd mov      rcx, qword ptr [rcx + 0x158]
0000000140342a04 lea      r9, [rip + 0x2f65e5]
0000000140342a0b mov      edx, 0x13b
0000000140342a10 lea      r8, [rip + 0x38eb69]
0000000140342a17 call     0x140008874
0000000140342a1c mov      r8d, 0x17e
0000000140342a22 mov      rdx, rbx
0000000140342a25 mov      rcx, rdi
0000000140342a28 call     0x1403c9ac0
0000000140342a2d mov      rbx, qword ptr [rsp + 0x40]
0000000140342a32 mov      rbp, qword ptr [rsp + 0x48]
0000000140342a37 mov      rdi, qword ptr [rsp + 0x50]
0000000140342a3c mov      r12, qword ptr [rsp + 0x58]
0000000140342a41 add      rsp, 0x20
0000000140342a45 pop      r15
0000000140342a47 pop      r14
0000000140342a49 pop      r13
0000000140342a4b ret      