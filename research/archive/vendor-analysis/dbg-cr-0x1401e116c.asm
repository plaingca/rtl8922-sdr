00000001401e116c mov      qword ptr [rsp + 0x18], rbx
00000001401e1171 push     rbp
00000001401e1172 push     rsi
00000001401e1173 push     rdi
00000001401e1174 push     r12
00000001401e1176 push     r13
00000001401e1178 push     r14
00000001401e117a push     r15
00000001401e117c lea      rbp, [rsp - 0x1d0]
00000001401e1184 sub      rsp, 0x2d0
00000001401e118b mov      rax, qword ptr [rip + 0x7462ce]
00000001401e1192 xor      rax, rsp
00000001401e1195 mov      qword ptr [rbp + 0x1c0], rax
00000001401e119c mov      rax, qword ptr [rcx]
00000001401e119f mov      r12, rdx
00000001401e11a2 mov      qword ptr [rsp + 0x38], rax
00000001401e11a7 mov      rdi, rcx
00000001401e11aa xor      eax, eax
00000001401e11ac lea      rcx, [rbp + 0xe0]
00000001401e11b3 xorps    xmm0, xmm0
00000001401e11b6 mov      word ptr [rbp + 0x38], ax
00000001401e11ba xor      edx, edx
00000001401e11bc movups   xmmword ptr [rbp + 0x28], xmm0
00000001401e11c0 lea      r8d, [rax + 0x54]
00000001401e11c4 call     0x1405f4640
00000001401e11c9 xor      eax, eax
00000001401e11cb lea      rcx, [rbp + 0x140]
00000001401e11d2 xorps    xmm0, xmm0
00000001401e11d5 mov      qword ptr [rbp + 0x20], rax
00000001401e11d9 xorps    xmm1, xmm1
00000001401e11dc mov      dword ptr [rbp - 0x30], eax
00000001401e11df xor      edx, edx
00000001401e11e1 mov      qword ptr [rbp - 0x50], rax
00000001401e11e5 lea      r8d, [rax + 0x7e]
00000001401e11e9 mov      dword ptr [rbp - 0x48], eax
00000001401e11ec movups   xmmword ptr [rbp], xmm0
00000001401e11f0 mov      word ptr [rbp - 0x44], ax
00000001401e11f4 movups   xmmword ptr [rbp + 0x10], xmm0
00000001401e11f8 mov      dword ptr [rbp - 0x18], eax
00000001401e11fb movups   xmmword ptr [rbp - 0x40], xmm0
00000001401e11ff movups   xmmword ptr [rbp - 0x60], xmm1
00000001401e1203 movups   xmmword ptr [rbp - 0x28], xmm0
00000001401e1207 call     0x1405f4640
00000001401e120c xor      edx, edx
00000001401e120e lea      rcx, [rbp + 0x40]
00000001401e1212 lea      r8d, [rdx + 0x42]
00000001401e1216 call     0x1405f4640
00000001401e121b xor      edx, edx
00000001401e121d lea      rcx, [rbp + 0x90]
00000001401e1224 lea      r8d, [rdx + 0x44]
00000001401e1228 call     0x1405f4640
00000001401e122d xor      edx, edx
00000001401e122f lea      rcx, [rsp + 0x40]
00000001401e1234 xorps    xmm0, xmm0
00000001401e1237 movups   xmmword ptr [rbp - 0x10], xmm0
00000001401e123b lea      r8d, [rdx + 0x60]
00000001401e123f call     0x1405f4640
00000001401e1244 mov      rsi, qword ptr [r12 + 8]
00000001401e1249 movzx    r14d, byte ptr [r12]
00000001401e124e mov      rcx, qword ptr [rip + 0x73edab]
00000001401e1255 lea      rdx, [rip + 0x73eda4]
00000001401e125c cmp      rcx, rdx
00000001401e125f je       0x1401e129a
00000001401e1261 cmp      byte ptr [rcx + 0x169], 5
00000001401e1268 jb       0x1401e129a
00000001401e126a mov      eax, dword ptr [rcx + 0x16c]
00000001401e1270 test     al, 1
00000001401e1272 je       0x1401e129a
00000001401e1274 mov      rcx, qword ptr [rcx + 0x158]
00000001401e127b lea      r9, [rip + 0x42d10e]
00000001401e1282 mov      edx, 0xba
00000001401e1287 lea      r8, [rip + 0x4b71e2]
00000001401e128e call     0x140008874
00000001401e1293 lea      rdx, [rip + 0x73ed66]
00000001401e129a imul     rax, r14, 0xc3
00000001401e12a1 mov      r15, r14
00000001401e12a4 cmp      byte ptr [rax + rdi + 0x1cd8], 0
00000001401e12ac jne      0x1401e1303
00000001401e12ae mov      rcx, qword ptr [rip + 0x73ed4b]
00000001401e12b5 cmp      rcx, rdx
00000001401e12b8 je       0x1401e12f9
00000001401e12ba cmp      byte ptr [rcx + 0x169], 3
00000001401e12c1 jb       0x1401e12f9
00000001401e12c3 mov      edx, dword ptr [rcx + 0x16c]
00000001401e12c9 test     dl, 1
00000001401e12cc je       0x1401e12f9
00000001401e12ce mov      rcx, qword ptr [rcx + 0x158]
00000001401e12d5 lea      r10, [rip + 0x431154]
00000001401e12dc mov      edx, 0xbb
00000001401e12e1 mov      qword ptr [rsp + 0x20], r10
00000001401e12e6 lea      r9, [rip + 0x42d0a3]
00000001401e12ed lea      r8, [rip + 0x4b717c]
00000001401e12f4 call     0x14003c968
00000001401e12f9 mov      eax, 1
00000001401e12fe jmp      0x1401e1683
00000001401e1303 lea      r13, [rip + 0x431126]
00000001401e130a mov      rcx, r12
00000001401e130d mov      rdx, r13
00000001401e1310 call     0x1401e08a4
00000001401e1315 cmp      byte ptr [r12 + 0x10], 0
00000001401e131b je       0x1401e146c
00000001401e1321 mov      rax, qword ptr [rdi]
00000001401e1324 lea      rdx, [rsi + 0x36]
00000001401e1328 movzx    ebx, byte ptr [rdi + 0x1cdb]
00000001401e132f lea      rcx, [rbp]
00000001401e1333 mov      r8d, 6
00000001401e1339 mov      r13, qword ptr [rax + 0x798]
00000001401e1340 call     0x1400311e8
00000001401e1345 mov      rdx, qword ptr [rsi + 0x18]
00000001401e1349 lea      rcx, [rbp + 6]
00000001401e134d add      rdx, 9
00000001401e1351 mov      r8d, 6
00000001401e1357 call     0x1400311e8
00000001401e135c lea      rax, [r14 + r14*2]
00000001401e1360 mov      r8d, 6
00000001401e1366 lea      rdx, [rdi + 0x170c]
00000001401e136d lea      rdx, [rdx + rax*8]
00000001401e1371 lea      rcx, [rbp + 0xc]
00000001401e1375 call     0x1400311e8
00000001401e137a lea      rax, [r14 + r14*2]
00000001401e137e mov      r8d, 4
00000001401e1384 lea      rdx, [rdi + 0x1716]
00000001401e138b lea      rdx, [rdx + rax*8]
00000001401e138f lea      rcx, [rbp + 0x12]
00000001401e1393 call     0x1400311e8
00000001401e1398 lea      rax, [r14 + r14*2]
00000001401e139c mov      r8d, 6
00000001401e13a2 lea      rdx, [rdi + 0x171a]
00000001401e13a9 lea      rdx, [rdx + rax*8]
00000001401e13ad lea      rcx, [rbp + 0x16]
00000001401e13b1 call     0x1400311e8
00000001401e13b6 lea      rax, [r14 + r14*2]
00000001401e13ba mov      r8d, 4
00000001401e13c0 lea      rdx, [rdi + 0x1712]
00000001401e13c7 lea      rdx, [rdx + rax*8]
00000001401e13cb lea      rcx, [rbp + 0x1c]
00000001401e13cf call     0x1400311e8
00000001401e13d4 mov      rdx, qword ptr [rsi + 0x10]
00000001401e13d8 lea      rcx, [rbp + 0x20]
00000001401e13dc add      rdx, 0x1c
00000001401e13e0 mov      r8d, 6
00000001401e13e6 call     0x1400311e8
00000001401e13eb test     bl, bl
00000001401e13ed setne    byte ptr [rbp + 0x26]
00000001401e13f1 test     bl, bl
00000001401e13f3 je       0x1401e1430
00000001401e13f5 mov      dl, bl
00000001401e13f7 lea      rcx, [r13 + 0xe080]
00000001401e13fe call     0x1401e2190
00000001401e1403 test     al, al
00000001401e1405 je       0x1401e140d
00000001401e1407 mov      byte ptr [rbp + 0x27], 0
00000001401e140b jmp      0x1401e1430
00000001401e140d mov      ecx, ebx
00000001401e140f sub      ecx, 1
00000001401e1412 je       0x1401e142b
00000001401e1414 sub      ecx, 2
00000001401e1417 je       0x1401e1427
00000001401e1419 sub      ecx, 3
00000001401e141c je       0x1401e1427
00000001401e141e cmp      ecx, 3
00000001401e1421 je       0x1401e1427
00000001401e1423 xor      al, al
00000001401e1425 jmp      0x1401e142d
00000001401e1427 mov      al, 8
00000001401e1429 jmp      0x1401e142d
00000001401e142b mov      al, 4
00000001401e142d mov      byte ptr [rbp + 0x27], al
00000001401e1430 lea      rax, [r14 + r14*2]
00000001401e1434 mov      byte ptr [rsp + 0x28], r14b
00000001401e1439 lea      r8, [rdi + 0x170a]
00000001401e1440 mov      dl, 5
00000001401e1442 lea      r8, [r8 + rax*8]
00000001401e1446 mov      rcx, rdi
00000001401e1449 movzx    eax, word ptr [rsi + 0x2c]
00000001401e144d lea      r9, [rbp]
00000001401e1451 mov      word ptr [rsp + 0x20], ax
00000001401e1456 call     0x1401e292c
00000001401e145b mov      ebx, eax
00000001401e145d test     eax, eax
00000001401e145f jne      0x1401e162c
00000001401e1465 lea      r13, [rip + 0x430fc4]
00000001401e146c cmp      byte ptr [r12 + 0x21], 0
00000001401e1472 je       0x1401e1522
00000001401e1478 imul     rbx, r15, 0x64
00000001401e147c lea      r8, [rdi + 0x1a80]
00000001401e1483 mov      rdx, rsi
00000001401e1486 add      r8, rbx
00000001401e1489 lea      r9, [rbp + 0xe0]
00000001401e1490 mov      rcx, rdi
00000001401e1493 call     0x1401e1e60
00000001401e1498 movzx    eax, word ptr [rsi + 0x2c]
00000001401e149c lea      r8, [rdi + 0x1a81]
00000001401e14a3 add      r8, rbx
00000001401e14a6 mov      byte ptr [rsp + 0x28], r14b
00000001401e14ab lea      r9, [rbp + 0xe0]
00000001401e14b2 mov      word ptr [rsp + 0x20], ax
00000001401e14b7 mov      dl, 0x15
00000001401e14b9 mov      rcx, rdi
00000001401e14bc call     0x1401e292c
00000001401e14c1 mov      ebx, eax
00000001401e14c3 test     eax, eax
00000001401e14c5 je       0x1401e1522
00000001401e14c7 mov      rcx, qword ptr [rip + 0x73eb32]
00000001401e14ce lea      r14, [rip + 0x73eb2b]
00000001401e14d5 cmp      rcx, r14
00000001401e14d8 je       0x1401e1681
00000001401e14de cmp      byte ptr [rcx + 0x169], 2
00000001401e14e5 jb       0x1401e1633
00000001401e14eb mov      eax, dword ptr [rcx + 0x16c]
00000001401e14f1 test     al, 1
00000001401e14f3 je       0x1401e1633
00000001401e14f9 mov      rcx, qword ptr [rcx + 0x158]
00000001401e1500 lea      r9, [rip + 0x42ce89]
00000001401e1507 mov      edx, 0xbc
00000001401e150c mov      qword ptr [rsp + 0x20], r13
00000001401e1511 lea      r8, [rip + 0x4b6f58]
00000001401e1518 call     0x14003c968
00000001401e151d jmp      0x1401e1633
00000001401e1522 cmp      byte ptr [r12 + 0x11], 0
00000001401e1528 je       0x1401e154f
00000001401e152a movzx    edx, byte ptr [rdi + r14*4 + 0xee]
00000001401e1533 cmp      dl, 5
00000001401e1536 jne      0x1401e15e3
00000001401e153c lea      rax, [r14 + r14*2]
00000001401e1540 mov      cl, byte ptr [rdi + rax*8 + 0x170a]
00000001401e1547 mov      byte ptr [rdi + r14*4 + 0xef], cl
00000001401e154f cmp      byte ptr [r12 + 0x13], 0
00000001401e1555 je       0x1401e175f
00000001401e155b mov      rax, qword ptr [rdi]
00000001401e155e lea      rdx, [rsi + 0x36]
00000001401e1562 movzx    r13d, byte ptr [rdi + 0x1cdb]
00000001401e156a lea      rcx, [rbp - 0x40]
00000001401e156e mov      r8d, 6
00000001401e1574 mov      rax, qword ptr [rax + 0x798]
00000001401e157b add      rax, 0xe080
00000001401e1581 mov      qword ptr [rsp + 0x30], rax
00000001401e1586 call     0x1400311e8
00000001401e158b mov      rdx, qword ptr [rsi + 0x18]
00000001401e158f lea      rcx, [rbp - 0x3a]
00000001401e1593 add      rdx, 9
00000001401e1597 mov      r8d, 6
00000001401e159d call     0x1400311e8
00000001401e15a2 mov      r8d, 6
00000001401e15a8 lea      rdx, [rsi + 0x36]
00000001401e15ac lea      rcx, [rbp - 0x34]
00000001401e15b0 call     0x1400311e8
00000001401e15b5 test     r13b, r13b
00000001401e15b8 setne    byte ptr [rbp - 0x2e]
00000001401e15bc test     r13b, r13b
00000001401e15bf je       0x1401e172b
00000001401e15c5 mov      rcx, qword ptr [rsp + 0x30]
00000001401e15ca mov      dl, r13b
00000001401e15cd call     0x1401e2190
00000001401e15d2 test     al, al
00000001401e15d4 je       0x1401e1707
00000001401e15da mov      byte ptr [rbp - 0x2d], 0
00000001401e15de jmp      0x1401e172b
00000001401e15e3 cmp      dl, 2
00000001401e15e6 jne      0x1401e16ad
00000001401e15ec lea      r8, [rbp + 0x28]
00000001401e15f0 mov      rdx, rsi
00000001401e15f3 mov      rcx, rdi
00000001401e15f6 call     0x1401e1e00
00000001401e15fb movzx    eax, word ptr [rsi + 0x2c]
00000001401e15ff lea      r8, [rdi + 0xef]
00000001401e1606 lea      r8, [r8 + r14*4]
00000001401e160a mov      byte ptr [rsp + 0x28], r14b
00000001401e160f lea      r9, [rbp + 0x28]
00000001401e1613 mov      word ptr [rsp + 0x20], ax
00000001401e1618 mov      dl, 2
00000001401e161a mov      rcx, rdi
00000001401e161d call     0x1401e292c
00000001401e1622 mov      ebx, eax
00000001401e1624 test     eax, eax
00000001401e1626 je       0x1401e154f
00000001401e162c lea      r14, [rip + 0x73e9cd]
00000001401e1633 mov      rcx, qword ptr [rip + 0x73e9c6]
00000001401e163a cmp      rcx, r14
00000001401e163d je       0x1401e1681
00000001401e163f cmp      byte ptr [rcx + 0x169], 4
00000001401e1646 jb       0x1401e1681
00000001401e1648 mov      eax, dword ptr [rcx + 0x16c]
00000001401e164e test     al, 0x20
00000001401e1650 je       0x1401e1681
00000001401e1652 mov      rcx, qword ptr [rcx + 0x158]
00000001401e1659 lea      r10, [rip + 0x430dd0]
00000001401e1660 mov      edx, 0xc1
00000001401e1665 mov      dword ptr [rsp + 0x28], ebx
00000001401e1669 lea      r9, [rip + 0x42cd20]
00000001401e1670 mov      qword ptr [rsp + 0x20], r10
00000001401e1675 lea      r8, [rip + 0x4b6df4]
00000001401e167c call     0x14003ca14
00000001401e1681 mov      eax, ebx
00000001401e1683 mov      rcx, qword ptr [rbp + 0x1c0]
00000001401e168a xor      rcx, rsp
00000001401e168d call     0x1405f45b0
00000001401e1692 mov      rbx, qword ptr [rsp + 0x320]
00000001401e169a add      rsp, 0x2d0
00000001401e16a1 pop      r15
00000001401e16a3 pop      r14
00000001401e16a5 pop      r13
00000001401e16a7 pop      r12
00000001401e16a9 pop      rdi
00000001401e16aa pop      rsi
00000001401e16ab pop      rbp
00000001401e16ac ret      
00000001401e16ad mov      rcx, qword ptr [rip + 0x73e94c]
00000001401e16b4 lea      r14, [rip + 0x73e945]
00000001401e16bb cmp      rcx, r14
00000001401e16be je       0x1401e16fd
00000001401e16c0 cmp      byte ptr [rcx + 0x169], 2
00000001401e16c7 jb       0x1401e16fd
00000001401e16c9 mov      eax, dword ptr [rcx + 0x16c]
00000001401e16cf test     al, 1
00000001401e16d1 je       0x1401e16fd
00000001401e16d3 mov      rcx, qword ptr [rcx + 0x158]
00000001401e16da lea      r9, [rip + 0x42ccaf]
00000001401e16e1 mov      eax, edx
00000001401e16e3 lea      r8, [rip + 0x4b6d86]
00000001401e16ea mov      dword ptr [rsp + 0x28], eax
00000001401e16ee mov      edx, 0xbd
00000001401e16f3 mov      qword ptr [rsp + 0x20], r13
00000001401e16f8 call     0x14003ca14
00000001401e16fd mov      ebx, 1
00000001401e1702 jmp      0x1401e1633
00000001401e1707 mov      ecx, r13d
00000001401e170a sub      ecx, 1
00000001401e170d je       0x1401e1726
00000001401e170f sub      ecx, 2
00000001401e1712 je       0x1401e1722
00000001401e1714 sub      ecx, 3
00000001401e1717 je       0x1401e1722
00000001401e1719 cmp      ecx, 3
00000001401e171c je       0x1401e1722
00000001401e171e xor      al, al
00000001401e1720 jmp      0x1401e1728
00000001401e1722 mov      al, 8
00000001401e1724 jmp      0x1401e1728
00000001401e1726 mov      al, 4
00000001401e1728 mov      byte ptr [rbp - 0x2d], al
00000001401e172b movzx    eax, word ptr [rsi + 0x2c]
00000001401e172f lea      r9, [rbp - 0x40]
00000001401e1733 imul     r8, r15, 0x74
00000001401e1737 mov      byte ptr [rsp + 0x28], r14b
00000001401e173c mov      dl, 6
00000001401e173e add      r8, 0x1739
00000001401e1745 mov      word ptr [rsp + 0x20], ax
00000001401e174a add      r8, rdi
00000001401e174d mov      rcx, rdi
00000001401e1750 call     0x1401e292c
00000001401e1755 mov      ebx, eax
00000001401e1757 test     eax, eax
00000001401e1759 jne      0x1401e162c
00000001401e175f cmp      byte ptr [r12 + 0x14], 0
00000001401e1765 je       0x1401e195d
00000001401e176b mov      rax, qword ptr [rdi]
00000001401e176e lea      rdx, [rsi + 0x36]
00000001401e1772 imul     r13, r15, 0x130
00000001401e1779 movzx    r15d, byte ptr [rdi + 0x1cdb]
00000001401e1781 lea      rcx, [rbp - 0x60]
00000001401e1785 mov      rax, qword ptr [rax + 0x798]
00000001401e178c mov      r8d, 6
00000001401e1792 add      rax, 0xe080
00000001401e1798 mov      qword ptr [rsp + 0x30], rax
00000001401e179d call     0x1400311e8
00000001401e17a2 mov      rdx, qword ptr [rsi + 0x18]
00000001401e17a6 lea      rcx, [rbp - 0x5a]
00000001401e17aa add      rdx, 9
00000001401e17ae mov      r8d, 6
00000001401e17b4 call     0x1400311e8
00000001401e17b9 mov      r8d, 6
00000001401e17bf lea      rdx, [rsi + 0x36]
00000001401e17c3 lea      rcx, [rbp - 0x54]
00000001401e17c7 call     0x1400311e8
00000001401e17cc test     r15b, r15b
00000001401e17cf setne    byte ptr [rbp - 0x4e]
00000001401e17d3 test     r15b, r15b
00000001401e17d6 je       0x1401e1813
00000001401e17d8 mov      rcx, qword ptr [rsp + 0x30]
00000001401e17dd mov      dl, r15b
00000001401e17e0 call     0x1401e2190
00000001401e17e5 test     al, al
00000001401e17e7 je       0x1401e17ef
00000001401e17e9 mov      byte ptr [rbp - 0x4d], 0
00000001401e17ed jmp      0x1401e1813
00000001401e17ef mov      ecx, r15d
00000001401e17f2 sub      ecx, 1
00000001401e17f5 je       0x1401e180e
00000001401e17f7 sub      ecx, 2
00000001401e17fa je       0x1401e180a
00000001401e17fc sub      ecx, 3
00000001401e17ff je       0x1401e180a
00000001401e1801 cmp      ecx, 3
00000001401e1804 je       0x1401e180a
00000001401e1806 xor      al, al
00000001401e1808 jmp      0x1401e1810
00000001401e180a mov      al, 8
00000001401e180c jmp      0x1401e1810
00000001401e180e mov      al, 4
00000001401e1810 mov      byte ptr [rbp - 0x4d], al
00000001401e1813 mov      r8b, r14b
00000001401e1816 mov      dl, r15b
00000001401e1819 mov      rcx, rdi
00000001401e181c call     0x1401e25f8
00000001401e1821 lea      rdx, [rdi + 0x1890]
00000001401e1828 mov      byte ptr [rbp - 0x4c], al
00000001401e182b add      rdx, r13
00000001401e182e lea      rcx, [rbp - 0x4b]
00000001401e1832 mov      r8d, 8
00000001401e1838 call     0x1400311e8
00000001401e183d mov      edx, dword ptr [rdi + r13 + 0x1848]
00000001401e1845 mov      cl, byte ptr [rdi + r13 + 0x1825]
00000001401e184d call     0x140202be4
00000001401e1852 mov      byte ptr [rbp - 0x43], al
00000001401e1855 lea      r8, [rdi + 0x194d]
00000001401e185c movzx    eax, word ptr [rsi + 0x2c]
00000001401e1860 lea      r9, [rbp - 0x60]
00000001401e1864 add      r8, r13
00000001401e1867 mov      byte ptr [rsp + 0x28], r14b
00000001401e186c mov      dl, 7
00000001401e186e mov      word ptr [rsp + 0x20], ax
00000001401e1873 mov      rcx, rdi
00000001401e1876 call     0x1401e292c
00000001401e187b mov      ebx, eax
00000001401e187d test     eax, eax
00000001401e187f jne      0x1401e162c
00000001401e1885 cmp      byte ptr [rdi + r13 + 0x1822], al
00000001401e188d je       0x1401e195d
00000001401e1893 mov      rax, qword ptr [rdi]
00000001401e1896 lea      rdx, [rsi + 0x36]
00000001401e189a movzx    ebx, byte ptr [rdi + 0x1cdb]
00000001401e18a1 lea      rcx, [rbp - 0x28]
00000001401e18a5 mov      r8d, 6
00000001401e18ab mov      r15, qword ptr [rax + 0x798]
00000001401e18b2 call     0x1400311e8
00000001401e18b7 mov      rdx, qword ptr [rsi + 0x18]
00000001401e18bb lea      rcx, [rbp - 0x22]
00000001401e18bf add      rdx, 9
00000001401e18c3 mov      r8d, 6
00000001401e18c9 call     0x1400311e8
00000001401e18ce lea      rdx, [rsi + 0x36]
00000001401e18d2 mov      r8d, 6
00000001401e18d8 lea      rcx, [rbp - 0x1c]
00000001401e18dc call     0x1400311e8
00000001401e18e1 test     bl, bl
00000001401e18e3 setne    byte ptr [rbp - 0x16]
00000001401e18e7 test     bl, bl
00000001401e18e9 je       0x1401e1926
00000001401e18eb mov      dl, bl
00000001401e18ed lea      rcx, [r15 + 0xe080]
00000001401e18f4 call     0x1401e2190
00000001401e18f9 test     al, al
00000001401e18fb je       0x1401e1903
00000001401e18fd mov      byte ptr [rbp - 0x15], 0
00000001401e1901 jmp      0x1401e1926
00000001401e1903 mov      ecx, ebx
00000001401e1905 sub      ecx, 1
00000001401e1908 je       0x1401e1921
00000001401e190a sub      ecx, 2
00000001401e190d je       0x1401e191d
00000001401e190f sub      ecx, 3
00000001401e1912 je       0x1401e191d
00000001401e1914 cmp      ecx, 3
00000001401e1917 je       0x1401e191d
00000001401e1919 xor      al, al
00000001401e191b jmp      0x1401e1923
00000001401e191d mov      al, 8
00000001401e191f jmp      0x1401e1923
00000001401e1921 mov      al, 4
00000001401e1923 mov      byte ptr [rbp - 0x15], al
00000001401e1926 movzx    eax, word ptr [rsi + 0x2c]
00000001401e192a lea      r9, [rbp - 0x28]
00000001401e192e imul     r8, r14, 0x130
00000001401e1935 mov      byte ptr [rsp + 0x28], r14b
00000001401e193a mov      dl, 8
00000001401e193c add      r8, 0x194e
00000001401e1943 mov      word ptr [rsp + 0x20], ax
00000001401e1948 add      r8, rdi
00000001401e194b mov      rcx, rdi
00000001401e194e call     0x1401e292c
00000001401e1953 mov      ebx, eax
00000001401e1955 test     eax, eax
00000001401e1957 jne      0x1401e162c
00000001401e195d cmp      byte ptr [r12 + 0x16], 0
00000001401e1963 je       0x1401e1a6e
00000001401e1969 movzx    r8d, word ptr [rdi + 0x1b52]
00000001401e1971 lea      rdx, [rdi + 0x1b5a]
00000001401e1978 lea      rcx, [rbp + 0x140]
00000001401e197f call     0x1400311e8
00000001401e1984 movzx    eax, word ptr [rdi + 0x1b52]
00000001401e198b lea      r8, [rdi + 0x1b4a]
00000001401e1992 mov      word ptr [rbp + 0x1bc], ax
00000001401e1999 lea      r9, [rbp + 0x140]
00000001401e19a0 movzx    eax, word ptr [rsi + 0x2c]
00000001401e19a4 mov      dl, 9
00000001401e19a6 mov      byte ptr [rsp + 0x28], r14b
00000001401e19ab mov      rcx, rdi
00000001401e19ae mov      word ptr [rsp + 0x20], ax
00000001401e19b3 call     0x1401e292c
00000001401e19b8 mov      ebx, eax
00000001401e19ba test     eax, eax
00000001401e19bc jne      0x1401e162c
00000001401e19c2 movzx    r8d, word ptr [rdi + 0x1b56]
00000001401e19ca lea      rdx, [rdi + 0x1c52]
00000001401e19d1 lea      rcx, [rbp + 0x40]
00000001401e19d5 call     0x1400311e8
00000001401e19da movzx    eax, word ptr [rdi + 0x1b56]
00000001401e19e1 lea      r8, [rdi + 0x1b4c]
00000001401e19e8 mov      word ptr [rbp + 0x80], ax
00000001401e19ef lea      r9, [rbp + 0x40]
00000001401e19f3 movzx    eax, word ptr [rsi + 0x2c]
00000001401e19f7 mov      dl, 0xa
00000001401e19f9 mov      byte ptr [rsp + 0x28], r14b
00000001401e19fe mov      rcx, rdi
00000001401e1a01 mov      word ptr [rsp + 0x20], ax
00000001401e1a06 call     0x1401e292c
00000001401e1a0b mov      ebx, eax
00000001401e1a0d test     eax, eax
00000001401e1a0f jne      0x1401e162c
00000001401e1a15 movzx    r8d, word ptr [rdi + 0x1b58]
00000001401e1a1d lea      rdx, [rdi + 0x1c92]
00000001401e1a24 lea      rcx, [rbp + 0x90]
00000001401e1a2b call     0x1400311e8
00000001401e1a30 movzx    eax, word ptr [rdi + 0x1b58]
00000001401e1a37 lea      r8, [rdi + 0x1b4b]
00000001401e1a3e mov      word ptr [rbp + 0xd0], ax
00000001401e1a45 lea      r9, [rbp + 0x90]
00000001401e1a4c movzx    eax, word ptr [rsi + 0x2c]
00000001401e1a50 mov      dl, 0xb
00000001401e1a52 mov      byte ptr [rsp + 0x28], r14b
00000001401e1a57 mov      rcx, rdi
00000001401e1a5a mov      word ptr [rsp + 0x20], ax
00000001401e1a5f call     0x1401e292c
00000001401e1a64 mov      ebx, eax
00000001401e1a66 test     eax, eax
00000001401e1a68 jne      0x1401e162c
00000001401e1a6e cmp      byte ptr [r12 + 0x17], 0
00000001401e1a74 je       0x1401e1bbb
00000001401e1a7a mov      rax, qword ptr [rdi + 0x1700]
00000001401e1a81 test     rax, rax
00000001401e1a84 jne      0x1401e1a9d
00000001401e1a86 mov      rdx, qword ptr [rsi + 0x18]
00000001401e1a8a lea      r8d, [rax + 6]
00000001401e1a8e add      rdx, 9
00000001401e1a92 lea      rcx, [rbp - 0x10]
00000001401e1a96 call     0x1400311e8
00000001401e1a9b jmp      0x1401e1aa1
00000001401e1a9d mov      qword ptr [rbp - 8], rax
00000001401e1aa1 movzx    eax, word ptr [rsi + 0x2c]
00000001401e1aa5 lea      r8, [rdi + 0x262]
00000001401e1aac mov      byte ptr [rsp + 0x28], r14b
00000001401e1ab1 lea      r9, [rbp - 0x10]
00000001401e1ab5 mov      dl, 0x11
00000001401e1ab7 mov      word ptr [rsp + 0x20], ax
00000001401e1abc mov      rcx, rdi
00000001401e1abf call     0x1401e292c
00000001401e1ac4 mov      ebx, eax
00000001401e1ac6 test     eax, eax
00000001401e1ac8 jne      0x1401e162c
00000001401e1ace movzx    eax, word ptr [rsi + 0x2c]
00000001401e1ad2 lea      r8, [rdi + 0x263]
00000001401e1ad9 mov      byte ptr [rsp + 0x28], r14b
00000001401e1ade lea      r9, [rbp - 0x10]
00000001401e1ae2 mov      dl, 0x12
00000001401e1ae4 mov      word ptr [rsp + 0x20], ax
00000001401e1ae9 mov      rcx, rdi
00000001401e1aec call     0x1401e292c
00000001401e1af1 mov      ebx, eax
00000001401e1af3 test     eax, eax
00000001401e1af5 jne      0x1401e162c
00000001401e1afb movzx    eax, word ptr [rsi + 0x2c]
00000001401e1aff lea      r8, [rdi + 0x264]
00000001401e1b06 mov      byte ptr [rsp + 0x28], r14b
00000001401e1b0b lea      r9, [rbp - 0x10]
00000001401e1b0f mov      dl, 0x13
00000001401e1b11 mov      word ptr [rsp + 0x20], ax
00000001401e1b16 mov      rcx, rdi
00000001401e1b19 call     0x1401e292c
00000001401e1b1e mov      ebx, eax
00000001401e1b20 test     eax, eax
00000001401e1b22 jne      0x1401e162c
00000001401e1b28 mov      rbx, qword ptr [rdi + 0x90]
00000001401e1b2f lea      r15, [rdi + 0x100]
00000001401e1b36 mov      r14, qword ptr [rdi]
00000001401e1b39 xor      edx, edx
00000001401e1b3b mov      qword ptr [rsp + 0x28], r15
00000001401e1b40 mov      r9, qword ptr [rbx + 0x18]
00000001401e1b44 mov      al, byte ptr [rbx + 0x2e]
00000001401e1b47 movzx    r8d, word ptr [rbx + 0x2c]
00000001401e1b4c mov      rcx, qword ptr [r14 + 0x8d08]
00000001401e1b53 mov      r9b, byte ptr [r9 + 0x19]
00000001401e1b57 mov      byte ptr [rsp + 0x20], al
00000001401e1b5b call     0x14025bef0
00000001401e1b60 test     eax, eax
00000001401e1b62 je       0x1401e1b6e
00000001401e1b64 mov      ebx, 1
00000001401e1b69 jmp      0x1401e162c
00000001401e1b6e mov      rcx, qword ptr [r14 + 0x8d08]
00000001401e1b75 mov      rdx, r15
00000001401e1b78 call     0x14025c018
00000001401e1b7d test     eax, eax
00000001401e1b7f jne      0x1401e1b64
00000001401e1b81 mov      r9, qword ptr [rbx + 0x18]
00000001401e1b85 mov      al, byte ptr [rbx + 0x2e]
00000001401e1b88 movzx    r8d, word ptr [rbx + 0x2c]
00000001401e1b8d mov      rcx, qword ptr [r14 + 0x8d08]
00000001401e1b94 mov      r9b, byte ptr [r9 + 0x19]
00000001401e1b98 mov      qword ptr [rsp + 0x28], r15
00000001401e1b9d mov      r15d, 1
00000001401e1ba3 mov      edx, r15d
00000001401e1ba6 mov      byte ptr [rsp + 0x20], al
00000001401e1baa call     0x14025bef0
00000001401e1baf test     eax, eax
00000001401e1bb1 je       0x1401e1bc1
00000001401e1bb3 mov      ebx, r15d
00000001401e1bb6 jmp      0x1401e162c
00000001401e1bbb mov      r15d, 1
00000001401e1bc1 lea      r8, [rsp + 0x40]
00000001401e1bc6 mov      rdx, r12
00000001401e1bc9 mov      rcx, rdi
00000001401e1bcc call     0x1401e2b70
00000001401e1bd1 mov      rbx, qword ptr [rsp + 0x38]
00000001401e1bd6 lea      r9, [rsp + 0x40]
00000001401e1bdb movzx    r8d, word ptr [rsi + 0x2c]
00000001401e1be0 mov      rdx, qword ptr [rbx + 0x8d08]
00000001401e1be7 mov      rcx, qword ptr [rbx + 0x798]
00000001401e1bee call     0x14025cd4c
00000001401e1bf3 test     eax, eax
00000001401e1bf5 je       0x1401e1c49
00000001401e1bf7 mov      rcx, qword ptr [rip + 0x73e402]
00000001401e1bfe lea      r14, [rip + 0x73e3fb]
00000001401e1c05 cmp      rcx, r14
00000001401e1c08 je       0x1401e1c41
00000001401e1c0a cmp      byte ptr [rcx + 0x169], 2
00000001401e1c11 jb       0x1401e1c41
00000001401e1c13 mov      edx, dword ptr [rcx + 0x16c]
00000001401e1c19 test     r15b, dl
00000001401e1c1c je       0x1401e1c41
00000001401e1c1e mov      edx, 0xbe
00000001401e1c23 mov      dword ptr [rsp + 0x20], eax
00000001401e1c27 mov      rcx, qword ptr [rcx + 0x158]
00000001401e1c2e lea      r9, [rip + 0x42c75b]
00000001401e1c35 lea      r8, [rip + 0x4b6834]
00000001401e1c3c call     0x1400088d8
00000001401e1c41 mov      ebx, r15d
00000001401e1c44 jmp      0x1401e1633
00000001401e1c49 mov      rcx, qword ptr [rbx + 0x8d08]
00000001401e1c50 call     0x14025d474
00000001401e1c55 test     eax, eax
00000001401e1c57 je       0x1401e1ca5
00000001401e1c59 mov      rcx, qword ptr [rip + 0x73e3a0]
00000001401e1c60 lea      r14, [rip + 0x73e399]
00000001401e1c67 cmp      rcx, r14
00000001401e1c6a je       0x1401e1cac
00000001401e1c6c cmp      byte ptr [rcx + 0x169], 2
00000001401e1c73 jb       0x1401e1cac
00000001401e1c75 mov      edx, dword ptr [rcx + 0x16c]
00000001401e1c7b test     r15b, dl
00000001401e1c7e je       0x1401e1cac
00000001401e1c80 mov      rcx, qword ptr [rcx + 0x158]
00000001401e1c87 lea      r9, [rip + 0x42c702]
00000001401e1c8e mov      edx, 0xbf
00000001401e1c93 mov      dword ptr [rsp + 0x20], eax
00000001401e1c97 lea      r8, [rip + 0x4b67d2]
00000001401e1c9e call     0x1400088d8
00000001401e1ca3 jmp      0x1401e1cac
00000001401e1ca5 lea      r14, [rip + 0x73e354]
00000001401e1cac movzx    r8d, word ptr [rsi + 0x2c]
00000001401e1cb1 lea      r9, [rsp + 0x40]
00000001401e1cb6 mov      rdx, qword ptr [rbx + 0x8d08]
00000001401e1cbd mov      rcx, qword ptr [rbx + 0x798]
00000001401e1cc4 call     0x14025cfbc
00000001401e1cc9 mov      r8d, eax
00000001401e1ccc test     eax, eax
00000001401e1cce je       0x1401e1d12
00000001401e1cd0 or       dword ptr [rdi + 0x80], 8
00000001401e1cd7 mov      rcx, qword ptr [rip + 0x73e322]
00000001401e1cde cmp      rcx, r14
00000001401e1ce1 je       0x1401e1c41
00000001401e1ce7 cmp      byte ptr [rcx + 0x169], 2
00000001401e1cee jb       0x1401e1c41
00000001401e1cf4 mov      eax, dword ptr [rcx + 0x16c]
00000001401e1cfa test     r15b, al
00000001401e1cfd je       0x1401e1c41
00000001401e1d03 mov      edx, 0xc0
00000001401e1d08 mov      dword ptr [rsp + 0x20], r8d
00000001401e1d0d jmp      0x1401e1c27
00000001401e1d12 mov      byte ptr [rdi + 0x70], r15b
00000001401e1d16 xor      ebx, ebx
00000001401e1d18 jmp      0x1401e1633