00000001400c15b4 mov      rax, rsp
00000001400c15b7 mov      qword ptr [rax + 8], rbx
00000001400c15bb mov      qword ptr [rax + 0x10], rbp
00000001400c15bf mov      qword ptr [rax + 0x18], rsi
00000001400c15c3 mov      qword ptr [rax + 0x20], rdi
00000001400c15c7 push     r12
00000001400c15c9 push     r14
00000001400c15cb push     r15
00000001400c15cd sub      rsp, 0x40
00000001400c15d1 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400c15d8 xor      bpl, bpl
00000001400c15db mov      r12, qword ptr [rcx + 0xab230]
00000001400c15e2 mov      rbx, rcx
00000001400c15e5 movzx    r15d, r8w
00000001400c15e9 movzx    r14d, dl
00000001400c15ed mov      rdi, qword ptr [rax]
00000001400c15f0 add      rdi, 0xab008
00000001400c15f7 xor      cl, cl
00000001400c15f9 movzx    edx, cl
00000001400c15fc mov      rax, qword ptr [rdi + rdx*8]
00000001400c1600 test     r14b, r14b
00000001400c1603 je       0x1400c163a
00000001400c1605 test     rax, rax
00000001400c1608 jne      0x1400c1646
00000001400c160a lea      rax, [rbx + 0x548bc0]
00000001400c1611 inc      cl
00000001400c1613 mov      qword ptr [rdi + rdx*8], rax
00000001400c1617 mov      byte ptr [rax], 1
00000001400c161a mov      rax, qword ptr [rbx + 0xaf288]
00000001400c1621 mov      byte ptr [rbx + 0x548bc1], cl
00000001400c1627 mov      word ptr [rbx + 0x548bc2], r15w
00000001400c162f mov      cl, byte ptr [rax + 8]
00000001400c1632 mov      byte ptr [rbx + 0x548bc4], cl
00000001400c1638 jmp      0x1400c1657
00000001400c163a lea      r8, [rbx + 0x548bc0]
00000001400c1641 cmp      rax, r8
00000001400c1644 je       0x1400c164f
00000001400c1646 inc      cl
00000001400c1648 cmp      cl, 4
00000001400c164b jb       0x1400c15f9
00000001400c164d jmp      0x1400c165a
00000001400c164f mov      byte ptr [r8], bpl
00000001400c1652 and      qword ptr [rdi + rdx*8], 0
00000001400c1657 mov      bpl, 1
00000001400c165a xor      sil, sil
00000001400c165d lea      r8, [rip + 0x85e99c]
00000001400c1664 mov      rdx, qword ptr [rdi]
00000001400c1667 test     rdx, rdx
00000001400c166a je       0x1400c16d6
00000001400c166c mov      rcx, qword ptr [rip + 0x85e98d]
00000001400c1673 cmp      rcx, r8
00000001400c1676 je       0x1400c171c
00000001400c167c cmp      byte ptr [rcx + 0x29], 3
00000001400c1680 jb       0x1400c171c
00000001400c1686 test     dword ptr [rcx + 0x2c], 0x100
00000001400c168d je       0x1400c171c
00000001400c1693 movzx    r8d, byte ptr [rdx + 1]
00000001400c1698 movzx    r9d, byte ptr [rdx]
00000001400c169c movzx    eax, word ptr [rdx + 2]
00000001400c16a0 movzx    r10d, byte ptr [rdx + 4]
00000001400c16a5 mov      edx, 0xc8
00000001400c16aa mov      rcx, qword ptr [rcx + 0x18]
00000001400c16ae mov      dword ptr [rsp + 0x38], eax
00000001400c16b2 mov      dword ptr [rsp + 0x30], r8d
00000001400c16b7 lea      r8, [rip + 0x5d1652]
00000001400c16be mov      dword ptr [rsp + 0x28], r9d
00000001400c16c3 lea      r9, [rip + 0x53c486]
00000001400c16ca mov      dword ptr [rsp + 0x20], r10d
00000001400c16cf call     0x14001c710
00000001400c16d4 jmp      0x1400c1715
00000001400c16d6 mov      rcx, qword ptr [rip + 0x85e923]
00000001400c16dd cmp      rcx, r8
00000001400c16e0 je       0x1400c171c
00000001400c16e2 cmp      byte ptr [rcx + 0x29], 4
00000001400c16e6 jb       0x1400c171c
00000001400c16e8 test     dword ptr [rcx + 0x2c], 0x100
00000001400c16ef je       0x1400c171c
00000001400c16f1 mov      rcx, qword ptr [rcx + 0x18]
00000001400c16f5 lea      r9, [rip + 0x53c454]
00000001400c16fc movzx    eax, sil
00000001400c1700 lea      r8, [rip + 0x5d1609]
00000001400c1707 mov      edx, 0xc9
00000001400c170c mov      dword ptr [rsp + 0x20], eax
00000001400c1710 call     0x1400088d8
00000001400c1715 lea      r8, [rip + 0x85e8e4]
00000001400c171c inc      sil
00000001400c171f add      rdi, 8
00000001400c1723 cmp      sil, 4
00000001400c1727 jb       0x1400c1664
00000001400c172d test     bpl, bpl
00000001400c1730 jne      0x1400c1793
00000001400c1732 mov      rcx, qword ptr [rip + 0x85e8c7]
00000001400c1739 cmp      rcx, r8
00000001400c173c je       0x1400c186d
00000001400c1742 cmp      byte ptr [rcx + 0x29], 3
00000001400c1746 jb       0x1400c186d
00000001400c174c test     dword ptr [rcx + 0x2c], 0x100
00000001400c1753 je       0x1400c186d
00000001400c1759 mov      r10, qword ptr [rbx + 0xaf288]
00000001400c1760 lea      r9, [rip + 0x53c409]
00000001400c1767 mov      rcx, qword ptr [rcx + 0x18]
00000001400c176b lea      r8, [rip + 0x5d159e]
00000001400c1772 mov      dword ptr [rsp + 0x30], r15d
00000001400c1777 mov      edx, 0xca
00000001400c177c mov      dword ptr [rsp + 0x28], r14d
00000001400c1781 mov      eax, dword ptr [r10 + 8]
00000001400c1785 mov      dword ptr [rsp + 0x20], eax
00000001400c1789 call     0x14001c670
00000001400c178e jmp      0x1400c186d
00000001400c1793 xor      dil, dil
00000001400c1796 cmp      byte ptr [r12 + 0x250], dil
00000001400c179e jbe      0x1400c186d
00000001400c17a4 lea      rsi, [rbx + 0x544f60]
00000001400c17ab movzx    eax, dil
00000001400c17af imul     rbp, rax, 0x1dc0
00000001400c17b6 mov      rcx, qword ptr [rip + 0x85e843]
00000001400c17bd cmp      rcx, r8
00000001400c17c0 je       0x1400c1816
00000001400c17c2 cmp      byte ptr [rcx + 0x29], 4
00000001400c17c6 jb       0x1400c1816
00000001400c17c8 test     dword ptr [rcx + 0x2c], 0x100
00000001400c17cf je       0x1400c1816
00000001400c17d1 mov      rcx, qword ptr [rcx + 0x18]
00000001400c17d5 lea      rax, [rbx + 0x53f620]
00000001400c17dc add      rax, rbp
00000001400c17df lea      r9, [rip + 0x53c38a]
00000001400c17e6 cmp      dil, 2
00000001400c17ea mov      edx, 0xcb
00000001400c17ef cmove    rax, rsi
00000001400c17f3 mov      rax, qword ptr [rax]
00000001400c17f6 movzx    r8d, byte ptr [rax + 0x19]
00000001400c17fb mov      dword ptr [rsp + 0x30], r8d
00000001400c1800 lea      r8, [rip + 0x5d1509]
00000001400c1807 mov      dword ptr [rsp + 0x28], r15d
00000001400c180c mov      dword ptr [rsp + 0x20], r14d
00000001400c1811 call     0x14001c670
00000001400c1816 mov      rax, qword ptr [rbx + 0xaf3b8]
00000001400c181d lea      rdx, [rbx + 0x53f620]
00000001400c1824 add      rdx, rbp
00000001400c1827 movzx    r9d, r15w
00000001400c182b cmp      dil, 2
00000001400c182f mov      r8b, r14b
00000001400c1832 mov      rcx, qword ptr [rax]
00000001400c1835 cmove    rdx, rsi
00000001400c1839 and      dword ptr [rsp + 0x28], 0
00000001400c183e mov      dword ptr [rsp + 0x20], 1
00000001400c1846 mov      rdx, qword ptr [rdx]
00000001400c1849 mov      rcx, qword ptr [rcx + 0x20708]
00000001400c1850 call     0x1401dc428
00000001400c1855 inc      dil
00000001400c1858 lea      r8, [rip + 0x85e7a1]
00000001400c185f cmp      dil, byte ptr [r12 + 0x250]
00000001400c1867 jb       0x1400c17ab
00000001400c186d mov      rbx, qword ptr [rsp + 0x60]
00000001400c1872 mov      rbp, qword ptr [rsp + 0x68]
00000001400c1877 mov      rsi, qword ptr [rsp + 0x70]
00000001400c187c mov      rdi, qword ptr [rsp + 0x78]
00000001400c1881 add      rsp, 0x40
00000001400c1885 pop      r15
00000001400c1887 pop      r14
00000001400c1889 pop      r12
00000001400c188b ret      