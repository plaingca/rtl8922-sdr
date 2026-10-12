00000001405b112c mov      qword ptr [rsp + 0x10], rbx
00000001405b1131 mov      qword ptr [rsp + 0x18], rsi
00000001405b1136 mov      qword ptr [rsp + 0x20], rdi
00000001405b113b push     rbp
00000001405b113c push     r12
00000001405b113e push     r13
00000001405b1140 push     r14
00000001405b1142 push     r15
00000001405b1144 mov      rbp, rsp
00000001405b1147 sub      rsp, 0x30
00000001405b114b mov      rax, qword ptr [rcx]
00000001405b114e lea      r12, [rcx + 0x1208]
00000001405b1155 mov      ebx, edx
00000001405b1157 mov      rdi, rcx
00000001405b115a mov      rdx, r12
00000001405b115d mov      rsi, qword ptr [rax]
00000001405b1160 mov      rax, qword ptr [rcx + 0x18]
00000001405b1164 mov      rcx, qword ptr [rcx + 8]
00000001405b1168 mov      rax, qword ptr [rax + 0x108]
00000001405b116f call     qword ptr [rip + 0xd3183]
00000001405b1175 mov      ecx, dword ptr [rdi + 0xef8]
00000001405b117b mov      r13d, 1
00000001405b1181 inc      ecx
00000001405b1183 mov      dword ptr [rdi + 0xef8], ecx
00000001405b1189 cmp      ecx, r13d
00000001405b118c je       0x1405b11ba
00000001405b118e mov      rax, qword ptr [rdi + 0x18]
00000001405b1192 lea      r8, [rip + 0xb4367]
00000001405b1199 mov      dword ptr [rsp + 0x20], ecx
00000001405b119d lea      edx, [r13 + 1]
00000001405b11a1 mov      rcx, qword ptr [rdi + 8]
00000001405b11a5 mov      r9d, ebx
00000001405b11a8 mov      rax, qword ptr [rax + 0x118]
00000001405b11af call     qword ptr [rip + 0xd3143]
00000001405b11b5 jmp      0x1405bcaac
00000001405b11ba cmp      ebx, 0x69
00000001405b11bd ja       0x1405b4d7f
00000001405b11c3 je       0x1405b4cb1
00000001405b11c9 cmp      ebx, 0x34
00000001405b11cc ja       0x1405b3172
00000001405b11d2 je       0x1405b3128
00000001405b11d8 cmp      ebx, 0x1a
00000001405b11db ja       0x1405b290b
00000001405b11e1 je       0x1405b28c1
00000001405b11e7 cmp      ebx, 0xd
00000001405b11ea ja       0x1405b1ef7
00000001405b11f0 je       0x1405b1ead
00000001405b11f6 cmp      ebx, 6
00000001405b11f9 ja       0x1405b1890
00000001405b11ff je       0x1405b1846
00000001405b1205 test     ebx, ebx
00000001405b1207 je       0x1405b16cc
00000001405b120d sub      ebx, r13d
00000001405b1210 je       0x1405b159c
00000001405b1216 sub      ebx, r13d
00000001405b1219 je       0x1405b146c
00000001405b121f sub      ebx, r13d
00000001405b1222 je       0x1405b12f2
00000001405b1228 sub      ebx, r13d
00000001405b122b je       0x1405b12a8
00000001405b122d cmp      ebx, r13d
00000001405b1230 jne      0x1405bca8d
00000001405b1236 mov      rax, qword ptr [rdi + 0x18]
00000001405b123a lea      r8, [rip + 0xb730f]
00000001405b1241 mov      rcx, qword ptr [rdi + 8]
00000001405b1245 mov      edx, r13d
00000001405b1248 mov      rax, qword ptr [rax + 0x118]
00000001405b124f call     qword ptr [rip + 0xd30a3]
00000001405b1255 mov      rax, qword ptr [rdi + 0x18]
00000001405b1259 lea      r8, [rip + 0xb7320]
00000001405b1260 mov      rcx, qword ptr [rdi + 8]
00000001405b1264 mov      edx, r13d
00000001405b1267 mov      rax, qword ptr [rax + 0x118]
00000001405b126e call     qword ptr [rip + 0xd3084]
00000001405b1274 mov      r9b, r13b
00000001405b1277 mov      byte ptr [rsp + 0x20], 0
00000001405b127c xor      r8d, r8d
00000001405b127f lea      rdx, [rip + 0x720a92]
00000001405b1286 mov      rcx, rdi
00000001405b1289 call     0x14056e2c0
00000001405b128e mov      ebx, eax
00000001405b1290 test     eax, eax
00000001405b1292 je       0x1405bd0df
00000001405b1298 mov      rcx, qword ptr [rdi + 0x18]
00000001405b129c mov      rax, qword ptr [rcx + 0x118]
00000001405b12a3 jmp      0x1405bd0c6
00000001405b12a8 mov      rax, qword ptr [rdi + 0x18]
00000001405b12ac lea      r8, [rip + 0xb723d]
00000001405b12b3 mov      rcx, qword ptr [rdi + 8]
00000001405b12b7 mov      edx, r13d
00000001405b12ba mov      rax, qword ptr [rax + 0x118]
00000001405b12c1 call     qword ptr [rip + 0xd3031]
00000001405b12c7 mov      rax, qword ptr [rdi + 0x18]
00000001405b12cb lea      r8, [rip + 0xb724e]
00000001405b12d2 mov      rcx, qword ptr [rdi + 8]
00000001405b12d6 mov      edx, r13d
00000001405b12d9 mov      rax, qword ptr [rax + 0x118]
00000001405b12e0 call     qword ptr [rip + 0xd3012]
00000001405b12e6 lea      rdx, [rip + 0x720a1b]
00000001405b12ed jmp      0x1405bd0a2
00000001405b12f2 mov      rax, qword ptr [rdi + 0x18]
00000001405b12f6 lea      r8, [rip + 0xb7103]
00000001405b12fd mov      rcx, qword ptr [rdi + 8]
00000001405b1301 mov      edx, r13d
00000001405b1304 mov      rax, qword ptr [rax + 0x118]
00000001405b130b call     qword ptr [rip + 0xd2fe7]
00000001405b1311 mov      rax, qword ptr [rsi + 0x20]
00000001405b1315 mov      r14d, 0xf4
00000001405b131b mov      edx, r14d
00000001405b131e mov      rcx, rdi
00000001405b1321 call     qword ptr [rip + 0xd2fd1]
00000001405b1327 mov      r9d, 0x186000f4
00000001405b132d lea      r8, [rip + 0xb6e9c]
00000001405b1334 btr      eax, 0x11
00000001405b1338 mov      edx, r13d
00000001405b133b bts      eax, 0x10
00000001405b133f mov      dword ptr [rbp + 0x30], eax
00000001405b1342 mov      rax, qword ptr [rdi + 0x18]
00000001405b1346 mov      rcx, qword ptr [rdi + 8]
00000001405b134a mov      rax, qword ptr [rax + 0x118]
00000001405b1351 call     qword ptr [rip + 0xd2fa1]
00000001405b1357 mov      rax, qword ptr [rsi + 0x28]
00000001405b135b mov      edx, r14d
00000001405b135e mov      r8d, dword ptr [rbp + 0x30]
00000001405b1362 mov      rcx, rdi
00000001405b1365 call     qword ptr [rip + 0xd2f8d]
00000001405b136b mov      rax, qword ptr [rsi + 0x20]
00000001405b136f mov      ebx, 0x58
00000001405b1374 mov      edx, ebx
00000001405b1376 mov      rcx, rdi
00000001405b1379 call     qword ptr [rip + 0xd2f79]
00000001405b137f mov      r9d, 0x18600058
00000001405b1385 lea      r8, [rip + 0xb70a4]
00000001405b138c and      eax, 0xffffffa6
00000001405b138f mov      edx, r13d
00000001405b1392 or       eax, 0xa6
00000001405b1397 mov      dword ptr [rbp + 0x30], eax
00000001405b139a mov      rax, qword ptr [rdi + 0x18]
00000001405b139e mov      rcx, qword ptr [rdi + 8]
00000001405b13a2 mov      rax, qword ptr [rax + 0x118]
00000001405b13a9 call     qword ptr [rip + 0xd2f49]
00000001405b13af mov      eax, dword ptr [rbp + 0x30]
00000001405b13b2 lea      r8, [rip + 0xb70a7]
00000001405b13b9 and      eax, 0xffa6ffff
00000001405b13be mov      r9d, 0x18600058
00000001405b13c4 or       eax, 0xa60000
00000001405b13c9 mov      edx, r13d
00000001405b13cc mov      dword ptr [rbp + 0x30], eax
00000001405b13cf mov      rax, qword ptr [rdi + 0x18]
00000001405b13d3 mov      rcx, qword ptr [rdi + 8]
00000001405b13d7 mov      rax, qword ptr [rax + 0x118]
00000001405b13de call     qword ptr [rip + 0xd2f14]
00000001405b13e4 mov      rax, qword ptr [rsi + 0x28]
00000001405b13e8 mov      edx, ebx
00000001405b13ea mov      r8d, dword ptr [rbp + 0x30]
00000001405b13ee mov      rcx, rdi
00000001405b13f1 call     qword ptr [rip + 0xd2f01]
00000001405b13f7 mov      rax, qword ptr [rsi]
00000001405b13fa mov      ebx, 0x110f4
00000001405b13ff mov      edx, ebx
00000001405b1401 mov      rcx, rdi
00000001405b1404 call     qword ptr [rip + 0xd2eee]
00000001405b140a mov      rax, qword ptr [rdi + 0x18]
00000001405b140e lea      r8, [rip + 0xb707b]
00000001405b1415 mov      rcx, qword ptr [rdi + 8]
00000001405b1419 mov      r9d, 0x186110f4
00000001405b141f mov      edx, r13d
00000001405b1422 mov      rax, qword ptr [rax + 0x118]
00000001405b1429 call     qword ptr [rip + 0xd2ec9]
00000001405b142f mov      rax, qword ptr [rsi + 8]
00000001405b1433 mov      r8b, r13b
00000001405b1436 mov      edx, ebx
00000001405b1438 mov      rcx, rdi
00000001405b143b call     qword ptr [rip + 0xd2eb7]
00000001405b1441 mov      rax, qword ptr [rdi + 0x18]
00000001405b1445 lea      r8, [rip + 0xb7074]
00000001405b144c mov      rcx, qword ptr [rdi + 8]
00000001405b1450 mov      edx, r13d
00000001405b1453 mov      rax, qword ptr [rax + 0x118]
00000001405b145a call     qword ptr [rip + 0xd2e98]
00000001405b1460 lea      rdx, [rip + 0x720891]
00000001405b1467 jmp      0x1405bd0a2
00000001405b146c mov      rax, qword ptr [rdi + 0x18]
00000001405b1470 lea      r8, [rip + 0xb6f29]
00000001405b1477 mov      rcx, qword ptr [rdi + 8]
00000001405b147b mov      edx, r13d
00000001405b147e mov      rax, qword ptr [rax + 0x118]
00000001405b1485 call     qword ptr [rip + 0xd2e6d]
00000001405b148b mov      rax, qword ptr [rsi + 0x20]
00000001405b148f mov      r14d, 0xf4
00000001405b1495 mov      edx, r14d
00000001405b1498 mov      rcx, rdi
00000001405b149b call     qword ptr [rip + 0xd2e57]
00000001405b14a1 mov      r9d, 0x186000f4
00000001405b14a7 lea      r8, [rip + 0xb6d22]
00000001405b14ae btr      eax, 0x11
00000001405b14b2 mov      edx, r13d
00000001405b14b5 bts      eax, 0x10
00000001405b14b9 mov      dword ptr [rbp + 0x30], eax
00000001405b14bc mov      rax, qword ptr [rdi + 0x18]
00000001405b14c0 mov      rcx, qword ptr [rdi + 8]
00000001405b14c4 mov      rax, qword ptr [rax + 0x118]
00000001405b14cb call     qword ptr [rip + 0xd2e27]
00000001405b14d1 mov      rax, qword ptr [rsi + 0x28]
00000001405b14d5 mov      edx, r14d
00000001405b14d8 mov      r8d, dword ptr [rbp + 0x30]
00000001405b14dc mov      rcx, rdi
00000001405b14df call     qword ptr [rip + 0xd2e13]
00000001405b14e5 mov      rax, qword ptr [rsi + 0x20]
00000001405b14e9 mov      ebx, 0x58
00000001405b14ee mov      edx, ebx
00000001405b14f0 mov      rcx, rdi
00000001405b14f3 call     qword ptr [rip + 0xd2dff]
00000001405b14f9 mov      r9d, 0x18600058
00000001405b14ff lea      r8, [rip + 0xb6e0a]
00000001405b1506 and      eax, 0xffffffa7
00000001405b1509 mov      edx, r13d
00000001405b150c or       eax, 0xa7
00000001405b1511 mov      dword ptr [rbp + 0x30], eax
00000001405b1514 mov      rax, qword ptr [rdi + 0x18]
00000001405b1518 mov      rcx, qword ptr [rdi + 8]
00000001405b151c mov      rax, qword ptr [rax + 0x118]
00000001405b1523 call     qword ptr [rip + 0xd2dcf]
00000001405b1529 mov      eax, dword ptr [rbp + 0x30]
00000001405b152c lea      r8, [rip + 0xb6e0d]
00000001405b1533 and      eax, 0xffa7ffff
00000001405b1538 mov      r9d, 0x18600058
00000001405b153e or       eax, 0xa70000
00000001405b1543 mov      edx, r13d
00000001405b1546 mov      dword ptr [rbp + 0x30], eax
00000001405b1549 mov      rax, qword ptr [rdi + 0x18]
00000001405b154d mov      rcx, qword ptr [rdi + 8]
00000001405b1551 mov      rax, qword ptr [rax + 0x118]
00000001405b1558 call     qword ptr [rip + 0xd2d9a]
00000001405b155e mov      rax, qword ptr [rsi + 0x28]
00000001405b1562 mov      edx, ebx
00000001405b1564 mov      r8d, dword ptr [rbp + 0x30]
00000001405b1568 mov      rcx, rdi
00000001405b156b call     qword ptr [rip + 0xd2d87]
00000001405b1571 mov      rax, qword ptr [rdi + 0x18]
00000001405b1575 lea      r8, [rip + 0xb6e54]
00000001405b157c mov      rcx, qword ptr [rdi + 8]
00000001405b1580 mov      edx, r13d
00000001405b1583 mov      rax, qword ptr [rax + 0x118]
00000001405b158a call     qword ptr [rip + 0xd2d68]
00000001405b1590 lea      rdx, [rip + 0x720751]
00000001405b1597 jmp      0x1405bd0a2
00000001405b159c mov      rax, qword ptr [rdi + 0x18]
00000001405b15a0 lea      r8, [rip + 0xb6d39]
00000001405b15a7 mov      rcx, qword ptr [rdi + 8]
00000001405b15ab mov      edx, r13d
00000001405b15ae mov      rax, qword ptr [rax + 0x118]
00000001405b15b5 call     qword ptr [rip + 0xd2d3d]
00000001405b15bb mov      rax, qword ptr [rsi + 0x20]
00000001405b15bf mov      r14d, 0xf4
00000001405b15c5 mov      edx, r14d
00000001405b15c8 mov      rcx, rdi
00000001405b15cb call     qword ptr [rip + 0xd2d27]
00000001405b15d1 mov      r9d, 0x186000f4
00000001405b15d7 lea      r8, [rip + 0xb6bf2]
00000001405b15de btr      eax, 0x11
00000001405b15e2 mov      edx, r13d
00000001405b15e5 bts      eax, 0x10
00000001405b15e9 mov      dword ptr [rbp + 0x30], eax
00000001405b15ec mov      rax, qword ptr [rdi + 0x18]
00000001405b15f0 mov      rcx, qword ptr [rdi + 8]
00000001405b15f4 mov      rax, qword ptr [rax + 0x118]
00000001405b15fb call     qword ptr [rip + 0xd2cf7]
00000001405b1601 mov      rax, qword ptr [rsi + 0x28]
00000001405b1605 mov      edx, r14d
00000001405b1608 mov      r8d, dword ptr [rbp + 0x30]
00000001405b160c mov      rcx, rdi
00000001405b160f call     qword ptr [rip + 0xd2ce3]
00000001405b1615 mov      rax, qword ptr [rsi + 0x20]
00000001405b1619 mov      ebx, 0x58
00000001405b161e mov      edx, ebx
00000001405b1620 mov      rcx, rdi
00000001405b1623 call     qword ptr [rip + 0xd2ccf]
00000001405b1629 mov      r9d, 0x18600058
00000001405b162f lea      r8, [rip + 0xb6cda]
00000001405b1636 and      eax, 0xffffffa7
00000001405b1639 mov      edx, r13d
00000001405b163c or       eax, 0xa7
00000001405b1641 mov      dword ptr [rbp + 0x30], eax
00000001405b1644 mov      rax, qword ptr [rdi + 0x18]
00000001405b1648 mov      rcx, qword ptr [rdi + 8]
00000001405b164c mov      rax, qword ptr [rax + 0x118]
00000001405b1653 call     qword ptr [rip + 0xd2c9f]
00000001405b1659 mov      eax, dword ptr [rbp + 0x30]
00000001405b165c lea      r8, [rip + 0xb6cdd]
00000001405b1663 and      eax, 0xffa7ffff
00000001405b1668 mov      r9d, 0x18600058
00000001405b166e or       eax, 0xa70000
00000001405b1673 mov      edx, r13d
00000001405b1676 mov      dword ptr [rbp + 0x30], eax
00000001405b1679 mov      rax, qword ptr [rdi + 0x18]
00000001405b167d mov      rcx, qword ptr [rdi + 8]
00000001405b1681 mov      rax, qword ptr [rax + 0x118]
00000001405b1688 call     qword ptr [rip + 0xd2c6a]
00000001405b168e mov      rax, qword ptr [rsi + 0x28]
00000001405b1692 mov      edx, ebx
00000001405b1694 mov      r8d, dword ptr [rbp + 0x30]
00000001405b1698 mov      rcx, rdi
00000001405b169b call     qword ptr [rip + 0xd2c57]
00000001405b16a1 mov      rax, qword ptr [rdi + 0x18]
00000001405b16a5 lea      r8, [rip + 0xb6cc4]
00000001405b16ac mov      rcx, qword ptr [rdi + 8]
00000001405b16b0 mov      edx, r13d
00000001405b16b3 mov      rax, qword ptr [rax + 0x118]
00000001405b16ba call     qword ptr [rip + 0xd2c38]
00000001405b16c0 lea      rdx, [rip + 0x720611]
00000001405b16c7 jmp      0x1405bd0a2
00000001405b16cc mov      rax, qword ptr [rdi + 0x18]
00000001405b16d0 lea      r8, [rip + 0xb6ac9]
00000001405b16d7 mov      rcx, qword ptr [rdi + 8]
00000001405b16db mov      edx, r13d
00000001405b16de mov      rax, qword ptr [rax + 0x118]
00000001405b16e5 call     qword ptr [rip + 0xd2c0d]
00000001405b16eb mov      rax, qword ptr [rsi + 0x20]
00000001405b16ef mov      r14d, 0xf4
00000001405b16f5 mov      edx, r14d
00000001405b16f8 mov      rcx, rdi
00000001405b16fb call     qword ptr [rip + 0xd2bf7]
00000001405b1701 mov      r9d, 0x186000f4
00000001405b1707 lea      r8, [rip + 0xb6ac2]
00000001405b170e btr      eax, 0x11
00000001405b1712 mov      edx, r13d
00000001405b1715 bts      eax, 0x10
00000001405b1719 mov      dword ptr [rbp + 0x30], eax
00000001405b171c mov      rax, qword ptr [rdi + 0x18]
00000001405b1720 mov      rcx, qword ptr [rdi + 8]
00000001405b1724 mov      rax, qword ptr [rax + 0x118]
00000001405b172b call     qword ptr [rip + 0xd2bc7]
00000001405b1731 mov      rax, qword ptr [rsi + 0x28]
00000001405b1735 mov      edx, r14d
00000001405b1738 mov      r8d, dword ptr [rbp + 0x30]
00000001405b173c mov      rcx, rdi
00000001405b173f call     qword ptr [rip + 0xd2bb3]
00000001405b1745 mov      rax, qword ptr [rsi + 0x20]
00000001405b1749 mov      ebx, 0x58
00000001405b174e mov      edx, ebx
00000001405b1750 mov      rcx, rdi
00000001405b1753 call     qword ptr [rip + 0xd2b9f]
00000001405b1759 mov      r9d, 0x18600058
00000001405b175f lea      r8, [rip + 0xb6a9a]
00000001405b1766 and      eax, 0xffffffa5
00000001405b1769 mov      edx, r13d
00000001405b176c or       eax, 0xa5
00000001405b1771 mov      dword ptr [rbp + 0x30], eax
00000001405b1774 mov      rax, qword ptr [rdi + 0x18]
00000001405b1778 mov      rcx, qword ptr [rdi + 8]
00000001405b177c mov      rax, qword ptr [rax + 0x118]
00000001405b1783 call     qword ptr [rip + 0xd2b6f]
00000001405b1789 mov      eax, dword ptr [rbp + 0x30]
00000001405b178c lea      r8, [rip + 0xb6a9d]
00000001405b1793 and      eax, 0xffa5ffff
00000001405b1798 mov      r9d, 0x18600058
00000001405b179e or       eax, 0xa50000
00000001405b17a3 mov      edx, r13d
00000001405b17a6 mov      dword ptr [rbp + 0x30], eax
00000001405b17a9 mov      rax, qword ptr [rdi + 0x18]
00000001405b17ad mov      rcx, qword ptr [rdi + 8]
00000001405b17b1 mov      rax, qword ptr [rax + 0x118]
00000001405b17b8 call     qword ptr [rip + 0xd2b3a]
00000001405b17be mov      rax, qword ptr [rsi + 0x28]
00000001405b17c2 mov      edx, ebx
00000001405b17c4 mov      r8d, dword ptr [rbp + 0x30]
00000001405b17c8 mov      rcx, rdi
00000001405b17cb call     qword ptr [rip + 0xd2b27]
00000001405b17d1 mov      rax, qword ptr [rsi]
00000001405b17d4 mov      ebx, 0x110f4
00000001405b17d9 mov      edx, ebx
00000001405b17db mov      rcx, rdi
00000001405b17de call     qword ptr [rip + 0xd2b14]
00000001405b17e4 mov      rax, qword ptr [rdi + 0x18]
00000001405b17e8 lea      r8, [rip + 0xb6a71]
00000001405b17ef mov      rcx, qword ptr [rdi + 8]
00000001405b17f3 mov      r9d, 0x186110f4
00000001405b17f9 mov      edx, r13d
00000001405b17fc mov      rax, qword ptr [rax + 0x118]
00000001405b1803 call     qword ptr [rip + 0xd2aef]
00000001405b1809 mov      rax, qword ptr [rsi + 8]
00000001405b180d xor      r8d, r8d
00000001405b1810 mov      edx, ebx
00000001405b1812 mov      rcx, rdi
00000001405b1815 call     qword ptr [rip + 0xd2add]
00000001405b181b mov      rax, qword ptr [rdi + 0x18]
00000001405b181f lea      r8, [rip + 0xb6a6a]
00000001405b1826 mov      rcx, qword ptr [rdi + 8]
00000001405b182a mov      edx, r13d
00000001405b182d mov      rax, qword ptr [rax + 0x118]
00000001405b1834 call     qword ptr [rip + 0xd2abe]
00000001405b183a lea      rdx, [rip + 0x720487]
00000001405b1841 jmp      0x1405bd0a2
00000001405b1846 mov      rax, qword ptr [rdi + 0x18]
00000001405b184a lea      r8, [rip + 0xcc41f]
00000001405b1851 mov      rcx, qword ptr [rdi + 8]
00000001405b1855 mov      edx, r13d
00000001405b1858 mov      rax, qword ptr [rax + 0x118]
00000001405b185f call     qword ptr [rip + 0xd2a93]
00000001405b1865 mov      rax, qword ptr [rdi + 0x18]
00000001405b1869 lea      r8, [rip + 0xcc430]
00000001405b1870 mov      rcx, qword ptr [rdi + 8]
00000001405b1874 mov      edx, r13d
00000001405b1877 mov      rax, qword ptr [rax + 0x118]
00000001405b187e call     qword ptr [rip + 0xd2a74]
00000001405b1884 lea      rdx, [rip + 0x72049d]
00000001405b188b jmp      0x1405bd0a2
00000001405b1890 sub      ebx, 7
00000001405b1893 je       0x1405b1d33
00000001405b1899 sub      ebx, r13d
00000001405b189c je       0x1405b1c03
00000001405b18a2 sub      ebx, r13d
00000001405b18a5 je       0x1405b1ad3
00000001405b18ab sub      ebx, r13d
00000001405b18ae je       0x1405b1959
00000001405b18b4 sub      ebx, r13d
00000001405b18b7 je       0x1405b190f
00000001405b18b9 cmp      ebx, r13d
00000001405b18bc jne      0x1405bca8d
00000001405b18c2 mov      rax, qword ptr [rdi + 0x18]
00000001405b18c6 lea      r8, [rip + 0xb6fe3]
00000001405b18cd mov      rcx, qword ptr [rdi + 8]
00000001405b18d1 mov      edx, r13d
00000001405b18d4 mov      rax, qword ptr [rax + 0x118]
00000001405b18db call     qword ptr [rip + 0xd2a17]
00000001405b18e1 mov      rax, qword ptr [rdi + 0x18]
00000001405b18e5 lea      r8, [rip + 0xb6ff4]
00000001405b18ec mov      rcx, qword ptr [rdi + 8]
00000001405b18f0 mov      edx, r13d
00000001405b18f3 mov      rax, qword ptr [rax + 0x118]
00000001405b18fa call     qword ptr [rip + 0xd29f8]
00000001405b1900 mov      r9b, r13b
00000001405b1903 lea      rdx, [rip + 0x72047e]
00000001405b190a jmp      0x1405bd0a5
00000001405b190f mov      rax, qword ptr [rdi + 0x18]
00000001405b1913 lea      r8, [rip + 0xb6f36]
00000001405b191a mov      rcx, qword ptr [rdi + 8]
00000001405b191e mov      edx, r13d
00000001405b1921 mov      rax, qword ptr [rax + 0x118]
00000001405b1928 call     qword ptr [rip + 0xd29ca]
00000001405b192e mov      rax, qword ptr [rdi + 0x18]
00000001405b1932 lea      r8, [rip + 0xb6f47]
00000001405b1939 mov      rcx, qword ptr [rdi + 8]
00000001405b193d mov      edx, r13d
00000001405b1940 mov      rax, qword ptr [rax + 0x118]
00000001405b1947 call     qword ptr [rip + 0xd29ab]
00000001405b194d lea      rdx, [rip + 0x720424]
00000001405b1954 jmp      0x1405bd0a2
00000001405b1959 mov      rax, qword ptr [rdi + 0x18]
00000001405b195d lea      r8, [rip + 0xb6e2c]
00000001405b1964 mov      rcx, qword ptr [rdi + 8]
00000001405b1968 mov      edx, r13d
00000001405b196b mov      rax, qword ptr [rax + 0x118]
00000001405b1972 call     qword ptr [rip + 0xd2980]
00000001405b1978 mov      rax, qword ptr [rsi + 0x20]
00000001405b197c mov      r14d, 0xf4
00000001405b1982 mov      edx, r14d
00000001405b1985 mov      rcx, rdi
00000001405b1988 call     qword ptr [rip + 0xd296a]
00000001405b198e mov      r9d, 0x186000f4
00000001405b1994 lea      r8, [rip + 0xb6835]
00000001405b199b btr      eax, 0x11
00000001405b199f mov      edx, r13d
00000001405b19a2 bts      eax, 0x10
00000001405b19a6 mov      dword ptr [rbp + 0x30], eax
00000001405b19a9 mov      rax, qword ptr [rdi + 0x18]
00000001405b19ad mov      rcx, qword ptr [rdi + 8]
00000001405b19b1 mov      rax, qword ptr [rax + 0x118]
00000001405b19b8 call     qword ptr [rip + 0xd293a]
00000001405b19be mov      rax, qword ptr [rsi + 0x28]
00000001405b19c2 mov      edx, r14d
00000001405b19c5 mov      r8d, dword ptr [rbp + 0x30]
00000001405b19c9 mov      rcx, rdi
00000001405b19cc call     qword ptr [rip + 0xd2926]
00000001405b19d2 mov      rax, qword ptr [rsi + 0x20]
00000001405b19d6 mov      ebx, 0x58
00000001405b19db mov      edx, ebx
00000001405b19dd mov      rcx, rdi
00000001405b19e0 call     qword ptr [rip + 0xd2912]
00000001405b19e6 mov      r9d, 0x18600058
00000001405b19ec lea      r8, [rip + 0xb6dcd]
00000001405b19f3 and      eax, 0xffffffb6
00000001405b19f6 mov      edx, r13d
00000001405b19f9 or       eax, 0xb6
00000001405b19fe mov      dword ptr [rbp + 0x30], eax
00000001405b1a01 mov      rax, qword ptr [rdi + 0x18]
00000001405b1a05 mov      rcx, qword ptr [rdi + 8]
00000001405b1a09 mov      rax, qword ptr [rax + 0x118]
00000001405b1a10 call     qword ptr [rip + 0xd28e2]
00000001405b1a16 mov      eax, dword ptr [rbp + 0x30]
00000001405b1a19 lea      r8, [rip + 0xb6dd0]
00000001405b1a20 and      eax, 0xffb6ffff
00000001405b1a25 mov      r9d, 0x18600058
00000001405b1a2b or       eax, 0xb60000
00000001405b1a30 mov      edx, r13d
00000001405b1a33 mov      dword ptr [rbp + 0x30], eax
00000001405b1a36 mov      rax, qword ptr [rdi + 0x18]
00000001405b1a3a mov      rcx, qword ptr [rdi + 8]
00000001405b1a3e mov      rax, qword ptr [rax + 0x118]
00000001405b1a45 call     qword ptr [rip + 0xd28ad]
00000001405b1a4b mov      rax, qword ptr [rsi + 0x28]
00000001405b1a4f mov      edx, ebx
00000001405b1a51 mov      r8d, dword ptr [rbp + 0x30]
00000001405b1a55 mov      rcx, rdi
00000001405b1a58 call     qword ptr [rip + 0xd289a]
00000001405b1a5e mov      rax, qword ptr [rsi]
00000001405b1a61 mov      ebx, 0x150f4
00000001405b1a66 mov      edx, ebx
00000001405b1a68 mov      rcx, rdi
00000001405b1a6b call     qword ptr [rip + 0xd2887]
00000001405b1a71 mov      rax, qword ptr [rdi + 0x18]
00000001405b1a75 lea      r8, [rip + 0xb6a14]
00000001405b1a7c mov      rcx, qword ptr [rdi + 8]
00000001405b1a80 mov      r9d, 0x186150f4
00000001405b1a86 mov      edx, r13d
00000001405b1a89 mov      rax, qword ptr [rax + 0x118]
00000001405b1a90 call     qword ptr [rip + 0xd2862]
00000001405b1a96 mov      rax, qword ptr [rsi + 8]
00000001405b1a9a mov      r8b, r13b
00000001405b1a9d mov      edx, ebx
00000001405b1a9f mov      rcx, rdi
00000001405b1aa2 call     qword ptr [rip + 0xd2850]
00000001405b1aa8 mov      rax, qword ptr [rdi + 0x18]
00000001405b1aac lea      r8, [rip + 0xb6d6d]
00000001405b1ab3 mov      rcx, qword ptr [rdi + 8]
00000001405b1ab7 mov      edx, r13d
00000001405b1aba mov      rax, qword ptr [rax + 0x118]
00000001405b1ac1 call     qword ptr [rip + 0xd2831]
00000001405b1ac7 lea      rdx, [rip + 0x72029a]
00000001405b1ace jmp      0x1405bd0a2
00000001405b1ad3 mov      rax, qword ptr [rdi + 0x18]
00000001405b1ad7 lea      r8, [rip + 0xb6c52]
00000001405b1ade mov      rcx, qword ptr [rdi + 8]
00000001405b1ae2 mov      edx, r13d
00000001405b1ae5 mov      rax, qword ptr [rax + 0x118]
00000001405b1aec call     qword ptr [rip + 0xd2806]
00000001405b1af2 mov      rax, qword ptr [rsi + 0x20]
00000001405b1af6 mov      r14d, 0xf4
00000001405b1afc mov      edx, r14d
00000001405b1aff mov      rcx, rdi
00000001405b1b02 call     qword ptr [rip + 0xd27f0]
00000001405b1b08 mov      r9d, 0x186000f4
00000001405b1b0e lea      r8, [rip + 0xb66bb]
00000001405b1b15 btr      eax, 0x11
00000001405b1b19 mov      edx, r13d
00000001405b1b1c bts      eax, 0x10
00000001405b1b20 mov      dword ptr [rbp + 0x30], eax
00000001405b1b23 mov      rax, qword ptr [rdi + 0x18]
00000001405b1b27 mov      rcx, qword ptr [rdi + 8]
00000001405b1b2b mov      rax, qword ptr [rax + 0x118]
00000001405b1b32 call     qword ptr [rip + 0xd27c0]
00000001405b1b38 mov      rax, qword ptr [rsi + 0x28]
00000001405b1b3c mov      edx, r14d
00000001405b1b3f mov      r8d, dword ptr [rbp + 0x30]
00000001405b1b43 mov      rcx, rdi
00000001405b1b46 call     qword ptr [rip + 0xd27ac]
00000001405b1b4c mov      rax, qword ptr [rsi + 0x20]
00000001405b1b50 mov      ebx, 0x58
00000001405b1b55 mov      edx, ebx
00000001405b1b57 mov      rcx, rdi
00000001405b1b5a call     qword ptr [rip + 0xd2798]
00000001405b1b60 mov      r9d, 0x18600058
00000001405b1b66 lea      r8, [rip + 0xb6b33]
00000001405b1b6d and      eax, 0xffffffb7
00000001405b1b70 mov      edx, r13d
00000001405b1b73 or       eax, 0xb7
00000001405b1b78 mov      dword ptr [rbp + 0x30], eax
00000001405b1b7b mov      rax, qword ptr [rdi + 0x18]
00000001405b1b7f mov      rcx, qword ptr [rdi + 8]
00000001405b1b83 mov      rax, qword ptr [rax + 0x118]
00000001405b1b8a call     qword ptr [rip + 0xd2768]
00000001405b1b90 mov      eax, dword ptr [rbp + 0x30]
00000001405b1b93 lea      r8, [rip + 0xb6b36]
00000001405b1b9a and      eax, 0xffb7ffff
00000001405b1b9f mov      r9d, 0x18600058
00000001405b1ba5 or       eax, 0xb70000
00000001405b1baa mov      edx, r13d
00000001405b1bad mov      dword ptr [rbp + 0x30], eax
00000001405b1bb0 mov      rax, qword ptr [rdi + 0x18]
00000001405b1bb4 mov      rcx, qword ptr [rdi + 8]
00000001405b1bb8 mov      rax, qword ptr [rax + 0x118]
00000001405b1bbf call     qword ptr [rip + 0xd2733]
00000001405b1bc5 mov      rax, qword ptr [rsi + 0x28]
00000001405b1bc9 mov      edx, ebx
00000001405b1bcb mov      r8d, dword ptr [rbp + 0x30]
00000001405b1bcf mov      rcx, rdi
00000001405b1bd2 call     qword ptr [rip + 0xd2720]
00000001405b1bd8 mov      rax, qword ptr [rdi + 0x18]
00000001405b1bdc lea      r8, [rip + 0xb6b7d]
00000001405b1be3 mov      rcx, qword ptr [rdi + 8]
00000001405b1be7 mov      edx, r13d
00000001405b1bea mov      rax, qword ptr [rax + 0x118]
00000001405b1bf1 call     qword ptr [rip + 0xd2701]
00000001405b1bf7 lea      rdx, [rip + 0x72015a]
00000001405b1bfe jmp      0x1405bd0a2
00000001405b1c03 mov      rax, qword ptr [rdi + 0x18]
00000001405b1c07 lea      r8, [rip + 0xb6a62]
00000001405b1c0e mov      rcx, qword ptr [rdi + 8]
00000001405b1c12 mov      edx, r13d
00000001405b1c15 mov      rax, qword ptr [rax + 0x118]
00000001405b1c1c call     qword ptr [rip + 0xd26d6]
00000001405b1c22 mov      rax, qword ptr [rsi + 0x20]
00000001405b1c26 mov      r14d, 0xf4
00000001405b1c2c mov      edx, r14d
00000001405b1c2f mov      rcx, rdi
00000001405b1c32 call     qword ptr [rip + 0xd26c0]
00000001405b1c38 mov      r9d, 0x186000f4
00000001405b1c3e lea      r8, [rip + 0xb658b]
00000001405b1c45 btr      eax, 0x11
00000001405b1c49 mov      edx, r13d
00000001405b1c4c bts      eax, 0x10
00000001405b1c50 mov      dword ptr [rbp + 0x30], eax
00000001405b1c53 mov      rax, qword ptr [rdi + 0x18]
00000001405b1c57 mov      rcx, qword ptr [rdi + 8]
00000001405b1c5b mov      rax, qword ptr [rax + 0x118]
00000001405b1c62 call     qword ptr [rip + 0xd2690]
00000001405b1c68 mov      rax, qword ptr [rsi + 0x28]
00000001405b1c6c mov      edx, r14d
00000001405b1c6f mov      r8d, dword ptr [rbp + 0x30]
00000001405b1c73 mov      rcx, rdi
00000001405b1c76 call     qword ptr [rip + 0xd267c]
00000001405b1c7c mov      rax, qword ptr [rsi + 0x20]
00000001405b1c80 mov      ebx, 0x58
00000001405b1c85 mov      edx, ebx
00000001405b1c87 mov      rcx, rdi
00000001405b1c8a call     qword ptr [rip + 0xd2668]
00000001405b1c90 mov      r9d, 0x18600058
00000001405b1c96 lea      r8, [rip + 0xb6a03]
00000001405b1c9d and      eax, 0xffffffb7
00000001405b1ca0 mov      edx, r13d
00000001405b1ca3 or       eax, 0xb7
00000001405b1ca8 mov      dword ptr [rbp + 0x30], eax
00000001405b1cab mov      rax, qword ptr [rdi + 0x18]
00000001405b1caf mov      rcx, qword ptr [rdi + 8]
00000001405b1cb3 mov      rax, qword ptr [rax + 0x118]
00000001405b1cba call     qword ptr [rip + 0xd2638]
00000001405b1cc0 mov      eax, dword ptr [rbp + 0x30]
00000001405b1cc3 lea      r8, [rip + 0xb6a06]
00000001405b1cca and      eax, 0xffb7ffff
00000001405b1ccf mov      r9d, 0x18600058
00000001405b1cd5 or       eax, 0xb70000
00000001405b1cda mov      edx, r13d
00000001405b1cdd mov      dword ptr [rbp + 0x30], eax
00000001405b1ce0 mov      rax, qword ptr [rdi + 0x18]
00000001405b1ce4 mov      rcx, qword ptr [rdi + 8]
00000001405b1ce8 mov      rax, qword ptr [rax + 0x118]
00000001405b1cef call     qword ptr [rip + 0xd2603]
00000001405b1cf5 mov      rax, qword ptr [rsi + 0x28]
00000001405b1cf9 mov      edx, ebx
00000001405b1cfb mov      r8d, dword ptr [rbp + 0x30]
00000001405b1cff mov      rcx, rdi
00000001405b1d02 call     qword ptr [rip + 0xd25f0]
00000001405b1d08 mov      rax, qword ptr [rdi + 0x18]
00000001405b1d0c lea      r8, [rip + 0xb69ed]
00000001405b1d13 mov      rcx, qword ptr [rdi + 8]
00000001405b1d17 mov      edx, r13d
00000001405b1d1a mov      rax, qword ptr [rax + 0x118]
00000001405b1d21 call     qword ptr [rip + 0xd25d1]
00000001405b1d27 lea      rdx, [rip + 0x72001a]
00000001405b1d2e jmp      0x1405bd0a2
00000001405b1d33 mov      rax, qword ptr [rdi + 0x18]
00000001405b1d37 lea      r8, [rip + 0xb6872]
00000001405b1d3e mov      rcx, qword ptr [rdi + 8]
00000001405b1d42 mov      edx, r13d
00000001405b1d45 mov      rax, qword ptr [rax + 0x118]
00000001405b1d4c call     qword ptr [rip + 0xd25a6]
00000001405b1d52 mov      rax, qword ptr [rsi + 0x20]
00000001405b1d56 mov      r14d, 0xf4
00000001405b1d5c mov      edx, r14d
00000001405b1d5f mov      rcx, rdi
00000001405b1d62 call     qword ptr [rip + 0xd2590]
00000001405b1d68 mov      r9d, 0x186000f4
00000001405b1d6e lea      r8, [rip + 0xb645b]
00000001405b1d75 btr      eax, 0x11
00000001405b1d79 mov      edx, r13d
00000001405b1d7c bts      eax, 0x10
00000001405b1d80 mov      dword ptr [rbp + 0x30], eax
00000001405b1d83 mov      rax, qword ptr [rdi + 0x18]
00000001405b1d87 mov      rcx, qword ptr [rdi + 8]
00000001405b1d8b mov      rax, qword ptr [rax + 0x118]
00000001405b1d92 call     qword ptr [rip + 0xd2560]
00000001405b1d98 mov      rax, qword ptr [rsi + 0x28]
00000001405b1d9c mov      edx, r14d
00000001405b1d9f mov      r8d, dword ptr [rbp + 0x30]
00000001405b1da3 mov      rcx, rdi
00000001405b1da6 call     qword ptr [rip + 0xd254c]
00000001405b1dac mov      rax, qword ptr [rsi + 0x20]
00000001405b1db0 mov      ebx, 0x58
00000001405b1db5 mov      edx, ebx
00000001405b1db7 mov      rcx, rdi
00000001405b1dba call     qword ptr [rip + 0xd2538]
00000001405b1dc0 mov      r9d, 0x18600058
00000001405b1dc6 lea      r8, [rip + 0xb6813]
00000001405b1dcd and      eax, 0xffffffb5
00000001405b1dd0 mov      edx, r13d
00000001405b1dd3 or       eax, 0xb5
00000001405b1dd8 mov      dword ptr [rbp + 0x30], eax
00000001405b1ddb mov      rax, qword ptr [rdi + 0x18]
00000001405b1ddf mov      rcx, qword ptr [rdi + 8]
00000001405b1de3 mov      rax, qword ptr [rax + 0x118]
00000001405b1dea call     qword ptr [rip + 0xd2508]
00000001405b1df0 mov      eax, dword ptr [rbp + 0x30]
00000001405b1df3 lea      r8, [rip + 0xb6816]
00000001405b1dfa and      eax, 0xffb5ffff
00000001405b1dff mov      r9d, 0x18600058
00000001405b1e05 or       eax, 0xb50000
00000001405b1e0a mov      edx, r13d
00000001405b1e0d mov      dword ptr [rbp + 0x30], eax
00000001405b1e10 mov      rax, qword ptr [rdi + 0x18]
00000001405b1e14 mov      rcx, qword ptr [rdi + 8]
00000001405b1e18 mov      rax, qword ptr [rax + 0x118]
00000001405b1e1f call     qword ptr [rip + 0xd24d3]
00000001405b1e25 mov      rax, qword ptr [rsi + 0x28]
00000001405b1e29 mov      edx, ebx
00000001405b1e2b mov      r8d, dword ptr [rbp + 0x30]
00000001405b1e2f mov      rcx, rdi
00000001405b1e32 call     qword ptr [rip + 0xd24c0]
00000001405b1e38 mov      rax, qword ptr [rsi]
00000001405b1e3b mov      ebx, 0x150f4
00000001405b1e40 mov      edx, ebx
00000001405b1e42 mov      rcx, rdi
00000001405b1e45 call     qword ptr [rip + 0xd24ad]
00000001405b1e4b mov      rax, qword ptr [rdi + 0x18]
00000001405b1e4f lea      r8, [rip + 0xb640a]
00000001405b1e56 mov      rcx, qword ptr [rdi + 8]
00000001405b1e5a mov      r9d, 0x186150f4
00000001405b1e60 mov      edx, r13d
00000001405b1e63 mov      rax, qword ptr [rax + 0x118]
00000001405b1e6a call     qword ptr [rip + 0xd2488]
00000001405b1e70 mov      rax, qword ptr [rsi + 8]
00000001405b1e74 xor      r8d, r8d
00000001405b1e77 mov      edx, ebx
00000001405b1e79 mov      rcx, rdi
00000001405b1e7c call     qword ptr [rip + 0xd2476]
00000001405b1e82 mov      rax, qword ptr [rdi + 0x18]
00000001405b1e86 lea      r8, [rip + 0xb67b3]
00000001405b1e8d mov      rcx, qword ptr [rdi + 8]
00000001405b1e91 mov      edx, r13d
00000001405b1e94 mov      rax, qword ptr [rax + 0x118]
00000001405b1e9b call     qword ptr [rip + 0xd2457]
00000001405b1ea1 lea      rdx, [rip + 0x71fe90]
00000001405b1ea8 jmp      0x1405bd0a2
00000001405b1ead mov      rax, qword ptr [rdi + 0x18]
00000001405b1eb1 lea      r8, [rip + 0xcbe18]
00000001405b1eb8 mov      rcx, qword ptr [rdi + 8]
00000001405b1ebc mov      edx, r13d
00000001405b1ebf mov      rax, qword ptr [rax + 0x118]
00000001405b1ec6 call     qword ptr [rip + 0xd242c]
00000001405b1ecc mov      rax, qword ptr [rdi + 0x18]
00000001405b1ed0 lea      r8, [rip + 0xcbe29]
00000001405b1ed7 mov      rcx, qword ptr [rdi + 8]
00000001405b1edb mov      edx, r13d
00000001405b1ede mov      rax, qword ptr [rax + 0x118]
00000001405b1ee5 call     qword ptr [rip + 0xd240d]
00000001405b1eeb lea      rdx, [rip + 0x71fea6]
00000001405b1ef2 jmp      0x1405bd0a2
00000001405b1ef7 cmp      ebx, 0x14
00000001405b1efa ja       0x1405b248f
00000001405b1f00 je       0x1405b230c
00000001405b1f06 sub      ebx, 0xe
00000001405b1f09 je       0x1405b22ba
00000001405b1f0f sub      ebx, r13d
00000001405b1f12 je       0x1405b2268
00000001405b1f18 sub      ebx, r13d
00000001405b1f1b je       0x1405b21cb
00000001405b1f21 sub      ebx, r13d
00000001405b1f24 je       0x1405b212e
00000001405b1f2a sub      ebx, r13d
00000001405b1f2d je       0x1405b2035
00000001405b1f33 cmp      ebx, r13d
00000001405b1f36 jne      0x1405bca8d
00000001405b1f3c mov      rax, qword ptr [rdi + 0x18]
00000001405b1f40 lea      r8, [rip + 0xcbf69]
00000001405b1f47 mov      rcx, qword ptr [rdi + 8]
00000001405b1f4b mov      edx, r13d
00000001405b1f4e mov      rax, qword ptr [rax + 0x118]
00000001405b1f55 call     qword ptr [rip + 0xd239d]
00000001405b1f5b mov      rax, qword ptr [rsi + 0x20]
00000001405b1f5f mov      r14d, 0xf4
00000001405b1f65 mov      edx, r14d
00000001405b1f68 mov      rcx, rdi
00000001405b1f6b call     qword ptr [rip + 0xd2387]
00000001405b1f71 mov      r9d, 0x186000f4
00000001405b1f77 lea      r8, [rip + 0xb6252]
00000001405b1f7e btr      eax, 0x11
00000001405b1f82 mov      edx, r13d
00000001405b1f85 bts      eax, 0x10
00000001405b1f89 mov      dword ptr [rbp + 0x30], eax
00000001405b1f8c mov      rax, qword ptr [rdi + 0x18]
00000001405b1f90 mov      rcx, qword ptr [rdi + 8]
00000001405b1f94 mov      rax, qword ptr [rax + 0x118]
00000001405b1f9b call     qword ptr [rip + 0xd2357]
00000001405b1fa1 mov      rax, qword ptr [rsi + 0x28]
00000001405b1fa5 mov      edx, r14d
00000001405b1fa8 mov      r8d, dword ptr [rbp + 0x30]
00000001405b1fac mov      rcx, rdi
00000001405b1faf call     qword ptr [rip + 0xd2343]
00000001405b1fb5 mov      rax, qword ptr [rsi]
00000001405b1fb8 mov      r14d, 0x14094
00000001405b1fbe mov      edx, r14d
00000001405b1fc1 mov      rcx, rdi
00000001405b1fc4 call     qword ptr [rip + 0xd232e]
00000001405b1fca mov      rcx, qword ptr [rdi + 8]
00000001405b1fce lea      r8, [rip + 0xcbe7b]
00000001405b1fd5 mov      bl, al
00000001405b1fd7 mov      r9d, 0x18614094
00000001405b1fdd mov      rax, qword ptr [rdi + 0x18]
00000001405b1fe1 and      bl, 0xf
00000001405b1fe4 mov      edx, r13d
00000001405b1fe7 or       bl, 0x10
00000001405b1fea mov      rax, qword ptr [rax + 0x118]
00000001405b1ff1 call     qword ptr [rip + 0xd2301]
00000001405b1ff7 mov      rax, qword ptr [rsi + 8]
00000001405b1ffb mov      r8b, bl
00000001405b1ffe mov      edx, r14d
00000001405b2001 mov      rcx, rdi
00000001405b2004 call     qword ptr [rip + 0xd22ee]
00000001405b200a mov      rax, qword ptr [rdi + 0x18]
00000001405b200e lea      r8, [rip + 0xcbecb]
00000001405b2015 mov      rcx, qword ptr [rdi + 8]
00000001405b2019 mov      edx, r13d
00000001405b201c mov      rax, qword ptr [rax + 0x118]
00000001405b2023 call     qword ptr [rip + 0xd22cf]
00000001405b2029 lea      rdx, [rip + 0x71fdc8]
00000001405b2030 jmp      0x1405bd0a2
00000001405b2035 mov      rax, qword ptr [rdi + 0x18]
00000001405b2039 lea      r8, [rip + 0xcbde0]
00000001405b2040 mov      rcx, qword ptr [rdi + 8]
00000001405b2044 mov      edx, r13d
00000001405b2047 mov      rax, qword ptr [rax + 0x118]
00000001405b204e call     qword ptr [rip + 0xd22a4]
00000001405b2054 mov      rax, qword ptr [rsi + 0x20]
00000001405b2058 mov      r14d, 0xf4
00000001405b205e mov      edx, r14d
00000001405b2061 mov      rcx, rdi
00000001405b2064 call     qword ptr [rip + 0xd228e]
00000001405b206a mov      r9d, 0x186000f4
00000001405b2070 lea      r8, [rip + 0xb6159]
00000001405b2077 btr      eax, 0x11
00000001405b207b mov      edx, r13d
00000001405b207e bts      eax, 0x10
00000001405b2082 mov      dword ptr [rbp + 0x30], eax
00000001405b2085 mov      rax, qword ptr [rdi + 0x18]
00000001405b2089 mov      rcx, qword ptr [rdi + 8]
00000001405b208d mov      rax, qword ptr [rax + 0x118]
00000001405b2094 call     qword ptr [rip + 0xd225e]
00000001405b209a mov      rax, qword ptr [rsi + 0x28]
00000001405b209e mov      edx, r14d
00000001405b20a1 mov      r8d, dword ptr [rbp + 0x30]
00000001405b20a5 mov      rcx, rdi
00000001405b20a8 call     qword ptr [rip + 0xd224a]
00000001405b20ae mov      rax, qword ptr [rsi]
00000001405b20b1 mov      r14d, 0x10094
00000001405b20b7 mov      edx, r14d
00000001405b20ba mov      rcx, rdi
00000001405b20bd call     qword ptr [rip + 0xd2235]
00000001405b20c3 mov      rcx, qword ptr [rdi + 8]
00000001405b20c7 lea      r8, [rip + 0xcbd82]
00000001405b20ce mov      bl, al
00000001405b20d0 mov      r9d, 0x18610094
00000001405b20d6 mov      rax, qword ptr [rdi + 0x18]
00000001405b20da and      bl, 0xf
00000001405b20dd mov      edx, r13d
00000001405b20e0 or       bl, 0x10
00000001405b20e3 mov      rax, qword ptr [rax + 0x118]
00000001405b20ea call     qword ptr [rip + 0xd2208]
00000001405b20f0 mov      rax, qword ptr [rsi + 8]
00000001405b20f4 mov      r8b, bl
00000001405b20f7 mov      edx, r14d
00000001405b20fa mov      rcx, rdi
00000001405b20fd call     qword ptr [rip + 0xd21f5]
00000001405b2103 mov      rax, qword ptr [rdi + 0x18]
00000001405b2107 lea      r8, [rip + 0xcbd72]
00000001405b210e mov      rcx, qword ptr [rdi + 8]
00000001405b2112 mov      edx, r13d
00000001405b2115 mov      rax, qword ptr [rax + 0x118]
00000001405b211c call     qword ptr [rip + 0xd21d6]
00000001405b2122 lea      rdx, [rip + 0x71fcbf]
00000001405b2129 jmp      0x1405bd0a2
00000001405b212e mov      rax, qword ptr [rdi + 0x18]
00000001405b2132 lea      r8, [rip + 0xcbc87]
00000001405b2139 mov      rcx, qword ptr [rdi + 8]
00000001405b213d mov      edx, r13d
00000001405b2140 mov      rax, qword ptr [rax + 0x118]
00000001405b2147 call     qword ptr [rip + 0xd21ab]
00000001405b214d mov      rax, qword ptr [rsi + 0x20]
00000001405b2151 mov      ebx, 0x140c8
00000001405b2156 mov      edx, ebx
00000001405b2158 mov      rcx, rdi
00000001405b215b call     qword ptr [rip + 0xd2197]
00000001405b2161 mov      r9d, 0x186140c8
00000001405b2167 lea      r8, [rip + 0xcbbf2]
00000001405b216e bts      eax, 0x1c
00000001405b2172 mov      edx, r13d
00000001405b2175 mov      dword ptr [rbp + 0x30], eax
00000001405b2178 mov      rax, qword ptr [rdi + 0x18]
00000001405b217c mov      rcx, qword ptr [rdi + 8]
00000001405b2180 mov      rax, qword ptr [rax + 0x118]
00000001405b2187 call     qword ptr [rip + 0xd216b]
00000001405b218d mov      rax, qword ptr [rsi + 0x28]
00000001405b2191 mov      edx, ebx
00000001405b2193 mov      r8d, dword ptr [rbp + 0x30]
00000001405b2197 mov      rcx, rdi
00000001405b219a call     qword ptr [rip + 0xd2158]
00000001405b21a0 mov      rax, qword ptr [rdi + 0x18]
00000001405b21a4 lea      r8, [rip + 0xcbc45]
00000001405b21ab mov      rcx, qword ptr [rdi + 8]
00000001405b21af mov      edx, r13d
00000001405b21b2 mov      rax, qword ptr [rax + 0x118]
00000001405b21b9 call     qword ptr [rip + 0xd2139]
00000001405b21bf lea      rdx, [rip + 0x71fc12]
00000001405b21c6 jmp      0x1405bd0a2
00000001405b21cb mov      rax, qword ptr [rdi + 0x18]
00000001405b21cf lea      r8, [rip + 0xcbb5a]
00000001405b21d6 mov      rcx, qword ptr [rdi + 8]
00000001405b21da mov      edx, r13d
00000001405b21dd mov      rax, qword ptr [rax + 0x118]
00000001405b21e4 call     qword ptr [rip + 0xd210e]
00000001405b21ea mov      rax, qword ptr [rsi + 0x20]
00000001405b21ee mov      ebx, 0x100c8
00000001405b21f3 mov      edx, ebx
00000001405b21f5 mov      rcx, rdi
00000001405b21f8 call     qword ptr [rip + 0xd20fa]
00000001405b21fe mov      r9d, 0x186100c8
00000001405b2204 lea      r8, [rip + 0xcbb55]
00000001405b220b bts      eax, 0x1c
00000001405b220f mov      edx, r13d
00000001405b2212 mov      dword ptr [rbp + 0x30], eax
00000001405b2215 mov      rax, qword ptr [rdi + 0x18]
00000001405b2219 mov      rcx, qword ptr [rdi + 8]
00000001405b221d mov      rax, qword ptr [rax + 0x118]
00000001405b2224 call     qword ptr [rip + 0xd20ce]
00000001405b222a mov      rax, qword ptr [rsi + 0x28]
00000001405b222e mov      edx, ebx
00000001405b2230 mov      r8d, dword ptr [rbp + 0x30]
00000001405b2234 mov      rcx, rdi
00000001405b2237 call     qword ptr [rip + 0xd20bb]
00000001405b223d mov      rax, qword ptr [rdi + 0x18]
00000001405b2241 lea      r8, [rip + 0xcbb48]
00000001405b2248 mov      rcx, qword ptr [rdi + 8]
00000001405b224c mov      edx, r13d
00000001405b224f mov      rax, qword ptr [rax + 0x118]
00000001405b2256 call     qword ptr [rip + 0xd209c]
00000001405b225c lea      rdx, [rip + 0x71fb65]
00000001405b2263 jmp      0x1405bd0a2
00000001405b2268 mov      rax, qword ptr [rdi + 0x18]
00000001405b226c lea      r8, [rip + 0xb66fd]
00000001405b2273 mov      rcx, qword ptr [rdi + 8]
00000001405b2277 mov      edx, r13d
00000001405b227a mov      rax, qword ptr [rax + 0x118]
00000001405b2281 call     qword ptr [rip + 0xd2071]
00000001405b2287 mov      rax, qword ptr [rdi + 0x18]
00000001405b228b lea      r8, [rip + 0xb670e]
00000001405b2292 mov      rcx, qword ptr [rdi + 8]
00000001405b2296 mov      edx, r13d
00000001405b2299 mov      rax, qword ptr [rax + 0x118]
00000001405b22a0 call     qword ptr [rip + 0xd2052]
00000001405b22a6 xor      r9d, r9d
00000001405b22a9 mov      byte ptr [rsp + 0x20], r13b
00000001405b22ae lea      rdx, [rip + 0x71fb03]
00000001405b22b5 jmp      0x1405bd0aa
00000001405b22ba mov      rax, qword ptr [rdi + 0x18]
00000001405b22be lea      r8, [rip + 0xb664b]
00000001405b22c5 mov      rcx, qword ptr [rdi + 8]
00000001405b22c9 mov      edx, r13d
00000001405b22cc mov      rax, qword ptr [rax + 0x118]
00000001405b22d3 call     qword ptr [rip + 0xd201f]
00000001405b22d9 mov      rax, qword ptr [rdi + 0x18]
00000001405b22dd lea      r8, [rip + 0xb665c]
00000001405b22e4 mov      rcx, qword ptr [rdi + 8]
00000001405b22e8 mov      edx, r13d
00000001405b22eb mov      rax, qword ptr [rax + 0x118]
00000001405b22f2 call     qword ptr [rip + 0xd2000]
00000001405b22f8 xor      r9d, r9d
00000001405b22fb mov      byte ptr [rsp + 0x20], r13b
00000001405b2300 lea      rdx, [rip + 0x71faa1]
00000001405b2307 jmp      0x1405bd0aa
00000001405b230c mov      rax, qword ptr [rdi + 0x18]
00000001405b2310 lea      r8, [rip + 0xb66b9]
00000001405b2317 mov      rcx, qword ptr [rdi + 8]
00000001405b231b mov      edx, r13d
00000001405b231e mov      rax, qword ptr [rax + 0x118]
00000001405b2325 call     qword ptr [rip + 0xd1fcd]
00000001405b232b mov      rax, qword ptr [rsi + 0x20]
00000001405b232f mov      r14d, 0xf4
00000001405b2335 mov      edx, r14d
00000001405b2338 mov      rcx, rdi
00000001405b233b call     qword ptr [rip + 0xd1fb7]
00000001405b2341 mov      r9d, 0x186000f4
00000001405b2347 lea      r8, [rip + 0xb5e82]
00000001405b234e btr      eax, 0x11
00000001405b2352 mov      edx, r13d
00000001405b2355 bts      eax, 0x10
00000001405b2359 mov      dword ptr [rbp + 0x30], eax
00000001405b235c mov      rax, qword ptr [rdi + 0x18]
00000001405b2360 mov      rcx, qword ptr [rdi + 8]
00000001405b2364 mov      rax, qword ptr [rax + 0x118]
00000001405b236b call     qword ptr [rip + 0xd1f87]
00000001405b2371 mov      rax, qword ptr [rsi + 0x28]
00000001405b2375 mov      edx, r14d
00000001405b2378 mov      r8d, dword ptr [rbp + 0x30]
00000001405b237c mov      rcx, rdi
00000001405b237f call     qword ptr [rip + 0xd1f73]
00000001405b2385 mov      rax, qword ptr [rsi + 0x20]
00000001405b2389 mov      ebx, 0x58
00000001405b238e mov      edx, ebx
00000001405b2390 mov      rcx, rdi
00000001405b2393 call     qword ptr [rip + 0xd1f5f]
00000001405b2399 mov      r9d, 0x18600058
00000001405b239f lea      r8, [rip + 0xb665a]
00000001405b23a6 and      eax, 0xffffff74
00000001405b23ab mov      edx, r13d
00000001405b23ae or       eax, 0x74
00000001405b23b1 mov      dword ptr [rbp + 0x30], eax
00000001405b23b4 mov      rax, qword ptr [rdi + 0x18]
00000001405b23b8 mov      rcx, qword ptr [rdi + 8]
00000001405b23bc mov      rax, qword ptr [rax + 0x118]
00000001405b23c3 call     qword ptr [rip + 0xd1f2f]
00000001405b23c9 mov      eax, dword ptr [rbp + 0x30]
00000001405b23cc lea      r8, [rip + 0xb665d]
00000001405b23d3 and      eax, 0xff74ffff
00000001405b23d8 mov      r9d, 0x18600058
00000001405b23de or       eax, 0x740000
00000001405b23e3 mov      edx, r13d
00000001405b23e6 mov      dword ptr [rbp + 0x30], eax
00000001405b23e9 mov      rax, qword ptr [rdi + 0x18]
00000001405b23ed mov      rcx, qword ptr [rdi + 8]
00000001405b23f1 mov      rax, qword ptr [rax + 0x118]
00000001405b23f8 call     qword ptr [rip + 0xd1efa]
00000001405b23fe mov      rax, qword ptr [rsi + 0x28]
00000001405b2402 mov      edx, ebx
00000001405b2404 mov      r8d, dword ptr [rbp + 0x30]
00000001405b2408 mov      rcx, rdi
00000001405b240b call     qword ptr [rip + 0xd1ee7]
00000001405b2411 mov      rax, qword ptr [rsi + 0x20]
00000001405b2415 mov      ebx, 0xe300
00000001405b241a mov      edx, ebx
00000001405b241c mov      rcx, rdi
00000001405b241f call     qword ptr [rip + 0xd1ed3]
00000001405b2425 mov      r9d, 0x1860e300
00000001405b242b lea      r8, [rip + 0xb662e]
00000001405b2432 btr      eax, 0x1b
00000001405b2436 mov      edx, r13d
00000001405b2439 mov      dword ptr [rbp + 0x30], eax
00000001405b243c mov      rax, qword ptr [rdi + 0x18]
00000001405b2440 mov      rcx, qword ptr [rdi + 8]
00000001405b2444 mov      rax, qword ptr [rax + 0x118]
00000001405b244b call     qword ptr [rip + 0xd1ea7]
00000001405b2451 mov      rax, qword ptr [rsi + 0x28]
00000001405b2455 mov      edx, ebx
00000001405b2457 mov      r8d, dword ptr [rbp + 0x30]
00000001405b245b mov      rcx, rdi
00000001405b245e call     qword ptr [rip + 0xd1e94]
00000001405b2464 mov      rax, qword ptr [rdi + 0x18]
00000001405b2468 lea      r8, [rip + 0xb6621]
00000001405b246f mov      rcx, qword ptr [rdi + 8]
00000001405b2473 mov      edx, r13d
00000001405b2476 mov      rax, qword ptr [rax + 0x118]
00000001405b247d call     qword ptr [rip + 0xd1e75]
00000001405b2483 lea      rdx, [rip + 0x71f97e]
00000001405b248a jmp      0x1405bd0a2
00000001405b248f sub      ebx, 0x15
00000001405b2492 je       0x1405b273e
00000001405b2498 sub      ebx, r13d
00000001405b249b je       0x1405b26a1
00000001405b24a1 sub      ebx, r13d
00000001405b24a4 je       0x1405b2604
00000001405b24aa sub      ebx, r13d
00000001405b24ad je       0x1405b2560
00000001405b24b3 cmp      ebx, r13d
00000001405b24b6 jne      0x1405bca8d
00000001405b24bc mov      rax, qword ptr [rdi + 0x18]
00000001405b24c0 lea      r8, [rip + 0xb67e9]
00000001405b24c7 mov      rcx, qword ptr [rdi + 8]
00000001405b24cb mov      edx, r13d
00000001405b24ce mov      rax, qword ptr [rax + 0x118]
00000001405b24d5 call     qword ptr [rip + 0xd1e1d]
00000001405b24db mov      rax, qword ptr [rsi + 0x10]
00000001405b24df mov      r14d, 0x148f4
00000001405b24e5 mov      edx, r14d
00000001405b24e8 mov      rcx, rdi
00000001405b24eb call     qword ptr [rip + 0xd1e07]
00000001405b24f1 mov      rcx, qword ptr [rdi + 8]
00000001405b24f5 lea      r8, [rip + 0xb6764]
00000001405b24fc movzx    ebx, ax
00000001405b24ff mov      r9d, 0x186148f4
00000001405b2505 mov      eax, 0x100
00000001405b250a mov      edx, r13d
00000001405b250d or       bx, ax
00000001405b2510 mov      rax, qword ptr [rdi + 0x18]
00000001405b2514 mov      rax, qword ptr [rax + 0x118]
00000001405b251b call     qword ptr [rip + 0xd1dd7]
00000001405b2521 mov      rax, qword ptr [rsi + 0x18]
00000001405b2525 movzx    r8d, bx
00000001405b2529 mov      edx, r14d
00000001405b252c mov      rcx, rdi
00000001405b252f call     qword ptr [rip + 0xd1dc3]
00000001405b2535 mov      rax, qword ptr [rdi + 0x18]
00000001405b2539 lea      r8, [rip + 0xb6790]
00000001405b2540 mov      rcx, qword ptr [rdi + 8]
00000001405b2544 mov      edx, r13d
00000001405b2547 mov      rax, qword ptr [rax + 0x118]
00000001405b254e call     qword ptr [rip + 0xd1da4]
00000001405b2554 lea      rdx, [rip + 0x71f8fd]
00000001405b255b jmp      0x1405bd0a2
00000001405b2560 mov      rax, qword ptr [rdi + 0x18]
00000001405b2564 lea      r8, [rip + 0xb66d5]
00000001405b256b mov      rcx, qword ptr [rdi + 8]
00000001405b256f mov      edx, r13d
00000001405b2572 mov      rax, qword ptr [rax + 0x118]
00000001405b2579 call     qword ptr [rip + 0xd1d79]
00000001405b257f mov      rax, qword ptr [rsi + 0x10]
00000001405b2583 mov      r14d, 0x108f4
00000001405b2589 mov      edx, r14d
00000001405b258c mov      rcx, rdi
00000001405b258f call     qword ptr [rip + 0xd1d63]
00000001405b2595 mov      rcx, qword ptr [rdi + 8]
00000001405b2599 lea      r8, [rip + 0xb66c0]
00000001405b25a0 movzx    ebx, ax
00000001405b25a3 mov      r9d, 0x186108f4
00000001405b25a9 mov      eax, 0x100
00000001405b25ae mov      edx, r13d
00000001405b25b1 or       bx, ax
00000001405b25b4 mov      rax, qword ptr [rdi + 0x18]
00000001405b25b8 mov      rax, qword ptr [rax + 0x118]
00000001405b25bf call     qword ptr [rip + 0xd1d33]
00000001405b25c5 mov      rax, qword ptr [rsi + 0x18]
00000001405b25c9 movzx    r8d, bx
00000001405b25cd mov      edx, r14d
00000001405b25d0 mov      rcx, rdi
00000001405b25d3 call     qword ptr [rip + 0xd1d1f]
00000001405b25d9 mov      rax, qword ptr [rdi + 0x18]
00000001405b25dd lea      r8, [rip + 0xb66ac]
00000001405b25e4 mov      rcx, qword ptr [rdi + 8]
00000001405b25e8 mov      edx, r13d
00000001405b25eb mov      rax, qword ptr [rax + 0x118]
00000001405b25f2 call     qword ptr [rip + 0xd1d00]
00000001405b25f8 lea      rdx, [rip + 0x71f849]
00000001405b25ff jmp      0x1405bd0a2
00000001405b2604 mov      rax, qword ptr [rdi + 0x18]
00000001405b2608 lea      r8, [rip + 0xb65d1]
00000001405b260f mov      rcx, qword ptr [rdi + 8]
00000001405b2613 mov      edx, r13d
00000001405b2616 mov      rax, qword ptr [rax + 0x118]
00000001405b261d call     qword ptr [rip + 0xd1cd5]
00000001405b2623 mov      rax, qword ptr [rsi + 0x20]
00000001405b2627 mov      ebx, 0x143f4
00000001405b262c mov      edx, ebx
00000001405b262e mov      rcx, rdi
00000001405b2631 call     qword ptr [rip + 0xd1cc1]
00000001405b2637 mov      r9d, 0x186143f4
00000001405b263d lea      r8, [rip + 0xb653c]
00000001405b2644 bts      eax, 0x10
00000001405b2648 mov      edx, r13d
00000001405b264b mov      dword ptr [rbp + 0x30], eax
00000001405b264e mov      rax, qword ptr [rdi + 0x18]
00000001405b2652 mov      rcx, qword ptr [rdi + 8]
00000001405b2656 mov      rax, qword ptr [rax + 0x118]
00000001405b265d call     qword ptr [rip + 0xd1c95]
00000001405b2663 mov      rax, qword ptr [rsi + 0x28]
00000001405b2667 mov      edx, ebx
00000001405b2669 mov      r8d, dword ptr [rbp + 0x30]
00000001405b266d mov      rcx, rdi
00000001405b2670 call     qword ptr [rip + 0xd1c82]
00000001405b2676 mov      rax, qword ptr [rdi + 0x18]
00000001405b267a lea      r8, [rip + 0xb658f]
00000001405b2681 mov      rcx, qword ptr [rdi + 8]
00000001405b2685 mov      edx, r13d
00000001405b2688 mov      rax, qword ptr [rax + 0x118]
00000001405b268f call     qword ptr [rip + 0xd1c63]
00000001405b2695 lea      rdx, [rip + 0x71f79c]
00000001405b269c jmp      0x1405bd0a2
00000001405b26a1 mov      rax, qword ptr [rdi + 0x18]
00000001405b26a5 lea      r8, [rip + 0xb64a4]
00000001405b26ac mov      rcx, qword ptr [rdi + 8]
00000001405b26b0 mov      edx, r13d
00000001405b26b3 mov      rax, qword ptr [rax + 0x118]
00000001405b26ba call     qword ptr [rip + 0xd1c38]
00000001405b26c0 mov      rax, qword ptr [rsi + 0x20]
00000001405b26c4 mov      ebx, 0x103f4
00000001405b26c9 mov      edx, ebx
00000001405b26cb mov      rcx, rdi
00000001405b26ce call     qword ptr [rip + 0xd1c24]
00000001405b26d4 mov      r9d, 0x186103f4
00000001405b26da lea      r8, [rip + 0xb649f]
00000001405b26e1 bts      eax, 0x10
00000001405b26e5 mov      edx, r13d
00000001405b26e8 mov      dword ptr [rbp + 0x30], eax
00000001405b26eb mov      rax, qword ptr [rdi + 0x18]
00000001405b26ef mov      rcx, qword ptr [rdi + 8]
00000001405b26f3 mov      rax, qword ptr [rax + 0x118]
00000001405b26fa call     qword ptr [rip + 0xd1bf8]
00000001405b2700 mov      rax, qword ptr [rsi + 0x28]
00000001405b2704 mov      edx, ebx
00000001405b2706 mov      r8d, dword ptr [rbp + 0x30]
00000001405b270a mov      rcx, rdi
00000001405b270d call     qword ptr [rip + 0xd1be5]
00000001405b2713 mov      rax, qword ptr [rdi + 0x18]
00000001405b2717 lea      r8, [rip + 0xb6492]
00000001405b271e mov      rcx, qword ptr [rdi + 8]
00000001405b2722 mov      edx, r13d
00000001405b2725 mov      rax, qword ptr [rax + 0x118]
00000001405b272c call     qword ptr [rip + 0xd1bc6]
00000001405b2732 lea      rdx, [rip + 0x71f6ef]
00000001405b2739 jmp      0x1405bd0a2
00000001405b273e mov      rax, qword ptr [rdi + 0x18]
00000001405b2742 lea      r8, [rip + 0xb6377]
00000001405b2749 mov      rcx, qword ptr [rdi + 8]
00000001405b274d mov      edx, r13d
00000001405b2750 mov      rax, qword ptr [rax + 0x118]
00000001405b2757 call     qword ptr [rip + 0xd1b9b]
00000001405b275d mov      rax, qword ptr [rsi + 0x20]
00000001405b2761 mov      r14d, 0xf4
00000001405b2767 mov      edx, r14d
00000001405b276a mov      rcx, rdi
00000001405b276d call     qword ptr [rip + 0xd1b85]
00000001405b2773 mov      r9d, 0x186000f4
00000001405b2779 lea      r8, [rip + 0xb5a50]
00000001405b2780 btr      eax, 0x11
00000001405b2784 mov      edx, r13d
00000001405b2787 bts      eax, 0x10
00000001405b278b mov      dword ptr [rbp + 0x30], eax
00000001405b278e mov      rax, qword ptr [rdi + 0x18]
00000001405b2792 mov      rcx, qword ptr [rdi + 8]
00000001405b2796 mov      rax, qword ptr [rax + 0x118]
00000001405b279d call     qword ptr [rip + 0xd1b55]
00000001405b27a3 mov      rax, qword ptr [rsi + 0x28]
00000001405b27a7 mov      edx, r14d
00000001405b27aa mov      r8d, dword ptr [rbp + 0x30]
00000001405b27ae mov      rcx, rdi
00000001405b27b1 call     qword ptr [rip + 0xd1b41]
00000001405b27b7 mov      rax, qword ptr [rsi + 0x20]
00000001405b27bb mov      ebx, 0x58
00000001405b27c0 mov      edx, ebx
00000001405b27c2 mov      rcx, rdi
00000001405b27c5 call     qword ptr [rip + 0xd1b2d]
00000001405b27cb mov      r9d, 0x18600058
00000001405b27d1 lea      r8, [rip + 0xb6228]
00000001405b27d8 and      eax, 0xffffff74
00000001405b27dd mov      edx, r13d
00000001405b27e0 or       eax, 0x74
00000001405b27e3 mov      dword ptr [rbp + 0x30], eax
00000001405b27e6 mov      rax, qword ptr [rdi + 0x18]
00000001405b27ea mov      rcx, qword ptr [rdi + 8]
00000001405b27ee mov      rax, qword ptr [rax + 0x118]
00000001405b27f5 call     qword ptr [rip + 0xd1afd]
00000001405b27fb mov      eax, dword ptr [rbp + 0x30]
00000001405b27fe lea      r8, [rip + 0xb622b]
00000001405b2805 and      eax, 0xff74ffff
00000001405b280a mov      r9d, 0x18600058
00000001405b2810 or       eax, 0x740000
00000001405b2815 mov      edx, r13d
00000001405b2818 mov      dword ptr [rbp + 0x30], eax
00000001405b281b mov      rax, qword ptr [rdi + 0x18]
00000001405b281f mov      rcx, qword ptr [rdi + 8]
00000001405b2823 mov      rax, qword ptr [rax + 0x118]
00000001405b282a call     qword ptr [rip + 0xd1ac8]
00000001405b2830 mov      rax, qword ptr [rsi + 0x28]
00000001405b2834 mov      edx, ebx
00000001405b2836 mov      r8d, dword ptr [rbp + 0x30]
00000001405b283a mov      rcx, rdi
00000001405b283d call     qword ptr [rip + 0xd1ab5]
00000001405b2843 mov      rax, qword ptr [rsi + 0x20]
00000001405b2847 mov      ebx, 0xe300
00000001405b284c mov      edx, ebx
00000001405b284e mov      rcx, rdi
00000001405b2851 call     qword ptr [rip + 0xd1aa1]
00000001405b2857 mov      r9d, 0x1860e300
00000001405b285d lea      r8, [rip + 0xb628c]
00000001405b2864 bts      eax, 0x1b
00000001405b2868 mov      edx, r13d
00000001405b286b mov      dword ptr [rbp + 0x30], eax
00000001405b286e mov      rax, qword ptr [rdi + 0x18]
00000001405b2872 mov      rcx, qword ptr [rdi + 8]
00000001405b2876 mov      rax, qword ptr [rax + 0x118]
00000001405b287d call     qword ptr [rip + 0xd1a75]
00000001405b2883 mov      rax, qword ptr [rsi + 0x28]
00000001405b2887 mov      edx, ebx
00000001405b2889 mov      r8d, dword ptr [rbp + 0x30]
00000001405b288d mov      rcx, rdi
00000001405b2890 call     qword ptr [rip + 0xd1a62]
00000001405b2896 mov      rax, qword ptr [rdi + 0x18]
00000001405b289a lea      r8, [rip + 0xb627f]
00000001405b28a1 mov      rcx, qword ptr [rdi + 8]
00000001405b28a5 mov      edx, r13d
00000001405b28a8 mov      rax, qword ptr [rax + 0x118]
00000001405b28af call     qword ptr [rip + 0xd1a43]
00000001405b28b5 lea      rdx, [rip + 0x71f55c]
00000001405b28bc jmp      0x1405bd0a2
00000001405b28c1 mov      rax, qword ptr [rdi + 0x18]
00000001405b28c5 lea      r8, [rip + 0xb6424]
00000001405b28cc mov      rcx, qword ptr [rdi + 8]
00000001405b28d0 mov      edx, r13d
00000001405b28d3 mov      rax, qword ptr [rax + 0x118]
00000001405b28da call     qword ptr [rip + 0xd1a18]
00000001405b28e0 mov      rax, qword ptr [rdi + 0x18]
00000001405b28e4 lea      r8, [rip + 0xb6435]
00000001405b28eb mov      rcx, qword ptr [rdi + 8]
00000001405b28ef mov      edx, r13d
00000001405b28f2 mov      rax, qword ptr [rax + 0x118]
00000001405b28f9 call     qword ptr [rip + 0xd19f9]
00000001405b28ff lea      rdx, [rip + 0x71f562]
00000001405b2906 jmp      0x1405bd0a2
00000001405b290b cmp      ebx, 0x27
00000001405b290e ja       0x1405b2d46
00000001405b2914 je       0x1405b2cfc
00000001405b291a cmp      ebx, 0x21
00000001405b291d ja       0x1405b2b61
00000001405b2923 je       0x1405b2b17
00000001405b2929 sub      ebx, 0x1b
00000001405b292c je       0x1405b2acd
00000001405b2932 sub      ebx, r13d
00000001405b2935 je       0x1405b2a83
00000001405b293b sub      ebx, r13d
00000001405b293e je       0x1405b2a39
00000001405b2944 sub      ebx, r13d
00000001405b2947 je       0x1405b29ef
00000001405b294d sub      ebx, r13d
00000001405b2950 je       0x1405b29a5
00000001405b2952 cmp      ebx, r13d
00000001405b2955 jne      0x1405bca8d
00000001405b295b mov      rax, qword ptr [rdi + 0x18]
00000001405b295f lea      r8, [rip + 0xb65ca]
00000001405b2966 mov      rcx, qword ptr [rdi + 8]
00000001405b296a mov      edx, r13d
00000001405b296d mov      rax, qword ptr [rax + 0x118]
00000001405b2974 call     qword ptr [rip + 0xd197e]
00000001405b297a mov      rax, qword ptr [rdi + 0x18]
00000001405b297e lea      r8, [rip + 0xb65db]
00000001405b2985 mov      rcx, qword ptr [rdi + 8]
00000001405b2989 mov      edx, r13d
00000001405b298c mov      rax, qword ptr [rax + 0x118]
00000001405b2993 call     qword ptr [rip + 0xd195f]
00000001405b2999 lea      rdx, [rip + 0x71f528]
00000001405b29a0 jmp      0x1405bd0a2
00000001405b29a5 mov      rax, qword ptr [rdi + 0x18]
00000001405b29a9 lea      r8, [rip + 0xb6520]
00000001405b29b0 mov      rcx, qword ptr [rdi + 8]
00000001405b29b4 mov      edx, r13d
00000001405b29b7 mov      rax, qword ptr [rax + 0x118]
00000001405b29be call     qword ptr [rip + 0xd1934]
00000001405b29c4 mov      rax, qword ptr [rdi + 0x18]
00000001405b29c8 lea      r8, [rip + 0xb6531]
00000001405b29cf mov      rcx, qword ptr [rdi + 8]
00000001405b29d3 mov      edx, r13d
00000001405b29d6 mov      rax, qword ptr [rax + 0x118]
00000001405b29dd call     qword ptr [rip + 0xd1915]
00000001405b29e3 lea      rdx, [rip + 0x71f4ce]
00000001405b29ea jmp      0x1405bd0a2
00000001405b29ef mov      rax, qword ptr [rdi + 0x18]
00000001405b29f3 lea      r8, [rip + 0xb6476]
00000001405b29fa mov      rcx, qword ptr [rdi + 8]
00000001405b29fe mov      edx, r13d
00000001405b2a01 mov      rax, qword ptr [rax + 0x118]
00000001405b2a08 call     qword ptr [rip + 0xd18ea]
00000001405b2a0e mov      rax, qword ptr [rdi + 0x18]
00000001405b2a12 lea      r8, [rip + 0xb6487]
00000001405b2a19 mov      rcx, qword ptr [rdi + 8]
00000001405b2a1d mov      edx, r13d
00000001405b2a20 mov      rax, qword ptr [rax + 0x118]
00000001405b2a27 call     qword ptr [rip + 0xd18cb]
00000001405b2a2d lea      rdx, [rip + 0x71f474]
00000001405b2a34 jmp      0x1405bd0a2
00000001405b2a39 mov      rax, qword ptr [rdi + 0x18]
00000001405b2a3d lea      r8, [rip + 0xb63cc]
00000001405b2a44 mov      rcx, qword ptr [rdi + 8]
00000001405b2a48 mov      edx, r13d
00000001405b2a4b mov      rax, qword ptr [rax + 0x118]
00000001405b2a52 call     qword ptr [rip + 0xd18a0]
00000001405b2a58 mov      rax, qword ptr [rdi + 0x18]
00000001405b2a5c lea      r8, [rip + 0xb63dd]
00000001405b2a63 mov      rcx, qword ptr [rdi + 8]
00000001405b2a67 mov      edx, r13d
00000001405b2a6a mov      rax, qword ptr [rax + 0x118]
00000001405b2a71 call     qword ptr [rip + 0xd1881]
00000001405b2a77 lea      rdx, [rip + 0x71f41a]
00000001405b2a7e jmp      0x1405bd0a2
00000001405b2a83 mov      rax, qword ptr [rdi + 0x18]
00000001405b2a87 lea      r8, [rip + 0xb6322]
00000001405b2a8e mov      rcx, qword ptr [rdi + 8]
00000001405b2a92 mov      edx, r13d
00000001405b2a95 mov      rax, qword ptr [rax + 0x118]
00000001405b2a9c call     qword ptr [rip + 0xd1856]
00000001405b2aa2 mov      rax, qword ptr [rdi + 0x18]
00000001405b2aa6 lea      r8, [rip + 0xb6333]
00000001405b2aad mov      rcx, qword ptr [rdi + 8]
00000001405b2ab1 mov      edx, r13d
00000001405b2ab4 mov      rax, qword ptr [rax + 0x118]
00000001405b2abb call     qword ptr [rip + 0xd1837]
00000001405b2ac1 lea      rdx, [rip + 0x71f3c0]
00000001405b2ac8 jmp      0x1405bd0a2
00000001405b2acd mov      rax, qword ptr [rdi + 0x18]
00000001405b2ad1 lea      r8, [rip + 0xb6278]
00000001405b2ad8 mov      rcx, qword ptr [rdi + 8]
00000001405b2adc mov      edx, r13d
00000001405b2adf mov      rax, qword ptr [rax + 0x118]
00000001405b2ae6 call     qword ptr [rip + 0xd180c]
00000001405b2aec mov      rax, qword ptr [rdi + 0x18]
00000001405b2af0 lea      r8, [rip + 0xb6289]
00000001405b2af7 mov      rcx, qword ptr [rdi + 8]
00000001405b2afb mov      edx, r13d
00000001405b2afe mov      rax, qword ptr [rax + 0x118]
00000001405b2b05 call     qword ptr [rip + 0xd17ed]
00000001405b2b0b lea      rdx, [rip + 0x71f366]
00000001405b2b12 jmp      0x1405bd0a2
00000001405b2b17 mov      rax, qword ptr [rdi + 0x18]
00000001405b2b1b lea      r8, [rip + 0xb646e]
00000001405b2b22 mov      rcx, qword ptr [rdi + 8]
00000001405b2b26 mov      edx, r13d
00000001405b2b29 mov      rax, qword ptr [rax + 0x118]
00000001405b2b30 call     qword ptr [rip + 0xd17c2]
00000001405b2b36 mov      rax, qword ptr [rdi + 0x18]
00000001405b2b3a lea      r8, [rip + 0xb647f]
00000001405b2b41 mov      rcx, qword ptr [rdi + 8]
00000001405b2b45 mov      edx, r13d
00000001405b2b48 mov      rax, qword ptr [rax + 0x118]
00000001405b2b4f call     qword ptr [rip + 0xd17a3]
00000001405b2b55 lea      rdx, [rip + 0x71f37c]
00000001405b2b5c jmp      0x1405bd0a2
00000001405b2b61 sub      ebx, 0x22
00000001405b2b64 je       0x1405b2cb2
00000001405b2b6a sub      ebx, r13d
00000001405b2b6d je       0x1405b2c68
00000001405b2b73 sub      ebx, r13d
00000001405b2b76 je       0x1405b2c1e
00000001405b2b7c sub      ebx, r13d
00000001405b2b7f je       0x1405b2bd4
00000001405b2b81 cmp      ebx, r13d
00000001405b2b84 jne      0x1405bca8d
00000001405b2b8a mov      rax, qword ptr [rdi + 0x18]
00000001405b2b8e lea      r8, [rip + 0xb65db]
00000001405b2b95 mov      rcx, qword ptr [rdi + 8]
00000001405b2b99 mov      edx, r13d
00000001405b2b9c mov      rax, qword ptr [rax + 0x118]
00000001405b2ba3 call     qword ptr [rip + 0xd174f]
00000001405b2ba9 mov      rax, qword ptr [rdi + 0x18]
00000001405b2bad lea      r8, [rip + 0xb65ec]
00000001405b2bb4 mov      rcx, qword ptr [rdi + 8]
00000001405b2bb8 mov      edx, r13d
00000001405b2bbb mov      rax, qword ptr [rax + 0x118]
00000001405b2bc2 call     qword ptr [rip + 0xd1730]
00000001405b2bc8 lea      rdx, [rip + 0x71f359]
00000001405b2bcf jmp      0x1405bd0a2
00000001405b2bd4 mov      rax, qword ptr [rdi + 0x18]
00000001405b2bd8 lea      r8, [rip + 0xb6531]
00000001405b2bdf mov      rcx, qword ptr [rdi + 8]
00000001405b2be3 mov      edx, r13d
00000001405b2be6 mov      rax, qword ptr [rax + 0x118]
00000001405b2bed call     qword ptr [rip + 0xd1705]
00000001405b2bf3 mov      rax, qword ptr [rdi + 0x18]
00000001405b2bf7 lea      r8, [rip + 0xb6542]
00000001405b2bfe mov      rcx, qword ptr [rdi + 8]
00000001405b2c02 mov      edx, r13d
00000001405b2c05 mov      rax, qword ptr [rax + 0x118]
00000001405b2c0c call     qword ptr [rip + 0xd16e6]
00000001405b2c12 lea      rdx, [rip + 0x71f2ff]
00000001405b2c19 jmp      0x1405bd0a2
00000001405b2c1e mov      rax, qword ptr [rdi + 0x18]
00000001405b2c22 lea      r8, [rip + 0xb6487]
00000001405b2c29 mov      rcx, qword ptr [rdi + 8]
00000001405b2c2d mov      edx, r13d
00000001405b2c30 mov      rax, qword ptr [rax + 0x118]
00000001405b2c37 call     qword ptr [rip + 0xd16bb]
00000001405b2c3d mov      rax, qword ptr [rdi + 0x18]
00000001405b2c41 lea      r8, [rip + 0xb6498]
00000001405b2c48 mov      rcx, qword ptr [rdi + 8]
00000001405b2c4c mov      edx, r13d
00000001405b2c4f mov      rax, qword ptr [rax + 0x118]
00000001405b2c56 call     qword ptr [rip + 0xd169c]
00000001405b2c5c lea      rdx, [rip + 0x71f2a5]
00000001405b2c63 jmp      0x1405bd0a2
00000001405b2c68 mov      rax, qword ptr [rdi + 0x18]
00000001405b2c6c lea      r8, [rip + 0xb63dd]
00000001405b2c73 mov      rcx, qword ptr [rdi + 8]
00000001405b2c77 mov      edx, r13d
00000001405b2c7a mov      rax, qword ptr [rax + 0x118]
00000001405b2c81 call     qword ptr [rip + 0xd1671]
00000001405b2c87 mov      rax, qword ptr [rdi + 0x18]
00000001405b2c8b lea      r8, [rip + 0xb63ee]
00000001405b2c92 mov      rcx, qword ptr [rdi + 8]
00000001405b2c96 mov      edx, r13d
00000001405b2c99 mov      rax, qword ptr [rax + 0x118]
00000001405b2ca0 call     qword ptr [rip + 0xd1652]
00000001405b2ca6 lea      rdx, [rip + 0x71f24b]
00000001405b2cad jmp      0x1405bd0a2
00000001405b2cb2 mov      rax, qword ptr [rdi + 0x18]
00000001405b2cb6 lea      r8, [rip + 0xb6333]
00000001405b2cbd mov      rcx, qword ptr [rdi + 8]
00000001405b2cc1 mov      edx, r13d
00000001405b2cc4 mov      rax, qword ptr [rax + 0x118]
00000001405b2ccb call     qword ptr [rip + 0xd1627]
00000001405b2cd1 mov      rax, qword ptr [rdi + 0x18]
00000001405b2cd5 lea      r8, [rip + 0xb6344]
00000001405b2cdc mov      rcx, qword ptr [rdi + 8]
00000001405b2ce0 mov      edx, r13d
00000001405b2ce3 mov      rax, qword ptr [rax + 0x118]
00000001405b2cea call     qword ptr [rip + 0xd1608]
00000001405b2cf0 lea      rdx, [rip + 0x71f1f1]
00000001405b2cf7 jmp      0x1405bd0a2
00000001405b2cfc mov      rax, qword ptr [rdi + 0x18]
00000001405b2d00 lea      r8, [rip + 0xb64c9]
00000001405b2d07 mov      rcx, qword ptr [rdi + 8]
00000001405b2d0b mov      edx, r13d
00000001405b2d0e mov      rax, qword ptr [rax + 0x118]
00000001405b2d15 call     qword ptr [rip + 0xd15dd]
00000001405b2d1b mov      rax, qword ptr [rdi + 0x18]
00000001405b2d1f lea      r8, [rip + 0xb64da]
00000001405b2d26 mov      rcx, qword ptr [rdi + 8]
00000001405b2d2a mov      edx, r13d
00000001405b2d2d mov      rax, qword ptr [rax + 0x118]
00000001405b2d34 call     qword ptr [rip + 0xd15be]
00000001405b2d3a lea      rdx, [rip + 0x71f1f7]
00000001405b2d41 jmp      0x1405bd0a2
00000001405b2d46 cmp      ebx, 0x2e
00000001405b2d49 ja       0x1405b2f8d
00000001405b2d4f je       0x1405b2f43
00000001405b2d55 sub      ebx, 0x28
00000001405b2d58 je       0x1405b2ef9
00000001405b2d5e sub      ebx, r13d
00000001405b2d61 je       0x1405b2eaf
00000001405b2d67 sub      ebx, r13d
00000001405b2d6a je       0x1405b2e65
00000001405b2d70 sub      ebx, r13d
00000001405b2d73 je       0x1405b2e1b
00000001405b2d79 sub      ebx, r13d
00000001405b2d7c je       0x1405b2dd1
00000001405b2d7e cmp      ebx, r13d
00000001405b2d81 jne      0x1405bca8d
00000001405b2d87 mov      rax, qword ptr [rdi + 0x18]
00000001405b2d8b lea      r8, [rip + 0xb667e]
00000001405b2d92 mov      rcx, qword ptr [rdi + 8]
00000001405b2d96 mov      edx, r13d
00000001405b2d99 mov      rax, qword ptr [rax + 0x118]
00000001405b2da0 call     qword ptr [rip + 0xd1552]
00000001405b2da6 mov      rax, qword ptr [rdi + 0x18]
00000001405b2daa lea      r8, [rip + 0xb668f]
00000001405b2db1 mov      rcx, qword ptr [rdi + 8]
00000001405b2db5 mov      edx, r13d
00000001405b2db8 mov      rax, qword ptr [rax + 0x118]
00000001405b2dbf call     qword ptr [rip + 0xd1533]
00000001405b2dc5 lea      rdx, [rip + 0x71f1cc]
00000001405b2dcc jmp      0x1405bd0a2
00000001405b2dd1 mov      rax, qword ptr [rdi + 0x18]
00000001405b2dd5 lea      r8, [rip + 0xb65d4]
00000001405b2ddc mov      rcx, qword ptr [rdi + 8]
00000001405b2de0 mov      edx, r13d
00000001405b2de3 mov      rax, qword ptr [rax + 0x118]
00000001405b2dea call     qword ptr [rip + 0xd1508]
00000001405b2df0 mov      rax, qword ptr [rdi + 0x18]
00000001405b2df4 lea      r8, [rip + 0xb65e5]
00000001405b2dfb mov      rcx, qword ptr [rdi + 8]
00000001405b2dff mov      edx, r13d
00000001405b2e02 mov      rax, qword ptr [rax + 0x118]
00000001405b2e09 call     qword ptr [rip + 0xd14e9]
00000001405b2e0f lea      rdx, [rip + 0x71f172]
00000001405b2e16 jmp      0x1405bd0a2
00000001405b2e1b mov      rax, qword ptr [rdi + 0x18]
00000001405b2e1f lea      r8, [rip + 0xb652a]
00000001405b2e26 mov      rcx, qword ptr [rdi + 8]
00000001405b2e2a mov      edx, r13d
00000001405b2e2d mov      rax, qword ptr [rax + 0x118]
00000001405b2e34 call     qword ptr [rip + 0xd14be]
00000001405b2e3a mov      rax, qword ptr [rdi + 0x18]
00000001405b2e3e lea      r8, [rip + 0xb653b]
00000001405b2e45 mov      rcx, qword ptr [rdi + 8]
00000001405b2e49 mov      edx, r13d
00000001405b2e4c mov      rax, qword ptr [rax + 0x118]
00000001405b2e53 call     qword ptr [rip + 0xd149f]
00000001405b2e59 lea      rdx, [rip + 0x71f118]
00000001405b2e60 jmp      0x1405bd0a2
00000001405b2e65 mov      rax, qword ptr [rdi + 0x18]
00000001405b2e69 lea      r8, [rip + 0xb6480]
00000001405b2e70 mov      rcx, qword ptr [rdi + 8]
00000001405b2e74 mov      edx, r13d
00000001405b2e77 mov      rax, qword ptr [rax + 0x118]
00000001405b2e7e call     qword ptr [rip + 0xd1474]
00000001405b2e84 mov      rax, qword ptr [rdi + 0x18]
00000001405b2e88 lea      r8, [rip + 0xb6491]
00000001405b2e8f mov      rcx, qword ptr [rdi + 8]
00000001405b2e93 mov      edx, r13d
00000001405b2e96 mov      rax, qword ptr [rax + 0x118]
00000001405b2e9d call     qword ptr [rip + 0xd1455]
00000001405b2ea3 lea      rdx, [rip + 0x71f0be]
00000001405b2eaa jmp      0x1405bd0a2
00000001405b2eaf mov      rax, qword ptr [rdi + 0x18]
00000001405b2eb3 lea      r8, [rip + 0xb63d6]
00000001405b2eba mov      rcx, qword ptr [rdi + 8]
00000001405b2ebe mov      edx, r13d
00000001405b2ec1 mov      rax, qword ptr [rax + 0x118]
00000001405b2ec8 call     qword ptr [rip + 0xd142a]
00000001405b2ece mov      rax, qword ptr [rdi + 0x18]
00000001405b2ed2 lea      r8, [rip + 0xb63e7]
00000001405b2ed9 mov      rcx, qword ptr [rdi + 8]
00000001405b2edd mov      edx, r13d
00000001405b2ee0 mov      rax, qword ptr [rax + 0x118]
00000001405b2ee7 call     qword ptr [rip + 0xd140b]
00000001405b2eed lea      rdx, [rip + 0x71f064]
00000001405b2ef4 jmp      0x1405bd0a2
00000001405b2ef9 mov      rax, qword ptr [rdi + 0x18]
00000001405b2efd lea      r8, [rip + 0xb632c]
00000001405b2f04 mov      rcx, qword ptr [rdi + 8]
00000001405b2f08 mov      edx, r13d
00000001405b2f0b mov      rax, qword ptr [rax + 0x118]
00000001405b2f12 call     qword ptr [rip + 0xd13e0]
00000001405b2f18 mov      rax, qword ptr [rdi + 0x18]
00000001405b2f1c lea      r8, [rip + 0xb633d]
00000001405b2f23 mov      rcx, qword ptr [rdi + 8]
00000001405b2f27 mov      edx, r13d
00000001405b2f2a mov      rax, qword ptr [rax + 0x118]
00000001405b2f31 call     qword ptr [rip + 0xd13c1]
00000001405b2f37 lea      rdx, [rip + 0x71f00a]
00000001405b2f3e jmp      0x1405bd0a2
00000001405b2f43 mov      rax, qword ptr [rdi + 0x18]
00000001405b2f47 lea      r8, [rip + 0xb6522]
00000001405b2f4e mov      rcx, qword ptr [rdi + 8]
00000001405b2f52 mov      edx, r13d
00000001405b2f55 mov      rax, qword ptr [rax + 0x118]
00000001405b2f5c call     qword ptr [rip + 0xd1396]
00000001405b2f62 mov      rax, qword ptr [rdi + 0x18]
00000001405b2f66 lea      r8, [rip + 0xb6533]
00000001405b2f6d mov      rcx, qword ptr [rdi + 8]
00000001405b2f71 mov      edx, r13d
00000001405b2f74 mov      rax, qword ptr [rax + 0x118]
00000001405b2f7b call     qword ptr [rip + 0xd1377]
00000001405b2f81 lea      rdx, [rip + 0x71f020]
00000001405b2f88 jmp      0x1405bd0a2
00000001405b2f8d sub      ebx, 0x2f
00000001405b2f90 je       0x1405b30de
00000001405b2f96 sub      ebx, r13d
00000001405b2f99 je       0x1405b3094
00000001405b2f9f sub      ebx, r13d
00000001405b2fa2 je       0x1405b304a
00000001405b2fa8 sub      ebx, r13d
00000001405b2fab je       0x1405b3000
00000001405b2fad cmp      ebx, r13d
00000001405b2fb0 jne      0x1405bca8d
00000001405b2fb6 mov      rax, qword ptr [rdi + 0x18]
00000001405b2fba lea      r8, [rip + 0xb668f]
00000001405b2fc1 mov      rcx, qword ptr [rdi + 8]
00000001405b2fc5 mov      edx, r13d
00000001405b2fc8 mov      rax, qword ptr [rax + 0x118]
00000001405b2fcf call     qword ptr [rip + 0xd1323]
00000001405b2fd5 mov      rax, qword ptr [rdi + 0x18]
00000001405b2fd9 lea      r8, [rip + 0xb66a0]
00000001405b2fe0 mov      rcx, qword ptr [rdi + 8]
00000001405b2fe4 mov      edx, r13d
00000001405b2fe7 mov      rax, qword ptr [rax + 0x118]
00000001405b2fee call     qword ptr [rip + 0xd1304]
00000001405b2ff4 lea      rdx, [rip + 0x71effd]
00000001405b2ffb jmp      0x1405bd0a2
00000001405b3000 mov      rax, qword ptr [rdi + 0x18]
00000001405b3004 lea      r8, [rip + 0xb65e5]
00000001405b300b mov      rcx, qword ptr [rdi + 8]
00000001405b300f mov      edx, r13d
00000001405b3012 mov      rax, qword ptr [rax + 0x118]
00000001405b3019 call     qword ptr [rip + 0xd12d9]
00000001405b301f mov      rax, qword ptr [rdi + 0x18]
00000001405b3023 lea      r8, [rip + 0xb65f6]
00000001405b302a mov      rcx, qword ptr [rdi + 8]
00000001405b302e mov      edx, r13d
00000001405b3031 mov      rax, qword ptr [rax + 0x118]
00000001405b3038 call     qword ptr [rip + 0xd12ba]
00000001405b303e lea      rdx, [rip + 0x71efa3]
00000001405b3045 jmp      0x1405bd0a2
00000001405b304a mov      rax, qword ptr [rdi + 0x18]
00000001405b304e lea      r8, [rip + 0xb653b]
00000001405b3055 mov      rcx, qword ptr [rdi + 8]
00000001405b3059 mov      edx, r13d
00000001405b305c mov      rax, qword ptr [rax + 0x118]
00000001405b3063 call     qword ptr [rip + 0xd128f]
00000001405b3069 mov      rax, qword ptr [rdi + 0x18]
00000001405b306d lea      r8, [rip + 0xb654c]
00000001405b3074 mov      rcx, qword ptr [rdi + 8]
00000001405b3078 mov      edx, r13d
00000001405b307b mov      rax, qword ptr [rax + 0x118]
00000001405b3082 call     qword ptr [rip + 0xd1270]
00000001405b3088 lea      rdx, [rip + 0x71ef49]
00000001405b308f jmp      0x1405bd0a2
00000001405b3094 mov      rax, qword ptr [rdi + 0x18]
00000001405b3098 lea      r8, [rip + 0xb6491]
00000001405b309f mov      rcx, qword ptr [rdi + 8]
00000001405b30a3 mov      edx, r13d
00000001405b30a6 mov      rax, qword ptr [rax + 0x118]
00000001405b30ad call     qword ptr [rip + 0xd1245]
00000001405b30b3 mov      rax, qword ptr [rdi + 0x18]
00000001405b30b7 lea      r8, [rip + 0xb64a2]
00000001405b30be mov      rcx, qword ptr [rdi + 8]
00000001405b30c2 mov      edx, r13d
00000001405b30c5 mov      rax, qword ptr [rax + 0x118]
00000001405b30cc call     qword ptr [rip + 0xd1226]
00000001405b30d2 lea      rdx, [rip + 0x71eeef]
00000001405b30d9 jmp      0x1405bd0a2
00000001405b30de mov      rax, qword ptr [rdi + 0x18]
00000001405b30e2 lea      r8, [rip + 0xb63e7]
00000001405b30e9 mov      rcx, qword ptr [rdi + 8]
00000001405b30ed mov      edx, r13d
00000001405b30f0 mov      rax, qword ptr [rax + 0x118]
00000001405b30f7 call     qword ptr [rip + 0xd11fb]
00000001405b30fd mov      rax, qword ptr [rdi + 0x18]
00000001405b3101 lea      r8, [rip + 0xb63f8]
00000001405b3108 mov      rcx, qword ptr [rdi + 8]
00000001405b310c mov      edx, r13d
00000001405b310f mov      rax, qword ptr [rax + 0x118]
00000001405b3116 call     qword ptr [rip + 0xd11dc]
00000001405b311c lea      rdx, [rip + 0x71ee95]
00000001405b3123 jmp      0x1405bd0a2
00000001405b3128 mov      rax, qword ptr [rdi + 0x18]
00000001405b312c lea      r8, [rip + 0xb657d]
00000001405b3133 mov      rcx, qword ptr [rdi + 8]
00000001405b3137 mov      edx, r13d
00000001405b313a mov      rax, qword ptr [rax + 0x118]
00000001405b3141 call     qword ptr [rip + 0xd11b1]
00000001405b3147 mov      rax, qword ptr [rdi + 0x18]
00000001405b314b lea      r8, [rip + 0xb658e]
00000001405b3152 mov      rcx, qword ptr [rdi + 8]
00000001405b3156 mov      edx, r13d
00000001405b3159 mov      rax, qword ptr [rax + 0x118]
00000001405b3160 call     qword ptr [rip + 0xd1192]
00000001405b3166 lea      rdx, [rip + 0x71ee9b]
00000001405b316d jmp      0x1405bd0a2
00000001405b3172 cmp      ebx, 0x4f
00000001405b3175 ja       0x1405b3a3b
00000001405b317b je       0x1405b39f1
00000001405b3181 cmp      ebx, 0x42
00000001405b3184 ja       0x1405b360f
00000001405b318a je       0x1405b35c5
00000001405b3190 cmp      ebx, 0x3b
00000001405b3193 ja       0x1405b33d7
00000001405b3199 je       0x1405b338d
00000001405b319f sub      ebx, 0x35
00000001405b31a2 je       0x1405b3343
00000001405b31a8 sub      ebx, r13d
00000001405b31ab je       0x1405b32f9
00000001405b31b1 sub      ebx, r13d
00000001405b31b4 je       0x1405b32af
00000001405b31ba sub      ebx, r13d
00000001405b31bd je       0x1405b3265
00000001405b31c3 sub      ebx, r13d
00000001405b31c6 je       0x1405b321b
00000001405b31c8 cmp      ebx, r13d
00000001405b31cb jne      0x1405bca8d
00000001405b31d1 mov      rax, qword ptr [rdi + 0x18]
00000001405b31d5 lea      r8, [rip + 0xb6714]
00000001405b31dc mov      rcx, qword ptr [rdi + 8]
00000001405b31e0 mov      edx, r13d
00000001405b31e3 mov      rax, qword ptr [rax + 0x118]
00000001405b31ea call     qword ptr [rip + 0xd1108]
00000001405b31f0 mov      rax, qword ptr [rdi + 0x18]
00000001405b31f4 lea      r8, [rip + 0xb6725]
00000001405b31fb mov      rcx, qword ptr [rdi + 8]
00000001405b31ff mov      edx, r13d
00000001405b3202 mov      rax, qword ptr [rax + 0x118]
00000001405b3209 call     qword ptr [rip + 0xd10e9]
00000001405b320f lea      rdx, [rip + 0x71ee52]
00000001405b3216 jmp      0x1405bd0a2
00000001405b321b mov      rax, qword ptr [rdi + 0x18]
00000001405b321f lea      r8, [rip + 0xb666a]
00000001405b3226 mov      rcx, qword ptr [rdi + 8]
00000001405b322a mov      edx, r13d
00000001405b322d mov      rax, qword ptr [rax + 0x118]
00000001405b3234 call     qword ptr [rip + 0xd10be]
00000001405b323a mov      rax, qword ptr [rdi + 0x18]
00000001405b323e lea      r8, [rip + 0xb667b]
00000001405b3245 mov      rcx, qword ptr [rdi + 8]
00000001405b3249 mov      edx, r13d
00000001405b324c mov      rax, qword ptr [rax + 0x118]
00000001405b3253 call     qword ptr [rip + 0xd109f]
00000001405b3259 lea      rdx, [rip + 0x71edf8]
00000001405b3260 jmp      0x1405bd0a2
00000001405b3265 mov      rax, qword ptr [rdi + 0x18]
00000001405b3269 lea      r8, [rip + 0xb65c0]
00000001405b3270 mov      rcx, qword ptr [rdi + 8]
00000001405b3274 mov      edx, r13d
00000001405b3277 mov      rax, qword ptr [rax + 0x118]
00000001405b327e call     qword ptr [rip + 0xd1074]
00000001405b3284 mov      rax, qword ptr [rdi + 0x18]
00000001405b3288 lea      r8, [rip + 0xb65d1]
00000001405b328f mov      rcx, qword ptr [rdi + 8]
00000001405b3293 mov      edx, r13d
00000001405b3296 mov      rax, qword ptr [rax + 0x118]
00000001405b329d call     qword ptr [rip + 0xd1055]
00000001405b32a3 lea      rdx, [rip + 0x71ed9e]
00000001405b32aa jmp      0x1405bd0a2
00000001405b32af mov      rax, qword ptr [rdi + 0x18]
00000001405b32b3 lea      r8, [rip + 0xb6516]
00000001405b32ba mov      rcx, qword ptr [rdi + 8]
00000001405b32be mov      edx, r13d
00000001405b32c1 mov      rax, qword ptr [rax + 0x118]
00000001405b32c8 call     qword ptr [rip + 0xd102a]
00000001405b32ce mov      rax, qword ptr [rdi + 0x18]
00000001405b32d2 lea      r8, [rip + 0xb6527]
00000001405b32d9 mov      rcx, qword ptr [rdi + 8]
00000001405b32dd mov      edx, r13d
00000001405b32e0 mov      rax, qword ptr [rax + 0x118]
00000001405b32e7 call     qword ptr [rip + 0xd100b]
00000001405b32ed lea      rdx, [rip + 0x71ed44]
00000001405b32f4 jmp      0x1405bd0a2
00000001405b32f9 mov      rax, qword ptr [rdi + 0x18]
00000001405b32fd lea      r8, [rip + 0xb646c]
00000001405b3304 mov      rcx, qword ptr [rdi + 8]
00000001405b3308 mov      edx, r13d
00000001405b330b mov      rax, qword ptr [rax + 0x118]
00000001405b3312 call     qword ptr [rip + 0xd0fe0]
00000001405b3318 mov      rax, qword ptr [rdi + 0x18]
00000001405b331c lea      r8, [rip + 0xb647d]
00000001405b3323 mov      rcx, qword ptr [rdi + 8]
00000001405b3327 mov      edx, r13d
00000001405b332a mov      rax, qword ptr [rax + 0x118]
00000001405b3331 call     qword ptr [rip + 0xd0fc1]
00000001405b3337 lea      rdx, [rip + 0x71ecea]
00000001405b333e jmp      0x1405bd0a2
00000001405b3343 mov      rax, qword ptr [rdi + 0x18]
00000001405b3347 lea      r8, [rip + 0xb63c2]
00000001405b334e mov      rcx, qword ptr [rdi + 8]
00000001405b3352 mov      edx, r13d
00000001405b3355 mov      rax, qword ptr [rax + 0x118]
00000001405b335c call     qword ptr [rip + 0xd0f96]
00000001405b3362 mov      rax, qword ptr [rdi + 0x18]
00000001405b3366 lea      r8, [rip + 0xb63d3]
00000001405b336d mov      rcx, qword ptr [rdi + 8]
00000001405b3371 mov      edx, r13d
00000001405b3374 mov      rax, qword ptr [rax + 0x118]
00000001405b337b call     qword ptr [rip + 0xd0f77]
00000001405b3381 lea      rdx, [rip + 0x71ec90]
00000001405b3388 jmp      0x1405bd0a2
00000001405b338d mov      rax, qword ptr [rdi + 0x18]
00000001405b3391 lea      r8, [rip + 0xcab78]
00000001405b3398 mov      rcx, qword ptr [rdi + 8]
00000001405b339c mov      edx, r13d
00000001405b339f mov      rax, qword ptr [rax + 0x118]
00000001405b33a6 call     qword ptr [rip + 0xd0f4c]
00000001405b33ac mov      rax, qword ptr [rdi + 0x18]
00000001405b33b0 lea      r8, [rip + 0xcab89]
00000001405b33b7 mov      rcx, qword ptr [rdi + 8]
00000001405b33bb mov      edx, r13d
00000001405b33be mov      rax, qword ptr [rax + 0x118]
00000001405b33c5 call     qword ptr [rip + 0xd0f2d]
00000001405b33cb lea      rdx, [rip + 0x71eca6]
00000001405b33d2 jmp      0x1405bd0a2
00000001405b33d7 sub      ebx, 0x3c
00000001405b33da je       0x1405b357b
00000001405b33e0 sub      ebx, r13d
00000001405b33e3 je       0x1405b3531
00000001405b33e9 sub      ebx, r13d
00000001405b33ec je       0x1405b34e7
00000001405b33f2 sub      ebx, r13d
00000001405b33f5 je       0x1405b349d
00000001405b33fb sub      ebx, r13d
00000001405b33fe je       0x1405b3453
00000001405b3400 cmp      ebx, r13d
00000001405b3403 jne      0x1405bca8d
00000001405b3409 mov      rax, qword ptr [rdi + 0x18]
00000001405b340d lea      r8, [rip + 0xb671c]
00000001405b3414 mov      rcx, qword ptr [rdi + 8]
00000001405b3418 mov      edx, r13d
00000001405b341b mov      rax, qword ptr [rax + 0x118]
00000001405b3422 call     qword ptr [rip + 0xd0ed0]
00000001405b3428 mov      rax, qword ptr [rdi + 0x18]
00000001405b342c lea      r8, [rip + 0xb672d]
00000001405b3433 mov      rcx, qword ptr [rdi + 8]
00000001405b3437 mov      edx, r13d
00000001405b343a mov      rax, qword ptr [rax + 0x118]
00000001405b3441 call     qword ptr [rip + 0xd0eb1]
00000001405b3447 lea      rdx, [rip + 0x71ec8a]
00000001405b344e jmp      0x1405bd0a2
00000001405b3453 mov      rax, qword ptr [rdi + 0x18]
00000001405b3457 lea      r8, [rip + 0xb6672]
00000001405b345e mov      rcx, qword ptr [rdi + 8]
00000001405b3462 mov      edx, r13d
00000001405b3465 mov      rax, qword ptr [rax + 0x118]
00000001405b346c call     qword ptr [rip + 0xd0e86]
00000001405b3472 mov      rax, qword ptr [rdi + 0x18]
00000001405b3476 lea      r8, [rip + 0xb6683]
00000001405b347d mov      rcx, qword ptr [rdi + 8]
00000001405b3481 mov      edx, r13d
00000001405b3484 mov      rax, qword ptr [rax + 0x118]
00000001405b348b call     qword ptr [rip + 0xd0e67]
00000001405b3491 lea      rdx, [rip + 0x71ec30]
00000001405b3498 jmp      0x1405bd0a2
00000001405b349d mov      rax, qword ptr [rdi + 0x18]
00000001405b34a1 lea      r8, [rip + 0xb65c8]
00000001405b34a8 mov      rcx, qword ptr [rdi + 8]
00000001405b34ac mov      edx, r13d
00000001405b34af mov      rax, qword ptr [rax + 0x118]
00000001405b34b6 call     qword ptr [rip + 0xd0e3c]
00000001405b34bc mov      rax, qword ptr [rdi + 0x18]
00000001405b34c0 lea      r8, [rip + 0xb65d9]
00000001405b34c7 mov      rcx, qword ptr [rdi + 8]
00000001405b34cb mov      edx, r13d
00000001405b34ce mov      rax, qword ptr [rax + 0x118]
00000001405b34d5 call     qword ptr [rip + 0xd0e1d]
00000001405b34db lea      rdx, [rip + 0x71ebd6]
00000001405b34e2 jmp      0x1405bd0a2
00000001405b34e7 mov      rax, qword ptr [rdi + 0x18]
00000001405b34eb lea      r8, [rip + 0xb651e]
00000001405b34f2 mov      rcx, qword ptr [rdi + 8]
00000001405b34f6 mov      edx, r13d
00000001405b34f9 mov      rax, qword ptr [rax + 0x118]
00000001405b3500 call     qword ptr [rip + 0xd0df2]
00000001405b3506 mov      rax, qword ptr [rdi + 0x18]
00000001405b350a lea      r8, [rip + 0xb652f]
00000001405b3511 mov      rcx, qword ptr [rdi + 8]
00000001405b3515 mov      edx, r13d
00000001405b3518 mov      rax, qword ptr [rax + 0x118]
00000001405b351f call     qword ptr [rip + 0xd0dd3]
00000001405b3525 lea      rdx, [rip + 0x71eb7c]
00000001405b352c jmp      0x1405bd0a2
00000001405b3531 mov      rax, qword ptr [rdi + 0x18]
00000001405b3535 lea      r8, [rip + 0xb6474]
00000001405b353c mov      rcx, qword ptr [rdi + 8]
00000001405b3540 mov      edx, r13d
00000001405b3543 mov      rax, qword ptr [rax + 0x118]
00000001405b354a call     qword ptr [rip + 0xd0da8]
00000001405b3550 mov      rax, qword ptr [rdi + 0x18]
00000001405b3554 lea      r8, [rip + 0xb6485]
00000001405b355b mov      rcx, qword ptr [rdi + 8]
00000001405b355f mov      edx, r13d
00000001405b3562 mov      rax, qword ptr [rax + 0x118]
00000001405b3569 call     qword ptr [rip + 0xd0d89]
00000001405b356f lea      rdx, [rip + 0x71eb22]
00000001405b3576 jmp      0x1405bd0a2
00000001405b357b mov      rax, qword ptr [rdi + 0x18]
00000001405b357f lea      r8, [rip + 0xb63ca]
00000001405b3586 mov      rcx, qword ptr [rdi + 8]
00000001405b358a mov      edx, r13d
00000001405b358d mov      rax, qword ptr [rax + 0x118]
00000001405b3594 call     qword ptr [rip + 0xd0d5e]
00000001405b359a mov      rax, qword ptr [rdi + 0x18]
00000001405b359e lea      r8, [rip + 0xb63db]
00000001405b35a5 mov      rcx, qword ptr [rdi + 8]
00000001405b35a9 mov      edx, r13d
00000001405b35ac mov      rax, qword ptr [rax + 0x118]
00000001405b35b3 call     qword ptr [rip + 0xd0d3f]
00000001405b35b9 lea      rdx, [rip + 0x71eac8]
00000001405b35c0 jmp      0x1405bd0a2
00000001405b35c5 mov      rax, qword ptr [rdi + 0x18]
00000001405b35c9 lea      r8, [rip + 0xb65c0]
00000001405b35d0 mov      rcx, qword ptr [rdi + 8]
00000001405b35d4 mov      edx, r13d
00000001405b35d7 mov      rax, qword ptr [rax + 0x118]
00000001405b35de call     qword ptr [rip + 0xd0d14]
00000001405b35e4 mov      rax, qword ptr [rdi + 0x18]
00000001405b35e8 lea      r8, [rip + 0xb65d1]
00000001405b35ef mov      rcx, qword ptr [rdi + 8]
00000001405b35f3 mov      edx, r13d
00000001405b35f6 mov      rax, qword ptr [rax + 0x118]
00000001405b35fd call     qword ptr [rip + 0xd0cf5]
00000001405b3603 lea      rdx, [rip + 0x71eade]
00000001405b360a jmp      0x1405bd0a2
00000001405b360f cmp      ebx, 0x49
00000001405b3612 ja       0x1405b3856
00000001405b3618 je       0x1405b380c
00000001405b361e sub      ebx, 0x43
00000001405b3621 je       0x1405b37c2
00000001405b3627 sub      ebx, r13d
00000001405b362a je       0x1405b3778
00000001405b3630 sub      ebx, r13d
00000001405b3633 je       0x1405b372e
00000001405b3639 sub      ebx, r13d
00000001405b363c je       0x1405b36e4
00000001405b3642 sub      ebx, r13d
00000001405b3645 je       0x1405b369a
00000001405b3647 cmp      ebx, r13d
00000001405b364a jne      0x1405bca8d
00000001405b3650 mov      rax, qword ptr [rdi + 0x18]
00000001405b3654 lea      r8, [rip + 0xb6775]
00000001405b365b mov      rcx, qword ptr [rdi + 8]
00000001405b365f mov      edx, r13d
00000001405b3662 mov      rax, qword ptr [rax + 0x118]
00000001405b3669 call     qword ptr [rip + 0xd0c89]
00000001405b366f mov      rax, qword ptr [rdi + 0x18]
00000001405b3673 lea      r8, [rip + 0xb6786]
00000001405b367a mov      rcx, qword ptr [rdi + 8]
00000001405b367e mov      edx, r13d
00000001405b3681 mov      rax, qword ptr [rax + 0x118]
00000001405b3688 call     qword ptr [rip + 0xd0c6a]
00000001405b368e lea      rdx, [rip + 0x71eab3]
00000001405b3695 jmp      0x1405bd0a2
00000001405b369a mov      rax, qword ptr [rdi + 0x18]
00000001405b369e lea      r8, [rip + 0xb66cb]
00000001405b36a5 mov      rcx, qword ptr [rdi + 8]
00000001405b36a9 mov      edx, r13d
00000001405b36ac mov      rax, qword ptr [rax + 0x118]
00000001405b36b3 call     qword ptr [rip + 0xd0c3f]
00000001405b36b9 mov      rax, qword ptr [rdi + 0x18]
00000001405b36bd lea      r8, [rip + 0xb66dc]
00000001405b36c4 mov      rcx, qword ptr [rdi + 8]
00000001405b36c8 mov      edx, r13d
00000001405b36cb mov      rax, qword ptr [rax + 0x118]
00000001405b36d2 call     qword ptr [rip + 0xd0c20]
00000001405b36d8 lea      rdx, [rip + 0x71ea59]
00000001405b36df jmp      0x1405bd0a2
00000001405b36e4 mov      rax, qword ptr [rdi + 0x18]
00000001405b36e8 lea      r8, [rip + 0xb6621]
00000001405b36ef mov      rcx, qword ptr [rdi + 8]
00000001405b36f3 mov      edx, r13d
00000001405b36f6 mov      rax, qword ptr [rax + 0x118]
00000001405b36fd call     qword ptr [rip + 0xd0bf5]
00000001405b3703 mov      rax, qword ptr [rdi + 0x18]
00000001405b3707 lea      r8, [rip + 0xb6632]
00000001405b370e mov      rcx, qword ptr [rdi + 8]
00000001405b3712 mov      edx, r13d
00000001405b3715 mov      rax, qword ptr [rax + 0x118]
00000001405b371c call     qword ptr [rip + 0xd0bd6]
00000001405b3722 lea      rdx, [rip + 0x71e9ff]
00000001405b3729 jmp      0x1405bd0a2
00000001405b372e mov      rax, qword ptr [rdi + 0x18]
00000001405b3732 lea      r8, [rip + 0xb6577]
00000001405b3739 mov      rcx, qword ptr [rdi + 8]
00000001405b373d mov      edx, r13d
00000001405b3740 mov      rax, qword ptr [rax + 0x118]
00000001405b3747 call     qword ptr [rip + 0xd0bab]
00000001405b374d mov      rax, qword ptr [rdi + 0x18]
00000001405b3751 lea      r8, [rip + 0xb6588]
00000001405b3758 mov      rcx, qword ptr [rdi + 8]
00000001405b375c mov      edx, r13d
00000001405b375f mov      rax, qword ptr [rax + 0x118]
00000001405b3766 call     qword ptr [rip + 0xd0b8c]
00000001405b376c lea      rdx, [rip + 0x71e9a5]
00000001405b3773 jmp      0x1405bd0a2
00000001405b3778 mov      rax, qword ptr [rdi + 0x18]
00000001405b377c lea      r8, [rip + 0xb64cd]
00000001405b3783 mov      rcx, qword ptr [rdi + 8]
00000001405b3787 mov      edx, r13d
00000001405b378a mov      rax, qword ptr [rax + 0x118]
00000001405b3791 call     qword ptr [rip + 0xd0b61]
00000001405b3797 mov      rax, qword ptr [rdi + 0x18]
00000001405b379b lea      r8, [rip + 0xb64de]
00000001405b37a2 mov      rcx, qword ptr [rdi + 8]
00000001405b37a6 mov      edx, r13d
00000001405b37a9 mov      rax, qword ptr [rax + 0x118]
00000001405b37b0 call     qword ptr [rip + 0xd0b42]
00000001405b37b6 lea      rdx, [rip + 0x71e94b]
00000001405b37bd jmp      0x1405bd0a2
00000001405b37c2 mov      rax, qword ptr [rdi + 0x18]
00000001405b37c6 lea      r8, [rip + 0xb6423]
00000001405b37cd mov      rcx, qword ptr [rdi + 8]
00000001405b37d1 mov      edx, r13d
00000001405b37d4 mov      rax, qword ptr [rax + 0x118]
00000001405b37db call     qword ptr [rip + 0xd0b17]
00000001405b37e1 mov      rax, qword ptr [rdi + 0x18]
00000001405b37e5 lea      r8, [rip + 0xb6434]
00000001405b37ec mov      rcx, qword ptr [rdi + 8]
00000001405b37f0 mov      edx, r13d
00000001405b37f3 mov      rax, qword ptr [rax + 0x118]
00000001405b37fa call     qword ptr [rip + 0xd0af8]
00000001405b3800 lea      rdx, [rip + 0x71e8f1]
00000001405b3807 jmp      0x1405bd0a2
00000001405b380c mov      rax, qword ptr [rdi + 0x18]
00000001405b3810 lea      r8, [rip + 0xb6619]
00000001405b3817 mov      rcx, qword ptr [rdi + 8]
00000001405b381b mov      edx, r13d
00000001405b381e mov      rax, qword ptr [rax + 0x118]
00000001405b3825 call     qword ptr [rip + 0xd0acd]
00000001405b382b mov      rax, qword ptr [rdi + 0x18]
00000001405b382f lea      r8, [rip + 0xb662a]
00000001405b3836 mov      rcx, qword ptr [rdi + 8]
00000001405b383a mov      edx, r13d
00000001405b383d mov      rax, qword ptr [rax + 0x118]
00000001405b3844 call     qword ptr [rip + 0xd0aae]
00000001405b384a lea      rdx, [rip + 0x71e907]
00000001405b3851 jmp      0x1405bd0a2
00000001405b3856 sub      ebx, 0x4a
00000001405b3859 je       0x1405b39a7
00000001405b385f sub      ebx, r13d
00000001405b3862 je       0x1405b395d
00000001405b3868 sub      ebx, r13d
00000001405b386b je       0x1405b3913
00000001405b3871 sub      ebx, r13d
00000001405b3874 je       0x1405b38c9
00000001405b3876 cmp      ebx, r13d
00000001405b3879 jne      0x1405bca8d
00000001405b387f mov      rax, qword ptr [rdi + 0x18]
00000001405b3883 lea      r8, [rip + 0xb6786]
00000001405b388a mov      rcx, qword ptr [rdi + 8]
00000001405b388e mov      edx, r13d
00000001405b3891 mov      rax, qword ptr [rax + 0x118]
00000001405b3898 call     qword ptr [rip + 0xd0a5a]
00000001405b389e mov      rax, qword ptr [rdi + 0x18]
00000001405b38a2 lea      r8, [rip + 0xb6797]
00000001405b38a9 mov      rcx, qword ptr [rdi + 8]
00000001405b38ad mov      edx, r13d
00000001405b38b0 mov      rax, qword ptr [rax + 0x118]
00000001405b38b7 call     qword ptr [rip + 0xd0a3b]
00000001405b38bd lea      rdx, [rip + 0x71e8e4]
00000001405b38c4 jmp      0x1405bd0a2
00000001405b38c9 mov      rax, qword ptr [rdi + 0x18]
00000001405b38cd lea      r8, [rip + 0xb66dc]
00000001405b38d4 mov      rcx, qword ptr [rdi + 8]
00000001405b38d8 mov      edx, r13d
00000001405b38db mov      rax, qword ptr [rax + 0x118]
00000001405b38e2 call     qword ptr [rip + 0xd0a10]
00000001405b38e8 mov      rax, qword ptr [rdi + 0x18]
00000001405b38ec lea      r8, [rip + 0xb66ed]
00000001405b38f3 mov      rcx, qword ptr [rdi + 8]
00000001405b38f7 mov      edx, r13d
00000001405b38fa mov      rax, qword ptr [rax + 0x118]
00000001405b3901 call     qword ptr [rip + 0xd09f1]
00000001405b3907 lea      rdx, [rip + 0x71e88a]
00000001405b390e jmp      0x1405bd0a2
00000001405b3913 mov      rax, qword ptr [rdi + 0x18]
00000001405b3917 lea      r8, [rip + 0xb6632]
00000001405b391e mov      rcx, qword ptr [rdi + 8]
00000001405b3922 mov      edx, r13d
00000001405b3925 mov      rax, qword ptr [rax + 0x118]
00000001405b392c call     qword ptr [rip + 0xd09c6]
00000001405b3932 mov      rax, qword ptr [rdi + 0x18]
00000001405b3936 lea      r8, [rip + 0xb6643]
00000001405b393d mov      rcx, qword ptr [rdi + 8]
00000001405b3941 mov      edx, r13d
00000001405b3944 mov      rax, qword ptr [rax + 0x118]
00000001405b394b call     qword ptr [rip + 0xd09a7]
00000001405b3951 lea      rdx, [rip + 0x71e830]
00000001405b3958 jmp      0x1405bd0a2
00000001405b395d mov      rax, qword ptr [rdi + 0x18]
00000001405b3961 lea      r8, [rip + 0xb6588]
00000001405b3968 mov      rcx, qword ptr [rdi + 8]
00000001405b396c mov      edx, r13d
00000001405b396f mov      rax, qword ptr [rax + 0x118]
00000001405b3976 call     qword ptr [rip + 0xd097c]
00000001405b397c mov      rax, qword ptr [rdi + 0x18]
00000001405b3980 lea      r8, [rip + 0xb6599]
00000001405b3987 mov      rcx, qword ptr [rdi + 8]
00000001405b398b mov      edx, r13d
00000001405b398e mov      rax, qword ptr [rax + 0x118]
00000001405b3995 call     qword ptr [rip + 0xd095d]
00000001405b399b lea      rdx, [rip + 0x71e7d6]
00000001405b39a2 jmp      0x1405bd0a2
00000001405b39a7 mov      rax, qword ptr [rdi + 0x18]
00000001405b39ab lea      r8, [rip + 0xb64de]
00000001405b39b2 mov      rcx, qword ptr [rdi + 8]
00000001405b39b6 mov      edx, r13d
00000001405b39b9 mov      rax, qword ptr [rax + 0x118]
00000001405b39c0 call     qword ptr [rip + 0xd0932]
00000001405b39c6 mov      rax, qword ptr [rdi + 0x18]
00000001405b39ca lea      r8, [rip + 0xb64ef]
00000001405b39d1 mov      rcx, qword ptr [rdi + 8]
00000001405b39d5 mov      edx, r13d
00000001405b39d8 mov      rax, qword ptr [rax + 0x118]
00000001405b39df call     qword ptr [rip + 0xd0913]
00000001405b39e5 lea      rdx, [rip + 0x71e77c]
00000001405b39ec jmp      0x1405bd0a2
00000001405b39f1 mov      rax, qword ptr [rdi + 0x18]
00000001405b39f5 lea      r8, [rip + 0xca574]
00000001405b39fc mov      rcx, qword ptr [rdi + 8]
00000001405b3a00 mov      edx, r13d
00000001405b3a03 mov      rax, qword ptr [rax + 0x118]
00000001405b3a0a call     qword ptr [rip + 0xd08e8]
00000001405b3a10 mov      rax, qword ptr [rdi + 0x18]
00000001405b3a14 lea      r8, [rip + 0xca585]
00000001405b3a1b mov      rcx, qword ptr [rdi + 8]
00000001405b3a1f mov      edx, r13d
00000001405b3a22 mov      rax, qword ptr [rax + 0x118]
00000001405b3a29 call     qword ptr [rip + 0xd08c9]
00000001405b3a2f lea      rdx, [rip + 0x71e782]
00000001405b3a36 jmp      0x1405bd0a2
00000001405b3a3b cmp      ebx, 0x5c
00000001405b3a3e ja       0x1405b3f6c
00000001405b3a44 je       0x1405b3e2c
00000001405b3a4a cmp      ebx, 0x56
00000001405b3a4d ja       0x1405b3c91
00000001405b3a53 je       0x1405b3c47
00000001405b3a59 sub      ebx, 0x50
00000001405b3a5c je       0x1405b3bfd
00000001405b3a62 sub      ebx, r13d
00000001405b3a65 je       0x1405b3bb3
00000001405b3a6b sub      ebx, r13d
00000001405b3a6e je       0x1405b3b69
00000001405b3a74 sub      ebx, r13d
00000001405b3a77 je       0x1405b3b1f
00000001405b3a7d sub      ebx, r13d
00000001405b3a80 je       0x1405b3ad5
00000001405b3a82 cmp      ebx, r13d
00000001405b3a85 jne      0x1405bca8d
00000001405b3a8b mov      rax, qword ptr [rdi + 0x18]
00000001405b3a8f lea      r8, [rip + 0xb67ba]
00000001405b3a96 mov      rcx, qword ptr [rdi + 8]
00000001405b3a9a mov      edx, r13d
00000001405b3a9d mov      rax, qword ptr [rax + 0x118]
00000001405b3aa4 call     qword ptr [rip + 0xd084e]
00000001405b3aaa mov      rax, qword ptr [rdi + 0x18]
00000001405b3aae lea      r8, [rip + 0xb67cb]
00000001405b3ab5 mov      rcx, qword ptr [rdi + 8]
00000001405b3ab9 mov      edx, r13d
00000001405b3abc mov      rax, qword ptr [rax + 0x118]
00000001405b3ac3 call     qword ptr [rip + 0xd082f]
00000001405b3ac9 lea      rdx, [rip + 0x71e748]
00000001405b3ad0 jmp      0x1405bd0a2
00000001405b3ad5 mov      rax, qword ptr [rdi + 0x18]
00000001405b3ad9 lea      r8, [rip + 0xb6710]
00000001405b3ae0 mov      rcx, qword ptr [rdi + 8]
00000001405b3ae4 mov      edx, r13d
00000001405b3ae7 mov      rax, qword ptr [rax + 0x118]
00000001405b3aee call     qword ptr [rip + 0xd0804]
00000001405b3af4 mov      rax, qword ptr [rdi + 0x18]
00000001405b3af8 lea      r8, [rip + 0xb6721]
00000001405b3aff mov      rcx, qword ptr [rdi + 8]
00000001405b3b03 mov      edx, r13d
00000001405b3b06 mov      rax, qword ptr [rax + 0x118]
00000001405b3b0d call     qword ptr [rip + 0xd07e5]
00000001405b3b13 lea      rdx, [rip + 0x71e6ee]
00000001405b3b1a jmp      0x1405bd0a2
00000001405b3b1f mov      rax, qword ptr [rdi + 0x18]
00000001405b3b23 lea      r8, [rip + 0xb6666]
00000001405b3b2a mov      rcx, qword ptr [rdi + 8]
00000001405b3b2e mov      edx, r13d
00000001405b3b31 mov      rax, qword ptr [rax + 0x118]
00000001405b3b38 call     qword ptr [rip + 0xd07ba]
00000001405b3b3e mov      rax, qword ptr [rdi + 0x18]
00000001405b3b42 lea      r8, [rip + 0xb6677]
00000001405b3b49 mov      rcx, qword ptr [rdi + 8]
00000001405b3b4d mov      edx, r13d
00000001405b3b50 mov      rax, qword ptr [rax + 0x118]
00000001405b3b57 call     qword ptr [rip + 0xd079b]
00000001405b3b5d lea      rdx, [rip + 0x71e694]
00000001405b3b64 jmp      0x1405bd0a2
00000001405b3b69 mov      rax, qword ptr [rdi + 0x18]
00000001405b3b6d lea      r8, [rip + 0xb65bc]
00000001405b3b74 mov      rcx, qword ptr [rdi + 8]
00000001405b3b78 mov      edx, r13d
00000001405b3b7b mov      rax, qword ptr [rax + 0x118]
00000001405b3b82 call     qword ptr [rip + 0xd0770]
00000001405b3b88 mov      rax, qword ptr [rdi + 0x18]
00000001405b3b8c lea      r8, [rip + 0xb65cd]
00000001405b3b93 mov      rcx, qword ptr [rdi + 8]
00000001405b3b97 mov      edx, r13d
00000001405b3b9a mov      rax, qword ptr [rax + 0x118]
00000001405b3ba1 call     qword ptr [rip + 0xd0751]
00000001405b3ba7 lea      rdx, [rip + 0x71e63a]
00000001405b3bae jmp      0x1405bd0a2
00000001405b3bb3 mov      rax, qword ptr [rdi + 0x18]
00000001405b3bb7 lea      r8, [rip + 0xb6512]
00000001405b3bbe mov      rcx, qword ptr [rdi + 8]
00000001405b3bc2 mov      edx, r13d
00000001405b3bc5 mov      rax, qword ptr [rax + 0x118]
00000001405b3bcc call     qword ptr [rip + 0xd0726]
00000001405b3bd2 mov      rax, qword ptr [rdi + 0x18]
00000001405b3bd6 lea      r8, [rip + 0xb6523]
00000001405b3bdd mov      rcx, qword ptr [rdi + 8]
00000001405b3be1 mov      edx, r13d
00000001405b3be4 mov      rax, qword ptr [rax + 0x118]
00000001405b3beb call     qword ptr [rip + 0xd0707]
00000001405b3bf1 lea      rdx, [rip + 0x71e5e0]
00000001405b3bf8 jmp      0x1405bd0a2
00000001405b3bfd mov      rax, qword ptr [rdi + 0x18]
00000001405b3c01 lea      r8, [rip + 0xb6468]
00000001405b3c08 mov      rcx, qword ptr [rdi + 8]
00000001405b3c0c mov      edx, r13d
00000001405b3c0f mov      rax, qword ptr [rax + 0x118]
00000001405b3c16 call     qword ptr [rip + 0xd06dc]
00000001405b3c1c mov      rax, qword ptr [rdi + 0x18]
00000001405b3c20 lea      r8, [rip + 0xb6479]
00000001405b3c27 mov      rcx, qword ptr [rdi + 8]
00000001405b3c2b mov      edx, r13d
00000001405b3c2e mov      rax, qword ptr [rax + 0x118]
00000001405b3c35 call     qword ptr [rip + 0xd06bd]
00000001405b3c3b lea      rdx, [rip + 0x71e586]
00000001405b3c42 jmp      0x1405bd0a2
00000001405b3c47 mov      rax, qword ptr [rdi + 0x18]
00000001405b3c4b lea      r8, [rip + 0xb665e]
00000001405b3c52 mov      rcx, qword ptr [rdi + 8]
00000001405b3c56 mov      edx, r13d
00000001405b3c59 mov      rax, qword ptr [rax + 0x118]
00000001405b3c60 call     qword ptr [rip + 0xd0692]
00000001405b3c66 mov      rax, qword ptr [rdi + 0x18]
00000001405b3c6a lea      r8, [rip + 0xb666f]
00000001405b3c71 mov      rcx, qword ptr [rdi + 8]
00000001405b3c75 mov      edx, r13d
00000001405b3c78 mov      rax, qword ptr [rax + 0x118]
00000001405b3c7f call     qword ptr [rip + 0xd0673]
00000001405b3c85 lea      rdx, [rip + 0x71e59c]
00000001405b3c8c jmp      0x1405bd0a2
00000001405b3c91 sub      ebx, 0x57
00000001405b3c94 je       0x1405b3de2
00000001405b3c9a sub      ebx, r13d
00000001405b3c9d je       0x1405b3d98
00000001405b3ca3 sub      ebx, r13d
00000001405b3ca6 je       0x1405b3d4e
00000001405b3cac sub      ebx, r13d
00000001405b3caf je       0x1405b3d04
00000001405b3cb1 cmp      ebx, r13d
00000001405b3cb4 jne      0x1405bca8d
00000001405b3cba mov      rax, qword ptr [rdi + 0x18]
00000001405b3cbe lea      r8, [rip + 0xb67cb]
00000001405b3cc5 mov      rcx, qword ptr [rdi + 8]
00000001405b3cc9 mov      edx, r13d
00000001405b3ccc mov      rax, qword ptr [rax + 0x118]
00000001405b3cd3 call     qword ptr [rip + 0xd061f]
00000001405b3cd9 mov      rax, qword ptr [rdi + 0x18]
00000001405b3cdd lea      r8, [rip + 0xb67dc]
00000001405b3ce4 mov      rcx, qword ptr [rdi + 8]
00000001405b3ce8 mov      edx, r13d
00000001405b3ceb mov      rax, qword ptr [rax + 0x118]
00000001405b3cf2 call     qword ptr [rip + 0xd0600]
00000001405b3cf8 lea      rdx, [rip + 0x71e579]
00000001405b3cff jmp      0x1405bd0a2
00000001405b3d04 mov      rax, qword ptr [rdi + 0x18]
00000001405b3d08 lea      r8, [rip + 0xb6721]
00000001405b3d0f mov      rcx, qword ptr [rdi + 8]
00000001405b3d13 mov      edx, r13d
00000001405b3d16 mov      rax, qword ptr [rax + 0x118]
00000001405b3d1d call     qword ptr [rip + 0xd05d5]
00000001405b3d23 mov      rax, qword ptr [rdi + 0x18]
00000001405b3d27 lea      r8, [rip + 0xb6732]
00000001405b3d2e mov      rcx, qword ptr [rdi + 8]
00000001405b3d32 mov      edx, r13d
00000001405b3d35 mov      rax, qword ptr [rax + 0x118]
00000001405b3d3c call     qword ptr [rip + 0xd05b6]
00000001405b3d42 lea      rdx, [rip + 0x71e51f]
00000001405b3d49 jmp      0x1405bd0a2
00000001405b3d4e mov      rax, qword ptr [rdi + 0x18]
00000001405b3d52 lea      r8, [rip + 0xb6677]
00000001405b3d59 mov      rcx, qword ptr [rdi + 8]
00000001405b3d5d mov      edx, r13d
00000001405b3d60 mov      rax, qword ptr [rax + 0x118]
00000001405b3d67 call     qword ptr [rip + 0xd058b]
00000001405b3d6d mov      rax, qword ptr [rdi + 0x18]
00000001405b3d71 lea      r8, [rip + 0xb6688]
00000001405b3d78 mov      rcx, qword ptr [rdi + 8]
00000001405b3d7c mov      edx, r13d
00000001405b3d7f mov      rax, qword ptr [rax + 0x118]
00000001405b3d86 call     qword ptr [rip + 0xd056c]
00000001405b3d8c lea      rdx, [rip + 0x71e4c5]
00000001405b3d93 jmp      0x1405bd0a2
00000001405b3d98 mov      rax, qword ptr [rdi + 0x18]
00000001405b3d9c lea      r8, [rip + 0xb65cd]
00000001405b3da3 mov      rcx, qword ptr [rdi + 8]
00000001405b3da7 mov      edx, r13d
00000001405b3daa mov      rax, qword ptr [rax + 0x118]
00000001405b3db1 call     qword ptr [rip + 0xd0541]
00000001405b3db7 mov      rax, qword ptr [rdi + 0x18]
00000001405b3dbb lea      r8, [rip + 0xb65de]
00000001405b3dc2 mov      rcx, qword ptr [rdi + 8]
00000001405b3dc6 mov      edx, r13d
00000001405b3dc9 mov      rax, qword ptr [rax + 0x118]
00000001405b3dd0 call     qword ptr [rip + 0xd0522]
00000001405b3dd6 lea      rdx, [rip + 0x71e46b]
00000001405b3ddd jmp      0x1405bd0a2
00000001405b3de2 mov      rax, qword ptr [rdi + 0x18]
00000001405b3de6 lea      r8, [rip + 0xb6523]
00000001405b3ded mov      rcx, qword ptr [rdi + 8]
00000001405b3df1 mov      edx, r13d
00000001405b3df4 mov      rax, qword ptr [rax + 0x118]
00000001405b3dfb call     qword ptr [rip + 0xd04f7]
00000001405b3e01 mov      rax, qword ptr [rdi + 0x18]
00000001405b3e05 lea      r8, [rip + 0xb6534]
00000001405b3e0c mov      rcx, qword ptr [rdi + 8]
00000001405b3e10 mov      edx, r13d
00000001405b3e13 mov      rax, qword ptr [rax + 0x118]
00000001405b3e1a call     qword ptr [rip + 0xd04d8]
00000001405b3e20 lea      rdx, [rip + 0x71e411]
00000001405b3e27 jmp      0x1405bd0a2
00000001405b3e2c mov      rax, qword ptr [rdi + 0x18]
00000001405b3e30 lea      r8, [rip + 0xca199]
00000001405b3e37 mov      rcx, qword ptr [rdi + 8]
00000001405b3e3b mov      edx, r13d
00000001405b3e3e mov      rax, qword ptr [rax + 0x118]
00000001405b3e45 call     qword ptr [rip + 0xd04ad]
00000001405b3e4b mov      rax, qword ptr [rsi + 0x20]
00000001405b3e4f mov      r14d, 0xf4
00000001405b3e55 mov      edx, r14d
00000001405b3e58 mov      rcx, rdi
00000001405b3e5b call     qword ptr [rip + 0xd0497]
00000001405b3e61 mov      r9d, 0x186000f4
00000001405b3e67 lea      r8, [rip + 0xb4362]
00000001405b3e6e btr      eax, 0x11
00000001405b3e72 mov      edx, r13d
00000001405b3e75 bts      eax, 0x10
00000001405b3e79 mov      dword ptr [rbp + 0x30], eax
00000001405b3e7c mov      rax, qword ptr [rdi + 0x18]
00000001405b3e80 mov      rcx, qword ptr [rdi + 8]
00000001405b3e84 mov      rax, qword ptr [rax + 0x118]
00000001405b3e8b call     qword ptr [rip + 0xd0467]
00000001405b3e91 mov      rax, qword ptr [rsi + 0x28]
00000001405b3e95 mov      edx, r14d
00000001405b3e98 mov      r8d, dword ptr [rbp + 0x30]
00000001405b3e9c mov      rcx, rdi
00000001405b3e9f call     qword ptr [rip + 0xd0453]
00000001405b3ea5 mov      rax, qword ptr [rsi]
00000001405b3ea8 mov      ebx, 0x58
00000001405b3ead mov      edx, ebx
00000001405b3eaf mov      rcx, rdi
00000001405b3eb2 call     qword ptr [rip + 0xd0440]
00000001405b3eb8 mov      rax, qword ptr [rdi + 0x18]
00000001405b3ebc lea      r8, [rip + 0xca13d]
00000001405b3ec3 mov      rcx, qword ptr [rdi + 8]
00000001405b3ec7 mov      r9d, 0x18600058
00000001405b3ecd mov      edx, r13d
00000001405b3ed0 mov      rax, qword ptr [rax + 0x118]
00000001405b3ed7 call     qword ptr [rip + 0xd041b]
00000001405b3edd mov      rax, qword ptr [rsi + 8]
00000001405b3ee1 mov      r8b, 0x83
00000001405b3ee4 mov      edx, ebx
00000001405b3ee6 mov      rcx, rdi
00000001405b3ee9 call     qword ptr [rip + 0xd0409]
00000001405b3eef mov      rax, qword ptr [rsi]
00000001405b3ef2 mov      r14d, 0x9438
00000001405b3ef8 mov      edx, r14d
00000001405b3efb mov      rcx, rdi
00000001405b3efe call     qword ptr [rip + 0xd03f4]
00000001405b3f04 mov      rcx, qword ptr [rdi + 8]
00000001405b3f08 lea      r8, [rip + 0xca121]
00000001405b3f0f mov      bl, al
00000001405b3f11 mov      r9d, 0x18609438
00000001405b3f17 mov      rax, qword ptr [rdi + 0x18]
00000001405b3f1b mov      edx, r13d
00000001405b3f1e and      bl, 3
00000001405b3f21 mov      rax, qword ptr [rax + 0x118]
00000001405b3f28 call     qword ptr [rip + 0xd03ca]
00000001405b3f2e mov      rax, qword ptr [rsi + 8]
00000001405b3f32 mov      r8b, bl
00000001405b3f35 mov      edx, r14d
00000001405b3f38 mov      rcx, rdi
00000001405b3f3b call     qword ptr [rip + 0xd03b7]
00000001405b3f41 mov      rax, qword ptr [rdi + 0x18]
00000001405b3f45 lea      r8, [rip + 0xca114]
00000001405b3f4c mov      rcx, qword ptr [rdi + 8]
00000001405b3f50 mov      edx, r13d
00000001405b3f53 mov      rax, qword ptr [rax + 0x118]
00000001405b3f5a call     qword ptr [rip + 0xd0398]
00000001405b3f60 lea      rdx, [rip + 0x71e321]
00000001405b3f67 jmp      0x1405bd0a2
00000001405b3f6c cmp      ebx, 0x63
00000001405b3f6f ja       0x1405b4886
00000001405b3f75 je       0x1405b4743
00000001405b3f7b sub      ebx, 0x5d
00000001405b3f7e je       0x1405b4600
00000001405b3f84 sub      ebx, r13d
00000001405b3f87 je       0x1405b44bd
00000001405b3f8d sub      ebx, r13d
00000001405b3f90 je       0x1405b437a
00000001405b3f96 sub      ebx, r13d
00000001405b3f99 je       0x1405b4237
00000001405b3f9f sub      ebx, r13d
00000001405b3fa2 je       0x1405b40f4
00000001405b3fa8 cmp      ebx, r13d
00000001405b3fab jne      0x1405bca8d
00000001405b3fb1 mov      rax, qword ptr [rdi + 0x18]
00000001405b3fb5 lea      r8, [rip + 0xca3a4]
00000001405b3fbc mov      rcx, qword ptr [rdi + 8]
00000001405b3fc0 mov      edx, r13d
00000001405b3fc3 mov      rax, qword ptr [rax + 0x118]
00000001405b3fca call     qword ptr [rip + 0xd0328]
00000001405b3fd0 mov      rax, qword ptr [rsi + 0x20]
00000001405b3fd4 mov      r14d, 0xf4
00000001405b3fda mov      edx, r14d
00000001405b3fdd mov      rcx, rdi
00000001405b3fe0 call     qword ptr [rip + 0xd0312]
00000001405b3fe6 mov      r9d, 0x186000f4
00000001405b3fec lea      r8, [rip + 0xb41dd]
00000001405b3ff3 btr      eax, 0x11
00000001405b3ff7 mov      edx, r13d
00000001405b3ffa bts      eax, 0x10
00000001405b3ffe mov      dword ptr [rbp + 0x30], eax
00000001405b4001 mov      rax, qword ptr [rdi + 0x18]
00000001405b4005 mov      rcx, qword ptr [rdi + 8]
00000001405b4009 mov      rax, qword ptr [rax + 0x118]
00000001405b4010 call     qword ptr [rip + 0xd02e2]
00000001405b4016 mov      rax, qword ptr [rsi + 0x28]
00000001405b401a mov      edx, r14d
00000001405b401d mov      r8d, dword ptr [rbp + 0x30]
00000001405b4021 mov      rcx, rdi
00000001405b4024 call     qword ptr [rip + 0xd02ce]
00000001405b402a mov      rax, qword ptr [rsi]
00000001405b402d mov      ebx, 0x58
00000001405b4032 mov      edx, ebx
00000001405b4034 mov      rcx, rdi
00000001405b4037 call     qword ptr [rip + 0xd02bb]
00000001405b403d mov      rax, qword ptr [rdi + 0x18]
00000001405b4041 lea      r8, [rip + 0xc9fb8]
00000001405b4048 mov      rcx, qword ptr [rdi + 8]
00000001405b404c mov      r9d, 0x18600058
00000001405b4052 mov      edx, r13d
00000001405b4055 mov      rax, qword ptr [rax + 0x118]
00000001405b405c call     qword ptr [rip + 0xd0296]
00000001405b4062 mov      rax, qword ptr [rsi + 8]
00000001405b4066 mov      r8b, 0x83
00000001405b4069 mov      edx, ebx
00000001405b406b mov      rcx, rdi
00000001405b406e call     qword ptr [rip + 0xd0284]
00000001405b4074 mov      rax, qword ptr [rsi]
00000001405b4077 mov      r14d, 0x9438
00000001405b407d mov      edx, r14d
00000001405b4080 mov      rcx, rdi
00000001405b4083 call     qword ptr [rip + 0xd026f]
00000001405b4089 mov      rcx, qword ptr [rdi + 8]
00000001405b408d lea      r8, [rip + 0xca2fc]
00000001405b4094 mov      bl, al
00000001405b4096 mov      r9d, 0x18609438
00000001405b409c mov      rax, qword ptr [rdi + 0x18]
00000001405b40a0 and      bl, 3
00000001405b40a3 mov      edx, r13d
00000001405b40a6 or       bl, 0x1c
00000001405b40a9 mov      rax, qword ptr [rax + 0x118]
00000001405b40b0 call     qword ptr [rip + 0xd0242]
00000001405b40b6 mov      rax, qword ptr [rsi + 8]
00000001405b40ba mov      r8b, bl
00000001405b40bd mov      edx, r14d
00000001405b40c0 mov      rcx, rdi
00000001405b40c3 call     qword ptr [rip + 0xd022f]
00000001405b40c9 mov      rax, qword ptr [rdi + 0x18]
00000001405b40cd lea      r8, [rip + 0xca2ec]
00000001405b40d4 mov      rcx, qword ptr [rdi + 8]
00000001405b40d8 mov      edx, r13d
00000001405b40db mov      rax, qword ptr [rax + 0x118]
00000001405b40e2 call     qword ptr [rip + 0xd0210]
00000001405b40e8 lea      rdx, [rip + 0x71e1f9]
00000001405b40ef jmp      0x1405bd0a2
00000001405b40f4 mov      rax, qword ptr [rdi + 0x18]
00000001405b40f8 lea      r8, [rip + 0xca1d1]
00000001405b40ff mov      rcx, qword ptr [rdi + 8]
00000001405b4103 mov      edx, r13d
00000001405b4106 mov      rax, qword ptr [rax + 0x118]
00000001405b410d call     qword ptr [rip + 0xd01e5]
00000001405b4113 mov      rax, qword ptr [rsi + 0x20]
00000001405b4117 mov      r14d, 0xf4
00000001405b411d mov      edx, r14d
00000001405b4120 mov      rcx, rdi
00000001405b4123 call     qword ptr [rip + 0xd01cf]
00000001405b4129 mov      r9d, 0x186000f4
00000001405b412f lea      r8, [rip + 0xb409a]
00000001405b4136 btr      eax, 0x11
00000001405b413a mov      edx, r13d
00000001405b413d bts      eax, 0x10
00000001405b4141 mov      dword ptr [rbp + 0x30], eax
00000001405b4144 mov      rax, qword ptr [rdi + 0x18]
00000001405b4148 mov      rcx, qword ptr [rdi + 8]
00000001405b414c mov      rax, qword ptr [rax + 0x118]
00000001405b4153 call     qword ptr [rip + 0xd019f]
00000001405b4159 mov      rax, qword ptr [rsi + 0x28]
00000001405b415d mov      edx, r14d
00000001405b4160 mov      r8d, dword ptr [rbp + 0x30]
00000001405b4164 mov      rcx, rdi
00000001405b4167 call     qword ptr [rip + 0xd018b]
00000001405b416d mov      rax, qword ptr [rsi]
00000001405b4170 mov      ebx, 0x58
00000001405b4175 mov      edx, ebx
00000001405b4177 mov      rcx, rdi
00000001405b417a call     qword ptr [rip + 0xd0178]
00000001405b4180 mov      rax, qword ptr [rdi + 0x18]
00000001405b4184 lea      r8, [rip + 0xc9e75]
00000001405b418b mov      rcx, qword ptr [rdi + 8]
00000001405b418f mov      r9d, 0x18600058
00000001405b4195 mov      edx, r13d
00000001405b4198 mov      rax, qword ptr [rax + 0x118]
00000001405b419f call     qword ptr [rip + 0xd0153]
00000001405b41a5 mov      rax, qword ptr [rsi + 8]
00000001405b41a9 mov      r8b, 0x83
00000001405b41ac mov      edx, ebx
00000001405b41ae mov      rcx, rdi
00000001405b41b1 call     qword ptr [rip + 0xd0141]
00000001405b41b7 mov      rax, qword ptr [rsi]
00000001405b41ba mov      r14d, 0x9438
00000001405b41c0 mov      edx, r14d
00000001405b41c3 mov      rcx, rdi
00000001405b41c6 call     qword ptr [rip + 0xd012c]
00000001405b41cc mov      rcx, qword ptr [rdi + 8]
00000001405b41d0 lea      r8, [rip + 0xca129]
00000001405b41d7 mov      bl, al
00000001405b41d9 mov      r9d, 0x18609438
00000001405b41df mov      rax, qword ptr [rdi + 0x18]
00000001405b41e3 and      bl, 3
00000001405b41e6 mov      edx, r13d
00000001405b41e9 or       bl, 0x18
00000001405b41ec mov      rax, qword ptr [rax + 0x118]
00000001405b41f3 call     qword ptr [rip + 0xd00ff]
00000001405b41f9 mov      rax, qword ptr [rsi + 8]
00000001405b41fd mov      r8b, bl
00000001405b4200 mov      edx, r14d
00000001405b4203 mov      rcx, rdi
00000001405b4206 call     qword ptr [rip + 0xd00ec]
00000001405b420c mov      rax, qword ptr [rdi + 0x18]
00000001405b4210 lea      r8, [rip + 0xca119]
00000001405b4217 mov      rcx, qword ptr [rdi + 8]
00000001405b421b mov      edx, r13d
00000001405b421e mov      rax, qword ptr [rax + 0x118]
00000001405b4225 call     qword ptr [rip + 0xd00cd]
00000001405b422b lea      rdx, [rip + 0x71e0a6]
00000001405b4232 jmp      0x1405bd0a2
00000001405b4237 mov      rax, qword ptr [rdi + 0x18]
00000001405b423b lea      r8, [rip + 0xc9ffe]
00000001405b4242 mov      rcx, qword ptr [rdi + 8]
00000001405b4246 mov      edx, r13d
00000001405b4249 mov      rax, qword ptr [rax + 0x118]
00000001405b4250 call     qword ptr [rip + 0xd00a2]
00000001405b4256 mov      rax, qword ptr [rsi + 0x20]
00000001405b425a mov      r14d, 0xf4
00000001405b4260 mov      edx, r14d
00000001405b4263 mov      rcx, rdi
00000001405b4266 call     qword ptr [rip + 0xd008c]
00000001405b426c mov      r9d, 0x186000f4
00000001405b4272 lea      r8, [rip + 0xb3f57]
00000001405b4279 btr      eax, 0x11
00000001405b427d mov      edx, r13d
00000001405b4280 bts      eax, 0x10
00000001405b4284 mov      dword ptr [rbp + 0x30], eax
00000001405b4287 mov      rax, qword ptr [rdi + 0x18]
00000001405b428b mov      rcx, qword ptr [rdi + 8]
00000001405b428f mov      rax, qword ptr [rax + 0x118]
00000001405b4296 call     qword ptr [rip + 0xd005c]
00000001405b429c mov      rax, qword ptr [rsi + 0x28]
00000001405b42a0 mov      edx, r14d
00000001405b42a3 mov      r8d, dword ptr [rbp + 0x30]
00000001405b42a7 mov      rcx, rdi
00000001405b42aa call     qword ptr [rip + 0xd0048]
00000001405b42b0 mov      rax, qword ptr [rsi]
00000001405b42b3 mov      ebx, 0x58
00000001405b42b8 mov      edx, ebx
00000001405b42ba mov      rcx, rdi
00000001405b42bd call     qword ptr [rip + 0xd0035]
00000001405b42c3 mov      rax, qword ptr [rdi + 0x18]
00000001405b42c7 lea      r8, [rip + 0xc9d32]
00000001405b42ce mov      rcx, qword ptr [rdi + 8]
00000001405b42d2 mov      r9d, 0x18600058
00000001405b42d8 mov      edx, r13d
00000001405b42db mov      rax, qword ptr [rax + 0x118]
00000001405b42e2 call     qword ptr [rip + 0xd0010]
00000001405b42e8 mov      rax, qword ptr [rsi + 8]
00000001405b42ec mov      r8b, 0x83
00000001405b42ef mov      edx, ebx
00000001405b42f1 mov      rcx, rdi
00000001405b42f4 call     qword ptr [rip + 0xcfffe]
00000001405b42fa mov      rax, qword ptr [rsi]
00000001405b42fd mov      r14d, 0x9438
00000001405b4303 mov      edx, r14d
00000001405b4306 mov      rcx, rdi
00000001405b4309 call     qword ptr [rip + 0xcffe9]
00000001405b430f mov      rcx, qword ptr [rdi + 8]
00000001405b4313 lea      r8, [rip + 0xc9f56]
00000001405b431a mov      bl, al
00000001405b431c mov      r9d, 0x18609438
00000001405b4322 mov      rax, qword ptr [rdi + 0x18]
00000001405b4326 and      bl, 3
00000001405b4329 mov      edx, r13d
00000001405b432c or       bl, 0x14
00000001405b432f mov      rax, qword ptr [rax + 0x118]
00000001405b4336 call     qword ptr [rip + 0xcffbc]
00000001405b433c mov      rax, qword ptr [rsi + 8]
00000001405b4340 mov      r8b, bl
00000001405b4343 mov      edx, r14d
00000001405b4346 mov      rcx, rdi
00000001405b4349 call     qword ptr [rip + 0xcffa9]
00000001405b434f mov      rax, qword ptr [rdi + 0x18]
00000001405b4353 lea      r8, [rip + 0xc9f46]
00000001405b435a mov      rcx, qword ptr [rdi + 8]
00000001405b435e mov      edx, r13d
00000001405b4361 mov      rax, qword ptr [rax + 0x118]
00000001405b4368 call     qword ptr [rip + 0xcff8a]
00000001405b436e lea      rdx, [rip + 0x71df53]
00000001405b4375 jmp      0x1405bd0a2
00000001405b437a mov      rax, qword ptr [rdi + 0x18]
00000001405b437e lea      r8, [rip + 0xc9e2b]
00000001405b4385 mov      rcx, qword ptr [rdi + 8]
00000001405b4389 mov      edx, r13d
00000001405b438c mov      rax, qword ptr [rax + 0x118]
00000001405b4393 call     qword ptr [rip + 0xcff5f]
00000001405b4399 mov      rax, qword ptr [rsi + 0x20]
00000001405b439d mov      r14d, 0xf4
00000001405b43a3 mov      edx, r14d
00000001405b43a6 mov      rcx, rdi
00000001405b43a9 call     qword ptr [rip + 0xcff49]
00000001405b43af mov      r9d, 0x186000f4
00000001405b43b5 lea      r8, [rip + 0xb3e14]
00000001405b43bc btr      eax, 0x11
00000001405b43c0 mov      edx, r13d
00000001405b43c3 bts      eax, 0x10
00000001405b43c7 mov      dword ptr [rbp + 0x30], eax
00000001405b43ca mov      rax, qword ptr [rdi + 0x18]
00000001405b43ce mov      rcx, qword ptr [rdi + 8]
00000001405b43d2 mov      rax, qword ptr [rax + 0x118]
00000001405b43d9 call     qword ptr [rip + 0xcff19]
00000001405b43df mov      rax, qword ptr [rsi + 0x28]
00000001405b43e3 mov      edx, r14d
00000001405b43e6 mov      r8d, dword ptr [rbp + 0x30]
00000001405b43ea mov      rcx, rdi
00000001405b43ed call     qword ptr [rip + 0xcff05]
00000001405b43f3 mov      rax, qword ptr [rsi]
00000001405b43f6 mov      ebx, 0x58
00000001405b43fb mov      edx, ebx
00000001405b43fd mov      rcx, rdi
00000001405b4400 call     qword ptr [rip + 0xcfef2]
00000001405b4406 mov      rax, qword ptr [rdi + 0x18]
00000001405b440a lea      r8, [rip + 0xc9bef]
00000001405b4411 mov      rcx, qword ptr [rdi + 8]
00000001405b4415 mov      r9d, 0x18600058
00000001405b441b mov      edx, r13d
00000001405b441e mov      rax, qword ptr [rax + 0x118]
00000001405b4425 call     qword ptr [rip + 0xcfecd]
00000001405b442b mov      rax, qword ptr [rsi + 8]
00000001405b442f mov      r8b, 0x83
00000001405b4432 mov      edx, ebx
00000001405b4434 mov      rcx, rdi
00000001405b4437 call     qword ptr [rip + 0xcfebb]
00000001405b443d mov      rax, qword ptr [rsi]
00000001405b4440 mov      r14d, 0x9438
00000001405b4446 mov      edx, r14d
00000001405b4449 mov      rcx, rdi
00000001405b444c call     qword ptr [rip + 0xcfea6]
00000001405b4452 mov      rcx, qword ptr [rdi + 8]
00000001405b4456 lea      r8, [rip + 0xc9d83]
00000001405b445d mov      bl, al
00000001405b445f mov      r9d, 0x18609438
00000001405b4465 mov      rax, qword ptr [rdi + 0x18]
00000001405b4469 and      bl, 3
00000001405b446c mov      edx, r13d
00000001405b446f or       bl, 0x10
00000001405b4472 mov      rax, qword ptr [rax + 0x118]
00000001405b4479 call     qword ptr [rip + 0xcfe79]
00000001405b447f mov      rax, qword ptr [rsi + 8]
00000001405b4483 mov      r8b, bl
00000001405b4486 mov      edx, r14d
00000001405b4489 mov      rcx, rdi
00000001405b448c call     qword ptr [rip + 0xcfe66]
00000001405b4492 mov      rax, qword ptr [rdi + 0x18]
00000001405b4496 lea      r8, [rip + 0xc9d73]
00000001405b449d mov      rcx, qword ptr [rdi + 8]
00000001405b44a1 mov      edx, r13d
00000001405b44a4 mov      rax, qword ptr [rax + 0x118]
00000001405b44ab call     qword ptr [rip + 0xcfe47]
00000001405b44b1 lea      rdx, [rip + 0x71de00]
00000001405b44b8 jmp      0x1405bd0a2
00000001405b44bd mov      rax, qword ptr [rdi + 0x18]
00000001405b44c1 lea      r8, [rip + 0xc9c58]
00000001405b44c8 mov      rcx, qword ptr [rdi + 8]
00000001405b44cc mov      edx, r13d
00000001405b44cf mov      rax, qword ptr [rax + 0x118]
00000001405b44d6 call     qword ptr [rip + 0xcfe1c]
00000001405b44dc mov      rax, qword ptr [rsi + 0x20]
00000001405b44e0 mov      r14d, 0xf4
00000001405b44e6 mov      edx, r14d
00000001405b44e9 mov      rcx, rdi
00000001405b44ec call     qword ptr [rip + 0xcfe06]
00000001405b44f2 mov      r9d, 0x186000f4
00000001405b44f8 lea      r8, [rip + 0xb3cd1]
00000001405b44ff btr      eax, 0x11
00000001405b4503 mov      edx, r13d
00000001405b4506 bts      eax, 0x10
00000001405b450a mov      dword ptr [rbp + 0x30], eax
00000001405b450d mov      rax, qword ptr [rdi + 0x18]
00000001405b4511 mov      rcx, qword ptr [rdi + 8]
00000001405b4515 mov      rax, qword ptr [rax + 0x118]
00000001405b451c call     qword ptr [rip + 0xcfdd6]
00000001405b4522 mov      rax, qword ptr [rsi + 0x28]
00000001405b4526 mov      edx, r14d
00000001405b4529 mov      r8d, dword ptr [rbp + 0x30]
00000001405b452d mov      rcx, rdi
00000001405b4530 call     qword ptr [rip + 0xcfdc2]
00000001405b4536 mov      rax, qword ptr [rsi]
00000001405b4539 mov      ebx, 0x58
00000001405b453e mov      edx, ebx
00000001405b4540 mov      rcx, rdi
00000001405b4543 call     qword ptr [rip + 0xcfdaf]
00000001405b4549 mov      rax, qword ptr [rdi + 0x18]
00000001405b454d lea      r8, [rip + 0xc9aac]
00000001405b4554 mov      rcx, qword ptr [rdi + 8]
00000001405b4558 mov      r9d, 0x18600058
00000001405b455e mov      edx, r13d
00000001405b4561 mov      rax, qword ptr [rax + 0x118]
00000001405b4568 call     qword ptr [rip + 0xcfd8a]
00000001405b456e mov      rax, qword ptr [rsi + 8]
00000001405b4572 mov      r8b, 0x83
00000001405b4575 mov      edx, ebx
00000001405b4577 mov      rcx, rdi
00000001405b457a call     qword ptr [rip + 0xcfd78]
00000001405b4580 mov      rax, qword ptr [rsi]
00000001405b4583 mov      r14d, 0x9438
00000001405b4589 mov      edx, r14d
00000001405b458c mov      rcx, rdi
00000001405b458f call     qword ptr [rip + 0xcfd63]
00000001405b4595 mov      rcx, qword ptr [rdi + 8]
00000001405b4599 lea      r8, [rip + 0xc9bb0]
00000001405b45a0 mov      bl, al
00000001405b45a2 mov      r9d, 0x18609438
00000001405b45a8 mov      rax, qword ptr [rdi + 0x18]
00000001405b45ac and      bl, 3
00000001405b45af mov      edx, r13d
00000001405b45b2 or       bl, 0xc
00000001405b45b5 mov      rax, qword ptr [rax + 0x118]
00000001405b45bc call     qword ptr [rip + 0xcfd36]
00000001405b45c2 mov      rax, qword ptr [rsi + 8]
00000001405b45c6 mov      r8b, bl
00000001405b45c9 mov      edx, r14d
00000001405b45cc mov      rcx, rdi
00000001405b45cf call     qword ptr [rip + 0xcfd23]
00000001405b45d5 mov      rax, qword ptr [rdi + 0x18]
00000001405b45d9 lea      r8, [rip + 0xc9ba0]
00000001405b45e0 mov      rcx, qword ptr [rdi + 8]
00000001405b45e4 mov      edx, r13d
00000001405b45e7 mov      rax, qword ptr [rax + 0x118]
00000001405b45ee call     qword ptr [rip + 0xcfd04]
00000001405b45f4 lea      rdx, [rip + 0x71dcad]
00000001405b45fb jmp      0x1405bd0a2
00000001405b4600 mov      rax, qword ptr [rdi + 0x18]
00000001405b4604 lea      r8, [rip + 0xc9a85]
00000001405b460b mov      rcx, qword ptr [rdi + 8]
00000001405b460f mov      edx, r13d
00000001405b4612 mov      rax, qword ptr [rax + 0x118]
00000001405b4619 call     qword ptr [rip + 0xcfcd9]
00000001405b461f mov      rax, qword ptr [rsi + 0x20]
00000001405b4623 mov      r14d, 0xf4
00000001405b4629 mov      edx, r14d
00000001405b462c mov      rcx, rdi
00000001405b462f call     qword ptr [rip + 0xcfcc3]
00000001405b4635 mov      r9d, 0x186000f4
00000001405b463b lea      r8, [rip + 0xb3b8e]
00000001405b4642 btr      eax, 0x11
00000001405b4646 mov      edx, r13d
00000001405b4649 bts      eax, 0x10
00000001405b464d mov      dword ptr [rbp + 0x30], eax
00000001405b4650 mov      rax, qword ptr [rdi + 0x18]
00000001405b4654 mov      rcx, qword ptr [rdi + 8]
00000001405b4658 mov      rax, qword ptr [rax + 0x118]
00000001405b465f call     qword ptr [rip + 0xcfc93]
00000001405b4665 mov      rax, qword ptr [rsi + 0x28]
00000001405b4669 mov      edx, r14d
00000001405b466c mov      r8d, dword ptr [rbp + 0x30]
00000001405b4670 mov      rcx, rdi
00000001405b4673 call     qword ptr [rip + 0xcfc7f]
00000001405b4679 mov      rax, qword ptr [rsi]
00000001405b467c mov      ebx, 0x58
00000001405b4681 mov      edx, ebx
00000001405b4683 mov      rcx, rdi
00000001405b4686 call     qword ptr [rip + 0xcfc6c]
00000001405b468c mov      rax, qword ptr [rdi + 0x18]
00000001405b4690 lea      r8, [rip + 0xc9969]
00000001405b4697 mov      rcx, qword ptr [rdi + 8]
00000001405b469b mov      r9d, 0x18600058
00000001405b46a1 mov      edx, r13d
00000001405b46a4 mov      rax, qword ptr [rax + 0x118]
00000001405b46ab call     qword ptr [rip + 0xcfc47]
00000001405b46b1 mov      rax, qword ptr [rsi + 8]
00000001405b46b5 mov      r8b, 0x83
00000001405b46b8 mov      edx, ebx
00000001405b46ba mov      rcx, rdi
00000001405b46bd call     qword ptr [rip + 0xcfc35]
00000001405b46c3 mov      rax, qword ptr [rsi]
00000001405b46c6 mov      r14d, 0x9438
00000001405b46cc mov      edx, r14d
00000001405b46cf mov      rcx, rdi
00000001405b46d2 call     qword ptr [rip + 0xcfc20]
00000001405b46d8 mov      rcx, qword ptr [rdi + 8]
00000001405b46dc lea      r8, [rip + 0xc99dd]
00000001405b46e3 mov      bl, al
00000001405b46e5 mov      r9d, 0x18609438
00000001405b46eb mov      rax, qword ptr [rdi + 0x18]
00000001405b46ef and      bl, 3
00000001405b46f2 mov      edx, r13d
00000001405b46f5 or       bl, 8
00000001405b46f8 mov      rax, qword ptr [rax + 0x118]
00000001405b46ff call     qword ptr [rip + 0xcfbf3]
00000001405b4705 mov      rax, qword ptr [rsi + 8]
00000001405b4709 mov      r8b, bl
00000001405b470c mov      edx, r14d
00000001405b470f mov      rcx, rdi
00000001405b4712 call     qword ptr [rip + 0xcfbe0]
00000001405b4718 mov      rax, qword ptr [rdi + 0x18]
00000001405b471c lea      r8, [rip + 0xc99cd]
00000001405b4723 mov      rcx, qword ptr [rdi + 8]
00000001405b4727 mov      edx, r13d
00000001405b472a mov      rax, qword ptr [rax + 0x118]
00000001405b4731 call     qword ptr [rip + 0xcfbc1]
00000001405b4737 lea      rdx, [rip + 0x71db5a]
00000001405b473e jmp      0x1405bd0a2
00000001405b4743 mov      rax, qword ptr [rdi + 0x18]
00000001405b4747 lea      r8, [rip + 0xc9ca2]
00000001405b474e mov      rcx, qword ptr [rdi + 8]
00000001405b4752 mov      edx, r13d
00000001405b4755 mov      rax, qword ptr [rax + 0x118]
00000001405b475c call     qword ptr [rip + 0xcfb96]
00000001405b4762 mov      rax, qword ptr [rsi + 0x20]
00000001405b4766 mov      r14d, 0xf4
00000001405b476c mov      edx, r14d
00000001405b476f mov      rcx, rdi
00000001405b4772 call     qword ptr [rip + 0xcfb80]
00000001405b4778 mov      r9d, 0x186000f4
00000001405b477e lea      r8, [rip + 0xb3a4b]
00000001405b4785 btr      eax, 0x11
00000001405b4789 mov      edx, r13d
00000001405b478c bts      eax, 0x10
00000001405b4790 mov      dword ptr [rbp + 0x30], eax
00000001405b4793 mov      rax, qword ptr [rdi + 0x18]
00000001405b4797 mov      rcx, qword ptr [rdi + 8]
00000001405b479b mov      rax, qword ptr [rax + 0x118]
00000001405b47a2 call     qword ptr [rip + 0xcfb50]
00000001405b47a8 mov      rax, qword ptr [rsi + 0x28]
00000001405b47ac mov      edx, r14d
00000001405b47af mov      r8d, dword ptr [rbp + 0x30]
00000001405b47b3 mov      rcx, rdi
00000001405b47b6 call     qword ptr [rip + 0xcfb3c]
00000001405b47bc mov      rax, qword ptr [rsi]
00000001405b47bf mov      ebx, 0x58
00000001405b47c4 mov      edx, ebx
00000001405b47c6 mov      rcx, rdi
00000001405b47c9 call     qword ptr [rip + 0xcfb29]
00000001405b47cf mov      rax, qword ptr [rdi + 0x18]
00000001405b47d3 lea      r8, [rip + 0xc9826]
00000001405b47da mov      rcx, qword ptr [rdi + 8]
00000001405b47de mov      r9d, 0x18600058
00000001405b47e4 mov      edx, r13d
00000001405b47e7 mov      rax, qword ptr [rax + 0x118]
00000001405b47ee call     qword ptr [rip + 0xcfb04]
00000001405b47f4 mov      rax, qword ptr [rsi + 8]
00000001405b47f8 mov      r8b, 0x83
00000001405b47fb mov      edx, ebx
00000001405b47fd mov      rcx, rdi
00000001405b4800 call     qword ptr [rip + 0xcfaf2]
00000001405b4806 mov      rax, qword ptr [rsi]
00000001405b4809 mov      r14d, 0x9438
00000001405b480f mov      edx, r14d
00000001405b4812 mov      rcx, rdi
00000001405b4815 call     qword ptr [rip + 0xcfadd]
00000001405b481b mov      rcx, qword ptr [rdi + 8]
00000001405b481f lea      r8, [rip + 0xc9bfa]
00000001405b4826 mov      bl, al
00000001405b4828 mov      r9d, 0x18609438
00000001405b482e mov      rax, qword ptr [rdi + 0x18]
00000001405b4832 and      bl, 3
00000001405b4835 mov      edx, r13d
00000001405b4838 or       bl, 0x20
00000001405b483b mov      rax, qword ptr [rax + 0x118]
00000001405b4842 call     qword ptr [rip + 0xcfab0]
00000001405b4848 mov      rax, qword ptr [rsi + 8]
00000001405b484c mov      r8b, bl
00000001405b484f mov      edx, r14d
00000001405b4852 mov      rcx, rdi
00000001405b4855 call     qword ptr [rip + 0xcfa9d]
00000001405b485b mov      rax, qword ptr [rdi + 0x18]
00000001405b485f lea      r8, [rip + 0xc9bea]
00000001405b4866 mov      rcx, qword ptr [rdi + 8]
00000001405b486a mov      edx, r13d
00000001405b486d mov      rax, qword ptr [rax + 0x118]
00000001405b4874 call     qword ptr [rip + 0xcfa7e]
00000001405b487a lea      rdx, [rip + 0x71da77]
00000001405b4881 jmp      0x1405bd0a2
00000001405b4886 sub      ebx, 0x64
00000001405b4889 je       0x1405b4beb
00000001405b488f sub      ebx, r13d
00000001405b4892 je       0x1405b4b1d
00000001405b4898 sub      ebx, r13d
00000001405b489b je       0x1405b4a4f
00000001405b48a1 sub      ebx, r13d
00000001405b48a4 je       0x1405b4981
00000001405b48aa cmp      ebx, r13d
00000001405b48ad jne      0x1405bca8d
00000001405b48b3 mov      rax, qword ptr [rdi + 0x18]
00000001405b48b7 lea      r8, [rip + 0xb63d2]
00000001405b48be mov      rcx, qword ptr [rdi + 8]
00000001405b48c2 mov      edx, r13d
00000001405b48c5 mov      rax, qword ptr [rax + 0x118]
00000001405b48cc call     qword ptr [rip + 0xcfa26]
00000001405b48d2 mov      rax, qword ptr [rsi + 0x20]
00000001405b48d6 mov      ebx, 0x4200
00000001405b48db mov      edx, ebx
00000001405b48dd mov      rcx, rdi
00000001405b48e0 call     qword ptr [rip + 0xcfa12]
00000001405b48e6 mov      r14d, 0x18604200
00000001405b48ec lea      r8, [rip + 0xc9bbd]
00000001405b48f3 btr      eax, 0x10
00000001405b48f7 mov      r9d, r14d
00000001405b48fa mov      dword ptr [rbp + 0x30], eax
00000001405b48fd mov      edx, r13d
00000001405b4900 mov      rax, qword ptr [rdi + 0x18]
00000001405b4904 mov      rcx, qword ptr [rdi + 8]
00000001405b4908 mov      rax, qword ptr [rax + 0x118]
00000001405b490f call     qword ptr [rip + 0xcf9e3]
00000001405b4915 mov      eax, dword ptr [rbp + 0x30]
00000001405b4918 lea      r8, [rip + 0xc9c21]
00000001405b491f and      eax, 0xffffffe1
00000001405b4922 mov      r9d, r14d
00000001405b4925 or       eax, r13d
00000001405b4928 mov      edx, r13d
00000001405b492b mov      dword ptr [rbp + 0x30], eax
00000001405b492e mov      rax, qword ptr [rdi + 0x18]
00000001405b4932 mov      rcx, qword ptr [rdi + 8]
00000001405b4936 mov      rax, qword ptr [rax + 0x118]
00000001405b493d call     qword ptr [rip + 0xcf9b5]
00000001405b4943 mov      rax, qword ptr [rsi + 0x28]
00000001405b4947 mov      edx, ebx
00000001405b4949 mov      r8d, dword ptr [rbp + 0x30]
00000001405b494d mov      rcx, rdi
00000001405b4950 call     qword ptr [rip + 0xcf9a2]
00000001405b4956 mov      rax, qword ptr [rdi + 0x18]
00000001405b495a lea      r8, [rip + 0xb635f]
00000001405b4961 mov      rcx, qword ptr [rdi + 8]
00000001405b4965 mov      edx, r13d
00000001405b4968 mov      rax, qword ptr [rax + 0x118]
00000001405b496f call     qword ptr [rip + 0xcf983]
00000001405b4975 lea      rdx, [rip + 0x71d9cc]
00000001405b497c jmp      0x1405bd0a2
00000001405b4981 mov      rax, qword ptr [rdi + 0x18]
00000001405b4985 lea      r8, [rip + 0xb62a4]
00000001405b498c mov      rcx, qword ptr [rdi + 8]
00000001405b4990 mov      edx, r13d
00000001405b4993 mov      rax, qword ptr [rax + 0x118]
00000001405b499a call     qword ptr [rip + 0xcf958]
00000001405b49a0 mov      rax, qword ptr [rsi + 0x20]
00000001405b49a4 mov      ebx, 0x4200
00000001405b49a9 mov      edx, ebx
00000001405b49ab mov      rcx, rdi
00000001405b49ae call     qword ptr [rip + 0xcf944]
00000001405b49b4 mov      r14d, 0x18604200
00000001405b49ba lea      r8, [rip + 0xc9aef]
00000001405b49c1 btr      eax, 0x10
00000001405b49c5 mov      r9d, r14d
00000001405b49c8 mov      dword ptr [rbp + 0x30], eax
00000001405b49cb mov      edx, r13d
00000001405b49ce mov      rax, qword ptr [rdi + 0x18]
00000001405b49d2 mov      rcx, qword ptr [rdi + 8]
00000001405b49d6 mov      rax, qword ptr [rax + 0x118]
00000001405b49dd call     qword ptr [rip + 0xcf915]
00000001405b49e3 mov      eax, dword ptr [rbp + 0x30]
00000001405b49e6 lea      r8, [rip + 0xc9b53]
00000001405b49ed and      eax, 0xffffffe1
00000001405b49f0 mov      r9d, r14d
00000001405b49f3 or       eax, r13d
00000001405b49f6 mov      edx, r13d
00000001405b49f9 mov      dword ptr [rbp + 0x30], eax
00000001405b49fc mov      rax, qword ptr [rdi + 0x18]
00000001405b4a00 mov      rcx, qword ptr [rdi + 8]
00000001405b4a04 mov      rax, qword ptr [rax + 0x118]
00000001405b4a0b call     qword ptr [rip + 0xcf8e7]
00000001405b4a11 mov      rax, qword ptr [rsi + 0x28]
00000001405b4a15 mov      edx, ebx
00000001405b4a17 mov      r8d, dword ptr [rbp + 0x30]
00000001405b4a1b mov      rcx, rdi
00000001405b4a1e call     qword ptr [rip + 0xcf8d4]
00000001405b4a24 mov      rax, qword ptr [rdi + 0x18]
00000001405b4a28 lea      r8, [rip + 0xb6231]
00000001405b4a2f mov      rcx, qword ptr [rdi + 8]
00000001405b4a33 mov      edx, r13d
00000001405b4a36 mov      rax, qword ptr [rax + 0x118]
00000001405b4a3d call     qword ptr [rip + 0xcf8b5]
00000001405b4a43 lea      rdx, [rip + 0x71d8ee]
00000001405b4a4a jmp      0x1405bd0a2
00000001405b4a4f mov      rax, qword ptr [rdi + 0x18]
00000001405b4a53 lea      r8, [rip + 0xb6176]
00000001405b4a5a mov      rcx, qword ptr [rdi + 8]
00000001405b4a5e mov      edx, r13d
00000001405b4a61 mov      rax, qword ptr [rax + 0x118]
00000001405b4a68 call     qword ptr [rip + 0xcf88a]
00000001405b4a6e mov      rax, qword ptr [rsi + 0x20]
00000001405b4a72 mov      ebx, 0x4200
00000001405b4a77 mov      edx, ebx
00000001405b4a79 mov      rcx, rdi
00000001405b4a7c call     qword ptr [rip + 0xcf876]
00000001405b4a82 mov      r14d, 0x18604200
00000001405b4a88 lea      r8, [rip + 0xc9a21]
00000001405b4a8f btr      eax, 0x10
00000001405b4a93 mov      r9d, r14d
00000001405b4a96 mov      dword ptr [rbp + 0x30], eax
00000001405b4a99 mov      edx, r13d
00000001405b4a9c mov      rax, qword ptr [rdi + 0x18]
00000001405b4aa0 mov      rcx, qword ptr [rdi + 8]
00000001405b4aa4 mov      rax, qword ptr [rax + 0x118]
00000001405b4aab call     qword ptr [rip + 0xcf847]
00000001405b4ab1 mov      eax, dword ptr [rbp + 0x30]
00000001405b4ab4 lea      r8, [rip + 0xc9a85]
00000001405b4abb and      eax, 0xffffffe1
00000001405b4abe mov      r9d, r14d
00000001405b4ac1 or       eax, r13d
00000001405b4ac4 mov      edx, r13d
00000001405b4ac7 mov      dword ptr [rbp + 0x30], eax
00000001405b4aca mov      rax, qword ptr [rdi + 0x18]
00000001405b4ace mov      rcx, qword ptr [rdi + 8]
00000001405b4ad2 mov      rax, qword ptr [rax + 0x118]
00000001405b4ad9 call     qword ptr [rip + 0xcf819]
00000001405b4adf mov      rax, qword ptr [rsi + 0x28]
00000001405b4ae3 mov      edx, ebx
00000001405b4ae5 mov      r8d, dword ptr [rbp + 0x30]
00000001405b4ae9 mov      rcx, rdi
00000001405b4aec call     qword ptr [rip + 0xcf806]
00000001405b4af2 mov      rax, qword ptr [rdi + 0x18]
00000001405b4af6 lea      r8, [rip + 0xb6103]
00000001405b4afd mov      rcx, qword ptr [rdi + 8]
00000001405b4b01 mov      edx, r13d
00000001405b4b04 mov      rax, qword ptr [rax + 0x118]
00000001405b4b0b call     qword ptr [rip + 0xcf7e7]
00000001405b4b11 lea      rdx, [rip + 0x71d810]
00000001405b4b18 jmp      0x1405bd0a2
00000001405b4b1d mov      rax, qword ptr [rdi + 0x18]
00000001405b4b21 lea      r8, [rip + 0xb6018]
00000001405b4b28 mov      rcx, qword ptr [rdi + 8]
00000001405b4b2c mov      edx, r13d
00000001405b4b2f mov      rax, qword ptr [rax + 0x118]
00000001405b4b36 call     qword ptr [rip + 0xcf7bc]
00000001405b4b3c mov      rax, qword ptr [rsi + 0x20]
00000001405b4b40 mov      ebx, 0x4200
00000001405b4b45 mov      edx, ebx
00000001405b4b47 mov      rcx, rdi
00000001405b4b4a call     qword ptr [rip + 0xcf7a8]
00000001405b4b50 mov      r14d, 0x18604200
00000001405b4b56 lea      r8, [rip + 0xc9953]
00000001405b4b5d btr      eax, 0x10
00000001405b4b61 mov      r9d, r14d
00000001405b4b64 mov      dword ptr [rbp + 0x30], eax
00000001405b4b67 mov      edx, r13d
00000001405b4b6a mov      rax, qword ptr [rdi + 0x18]
00000001405b4b6e mov      rcx, qword ptr [rdi + 8]
00000001405b4b72 mov      rax, qword ptr [rax + 0x118]
00000001405b4b79 call     qword ptr [rip + 0xcf779]
00000001405b4b7f mov      eax, dword ptr [rbp + 0x30]
00000001405b4b82 lea      r8, [rip + 0xc99b7]
00000001405b4b89 and      eax, 0xffffffe1
00000001405b4b8c mov      r9d, r14d
00000001405b4b8f or       eax, r13d
00000001405b4b92 mov      edx, r13d
00000001405b4b95 mov      dword ptr [rbp + 0x30], eax
00000001405b4b98 mov      rax, qword ptr [rdi + 0x18]
00000001405b4b9c mov      rcx, qword ptr [rdi + 8]
00000001405b4ba0 mov      rax, qword ptr [rax + 0x118]
00000001405b4ba7 call     qword ptr [rip + 0xcf74b]
00000001405b4bad mov      rax, qword ptr [rsi + 0x28]
00000001405b4bb1 mov      edx, ebx
00000001405b4bb3 mov      r8d, dword ptr [rbp + 0x30]
00000001405b4bb7 mov      rcx, rdi
00000001405b4bba call     qword ptr [rip + 0xcf738]
00000001405b4bc0 mov      rax, qword ptr [rdi + 0x18]
00000001405b4bc4 lea      r8, [rip + 0xb5fd5]
00000001405b4bcb mov      rcx, qword ptr [rdi + 8]
00000001405b4bcf mov      edx, r13d
00000001405b4bd2 mov      rax, qword ptr [rax + 0x118]
00000001405b4bd9 call     qword ptr [rip + 0xcf719]
00000001405b4bdf lea      rdx, [rip + 0x71d732]
00000001405b4be6 jmp      0x1405bd0a2
00000001405b4beb mov      rax, qword ptr [rdi + 0x18]
00000001405b4bef lea      r8, [rip + 0xc988a]
00000001405b4bf6 mov      rcx, qword ptr [rdi + 8]
00000001405b4bfa mov      edx, r13d
00000001405b4bfd mov      rax, qword ptr [rax + 0x118]
00000001405b4c04 call     qword ptr [rip + 0xcf6ee]
00000001405b4c0a mov      rax, qword ptr [rsi + 0x20]
00000001405b4c0e mov      ebx, 0x4200
00000001405b4c13 mov      edx, ebx
00000001405b4c15 mov      rcx, rdi
00000001405b4c18 call     qword ptr [rip + 0xcf6da]
00000001405b4c1e mov      r14d, 0x18604200
00000001405b4c24 lea      r8, [rip + 0xc9885]
00000001405b4c2b btr      eax, 0x10
00000001405b4c2f mov      r9d, r14d
00000001405b4c32 mov      dword ptr [rbp + 0x30], eax
00000001405b4c35 mov      edx, r13d
00000001405b4c38 mov      rax, qword ptr [rdi + 0x18]
00000001405b4c3c mov      rcx, qword ptr [rdi + 8]
00000001405b4c40 mov      rax, qword ptr [rax + 0x118]
00000001405b4c47 call     qword ptr [rip + 0xcf6ab]
00000001405b4c4d and      dword ptr [rbp + 0x30], 0xffffffe0
00000001405b4c51 lea      r8, [rip + 0xc9888]
00000001405b4c58 mov      rax, qword ptr [rdi + 0x18]
00000001405b4c5c mov      r9d, r14d
00000001405b4c5f mov      rcx, qword ptr [rdi + 8]
00000001405b4c63 mov      edx, r13d
00000001405b4c66 mov      rax, qword ptr [rax + 0x118]
00000001405b4c6d call     qword ptr [rip + 0xcf685]
00000001405b4c73 mov      rax, qword ptr [rsi + 0x28]
00000001405b4c77 mov      edx, ebx
00000001405b4c79 mov      r8d, dword ptr [rbp + 0x30]
00000001405b4c7d mov      rcx, rdi
00000001405b4c80 call     qword ptr [rip + 0xcf672]
00000001405b4c86 mov      rax, qword ptr [rdi + 0x18]
00000001405b4c8a lea      r8, [rip + 0xc987f]
00000001405b4c91 mov      rcx, qword ptr [rdi + 8]
00000001405b4c95 mov      edx, r13d
00000001405b4c98 mov      rax, qword ptr [rax + 0x118]
00000001405b4c9f call     qword ptr [rip + 0xcf653]
00000001405b4ca5 lea      rdx, [rip + 0x71d65c]
00000001405b4cac jmp      0x1405bd0a2
00000001405b4cb1 mov      rax, qword ptr [rdi + 0x18]
00000001405b4cb5 lea      r8, [rip + 0xb6034]
00000001405b4cbc mov      rcx, qword ptr [rdi + 8]
00000001405b4cc0 mov      edx, r13d
00000001405b4cc3 mov      rax, qword ptr [rax + 0x118]
00000001405b4cca call     qword ptr [rip + 0xcf628]
00000001405b4cd0 mov      rax, qword ptr [rsi + 0x20]
00000001405b4cd4 mov      ebx, 0x4200
00000001405b4cd9 mov      edx, ebx
00000001405b4cdb mov      rcx, rdi
00000001405b4cde call     qword ptr [rip + 0xcf614]
00000001405b4ce4 mov      r14d, 0x18604200
00000001405b4cea lea      r8, [rip + 0xc97bf]
00000001405b4cf1 btr      eax, 0x10
00000001405b4cf5 mov      r9d, r14d
00000001405b4cf8 mov      dword ptr [rbp + 0x30], eax
00000001405b4cfb mov      edx, r13d
00000001405b4cfe mov      rax, qword ptr [rdi + 0x18]
00000001405b4d02 mov      rcx, qword ptr [rdi + 8]
00000001405b4d06 mov      rax, qword ptr [rax + 0x118]
00000001405b4d0d call     qword ptr [rip + 0xcf5e5]
00000001405b4d13 mov      eax, dword ptr [rbp + 0x30]
00000001405b4d16 lea      r8, [rip + 0xc9853]
00000001405b4d1d and      eax, 0xffffffe2
00000001405b4d20 mov      r9d, r14d
00000001405b4d23 or       eax, 2
00000001405b4d26 mov      edx, r13d
00000001405b4d29 mov      dword ptr [rbp + 0x30], eax
00000001405b4d2c mov      rax, qword ptr [rdi + 0x18]
00000001405b4d30 mov      rcx, qword ptr [rdi + 8]
00000001405b4d34 mov      rax, qword ptr [rax + 0x118]
00000001405b4d3b call     qword ptr [rip + 0xcf5b7]
00000001405b4d41 mov      rax, qword ptr [rsi + 0x28]
00000001405b4d45 mov      edx, ebx
00000001405b4d47 mov      r8d, dword ptr [rbp + 0x30]
00000001405b4d4b mov      rcx, rdi
00000001405b4d4e call     qword ptr [rip + 0xcf5a4]
00000001405b4d54 mov      rax, qword ptr [rdi + 0x18]
00000001405b4d58 lea      r8, [rip + 0xb5ff1]
00000001405b4d5f mov      rcx, qword ptr [rdi + 8]
00000001405b4d63 mov      edx, r13d
00000001405b4d66 mov      rax, qword ptr [rax + 0x118]
00000001405b4d6d call     qword ptr [rip + 0xcf585]
00000001405b4d73 lea      rdx, [rip + 0x71d5de]
00000001405b4d7a jmp      0x1405bd0a2
00000001405b4d7f mov      eax, 0x9e
00000001405b4d84 cmp      ebx, eax
00000001405b4d86 ja       0x1405b82cb
00000001405b4d8c je       0x1405b80f3
00000001405b4d92 mov      eax, 0x84
00000001405b4d97 cmp      ebx, eax
00000001405b4d99 ja       0x1405b66a7
00000001405b4d9f je       0x1405b6588
00000001405b4da5 cmp      ebx, 0x77
00000001405b4da8 ja       0x1405b597c
00000001405b4dae je       0x1405b58ab
00000001405b4db4 cmp      ebx, 0x70
00000001405b4db7 ja       0x1405b539b
00000001405b4dbd je       0x1405b52cd
00000001405b4dc3 sub      ebx, 0x6a
00000001405b4dc6 je       0x1405b51ff
00000001405b4dcc sub      ebx, r13d
00000001405b4dcf je       0x1405b5131
00000001405b4dd5 sub      ebx, r13d
00000001405b4dd8 je       0x1405b5063
00000001405b4dde sub      ebx, r13d
00000001405b4de1 je       0x1405b4f95
00000001405b4de7 sub      ebx, r13d
00000001405b4dea je       0x1405b4ec7
00000001405b4df0 cmp      ebx, r13d
00000001405b4df3 jne      0x1405bca8d
00000001405b4df9 mov      rax, qword ptr [rdi + 0x18]
00000001405b4dfd lea      r8, [rip + 0xb60cc]
00000001405b4e04 mov      rcx, qword ptr [rdi + 8]
00000001405b4e08 mov      edx, r13d
00000001405b4e0b mov      rax, qword ptr [rax + 0x118]
00000001405b4e12 call     qword ptr [rip + 0xcf4e0]
00000001405b4e18 mov      rax, qword ptr [rsi + 0x20]
00000001405b4e1c mov      ebx, 0x4200
00000001405b4e21 mov      edx, ebx
00000001405b4e23 mov      rcx, rdi
00000001405b4e26 call     qword ptr [rip + 0xcf4cc]
00000001405b4e2c mov      r14d, 0x18604200
00000001405b4e32 lea      r8, [rip + 0xc9677]
00000001405b4e39 btr      eax, 0x10
00000001405b4e3d mov      r9d, r14d
00000001405b4e40 mov      dword ptr [rbp + 0x30], eax
00000001405b4e43 mov      edx, r13d
00000001405b4e46 mov      rax, qword ptr [rdi + 0x18]
00000001405b4e4a mov      rcx, qword ptr [rdi + 8]
00000001405b4e4e mov      rax, qword ptr [rax + 0x118]
00000001405b4e55 call     qword ptr [rip + 0xcf49d]
00000001405b4e5b mov      eax, dword ptr [rbp + 0x30]
00000001405b4e5e lea      r8, [rip + 0xc982b]
00000001405b4e65 and      eax, 0xffffffe4
00000001405b4e68 mov      r9d, r14d
00000001405b4e6b or       eax, 4
00000001405b4e6e mov      edx, r13d
00000001405b4e71 mov      dword ptr [rbp + 0x30], eax
00000001405b4e74 mov      rax, qword ptr [rdi + 0x18]
00000001405b4e78 mov      rcx, qword ptr [rdi + 8]
00000001405b4e7c mov      rax, qword ptr [rax + 0x118]
00000001405b4e83 call     qword ptr [rip + 0xcf46f]
00000001405b4e89 mov      rax, qword ptr [rsi + 0x28]
00000001405b4e8d mov      edx, ebx
00000001405b4e8f mov      r8d, dword ptr [rbp + 0x30]
00000001405b4e93 mov      rcx, rdi
00000001405b4e96 call     qword ptr [rip + 0xcf45c]
00000001405b4e9c mov      rax, qword ptr [rdi + 0x18]
00000001405b4ea0 lea      r8, [rip + 0xb6089]
00000001405b4ea7 mov      rcx, qword ptr [rdi + 8]
00000001405b4eab mov      edx, r13d
00000001405b4eae mov      rax, qword ptr [rax + 0x118]
00000001405b4eb5 call     qword ptr [rip + 0xcf43d]
00000001405b4ebb lea      rdx, [rip + 0x71d4f6]
00000001405b4ec2 jmp      0x1405bd0a2
00000001405b4ec7 mov      rax, qword ptr [rdi + 0x18]
00000001405b4ecb lea      r8, [rip + 0xb5f9e]
00000001405b4ed2 mov      rcx, qword ptr [rdi + 8]
00000001405b4ed6 mov      edx, r13d
00000001405b4ed9 mov      rax, qword ptr [rax + 0x118]
00000001405b4ee0 call     qword ptr [rip + 0xcf412]
00000001405b4ee6 mov      rax, qword ptr [rsi + 0x20]
00000001405b4eea mov      ebx, 0x4200
00000001405b4eef mov      edx, ebx
00000001405b4ef1 mov      rcx, rdi
00000001405b4ef4 call     qword ptr [rip + 0xcf3fe]
00000001405b4efa mov      r14d, 0x18604200
00000001405b4f00 lea      r8, [rip + 0xc95a9]
00000001405b4f07 btr      eax, 0x10
00000001405b4f0b mov      r9d, r14d
00000001405b4f0e mov      dword ptr [rbp + 0x30], eax
00000001405b4f11 mov      edx, r13d
00000001405b4f14 mov      rax, qword ptr [rdi + 0x18]
00000001405b4f18 mov      rcx, qword ptr [rdi + 8]
00000001405b4f1c mov      rax, qword ptr [rax + 0x118]
00000001405b4f23 call     qword ptr [rip + 0xcf3cf]
00000001405b4f29 mov      eax, dword ptr [rbp + 0x30]
00000001405b4f2c lea      r8, [rip + 0xc972d]
00000001405b4f33 and      eax, 0xffffffe3
00000001405b4f36 mov      r9d, r14d
00000001405b4f39 or       eax, 3
00000001405b4f3c mov      edx, r13d
00000001405b4f3f mov      dword ptr [rbp + 0x30], eax
00000001405b4f42 mov      rax, qword ptr [rdi + 0x18]
00000001405b4f46 mov      rcx, qword ptr [rdi + 8]
00000001405b4f4a mov      rax, qword ptr [rax + 0x118]
00000001405b4f51 call     qword ptr [rip + 0xcf3a1]
00000001405b4f57 mov      rax, qword ptr [rsi + 0x28]
00000001405b4f5b mov      edx, ebx
00000001405b4f5d mov      r8d, dword ptr [rbp + 0x30]
00000001405b4f61 mov      rcx, rdi
00000001405b4f64 call     qword ptr [rip + 0xcf38e]
00000001405b4f6a mov      rax, qword ptr [rdi + 0x18]
00000001405b4f6e lea      r8, [rip + 0xb5f2b]
00000001405b4f75 mov      rcx, qword ptr [rdi + 8]
00000001405b4f79 mov      edx, r13d
00000001405b4f7c mov      rax, qword ptr [rax + 0x118]
00000001405b4f83 call     qword ptr [rip + 0xcf36f]
00000001405b4f89 lea      rdx, [rip + 0x71d418]
00000001405b4f90 jmp      0x1405bd0a2
00000001405b4f95 mov      rax, qword ptr [rdi + 0x18]
00000001405b4f99 lea      r8, [rip + 0xb5e40]
00000001405b4fa0 mov      rcx, qword ptr [rdi + 8]
00000001405b4fa4 mov      edx, r13d
00000001405b4fa7 mov      rax, qword ptr [rax + 0x118]
00000001405b4fae call     qword ptr [rip + 0xcf344]
00000001405b4fb4 mov      rax, qword ptr [rsi + 0x20]
00000001405b4fb8 mov      ebx, 0x4200
00000001405b4fbd mov      edx, ebx
00000001405b4fbf mov      rcx, rdi
00000001405b4fc2 call     qword ptr [rip + 0xcf330]
00000001405b4fc8 mov      r14d, 0x18604200
00000001405b4fce lea      r8, [rip + 0xc94db]
00000001405b4fd5 btr      eax, 0x10
00000001405b4fd9 mov      r9d, r14d
00000001405b4fdc mov      dword ptr [rbp + 0x30], eax
00000001405b4fdf mov      edx, r13d
00000001405b4fe2 mov      rax, qword ptr [rdi + 0x18]
00000001405b4fe6 mov      rcx, qword ptr [rdi + 8]
00000001405b4fea mov      rax, qword ptr [rax + 0x118]
00000001405b4ff1 call     qword ptr [rip + 0xcf301]
00000001405b4ff7 mov      eax, dword ptr [rbp + 0x30]
00000001405b4ffa lea      r8, [rip + 0xc965f]
00000001405b5001 and      eax, 0xffffffe3
00000001405b5004 mov      r9d, r14d
00000001405b5007 or       eax, 3
00000001405b500a mov      edx, r13d
00000001405b500d mov      dword ptr [rbp + 0x30], eax
00000001405b5010 mov      rax, qword ptr [rdi + 0x18]
00000001405b5014 mov      rcx, qword ptr [rdi + 8]
00000001405b5018 mov      rax, qword ptr [rax + 0x118]
00000001405b501f call     qword ptr [rip + 0xcf2d3]
00000001405b5025 mov      rax, qword ptr [rsi + 0x28]
00000001405b5029 mov      edx, ebx
00000001405b502b mov      r8d, dword ptr [rbp + 0x30]
00000001405b502f mov      rcx, rdi
00000001405b5032 call     qword ptr [rip + 0xcf2c0]
00000001405b5038 mov      rax, qword ptr [rdi + 0x18]
00000001405b503c lea      r8, [rip + 0xb5dfd]
00000001405b5043 mov      rcx, qword ptr [rdi + 8]
00000001405b5047 mov      edx, r13d
00000001405b504a mov      rax, qword ptr [rax + 0x118]
00000001405b5051 call     qword ptr [rip + 0xcf2a1]
00000001405b5057 lea      rdx, [rip + 0x71d33a]
00000001405b505e jmp      0x1405bd0a2
00000001405b5063 mov      rax, qword ptr [rdi + 0x18]
00000001405b5067 lea      r8, [rip + 0xc9592]
00000001405b506e mov      rcx, qword ptr [rdi + 8]
00000001405b5072 mov      edx, r13d
00000001405b5075 mov      rax, qword ptr [rax + 0x118]
00000001405b507c call     qword ptr [rip + 0xcf276]
00000001405b5082 mov      rax, qword ptr [rsi + 0x20]
00000001405b5086 mov      ebx, 0x4200
00000001405b508b mov      edx, ebx
00000001405b508d mov      rcx, rdi
00000001405b5090 call     qword ptr [rip + 0xcf262]
00000001405b5096 mov      r14d, 0x18604200
00000001405b509c lea      r8, [rip + 0xc940d]
00000001405b50a3 btr      eax, 0x10
00000001405b50a7 mov      r9d, r14d
00000001405b50aa mov      dword ptr [rbp + 0x30], eax
00000001405b50ad mov      edx, r13d
00000001405b50b0 mov      rax, qword ptr [rdi + 0x18]
00000001405b50b4 mov      rcx, qword ptr [rdi + 8]
00000001405b50b8 mov      rax, qword ptr [rax + 0x118]
00000001405b50bf call     qword ptr [rip + 0xcf233]
00000001405b50c5 mov      eax, dword ptr [rbp + 0x30]
00000001405b50c8 lea      r8, [rip + 0xc94a1]
00000001405b50cf and      eax, 0xffffffe2
00000001405b50d2 mov      r9d, r14d
00000001405b50d5 or       eax, 2
00000001405b50d8 mov      edx, r13d
00000001405b50db mov      dword ptr [rbp + 0x30], eax
00000001405b50de mov      rax, qword ptr [rdi + 0x18]
00000001405b50e2 mov      rcx, qword ptr [rdi + 8]
00000001405b50e6 mov      rax, qword ptr [rax + 0x118]
00000001405b50ed call     qword ptr [rip + 0xcf205]
00000001405b50f3 mov      rax, qword ptr [rsi + 0x28]
00000001405b50f7 mov      edx, ebx
00000001405b50f9 mov      r8d, dword ptr [rbp + 0x30]
00000001405b50fd mov      rcx, rdi
00000001405b5100 call     qword ptr [rip + 0xcf1f2]
00000001405b5106 mov      rax, qword ptr [rdi + 0x18]
00000001405b510a lea      r8, [rip + 0xc951f]
00000001405b5111 mov      rcx, qword ptr [rdi + 8]
00000001405b5115 mov      edx, r13d
00000001405b5118 mov      rax, qword ptr [rax + 0x118]
00000001405b511f call     qword ptr [rip + 0xcf1d3]
00000001405b5125 lea      rdx, [rip + 0x71d25c]
00000001405b512c jmp      0x1405bd0a2
00000001405b5131 mov      rax, qword ptr [rdi + 0x18]
00000001405b5135 lea      r8, [rip + 0xc9464]
00000001405b513c mov      rcx, qword ptr [rdi + 8]
00000001405b5140 mov      edx, r13d
00000001405b5143 mov      rax, qword ptr [rax + 0x118]
00000001405b514a call     qword ptr [rip + 0xcf1a8]
00000001405b5150 mov      rax, qword ptr [rsi + 0x20]
00000001405b5154 mov      ebx, 0x4200
00000001405b5159 mov      edx, ebx
00000001405b515b mov      rcx, rdi
00000001405b515e call     qword ptr [rip + 0xcf194]
00000001405b5164 mov      r14d, 0x18604200
00000001405b516a lea      r8, [rip + 0xc933f]
00000001405b5171 btr      eax, 0x10
00000001405b5175 mov      r9d, r14d
00000001405b5178 mov      dword ptr [rbp + 0x30], eax
00000001405b517b mov      edx, r13d
00000001405b517e mov      rax, qword ptr [rdi + 0x18]
00000001405b5182 mov      rcx, qword ptr [rdi + 8]
00000001405b5186 mov      rax, qword ptr [rax + 0x118]
00000001405b518d call     qword ptr [rip + 0xcf165]
00000001405b5193 mov      eax, dword ptr [rbp + 0x30]
00000001405b5196 lea      r8, [rip + 0xc93d3]
00000001405b519d and      eax, 0xffffffe2
00000001405b51a0 mov      r9d, r14d
00000001405b51a3 or       eax, 2
00000001405b51a6 mov      edx, r13d
00000001405b51a9 mov      dword ptr [rbp + 0x30], eax
00000001405b51ac mov      rax, qword ptr [rdi + 0x18]
00000001405b51b0 mov      rcx, qword ptr [rdi + 8]
00000001405b51b4 mov      rax, qword ptr [rax + 0x118]
00000001405b51bb call     qword ptr [rip + 0xcf137]
00000001405b51c1 mov      rax, qword ptr [rsi + 0x28]
00000001405b51c5 mov      edx, ebx
00000001405b51c7 mov      r8d, dword ptr [rbp + 0x30]
00000001405b51cb mov      rcx, rdi
00000001405b51ce call     qword ptr [rip + 0xcf124]
00000001405b51d4 mov      rax, qword ptr [rdi + 0x18]
00000001405b51d8 lea      r8, [rip + 0xc93f1]
00000001405b51df mov      rcx, qword ptr [rdi + 8]
00000001405b51e3 mov      edx, r13d
00000001405b51e6 mov      rax, qword ptr [rax + 0x118]
00000001405b51ed call     qword ptr [rip + 0xcf105]
00000001405b51f3 lea      rdx, [rip + 0x71d17e]
00000001405b51fa jmp      0x1405bd0a2
00000001405b51ff mov      rax, qword ptr [rdi + 0x18]
00000001405b5203 lea      r8, [rip + 0xb5b76]
00000001405b520a mov      rcx, qword ptr [rdi + 8]
00000001405b520e mov      edx, r13d
00000001405b5211 mov      rax, qword ptr [rax + 0x118]
00000001405b5218 call     qword ptr [rip + 0xcf0da]
00000001405b521e mov      rax, qword ptr [rsi + 0x20]
00000001405b5222 mov      ebx, 0x4200
00000001405b5227 mov      edx, ebx
00000001405b5229 mov      rcx, rdi
00000001405b522c call     qword ptr [rip + 0xcf0c6]
00000001405b5232 mov      r14d, 0x18604200
00000001405b5238 lea      r8, [rip + 0xc9271]
00000001405b523f btr      eax, 0x10
00000001405b5243 mov      r9d, r14d
00000001405b5246 mov      dword ptr [rbp + 0x30], eax
00000001405b5249 mov      edx, r13d
00000001405b524c mov      rax, qword ptr [rdi + 0x18]
00000001405b5250 mov      rcx, qword ptr [rdi + 8]
00000001405b5254 mov      rax, qword ptr [rax + 0x118]
00000001405b525b call     qword ptr [rip + 0xcf097]
00000001405b5261 mov      eax, dword ptr [rbp + 0x30]
00000001405b5264 lea      r8, [rip + 0xc9305]
00000001405b526b and      eax, 0xffffffe2
00000001405b526e mov      r9d, r14d
00000001405b5271 or       eax, 2
00000001405b5274 mov      edx, r13d
00000001405b5277 mov      dword ptr [rbp + 0x30], eax
00000001405b527a mov      rax, qword ptr [rdi + 0x18]
00000001405b527e mov      rcx, qword ptr [rdi + 8]
00000001405b5282 mov      rax, qword ptr [rax + 0x118]
00000001405b5289 call     qword ptr [rip + 0xcf069]
00000001405b528f mov      rax, qword ptr [rsi + 0x28]
00000001405b5293 mov      edx, ebx
00000001405b5295 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5299 mov      rcx, rdi
00000001405b529c call     qword ptr [rip + 0xcf056]
00000001405b52a2 mov      rax, qword ptr [rdi + 0x18]
00000001405b52a6 lea      r8, [rip + 0xb5b03]
00000001405b52ad mov      rcx, qword ptr [rdi + 8]
00000001405b52b1 mov      edx, r13d
00000001405b52b4 mov      rax, qword ptr [rax + 0x118]
00000001405b52bb call     qword ptr [rip + 0xcf037]
00000001405b52c1 lea      rdx, [rip + 0x71d0a0]
00000001405b52c8 jmp      0x1405bd0a2
00000001405b52cd mov      rax, qword ptr [rdi + 0x18]
00000001405b52d1 lea      r8, [rip + 0xc93e8]
00000001405b52d8 mov      rcx, qword ptr [rdi + 8]
00000001405b52dc mov      edx, r13d
00000001405b52df mov      rax, qword ptr [rax + 0x118]
00000001405b52e6 call     qword ptr [rip + 0xcf00c]
00000001405b52ec mov      rax, qword ptr [rsi + 0x20]
00000001405b52f0 mov      ebx, 0x4200
00000001405b52f5 mov      edx, ebx
00000001405b52f7 mov      rcx, rdi
00000001405b52fa call     qword ptr [rip + 0xceff8]
00000001405b5300 mov      r14d, 0x18604200
00000001405b5306 lea      r8, [rip + 0xc91a3]
00000001405b530d btr      eax, 0x10
00000001405b5311 mov      r9d, r14d
00000001405b5314 mov      dword ptr [rbp + 0x30], eax
00000001405b5317 mov      edx, r13d
00000001405b531a mov      rax, qword ptr [rdi + 0x18]
00000001405b531e mov      rcx, qword ptr [rdi + 8]
00000001405b5322 mov      rax, qword ptr [rax + 0x118]
00000001405b5329 call     qword ptr [rip + 0xcefc9]
00000001405b532f mov      eax, dword ptr [rbp + 0x30]
00000001405b5332 lea      r8, [rip + 0xc9357]
00000001405b5339 and      eax, 0xffffffe4
00000001405b533c mov      r9d, r14d
00000001405b533f or       eax, 4
00000001405b5342 mov      edx, r13d
00000001405b5345 mov      dword ptr [rbp + 0x30], eax
00000001405b5348 mov      rax, qword ptr [rdi + 0x18]
00000001405b534c mov      rcx, qword ptr [rdi + 8]
00000001405b5350 mov      rax, qword ptr [rax + 0x118]
00000001405b5357 call     qword ptr [rip + 0xcef9b]
00000001405b535d mov      rax, qword ptr [rsi + 0x28]
00000001405b5361 mov      edx, ebx
00000001405b5363 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5367 mov      rcx, rdi
00000001405b536a call     qword ptr [rip + 0xcef88]
00000001405b5370 mov      rax, qword ptr [rdi + 0x18]
00000001405b5374 lea      r8, [rip + 0xc9375]
00000001405b537b mov      rcx, qword ptr [rdi + 8]
00000001405b537f mov      edx, r13d
00000001405b5382 mov      rax, qword ptr [rax + 0x118]
00000001405b5389 call     qword ptr [rip + 0xcef69]
00000001405b538f lea      rdx, [rip + 0x71d032]
00000001405b5396 jmp      0x1405bd0a2
00000001405b539b sub      ebx, 0x71
00000001405b539e je       0x1405b57dd
00000001405b53a4 sub      ebx, r13d
00000001405b53a7 je       0x1405b570f
00000001405b53ad sub      ebx, r13d
00000001405b53b0 je       0x1405b5641
00000001405b53b6 sub      ebx, r13d
00000001405b53b9 je       0x1405b5573
00000001405b53bf sub      ebx, r13d
00000001405b53c2 je       0x1405b54a2
00000001405b53c8 cmp      ebx, r13d
00000001405b53cb jne      0x1405bca8d
00000001405b53d1 mov      rax, qword ptr [rdi + 0x18]
00000001405b53d5 lea      r8, [rip + 0xb5dc4]
00000001405b53dc mov      rcx, qword ptr [rdi + 8]
00000001405b53e0 mov      edx, r13d
00000001405b53e3 mov      rax, qword ptr [rax + 0x118]
00000001405b53ea call     qword ptr [rip + 0xcef08]
00000001405b53f0 mov      rax, qword ptr [rsi + 0x20]
00000001405b53f4 mov      ebx, 0x4200
00000001405b53f9 mov      edx, ebx
00000001405b53fb mov      rcx, rdi
00000001405b53fe call     qword ptr [rip + 0xceef4]
00000001405b5404 mov      r14d, 0x18604200
00000001405b540a lea      r8, [rip + 0xc909f]
00000001405b5411 btr      eax, 0x10
00000001405b5415 mov      r9d, r14d
00000001405b5418 mov      dword ptr [rbp + 0x30], eax
00000001405b541b mov      edx, r13d
00000001405b541e mov      rax, qword ptr [rdi + 0x18]
00000001405b5422 mov      rcx, qword ptr [rdi + 8]
00000001405b5426 mov      rax, qword ptr [rax + 0x118]
00000001405b542d call     qword ptr [rip + 0xceec5]
00000001405b5433 mov      eax, dword ptr [rbp + 0x30]
00000001405b5436 lea      r8, [rip + 0xc9313]
00000001405b543d and      eax, 0xffffffe6
00000001405b5440 mov      r9d, r14d
00000001405b5443 or       eax, 6
00000001405b5446 mov      edx, r13d
00000001405b5449 mov      dword ptr [rbp + 0x30], eax
00000001405b544c mov      rax, qword ptr [rdi + 0x18]
00000001405b5450 mov      rcx, qword ptr [rdi + 8]
00000001405b5454 mov      rax, qword ptr [rax + 0x118]
00000001405b545b call     qword ptr [rip + 0xcee97]
00000001405b5461 mov      rax, qword ptr [rsi + 0x28]
00000001405b5465 mov      edx, ebx
00000001405b5467 mov      r8d, dword ptr [rbp + 0x30]
00000001405b546b mov      rcx, rdi
00000001405b546e call     qword ptr [rip + 0xcee84]
00000001405b5474 mov      rax, qword ptr [rdi + 0x18]
00000001405b5478 lea      r8, [rip + 0xb5d51]
00000001405b547f mov      rcx, qword ptr [rdi + 8]
00000001405b5483 mov      edx, r13d
00000001405b5486 mov      rax, qword ptr [rax + 0x118]
00000001405b548d call     qword ptr [rip + 0xcee65]
00000001405b5493 mov      r9b, r13b
00000001405b5496 lea      rdx, [rip + 0x71cf8b]
00000001405b549d jmp      0x1405bd0a5
00000001405b54a2 mov      rax, qword ptr [rdi + 0x18]
00000001405b54a6 lea      r8, [rip + 0xb5c63]
00000001405b54ad mov      rcx, qword ptr [rdi + 8]
00000001405b54b1 mov      edx, r13d
00000001405b54b4 mov      rax, qword ptr [rax + 0x118]
00000001405b54bb call     qword ptr [rip + 0xcee37]
00000001405b54c1 mov      rax, qword ptr [rsi + 0x20]
00000001405b54c5 mov      ebx, 0x4200
00000001405b54ca mov      edx, ebx
00000001405b54cc mov      rcx, rdi
00000001405b54cf call     qword ptr [rip + 0xcee23]
00000001405b54d5 mov      r14d, 0x18604200
00000001405b54db lea      r8, [rip + 0xc8fce]
00000001405b54e2 btr      eax, 0x10
00000001405b54e6 mov      r9d, r14d
00000001405b54e9 mov      dword ptr [rbp + 0x30], eax
00000001405b54ec mov      edx, r13d
00000001405b54ef mov      rax, qword ptr [rdi + 0x18]
00000001405b54f3 mov      rcx, qword ptr [rdi + 8]
00000001405b54f7 mov      rax, qword ptr [rax + 0x118]
00000001405b54fe call     qword ptr [rip + 0xcedf4]
00000001405b5504 mov      eax, dword ptr [rbp + 0x30]
00000001405b5507 lea      r8, [rip + 0xc9242]
00000001405b550e and      eax, 0xffffffe6
00000001405b5511 mov      r9d, r14d
00000001405b5514 or       eax, 6
00000001405b5517 mov      edx, r13d
00000001405b551a mov      dword ptr [rbp + 0x30], eax
00000001405b551d mov      rax, qword ptr [rdi + 0x18]
00000001405b5521 mov      rcx, qword ptr [rdi + 8]
00000001405b5525 mov      rax, qword ptr [rax + 0x118]
00000001405b552c call     qword ptr [rip + 0xcedc6]
00000001405b5532 mov      rax, qword ptr [rsi + 0x28]
00000001405b5536 mov      edx, ebx
00000001405b5538 mov      r8d, dword ptr [rbp + 0x30]
00000001405b553c mov      rcx, rdi
00000001405b553f call     qword ptr [rip + 0xcedb3]
00000001405b5545 mov      rax, qword ptr [rdi + 0x18]
00000001405b5549 lea      r8, [rip + 0xb5c20]
00000001405b5550 mov      rcx, qword ptr [rdi + 8]
00000001405b5554 mov      edx, r13d
00000001405b5557 mov      rax, qword ptr [rax + 0x118]
00000001405b555e call     qword ptr [rip + 0xced94]
00000001405b5564 mov      r9b, r13b
00000001405b5567 lea      rdx, [rip + 0x71ceaa]
00000001405b556e jmp      0x1405bd0a5
00000001405b5573 mov      rax, qword ptr [rdi + 0x18]
00000001405b5577 lea      r8, [rip + 0xb5b32]
00000001405b557e mov      rcx, qword ptr [rdi + 8]
00000001405b5582 mov      edx, r13d
00000001405b5585 mov      rax, qword ptr [rax + 0x118]
00000001405b558c call     qword ptr [rip + 0xced66]
00000001405b5592 mov      rax, qword ptr [rsi + 0x20]
00000001405b5596 mov      ebx, 0x4200
00000001405b559b mov      edx, ebx
00000001405b559d mov      rcx, rdi
00000001405b55a0 call     qword ptr [rip + 0xced52]
00000001405b55a6 mov      r14d, 0x18604200
00000001405b55ac lea      r8, [rip + 0xc8efd]
00000001405b55b3 btr      eax, 0x10
00000001405b55b7 mov      r9d, r14d
00000001405b55ba mov      dword ptr [rbp + 0x30], eax
00000001405b55bd mov      edx, r13d
00000001405b55c0 mov      rax, qword ptr [rdi + 0x18]
00000001405b55c4 mov      rcx, qword ptr [rdi + 8]
00000001405b55c8 mov      rax, qword ptr [rax + 0x118]
00000001405b55cf call     qword ptr [rip + 0xced23]
00000001405b55d5 mov      eax, dword ptr [rbp + 0x30]
00000001405b55d8 lea      r8, [rip + 0xc9141]
00000001405b55df and      eax, 0xffffffe5
00000001405b55e2 mov      r9d, r14d
00000001405b55e5 or       eax, 5
00000001405b55e8 mov      edx, r13d
00000001405b55eb mov      dword ptr [rbp + 0x30], eax
00000001405b55ee mov      rax, qword ptr [rdi + 0x18]
00000001405b55f2 mov      rcx, qword ptr [rdi + 8]
00000001405b55f6 mov      rax, qword ptr [rax + 0x118]
00000001405b55fd call     qword ptr [rip + 0xcecf5]
00000001405b5603 mov      rax, qword ptr [rsi + 0x28]
00000001405b5607 mov      edx, ebx
00000001405b5609 mov      r8d, dword ptr [rbp + 0x30]
00000001405b560d mov      rcx, rdi
00000001405b5610 call     qword ptr [rip + 0xcece2]
00000001405b5616 mov      rax, qword ptr [rdi + 0x18]
00000001405b561a lea      r8, [rip + 0xb5abf]
00000001405b5621 mov      rcx, qword ptr [rdi + 8]
00000001405b5625 mov      edx, r13d
00000001405b5628 mov      rax, qword ptr [rax + 0x118]
00000001405b562f call     qword ptr [rip + 0xcecc3]
00000001405b5635 lea      rdx, [rip + 0x71cdcc]
00000001405b563c jmp      0x1405bd0a2
00000001405b5641 mov      rax, qword ptr [rdi + 0x18]
00000001405b5645 lea      r8, [rip + 0xb5a04]
00000001405b564c mov      rcx, qword ptr [rdi + 8]
00000001405b5650 mov      edx, r13d
00000001405b5653 mov      rax, qword ptr [rax + 0x118]
00000001405b565a call     qword ptr [rip + 0xcec98]
00000001405b5660 mov      rax, qword ptr [rsi + 0x20]
00000001405b5664 mov      ebx, 0x4200
00000001405b5669 mov      edx, ebx
00000001405b566b mov      rcx, rdi
00000001405b566e call     qword ptr [rip + 0xcec84]
00000001405b5674 mov      r14d, 0x18604200
00000001405b567a lea      r8, [rip + 0xc8e2f]
00000001405b5681 btr      eax, 0x10
00000001405b5685 mov      r9d, r14d
00000001405b5688 mov      dword ptr [rbp + 0x30], eax
00000001405b568b mov      edx, r13d
00000001405b568e mov      rax, qword ptr [rdi + 0x18]
00000001405b5692 mov      rcx, qword ptr [rdi + 8]
00000001405b5696 mov      rax, qword ptr [rax + 0x118]
00000001405b569d call     qword ptr [rip + 0xcec55]
00000001405b56a3 mov      eax, dword ptr [rbp + 0x30]
00000001405b56a6 lea      r8, [rip + 0xc9073]
00000001405b56ad and      eax, 0xffffffe5
00000001405b56b0 mov      r9d, r14d
00000001405b56b3 or       eax, 5
00000001405b56b6 mov      edx, r13d
00000001405b56b9 mov      dword ptr [rbp + 0x30], eax
00000001405b56bc mov      rax, qword ptr [rdi + 0x18]
00000001405b56c0 mov      rcx, qword ptr [rdi + 8]
00000001405b56c4 mov      rax, qword ptr [rax + 0x118]
00000001405b56cb call     qword ptr [rip + 0xcec27]
00000001405b56d1 mov      rax, qword ptr [rsi + 0x28]
00000001405b56d5 mov      edx, ebx
00000001405b56d7 mov      r8d, dword ptr [rbp + 0x30]
00000001405b56db mov      rcx, rdi
00000001405b56de call     qword ptr [rip + 0xcec14]
00000001405b56e4 mov      rax, qword ptr [rdi + 0x18]
00000001405b56e8 lea      r8, [rip + 0xb5991]
00000001405b56ef mov      rcx, qword ptr [rdi + 8]
00000001405b56f3 mov      edx, r13d
00000001405b56f6 mov      rax, qword ptr [rax + 0x118]
00000001405b56fd call     qword ptr [rip + 0xcebf5]
00000001405b5703 lea      rdx, [rip + 0x71ccee]
00000001405b570a jmp      0x1405bd0a2
00000001405b570f mov      rax, qword ptr [rdi + 0x18]
00000001405b5713 lea      r8, [rip + 0xb58d6]
00000001405b571a mov      rcx, qword ptr [rdi + 8]
00000001405b571e mov      edx, r13d
00000001405b5721 mov      rax, qword ptr [rax + 0x118]
00000001405b5728 call     qword ptr [rip + 0xcebca]
00000001405b572e mov      rax, qword ptr [rsi + 0x20]
00000001405b5732 mov      ebx, 0x4200
00000001405b5737 mov      edx, ebx
00000001405b5739 mov      rcx, rdi
00000001405b573c call     qword ptr [rip + 0xcebb6]
00000001405b5742 mov      r14d, 0x18604200
00000001405b5748 lea      r8, [rip + 0xc8d61]
00000001405b574f btr      eax, 0x10
00000001405b5753 mov      r9d, r14d
00000001405b5756 mov      dword ptr [rbp + 0x30], eax
00000001405b5759 mov      edx, r13d
00000001405b575c mov      rax, qword ptr [rdi + 0x18]
00000001405b5760 mov      rcx, qword ptr [rdi + 8]
00000001405b5764 mov      rax, qword ptr [rax + 0x118]
00000001405b576b call     qword ptr [rip + 0xceb87]
00000001405b5771 mov      eax, dword ptr [rbp + 0x30]
00000001405b5774 lea      r8, [rip + 0xc8fa5]
00000001405b577b and      eax, 0xffffffe5
00000001405b577e mov      r9d, r14d
00000001405b5781 or       eax, 5
00000001405b5784 mov      edx, r13d
00000001405b5787 mov      dword ptr [rbp + 0x30], eax
00000001405b578a mov      rax, qword ptr [rdi + 0x18]
00000001405b578e mov      rcx, qword ptr [rdi + 8]
00000001405b5792 mov      rax, qword ptr [rax + 0x118]
00000001405b5799 call     qword ptr [rip + 0xceb59]
00000001405b579f mov      rax, qword ptr [rsi + 0x28]
00000001405b57a3 mov      edx, ebx
00000001405b57a5 mov      r8d, dword ptr [rbp + 0x30]
00000001405b57a9 mov      rcx, rdi
00000001405b57ac call     qword ptr [rip + 0xceb46]
00000001405b57b2 mov      rax, qword ptr [rdi + 0x18]
00000001405b57b6 lea      r8, [rip + 0xb5863]
00000001405b57bd mov      rcx, qword ptr [rdi + 8]
00000001405b57c1 mov      edx, r13d
00000001405b57c4 mov      rax, qword ptr [rax + 0x118]
00000001405b57cb call     qword ptr [rip + 0xceb27]
00000001405b57d1 lea      rdx, [rip + 0x71cc10]
00000001405b57d8 jmp      0x1405bd0a2
00000001405b57dd mov      rax, qword ptr [rdi + 0x18]
00000001405b57e1 lea      r8, [rip + 0xb5778]
00000001405b57e8 mov      rcx, qword ptr [rdi + 8]
00000001405b57ec mov      edx, r13d
00000001405b57ef mov      rax, qword ptr [rax + 0x118]
00000001405b57f6 call     qword ptr [rip + 0xceafc]
00000001405b57fc mov      rax, qword ptr [rsi + 0x20]
00000001405b5800 mov      ebx, 0x4200
00000001405b5805 mov      edx, ebx
00000001405b5807 mov      rcx, rdi
00000001405b580a call     qword ptr [rip + 0xceae8]
00000001405b5810 mov      r14d, 0x18604200
00000001405b5816 lea      r8, [rip + 0xc8c93]
00000001405b581d btr      eax, 0x10
00000001405b5821 mov      r9d, r14d
00000001405b5824 mov      dword ptr [rbp + 0x30], eax
00000001405b5827 mov      edx, r13d
00000001405b582a mov      rax, qword ptr [rdi + 0x18]
00000001405b582e mov      rcx, qword ptr [rdi + 8]
00000001405b5832 mov      rax, qword ptr [rax + 0x118]
00000001405b5839 call     qword ptr [rip + 0xceab9]
00000001405b583f mov      eax, dword ptr [rbp + 0x30]
00000001405b5842 lea      r8, [rip + 0xc8ed7]
00000001405b5849 and      eax, 0xffffffe5
00000001405b584c mov      r9d, r14d
00000001405b584f or       eax, 5
00000001405b5852 mov      edx, r13d
00000001405b5855 mov      dword ptr [rbp + 0x30], eax
00000001405b5858 mov      rax, qword ptr [rdi + 0x18]
00000001405b585c mov      rcx, qword ptr [rdi + 8]
00000001405b5860 mov      rax, qword ptr [rax + 0x118]
00000001405b5867 call     qword ptr [rip + 0xcea8b]
00000001405b586d mov      rax, qword ptr [rsi + 0x28]
00000001405b5871 mov      edx, ebx
00000001405b5873 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5877 mov      rcx, rdi
00000001405b587a call     qword ptr [rip + 0xcea78]
00000001405b5880 mov      rax, qword ptr [rdi + 0x18]
00000001405b5884 lea      r8, [rip + 0xb5735]
00000001405b588b mov      rcx, qword ptr [rdi + 8]
00000001405b588f mov      edx, r13d
00000001405b5892 mov      rax, qword ptr [rax + 0x118]
00000001405b5899 call     qword ptr [rip + 0xcea59]
00000001405b589f lea      rdx, [rip + 0x71cb32]
00000001405b58a6 jmp      0x1405bd0a2
00000001405b58ab mov      rax, qword ptr [rdi + 0x18]
00000001405b58af lea      r8, [rip + 0xb595a]
00000001405b58b6 mov      rcx, qword ptr [rdi + 8]
00000001405b58ba mov      edx, r13d
00000001405b58bd mov      rax, qword ptr [rax + 0x118]
00000001405b58c4 call     qword ptr [rip + 0xcea2e]
00000001405b58ca mov      rax, qword ptr [rsi + 0x20]
00000001405b58ce mov      ebx, 0x4200
00000001405b58d3 mov      edx, ebx
00000001405b58d5 mov      rcx, rdi
00000001405b58d8 call     qword ptr [rip + 0xcea1a]
00000001405b58de mov      r14d, 0x18604200
00000001405b58e4 lea      r8, [rip + 0xc8bc5]
00000001405b58eb btr      eax, 0x10
00000001405b58ef mov      r9d, r14d
00000001405b58f2 mov      dword ptr [rbp + 0x30], eax
00000001405b58f5 mov      edx, r13d
00000001405b58f8 mov      rax, qword ptr [rdi + 0x18]
00000001405b58fc mov      rcx, qword ptr [rdi + 8]
00000001405b5900 mov      rax, qword ptr [rax + 0x118]
00000001405b5907 call     qword ptr [rip + 0xce9eb]
00000001405b590d mov      eax, dword ptr [rbp + 0x30]
00000001405b5910 lea      r8, [rip + 0xc8e69]
00000001405b5917 and      eax, 0xffffffe7
00000001405b591a mov      r9d, r14d
00000001405b591d or       eax, 7
00000001405b5920 mov      edx, r13d
00000001405b5923 mov      dword ptr [rbp + 0x30], eax
00000001405b5926 mov      rax, qword ptr [rdi + 0x18]
00000001405b592a mov      rcx, qword ptr [rdi + 8]
00000001405b592e mov      rax, qword ptr [rax + 0x118]
00000001405b5935 call     qword ptr [rip + 0xce9bd]
00000001405b593b mov      rax, qword ptr [rsi + 0x28]
00000001405b593f mov      edx, ebx
00000001405b5941 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5945 mov      rcx, rdi
00000001405b5948 call     qword ptr [rip + 0xce9aa]
00000001405b594e mov      rax, qword ptr [rdi + 0x18]
00000001405b5952 lea      r8, [rip + 0xb5917]
00000001405b5959 mov      rcx, qword ptr [rdi + 8]
00000001405b595d mov      edx, r13d
00000001405b5960 mov      rax, qword ptr [rax + 0x118]
00000001405b5967 call     qword ptr [rip + 0xce98b]
00000001405b596d mov      r9b, r13b
00000001405b5970 lea      rdx, [rip + 0x71cac1]
00000001405b5977 jmp      0x1405bd0a5
00000001405b597c cmp      ebx, 0x7e
00000001405b597f ja       0x1405b5fc0
00000001405b5985 je       0x1405b5ea4
00000001405b598b sub      ebx, 0x78
00000001405b598e je       0x1405b5dd3
00000001405b5994 sub      ebx, r13d
00000001405b5997 je       0x1405b5d02
00000001405b599d sub      ebx, r13d
00000001405b59a0 je       0x1405b5c34
00000001405b59a6 sub      ebx, r13d
00000001405b59a9 je       0x1405b5b63
00000001405b59af sub      ebx, r13d
00000001405b59b2 je       0x1405b5a92
00000001405b59b8 cmp      ebx, r13d
00000001405b59bb jne      0x1405bca8d
00000001405b59c1 mov      rax, qword ptr [rdi + 0x18]
00000001405b59c5 lea      r8, [rip + 0xc8f34]
00000001405b59cc mov      rcx, qword ptr [rdi + 8]
00000001405b59d0 mov      edx, r13d
00000001405b59d3 mov      rax, qword ptr [rax + 0x118]
00000001405b59da call     qword ptr [rip + 0xce918]
00000001405b59e0 mov      rax, qword ptr [rsi + 0x20]
00000001405b59e4 mov      ebx, 0x4200
00000001405b59e9 mov      edx, ebx
00000001405b59eb mov      rcx, rdi
00000001405b59ee call     qword ptr [rip + 0xce904]
00000001405b59f4 mov      r14d, 0x18604200
00000001405b59fa lea      r8, [rip + 0xc8aaf]
00000001405b5a01 btr      eax, 0x10
00000001405b5a05 mov      r9d, r14d
00000001405b5a08 mov      dword ptr [rbp + 0x30], eax
00000001405b5a0b mov      edx, r13d
00000001405b5a0e mov      rax, qword ptr [rdi + 0x18]
00000001405b5a12 mov      rcx, qword ptr [rdi + 8]
00000001405b5a16 mov      rax, qword ptr [rax + 0x118]
00000001405b5a1d call     qword ptr [rip + 0xce8d5]
00000001405b5a23 mov      eax, dword ptr [rbp + 0x30]
00000001405b5a26 lea      r8, [rip + 0xc8e73]
00000001405b5a2d and      eax, 0xffffffed
00000001405b5a30 mov      r9d, r14d
00000001405b5a33 or       eax, 0xd
00000001405b5a36 mov      edx, r13d
00000001405b5a39 mov      dword ptr [rbp + 0x30], eax
00000001405b5a3c mov      rax, qword ptr [rdi + 0x18]
00000001405b5a40 mov      rcx, qword ptr [rdi + 8]
00000001405b5a44 mov      rax, qword ptr [rax + 0x118]
00000001405b5a4b call     qword ptr [rip + 0xce8a7]
00000001405b5a51 mov      rax, qword ptr [rsi + 0x28]
00000001405b5a55 mov      edx, ebx
00000001405b5a57 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5a5b mov      rcx, rdi
00000001405b5a5e call     qword ptr [rip + 0xce894]
00000001405b5a64 mov      rax, qword ptr [rdi + 0x18]
00000001405b5a68 lea      r8, [rip + 0xc8ec1]
00000001405b5a6f mov      rcx, qword ptr [rdi + 8]
00000001405b5a73 mov      edx, r13d
00000001405b5a76 mov      rax, qword ptr [rax + 0x118]
00000001405b5a7d call     qword ptr [rip + 0xce875]
00000001405b5a83 mov      r9b, r13b
00000001405b5a86 lea      rdx, [rip + 0x71ca0b]
00000001405b5a8d jmp      0x1405bd0a5
00000001405b5a92 mov      rax, qword ptr [rdi + 0x18]
00000001405b5a96 lea      r8, [rip + 0xc8dd3]
00000001405b5a9d mov      rcx, qword ptr [rdi + 8]
00000001405b5aa1 mov      edx, r13d
00000001405b5aa4 mov      rax, qword ptr [rax + 0x118]
00000001405b5aab call     qword ptr [rip + 0xce847]
00000001405b5ab1 mov      rax, qword ptr [rsi + 0x20]
00000001405b5ab5 mov      ebx, 0x4200
00000001405b5aba mov      edx, ebx
00000001405b5abc mov      rcx, rdi
00000001405b5abf call     qword ptr [rip + 0xce833]
00000001405b5ac5 mov      r14d, 0x18604200
00000001405b5acb lea      r8, [rip + 0xc89de]
00000001405b5ad2 btr      eax, 0x10
00000001405b5ad6 mov      r9d, r14d
00000001405b5ad9 mov      dword ptr [rbp + 0x30], eax
00000001405b5adc mov      edx, r13d
00000001405b5adf mov      rax, qword ptr [rdi + 0x18]
00000001405b5ae3 mov      rcx, qword ptr [rdi + 8]
00000001405b5ae7 mov      rax, qword ptr [rax + 0x118]
00000001405b5aee call     qword ptr [rip + 0xce804]
00000001405b5af4 mov      eax, dword ptr [rbp + 0x30]
00000001405b5af7 lea      r8, [rip + 0xc8da2]
00000001405b5afe and      eax, 0xffffffed
00000001405b5b01 mov      r9d, r14d
00000001405b5b04 or       eax, 0xd
00000001405b5b07 mov      edx, r13d
00000001405b5b0a mov      dword ptr [rbp + 0x30], eax
00000001405b5b0d mov      rax, qword ptr [rdi + 0x18]
00000001405b5b11 mov      rcx, qword ptr [rdi + 8]
00000001405b5b15 mov      rax, qword ptr [rax + 0x118]
00000001405b5b1c call     qword ptr [rip + 0xce7d6]
00000001405b5b22 mov      rax, qword ptr [rsi + 0x28]
00000001405b5b26 mov      edx, ebx
00000001405b5b28 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5b2c mov      rcx, rdi
00000001405b5b2f call     qword ptr [rip + 0xce7c3]
00000001405b5b35 mov      rax, qword ptr [rdi + 0x18]
00000001405b5b39 lea      r8, [rip + 0xc8d90]
00000001405b5b40 mov      rcx, qword ptr [rdi + 8]
00000001405b5b44 mov      edx, r13d
00000001405b5b47 mov      rax, qword ptr [rax + 0x118]
00000001405b5b4e call     qword ptr [rip + 0xce7a4]
00000001405b5b54 mov      r9b, r13b
00000001405b5b57 lea      rdx, [rip + 0x71c92a]
00000001405b5b5e jmp      0x1405bd0a5
00000001405b5b63 mov      rax, qword ptr [rdi + 0x18]
00000001405b5b67 lea      r8, [rip + 0xb58e2]
00000001405b5b6e mov      rcx, qword ptr [rdi + 8]
00000001405b5b72 mov      edx, r13d
00000001405b5b75 mov      rax, qword ptr [rax + 0x118]
00000001405b5b7c call     qword ptr [rip + 0xce776]
00000001405b5b82 mov      rax, qword ptr [rsi + 0x20]
00000001405b5b86 mov      ebx, 0x4200
00000001405b5b8b mov      edx, ebx
00000001405b5b8d mov      rcx, rdi
00000001405b5b90 call     qword ptr [rip + 0xce762]
00000001405b5b96 mov      r14d, 0x18604200
00000001405b5b9c lea      r8, [rip + 0xc890d]
00000001405b5ba3 btr      eax, 0x10
00000001405b5ba7 mov      r9d, r14d
00000001405b5baa mov      dword ptr [rbp + 0x30], eax
00000001405b5bad mov      edx, r13d
00000001405b5bb0 mov      rax, qword ptr [rdi + 0x18]
00000001405b5bb4 mov      rcx, qword ptr [rdi + 8]
00000001405b5bb8 mov      rax, qword ptr [rax + 0x118]
00000001405b5bbf call     qword ptr [rip + 0xce733]
00000001405b5bc5 mov      eax, dword ptr [rbp + 0x30]
00000001405b5bc8 lea      r8, [rip + 0xc8c71]
00000001405b5bcf and      eax, 0xffffffec
00000001405b5bd2 mov      r9d, r14d
00000001405b5bd5 or       eax, 0xc
00000001405b5bd8 mov      edx, r13d
00000001405b5bdb mov      dword ptr [rbp + 0x30], eax
00000001405b5bde mov      rax, qword ptr [rdi + 0x18]
00000001405b5be2 mov      rcx, qword ptr [rdi + 8]
00000001405b5be6 mov      rax, qword ptr [rax + 0x118]
00000001405b5bed call     qword ptr [rip + 0xce705]
00000001405b5bf3 mov      rax, qword ptr [rsi + 0x28]
00000001405b5bf7 mov      edx, ebx
00000001405b5bf9 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5bfd mov      rcx, rdi
00000001405b5c00 call     qword ptr [rip + 0xce6f2]
00000001405b5c06 mov      rax, qword ptr [rdi + 0x18]
00000001405b5c0a lea      r8, [rip + 0xb589f]
00000001405b5c11 mov      rcx, qword ptr [rdi + 8]
00000001405b5c15 mov      edx, r13d
00000001405b5c18 mov      rax, qword ptr [rax + 0x118]
00000001405b5c1f call     qword ptr [rip + 0xce6d3]
00000001405b5c25 mov      r9b, r13b
00000001405b5c28 lea      rdx, [rip + 0x71c849]
00000001405b5c2f jmp      0x1405bd0a5
00000001405b5c34 mov      rax, qword ptr [rdi + 0x18]
00000001405b5c38 lea      r8, [rip + 0xb5781]
00000001405b5c3f mov      rcx, qword ptr [rdi + 8]
00000001405b5c43 mov      edx, r13d
00000001405b5c46 mov      rax, qword ptr [rax + 0x118]
00000001405b5c4d call     qword ptr [rip + 0xce6a5]
00000001405b5c53 mov      rax, qword ptr [rsi + 0x20]
00000001405b5c57 mov      ebx, 0x4200
00000001405b5c5c mov      edx, ebx
00000001405b5c5e mov      rcx, rdi
00000001405b5c61 call     qword ptr [rip + 0xce691]
00000001405b5c67 mov      r14d, 0x18604200
00000001405b5c6d lea      r8, [rip + 0xc883c]
00000001405b5c74 btr      eax, 0x10
00000001405b5c78 mov      r9d, r14d
00000001405b5c7b mov      dword ptr [rbp + 0x30], eax
00000001405b5c7e mov      edx, r13d
00000001405b5c81 mov      rax, qword ptr [rdi + 0x18]
00000001405b5c85 mov      rcx, qword ptr [rdi + 8]
00000001405b5c89 mov      rax, qword ptr [rax + 0x118]
00000001405b5c90 call     qword ptr [rip + 0xce662]
00000001405b5c96 mov      eax, dword ptr [rbp + 0x30]
00000001405b5c99 lea      r8, [rip + 0xc8b70]
00000001405b5ca0 and      eax, 0xffffffea
00000001405b5ca3 mov      r9d, r14d
00000001405b5ca6 or       eax, 0xa
00000001405b5ca9 mov      edx, r13d
00000001405b5cac mov      dword ptr [rbp + 0x30], eax
00000001405b5caf mov      rax, qword ptr [rdi + 0x18]
00000001405b5cb3 mov      rcx, qword ptr [rdi + 8]
00000001405b5cb7 mov      rax, qword ptr [rax + 0x118]
00000001405b5cbe call     qword ptr [rip + 0xce634]
00000001405b5cc4 mov      rax, qword ptr [rsi + 0x28]
00000001405b5cc8 mov      edx, ebx
00000001405b5cca mov      r8d, dword ptr [rbp + 0x30]
00000001405b5cce mov      rcx, rdi
00000001405b5cd1 call     qword ptr [rip + 0xce621]
00000001405b5cd7 mov      rax, qword ptr [rdi + 0x18]
00000001405b5cdb lea      r8, [rip + 0xb573e]
00000001405b5ce2 mov      rcx, qword ptr [rdi + 8]
00000001405b5ce6 mov      edx, r13d
00000001405b5ce9 mov      rax, qword ptr [rax + 0x118]
00000001405b5cf0 call     qword ptr [rip + 0xce602]
00000001405b5cf6 lea      rdx, [rip + 0x71c76b]
00000001405b5cfd jmp      0x1405bd0a2
00000001405b5d02 mov      rax, qword ptr [rdi + 0x18]
00000001405b5d06 lea      r8, [rip + 0xb5623]
00000001405b5d0d mov      rcx, qword ptr [rdi + 8]
00000001405b5d11 mov      edx, r13d
00000001405b5d14 mov      rax, qword ptr [rax + 0x118]
00000001405b5d1b call     qword ptr [rip + 0xce5d7]
00000001405b5d21 mov      rax, qword ptr [rsi + 0x20]
00000001405b5d25 mov      ebx, 0x4200
00000001405b5d2a mov      edx, ebx
00000001405b5d2c mov      rcx, rdi
00000001405b5d2f call     qword ptr [rip + 0xce5c3]
00000001405b5d35 mov      r14d, 0x18604200
00000001405b5d3b lea      r8, [rip + 0xc876e]
00000001405b5d42 btr      eax, 0x10
00000001405b5d46 mov      r9d, r14d
00000001405b5d49 mov      dword ptr [rbp + 0x30], eax
00000001405b5d4c mov      edx, r13d
00000001405b5d4f mov      rax, qword ptr [rdi + 0x18]
00000001405b5d53 mov      rcx, qword ptr [rdi + 8]
00000001405b5d57 mov      rax, qword ptr [rax + 0x118]
00000001405b5d5e call     qword ptr [rip + 0xce594]
00000001405b5d64 mov      eax, dword ptr [rbp + 0x30]
00000001405b5d67 lea      r8, [rip + 0xc8a72]
00000001405b5d6e and      eax, 0xffffffe9
00000001405b5d71 mov      r9d, r14d
00000001405b5d74 or       eax, 9
00000001405b5d77 mov      edx, r13d
00000001405b5d7a mov      dword ptr [rbp + 0x30], eax
00000001405b5d7d mov      rax, qword ptr [rdi + 0x18]
00000001405b5d81 mov      rcx, qword ptr [rdi + 8]
00000001405b5d85 mov      rax, qword ptr [rax + 0x118]
00000001405b5d8c call     qword ptr [rip + 0xce566]
00000001405b5d92 mov      rax, qword ptr [rsi + 0x28]
00000001405b5d96 mov      edx, ebx
00000001405b5d98 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5d9c mov      rcx, rdi
00000001405b5d9f call     qword ptr [rip + 0xce553]
00000001405b5da5 mov      rax, qword ptr [rdi + 0x18]
00000001405b5da9 lea      r8, [rip + 0xb55e0]
00000001405b5db0 mov      rcx, qword ptr [rdi + 8]
00000001405b5db4 mov      edx, r13d
00000001405b5db7 mov      rax, qword ptr [rax + 0x118]
00000001405b5dbe call     qword ptr [rip + 0xce534]
00000001405b5dc4 mov      r9b, r13b
00000001405b5dc7 lea      rdx, [rip + 0x71c68a]
00000001405b5dce jmp      0x1405bd0a5
00000001405b5dd3 mov      rax, qword ptr [rdi + 0x18]
00000001405b5dd7 lea      r8, [rip + 0xb54c2]
00000001405b5dde mov      rcx, qword ptr [rdi + 8]
00000001405b5de2 mov      edx, r13d
00000001405b5de5 mov      rax, qword ptr [rax + 0x118]
00000001405b5dec call     qword ptr [rip + 0xce506]
00000001405b5df2 mov      rax, qword ptr [rsi + 0x20]
00000001405b5df6 mov      ebx, 0x4200
00000001405b5dfb mov      edx, ebx
00000001405b5dfd mov      rcx, rdi
00000001405b5e00 call     qword ptr [rip + 0xce4f2]
00000001405b5e06 mov      r14d, 0x18604200
00000001405b5e0c lea      r8, [rip + 0xc869d]
00000001405b5e13 btr      eax, 0x10
00000001405b5e17 mov      r9d, r14d
00000001405b5e1a mov      dword ptr [rbp + 0x30], eax
00000001405b5e1d mov      edx, r13d
00000001405b5e20 mov      rax, qword ptr [rdi + 0x18]
00000001405b5e24 mov      rcx, qword ptr [rdi + 8]
00000001405b5e28 mov      rax, qword ptr [rax + 0x118]
00000001405b5e2f call     qword ptr [rip + 0xce4c3]
00000001405b5e35 mov      eax, dword ptr [rbp + 0x30]
00000001405b5e38 lea      r8, [rip + 0xc8971]
00000001405b5e3f and      eax, 0xffffffe8
00000001405b5e42 mov      r9d, r14d
00000001405b5e45 or       eax, 8
00000001405b5e48 mov      edx, r13d
00000001405b5e4b mov      dword ptr [rbp + 0x30], eax
00000001405b5e4e mov      rax, qword ptr [rdi + 0x18]
00000001405b5e52 mov      rcx, qword ptr [rdi + 8]
00000001405b5e56 mov      rax, qword ptr [rax + 0x118]
00000001405b5e5d call     qword ptr [rip + 0xce495]
00000001405b5e63 mov      rax, qword ptr [rsi + 0x28]
00000001405b5e67 mov      edx, ebx
00000001405b5e69 mov      r8d, dword ptr [rbp + 0x30]
00000001405b5e6d mov      rcx, rdi
00000001405b5e70 call     qword ptr [rip + 0xce482]
00000001405b5e76 mov      rax, qword ptr [rdi + 0x18]
00000001405b5e7a lea      r8, [rip + 0xb547f]
00000001405b5e81 mov      rcx, qword ptr [rdi + 8]
00000001405b5e85 mov      edx, r13d
00000001405b5e88 mov      rax, qword ptr [rax + 0x118]
00000001405b5e8f call     qword ptr [rip + 0xce463]
00000001405b5e95 mov      r9b, r13b
00000001405b5e98 lea      rdx, [rip + 0x71c5a9]
00000001405b5e9f jmp      0x1405bd0a5
00000001405b5ea4 mov      rax, qword ptr [rdi + 0x18]
00000001405b5ea8 lea      r8, [rip + 0xb5631]
00000001405b5eaf mov      rcx, qword ptr [rdi + 8]
00000001405b5eb3 mov      edx, r13d
00000001405b5eb6 mov      rax, qword ptr [rax + 0x118]
00000001405b5ebd call     qword ptr [rip + 0xce435]
00000001405b5ec3 mov      rax, qword ptr [rsi + 0x20]
00000001405b5ec7 mov      ebx, 0x4200
00000001405b5ecc mov      edx, ebx
00000001405b5ece mov      rcx, rdi
00000001405b5ed1 call     qword ptr [rip + 0xce421]
00000001405b5ed7 mov      r14d, 0x18604200
00000001405b5edd lea      r8, [rip + 0xc85cc]
00000001405b5ee4 btr      eax, 0x10
00000001405b5ee8 mov      r9d, r14d
00000001405b5eeb mov      dword ptr [rbp + 0x30], eax
00000001405b5eee mov      edx, r13d
00000001405b5ef1 mov      rax, qword ptr [rdi + 0x18]
00000001405b5ef5 mov      rcx, qword ptr [rdi + 8]
00000001405b5ef9 mov      rax, qword ptr [rax + 0x118]
00000001405b5f00 call     qword ptr [rip + 0xce3f2]
00000001405b5f06 mov      eax, dword ptr [rbp + 0x30]
00000001405b5f09 lea      r8, [rip + 0xc8a50]
00000001405b5f10 and      eax, 0xffffffef
00000001405b5f13 mov      r9d, r14d
00000001405b5f16 or       eax, 0xf
00000001405b5f19 mov      edx, r13d
00000001405b5f1c mov      dword ptr [rbp + 0x30], eax
00000001405b5f1f mov      rax, qword ptr [rdi + 0x18]
00000001405b5f23 mov      rcx, qword ptr [rdi + 8]
00000001405b5f27 mov      rax, qword ptr [rax + 0x118]
00000001405b5f2e call     qword ptr [rip + 0xce3c4]
00000001405b5f34 mov      rax, qword ptr [rsi + 0x28]
00000001405b5f38 mov      edx, ebx
00000001405b5f3a mov      r8d, dword ptr [rbp + 0x30]
00000001405b5f3e mov      rcx, rdi
00000001405b5f41 call     qword ptr [rip + 0xce3b1]
00000001405b5f47 mov      rax, qword ptr [rsi]
00000001405b5f4a lea      r15d, [rbx - 4]
00000001405b5f4e mov      edx, r15d
00000001405b5f51 mov      rcx, rdi
00000001405b5f54 call     qword ptr [rip + 0xce39e]
00000001405b5f5a mov      rcx, qword ptr [rdi + 8]
00000001405b5f5e lea      r9d, [r14 - 4]
00000001405b5f62 mov      bl, al
00000001405b5f64 lea      r8, [rip + 0xc8a25]
00000001405b5f6b mov      rax, qword ptr [rdi + 0x18]
00000001405b5f6f mov      edx, r13d
00000001405b5f72 and      bl, 0xf0
00000001405b5f75 mov      rax, qword ptr [rax + 0x118]
00000001405b5f7c call     qword ptr [rip + 0xce376]
00000001405b5f82 mov      rax, qword ptr [rsi + 8]
00000001405b5f86 mov      r8b, bl
00000001405b5f89 mov      edx, r15d
00000001405b5f8c mov      rcx, rdi
00000001405b5f8f call     qword ptr [rip + 0xce363]
00000001405b5f95 mov      rax, qword ptr [rdi + 0x18]
00000001405b5f99 lea      r8, [rip + 0xb55a0]
00000001405b5fa0 mov      rcx, qword ptr [rdi + 8]
00000001405b5fa4 mov      edx, r13d
00000001405b5fa7 mov      rax, qword ptr [rax + 0x118]
00000001405b5fae call     qword ptr [rip + 0xce344]
00000001405b5fb4 lea      rdx, [rip + 0x71c4ed]
00000001405b5fbb jmp      0x1405bd0a2
00000001405b5fc0 sub      ebx, 0x7f
00000001405b5fc3 je       0x1405b6469
00000001405b5fc9 sub      ebx, r13d
00000001405b5fcc je       0x1405b634a
00000001405b5fd2 sub      ebx, r13d
00000001405b5fd5 je       0x1405b622b
00000001405b5fdb sub      ebx, r13d
00000001405b5fde je       0x1405b610c
00000001405b5fe4 cmp      ebx, r13d
00000001405b5fe7 jne      0x1405bca8d
00000001405b5fed mov      rax, qword ptr [rdi + 0x18]
00000001405b5ff1 lea      r8, [rip + 0xb5718]
00000001405b5ff8 mov      rcx, qword ptr [rdi + 8]
00000001405b5ffc mov      edx, r13d
00000001405b5fff mov      rax, qword ptr [rax + 0x118]
00000001405b6006 call     qword ptr [rip + 0xce2ec]
00000001405b600c mov      rax, qword ptr [rsi + 0x20]
00000001405b6010 mov      ebx, 0x4200
00000001405b6015 mov      edx, ebx
00000001405b6017 mov      rcx, rdi
00000001405b601a call     qword ptr [rip + 0xce2d8]
00000001405b6020 mov      r14d, 0x18604200
00000001405b6026 lea      r8, [rip + 0xc8483]
00000001405b602d btr      eax, 0x10
00000001405b6031 mov      r9d, r14d
00000001405b6034 mov      dword ptr [rbp + 0x30], eax
00000001405b6037 mov      edx, r13d
00000001405b603a mov      rax, qword ptr [rdi + 0x18]
00000001405b603e mov      rcx, qword ptr [rdi + 8]
00000001405b6042 mov      rax, qword ptr [rax + 0x118]
00000001405b6049 call     qword ptr [rip + 0xce2a9]
00000001405b604f mov      eax, dword ptr [rbp + 0x30]
00000001405b6052 lea      r8, [rip + 0xc8907]
00000001405b6059 and      eax, 0xffffffef
00000001405b605c mov      r9d, r14d
00000001405b605f or       eax, 0xf
00000001405b6062 mov      edx, r13d
00000001405b6065 mov      dword ptr [rbp + 0x30], eax
00000001405b6068 mov      rax, qword ptr [rdi + 0x18]
00000001405b606c mov      rcx, qword ptr [rdi + 8]
00000001405b6070 mov      rax, qword ptr [rax + 0x118]
00000001405b6077 call     qword ptr [rip + 0xce27b]
00000001405b607d mov      rax, qword ptr [rsi + 0x28]
00000001405b6081 mov      edx, ebx
00000001405b6083 mov      r8d, dword ptr [rbp + 0x30]
00000001405b6087 mov      rcx, rdi
00000001405b608a call     qword ptr [rip + 0xce268]
00000001405b6090 mov      rax, qword ptr [rsi]
00000001405b6093 lea      r15d, [rbx - 4]
00000001405b6097 mov      edx, r15d
00000001405b609a mov      rcx, rdi
00000001405b609d call     qword ptr [rip + 0xce255]
00000001405b60a3 mov      rcx, qword ptr [rdi + 8]
00000001405b60a7 lea      r9d, [r14 - 4]
00000001405b60ab mov      bl, al
00000001405b60ad lea      r8, [rip + 0xc89cc]
00000001405b60b4 mov      rax, qword ptr [rdi + 0x18]
00000001405b60b8 and      bl, 0xfa
00000001405b60bb mov      edx, r13d
00000001405b60be or       bl, 0xa
00000001405b60c1 mov      rax, qword ptr [rax + 0x118]
00000001405b60c8 call     qword ptr [rip + 0xce22a]
00000001405b60ce mov      rax, qword ptr [rsi + 8]
00000001405b60d2 mov      r8b, bl
00000001405b60d5 mov      edx, r15d
00000001405b60d8 mov      rcx, rdi
00000001405b60db call     qword ptr [rip + 0xce217]
00000001405b60e1 mov      rax, qword ptr [rdi + 0x18]
00000001405b60e5 lea      r8, [rip + 0xb5654]
00000001405b60ec mov      rcx, qword ptr [rdi + 8]
00000001405b60f0 mov      edx, r13d
00000001405b60f3 mov      rax, qword ptr [rax + 0x118]
00000001405b60fa call     qword ptr [rip + 0xce1f8]
00000001405b6100 lea      rdx, [rip + 0x71c3f1]
00000001405b6107 jmp      0x1405bd0a2
00000001405b610c mov      rax, qword ptr [rdi + 0x18]
00000001405b6110 lea      r8, [rip + 0xb5599]
00000001405b6117 mov      rcx, qword ptr [rdi + 8]
00000001405b611b mov      edx, r13d
00000001405b611e mov      rax, qword ptr [rax + 0x118]
00000001405b6125 call     qword ptr [rip + 0xce1cd]
00000001405b612b mov      rax, qword ptr [rsi + 0x20]
00000001405b612f mov      ebx, 0x4200
00000001405b6134 mov      edx, ebx
00000001405b6136 mov      rcx, rdi
00000001405b6139 call     qword ptr [rip + 0xce1b9]
00000001405b613f mov      r14d, 0x18604200
00000001405b6145 lea      r8, [rip + 0xc8364]
00000001405b614c btr      eax, 0x10
00000001405b6150 mov      r9d, r14d
00000001405b6153 mov      dword ptr [rbp + 0x30], eax
00000001405b6156 mov      edx, r13d
00000001405b6159 mov      rax, qword ptr [rdi + 0x18]
00000001405b615d mov      rcx, qword ptr [rdi + 8]
00000001405b6161 mov      rax, qword ptr [rax + 0x118]
00000001405b6168 call     qword ptr [rip + 0xce18a]
00000001405b616e mov      eax, dword ptr [rbp + 0x30]
00000001405b6171 lea      r8, [rip + 0xc87e8]
00000001405b6178 and      eax, 0xffffffef
00000001405b617b mov      r9d, r14d
00000001405b617e or       eax, 0xf
00000001405b6181 mov      edx, r13d
00000001405b6184 mov      dword ptr [rbp + 0x30], eax
00000001405b6187 mov      rax, qword ptr [rdi + 0x18]
00000001405b618b mov      rcx, qword ptr [rdi + 8]
00000001405b618f mov      rax, qword ptr [rax + 0x118]
00000001405b6196 call     qword ptr [rip + 0xce15c]
00000001405b619c mov      rax, qword ptr [rsi + 0x28]
00000001405b61a0 mov      edx, ebx
00000001405b61a2 mov      r8d, dword ptr [rbp + 0x30]
00000001405b61a6 mov      rcx, rdi
00000001405b61a9 call     qword ptr [rip + 0xce149]
00000001405b61af mov      rax, qword ptr [rsi]
00000001405b61b2 lea      r15d, [rbx - 4]
00000001405b61b6 mov      edx, r15d
00000001405b61b9 mov      rcx, rdi
00000001405b61bc call     qword ptr [rip + 0xce136]
00000001405b61c2 mov      rcx, qword ptr [rdi + 8]
00000001405b61c6 lea      r9d, [r14 - 4]
00000001405b61ca mov      bl, al
00000001405b61cc lea      r8, [rip + 0xc887d]
00000001405b61d3 mov      rax, qword ptr [rdi + 0x18]
00000001405b61d7 and      bl, 0xf4
00000001405b61da mov      edx, r13d
00000001405b61dd or       bl, 4
00000001405b61e0 mov      rax, qword ptr [rax + 0x118]
00000001405b61e7 call     qword ptr [rip + 0xce10b]
00000001405b61ed mov      rax, qword ptr [rsi + 8]
00000001405b61f1 mov      r8b, bl
00000001405b61f4 mov      edx, r15d
00000001405b61f7 mov      rcx, rdi
00000001405b61fa call     qword ptr [rip + 0xce0f8]
00000001405b6200 mov      rax, qword ptr [rdi + 0x18]
00000001405b6204 lea      r8, [rip + 0xb54d5]
00000001405b620b mov      rcx, qword ptr [rdi + 8]
00000001405b620f mov      edx, r13d
00000001405b6212 mov      rax, qword ptr [rax + 0x118]
00000001405b6219 call     qword ptr [rip + 0xce0d9]
00000001405b621f lea      rdx, [rip + 0x71c2c2]
00000001405b6226 jmp      0x1405bd0a2
00000001405b622b mov      rax, qword ptr [rdi + 0x18]
00000001405b622f lea      r8, [rip + 0xb541a]
00000001405b6236 mov      rcx, qword ptr [rdi + 8]
00000001405b623a mov      edx, r13d
00000001405b623d mov      rax, qword ptr [rax + 0x118]
00000001405b6244 call     qword ptr [rip + 0xce0ae]
00000001405b624a mov      rax, qword ptr [rsi + 0x20]
00000001405b624e mov      ebx, 0x4200
00000001405b6253 mov      edx, ebx
00000001405b6255 mov      rcx, rdi
00000001405b6258 call     qword ptr [rip + 0xce09a]
00000001405b625e mov      r14d, 0x18604200
00000001405b6264 lea      r8, [rip + 0xc8245]
00000001405b626b btr      eax, 0x10
00000001405b626f mov      r9d, r14d
00000001405b6272 mov      dword ptr [rbp + 0x30], eax
00000001405b6275 mov      edx, r13d
00000001405b6278 mov      rax, qword ptr [rdi + 0x18]
00000001405b627c mov      rcx, qword ptr [rdi + 8]
00000001405b6280 mov      rax, qword ptr [rax + 0x118]
00000001405b6287 call     qword ptr [rip + 0xce06b]
00000001405b628d mov      eax, dword ptr [rbp + 0x30]
00000001405b6290 lea      r8, [rip + 0xc86c9]
00000001405b6297 and      eax, 0xffffffef
00000001405b629a mov      r9d, r14d
00000001405b629d or       eax, 0xf
00000001405b62a0 mov      edx, r13d
00000001405b62a3 mov      dword ptr [rbp + 0x30], eax
00000001405b62a6 mov      rax, qword ptr [rdi + 0x18]
00000001405b62aa mov      rcx, qword ptr [rdi + 8]
00000001405b62ae mov      rax, qword ptr [rax + 0x118]
00000001405b62b5 call     qword ptr [rip + 0xce03d]
00000001405b62bb mov      rax, qword ptr [rsi + 0x28]
00000001405b62bf mov      edx, ebx
00000001405b62c1 mov      r8d, dword ptr [rbp + 0x30]
00000001405b62c5 mov      rcx, rdi
00000001405b62c8 call     qword ptr [rip + 0xce02a]
00000001405b62ce mov      rax, qword ptr [rsi]
00000001405b62d1 lea      r15d, [rbx - 4]
00000001405b62d5 mov      edx, r15d
00000001405b62d8 mov      rcx, rdi
00000001405b62db call     qword ptr [rip + 0xce017]
00000001405b62e1 mov      rcx, qword ptr [rdi + 8]
00000001405b62e5 lea      r9d, [r14 - 4]
00000001405b62e9 mov      bl, al
00000001405b62eb lea      r8, [rip + 0xc872e]
00000001405b62f2 mov      rax, qword ptr [rdi + 0x18]
00000001405b62f6 and      bl, 0xf3
00000001405b62f9 mov      edx, r13d
00000001405b62fc or       bl, 3
00000001405b62ff mov      rax, qword ptr [rax + 0x118]
00000001405b6306 call     qword ptr [rip + 0xcdfec]
00000001405b630c mov      rax, qword ptr [rsi + 8]
00000001405b6310 mov      r8b, bl
00000001405b6313 mov      edx, r15d
00000001405b6316 mov      rcx, rdi
00000001405b6319 call     qword ptr [rip + 0xcdfd9]
00000001405b631f mov      rax, qword ptr [rdi + 0x18]
00000001405b6323 lea      r8, [rip + 0xb5356]
00000001405b632a mov      rcx, qword ptr [rdi + 8]
00000001405b632e mov      edx, r13d
00000001405b6331 mov      rax, qword ptr [rax + 0x118]
00000001405b6338 call     qword ptr [rip + 0xcdfba]
00000001405b633e lea      rdx, [rip + 0x71c193]
00000001405b6345 jmp      0x1405bd0a2
00000001405b634a mov      rax, qword ptr [rdi + 0x18]
00000001405b634e lea      r8, [rip + 0xb529b]
00000001405b6355 mov      rcx, qword ptr [rdi + 8]
00000001405b6359 mov      edx, r13d
00000001405b635c mov      rax, qword ptr [rax + 0x118]
00000001405b6363 call     qword ptr [rip + 0xcdf8f]
00000001405b6369 mov      rax, qword ptr [rsi + 0x20]
00000001405b636d mov      ebx, 0x4200
00000001405b6372 mov      edx, ebx
00000001405b6374 mov      rcx, rdi
00000001405b6377 call     qword ptr [rip + 0xcdf7b]
00000001405b637d mov      r14d, 0x18604200
00000001405b6383 lea      r8, [rip + 0xc8126]
00000001405b638a btr      eax, 0x10
00000001405b638e mov      r9d, r14d
00000001405b6391 mov      dword ptr [rbp + 0x30], eax
00000001405b6394 mov      edx, r13d
00000001405b6397 mov      rax, qword ptr [rdi + 0x18]
00000001405b639b mov      rcx, qword ptr [rdi + 8]
00000001405b639f mov      rax, qword ptr [rax + 0x118]
00000001405b63a6 call     qword ptr [rip + 0xcdf4c]
00000001405b63ac mov      eax, dword ptr [rbp + 0x30]
00000001405b63af lea      r8, [rip + 0xc85aa]
00000001405b63b6 and      eax, 0xffffffef
00000001405b63b9 mov      r9d, r14d
00000001405b63bc or       eax, 0xf
00000001405b63bf mov      edx, r13d
00000001405b63c2 mov      dword ptr [rbp + 0x30], eax
00000001405b63c5 mov      rax, qword ptr [rdi + 0x18]
00000001405b63c9 mov      rcx, qword ptr [rdi + 8]
00000001405b63cd mov      rax, qword ptr [rax + 0x118]
00000001405b63d4 call     qword ptr [rip + 0xcdf1e]
00000001405b63da mov      rax, qword ptr [rsi + 0x28]
00000001405b63de mov      edx, ebx
00000001405b63e0 mov      r8d, dword ptr [rbp + 0x30]
00000001405b63e4 mov      rcx, rdi
00000001405b63e7 call     qword ptr [rip + 0xcdf0b]
00000001405b63ed mov      rax, qword ptr [rsi]
00000001405b63f0 lea      r15d, [rbx - 4]
00000001405b63f4 mov      edx, r15d
00000001405b63f7 mov      rcx, rdi
00000001405b63fa call     qword ptr [rip + 0xcdef8]
00000001405b6400 mov      rcx, qword ptr [rdi + 8]
00000001405b6404 lea      r9d, [r14 - 4]
00000001405b6408 mov      bl, al
00000001405b640a lea      r8, [rip + 0xc85df]
00000001405b6411 mov      rax, qword ptr [rdi + 0x18]
00000001405b6415 and      bl, 0xf2
00000001405b6418 mov      edx, r13d
00000001405b641b or       bl, 2
00000001405b641e mov      rax, qword ptr [rax + 0x118]
00000001405b6425 call     qword ptr [rip + 0xcdecd]
00000001405b642b mov      rax, qword ptr [rsi + 8]
00000001405b642f mov      r8b, bl
00000001405b6432 mov      edx, r15d
00000001405b6435 mov      rcx, rdi
00000001405b6438 call     qword ptr [rip + 0xcdeba]
00000001405b643e mov      rax, qword ptr [rdi + 0x18]
00000001405b6442 lea      r8, [rip + 0xb51d7]
00000001405b6449 mov      rcx, qword ptr [rdi + 8]
00000001405b644d mov      edx, r13d
00000001405b6450 mov      rax, qword ptr [rax + 0x118]
00000001405b6457 call     qword ptr [rip + 0xcde9b]
00000001405b645d lea      rdx, [rip + 0x71c064]
00000001405b6464 jmp      0x1405bd0a2
00000001405b6469 mov      rax, qword ptr [rdi + 0x18]
00000001405b646d lea      r8, [rip + 0xb510c]
00000001405b6474 mov      rcx, qword ptr [rdi + 8]
00000001405b6478 mov      edx, r13d
00000001405b647b mov      rax, qword ptr [rax + 0x118]
00000001405b6482 call     qword ptr [rip + 0xcde70]
00000001405b6488 mov      rax, qword ptr [rsi + 0x20]
00000001405b648c mov      ebx, 0x4200
00000001405b6491 mov      edx, ebx
00000001405b6493 mov      rcx, rdi
00000001405b6496 call     qword ptr [rip + 0xcde5c]
00000001405b649c mov      r14d, 0x18604200
00000001405b64a2 lea      r8, [rip + 0xc8007]
00000001405b64a9 btr      eax, 0x10
00000001405b64ad mov      r9d, r14d
00000001405b64b0 mov      dword ptr [rbp + 0x30], eax
00000001405b64b3 mov      edx, r13d
00000001405b64b6 mov      rax, qword ptr [rdi + 0x18]
00000001405b64ba mov      rcx, qword ptr [rdi + 8]
00000001405b64be mov      rax, qword ptr [rax + 0x118]
00000001405b64c5 call     qword ptr [rip + 0xcde2d]
00000001405b64cb mov      eax, dword ptr [rbp + 0x30]
00000001405b64ce lea      r8, [rip + 0xc848b]
00000001405b64d5 and      eax, 0xffffffef
00000001405b64d8 mov      r9d, r14d
00000001405b64db or       eax, 0xf
00000001405b64de mov      edx, r13d
00000001405b64e1 mov      dword ptr [rbp + 0x30], eax
00000001405b64e4 mov      rax, qword ptr [rdi + 0x18]
00000001405b64e8 mov      rcx, qword ptr [rdi + 8]
00000001405b64ec mov      rax, qword ptr [rax + 0x118]
00000001405b64f3 call     qword ptr [rip + 0xcddff]
00000001405b64f9 mov      rax, qword ptr [rsi + 0x28]
00000001405b64fd mov      edx, ebx
00000001405b64ff mov      r8d, dword ptr [rbp + 0x30]
00000001405b6503 mov      rcx, rdi
00000001405b6506 call     qword ptr [rip + 0xcddec]
00000001405b650c mov      rax, qword ptr [rsi]
00000001405b650f lea      r15d, [rbx - 4]
00000001405b6513 mov      edx, r15d
00000001405b6516 mov      rcx, rdi
00000001405b6519 call     qword ptr [rip + 0xcddd9]
00000001405b651f mov      rcx, qword ptr [rdi + 8]
00000001405b6523 lea      r9d, [r14 - 4]
00000001405b6527 mov      bl, al
00000001405b6529 lea      r8, [rip + 0xc8490]
00000001405b6530 mov      rax, qword ptr [rdi + 0x18]
00000001405b6534 and      bl, 0xf1
00000001405b6537 mov      edx, r13d
00000001405b653a or       bl, r13b
00000001405b653d mov      rax, qword ptr [rax + 0x118]
00000001405b6544 call     qword ptr [rip + 0xcddae]
00000001405b654a mov      rax, qword ptr [rsi + 8]
00000001405b654e mov      r8b, bl
00000001405b6551 mov      edx, r15d
00000001405b6554 mov      rcx, rdi
00000001405b6557 call     qword ptr [rip + 0xcdd9b]
00000001405b655d mov      rax, qword ptr [rdi + 0x18]
00000001405b6561 lea      r8, [rip + 0xb5048]
00000001405b6568 mov      rcx, qword ptr [rdi + 8]
00000001405b656c mov      edx, r13d
00000001405b656f mov      rax, qword ptr [rax + 0x118]
00000001405b6576 call     qword ptr [rip + 0xcdd7c]
00000001405b657c lea      rdx, [rip + 0x71bf35]
00000001405b6583 jmp      0x1405bd0a2
00000001405b6588 mov      rax, qword ptr [rdi + 0x18]
00000001405b658c lea      r8, [rip + 0xb51dd]
00000001405b6593 mov      rcx, qword ptr [rdi + 8]
00000001405b6597 mov      edx, r13d
00000001405b659a mov      rax, qword ptr [rax + 0x118]
00000001405b65a1 call     qword ptr [rip + 0xcdd51]
00000001405b65a7 mov      rax, qword ptr [rsi + 0x20]
00000001405b65ab mov      ebx, 0x4200
00000001405b65b0 mov      edx, ebx
00000001405b65b2 mov      rcx, rdi
00000001405b65b5 call     qword ptr [rip + 0xcdd3d]
00000001405b65bb mov      r14d, 0x18604200
00000001405b65c1 lea      r8, [rip + 0xc7ee8]
00000001405b65c8 btr      eax, 0x10
00000001405b65cc mov      r9d, r14d
00000001405b65cf mov      dword ptr [rbp + 0x30], eax
00000001405b65d2 mov      edx, r13d
00000001405b65d5 mov      rax, qword ptr [rdi + 0x18]
00000001405b65d9 mov      rcx, qword ptr [rdi + 8]
00000001405b65dd mov      rax, qword ptr [rax + 0x118]
00000001405b65e4 call     qword ptr [rip + 0xcdd0e]
00000001405b65ea mov      eax, dword ptr [rbp + 0x30]
00000001405b65ed lea      r8, [rip + 0xc836c]
00000001405b65f4 and      eax, 0xffffffef
00000001405b65f7 mov      r9d, r14d
00000001405b65fa or       eax, 0xf
00000001405b65fd mov      edx, r13d
00000001405b6600 mov      dword ptr [rbp + 0x30], eax
00000001405b6603 mov      rax, qword ptr [rdi + 0x18]
00000001405b6607 mov      rcx, qword ptr [rdi + 8]
00000001405b660b mov      rax, qword ptr [rax + 0x118]
00000001405b6612 call     qword ptr [rip + 0xcdce0]
00000001405b6618 mov      rax, qword ptr [rsi + 0x28]
00000001405b661c mov      edx, ebx
00000001405b661e mov      r8d, dword ptr [rbp + 0x30]
00000001405b6622 mov      rcx, rdi
00000001405b6625 call     qword ptr [rip + 0xcdccd]
00000001405b662b mov      rax, qword ptr [rsi]
00000001405b662e lea      r15d, [rbx - 4]
00000001405b6632 mov      edx, r15d
00000001405b6635 mov      rcx, rdi
00000001405b6638 call     qword ptr [rip + 0xcdcba]
00000001405b663e mov      rcx, qword ptr [rdi + 8]
00000001405b6642 lea      r9d, [r14 - 4]
00000001405b6646 mov      bl, al
00000001405b6648 lea      r8, [rip + 0xc8431]
00000001405b664f mov      rax, qword ptr [rdi + 0x18]
00000001405b6653 and      bl, 0xfa
00000001405b6656 mov      edx, r13d
00000001405b6659 or       bl, 0xa
00000001405b665c mov      rax, qword ptr [rax + 0x118]
00000001405b6663 call     qword ptr [rip + 0xcdc8f]
00000001405b6669 mov      rax, qword ptr [rsi + 8]
00000001405b666d mov      r8b, bl
00000001405b6670 mov      edx, r15d
00000001405b6673 mov      rcx, rdi
00000001405b6676 call     qword ptr [rip + 0xcdc7c]
00000001405b667c mov      rax, qword ptr [rdi + 0x18]
00000001405b6680 lea      r8, [rip + 0xb5119]
00000001405b6687 mov      rcx, qword ptr [rdi + 8]
00000001405b668b mov      edx, r13d
00000001405b668e mov      rax, qword ptr [rax + 0x118]
00000001405b6695 call     qword ptr [rip + 0xcdc5d]
00000001405b669b lea      rdx, [rip + 0x71be66]
00000001405b66a2 jmp      0x1405bd0a2
00000001405b66a7 mov      eax, 0x91
00000001405b66ac cmp      ebx, eax
00000001405b66ae ja       0x1405b6e43
00000001405b66b4 je       0x1405b6df9
00000001405b66ba cmp      ebx, 0x8b
00000001405b66c0 ja       0x1405b6c5b
00000001405b66c6 je       0x1405b6c11
00000001405b66cc sub      ebx, 0x85
00000001405b66d2 je       0x1405b6af2
00000001405b66d8 sub      ebx, r13d
00000001405b66db je       0x1405b69d3
00000001405b66e1 sub      ebx, r13d
00000001405b66e4 je       0x1405b68b4
00000001405b66ea sub      ebx, r13d
00000001405b66ed je       0x1405b6795
00000001405b66f3 sub      ebx, r13d
00000001405b66f6 je       0x1405b674b
00000001405b66f8 cmp      ebx, r13d
00000001405b66fb jne      0x1405bca8d
00000001405b6701 mov      rax, qword ptr [rdi + 0x18]
00000001405b6705 lea      r8, [rip + 0xb41a4]
00000001405b670c mov      rcx, qword ptr [rdi + 8]
00000001405b6710 mov      edx, r13d
00000001405b6713 mov      rax, qword ptr [rax + 0x118]
00000001405b671a call     qword ptr [rip + 0xcdbd8]
00000001405b6720 mov      rax, qword ptr [rdi + 0x18]
00000001405b6724 lea      r8, [rip + 0xb41b5]
00000001405b672b mov      rcx, qword ptr [rdi + 8]
00000001405b672f mov      edx, r13d
00000001405b6732 mov      rax, qword ptr [rax + 0x118]
00000001405b6739 call     qword ptr [rip + 0xcdbb9]
00000001405b673f lea      rdx, [rip + 0x71be22]
00000001405b6746 jmp      0x1405bd0a2
00000001405b674b mov      rax, qword ptr [rdi + 0x18]
00000001405b674f lea      r8, [rip + 0xb40fa]
00000001405b6756 mov      rcx, qword ptr [rdi + 8]
00000001405b675a mov      edx, r13d
00000001405b675d mov      rax, qword ptr [rax + 0x118]
00000001405b6764 call     qword ptr [rip + 0xcdb8e]
00000001405b676a mov      rax, qword ptr [rdi + 0x18]
00000001405b676e lea      r8, [rip + 0xb410b]
00000001405b6775 mov      rcx, qword ptr [rdi + 8]
00000001405b6779 mov      edx, r13d
00000001405b677c mov      rax, qword ptr [rax + 0x118]
00000001405b6783 call     qword ptr [rip + 0xcdb6f]
00000001405b6789 lea      rdx, [rip + 0x71bdc8]
00000001405b6790 jmp      0x1405bd0a2
00000001405b6795 mov      rax, qword ptr [rdi + 0x18]
00000001405b6799 lea      r8, [rip + 0xb5180]
00000001405b67a0 mov      rcx, qword ptr [rdi + 8]
00000001405b67a4 mov      edx, r13d
00000001405b67a7 mov      rax, qword ptr [rax + 0x118]
00000001405b67ae call     qword ptr [rip + 0xcdb44]
00000001405b67b4 mov      rax, qword ptr [rsi + 0x20]
00000001405b67b8 mov      ebx, 0x4200
00000001405b67bd mov      edx, ebx
00000001405b67bf mov      rcx, rdi
00000001405b67c2 call     qword ptr [rip + 0xcdb30]
00000001405b67c8 mov      r14d, 0x18604200
00000001405b67ce lea      r8, [rip + 0xc7cdb]
00000001405b67d5 btr      eax, 0x10
00000001405b67d9 mov      r9d, r14d
00000001405b67dc mov      dword ptr [rbp + 0x30], eax
00000001405b67df mov      edx, r13d
00000001405b67e2 mov      rax, qword ptr [rdi + 0x18]
00000001405b67e6 mov      rcx, qword ptr [rdi + 8]
00000001405b67ea mov      rax, qword ptr [rax + 0x118]
00000001405b67f1 call     qword ptr [rip + 0xcdb01]
00000001405b67f7 mov      eax, dword ptr [rbp + 0x30]
00000001405b67fa lea      r8, [rip + 0xc815f]
00000001405b6801 and      eax, 0xffffffef
00000001405b6804 mov      r9d, r14d
00000001405b6807 or       eax, 0xf
00000001405b680a mov      edx, r13d
00000001405b680d mov      dword ptr [rbp + 0x30], eax
00000001405b6810 mov      rax, qword ptr [rdi + 0x18]
00000001405b6814 mov      rcx, qword ptr [rdi + 8]
00000001405b6818 mov      rax, qword ptr [rax + 0x118]
00000001405b681f call     qword ptr [rip + 0xcdad3]
00000001405b6825 mov      rax, qword ptr [rsi + 0x28]
00000001405b6829 mov      edx, ebx
00000001405b682b mov      r8d, dword ptr [rbp + 0x30]
00000001405b682f mov      rcx, rdi
00000001405b6832 call     qword ptr [rip + 0xcdac0]
00000001405b6838 mov      rax, qword ptr [rsi]
00000001405b683b lea      r15d, [rbx - 4]
00000001405b683f mov      edx, r15d
00000001405b6842 mov      rcx, rdi
00000001405b6845 call     qword ptr [rip + 0xcdaad]
00000001405b684b mov      rcx, qword ptr [rdi + 8]
00000001405b684f lea      r9d, [r14 - 4]
00000001405b6853 mov      bl, al
00000001405b6855 lea      r8, [rip + 0xc82b4]
00000001405b685c mov      rax, qword ptr [rdi + 0x18]
00000001405b6860 and      bl, 0xfd
00000001405b6863 mov      edx, r13d
00000001405b6866 or       bl, 0xd
00000001405b6869 mov      rax, qword ptr [rax + 0x118]
00000001405b6870 call     qword ptr [rip + 0xcda82]
00000001405b6876 mov      rax, qword ptr [rsi + 8]
00000001405b687a mov      r8b, bl
00000001405b687d mov      edx, r15d
00000001405b6880 mov      rcx, rdi
00000001405b6883 call     qword ptr [rip + 0xcda6f]
00000001405b6889 mov      rax, qword ptr [rdi + 0x18]
00000001405b688d lea      r8, [rip + 0xb50fc]
00000001405b6894 mov      rcx, qword ptr [rdi + 8]
00000001405b6898 mov      edx, r13d
00000001405b689b mov      rax, qword ptr [rax + 0x118]
00000001405b68a2 call     qword ptr [rip + 0xcda50]
00000001405b68a8 lea      rdx, [rip + 0x71bc99]
00000001405b68af jmp      0x1405bd0a2
00000001405b68b4 mov      rax, qword ptr [rdi + 0x18]
00000001405b68b8 lea      r8, [rip + 0xb5001]
00000001405b68bf mov      rcx, qword ptr [rdi + 8]
00000001405b68c3 mov      edx, r13d
00000001405b68c6 mov      rax, qword ptr [rax + 0x118]
00000001405b68cd call     qword ptr [rip + 0xcda25]
00000001405b68d3 mov      rax, qword ptr [rsi + 0x20]
00000001405b68d7 mov      ebx, 0x4200
00000001405b68dc mov      edx, ebx
00000001405b68de mov      rcx, rdi
00000001405b68e1 call     qword ptr [rip + 0xcda11]
00000001405b68e7 mov      r14d, 0x18604200
00000001405b68ed lea      r8, [rip + 0xc7bbc]
00000001405b68f4 btr      eax, 0x10
00000001405b68f8 mov      r9d, r14d
00000001405b68fb mov      dword ptr [rbp + 0x30], eax
00000001405b68fe mov      edx, r13d
00000001405b6901 mov      rax, qword ptr [rdi + 0x18]
00000001405b6905 mov      rcx, qword ptr [rdi + 8]
00000001405b6909 mov      rax, qword ptr [rax + 0x118]
00000001405b6910 call     qword ptr [rip + 0xcd9e2]
00000001405b6916 mov      eax, dword ptr [rbp + 0x30]
00000001405b6919 lea      r8, [rip + 0xc8040]
00000001405b6920 and      eax, 0xffffffef
00000001405b6923 mov      r9d, r14d
00000001405b6926 or       eax, 0xf
00000001405b6929 mov      edx, r13d
00000001405b692c mov      dword ptr [rbp + 0x30], eax
00000001405b692f mov      rax, qword ptr [rdi + 0x18]
00000001405b6933 mov      rcx, qword ptr [rdi + 8]
00000001405b6937 mov      rax, qword ptr [rax + 0x118]
00000001405b693e call     qword ptr [rip + 0xcd9b4]
00000001405b6944 mov      rax, qword ptr [rsi + 0x28]
00000001405b6948 mov      edx, ebx
00000001405b694a mov      r8d, dword ptr [rbp + 0x30]
00000001405b694e mov      rcx, rdi
00000001405b6951 call     qword ptr [rip + 0xcd9a1]
00000001405b6957 mov      rax, qword ptr [rsi]
00000001405b695a lea      r15d, [rbx - 4]
00000001405b695e mov      edx, r15d
00000001405b6961 mov      rcx, rdi
00000001405b6964 call     qword ptr [rip + 0xcd98e]
00000001405b696a mov      rcx, qword ptr [rdi + 8]
00000001405b696e lea      r9d, [r14 - 4]
00000001405b6972 mov      bl, al
00000001405b6974 lea      r8, [rip + 0xc8165]
00000001405b697b mov      rax, qword ptr [rdi + 0x18]
00000001405b697f and      bl, 0xfc
00000001405b6982 mov      edx, r13d
00000001405b6985 or       bl, 0xc
00000001405b6988 mov      rax, qword ptr [rax + 0x118]
00000001405b698f call     qword ptr [rip + 0xcd963]
00000001405b6995 mov      rax, qword ptr [rsi + 8]
00000001405b6999 mov      r8b, bl
00000001405b699c mov      edx, r15d
00000001405b699f mov      rcx, rdi
00000001405b69a2 call     qword ptr [rip + 0xcd950]
00000001405b69a8 mov      rax, qword ptr [rdi + 0x18]
00000001405b69ac lea      r8, [rip + 0xb4f3d]
00000001405b69b3 mov      rcx, qword ptr [rdi + 8]
00000001405b69b7 mov      edx, r13d
00000001405b69ba mov      rax, qword ptr [rax + 0x118]
00000001405b69c1 call     qword ptr [rip + 0xcd931]
00000001405b69c7 lea      rdx, [rip + 0x71bb6a]
00000001405b69ce jmp      0x1405bd0a2
00000001405b69d3 mov      rax, qword ptr [rdi + 0x18]
00000001405b69d7 lea      r8, [rip + 0xb4e82]
00000001405b69de mov      rcx, qword ptr [rdi + 8]
00000001405b69e2 mov      edx, r13d
00000001405b69e5 mov      rax, qword ptr [rax + 0x118]
00000001405b69ec call     qword ptr [rip + 0xcd906]
00000001405b69f2 mov      rax, qword ptr [rsi + 0x20]
00000001405b69f6 mov      ebx, 0x4200
00000001405b69fb mov      edx, ebx
00000001405b69fd mov      rcx, rdi
00000001405b6a00 call     qword ptr [rip + 0xcd8f2]
00000001405b6a06 mov      r14d, 0x18604200
00000001405b6a0c lea      r8, [rip + 0xc7a9d]
00000001405b6a13 btr      eax, 0x10
00000001405b6a17 mov      r9d, r14d
00000001405b6a1a mov      dword ptr [rbp + 0x30], eax
00000001405b6a1d mov      edx, r13d
00000001405b6a20 mov      rax, qword ptr [rdi + 0x18]
00000001405b6a24 mov      rcx, qword ptr [rdi + 8]
00000001405b6a28 mov      rax, qword ptr [rax + 0x118]
00000001405b6a2f call     qword ptr [rip + 0xcd8c3]
00000001405b6a35 mov      eax, dword ptr [rbp + 0x30]
00000001405b6a38 lea      r8, [rip + 0xc7f21]
00000001405b6a3f and      eax, 0xffffffef
00000001405b6a42 mov      r9d, r14d
00000001405b6a45 or       eax, 0xf
00000001405b6a48 mov      edx, r13d
00000001405b6a4b mov      dword ptr [rbp + 0x30], eax
00000001405b6a4e mov      rax, qword ptr [rdi + 0x18]
00000001405b6a52 mov      rcx, qword ptr [rdi + 8]
00000001405b6a56 mov      rax, qword ptr [rax + 0x118]
00000001405b6a5d call     qword ptr [rip + 0xcd895]
00000001405b6a63 mov      rax, qword ptr [rsi + 0x28]
00000001405b6a67 mov      edx, ebx
00000001405b6a69 mov      r8d, dword ptr [rbp + 0x30]
00000001405b6a6d mov      rcx, rdi
00000001405b6a70 call     qword ptr [rip + 0xcd882]
00000001405b6a76 mov      rax, qword ptr [rsi]
00000001405b6a79 lea      r15d, [rbx - 4]
00000001405b6a7d mov      edx, r15d
00000001405b6a80 mov      rcx, rdi
00000001405b6a83 call     qword ptr [rip + 0xcd86f]
00000001405b6a89 mov      rcx, qword ptr [rdi + 8]
00000001405b6a8d lea      r9d, [r14 - 4]
00000001405b6a91 mov      bl, al
00000001405b6a93 lea      r8, [rip + 0xc8046]
00000001405b6a9a mov      rax, qword ptr [rdi + 0x18]
00000001405b6a9e and      bl, 0xfc
00000001405b6aa1 mov      edx, r13d
00000001405b6aa4 or       bl, 0xc
00000001405b6aa7 mov      rax, qword ptr [rax + 0x118]
00000001405b6aae call     qword ptr [rip + 0xcd844]
00000001405b6ab4 mov      rax, qword ptr [rsi + 8]
00000001405b6ab8 mov      r8b, bl
00000001405b6abb mov      edx, r15d
00000001405b6abe mov      rcx, rdi
00000001405b6ac1 call     qword ptr [rip + 0xcd831]
00000001405b6ac7 mov      rax, qword ptr [rdi + 0x18]
00000001405b6acb lea      r8, [rip + 0xb4dbe]
00000001405b6ad2 mov      rcx, qword ptr [rdi + 8]
00000001405b6ad6 mov      edx, r13d
00000001405b6ad9 mov      rax, qword ptr [rax + 0x118]
00000001405b6ae0 call     qword ptr [rip + 0xcd812]
00000001405b6ae6 lea      rdx, [rip + 0x71ba3b]
00000001405b6aed jmp      0x1405bd0a2
00000001405b6af2 mov      rax, qword ptr [rdi + 0x18]
00000001405b6af6 lea      r8, [rip + 0xb4cd3]
00000001405b6afd mov      rcx, qword ptr [rdi + 8]
00000001405b6b01 mov      edx, r13d
00000001405b6b04 mov      rax, qword ptr [rax + 0x118]
00000001405b6b0b call     qword ptr [rip + 0xcd7e7]
00000001405b6b11 mov      rax, qword ptr [rsi + 0x20]
00000001405b6b15 mov      ebx, 0x4200
00000001405b6b1a mov      edx, ebx
00000001405b6b1c mov      rcx, rdi
00000001405b6b1f call     qword ptr [rip + 0xcd7d3]
00000001405b6b25 mov      r14d, 0x18604200
00000001405b6b2b lea      r8, [rip + 0xc797e]
00000001405b6b32 btr      eax, 0x10
00000001405b6b36 mov      r9d, r14d
00000001405b6b39 mov      dword ptr [rbp + 0x30], eax
00000001405b6b3c mov      edx, r13d
00000001405b6b3f mov      rax, qword ptr [rdi + 0x18]
00000001405b6b43 mov      rcx, qword ptr [rdi + 8]
00000001405b6b47 mov      rax, qword ptr [rax + 0x118]
00000001405b6b4e call     qword ptr [rip + 0xcd7a4]
00000001405b6b54 mov      eax, dword ptr [rbp + 0x30]
00000001405b6b57 lea      r8, [rip + 0xc7e02]
00000001405b6b5e and      eax, 0xffffffef
00000001405b6b61 mov      r9d, r14d
00000001405b6b64 or       eax, 0xf
00000001405b6b67 mov      edx, r13d
00000001405b6b6a mov      dword ptr [rbp + 0x30], eax
00000001405b6b6d mov      rax, qword ptr [rdi + 0x18]
00000001405b6b71 mov      rcx, qword ptr [rdi + 8]
00000001405b6b75 mov      rax, qword ptr [rax + 0x118]
00000001405b6b7c call     qword ptr [rip + 0xcd776]
00000001405b6b82 mov      rax, qword ptr [rsi + 0x28]
00000001405b6b86 mov      edx, ebx
00000001405b6b88 mov      r8d, dword ptr [rbp + 0x30]
00000001405b6b8c mov      rcx, rdi
00000001405b6b8f call     qword ptr [rip + 0xcd763]
00000001405b6b95 mov      rax, qword ptr [rsi]
00000001405b6b98 lea      r15d, [rbx - 4]
00000001405b6b9c mov      edx, r15d
00000001405b6b9f mov      rcx, rdi
00000001405b6ba2 call     qword ptr [rip + 0xcd750]
00000001405b6ba8 mov      rcx, qword ptr [rdi + 8]
00000001405b6bac lea      r9d, [r14 - 4]
00000001405b6bb0 mov      bl, al
00000001405b6bb2 lea      r8, [rip + 0xc7ef7]
00000001405b6bb9 mov      rax, qword ptr [rdi + 0x18]
00000001405b6bbd and      bl, 0xfb
00000001405b6bc0 mov      edx, r13d
00000001405b6bc3 or       bl, 0xb
00000001405b6bc6 mov      rax, qword ptr [rax + 0x118]
00000001405b6bcd call     qword ptr [rip + 0xcd725]
00000001405b6bd3 mov      rax, qword ptr [rsi + 8]
00000001405b6bd7 mov      r8b, bl
00000001405b6bda mov      edx, r15d
00000001405b6bdd mov      rcx, rdi
00000001405b6be0 call     qword ptr [rip + 0xcd712]
00000001405b6be6 mov      rax, qword ptr [rdi + 0x18]
00000001405b6bea lea      r8, [rip + 0xb4c3f]
00000001405b6bf1 mov      rcx, qword ptr [rdi + 8]
00000001405b6bf5 mov      edx, r13d
00000001405b6bf8 mov      rax, qword ptr [rax + 0x118]
00000001405b6bff call     qword ptr [rip + 0xcd6f3]
00000001405b6c05 lea      rdx, [rip + 0x71b90c]
00000001405b6c0c jmp      0x1405bd0a2
00000001405b6c11 mov      rax, qword ptr [rdi + 0x18]
00000001405b6c15 lea      r8, [rip + 0xc7f24]
00000001405b6c1c mov      rcx, qword ptr [rdi + 8]
00000001405b6c20 mov      edx, r13d
00000001405b6c23 mov      rax, qword ptr [rax + 0x118]
00000001405b6c2a call     qword ptr [rip + 0xcd6c8]
00000001405b6c30 mov      rax, qword ptr [rdi + 0x18]
00000001405b6c34 lea      r8, [rip + 0xc7f35]
00000001405b6c3b mov      rcx, qword ptr [rdi + 8]
00000001405b6c3f mov      edx, r13d
00000001405b6c42 mov      rax, qword ptr [rax + 0x118]
00000001405b6c49 call     qword ptr [rip + 0xcd6a9]
00000001405b6c4f lea      rdx, [rip + 0x71b922]
00000001405b6c56 jmp      0x1405bd0a2
00000001405b6c5b sub      ebx, 0x8c
00000001405b6c61 je       0x1405b6daf
00000001405b6c67 sub      ebx, r13d
00000001405b6c6a je       0x1405b6d65
00000001405b6c70 sub      ebx, r13d
00000001405b6c73 je       0x1405b6d1b
00000001405b6c79 sub      ebx, r13d
00000001405b6c7c je       0x1405b6cd1
00000001405b6c7e cmp      ebx, r13d
00000001405b6c81 jne      0x1405bca8d
00000001405b6c87 mov      rax, qword ptr [rdi + 0x18]
00000001405b6c8b lea      r8, [rip + 0xb3d8e]
00000001405b6c92 mov      rcx, qword ptr [rdi + 8]
00000001405b6c96 mov      edx, r13d
00000001405b6c99 mov      rax, qword ptr [rax + 0x118]
00000001405b6ca0 call     qword ptr [rip + 0xcd652]
00000001405b6ca6 mov      rax, qword ptr [rdi + 0x18]
00000001405b6caa lea      r8, [rip + 0xb3d9f]
00000001405b6cb1 mov      rcx, qword ptr [rdi + 8]
00000001405b6cb5 mov      edx, r13d
00000001405b6cb8 mov      rax, qword ptr [rax + 0x118]
00000001405b6cbf call     qword ptr [rip + 0xcd633]
00000001405b6cc5 lea      rdx, [rip + 0x71b8fc]
00000001405b6ccc jmp      0x1405bd0a2
00000001405b6cd1 mov      rax, qword ptr [rdi + 0x18]
00000001405b6cd5 lea      r8, [rip + 0xb3ce4]
00000001405b6cdc mov      rcx, qword ptr [rdi + 8]
00000001405b6ce0 mov      edx, r13d
00000001405b6ce3 mov      rax, qword ptr [rax + 0x118]
00000001405b6cea call     qword ptr [rip + 0xcd608]
00000001405b6cf0 mov      rax, qword ptr [rdi + 0x18]
00000001405b6cf4 lea      r8, [rip + 0xb3cf5]
00000001405b6cfb mov      rcx, qword ptr [rdi + 8]
00000001405b6cff mov      edx, r13d
00000001405b6d02 mov      rax, qword ptr [rax + 0x118]
00000001405b6d09 call     qword ptr [rip + 0xcd5e9]
00000001405b6d0f lea      rdx, [rip + 0x71b8a2]
00000001405b6d16 jmp      0x1405bd0a2
00000001405b6d1b mov      rax, qword ptr [rdi + 0x18]
00000001405b6d1f lea      r8, [rip + 0xb3c3a]
00000001405b6d26 mov      rcx, qword ptr [rdi + 8]
00000001405b6d2a mov      edx, r13d
00000001405b6d2d mov      rax, qword ptr [rax + 0x118]
00000001405b6d34 call     qword ptr [rip + 0xcd5be]
00000001405b6d3a mov      rax, qword ptr [rdi + 0x18]
00000001405b6d3e lea      r8, [rip + 0xb3c4b]
00000001405b6d45 mov      rcx, qword ptr [rdi + 8]
00000001405b6d49 mov      edx, r13d
00000001405b6d4c mov      rax, qword ptr [rax + 0x118]
00000001405b6d53 call     qword ptr [rip + 0xcd59f]
00000001405b6d59 lea      rdx, [rip + 0x71b848]
00000001405b6d60 jmp      0x1405bd0a2
00000001405b6d65 mov      rax, qword ptr [rdi + 0x18]
00000001405b6d69 lea      r8, [rip + 0xb3ba0]
00000001405b6d70 mov      rcx, qword ptr [rdi + 8]
00000001405b6d74 mov      edx, r13d
00000001405b6d77 mov      rax, qword ptr [rax + 0x118]
00000001405b6d7e call     qword ptr [rip + 0xcd574]
00000001405b6d84 mov      rax, qword ptr [rdi + 0x18]
00000001405b6d88 lea      r8, [rip + 0xb3ba1]
00000001405b6d8f mov      rcx, qword ptr [rdi + 8]
00000001405b6d93 mov      edx, r13d
00000001405b6d96 mov      rax, qword ptr [rax + 0x118]
00000001405b6d9d call     qword ptr [rip + 0xcd555]
00000001405b6da3 lea      rdx, [rip + 0x71b7ee]
00000001405b6daa jmp      0x1405bd0a2
00000001405b6daf mov      rax, qword ptr [rdi + 0x18]
00000001405b6db3 lea      r8, [rip + 0xc7de6]
00000001405b6dba mov      rcx, qword ptr [rdi + 8]
00000001405b6dbe mov      edx, r13d
00000001405b6dc1 mov      rax, qword ptr [rax + 0x118]
00000001405b6dc8 call     qword ptr [rip + 0xcd52a]
00000001405b6dce mov      rax, qword ptr [rdi + 0x18]
00000001405b6dd2 lea      r8, [rip + 0xc7df7]
00000001405b6dd9 mov      rcx, qword ptr [rdi + 8]
00000001405b6ddd mov      edx, r13d
00000001405b6de0 mov      rax, qword ptr [rax + 0x118]
00000001405b6de7 call     qword ptr [rip + 0xcd50b]
00000001405b6ded lea      rdx, [rip + 0x71b794]
00000001405b6df4 jmp      0x1405bd0a2
00000001405b6df9 mov      rax, qword ptr [rdi + 0x18]
00000001405b6dfd lea      r8, [rip + 0xb554c]
00000001405b6e04 mov      rcx, qword ptr [rdi + 8]
00000001405b6e08 mov      edx, r13d
00000001405b6e0b mov      rax, qword ptr [rax + 0x118]
00000001405b6e12 call     qword ptr [rip + 0xcd4e0]
00000001405b6e18 mov      rax, qword ptr [rdi + 0x18]
00000001405b6e1c lea      r8, [rip + 0xb554d]
00000001405b6e23 mov      rcx, qword ptr [rdi + 8]
00000001405b6e27 mov      edx, r13d
00000001405b6e2a mov      rax, qword ptr [rax + 0x118]
00000001405b6e31 call     qword ptr [rip + 0xcd4c1]
00000001405b6e37 lea      rdx, [rip + 0x71b79a]
00000001405b6e3e jmp      0x1405bd0a2
00000001405b6e43 mov      eax, 0x98
00000001405b6e48 cmp      ebx, eax
00000001405b6e4a ja       0x1405b77db
00000001405b6e50 je       0x1405b7600
00000001405b6e56 sub      ebx, 0x92
00000001405b6e5c je       0x1405b75b6
00000001405b6e62 sub      ebx, r13d
00000001405b6e65 je       0x1405b74bd
00000001405b6e6b sub      ebx, r13d
00000001405b6e6e je       0x1405b73c4
00000001405b6e74 sub      ebx, r13d
00000001405b6e77 je       0x1405b7242
00000001405b6e7d sub      ebx, r13d
00000001405b6e80 je       0x1405b706a
00000001405b6e86 cmp      ebx, r13d
00000001405b6e89 jne      0x1405bca8d
00000001405b6e8f mov      rax, qword ptr [rdi + 0x18]
00000001405b6e93 lea      r8, [rip + 0xc7ee6]
00000001405b6e9a mov      rcx, qword ptr [rdi + 8]
00000001405b6e9e mov      edx, r13d
00000001405b6ea1 mov      rax, qword ptr [rax + 0x118]
00000001405b6ea8 call     qword ptr [rip + 0xcd44a]
00000001405b6eae mov      rax, qword ptr [rsi + 0x20]
00000001405b6eb2 mov      r14d, 0xf4
00000001405b6eb8 mov      edx, r14d
00000001405b6ebb mov      rcx, rdi
00000001405b6ebe call     qword ptr [rip + 0xcd434]
00000001405b6ec4 mov      r9d, 0x186000f4
00000001405b6eca lea      r8, [rip + 0xb12ff]
00000001405b6ed1 btr      eax, 0x11
00000001405b6ed5 mov      edx, r13d
00000001405b6ed8 bts      eax, 0x10
00000001405b6edc mov      dword ptr [rbp + 0x30], eax
00000001405b6edf mov      rax, qword ptr [rdi + 0x18]
00000001405b6ee3 mov      rcx, qword ptr [rdi + 8]
00000001405b6ee7 mov      rax, qword ptr [rax + 0x118]
00000001405b6eee call     qword ptr [rip + 0xcd404]
00000001405b6ef4 mov      rax, qword ptr [rsi + 0x28]
00000001405b6ef8 mov      edx, r14d
00000001405b6efb mov      r8d, dword ptr [rbp + 0x30]
00000001405b6eff mov      rcx, rdi
00000001405b6f02 call     qword ptr [rip + 0xcd3f0]
00000001405b6f08 mov      rax, qword ptr [rsi + 0x20]
00000001405b6f0c mov      ebx, 0x58
00000001405b6f11 mov      edx, ebx
00000001405b6f13 mov      rcx, rdi
00000001405b6f16 call     qword ptr [rip + 0xcd3dc]
00000001405b6f1c mov      r9d, 0x18600058
00000001405b6f22 lea      r8, [rip + 0xb5627]
00000001405b6f29 and      eax, 0xffffffa0
00000001405b6f2c mov      edx, r13d
00000001405b6f2f or       eax, 0xa0
00000001405b6f34 mov      dword ptr [rbp + 0x30], eax
00000001405b6f37 mov      rax, qword ptr [rdi + 0x18]
00000001405b6f3b mov      rcx, qword ptr [rdi + 8]
00000001405b6f3f mov      rax, qword ptr [rax + 0x118]
00000001405b6f46 call     qword ptr [rip + 0xcd3ac]
00000001405b6f4c mov      eax, dword ptr [rbp + 0x30]
00000001405b6f4f lea      r8, [rip + 0xc7cda]
00000001405b6f56 and      eax, 0xffa0ffff
00000001405b6f5b mov      r9d, 0x18600058
00000001405b6f61 or       eax, 0xa00000
00000001405b6f66 mov      edx, r13d
00000001405b6f69 mov      dword ptr [rbp + 0x30], eax
00000001405b6f6c mov      rax, qword ptr [rdi + 0x18]
00000001405b6f70 mov      rcx, qword ptr [rdi + 8]
00000001405b6f74 mov      rax, qword ptr [rax + 0x118]
00000001405b6f7b call     qword ptr [rip + 0xcd377]
00000001405b6f81 mov      rax, qword ptr [rsi + 0x28]
00000001405b6f85 mov      edx, ebx
00000001405b6f87 mov      r8d, dword ptr [rbp + 0x30]
00000001405b6f8b mov      rcx, rdi
00000001405b6f8e call     qword ptr [rip + 0xcd364]
00000001405b6f94 mov      rax, qword ptr [rsi]
00000001405b6f97 mov      r14d, 0x10c0c
00000001405b6f9d mov      edx, r14d
00000001405b6fa0 mov      rcx, rdi
00000001405b6fa3 call     qword ptr [rip + 0xcd34f]
00000001405b6fa9 mov      rcx, qword ptr [rdi + 8]
00000001405b6fad lea      r8, [rip + 0xc7d3c]
00000001405b6fb4 mov      bl, al
00000001405b6fb6 mov      r9d, 0x18610c0c
00000001405b6fbc mov      rax, qword ptr [rdi + 0x18]
00000001405b6fc0 and      bl, 0xfd
00000001405b6fc3 mov      edx, r13d
00000001405b6fc6 or       bl, r13b
00000001405b6fc9 mov      rax, qword ptr [rax + 0x118]
00000001405b6fd0 call     qword ptr [rip + 0xcd322]
00000001405b6fd6 mov      rax, qword ptr [rsi + 8]
00000001405b6fda mov      r8b, bl
00000001405b6fdd mov      edx, r14d
00000001405b6fe0 mov      rcx, rdi
00000001405b6fe3 call     qword ptr [rip + 0xcd30f]
00000001405b6fe9 mov      rax, qword ptr [rsi + 0x20]
00000001405b6fed lea      ebx, [r14 + 4]
00000001405b6ff1 mov      edx, ebx
00000001405b6ff3 mov      rcx, rdi
00000001405b6ff6 call     qword ptr [rip + 0xcd2fc]
00000001405b6ffc mov      r9d, 0x18610c10
00000001405b7002 lea      r8, [rip + 0xc7da7]
00000001405b7009 btr      eax, 0x18
00000001405b700d mov      edx, r13d
00000001405b7010 bts      eax, 0x17
00000001405b7014 mov      dword ptr [rbp + 0x30], eax
00000001405b7017 mov      rax, qword ptr [rdi + 0x18]
00000001405b701b mov      rcx, qword ptr [rdi + 8]
00000001405b701f mov      rax, qword ptr [rax + 0x118]
00000001405b7026 call     qword ptr [rip + 0xcd2cc]
00000001405b702c mov      rax, qword ptr [rsi + 0x28]
00000001405b7030 mov      edx, ebx
00000001405b7032 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7036 mov      rcx, rdi
00000001405b7039 call     qword ptr [rip + 0xcd2b9]
00000001405b703f mov      rax, qword ptr [rdi + 0x18]
00000001405b7043 lea      r8, [rip + 0xc7d96]
00000001405b704a mov      rcx, qword ptr [rdi + 8]
00000001405b704e mov      edx, r13d
00000001405b7051 mov      rax, qword ptr [rax + 0x118]
00000001405b7058 call     qword ptr [rip + 0xcd29a]
00000001405b705e lea      rdx, [rip + 0x71b5d3]
00000001405b7065 jmp      0x1405bd0a2
00000001405b706a mov      rax, qword ptr [rdi + 0x18]
00000001405b706e lea      r8, [rip + 0xc7c4b]
00000001405b7075 mov      rcx, qword ptr [rdi + 8]
00000001405b7079 mov      edx, r13d
00000001405b707c mov      rax, qword ptr [rax + 0x118]
00000001405b7083 call     qword ptr [rip + 0xcd26f]
00000001405b7089 mov      rax, qword ptr [rsi + 0x20]
00000001405b708d mov      r14d, 0xf4
00000001405b7093 mov      edx, r14d
00000001405b7096 mov      rcx, rdi
00000001405b7099 call     qword ptr [rip + 0xcd259]
00000001405b709f mov      r9d, 0x186000f4
00000001405b70a5 lea      r8, [rip + 0xb1124]
00000001405b70ac btr      eax, 0x11
00000001405b70b0 mov      edx, r13d
00000001405b70b3 bts      eax, 0x10
00000001405b70b7 mov      dword ptr [rbp + 0x30], eax
00000001405b70ba mov      rax, qword ptr [rdi + 0x18]
00000001405b70be mov      rcx, qword ptr [rdi + 8]
00000001405b70c2 mov      rax, qword ptr [rax + 0x118]
00000001405b70c9 call     qword ptr [rip + 0xcd229]
00000001405b70cf mov      rax, qword ptr [rsi + 0x28]
00000001405b70d3 mov      edx, r14d
00000001405b70d6 mov      r8d, dword ptr [rbp + 0x30]
00000001405b70da mov      rcx, rdi
00000001405b70dd call     qword ptr [rip + 0xcd215]
00000001405b70e3 mov      rax, qword ptr [rsi + 0x20]
00000001405b70e7 mov      ebx, 0x58
00000001405b70ec mov      edx, ebx
00000001405b70ee mov      rcx, rdi
00000001405b70f1 call     qword ptr [rip + 0xcd201]
00000001405b70f7 mov      r9d, 0x18600058
00000001405b70fd lea      r8, [rip + 0xb544c]
00000001405b7104 and      eax, 0xffffffa0
00000001405b7107 mov      edx, r13d
00000001405b710a or       eax, 0xa0
00000001405b710f mov      dword ptr [rbp + 0x30], eax
00000001405b7112 mov      rax, qword ptr [rdi + 0x18]
00000001405b7116 mov      rcx, qword ptr [rdi + 8]
00000001405b711a mov      rax, qword ptr [rax + 0x118]
00000001405b7121 call     qword ptr [rip + 0xcd1d1]
00000001405b7127 mov      eax, dword ptr [rbp + 0x30]
00000001405b712a lea      r8, [rip + 0xc7aff]
00000001405b7131 and      eax, 0xffa0ffff
00000001405b7136 mov      r9d, 0x18600058
00000001405b713c or       eax, 0xa00000
00000001405b7141 mov      edx, r13d
00000001405b7144 mov      dword ptr [rbp + 0x30], eax
00000001405b7147 mov      rax, qword ptr [rdi + 0x18]
00000001405b714b mov      rcx, qword ptr [rdi + 8]
00000001405b714f mov      rax, qword ptr [rax + 0x118]
00000001405b7156 call     qword ptr [rip + 0xcd19c]
00000001405b715c mov      rax, qword ptr [rsi + 0x28]
00000001405b7160 mov      edx, ebx
00000001405b7162 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7166 mov      rcx, rdi
00000001405b7169 call     qword ptr [rip + 0xcd189]
00000001405b716f mov      rax, qword ptr [rsi]
00000001405b7172 mov      r14d, 0x10c0c
00000001405b7178 mov      edx, r14d
00000001405b717b mov      rcx, rdi
00000001405b717e call     qword ptr [rip + 0xcd174]
00000001405b7184 mov      rcx, qword ptr [rdi + 8]
00000001405b7188 lea      r8, [rip + 0xc7b61]
00000001405b718f mov      bl, al
00000001405b7191 mov      r9d, 0x18610c0c
00000001405b7197 mov      rax, qword ptr [rdi + 0x18]
00000001405b719b and      bl, 0xfd
00000001405b719e mov      edx, r13d
00000001405b71a1 or       bl, r13b
00000001405b71a4 mov      rax, qword ptr [rax + 0x118]
00000001405b71ab call     qword ptr [rip + 0xcd147]
00000001405b71b1 mov      rax, qword ptr [rsi + 8]
00000001405b71b5 mov      r8b, bl
00000001405b71b8 mov      edx, r14d
00000001405b71bb mov      rcx, rdi
00000001405b71be call     qword ptr [rip + 0xcd134]
00000001405b71c4 mov      rax, qword ptr [rsi + 0x20]
00000001405b71c8 lea      ebx, [r14 + 4]
00000001405b71cc mov      edx, ebx
00000001405b71ce mov      rcx, rdi
00000001405b71d1 call     qword ptr [rip + 0xcd121]
00000001405b71d7 mov      r9d, 0x18610c10
00000001405b71dd lea      r8, [rip + 0xc7b3c]
00000001405b71e4 and      eax, 0xfe7fffff
00000001405b71e9 mov      edx, r13d
00000001405b71ec mov      dword ptr [rbp + 0x30], eax
00000001405b71ef mov      rax, qword ptr [rdi + 0x18]
00000001405b71f3 mov      rcx, qword ptr [rdi + 8]
00000001405b71f7 mov      rax, qword ptr [rax + 0x118]
00000001405b71fe call     qword ptr [rip + 0xcd0f4]
00000001405b7204 mov      rax, qword ptr [rsi + 0x28]
00000001405b7208 mov      edx, ebx
00000001405b720a mov      r8d, dword ptr [rbp + 0x30]
00000001405b720e mov      rcx, rdi
00000001405b7211 call     qword ptr [rip + 0xcd0e1]
00000001405b7217 mov      rax, qword ptr [rdi + 0x18]
00000001405b721b lea      r8, [rip + 0xc7b2e]
00000001405b7222 mov      rcx, qword ptr [rdi + 8]
00000001405b7226 mov      edx, r13d
00000001405b7229 mov      rax, qword ptr [rax + 0x118]
00000001405b7230 call     qword ptr [rip + 0xcd0c2]
00000001405b7236 lea      rdx, [rip + 0x71b3eb]
00000001405b723d jmp      0x1405bd0a2
00000001405b7242 mov      rax, qword ptr [rdi + 0x18]
00000001405b7246 lea      r8, [rip + 0xc79b3]
00000001405b724d mov      rcx, qword ptr [rdi + 8]
00000001405b7251 mov      edx, r13d
00000001405b7254 mov      rax, qword ptr [rax + 0x118]
00000001405b725b call     qword ptr [rip + 0xcd097]
00000001405b7261 mov      rax, qword ptr [rsi + 0x20]
00000001405b7265 mov      r14d, 0xf4
00000001405b726b mov      edx, r14d
00000001405b726e mov      rcx, rdi
00000001405b7271 call     qword ptr [rip + 0xcd081]
00000001405b7277 mov      r9d, 0x186000f4
00000001405b727d lea      r8, [rip + 0xb0f4c]
00000001405b7284 btr      eax, 0x11
00000001405b7288 mov      edx, r13d
00000001405b728b bts      eax, 0x10
00000001405b728f mov      dword ptr [rbp + 0x30], eax
00000001405b7292 mov      rax, qword ptr [rdi + 0x18]
00000001405b7296 mov      rcx, qword ptr [rdi + 8]
00000001405b729a mov      rax, qword ptr [rax + 0x118]
00000001405b72a1 call     qword ptr [rip + 0xcd051]
00000001405b72a7 mov      rax, qword ptr [rsi + 0x28]
00000001405b72ab mov      edx, r14d
00000001405b72ae mov      r8d, dword ptr [rbp + 0x30]
00000001405b72b2 mov      rcx, rdi
00000001405b72b5 call     qword ptr [rip + 0xcd03d]
00000001405b72bb mov      rax, qword ptr [rsi + 0x20]
00000001405b72bf mov      ebx, 0x58
00000001405b72c4 mov      edx, ebx
00000001405b72c6 mov      rcx, rdi
00000001405b72c9 call     qword ptr [rip + 0xcd029]
00000001405b72cf mov      r9d, 0x18600058
00000001405b72d5 lea      r8, [rip + 0xb5274]
00000001405b72dc and      eax, 0xffffffa0
00000001405b72df mov      edx, r13d
00000001405b72e2 or       eax, 0xa0
00000001405b72e7 mov      dword ptr [rbp + 0x30], eax
00000001405b72ea mov      rax, qword ptr [rdi + 0x18]
00000001405b72ee mov      rcx, qword ptr [rdi + 8]
00000001405b72f2 mov      rax, qword ptr [rax + 0x118]
00000001405b72f9 call     qword ptr [rip + 0xccff9]
00000001405b72ff mov      eax, dword ptr [rbp + 0x30]
00000001405b7302 lea      r8, [rip + 0xc7927]
00000001405b7309 and      eax, 0xffa0ffff
00000001405b730e mov      r9d, 0x18600058
00000001405b7314 or       eax, 0xa00000
00000001405b7319 mov      edx, r13d
00000001405b731c mov      dword ptr [rbp + 0x30], eax
00000001405b731f mov      rax, qword ptr [rdi + 0x18]
00000001405b7323 mov      rcx, qword ptr [rdi + 8]
00000001405b7327 mov      rax, qword ptr [rax + 0x118]
00000001405b732e call     qword ptr [rip + 0xccfc4]
00000001405b7334 mov      rax, qword ptr [rsi + 0x28]
00000001405b7338 mov      edx, ebx
00000001405b733a mov      r8d, dword ptr [rbp + 0x30]
00000001405b733e mov      rcx, rdi
00000001405b7341 call     qword ptr [rip + 0xccfb1]
00000001405b7347 mov      rax, qword ptr [rsi]
00000001405b734a mov      r14d, 0x10c0c
00000001405b7350 mov      edx, r14d
00000001405b7353 mov      rcx, rdi
00000001405b7356 call     qword ptr [rip + 0xccf9c]
00000001405b735c mov      rcx, qword ptr [rdi + 8]
00000001405b7360 lea      r8, [rip + 0xc78f9]
00000001405b7367 mov      bl, al
00000001405b7369 mov      r9d, 0x18610c0c
00000001405b736f mov      rax, qword ptr [rdi + 0x18]
00000001405b7373 mov      edx, r13d
00000001405b7376 and      bl, 0xfc
00000001405b7379 mov      rax, qword ptr [rax + 0x118]
00000001405b7380 call     qword ptr [rip + 0xccf72]
00000001405b7386 mov      rax, qword ptr [rsi + 8]
00000001405b738a mov      r8b, bl
00000001405b738d mov      edx, r14d
00000001405b7390 mov      rcx, rdi
00000001405b7393 call     qword ptr [rip + 0xccf5f]
00000001405b7399 mov      rax, qword ptr [rdi + 0x18]
00000001405b739d lea      r8, [rip + 0xc78ec]
00000001405b73a4 mov      rcx, qword ptr [rdi + 8]
00000001405b73a8 mov      edx, r13d
00000001405b73ab mov      rax, qword ptr [rax + 0x118]
00000001405b73b2 call     qword ptr [rip + 0xccf40]
00000001405b73b8 lea      rdx, [rip + 0x71b259]
00000001405b73bf jmp      0x1405bd0a2
00000001405b73c4 mov      rax, qword ptr [rdi + 0x18]
00000001405b73c8 lea      r8, [rip + 0xb50c1]
00000001405b73cf mov      rcx, qword ptr [rdi + 8]
00000001405b73d3 mov      edx, r13d
00000001405b73d6 mov      rax, qword ptr [rax + 0x118]
00000001405b73dd call     qword ptr [rip + 0xccf15]
00000001405b73e3 mov      rax, qword ptr [rsi + 0x20]
00000001405b73e7 mov      r14d, 0xf4
00000001405b73ed mov      edx, r14d
00000001405b73f0 mov      rcx, rdi
00000001405b73f3 call     qword ptr [rip + 0xcceff]
00000001405b73f9 mov      r9d, 0x186000f4
00000001405b73ff lea      r8, [rip + 0xb0dca]
00000001405b7406 btr      eax, 0x11
00000001405b740a mov      edx, r13d
00000001405b740d bts      eax, 0x10
00000001405b7411 mov      dword ptr [rbp + 0x30], eax
00000001405b7414 mov      rax, qword ptr [rdi + 0x18]
00000001405b7418 mov      rcx, qword ptr [rdi + 8]
00000001405b741c mov      rax, qword ptr [rax + 0x118]
00000001405b7423 call     qword ptr [rip + 0xccecf]
00000001405b7429 mov      rax, qword ptr [rsi + 0x28]
00000001405b742d mov      edx, r14d
00000001405b7430 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7434 mov      rcx, rdi
00000001405b7437 call     qword ptr [rip + 0xccebb]
00000001405b743d mov      rax, qword ptr [rsi]
00000001405b7440 mov      r14d, 0x31c0
00000001405b7446 mov      edx, r14d
00000001405b7449 mov      rcx, rdi
00000001405b744c call     qword ptr [rip + 0xccea6]
00000001405b7452 mov      rcx, qword ptr [rdi + 8]
00000001405b7456 lea      r8, [rip + 0xb5063]
00000001405b745d mov      bl, al
00000001405b745f mov      r9d, 0x186031c0
00000001405b7465 mov      rax, qword ptr [rdi + 0x18]
00000001405b7469 mov      edx, r13d
00000001405b746c or       bl, r13b
00000001405b746f mov      rax, qword ptr [rax + 0x118]
00000001405b7476 call     qword ptr [rip + 0xcce7c]
00000001405b747c mov      rax, qword ptr [rsi + 8]
00000001405b7480 mov      r8b, bl
00000001405b7483 mov      edx, r14d
00000001405b7486 mov      rcx, rdi
00000001405b7489 call     qword ptr [rip + 0xcce69]
00000001405b748f mov      rax, qword ptr [rdi + 0x18]
00000001405b7493 lea      r8, [rip + 0xb5056]
00000001405b749a mov      rcx, qword ptr [rdi + 8]
00000001405b749e mov      edx, r13d
00000001405b74a1 mov      rax, qword ptr [rax + 0x118]
00000001405b74a8 call     qword ptr [rip + 0xcce4a]
00000001405b74ae mov      r9b, r13b
00000001405b74b1 lea      rdx, [rip + 0x71b150]
00000001405b74b8 jmp      0x1405bd0a5
00000001405b74bd mov      rax, qword ptr [rdi + 0x18]
00000001405b74c1 lea      r8, [rip + 0xb4f38]
00000001405b74c8 mov      rcx, qword ptr [rdi + 8]
00000001405b74cc mov      edx, r13d
00000001405b74cf mov      rax, qword ptr [rax + 0x118]
00000001405b74d6 call     qword ptr [rip + 0xcce1c]
00000001405b74dc mov      rax, qword ptr [rsi + 0x20]
00000001405b74e0 mov      r14d, 0xf4
00000001405b74e6 mov      edx, r14d
00000001405b74e9 mov      rcx, rdi
00000001405b74ec call     qword ptr [rip + 0xcce06]
00000001405b74f2 mov      r9d, 0x186000f4
00000001405b74f8 lea      r8, [rip + 0xb0cd1]
00000001405b74ff btr      eax, 0x11
00000001405b7503 mov      edx, r13d
00000001405b7506 bts      eax, 0x10
00000001405b750a mov      dword ptr [rbp + 0x30], eax
00000001405b750d mov      rax, qword ptr [rdi + 0x18]
00000001405b7511 mov      rcx, qword ptr [rdi + 8]
00000001405b7515 mov      rax, qword ptr [rax + 0x118]
00000001405b751c call     qword ptr [rip + 0xccdd6]
00000001405b7522 mov      rax, qword ptr [rsi + 0x28]
00000001405b7526 mov      edx, r14d
00000001405b7529 mov      r8d, dword ptr [rbp + 0x30]
00000001405b752d mov      rcx, rdi
00000001405b7530 call     qword ptr [rip + 0xccdc2]
00000001405b7536 mov      rax, qword ptr [rsi]
00000001405b7539 mov      r14d, 0x31c0
00000001405b753f mov      edx, r14d
00000001405b7542 mov      rcx, rdi
00000001405b7545 call     qword ptr [rip + 0xccdad]
00000001405b754b mov      rcx, qword ptr [rdi + 8]
00000001405b754f lea      r8, [rip + 0xb4eda]
00000001405b7556 mov      bl, al
00000001405b7558 mov      r9d, 0x186031c0
00000001405b755e mov      rax, qword ptr [rdi + 0x18]
00000001405b7562 mov      edx, r13d
00000001405b7565 and      bl, 0xfe
00000001405b7568 mov      rax, qword ptr [rax + 0x118]
00000001405b756f call     qword ptr [rip + 0xccd83]
00000001405b7575 mov      rax, qword ptr [rsi + 8]
00000001405b7579 mov      r8b, bl
00000001405b757c mov      edx, r14d
00000001405b757f mov      rcx, rdi
00000001405b7582 call     qword ptr [rip + 0xccd70]
00000001405b7588 mov      rax, qword ptr [rdi + 0x18]
00000001405b758c lea      r8, [rip + 0xb4ecd]
00000001405b7593 mov      rcx, qword ptr [rdi + 8]
00000001405b7597 mov      edx, r13d
00000001405b759a mov      rax, qword ptr [rax + 0x118]
00000001405b75a1 call     qword ptr [rip + 0xccd51]
00000001405b75a7 mov      r9b, r13b
00000001405b75aa lea      rdx, [rip + 0x71b047]
00000001405b75b1 jmp      0x1405bd0a5
00000001405b75b6 mov      rax, qword ptr [rdi + 0x18]
00000001405b75ba lea      r8, [rip + 0xb4ddf]
00000001405b75c1 mov      rcx, qword ptr [rdi + 8]
00000001405b75c5 mov      edx, r13d
00000001405b75c8 mov      rax, qword ptr [rax + 0x118]
00000001405b75cf call     qword ptr [rip + 0xccd23]
00000001405b75d5 mov      rax, qword ptr [rdi + 0x18]
00000001405b75d9 lea      r8, [rip + 0xb4df0]
00000001405b75e0 mov      rcx, qword ptr [rdi + 8]
00000001405b75e4 mov      edx, r13d
00000001405b75e7 mov      rax, qword ptr [rax + 0x118]
00000001405b75ee call     qword ptr [rip + 0xccd04]
00000001405b75f4 lea      rdx, [rip + 0x71afed]
00000001405b75fb jmp      0x1405bd0a2
00000001405b7600 mov      rax, qword ptr [rdi + 0x18]
00000001405b7604 lea      r8, [rip + 0xc7805]
00000001405b760b mov      rcx, qword ptr [rdi + 8]
00000001405b760f mov      edx, r13d
00000001405b7612 mov      rax, qword ptr [rax + 0x118]
00000001405b7619 call     qword ptr [rip + 0xcccd9]
00000001405b761f mov      rax, qword ptr [rsi + 0x20]
00000001405b7623 mov      r14d, 0xf4
00000001405b7629 mov      edx, r14d
00000001405b762c mov      rcx, rdi
00000001405b762f call     qword ptr [rip + 0xcccc3]
00000001405b7635 mov      r9d, 0x186000f4
00000001405b763b lea      r8, [rip + 0xb0b8e]
00000001405b7642 btr      eax, 0x11
00000001405b7646 mov      edx, r13d
00000001405b7649 bts      eax, 0x10
00000001405b764d mov      dword ptr [rbp + 0x30], eax
00000001405b7650 mov      rax, qword ptr [rdi + 0x18]
00000001405b7654 mov      rcx, qword ptr [rdi + 8]
00000001405b7658 mov      rax, qword ptr [rax + 0x118]
00000001405b765f call     qword ptr [rip + 0xccc93]
00000001405b7665 mov      rax, qword ptr [rsi + 0x28]
00000001405b7669 mov      edx, r14d
00000001405b766c mov      r8d, dword ptr [rbp + 0x30]
00000001405b7670 mov      rcx, rdi
00000001405b7673 call     qword ptr [rip + 0xccc7f]
00000001405b7679 mov      rax, qword ptr [rsi + 0x20]
00000001405b767d mov      ebx, 0x58
00000001405b7682 mov      edx, ebx
00000001405b7684 mov      rcx, rdi
00000001405b7687 call     qword ptr [rip + 0xccc6b]
00000001405b768d mov      r9d, 0x18600058
00000001405b7693 lea      r8, [rip + 0xb4eb6]
00000001405b769a and      eax, 0xffffffa0
00000001405b769d mov      edx, r13d
00000001405b76a0 or       eax, 0xa0
00000001405b76a5 mov      dword ptr [rbp + 0x30], eax
00000001405b76a8 mov      rax, qword ptr [rdi + 0x18]
00000001405b76ac mov      rcx, qword ptr [rdi + 8]
00000001405b76b0 mov      rax, qword ptr [rax + 0x118]
00000001405b76b7 call     qword ptr [rip + 0xccc3b]
00000001405b76bd mov      eax, dword ptr [rbp + 0x30]
00000001405b76c0 lea      r8, [rip + 0xc7569]
00000001405b76c7 and      eax, 0xffa0ffff
00000001405b76cc mov      r9d, 0x18600058
00000001405b76d2 or       eax, 0xa00000
00000001405b76d7 mov      edx, r13d
00000001405b76da mov      dword ptr [rbp + 0x30], eax
00000001405b76dd mov      rax, qword ptr [rdi + 0x18]
00000001405b76e1 mov      rcx, qword ptr [rdi + 8]
00000001405b76e5 mov      rax, qword ptr [rax + 0x118]
00000001405b76ec call     qword ptr [rip + 0xccc06]
00000001405b76f2 mov      rax, qword ptr [rsi + 0x28]
00000001405b76f6 mov      edx, ebx
00000001405b76f8 mov      r8d, dword ptr [rbp + 0x30]
00000001405b76fc mov      rcx, rdi
00000001405b76ff call     qword ptr [rip + 0xccbf3]
00000001405b7705 mov      rax, qword ptr [rsi]
00000001405b7708 mov      r14d, 0x10c0c
00000001405b770e mov      edx, r14d
00000001405b7711 mov      rcx, rdi
00000001405b7714 call     qword ptr [rip + 0xccbde]
00000001405b771a mov      rcx, qword ptr [rdi + 8]
00000001405b771e lea      r8, [rip + 0xc75cb]
00000001405b7725 mov      bl, al
00000001405b7727 mov      r9d, 0x18610c0c
00000001405b772d mov      rax, qword ptr [rdi + 0x18]
00000001405b7731 and      bl, 0xfd
00000001405b7734 mov      edx, r13d
00000001405b7737 or       bl, r13b
00000001405b773a mov      rax, qword ptr [rax + 0x118]
00000001405b7741 call     qword ptr [rip + 0xccbb1]
00000001405b7747 mov      rax, qword ptr [rsi + 8]
00000001405b774b mov      r8b, bl
00000001405b774e mov      edx, r14d
00000001405b7751 mov      rcx, rdi
00000001405b7754 call     qword ptr [rip + 0xccb9e]
00000001405b775a mov      rax, qword ptr [rsi + 0x20]
00000001405b775e lea      ebx, [r14 + 4]
00000001405b7762 mov      edx, ebx
00000001405b7764 mov      rcx, rdi
00000001405b7767 call     qword ptr [rip + 0xccb8b]
00000001405b776d mov      r9d, 0x18610c10
00000001405b7773 lea      r8, [rip + 0xc76c6]
00000001405b777a btr      eax, 0x17
00000001405b777e mov      edx, r13d
00000001405b7781 bts      eax, 0x18
00000001405b7785 mov      dword ptr [rbp + 0x30], eax
00000001405b7788 mov      rax, qword ptr [rdi + 0x18]
00000001405b778c mov      rcx, qword ptr [rdi + 8]
00000001405b7790 mov      rax, qword ptr [rax + 0x118]
00000001405b7797 call     qword ptr [rip + 0xccb5b]
00000001405b779d mov      rax, qword ptr [rsi + 0x28]
00000001405b77a1 mov      edx, ebx
00000001405b77a3 mov      r8d, dword ptr [rbp + 0x30]
00000001405b77a7 mov      rcx, rdi
00000001405b77aa call     qword ptr [rip + 0xccb48]
00000001405b77b0 mov      rax, qword ptr [rdi + 0x18]
00000001405b77b4 lea      r8, [rip + 0xc76b5]
00000001405b77bb mov      rcx, qword ptr [rdi + 8]
00000001405b77bf mov      edx, r13d
00000001405b77c2 mov      rax, qword ptr [rax + 0x118]
00000001405b77c9 call     qword ptr [rip + 0xccb29]
00000001405b77cf lea      rdx, [rip + 0x71ae72]
00000001405b77d6 jmp      0x1405bd0a2
00000001405b77db sub      ebx, 0x99
00000001405b77e1 je       0x1405b7f1b
00000001405b77e7 sub      ebx, r13d
00000001405b77ea je       0x1405b7d99
00000001405b77f0 sub      ebx, r13d
00000001405b77f3 je       0x1405b7bc1
00000001405b77f9 sub      ebx, r13d
00000001405b77fc je       0x1405b79e6
00000001405b7802 cmp      ebx, r13d
00000001405b7805 jne      0x1405bca8d
00000001405b780b mov      rax, qword ptr [rdi + 0x18]
00000001405b780f lea      r8, [rip + 0xc786a]
00000001405b7816 mov      rcx, qword ptr [rdi + 8]
00000001405b781a mov      edx, r13d
00000001405b781d mov      rax, qword ptr [rax + 0x118]
00000001405b7824 call     qword ptr [rip + 0xccace]
00000001405b782a mov      rax, qword ptr [rsi + 0x20]
00000001405b782e mov      r14d, 0xf4
00000001405b7834 mov      edx, r14d
00000001405b7837 mov      rcx, rdi
00000001405b783a call     qword ptr [rip + 0xccab8]
00000001405b7840 mov      r9d, 0x186000f4
00000001405b7846 lea      r8, [rip + 0xb0983]
00000001405b784d btr      eax, 0x11
00000001405b7851 mov      edx, r13d
00000001405b7854 bts      eax, 0x10
00000001405b7858 mov      dword ptr [rbp + 0x30], eax
00000001405b785b mov      rax, qword ptr [rdi + 0x18]
00000001405b785f mov      rcx, qword ptr [rdi + 8]
00000001405b7863 mov      rax, qword ptr [rax + 0x118]
00000001405b786a call     qword ptr [rip + 0xcca88]
00000001405b7870 mov      rax, qword ptr [rsi + 0x28]
00000001405b7874 mov      edx, r14d
00000001405b7877 mov      r8d, dword ptr [rbp + 0x30]
00000001405b787b mov      rcx, rdi
00000001405b787e call     qword ptr [rip + 0xcca74]
00000001405b7884 mov      rax, qword ptr [rsi + 0x20]
00000001405b7888 mov      ebx, 0x58
00000001405b788d mov      edx, ebx
00000001405b788f mov      rcx, rdi
00000001405b7892 call     qword ptr [rip + 0xcca60]
00000001405b7898 mov      r9d, 0x18600058
00000001405b789e lea      r8, [rip + 0xb4d9b]
00000001405b78a5 and      eax, 0xffffffb0
00000001405b78a8 mov      edx, r13d
00000001405b78ab or       eax, 0xb0
00000001405b78b0 mov      dword ptr [rbp + 0x30], eax
00000001405b78b3 mov      rax, qword ptr [rdi + 0x18]
00000001405b78b7 mov      rcx, qword ptr [rdi + 8]
00000001405b78bb mov      rax, qword ptr [rax + 0x118]
00000001405b78c2 call     qword ptr [rip + 0xcca30]
00000001405b78c8 mov      eax, dword ptr [rbp + 0x30]
00000001405b78cb lea      r8, [rip + 0xc768e]
00000001405b78d2 and      eax, 0xffb0ffff
00000001405b78d7 mov      r9d, 0x18600058
00000001405b78dd or       eax, 0xb00000
00000001405b78e2 mov      edx, r13d
00000001405b78e5 mov      dword ptr [rbp + 0x30], eax
00000001405b78e8 mov      rax, qword ptr [rdi + 0x18]
00000001405b78ec mov      rcx, qword ptr [rdi + 8]
00000001405b78f0 mov      rax, qword ptr [rax + 0x118]
00000001405b78f7 call     qword ptr [rip + 0xcc9fb]
00000001405b78fd mov      rax, qword ptr [rsi + 0x28]
00000001405b7901 mov      edx, ebx
00000001405b7903 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7907 mov      rcx, rdi
00000001405b790a call     qword ptr [rip + 0xcc9e8]
00000001405b7910 mov      rax, qword ptr [rsi]
00000001405b7913 mov      r14d, 0x14c0c
00000001405b7919 mov      edx, r14d
00000001405b791c mov      rcx, rdi
00000001405b791f call     qword ptr [rip + 0xcc9d3]
00000001405b7925 mov      rcx, qword ptr [rdi + 8]
00000001405b7929 lea      r8, [rip + 0xc73c0]
00000001405b7930 mov      bl, al
00000001405b7932 mov      r9d, 0x18614c0c
00000001405b7938 mov      rax, qword ptr [rdi + 0x18]
00000001405b793c and      bl, 0xfd
00000001405b793f mov      edx, r13d
00000001405b7942 or       bl, r13b
00000001405b7945 mov      rax, qword ptr [rax + 0x118]
00000001405b794c call     qword ptr [rip + 0xcc9a6]
00000001405b7952 mov      rax, qword ptr [rsi + 8]
00000001405b7956 mov      r8b, bl
00000001405b7959 mov      edx, r14d
00000001405b795c mov      rcx, rdi
00000001405b795f call     qword ptr [rip + 0xcc993]
00000001405b7965 mov      rax, qword ptr [rsi + 0x20]
00000001405b7969 lea      ebx, [r14 + 4]
00000001405b796d mov      edx, ebx
00000001405b796f mov      rcx, rdi
00000001405b7972 call     qword ptr [rip + 0xcc980]
00000001405b7978 mov      r9d, 0x18614c10
00000001405b797e lea      r8, [rip + 0xc74bb]
00000001405b7985 btr      eax, 0x17
00000001405b7989 mov      edx, r13d
00000001405b798c bts      eax, 0x18
00000001405b7990 mov      dword ptr [rbp + 0x30], eax
00000001405b7993 mov      rax, qword ptr [rdi + 0x18]
00000001405b7997 mov      rcx, qword ptr [rdi + 8]
00000001405b799b mov      rax, qword ptr [rax + 0x118]
00000001405b79a2 call     qword ptr [rip + 0xcc950]
00000001405b79a8 mov      rax, qword ptr [rsi + 0x28]
00000001405b79ac mov      edx, ebx
00000001405b79ae mov      r8d, dword ptr [rbp + 0x30]
00000001405b79b2 mov      rcx, rdi
00000001405b79b5 call     qword ptr [rip + 0xcc93d]
00000001405b79bb mov      rax, qword ptr [rdi + 0x18]
00000001405b79bf lea      r8, [rip + 0xc76ea]
00000001405b79c6 mov      rcx, qword ptr [rdi + 8]
00000001405b79ca mov      edx, r13d
00000001405b79cd mov      rax, qword ptr [rax + 0x118]
00000001405b79d4 call     qword ptr [rip + 0xcc91e]
00000001405b79da lea      rdx, [rip + 0x71acb7]
00000001405b79e1 jmp      0x1405bd0a2
00000001405b79e6 mov      rax, qword ptr [rdi + 0x18]
00000001405b79ea lea      r8, [rip + 0xc762f]
00000001405b79f1 mov      rcx, qword ptr [rdi + 8]
00000001405b79f5 mov      edx, r13d
00000001405b79f8 mov      rax, qword ptr [rax + 0x118]
00000001405b79ff call     qword ptr [rip + 0xcc8f3]
00000001405b7a05 mov      rax, qword ptr [rsi + 0x20]
00000001405b7a09 mov      r14d, 0xf4
00000001405b7a0f mov      edx, r14d
00000001405b7a12 mov      rcx, rdi
00000001405b7a15 call     qword ptr [rip + 0xcc8dd]
00000001405b7a1b mov      r9d, 0x186000f4
00000001405b7a21 lea      r8, [rip + 0xb07a8]
00000001405b7a28 btr      eax, 0x11
00000001405b7a2c mov      edx, r13d
00000001405b7a2f bts      eax, 0x10
00000001405b7a33 mov      dword ptr [rbp + 0x30], eax
00000001405b7a36 mov      rax, qword ptr [rdi + 0x18]
00000001405b7a3a mov      rcx, qword ptr [rdi + 8]
00000001405b7a3e mov      rax, qword ptr [rax + 0x118]
00000001405b7a45 call     qword ptr [rip + 0xcc8ad]
00000001405b7a4b mov      rax, qword ptr [rsi + 0x28]
00000001405b7a4f mov      edx, r14d
00000001405b7a52 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7a56 mov      rcx, rdi
00000001405b7a59 call     qword ptr [rip + 0xcc899]
00000001405b7a5f mov      rax, qword ptr [rsi + 0x20]
00000001405b7a63 mov      ebx, 0x58
00000001405b7a68 mov      edx, ebx
00000001405b7a6a mov      rcx, rdi
00000001405b7a6d call     qword ptr [rip + 0xcc885]
00000001405b7a73 mov      r9d, 0x18600058
00000001405b7a79 lea      r8, [rip + 0xb4bc0]
00000001405b7a80 and      eax, 0xffffffb0
00000001405b7a83 mov      edx, r13d
00000001405b7a86 or       eax, 0xb0
00000001405b7a8b mov      dword ptr [rbp + 0x30], eax
00000001405b7a8e mov      rax, qword ptr [rdi + 0x18]
00000001405b7a92 mov      rcx, qword ptr [rdi + 8]
00000001405b7a96 mov      rax, qword ptr [rax + 0x118]
00000001405b7a9d call     qword ptr [rip + 0xcc855]
00000001405b7aa3 mov      eax, dword ptr [rbp + 0x30]
00000001405b7aa6 lea      r8, [rip + 0xc74b3]
00000001405b7aad and      eax, 0xffb0ffff
00000001405b7ab2 mov      r9d, 0x18600058
00000001405b7ab8 or       eax, 0xb00000
00000001405b7abd mov      edx, r13d
00000001405b7ac0 mov      dword ptr [rbp + 0x30], eax
00000001405b7ac3 mov      rax, qword ptr [rdi + 0x18]
00000001405b7ac7 mov      rcx, qword ptr [rdi + 8]
00000001405b7acb mov      rax, qword ptr [rax + 0x118]
00000001405b7ad2 call     qword ptr [rip + 0xcc820]
00000001405b7ad8 mov      rax, qword ptr [rsi + 0x28]
00000001405b7adc mov      edx, ebx
00000001405b7ade mov      r8d, dword ptr [rbp + 0x30]
00000001405b7ae2 mov      rcx, rdi
00000001405b7ae5 call     qword ptr [rip + 0xcc80d]
00000001405b7aeb mov      rax, qword ptr [rsi]
00000001405b7aee mov      r14d, 0x14c0c
00000001405b7af4 mov      edx, r14d
00000001405b7af7 mov      rcx, rdi
00000001405b7afa call     qword ptr [rip + 0xcc7f8]
00000001405b7b00 mov      rcx, qword ptr [rdi + 8]
00000001405b7b04 lea      r8, [rip + 0xc71e5]
00000001405b7b0b mov      bl, al
00000001405b7b0d mov      r9d, 0x18614c0c
00000001405b7b13 mov      rax, qword ptr [rdi + 0x18]
00000001405b7b17 and      bl, 0xfd
00000001405b7b1a mov      edx, r13d
00000001405b7b1d or       bl, r13b
00000001405b7b20 mov      rax, qword ptr [rax + 0x118]
00000001405b7b27 call     qword ptr [rip + 0xcc7cb]
00000001405b7b2d mov      rax, qword ptr [rsi + 8]
00000001405b7b31 mov      r8b, bl
00000001405b7b34 mov      edx, r14d
00000001405b7b37 mov      rcx, rdi
00000001405b7b3a call     qword ptr [rip + 0xcc7b8]
00000001405b7b40 mov      rax, qword ptr [rsi + 0x20]
00000001405b7b44 lea      ebx, [r14 + 4]
00000001405b7b48 mov      edx, ebx
00000001405b7b4a mov      rcx, rdi
00000001405b7b4d call     qword ptr [rip + 0xcc7a5]
00000001405b7b53 mov      r9d, 0x18614c10
00000001405b7b59 lea      r8, [rip + 0xc7250]
00000001405b7b60 btr      eax, 0x18
00000001405b7b64 mov      edx, r13d
00000001405b7b67 bts      eax, 0x17
00000001405b7b6b mov      dword ptr [rbp + 0x30], eax
00000001405b7b6e mov      rax, qword ptr [rdi + 0x18]
00000001405b7b72 mov      rcx, qword ptr [rdi + 8]
00000001405b7b76 mov      rax, qword ptr [rax + 0x118]
00000001405b7b7d call     qword ptr [rip + 0xcc775]
00000001405b7b83 mov      rax, qword ptr [rsi + 0x28]
00000001405b7b87 mov      edx, ebx
00000001405b7b89 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7b8d mov      rcx, rdi
00000001405b7b90 call     qword ptr [rip + 0xcc762]
00000001405b7b96 mov      rax, qword ptr [rdi + 0x18]
00000001405b7b9a lea      r8, [rip + 0xc74af]
00000001405b7ba1 mov      rcx, qword ptr [rdi + 8]
00000001405b7ba5 mov      edx, r13d
00000001405b7ba8 mov      rax, qword ptr [rax + 0x118]
00000001405b7baf call     qword ptr [rip + 0xcc743]
00000001405b7bb5 lea      rdx, [rip + 0x71aacc]
00000001405b7bbc jmp      0x1405bd0a2
00000001405b7bc1 mov      rax, qword ptr [rdi + 0x18]
00000001405b7bc5 lea      r8, [rip + 0xc73f4]
00000001405b7bcc mov      rcx, qword ptr [rdi + 8]
00000001405b7bd0 mov      edx, r13d
00000001405b7bd3 mov      rax, qword ptr [rax + 0x118]
00000001405b7bda call     qword ptr [rip + 0xcc718]
00000001405b7be0 mov      rax, qword ptr [rsi + 0x20]
00000001405b7be4 mov      r14d, 0xf4
00000001405b7bea mov      edx, r14d
00000001405b7bed mov      rcx, rdi
00000001405b7bf0 call     qword ptr [rip + 0xcc702]
00000001405b7bf6 mov      r9d, 0x186000f4
00000001405b7bfc lea      r8, [rip + 0xb05cd]
00000001405b7c03 btr      eax, 0x11
00000001405b7c07 mov      edx, r13d
00000001405b7c0a bts      eax, 0x10
00000001405b7c0e mov      dword ptr [rbp + 0x30], eax
00000001405b7c11 mov      rax, qword ptr [rdi + 0x18]
00000001405b7c15 mov      rcx, qword ptr [rdi + 8]
00000001405b7c19 mov      rax, qword ptr [rax + 0x118]
00000001405b7c20 call     qword ptr [rip + 0xcc6d2]
00000001405b7c26 mov      rax, qword ptr [rsi + 0x28]
00000001405b7c2a mov      edx, r14d
00000001405b7c2d mov      r8d, dword ptr [rbp + 0x30]
00000001405b7c31 mov      rcx, rdi
00000001405b7c34 call     qword ptr [rip + 0xcc6be]
00000001405b7c3a mov      rax, qword ptr [rsi + 0x20]
00000001405b7c3e mov      ebx, 0x58
00000001405b7c43 mov      edx, ebx
00000001405b7c45 mov      rcx, rdi
00000001405b7c48 call     qword ptr [rip + 0xcc6aa]
00000001405b7c4e mov      r9d, 0x18600058
00000001405b7c54 lea      r8, [rip + 0xb49e5]
00000001405b7c5b and      eax, 0xffffffb0
00000001405b7c5e mov      edx, r13d
00000001405b7c61 or       eax, 0xb0
00000001405b7c66 mov      dword ptr [rbp + 0x30], eax
00000001405b7c69 mov      rax, qword ptr [rdi + 0x18]
00000001405b7c6d mov      rcx, qword ptr [rdi + 8]
00000001405b7c71 mov      rax, qword ptr [rax + 0x118]
00000001405b7c78 call     qword ptr [rip + 0xcc67a]
00000001405b7c7e mov      eax, dword ptr [rbp + 0x30]
00000001405b7c81 lea      r8, [rip + 0xc72d8]
00000001405b7c88 and      eax, 0xffb0ffff
00000001405b7c8d mov      r9d, 0x18600058
00000001405b7c93 or       eax, 0xb00000
00000001405b7c98 mov      edx, r13d
00000001405b7c9b mov      dword ptr [rbp + 0x30], eax
00000001405b7c9e mov      rax, qword ptr [rdi + 0x18]
00000001405b7ca2 mov      rcx, qword ptr [rdi + 8]
00000001405b7ca6 mov      rax, qword ptr [rax + 0x118]
00000001405b7cad call     qword ptr [rip + 0xcc645]
00000001405b7cb3 mov      rax, qword ptr [rsi + 0x28]
00000001405b7cb7 mov      edx, ebx
00000001405b7cb9 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7cbd mov      rcx, rdi
00000001405b7cc0 call     qword ptr [rip + 0xcc632]
00000001405b7cc6 mov      rax, qword ptr [rsi]
00000001405b7cc9 mov      r14d, 0x14c0c
00000001405b7ccf mov      edx, r14d
00000001405b7cd2 mov      rcx, rdi
00000001405b7cd5 call     qword ptr [rip + 0xcc61d]
00000001405b7cdb mov      rcx, qword ptr [rdi + 8]
00000001405b7cdf lea      r8, [rip + 0xc700a]
00000001405b7ce6 mov      bl, al
00000001405b7ce8 mov      r9d, 0x18614c0c
00000001405b7cee mov      rax, qword ptr [rdi + 0x18]
00000001405b7cf2 and      bl, 0xfd
00000001405b7cf5 mov      edx, r13d
00000001405b7cf8 or       bl, r13b
00000001405b7cfb mov      rax, qword ptr [rax + 0x118]
00000001405b7d02 call     qword ptr [rip + 0xcc5f0]
00000001405b7d08 mov      rax, qword ptr [rsi + 8]
00000001405b7d0c mov      r8b, bl
00000001405b7d0f mov      edx, r14d
00000001405b7d12 mov      rcx, rdi
00000001405b7d15 call     qword ptr [rip + 0xcc5dd]
00000001405b7d1b mov      rax, qword ptr [rsi + 0x20]
00000001405b7d1f lea      ebx, [r14 + 4]
00000001405b7d23 mov      edx, ebx
00000001405b7d25 mov      rcx, rdi
00000001405b7d28 call     qword ptr [rip + 0xcc5ca]
00000001405b7d2e mov      r9d, 0x18614c10
00000001405b7d34 lea      r8, [rip + 0xc6fe5]
00000001405b7d3b and      eax, 0xfe7fffff
00000001405b7d40 mov      edx, r13d
00000001405b7d43 mov      dword ptr [rbp + 0x30], eax
00000001405b7d46 mov      rax, qword ptr [rdi + 0x18]
00000001405b7d4a mov      rcx, qword ptr [rdi + 8]
00000001405b7d4e mov      rax, qword ptr [rax + 0x118]
00000001405b7d55 call     qword ptr [rip + 0xcc59d]
00000001405b7d5b mov      rax, qword ptr [rsi + 0x28]
00000001405b7d5f mov      edx, ebx
00000001405b7d61 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7d65 mov      rcx, rdi
00000001405b7d68 call     qword ptr [rip + 0xcc58a]
00000001405b7d6e mov      rax, qword ptr [rdi + 0x18]
00000001405b7d72 lea      r8, [rip + 0xc7277]
00000001405b7d79 mov      rcx, qword ptr [rdi + 8]
00000001405b7d7d mov      edx, r13d
00000001405b7d80 mov      rax, qword ptr [rax + 0x118]
00000001405b7d87 call     qword ptr [rip + 0xcc56b]
00000001405b7d8d lea      rdx, [rip + 0x71a8e4]
00000001405b7d94 jmp      0x1405bd0a2
00000001405b7d99 mov      rax, qword ptr [rdi + 0x18]
00000001405b7d9d lea      r8, [rip + 0xc718c]
00000001405b7da4 mov      rcx, qword ptr [rdi + 8]
00000001405b7da8 mov      edx, r13d
00000001405b7dab mov      rax, qword ptr [rax + 0x118]
00000001405b7db2 call     qword ptr [rip + 0xcc540]
00000001405b7db8 mov      rax, qword ptr [rsi + 0x20]
00000001405b7dbc mov      r14d, 0xf4
00000001405b7dc2 mov      edx, r14d
00000001405b7dc5 mov      rcx, rdi
00000001405b7dc8 call     qword ptr [rip + 0xcc52a]
00000001405b7dce mov      r9d, 0x186000f4
00000001405b7dd4 lea      r8, [rip + 0xb03f5]
00000001405b7ddb btr      eax, 0x11
00000001405b7ddf mov      edx, r13d
00000001405b7de2 bts      eax, 0x10
00000001405b7de6 mov      dword ptr [rbp + 0x30], eax
00000001405b7de9 mov      rax, qword ptr [rdi + 0x18]
00000001405b7ded mov      rcx, qword ptr [rdi + 8]
00000001405b7df1 mov      rax, qword ptr [rax + 0x118]
00000001405b7df8 call     qword ptr [rip + 0xcc4fa]
00000001405b7dfe mov      rax, qword ptr [rsi + 0x28]
00000001405b7e02 mov      edx, r14d
00000001405b7e05 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7e09 mov      rcx, rdi
00000001405b7e0c call     qword ptr [rip + 0xcc4e6]
00000001405b7e12 mov      rax, qword ptr [rsi + 0x20]
00000001405b7e16 mov      ebx, 0x58
00000001405b7e1b mov      edx, ebx
00000001405b7e1d mov      rcx, rdi
00000001405b7e20 call     qword ptr [rip + 0xcc4d2]
00000001405b7e26 mov      r9d, 0x18600058
00000001405b7e2c lea      r8, [rip + 0xb480d]
00000001405b7e33 and      eax, 0xffffffb0
00000001405b7e36 mov      edx, r13d
00000001405b7e39 or       eax, 0xb0
00000001405b7e3e mov      dword ptr [rbp + 0x30], eax
00000001405b7e41 mov      rax, qword ptr [rdi + 0x18]
00000001405b7e45 mov      rcx, qword ptr [rdi + 8]
00000001405b7e49 mov      rax, qword ptr [rax + 0x118]
00000001405b7e50 call     qword ptr [rip + 0xcc4a2]
00000001405b7e56 mov      eax, dword ptr [rbp + 0x30]
00000001405b7e59 lea      r8, [rip + 0xc7100]
00000001405b7e60 and      eax, 0xffb0ffff
00000001405b7e65 mov      r9d, 0x18600058
00000001405b7e6b or       eax, 0xb00000
00000001405b7e70 mov      edx, r13d
00000001405b7e73 mov      dword ptr [rbp + 0x30], eax
00000001405b7e76 mov      rax, qword ptr [rdi + 0x18]
00000001405b7e7a mov      rcx, qword ptr [rdi + 8]
00000001405b7e7e mov      rax, qword ptr [rax + 0x118]
00000001405b7e85 call     qword ptr [rip + 0xcc46d]
00000001405b7e8b mov      rax, qword ptr [rsi + 0x28]
00000001405b7e8f mov      edx, ebx
00000001405b7e91 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7e95 mov      rcx, rdi
00000001405b7e98 call     qword ptr [rip + 0xcc45a]
00000001405b7e9e mov      rax, qword ptr [rsi]
00000001405b7ea1 mov      r14d, 0x14c0c
00000001405b7ea7 mov      edx, r14d
00000001405b7eaa mov      rcx, rdi
00000001405b7ead call     qword ptr [rip + 0xcc445]
00000001405b7eb3 mov      rcx, qword ptr [rdi + 8]
00000001405b7eb7 lea      r8, [rip + 0xc6da2]
00000001405b7ebe mov      bl, al
00000001405b7ec0 mov      r9d, 0x18614c0c
00000001405b7ec6 mov      rax, qword ptr [rdi + 0x18]
00000001405b7eca mov      edx, r13d
00000001405b7ecd and      bl, 0xfc
00000001405b7ed0 mov      rax, qword ptr [rax + 0x118]
00000001405b7ed7 call     qword ptr [rip + 0xcc41b]
00000001405b7edd mov      rax, qword ptr [rsi + 8]
00000001405b7ee1 mov      r8b, bl
00000001405b7ee4 mov      edx, r14d
00000001405b7ee7 mov      rcx, rdi
00000001405b7eea call     qword ptr [rip + 0xcc408]
00000001405b7ef0 mov      rax, qword ptr [rdi + 0x18]
00000001405b7ef4 lea      r8, [rip + 0xc7095]
00000001405b7efb mov      rcx, qword ptr [rdi + 8]
00000001405b7eff mov      edx, r13d
00000001405b7f02 mov      rax, qword ptr [rax + 0x118]
00000001405b7f09 call     qword ptr [rip + 0xcc3e9]
00000001405b7f0f lea      rdx, [rip + 0x71a752]
00000001405b7f16 jmp      0x1405bd0a2
00000001405b7f1b mov      rax, qword ptr [rdi + 0x18]
00000001405b7f1f lea      r8, [rip + 0xc6f7a]
00000001405b7f26 mov      rcx, qword ptr [rdi + 8]
00000001405b7f2a mov      edx, r13d
00000001405b7f2d mov      rax, qword ptr [rax + 0x118]
00000001405b7f34 call     qword ptr [rip + 0xcc3be]
00000001405b7f3a mov      rax, qword ptr [rsi + 0x20]
00000001405b7f3e mov      r14d, 0xf4
00000001405b7f44 mov      edx, r14d
00000001405b7f47 mov      rcx, rdi
00000001405b7f4a call     qword ptr [rip + 0xcc3a8]
00000001405b7f50 mov      r9d, 0x186000f4
00000001405b7f56 lea      r8, [rip + 0xb0273]
00000001405b7f5d btr      eax, 0x11
00000001405b7f61 mov      edx, r13d
00000001405b7f64 bts      eax, 0x10
00000001405b7f68 mov      dword ptr [rbp + 0x30], eax
00000001405b7f6b mov      rax, qword ptr [rdi + 0x18]
00000001405b7f6f mov      rcx, qword ptr [rdi + 8]
00000001405b7f73 mov      rax, qword ptr [rax + 0x118]
00000001405b7f7a call     qword ptr [rip + 0xcc378]
00000001405b7f80 mov      rax, qword ptr [rsi + 0x28]
00000001405b7f84 mov      edx, r14d
00000001405b7f87 mov      r8d, dword ptr [rbp + 0x30]
00000001405b7f8b mov      rcx, rdi
00000001405b7f8e call     qword ptr [rip + 0xcc364]
00000001405b7f94 mov      rax, qword ptr [rsi + 0x20]
00000001405b7f98 mov      ebx, 0x58
00000001405b7f9d mov      edx, ebx
00000001405b7f9f mov      rcx, rdi
00000001405b7fa2 call     qword ptr [rip + 0xcc350]
00000001405b7fa8 mov      r9d, 0x18600058
00000001405b7fae lea      r8, [rip + 0xb459b]
00000001405b7fb5 and      eax, 0xffffffa0
00000001405b7fb8 mov      edx, r13d
00000001405b7fbb or       eax, 0xa0
00000001405b7fc0 mov      dword ptr [rbp + 0x30], eax
00000001405b7fc3 mov      rax, qword ptr [rdi + 0x18]
00000001405b7fc7 mov      rcx, qword ptr [rdi + 8]
00000001405b7fcb mov      rax, qword ptr [rax + 0x118]
00000001405b7fd2 call     qword ptr [rip + 0xcc320]
00000001405b7fd8 mov      eax, dword ptr [rbp + 0x30]
00000001405b7fdb lea      r8, [rip + 0xc6c4e]
00000001405b7fe2 and      eax, 0xffa0ffff
00000001405b7fe7 mov      r9d, 0x18600058
00000001405b7fed or       eax, 0xa00000
00000001405b7ff2 mov      edx, r13d
00000001405b7ff5 mov      dword ptr [rbp + 0x30], eax
00000001405b7ff8 mov      rax, qword ptr [rdi + 0x18]
00000001405b7ffc mov      rcx, qword ptr [rdi + 8]
00000001405b8000 mov      rax, qword ptr [rax + 0x118]
00000001405b8007 call     qword ptr [rip + 0xcc2eb]
00000001405b800d mov      rax, qword ptr [rsi + 0x28]
00000001405b8011 mov      edx, ebx
00000001405b8013 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8017 mov      rcx, rdi
00000001405b801a call     qword ptr [rip + 0xcc2d8]
00000001405b8020 mov      rax, qword ptr [rsi]
00000001405b8023 mov      r14d, 0x10c0c
00000001405b8029 mov      edx, r14d
00000001405b802c mov      rcx, rdi
00000001405b802f call     qword ptr [rip + 0xcc2c3]
00000001405b8035 mov      rcx, qword ptr [rdi + 8]
00000001405b8039 lea      r8, [rip + 0xc6cb0]
00000001405b8040 mov      bl, al
00000001405b8042 mov      r9d, 0x18610c0c
00000001405b8048 mov      rax, qword ptr [rdi + 0x18]
00000001405b804c and      bl, 0xfd
00000001405b804f mov      edx, r13d
00000001405b8052 or       bl, r13b
00000001405b8055 mov      rax, qword ptr [rax + 0x118]
00000001405b805c call     qword ptr [rip + 0xcc296]
00000001405b8062 mov      rax, qword ptr [rsi + 8]
00000001405b8066 mov      r8b, bl
00000001405b8069 mov      edx, r14d
00000001405b806c mov      rcx, rdi
00000001405b806f call     qword ptr [rip + 0xcc283]
00000001405b8075 mov      rax, qword ptr [rsi + 0x20]
00000001405b8079 lea      ebx, [r14 + 4]
00000001405b807d mov      edx, ebx
00000001405b807f mov      rcx, rdi
00000001405b8082 call     qword ptr [rip + 0xcc270]
00000001405b8088 mov      r9d, 0x18610c10
00000001405b808e lea      r8, [rip + 0xc6e3b]
00000001405b8095 or       eax, 0x1800000
00000001405b809a mov      edx, r13d
00000001405b809d mov      dword ptr [rbp + 0x30], eax
00000001405b80a0 mov      rax, qword ptr [rdi + 0x18]
00000001405b80a4 mov      rcx, qword ptr [rdi + 8]
00000001405b80a8 mov      rax, qword ptr [rax + 0x118]
00000001405b80af call     qword ptr [rip + 0xcc243]
00000001405b80b5 mov      rax, qword ptr [rsi + 0x28]
00000001405b80b9 mov      edx, ebx
00000001405b80bb mov      r8d, dword ptr [rbp + 0x30]
00000001405b80bf mov      rcx, rdi
00000001405b80c2 call     qword ptr [rip + 0xcc230]
00000001405b80c8 mov      rax, qword ptr [rdi + 0x18]
00000001405b80cc lea      r8, [rip + 0xc6e2d]
00000001405b80d3 mov      rcx, qword ptr [rdi + 8]
00000001405b80d7 mov      edx, r13d
00000001405b80da mov      rax, qword ptr [rax + 0x118]
00000001405b80e1 call     qword ptr [rip + 0xcc211]
00000001405b80e7 lea      rdx, [rip + 0x71a56a]
00000001405b80ee jmp      0x1405bd0a2
00000001405b80f3 mov      rax, qword ptr [rdi + 0x18]
00000001405b80f7 lea      r8, [rip + 0xc6fe2]
00000001405b80fe mov      rcx, qword ptr [rdi + 8]
00000001405b8102 mov      edx, r13d
00000001405b8105 mov      rax, qword ptr [rax + 0x118]
00000001405b810c call     qword ptr [rip + 0xcc1e6]
00000001405b8112 mov      rax, qword ptr [rsi + 0x20]
00000001405b8116 mov      r14d, 0xf4
00000001405b811c mov      edx, r14d
00000001405b811f mov      rcx, rdi
00000001405b8122 call     qword ptr [rip + 0xcc1d0]
00000001405b8128 mov      r9d, 0x186000f4
00000001405b812e lea      r8, [rip + 0xb009b]
00000001405b8135 btr      eax, 0x11
00000001405b8139 mov      edx, r13d
00000001405b813c bts      eax, 0x10
00000001405b8140 mov      dword ptr [rbp + 0x30], eax
00000001405b8143 mov      rax, qword ptr [rdi + 0x18]
00000001405b8147 mov      rcx, qword ptr [rdi + 8]
00000001405b814b mov      rax, qword ptr [rax + 0x118]
00000001405b8152 call     qword ptr [rip + 0xcc1a0]
00000001405b8158 mov      rax, qword ptr [rsi + 0x28]
00000001405b815c mov      edx, r14d
00000001405b815f mov      r8d, dword ptr [rbp + 0x30]
00000001405b8163 mov      rcx, rdi
00000001405b8166 call     qword ptr [rip + 0xcc18c]
00000001405b816c mov      rax, qword ptr [rsi + 0x20]
00000001405b8170 mov      ebx, 0x58
00000001405b8175 mov      edx, ebx
00000001405b8177 mov      rcx, rdi
00000001405b817a call     qword ptr [rip + 0xcc178]
00000001405b8180 mov      r9d, 0x18600058
00000001405b8186 lea      r8, [rip + 0xb44b3]
00000001405b818d and      eax, 0xffffffb0
00000001405b8190 mov      edx, r13d
00000001405b8193 or       eax, 0xb0
00000001405b8198 mov      dword ptr [rbp + 0x30], eax
00000001405b819b mov      rax, qword ptr [rdi + 0x18]
00000001405b819f mov      rcx, qword ptr [rdi + 8]
00000001405b81a3 mov      rax, qword ptr [rax + 0x118]
00000001405b81aa call     qword ptr [rip + 0xcc148]
00000001405b81b0 mov      eax, dword ptr [rbp + 0x30]
00000001405b81b3 lea      r8, [rip + 0xc6da6]
00000001405b81ba and      eax, 0xffb0ffff
00000001405b81bf mov      r9d, 0x18600058
00000001405b81c5 or       eax, 0xb00000
00000001405b81ca mov      edx, r13d
00000001405b81cd mov      dword ptr [rbp + 0x30], eax
00000001405b81d0 mov      rax, qword ptr [rdi + 0x18]
00000001405b81d4 mov      rcx, qword ptr [rdi + 8]
00000001405b81d8 mov      rax, qword ptr [rax + 0x118]
00000001405b81df call     qword ptr [rip + 0xcc113]
00000001405b81e5 mov      rax, qword ptr [rsi + 0x28]
00000001405b81e9 mov      edx, ebx
00000001405b81eb mov      r8d, dword ptr [rbp + 0x30]
00000001405b81ef mov      rcx, rdi
00000001405b81f2 call     qword ptr [rip + 0xcc100]
00000001405b81f8 mov      rax, qword ptr [rsi]
00000001405b81fb mov      r14d, 0x14c0c
00000001405b8201 mov      edx, r14d
00000001405b8204 mov      rcx, rdi
00000001405b8207 call     qword ptr [rip + 0xcc0eb]
00000001405b820d mov      rcx, qword ptr [rdi + 8]
00000001405b8211 lea      r8, [rip + 0xc6ad8]
00000001405b8218 mov      bl, al
00000001405b821a mov      r9d, 0x18614c0c
00000001405b8220 mov      rax, qword ptr [rdi + 0x18]
00000001405b8224 and      bl, 0xfd
00000001405b8227 mov      edx, r13d
00000001405b822a or       bl, r13b
00000001405b822d mov      rax, qword ptr [rax + 0x118]
00000001405b8234 call     qword ptr [rip + 0xcc0be]
00000001405b823a mov      rax, qword ptr [rsi + 8]
00000001405b823e mov      r8b, bl
00000001405b8241 mov      edx, r14d
00000001405b8244 mov      rcx, rdi
00000001405b8247 call     qword ptr [rip + 0xcc0ab]
00000001405b824d mov      rax, qword ptr [rsi + 0x20]
00000001405b8251 lea      ebx, [r14 + 4]
00000001405b8255 mov      edx, ebx
00000001405b8257 mov      rcx, rdi
00000001405b825a call     qword ptr [rip + 0xcc098]
00000001405b8260 mov      r9d, 0x18614c10
00000001405b8266 lea      r8, [rip + 0xc6c63]
00000001405b826d or       eax, 0x1800000
00000001405b8272 mov      edx, r13d
00000001405b8275 mov      dword ptr [rbp + 0x30], eax
00000001405b8278 mov      rax, qword ptr [rdi + 0x18]
00000001405b827c mov      rcx, qword ptr [rdi + 8]
00000001405b8280 mov      rax, qword ptr [rax + 0x118]
00000001405b8287 call     qword ptr [rip + 0xcc06b]
00000001405b828d mov      rax, qword ptr [rsi + 0x28]
00000001405b8291 mov      edx, ebx
00000001405b8293 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8297 mov      rcx, rdi
00000001405b829a call     qword ptr [rip + 0xcc058]
00000001405b82a0 mov      rax, qword ptr [rdi + 0x18]
00000001405b82a4 lea      r8, [rip + 0xc6e65]
00000001405b82ab mov      rcx, qword ptr [rdi + 8]
00000001405b82af mov      edx, r13d
00000001405b82b2 mov      rax, qword ptr [rax + 0x118]
00000001405b82b9 call     qword ptr [rip + 0xcc039]
00000001405b82bf lea      rdx, [rip + 0x71a3e2]
00000001405b82c6 jmp      0x1405bd0a2
00000001405b82cb mov      r15d, 0xb8
00000001405b82d1 cmp      ebx, r15d
00000001405b82d4 ja       0x1405bac52
00000001405b82da je       0x1405bab00
00000001405b82e0 lea      eax, [r15 - 0xd]
00000001405b82e4 cmp      ebx, eax
00000001405b82e6 ja       0x1405b9765
00000001405b82ec je       0x1405b95c5
00000001405b82f2 lea      ecx, [rax - 6]
00000001405b82f5 cmp      ebx, ecx
00000001405b82f7 ja       0x1405b8def
00000001405b82fd je       0x1405b8c67
00000001405b8303 sub      ebx, 0x9f
00000001405b8309 je       0x1405b8adf
00000001405b830f sub      ebx, r13d
00000001405b8312 je       0x1405b8957
00000001405b8318 sub      ebx, r13d
00000001405b831b je       0x1405b87cf
00000001405b8321 sub      ebx, r13d
00000001405b8324 je       0x1405b8646
00000001405b832a sub      ebx, r13d
00000001405b832d je       0x1405b84bd
00000001405b8333 cmp      ebx, r13d
00000001405b8336 jne      0x1405bca8d
00000001405b833c mov      rax, qword ptr [rdi + 0x18]
00000001405b8340 lea      r8, [rip + 0xc7009]
00000001405b8347 mov      rcx, qword ptr [rdi + 8]
00000001405b834b mov      edx, r13d
00000001405b834e mov      rax, qword ptr [rax + 0x118]
00000001405b8355 call     qword ptr [rip + 0xcbf9d]
00000001405b835b mov      rax, qword ptr [rsi + 0x20]
00000001405b835f lea      r14d, [r15 + 0x3c]
00000001405b8363 mov      edx, r14d
00000001405b8366 mov      rcx, rdi
00000001405b8369 call     qword ptr [rip + 0xcbf89]
00000001405b836f mov      r9d, 0x186000f4
00000001405b8375 lea      r8, [rip + 0xafe54]
00000001405b837c btr      eax, 0x11
00000001405b8380 mov      edx, r13d
00000001405b8383 bts      eax, 0x10
00000001405b8387 mov      dword ptr [rbp + 0x30], eax
00000001405b838a mov      rax, qword ptr [rdi + 0x18]
00000001405b838e mov      rcx, qword ptr [rdi + 8]
00000001405b8392 mov      rax, qword ptr [rax + 0x118]
00000001405b8399 call     qword ptr [rip + 0xcbf59]
00000001405b839f mov      rax, qword ptr [rsi + 0x28]
00000001405b83a3 mov      edx, r14d
00000001405b83a6 mov      r8d, dword ptr [rbp + 0x30]
00000001405b83aa mov      rcx, rdi
00000001405b83ad call     qword ptr [rip + 0xcbf45]
00000001405b83b3 mov      rax, qword ptr [rsi + 0x20]
00000001405b83b7 lea      ebx, [r15 - 0x60]
00000001405b83bb mov      edx, ebx
00000001405b83bd mov      rcx, rdi
00000001405b83c0 call     qword ptr [rip + 0xcbf32]
00000001405b83c6 mov      r9d, 0x18600058
00000001405b83cc lea      r8, [rip + 0xc6d6d]
00000001405b83d3 and      eax, 0xffffffd1
00000001405b83d6 mov      edx, r13d
00000001405b83d9 or       eax, 0xd1
00000001405b83de mov      dword ptr [rbp + 0x30], eax
00000001405b83e1 mov      rax, qword ptr [rdi + 0x18]
00000001405b83e5 mov      rcx, qword ptr [rdi + 8]
00000001405b83e9 mov      rax, qword ptr [rax + 0x118]
00000001405b83f0 call     qword ptr [rip + 0xcbf02]
00000001405b83f6 mov      eax, dword ptr [rbp + 0x30]
00000001405b83f9 lea      r8, [rip + 0xc6d70]
00000001405b8400 and      eax, 0xffd1ffff
00000001405b8405 mov      r9d, 0x18600058
00000001405b840b or       eax, 0xd10000
00000001405b8410 mov      edx, r13d
00000001405b8413 mov      dword ptr [rbp + 0x30], eax
00000001405b8416 mov      rax, qword ptr [rdi + 0x18]
00000001405b841a mov      rcx, qword ptr [rdi + 8]
00000001405b841e mov      rax, qword ptr [rax + 0x118]
00000001405b8425 call     qword ptr [rip + 0xcbecd]
00000001405b842b mov      rax, qword ptr [rsi + 0x28]
00000001405b842f mov      edx, ebx
00000001405b8431 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8435 mov      rcx, rdi
00000001405b8438 call     qword ptr [rip + 0xcbeba]
00000001405b843e mov      rax, qword ptr [rsi + 0x20]
00000001405b8442 mov      ebx, 0xb024
00000001405b8447 mov      edx, ebx
00000001405b8449 mov      rcx, rdi
00000001405b844c call     qword ptr [rip + 0xcbea6]
00000001405b8452 mov      r9d, 0x1860b024
00000001405b8458 lea      r8, [rip + 0xc6f21]
00000001405b845f or       eax, 0xe00000
00000001405b8464 mov      edx, r13d
00000001405b8467 mov      dword ptr [rbp + 0x30], eax
00000001405b846a mov      rax, qword ptr [rdi + 0x18]
00000001405b846e mov      rcx, qword ptr [rdi + 8]
00000001405b8472 mov      rax, qword ptr [rax + 0x118]
00000001405b8479 call     qword ptr [rip + 0xcbe79]
00000001405b847f mov      rax, qword ptr [rsi + 0x28]
00000001405b8483 mov      edx, ebx
00000001405b8485 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8489 mov      rcx, rdi
00000001405b848c call     qword ptr [rip + 0xcbe66]
00000001405b8492 mov      rax, qword ptr [rdi + 0x18]
00000001405b8496 lea      r8, [rip + 0xc6f13]
00000001405b849d mov      rcx, qword ptr [rdi + 8]
00000001405b84a1 mov      edx, r13d
00000001405b84a4 mov      rax, qword ptr [rax + 0x118]
00000001405b84ab call     qword ptr [rip + 0xcbe47]
00000001405b84b1 lea      rdx, [rip + 0x71a250]
00000001405b84b8 jmp      0x1405bd0a2
00000001405b84bd mov      rax, qword ptr [rdi + 0x18]
00000001405b84c1 lea      r8, [rip + 0xc6df8]
00000001405b84c8 mov      rcx, qword ptr [rdi + 8]
00000001405b84cc mov      edx, r13d
00000001405b84cf mov      rax, qword ptr [rax + 0x118]
00000001405b84d6 call     qword ptr [rip + 0xcbe1c]
00000001405b84dc mov      rax, qword ptr [rsi + 0x20]
00000001405b84e0 mov      r14d, 0xf4
00000001405b84e6 mov      edx, r14d
00000001405b84e9 mov      rcx, rdi
00000001405b84ec call     qword ptr [rip + 0xcbe06]
00000001405b84f2 mov      r9d, 0x186000f4
00000001405b84f8 lea      r8, [rip + 0xafcd1]
00000001405b84ff btr      eax, 0x11
00000001405b8503 mov      edx, r13d
00000001405b8506 bts      eax, 0x10
00000001405b850a mov      dword ptr [rbp + 0x30], eax
00000001405b850d mov      rax, qword ptr [rdi + 0x18]
00000001405b8511 mov      rcx, qword ptr [rdi + 8]
00000001405b8515 mov      rax, qword ptr [rax + 0x118]
00000001405b851c call     qword ptr [rip + 0xcbdd6]
00000001405b8522 mov      rax, qword ptr [rsi + 0x28]
00000001405b8526 mov      edx, r14d
00000001405b8529 mov      r8d, dword ptr [rbp + 0x30]
00000001405b852d mov      rcx, rdi
00000001405b8530 call     qword ptr [rip + 0xcbdc2]
00000001405b8536 mov      rax, qword ptr [rsi + 0x20]
00000001405b853a mov      ebx, 0x58
00000001405b853f mov      edx, ebx
00000001405b8541 mov      rcx, rdi
00000001405b8544 call     qword ptr [rip + 0xcbdae]
00000001405b854a mov      r9d, 0x18600058
00000001405b8550 lea      r8, [rip + 0xc6be9]
00000001405b8557 and      eax, 0xffffffd1
00000001405b855a mov      edx, r13d
00000001405b855d or       eax, 0xd1
00000001405b8562 mov      dword ptr [rbp + 0x30], eax
00000001405b8565 mov      rax, qword ptr [rdi + 0x18]
00000001405b8569 mov      rcx, qword ptr [rdi + 8]
00000001405b856d mov      rax, qword ptr [rax + 0x118]
00000001405b8574 call     qword ptr [rip + 0xcbd7e]
00000001405b857a mov      eax, dword ptr [rbp + 0x30]
00000001405b857d lea      r8, [rip + 0xc6bec]
00000001405b8584 and      eax, 0xffd1ffff
00000001405b8589 mov      r9d, 0x18600058
00000001405b858f or       eax, 0xd10000
00000001405b8594 mov      edx, r13d
00000001405b8597 mov      dword ptr [rbp + 0x30], eax
00000001405b859a mov      rax, qword ptr [rdi + 0x18]
00000001405b859e mov      rcx, qword ptr [rdi + 8]
00000001405b85a2 mov      rax, qword ptr [rax + 0x118]
00000001405b85a9 call     qword ptr [rip + 0xcbd49]
00000001405b85af mov      rax, qword ptr [rsi + 0x28]
00000001405b85b3 mov      edx, ebx
00000001405b85b5 mov      r8d, dword ptr [rbp + 0x30]
00000001405b85b9 mov      rcx, rdi
00000001405b85bc call     qword ptr [rip + 0xcbd36]
00000001405b85c2 mov      rax, qword ptr [rsi + 0x20]
00000001405b85c6 mov      ebx, 0xb024
00000001405b85cb mov      edx, ebx
00000001405b85cd mov      rcx, rdi
00000001405b85d0 call     qword ptr [rip + 0xcbd22]
00000001405b85d6 mov      r9d, 0x1860b024
00000001405b85dc lea      r8, [rip + 0xc6d0d]
00000001405b85e3 and      eax, 0xff63ffff
00000001405b85e8 mov      edx, r13d
00000001405b85eb or       eax, 0x630000
00000001405b85f0 mov      dword ptr [rbp + 0x30], eax
00000001405b85f3 mov      rax, qword ptr [rdi + 0x18]
00000001405b85f7 mov      rcx, qword ptr [rdi + 8]
00000001405b85fb mov      rax, qword ptr [rax + 0x118]
00000001405b8602 call     qword ptr [rip + 0xcbcf0]
00000001405b8608 mov      rax, qword ptr [rsi + 0x28]
00000001405b860c mov      edx, ebx
00000001405b860e mov      r8d, dword ptr [rbp + 0x30]
00000001405b8612 mov      rcx, rdi
00000001405b8615 call     qword ptr [rip + 0xcbcdd]
00000001405b861b mov      rax, qword ptr [rdi + 0x18]
00000001405b861f lea      r8, [rip + 0xc6cfa]
00000001405b8626 mov      edx, r13d
00000001405b8629 mov      rax, qword ptr [rax + 0x118]
00000001405b8630 mov      rcx, qword ptr [rdi + 8]
00000001405b8634 call     qword ptr [rip + 0xcbcbe]
00000001405b863a lea      rdx, [rip + 0x71a0b7]
00000001405b8641 jmp      0x1405bd0a2
00000001405b8646 mov      rax, qword ptr [rdi + 0x18]
00000001405b864a lea      r8, [rip + 0xc6bdf]
00000001405b8651 mov      rcx, qword ptr [rdi + 8]
00000001405b8655 mov      edx, r13d
00000001405b8658 mov      rax, qword ptr [rax + 0x118]
00000001405b865f call     qword ptr [rip + 0xcbc93]
00000001405b8665 mov      rax, qword ptr [rsi + 0x20]
00000001405b8669 mov      r14d, 0xf4
00000001405b866f mov      edx, r14d
00000001405b8672 mov      rcx, rdi
00000001405b8675 call     qword ptr [rip + 0xcbc7d]
00000001405b867b mov      r9d, 0x186000f4
00000001405b8681 lea      r8, [rip + 0xafb48]
00000001405b8688 btr      eax, 0x11
00000001405b868c mov      edx, r13d
00000001405b868f bts      eax, 0x10
00000001405b8693 mov      dword ptr [rbp + 0x30], eax
00000001405b8696 mov      rax, qword ptr [rdi + 0x18]
00000001405b869a mov      rcx, qword ptr [rdi + 8]
00000001405b869e mov      rax, qword ptr [rax + 0x118]
00000001405b86a5 call     qword ptr [rip + 0xcbc4d]
00000001405b86ab mov      rax, qword ptr [rsi + 0x28]
00000001405b86af mov      edx, r14d
00000001405b86b2 mov      r8d, dword ptr [rbp + 0x30]
00000001405b86b6 mov      rcx, rdi
00000001405b86b9 call     qword ptr [rip + 0xcbc39]
00000001405b86bf mov      rax, qword ptr [rsi + 0x20]
00000001405b86c3 mov      ebx, 0x58
00000001405b86c8 mov      edx, ebx
00000001405b86ca mov      rcx, rdi
00000001405b86cd call     qword ptr [rip + 0xcbc25]
00000001405b86d3 mov      r9d, 0x18600058
00000001405b86d9 lea      r8, [rip + 0xc6a60]
00000001405b86e0 and      eax, 0xffffffd1
00000001405b86e3 mov      edx, r13d
00000001405b86e6 or       eax, 0xd1
00000001405b86eb mov      dword ptr [rbp + 0x30], eax
00000001405b86ee mov      rax, qword ptr [rdi + 0x18]
00000001405b86f2 mov      rcx, qword ptr [rdi + 8]
00000001405b86f6 mov      rax, qword ptr [rax + 0x118]
00000001405b86fd call     qword ptr [rip + 0xcbbf5]
00000001405b8703 mov      eax, dword ptr [rbp + 0x30]
00000001405b8706 lea      r8, [rip + 0xc6a63]
00000001405b870d and      eax, 0xffd1ffff
00000001405b8712 mov      r9d, 0x18600058
00000001405b8718 or       eax, 0xd10000
00000001405b871d mov      edx, r13d
00000001405b8720 mov      dword ptr [rbp + 0x30], eax
00000001405b8723 mov      rax, qword ptr [rdi + 0x18]
00000001405b8727 mov      rcx, qword ptr [rdi + 8]
00000001405b872b mov      rax, qword ptr [rax + 0x118]
00000001405b8732 call     qword ptr [rip + 0xcbbc0]
00000001405b8738 mov      rax, qword ptr [rsi + 0x28]
00000001405b873c mov      edx, ebx
00000001405b873e mov      r8d, dword ptr [rbp + 0x30]
00000001405b8742 mov      rcx, rdi
00000001405b8745 call     qword ptr [rip + 0xcbbad]
00000001405b874b mov      rax, qword ptr [rsi + 0x20]
00000001405b874f mov      ebx, 0xb024
00000001405b8754 mov      edx, ebx
00000001405b8756 mov      rcx, rdi
00000001405b8759 call     qword ptr [rip + 0xcbb99]
00000001405b875f mov      r9d, 0x1860b024
00000001405b8765 lea      r8, [rip + 0xc6af4]
00000001405b876c and      eax, 0xff22ffff
00000001405b8771 mov      edx, r13d
00000001405b8774 or       eax, 0x220000
00000001405b8779 mov      dword ptr [rbp + 0x30], eax
00000001405b877c mov      rax, qword ptr [rdi + 0x18]
00000001405b8780 mov      rcx, qword ptr [rdi + 8]
00000001405b8784 mov      rax, qword ptr [rax + 0x118]
00000001405b878b call     qword ptr [rip + 0xcbb67]
00000001405b8791 mov      rax, qword ptr [rsi + 0x28]
00000001405b8795 mov      edx, ebx
00000001405b8797 mov      r8d, dword ptr [rbp + 0x30]
00000001405b879b mov      rcx, rdi
00000001405b879e call     qword ptr [rip + 0xcbb54]
00000001405b87a4 mov      rax, qword ptr [rdi + 0x18]
00000001405b87a8 lea      r8, [rip + 0xc6ae1]
00000001405b87af mov      edx, r13d
00000001405b87b2 mov      rax, qword ptr [rax + 0x118]
00000001405b87b9 mov      rcx, qword ptr [rdi + 8]
00000001405b87bd call     qword ptr [rip + 0xcbb35]
00000001405b87c3 lea      rdx, [rip + 0x719f1e]
00000001405b87ca jmp      0x1405bd0a2
00000001405b87cf mov      rax, qword ptr [rdi + 0x18]
00000001405b87d3 lea      r8, [rip + 0xb40a6]
00000001405b87da mov      rcx, qword ptr [rdi + 8]
00000001405b87de mov      edx, r13d
00000001405b87e1 mov      rax, qword ptr [rax + 0x118]
00000001405b87e8 call     qword ptr [rip + 0xcbb0a]
00000001405b87ee mov      rax, qword ptr [rsi + 0x20]
00000001405b87f2 mov      r14d, 0xf4
00000001405b87f8 mov      edx, r14d
00000001405b87fb mov      rcx, rdi
00000001405b87fe call     qword ptr [rip + 0xcbaf4]
00000001405b8804 mov      r9d, 0x186000f4
00000001405b880a lea      r8, [rip + 0xaf9bf]
00000001405b8811 btr      eax, 0x11
00000001405b8815 mov      edx, r13d
00000001405b8818 bts      eax, 0x10
00000001405b881c mov      dword ptr [rbp + 0x30], eax
00000001405b881f mov      rax, qword ptr [rdi + 0x18]
00000001405b8823 mov      rcx, qword ptr [rdi + 8]
00000001405b8827 mov      rax, qword ptr [rax + 0x118]
00000001405b882e call     qword ptr [rip + 0xcbac4]
00000001405b8834 mov      rax, qword ptr [rsi + 0x28]
00000001405b8838 mov      edx, r14d
00000001405b883b mov      r8d, dword ptr [rbp + 0x30]
00000001405b883f mov      rcx, rdi
00000001405b8842 call     qword ptr [rip + 0xcbab0]
00000001405b8848 mov      rax, qword ptr [rsi + 0x20]
00000001405b884c mov      ebx, 0x58
00000001405b8851 mov      edx, ebx
00000001405b8853 mov      rcx, rdi
00000001405b8856 call     qword ptr [rip + 0xcba9c]
00000001405b885c mov      r9d, 0x18600058
00000001405b8862 lea      r8, [rip + 0xc68d7]
00000001405b8869 and      eax, 0xffffffd1
00000001405b886c mov      edx, r13d
00000001405b886f or       eax, 0xd1
00000001405b8874 mov      dword ptr [rbp + 0x30], eax
00000001405b8877 mov      rax, qword ptr [rdi + 0x18]
00000001405b887b mov      rcx, qword ptr [rdi + 8]
00000001405b887f mov      rax, qword ptr [rax + 0x118]
00000001405b8886 call     qword ptr [rip + 0xcba6c]
00000001405b888c mov      eax, dword ptr [rbp + 0x30]
00000001405b888f lea      r8, [rip + 0xc68da]
00000001405b8896 and      eax, 0xffd1ffff
00000001405b889b mov      r9d, 0x18600058
00000001405b88a1 or       eax, 0xd10000
00000001405b88a6 mov      edx, r13d
00000001405b88a9 mov      dword ptr [rbp + 0x30], eax
00000001405b88ac mov      rax, qword ptr [rdi + 0x18]
00000001405b88b0 mov      rcx, qword ptr [rdi + 8]
00000001405b88b4 mov      rax, qword ptr [rax + 0x118]
00000001405b88bb call     qword ptr [rip + 0xcba37]
00000001405b88c1 mov      rax, qword ptr [rsi + 0x28]
00000001405b88c5 mov      edx, ebx
00000001405b88c7 mov      r8d, dword ptr [rbp + 0x30]
00000001405b88cb mov      rcx, rdi
00000001405b88ce call     qword ptr [rip + 0xcba24]
00000001405b88d4 mov      rax, qword ptr [rsi + 0x20]
00000001405b88d8 mov      ebx, 0xb024
00000001405b88dd mov      edx, ebx
00000001405b88df mov      rcx, rdi
00000001405b88e2 call     qword ptr [rip + 0xcba10]
00000001405b88e8 mov      r9d, 0x1860b024
00000001405b88ee lea      r8, [rip + 0xc690b]
00000001405b88f5 btr      eax, 0x16
00000001405b88f9 mov      edx, r13d
00000001405b88fc or       eax, 0xa00000
00000001405b8901 mov      dword ptr [rbp + 0x30], eax
00000001405b8904 mov      rax, qword ptr [rdi + 0x18]
00000001405b8908 mov      rcx, qword ptr [rdi + 8]
00000001405b890c mov      rax, qword ptr [rax + 0x118]
00000001405b8913 call     qword ptr [rip + 0xcb9df]
00000001405b8919 mov      rax, qword ptr [rsi + 0x28]
00000001405b891d mov      edx, ebx
00000001405b891f mov      r8d, dword ptr [rbp + 0x30]
00000001405b8923 mov      rcx, rdi
00000001405b8926 call     qword ptr [rip + 0xcb9cc]
00000001405b892c mov      rax, qword ptr [rdi + 0x18]
00000001405b8930 lea      r8, [rip + 0xb3fa9]
00000001405b8937 mov      edx, r13d
00000001405b893a mov      rax, qword ptr [rax + 0x118]
00000001405b8941 mov      rcx, qword ptr [rdi + 8]
00000001405b8945 call     qword ptr [rip + 0xcb9ad]
00000001405b894b lea      rdx, [rip + 0x719d86]
00000001405b8952 jmp      0x1405bd0a2
00000001405b8957 mov      rax, qword ptr [rdi + 0x18]
00000001405b895b lea      r8, [rip + 0xb3e8e]
00000001405b8962 mov      rcx, qword ptr [rdi + 8]
00000001405b8966 mov      edx, r13d
00000001405b8969 mov      rax, qword ptr [rax + 0x118]
00000001405b8970 call     qword ptr [rip + 0xcb982]
00000001405b8976 mov      rax, qword ptr [rsi + 0x20]
00000001405b897a mov      r14d, 0xf4
00000001405b8980 mov      edx, r14d
00000001405b8983 mov      rcx, rdi
00000001405b8986 call     qword ptr [rip + 0xcb96c]
00000001405b898c mov      r9d, 0x186000f4
00000001405b8992 lea      r8, [rip + 0xaf837]
00000001405b8999 btr      eax, 0x11
00000001405b899d mov      edx, r13d
00000001405b89a0 bts      eax, 0x10
00000001405b89a4 mov      dword ptr [rbp + 0x30], eax
00000001405b89a7 mov      rax, qword ptr [rdi + 0x18]
00000001405b89ab mov      rcx, qword ptr [rdi + 8]
00000001405b89af mov      rax, qword ptr [rax + 0x118]
00000001405b89b6 call     qword ptr [rip + 0xcb93c]
00000001405b89bc mov      rax, qword ptr [rsi + 0x28]
00000001405b89c0 mov      edx, r14d
00000001405b89c3 mov      r8d, dword ptr [rbp + 0x30]
00000001405b89c7 mov      rcx, rdi
00000001405b89ca call     qword ptr [rip + 0xcb928]
00000001405b89d0 mov      rax, qword ptr [rsi + 0x20]
00000001405b89d4 mov      ebx, 0x58
00000001405b89d9 mov      edx, ebx
00000001405b89db mov      rcx, rdi
00000001405b89de call     qword ptr [rip + 0xcb914]
00000001405b89e4 mov      r9d, 0x18600058
00000001405b89ea lea      r8, [rip + 0xc674f]
00000001405b89f1 and      eax, 0xffffffd1
00000001405b89f4 mov      edx, r13d
00000001405b89f7 or       eax, 0xd1
00000001405b89fc mov      dword ptr [rbp + 0x30], eax
00000001405b89ff mov      rax, qword ptr [rdi + 0x18]
00000001405b8a03 mov      rcx, qword ptr [rdi + 8]
00000001405b8a07 mov      rax, qword ptr [rax + 0x118]
00000001405b8a0e call     qword ptr [rip + 0xcb8e4]
00000001405b8a14 mov      eax, dword ptr [rbp + 0x30]
00000001405b8a17 lea      r8, [rip + 0xc6752]
00000001405b8a1e and      eax, 0xffd1ffff
00000001405b8a23 mov      r9d, 0x18600058
00000001405b8a29 or       eax, 0xd10000
00000001405b8a2e mov      edx, r13d
00000001405b8a31 mov      dword ptr [rbp + 0x30], eax
00000001405b8a34 mov      rax, qword ptr [rdi + 0x18]
00000001405b8a38 mov      rcx, qword ptr [rdi + 8]
00000001405b8a3c mov      rax, qword ptr [rax + 0x118]
00000001405b8a43 call     qword ptr [rip + 0xcb8af]
00000001405b8a49 mov      rax, qword ptr [rsi + 0x28]
00000001405b8a4d mov      edx, ebx
00000001405b8a4f mov      r8d, dword ptr [rbp + 0x30]
00000001405b8a53 mov      rcx, rdi
00000001405b8a56 call     qword ptr [rip + 0xcb89c]
00000001405b8a5c mov      rax, qword ptr [rsi + 0x20]
00000001405b8a60 mov      ebx, 0xb024
00000001405b8a65 mov      edx, ebx
00000001405b8a67 mov      rcx, rdi
00000001405b8a6a call     qword ptr [rip + 0xcb888]
00000001405b8a70 mov      r9d, 0x1860b024
00000001405b8a76 lea      r8, [rip + 0xc6753]
00000001405b8a7d btr      eax, 0x17
00000001405b8a81 mov      edx, r13d
00000001405b8a84 or       eax, 0x600000
00000001405b8a89 mov      dword ptr [rbp + 0x30], eax
00000001405b8a8c mov      rax, qword ptr [rdi + 0x18]
00000001405b8a90 mov      rcx, qword ptr [rdi + 8]
00000001405b8a94 mov      rax, qword ptr [rax + 0x118]
00000001405b8a9b call     qword ptr [rip + 0xcb857]
00000001405b8aa1 mov      rax, qword ptr [rsi + 0x28]
00000001405b8aa5 mov      edx, ebx
00000001405b8aa7 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8aab mov      rcx, rdi
00000001405b8aae call     qword ptr [rip + 0xcb844]
00000001405b8ab4 mov      rax, qword ptr [rdi + 0x18]
00000001405b8ab8 lea      r8, [rip + 0xb3d91]
00000001405b8abf mov      edx, r13d
00000001405b8ac2 mov      rax, qword ptr [rax + 0x118]
00000001405b8ac9 mov      rcx, qword ptr [rdi + 8]
00000001405b8acd call     qword ptr [rip + 0xcb825]
00000001405b8ad3 lea      rdx, [rip + 0x719bee]
00000001405b8ada jmp      0x1405bd0a2
00000001405b8adf mov      rax, qword ptr [rdi + 0x18]
00000001405b8ae3 lea      r8, [rip + 0xb3c16]
00000001405b8aea mov      rcx, qword ptr [rdi + 8]
00000001405b8aee mov      edx, r13d
00000001405b8af1 mov      rax, qword ptr [rax + 0x118]
00000001405b8af8 call     qword ptr [rip + 0xcb7fa]
00000001405b8afe mov      rax, qword ptr [rsi + 0x20]
00000001405b8b02 mov      r14d, 0xf4
00000001405b8b08 mov      edx, r14d
00000001405b8b0b mov      rcx, rdi
00000001405b8b0e call     qword ptr [rip + 0xcb7e4]
00000001405b8b14 mov      r9d, 0x186000f4
00000001405b8b1a lea      r8, [rip + 0xaf6af]
00000001405b8b21 btr      eax, 0x11
00000001405b8b25 mov      edx, r13d
00000001405b8b28 bts      eax, 0x10
00000001405b8b2c mov      dword ptr [rbp + 0x30], eax
00000001405b8b2f mov      rax, qword ptr [rdi + 0x18]
00000001405b8b33 mov      rcx, qword ptr [rdi + 8]
00000001405b8b37 mov      rax, qword ptr [rax + 0x118]
00000001405b8b3e call     qword ptr [rip + 0xcb7b4]
00000001405b8b44 mov      rax, qword ptr [rsi + 0x28]
00000001405b8b48 mov      edx, r14d
00000001405b8b4b mov      r8d, dword ptr [rbp + 0x30]
00000001405b8b4f mov      rcx, rdi
00000001405b8b52 call     qword ptr [rip + 0xcb7a0]
00000001405b8b58 mov      rax, qword ptr [rsi + 0x20]
00000001405b8b5c mov      ebx, 0x58
00000001405b8b61 mov      edx, ebx
00000001405b8b63 mov      rcx, rdi
00000001405b8b66 call     qword ptr [rip + 0xcb78c]
00000001405b8b6c mov      r9d, 0x18600058
00000001405b8b72 lea      r8, [rip + 0xc65c7]
00000001405b8b79 and      eax, 0xffffffd1
00000001405b8b7c mov      edx, r13d
00000001405b8b7f or       eax, 0xd1
00000001405b8b84 mov      dword ptr [rbp + 0x30], eax
00000001405b8b87 mov      rax, qword ptr [rdi + 0x18]
00000001405b8b8b mov      rcx, qword ptr [rdi + 8]
00000001405b8b8f mov      rax, qword ptr [rax + 0x118]
00000001405b8b96 call     qword ptr [rip + 0xcb75c]
00000001405b8b9c mov      eax, dword ptr [rbp + 0x30]
00000001405b8b9f lea      r8, [rip + 0xc65ca]
00000001405b8ba6 and      eax, 0xffd1ffff
00000001405b8bab mov      r9d, 0x18600058
00000001405b8bb1 or       eax, 0xd10000
00000001405b8bb6 mov      edx, r13d
00000001405b8bb9 mov      dword ptr [rbp + 0x30], eax
00000001405b8bbc mov      rax, qword ptr [rdi + 0x18]
00000001405b8bc0 mov      rcx, qword ptr [rdi + 8]
00000001405b8bc4 mov      rax, qword ptr [rax + 0x118]
00000001405b8bcb call     qword ptr [rip + 0xcb727]
00000001405b8bd1 mov      rax, qword ptr [rsi + 0x28]
00000001405b8bd5 mov      edx, ebx
00000001405b8bd7 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8bdb mov      rcx, rdi
00000001405b8bde call     qword ptr [rip + 0xcb714]
00000001405b8be4 mov      rax, qword ptr [rsi + 0x20]
00000001405b8be8 mov      ebx, 0xb024
00000001405b8bed mov      edx, ebx
00000001405b8bef mov      rcx, rdi
00000001405b8bf2 call     qword ptr [rip + 0xcb700]
00000001405b8bf8 mov      r9d, 0x1860b024
00000001405b8bfe lea      r8, [rip + 0xc659b]
00000001405b8c05 and      eax, 0xff3fffff
00000001405b8c0a mov      edx, r13d
00000001405b8c0d bts      eax, 0x15
00000001405b8c11 mov      dword ptr [rbp + 0x30], eax
00000001405b8c14 mov      rax, qword ptr [rdi + 0x18]
00000001405b8c18 mov      rcx, qword ptr [rdi + 8]
00000001405b8c1c mov      rax, qword ptr [rax + 0x118]
00000001405b8c23 call     qword ptr [rip + 0xcb6cf]
00000001405b8c29 mov      rax, qword ptr [rsi + 0x28]
00000001405b8c2d mov      edx, ebx
00000001405b8c2f mov      r8d, dword ptr [rbp + 0x30]
00000001405b8c33 mov      rcx, rdi
00000001405b8c36 call     qword ptr [rip + 0xcb6bc]
00000001405b8c3c mov      rax, qword ptr [rdi + 0x18]
00000001405b8c40 lea      r8, [rip + 0xb3b79]
00000001405b8c47 mov      edx, r13d
00000001405b8c4a mov      rax, qword ptr [rax + 0x118]
00000001405b8c51 mov      rcx, qword ptr [rdi + 8]
00000001405b8c55 call     qword ptr [rip + 0xcb69d]
00000001405b8c5b lea      rdx, [rip + 0x719a56]
00000001405b8c62 jmp      0x1405bd0a2
00000001405b8c67 mov      rax, qword ptr [rdi + 0x18]
00000001405b8c6b lea      r8, [rip + 0xc676e]
00000001405b8c72 mov      rcx, qword ptr [rdi + 8]
00000001405b8c76 mov      edx, r13d
00000001405b8c79 mov      rax, qword ptr [rax + 0x118]
00000001405b8c80 call     qword ptr [rip + 0xcb672]
00000001405b8c86 mov      rax, qword ptr [rsi + 0x20]
00000001405b8c8a mov      r14d, 0xf4
00000001405b8c90 mov      edx, r14d
00000001405b8c93 mov      rcx, rdi
00000001405b8c96 call     qword ptr [rip + 0xcb65c]
00000001405b8c9c mov      r9d, 0x186000f4
00000001405b8ca2 lea      r8, [rip + 0xaf527]
00000001405b8ca9 btr      eax, 0x11
00000001405b8cad mov      edx, r13d
00000001405b8cb0 bts      eax, 0x10
00000001405b8cb4 mov      dword ptr [rbp + 0x30], eax
00000001405b8cb7 mov      rax, qword ptr [rdi + 0x18]
00000001405b8cbb mov      rcx, qword ptr [rdi + 8]
00000001405b8cbf mov      rax, qword ptr [rax + 0x118]
00000001405b8cc6 call     qword ptr [rip + 0xcb62c]
00000001405b8ccc mov      rax, qword ptr [rsi + 0x28]
00000001405b8cd0 mov      edx, r14d
00000001405b8cd3 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8cd7 mov      rcx, rdi
00000001405b8cda call     qword ptr [rip + 0xcb618]
00000001405b8ce0 mov      rax, qword ptr [rsi + 0x20]
00000001405b8ce4 mov      ebx, 0x58
00000001405b8ce9 mov      edx, ebx
00000001405b8ceb mov      rcx, rdi
00000001405b8cee call     qword ptr [rip + 0xcb604]
00000001405b8cf4 mov      r9d, 0x18600058
00000001405b8cfa lea      r8, [rip + 0xc643f]
00000001405b8d01 and      eax, 0xffffffd1
00000001405b8d04 mov      edx, r13d
00000001405b8d07 or       eax, 0xd1
00000001405b8d0c mov      dword ptr [rbp + 0x30], eax
00000001405b8d0f mov      rax, qword ptr [rdi + 0x18]
00000001405b8d13 mov      rcx, qword ptr [rdi + 8]
00000001405b8d17 mov      rax, qword ptr [rax + 0x118]
00000001405b8d1e call     qword ptr [rip + 0xcb5d4]
00000001405b8d24 mov      eax, dword ptr [rbp + 0x30]
00000001405b8d27 lea      r8, [rip + 0xc6442]
00000001405b8d2e and      eax, 0xffd1ffff
00000001405b8d33 mov      r9d, 0x18600058
00000001405b8d39 or       eax, 0xd10000
00000001405b8d3e mov      edx, r13d
00000001405b8d41 mov      dword ptr [rbp + 0x30], eax
00000001405b8d44 mov      rax, qword ptr [rdi + 0x18]
00000001405b8d48 mov      rcx, qword ptr [rdi + 8]
00000001405b8d4c mov      rax, qword ptr [rax + 0x118]
00000001405b8d53 call     qword ptr [rip + 0xcb59f]
00000001405b8d59 mov      rax, qword ptr [rsi + 0x28]
00000001405b8d5d mov      edx, ebx
00000001405b8d5f mov      r8d, dword ptr [rbp + 0x30]
00000001405b8d63 mov      rcx, rdi
00000001405b8d66 call     qword ptr [rip + 0xcb58c]
00000001405b8d6c mov      rax, qword ptr [rsi + 0x20]
00000001405b8d70 mov      ebx, 0xb024
00000001405b8d75 mov      edx, ebx
00000001405b8d77 mov      rcx, rdi
00000001405b8d7a call     qword ptr [rip + 0xcb578]
00000001405b8d80 mov      r9d, 0x1860b024
00000001405b8d86 lea      r8, [rip + 0xc6413]
00000001405b8d8d and      eax, 0xff3fffff
00000001405b8d92 mov      edx, r13d
00000001405b8d95 bts      eax, 0x15
00000001405b8d99 mov      dword ptr [rbp + 0x30], eax
00000001405b8d9c mov      rax, qword ptr [rdi + 0x18]
00000001405b8da0 mov      rcx, qword ptr [rdi + 8]
00000001405b8da4 mov      rax, qword ptr [rax + 0x118]
00000001405b8dab call     qword ptr [rip + 0xcb547]
00000001405b8db1 mov      rax, qword ptr [rsi + 0x28]
00000001405b8db5 mov      edx, ebx
00000001405b8db7 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8dbb mov      rcx, rdi
00000001405b8dbe call     qword ptr [rip + 0xcb534]
00000001405b8dc4 mov      rax, qword ptr [rdi + 0x18]
00000001405b8dc8 lea      r8, [rip + 0xc6641]
00000001405b8dcf mov      edx, r13d
00000001405b8dd2 mov      rax, qword ptr [rax + 0x118]
00000001405b8dd9 mov      rcx, qword ptr [rdi + 8]
00000001405b8ddd call     qword ptr [rip + 0xcb515]
00000001405b8de3 lea      rdx, [rip + 0x71992e]
00000001405b8dea jmp      0x1405bd0a2
00000001405b8def sub      ebx, 0xa6
00000001405b8df5 je       0x1405b943d
00000001405b8dfb sub      ebx, r13d
00000001405b8dfe je       0x1405b92b5
00000001405b8e04 sub      ebx, r13d
00000001405b8e07 je       0x1405b912c
00000001405b8e0d sub      ebx, r13d
00000001405b8e10 je       0x1405b8fa3
00000001405b8e16 cmp      ebx, r13d
00000001405b8e19 jne      0x1405bca8d
00000001405b8e1f mov      rax, qword ptr [rdi + 0x18]
00000001405b8e23 lea      r8, [rip + 0xc6796]
00000001405b8e2a mov      rcx, qword ptr [rdi + 8]
00000001405b8e2e mov      edx, r13d
00000001405b8e31 mov      rax, qword ptr [rax + 0x118]
00000001405b8e38 call     qword ptr [rip + 0xcb4ba]
00000001405b8e3e mov      rax, qword ptr [rsi + 0x20]
00000001405b8e42 mov      r14d, 0xf4
00000001405b8e48 mov      edx, r14d
00000001405b8e4b mov      rcx, rdi
00000001405b8e4e call     qword ptr [rip + 0xcb4a4]
00000001405b8e54 mov      r9d, 0x186000f4
00000001405b8e5a lea      r8, [rip + 0xaf36f]
00000001405b8e61 btr      eax, 0x11
00000001405b8e65 mov      edx, r13d
00000001405b8e68 bts      eax, 0x10
00000001405b8e6c mov      dword ptr [rbp + 0x30], eax
00000001405b8e6f mov      rax, qword ptr [rdi + 0x18]
00000001405b8e73 mov      rcx, qword ptr [rdi + 8]
00000001405b8e77 mov      rax, qword ptr [rax + 0x118]
00000001405b8e7e call     qword ptr [rip + 0xcb474]
00000001405b8e84 mov      rax, qword ptr [rsi + 0x28]
00000001405b8e88 mov      edx, r14d
00000001405b8e8b mov      r8d, dword ptr [rbp + 0x30]
00000001405b8e8f mov      rcx, rdi
00000001405b8e92 call     qword ptr [rip + 0xcb460]
00000001405b8e98 mov      rax, qword ptr [rsi + 0x20]
00000001405b8e9c mov      ebx, 0x58
00000001405b8ea1 mov      edx, ebx
00000001405b8ea3 mov      rcx, rdi
00000001405b8ea6 call     qword ptr [rip + 0xcb44c]
00000001405b8eac mov      r9d, 0x18600058
00000001405b8eb2 lea      r8, [rip + 0xc6287]
00000001405b8eb9 and      eax, 0xffffffd1
00000001405b8ebc mov      edx, r13d
00000001405b8ebf or       eax, 0xd1
00000001405b8ec4 mov      dword ptr [rbp + 0x30], eax
00000001405b8ec7 mov      rax, qword ptr [rdi + 0x18]
00000001405b8ecb mov      rcx, qword ptr [rdi + 8]
00000001405b8ecf mov      rax, qword ptr [rax + 0x118]
00000001405b8ed6 call     qword ptr [rip + 0xcb41c]
00000001405b8edc mov      eax, dword ptr [rbp + 0x30]
00000001405b8edf lea      r8, [rip + 0xc628a]
00000001405b8ee6 and      eax, 0xffd1ffff
00000001405b8eeb mov      r9d, 0x18600058
00000001405b8ef1 or       eax, 0xd10000
00000001405b8ef6 mov      edx, r13d
00000001405b8ef9 mov      dword ptr [rbp + 0x30], eax
00000001405b8efc mov      rax, qword ptr [rdi + 0x18]
00000001405b8f00 mov      rcx, qword ptr [rdi + 8]
00000001405b8f04 mov      rax, qword ptr [rax + 0x118]
00000001405b8f0b call     qword ptr [rip + 0xcb3e7]
00000001405b8f11 mov      rax, qword ptr [rsi + 0x28]
00000001405b8f15 mov      edx, ebx
00000001405b8f17 mov      r8d, dword ptr [rbp + 0x30]
00000001405b8f1b mov      rcx, rdi
00000001405b8f1e call     qword ptr [rip + 0xcb3d4]
00000001405b8f24 mov      rax, qword ptr [rsi + 0x20]
00000001405b8f28 mov      ebx, 0xb024
00000001405b8f2d mov      edx, ebx
00000001405b8f2f mov      rcx, rdi
00000001405b8f32 call     qword ptr [rip + 0xcb3c0]
00000001405b8f38 mov      r9d, 0x1860b024
00000001405b8f3e lea      r8, [rip + 0xc643b]
00000001405b8f45 or       eax, 0xe00000
00000001405b8f4a mov      edx, r13d
00000001405b8f4d mov      dword ptr [rbp + 0x30], eax
00000001405b8f50 mov      rax, qword ptr [rdi + 0x18]
00000001405b8f54 mov      rcx, qword ptr [rdi + 8]
00000001405b8f58 mov      rax, qword ptr [rax + 0x118]
00000001405b8f5f call     qword ptr [rip + 0xcb393]
00000001405b8f65 mov      rax, qword ptr [rsi + 0x28]
00000001405b8f69 mov      edx, ebx
00000001405b8f6b mov      r8d, dword ptr [rbp + 0x30]
00000001405b8f6f mov      rcx, rdi
00000001405b8f72 call     qword ptr [rip + 0xcb380]
00000001405b8f78 mov      rax, qword ptr [rdi + 0x18]
00000001405b8f7c lea      r8, [rip + 0xc666d]
00000001405b8f83 mov      rcx, qword ptr [rdi + 8]
00000001405b8f87 mov      edx, r13d
00000001405b8f8a mov      rax, qword ptr [rax + 0x118]
00000001405b8f91 call     qword ptr [rip + 0xcb361]
00000001405b8f97 lea      rdx, [rip + 0x7197ca]
00000001405b8f9e jmp      0x1405bd0a2
00000001405b8fa3 mov      rax, qword ptr [rdi + 0x18]
00000001405b8fa7 lea      r8, [rip + 0xc65b2]
00000001405b8fae mov      rcx, qword ptr [rdi + 8]
00000001405b8fb2 mov      edx, r13d
00000001405b8fb5 mov      rax, qword ptr [rax + 0x118]
00000001405b8fbc call     qword ptr [rip + 0xcb336]
00000001405b8fc2 mov      rax, qword ptr [rsi + 0x20]
00000001405b8fc6 mov      r14d, 0xf4
00000001405b8fcc mov      edx, r14d
00000001405b8fcf mov      rcx, rdi
00000001405b8fd2 call     qword ptr [rip + 0xcb320]
00000001405b8fd8 mov      r9d, 0x186000f4
00000001405b8fde lea      r8, [rip + 0xaf1eb]
00000001405b8fe5 btr      eax, 0x11
00000001405b8fe9 mov      edx, r13d
00000001405b8fec bts      eax, 0x10
00000001405b8ff0 mov      dword ptr [rbp + 0x30], eax
00000001405b8ff3 mov      rax, qword ptr [rdi + 0x18]
00000001405b8ff7 mov      rcx, qword ptr [rdi + 8]
00000001405b8ffb mov      rax, qword ptr [rax + 0x118]
00000001405b9002 call     qword ptr [rip + 0xcb2f0]
00000001405b9008 mov      rax, qword ptr [rsi + 0x28]
00000001405b900c mov      edx, r14d
00000001405b900f mov      r8d, dword ptr [rbp + 0x30]
00000001405b9013 mov      rcx, rdi
00000001405b9016 call     qword ptr [rip + 0xcb2dc]
00000001405b901c mov      rax, qword ptr [rsi + 0x20]
00000001405b9020 mov      ebx, 0x58
00000001405b9025 mov      edx, ebx
00000001405b9027 mov      rcx, rdi
00000001405b902a call     qword ptr [rip + 0xcb2c8]
00000001405b9030 mov      r9d, 0x18600058
00000001405b9036 lea      r8, [rip + 0xc6103]
00000001405b903d and      eax, 0xffffffd1
00000001405b9040 mov      edx, r13d
00000001405b9043 or       eax, 0xd1
00000001405b9048 mov      dword ptr [rbp + 0x30], eax
00000001405b904b mov      rax, qword ptr [rdi + 0x18]
00000001405b904f mov      rcx, qword ptr [rdi + 8]
00000001405b9053 mov      rax, qword ptr [rax + 0x118]
00000001405b905a call     qword ptr [rip + 0xcb298]
00000001405b9060 mov      eax, dword ptr [rbp + 0x30]
00000001405b9063 lea      r8, [rip + 0xc6106]
00000001405b906a and      eax, 0xffd1ffff
00000001405b906f mov      r9d, 0x18600058
00000001405b9075 or       eax, 0xd10000
00000001405b907a mov      edx, r13d
00000001405b907d mov      dword ptr [rbp + 0x30], eax
00000001405b9080 mov      rax, qword ptr [rdi + 0x18]
00000001405b9084 mov      rcx, qword ptr [rdi + 8]
00000001405b9088 mov      rax, qword ptr [rax + 0x118]
00000001405b908f call     qword ptr [rip + 0xcb263]
00000001405b9095 mov      rax, qword ptr [rsi + 0x28]
00000001405b9099 mov      edx, ebx
00000001405b909b mov      r8d, dword ptr [rbp + 0x30]
00000001405b909f mov      rcx, rdi
00000001405b90a2 call     qword ptr [rip + 0xcb250]
00000001405b90a8 mov      rax, qword ptr [rsi + 0x20]
00000001405b90ac mov      ebx, 0xb024
00000001405b90b1 mov      edx, ebx
00000001405b90b3 mov      rcx, rdi
00000001405b90b6 call     qword ptr [rip + 0xcb23c]
00000001405b90bc mov      r9d, 0x1860b024
00000001405b90c2 lea      r8, [rip + 0xc6227]
00000001405b90c9 and      eax, 0xff63ffff
00000001405b90ce mov      edx, r13d
00000001405b90d1 or       eax, 0x630000
00000001405b90d6 mov      dword ptr [rbp + 0x30], eax
00000001405b90d9 mov      rax, qword ptr [rdi + 0x18]
00000001405b90dd mov      rcx, qword ptr [rdi + 8]
00000001405b90e1 mov      rax, qword ptr [rax + 0x118]
00000001405b90e8 call     qword ptr [rip + 0xcb20a]
00000001405b90ee mov      rax, qword ptr [rsi + 0x28]
00000001405b90f2 mov      edx, ebx
00000001405b90f4 mov      r8d, dword ptr [rbp + 0x30]
00000001405b90f8 mov      rcx, rdi
00000001405b90fb call     qword ptr [rip + 0xcb1f7]
00000001405b9101 mov      rax, qword ptr [rdi + 0x18]
00000001405b9105 lea      r8, [rip + 0xc6484]
00000001405b910c mov      edx, r13d
00000001405b910f mov      rax, qword ptr [rax + 0x118]
00000001405b9116 mov      rcx, qword ptr [rdi + 8]
00000001405b911a call     qword ptr [rip + 0xcb1d8]
00000001405b9120 lea      rdx, [rip + 0x719631]
00000001405b9127 jmp      0x1405bd0a2
00000001405b912c mov      rax, qword ptr [rdi + 0x18]
00000001405b9130 lea      r8, [rip + 0xc63c9]
00000001405b9137 mov      rcx, qword ptr [rdi + 8]
00000001405b913b mov      edx, r13d
00000001405b913e mov      rax, qword ptr [rax + 0x118]
00000001405b9145 call     qword ptr [rip + 0xcb1ad]
00000001405b914b mov      rax, qword ptr [rsi + 0x20]
00000001405b914f mov      r14d, 0xf4
00000001405b9155 mov      edx, r14d
00000001405b9158 mov      rcx, rdi
00000001405b915b call     qword ptr [rip + 0xcb197]
00000001405b9161 mov      r9d, 0x186000f4
00000001405b9167 lea      r8, [rip + 0xaf062]
00000001405b916e btr      eax, 0x11
00000001405b9172 mov      edx, r13d
00000001405b9175 bts      eax, 0x10
00000001405b9179 mov      dword ptr [rbp + 0x30], eax
00000001405b917c mov      rax, qword ptr [rdi + 0x18]
00000001405b9180 mov      rcx, qword ptr [rdi + 8]
00000001405b9184 mov      rax, qword ptr [rax + 0x118]
00000001405b918b call     qword ptr [rip + 0xcb167]
00000001405b9191 mov      rax, qword ptr [rsi + 0x28]
00000001405b9195 mov      edx, r14d
00000001405b9198 mov      r8d, dword ptr [rbp + 0x30]
00000001405b919c mov      rcx, rdi
00000001405b919f call     qword ptr [rip + 0xcb153]
00000001405b91a5 mov      rax, qword ptr [rsi + 0x20]
00000001405b91a9 mov      ebx, 0x58
00000001405b91ae mov      edx, ebx
00000001405b91b0 mov      rcx, rdi
00000001405b91b3 call     qword ptr [rip + 0xcb13f]
00000001405b91b9 mov      r9d, 0x18600058
00000001405b91bf lea      r8, [rip + 0xc5f7a]
00000001405b91c6 and      eax, 0xffffffd1
00000001405b91c9 mov      edx, r13d
00000001405b91cc or       eax, 0xd1
00000001405b91d1 mov      dword ptr [rbp + 0x30], eax
00000001405b91d4 mov      rax, qword ptr [rdi + 0x18]
00000001405b91d8 mov      rcx, qword ptr [rdi + 8]
00000001405b91dc mov      rax, qword ptr [rax + 0x118]
00000001405b91e3 call     qword ptr [rip + 0xcb10f]
00000001405b91e9 mov      eax, dword ptr [rbp + 0x30]
00000001405b91ec lea      r8, [rip + 0xc5f7d]
00000001405b91f3 and      eax, 0xffd1ffff
00000001405b91f8 mov      r9d, 0x18600058
00000001405b91fe or       eax, 0xd10000
00000001405b9203 mov      edx, r13d
00000001405b9206 mov      dword ptr [rbp + 0x30], eax
00000001405b9209 mov      rax, qword ptr [rdi + 0x18]
00000001405b920d mov      rcx, qword ptr [rdi + 8]
00000001405b9211 mov      rax, qword ptr [rax + 0x118]
00000001405b9218 call     qword ptr [rip + 0xcb0da]
00000001405b921e mov      rax, qword ptr [rsi + 0x28]
00000001405b9222 mov      edx, ebx
00000001405b9224 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9228 mov      rcx, rdi
00000001405b922b call     qword ptr [rip + 0xcb0c7]
00000001405b9231 mov      rax, qword ptr [rsi + 0x20]
00000001405b9235 mov      ebx, 0xb024
00000001405b923a mov      edx, ebx
00000001405b923c mov      rcx, rdi
00000001405b923f call     qword ptr [rip + 0xcb0b3]
00000001405b9245 mov      r9d, 0x1860b024
00000001405b924b lea      r8, [rip + 0xc600e]
00000001405b9252 and      eax, 0xff22ffff
00000001405b9257 mov      edx, r13d
00000001405b925a or       eax, 0x220000
00000001405b925f mov      dword ptr [rbp + 0x30], eax
00000001405b9262 mov      rax, qword ptr [rdi + 0x18]
00000001405b9266 mov      rcx, qword ptr [rdi + 8]
00000001405b926a mov      rax, qword ptr [rax + 0x118]
00000001405b9271 call     qword ptr [rip + 0xcb081]
00000001405b9277 mov      rax, qword ptr [rsi + 0x28]
00000001405b927b mov      edx, ebx
00000001405b927d mov      r8d, dword ptr [rbp + 0x30]
00000001405b9281 mov      rcx, rdi
00000001405b9284 call     qword ptr [rip + 0xcb06e]
00000001405b928a mov      rax, qword ptr [rdi + 0x18]
00000001405b928e lea      r8, [rip + 0xc629b]
00000001405b9295 mov      edx, r13d
00000001405b9298 mov      rax, qword ptr [rax + 0x118]
00000001405b929f mov      rcx, qword ptr [rdi + 8]
00000001405b92a3 call     qword ptr [rip + 0xcb04f]
00000001405b92a9 lea      rdx, [rip + 0x719498]
00000001405b92b0 jmp      0x1405bd0a2
00000001405b92b5 mov      rax, qword ptr [rdi + 0x18]
00000001405b92b9 lea      r8, [rip + 0xc61e0]
00000001405b92c0 mov      rcx, qword ptr [rdi + 8]
00000001405b92c4 mov      edx, r13d
00000001405b92c7 mov      rax, qword ptr [rax + 0x118]
00000001405b92ce call     qword ptr [rip + 0xcb024]
00000001405b92d4 mov      rax, qword ptr [rsi + 0x20]
00000001405b92d8 mov      r14d, 0xf4
00000001405b92de mov      edx, r14d
00000001405b92e1 mov      rcx, rdi
00000001405b92e4 call     qword ptr [rip + 0xcb00e]
00000001405b92ea mov      r9d, 0x186000f4
00000001405b92f0 lea      r8, [rip + 0xaeed9]
00000001405b92f7 btr      eax, 0x11
00000001405b92fb mov      edx, r13d
00000001405b92fe bts      eax, 0x10
00000001405b9302 mov      dword ptr [rbp + 0x30], eax
00000001405b9305 mov      rax, qword ptr [rdi + 0x18]
00000001405b9309 mov      rcx, qword ptr [rdi + 8]
00000001405b930d mov      rax, qword ptr [rax + 0x118]
00000001405b9314 call     qword ptr [rip + 0xcafde]
00000001405b931a mov      rax, qword ptr [rsi + 0x28]
00000001405b931e mov      edx, r14d
00000001405b9321 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9325 mov      rcx, rdi
00000001405b9328 call     qword ptr [rip + 0xcafca]
00000001405b932e mov      rax, qword ptr [rsi + 0x20]
00000001405b9332 mov      ebx, 0x58
00000001405b9337 mov      edx, ebx
00000001405b9339 mov      rcx, rdi
00000001405b933c call     qword ptr [rip + 0xcafb6]
00000001405b9342 mov      r9d, 0x18600058
00000001405b9348 lea      r8, [rip + 0xc5df1]
00000001405b934f and      eax, 0xffffffd1
00000001405b9352 mov      edx, r13d
00000001405b9355 or       eax, 0xd1
00000001405b935a mov      dword ptr [rbp + 0x30], eax
00000001405b935d mov      rax, qword ptr [rdi + 0x18]
00000001405b9361 mov      rcx, qword ptr [rdi + 8]
00000001405b9365 mov      rax, qword ptr [rax + 0x118]
00000001405b936c call     qword ptr [rip + 0xcaf86]
00000001405b9372 mov      eax, dword ptr [rbp + 0x30]
00000001405b9375 lea      r8, [rip + 0xc5df4]
00000001405b937c and      eax, 0xffd1ffff
00000001405b9381 mov      r9d, 0x18600058
00000001405b9387 or       eax, 0xd10000
00000001405b938c mov      edx, r13d
00000001405b938f mov      dword ptr [rbp + 0x30], eax
00000001405b9392 mov      rax, qword ptr [rdi + 0x18]
00000001405b9396 mov      rcx, qword ptr [rdi + 8]
00000001405b939a mov      rax, qword ptr [rax + 0x118]
00000001405b93a1 call     qword ptr [rip + 0xcaf51]
00000001405b93a7 mov      rax, qword ptr [rsi + 0x28]
00000001405b93ab mov      edx, ebx
00000001405b93ad mov      r8d, dword ptr [rbp + 0x30]
00000001405b93b1 mov      rcx, rdi
00000001405b93b4 call     qword ptr [rip + 0xcaf3e]
00000001405b93ba mov      rax, qword ptr [rsi + 0x20]
00000001405b93be mov      ebx, 0xb024
00000001405b93c3 mov      edx, ebx
00000001405b93c5 mov      rcx, rdi
00000001405b93c8 call     qword ptr [rip + 0xcaf2a]
00000001405b93ce mov      r9d, 0x1860b024
00000001405b93d4 lea      r8, [rip + 0xc5e25]
00000001405b93db btr      eax, 0x16
00000001405b93df mov      edx, r13d
00000001405b93e2 or       eax, 0xa00000
00000001405b93e7 mov      dword ptr [rbp + 0x30], eax
00000001405b93ea mov      rax, qword ptr [rdi + 0x18]
00000001405b93ee mov      rcx, qword ptr [rdi + 8]
00000001405b93f2 mov      rax, qword ptr [rax + 0x118]
00000001405b93f9 call     qword ptr [rip + 0xcaef9]
00000001405b93ff mov      rax, qword ptr [rsi + 0x28]
00000001405b9403 mov      edx, ebx
00000001405b9405 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9409 mov      rcx, rdi
00000001405b940c call     qword ptr [rip + 0xcaee6]
00000001405b9412 mov      rax, qword ptr [rdi + 0x18]
00000001405b9416 lea      r8, [rip + 0xc60b3]
00000001405b941d mov      edx, r13d
00000001405b9420 mov      rax, qword ptr [rax + 0x118]
00000001405b9427 mov      rcx, qword ptr [rdi + 8]
00000001405b942b call     qword ptr [rip + 0xcaec7]
00000001405b9431 lea      rdx, [rip + 0x719300]
00000001405b9438 jmp      0x1405bd0a2
00000001405b943d mov      rax, qword ptr [rdi + 0x18]
00000001405b9441 lea      r8, [rip + 0xc5ff8]
00000001405b9448 mov      rcx, qword ptr [rdi + 8]
00000001405b944c mov      edx, r13d
00000001405b944f mov      rax, qword ptr [rax + 0x118]
00000001405b9456 call     qword ptr [rip + 0xcae9c]
00000001405b945c mov      rax, qword ptr [rsi + 0x20]
00000001405b9460 mov      r14d, 0xf4
00000001405b9466 mov      edx, r14d
00000001405b9469 mov      rcx, rdi
00000001405b946c call     qword ptr [rip + 0xcae86]
00000001405b9472 mov      r9d, 0x186000f4
00000001405b9478 lea      r8, [rip + 0xaed51]
00000001405b947f btr      eax, 0x11
00000001405b9483 mov      edx, r13d
00000001405b9486 bts      eax, 0x10
00000001405b948a mov      dword ptr [rbp + 0x30], eax
00000001405b948d mov      rax, qword ptr [rdi + 0x18]
00000001405b9491 mov      rcx, qword ptr [rdi + 8]
00000001405b9495 mov      rax, qword ptr [rax + 0x118]
00000001405b949c call     qword ptr [rip + 0xcae56]
00000001405b94a2 mov      rax, qword ptr [rsi + 0x28]
00000001405b94a6 mov      edx, r14d
00000001405b94a9 mov      r8d, dword ptr [rbp + 0x30]
00000001405b94ad mov      rcx, rdi
00000001405b94b0 call     qword ptr [rip + 0xcae42]
00000001405b94b6 mov      rax, qword ptr [rsi + 0x20]
00000001405b94ba mov      ebx, 0x58
00000001405b94bf mov      edx, ebx
00000001405b94c1 mov      rcx, rdi
00000001405b94c4 call     qword ptr [rip + 0xcae2e]
00000001405b94ca mov      r9d, 0x18600058
00000001405b94d0 lea      r8, [rip + 0xc5c69]
00000001405b94d7 and      eax, 0xffffffd1
00000001405b94da mov      edx, r13d
00000001405b94dd or       eax, 0xd1
00000001405b94e2 mov      dword ptr [rbp + 0x30], eax
00000001405b94e5 mov      rax, qword ptr [rdi + 0x18]
00000001405b94e9 mov      rcx, qword ptr [rdi + 8]
00000001405b94ed mov      rax, qword ptr [rax + 0x118]
00000001405b94f4 call     qword ptr [rip + 0xcadfe]
00000001405b94fa mov      eax, dword ptr [rbp + 0x30]
00000001405b94fd lea      r8, [rip + 0xc5c6c]
00000001405b9504 and      eax, 0xffd1ffff
00000001405b9509 mov      r9d, 0x18600058
00000001405b950f or       eax, 0xd10000
00000001405b9514 mov      edx, r13d
00000001405b9517 mov      dword ptr [rbp + 0x30], eax
00000001405b951a mov      rax, qword ptr [rdi + 0x18]
00000001405b951e mov      rcx, qword ptr [rdi + 8]
00000001405b9522 mov      rax, qword ptr [rax + 0x118]
00000001405b9529 call     qword ptr [rip + 0xcadc9]
00000001405b952f mov      rax, qword ptr [rsi + 0x28]
00000001405b9533 mov      edx, ebx
00000001405b9535 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9539 mov      rcx, rdi
00000001405b953c call     qword ptr [rip + 0xcadb6]
00000001405b9542 mov      rax, qword ptr [rsi + 0x20]
00000001405b9546 mov      ebx, 0xb024
00000001405b954b mov      edx, ebx
00000001405b954d mov      rcx, rdi
00000001405b9550 call     qword ptr [rip + 0xcada2]
00000001405b9556 mov      r9d, 0x1860b024
00000001405b955c lea      r8, [rip + 0xc5c6d]
00000001405b9563 btr      eax, 0x17
00000001405b9567 mov      edx, r13d
00000001405b956a or       eax, 0x600000
00000001405b956f mov      dword ptr [rbp + 0x30], eax
00000001405b9572 mov      rax, qword ptr [rdi + 0x18]
00000001405b9576 mov      rcx, qword ptr [rdi + 8]
00000001405b957a mov      rax, qword ptr [rax + 0x118]
00000001405b9581 call     qword ptr [rip + 0xcad71]
00000001405b9587 mov      rax, qword ptr [rsi + 0x28]
00000001405b958b mov      edx, ebx
00000001405b958d mov      r8d, dword ptr [rbp + 0x30]
00000001405b9591 mov      rcx, rdi
00000001405b9594 call     qword ptr [rip + 0xcad5e]
00000001405b959a mov      rax, qword ptr [rdi + 0x18]
00000001405b959e lea      r8, [rip + 0xc5ecb]
00000001405b95a5 mov      edx, r13d
00000001405b95a8 mov      rax, qword ptr [rax + 0x118]
00000001405b95af mov      rcx, qword ptr [rdi + 8]
00000001405b95b3 call     qword ptr [rip + 0xcad3f]
00000001405b95b9 lea      rdx, [rip + 0x719168]
00000001405b95c0 jmp      0x1405bd0a2
00000001405b95c5 mov      rax, qword ptr [rdi + 0x18]
00000001405b95c9 lea      r8, [rip + 0xb33d0]
00000001405b95d0 mov      rcx, qword ptr [rdi + 8]
00000001405b95d4 mov      edx, r13d
00000001405b95d7 mov      rax, qword ptr [rax + 0x118]
00000001405b95de call     qword ptr [rip + 0xcad14]
00000001405b95e4 mov      rax, qword ptr [rsi + 0x20]
00000001405b95e8 mov      r14d, 0xf4
00000001405b95ee mov      edx, r14d
00000001405b95f1 mov      rcx, rdi
00000001405b95f4 call     qword ptr [rip + 0xcacfe]
00000001405b95fa mov      r9d, 0x186000f4
00000001405b9600 lea      r8, [rip + 0xaebc9]
00000001405b9607 btr      eax, 0x11
00000001405b960b mov      edx, r13d
00000001405b960e bts      eax, 0x10
00000001405b9612 mov      dword ptr [rbp + 0x30], eax
00000001405b9615 mov      rax, qword ptr [rdi + 0x18]
00000001405b9619 mov      rcx, qword ptr [rdi + 8]
00000001405b961d mov      rax, qword ptr [rax + 0x118]
00000001405b9624 call     qword ptr [rip + 0xcacce]
00000001405b962a mov      rax, qword ptr [rsi + 0x28]
00000001405b962e mov      edx, r14d
00000001405b9631 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9635 mov      rcx, rdi
00000001405b9638 call     qword ptr [rip + 0xcacba]
00000001405b963e mov      rax, qword ptr [rsi + 0x20]
00000001405b9642 mov      ebx, 0x58
00000001405b9647 mov      edx, ebx
00000001405b9649 mov      rcx, rdi
00000001405b964c call     qword ptr [rip + 0xcaca6]
00000001405b9652 mov      r9d, 0x18600058
00000001405b9658 lea      r8, [rip + 0xc5fc1]
00000001405b965f and      eax, 0xffffffd2
00000001405b9662 mov      edx, r13d
00000001405b9665 or       eax, 0xd2
00000001405b966a mov      dword ptr [rbp + 0x30], eax
00000001405b966d mov      rax, qword ptr [rdi + 0x18]
00000001405b9671 mov      rcx, qword ptr [rdi + 8]
00000001405b9675 mov      rax, qword ptr [rax + 0x118]
00000001405b967c call     qword ptr [rip + 0xcac76]
00000001405b9682 mov      eax, dword ptr [rbp + 0x30]
00000001405b9685 lea      r8, [rip + 0xc5fc4]
00000001405b968c and      eax, 0xffd2ffff
00000001405b9691 mov      r9d, 0x18600058
00000001405b9697 or       eax, 0xd20000
00000001405b969c mov      edx, r13d
00000001405b969f mov      dword ptr [rbp + 0x30], eax
00000001405b96a2 mov      rax, qword ptr [rdi + 0x18]
00000001405b96a6 mov      rcx, qword ptr [rdi + 8]
00000001405b96aa mov      rax, qword ptr [rax + 0x118]
00000001405b96b1 call     qword ptr [rip + 0xcac41]
00000001405b96b7 mov      rax, qword ptr [rsi + 0x28]
00000001405b96bb mov      edx, ebx
00000001405b96bd mov      r8d, dword ptr [rbp + 0x30]
00000001405b96c1 mov      rcx, rdi
00000001405b96c4 call     qword ptr [rip + 0xcac2e]
00000001405b96ca mov      r14d, 0x500
00000001405b96d0 lea      r9d, [rbx - 0x56]
00000001405b96d4 mov      edx, r14d
00000001405b96d7 lea      r8, [rbp + 0x30]
00000001405b96db mov      rcx, rdi
00000001405b96de call     0x1403695ac
00000001405b96e3 test     eax, eax
00000001405b96e5 jne      0x1405bcaac
00000001405b96eb mov      eax, dword ptr [rbp + 0x30]
00000001405b96ee lea      r8, [rip + 0xc5aab]
00000001405b96f5 and      eax, 0xff3fffff
00000001405b96fa mov      r9d, 0x18006500
00000001405b9700 bts      eax, 0x15
00000001405b9704 mov      edx, r13d
00000001405b9707 mov      dword ptr [rbp + 0x30], eax
00000001405b970a mov      rax, qword ptr [rdi + 0x18]
00000001405b970e mov      rcx, qword ptr [rdi + 8]
00000001405b9712 mov      rax, qword ptr [rax + 0x118]
00000001405b9719 call     qword ptr [rip + 0xcabd9]
00000001405b971f mov      r8d, dword ptr [rbp + 0x30]
00000001405b9723 lea      r9d, [rbx - 0x56]
00000001405b9727 mov      edx, r14d
00000001405b972a mov      rcx, rdi
00000001405b972d call     0x1403695cc
00000001405b9732 test     eax, eax
00000001405b9734 jne      0x1405bcaac
00000001405b973a mov      rax, qword ptr [rdi + 0x18]
00000001405b973e lea      r8, [rip + 0xb32eb]
00000001405b9745 mov      rcx, qword ptr [rdi + 8]
00000001405b9749 mov      edx, r13d
00000001405b974c mov      rax, qword ptr [rax + 0x118]
00000001405b9753 call     qword ptr [rip + 0xcab9f]
00000001405b9759 lea      rdx, [rip + 0x719018]
00000001405b9760 jmp      0x1405bd0a2
00000001405b9765 mov      eax, 0xb2
00000001405b976a cmp      ebx, eax
00000001405b976c ja       0x1405ba30b
00000001405b9772 je       0x1405ba16b
00000001405b9778 sub      ebx, 0xac
00000001405b977e je       0x1405b9fcb
00000001405b9784 sub      ebx, r13d
00000001405b9787 je       0x1405b9e2b
00000001405b978d sub      ebx, r13d
00000001405b9790 je       0x1405b9c8a
00000001405b9796 sub      ebx, r13d
00000001405b9799 je       0x1405b9ae9
00000001405b979f sub      ebx, r13d
00000001405b97a2 je       0x1405b9951
00000001405b97a8 cmp      ebx, r13d
00000001405b97ab jne      0x1405bca8d
00000001405b97b1 mov      rax, qword ptr [rdi + 0x18]
00000001405b97b5 lea      r8, [rip + 0xc5fe4]
00000001405b97bc mov      rcx, qword ptr [rdi + 8]
00000001405b97c0 mov      edx, r13d
00000001405b97c3 mov      rax, qword ptr [rax + 0x118]
00000001405b97ca call     qword ptr [rip + 0xcab28]
00000001405b97d0 mov      rax, qword ptr [rsi + 0x20]
00000001405b97d4 mov      r14d, 0xf4
00000001405b97da mov      edx, r14d
00000001405b97dd mov      rcx, rdi
00000001405b97e0 call     qword ptr [rip + 0xcab12]
00000001405b97e6 mov      r9d, 0x186000f4
00000001405b97ec lea      r8, [rip + 0xae9dd]
00000001405b97f3 btr      eax, 0x11
00000001405b97f7 mov      edx, r13d
00000001405b97fa bts      eax, 0x10
00000001405b97fe mov      dword ptr [rbp + 0x30], eax
00000001405b9801 mov      rax, qword ptr [rdi + 0x18]
00000001405b9805 mov      rcx, qword ptr [rdi + 8]
00000001405b9809 mov      rax, qword ptr [rax + 0x118]
00000001405b9810 call     qword ptr [rip + 0xcaae2]
00000001405b9816 mov      rax, qword ptr [rsi + 0x28]
00000001405b981a mov      edx, r14d
00000001405b981d mov      r8d, dword ptr [rbp + 0x30]
00000001405b9821 mov      rcx, rdi
00000001405b9824 call     qword ptr [rip + 0xcaace]
00000001405b982a mov      rax, qword ptr [rsi + 0x20]
00000001405b982e mov      ebx, 0x58
00000001405b9833 mov      edx, ebx
00000001405b9835 mov      rcx, rdi
00000001405b9838 call     qword ptr [rip + 0xcaaba]
00000001405b983e mov      r9d, 0x18600058
00000001405b9844 lea      r8, [rip + 0xc5dd5]
00000001405b984b and      eax, 0xffffffd2
00000001405b984e mov      edx, r13d
00000001405b9851 or       eax, 0xd2
00000001405b9856 mov      dword ptr [rbp + 0x30], eax
00000001405b9859 mov      rax, qword ptr [rdi + 0x18]
00000001405b985d mov      rcx, qword ptr [rdi + 8]
00000001405b9861 mov      rax, qword ptr [rax + 0x118]
00000001405b9868 call     qword ptr [rip + 0xcaa8a]
00000001405b986e mov      eax, dword ptr [rbp + 0x30]
00000001405b9871 lea      r8, [rip + 0xc5dd8]
00000001405b9878 and      eax, 0xffd2ffff
00000001405b987d mov      r9d, 0x18600058
00000001405b9883 or       eax, 0xd20000
00000001405b9888 mov      edx, r13d
00000001405b988b mov      dword ptr [rbp + 0x30], eax
00000001405b988e mov      rax, qword ptr [rdi + 0x18]
00000001405b9892 mov      rcx, qword ptr [rdi + 8]
00000001405b9896 mov      rax, qword ptr [rax + 0x118]
00000001405b989d call     qword ptr [rip + 0xcaa55]
00000001405b98a3 mov      rax, qword ptr [rsi + 0x28]
00000001405b98a7 mov      edx, ebx
00000001405b98a9 mov      r8d, dword ptr [rbp + 0x30]
00000001405b98ad mov      rcx, rdi
00000001405b98b0 call     qword ptr [rip + 0xcaa42]
00000001405b98b6 mov      r14d, 0x500
00000001405b98bc lea      r9d, [rbx - 0x56]
00000001405b98c0 mov      edx, r14d
00000001405b98c3 lea      r8, [rbp + 0x30]
00000001405b98c7 mov      rcx, rdi
00000001405b98ca call     0x1403695ac
00000001405b98cf test     eax, eax
00000001405b98d1 jne      0x1405bcaac
00000001405b98d7 mov      eax, dword ptr [rbp + 0x30]
00000001405b98da lea      r8, [rip + 0xc58bf]
00000001405b98e1 and      eax, 0xff3fffff
00000001405b98e6 mov      r9d, 0x18006500
00000001405b98ec bts      eax, 0x15
00000001405b98f0 mov      edx, r13d
00000001405b98f3 mov      dword ptr [rbp + 0x30], eax
00000001405b98f6 mov      rax, qword ptr [rdi + 0x18]
00000001405b98fa mov      rcx, qword ptr [rdi + 8]
00000001405b98fe mov      rax, qword ptr [rax + 0x118]
00000001405b9905 call     qword ptr [rip + 0xca9ed]
00000001405b990b mov      r8d, dword ptr [rbp + 0x30]
00000001405b990f lea      r9d, [rbx - 0x56]
00000001405b9913 mov      edx, r14d
00000001405b9916 mov      rcx, rdi
00000001405b9919 call     0x1403695cc
00000001405b991e test     eax, eax
00000001405b9920 jne      0x1405bcaac
00000001405b9926 mov      rax, qword ptr [rdi + 0x18]
00000001405b992a lea      r8, [rip + 0xc5e9f]
00000001405b9931 mov      rcx, qword ptr [rdi + 8]
00000001405b9935 mov      edx, r13d
00000001405b9938 mov      rax, qword ptr [rax + 0x118]
00000001405b993f call     qword ptr [rip + 0xca9b3]
00000001405b9945 lea      rdx, [rip + 0x718e8c]
00000001405b994c jmp      0x1405bd0a2
00000001405b9951 mov      rax, qword ptr [rdi + 0x18]
00000001405b9955 lea      r8, [rip + 0xc5de4]
00000001405b995c mov      rcx, qword ptr [rdi + 8]
00000001405b9960 mov      edx, r13d
00000001405b9963 mov      rax, qword ptr [rax + 0x118]
00000001405b996a call     qword ptr [rip + 0xca988]
00000001405b9970 mov      rax, qword ptr [rsi + 0x20]
00000001405b9974 mov      r14d, 0xf4
00000001405b997a mov      edx, r14d
00000001405b997d mov      rcx, rdi
00000001405b9980 call     qword ptr [rip + 0xca972]
00000001405b9986 mov      r9d, 0x186000f4
00000001405b998c lea      r8, [rip + 0xae83d]
00000001405b9993 btr      eax, 0x11
00000001405b9997 mov      edx, r13d
00000001405b999a bts      eax, 0x10
00000001405b999e mov      dword ptr [rbp + 0x30], eax
00000001405b99a1 mov      rax, qword ptr [rdi + 0x18]
00000001405b99a5 mov      rcx, qword ptr [rdi + 8]
00000001405b99a9 mov      rax, qword ptr [rax + 0x118]
00000001405b99b0 call     qword ptr [rip + 0xca942]
00000001405b99b6 mov      rax, qword ptr [rsi + 0x28]
00000001405b99ba mov      edx, r14d
00000001405b99bd mov      r8d, dword ptr [rbp + 0x30]
00000001405b99c1 mov      rcx, rdi
00000001405b99c4 call     qword ptr [rip + 0xca92e]
00000001405b99ca mov      rax, qword ptr [rsi + 0x20]
00000001405b99ce mov      ebx, 0x58
00000001405b99d3 mov      edx, ebx
00000001405b99d5 mov      rcx, rdi
00000001405b99d8 call     qword ptr [rip + 0xca91a]
00000001405b99de mov      r9d, 0x18600058
00000001405b99e4 lea      r8, [rip + 0xc5c35]
00000001405b99eb and      eax, 0xffffffd2
00000001405b99ee mov      edx, r13d
00000001405b99f1 or       eax, 0xd2
00000001405b99f6 mov      dword ptr [rbp + 0x30], eax
00000001405b99f9 mov      rax, qword ptr [rdi + 0x18]
00000001405b99fd mov      rcx, qword ptr [rdi + 8]
00000001405b9a01 mov      rax, qword ptr [rax + 0x118]
00000001405b9a08 call     qword ptr [rip + 0xca8ea]
00000001405b9a0e mov      eax, dword ptr [rbp + 0x30]
00000001405b9a11 lea      r8, [rip + 0xc5c38]
00000001405b9a18 and      eax, 0xffd2ffff
00000001405b9a1d mov      r9d, 0x18600058
00000001405b9a23 or       eax, 0xd20000
00000001405b9a28 mov      edx, r13d
00000001405b9a2b mov      dword ptr [rbp + 0x30], eax
00000001405b9a2e mov      rax, qword ptr [rdi + 0x18]
00000001405b9a32 mov      rcx, qword ptr [rdi + 8]
00000001405b9a36 mov      rax, qword ptr [rax + 0x118]
00000001405b9a3d call     qword ptr [rip + 0xca8b5]
00000001405b9a43 mov      rax, qword ptr [rsi + 0x28]
00000001405b9a47 mov      edx, ebx
00000001405b9a49 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9a4d mov      rcx, rdi
00000001405b9a50 call     qword ptr [rip + 0xca8a2]
00000001405b9a56 mov      r14d, 0x500
00000001405b9a5c lea      r9d, [rbx - 0x56]
00000001405b9a60 mov      edx, r14d
00000001405b9a63 lea      r8, [rbp + 0x30]
00000001405b9a67 mov      rcx, rdi
00000001405b9a6a call     0x1403695ac
00000001405b9a6f test     eax, eax
00000001405b9a71 jne      0x1405bcaac
00000001405b9a77 or       dword ptr [rbp + 0x30], 0xe00000
00000001405b9a7e lea      r8, [rip + 0xc58fb]
00000001405b9a85 mov      rax, qword ptr [rdi + 0x18]
00000001405b9a89 mov      r9d, 0x18006500
00000001405b9a8f mov      rcx, qword ptr [rdi + 8]
00000001405b9a93 mov      edx, r13d
00000001405b9a96 mov      rax, qword ptr [rax + 0x118]
00000001405b9a9d call     qword ptr [rip + 0xca855]
00000001405b9aa3 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9aa7 lea      r9d, [rbx - 0x56]
00000001405b9aab mov      edx, r14d
00000001405b9aae mov      rcx, rdi
00000001405b9ab1 call     0x1403695cc
00000001405b9ab6 test     eax, eax
00000001405b9ab8 jne      0x1405bcaac
00000001405b9abe mov      rax, qword ptr [rdi + 0x18]
00000001405b9ac2 lea      r8, [rip + 0xc5ca7]
00000001405b9ac9 mov      rcx, qword ptr [rdi + 8]
00000001405b9acd mov      edx, r13d
00000001405b9ad0 mov      rax, qword ptr [rax + 0x118]
00000001405b9ad7 call     qword ptr [rip + 0xca81b]
00000001405b9add lea      rdx, [rip + 0x718ce4]
00000001405b9ae4 jmp      0x1405bd0a2
00000001405b9ae9 mov      rax, qword ptr [rdi + 0x18]
00000001405b9aed lea      r8, [rip + 0xc5bec]
00000001405b9af4 mov      rcx, qword ptr [rdi + 8]
00000001405b9af8 mov      edx, r13d
00000001405b9afb mov      rax, qword ptr [rax + 0x118]
00000001405b9b02 call     qword ptr [rip + 0xca7f0]
00000001405b9b08 mov      rax, qword ptr [rsi + 0x20]
00000001405b9b0c mov      r14d, 0xf4
00000001405b9b12 mov      edx, r14d
00000001405b9b15 mov      rcx, rdi
00000001405b9b18 call     qword ptr [rip + 0xca7da]
00000001405b9b1e mov      r9d, 0x186000f4
00000001405b9b24 lea      r8, [rip + 0xae6a5]
00000001405b9b2b btr      eax, 0x11
00000001405b9b2f mov      edx, r13d
00000001405b9b32 bts      eax, 0x10
00000001405b9b36 mov      dword ptr [rbp + 0x30], eax
00000001405b9b39 mov      rax, qword ptr [rdi + 0x18]
00000001405b9b3d mov      rcx, qword ptr [rdi + 8]
00000001405b9b41 mov      rax, qword ptr [rax + 0x118]
00000001405b9b48 call     qword ptr [rip + 0xca7aa]
00000001405b9b4e mov      rax, qword ptr [rsi + 0x28]
00000001405b9b52 mov      edx, r14d
00000001405b9b55 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9b59 mov      rcx, rdi
00000001405b9b5c call     qword ptr [rip + 0xca796]
00000001405b9b62 mov      rax, qword ptr [rsi + 0x20]
00000001405b9b66 mov      ebx, 0x58
00000001405b9b6b mov      edx, ebx
00000001405b9b6d mov      rcx, rdi
00000001405b9b70 call     qword ptr [rip + 0xca782]
00000001405b9b76 mov      r9d, 0x18600058
00000001405b9b7c lea      r8, [rip + 0xc5a9d]
00000001405b9b83 and      eax, 0xffffffd2
00000001405b9b86 mov      edx, r13d
00000001405b9b89 or       eax, 0xd2
00000001405b9b8e mov      dword ptr [rbp + 0x30], eax
00000001405b9b91 mov      rax, qword ptr [rdi + 0x18]
00000001405b9b95 mov      rcx, qword ptr [rdi + 8]
00000001405b9b99 mov      rax, qword ptr [rax + 0x118]
00000001405b9ba0 call     qword ptr [rip + 0xca752]
00000001405b9ba6 mov      eax, dword ptr [rbp + 0x30]
00000001405b9ba9 lea      r8, [rip + 0xc5aa0]
00000001405b9bb0 and      eax, 0xffd2ffff
00000001405b9bb5 mov      r9d, 0x18600058
00000001405b9bbb or       eax, 0xd20000
00000001405b9bc0 mov      edx, r13d
00000001405b9bc3 mov      dword ptr [rbp + 0x30], eax
00000001405b9bc6 mov      rax, qword ptr [rdi + 0x18]
00000001405b9bca mov      rcx, qword ptr [rdi + 8]
00000001405b9bce mov      rax, qword ptr [rax + 0x118]
00000001405b9bd5 call     qword ptr [rip + 0xca71d]
00000001405b9bdb mov      rax, qword ptr [rsi + 0x28]
00000001405b9bdf mov      edx, ebx
00000001405b9be1 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9be5 mov      rcx, rdi
00000001405b9be8 call     qword ptr [rip + 0xca70a]
00000001405b9bee mov      r14d, 0x500
00000001405b9bf4 lea      r9d, [rbx - 0x56]
00000001405b9bf8 mov      edx, r14d
00000001405b9bfb lea      r8, [rbp + 0x30]
00000001405b9bff mov      rcx, rdi
00000001405b9c02 call     0x1403695ac
00000001405b9c07 test     eax, eax
00000001405b9c09 jne      0x1405bcaac
00000001405b9c0f mov      eax, dword ptr [rbp + 0x30]
00000001405b9c12 lea      r8, [rip + 0xc56d7]
00000001405b9c19 and      eax, 0xff63ffff
00000001405b9c1e mov      r9d, 0x18006500
00000001405b9c24 or       eax, 0x630000
00000001405b9c29 mov      edx, r13d
00000001405b9c2c mov      dword ptr [rbp + 0x30], eax
00000001405b9c2f mov      rax, qword ptr [rdi + 0x18]
00000001405b9c33 mov      rcx, qword ptr [rdi + 8]
00000001405b9c37 mov      rax, qword ptr [rax + 0x118]
00000001405b9c3e call     qword ptr [rip + 0xca6b4]
00000001405b9c44 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9c48 lea      r9d, [rbx - 0x56]
00000001405b9c4c mov      edx, r14d
00000001405b9c4f mov      rcx, rdi
00000001405b9c52 call     0x1403695cc
00000001405b9c57 test     eax, eax
00000001405b9c59 jne      0x1405bcaac
00000001405b9c5f mov      rax, qword ptr [rdi + 0x18]
00000001405b9c63 lea      r8, [rip + 0xc5aa6]
00000001405b9c6a mov      rcx, qword ptr [rdi + 8]
00000001405b9c6e mov      edx, r13d
00000001405b9c71 mov      rax, qword ptr [rax + 0x118]
00000001405b9c78 call     qword ptr [rip + 0xca67a]
00000001405b9c7e lea      rdx, [rip + 0x718b33]
00000001405b9c85 jmp      0x1405bd0a2
00000001405b9c8a mov      rax, qword ptr [rdi + 0x18]
00000001405b9c8e lea      r8, [rip + 0xc59eb]
00000001405b9c95 mov      rcx, qword ptr [rdi + 8]
00000001405b9c99 mov      edx, r13d
00000001405b9c9c mov      rax, qword ptr [rax + 0x118]
00000001405b9ca3 call     qword ptr [rip + 0xca64f]
00000001405b9ca9 mov      rax, qword ptr [rsi + 0x20]
00000001405b9cad mov      r14d, 0xf4
00000001405b9cb3 mov      edx, r14d
00000001405b9cb6 mov      rcx, rdi
00000001405b9cb9 call     qword ptr [rip + 0xca639]
00000001405b9cbf mov      r9d, 0x186000f4
00000001405b9cc5 lea      r8, [rip + 0xae504]
00000001405b9ccc btr      eax, 0x11
00000001405b9cd0 mov      edx, r13d
00000001405b9cd3 bts      eax, 0x10
00000001405b9cd7 mov      dword ptr [rbp + 0x30], eax
00000001405b9cda mov      rax, qword ptr [rdi + 0x18]
00000001405b9cde mov      rcx, qword ptr [rdi + 8]
00000001405b9ce2 mov      rax, qword ptr [rax + 0x118]
00000001405b9ce9 call     qword ptr [rip + 0xca609]
00000001405b9cef mov      rax, qword ptr [rsi + 0x28]
00000001405b9cf3 mov      edx, r14d
00000001405b9cf6 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9cfa mov      rcx, rdi
00000001405b9cfd call     qword ptr [rip + 0xca5f5]
00000001405b9d03 mov      rax, qword ptr [rsi + 0x20]
00000001405b9d07 mov      ebx, 0x58
00000001405b9d0c mov      edx, ebx
00000001405b9d0e mov      rcx, rdi
00000001405b9d11 call     qword ptr [rip + 0xca5e1]
00000001405b9d17 mov      r9d, 0x18600058
00000001405b9d1d lea      r8, [rip + 0xc58fc]
00000001405b9d24 and      eax, 0xffffffd2
00000001405b9d27 mov      edx, r13d
00000001405b9d2a or       eax, 0xd2
00000001405b9d2f mov      dword ptr [rbp + 0x30], eax
00000001405b9d32 mov      rax, qword ptr [rdi + 0x18]
00000001405b9d36 mov      rcx, qword ptr [rdi + 8]
00000001405b9d3a mov      rax, qword ptr [rax + 0x118]
00000001405b9d41 call     qword ptr [rip + 0xca5b1]
00000001405b9d47 mov      eax, dword ptr [rbp + 0x30]
00000001405b9d4a lea      r8, [rip + 0xc58ff]
00000001405b9d51 and      eax, 0xffd2ffff
00000001405b9d56 mov      r9d, 0x18600058
00000001405b9d5c or       eax, 0xd20000
00000001405b9d61 mov      edx, r13d
00000001405b9d64 mov      dword ptr [rbp + 0x30], eax
00000001405b9d67 mov      rax, qword ptr [rdi + 0x18]
00000001405b9d6b mov      rcx, qword ptr [rdi + 8]
00000001405b9d6f mov      rax, qword ptr [rax + 0x118]
00000001405b9d76 call     qword ptr [rip + 0xca57c]
00000001405b9d7c mov      rax, qword ptr [rsi + 0x28]
00000001405b9d80 mov      edx, ebx
00000001405b9d82 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9d86 mov      rcx, rdi
00000001405b9d89 call     qword ptr [rip + 0xca569]
00000001405b9d8f mov      r14d, 0x500
00000001405b9d95 lea      r9d, [rbx - 0x56]
00000001405b9d99 mov      edx, r14d
00000001405b9d9c lea      r8, [rbp + 0x30]
00000001405b9da0 mov      rcx, rdi
00000001405b9da3 call     0x1403695ac
00000001405b9da8 test     eax, eax
00000001405b9daa jne      0x1405bcaac
00000001405b9db0 mov      eax, dword ptr [rbp + 0x30]
00000001405b9db3 lea      r8, [rip + 0xc54a6]
00000001405b9dba and      eax, 0xff22ffff
00000001405b9dbf mov      r9d, 0x18006500
00000001405b9dc5 or       eax, 0x220000
00000001405b9dca mov      edx, r13d
00000001405b9dcd mov      dword ptr [rbp + 0x30], eax
00000001405b9dd0 mov      rax, qword ptr [rdi + 0x18]
00000001405b9dd4 mov      rcx, qword ptr [rdi + 8]
00000001405b9dd8 mov      rax, qword ptr [rax + 0x118]
00000001405b9ddf call     qword ptr [rip + 0xca513]
00000001405b9de5 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9de9 lea      r9d, [rbx - 0x56]
00000001405b9ded mov      edx, r14d
00000001405b9df0 mov      rcx, rdi
00000001405b9df3 call     0x1403695cc
00000001405b9df8 test     eax, eax
00000001405b9dfa jne      0x1405bcaac
00000001405b9e00 mov      rax, qword ptr [rdi + 0x18]
00000001405b9e04 lea      r8, [rip + 0xc58a5]
00000001405b9e0b mov      rcx, qword ptr [rdi + 8]
00000001405b9e0f mov      edx, r13d
00000001405b9e12 mov      rax, qword ptr [rax + 0x118]
00000001405b9e19 call     qword ptr [rip + 0xca4d9]
00000001405b9e1f lea      rdx, [rip + 0x718982]
00000001405b9e26 jmp      0x1405bd0a2
00000001405b9e2b mov      rax, qword ptr [rdi + 0x18]
00000001405b9e2f lea      r8, [rip + 0xb2c8a]
00000001405b9e36 mov      rcx, qword ptr [rdi + 8]
00000001405b9e3a mov      edx, r13d
00000001405b9e3d mov      rax, qword ptr [rax + 0x118]
00000001405b9e44 call     qword ptr [rip + 0xca4ae]
00000001405b9e4a mov      rax, qword ptr [rsi + 0x20]
00000001405b9e4e mov      r14d, 0xf4
00000001405b9e54 mov      edx, r14d
00000001405b9e57 mov      rcx, rdi
00000001405b9e5a call     qword ptr [rip + 0xca498]
00000001405b9e60 mov      r9d, 0x186000f4
00000001405b9e66 lea      r8, [rip + 0xae363]
00000001405b9e6d btr      eax, 0x11
00000001405b9e71 mov      edx, r13d
00000001405b9e74 bts      eax, 0x10
00000001405b9e78 mov      dword ptr [rbp + 0x30], eax
00000001405b9e7b mov      rax, qword ptr [rdi + 0x18]
00000001405b9e7f mov      rcx, qword ptr [rdi + 8]
00000001405b9e83 mov      rax, qword ptr [rax + 0x118]
00000001405b9e8a call     qword ptr [rip + 0xca468]
00000001405b9e90 mov      rax, qword ptr [rsi + 0x28]
00000001405b9e94 mov      edx, r14d
00000001405b9e97 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9e9b mov      rcx, rdi
00000001405b9e9e call     qword ptr [rip + 0xca454]
00000001405b9ea4 mov      rax, qword ptr [rsi + 0x20]
00000001405b9ea8 mov      ebx, 0x58
00000001405b9ead mov      edx, ebx
00000001405b9eaf mov      rcx, rdi
00000001405b9eb2 call     qword ptr [rip + 0xca440]
00000001405b9eb8 mov      r9d, 0x18600058
00000001405b9ebe lea      r8, [rip + 0xc575b]
00000001405b9ec5 and      eax, 0xffffffd2
00000001405b9ec8 mov      edx, r13d
00000001405b9ecb or       eax, 0xd2
00000001405b9ed0 mov      dword ptr [rbp + 0x30], eax
00000001405b9ed3 mov      rax, qword ptr [rdi + 0x18]
00000001405b9ed7 mov      rcx, qword ptr [rdi + 8]
00000001405b9edb mov      rax, qword ptr [rax + 0x118]
00000001405b9ee2 call     qword ptr [rip + 0xca410]
00000001405b9ee8 mov      eax, dword ptr [rbp + 0x30]
00000001405b9eeb lea      r8, [rip + 0xc575e]
00000001405b9ef2 and      eax, 0xffd2ffff
00000001405b9ef7 mov      r9d, 0x18600058
00000001405b9efd or       eax, 0xd20000
00000001405b9f02 mov      edx, r13d
00000001405b9f05 mov      dword ptr [rbp + 0x30], eax
00000001405b9f08 mov      rax, qword ptr [rdi + 0x18]
00000001405b9f0c mov      rcx, qword ptr [rdi + 8]
00000001405b9f10 mov      rax, qword ptr [rax + 0x118]
00000001405b9f17 call     qword ptr [rip + 0xca3db]
00000001405b9f1d mov      rax, qword ptr [rsi + 0x28]
00000001405b9f21 mov      edx, ebx
00000001405b9f23 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9f27 mov      rcx, rdi
00000001405b9f2a call     qword ptr [rip + 0xca3c8]
00000001405b9f30 mov      r14d, 0x500
00000001405b9f36 lea      r9d, [rbx - 0x56]
00000001405b9f3a mov      edx, r14d
00000001405b9f3d lea      r8, [rbp + 0x30]
00000001405b9f41 mov      rcx, rdi
00000001405b9f44 call     0x1403695ac
00000001405b9f49 test     eax, eax
00000001405b9f4b jne      0x1405bcaac
00000001405b9f51 mov      eax, dword ptr [rbp + 0x30]
00000001405b9f54 lea      r8, [rip + 0xc52a5]
00000001405b9f5b btr      eax, 0x16
00000001405b9f5f mov      r9d, 0x18006500
00000001405b9f65 or       eax, 0xa00000
00000001405b9f6a mov      edx, r13d
00000001405b9f6d mov      dword ptr [rbp + 0x30], eax
00000001405b9f70 mov      rax, qword ptr [rdi + 0x18]
00000001405b9f74 mov      rcx, qword ptr [rdi + 8]
00000001405b9f78 mov      rax, qword ptr [rax + 0x118]
00000001405b9f7f call     qword ptr [rip + 0xca373]
00000001405b9f85 mov      r8d, dword ptr [rbp + 0x30]
00000001405b9f89 lea      r9d, [rbx - 0x56]
00000001405b9f8d mov      edx, r14d
00000001405b9f90 mov      rcx, rdi
00000001405b9f93 call     0x1403695cc
00000001405b9f98 test     eax, eax
00000001405b9f9a jne      0x1405bcaac
00000001405b9fa0 mov      rax, qword ptr [rdi + 0x18]
00000001405b9fa4 lea      r8, [rip + 0xb2b45]
00000001405b9fab mov      rcx, qword ptr [rdi + 8]
00000001405b9faf mov      edx, r13d
00000001405b9fb2 mov      rax, qword ptr [rax + 0x118]
00000001405b9fb9 call     qword ptr [rip + 0xca339]
00000001405b9fbf lea      rdx, [rip + 0x7187d2]
00000001405b9fc6 jmp      0x1405bd0a2
00000001405b9fcb mov      rax, qword ptr [rdi + 0x18]
00000001405b9fcf lea      r8, [rip + 0xb2a8a]
00000001405b9fd6 mov      rcx, qword ptr [rdi + 8]
00000001405b9fda mov      edx, r13d
00000001405b9fdd mov      rax, qword ptr [rax + 0x118]
00000001405b9fe4 call     qword ptr [rip + 0xca30e]
00000001405b9fea mov      rax, qword ptr [rsi + 0x20]
00000001405b9fee mov      r14d, 0xf4
00000001405b9ff4 mov      edx, r14d
00000001405b9ff7 mov      rcx, rdi
00000001405b9ffa call     qword ptr [rip + 0xca2f8]
00000001405ba000 mov      r9d, 0x186000f4
00000001405ba006 lea      r8, [rip + 0xae1c3]
00000001405ba00d btr      eax, 0x11
00000001405ba011 mov      edx, r13d
00000001405ba014 bts      eax, 0x10
00000001405ba018 mov      dword ptr [rbp + 0x30], eax
00000001405ba01b mov      rax, qword ptr [rdi + 0x18]
00000001405ba01f mov      rcx, qword ptr [rdi + 8]
00000001405ba023 mov      rax, qword ptr [rax + 0x118]
00000001405ba02a call     qword ptr [rip + 0xca2c8]
00000001405ba030 mov      rax, qword ptr [rsi + 0x28]
00000001405ba034 mov      edx, r14d
00000001405ba037 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba03b mov      rcx, rdi
00000001405ba03e call     qword ptr [rip + 0xca2b4]
00000001405ba044 mov      rax, qword ptr [rsi + 0x20]
00000001405ba048 mov      ebx, 0x58
00000001405ba04d mov      edx, ebx
00000001405ba04f mov      rcx, rdi
00000001405ba052 call     qword ptr [rip + 0xca2a0]
00000001405ba058 mov      r9d, 0x18600058
00000001405ba05e lea      r8, [rip + 0xc55bb]
00000001405ba065 and      eax, 0xffffffd2
00000001405ba068 mov      edx, r13d
00000001405ba06b or       eax, 0xd2
00000001405ba070 mov      dword ptr [rbp + 0x30], eax
00000001405ba073 mov      rax, qword ptr [rdi + 0x18]
00000001405ba077 mov      rcx, qword ptr [rdi + 8]
00000001405ba07b mov      rax, qword ptr [rax + 0x118]
00000001405ba082 call     qword ptr [rip + 0xca270]
00000001405ba088 mov      eax, dword ptr [rbp + 0x30]
00000001405ba08b lea      r8, [rip + 0xc55be]
00000001405ba092 and      eax, 0xffd2ffff
00000001405ba097 mov      r9d, 0x18600058
00000001405ba09d or       eax, 0xd20000
00000001405ba0a2 mov      edx, r13d
00000001405ba0a5 mov      dword ptr [rbp + 0x30], eax
00000001405ba0a8 mov      rax, qword ptr [rdi + 0x18]
00000001405ba0ac mov      rcx, qword ptr [rdi + 8]
00000001405ba0b0 mov      rax, qword ptr [rax + 0x118]
00000001405ba0b7 call     qword ptr [rip + 0xca23b]
00000001405ba0bd mov      rax, qword ptr [rsi + 0x28]
00000001405ba0c1 mov      edx, ebx
00000001405ba0c3 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba0c7 mov      rcx, rdi
00000001405ba0ca call     qword ptr [rip + 0xca228]
00000001405ba0d0 mov      r14d, 0x500
00000001405ba0d6 lea      r9d, [rbx - 0x56]
00000001405ba0da mov      edx, r14d
00000001405ba0dd lea      r8, [rbp + 0x30]
00000001405ba0e1 mov      rcx, rdi
00000001405ba0e4 call     0x1403695ac
00000001405ba0e9 test     eax, eax
00000001405ba0eb jne      0x1405bcaac
00000001405ba0f1 mov      eax, dword ptr [rbp + 0x30]
00000001405ba0f4 lea      r8, [rip + 0xc50d5]
00000001405ba0fb btr      eax, 0x17
00000001405ba0ff mov      r9d, 0x18006500
00000001405ba105 or       eax, 0x600000
00000001405ba10a mov      edx, r13d
00000001405ba10d mov      dword ptr [rbp + 0x30], eax
00000001405ba110 mov      rax, qword ptr [rdi + 0x18]
00000001405ba114 mov      rcx, qword ptr [rdi + 8]
00000001405ba118 mov      rax, qword ptr [rax + 0x118]
00000001405ba11f call     qword ptr [rip + 0xca1d3]
00000001405ba125 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba129 lea      r9d, [rbx - 0x56]
00000001405ba12d mov      edx, r14d
00000001405ba130 mov      rcx, rdi
00000001405ba133 call     0x1403695cc
00000001405ba138 test     eax, eax
00000001405ba13a jne      0x1405bcaac
00000001405ba140 mov      rax, qword ptr [rdi + 0x18]
00000001405ba144 lea      r8, [rip + 0xb2945]
00000001405ba14b mov      rcx, qword ptr [rdi + 8]
00000001405ba14f mov      edx, r13d
00000001405ba152 mov      rax, qword ptr [rax + 0x118]
00000001405ba159 call     qword ptr [rip + 0xca199]
00000001405ba15f lea      rdx, [rip + 0x718622]
00000001405ba166 jmp      0x1405bd0a2
00000001405ba16b mov      rax, qword ptr [rdi + 0x18]
00000001405ba16f lea      r8, [rip + 0xc568a]
00000001405ba176 mov      rcx, qword ptr [rdi + 8]
00000001405ba17a mov      edx, r13d
00000001405ba17d mov      rax, qword ptr [rax + 0x118]
00000001405ba184 call     qword ptr [rip + 0xca16e]
00000001405ba18a mov      rax, qword ptr [rsi + 0x20]
00000001405ba18e mov      r14d, 0xf4
00000001405ba194 mov      edx, r14d
00000001405ba197 mov      rcx, rdi
00000001405ba19a call     qword ptr [rip + 0xca158]
00000001405ba1a0 mov      r9d, 0x186000f4
00000001405ba1a6 lea      r8, [rip + 0xae023]
00000001405ba1ad btr      eax, 0x11
00000001405ba1b1 mov      edx, r13d
00000001405ba1b4 bts      eax, 0x10
00000001405ba1b8 mov      dword ptr [rbp + 0x30], eax
00000001405ba1bb mov      rax, qword ptr [rdi + 0x18]
00000001405ba1bf mov      rcx, qword ptr [rdi + 8]
00000001405ba1c3 mov      rax, qword ptr [rax + 0x118]
00000001405ba1ca call     qword ptr [rip + 0xca128]
00000001405ba1d0 mov      rax, qword ptr [rsi + 0x28]
00000001405ba1d4 mov      edx, r14d
00000001405ba1d7 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba1db mov      rcx, rdi
00000001405ba1de call     qword ptr [rip + 0xca114]
00000001405ba1e4 mov      rax, qword ptr [rsi + 0x20]
00000001405ba1e8 mov      ebx, 0x58
00000001405ba1ed mov      edx, ebx
00000001405ba1ef mov      rcx, rdi
00000001405ba1f2 call     qword ptr [rip + 0xca100]
00000001405ba1f8 mov      r9d, 0x18600058
00000001405ba1fe lea      r8, [rip + 0xc541b]
00000001405ba205 and      eax, 0xffffffd2
00000001405ba208 mov      edx, r13d
00000001405ba20b or       eax, 0xd2
00000001405ba210 mov      dword ptr [rbp + 0x30], eax
00000001405ba213 mov      rax, qword ptr [rdi + 0x18]
00000001405ba217 mov      rcx, qword ptr [rdi + 8]
00000001405ba21b mov      rax, qword ptr [rax + 0x118]
00000001405ba222 call     qword ptr [rip + 0xca0d0]
00000001405ba228 mov      eax, dword ptr [rbp + 0x30]
00000001405ba22b lea      r8, [rip + 0xc541e]
00000001405ba232 and      eax, 0xffd2ffff
00000001405ba237 mov      r9d, 0x18600058
00000001405ba23d or       eax, 0xd20000
00000001405ba242 mov      edx, r13d
00000001405ba245 mov      dword ptr [rbp + 0x30], eax
00000001405ba248 mov      rax, qword ptr [rdi + 0x18]
00000001405ba24c mov      rcx, qword ptr [rdi + 8]
00000001405ba250 mov      rax, qword ptr [rax + 0x118]
00000001405ba257 call     qword ptr [rip + 0xca09b]
00000001405ba25d mov      rax, qword ptr [rsi + 0x28]
00000001405ba261 mov      edx, ebx
00000001405ba263 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba267 mov      rcx, rdi
00000001405ba26a call     qword ptr [rip + 0xca088]
00000001405ba270 mov      r14d, 0x500
00000001405ba276 lea      r9d, [rbx - 0x56]
00000001405ba27a mov      edx, r14d
00000001405ba27d lea      r8, [rbp + 0x30]
00000001405ba281 mov      rcx, rdi
00000001405ba284 call     0x1403695ac
00000001405ba289 test     eax, eax
00000001405ba28b jne      0x1405bcaac
00000001405ba291 mov      eax, dword ptr [rbp + 0x30]
00000001405ba294 lea      r8, [rip + 0xc4f35]
00000001405ba29b btr      eax, 0x17
00000001405ba29f mov      r9d, 0x18006500
00000001405ba2a5 or       eax, 0x600000
00000001405ba2aa mov      edx, r13d
00000001405ba2ad mov      dword ptr [rbp + 0x30], eax
00000001405ba2b0 mov      rax, qword ptr [rdi + 0x18]
00000001405ba2b4 mov      rcx, qword ptr [rdi + 8]
00000001405ba2b8 mov      rax, qword ptr [rax + 0x118]
00000001405ba2bf call     qword ptr [rip + 0xca033]
00000001405ba2c5 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba2c9 lea      r9d, [rbx - 0x56]
00000001405ba2cd mov      edx, r14d
00000001405ba2d0 mov      rcx, rdi
00000001405ba2d3 call     0x1403695cc
00000001405ba2d8 test     eax, eax
00000001405ba2da jne      0x1405bcaac
00000001405ba2e0 mov      rax, qword ptr [rdi + 0x18]
00000001405ba2e4 lea      r8, [rip + 0xc5545]
00000001405ba2eb mov      rcx, qword ptr [rdi + 8]
00000001405ba2ef mov      edx, r13d
00000001405ba2f2 mov      rax, qword ptr [rax + 0x118]
00000001405ba2f9 call     qword ptr [rip + 0xc9ff9]
00000001405ba2ff lea      rdx, [rip + 0x7184e2]
00000001405ba306 jmp      0x1405bd0a2
00000001405ba30b sub      ebx, 0xb3
00000001405ba311 je       0x1405ba960
00000001405ba317 sub      ebx, r13d
00000001405ba31a je       0x1405ba7bf
00000001405ba320 sub      ebx, r13d
00000001405ba323 je       0x1405ba61e
00000001405ba329 sub      ebx, r13d
00000001405ba32c je       0x1405ba486
00000001405ba332 cmp      ebx, r13d
00000001405ba335 jne      0x1405bca8d
00000001405ba33b mov      rax, qword ptr [rdi + 0x18]
00000001405ba33f lea      r8, [rip + 0xb283a]
00000001405ba346 mov      rcx, qword ptr [rdi + 8]
00000001405ba34a mov      edx, r13d
00000001405ba34d mov      rax, qword ptr [rax + 0x118]
00000001405ba354 call     qword ptr [rip + 0xc9f9e]
00000001405ba35a mov      rax, qword ptr [rsi + 0x20]
00000001405ba35e mov      r14d, 0xf4
00000001405ba364 mov      edx, r14d
00000001405ba367 mov      rcx, rdi
00000001405ba36a call     qword ptr [rip + 0xc9f88]
00000001405ba370 mov      r9d, 0x186000f4
00000001405ba376 lea      r8, [rip + 0xade53]
00000001405ba37d btr      eax, 0x11
00000001405ba381 mov      edx, r13d
00000001405ba384 bts      eax, 0x10
00000001405ba388 mov      dword ptr [rbp + 0x30], eax
00000001405ba38b mov      rax, qword ptr [rdi + 0x18]
00000001405ba38f mov      rcx, qword ptr [rdi + 8]
00000001405ba393 mov      rax, qword ptr [rax + 0x118]
00000001405ba39a call     qword ptr [rip + 0xc9f58]
00000001405ba3a0 mov      rax, qword ptr [rsi + 0x28]
00000001405ba3a4 mov      edx, r14d
00000001405ba3a7 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba3ab mov      rcx, rdi
00000001405ba3ae call     qword ptr [rip + 0xc9f44]
00000001405ba3b4 mov      rax, qword ptr [rsi]
00000001405ba3b7 mov      ebx, 0x58
00000001405ba3bc mov      edx, ebx
00000001405ba3be mov      rcx, rdi
00000001405ba3c1 call     qword ptr [rip + 0xc9f31]
00000001405ba3c7 mov      rax, qword ptr [rdi + 0x18]
00000001405ba3cb lea      r8, [rip + 0xb27de]
00000001405ba3d2 mov      rcx, qword ptr [rdi + 8]
00000001405ba3d6 mov      r9d, 0x18600058
00000001405ba3dc mov      edx, r13d
00000001405ba3df mov      rax, qword ptr [rax + 0x118]
00000001405ba3e6 call     qword ptr [rip + 0xc9f0c]
00000001405ba3ec mov      rax, qword ptr [rsi + 8]
00000001405ba3f0 mov      r8b, 0x80
00000001405ba3f3 mov      edx, ebx
00000001405ba3f5 mov      rcx, rdi
00000001405ba3f8 call     qword ptr [rip + 0xc9efa]
00000001405ba3fe mov      rax, qword ptr [rsi + 0x10]
00000001405ba402 mov      r15d, 0x8864
00000001405ba408 mov      edx, r15d
00000001405ba40b mov      rcx, rdi
00000001405ba40e call     qword ptr [rip + 0xc9ee4]
00000001405ba414 mov      rcx, qword ptr [rdi + 8]
00000001405ba418 lea      r8, [rip + 0xb27c1]
00000001405ba41f movzx    ebx, ax
00000001405ba422 mov      r9d, 0x18608864
00000001405ba428 mov      eax, 0xf0ff
00000001405ba42d mov      edx, r13d
00000001405ba430 and      bx, ax
00000001405ba433 mov      rax, qword ptr [rdi + 0x18]
00000001405ba437 mov      rax, qword ptr [rax + 0x118]
00000001405ba43e call     qword ptr [rip + 0xc9eb4]
00000001405ba444 mov      rax, qword ptr [rsi + 0x18]
00000001405ba448 movzx    r8d, bx
00000001405ba44c mov      edx, r15d
00000001405ba44f mov      rcx, rdi
00000001405ba452 call     qword ptr [rip + 0xc9ea0]
00000001405ba458 mov      rax, qword ptr [rdi + 0x18]
00000001405ba45c lea      r8, [rip + 0xb27ad]
00000001405ba463 mov      rcx, qword ptr [rdi + 8]
00000001405ba467 mov      edx, r13d
00000001405ba46a mov      rax, qword ptr [rax + 0x118]
00000001405ba471 call     qword ptr [rip + 0xc9e81]
00000001405ba477 mov      r9b, r13b
00000001405ba47a lea      rdx, [rip + 0x7183b7]
00000001405ba481 jmp      0x1405bd0a5
00000001405ba486 mov      rax, qword ptr [rdi + 0x18]
00000001405ba48a lea      r8, [rip + 0xc54ef]
00000001405ba491 mov      rcx, qword ptr [rdi + 8]
00000001405ba495 mov      edx, r13d
00000001405ba498 mov      rax, qword ptr [rax + 0x118]
00000001405ba49f call     qword ptr [rip + 0xc9e53]
00000001405ba4a5 mov      rax, qword ptr [rsi + 0x20]
00000001405ba4a9 mov      r14d, 0xf4
00000001405ba4af mov      edx, r14d
00000001405ba4b2 mov      rcx, rdi
00000001405ba4b5 call     qword ptr [rip + 0xc9e3d]
00000001405ba4bb mov      r9d, 0x186000f4
00000001405ba4c1 lea      r8, [rip + 0xadd08]
00000001405ba4c8 btr      eax, 0x11
00000001405ba4cc mov      edx, r13d
00000001405ba4cf bts      eax, 0x10
00000001405ba4d3 mov      dword ptr [rbp + 0x30], eax
00000001405ba4d6 mov      rax, qword ptr [rdi + 0x18]
00000001405ba4da mov      rcx, qword ptr [rdi + 8]
00000001405ba4de mov      rax, qword ptr [rax + 0x118]
00000001405ba4e5 call     qword ptr [rip + 0xc9e0d]
00000001405ba4eb mov      rax, qword ptr [rsi + 0x28]
00000001405ba4ef mov      edx, r14d
00000001405ba4f2 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba4f6 mov      rcx, rdi
00000001405ba4f9 call     qword ptr [rip + 0xc9df9]
00000001405ba4ff mov      rax, qword ptr [rsi + 0x20]
00000001405ba503 mov      ebx, 0x58
00000001405ba508 mov      edx, ebx
00000001405ba50a mov      rcx, rdi
00000001405ba50d call     qword ptr [rip + 0xc9de5]
00000001405ba513 mov      r9d, 0x18600058
00000001405ba519 lea      r8, [rip + 0xc5100]
00000001405ba520 and      eax, 0xffffffd2
00000001405ba523 mov      edx, r13d
00000001405ba526 or       eax, 0xd2
00000001405ba52b mov      dword ptr [rbp + 0x30], eax
00000001405ba52e mov      rax, qword ptr [rdi + 0x18]
00000001405ba532 mov      rcx, qword ptr [rdi + 8]
00000001405ba536 mov      rax, qword ptr [rax + 0x118]
00000001405ba53d call     qword ptr [rip + 0xc9db5]
00000001405ba543 mov      eax, dword ptr [rbp + 0x30]
00000001405ba546 lea      r8, [rip + 0xc5103]
00000001405ba54d and      eax, 0xffd2ffff
00000001405ba552 mov      r9d, 0x18600058
00000001405ba558 or       eax, 0xd20000
00000001405ba55d mov      edx, r13d
00000001405ba560 mov      dword ptr [rbp + 0x30], eax
00000001405ba563 mov      rax, qword ptr [rdi + 0x18]
00000001405ba567 mov      rcx, qword ptr [rdi + 8]
00000001405ba56b mov      rax, qword ptr [rax + 0x118]
00000001405ba572 call     qword ptr [rip + 0xc9d80]
00000001405ba578 mov      rax, qword ptr [rsi + 0x28]
00000001405ba57c mov      edx, ebx
00000001405ba57e mov      r8d, dword ptr [rbp + 0x30]
00000001405ba582 mov      rcx, rdi
00000001405ba585 call     qword ptr [rip + 0xc9d6d]
00000001405ba58b mov      r14d, 0x500
00000001405ba591 lea      r9d, [rbx - 0x56]
00000001405ba595 mov      edx, r14d
00000001405ba598 lea      r8, [rbp + 0x30]
00000001405ba59c mov      rcx, rdi
00000001405ba59f call     0x1403695ac
00000001405ba5a4 test     eax, eax
00000001405ba5a6 jne      0x1405bcaac
00000001405ba5ac or       dword ptr [rbp + 0x30], 0xe00000
00000001405ba5b3 lea      r8, [rip + 0xc4dc6]
00000001405ba5ba mov      rax, qword ptr [rdi + 0x18]
00000001405ba5be mov      r9d, 0x18006500
00000001405ba5c4 mov      rcx, qword ptr [rdi + 8]
00000001405ba5c8 mov      edx, r13d
00000001405ba5cb mov      rax, qword ptr [rax + 0x118]
00000001405ba5d2 call     qword ptr [rip + 0xc9d20]
00000001405ba5d8 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba5dc lea      r9d, [rbx - 0x56]
00000001405ba5e0 mov      edx, r14d
00000001405ba5e3 mov      rcx, rdi
00000001405ba5e6 call     0x1403695cc
00000001405ba5eb test     eax, eax
00000001405ba5ed jne      0x1405bcaac
00000001405ba5f3 mov      rax, qword ptr [rdi + 0x18]
00000001405ba5f7 lea      r8, [rip + 0xc53b2]
00000001405ba5fe mov      rcx, qword ptr [rdi + 8]
00000001405ba602 mov      edx, r13d
00000001405ba605 mov      rax, qword ptr [rax + 0x118]
00000001405ba60c call     qword ptr [rip + 0xc9ce6]
00000001405ba612 lea      rdx, [rip + 0x71820f]
00000001405ba619 jmp      0x1405bd0a2
00000001405ba61e mov      rax, qword ptr [rdi + 0x18]
00000001405ba622 lea      r8, [rip + 0xc52f7]
00000001405ba629 mov      rcx, qword ptr [rdi + 8]
00000001405ba62d mov      edx, r13d
00000001405ba630 mov      rax, qword ptr [rax + 0x118]
00000001405ba637 call     qword ptr [rip + 0xc9cbb]
00000001405ba63d mov      rax, qword ptr [rsi + 0x20]
00000001405ba641 mov      r14d, 0xf4
00000001405ba647 mov      edx, r14d
00000001405ba64a mov      rcx, rdi
00000001405ba64d call     qword ptr [rip + 0xc9ca5]
00000001405ba653 mov      r9d, 0x186000f4
00000001405ba659 lea      r8, [rip + 0xadb70]
00000001405ba660 btr      eax, 0x11
00000001405ba664 mov      edx, r13d
00000001405ba667 bts      eax, 0x10
00000001405ba66b mov      dword ptr [rbp + 0x30], eax
00000001405ba66e mov      rax, qword ptr [rdi + 0x18]
00000001405ba672 mov      rcx, qword ptr [rdi + 8]
00000001405ba676 mov      rax, qword ptr [rax + 0x118]
00000001405ba67d call     qword ptr [rip + 0xc9c75]
00000001405ba683 mov      rax, qword ptr [rsi + 0x28]
00000001405ba687 mov      edx, r14d
00000001405ba68a mov      r8d, dword ptr [rbp + 0x30]
00000001405ba68e mov      rcx, rdi
00000001405ba691 call     qword ptr [rip + 0xc9c61]
00000001405ba697 mov      rax, qword ptr [rsi + 0x20]
00000001405ba69b mov      ebx, 0x58
00000001405ba6a0 mov      edx, ebx
00000001405ba6a2 mov      rcx, rdi
00000001405ba6a5 call     qword ptr [rip + 0xc9c4d]
00000001405ba6ab mov      r9d, 0x18600058
00000001405ba6b1 lea      r8, [rip + 0xc4f68]
00000001405ba6b8 and      eax, 0xffffffd2
00000001405ba6bb mov      edx, r13d
00000001405ba6be or       eax, 0xd2
00000001405ba6c3 mov      dword ptr [rbp + 0x30], eax
00000001405ba6c6 mov      rax, qword ptr [rdi + 0x18]
00000001405ba6ca mov      rcx, qword ptr [rdi + 8]
00000001405ba6ce mov      rax, qword ptr [rax + 0x118]
00000001405ba6d5 call     qword ptr [rip + 0xc9c1d]
00000001405ba6db mov      eax, dword ptr [rbp + 0x30]
00000001405ba6de lea      r8, [rip + 0xc4f6b]
00000001405ba6e5 and      eax, 0xffd2ffff
00000001405ba6ea mov      r9d, 0x18600058
00000001405ba6f0 or       eax, 0xd20000
00000001405ba6f5 mov      edx, r13d
00000001405ba6f8 mov      dword ptr [rbp + 0x30], eax
00000001405ba6fb mov      rax, qword ptr [rdi + 0x18]
00000001405ba6ff mov      rcx, qword ptr [rdi + 8]
00000001405ba703 mov      rax, qword ptr [rax + 0x118]
00000001405ba70a call     qword ptr [rip + 0xc9be8]
00000001405ba710 mov      rax, qword ptr [rsi + 0x28]
00000001405ba714 mov      edx, ebx
00000001405ba716 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba71a mov      rcx, rdi
00000001405ba71d call     qword ptr [rip + 0xc9bd5]
00000001405ba723 mov      r14d, 0x500
00000001405ba729 lea      r9d, [rbx - 0x56]
00000001405ba72d mov      edx, r14d
00000001405ba730 lea      r8, [rbp + 0x30]
00000001405ba734 mov      rcx, rdi
00000001405ba737 call     0x1403695ac
00000001405ba73c test     eax, eax
00000001405ba73e jne      0x1405bcaac
00000001405ba744 mov      eax, dword ptr [rbp + 0x30]
00000001405ba747 lea      r8, [rip + 0xc4ba2]
00000001405ba74e and      eax, 0xff63ffff
00000001405ba753 mov      r9d, 0x18006500
00000001405ba759 or       eax, 0x630000
00000001405ba75e mov      edx, r13d
00000001405ba761 mov      dword ptr [rbp + 0x30], eax
00000001405ba764 mov      rax, qword ptr [rdi + 0x18]
00000001405ba768 mov      rcx, qword ptr [rdi + 8]
00000001405ba76c mov      rax, qword ptr [rax + 0x118]
00000001405ba773 call     qword ptr [rip + 0xc9b7f]
00000001405ba779 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba77d lea      r9d, [rbx - 0x56]
00000001405ba781 mov      edx, r14d
00000001405ba784 mov      rcx, rdi
00000001405ba787 call     0x1403695cc
00000001405ba78c test     eax, eax
00000001405ba78e jne      0x1405bcaac
00000001405ba794 mov      rax, qword ptr [rdi + 0x18]
00000001405ba798 lea      r8, [rip + 0xc51b1]
00000001405ba79f mov      rcx, qword ptr [rdi + 8]
00000001405ba7a3 mov      edx, r13d
00000001405ba7a6 mov      rax, qword ptr [rax + 0x118]
00000001405ba7ad call     qword ptr [rip + 0xc9b45]
00000001405ba7b3 lea      rdx, [rip + 0x71805e]
00000001405ba7ba jmp      0x1405bd0a2
00000001405ba7bf mov      rax, qword ptr [rdi + 0x18]
00000001405ba7c3 lea      r8, [rip + 0xc50f6]
00000001405ba7ca mov      rcx, qword ptr [rdi + 8]
00000001405ba7ce mov      edx, r13d
00000001405ba7d1 mov      rax, qword ptr [rax + 0x118]
00000001405ba7d8 call     qword ptr [rip + 0xc9b1a]
00000001405ba7de mov      rax, qword ptr [rsi + 0x20]
00000001405ba7e2 mov      r14d, 0xf4
00000001405ba7e8 mov      edx, r14d
00000001405ba7eb mov      rcx, rdi
00000001405ba7ee call     qword ptr [rip + 0xc9b04]
00000001405ba7f4 mov      r9d, 0x186000f4
00000001405ba7fa lea      r8, [rip + 0xad9cf]
00000001405ba801 btr      eax, 0x11
00000001405ba805 mov      edx, r13d
00000001405ba808 bts      eax, 0x10
00000001405ba80c mov      dword ptr [rbp + 0x30], eax
00000001405ba80f mov      rax, qword ptr [rdi + 0x18]
00000001405ba813 mov      rcx, qword ptr [rdi + 8]
00000001405ba817 mov      rax, qword ptr [rax + 0x118]
00000001405ba81e call     qword ptr [rip + 0xc9ad4]
00000001405ba824 mov      rax, qword ptr [rsi + 0x28]
00000001405ba828 mov      edx, r14d
00000001405ba82b mov      r8d, dword ptr [rbp + 0x30]
00000001405ba82f mov      rcx, rdi
00000001405ba832 call     qword ptr [rip + 0xc9ac0]
00000001405ba838 mov      rax, qword ptr [rsi + 0x20]
00000001405ba83c mov      ebx, 0x58
00000001405ba841 mov      edx, ebx
00000001405ba843 mov      rcx, rdi
00000001405ba846 call     qword ptr [rip + 0xc9aac]
00000001405ba84c mov      r9d, 0x18600058
00000001405ba852 lea      r8, [rip + 0xc4dc7]
00000001405ba859 and      eax, 0xffffffd2
00000001405ba85c mov      edx, r13d
00000001405ba85f or       eax, 0xd2
00000001405ba864 mov      dword ptr [rbp + 0x30], eax
00000001405ba867 mov      rax, qword ptr [rdi + 0x18]
00000001405ba86b mov      rcx, qword ptr [rdi + 8]
00000001405ba86f mov      rax, qword ptr [rax + 0x118]
00000001405ba876 call     qword ptr [rip + 0xc9a7c]
00000001405ba87c mov      eax, dword ptr [rbp + 0x30]
00000001405ba87f lea      r8, [rip + 0xc4dca]
00000001405ba886 and      eax, 0xffd2ffff
00000001405ba88b mov      r9d, 0x18600058
00000001405ba891 or       eax, 0xd20000
00000001405ba896 mov      edx, r13d
00000001405ba899 mov      dword ptr [rbp + 0x30], eax
00000001405ba89c mov      rax, qword ptr [rdi + 0x18]
00000001405ba8a0 mov      rcx, qword ptr [rdi + 8]
00000001405ba8a4 mov      rax, qword ptr [rax + 0x118]
00000001405ba8ab call     qword ptr [rip + 0xc9a47]
00000001405ba8b1 mov      rax, qword ptr [rsi + 0x28]
00000001405ba8b5 mov      edx, ebx
00000001405ba8b7 mov      r8d, dword ptr [rbp + 0x30]
00000001405ba8bb mov      rcx, rdi
00000001405ba8be call     qword ptr [rip + 0xc9a34]
00000001405ba8c4 mov      r14d, 0x500
00000001405ba8ca lea      r9d, [rbx - 0x56]
00000001405ba8ce mov      edx, r14d
00000001405ba8d1 lea      r8, [rbp + 0x30]
00000001405ba8d5 mov      rcx, rdi
00000001405ba8d8 call     0x1403695ac
00000001405ba8dd test     eax, eax
00000001405ba8df jne      0x1405bcaac
00000001405ba8e5 mov      eax, dword ptr [rbp + 0x30]
00000001405ba8e8 lea      r8, [rip + 0xc4971]
00000001405ba8ef and      eax, 0xff22ffff
00000001405ba8f4 mov      r9d, 0x18006500
00000001405ba8fa or       eax, 0x220000
00000001405ba8ff mov      edx, r13d
00000001405ba902 mov      dword ptr [rbp + 0x30], eax
00000001405ba905 mov      rax, qword ptr [rdi + 0x18]
00000001405ba909 mov      rcx, qword ptr [rdi + 8]
00000001405ba90d mov      rax, qword ptr [rax + 0x118]
00000001405ba914 call     qword ptr [rip + 0xc99de]
00000001405ba91a mov      r8d, dword ptr [rbp + 0x30]
00000001405ba91e lea      r9d, [rbx - 0x56]
00000001405ba922 mov      edx, r14d
00000001405ba925 mov      rcx, rdi
00000001405ba928 call     0x1403695cc
00000001405ba92d test     eax, eax
00000001405ba92f jne      0x1405bcaac
00000001405ba935 mov      rax, qword ptr [rdi + 0x18]
00000001405ba939 lea      r8, [rip + 0xc4fb0]
00000001405ba940 mov      rcx, qword ptr [rdi + 8]
00000001405ba944 mov      edx, r13d
00000001405ba947 mov      rax, qword ptr [rax + 0x118]
00000001405ba94e call     qword ptr [rip + 0xc99a4]
00000001405ba954 lea      rdx, [rip + 0x717ead]
00000001405ba95b jmp      0x1405bd0a2
00000001405ba960 mov      rax, qword ptr [rdi + 0x18]
00000001405ba964 lea      r8, [rip + 0xc4ef5]
00000001405ba96b mov      rcx, qword ptr [rdi + 8]
00000001405ba96f mov      edx, r13d
00000001405ba972 mov      rax, qword ptr [rax + 0x118]
00000001405ba979 call     qword ptr [rip + 0xc9979]
00000001405ba97f mov      rax, qword ptr [rsi + 0x20]
00000001405ba983 mov      r14d, 0xf4
00000001405ba989 mov      edx, r14d
00000001405ba98c mov      rcx, rdi
00000001405ba98f call     qword ptr [rip + 0xc9963]
00000001405ba995 mov      r9d, 0x186000f4
00000001405ba99b lea      r8, [rip + 0xad82e]
00000001405ba9a2 btr      eax, 0x11
00000001405ba9a6 mov      edx, r13d
00000001405ba9a9 bts      eax, 0x10
00000001405ba9ad mov      dword ptr [rbp + 0x30], eax
00000001405ba9b0 mov      rax, qword ptr [rdi + 0x18]
00000001405ba9b4 mov      rcx, qword ptr [rdi + 8]
00000001405ba9b8 mov      rax, qword ptr [rax + 0x118]
00000001405ba9bf call     qword ptr [rip + 0xc9933]
00000001405ba9c5 mov      rax, qword ptr [rsi + 0x28]
00000001405ba9c9 mov      edx, r14d
00000001405ba9cc mov      r8d, dword ptr [rbp + 0x30]
00000001405ba9d0 mov      rcx, rdi
00000001405ba9d3 call     qword ptr [rip + 0xc991f]
00000001405ba9d9 mov      rax, qword ptr [rsi + 0x20]
00000001405ba9dd mov      ebx, 0x58
00000001405ba9e2 mov      edx, ebx
00000001405ba9e4 mov      rcx, rdi
00000001405ba9e7 call     qword ptr [rip + 0xc990b]
00000001405ba9ed mov      r9d, 0x18600058
00000001405ba9f3 lea      r8, [rip + 0xc4c26]
00000001405ba9fa and      eax, 0xffffffd2
00000001405ba9fd mov      edx, r13d
00000001405baa00 or       eax, 0xd2
00000001405baa05 mov      dword ptr [rbp + 0x30], eax
00000001405baa08 mov      rax, qword ptr [rdi + 0x18]
00000001405baa0c mov      rcx, qword ptr [rdi + 8]
00000001405baa10 mov      rax, qword ptr [rax + 0x118]
00000001405baa17 call     qword ptr [rip + 0xc98db]
00000001405baa1d mov      eax, dword ptr [rbp + 0x30]
00000001405baa20 lea      r8, [rip + 0xc4c29]
00000001405baa27 and      eax, 0xffd2ffff
00000001405baa2c mov      r9d, 0x18600058
00000001405baa32 or       eax, 0xd20000
00000001405baa37 mov      edx, r13d
00000001405baa3a mov      dword ptr [rbp + 0x30], eax
00000001405baa3d mov      rax, qword ptr [rdi + 0x18]
00000001405baa41 mov      rcx, qword ptr [rdi + 8]
00000001405baa45 mov      rax, qword ptr [rax + 0x118]
00000001405baa4c call     qword ptr [rip + 0xc98a6]
00000001405baa52 mov      rax, qword ptr [rsi + 0x28]
00000001405baa56 mov      edx, ebx
00000001405baa58 mov      r8d, dword ptr [rbp + 0x30]
00000001405baa5c mov      rcx, rdi
00000001405baa5f call     qword ptr [rip + 0xc9893]
00000001405baa65 mov      r14d, 0x500
00000001405baa6b lea      r9d, [rbx - 0x56]
00000001405baa6f mov      edx, r14d
00000001405baa72 lea      r8, [rbp + 0x30]
00000001405baa76 mov      rcx, rdi
00000001405baa79 call     0x1403695ac
00000001405baa7e test     eax, eax
00000001405baa80 jne      0x1405bcaac
00000001405baa86 mov      eax, dword ptr [rbp + 0x30]
00000001405baa89 lea      r8, [rip + 0xc4770]
00000001405baa90 btr      eax, 0x16
00000001405baa94 mov      r9d, 0x18006500
00000001405baa9a or       eax, 0xa00000
00000001405baa9f mov      edx, r13d
00000001405baaa2 mov      dword ptr [rbp + 0x30], eax
00000001405baaa5 mov      rax, qword ptr [rdi + 0x18]
00000001405baaa9 mov      rcx, qword ptr [rdi + 8]
00000001405baaad mov      rax, qword ptr [rax + 0x118]
00000001405baab4 call     qword ptr [rip + 0xc983e]
00000001405baaba mov      r8d, dword ptr [rbp + 0x30]
00000001405baabe lea      r9d, [rbx - 0x56]
00000001405baac2 mov      edx, r14d
00000001405baac5 mov      rcx, rdi
00000001405baac8 call     0x1403695cc
00000001405baacd test     eax, eax
00000001405baacf jne      0x1405bcaac
00000001405baad5 mov      rax, qword ptr [rdi + 0x18]
00000001405baad9 lea      r8, [rip + 0xc4db0]
00000001405baae0 mov      rcx, qword ptr [rdi + 8]
00000001405baae4 mov      edx, r13d
00000001405baae7 mov      rax, qword ptr [rax + 0x118]
00000001405baaee call     qword ptr [rip + 0xc9804]
00000001405baaf4 lea      rdx, [rip + 0x717cfd]
00000001405baafb jmp      0x1405bd0a2
00000001405bab00 mov      rax, qword ptr [rdi + 0x18]
00000001405bab04 lea      r8, [rip + 0xb2135]
00000001405bab0b mov      rcx, qword ptr [rdi + 8]
00000001405bab0f mov      edx, r13d
00000001405bab12 mov      rax, qword ptr [rax + 0x118]
00000001405bab19 call     qword ptr [rip + 0xc97d9]
00000001405bab1f mov      rax, qword ptr [rsi + 0x20]
00000001405bab23 mov      r14d, 0xf4
00000001405bab29 mov      edx, r14d
00000001405bab2c mov      rcx, rdi
00000001405bab2f call     qword ptr [rip + 0xc97c3]
00000001405bab35 mov      r9d, 0x186000f4
00000001405bab3b lea      r8, [rip + 0xad68e]
00000001405bab42 btr      eax, 0x11
00000001405bab46 mov      edx, r13d
00000001405bab49 bts      eax, 0x10
00000001405bab4d mov      dword ptr [rbp + 0x30], eax
00000001405bab50 mov      rax, qword ptr [rdi + 0x18]
00000001405bab54 mov      rcx, qword ptr [rdi + 8]
00000001405bab58 mov      rax, qword ptr [rax + 0x118]
00000001405bab5f call     qword ptr [rip + 0xc9793]
00000001405bab65 mov      rax, qword ptr [rsi + 0x28]
00000001405bab69 mov      edx, r14d
00000001405bab6c mov      r8d, dword ptr [rbp + 0x30]
00000001405bab70 mov      rcx, rdi
00000001405bab73 call     qword ptr [rip + 0xc977f]
00000001405bab79 mov      rax, qword ptr [rsi]
00000001405bab7c mov      ebx, 0x58
00000001405bab81 mov      edx, ebx
00000001405bab83 mov      rcx, rdi
00000001405bab86 call     qword ptr [rip + 0xc976c]
00000001405bab8c mov      rax, qword ptr [rdi + 0x18]
00000001405bab90 lea      r8, [rip + 0xb2019]
00000001405bab97 mov      rcx, qword ptr [rdi + 8]
00000001405bab9b mov      r9d, 0x18600058
00000001405baba1 mov      edx, r13d
00000001405baba4 mov      rax, qword ptr [rax + 0x118]
00000001405babab call     qword ptr [rip + 0xc9747]
00000001405babb1 mov      rax, qword ptr [rsi + 8]
00000001405babb5 mov      r8b, 0x80
00000001405babb8 mov      edx, ebx
00000001405babba mov      rcx, rdi
00000001405babbd call     qword ptr [rip + 0xc9735]
00000001405babc3 mov      rax, qword ptr [rsi + 0x10]
00000001405babc7 mov      r15d, 0x8864
00000001405babcd mov      edx, r15d
00000001405babd0 mov      rcx, rdi
00000001405babd3 call     qword ptr [rip + 0xc971f]
00000001405babd9 mov      rcx, qword ptr [rdi + 8]
00000001405babdd lea      r8, [rip + 0xb208c]
00000001405babe4 movzx    ebx, ax
00000001405babe7 mov      r9d, 0x18608864
00000001405babed mov      eax, 0xf1ff
00000001405babf2 mov      edx, r13d
00000001405babf5 and      bx, ax
00000001405babf8 lea      eax, [r14 + 0xc]
00000001405babfc or       bx, ax
00000001405babff mov      rax, qword ptr [rdi + 0x18]
00000001405bac03 mov      rax, qword ptr [rax + 0x118]
00000001405bac0a call     qword ptr [rip + 0xc96e8]
00000001405bac10 mov      rax, qword ptr [rsi + 0x18]
00000001405bac14 movzx    r8d, bx
00000001405bac18 mov      edx, r15d
00000001405bac1b mov      rcx, rdi
00000001405bac1e call     qword ptr [rip + 0xc96d4]
00000001405bac24 mov      rax, qword ptr [rdi + 0x18]
00000001405bac28 lea      r8, [rip + 0xb2071]
00000001405bac2f mov      rcx, qword ptr [rdi + 8]
00000001405bac33 mov      edx, r13d
00000001405bac36 mov      rax, qword ptr [rax + 0x118]
00000001405bac3d call     qword ptr [rip + 0xc96b5]
00000001405bac43 mov      r9b, r13b
00000001405bac46 lea      rdx, [rip + 0x717bfb]
00000001405bac4d jmp      0x1405bd0a5
00000001405bac52 mov      eax, 0xc5
00000001405bac57 cmp      ebx, eax
00000001405bac59 ja       0x1405bbcfe
00000001405bac5f je       0x1405bbc0d
00000001405bac65 mov      eax, 0xbf
00000001405bac6a cmp      ebx, eax
00000001405bac6c ja       0x1405bb587
00000001405bac72 je       0x1405bb499
00000001405bac78 sub      ebx, 0xb9
00000001405bac7e je       0x1405bb346
00000001405bac84 sub      ebx, r13d
00000001405bac87 je       0x1405bb1f3
00000001405bac8d sub      ebx, r13d
00000001405bac90 je       0x1405bb0a3
00000001405bac96 sub      ebx, r13d
00000001405bac99 je       0x1405baf51
00000001405bac9f sub      ebx, r13d
00000001405baca2 je       0x1405bae01
00000001405baca8 cmp      ebx, r13d
00000001405bacab jne      0x1405bca8d
00000001405bacb1 mov      rax, qword ptr [rdi + 0x18]
00000001405bacb5 lea      r8, [rip + 0xb22e4]
00000001405bacbc mov      rcx, qword ptr [rdi + 8]
00000001405bacc0 mov      edx, r13d
00000001405bacc3 mov      rax, qword ptr [rax + 0x118]
00000001405bacca call     qword ptr [rip + 0xc9628]
00000001405bacd0 mov      rax, qword ptr [rsi + 0x20]
00000001405bacd4 mov      r14d, 0xf4
00000001405bacda mov      edx, r14d
00000001405bacdd mov      rcx, rdi
00000001405bace0 call     qword ptr [rip + 0xc9612]
00000001405bace6 mov      r9d, 0x186000f4
00000001405bacec lea      r8, [rip + 0xad4dd]
00000001405bacf3 btr      eax, 0x11
00000001405bacf7 mov      edx, r13d
00000001405bacfa bts      eax, 0x10
00000001405bacfe mov      dword ptr [rbp + 0x30], eax
00000001405bad01 mov      rax, qword ptr [rdi + 0x18]
00000001405bad05 mov      rcx, qword ptr [rdi + 8]
00000001405bad09 mov      rax, qword ptr [rax + 0x118]
00000001405bad10 call     qword ptr [rip + 0xc95e2]
00000001405bad16 mov      rax, qword ptr [rsi + 0x28]
00000001405bad1a mov      edx, r14d
00000001405bad1d mov      r8d, dword ptr [rbp + 0x30]
00000001405bad21 mov      rcx, rdi
00000001405bad24 call     qword ptr [rip + 0xc95ce]
00000001405bad2a mov      rax, qword ptr [rsi]
00000001405bad2d mov      ebx, 0x58
00000001405bad32 mov      edx, ebx
00000001405bad34 mov      rcx, rdi
00000001405bad37 call     qword ptr [rip + 0xc95bb]
00000001405bad3d mov      rax, qword ptr [rdi + 0x18]
00000001405bad41 lea      r8, [rip + 0xb1e68]
00000001405bad48 mov      rcx, qword ptr [rdi + 8]
00000001405bad4c mov      r9d, 0x18600058
00000001405bad52 mov      edx, r13d
00000001405bad55 mov      rax, qword ptr [rax + 0x118]
00000001405bad5c call     qword ptr [rip + 0xc9596]
00000001405bad62 mov      rax, qword ptr [rsi + 8]
00000001405bad66 mov      r8b, 0x80
00000001405bad69 mov      edx, ebx
00000001405bad6b mov      rcx, rdi
00000001405bad6e call     qword ptr [rip + 0xc9584]
00000001405bad74 mov      rax, qword ptr [rsi + 0x10]
00000001405bad78 mov      r15d, 0x8864
00000001405bad7e mov      edx, r15d
00000001405bad81 mov      rcx, rdi
00000001405bad84 call     qword ptr [rip + 0xc956e]
00000001405bad8a mov      rcx, qword ptr [rdi + 8]
00000001405bad8e lea      r8, [rip + 0xb223b]
00000001405bad95 movzx    ebx, ax
00000001405bad98 mov      r9d, 0x18608864
00000001405bad9e mov      eax, 0xf7ff
00000001405bada3 mov      edx, r13d
00000001405bada6 and      bx, ax
00000001405bada9 mov      eax, 0x700
00000001405badae or       bx, ax
00000001405badb1 mov      rax, qword ptr [rdi + 0x18]
00000001405badb5 mov      rax, qword ptr [rax + 0x118]
00000001405badbc call     qword ptr [rip + 0xc9536]
00000001405badc2 mov      rax, qword ptr [rsi + 0x18]
00000001405badc6 movzx    r8d, bx
00000001405badca mov      edx, r15d
00000001405badcd mov      rcx, rdi
00000001405badd0 call     qword ptr [rip + 0xc9522]
00000001405badd6 mov      rax, qword ptr [rdi + 0x18]
00000001405badda lea      r8, [rip + 0xb221f]
00000001405bade1 mov      rcx, qword ptr [rdi + 8]
00000001405bade5 mov      edx, r13d
00000001405bade8 mov      rax, qword ptr [rax + 0x118]
00000001405badef call     qword ptr [rip + 0xc9503]
00000001405badf5 lea      rdx, [rip + 0x717aac]
00000001405badfc jmp      0x1405bd0a2
00000001405bae01 mov      rax, qword ptr [rdi + 0x18]
00000001405bae05 lea      r8, [rip + 0xb2104]
00000001405bae0c mov      rcx, qword ptr [rdi + 8]
00000001405bae10 mov      edx, r13d
00000001405bae13 mov      rax, qword ptr [rax + 0x118]
00000001405bae1a call     qword ptr [rip + 0xc94d8]
00000001405bae20 mov      rax, qword ptr [rsi + 0x20]
00000001405bae24 mov      r14d, 0xf4
00000001405bae2a mov      edx, r14d
00000001405bae2d mov      rcx, rdi
00000001405bae30 call     qword ptr [rip + 0xc94c2]
00000001405bae36 mov      r9d, 0x186000f4
00000001405bae3c lea      r8, [rip + 0xad38d]
00000001405bae43 btr      eax, 0x11
00000001405bae47 mov      edx, r13d
00000001405bae4a bts      eax, 0x10
00000001405bae4e mov      dword ptr [rbp + 0x30], eax
00000001405bae51 mov      rax, qword ptr [rdi + 0x18]
00000001405bae55 mov      rcx, qword ptr [rdi + 8]
00000001405bae59 mov      rax, qword ptr [rax + 0x118]
00000001405bae60 call     qword ptr [rip + 0xc9492]
00000001405bae66 mov      rax, qword ptr [rsi + 0x28]
00000001405bae6a mov      edx, r14d
00000001405bae6d mov      r8d, dword ptr [rbp + 0x30]
00000001405bae71 mov      rcx, rdi
00000001405bae74 call     qword ptr [rip + 0xc947e]
00000001405bae7a mov      rax, qword ptr [rsi]
00000001405bae7d mov      ebx, 0x58
00000001405bae82 mov      edx, ebx
00000001405bae84 mov      rcx, rdi
00000001405bae87 call     qword ptr [rip + 0xc946b]
00000001405bae8d mov      rax, qword ptr [rdi + 0x18]
00000001405bae91 lea      r8, [rip + 0xb1d18]
00000001405bae98 mov      rcx, qword ptr [rdi + 8]
00000001405bae9c mov      r9d, 0x18600058
00000001405baea2 mov      edx, r13d
00000001405baea5 mov      rax, qword ptr [rax + 0x118]
00000001405baeac call     qword ptr [rip + 0xc9446]
00000001405baeb2 mov      rax, qword ptr [rsi + 8]
00000001405baeb6 mov      r8b, 0x80
00000001405baeb9 mov      edx, ebx
00000001405baebb mov      rcx, rdi
00000001405baebe call     qword ptr [rip + 0xc9434]
00000001405baec4 mov      rax, qword ptr [rsi + 0x10]
00000001405baec8 mov      r15d, 0x8864
00000001405baece mov      edx, r15d
00000001405baed1 mov      rcx, rdi
00000001405baed4 call     qword ptr [rip + 0xc941e]
00000001405baeda mov      rcx, qword ptr [rdi + 8]
00000001405baede lea      r8, [rip + 0xb205b]
00000001405baee5 movzx    ebx, ax
00000001405baee8 mov      r9d, 0x18608864
00000001405baeee mov      eax, 0xf6ff
00000001405baef3 mov      edx, r13d
00000001405baef6 and      bx, ax
00000001405baef9 mov      eax, 0x600
00000001405baefe or       bx, ax
00000001405baf01 mov      rax, qword ptr [rdi + 0x18]
00000001405baf05 mov      rax, qword ptr [rax + 0x118]
00000001405baf0c call     qword ptr [rip + 0xc93e6]
00000001405baf12 mov      rax, qword ptr [rsi + 0x18]
00000001405baf16 movzx    r8d, bx
00000001405baf1a mov      edx, r15d
00000001405baf1d mov      rcx, rdi
00000001405baf20 call     qword ptr [rip + 0xc93d2]
00000001405baf26 mov      rax, qword ptr [rdi + 0x18]
00000001405baf2a lea      r8, [rip + 0xb203f]
00000001405baf31 mov      rcx, qword ptr [rdi + 8]
00000001405baf35 mov      edx, r13d
00000001405baf38 mov      rax, qword ptr [rax + 0x118]
00000001405baf3f call     qword ptr [rip + 0xc93b3]
00000001405baf45 lea      rdx, [rip + 0x71794c]
00000001405baf4c jmp      0x1405bd0a2
00000001405baf51 mov      rax, qword ptr [rdi + 0x18]
00000001405baf55 lea      r8, [rip + 0xb1f24]
00000001405baf5c mov      rcx, qword ptr [rdi + 8]
00000001405baf60 mov      edx, r13d
00000001405baf63 mov      rax, qword ptr [rax + 0x118]
00000001405baf6a call     qword ptr [rip + 0xc9388]
00000001405baf70 mov      rax, qword ptr [rsi + 0x20]
00000001405baf74 mov      r14d, 0xf4
00000001405baf7a mov      edx, r14d
00000001405baf7d mov      rcx, rdi
00000001405baf80 call     qword ptr [rip + 0xc9372]
00000001405baf86 mov      r9d, 0x186000f4
00000001405baf8c lea      r8, [rip + 0xad23d]
00000001405baf93 btr      eax, 0x11
00000001405baf97 mov      edx, r13d
00000001405baf9a bts      eax, 0x10
00000001405baf9e mov      dword ptr [rbp + 0x30], eax
00000001405bafa1 mov      rax, qword ptr [rdi + 0x18]
00000001405bafa5 mov      rcx, qword ptr [rdi + 8]
00000001405bafa9 mov      rax, qword ptr [rax + 0x118]
00000001405bafb0 call     qword ptr [rip + 0xc9342]
00000001405bafb6 mov      rax, qword ptr [rsi + 0x28]
00000001405bafba mov      edx, r14d
00000001405bafbd mov      r8d, dword ptr [rbp + 0x30]
00000001405bafc1 mov      rcx, rdi
00000001405bafc4 call     qword ptr [rip + 0xc932e]
00000001405bafca mov      rax, qword ptr [rsi]
00000001405bafcd mov      ebx, 0x58
00000001405bafd2 mov      edx, ebx
00000001405bafd4 mov      rcx, rdi
00000001405bafd7 call     qword ptr [rip + 0xc931b]
00000001405bafdd mov      rax, qword ptr [rdi + 0x18]
00000001405bafe1 lea      r8, [rip + 0xb1bc8]
00000001405bafe8 mov      rcx, qword ptr [rdi + 8]
00000001405bafec mov      r9d, 0x18600058
00000001405baff2 mov      edx, r13d
00000001405baff5 mov      rax, qword ptr [rax + 0x118]
00000001405baffc call     qword ptr [rip + 0xc92f6]
00000001405bb002 mov      rax, qword ptr [rsi + 8]
00000001405bb006 mov      r8b, 0x80
00000001405bb009 mov      edx, ebx
00000001405bb00b mov      rcx, rdi
00000001405bb00e call     qword ptr [rip + 0xc92e4]
00000001405bb014 mov      rax, qword ptr [rsi + 0x10]
00000001405bb018 mov      r15d, 0x8864
00000001405bb01e mov      edx, r15d
00000001405bb021 mov      rcx, rdi
00000001405bb024 call     qword ptr [rip + 0xc92ce]
00000001405bb02a mov      rcx, qword ptr [rdi + 8]
00000001405bb02e lea      r8, [rip + 0xb1e7b]
00000001405bb035 movzx    ebx, ax
00000001405bb038 mov      r14d, 0x500
00000001405bb03e mov      eax, 0xf5ff
00000001405bb043 mov      r9d, 0x18608864
00000001405bb049 and      bx, ax
00000001405bb04c mov      edx, r13d
00000001405bb04f mov      rax, qword ptr [rdi + 0x18]
00000001405bb053 or       bx, r14w
00000001405bb057 mov      rax, qword ptr [rax + 0x118]
00000001405bb05e call     qword ptr [rip + 0xc9294]
00000001405bb064 mov      rax, qword ptr [rsi + 0x18]
00000001405bb068 movzx    r8d, bx
00000001405bb06c mov      edx, r15d
00000001405bb06f mov      rcx, rdi
00000001405bb072 call     qword ptr [rip + 0xc9280]
00000001405bb078 mov      rax, qword ptr [rdi + 0x18]
00000001405bb07c lea      r8, [rip + 0xb1e5d]
00000001405bb083 mov      rcx, qword ptr [rdi + 8]
00000001405bb087 mov      edx, r13d
00000001405bb08a mov      rax, qword ptr [rax + 0x118]
00000001405bb091 call     qword ptr [rip + 0xc9261]
00000001405bb097 lea      rdx, [rip + 0x7177ea]
00000001405bb09e jmp      0x1405bd0a2
00000001405bb0a3 mov      rax, qword ptr [rdi + 0x18]
00000001405bb0a7 lea      r8, [rip + 0xb1d42]
00000001405bb0ae mov      rcx, qword ptr [rdi + 8]
00000001405bb0b2 mov      edx, r13d
00000001405bb0b5 mov      rax, qword ptr [rax + 0x118]
00000001405bb0bc call     qword ptr [rip + 0xc9236]
00000001405bb0c2 mov      rax, qword ptr [rsi + 0x20]
00000001405bb0c6 mov      r14d, 0xf4
00000001405bb0cc mov      edx, r14d
00000001405bb0cf mov      rcx, rdi
00000001405bb0d2 call     qword ptr [rip + 0xc9220]
00000001405bb0d8 mov      r9d, 0x186000f4
00000001405bb0de lea      r8, [rip + 0xad0eb]
00000001405bb0e5 btr      eax, 0x11
00000001405bb0e9 mov      edx, r13d
00000001405bb0ec bts      eax, 0x10
00000001405bb0f0 mov      dword ptr [rbp + 0x30], eax
00000001405bb0f3 mov      rax, qword ptr [rdi + 0x18]
00000001405bb0f7 mov      rcx, qword ptr [rdi + 8]
00000001405bb0fb mov      rax, qword ptr [rax + 0x118]
00000001405bb102 call     qword ptr [rip + 0xc91f0]
00000001405bb108 mov      rax, qword ptr [rsi + 0x28]
00000001405bb10c mov      edx, r14d
00000001405bb10f mov      r8d, dword ptr [rbp + 0x30]
00000001405bb113 mov      rcx, rdi
00000001405bb116 call     qword ptr [rip + 0xc91dc]
00000001405bb11c mov      rax, qword ptr [rsi]
00000001405bb11f mov      ebx, 0x58
00000001405bb124 mov      edx, ebx
00000001405bb126 mov      rcx, rdi
00000001405bb129 call     qword ptr [rip + 0xc91c9]
00000001405bb12f mov      rax, qword ptr [rdi + 0x18]
00000001405bb133 lea      r8, [rip + 0xb1a76]
00000001405bb13a mov      rcx, qword ptr [rdi + 8]
00000001405bb13e mov      r9d, 0x18600058
00000001405bb144 mov      edx, r13d
00000001405bb147 mov      rax, qword ptr [rax + 0x118]
00000001405bb14e call     qword ptr [rip + 0xc91a4]
00000001405bb154 mov      rax, qword ptr [rsi + 8]
00000001405bb158 mov      r8b, 0x80
00000001405bb15b mov      edx, ebx
00000001405bb15d mov      rcx, rdi
00000001405bb160 call     qword ptr [rip + 0xc9192]
00000001405bb166 mov      rax, qword ptr [rsi + 0x10]
00000001405bb16a mov      r15d, 0x8864
00000001405bb170 mov      edx, r15d
00000001405bb173 mov      rcx, rdi
00000001405bb176 call     qword ptr [rip + 0xc917c]
00000001405bb17c mov      rcx, qword ptr [rdi + 8]
00000001405bb180 lea      r8, [rip + 0xb1c99]
00000001405bb187 movzx    ebx, ax
00000001405bb18a mov      r9d, 0x18608864
00000001405bb190 mov      eax, 0xf4ff
00000001405bb195 mov      edx, r13d
00000001405bb198 and      bx, ax
00000001405bb19b mov      eax, 0x400
00000001405bb1a0 or       bx, ax
00000001405bb1a3 mov      rax, qword ptr [rdi + 0x18]
00000001405bb1a7 mov      rax, qword ptr [rax + 0x118]
00000001405bb1ae call     qword ptr [rip + 0xc9144]
00000001405bb1b4 mov      rax, qword ptr [rsi + 0x18]
00000001405bb1b8 movzx    r8d, bx
00000001405bb1bc mov      edx, r15d
00000001405bb1bf mov      rcx, rdi
00000001405bb1c2 call     qword ptr [rip + 0xc9130]
00000001405bb1c8 mov      rax, qword ptr [rdi + 0x18]
00000001405bb1cc lea      r8, [rip + 0xb1c7d]
00000001405bb1d3 mov      rcx, qword ptr [rdi + 8]
00000001405bb1d7 mov      edx, r13d
00000001405bb1da mov      rax, qword ptr [rax + 0x118]
00000001405bb1e1 call     qword ptr [rip + 0xc9111]
00000001405bb1e7 lea      rdx, [rip + 0x71768a]
00000001405bb1ee jmp      0x1405bd0a2
00000001405bb1f3 mov      rax, qword ptr [rdi + 0x18]
00000001405bb1f7 lea      r8, [rip + 0xb1b62]
00000001405bb1fe mov      rcx, qword ptr [rdi + 8]
00000001405bb202 mov      edx, r13d
00000001405bb205 mov      rax, qword ptr [rax + 0x118]
00000001405bb20c call     qword ptr [rip + 0xc90e6]
00000001405bb212 mov      rax, qword ptr [rsi + 0x20]
00000001405bb216 mov      r14d, 0xf4
00000001405bb21c mov      edx, r14d
00000001405bb21f mov      rcx, rdi
00000001405bb222 call     qword ptr [rip + 0xc90d0]
00000001405bb228 mov      r9d, 0x186000f4
00000001405bb22e lea      r8, [rip + 0xacf9b]
00000001405bb235 btr      eax, 0x11
00000001405bb239 mov      edx, r13d
00000001405bb23c bts      eax, 0x10
00000001405bb240 mov      dword ptr [rbp + 0x30], eax
00000001405bb243 mov      rax, qword ptr [rdi + 0x18]
00000001405bb247 mov      rcx, qword ptr [rdi + 8]
00000001405bb24b mov      rax, qword ptr [rax + 0x118]
00000001405bb252 call     qword ptr [rip + 0xc90a0]
00000001405bb258 mov      rax, qword ptr [rsi + 0x28]
00000001405bb25c mov      edx, r14d
00000001405bb25f mov      r8d, dword ptr [rbp + 0x30]
00000001405bb263 mov      rcx, rdi
00000001405bb266 call     qword ptr [rip + 0xc908c]
00000001405bb26c mov      rax, qword ptr [rsi]
00000001405bb26f mov      ebx, 0x58
00000001405bb274 mov      edx, ebx
00000001405bb276 mov      rcx, rdi
00000001405bb279 call     qword ptr [rip + 0xc9079]
00000001405bb27f mov      rax, qword ptr [rdi + 0x18]
00000001405bb283 lea      r8, [rip + 0xb1926]
00000001405bb28a mov      rcx, qword ptr [rdi + 8]
00000001405bb28e mov      r9d, 0x18600058
00000001405bb294 mov      edx, r13d
00000001405bb297 mov      rax, qword ptr [rax + 0x118]
00000001405bb29e call     qword ptr [rip + 0xc9054]
00000001405bb2a4 mov      rax, qword ptr [rsi + 8]
00000001405bb2a8 mov      r8b, 0x80
00000001405bb2ab mov      edx, ebx
00000001405bb2ad mov      rcx, rdi
00000001405bb2b0 call     qword ptr [rip + 0xc9042]
00000001405bb2b6 mov      rax, qword ptr [rsi + 0x10]
00000001405bb2ba mov      r15d, 0x8864
00000001405bb2c0 mov      edx, r15d
00000001405bb2c3 mov      rcx, rdi
00000001405bb2c6 call     qword ptr [rip + 0xc902c]
00000001405bb2cc mov      rcx, qword ptr [rdi + 8]
00000001405bb2d0 lea      r8, [rip + 0xb1ab9]
00000001405bb2d7 movzx    ebx, ax
00000001405bb2da mov      r9d, 0x18608864
00000001405bb2e0 mov      eax, 0xf3ff
00000001405bb2e5 mov      edx, r13d
00000001405bb2e8 and      bx, ax
00000001405bb2eb mov      eax, 0x300
00000001405bb2f0 or       bx, ax
00000001405bb2f3 mov      rax, qword ptr [rdi + 0x18]
00000001405bb2f7 mov      rax, qword ptr [rax + 0x118]
00000001405bb2fe call     qword ptr [rip + 0xc8ff4]
00000001405bb304 mov      rax, qword ptr [rsi + 0x18]
00000001405bb308 movzx    r8d, bx
00000001405bb30c mov      edx, r15d
00000001405bb30f mov      rcx, rdi
00000001405bb312 call     qword ptr [rip + 0xc8fe0]
00000001405bb318 mov      rax, qword ptr [rdi + 0x18]
00000001405bb31c lea      r8, [rip + 0xb1a9d]
00000001405bb323 mov      rcx, qword ptr [rdi + 8]
00000001405bb327 mov      edx, r13d
00000001405bb32a mov      rax, qword ptr [rax + 0x118]
00000001405bb331 call     qword ptr [rip + 0xc8fc1]
00000001405bb337 mov      r9b, r13b
00000001405bb33a lea      rdx, [rip + 0x717527]
00000001405bb341 jmp      0x1405bd0a5
00000001405bb346 mov      rax, qword ptr [rdi + 0x18]
00000001405bb34a lea      r8, [rip + 0xb197f]
00000001405bb351 mov      rcx, qword ptr [rdi + 8]
00000001405bb355 mov      edx, r13d
00000001405bb358 mov      rax, qword ptr [rax + 0x118]
00000001405bb35f call     qword ptr [rip + 0xc8f93]
00000001405bb365 mov      rax, qword ptr [rsi + 0x20]
00000001405bb369 mov      r14d, 0xf4
00000001405bb36f mov      edx, r14d
00000001405bb372 mov      rcx, rdi
00000001405bb375 call     qword ptr [rip + 0xc8f7d]
00000001405bb37b mov      r9d, 0x186000f4
00000001405bb381 lea      r8, [rip + 0xace48]
00000001405bb388 btr      eax, 0x11
00000001405bb38c mov      edx, r13d
00000001405bb38f bts      eax, 0x10
00000001405bb393 mov      dword ptr [rbp + 0x30], eax
00000001405bb396 mov      rax, qword ptr [rdi + 0x18]
00000001405bb39a mov      rcx, qword ptr [rdi + 8]
00000001405bb39e mov      rax, qword ptr [rax + 0x118]
00000001405bb3a5 call     qword ptr [rip + 0xc8f4d]
00000001405bb3ab mov      rax, qword ptr [rsi + 0x28]
00000001405bb3af mov      edx, r14d
00000001405bb3b2 mov      r8d, dword ptr [rbp + 0x30]
00000001405bb3b6 mov      rcx, rdi
00000001405bb3b9 call     qword ptr [rip + 0xc8f39]
00000001405bb3bf mov      rax, qword ptr [rsi]
00000001405bb3c2 mov      ebx, 0x58
00000001405bb3c7 mov      edx, ebx
00000001405bb3c9 mov      rcx, rdi
00000001405bb3cc call     qword ptr [rip + 0xc8f26]
00000001405bb3d2 mov      rax, qword ptr [rdi + 0x18]
00000001405bb3d6 lea      r8, [rip + 0xb17d3]
00000001405bb3dd mov      rcx, qword ptr [rdi + 8]
00000001405bb3e1 mov      r9d, 0x18600058
00000001405bb3e7 mov      edx, r13d
00000001405bb3ea mov      rax, qword ptr [rax + 0x118]
00000001405bb3f1 call     qword ptr [rip + 0xc8f01]
00000001405bb3f7 mov      rax, qword ptr [rsi + 8]
00000001405bb3fb mov      r8b, 0x80
00000001405bb3fe mov      edx, ebx
00000001405bb400 mov      rcx, rdi
00000001405bb403 call     qword ptr [rip + 0xc8eef]
00000001405bb409 mov      rax, qword ptr [rsi + 0x10]
00000001405bb40d mov      r15d, 0x8864
00000001405bb413 mov      edx, r15d
00000001405bb416 mov      rcx, rdi
00000001405bb419 call     qword ptr [rip + 0xc8ed9]
00000001405bb41f mov      rcx, qword ptr [rdi + 8]
00000001405bb423 lea      r8, [rip + 0xb18d6]
00000001405bb42a movzx    ebx, ax
00000001405bb42d mov      r9d, 0x18608864
00000001405bb433 mov      eax, 0xf2ff
00000001405bb438 mov      edx, r13d
00000001405bb43b and      bx, ax
00000001405bb43e mov      eax, 0x200
00000001405bb443 or       bx, ax
00000001405bb446 mov      rax, qword ptr [rdi + 0x18]
00000001405bb44a mov      rax, qword ptr [rax + 0x118]
00000001405bb451 call     qword ptr [rip + 0xc8ea1]
00000001405bb457 mov      rax, qword ptr [rsi + 0x18]
00000001405bb45b movzx    r8d, bx
00000001405bb45f mov      edx, r15d
00000001405bb462 mov      rcx, rdi
00000001405bb465 call     qword ptr [rip + 0xc8e8d]
00000001405bb46b mov      rax, qword ptr [rdi + 0x18]
00000001405bb46f lea      r8, [rip + 0xb18ba]
00000001405bb476 mov      rcx, qword ptr [rdi + 8]
00000001405bb47a mov      edx, r13d
00000001405bb47d mov      rax, qword ptr [rax + 0x118]
00000001405bb484 call     qword ptr [rip + 0xc8e6e]
00000001405bb48a mov      r9b, r13b
00000001405bb48d lea      rdx, [rip + 0x7173c4]
00000001405bb494 jmp      0x1405bd0a5
00000001405bb499 mov      rax, qword ptr [rdi + 0x18]
00000001405bb49d lea      r8, [rip + 0xb1b8c]
00000001405bb4a4 mov      rcx, qword ptr [rdi + 8]
00000001405bb4a8 mov      edx, r13d
00000001405bb4ab mov      rax, qword ptr [rax + 0x118]
00000001405bb4b2 call     qword ptr [rip + 0xc8e40]
00000001405bb4b8 mov      rax, qword ptr [rsi + 0x20]
00000001405bb4bc mov      r14d, 0xf4
00000001405bb4c2 mov      edx, r14d
00000001405bb4c5 mov      rcx, rdi
00000001405bb4c8 call     qword ptr [rip + 0xc8e2a]
00000001405bb4ce mov      r9d, 0x186000f4
00000001405bb4d4 lea      r8, [rip + 0xaccf5]
00000001405bb4db btr      eax, 0x11
00000001405bb4df mov      edx, r13d
00000001405bb4e2 bts      eax, 0x10
00000001405bb4e6 mov      dword ptr [rbp + 0x30], eax
00000001405bb4e9 mov      rax, qword ptr [rdi + 0x18]
00000001405bb4ed mov      rcx, qword ptr [rdi + 8]
00000001405bb4f1 mov      rax, qword ptr [rax + 0x118]
00000001405bb4f8 call     qword ptr [rip + 0xc8dfa]
00000001405bb4fe mov      rax, qword ptr [rsi + 0x28]
00000001405bb502 mov      edx, r14d
00000001405bb505 mov      r8d, dword ptr [rbp + 0x30]
00000001405bb509 mov      rcx, rdi
00000001405bb50c call     qword ptr [rip + 0xc8de6]
00000001405bb512 mov      rax, qword ptr [rsi]
00000001405bb515 mov      ebx, 0x58
00000001405bb51a mov      edx, ebx
00000001405bb51c mov      rcx, rdi
00000001405bb51f call     qword ptr [rip + 0xc8dd3]
00000001405bb525 mov      rax, qword ptr [rdi + 0x18]
00000001405bb529 lea      r8, [rip + 0xb1680]
00000001405bb530 mov      rcx, qword ptr [rdi + 8]
00000001405bb534 mov      r9d, 0x18600058
00000001405bb53a mov      edx, r13d
00000001405bb53d mov      rax, qword ptr [rax + 0x118]
00000001405bb544 call     qword ptr [rip + 0xc8dae]
00000001405bb54a mov      rax, qword ptr [rsi + 8]
00000001405bb54e mov      r8b, 0x80
00000001405bb551 mov      edx, ebx
00000001405bb553 mov      rcx, rdi
00000001405bb556 call     qword ptr [rip + 0xc8d9c]
00000001405bb55c mov      rax, qword ptr [rdi + 0x18]
00000001405bb560 lea      r8, [rip + 0xb1af9]
00000001405bb567 mov      rcx, qword ptr [rdi + 8]
00000001405bb56b mov      edx, r13d
00000001405bb56e mov      rax, qword ptr [rax + 0x118]
00000001405bb575 call     qword ptr [rip + 0xc8d7d]
00000001405bb57b lea      rdx, [rip + 0x717336]
00000001405bb582 jmp      0x1405bd0a2
00000001405bb587 sub      ebx, 0xc0
00000001405bb58d je       0x1405bbab7
00000001405bb593 sub      ebx, r13d
00000001405bb596 je       0x1405bb95d
00000001405bb59c sub      ebx, r13d
00000001405bb59f je       0x1405bb803
00000001405bb5a5 sub      ebx, r13d
00000001405bb5a8 je       0x1405bb6a8
00000001405bb5ae cmp      ebx, r13d
00000001405bb5b1 jne      0x1405bca8d
00000001405bb5b7 mov      rax, qword ptr [rdi + 0x18]
00000001405bb5bb lea      r8, [rip + 0xb1d3e]
00000001405bb5c2 mov      rcx, qword ptr [rdi + 8]
00000001405bb5c6 mov      edx, r13d
00000001405bb5c9 mov      rax, qword ptr [rax + 0x118]
00000001405bb5d0 call     qword ptr [rip + 0xc8d22]
00000001405bb5d6 mov      rax, qword ptr [rsi + 0x20]
00000001405bb5da mov      r14d, 0xf4
00000001405bb5e0 mov      edx, r14d
00000001405bb5e3 mov      rcx, rdi
00000001405bb5e6 call     qword ptr [rip + 0xc8d0c]
00000001405bb5ec mov      r9d, 0x186000f4
00000001405bb5f2 lea      r8, [rip + 0xacbd7]
00000001405bb5f9 btr      eax, 0x11
00000001405bb5fd mov      edx, r13d
00000001405bb600 bts      eax, 0x10
00000001405bb604 mov      dword ptr [rbp + 0x30], eax
00000001405bb607 mov      rax, qword ptr [rdi + 0x18]
00000001405bb60b mov      rcx, qword ptr [rdi + 8]
00000001405bb60f mov      rax, qword ptr [rax + 0x118]
00000001405bb616 call     qword ptr [rip + 0xc8cdc]
00000001405bb61c mov      rax, qword ptr [rsi + 0x28]
00000001405bb620 mov      edx, r14d
00000001405bb623 mov      r8d, dword ptr [rbp + 0x30]
00000001405bb627 mov      rcx, rdi
00000001405bb62a call     qword ptr [rip + 0xc8cc8]
00000001405bb630 mov      rax, qword ptr [rsi]
00000001405bb633 mov      ebx, 0x58
00000001405bb638 mov      edx, ebx
00000001405bb63a mov      rcx, rdi
00000001405bb63d call     qword ptr [rip + 0xc8cb5]
00000001405bb643 mov      rax, qword ptr [rdi + 0x18]
00000001405bb647 lea      r8, [rip + 0xb1cf2]
00000001405bb64e mov      rcx, qword ptr [rdi + 8]
00000001405bb652 mov      r9d, 0x18600058
00000001405bb658 mov      edx, r13d
00000001405bb65b mov      rax, qword ptr [rax + 0x118]
00000001405bb662 call     qword ptr [rip + 0xc8c90]
00000001405bb668 mov      rax, qword ptr [rsi + 8]
00000001405bb66c mov      r8b, 0xa8
00000001405bb66f mov      edx, ebx
00000001405bb671 mov      rcx, rdi
00000001405bb674 call     qword ptr [rip + 0xc8c7e]
00000001405bb67a mov      rax, qword ptr [rdi + 0x18]
00000001405bb67e lea      r8, [rip + 0xb1ceb]
00000001405bb685 mov      rcx, qword ptr [rdi + 8]
00000001405bb689 mov      edx, r13d
00000001405bb68c mov      rax, qword ptr [rax + 0x118]
00000001405bb693 call     qword ptr [rip + 0xc8c5f]
00000001405bb699 mov      r9b, r13b
00000001405bb69c lea      rdx, [rip + 0x717265]
00000001405bb6a3 jmp      0x1405bd0a5
00000001405bb6a8 mov      rax, qword ptr [rdi + 0x18]
00000001405bb6ac lea      r8, [rip + 0xb1bbd]
00000001405bb6b3 mov      rcx, qword ptr [rdi + 8]
00000001405bb6b7 mov      edx, r13d
00000001405bb6ba mov      rax, qword ptr [rax + 0x118]
00000001405bb6c1 call     qword ptr [rip + 0xc8c31]
00000001405bb6c7 mov      rax, qword ptr [rsi + 0x20]
00000001405bb6cb mov      r14d, 0xf4
00000001405bb6d1 mov      edx, r14d
00000001405bb6d4 mov      rcx, rdi
00000001405bb6d7 call     qword ptr [rip + 0xc8c1b]
00000001405bb6dd mov      r9d, 0x186000f4
00000001405bb6e3 lea      r8, [rip + 0xacae6]
00000001405bb6ea btr      eax, 0x11
00000001405bb6ee mov      edx, r13d
00000001405bb6f1 bts      eax, 0x10
00000001405bb6f5 mov      dword ptr [rbp + 0x30], eax
00000001405bb6f8 mov      rax, qword ptr [rdi + 0x18]
00000001405bb6fc mov      rcx, qword ptr [rdi + 8]
00000001405bb700 mov      rax, qword ptr [rax + 0x118]
00000001405bb707 call     qword ptr [rip + 0xc8beb]
00000001405bb70d mov      rax, qword ptr [rsi + 0x28]
00000001405bb711 mov      edx, r14d
00000001405bb714 mov      r8d, dword ptr [rbp + 0x30]
00000001405bb718 mov      rcx, rdi
00000001405bb71b call     qword ptr [rip + 0xc8bd7]
00000001405bb721 mov      rax, qword ptr [rsi + 0x20]
00000001405bb725 mov      ebx, 0x58
00000001405bb72a mov      edx, ebx
00000001405bb72c mov      rcx, rdi
00000001405bb72f call     qword ptr [rip + 0xc8bc3]
00000001405bb735 mov      r9d, 0x18600058
00000001405bb73b lea      r8, [rip + 0xb197e]
00000001405bb742 and      eax, 0xff80ffff
00000001405bb747 mov      edx, r13d
00000001405bb74a bts      eax, 0x17
00000001405bb74e mov      dword ptr [rbp + 0x30], eax
00000001405bb751 mov      rax, qword ptr [rdi + 0x18]
00000001405bb755 mov      rcx, qword ptr [rdi + 8]
00000001405bb759 mov      rax, qword ptr [rax + 0x118]
00000001405bb760 call     qword ptr [rip + 0xc8b92]
00000001405bb766 mov      rax, qword ptr [rsi + 0x28]
00000001405bb76a mov      edx, ebx
00000001405bb76c mov      r8d, dword ptr [rbp + 0x30]
00000001405bb770 mov      rcx, rdi
00000001405bb773 call     qword ptr [rip + 0xc8b7f]
00000001405bb779 mov      rax, qword ptr [rsi + 0x20]
00000001405bb77d mov      r15d, 0x8864
00000001405bb783 mov      edx, r15d
00000001405bb786 mov      rcx, rdi
00000001405bb789 call     qword ptr [rip + 0xc8b69]
00000001405bb78f mov      r9d, 0x18608864
00000001405bb795 lea      r8, [rip + 0xb1b04]
00000001405bb79c and      eax, 0xf3ffffff
00000001405bb7a1 mov      edx, r13d
00000001405bb7a4 or       eax, 0x3000000
00000001405bb7a9 mov      dword ptr [rbp + 0x30], eax
00000001405bb7ac mov      rax, qword ptr [rdi + 0x18]
00000001405bb7b0 mov      rcx, qword ptr [rdi + 8]
00000001405bb7b4 mov      rax, qword ptr [rax + 0x118]
00000001405bb7bb call     qword ptr [rip + 0xc8b37]
00000001405bb7c1 mov      rax, qword ptr [rsi + 0x28]
00000001405bb7c5 mov      edx, r15d
00000001405bb7c8 mov      r8d, dword ptr [rbp + 0x30]
00000001405bb7cc mov      rcx, rdi
00000001405bb7cf call     qword ptr [rip + 0xc8b23]
00000001405bb7d5 mov      rax, qword ptr [rdi + 0x18]
00000001405bb7d9 lea      r8, [rip + 0xb1af0]
00000001405bb7e0 mov      rcx, qword ptr [rdi + 8]
00000001405bb7e4 mov      edx, r13d
00000001405bb7e7 mov      rax, qword ptr [rax + 0x118]
00000001405bb7ee call     qword ptr [rip + 0xc8b04]
00000001405bb7f4 mov      r9b, r13b
00000001405bb7f7 lea      rdx, [rip + 0x7170fa]
00000001405bb7fe jmp      0x1405bd0a5
00000001405bb803 mov      rax, qword ptr [rdi + 0x18]
00000001405bb807 lea      r8, [rip + 0xb19d2]
00000001405bb80e mov      rcx, qword ptr [rdi + 8]
00000001405bb812 mov      edx, r13d
00000001405bb815 mov      rax, qword ptr [rax + 0x118]
00000001405bb81c call     qword ptr [rip + 0xc8ad6]
00000001405bb822 mov      rax, qword ptr [rsi + 0x20]
00000001405bb826 mov      r14d, 0xf4
00000001405bb82c mov      edx, r14d
00000001405bb82f mov      rcx, rdi
00000001405bb832 call     qword ptr [rip + 0xc8ac0]
00000001405bb838 mov      r9d, 0x186000f4
00000001405bb83e lea      r8, [rip + 0xac98b]
00000001405bb845 btr      eax, 0x11
00000001405bb849 mov      edx, r13d
00000001405bb84c bts      eax, 0x10
00000001405bb850 mov      dword ptr [rbp + 0x30], eax
00000001405bb853 mov      rax, qword ptr [rdi + 0x18]
00000001405bb857 mov      rcx, qword ptr [rdi + 8]
00000001405bb85b mov      rax, qword ptr [rax + 0x118]
00000001405bb862 call     qword ptr [rip + 0xc8a90]
00000001405bb868 mov      rax, qword ptr [rsi + 0x28]
00000001405bb86c mov      edx, r14d
00000001405bb86f mov      r8d, dword ptr [rbp + 0x30]
00000001405bb873 mov      rcx, rdi
00000001405bb876 call     qword ptr [rip + 0xc8a7c]
00000001405bb87c mov      rax, qword ptr [rsi + 0x20]
00000001405bb880 mov      ebx, 0x58
00000001405bb885 mov      edx, ebx
00000001405bb887 mov      rcx, rdi
00000001405bb88a call     qword ptr [rip + 0xc8a68]
00000001405bb890 mov      r9d, 0x18600058
00000001405bb896 lea      r8, [rip + 0xb1823]
00000001405bb89d and      eax, 0xff80ffff
00000001405bb8a2 mov      edx, r13d
00000001405bb8a5 bts      eax, 0x17
00000001405bb8a9 mov      dword ptr [rbp + 0x30], eax
00000001405bb8ac mov      rax, qword ptr [rdi + 0x18]
00000001405bb8b0 mov      rcx, qword ptr [rdi + 8]
00000001405bb8b4 mov      rax, qword ptr [rax + 0x118]
00000001405bb8bb call     qword ptr [rip + 0xc8a37]
00000001405bb8c1 mov      rax, qword ptr [rsi + 0x28]
00000001405bb8c5 mov      edx, ebx
00000001405bb8c7 mov      r8d, dword ptr [rbp + 0x30]
00000001405bb8cb mov      rcx, rdi
00000001405bb8ce call     qword ptr [rip + 0xc8a24]
00000001405bb8d4 mov      rax, qword ptr [rsi + 0x20]
00000001405bb8d8 mov      r15d, 0x8864
00000001405bb8de mov      edx, r15d
00000001405bb8e1 mov      rcx, rdi
00000001405bb8e4 call     qword ptr [rip + 0xc8a0e]
00000001405bb8ea mov      r9d, 0x18608864
00000001405bb8f0 lea      r8, [rip + 0xb1919]
00000001405bb8f7 and      eax, 0xf2ffffff
00000001405bb8fc mov      edx, r13d
00000001405bb8ff bts      eax, 0x19
00000001405bb903 mov      dword ptr [rbp + 0x30], eax
00000001405bb906 mov      rax, qword ptr [rdi + 0x18]
00000001405bb90a mov      rcx, qword ptr [rdi + 8]
00000001405bb90e mov      rax, qword ptr [rax + 0x118]
00000001405bb915 call     qword ptr [rip + 0xc89dd]
00000001405bb91b mov      rax, qword ptr [rsi + 0x28]
00000001405bb91f mov      edx, r15d
00000001405bb922 mov      r8d, dword ptr [rbp + 0x30]
00000001405bb926 mov      rcx, rdi
00000001405bb929 call     qword ptr [rip + 0xc89c9]
00000001405bb92f mov      rax, qword ptr [rdi + 0x18]
00000001405bb933 lea      r8, [rip + 0xb1906]
00000001405bb93a mov      rcx, qword ptr [rdi + 8]
00000001405bb93e mov      edx, r13d
00000001405bb941 mov      rax, qword ptr [rax + 0x118]
00000001405bb948 call     qword ptr [rip + 0xc89aa]
00000001405bb94e mov      r9b, r13b
00000001405bb951 lea      rdx, [rip + 0x716f90]
00000001405bb958 jmp      0x1405bd0a5
00000001405bb95d mov      rax, qword ptr [rdi + 0x18]
00000001405bb961 lea      r8, [rip + 0xb17e8]
00000001405bb968 mov      rcx, qword ptr [rdi + 8]
00000001405bb96c mov      edx, r13d
00000001405bb96f mov      rax, qword ptr [rax + 0x118]
00000001405bb976 call     qword ptr [rip + 0xc897c]
00000001405bb97c mov      rax, qword ptr [rsi + 0x20]
00000001405bb980 mov      r14d, 0xf4
00000001405bb986 mov      edx, r14d
00000001405bb989 mov      rcx, rdi
00000001405bb98c call     qword ptr [rip + 0xc8966]
00000001405bb992 mov      r9d, 0x186000f4
00000001405bb998 lea      r8, [rip + 0xac831]
00000001405bb99f btr      eax, 0x11
00000001405bb9a3 mov      edx, r13d
00000001405bb9a6 bts      eax, 0x10
00000001405bb9aa mov      dword ptr [rbp + 0x30], eax
00000001405bb9ad mov      rax, qword ptr [rdi + 0x18]
00000001405bb9b1 mov      rcx, qword ptr [rdi + 8]
00000001405bb9b5 mov      rax, qword ptr [rax + 0x118]
00000001405bb9bc call     qword ptr [rip + 0xc8936]
00000001405bb9c2 mov      rax, qword ptr [rsi + 0x28]
00000001405bb9c6 mov      edx, r14d
00000001405bb9c9 mov      r8d, dword ptr [rbp + 0x30]
00000001405bb9cd mov      rcx, rdi
00000001405bb9d0 call     qword ptr [rip + 0xc8922]
00000001405bb9d6 mov      rax, qword ptr [rsi + 0x20]
00000001405bb9da mov      ebx, 0x58
00000001405bb9df mov      edx, ebx
00000001405bb9e1 mov      rcx, rdi
00000001405bb9e4 call     qword ptr [rip + 0xc890e]
00000001405bb9ea mov      r9d, 0x18600058
00000001405bb9f0 lea      r8, [rip + 0xb16c9]
00000001405bb9f7 and      eax, 0xff80ffff
00000001405bb9fc mov      edx, r13d
00000001405bb9ff bts      eax, 0x17
00000001405bba03 mov      dword ptr [rbp + 0x30], eax
00000001405bba06 mov      rax, qword ptr [rdi + 0x18]
00000001405bba0a mov      rcx, qword ptr [rdi + 8]
00000001405bba0e mov      rax, qword ptr [rax + 0x118]
00000001405bba15 call     qword ptr [rip + 0xc88dd]
00000001405bba1b mov      rax, qword ptr [rsi + 0x28]
00000001405bba1f mov      edx, ebx
00000001405bba21 mov      r8d, dword ptr [rbp + 0x30]
00000001405bba25 mov      rcx, rdi
00000001405bba28 call     qword ptr [rip + 0xc88ca]
00000001405bba2e mov      rax, qword ptr [rsi + 0x20]
00000001405bba32 mov      r15d, 0x8864
00000001405bba38 mov      edx, r15d
00000001405bba3b mov      rcx, rdi
00000001405bba3e call     qword ptr [rip + 0xc88b4]
00000001405bba44 mov      r9d, 0x18608864
00000001405bba4a lea      r8, [rip + 0xb172f]
00000001405bba51 and      eax, 0xf1ffffff
00000001405bba56 mov      edx, r13d
00000001405bba59 bts      eax, 0x18
00000001405bba5d mov      dword ptr [rbp + 0x30], eax
00000001405bba60 mov      rax, qword ptr [rdi + 0x18]
00000001405bba64 mov      rcx, qword ptr [rdi + 8]
00000001405bba68 mov      rax, qword ptr [rax + 0x118]
00000001405bba6f call     qword ptr [rip + 0xc8883]
00000001405bba75 mov      rax, qword ptr [rsi + 0x28]
00000001405bba79 mov      edx, r15d
00000001405bba7c mov      r8d, dword ptr [rbp + 0x30]
00000001405bba80 mov      rcx, rdi
00000001405bba83 call     qword ptr [rip + 0xc886f]
00000001405bba89 mov      rax, qword ptr [rdi + 0x18]
00000001405bba8d lea      r8, [rip + 0xb171c]
00000001405bba94 mov      rcx, qword ptr [rdi + 8]
00000001405bba98 mov      edx, r13d
00000001405bba9b mov      rax, qword ptr [rax + 0x118]
00000001405bbaa2 call     qword ptr [rip + 0xc8850]
00000001405bbaa8 mov      r9b, r13b
00000001405bbaab lea      rdx, [rip + 0x716e26]
00000001405bbab2 jmp      0x1405bd0a5
00000001405bbab7 mov      rax, qword ptr [rdi + 0x18]
00000001405bbabb lea      r8, [rip + 0xb15ce]
00000001405bbac2 mov      rcx, qword ptr [rdi + 8]
00000001405bbac6 mov      edx, r13d
00000001405bbac9 mov      rax, qword ptr [rax + 0x118]
00000001405bbad0 call     qword ptr [rip + 0xc8822]
00000001405bbad6 mov      rax, qword ptr [rsi + 0x20]
00000001405bbada mov      r14d, 0xf4
00000001405bbae0 mov      edx, r14d
00000001405bbae3 mov      rcx, rdi
00000001405bbae6 call     qword ptr [rip + 0xc880c]
00000001405bbaec mov      r9d, 0x186000f4
00000001405bbaf2 lea      r8, [rip + 0xac6d7]
00000001405bbaf9 btr      eax, 0x11
00000001405bbafd mov      edx, r13d
00000001405bbb00 bts      eax, 0x10
00000001405bbb04 mov      dword ptr [rbp + 0x30], eax
00000001405bbb07 mov      rax, qword ptr [rdi + 0x18]
00000001405bbb0b mov      rcx, qword ptr [rdi + 8]
00000001405bbb0f mov      rax, qword ptr [rax + 0x118]
00000001405bbb16 call     qword ptr [rip + 0xc87dc]
00000001405bbb1c mov      rax, qword ptr [rsi + 0x28]
00000001405bbb20 mov      edx, r14d
00000001405bbb23 mov      r8d, dword ptr [rbp + 0x30]
00000001405bbb27 mov      rcx, rdi
00000001405bbb2a call     qword ptr [rip + 0xc87c8]
00000001405bbb30 mov      rax, qword ptr [rsi + 0x20]
00000001405bbb34 mov      ebx, 0x58
00000001405bbb39 mov      edx, ebx
00000001405bbb3b mov      rcx, rdi
00000001405bbb3e call     qword ptr [rip + 0xc87b4]
00000001405bbb44 mov      r9d, 0x18600058
00000001405bbb4a lea      r8, [rip + 0xb156f]
00000001405bbb51 and      eax, 0xff80ffff
00000001405bbb56 mov      edx, r13d
00000001405bbb59 bts      eax, 0x17
00000001405bbb5d mov      dword ptr [rbp + 0x30], eax
00000001405bbb60 mov      rax, qword ptr [rdi + 0x18]
00000001405bbb64 mov      rcx, qword ptr [rdi + 8]
00000001405bbb68 mov      rax, qword ptr [rax + 0x118]
00000001405bbb6f call     qword ptr [rip + 0xc8783]
00000001405bbb75 mov      rax, qword ptr [rsi + 0x28]
00000001405bbb79 mov      edx, ebx
00000001405bbb7b mov      r8d, dword ptr [rbp + 0x30]
00000001405bbb7f mov      rcx, rdi
00000001405bbb82 call     qword ptr [rip + 0xc8770]
00000001405bbb88 mov      rax, qword ptr [rsi + 0x20]
00000001405bbb8c mov      r15d, 0x8864
00000001405bbb92 mov      edx, r15d
00000001405bbb95 mov      rcx, rdi
00000001405bbb98 call     qword ptr [rip + 0xc875a]
00000001405bbb9e mov      r9d, 0x18608864
00000001405bbba4 lea      r8, [rip + 0xb1545]
00000001405bbbab and      eax, 0xf0ffffff
00000001405bbbb0 mov      edx, r13d
00000001405bbbb3 mov      dword ptr [rbp + 0x30], eax
00000001405bbbb6 mov      rax, qword ptr [rdi + 0x18]
00000001405bbbba mov      rcx, qword ptr [rdi + 8]
00000001405bbbbe mov      rax, qword ptr [rax + 0x118]
00000001405bbbc5 call     qword ptr [rip + 0xc872d]
00000001405bbbcb mov      rax, qword ptr [rsi + 0x28]
00000001405bbbcf mov      edx, r15d
00000001405bbbd2 mov      r8d, dword ptr [rbp + 0x30]
00000001405bbbd6 mov      rcx, rdi
00000001405bbbd9 call     qword ptr [rip + 0xc8719]
00000001405bbbdf mov      rax, qword ptr [rdi + 0x18]
00000001405bbbe3 lea      r8, [rip + 0xb1536]
00000001405bbbea mov      rcx, qword ptr [rdi + 8]
00000001405bbbee mov      edx, r13d
00000001405bbbf1 mov      rax, qword ptr [rax + 0x118]
00000001405bbbf8 call     qword ptr [rip + 0xc86fa]
00000001405bbbfe mov      r9b, r13b
00000001405bbc01 lea      rdx, [rip + 0x716cc0]
00000001405bbc08 jmp      0x1405bd0a5
00000001405bbc0d mov      rax, qword ptr [rdi + 0x18]
00000001405bbc11 lea      r8, [rip + 0xb1798]
00000001405bbc18 mov      rcx, qword ptr [rdi + 8]
00000001405bbc1c mov      edx, r13d
00000001405bbc1f mov      rax, qword ptr [rax + 0x118]
00000001405bbc26 call     qword ptr [rip + 0xc86cc]
00000001405bbc2c mov      rax, qword ptr [rsi + 0x20]
00000001405bbc30 mov      r14d, 0xf4
00000001405bbc36 mov      edx, r14d
00000001405bbc39 mov      rcx, rdi
00000001405bbc3c call     qword ptr [rip + 0xc86b6]
00000001405bbc42 mov      r9d, 0x186000f4
00000001405bbc48 lea      r8, [rip + 0xac581]
00000001405bbc4f btr      eax, 0x11
00000001405bbc53 mov      edx, r13d
00000001405bbc56 bts      eax, 0x10
00000001405bbc5a mov      dword ptr [rbp + 0x30], eax
00000001405bbc5d mov      rax, qword ptr [rdi + 0x18]
00000001405bbc61 mov      rcx, qword ptr [rdi + 8]
00000001405bbc65 mov      rax, qword ptr [rax + 0x118]
00000001405bbc6c call     qword ptr [rip + 0xc8686]
00000001405bbc72 mov      rax, qword ptr [rsi + 0x28]
00000001405bbc76 mov      edx, r14d
00000001405bbc79 mov      r8d, dword ptr [rbp + 0x30]
00000001405bbc7d mov      rcx, rdi
00000001405bbc80 call     qword ptr [rip + 0xc8672]
00000001405bbc86 mov      rax, qword ptr [rsi]
00000001405bbc89 mov      ebx, 0x58
00000001405bbc8e mov      edx, ebx
00000001405bbc90 mov      rcx, rdi
00000001405bbc93 call     qword ptr [rip + 0xc865f]
00000001405bbc99 mov      rax, qword ptr [rdi + 0x18]
00000001405bbc9d lea      r8, [rip + 0xb174c]
00000001405bbca4 mov      rcx, qword ptr [rdi + 8]
00000001405bbca8 mov      r9d, 0x18600058
00000001405bbcae mov      edx, r13d
00000001405bbcb1 mov      rax, qword ptr [rax + 0x118]
00000001405bbcb8 call     qword ptr [rip + 0xc863a]
00000001405bbcbe mov      rax, qword ptr [rsi + 8]
00000001405bbcc2 mov      r8b, r15b
00000001405bbcc5 mov      edx, ebx
00000001405bbcc7 mov      rcx, rdi
00000001405bbcca call     qword ptr [rip + 0xc8628]
00000001405bbcd0 mov      rax, qword ptr [rdi + 0x18]
00000001405bbcd4 lea      r8, [rip + 0xb1745]
00000001405bbcdb mov      rcx, qword ptr [rdi + 8]
00000001405bbcdf mov      edx, r13d
00000001405bbce2 mov      rax, qword ptr [rax + 0x118]
00000001405bbce9 call     qword ptr [rip + 0xc8609]
00000001405bbcef mov      r9b, r13b
00000001405bbcf2 lea      rdx, [rip + 0x716c1f]
00000001405bbcf9 jmp      0x1405bd0a5
00000001405bbcfe mov      eax, 0xcc
00000001405bbd03 cmp      ebx, eax
00000001405bbd05 ja       0x1405bca61
00000001405bbd0b je       0x1405bc881
00000001405bbd11 sub      ebx, 0xc6
00000001405bbd17 je       0x1405bc6a4
00000001405bbd1d sub      ebx, r13d
00000001405bbd20 je       0x1405bc4c4
00000001405bbd26 sub      ebx, r13d
00000001405bbd29 je       0x1405bc2e4
00000001405bbd2f sub      ebx, r13d
00000001405bbd32 je       0x1405bc107
00000001405bbd38 sub      ebx, r13d
00000001405bbd3b je       0x1405bbf2a
00000001405bbd41 cmp      ebx, r13d
00000001405bbd44 jne      0x1405bca8d
00000001405bbd4a mov      rax, qword ptr [rdi + 0x18]
00000001405bbd4e lea      r8, [rip + 0xc3f8b]
00000001405bbd55 mov      rcx, qword ptr [rdi + 8]
00000001405bbd59 mov      edx, r13d
00000001405bbd5c mov      rax, qword ptr [rax + 0x118]
00000001405bbd63 call     qword ptr [rip + 0xc858f]
00000001405bbd69 mov      rax, qword ptr [rsi + 0x20]
00000001405bbd6d mov      r14d, 0xf4
00000001405bbd73 mov      edx, r14d
00000001405bbd76 mov      rcx, rdi
00000001405bbd79 call     qword ptr [rip + 0xc8579]
00000001405bbd7f mov      r9d, 0x186000f4
00000001405bbd85 lea      r8, [rip + 0xac444]
00000001405bbd8c btr      eax, 0x11
00000001405bbd90 mov      edx, r13d
00000001405bbd93 bts      eax, 0x10
00000001405bbd97 mov      dword ptr [rbp + 0x30], eax
00000001405bbd9a mov      rax, qword ptr [rdi + 0x18]
00000001405bbd9e mov      rcx, qword ptr [rdi + 8]
00000001405bbda2 mov      rax, qword ptr [rax + 0x118]
00000001405bbda9 call     qword ptr [rip + 0xc8549]
00000001405bbdaf mov      rax, qword ptr [rsi + 0x28]
00000001405bbdb3 mov      edx, r14d
00000001405bbdb6 mov      r8d, dword ptr [rbp + 0x30]
00000001405bbdba mov      rcx, rdi
00000001405bbdbd call     qword ptr [rip + 0xc8535]
00000001405bbdc3 mov      rax, qword ptr [rsi + 0x20]
00000001405bbdc7 mov      ebx, 0x58
00000001405bbdcc mov      edx, ebx
00000001405bbdce mov      rcx, rdi
00000001405bbdd1 call     qword ptr [rip + 0xc8521]
00000001405bbdd7 mov      r9d, 0x18600058
00000001405bbddd lea      r8, [rip + 0xb16ac]
00000001405bbde4 and      eax, 0xffffff8b
00000001405bbde7 mov      edx, r13d
00000001405bbdea or       eax, 0x8b
00000001405bbdef mov      dword ptr [rbp + 0x30], eax
00000001405bbdf2 mov      rax, qword ptr [rdi + 0x18]
00000001405bbdf6 mov      rcx, qword ptr [rdi + 8]
00000001405bbdfa mov      rax, qword ptr [rax + 0x118]
00000001405bbe01 call     qword ptr [rip + 0xc84f1]
00000001405bbe07 mov      eax, dword ptr [rbp + 0x30]
00000001405bbe0a lea      r8, [rip + 0xc3bff]
00000001405bbe11 and      eax, 0xff8bffff
00000001405bbe16 mov      r9d, 0x18600058
00000001405bbe1c or       eax, 0x8b0000
00000001405bbe21 mov      edx, r13d
00000001405bbe24 mov      dword ptr [rbp + 0x30], eax
00000001405bbe27 mov      rax, qword ptr [rdi + 0x18]
00000001405bbe2b mov      rcx, qword ptr [rdi + 8]
00000001405bbe2f mov      rax, qword ptr [rax + 0x118]
00000001405bbe36 call     qword ptr [rip + 0xc84bc]
00000001405bbe3c mov      rax, qword ptr [rsi + 0x28]
00000001405bbe40 mov      edx, ebx
00000001405bbe42 mov      r8d, dword ptr [rbp + 0x30]
00000001405bbe46 mov      rcx, rdi
00000001405bbe49 call     qword ptr [rip + 0xc84a9]
00000001405bbe4f mov      rax, qword ptr [rsi + 0x10]
00000001405bbe53 mov      r14d, 0x9d04
00000001405bbe59 mov      edx, r14d
00000001405bbe5c mov      rcx, rdi
00000001405bbe5f call     qword ptr [rip + 0xc8493]
00000001405bbe65 mov      rcx, qword ptr [rdi + 8]
00000001405bbe69 lea      r8, [rip + 0xacdf0]
00000001405bbe70 movzx    ebx, ax
00000001405bbe73 mov      r9d, 0x18609d04
00000001405bbe79 mov      eax, 0x100
00000001405bbe7e mov      edx, r13d
00000001405bbe81 or       bx, ax
00000001405bbe84 mov      rax, qword ptr [rdi + 0x18]
00000001405bbe88 mov      rax, qword ptr [rax + 0x118]
00000001405bbe8f call     qword ptr [rip + 0xc8463]
00000001405bbe95 mov      rax, qword ptr [rsi + 0x18]
00000001405bbe99 movzx    r8d, bx
00000001405bbe9d mov      edx, r14d
00000001405bbea0 mov      rcx, rdi
00000001405bbea3 call     qword ptr [rip + 0xc844f]
00000001405bbea9 mov      rax, qword ptr [rsi + 0x20]
00000001405bbead lea      ebx, [r14 - 4]
00000001405bbeb1 mov      edx, ebx
00000001405bbeb3 mov      rcx, rdi
00000001405bbeb6 call     qword ptr [rip + 0xc843c]
00000001405bbebc mov      r9d, 0x18609d00
00000001405bbec2 lea      r8, [rip + 0xc3c37]
00000001405bbec9 btr      eax, 0x15
00000001405bbecd mov      edx, r13d
00000001405bbed0 bts      eax, 0x14
00000001405bbed4 mov      dword ptr [rbp + 0x30], eax
00000001405bbed7 mov      rax, qword ptr [rdi + 0x18]
00000001405bbedb mov      rcx, qword ptr [rdi + 8]
00000001405bbedf mov      rax, qword ptr [rax + 0x118]
00000001405bbee6 call     qword ptr [rip + 0xc840c]
00000001405bbeec mov      rax, qword ptr [rsi + 0x28]
00000001405bbef0 mov      edx, ebx
00000001405bbef2 mov      r8d, dword ptr [rbp + 0x30]
00000001405bbef6 mov      rcx, rdi
00000001405bbef9 call     qword ptr [rip + 0xc83f9]
00000001405bbeff mov      rax, qword ptr [rdi + 0x18]
00000001405bbf03 lea      r8, [rip + 0xc3e06]
00000001405bbf0a mov      rcx, qword ptr [rdi + 8]
00000001405bbf0e mov      edx, r13d
00000001405bbf11 mov      rax, qword ptr [rax + 0x118]
00000001405bbf18 call     qword ptr [rip + 0xc83da]
00000001405bbf1e lea      rdx, [rip + 0x716a53]
00000001405bbf25 jmp      0x1405bd0a2
00000001405bbf2a mov      rax, qword ptr [rdi + 0x18]
00000001405bbf2e lea      r8, [rip + 0xc3d4b]
00000001405bbf35 mov      rcx, qword ptr [rdi + 8]
00000001405bbf39 mov      edx, r13d
00000001405bbf3c mov      rax, qword ptr [rax + 0x118]
00000001405bbf43 call     qword ptr [rip + 0xc83af]
00000001405bbf49 mov      rax, qword ptr [rsi + 0x20]
00000001405bbf4d mov      r14d, 0xf4
00000001405bbf53 mov      edx, r14d
00000001405bbf56 mov      rcx, rdi
00000001405bbf59 call     qword ptr [rip + 0xc8399]
00000001405bbf5f mov      r9d, 0x186000f4
00000001405bbf65 lea      r8, [rip + 0xac264]
00000001405bbf6c btr      eax, 0x11
00000001405bbf70 mov      edx, r13d
00000001405bbf73 bts      eax, 0x10
00000001405bbf77 mov      dword ptr [rbp + 0x30], eax
00000001405bbf7a mov      rax, qword ptr [rdi + 0x18]
00000001405bbf7e mov      rcx, qword ptr [rdi + 8]
00000001405bbf82 mov      rax, qword ptr [rax + 0x118]
00000001405bbf89 call     qword ptr [rip + 0xc8369]
00000001405bbf8f mov      rax, qword ptr [rsi + 0x28]
00000001405bbf93 mov      edx, r14d
00000001405bbf96 mov      r8d, dword ptr [rbp + 0x30]
00000001405bbf9a mov      rcx, rdi
00000001405bbf9d call     qword ptr [rip + 0xc8355]
00000001405bbfa3 mov      rax, qword ptr [rsi + 0x20]
00000001405bbfa7 mov      ebx, 0x58
00000001405bbfac mov      edx, ebx
00000001405bbfae mov      rcx, rdi
00000001405bbfb1 call     qword ptr [rip + 0xc8341]
00000001405bbfb7 mov      r9d, 0x18600058
00000001405bbfbd lea      r8, [rip + 0xb14cc]
00000001405bbfc4 and      eax, 0xffffff8b
00000001405bbfc7 mov      edx, r13d
00000001405bbfca or       eax, 0x8b
00000001405bbfcf mov      dword ptr [rbp + 0x30], eax
00000001405bbfd2 mov      rax, qword ptr [rdi + 0x18]
00000001405bbfd6 mov      rcx, qword ptr [rdi + 8]
00000001405bbfda mov      rax, qword ptr [rax + 0x118]
00000001405bbfe1 call     qword ptr [rip + 0xc8311]
00000001405bbfe7 mov      eax, dword ptr [rbp + 0x30]
00000001405bbfea lea      r8, [rip + 0xc3a1f]
00000001405bbff1 and      eax, 0xff8bffff
00000001405bbff6 mov      r9d, 0x18600058
00000001405bbffc or       eax, 0x8b0000
00000001405bc001 mov      edx, r13d
00000001405bc004 mov      dword ptr [rbp + 0x30], eax
00000001405bc007 mov      rax, qword ptr [rdi + 0x18]
00000001405bc00b mov      rcx, qword ptr [rdi + 8]
00000001405bc00f mov      rax, qword ptr [rax + 0x118]
00000001405bc016 call     qword ptr [rip + 0xc82dc]
00000001405bc01c mov      rax, qword ptr [rsi + 0x28]
00000001405bc020 mov      edx, ebx
00000001405bc022 mov      r8d, dword ptr [rbp + 0x30]
00000001405bc026 mov      rcx, rdi
00000001405bc029 call     qword ptr [rip + 0xc82c9]
00000001405bc02f mov      rax, qword ptr [rsi + 0x10]
00000001405bc033 mov      r14d, 0x9d04
00000001405bc039 mov      edx, r14d
00000001405bc03c mov      rcx, rdi
00000001405bc03f call     qword ptr [rip + 0xc82b3]
00000001405bc045 mov      rcx, qword ptr [rdi + 8]
00000001405bc049 lea      r8, [rip + 0xacc10]
00000001405bc050 movzx    ebx, ax
00000001405bc053 mov      r9d, 0x18609d04
00000001405bc059 mov      eax, 0x100
00000001405bc05e mov      edx, r13d
00000001405bc061 or       bx, ax
00000001405bc064 mov      rax, qword ptr [rdi + 0x18]
00000001405bc068 mov      rax, qword ptr [rax + 0x118]
00000001405bc06f call     qword ptr [rip + 0xc8283]
00000001405bc075 mov      rax, qword ptr [rsi + 0x18]
00000001405bc079 movzx    r8d, bx
00000001405bc07d mov      edx, r14d
00000001405bc080 mov      rcx, rdi
00000001405bc083 call     qword ptr [rip + 0xc826f]
00000001405bc089 mov      rax, qword ptr [rsi + 0x20]
00000001405bc08d lea      ebx, [r14 - 4]
00000001405bc091 mov      edx, ebx
00000001405bc093 mov      rcx, rdi
00000001405bc096 call     qword ptr [rip + 0xc825c]
00000001405bc09c mov      r9d, 0x18609d00
00000001405bc0a2 lea      r8, [rip + 0xc39c7]
00000001405bc0a9 and      eax, 0xffcfffff
00000001405bc0ae mov      edx, r13d
00000001405bc0b1 mov      dword ptr [rbp + 0x30], eax
00000001405bc0b4 mov      rax, qword ptr [rdi + 0x18]
00000001405bc0b8 mov      rcx, qword ptr [rdi + 8]
00000001405bc0bc mov      rax, qword ptr [rax + 0x118]
00000001405bc0c3 call     qword ptr [rip + 0xc822f]
00000001405bc0c9 mov      rax, qword ptr [rsi + 0x28]
00000001405bc0cd mov      edx, ebx
00000001405bc0cf mov      r8d, dword ptr [rbp + 0x30]
00000001405bc0d3 mov      rcx, rdi
00000001405bc0d6 call     qword ptr [rip + 0xc821c]
00000001405bc0dc mov      rax, qword ptr [rdi + 0x18]
00000001405bc0e0 lea      r8, [rip + 0xc3bc9]
00000001405bc0e7 mov      rcx, qword ptr [rdi + 8]
00000001405bc0eb mov      edx, r13d
00000001405bc0ee mov      rax, qword ptr [rax + 0x118]
00000001405bc0f5 call     qword ptr [rip + 0xc81fd]
00000001405bc0fb lea      rdx, [rip + 0x716866]
00000001405bc102 jmp      0x1405bd0a2
00000001405bc107 mov      rax, qword ptr [rdi + 0x18]
00000001405bc10b lea      r8, [rip + 0xc3ade]
00000001405bc112 mov      rcx, qword ptr [rdi + 8]
00000001405bc116 mov      edx, r13d
00000001405bc119 mov      rax, qword ptr [rax + 0x118]
00000001405bc120 call     qword ptr [rip + 0xc81d2]
00000001405bc126 mov      rax, qword ptr [rsi + 0x20]
00000001405bc12a mov      r14d, 0xf4
00000001405bc130 mov      edx, r14d
00000001405bc133 mov      rcx, rdi
00000001405bc136 call     qword ptr [rip + 0xc81bc]
00000001405bc13c mov      r9d, 0x186000f4
00000001405bc142 lea      r8, [rip + 0xac087]
00000001405bc149 btr      eax, 0x11
00000001405bc14d mov      edx, r13d
00000001405bc150 bts      eax, 0x10
00000001405bc154 mov      dword ptr [rbp + 0x30], eax
00000001405bc157 mov      rax, qword ptr [rdi + 0x18]
00000001405bc15b mov      rcx, qword ptr [rdi + 8]
00000001405bc15f mov      rax, qword ptr [rax + 0x118]
00000001405bc166 call     qword ptr [rip + 0xc818c]
00000001405bc16c mov      rax, qword ptr [rsi + 0x28]
00000001405bc170 mov      edx, r14d
00000001405bc173 mov      r8d, dword ptr [rbp + 0x30]
00000001405bc177 mov      rcx, rdi
00000001405bc17a call     qword ptr [rip + 0xc8178]
00000001405bc180 mov      rax, qword ptr [rsi + 0x20]
00000001405bc184 mov      ebx, 0x58
00000001405bc189 mov      edx, ebx
00000001405bc18b mov      rcx, rdi
00000001405bc18e call     qword ptr [rip + 0xc8164]
00000001405bc194 mov      r9d, 0x18600058
00000001405bc19a lea      r8, [rip + 0xb12ef]
00000001405bc1a1 and      eax, 0xffffff8b
00000001405bc1a4 mov      edx, r13d
00000001405bc1a7 or       eax, 0x8b
00000001405bc1ac mov      dword ptr [rbp + 0x30], eax
00000001405bc1af mov      rax, qword ptr [rdi + 0x18]
00000001405bc1b3 mov      rcx, qword ptr [rdi + 8]
00000001405bc1b7 mov      rax, qword ptr [rax + 0x118]
00000001405bc1be call     qword ptr [rip + 0xc8134]
00000001405bc1c4 mov      eax, dword ptr [rbp + 0x30]
00000001405bc1c7 lea      r8, [rip + 0xc3842]
00000001405bc1ce and      eax, 0xff8bffff
00000001405bc1d3 mov      r9d, 0x18600058
00000001405bc1d9 or       eax, 0x8b0000
00000001405bc1de mov      edx, r13d
00000001405bc1e1 mov      dword ptr [rbp + 0x30], eax
00000001405bc1e4 mov      rax, qword ptr [rdi + 0x18]
00000001405bc1e8 mov      rcx, qword ptr [rdi + 8]
00000001405bc1ec mov      rax, qword ptr [rax + 0x118]
00000001405bc1f3 call     qword ptr [rip + 0xc80ff]
00000001405bc1f9 mov      rax, qword ptr [rsi + 0x28]
00000001405bc1fd mov      edx, ebx
00000001405bc1ff mov      r8d, dword ptr [rbp + 0x30]
00000001405bc203 mov      rcx, rdi
00000001405bc206 call     qword ptr [rip + 0xc80ec]
00000001405bc20c mov      rax, qword ptr [rsi + 0x10]
00000001405bc210 mov      r14d, 0x9d04
00000001405bc216 mov      edx, r14d
00000001405bc219 mov      rcx, rdi
00000001405bc21c call     qword ptr [rip + 0xc80d6]
00000001405bc222 mov      rcx, qword ptr [rdi + 8]
00000001405bc226 lea      r8, [rip + 0xc3813]
00000001405bc22d movzx    ebx, ax
00000001405bc230 mov      r9d, 0x18609d04
00000001405bc236 mov      eax, 0xfeff
00000001405bc23b mov      edx, r13d
00000001405bc23e and      bx, ax
00000001405bc241 mov      rax, qword ptr [rdi + 0x18]
00000001405bc245 mov      rax, qword ptr [rax + 0x118]
00000001405bc24c call     qword ptr [rip + 0xc80a6]
00000001405bc252 mov      rax, qword ptr [rsi + 0x18]
00000001405bc256 movzx    r8d, bx
00000001405bc25a mov      edx, r14d
00000001405bc25d mov      rcx, rdi
00000001405bc260 call     qword ptr [rip + 0xc8092]
00000001405bc266 mov      rax, qword ptr [rsi + 0x20]
00000001405bc26a lea      ebx, [r14 - 4]
00000001405bc26e mov      edx, ebx
00000001405bc270 mov      rcx, rdi
00000001405bc273 call     qword ptr [rip + 0xc807f]
00000001405bc279 mov      r9d, 0x18609d00
00000001405bc27f lea      r8, [rip + 0xc399a]
00000001405bc286 or       eax, 0x300000
00000001405bc28b mov      edx, r13d
00000001405bc28e mov      dword ptr [rbp + 0x30], eax
00000001405bc291 mov      rax, qword ptr [rdi + 0x18]
00000001405bc295 mov      rcx, qword ptr [rdi + 8]
00000001405bc299 mov      rax, qword ptr [rax + 0x118]
00000001405bc2a0 call     qword ptr [rip + 0xc8052]
00000001405bc2a6 mov      rax, qword ptr [rsi + 0x28]
00000001405bc2aa mov      edx, ebx
00000001405bc2ac mov      r8d, dword ptr [rbp + 0x30]
00000001405bc2b0 mov      rcx, rdi
00000001405bc2b3 call     qword ptr [rip + 0xc803f]
00000001405bc2b9 mov      rax, qword ptr [rdi + 0x18]
00000001405bc2bd lea      r8, [rip + 0xc398c]
00000001405bc2c4 mov      rcx, qword ptr [rdi + 8]
00000001405bc2c8 mov      edx, r13d
00000001405bc2cb mov      rax, qword ptr [rax + 0x118]
00000001405bc2d2 call     qword ptr [rip + 0xc8020]
00000001405bc2d8 lea      rdx, [rip + 0x716679]
00000001405bc2df jmp      0x1405bd0a2
00000001405bc2e4 mov      rax, qword ptr [rdi + 0x18]
00000001405bc2e8 lea      r8, [rip + 0xc3871]
00000001405bc2ef mov      rcx, qword ptr [rdi + 8]
00000001405bc2f3 mov      edx, r13d
00000001405bc2f6 mov      rax, qword ptr [rax + 0x118]
00000001405bc2fd call     qword ptr [rip + 0xc7ff5]
00000001405bc303 mov      rax, qword ptr [rsi + 0x20]
00000001405bc307 mov      r14d, 0xf4
00000001405bc30d mov      edx, r14d
00000001405bc310 mov      rcx, rdi
00000001405bc313 call     qword ptr [rip + 0xc7fdf]
00000001405bc319 mov      r9d, 0x186000f4
00000001405bc31f lea      r8, [rip + 0xabeaa]
00000001405bc326 btr      eax, 0x11
00000001405bc32a mov      edx, r13d
00000001405bc32d bts      eax, 0x10
00000001405bc331 mov      dword ptr [rbp + 0x30], eax
00000001405bc334 mov      rax, qword ptr [rdi + 0x18]
00000001405bc338 mov      rcx, qword ptr [rdi + 8]
00000001405bc33c mov      rax, qword ptr [rax + 0x118]
00000001405bc343 call     qword ptr [rip + 0xc7faf]
00000001405bc349 mov      rax, qword ptr [rsi + 0x28]
00000001405bc34d mov      edx, r14d
00000001405bc350 mov      r8d, dword ptr [rbp + 0x30]
00000001405bc354 mov      rcx, rdi
00000001405bc357 call     qword ptr [rip + 0xc7f9b]
00000001405bc35d mov      rax, qword ptr [rsi + 0x20]
00000001405bc361 mov      ebx, 0x58
00000001405bc366 mov      edx, ebx
00000001405bc368 mov      rcx, rdi
00000001405bc36b call     qword ptr [rip + 0xc7f87]
00000001405bc371 mov      r9d, 0x18600058
00000001405bc377 lea      r8, [rip + 0xb1112]
00000001405bc37e and      eax, 0xffffff8b
00000001405bc381 mov      edx, r13d
00000001405bc384 or       eax, 0x8b
00000001405bc389 mov      dword ptr [rbp + 0x30], eax
00000001405bc38c mov      rax, qword ptr [rdi + 0x18]
00000001405bc390 mov      rcx, qword ptr [rdi + 8]
00000001405bc394 mov      rax, qword ptr [rax + 0x118]
00000001405bc39b call     qword ptr [rip + 0xc7f57]
00000001405bc3a1 mov      eax, dword ptr [rbp + 0x30]
00000001405bc3a4 lea      r8, [rip + 0xc3665]
00000001405bc3ab and      eax, 0xff8bffff
00000001405bc3b0 mov      r9d, 0x18600058
00000001405bc3b6 or       eax, 0x8b0000
00000001405bc3bb mov      edx, r13d
00000001405bc3be mov      dword ptr [rbp + 0x30], eax
00000001405bc3c1 mov      rax, qword ptr [rdi + 0x18]
00000001405bc3c5 mov      rcx, qword ptr [rdi + 8]
00000001405bc3c9 mov      rax, qword ptr [rax + 0x118]
00000001405bc3d0 call     qword ptr [rip + 0xc7f22]
00000001405bc3d6 mov      rax, qword ptr [rsi + 0x28]
00000001405bc3da mov      edx, ebx
00000001405bc3dc mov      r8d, dword ptr [rbp + 0x30]
00000001405bc3e0 mov      rcx, rdi
00000001405bc3e3 call     qword ptr [rip + 0xc7f0f]
00000001405bc3e9 mov      rax, qword ptr [rsi + 0x10]
00000001405bc3ed mov      r14d, 0x9d04
00000001405bc3f3 mov      edx, r14d
00000001405bc3f6 mov      rcx, rdi
00000001405bc3f9 call     qword ptr [rip + 0xc7ef9]
00000001405bc3ff mov      rcx, qword ptr [rdi + 8]
00000001405bc403 lea      r8, [rip + 0xc3636]
00000001405bc40a movzx    ebx, ax
00000001405bc40d mov      r9d, 0x18609d04
00000001405bc413 mov      eax, 0xfeff
00000001405bc418 mov      edx, r13d
00000001405bc41b and      bx, ax
00000001405bc41e mov      rax, qword ptr [rdi + 0x18]
00000001405bc422 mov      rax, qword ptr [rax + 0x118]
00000001405bc429 call     qword ptr [rip + 0xc7ec9]
00000001405bc42f mov      rax, qword ptr [rsi + 0x18]
00000001405bc433 movzx    r8d, bx
00000001405bc437 mov      edx, r14d
00000001405bc43a mov      rcx, rdi
00000001405bc43d call     qword ptr [rip + 0xc7eb5]
00000001405bc443 mov      rax, qword ptr [rsi + 0x20]
00000001405bc447 lea      ebx, [r14 - 4]
00000001405bc44b mov      edx, ebx
00000001405bc44d mov      rcx, rdi
00000001405bc450 call     qword ptr [rip + 0xc7ea2]
00000001405bc456 mov      r9d, 0x18609d00
00000001405bc45c lea      r8, [rip + 0xc372d]
00000001405bc463 btr      eax, 0x14
00000001405bc467 mov      edx, r13d
00000001405bc46a bts      eax, 0x15
00000001405bc46e mov      dword ptr [rbp + 0x30], eax
00000001405bc471 mov      rax, qword ptr [rdi + 0x18]
00000001405bc475 mov      rcx, qword ptr [rdi + 8]
00000001405bc479 mov      rax, qword ptr [rax + 0x118]
00000001405bc480 call     qword ptr [rip + 0xc7e72]
00000001405bc486 mov      rax, qword ptr [rsi + 0x28]
00000001405bc48a mov      edx, ebx
00000001405bc48c mov      r8d, dword ptr [rbp + 0x30]
00000001405bc490 mov      rcx, rdi
00000001405bc493 call     qword ptr [rip + 0xc7e5f]
00000001405bc499 mov      rax, qword ptr [rdi + 0x18]
00000001405bc49d lea      r8, [rip + 0xc371c]
00000001405bc4a4 mov      rcx, qword ptr [rdi + 8]
00000001405bc4a8 mov      edx, r13d
00000001405bc4ab mov      rax, qword ptr [rax + 0x118]
00000001405bc4b2 call     qword ptr [rip + 0xc7e40]
00000001405bc4b8 lea      rdx, [rip + 0x716489]
00000001405bc4bf jmp      0x1405bd0a2
00000001405bc4c4 mov      rax, qword ptr [rdi + 0x18]
00000001405bc4c8 lea      r8, [rip + 0xc3601]
00000001405bc4cf mov      rcx, qword ptr [rdi + 8]
00000001405bc4d3 mov      edx, r13d
00000001405bc4d6 mov      rax, qword ptr [rax + 0x118]
00000001405bc4dd call     qword ptr [rip + 0xc7e15]
00000001405bc4e3 mov      rax, qword ptr [rsi + 0x20]
00000001405bc4e7 mov      r14d, 0xf4
00000001405bc4ed mov      edx, r14d
00000001405bc4f0 mov      rcx, rdi
00000001405bc4f3 call     qword ptr [rip + 0xc7dff]
00000001405bc4f9 mov      r9d, 0x186000f4
00000001405bc4ff lea      r8, [rip + 0xabcca]
00000001405bc506 btr      eax, 0x11
00000001405bc50a mov      edx, r13d
00000001405bc50d bts      eax, 0x10
00000001405bc511 mov      dword ptr [rbp + 0x30], eax
00000001405bc514 mov      rax, qword ptr [rdi + 0x18]
00000001405bc518 mov      rcx, qword ptr [rdi + 8]
00000001405bc51c mov      rax, qword ptr [rax + 0x118]
00000001405bc523 call     qword ptr [rip + 0xc7dcf]
00000001405bc529 mov      rax, qword ptr [rsi + 0x28]
00000001405bc52d mov      edx, r14d
00000001405bc530 mov      r8d, dword ptr [rbp + 0x30]
00000001405bc534 mov      rcx, rdi
00000001405bc537 call     qword ptr [rip + 0xc7dbb]
00000001405bc53d mov      rax, qword ptr [rsi + 0x20]
00000001405bc541 mov      ebx, 0x58
00000001405bc546 mov      edx, ebx
00000001405bc548 mov      rcx, rdi
00000001405bc54b call     qword ptr [rip + 0xc7da7]
00000001405bc551 mov      r9d, 0x18600058
00000001405bc557 lea      r8, [rip + 0xb0f32]
00000001405bc55e and      eax, 0xffffff8b
00000001405bc561 mov      edx, r13d
00000001405bc564 or       eax, 0x8b
00000001405bc569 mov      dword ptr [rbp + 0x30], eax
00000001405bc56c mov      rax, qword ptr [rdi + 0x18]
00000001405bc570 mov      rcx, qword ptr [rdi + 8]
00000001405bc574 mov      rax, qword ptr [rax + 0x118]
00000001405bc57b call     qword ptr [rip + 0xc7d77]
00000001405bc581 mov      eax, dword ptr [rbp + 0x30]
00000001405bc584 lea      r8, [rip + 0xc3485]
00000001405bc58b and      eax, 0xff8bffff
00000001405bc590 mov      r9d, 0x18600058
00000001405bc596 or       eax, 0x8b0000
00000001405bc59b mov      edx, r13d
00000001405bc59e mov      dword ptr [rbp + 0x30], eax
00000001405bc5a1 mov      rax, qword ptr [rdi + 0x18]
00000001405bc5a5 mov      rcx, qword ptr [rdi + 8]
00000001405bc5a9 mov      rax, qword ptr [rax + 0x118]
00000001405bc5b0 call     qword ptr [rip + 0xc7d42]
00000001405bc5b6 mov      rax, qword ptr [rsi + 0x28]
00000001405bc5ba mov      edx, ebx
00000001405bc5bc mov      r8d, dword ptr [rbp + 0x30]
00000001405bc5c0 mov      rcx, rdi
00000001405bc5c3 call     qword ptr [rip + 0xc7d2f]
00000001405bc5c9 mov      rax, qword ptr [rsi + 0x10]
00000001405bc5cd mov      r14d, 0x9d04
00000001405bc5d3 mov      edx, r14d
00000001405bc5d6 mov      rcx, rdi
00000001405bc5d9 call     qword ptr [rip + 0xc7d19]
00000001405bc5df mov      rcx, qword ptr [rdi + 8]
00000001405bc5e3 lea      r8, [rip + 0xc3456]
00000001405bc5ea movzx    ebx, ax
00000001405bc5ed mov      r9d, 0x18609d04
00000001405bc5f3 mov      eax, 0xfeff
00000001405bc5f8 mov      edx, r13d
00000001405bc5fb and      bx, ax
00000001405bc5fe mov      rax, qword ptr [rdi + 0x18]
00000001405bc602 mov      rax, qword ptr [rax + 0x118]
00000001405bc609 call     qword ptr [rip + 0xc7ce9]
00000001405bc60f mov      rax, qword ptr [rsi + 0x18]
00000001405bc613 movzx    r8d, bx
00000001405bc617 mov      edx, r14d
00000001405bc61a mov      rcx, rdi
00000001405bc61d call     qword ptr [rip + 0xc7cd5]
00000001405bc623 mov      rax, qword ptr [rsi + 0x20]
00000001405bc627 lea      ebx, [r14 - 4]
00000001405bc62b mov      edx, ebx
00000001405bc62d mov      rcx, rdi
00000001405bc630 call     qword ptr [rip + 0xc7cc2]
00000001405bc636 mov      r9d, 0x18609d00
00000001405bc63c lea      r8, [rip + 0xc34bd]
00000001405bc643 btr      eax, 0x15
00000001405bc647 mov      edx, r13d
00000001405bc64a bts      eax, 0x14
00000001405bc64e mov      dword ptr [rbp + 0x30], eax
00000001405bc651 mov      rax, qword ptr [rdi + 0x18]
00000001405bc655 mov      rcx, qword ptr [rdi + 8]
00000001405bc659 mov      rax, qword ptr [rax + 0x118]
00000001405bc660 call     qword ptr [rip + 0xc7c92]
00000001405bc666 mov      rax, qword ptr [rsi + 0x28]
00000001405bc66a mov      edx, ebx
00000001405bc66c mov      r8d, dword ptr [rbp + 0x30]
00000001405bc670 mov      rcx, rdi
00000001405bc673 call     qword ptr [rip + 0xc7c7f]
00000001405bc679 mov      rax, qword ptr [rdi + 0x18]
00000001405bc67d lea      r8, [rip + 0xc34ac]
00000001405bc684 mov      rcx, qword ptr [rdi + 8]
00000001405bc688 mov      edx, r13d
00000001405bc68b mov      rax, qword ptr [rax + 0x118]
00000001405bc692 call     qword ptr [rip + 0xc7c60]
00000001405bc698 lea      rdx, [rip + 0x716299]
00000001405bc69f jmp      0x1405bd0a2
00000001405bc6a4 mov      rax, qword ptr [rdi + 0x18]
00000001405bc6a8 lea      r8, [rip + 0xc3331]
00000001405bc6af mov      rcx, qword ptr [rdi + 8]
00000001405bc6b3 mov      edx, r13d
00000001405bc6b6 mov      rax, qword ptr [rax + 0x118]
00000001405bc6bd call     qword ptr [rip + 0xc7c35]
00000001405bc6c3 mov      rax, qword ptr [rsi + 0x20]
00000001405bc6c7 mov      r14d, 0xf4
00000001405bc6cd mov      edx, r14d
00000001405bc6d0 mov      rcx, rdi
00000001405bc6d3 call     qword ptr [rip + 0xc7c1f]
00000001405bc6d9 mov      r9d, 0x186000f4
00000001405bc6df lea      r8, [rip + 0xabaea]
00000001405bc6e6 btr      eax, 0x11
00000001405bc6ea mov      edx, r13d
00000001405bc6ed bts      eax, 0x10
00000001405bc6f1 mov      dword ptr [rbp + 0x30], eax
00000001405bc6f4 mov      rax, qword ptr [rdi + 0x18]
00000001405bc6f8 mov      rcx, qword ptr [rdi + 8]
00000001405bc6fc mov      rax, qword ptr [rax + 0x118]
00000001405bc703 call     qword ptr [rip + 0xc7bef]
00000001405bc709 mov      rax, qword ptr [rsi + 0x28]
00000001405bc70d mov      edx, r14d
00000001405bc710 mov      r8d, dword ptr [rbp + 0x30]
00000001405bc714 mov      rcx, rdi
00000001405bc717 call     qword ptr [rip + 0xc7bdb]
00000001405bc71d mov      rax, qword ptr [rsi + 0x20]
00000001405bc721 mov      ebx, 0x58
00000001405bc726 mov      edx, ebx
00000001405bc728 mov      rcx, rdi
00000001405bc72b call     qword ptr [rip + 0xc7bc7]
00000001405bc731 mov      r9d, 0x18600058
00000001405bc737 lea      r8, [rip + 0xb0d52]
00000001405bc73e and      eax, 0xffffff8b
00000001405bc741 mov      edx, r13d
00000001405bc744 or       eax, 0x8b
00000001405bc749 mov      dword ptr [rbp + 0x30], eax
00000001405bc74c mov      rax, qword ptr [rdi + 0x18]
00000001405bc750 mov      rcx, qword ptr [rdi + 8]
00000001405bc754 mov      rax, qword ptr [rax + 0x118]
00000001405bc75b call     qword ptr [rip + 0xc7b97]
00000001405bc761 mov      eax, dword ptr [rbp + 0x30]
00000001405bc764 lea      r8, [rip + 0xc32a5]
00000001405bc76b and      eax, 0xff8bffff
00000001405bc770 mov      r9d, 0x18600058
00000001405bc776 or       eax, 0x8b0000
00000001405bc77b mov      edx, r13d
00000001405bc77e mov      dword ptr [rbp + 0x30], eax
00000001405bc781 mov      rax, qword ptr [rdi + 0x18]
00000001405bc785 mov      rcx, qword ptr [rdi + 8]
00000001405bc789 mov      rax, qword ptr [rax + 0x118]
00000001405bc790 call     qword ptr [rip + 0xc7b62]
00000001405bc796 mov      rax, qword ptr [rsi + 0x28]
00000001405bc79a mov      edx, ebx
00000001405bc79c mov      r8d, dword ptr [rbp + 0x30]
00000001405bc7a0 mov      rcx, rdi
00000001405bc7a3 call     qword ptr [rip + 0xc7b4f]
00000001405bc7a9 mov      rax, qword ptr [rsi + 0x10]
00000001405bc7ad mov      r14d, 0x9d04
00000001405bc7b3 mov      edx, r14d
00000001405bc7b6 mov      rcx, rdi
00000001405bc7b9 call     qword ptr [rip + 0xc7b39]
00000001405bc7bf mov      rcx, qword ptr [rdi + 8]
00000001405bc7c3 lea      r8, [rip + 0xc3276]
00000001405bc7ca movzx    ebx, ax
00000001405bc7cd mov      r9d, 0x18609d04
00000001405bc7d3 mov      eax, 0xfeff
00000001405bc7d8 mov      edx, r13d
00000001405bc7db and      bx, ax
00000001405bc7de mov      rax, qword ptr [rdi + 0x18]
00000001405bc7e2 mov      rax, qword ptr [rax + 0x118]
00000001405bc7e9 call     qword ptr [rip + 0xc7b09]
00000001405bc7ef mov      rax, qword ptr [rsi + 0x18]
00000001405bc7f3 movzx    r8d, bx
00000001405bc7f7 mov      edx, r14d
00000001405bc7fa mov      rcx, rdi
00000001405bc7fd call     qword ptr [rip + 0xc7af5]
00000001405bc803 mov      rax, qword ptr [rsi + 0x20]
00000001405bc807 lea      ebx, [r14 - 4]
00000001405bc80b mov      edx, ebx
00000001405bc80d mov      rcx, rdi
00000001405bc810 call     qword ptr [rip + 0xc7ae2]
00000001405bc816 mov      r9d, 0x18609d00
00000001405bc81c lea      r8, [rip + 0xc324d]
00000001405bc823 and      eax, 0xffcfffff
00000001405bc828 mov      edx, r13d
00000001405bc82b mov      dword ptr [rbp + 0x30], eax
00000001405bc82e mov      rax, qword ptr [rdi + 0x18]
00000001405bc832 mov      rcx, qword ptr [rdi + 8]
00000001405bc836 mov      rax, qword ptr [rax + 0x118]
00000001405bc83d call     qword ptr [rip + 0xc7ab5]
00000001405bc843 mov      rax, qword ptr [rsi + 0x28]
00000001405bc847 mov      edx, ebx
00000001405bc849 mov      r8d, dword ptr [rbp + 0x30]
00000001405bc84d mov      rcx, rdi
00000001405bc850 call     qword ptr [rip + 0xc7aa2]
00000001405bc856 mov      rax, qword ptr [rdi + 0x18]
00000001405bc85a lea      r8, [rip + 0xc323f]
00000001405bc861 mov      rcx, qword ptr [rdi + 8]
00000001405bc865 mov      edx, r13d
00000001405bc868 mov      rax, qword ptr [rax + 0x118]
00000001405bc86f call     qword ptr [rip + 0xc7a83]
00000001405bc875 lea      rdx, [rip + 0x7160ac]
00000001405bc87c jmp      0x1405bd0a2
00000001405bc881 mov      rax, qword ptr [rdi + 0x18]
00000001405bc885 lea      r8, [rip + 0xc34b4]
00000001405bc88c mov      rcx, qword ptr [rdi + 8]
00000001405bc890 mov      edx, r13d
00000001405bc893 mov      rax, qword ptr [rax + 0x118]
00000001405bc89a call     qword ptr [rip + 0xc7a58]
00000001405bc8a0 mov      rax, qword ptr [rsi + 0x20]
00000001405bc8a4 mov      r14d, 0xf4
00000001405bc8aa mov      edx, r14d
00000001405bc8ad mov      rcx, rdi
00000001405bc8b0 call     qword ptr [rip + 0xc7a42]
00000001405bc8b6 mov      r9d, 0x186000f4
00000001405bc8bc lea      r8, [rip + 0xab90d]
00000001405bc8c3 btr      eax, 0x11
00000001405bc8c7 mov      edx, r13d
00000001405bc8ca bts      eax, 0x10
00000001405bc8ce mov      dword ptr [rbp + 0x30], eax
00000001405bc8d1 mov      rax, qword ptr [rdi + 0x18]
00000001405bc8d5 mov      rcx, qword ptr [rdi + 8]
00000001405bc8d9 mov      rax, qword ptr [rax + 0x118]
00000001405bc8e0 call     qword ptr [rip + 0xc7a12]
00000001405bc8e6 mov      rax, qword ptr [rsi + 0x28]
00000001405bc8ea mov      edx, r14d
00000001405bc8ed mov      r8d, dword ptr [rbp + 0x30]
00000001405bc8f1 mov      rcx, rdi
00000001405bc8f4 call     qword ptr [rip + 0xc79fe]
00000001405bc8fa mov      rax, qword ptr [rsi + 0x20]
00000001405bc8fe mov      ebx, 0x58
00000001405bc903 mov      edx, ebx
00000001405bc905 mov      rcx, rdi
00000001405bc908 call     qword ptr [rip + 0xc79ea]
00000001405bc90e mov      r9d, 0x18600058
00000001405bc914 lea      r8, [rip + 0xb0b75]
00000001405bc91b and      eax, 0xffffff8b
00000001405bc91e mov      edx, r13d
00000001405bc921 or       eax, 0x8b
00000001405bc926 mov      dword ptr [rbp + 0x30], eax
00000001405bc929 mov      rax, qword ptr [rdi + 0x18]
00000001405bc92d mov      rcx, qword ptr [rdi + 8]
00000001405bc931 mov      rax, qword ptr [rax + 0x118]
00000001405bc938 call     qword ptr [rip + 0xc79ba]
00000001405bc93e mov      eax, dword ptr [rbp + 0x30]
00000001405bc941 lea      r8, [rip + 0xc30c8]
00000001405bc948 and      eax, 0xff8bffff
00000001405bc94d mov      r9d, 0x18600058
00000001405bc953 or       eax, 0x8b0000
00000001405bc958 mov      edx, r13d
00000001405bc95b mov      dword ptr [rbp + 0x30], eax
00000001405bc95e mov      rax, qword ptr [rdi + 0x18]
00000001405bc962 mov      rcx, qword ptr [rdi + 8]
00000001405bc966 mov      rax, qword ptr [rax + 0x118]
00000001405bc96d call     qword ptr [rip + 0xc7985]
00000001405bc973 mov      rax, qword ptr [rsi + 0x28]
00000001405bc977 mov      edx, ebx
00000001405bc979 mov      r8d, dword ptr [rbp + 0x30]
00000001405bc97d mov      rcx, rdi
00000001405bc980 call     qword ptr [rip + 0xc7972]
00000001405bc986 mov      rax, qword ptr [rsi + 0x10]
00000001405bc98a mov      r14d, 0x9d04
00000001405bc990 mov      edx, r14d
00000001405bc993 mov      rcx, rdi
00000001405bc996 call     qword ptr [rip + 0xc795c]
00000001405bc99c mov      rcx, qword ptr [rdi + 8]
00000001405bc9a0 lea      r8, [rip + 0xac2b9]
00000001405bc9a7 movzx    ebx, ax
00000001405bc9aa mov      r9d, 0x18609d04
00000001405bc9b0 mov      eax, 0x100
00000001405bc9b5 mov      edx, r13d
00000001405bc9b8 or       bx, ax
00000001405bc9bb mov      rax, qword ptr [rdi + 0x18]
00000001405bc9bf mov      rax, qword ptr [rax + 0x118]
00000001405bc9c6 call     qword ptr [rip + 0xc792c]
00000001405bc9cc mov      rax, qword ptr [rsi + 0x18]
00000001405bc9d0 movzx    r8d, bx
00000001405bc9d4 mov      edx, r14d
00000001405bc9d7 mov      rcx, rdi
00000001405bc9da call     qword ptr [rip + 0xc7918]
00000001405bc9e0 mov      rax, qword ptr [rsi + 0x20]
00000001405bc9e4 lea      ebx, [r14 - 4]
00000001405bc9e8 mov      edx, ebx
00000001405bc9ea mov      rcx, rdi
00000001405bc9ed call     qword ptr [rip + 0xc7905]
00000001405bc9f3 mov      r9d, 0x18609d00
00000001405bc9f9 lea      r8, [rip + 0xc3190]
00000001405bca00 btr      eax, 0x14
00000001405bca04 mov      edx, r13d
00000001405bca07 bts      eax, 0x15
00000001405bca0b mov      dword ptr [rbp + 0x30], eax
00000001405bca0e mov      rax, qword ptr [rdi + 0x18]
00000001405bca12 mov      rcx, qword ptr [rdi + 8]
00000001405bca16 mov      rax, qword ptr [rax + 0x118]
00000001405bca1d call     qword ptr [rip + 0xc78d5]
00000001405bca23 mov      rax, qword ptr [rsi + 0x28]
00000001405bca27 mov      edx, ebx
00000001405bca29 mov      r8d, dword ptr [rbp + 0x30]
00000001405bca2d mov      rcx, rdi
00000001405bca30 call     qword ptr [rip + 0xc78c2]
00000001405bca36 mov      rax, qword ptr [rdi + 0x18]
00000001405bca3a lea      r8, [rip + 0xc332f]
00000001405bca41 mov      rcx, qword ptr [rdi + 8]
00000001405bca45 mov      edx, r13d
00000001405bca48 mov      rax, qword ptr [rax + 0x118]
00000001405bca4f call     qword ptr [rip + 0xc78a3]
00000001405bca55 lea      rdx, [rip + 0x715f2c]
00000001405bca5c jmp      0x1405bd0a2
00000001405bca61 sub      ebx, 0xcd
00000001405bca67 je       0x1405bceca
00000001405bca6d sub      ebx, r13d
00000001405bca70 je       0x1405bcdd3
00000001405bca76 sub      ebx, r13d
00000001405bca79 je       0x1405bccdc
00000001405bca7f sub      ebx, r13d
00000001405bca82 je       0x1405bcbe5
00000001405bca88 cmp      ebx, r13d
00000001405bca8b je       0x1405bcaf5
00000001405bca8d mov      rax, qword ptr [rdi + 0x18]
00000001405bca91 lea      r8, [rip + 0xb0c68]
00000001405bca98 mov      rcx, qword ptr [rdi + 8]
00000001405bca9c mov      edx, r13d
00000001405bca9f mov      rax, qword ptr [rax + 0x118]
00000001405bcaa6 call     qword ptr [rip + 0xc784c]
00000001405bcaac mov      rax, qword ptr [rdi + 0x18]
00000001405bcab0 lea      r8, [rip + 0xb0c69]
00000001405bcab7 mov      rcx, qword ptr [rdi + 8]
00000001405bcabb mov      edx, 2
00000001405bcac0 mov      rax, qword ptr [rax + 0x118]
00000001405bcac7 call     qword ptr [rip + 0xc782b]
00000001405bcacd dec      dword ptr [rdi + 0xef8]
00000001405bcad3 mov      rdx, r12
00000001405bcad6 mov      rax, qword ptr [rdi + 0x18]
00000001405bcada mov      rcx, qword ptr [rdi + 8]
00000001405bcade mov      rax, qword ptr [rax + 0x110]
00000001405bcae5 call     qword ptr [rip + 0xc780d]
00000001405bcaeb mov      eax, 0x18
00000001405bcaf0 jmp      0x1405bd0ff
00000001405bcaf5 mov      rax, qword ptr [rdi + 0x18]
00000001405bcaf9 lea      r8, [rip + 0xb0ba0]
00000001405bcb00 mov      rcx, qword ptr [rdi + 8]
00000001405bcb04 mov      edx, r13d
00000001405bcb07 mov      rax, qword ptr [rax + 0x118]
00000001405bcb0e call     qword ptr [rip + 0xc77e4]
00000001405bcb14 mov      rax, qword ptr [rsi + 0x20]
00000001405bcb18 mov      ebx, 0xe03c
00000001405bcb1d mov      edx, ebx
00000001405bcb1f mov      rcx, rdi
00000001405bcb22 call     qword ptr [rip + 0xc77d0]
00000001405bcb28 mov      r9d, 0x1860e03c
00000001405bcb2e lea      r8, [rip + 0xc32cb]
00000001405bcb35 bts      eax, 0x14
00000001405bcb39 mov      edx, r13d
00000001405bcb3c mov      dword ptr [rbp + 0x30], eax
00000001405bcb3f mov      rax, qword ptr [rdi + 0x18]
00000001405bcb43 mov      rcx, qword ptr [rdi + 8]
00000001405bcb47 mov      rax, qword ptr [rax + 0x118]
00000001405bcb4e call     qword ptr [rip + 0xc77a4]
00000001405bcb54 mov      rax, qword ptr [rsi + 0x28]
00000001405bcb58 mov      edx, ebx
00000001405bcb5a mov      r8d, dword ptr [rbp + 0x30]
00000001405bcb5e mov      rcx, rdi
00000001405bcb61 call     qword ptr [rip + 0xc7791]
00000001405bcb67 mov      rax, qword ptr [rsi + 0x20]
00000001405bcb6b mov      ebx, 0x58
00000001405bcb70 mov      edx, ebx
00000001405bcb72 mov      rcx, rdi
00000001405bcb75 call     qword ptr [rip + 0xc777d]
00000001405bcb7b mov      dword ptr [rbp + 0x30], 0xc000c0
00000001405bcb82 lea      r8, [rip + 0xb09f7]
00000001405bcb89 mov      rax, qword ptr [rdi + 0x18]
00000001405bcb8d mov      r9d, 0x18600058
00000001405bcb93 mov      rcx, qword ptr [rdi + 8]
00000001405bcb97 mov      edx, r13d
00000001405bcb9a mov      rax, qword ptr [rax + 0x118]
00000001405bcba1 call     qword ptr [rip + 0xc7751]
00000001405bcba7 mov      rax, qword ptr [rsi + 0x28]
00000001405bcbab mov      edx, ebx
00000001405bcbad mov      r8d, dword ptr [rbp + 0x30]
00000001405bcbb1 mov      rcx, rdi
00000001405bcbb4 call     qword ptr [rip + 0xc773e]
00000001405bcbba mov      rax, qword ptr [rdi + 0x18]
00000001405bcbbe lea      r8, [rip + 0xb0b0b]
00000001405bcbc5 mov      rcx, qword ptr [rdi + 8]
00000001405bcbc9 mov      edx, r13d
00000001405bcbcc mov      rax, qword ptr [rax + 0x118]
00000001405bcbd3 call     qword ptr [rip + 0xc771f]
00000001405bcbd9 lea      rdx, [rip + 0x715df8]
00000001405bcbe0 jmp      0x1405bd0a2
00000001405bcbe5 mov      rax, qword ptr [rdi + 0x18]
00000001405bcbe9 lea      r8, [rip + 0xb0a50]
00000001405bcbf0 mov      rcx, qword ptr [rdi + 8]
00000001405bcbf4 mov      edx, r13d
00000001405bcbf7 mov      rax, qword ptr [rax + 0x118]
00000001405bcbfe call     qword ptr [rip + 0xc76f4]
00000001405bcc04 mov      rax, qword ptr [rsi + 0x20]
00000001405bcc08 mov      r14d, 0xf4
00000001405bcc0e mov      edx, r14d
00000001405bcc11 mov      rcx, rdi
00000001405bcc14 call     qword ptr [rip + 0xc76de]
00000001405bcc1a mov      r9d, 0x186000f4
00000001405bcc20 lea      r8, [rip + 0xab5a9]
00000001405bcc27 btr      eax, 0x11
00000001405bcc2b mov      edx, r13d
00000001405bcc2e bts      eax, 0x10
00000001405bcc32 mov      dword ptr [rbp + 0x30], eax
00000001405bcc35 mov      rax, qword ptr [rdi + 0x18]
00000001405bcc39 mov      rcx, qword ptr [rdi + 8]
00000001405bcc3d mov      rax, qword ptr [rax + 0x118]
00000001405bcc44 call     qword ptr [rip + 0xc76ae]
00000001405bcc4a mov      rax, qword ptr [rsi + 0x28]
00000001405bcc4e mov      edx, r14d
00000001405bcc51 mov      r8d, dword ptr [rbp + 0x30]
00000001405bcc55 mov      rcx, rdi
00000001405bcc58 call     qword ptr [rip + 0xc769a]
00000001405bcc5e mov      rax, qword ptr [rsi + 0x20]
00000001405bcc62 mov      ebx, 0x58
00000001405bcc67 mov      edx, ebx
00000001405bcc69 mov      rcx, rdi
00000001405bcc6c call     qword ptr [rip + 0xc7686]
00000001405bcc72 mov      dword ptr [rbp + 0x30], 0xc000c0
00000001405bcc79 lea      r8, [rip + 0xb0900]
00000001405bcc80 mov      rax, qword ptr [rdi + 0x18]
00000001405bcc84 mov      r9d, 0x18600058
00000001405bcc8a mov      rcx, qword ptr [rdi + 8]
00000001405bcc8e mov      edx, r13d
00000001405bcc91 mov      rax, qword ptr [rax + 0x118]
00000001405bcc98 call     qword ptr [rip + 0xc765a]
00000001405bcc9e mov      rax, qword ptr [rsi + 0x28]
00000001405bcca2 mov      edx, ebx
00000001405bcca4 mov      r8d, dword ptr [rbp + 0x30]
00000001405bcca8 mov      rcx, rdi
00000001405bccab call     qword ptr [rip + 0xc7647]
00000001405bccb1 mov      rax, qword ptr [rdi + 0x18]
00000001405bccb5 lea      r8, [rip + 0xb09b4]
00000001405bccbc mov      rcx, qword ptr [rdi + 8]
00000001405bccc0 mov      edx, r13d
00000001405bccc3 mov      rax, qword ptr [rax + 0x118]
00000001405bccca call     qword ptr [rip + 0xc7628]
00000001405bccd0 lea      rdx, [rip + 0x715cf1]
00000001405bccd7 jmp      0x1405bd0a2
00000001405bccdc mov      rax, qword ptr [rdi + 0x18]
00000001405bcce0 lea      r8, [rip + 0xb08f9]
00000001405bcce7 mov      rcx, qword ptr [rdi + 8]
00000001405bcceb mov      edx, r13d
00000001405bccee mov      rax, qword ptr [rax + 0x118]
00000001405bccf5 call     qword ptr [rip + 0xc75fd]
00000001405bccfb mov      rax, qword ptr [rsi + 0x20]
00000001405bccff mov      r14d, 0xf4
00000001405bcd05 mov      edx, r14d
00000001405bcd08 mov      rcx, rdi
00000001405bcd0b call     qword ptr [rip + 0xc75e7]
00000001405bcd11 mov      r9d, 0x186000f4
00000001405bcd17 lea      r8, [rip + 0xab4b2]
00000001405bcd1e btr      eax, 0x11
00000001405bcd22 mov      edx, r13d
00000001405bcd25 bts      eax, 0x10
00000001405bcd29 mov      dword ptr [rbp + 0x30], eax
00000001405bcd2c mov      rax, qword ptr [rdi + 0x18]
00000001405bcd30 mov      rcx, qword ptr [rdi + 8]
00000001405bcd34 mov      rax, qword ptr [rax + 0x118]
00000001405bcd3b call     qword ptr [rip + 0xc75b7]
00000001405bcd41 mov      rax, qword ptr [rsi + 0x28]
00000001405bcd45 mov      edx, r14d
00000001405bcd48 mov      r8d, dword ptr [rbp + 0x30]
00000001405bcd4c mov      rcx, rdi
00000001405bcd4f call     qword ptr [rip + 0xc75a3]
00000001405bcd55 mov      rax, qword ptr [rsi + 0x20]
00000001405bcd59 mov      ebx, 0x58
00000001405bcd5e mov      edx, ebx
00000001405bcd60 mov      rcx, rdi
00000001405bcd63 call     qword ptr [rip + 0xc758f]
00000001405bcd69 mov      dword ptr [rbp + 0x30], 0xc000c0
00000001405bcd70 lea      r8, [rip + 0xb0809]
00000001405bcd77 mov      rax, qword ptr [rdi + 0x18]
00000001405bcd7b mov      r9d, 0x18600058
00000001405bcd81 mov      rcx, qword ptr [rdi + 8]
00000001405bcd85 mov      edx, r13d
00000001405bcd88 mov      rax, qword ptr [rax + 0x118]
00000001405bcd8f call     qword ptr [rip + 0xc7563]
00000001405bcd95 mov      rax, qword ptr [rsi + 0x28]
00000001405bcd99 mov      edx, ebx
00000001405bcd9b mov      r8d, dword ptr [rbp + 0x30]
00000001405bcd9f mov      rcx, rdi
00000001405bcda2 call     qword ptr [rip + 0xc7550]
00000001405bcda8 mov      rax, qword ptr [rdi + 0x18]
00000001405bcdac lea      r8, [rip + 0xb085d]
00000001405bcdb3 mov      rcx, qword ptr [rdi + 8]
00000001405bcdb7 mov      edx, r13d
00000001405bcdba mov      rax, qword ptr [rax + 0x118]
00000001405bcdc1 call     qword ptr [rip + 0xc7531]
00000001405bcdc7 lea      rdx, [rip + 0x715bea]
00000001405bcdce jmp      0x1405bd0a2
00000001405bcdd3 mov      rax, qword ptr [rdi + 0x18]
00000001405bcdd7 lea      r8, [rip + 0xb0772]
00000001405bcdde mov      rcx, qword ptr [rdi + 8]
00000001405bcde2 mov      edx, r13d
00000001405bcde5 mov      rax, qword ptr [rax + 0x118]
00000001405bcdec call     qword ptr [rip + 0xc7506]
00000001405bcdf2 mov      rax, qword ptr [rsi + 0x20]
00000001405bcdf6 mov      r14d, 0xf4
00000001405bcdfc mov      edx, r14d
00000001405bcdff mov      rcx, rdi
00000001405bce02 call     qword ptr [rip + 0xc74f0]
00000001405bce08 mov      r9d, 0x186000f4
00000001405bce0e lea      r8, [rip + 0xab3bb]
00000001405bce15 btr      eax, 0x11
00000001405bce19 mov      edx, r13d
00000001405bce1c bts      eax, 0x10
00000001405bce20 mov      dword ptr [rbp + 0x30], eax
00000001405bce23 mov      rax, qword ptr [rdi + 0x18]
00000001405bce27 mov      rcx, qword ptr [rdi + 8]
00000001405bce2b mov      rax, qword ptr [rax + 0x118]
00000001405bce32 call     qword ptr [rip + 0xc74c0]
00000001405bce38 mov      rax, qword ptr [rsi + 0x28]
00000001405bce3c mov      edx, r14d
00000001405bce3f mov      r8d, dword ptr [rbp + 0x30]
00000001405bce43 mov      rcx, rdi
00000001405bce46 call     qword ptr [rip + 0xc74ac]
00000001405bce4c mov      rax, qword ptr [rsi + 0x20]
00000001405bce50 mov      ebx, 0x58
00000001405bce55 mov      edx, ebx
00000001405bce57 mov      rcx, rdi
00000001405bce5a call     qword ptr [rip + 0xc7498]
00000001405bce60 mov      dword ptr [rbp + 0x30], 0xc000c0
00000001405bce67 lea      r8, [rip + 0xb0712]
00000001405bce6e mov      rax, qword ptr [rdi + 0x18]
00000001405bce72 mov      r9d, 0x18600058
00000001405bce78 mov      rcx, qword ptr [rdi + 8]
00000001405bce7c mov      edx, r13d
00000001405bce7f mov      rax, qword ptr [rax + 0x118]
00000001405bce86 call     qword ptr [rip + 0xc746c]
00000001405bce8c mov      rax, qword ptr [rsi + 0x28]
00000001405bce90 mov      edx, ebx
00000001405bce92 mov      r8d, dword ptr [rbp + 0x30]
00000001405bce96 mov      rcx, rdi
00000001405bce99 call     qword ptr [rip + 0xc7459]
00000001405bce9f mov      rax, qword ptr [rdi + 0x18]
00000001405bcea3 lea      r8, [rip + 0xb0706]
00000001405bceaa mov      rcx, qword ptr [rdi + 8]
00000001405bceae mov      edx, r13d
00000001405bceb1 mov      rax, qword ptr [rax + 0x118]
00000001405bceb8 call     qword ptr [rip + 0xc743a]
00000001405bcebe lea      rdx, [rip + 0x715ae3]
00000001405bcec5 jmp      0x1405bd0a2
00000001405bceca mov      rax, qword ptr [rdi + 0x18]
00000001405bcece lea      r8, [rip + 0xc2ecb]
00000001405bced5 mov      rcx, qword ptr [rdi + 8]
00000001405bced9 mov      edx, r13d
00000001405bcedc mov      rax, qword ptr [rax + 0x118]
00000001405bcee3 call     qword ptr [rip + 0xc740f]
00000001405bcee9 mov      rax, qword ptr [rsi + 0x20]
00000001405bceed mov      r14d, 0xf4
00000001405bcef3 mov      edx, r14d
00000001405bcef6 mov      rcx, rdi
00000001405bcef9 call     qword ptr [rip + 0xc73f9]
00000001405bceff mov      r9d, 0x186000f4
00000001405bcf05 lea      r8, [rip + 0xab2c4]
00000001405bcf0c btr      eax, 0x11
00000001405bcf10 mov      edx, r13d
00000001405bcf13 bts      eax, 0x10
00000001405bcf17 mov      dword ptr [rbp + 0x30], eax
00000001405bcf1a mov      rax, qword ptr [rdi + 0x18]
00000001405bcf1e mov      rcx, qword ptr [rdi + 8]
00000001405bcf22 mov      rax, qword ptr [rax + 0x118]
00000001405bcf29 call     qword ptr [rip + 0xc73c9]
00000001405bcf2f mov      rax, qword ptr [rsi + 0x28]
00000001405bcf33 mov      edx, r14d
00000001405bcf36 mov      r8d, dword ptr [rbp + 0x30]
00000001405bcf3a mov      rcx, rdi
00000001405bcf3d call     qword ptr [rip + 0xc73b5]
00000001405bcf43 mov      rax, qword ptr [rsi + 0x20]
00000001405bcf47 mov      ebx, 0x58
00000001405bcf4c mov      edx, ebx
00000001405bcf4e mov      rcx, rdi
00000001405bcf51 call     qword ptr [rip + 0xc73a1]
00000001405bcf57 mov      r9d, 0x18600058
00000001405bcf5d lea      r8, [rip + 0xb052c]
00000001405bcf64 and      eax, 0xffffff8b
00000001405bcf67 mov      edx, r13d
00000001405bcf6a or       eax, 0x8b
00000001405bcf6f mov      dword ptr [rbp + 0x30], eax
00000001405bcf72 mov      rax, qword ptr [rdi + 0x18]
00000001405bcf76 mov      rcx, qword ptr [rdi + 8]
00000001405bcf7a mov      rax, qword ptr [rax + 0x118]
00000001405bcf81 call     qword ptr [rip + 0xc7371]
00000001405bcf87 mov      eax, dword ptr [rbp + 0x30]
00000001405bcf8a lea      r8, [rip + 0xc2a7f]
00000001405bcf91 and      eax, 0xff8bffff
00000001405bcf96 mov      r9d, 0x18600058
00000001405bcf9c or       eax, 0x8b0000
00000001405bcfa1 mov      edx, r13d
00000001405bcfa4 mov      dword ptr [rbp + 0x30], eax
00000001405bcfa7 mov      rax, qword ptr [rdi + 0x18]
00000001405bcfab mov      rcx, qword ptr [rdi + 8]
00000001405bcfaf mov      rax, qword ptr [rax + 0x118]
00000001405bcfb6 call     qword ptr [rip + 0xc733c]
00000001405bcfbc mov      rax, qword ptr [rsi + 0x28]
00000001405bcfc0 mov      edx, ebx
00000001405bcfc2 mov      r8d, dword ptr [rbp + 0x30]
00000001405bcfc6 mov      rcx, rdi
00000001405bcfc9 call     qword ptr [rip + 0xc7329]
00000001405bcfcf mov      rax, qword ptr [rsi + 0x10]
00000001405bcfd3 mov      r14d, 0x9d04
00000001405bcfd9 mov      edx, r14d
00000001405bcfdc mov      rcx, rdi
00000001405bcfdf call     qword ptr [rip + 0xc7313]
00000001405bcfe5 mov      rcx, qword ptr [rdi + 8]
00000001405bcfe9 lea      r8, [rip + 0xabc70]
00000001405bcff0 movzx    ebx, ax
00000001405bcff3 mov      r9d, 0x18609d04
00000001405bcff9 mov      eax, 0x100
00000001405bcffe mov      edx, r13d
00000001405bd001 or       bx, ax
00000001405bd004 mov      rax, qword ptr [rdi + 0x18]
00000001405bd008 mov      rax, qword ptr [rax + 0x118]
00000001405bd00f call     qword ptr [rip + 0xc72e3]
00000001405bd015 mov      rax, qword ptr [rsi + 0x18]
00000001405bd019 movzx    r8d, bx
00000001405bd01d mov      edx, r14d
00000001405bd020 mov      rcx, rdi
00000001405bd023 call     qword ptr [rip + 0xc72cf]
00000001405bd029 mov      rax, qword ptr [rsi + 0x20]
00000001405bd02d lea      ebx, [r14 - 4]
00000001405bd031 mov      edx, ebx
00000001405bd033 mov      rcx, rdi
00000001405bd036 call     qword ptr [rip + 0xc72bc]
00000001405bd03c mov      r9d, 0x18609d00
00000001405bd042 lea      r8, [rip + 0xc2bd7]
00000001405bd049 or       eax, 0x300000
00000001405bd04e mov      edx, r13d
00000001405bd051 mov      dword ptr [rbp + 0x30], eax
00000001405bd054 mov      rax, qword ptr [rdi + 0x18]
00000001405bd058 mov      rcx, qword ptr [rdi + 8]
00000001405bd05c mov      rax, qword ptr [rax + 0x118]
00000001405bd063 call     qword ptr [rip + 0xc728f]
00000001405bd069 mov      rax, qword ptr [rsi + 0x28]
00000001405bd06d mov      edx, ebx
00000001405bd06f mov      r8d, dword ptr [rbp + 0x30]
00000001405bd073 mov      rcx, rdi
00000001405bd076 call     qword ptr [rip + 0xc727c]
00000001405bd07c mov      rax, qword ptr [rdi + 0x18]
00000001405bd080 lea      r8, [rip + 0xc2d49]
00000001405bd087 mov      rcx, qword ptr [rdi + 8]
00000001405bd08b mov      edx, r13d
00000001405bd08e mov      rax, qword ptr [rax + 0x118]
00000001405bd095 call     qword ptr [rip + 0xc725d]
00000001405bd09b lea      rdx, [rip + 0x7158f6]
00000001405bd0a2 xor      r9d, r9d
00000001405bd0a5 mov      byte ptr [rsp + 0x20], 0
00000001405bd0aa xor      r8d, r8d
00000001405bd0ad mov      rcx, rdi
00000001405bd0b0 call     0x14056e2c0
00000001405bd0b5 mov      ebx, eax
00000001405bd0b7 test     eax, eax
00000001405bd0b9 je       0x1405bd0df
00000001405bd0bb mov      rax, qword ptr [rdi + 0x18]
00000001405bd0bf mov      rax, qword ptr [rax + 0x118]
00000001405bd0c6 mov      rcx, qword ptr [rdi + 8]
00000001405bd0ca lea      r8, [rip + 0xab1ef]
00000001405bd0d1 mov      r9d, ebx
00000001405bd0d4 mov      edx, 2
00000001405bd0d9 call     qword ptr [rip + 0xc7219]
00000001405bd0df dec      dword ptr [rdi + 0xef8]
00000001405bd0e5 mov      rdx, r12
00000001405bd0e8 mov      rax, qword ptr [rdi + 0x18]
00000001405bd0ec mov      rcx, qword ptr [rdi + 8]
00000001405bd0f0 mov      rax, qword ptr [rax + 0x110]
00000001405bd0f7 call     qword ptr [rip + 0xc71fb]
00000001405bd0fd mov      eax, ebx
00000001405bd0ff mov      rbx, qword ptr [rsp + 0x68]
00000001405bd104 mov      rsi, qword ptr [rsp + 0x70]
00000001405bd109 mov      rdi, qword ptr [rsp + 0x78]
00000001405bd10e add      rsp, 0x30
00000001405bd112 pop      r15
00000001405bd114 pop      r14
00000001405bd116 pop      r13
00000001405bd118 pop      r12
00000001405bd11a pop      rbp
00000001405bd11b ret      