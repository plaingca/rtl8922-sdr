00000001402a1178 mov      rax, rsp
00000001402a117b mov      word ptr [rax + 0x20], r9w
00000001402a1180 mov      word ptr [rax + 0x18], r8w
00000001402a1185 mov      qword ptr [rax + 0x10], rdx
00000001402a1189 mov      qword ptr [rax + 8], rcx
00000001402a118d push     rbx
00000001402a118e push     rbp
00000001402a118f push     rsi
00000001402a1190 push     rdi
00000001402a1191 push     r12
00000001402a1193 push     r13
00000001402a1195 push     r14
00000001402a1197 push     r15
00000001402a1199 sub      rsp, 0x78
00000001402a119d movsx    r12d, word ptr [rcx]
00000001402a11a1 mov      rax, rdx
00000001402a11a4 movzx    r11d, word ptr [rcx + 0xc]
00000001402a11a9 xor      r10d, r10d
00000001402a11ac movsx    edx, word ptr [rdx]
00000001402a11af mov      r9, rcx
00000001402a11b2 mov      rsi, qword ptr [rsp + 0xe0]
00000001402a11ba mov      r13d, 1
00000001402a11c0 mov      word ptr [rsp + 0x58], r10w
00000001402a11c6 mov      word ptr [rsp + 0x52], r10w
00000001402a11cc movzx    r10d, word ptr [rcx + 0xe]
00000001402a11d1 lea      ebx, [r12 + rdx]
00000001402a11d5 movzx    ecx, word ptr [rax + 0xc]
00000001402a11d9 mov      word ptr [rsp + 0x5c], cx
00000001402a11de movzx    ecx, word ptr [rax + 0xe]
00000001402a11e2 mov      word ptr [rsp + 0x50], cx
00000001402a11e7 mov      word ptr [rsp + 0x5a], dx
00000001402a11ec mov      word ptr [rsp + 0x56], r11w
00000001402a11f2 mov      word ptr [rsp + 0x54], r10w
00000001402a11f8 mov      rcx, qword ptr [rip + 0x67ee01]
00000001402a11ff lea      rdi, [rip + 0x67edfa]
00000001402a1206 cmp      rcx, rdi
00000001402a1209 je       0x1402a127e
00000001402a120b cmp      byte ptr [rcx + 0x169], 4
00000001402a1212 jb       0x1402a127e
00000001402a1214 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a121e je       0x1402a1276
00000001402a1220 mov      rcx, qword ptr [rcx + 0x158]
00000001402a1227 lea      r9, [rip + 0x36d162]
00000001402a122e movsx    eax, r8w
00000001402a1232 mov      r8d, edx
00000001402a1235 mov      dword ptr [rsp + 0x30], eax
00000001402a1239 mov      edx, 0x92
00000001402a123e mov      dword ptr [rsp + 0x28], r8d
00000001402a1243 lea      r8, [rip + 0x3f7d06]
00000001402a124a mov      dword ptr [rsp + 0x20], r12d
00000001402a124f call     0x14001c670
00000001402a1254 movzx    r8d, word ptr [rsp + 0xd0]
00000001402a125d movzx    edx, word ptr [rsp + 0x5a]
00000001402a1262 mov      r9, qword ptr [rsp + 0xc0]
00000001402a126a movzx    r10d, word ptr [rsp + 0x54]
00000001402a1270 movzx    r11d, word ptr [rsp + 0x56]
00000001402a1276 mov      rax, qword ptr [rsp + 0xc8]
00000001402a127e mov      ecx, 5
00000001402a1283 movzx    ebx, bx
00000001402a1286 mov      dword ptr [rsp + 0x60], ebx
00000001402a128a movzx    r15d, cx
00000001402a128e cmp      ebx, ecx
00000001402a1290 jbe      0x1402a173f
00000001402a1296 movzx    ebp, r8w
00000001402a129a movzx    edi, dx
00000001402a129d sub      di, r8w
00000001402a12a1 sub      bp, r12w
00000001402a12a5 movzx    r14d, r12w
00000001402a12a9 lea      r8d, [rcx + 5]
00000001402a12ad add      bp, cx
00000001402a12b0 add      di, r12w
00000001402a12b4 sub      r14w, cx
00000001402a12b8 sub      di, cx
00000001402a12bb cmp      r14w, r8w
00000001402a12bf jl       0x1402a16f4
00000001402a12c5 xor      edx, edx
00000001402a12c7 cmp      byte ptr [r9 + 4], dl
00000001402a12cb je       0x1402a1384
00000001402a12d1 cmp      r15w, r11w
00000001402a12d5 jg       0x1402a1553
00000001402a12db cmp      r14w, r10w
00000001402a12df jle      0x1402a1384
00000001402a12e5 mov      rcx, qword ptr [rip + 0x67ed14]
00000001402a12ec lea      rax, [rip + 0x67ed0d]
00000001402a12f3 cmp      rcx, rax
00000001402a12f6 je       0x1402a134b
00000001402a12f8 cmp      byte ptr [rcx + 0x169], 4
00000001402a12ff jb       0x1402a134b
00000001402a1301 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a130b je       0x1402a134b
00000001402a130d mov      rcx, qword ptr [rcx + 0x158]
00000001402a1314 lea      r9, [rip + 0x36d075]
00000001402a131b movsx    eax, r10w
00000001402a131f mov      edx, 0x95
00000001402a1324 movsx    r8d, r14w
00000001402a1328 mov      dword ptr [rsp + 0x28], eax
00000001402a132c mov      dword ptr [rsp + 0x20], r8d
00000001402a1331 lea      r8, [rip + 0x3f7c18]
00000001402a1338 call     0x140002b04
00000001402a133d mov      r9, qword ptr [rsp + 0xc0]
00000001402a1345 mov      r8d, 0xa
00000001402a134b mov      ecx, 5
00000001402a1350 add      r15w, r13w
00000001402a1354 dec      r14w
00000001402a1358 movsx    eax, r15w
00000001402a135c add      bp, r13w
00000001402a1360 dec      di
00000001402a1363 cmp      eax, ebx
00000001402a1365 jge      0x1402a165e
00000001402a136b mov      rax, qword ptr [rsp + 0xc8]
00000001402a1373 movzx    r10d, word ptr [rsp + 0x54]
00000001402a1379 movzx    r11d, word ptr [rsp + 0x56]
00000001402a137f jmp      0x1402a12bb
00000001402a1384 cmp      bp, cx
00000001402a1387 jl       0x1402a1350
00000001402a1389 cmp      di, r8w
00000001402a138d jl       0x1402a160b
00000001402a1393 cmp      byte ptr [rax + 4], dl
00000001402a1396 je       0x1402a1428
00000001402a139c movsx    edx, word ptr [rsp + 0x5c]
00000001402a13a1 movzx    r8d, word ptr [rsp + 0x50]
00000001402a13a7 cmp      bp, dx
00000001402a13aa jg       0x1402a13b2
00000001402a13ac cmp      di, r8w
00000001402a13b0 jle      0x1402a1428
00000001402a13b2 mov      rcx, qword ptr [rip + 0x67ec47]
00000001402a13b9 lea      rax, [rip + 0x67ec40]
00000001402a13c0 cmp      rcx, rax
00000001402a13c3 je       0x1402a1345
00000001402a13c5 cmp      byte ptr [rcx + 0x169], 4
00000001402a13cc jb       0x1402a1345
00000001402a13d2 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a13dc je       0x1402a1345
00000001402a13e2 mov      rcx, qword ptr [rcx + 0x158]
00000001402a13e9 mov      r9d, edx
00000001402a13ec movsx    eax, r8w
00000001402a13f0 mov      edx, 0x97
00000001402a13f5 mov      dword ptr [rsp + 0x38], eax
00000001402a13f9 movsx    r8d, di
00000001402a13fd mov      dword ptr [rsp + 0x30], r8d
00000001402a1402 lea      r8, [rip + 0x3f7b47]
00000001402a1409 mov      dword ptr [rsp + 0x28], r9d
00000001402a140e lea      r9, [rip + 0x36cf7b]
00000001402a1415 movsx    r10d, bp
00000001402a1419 mov      dword ptr [rsp + 0x20], r10d
00000001402a141e call     0x14001c710
00000001402a1423 jmp      0x1402a133d
00000001402a1428 movzx    ecx, r15w
00000001402a142c mov      word ptr [rsp + 0x58], r15w
00000001402a1432 sub      cx, di
00000001402a1435 movzx    edx, r14w
00000001402a1439 movsx    eax, cx
00000001402a143c sub      dx, di
00000001402a143f movsx    r13d, cx
00000001402a1443 movzx    r9d, bp
00000001402a1447 imul     r13d, eax
00000001402a144b sub      r9w, di
00000001402a144f movsx    eax, dx
00000001402a1452 movzx    r8d, r15w
00000001402a1456 sub      r8w, bp
00000001402a145a movsx    ecx, dx
00000001402a145d movsx    edx, word ptr [rsp + 0x52]
00000001402a1462 movzx    r10d, r14w
00000001402a1466 imul     ecx, eax
00000001402a1469 sub      r10w, bp
00000001402a146d movsx    eax, r9w
00000001402a1471 movzx    r11d, r15w
00000001402a1475 sub      r11w, r14w
00000001402a1479 add      r13w, cx
00000001402a147d movsx    ecx, r9w
00000001402a1481 imul     ecx, eax
00000001402a1484 movsx    eax, r8w
00000001402a1488 add      r13w, cx
00000001402a148c movsx    ecx, r8w
00000001402a1490 imul     ecx, eax
00000001402a1493 movsx    eax, r10w
00000001402a1497 add      r13w, cx
00000001402a149b movsx    ecx, r10w
00000001402a149f imul     ecx, eax
00000001402a14a2 movsx    eax, r11w
00000001402a14a6 add      r13w, cx
00000001402a14aa movsx    ecx, r11w
00000001402a14ae imul     ecx, eax
00000001402a14b1 add      r13w, cx
00000001402a14b5 test     dx, dx
00000001402a14b8 je       0x1402a14c4
00000001402a14ba cmp      r13w, dx
00000001402a14be jg       0x1402a15bc
00000001402a14c4 mov      rcx, qword ptr [rip + 0x67eb35]
00000001402a14cb lea      rax, [rip + 0x67eb2e]
00000001402a14d2 cmp      rcx, rax
00000001402a14d5 je       0x1402a1542
00000001402a14d7 cmp      byte ptr [rcx + 0x169], 4
00000001402a14de jb       0x1402a1542
00000001402a14e0 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a14ea je       0x1402a1542
00000001402a14ec mov      rcx, qword ptr [rcx + 0x158]
00000001402a14f3 mov      r8d, edx
00000001402a14f6 movsx    eax, r13w
00000001402a14fa mov      edx, 0x99
00000001402a14ff mov      dword ptr [rsp + 0x48], eax
00000001402a1503 mov      dword ptr [rsp + 0x40], r8d
00000001402a1508 lea      r8, [rip + 0x3f7a41]
00000001402a150f movsx    r9d, di
00000001402a1513 mov      dword ptr [rsp + 0x38], r9d
00000001402a1518 lea      r9, [rip + 0x36ce71]
00000001402a151f movsx    r10d, bp
00000001402a1523 mov      dword ptr [rsp + 0x30], r10d
00000001402a1528 movsx    r11d, r14w
00000001402a152c mov      dword ptr [rsp + 0x28], r11d
00000001402a1531 movsx    ebx, r15w
00000001402a1535 mov      dword ptr [rsp + 0x20], ebx
00000001402a1539 call     0x140032bdc
00000001402a153e mov      ebx, dword ptr [rsp + 0x60]
00000001402a1542 mov      word ptr [rsp + 0x52], r13w
00000001402a1548 mov      r13d, 1
00000001402a154e jmp      0x1402a133d
00000001402a1553 mov      rcx, qword ptr [rip + 0x67eaa6]
00000001402a155a lea      rdi, [rip + 0x67ea9f]
00000001402a1561 cmp      rcx, rdi
00000001402a1564 je       0x1402a1665
00000001402a156a cmp      byte ptr [rcx + 0x169], 4
00000001402a1571 jb       0x1402a1665
00000001402a1577 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a1581 je       0x1402a1665
00000001402a1587 movsx    eax, r11w
00000001402a158b mov      edx, 0x94
00000001402a1590 movsx    r8d, r15w
00000001402a1594 mov      dword ptr [rsp + 0x28], eax
00000001402a1598 mov      dword ptr [rsp + 0x20], r8d
00000001402a159d mov      rcx, qword ptr [rcx + 0x158]
00000001402a15a4 lea      r9, [rip + 0x36cde5]
00000001402a15ab lea      r8, [rip + 0x3f799e]
00000001402a15b2 call     0x140002b04
00000001402a15b7 jmp      0x1402a1665
00000001402a15bc mov      rcx, qword ptr [rip + 0x67ea3d]
00000001402a15c3 lea      rdi, [rip + 0x67ea36]
00000001402a15ca cmp      rcx, rdi
00000001402a15cd je       0x1402a1603
00000001402a15cf cmp      byte ptr [rcx + 0x169], 4
00000001402a15d6 jb       0x1402a1603
00000001402a15d8 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a15e2 je       0x1402a1603
00000001402a15e4 mov      rcx, qword ptr [rcx + 0x158]
00000001402a15eb lea      r9, [rip + 0x36cd9e]
00000001402a15f2 mov      edx, 0x98
00000001402a15f7 lea      r8, [rip + 0x3f7952]
00000001402a15fe call     0x140008874
00000001402a1603 mov      r13d, 1
00000001402a1609 jmp      0x1402a1665
00000001402a160b mov      rcx, qword ptr [rip + 0x67e9ee]
00000001402a1612 lea      rax, [rip + 0x67e9e7]
00000001402a1619 cmp      rcx, rax
00000001402a161c je       0x1402a165e
00000001402a161e cmp      byte ptr [rcx + 0x169], 4
00000001402a1625 jb       0x1402a165e
00000001402a1627 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a1631 je       0x1402a165e
00000001402a1633 mov      rcx, qword ptr [rcx + 0x158]
00000001402a163a lea      r9, [rip + 0x36cd4f]
00000001402a1641 mov      dword ptr [rsp + 0x28], r8d
00000001402a1646 mov      edx, 0x96
00000001402a164b movsx    eax, di
00000001402a164e lea      r8, [rip + 0x3f78fb]
00000001402a1655 mov      dword ptr [rsp + 0x20], eax
00000001402a1659 call     0x140002b04
00000001402a165e lea      rdi, [rip + 0x67e99b]
00000001402a1665 movzx    ecx, word ptr [rsp + 0x58]
00000001402a166a xor      ebx, ebx
00000001402a166c cmp      bx, cx
00000001402a166f je       0x1402a173f
00000001402a1675 movzx    edx, word ptr [rsp + 0x5a]
00000001402a167a sub      r12w, cx
00000001402a167e movzx    r8d, word ptr [rsp + 0xd0]
00000001402a1687 mov      r9, qword ptr [rsi + 8]
00000001402a168b sub      r8w, r12w
00000001402a168f sub      dx, r8w
00000001402a1693 mov      word ptr [rsi + 0x1c], r8w
00000001402a1698 mov      r8, qword ptr [rsp + 0xc0]
00000001402a16a0 mov      word ptr [rsi + 0x18], cx
00000001402a16a4 mov      rcx, rsi
00000001402a16a7 mov      word ptr [rsi + 0x1e], dx
00000001402a16ab xor      edx, edx
00000001402a16ad mov      word ptr [rsi + 0x1a], r12w
00000001402a16b2 movzx    r8d, word ptr [r8]
00000001402a16b6 call     0x1402a4a58
00000001402a16bb mov      r8, qword ptr [rsp + 0xc8]
00000001402a16c3 xor      edx, edx
00000001402a16c5 mov      r9, qword ptr [rsi + 0x10]
00000001402a16c9 mov      rcx, rsi
00000001402a16cc movzx    r8d, word ptr [r8]
00000001402a16d0 call     0x1402a4a58
00000001402a16d5 movzx    r8d, word ptr [rsp + 0xd8]
00000001402a16de xor      r9d, r9d
00000001402a16e1 mov      dl, r13b
00000001402a16e4 mov      rcx, rsi
00000001402a16e7 call     0x1402a4a58
00000001402a16ec mov      r13d, ebx
00000001402a16ef jmp      0x1402a1783
00000001402a16f4 mov      rcx, qword ptr [rip + 0x67e905]
00000001402a16fb lea      rdi, [rip + 0x67e8fe]
00000001402a1702 cmp      rcx, rdi
00000001402a1705 je       0x1402a1665
00000001402a170b cmp      byte ptr [rcx + 0x169], 4
00000001402a1712 jb       0x1402a1665
00000001402a1718 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a1722 je       0x1402a1665
00000001402a1728 movsx    eax, r14w
00000001402a172c mov      edx, 0x93
00000001402a1731 mov      dword ptr [rsp + 0x28], r8d
00000001402a1736 mov      dword ptr [rsp + 0x20], eax
00000001402a173a jmp      0x1402a159d
00000001402a173f mov      rcx, qword ptr [rip + 0x67e8ba]
00000001402a1746 cmp      rcx, rdi
00000001402a1749 je       0x1402a17ec
00000001402a174f cmp      byte ptr [rcx + 0x169], 3
00000001402a1756 jb       0x1402a1783
00000001402a1758 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a1762 je       0x1402a1783
00000001402a1764 mov      rcx, qword ptr [rcx + 0x158]
00000001402a176b lea      r9, [rip + 0x36cc1e]
00000001402a1772 mov      edx, 0x9a
00000001402a1777 lea      r8, [rip + 0x3f77d2]
00000001402a177e call     0x140008874
00000001402a1783 mov      rcx, qword ptr [rip + 0x67e876]
00000001402a178a cmp      rcx, rdi
00000001402a178d je       0x1402a17ec
00000001402a178f cmp      byte ptr [rcx + 0x169], 4
00000001402a1796 jb       0x1402a17ec
00000001402a1798 test     dword ptr [rcx + 0x16c], 0x4000
00000001402a17a2 je       0x1402a17ec
00000001402a17a4 movsx    r10d, word ptr [rsi + 0x1e]
00000001402a17a9 lea      r9, [rip + 0x36cbe0]
00000001402a17b0 movsx    r11d, word ptr [rsi + 0x1c]
00000001402a17b5 lea      r8, [rip + 0x3f7794]
00000001402a17bc movsx    ebx, word ptr [rsi + 0x1a]
00000001402a17c0 mov      edx, 0x9b
00000001402a17c5 movsx    edi, word ptr [rsi + 0x18]
00000001402a17c9 mov      rcx, qword ptr [rcx + 0x158]
00000001402a17d0 mov      dword ptr [rsp + 0x40], r10d
00000001402a17d5 mov      dword ptr [rsp + 0x38], r11d
00000001402a17da mov      dword ptr [rsp + 0x30], ebx
00000001402a17de mov      dword ptr [rsp + 0x28], edi
00000001402a17e2 mov      dword ptr [rsp + 0x20], r13d
00000001402a17e7 call     0x14003c780
00000001402a17ec mov      eax, r13d
00000001402a17ef add      rsp, 0x78
00000001402a17f3 pop      r15
00000001402a17f5 pop      r14
00000001402a17f7 pop      r13
00000001402a17f9 pop      r12
00000001402a17fb pop      rdi
00000001402a17fc pop      rsi
00000001402a17fd pop      rbp
00000001402a17fe pop      rbx
00000001402a17ff ret      