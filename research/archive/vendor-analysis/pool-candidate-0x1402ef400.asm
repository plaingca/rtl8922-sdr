00000001402ef400 mov      qword ptr [rsp + 8], rbx
00000001402ef405 mov      qword ptr [rsp + 0x10], rbp
00000001402ef40a mov      qword ptr [rsp + 0x18], rsi
00000001402ef40f push     rdi
00000001402ef410 push     r12
00000001402ef412 push     r13
00000001402ef414 push     r14
00000001402ef416 push     r15
00000001402ef418 sub      rsp, 0x20
00000001402ef41c mov      rbx, qword ptr [rcx + 0x9a0]
00000001402ef423 mov      rdi, rcx
00000001402ef426 mov      eax, dword ptr [rcx + 0x13fc]
00000001402ef42c add      rbx, 0x3d30
00000001402ef433 sub      eax, 2
00000001402ef436 cmp      eax, 1
00000001402ef439 ja       0x1402f10fe
00000001402ef43f mov      eax, dword ptr [rcx + 0x13f8]
00000001402ef445 lea      rbp, [rip + 0x630bb4]
00000001402ef44c cmp      eax, 4
00000001402ef44f je       0x1402f02ec
00000001402ef455 mov      ecx, 7
00000001402ef45a cmp      eax, ecx
00000001402ef45c je       0x1402ef502
00000001402ef462 mov      rcx, qword ptr [rip + 0x630b97]
00000001402ef469 mov      esi, 0x1000
00000001402ef46e cmp      rcx, rbp
00000001402ef471 je       0x1402ef4a3
00000001402ef473 cmp      byte ptr [rcx + 0x169], 3
00000001402ef47a jb       0x1402ef4a3
00000001402ef47c test     dword ptr [rcx + 0x16c], esi
00000001402ef482 je       0x1402ef4a3
00000001402ef484 mov      rcx, qword ptr [rcx + 0x158]
00000001402ef48b lea      r9, [rip + 0x33d16e]
00000001402ef492 mov      edx, 0x9e
00000001402ef497 lea      r8, [rip + 0x3abcc2]
00000001402ef49e call     0x140008874
00000001402ef4a3 cmp      byte ptr [rdi + 0x49cd], 0
00000001402ef4aa je       0x1402f10a8
00000001402ef4b0 mov      rcx, qword ptr [rip + 0x630b49]
00000001402ef4b7 cmp      rcx, rbp
00000001402ef4ba je       0x1402ef4ec
00000001402ef4bc cmp      byte ptr [rcx + 0x169], 4
00000001402ef4c3 jb       0x1402ef4ec
00000001402ef4c5 test     dword ptr [rcx + 0x16c], esi
00000001402ef4cb je       0x1402ef4ec
00000001402ef4cd mov      rcx, qword ptr [rcx + 0x158]
00000001402ef4d4 lea      r9, [rip + 0x33d125]
00000001402ef4db mov      edx, 0x9f
00000001402ef4e0 lea      r8, [rip + 0x3abc79]
00000001402ef4e7 call     0x140008874
00000001402ef4ec mov      r8d, 0xc
00000001402ef4f2 mov      rdx, rbx
00000001402ef4f5 mov      rcx, rdi
00000001402ef4f8 call     0x1403c9a3c
00000001402ef4fd jmp      0x1402f10a8
00000001402ef502 mov      r9d, 0x24054
00000001402ef508 mov      dword ptr [rbx + 0x18], 0x240a8
00000001402ef50f mov      eax, 0x2409c
00000001402ef514 mov      dword ptr [rbx + 0x34], 0x244a8
00000001402ef51b mov      dword ptr [rbx], eax
00000001402ef51d mov      r10d, 0xff00
00000001402ef523 mov      dword ptr [rbx + 4], eax
00000001402ef526 mov      r11d, 0xff000000
00000001402ef52c mov      eax, 0x240a0
00000001402ef531 mov      dword ptr [rbx + 0x70], r10d
00000001402ef535 mov      dword ptr [rbx + 8], eax
00000001402ef538 lea      edx, [r9 + 0x18]
00000001402ef53c mov      dword ptr [rbx + 0xc], eax
00000001402ef53f lea      r13d, [r9 + 0x1c]
00000001402ef543 mov      eax, 0x240a4
00000001402ef548 mov      dword ptr [rbx + 0x38], edx
00000001402ef54b mov      dword ptr [rbx + 0x10], eax
00000001402ef54e lea      r12d, [r9 + 0x20]
00000001402ef552 mov      dword ptr [rbx + 0x14], eax
00000001402ef555 mov      ebp, 0xff0000
00000001402ef55a mov      eax, 0x2449c
00000001402ef55f mov      dword ptr [rbx + 0x3c], edx
00000001402ef562 mov      dword ptr [rbx + 0x1c], eax
00000001402ef565 mov      edx, 0xff
00000001402ef56a mov      dword ptr [rbx + 0x20], eax
00000001402ef56d mov      eax, 0x244a0
00000001402ef572 mov      dword ptr [rbx + 0x24], eax
00000001402ef575 mov      dword ptr [rbx + 0x28], eax
00000001402ef578 mov      eax, 0x244a4
00000001402ef57d mov      dword ptr [rbx + 0x2c], eax
00000001402ef580 mov      dword ptr [rbx + 0x30], eax
00000001402ef583 mov      dword ptr [rbx + 0x74], r11d
00000001402ef587 lea      r8d, [rax - 0x50]
00000001402ef58b mov      dword ptr [rbx + 0x78], r10d
00000001402ef58f mov      eax, 0x1ff
00000001402ef594 mov      dword ptr [rbx + 0x7c], r11d
00000001402ef598 mov      dword ptr [rbx + 0xcc], eax
00000001402ef59e lea      r15d, [r8 + 0x18]
00000001402ef5a2 mov      dword ptr [rbx + 0xd0], eax
00000001402ef5a8 lea      r14d, [r8 + 0x1c]
00000001402ef5ac lea      eax, [r9 + 0x4c]
00000001402ef5b0 mov      dword ptr [rbx + 0x80], r10d
00000001402ef5b7 mov      dword ptr [rbx + 0x244], eax
00000001402ef5bd lea      esi, [r8 + 0x20]
00000001402ef5c1 mov      dword ptr [rbx + 0x248], eax
00000001402ef5c7 lea      eax, [r9 + 0x50]
00000001402ef5cb mov      dword ptr [rbx + 0x24c], eax
00000001402ef5d1 mov      dword ptr [rbx + 0x250], eax
00000001402ef5d7 lea      eax, [r9 + 0x54]
00000001402ef5db mov      dword ptr [rbx + 0x84], r11d
00000001402ef5e2 mov      dword ptr [rbx + 0x88], r10d
00000001402ef5e9 mov      dword ptr [rbx + 0xa8], r9d
00000001402ef5f0 mov      dword ptr [rbx + 0xac], 0x24058
00000001402ef5fa mov      dword ptr [rbx + 0xb0], r8d
00000001402ef601 mov      dword ptr [rbx + 0xb4], 0x24458
00000001402ef60b mov      dword ptr [rbx + 0xc8], 0x7fc0000
00000001402ef615 mov      dword ptr [rbx + 0x40], r13d
00000001402ef619 mov      dword ptr [rbx + 0x44], r13d
00000001402ef61d mov      dword ptr [rbx + 0x48], r12d
00000001402ef621 mov      dword ptr [rbx + 0x4c], r12d
00000001402ef625 mov      dword ptr [rbx + 0x50], 0x24078
00000001402ef62c mov      dword ptr [rbx + 0x54], r15d
00000001402ef630 mov      dword ptr [rbx + 0x58], r15d
00000001402ef634 mov      dword ptr [rbx + 0x5c], r14d
00000001402ef638 mov      dword ptr [rbx + 0x60], r14d
00000001402ef63c mov      dword ptr [rbx + 0x64], esi
00000001402ef63f mov      dword ptr [rbx + 0x68], esi
00000001402ef642 mov      dword ptr [rbx + 0x6c], 0x24478
00000001402ef649 mov      dword ptr [rbx + 0x8c], edx
00000001402ef64f mov      dword ptr [rbx + 0x90], ebp
00000001402ef655 mov      dword ptr [rbx + 0x94], edx
00000001402ef65b mov      dword ptr [rbx + 0x98], ebp
00000001402ef661 mov      dword ptr [rbx + 0x9c], edx
00000001402ef667 mov      dword ptr [rbx + 0xa0], ebp
00000001402ef66d mov      dword ptr [rbx + 0xa4], edx
00000001402ef673 mov      dword ptr [rbx + 0xb8], r9d
00000001402ef67a mov      dword ptr [rbx + 0xbc], r9d
00000001402ef681 mov      dword ptr [rbx + 0xc0], r8d
00000001402ef688 mov      dword ptr [rbx + 0xc4], r8d
00000001402ef68f mov      dword ptr [rbx + 0xd4], 0x3fe00
00000001402ef699 mov      dword ptr [rbx + 0x240], 0x2409c
00000001402ef6a3 mov      dword ptr [rbx + 0x254], eax
00000001402ef6a9 lea      r8d, [r9 + 0x24]
00000001402ef6ad mov      dword ptr [rbx + 0x258], eax
00000001402ef6b3 lea      eax, [rsi + 0x2c]
00000001402ef6b6 mov      dword ptr [rbx + 0x260], eax
00000001402ef6bc mov      dword ptr [rbx + 0x264], eax
00000001402ef6c2 lea      eax, [rsi + 0x30]
00000001402ef6c5 mov      dword ptr [rbx + 0x268], eax
00000001402ef6cb mov      dword ptr [rbx + 0x26c], eax
00000001402ef6d1 lea      eax, [rsi + 0x34]
00000001402ef6d4 mov      dword ptr [rbx + 0x270], eax
00000001402ef6da mov      dword ptr [rbx + 0x274], eax
00000001402ef6e0 lea      eax, [r9 + 0x18]
00000001402ef6e4 mov      dword ptr [rbx + 0x278], eax
00000001402ef6ea lea      r9d, [r15 + 0xc]
00000001402ef6ee mov      dword ptr [rbx + 0x27c], eax
00000001402ef6f4 lea      eax, [r13 + 0x3c]
00000001402ef6f8 movdqa   xmm0, xmmword ptr [rip + 0x3e1580]
00000001402ef700 mov      dword ptr [rbx + 0x25c], 0x2449c
00000001402ef70a mov      dword ptr [rbx + 0x2b0], ebp
00000001402ef710 mov      dword ptr [rbx + 0x2b4], edx
00000001402ef716 mov      dword ptr [rbx + 0x2b8], ebp
00000001402ef71c mov      dword ptr [rbx + 0x2bc], edx
00000001402ef722 mov      dword ptr [rbx + 0x2c0], ebp
00000001402ef728 mov      dword ptr [rbx + 0x2c4], edx
00000001402ef72e mov      dword ptr [rbx + 0x2c8], ebp
00000001402ef734 mov      dword ptr [rbx + 0x280], r13d
00000001402ef73b mov      dword ptr [rbx + 0x284], r13d
00000001402ef742 mov      dword ptr [rbx + 0x288], r12d
00000001402ef749 mov      dword ptr [rbx + 0x28c], r12d
00000001402ef750 mov      dword ptr [rbx + 0x290], r8d
00000001402ef757 mov      dword ptr [rbx + 0x294], r15d
00000001402ef75e mov      dword ptr [rbx + 0x298], r15d
00000001402ef765 mov      dword ptr [rbx + 0x29c], r14d
00000001402ef76c mov      dword ptr [rbx + 0x2a0], r14d
00000001402ef773 mov      dword ptr [rbx + 0x2a4], esi
00000001402ef779 mov      dword ptr [rbx + 0x2a8], esi
00000001402ef77f mov      dword ptr [rbx + 0x2ac], r9d
00000001402ef786 mov      dword ptr [rbx + 0x2cc], r10d
00000001402ef78d mov      dword ptr [rbx + 0x2d0], r11d
00000001402ef794 mov      dword ptr [rbx + 0x2d4], r10d
00000001402ef79b mov      dword ptr [rbx + 0x2d8], r11d
00000001402ef7a2 mov      dword ptr [rbx + 0x2dc], r10d
00000001402ef7a9 mov      dword ptr [rbx + 0x2e0], r11d
00000001402ef7b0 mov      dword ptr [rbx + 0x2e4], r10d
00000001402ef7b7 mov      dword ptr [rbx + 0xd8], eax
00000001402ef7bd mov      dword ptr [rbx + 0xdc], eax
00000001402ef7c3 mov      dword ptr [rbx + 0xe0], eax
00000001402ef7c9 lea      eax, [rsi + 0x38]
00000001402ef7cc movups   xmmword ptr [rbx + 0xe4], xmm0
00000001402ef7d3 mov      dword ptr [rbx + 0xf4], eax
00000001402ef7d9 movdqa   xmm0, xmmword ptr [rip + 0x3e14ef]
00000001402ef7e1 mov      dword ptr [rbx + 0xf8], eax
00000001402ef7e7 mov      dword ptr [rbx + 0xfc], eax
00000001402ef7ed lea      eax, [r13 + 0x44]
00000001402ef7f1 movups   xmmword ptr [rbx + 0x100], xmm0
00000001402ef7f8 mov      dword ptr [rbx + 0x148], r10d
00000001402ef7ff movdqa   xmm0, xmmword ptr [rip + 0x3e1489]
00000001402ef807 mov      dword ptr [rbx + 0x14c], ebp
00000001402ef80d mov      dword ptr [rbx + 0x150], r11d
00000001402ef814 mov      dword ptr [rbx + 0x154], edx
00000001402ef81a mov      dword ptr [rbx + 0x158], r10d
00000001402ef821 mov      dword ptr [rbx + 0x15c], ebp
00000001402ef827 mov      dword ptr [rbx + 0x160], r11d
00000001402ef82e mov      dword ptr [rbx + 0x180], eax
00000001402ef834 mov      dword ptr [rbx + 0x184], eax
00000001402ef83a lea      eax, [r13 + 0x4c]
00000001402ef83e movups   xmmword ptr [rbx + 0x188], xmm0
00000001402ef845 mov      dword ptr [rbx + 0x198], eax
00000001402ef84b movdqa   xmm0, xmmword ptr [rip + 0x3e148d]
00000001402ef853 mov      dword ptr [rbx + 0x19c], eax
00000001402ef859 lea      eax, [rsi + 0x40]
00000001402ef85c mov      dword ptr [rbx + 0x1a0], eax
00000001402ef862 mov      dword ptr [rbx + 0x1a4], eax
00000001402ef868 lea      eax, [rsi + 0x48]
00000001402ef86b movups   xmmword ptr [rbx + 0x1a8], xmm0
00000001402ef872 mov      dword ptr [rbx + 0x1b8], eax
00000001402ef878 mov      dword ptr [rbx + 0x1bc], eax
00000001402ef87e mov      dword ptr [rbx + 0x200], ebp
00000001402ef884 mov      dword ptr [rbx + 0x204], r11d
00000001402ef88b mov      dword ptr [rbx + 0x208], edx
00000001402ef891 mov      dword ptr [rbx + 0x20c], r10d
00000001402ef898 lea      eax, [r13 + 0xc]
00000001402ef89c mov      dword ptr [rbx + 0x210], ebp
00000001402ef8a2 mov      dword ptr [rbx + 0x214], r11d
00000001402ef8a9 mov      dword ptr [rbx + 0x218], edx
00000001402ef8af mov      dword ptr [rbx + 0x21c], r10d
00000001402ef8b6 mov      dword ptr [rbx + 0x110], r8d
00000001402ef8bd lea      r8d, [r13 + 0x10]
00000001402ef8c1 mov      dword ptr [rbx + 0x114], eax
00000001402ef8c7 mov      dword ptr [rbx + 0x118], eax
00000001402ef8cd mov      dword ptr [rbx + 0x11c], eax
00000001402ef8d3 mov      dword ptr [rbx + 0x120], eax
00000001402ef8d9 lea      eax, [rsi + 8]
00000001402ef8dc mov      dword ptr [rbx + 0x124], r8d
00000001402ef8e3 mov      dword ptr [rbx + 0x128], r8d
00000001402ef8ea mov      dword ptr [rbx + 0x12c], r9d
00000001402ef8f1 lea      r9d, [r15 + 0x14]
00000001402ef8f5 mov      dword ptr [rbx + 0x130], eax
00000001402ef8fb mov      dword ptr [rbx + 0x134], eax
00000001402ef901 mov      dword ptr [rbx + 0x138], eax
00000001402ef907 mov      dword ptr [rbx + 0x13c], eax
00000001402ef90d lea      eax, [r13 + 0x14]
00000001402ef911 mov      dword ptr [rbx + 0x140], r9d
00000001402ef918 mov      dword ptr [rbx + 0x144], r9d
00000001402ef91f mov      dword ptr [rbx + 0x164], r11d
00000001402ef926 mov      dword ptr [rbx + 0x168], edx
00000001402ef92c mov      dword ptr [rbx + 0x16c], r10d
00000001402ef933 mov      dword ptr [rbx + 0x170], ebp
00000001402ef939 mov      dword ptr [rbx + 0x174], r11d
00000001402ef940 mov      dword ptr [rbx + 0x178], edx
00000001402ef946 mov      dword ptr [rbx + 0x17c], r10d
00000001402ef94d mov      dword ptr [rbx + 0x1c0], r8d
00000001402ef954 mov      dword ptr [rbx + 0x1c4], eax
00000001402ef95a mov      dword ptr [rbx + 0x1c8], eax
00000001402ef960 mov      dword ptr [rbx + 0x1cc], eax
00000001402ef966 mov      dword ptr [rbx + 0x1d0], eax
00000001402ef96c lea      eax, [r13 + 0x18]
00000001402ef970 mov      dword ptr [rbx + 0x1d4], eax
00000001402ef976 mov      dword ptr [rbx + 0x1d8], eax
00000001402ef97c mov      dword ptr [rbx + 0x1dc], eax
00000001402ef982 lea      eax, [rsi + 0x10]
00000001402ef985 mov      dword ptr [rbx + 0x1e0], r9d
00000001402ef98c mov      dword ptr [rbx + 0x1e4], eax
00000001402ef992 mov      dword ptr [rbx + 0x1e8], eax
00000001402ef998 mov      dword ptr [rbx + 0x1ec], eax
00000001402ef99e mov      dword ptr [rbx + 0x1f0], eax
00000001402ef9a4 lea      eax, [rsi + 0x14]
00000001402ef9a7 mov      dword ptr [rbx + 0x1f4], eax
00000001402ef9ad mov      dword ptr [rbx + 0x1f8], eax
00000001402ef9b3 mov      dword ptr [rbx + 0x1fc], eax
00000001402ef9b9 mov      eax, 0x2415c
00000001402ef9be mov      dword ptr [rbx + 0x220], r11d
00000001402ef9c5 mov      dword ptr [rbx + 0x224], edx
00000001402ef9cb mov      dword ptr [rbx + 0x228], r10d
00000001402ef9d2 mov      dword ptr [rbx + 0x22c], ebp
00000001402ef9d8 mov      dword ptr [rbx + 0x230], r11d
00000001402ef9df mov      dword ptr [rbx + 0x234], edx
00000001402ef9e5 mov      dword ptr [rbx + 0x238], r10d
00000001402ef9ec mov      dword ptr [rbx + 0x23c], ebp
00000001402ef9f2 mov      dword ptr [rbx + 0x360], eax
00000001402ef9f8 mov      dword ptr [rbx + 0x364], eax
00000001402ef9fe mov      dword ptr [rbx + 0x368], eax
00000001402efa04 mov      dword ptr [rbx + 0x36c], eax
00000001402efa0a mov      dword ptr [rbx + 0x370], eax
00000001402efa10 mov      dword ptr [rbx + 0x374], eax
00000001402efa16 mov      dword ptr [rbx + 0x378], eax
00000001402efa1c mov      dword ptr [rbx + 0x37c], eax
00000001402efa22 mov      dword ptr [rbx + 0x380], eax
00000001402efa28 mov      eax, 0x24160
00000001402efa2d mov      dword ptr [rbx + 0x384], eax
00000001402efa33 mov      dword ptr [rbx + 0x388], eax
00000001402efa39 mov      dword ptr [rbx + 0x38c], eax
00000001402efa3f mov      dword ptr [rbx + 0x390], eax
00000001402efa45 mov      dword ptr [rbx + 0x394], eax
00000001402efa4b mov      dword ptr [rbx + 0x398], eax
00000001402efa51 mov      dword ptr [rbx + 0x39c], eax
00000001402efa57 mov      eax, 0x2455c
00000001402efa5c mov      dword ptr [rbx + 0x3a0], eax
00000001402efa62 mov      dword ptr [rbx + 0x3a4], eax
00000001402efa68 mov      dword ptr [rbx + 0x3a8], eax
00000001402efa6e mov      dword ptr [rbx + 0x3ac], eax
00000001402efa74 mov      dword ptr [rbx + 0x3b0], eax
00000001402efa7a mov      esi, 0x1000
00000001402efa7f mov      dword ptr [rbx + 0x3b4], eax
00000001402efa85 mov      dword ptr [rbx + 0x3b8], eax
00000001402efa8b mov      dword ptr [rbx + 0x3bc], eax
00000001402efa91 mov      dword ptr [rbx + 0x3c0], eax
00000001402efa97 mov      eax, 0x24560
00000001402efa9c mov      dword ptr [rbx + 0x3c4], eax
00000001402efaa2 mov      dword ptr [rbx + 0x3c8], eax
00000001402efaa8 mov      dword ptr [rbx + 0x3cc], eax
00000001402efaae mov      dword ptr [rbx + 0x3d0], eax
00000001402efab4 mov      dword ptr [rbx + 0x3d4], eax
00000001402efaba mov      dword ptr [rbx + 0x3d8], eax
00000001402efac0 mov      dword ptr [rbx + 0x3dc], eax
00000001402efac6 mov      eax, 0x20
00000001402efacb mov      dword ptr [rbx + 0x460], 0x800000
00000001402efad5 mov      dword ptr [rbx + 0x464], 0x1000000
00000001402efadf mov      dword ptr [rbx + 0x468], 0x2000000
00000001402efae9 mov      dword ptr [rbx + 0x46c], 0x4000000
00000001402efaf3 lea      r8d, [rax + 0x20]
00000001402efaf7 mov      dword ptr [rbx + 0x470], 0x8000000
00000001402efb01 mov      dword ptr [rbx + 0x474], 0x10000000
00000001402efb0b mov      dword ptr [rbx + 0x478], 0x20000000
00000001402efb15 mov      dword ptr [rbx + 0x47c], 0x40000000
00000001402efb1f mov      dword ptr [rbx + 0x480], 0x80000000
00000001402efb29 mov      dword ptr [rbx + 0x484], 1
00000001402efb33 mov      dword ptr [rbx + 0x488], 2
00000001402efb3d mov      dword ptr [rbx + 0x48c], 4
00000001402efb47 mov      dword ptr [rbx + 0x490], 8
00000001402efb51 mov      dword ptr [rbx + 0x494], 0x10
00000001402efb5b mov      dword ptr [rbx + 0x498], eax
00000001402efb61 mov      dword ptr [rbx + 0x49c], r8d
00000001402efb68 movdqa   xmm0, xmmword ptr [rip + 0x3e1150]
00000001402efb70 movups   xmmword ptr [rbx + 0x3e0], xmm0
00000001402efb77 movups   xmmword ptr [rbx + 0x3f0], xmm0
00000001402efb7e movups   xmmword ptr [rbx + 0x400], xmm0
00000001402efb85 movups   xmmword ptr [rbx + 0x410], xmm0
00000001402efb8c movdqa   xmm1, xmmword ptr [rip + 0x3e117c]
00000001402efb94 movups   xmmword ptr [rbx + 0x420], xmm1
00000001402efb9b movups   xmmword ptr [rbx + 0x430], xmm1
00000001402efba2 movups   xmmword ptr [rbx + 0x440], xmm1
00000001402efba9 movups   xmmword ptr [rbx + 0x450], xmm1
00000001402efbb0 mov      dword ptr [rbx + 0x4a0], eax
00000001402efbb6 mov      eax, 0x24148
00000001402efbbb mov      dword ptr [rbx + 0x4a4], r8d
00000001402efbc2 mov      dword ptr [rbx + 0x4a8], 0x80
00000001402efbcc mov      dword ptr [rbx + 0x4ac], 0x100
00000001402efbd6 mov      dword ptr [rbx + 0x4b0], 0x200
00000001402efbe0 mov      dword ptr [rbx + 0x4b4], 0x400
00000001402efbea mov      dword ptr [rbx + 0x4b8], 0x800
00000001402efbf4 mov      dword ptr [rbx + 0x4bc], esi
00000001402efbfa mov      dword ptr [rbx + 0x4c0], 0x2000
00000001402efc04 mov      dword ptr [rbx + 0x4c4], 0x4000
00000001402efc0e mov      dword ptr [rbx + 0x4c8], 0x8000
00000001402efc18 mov      dword ptr [rbx + 0x4cc], 0x10000
00000001402efc22 mov      dword ptr [rbx + 0x4d0], 0x20000
00000001402efc2c mov      dword ptr [rbx + 0x4d4], 0x40000
00000001402efc36 mov      dword ptr [rbx + 0x4d8], 0x80000
00000001402efc40 mov      dword ptr [rbx + 0x4dc], 0x100000
00000001402efc4a mov      dword ptr [rbx + 0x4e0], eax
00000001402efc50 mov      dword ptr [rbx + 0x4e4], eax
00000001402efc56 mov      dword ptr [rbx + 0x4e8], eax
00000001402efc5c mov      dword ptr [rbx + 0x4ec], eax
00000001402efc62 mov      dword ptr [rbx + 0x4f0], eax
00000001402efc68 mov      dword ptr [rbx + 0x4f4], eax
00000001402efc6e mov      eax, 0x2414c
00000001402efc73 mov      dword ptr [rbx + 0x4f8], eax
00000001402efc79 mov      dword ptr [rbx + 0x4fc], eax
00000001402efc7f mov      dword ptr [rbx + 0x500], eax
00000001402efc85 mov      dword ptr [rbx + 0x504], eax
00000001402efc8b mov      dword ptr [rbx + 0x508], eax
00000001402efc91 mov      dword ptr [rbx + 0x50c], eax
00000001402efc97 mov      dword ptr [rbx + 0x510], eax
00000001402efc9d mov      dword ptr [rbx + 0x514], eax
00000001402efca3 mov      dword ptr [rbx + 0x518], eax
00000001402efca9 mov      dword ptr [rbx + 0x51c], eax
00000001402efcaf mov      eax, 0x24548
00000001402efcb4 mov      dword ptr [rbx + 0x520], eax
00000001402efcba mov      dword ptr [rbx + 0x524], eax
00000001402efcc0 mov      dword ptr [rbx + 0x528], eax
00000001402efcc6 mov      dword ptr [rbx + 0x52c], eax
00000001402efccc mov      dword ptr [rbx + 0x530], eax
00000001402efcd2 mov      r8d, 0x38000
00000001402efcd8 mov      dword ptr [rbx + 0x534], eax
00000001402efcde mov      r9d, 0x1c0000
00000001402efce4 movdqa   xmm0, xmmword ptr [rip + 0x3e0fc4]
00000001402efcec mov      eax, 0x2454c
00000001402efcf1 mov      dword ptr [rbx + 0x538], eax
00000001402efcf7 mov      r14d, 0xe00000
00000001402efcfd mov      dword ptr [rbx + 0x53c], eax
00000001402efd03 mov      r15d, 0x7000000
00000001402efd09 mov      dword ptr [rbx + 0x540], eax
00000001402efd0f mov      r12d, 0x38000000
00000001402efd15 mov      dword ptr [rbx + 0x544], eax
00000001402efd1b mov      r13d, 0x38
00000001402efd21 mov      dword ptr [rbx + 0x548], eax
00000001402efd27 mov      dword ptr [rbx + 0x54c], eax
00000001402efd2d mov      dword ptr [rbx + 0x550], eax
00000001402efd33 mov      dword ptr [rbx + 0x554], eax
00000001402efd39 mov      dword ptr [rbx + 0x558], eax
00000001402efd3f mov      dword ptr [rbx + 0x55c], eax
00000001402efd45 mov      eax, 0x7000
00000001402efd4a mov      dword ptr [rbx + 0x5e0], eax
00000001402efd50 mov      dword ptr [rbx + 0x5e4], r8d
00000001402efd57 mov      dword ptr [rbx + 0x5e8], r9d
00000001402efd5e mov      dword ptr [rbx + 0x5ec], r14d
00000001402efd65 mov      dword ptr [rbx + 0x5f0], r15d
00000001402efd6c mov      dword ptr [rbx + 0x5f4], r12d
00000001402efd73 mov      dword ptr [rbx + 0x5f8], ecx
00000001402efd79 mov      dword ptr [rbx + 0x5fc], r13d
00000001402efd80 mov      dword ptr [rbx + 0x600], 0x1c0
00000001402efd8a mov      dword ptr [rbx + 0x604], 0xe00
00000001402efd94 mov      dword ptr [rbx + 0x608], eax
00000001402efd9a mov      dword ptr [rbx + 0x60c], r8d
00000001402efda1 mov      dword ptr [rbx + 0x610], r9d
00000001402efda8 mov      dword ptr [rbx + 0x614], r14d
00000001402efdaf mov      dword ptr [rbx + 0x618], r15d
00000001402efdb6 mov      dword ptr [rbx + 0x61c], r12d
00000001402efdbd mov      dword ptr [rbx + 0x560], 0x2410c
00000001402efdc7 mov      dword ptr [rbx + 0x564], 0x24140
00000001402efdd1 mov      dword ptr [rbx + 0x568], 0x24144
00000001402efddb mov      dword ptr [rbx + 0x56c], 0x24144
00000001402efde5 mov      dword ptr [rbx + 0x570], 0x24144
00000001402efdef mov      dword ptr [rbx + 0x574], 0x24144
00000001402efdf9 mov      dword ptr [rbx + 0x578], 0x24144
00000001402efe03 mov      dword ptr [rbx + 0x57c], 0x24144
00000001402efe0d mov      dword ptr [rbx + 0x580], 0x24144
00000001402efe17 mov      dword ptr [rbx + 0x584], 0x24144
00000001402efe21 mov      dword ptr [rbx + 0x588], 0x24144
00000001402efe2b mov      dword ptr [rbx + 0x58c], 0x24144
00000001402efe35 movups   xmmword ptr [rbx + 0x590], xmm0
00000001402efe3c mov      dword ptr [rbx + 0x5a0], 0x2450c
00000001402efe46 movdqa   xmm0, xmmword ptr [rip + 0x3e0eb2]
00000001402efe4e mov      dword ptr [rbx + 0x5a4], 0x24540
00000001402efe58 mov      dword ptr [rbx + 0x5a8], 0x24544
00000001402efe62 mov      dword ptr [rbx + 0x5ac], 0x24544
00000001402efe6c mov      dword ptr [rbx + 0x5b0], 0x24544
00000001402efe76 mov      dword ptr [rbx + 0x5b4], 0x24544
00000001402efe80 mov      dword ptr [rbx + 0x5b8], 0x24544
00000001402efe8a mov      dword ptr [rbx + 0x5bc], 0x24544
00000001402efe94 mov      dword ptr [rbx + 0x5c0], 0x24544
00000001402efe9e mov      dword ptr [rbx + 0x5c4], 0x24544
00000001402efea8 mov      dword ptr [rbx + 0x5c8], 0x24544
00000001402efeb2 mov      dword ptr [rbx + 0x5cc], 0x24544
00000001402efebc movups   xmmword ptr [rbx + 0x5d0], xmm0
00000001402efec3 mov      dword ptr [rbx + 0x620], 0xe0000000
00000001402efecd mov      dword ptr [rbx + 0x624], 0x70000000
00000001402efed7 mov      dword ptr [rbx + 0x628], ecx
00000001402efedd mov      dword ptr [rbx + 0x62c], r13d
00000001402efee4 mov      dword ptr [rbx + 0x630], 0x1c0
00000001402efeee mov      dword ptr [rbx + 0x634], 0xe00
00000001402efef8 mov      dword ptr [rbx + 0x638], eax
00000001402efefe mov      dword ptr [rbx + 0x63c], r8d
00000001402eff05 mov      dword ptr [rbx + 0x640], r9d
00000001402eff0c mov      dword ptr [rbx + 0x644], r14d
00000001402eff13 mov      dword ptr [rbx + 0x648], r15d
00000001402eff1a mov      dword ptr [rbx + 0x64c], r12d
00000001402eff21 mov      dword ptr [rbx + 0x650], ecx
00000001402eff27 mov      dword ptr [rbx + 0x654], r13d
00000001402eff2e mov      dword ptr [rbx + 0x658], 0x1c0
00000001402eff38 mov      dword ptr [rbx + 0x65c], 0xe00
00000001402eff42 mov      dword ptr [rbx + 0x660], 0x24114
00000001402eff4c movdqa   xmm0, xmmword ptr [rip + 0x3e0d4c]
00000001402eff54 lea      r14d, [r13 - 0x29]
00000001402eff58 mov      eax, 0x24118
00000001402eff5d lea      r15d, [rdx - 0xf]
00000001402eff61 mov      dword ptr [rbx + 0x664], eax
00000001402eff67 mov      r9d, 0x2410c
00000001402eff6d mov      dword ptr [rbx + 0x668], eax
00000001402eff73 mov      ecx, 0xf00
00000001402eff78 mov      dword ptr [rbx + 0x66c], eax
00000001402eff7e mov      r8d, 0xf000
00000001402eff84 mov      dword ptr [rbx + 0x670], eax
00000001402eff8a mov      dword ptr [rbx + 0x674], eax
00000001402eff90 mov      dword ptr [rbx + 0x678], eax
00000001402eff96 mov      dword ptr [rbx + 0x67c], eax
00000001402eff9c mov      dword ptr [rbx + 0x680], eax
00000001402effa2 mov      eax, 0x2411c
00000001402effa7 mov      dword ptr [rbx + 0x684], eax
00000001402effad mov      dword ptr [rbx + 0x688], eax
00000001402effb3 mov      eax, 0x24518
00000001402effb8 mov      dword ptr [rbx + 0x6a0], 0x24514
00000001402effc2 mov      dword ptr [rbx + 0x6a4], eax
00000001402effc8 mov      dword ptr [rbx + 0x6a8], eax
00000001402effce mov      dword ptr [rbx + 0x6ac], eax
00000001402effd4 mov      dword ptr [rbx + 0x6b0], eax
00000001402effda mov      dword ptr [rbx + 0x6b4], eax
00000001402effe0 mov      dword ptr [rbx + 0x6b8], eax
00000001402effe6 mov      dword ptr [rbx + 0x6bc], eax
00000001402effec mov      dword ptr [rbx + 0x6c0], eax
00000001402efff2 mov      eax, 0x2451c
00000001402efff7 mov      dword ptr [rbx + 0x6c4], eax
00000001402efffd mov      dword ptr [rbx + 0x6c8], eax
00000001402f0003 mov      eax, 0xf0000000
00000001402f0008 mov      dword ptr [rbx + 0x760], eax
00000001402f000e mov      dword ptr [rbx + 0x764], r14d
00000001402f0015 mov      dword ptr [rbx + 0x768], r15d
00000001402f001c mov      dword ptr [rbx + 0x76c], ecx
00000001402f0022 mov      dword ptr [rbx + 0x770], r8d
00000001402f0029 mov      dword ptr [rbx + 0x774], 0xf0000
00000001402f0033 mov      dword ptr [rbx + 0x778], 0xf00000
00000001402f003d mov      dword ptr [rbx + 0x77c], 0xf000000
00000001402f0047 mov      dword ptr [rbx + 0x780], eax
00000001402f004d mov      dword ptr [rbx + 0x784], r14d
00000001402f0054 mov      dword ptr [rbx + 0x788], r15d
00000001402f005b mov      dword ptr [rbx + 0x6e0], 0x240d0
00000001402f0065 mov      dword ptr [rbx + 0x6e4], r9d
00000001402f006c mov      dword ptr [rbx + 0x6e8], r9d
00000001402f0073 mov      dword ptr [rbx + 0x6ec], r9d
00000001402f007a mov      dword ptr [rbx + 0x6f0], r9d
00000001402f0081 mov      dword ptr [rbx + 0x6f4], r9d
00000001402f0088 mov      dword ptr [rbx + 0x6f8], r9d
00000001402f008f mov      r9d, 0x2450c
00000001402f0095 movups   xmmword ptr [rbx + 0x6fc], xmm0
00000001402f009c mov      dword ptr [rbx + 0x720], 0x244d0
00000001402f00a6 movdqa   xmm0, xmmword ptr [rip + 0x3e0c42]
00000001402f00ae mov      dword ptr [rbx + 0x724], r9d
00000001402f00b5 mov      dword ptr [rbx + 0x728], r9d
00000001402f00bc mov      dword ptr [rbx + 0x72c], r9d
00000001402f00c3 mov      dword ptr [rbx + 0x730], r9d
00000001402f00ca mov      dword ptr [rbx + 0x734], r9d
00000001402f00d1 mov      dword ptr [rbx + 0x738], r9d
00000001402f00d8 movups   xmmword ptr [rbx + 0x73c], xmm0
00000001402f00df mov      dword ptr [rbx + 0x7a0], eax
00000001402f00e5 mov      eax, 0x24068
00000001402f00ea mov      dword ptr [rbx + 0x7a4], 0x1e0
00000001402f00f4 mov      dword ptr [rbx + 0x7a8], 0x1e00
00000001402f00fe mov      dword ptr [rbx + 0x7ac], 0x1e000
00000001402f0108 mov      dword ptr [rbx + 0x7b0], 0x1e0000
00000001402f0112 mov      dword ptr [rbx + 0x7b4], 0x1e00000
00000001402f011c mov      dword ptr [rbx + 0x7b8], 0x1e000000
00000001402f0126 mov      dword ptr [rbx + 0x7bc], r14d
00000001402f012d mov      dword ptr [rbx + 0x7c0], r15d
00000001402f0134 mov      dword ptr [rbx + 0x7c4], ecx
00000001402f013a mov      dword ptr [rbx + 0x7c8], r8d
00000001402f0141 mov      dword ptr [rbx + 0x7e0], 0x24098
00000001402f014b mov      dword ptr [rbx + 0x7e4], 0x2409c
00000001402f0155 mov      dword ptr [rbx + 0x7e8], 0x24498
00000001402f015f mov      dword ptr [rbx + 0x7ec], 0x2449c
00000001402f0169 mov      dword ptr [rbx + 0x800], r11d
00000001402f0170 mov      dword ptr [rbx + 0x804], edx
00000001402f0176 mov      dword ptr [rbx + 0x7f0], eax
00000001402f017c mov      dword ptr [rbx + 0x7f4], eax
00000001402f0182 mov      eax, 0x24468
00000001402f0187 lea      r9, [rbx + 0x308]
00000001402f018e mov      dword ptr [rbx + 0x7f8], eax
00000001402f0194 xor      r8b, r8b
00000001402f0197 mov      dword ptr [rbx + 0x7fc], eax
00000001402f019d mov      dword ptr [rbx + 0x808], ebp
00000001402f01a3 mov      dword ptr [rbx + 0x80c], r11d
00000001402f01aa movzx    ecx, r8b
00000001402f01ae mov      eax, r10d
00000001402f01b1 shl      ecx, 3
00000001402f01b4 inc      r8b
00000001402f01b7 shl      eax, cl
00000001402f01b9 mov      dword ptr [r9], eax
00000001402f01bc mov      dword ptr [r9 - 0x20], 0x241e8
00000001402f01c4 lea      r9, [r9 + 4]
00000001402f01c8 cmp      r8b, 2
00000001402f01cc jbe      0x1402f01aa
00000001402f01ce mov      r8b, 3
00000001402f01d1 lea      r9, [rbx + 0x314]
00000001402f01d8 movzx    ecx, r8b
00000001402f01dc mov      eax, edx
00000001402f01de inc      r8b
00000001402f01e1 mov      dword ptr [r9 - 0x20], 0x241ec
00000001402f01e9 lea      ecx, [rcx*8 - 0x18]
00000001402f01f0 shl      eax, cl
00000001402f01f2 mov      dword ptr [r9], eax
00000001402f01f5 lea      r9, [r9 + 4]
00000001402f01f9 cmp      r8b, 6
00000001402f01fd jbe      0x1402f01d8
00000001402f01ff mov      r14d, 0x241f0
00000001402f0205 lea      r9, [rbx + 0x338]
00000001402f020c mov      dword ptr [rbx + 0x304], r14d
00000001402f0213 xor      r8b, r8b
00000001402f0216 mov      dword ptr [rbx + 0x324], edx
00000001402f021c movzx    ecx, r8b
00000001402f0220 mov      eax, edx
00000001402f0222 shl      ecx, 3
00000001402f0225 inc      r8b
00000001402f0228 shl      eax, cl
00000001402f022a mov      dword ptr [r9], eax
00000001402f022d mov      dword ptr [r9 - 0x10], 0x241f4
00000001402f0235 lea      r9, [r9 + 4]
00000001402f0239 cmp      r8b, 3
00000001402f023d jbe      0x1402f021c
00000001402f023f xor      r8b, r8b
00000001402f0242 lea      r9, [rbx + 0x350]
00000001402f0249 movzx    ecx, r8b
00000001402f024d mov      eax, ebp
00000001402f024f shl      ecx, 3
00000001402f0252 inc      r8b
00000001402f0255 shl      eax, cl
00000001402f0257 mov      dword ptr [r9], eax
00000001402f025a mov      dword ptr [r9 - 8], r14d
00000001402f025e lea      r9, [r9 + 4]
00000001402f0262 cmp      r8b, 1
00000001402f0266 jbe      0x1402f0249
00000001402f0268 mov      dword ptr [rbx + 0x358], r14d
00000001402f026f lea      rbp, [rip + 0x62fd8a]
00000001402f0276 mov      dword ptr [rbx + 0x35c], r10d
00000001402f027d mov      dword ptr [rbx + 0x810], 0x2420c
00000001402f0287 mov      dword ptr [rbx + 0x814], 0xffc
00000001402f0291 mov      dword ptr [rbx + 0x818], 0x240c8
00000001402f029b mov      dword ptr [rbx + 0x81c], r11d
00000001402f02a2 cmp      dword ptr [rdi + 0x13f0], 0x800000
00000001402f02ac je       0x1402f10a8
00000001402f02b2 mov      dword ptr [rbx + 0x820], 0x26084
00000001402f02bc mov      eax, 0x260a0
00000001402f02c1 mov      dword ptr [rbx + 0x824], edx
00000001402f02c7 mov      dword ptr [rbx + 0x828], eax
00000001402f02cd mov      dword ptr [rbx + 0x82c], 0xfc0
00000001402f02d7 mov      dword ptr [rbx + 0x830], eax
00000001402f02dd mov      dword ptr [rbx + 0x834], 0x3f000
00000001402f02e7 jmp      0x1402f10a8
00000001402f02ec mov      r8d, 0x4054
00000001402f02f2 mov      dword ptr [rbx + 0x18], 0x40a8
00000001402f02f9 mov      eax, 0x409c
00000001402f02fe mov      dword ptr [rbx + 0x34], 0x44a8
00000001402f0305 mov      dword ptr [rbx], eax
00000001402f0307 mov      r10d, 0xff00
00000001402f030d mov      dword ptr [rbx + 4], eax
00000001402f0310 mov      edx, 0xff
00000001402f0315 mov      eax, 0x40a0
00000001402f031a mov      dword ptr [rbx + 0x70], r10d
00000001402f031e mov      dword ptr [rbx + 8], eax
00000001402f0321 lea      r13d, [r8 + 0x18]
00000001402f0325 mov      dword ptr [rbx + 0xc], eax
00000001402f0328 lea      r12d, [r8 + 0x1c]
00000001402f032c mov      eax, 0x40a4
00000001402f0331 mov      dword ptr [rbx + 0x78], r10d
00000001402f0335 mov      dword ptr [rbx + 0x10], eax
00000001402f0338 lea      r15d, [r8 + 0x20]
00000001402f033c mov      dword ptr [rbx + 0x14], eax
00000001402f033f mov      r11d, 0xff000000
00000001402f0345 mov      eax, 0x449c
00000001402f034a mov      dword ptr [rbx + 0x74], r11d
00000001402f034e mov      dword ptr [rbx + 0x1c], eax
00000001402f0351 mov      ebp, 0xff0000
00000001402f0356 mov      dword ptr [rbx + 0x20], eax
00000001402f0359 mov      eax, 0x44a0
00000001402f035e mov      dword ptr [rbx + 0x24], eax
00000001402f0361 mov      dword ptr [rbx + 0x28], eax
00000001402f0364 mov      eax, 0x44a4
00000001402f0369 mov      dword ptr [rbx + 0x2c], eax
00000001402f036c mov      dword ptr [rbx + 0x30], eax
00000001402f036f mov      dword ptr [rbx + 0x7c], r11d
00000001402f0373 lea      ecx, [rax - 0x50]
00000001402f0376 mov      dword ptr [rbx + 0x80], r10d
00000001402f037d mov      eax, 0x1ff
00000001402f0382 mov      dword ptr [rbx + 0x84], r11d
00000001402f0389 mov      dword ptr [rbx + 0xcc], eax
00000001402f038f lea      r14d, [rcx + 0x18]
00000001402f0393 mov      dword ptr [rbx + 0xd0], eax
00000001402f0399 lea      esi, [rcx + 0x1c]
00000001402f039c lea      eax, [r8 + 0x4c]
00000001402f03a0 mov      dword ptr [rbx + 0x88], r10d
00000001402f03a7 mov      dword ptr [rbx + 0x244], eax
00000001402f03ad lea      r9d, [rcx + 0x20]
00000001402f03b1 mov      dword ptr [rbx + 0x248], eax
00000001402f03b7 lea      eax, [r8 + 0x50]
00000001402f03bb mov      dword ptr [rbx + 0x24c], eax
00000001402f03c1 mov      dword ptr [rbx + 0x250], eax
00000001402f03c7 lea      eax, [r8 + 0x54]
00000001402f03cb mov      dword ptr [rbx + 0xa8], r8d
00000001402f03d2 mov      dword ptr [rbx + 0xac], 0x4058
00000001402f03dc mov      dword ptr [rbx + 0xb0], ecx
00000001402f03e2 mov      dword ptr [rbx + 0xb4], 0x4458
00000001402f03ec mov      dword ptr [rbx + 0xc8], 0x7fc0000
00000001402f03f6 mov      dword ptr [rbx + 0x38], r13d
00000001402f03fa mov      dword ptr [rbx + 0x3c], r13d
00000001402f03fe mov      dword ptr [rbx + 0x40], r12d
00000001402f0402 mov      dword ptr [rbx + 0x44], r12d
00000001402f0406 mov      dword ptr [rbx + 0x48], r15d
00000001402f040a mov      dword ptr [rbx + 0x4c], r15d
00000001402f040e mov      dword ptr [rbx + 0x50], 0x4078
00000001402f0415 mov      dword ptr [rbx + 0x54], r14d
00000001402f0419 mov      dword ptr [rbx + 0x58], r14d
00000001402f041d mov      dword ptr [rbx + 0x5c], esi
00000001402f0420 mov      dword ptr [rbx + 0x60], esi
00000001402f0423 mov      dword ptr [rbx + 0x64], r9d
00000001402f0427 mov      dword ptr [rbx + 0x68], r9d
00000001402f042b mov      dword ptr [rbx + 0x6c], 0x4478
00000001402f0432 mov      dword ptr [rbx + 0x8c], edx
00000001402f0438 mov      dword ptr [rbx + 0x90], ebp
00000001402f043e mov      dword ptr [rbx + 0x94], edx
00000001402f0444 mov      dword ptr [rbx + 0x98], ebp
00000001402f044a mov      dword ptr [rbx + 0x9c], edx
00000001402f0450 mov      dword ptr [rbx + 0xa0], ebp
00000001402f0456 mov      dword ptr [rbx + 0xa4], edx
00000001402f045c mov      dword ptr [rbx + 0xb8], r8d
00000001402f0463 mov      dword ptr [rbx + 0xbc], r8d
00000001402f046a mov      dword ptr [rbx + 0xc0], ecx
00000001402f0470 mov      dword ptr [rbx + 0xc4], ecx
00000001402f0476 mov      dword ptr [rbx + 0xd4], 0x3fe00
00000001402f0480 mov      dword ptr [rbx + 0x240], 0x409c
00000001402f048a mov      dword ptr [rbx + 0x254], eax
00000001402f0490 mov      dword ptr [rbx + 0x258], eax
00000001402f0496 lea      eax, [rcx + 0x4c]
00000001402f0499 mov      dword ptr [rbx + 0x260], eax
00000001402f049f mov      dword ptr [rbx + 0x264], eax
00000001402f04a5 lea      eax, [rcx + 0x50]
00000001402f04a8 mov      dword ptr [rbx + 0x268], eax
00000001402f04ae mov      dword ptr [rbx + 0x26c], eax
00000001402f04b4 lea      eax, [rcx + 0x54]
00000001402f04b7 mov      dword ptr [rbx + 0x270], eax
00000001402f04bd lea      ecx, [r8 + 0x24]
00000001402f04c1 mov      dword ptr [rbx + 0x274], eax
00000001402f04c7 lea      r8d, [r14 + 0xc]
00000001402f04cb movdqa   xmm0, xmmword ptr [rip + 0x3e070d]
00000001402f04d3 lea      eax, [rcx + 0x34]
00000001402f04d6 mov      dword ptr [rbx + 0x2ac], r8d
00000001402f04dd mov      dword ptr [rbx + 0x25c], 0x449c
00000001402f04e7 mov      dword ptr [rbx + 0x2b0], ebp
00000001402f04ed mov      dword ptr [rbx + 0x2b4], edx
00000001402f04f3 mov      dword ptr [rbx + 0x2b8], ebp
00000001402f04f9 mov      dword ptr [rbx + 0x2bc], edx
00000001402f04ff mov      dword ptr [rbx + 0x2c0], ebp
00000001402f0505 mov      dword ptr [rbx + 0x2c4], edx
00000001402f050b mov      dword ptr [rbx + 0x2c8], ebp
00000001402f0511 mov      dword ptr [rbx + 0x278], r13d
00000001402f0518 mov      dword ptr [rbx + 0x27c], r13d
00000001402f051f mov      dword ptr [rbx + 0x280], r12d
00000001402f0526 mov      dword ptr [rbx + 0x284], r12d
00000001402f052d mov      dword ptr [rbx + 0x288], r15d
00000001402f0534 mov      dword ptr [rbx + 0x28c], r15d
00000001402f053b mov      dword ptr [rbx + 0x290], ecx
00000001402f0541 mov      dword ptr [rbx + 0x294], r14d
00000001402f0548 mov      dword ptr [rbx + 0x298], r14d
00000001402f054f mov      dword ptr [rbx + 0x29c], esi
00000001402f0555 mov      dword ptr [rbx + 0x2a0], esi
00000001402f055b mov      dword ptr [rbx + 0x2a4], r9d
00000001402f0562 mov      dword ptr [rbx + 0x2a8], r9d
00000001402f0569 mov      dword ptr [rbx + 0x2cc], r10d
00000001402f0570 mov      dword ptr [rbx + 0x2d0], r11d
00000001402f0577 mov      dword ptr [rbx + 0x2d4], r10d
00000001402f057e mov      dword ptr [rbx + 0x2d8], r11d
00000001402f0585 mov      dword ptr [rbx + 0x2dc], r10d
00000001402f058c mov      dword ptr [rbx + 0x2e0], r11d
00000001402f0593 mov      dword ptr [rbx + 0x2e4], r10d
00000001402f059a mov      dword ptr [rbx + 0xd8], eax
00000001402f05a0 mov      dword ptr [rbx + 0xdc], eax
00000001402f05a6 mov      dword ptr [rbx + 0xe0], eax
00000001402f05ac lea      eax, [rsi + 0x3c]
00000001402f05af movups   xmmword ptr [rbx + 0xe4], xmm0
00000001402f05b6 mov      dword ptr [rbx + 0xf4], eax
00000001402f05bc movdqa   xmm0, xmmword ptr [rip + 0x3e066c]
00000001402f05c4 mov      dword ptr [rbx + 0xf8], eax
00000001402f05ca mov      dword ptr [rbx + 0xfc], eax
00000001402f05d0 lea      eax, [rcx + 0x3c]
00000001402f05d3 movups   xmmword ptr [rbx + 0x100], xmm0
00000001402f05da mov      dword ptr [rbx + 0x148], r10d
00000001402f05e1 movdqa   xmm0, xmmword ptr [rip + 0x3e0607]
00000001402f05e9 mov      dword ptr [rbx + 0x14c], ebp
00000001402f05ef mov      dword ptr [rbx + 0x150], r11d
00000001402f05f6 mov      dword ptr [rbx + 0x154], edx
00000001402f05fc mov      dword ptr [rbx + 0x158], r10d
00000001402f0603 mov      dword ptr [rbx + 0x15c], ebp
00000001402f0609 mov      dword ptr [rbx + 0x160], r11d
00000001402f0610 mov      dword ptr [rbx + 0x180], eax
00000001402f0616 mov      dword ptr [rbx + 0x184], eax
00000001402f061c lea      eax, [rcx + 0x44]
00000001402f061f movups   xmmword ptr [rbx + 0x188], xmm0
00000001402f0626 mov      dword ptr [rbx + 0x198], eax
00000001402f062c movdqa   xmm0, xmmword ptr [rip + 0x3e060c]
00000001402f0634 mov      dword ptr [rbx + 0x19c], eax
00000001402f063a lea      eax, [rsi + 0x44]
00000001402f063d mov      dword ptr [rbx + 0x1a0], eax
00000001402f0643 mov      dword ptr [rbx + 0x1a4], eax
00000001402f0649 lea      eax, [rsi + 0x4c]
00000001402f064c movups   xmmword ptr [rbx + 0x1a8], xmm0
00000001402f0653 mov      dword ptr [rbx + 0x1b8], eax
00000001402f0659 mov      dword ptr [rbx + 0x1bc], eax
00000001402f065f mov      dword ptr [rbx + 0x200], ebp
00000001402f0665 mov      dword ptr [rbx + 0x204], r11d
00000001402f066c mov      dword ptr [rbx + 0x208], edx
00000001402f0672 mov      dword ptr [rbx + 0x20c], r10d
00000001402f0679 mov      dword ptr [rbx + 0x210], ebp
00000001402f067f lea      eax, [rcx + 4]
00000001402f0682 mov      dword ptr [rbx + 0x214], r11d
00000001402f0689 mov      dword ptr [rbx + 0x218], edx
00000001402f068f mov      dword ptr [rbx + 0x21c], r10d
00000001402f0696 mov      dword ptr [rbx + 0x110], ecx
00000001402f069c lea      ecx, [rax + 4]
00000001402f069f mov      dword ptr [rbx + 0x114], eax
00000001402f06a5 mov      dword ptr [rbx + 0x118], eax
00000001402f06ab mov      dword ptr [rbx + 0x11c], eax
00000001402f06b1 mov      dword ptr [rbx + 0x120], eax
00000001402f06b7 lea      eax, [rsi + 0xc]
00000001402f06ba mov      dword ptr [rbx + 0x124], ecx
00000001402f06c0 mov      dword ptr [rbx + 0x128], ecx
00000001402f06c6 mov      dword ptr [rbx + 0x12c], r8d
00000001402f06cd lea      r8d, [r14 + 0x14]
00000001402f06d1 mov      dword ptr [rbx + 0x130], eax
00000001402f06d7 mov      dword ptr [rbx + 0x134], eax
00000001402f06dd mov      dword ptr [rbx + 0x138], eax
00000001402f06e3 mov      dword ptr [rbx + 0x13c], eax
00000001402f06e9 lea      eax, [rcx + 4]
00000001402f06ec mov      dword ptr [rbx + 0x140], r8d
00000001402f06f3 mov      dword ptr [rbx + 0x144], r8d
00000001402f06fa mov      dword ptr [rbx + 0x164], r11d
00000001402f0701 mov      dword ptr [rbx + 0x168], edx
00000001402f0707 mov      dword ptr [rbx + 0x16c], r10d
00000001402f070e mov      dword ptr [rbx + 0x170], ebp
00000001402f0714 mov      dword ptr [rbx + 0x174], r11d
00000001402f071b mov      dword ptr [rbx + 0x178], edx
00000001402f0721 mov      dword ptr [rbx + 0x17c], r10d
00000001402f0728 mov      dword ptr [rbx + 0x1c0], ecx
00000001402f072e mov      dword ptr [rbx + 0x1c4], eax
00000001402f0734 mov      dword ptr [rbx + 0x1c8], eax
00000001402f073a mov      dword ptr [rbx + 0x1cc], eax
00000001402f0740 mov      dword ptr [rbx + 0x1d0], eax
00000001402f0746 lea      eax, [rcx + 8]
00000001402f0749 mov      dword ptr [rbx + 0x1d4], eax
00000001402f074f mov      dword ptr [rbx + 0x1d8], eax
00000001402f0755 mov      dword ptr [rbx + 0x1dc], eax
00000001402f075b lea      eax, [rsi + 0x14]
00000001402f075e mov      dword ptr [rbx + 0x1e0], r8d
00000001402f0765 mov      dword ptr [rbx + 0x1e4], eax
00000001402f076b mov      dword ptr [rbx + 0x1e8], eax
00000001402f0771 mov      dword ptr [rbx + 0x1ec], eax
00000001402f0777 mov      dword ptr [rbx + 0x1f0], eax
00000001402f077d lea      eax, [rsi + 0x18]
00000001402f0780 mov      dword ptr [rbx + 0x1f4], eax
00000001402f0786 mov      dword ptr [rbx + 0x1f8], eax
00000001402f078c mov      dword ptr [rbx + 0x1fc], eax
00000001402f0792 mov      eax, 0x415c
00000001402f0797 mov      dword ptr [rbx + 0x220], r11d
00000001402f079e mov      dword ptr [rbx + 0x224], edx
00000001402f07a4 mov      dword ptr [rbx + 0x228], r10d
00000001402f07ab mov      dword ptr [rbx + 0x22c], ebp
00000001402f07b1 mov      dword ptr [rbx + 0x230], r11d
00000001402f07b8 mov      dword ptr [rbx + 0x234], edx
00000001402f07be mov      dword ptr [rbx + 0x238], r10d
00000001402f07c5 mov      dword ptr [rbx + 0x23c], ebp
00000001402f07cb mov      dword ptr [rbx + 0x360], eax
00000001402f07d1 mov      dword ptr [rbx + 0x364], eax
00000001402f07d7 mov      dword ptr [rbx + 0x368], eax
00000001402f07dd mov      dword ptr [rbx + 0x36c], eax
00000001402f07e3 mov      dword ptr [rbx + 0x370], eax
00000001402f07e9 mov      dword ptr [rbx + 0x374], eax
00000001402f07ef mov      dword ptr [rbx + 0x378], eax
00000001402f07f5 mov      dword ptr [rbx + 0x37c], eax
00000001402f07fb mov      dword ptr [rbx + 0x380], eax
00000001402f0801 mov      eax, 0x4160
00000001402f0806 mov      dword ptr [rbx + 0x384], eax
00000001402f080c mov      dword ptr [rbx + 0x388], eax
00000001402f0812 mov      dword ptr [rbx + 0x38c], eax
00000001402f0818 mov      dword ptr [rbx + 0x390], eax
00000001402f081e mov      dword ptr [rbx + 0x394], eax
00000001402f0824 mov      dword ptr [rbx + 0x398], eax
00000001402f082a mov      dword ptr [rbx + 0x39c], eax
00000001402f0830 mov      eax, 0x455c
00000001402f0835 mov      dword ptr [rbx + 0x3a0], eax
00000001402f083b mov      dword ptr [rbx + 0x3a4], eax
00000001402f0841 mov      dword ptr [rbx + 0x3a8], eax
00000001402f0847 mov      dword ptr [rbx + 0x3ac], eax
00000001402f084d mov      dword ptr [rbx + 0x3b0], eax
00000001402f0853 mov      dword ptr [rbx + 0x3b4], eax
00000001402f0859 mov      esi, 0x1000
00000001402f085e mov      dword ptr [rbx + 0x3b8], eax
00000001402f0864 mov      dword ptr [rbx + 0x3bc], eax
00000001402f086a mov      dword ptr [rbx + 0x3c0], eax
00000001402f0870 mov      eax, 0x4560
00000001402f0875 mov      dword ptr [rbx + 0x3c4], eax
00000001402f087b mov      dword ptr [rbx + 0x3c8], eax
00000001402f0881 mov      dword ptr [rbx + 0x3cc], eax
00000001402f0887 mov      dword ptr [rbx + 0x3d0], eax
00000001402f088d mov      dword ptr [rbx + 0x3d4], eax
00000001402f0893 mov      dword ptr [rbx + 0x3d8], eax
00000001402f0899 mov      dword ptr [rbx + 0x3dc], eax
00000001402f089f mov      eax, 0x20
00000001402f08a4 mov      dword ptr [rbx + 0x460], 0x800000
00000001402f08ae mov      dword ptr [rbx + 0x464], 0x1000000
00000001402f08b8 mov      dword ptr [rbx + 0x468], 0x2000000
00000001402f08c2 mov      dword ptr [rbx + 0x46c], 0x4000000
00000001402f08cc lea      r8d, [rax + 0x20]
00000001402f08d0 mov      dword ptr [rbx + 0x470], 0x8000000
00000001402f08da mov      dword ptr [rbx + 0x474], 0x10000000
00000001402f08e4 mov      dword ptr [rbx + 0x478], 0x20000000
00000001402f08ee mov      dword ptr [rbx + 0x47c], 0x40000000
00000001402f08f8 mov      dword ptr [rbx + 0x480], 0x80000000
00000001402f0902 mov      dword ptr [rbx + 0x484], 1
00000001402f090c mov      dword ptr [rbx + 0x488], 2
00000001402f0916 mov      dword ptr [rbx + 0x48c], 4
00000001402f0920 mov      dword ptr [rbx + 0x490], 8
00000001402f092a mov      dword ptr [rbx + 0x494], 0x10
00000001402f0934 mov      dword ptr [rbx + 0x498], eax
00000001402f093a mov      dword ptr [rbx + 0x49c], r8d
00000001402f0941 movdqa   xmm0, xmmword ptr [rip + 0x3e02d7]
00000001402f0949 movups   xmmword ptr [rbx + 0x3e0], xmm0
00000001402f0950 movups   xmmword ptr [rbx + 0x3f0], xmm0
00000001402f0957 movups   xmmword ptr [rbx + 0x400], xmm0
00000001402f095e movups   xmmword ptr [rbx + 0x410], xmm0
00000001402f0965 movdqa   xmm1, xmmword ptr [rip + 0x3e0303]
00000001402f096d movups   xmmword ptr [rbx + 0x420], xmm1
00000001402f0974 movups   xmmword ptr [rbx + 0x430], xmm1
00000001402f097b movups   xmmword ptr [rbx + 0x440], xmm1
00000001402f0982 movups   xmmword ptr [rbx + 0x450], xmm1
00000001402f0989 mov      dword ptr [rbx + 0x4a0], eax
00000001402f098f mov      eax, 0x4148
00000001402f0994 mov      dword ptr [rbx + 0x4a4], r8d
00000001402f099b mov      dword ptr [rbx + 0x4a8], 0x80
00000001402f09a5 mov      dword ptr [rbx + 0x4ac], 0x100
00000001402f09af mov      dword ptr [rbx + 0x4b0], 0x200
00000001402f09b9 mov      dword ptr [rbx + 0x4b4], 0x400
00000001402f09c3 mov      dword ptr [rbx + 0x4b8], 0x800
00000001402f09cd mov      dword ptr [rbx + 0x4bc], esi
00000001402f09d3 mov      dword ptr [rbx + 0x4c0], 0x2000
00000001402f09dd mov      dword ptr [rbx + 0x4c4], 0x4000
00000001402f09e7 mov      dword ptr [rbx + 0x4c8], 0x8000
00000001402f09f1 mov      dword ptr [rbx + 0x4cc], 0x10000
00000001402f09fb mov      dword ptr [rbx + 0x4d0], 0x20000
00000001402f0a05 mov      dword ptr [rbx + 0x4d4], 0x40000
00000001402f0a0f mov      dword ptr [rbx + 0x4d8], 0x80000
00000001402f0a19 mov      dword ptr [rbx + 0x4dc], 0x100000
00000001402f0a23 mov      dword ptr [rbx + 0x4e0], eax
00000001402f0a29 mov      dword ptr [rbx + 0x4e4], eax
00000001402f0a2f mov      dword ptr [rbx + 0x4e8], eax
00000001402f0a35 mov      dword ptr [rbx + 0x4ec], eax
00000001402f0a3b mov      dword ptr [rbx + 0x4f0], eax
00000001402f0a41 mov      dword ptr [rbx + 0x4f4], eax
00000001402f0a47 mov      eax, 0x414c
00000001402f0a4c mov      dword ptr [rbx + 0x4f8], eax
00000001402f0a52 mov      dword ptr [rbx + 0x4fc], eax
00000001402f0a58 mov      dword ptr [rbx + 0x500], eax
00000001402f0a5e mov      dword ptr [rbx + 0x504], eax
00000001402f0a64 mov      dword ptr [rbx + 0x508], eax
00000001402f0a6a mov      dword ptr [rbx + 0x50c], eax
00000001402f0a70 mov      dword ptr [rbx + 0x510], eax
00000001402f0a76 mov      dword ptr [rbx + 0x514], eax
00000001402f0a7c mov      dword ptr [rbx + 0x518], eax
00000001402f0a82 mov      dword ptr [rbx + 0x51c], eax
00000001402f0a88 mov      eax, 0x4548
00000001402f0a8d mov      dword ptr [rbx + 0x520], eax
00000001402f0a93 mov      dword ptr [rbx + 0x524], eax
00000001402f0a99 mov      dword ptr [rbx + 0x528], eax
00000001402f0a9f mov      dword ptr [rbx + 0x52c], eax
00000001402f0aa5 mov      dword ptr [rbx + 0x530], eax
00000001402f0aab mov      dword ptr [rbx + 0x534], eax
00000001402f0ab1 mov      ecx, 7
00000001402f0ab6 movdqa   xmm0, xmmword ptr [rip + 0x3e0152]
00000001402f0abe mov      eax, 0x454c
00000001402f0ac3 mov      dword ptr [rbx + 0x538], eax
00000001402f0ac9 mov      r8d, 0x38000
00000001402f0acf mov      dword ptr [rbx + 0x53c], eax
00000001402f0ad5 mov      r9d, 0x1c0000
00000001402f0adb mov      dword ptr [rbx + 0x540], eax
00000001402f0ae1 lea      r13d, [rcx + 0x31]
00000001402f0ae5 mov      dword ptr [rbx + 0x544], eax
00000001402f0aeb mov      r14d, 0xe00000
00000001402f0af1 mov      dword ptr [rbx + 0x548], eax
00000001402f0af7 mov      r15d, 0x7000000
00000001402f0afd mov      dword ptr [rbx + 0x54c], eax
00000001402f0b03 mov      r12d, 0x38000000
00000001402f0b09 mov      dword ptr [rbx + 0x550], eax
00000001402f0b0f mov      dword ptr [rbx + 0x554], eax
00000001402f0b15 mov      dword ptr [rbx + 0x558], eax
00000001402f0b1b mov      dword ptr [rbx + 0x55c], eax
00000001402f0b21 mov      eax, 0x7000
00000001402f0b26 mov      dword ptr [rbx + 0x5e0], eax
00000001402f0b2c mov      dword ptr [rbx + 0x5e4], r8d
00000001402f0b33 mov      dword ptr [rbx + 0x5e8], r9d
00000001402f0b3a mov      dword ptr [rbx + 0x5ec], r14d
00000001402f0b41 mov      dword ptr [rbx + 0x5f0], r15d
00000001402f0b48 mov      dword ptr [rbx + 0x5f4], r12d
00000001402f0b4f mov      dword ptr [rbx + 0x5f8], ecx
00000001402f0b55 mov      dword ptr [rbx + 0x5fc], r13d
00000001402f0b5c mov      dword ptr [rbx + 0x600], 0x1c0
00000001402f0b66 mov      dword ptr [rbx + 0x604], 0xe00
00000001402f0b70 mov      dword ptr [rbx + 0x608], eax
00000001402f0b76 mov      dword ptr [rbx + 0x60c], r8d
00000001402f0b7d mov      dword ptr [rbx + 0x610], r9d
00000001402f0b84 mov      dword ptr [rbx + 0x614], r14d
00000001402f0b8b mov      dword ptr [rbx + 0x618], r15d
00000001402f0b92 mov      dword ptr [rbx + 0x61c], r12d
00000001402f0b99 mov      dword ptr [rbx + 0x560], 0x410c
00000001402f0ba3 mov      dword ptr [rbx + 0x564], 0x4140
00000001402f0bad mov      dword ptr [rbx + 0x568], 0x4144
00000001402f0bb7 mov      dword ptr [rbx + 0x56c], 0x4144
00000001402f0bc1 mov      dword ptr [rbx + 0x570], 0x4144
00000001402f0bcb mov      dword ptr [rbx + 0x574], 0x4144
00000001402f0bd5 mov      dword ptr [rbx + 0x578], 0x4144
00000001402f0bdf mov      dword ptr [rbx + 0x57c], 0x4144
00000001402f0be9 mov      dword ptr [rbx + 0x580], 0x4144
00000001402f0bf3 mov      dword ptr [rbx + 0x584], 0x4144
00000001402f0bfd mov      dword ptr [rbx + 0x588], 0x4144
00000001402f0c07 mov      dword ptr [rbx + 0x58c], 0x4144
00000001402f0c11 movups   xmmword ptr [rbx + 0x590], xmm0
00000001402f0c18 mov      dword ptr [rbx + 0x5a0], 0x450c
00000001402f0c22 movdqa   xmm0, xmmword ptr [rip + 0x3e0036]
00000001402f0c2a mov      dword ptr [rbx + 0x5a4], 0x4540
00000001402f0c34 mov      dword ptr [rbx + 0x5a8], 0x4544
00000001402f0c3e mov      dword ptr [rbx + 0x5ac], 0x4544
00000001402f0c48 mov      dword ptr [rbx + 0x5b0], 0x4544
00000001402f0c52 mov      dword ptr [rbx + 0x5b4], 0x4544
00000001402f0c5c mov      dword ptr [rbx + 0x5b8], 0x4544
00000001402f0c66 mov      dword ptr [rbx + 0x5bc], 0x4544
00000001402f0c70 mov      dword ptr [rbx + 0x5c0], 0x4544
00000001402f0c7a mov      dword ptr [rbx + 0x5c4], 0x4544
00000001402f0c84 mov      dword ptr [rbx + 0x5c8], 0x4544
00000001402f0c8e mov      dword ptr [rbx + 0x5cc], 0x4544
00000001402f0c98 movups   xmmword ptr [rbx + 0x5d0], xmm0
00000001402f0c9f mov      dword ptr [rbx + 0x620], 0xe0000000
00000001402f0ca9 mov      dword ptr [rbx + 0x624], 0x70000000
00000001402f0cb3 mov      dword ptr [rbx + 0x628], ecx
00000001402f0cb9 mov      dword ptr [rbx + 0x62c], r13d
00000001402f0cc0 mov      dword ptr [rbx + 0x630], 0x1c0
00000001402f0cca mov      dword ptr [rbx + 0x634], 0xe00
00000001402f0cd4 mov      dword ptr [rbx + 0x638], eax
00000001402f0cda mov      dword ptr [rbx + 0x63c], r8d
00000001402f0ce1 mov      dword ptr [rbx + 0x640], r9d
00000001402f0ce8 mov      dword ptr [rbx + 0x644], r14d
00000001402f0cef mov      dword ptr [rbx + 0x648], r15d
00000001402f0cf6 mov      dword ptr [rbx + 0x64c], r12d
00000001402f0cfd mov      dword ptr [rbx + 0x650], ecx
00000001402f0d03 mov      dword ptr [rbx + 0x654], r13d
00000001402f0d0a mov      dword ptr [rbx + 0x658], 0x1c0
00000001402f0d14 mov      dword ptr [rbx + 0x65c], 0xe00
00000001402f0d1e mov      dword ptr [rbx + 0x660], 0x4114
00000001402f0d28 movdqa   xmm0, xmmword ptr [rip + 0x3dfed0]
00000001402f0d30 lea      r14d, [rcx + 8]
00000001402f0d34 mov      eax, 0x4118
00000001402f0d39 lea      r15d, [rdx - 0xf]
00000001402f0d3d mov      dword ptr [rbx + 0x664], eax
00000001402f0d43 mov      r9d, 0x410c
00000001402f0d49 mov      dword ptr [rbx + 0x668], eax
00000001402f0d4f mov      ecx, 0xf00
00000001402f0d54 mov      dword ptr [rbx + 0x66c], eax
00000001402f0d5a mov      r8d, 0xf000
00000001402f0d60 mov      dword ptr [rbx + 0x670], eax
00000001402f0d66 mov      dword ptr [rbx + 0x674], eax
00000001402f0d6c mov      dword ptr [rbx + 0x678], eax
00000001402f0d72 mov      dword ptr [rbx + 0x67c], eax
00000001402f0d78 mov      dword ptr [rbx + 0x680], eax
00000001402f0d7e mov      eax, 0x411c
00000001402f0d83 mov      dword ptr [rbx + 0x684], eax
00000001402f0d89 mov      dword ptr [rbx + 0x688], eax
00000001402f0d8f mov      eax, 0x4518
00000001402f0d94 mov      dword ptr [rbx + 0x6a0], 0x4514
00000001402f0d9e mov      dword ptr [rbx + 0x6a4], eax
00000001402f0da4 mov      dword ptr [rbx + 0x6a8], eax
00000001402f0daa mov      dword ptr [rbx + 0x6ac], eax
00000001402f0db0 mov      dword ptr [rbx + 0x6b0], eax
00000001402f0db6 mov      dword ptr [rbx + 0x6b4], eax
00000001402f0dbc mov      dword ptr [rbx + 0x6b8], eax
00000001402f0dc2 mov      dword ptr [rbx + 0x6bc], eax
00000001402f0dc8 mov      dword ptr [rbx + 0x6c0], eax
00000001402f0dce mov      eax, 0x451c
00000001402f0dd3 mov      dword ptr [rbx + 0x6c4], eax
00000001402f0dd9 mov      dword ptr [rbx + 0x6c8], eax
00000001402f0ddf mov      eax, 0xf0000000
00000001402f0de4 mov      dword ptr [rbx + 0x760], eax
00000001402f0dea mov      dword ptr [rbx + 0x764], r14d
00000001402f0df1 mov      dword ptr [rbx + 0x768], r15d
00000001402f0df8 mov      dword ptr [rbx + 0x76c], ecx
00000001402f0dfe mov      dword ptr [rbx + 0x770], r8d
00000001402f0e05 mov      dword ptr [rbx + 0x774], 0xf0000
00000001402f0e0f mov      dword ptr [rbx + 0x778], 0xf00000
00000001402f0e19 mov      dword ptr [rbx + 0x77c], 0xf000000
00000001402f0e23 mov      dword ptr [rbx + 0x780], eax
00000001402f0e29 mov      dword ptr [rbx + 0x784], r14d
00000001402f0e30 mov      dword ptr [rbx + 0x788], r15d
00000001402f0e37 mov      dword ptr [rbx + 0x6e0], 0x40d0
00000001402f0e41 mov      dword ptr [rbx + 0x6e4], r9d
00000001402f0e48 mov      dword ptr [rbx + 0x6e8], r9d
00000001402f0e4f mov      dword ptr [rbx + 0x6ec], r9d
00000001402f0e56 mov      dword ptr [rbx + 0x6f0], r9d
00000001402f0e5d mov      dword ptr [rbx + 0x6f4], r9d
00000001402f0e64 mov      dword ptr [rbx + 0x6f8], r9d
00000001402f0e6b mov      r9d, 0x450c
00000001402f0e71 movups   xmmword ptr [rbx + 0x6fc], xmm0
00000001402f0e78 mov      dword ptr [rbx + 0x720], 0x44d0
00000001402f0e82 movdqa   xmm0, xmmword ptr [rip + 0x3dfdc6]
00000001402f0e8a mov      dword ptr [rbx + 0x724], r9d
00000001402f0e91 mov      dword ptr [rbx + 0x728], r9d
00000001402f0e98 mov      dword ptr [rbx + 0x72c], r9d
00000001402f0e9f mov      dword ptr [rbx + 0x730], r9d
00000001402f0ea6 mov      dword ptr [rbx + 0x734], r9d
00000001402f0ead mov      dword ptr [rbx + 0x738], r9d
00000001402f0eb4 movups   xmmword ptr [rbx + 0x73c], xmm0
00000001402f0ebb mov      dword ptr [rbx + 0x7a0], eax
00000001402f0ec1 mov      eax, 0x4068
00000001402f0ec6 mov      dword ptr [rbx + 0x7a4], 0x1e0
00000001402f0ed0 mov      dword ptr [rbx + 0x7a8], 0x1e00
00000001402f0eda mov      dword ptr [rbx + 0x7ac], 0x1e000
00000001402f0ee4 mov      dword ptr [rbx + 0x7b0], 0x1e0000
00000001402f0eee mov      dword ptr [rbx + 0x7b4], 0x1e00000
00000001402f0ef8 mov      dword ptr [rbx + 0x7b8], 0x1e000000
00000001402f0f02 mov      dword ptr [rbx + 0x7bc], r14d
00000001402f0f09 mov      dword ptr [rbx + 0x7c0], r15d
00000001402f0f10 mov      dword ptr [rbx + 0x7c4], ecx
00000001402f0f16 mov      dword ptr [rbx + 0x7c8], r8d
00000001402f0f1d mov      dword ptr [rbx + 0x7e0], 0x4098
00000001402f0f27 mov      dword ptr [rbx + 0x7e4], 0x409c
00000001402f0f31 mov      dword ptr [rbx + 0x7e8], 0x4498
00000001402f0f3b mov      dword ptr [rbx + 0x7ec], 0x449c
00000001402f0f45 mov      dword ptr [rbx + 0x800], r11d
00000001402f0f4c mov      dword ptr [rbx + 0x804], edx
00000001402f0f52 mov      dword ptr [rbx + 0x7f0], eax
00000001402f0f58 mov      dword ptr [rbx + 0x7f4], eax
00000001402f0f5e mov      eax, 0x4468
00000001402f0f63 lea      r9, [rbx + 0x308]
00000001402f0f6a mov      dword ptr [rbx + 0x7f8], eax
00000001402f0f70 xor      r8b, r8b
00000001402f0f73 mov      dword ptr [rbx + 0x7fc], eax
00000001402f0f79 mov      r13d, 0x41e8
00000001402f0f7f mov      dword ptr [rbx + 0x808], ebp
00000001402f0f85 mov      dword ptr [rbx + 0x80c], r11d
00000001402f0f8c movzx    ecx, r8b
00000001402f0f90 mov      eax, r10d
00000001402f0f93 shl      ecx, 3
00000001402f0f96 inc      r8b
00000001402f0f99 shl      eax, cl
00000001402f0f9b mov      dword ptr [r9], eax
00000001402f0f9e mov      dword ptr [r9 - 0x20], r13d
00000001402f0fa2 lea      r9, [r9 + 4]
00000001402f0fa6 cmp      r8b, 2
00000001402f0faa jbe      0x1402f0f8c
00000001402f0fac mov      r8b, 3
00000001402f0faf lea      r9, [rbx + 0x314]
00000001402f0fb6 movzx    ecx, r8b
00000001402f0fba mov      eax, edx
00000001402f0fbc inc      r8b
00000001402f0fbf mov      dword ptr [r9 - 0x20], 0x41ec
00000001402f0fc7 lea      ecx, [rcx*8 - 0x18]
00000001402f0fce shl      eax, cl
00000001402f0fd0 mov      dword ptr [r9], eax
00000001402f0fd3 lea      r9, [r9 + 4]
00000001402f0fd7 cmp      r8b, 6
00000001402f0fdb jbe      0x1402f0fb6
00000001402f0fdd mov      r12d, 0x41f0
00000001402f0fe3 lea      r9, [rbx + 0x338]
00000001402f0fea mov      dword ptr [rbx + 0x304], r12d
00000001402f0ff1 xor      r8b, r8b
00000001402f0ff4 mov      dword ptr [rbx + 0x324], edx
00000001402f0ffa movzx    ecx, r8b
00000001402f0ffe mov      eax, edx
00000001402f1000 shl      ecx, 3
00000001402f1003 inc      r8b
00000001402f1006 shl      eax, cl
00000001402f1008 mov      dword ptr [r9], eax
00000001402f100b mov      dword ptr [r9 - 0x10], 0x41f4
00000001402f1013 lea      r9, [r9 + 4]
00000001402f1017 cmp      r8b, 3
00000001402f101b jbe      0x1402f0ffa
00000001402f101d xor      r8b, r8b
00000001402f1020 lea      r9, [rbx + 0x350]
00000001402f1027 movzx    ecx, r8b
00000001402f102b mov      eax, ebp
00000001402f102d shl      ecx, 3
00000001402f1030 inc      r8b
00000001402f1033 shl      eax, cl
00000001402f1035 mov      dword ptr [r9], eax
00000001402f1038 mov      dword ptr [r9 - 8], r12d
00000001402f103c lea      r9, [r9 + 4]
00000001402f1040 cmp      r8b, 1
00000001402f1044 jbe      0x1402f1027
00000001402f1046 mov      dword ptr [rbx + 0x358], r12d
00000001402f104d lea      rbp, [rip + 0x62efac]
00000001402f1054 mov      dword ptr [rbx + 0x35c], r10d
00000001402f105b mov      eax, 0x672c
00000001402f1060 mov      dword ptr [rbx + 0x810], r13d
00000001402f1067 mov      dword ptr [rbx + 0x814], edx
00000001402f106d mov      dword ptr [rbx + 0x818], 0x40c8
00000001402f1077 mov      dword ptr [rbx + 0x81c], r11d
00000001402f107e mov      dword ptr [rbx + 0x820], 0x6750
00000001402f1088 mov      dword ptr [rbx + 0x824], edx
00000001402f108e mov      dword ptr [rbx + 0x828], eax
00000001402f1094 mov      dword ptr [rbx + 0x82c], r14d
00000001402f109b mov      dword ptr [rbx + 0x830], eax
00000001402f10a1 mov      dword ptr [rbx + 0x834], r15d
00000001402f10a8 cmp      byte ptr [rdi + 0x49cc], 0
00000001402f10af je       0x1402f10fe
00000001402f10b1 mov      rcx, qword ptr [rip + 0x62ef48]
00000001402f10b8 cmp      rcx, rbp
00000001402f10bb je       0x1402f10ed
00000001402f10bd cmp      byte ptr [rcx + 0x169], 4
00000001402f10c4 jb       0x1402f10ed
00000001402f10c6 test     dword ptr [rcx + 0x16c], esi
00000001402f10cc je       0x1402f10ed
00000001402f10ce mov      rcx, qword ptr [rcx + 0x158]
00000001402f10d5 lea      r9, [rip + 0x33b524]
00000001402f10dc mov      edx, 0xa0
00000001402f10e1 lea      r8, [rip + 0x3aa078]
00000001402f10e8 call     0x140008874
00000001402f10ed mov      r8d, 0xc
00000001402f10f3 mov      rdx, rbx
00000001402f10f6 mov      rcx, rdi
00000001402f10f9 call     0x1403c9ac0
00000001402f10fe mov      rbx, qword ptr [rsp + 0x50]
00000001402f1103 mov      rbp, qword ptr [rsp + 0x58]
00000001402f1108 mov      rsi, qword ptr [rsp + 0x60]
00000001402f110d add      rsp, 0x20
00000001402f1111 pop      r15
00000001402f1113 pop      r14
00000001402f1115 pop      r13
00000001402f1117 pop      r12
00000001402f1119 pop      rdi
00000001402f111a ret      