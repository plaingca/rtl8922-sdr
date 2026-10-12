000000014007f6ec test     rcx, rcx
000000014007f6ef je       0x14007ff72
000000014007f6f5 mov      qword ptr [rsp + 8], rbx
000000014007f6fa mov      qword ptr [rsp + 0x10], rsi
000000014007f6ff mov      qword ptr [rsp + 0x18], rdi
000000014007f704 push     r12
000000014007f706 push     r13
000000014007f708 push     r15
000000014007f70a sub      rsp, 0x40
000000014007f70e mov      rax, qword ptr [rcx]
000000014007f711 mov      sil, r8b
000000014007f714 movzx    r15d, r9b
000000014007f718 mov      dil, dl
000000014007f71b mov      r13d, 1
000000014007f721 mov      bl, 2
000000014007f723 mov      r10, qword ptr [rax]
000000014007f726 mov      eax, dword ptr [r10 + 0xded8]
000000014007f72d cmp      eax, 0xf
000000014007f730 je       0x14007f769
000000014007f732 test     dl, dl
000000014007f734 jne      0x14007f740
000000014007f736 cmp      eax, 6
000000014007f739 jne      0x14007f745
000000014007f73b mov      dil, r13b
000000014007f73e jmp      0x14007f74d
000000014007f740 cmp      dl, r13b
000000014007f743 jne      0x14007f74d
000000014007f745 cmp      eax, 5
000000014007f748 jne      0x14007f74d
000000014007f74a mov      dil, bl
000000014007f74d test     r8b, r8b
000000014007f750 jne      0x14007f75c
000000014007f752 cmp      eax, 6
000000014007f755 jne      0x14007f761
000000014007f757 mov      sil, r13b
000000014007f75a jmp      0x14007f769
000000014007f75c cmp      r8b, r13b
000000014007f75f jne      0x14007f769
000000014007f761 cmp      eax, 5
000000014007f764 jne      0x14007f769
000000014007f766 mov      sil, bl
000000014007f769 movzx    edx, byte ptr [rcx + 0xee]
000000014007f770 mov      r9d, 0xf5
000000014007f776 shr      edx, 5
000000014007f779 mov      r12b, 0x10
000000014007f77c mov      r11d, 0xd
000000014007f782 sub      edx, r13d
000000014007f785 je       0x14007f94d
000000014007f78b cmp      edx, r13d
000000014007f78e je       0x14007f79c
000000014007f790 lea      rdx, [r10 + 0xe17e]
000000014007f797 jmp      0x14007fafa
000000014007f79c mov      dword ptr [rcx + 0x89], 0xffff
000000014007f7a6 cmp      byte ptr [rsp + 0x90], bl
000000014007f7ad jne      0x14007f7b8
000000014007f7af mov      byte ptr [rcx + 0x95], 0xf0
000000014007f7b6 jmp      0x14007f7cf
000000014007f7b8 cmp      byte ptr [rsp + 0x90], r13b
000000014007f7c0 mov      eax, 0xfa
000000014007f7c5 cmove    eax, r9d
000000014007f7c9 mov      byte ptr [rcx + 0x95], al
000000014007f7cf lea      rdx, [r10 + 0xe17e]
000000014007f7d6 mov      byte ptr [rcx + 0x96], 0xff
000000014007f7dd mov      byte ptr [rcx + 0x9c], 0xff
000000014007f7e4 cmp      byte ptr [rsp + 0x80], bl
000000014007f7eb jne      0x14007f804
000000014007f7ed mov      byte ptr [rcx + 0x9b], 0xf0
000000014007f7f4 test     byte ptr [rdx], 8
000000014007f7f7 je       0x14007f83a
000000014007f7f9 mov      word ptr [rcx + 0x9d], 0xfff0
000000014007f802 jmp      0x14007f83a
000000014007f804 cmp      byte ptr [rsp + 0x80], r13b
000000014007f80c jne      0x14007f825
000000014007f80e mov      byte ptr [rcx + 0x9b], r9b
000000014007f815 test     byte ptr [rdx], 8
000000014007f818 je       0x14007f83a
000000014007f81a mov      word ptr [rcx + 0x9d], 0xfff5
000000014007f823 jmp      0x14007f83a
000000014007f825 mov      byte ptr [rcx + 0x9b], 0xfa
000000014007f82c test     byte ptr [rdx], 8
000000014007f82f je       0x14007f83a
000000014007f831 mov      word ptr [rcx + 0x9d], 0xfffa
000000014007f83a lea      r9, [rcx + 0xa9]
000000014007f841 mov      r8, r11
000000014007f844 mov      rax, r9
000000014007f847 and      byte ptr [rax], 0xf0
000000014007f84a add      rax, r13
000000014007f84d sub      r8, r13
000000014007f850 jne      0x14007f847
000000014007f852 mov      r8b, byte ptr [r9]
000000014007f855 or       r8b, bl
000000014007f858 cmp      sil, 3
000000014007f85c jne      0x14007f866
000000014007f85e mov      byte ptr [r9], r8b
000000014007f861 jmp      0x14007faf4
000000014007f866 mov      r10b, byte ptr [rcx + 0xaa]
000000014007f86d or       r10b, bl
000000014007f870 mov      byte ptr [rcx + 0xaa], r10b
000000014007f877 cmp      sil, bl
000000014007f87a jne      0x14007f8a9
000000014007f87c mov      byte ptr [r9], r8b
000000014007f87f test     byte ptr [rdx], 4
000000014007f882 je       0x14007f88a
000000014007f884 or       byte ptr [rcx + 0xad], bl
000000014007f88a test     byte ptr [rdx], 8
000000014007f88d je       0x14007f895
000000014007f88f or       byte ptr [rcx + 0xb0], bl
000000014007f895 test     byte ptr [rdx], r12b
000000014007f898 je       0x14007faf4
000000014007f89e or       byte ptr [rcx + 0xb3], bl
000000014007f8a4 jmp      0x14007faf4
000000014007f8a9 or       byte ptr [rcx + 0xab], bl
000000014007f8af mov      byte ptr [r9], r8b
000000014007f8b2 cmp      sil, r13b
000000014007f8b5 jne      0x14007f8f3
000000014007f8b7 test     byte ptr [rdx], 4
000000014007f8ba je       0x14007f8c8
000000014007f8bc or       byte ptr [rcx + 0xad], bl
000000014007f8c2 or       byte ptr [rcx + 0xae], bl
000000014007f8c8 test     byte ptr [rdx], 8
000000014007f8cb je       0x14007f8d9
000000014007f8cd or       byte ptr [rcx + 0xb0], bl
000000014007f8d3 or       byte ptr [rcx + 0xb1], bl
000000014007f8d9 test     byte ptr [rdx], r12b
000000014007f8dc je       0x14007faf4
000000014007f8e2 or       byte ptr [rcx + 0xb3], bl
000000014007f8e8 or       byte ptr [rcx + 0xb4], bl
000000014007f8ee jmp      0x14007faf4
000000014007f8f3 or       byte ptr [rcx + 0xac], bl
000000014007f8f9 test     byte ptr [rdx], 4
000000014007f8fc je       0x14007f910
000000014007f8fe or       byte ptr [rcx + 0xad], bl
000000014007f904 or       byte ptr [rcx + 0xae], bl
000000014007f90a or       byte ptr [rcx + 0xaf], bl
000000014007f910 test     byte ptr [rdx], 8
000000014007f913 je       0x14007f927
000000014007f915 or       byte ptr [rcx + 0xb0], bl
000000014007f91b or       byte ptr [rcx + 0xb1], bl
000000014007f921 or       byte ptr [rcx + 0xb2], bl
000000014007f927 mov      r9d, 0xf5
000000014007f92d test     byte ptr [rdx], r12b
000000014007f930 je       0x14007fafa
000000014007f936 or       byte ptr [rcx + 0xb3], bl
000000014007f93c or       byte ptr [rcx + 0xb4], bl
000000014007f942 or       byte ptr [rcx + 0xb5], bl
000000014007f948 jmp      0x14007fafa
000000014007f94d mov      dword ptr [rcx + 0x89], 0xff
000000014007f957 cmp      byte ptr [rsp + 0x90], bl
000000014007f95e jne      0x14007f969
000000014007f960 mov      byte ptr [rcx + 0x95], 0xfc
000000014007f967 jmp      0x14007f97c
000000014007f969 cmp      byte ptr [rsp + 0x90], r13b
000000014007f971 setne    al
000000014007f974 add      al, 0xfd
000000014007f976 mov      byte ptr [rcx + 0x95], al
000000014007f97c lea      rdx, [r10 + 0xe17e]
000000014007f983 mov      byte ptr [rcx + 0x96], 0xff
000000014007f98a mov      byte ptr [rcx + 0x9c], 0xff
000000014007f991 cmp      byte ptr [rsp + 0x80], bl
000000014007f998 jne      0x14007f9b1
000000014007f99a mov      byte ptr [rcx + 0x9b], 0xfc
000000014007f9a1 test     byte ptr [rdx], 8
000000014007f9a4 je       0x14007f9e7
000000014007f9a6 mov      word ptr [rcx + 0x9d], 0xfffc
000000014007f9af jmp      0x14007f9e7
000000014007f9b1 cmp      byte ptr [rsp + 0x80], r13b
000000014007f9b9 jne      0x14007f9d2
000000014007f9bb mov      byte ptr [rcx + 0x9b], 0xfd
000000014007f9c2 test     byte ptr [rdx], 8
000000014007f9c5 je       0x14007f9e7
000000014007f9c7 mov      word ptr [rcx + 0x9d], 0xfffd
000000014007f9d0 jmp      0x14007f9e7
000000014007f9d2 mov      byte ptr [rcx + 0x9b], 0xfe
000000014007f9d9 test     byte ptr [rdx], 8
000000014007f9dc je       0x14007f9e7
000000014007f9de mov      word ptr [rcx + 0x9d], 0xfffe
000000014007f9e7 lea      r9, [rcx + 0xa9]
000000014007f9ee mov      r8, r11
000000014007f9f1 mov      rax, r9
000000014007f9f4 and      byte ptr [rax], 0xf0
000000014007f9f7 add      rax, r13
000000014007f9fa sub      r8, r13
000000014007f9fd jne      0x14007f9f4
000000014007f9ff mov      r8b, byte ptr [r9]
000000014007fa02 or       r8b, r13b
000000014007fa05 cmp      sil, 3
000000014007fa09 je       0x14007f85e
000000014007fa0f mov      r10b, byte ptr [rcx + 0xaa]
000000014007fa16 or       r10b, r13b
000000014007fa19 mov      byte ptr [rcx + 0xaa], r10b
000000014007fa20 cmp      sil, bl
000000014007fa23 jne      0x14007fa55
000000014007fa25 mov      byte ptr [r9], r8b
000000014007fa28 test     byte ptr [rdx], 4
000000014007fa2b je       0x14007fa34
000000014007fa2d or       byte ptr [rcx + 0xad], r13b
000000014007fa34 test     byte ptr [rdx], 8
000000014007fa37 je       0x14007fa40
000000014007fa39 or       byte ptr [rcx + 0xb0], r13b
000000014007fa40 test     byte ptr [rdx], r12b
000000014007fa43 je       0x14007faf4
000000014007fa49 or       byte ptr [rcx + 0xb3], r13b
000000014007fa50 jmp      0x14007faf4
000000014007fa55 or       byte ptr [rcx + 0xab], r13b
000000014007fa5c mov      byte ptr [r9], r8b
000000014007fa5f cmp      sil, r13b
000000014007fa62 jne      0x14007fa9f
000000014007fa64 test     byte ptr [rdx], 4
000000014007fa67 je       0x14007fa77
000000014007fa69 or       byte ptr [rcx + 0xad], r13b
000000014007fa70 or       byte ptr [rcx + 0xae], r13b
000000014007fa77 test     byte ptr [rdx], 8
000000014007fa7a je       0x14007fa8a
000000014007fa7c or       byte ptr [rcx + 0xb0], r13b
000000014007fa83 or       byte ptr [rcx + 0xb1], r13b
000000014007fa8a test     byte ptr [rdx], r12b
000000014007fa8d je       0x14007faf4
000000014007fa8f or       byte ptr [rcx + 0xb3], r13b
000000014007fa96 or       byte ptr [rcx + 0xb4], r13b
000000014007fa9d jmp      0x14007faf4
000000014007fa9f or       byte ptr [rcx + 0xac], r13b
000000014007faa6 test     byte ptr [rdx], 4
000000014007faa9 je       0x14007fac0
000000014007faab or       byte ptr [rcx + 0xad], r13b
000000014007fab2 or       byte ptr [rcx + 0xae], r13b
000000014007fab9 or       byte ptr [rcx + 0xaf], r13b
000000014007fac0 test     byte ptr [rdx], 8
000000014007fac3 je       0x14007fada
000000014007fac5 or       byte ptr [rcx + 0xb0], r13b
000000014007facc or       byte ptr [rcx + 0xb1], r13b
000000014007fad3 or       byte ptr [rcx + 0xb2], r13b
000000014007fada test     byte ptr [rdx], r12b
000000014007fadd je       0x14007faf4
000000014007fadf or       byte ptr [rcx + 0xb3], r13b
000000014007fae6 or       byte ptr [rcx + 0xb4], r13b
000000014007faed or       byte ptr [rcx + 0xb5], r13b
000000014007faf4 mov      r9d, 0xf5
000000014007fafa movzx    r8d, byte ptr [rcx + 0xee]
000000014007fb02 movzx    ebx, byte ptr [rsp + 0x88]
000000014007fb0a shr      r8d, 2
000000014007fb0e and      r8d, 7
000000014007fb12 sub      r8d, r13d
000000014007fb15 je       0x14007fcde
000000014007fb1b cmp      r8d, r13d
000000014007fb1e jne      0x14007fe6f
000000014007fb24 mov      r8b, 2
000000014007fb27 mov      dword ptr [rcx + 0x8d], 0xffff
000000014007fb31 cmp      bl, r8b
000000014007fb34 jne      0x14007fb3f
000000014007fb36 mov      byte ptr [rcx + 0x97], 0xf0
000000014007fb3d jmp      0x14007fb51
000000014007fb3f cmp      bl, r13b
000000014007fb42 mov      eax, 0xfa
000000014007fb47 cmove    eax, r9d
000000014007fb4b mov      byte ptr [rcx + 0x97], al
000000014007fb51 mov      byte ptr [rcx + 0x98], 0xff
000000014007fb58 mov      byte ptr [rcx + 0xa2], 0xff
000000014007fb5f cmp      r15b, r8b
000000014007fb62 jne      0x14007fb7b
000000014007fb64 mov      byte ptr [rcx + 0xa1], 0xf0
000000014007fb6b test     byte ptr [rdx], 8
000000014007fb6e je       0x14007fbac
000000014007fb70 mov      word ptr [rcx + 0xa3], 0xfff0
000000014007fb79 jmp      0x14007fbac
000000014007fb7b cmp      r15b, r13b
000000014007fb7e jne      0x14007fb97
000000014007fb80 mov      byte ptr [rcx + 0xa1], r9b
000000014007fb87 test     byte ptr [rdx], 8
000000014007fb8a je       0x14007fbac
000000014007fb8c mov      word ptr [rcx + 0xa3], 0xfff5
000000014007fb95 jmp      0x14007fbac
000000014007fb97 mov      byte ptr [rcx + 0xa1], 0xfa
000000014007fb9e test     byte ptr [rdx], 8
000000014007fba1 je       0x14007fbac
000000014007fba3 mov      word ptr [rcx + 0xa3], 0xfffa
000000014007fbac lea      r10, [rcx + 0xa9]
000000014007fbb3 mov      rax, r10
000000014007fbb6 and      byte ptr [rax], 0xf
000000014007fbb9 add      rax, r13
000000014007fbbc sub      r11, r13
000000014007fbbf jne      0x14007fbb6
000000014007fbc1 mov      r9b, byte ptr [r10]
000000014007fbc4 cmp      dil, 3
000000014007fbc8 jne      0x14007fbd6
000000014007fbca or       r9b, 0x20
000000014007fbce mov      byte ptr [r10], r9b
000000014007fbd1 jmp      0x14007fe6f
000000014007fbd6 mov      r11b, byte ptr [rcx + 0xaa]
000000014007fbdd cmp      dil, r8b
000000014007fbe0 mov      r8b, 0x20
000000014007fbe3 jne      0x14007fc22
000000014007fbe5 or       r9b, r8b
000000014007fbe8 or       r11b, r8b
000000014007fbeb mov      byte ptr [r10], r9b
000000014007fbee mov      byte ptr [rcx + 0xaa], r11b
000000014007fbf5 test     byte ptr [rdx], 4
000000014007fbf8 je       0x14007fc01
000000014007fbfa or       byte ptr [rcx + 0xad], r8b
000000014007fc01 test     byte ptr [rdx], 8
000000014007fc04 je       0x14007fc0d
000000014007fc06 or       byte ptr [rcx + 0xb0], r8b
000000014007fc0d test     byte ptr [rdx], r12b
000000014007fc10 je       0x14007fe6f
000000014007fc16 or       byte ptr [rcx + 0xb3], r8b
000000014007fc1d jmp      0x14007fe6f
000000014007fc22 or       r11b, r8b
000000014007fc25 or       r9b, r8b
000000014007fc28 mov      byte ptr [rcx + 0xaa], r11b
000000014007fc2f or       byte ptr [rcx + 0xab], r8b
000000014007fc36 mov      byte ptr [r10], r9b
000000014007fc39 cmp      dil, r13b
000000014007fc3c jne      0x14007fc80
000000014007fc3e test     byte ptr [rdx], 4
000000014007fc41 je       0x14007fc51
000000014007fc43 or       byte ptr [rcx + 0xad], r8b
000000014007fc4a or       byte ptr [rcx + 0xae], r8b
000000014007fc51 test     byte ptr [rdx], 8
000000014007fc54 je       0x14007fc64
000000014007fc56 or       byte ptr [rcx + 0xb0], r8b
000000014007fc5d or       byte ptr [rcx + 0xb1], r8b
000000014007fc64 test     byte ptr [rdx], r12b
000000014007fc67 je       0x14007fe6f
000000014007fc6d or       byte ptr [rcx + 0xb3], r8b
000000014007fc74 or       byte ptr [rcx + 0xb4], r8b
000000014007fc7b jmp      0x14007fe6f
000000014007fc80 or       byte ptr [rcx + 0xac], r8b
000000014007fc87 test     byte ptr [rdx], 4
000000014007fc8a je       0x14007fca1
000000014007fc8c or       byte ptr [rcx + 0xad], r8b
000000014007fc93 or       byte ptr [rcx + 0xae], r8b
000000014007fc9a or       byte ptr [rcx + 0xaf], r8b
000000014007fca1 test     byte ptr [rdx], 8
000000014007fca4 je       0x14007fcbb
000000014007fca6 or       byte ptr [rcx + 0xb0], r8b
000000014007fcad or       byte ptr [rcx + 0xb1], r8b
000000014007fcb4 or       byte ptr [rcx + 0xb2], r8b
000000014007fcbb test     byte ptr [rdx], r12b
000000014007fcbe je       0x14007fe6f
000000014007fcc4 or       byte ptr [rcx + 0xb3], r8b
000000014007fccb or       byte ptr [rcx + 0xb4], r8b
000000014007fcd2 or       byte ptr [rcx + 0xb5], r8b
000000014007fcd9 jmp      0x14007fe6f
000000014007fcde mov      dword ptr [rcx + 0x8d], 0xff
000000014007fce8 cmp      bl, 2
000000014007fceb jne      0x14007fcf6
000000014007fced mov      byte ptr [rcx + 0x97], 0xfc
000000014007fcf4 jmp      0x14007fd04
000000014007fcf6 cmp      bl, r13b
000000014007fcf9 setne    al
000000014007fcfc add      al, 0xfd
000000014007fcfe mov      byte ptr [rcx + 0x97], al
000000014007fd04 mov      byte ptr [rcx + 0x98], 0xff
000000014007fd0b mov      byte ptr [rcx + 0xa2], 0xff
000000014007fd12 cmp      r15b, 2
000000014007fd16 jne      0x14007fd2f
000000014007fd18 mov      byte ptr [rcx + 0xa1], 0xfc
000000014007fd1f test     byte ptr [rdx], 8
000000014007fd22 je       0x14007fd60
000000014007fd24 mov      word ptr [rcx + 0xa3], 0xfffc
000000014007fd2d jmp      0x14007fd60
000000014007fd2f cmp      r15b, r13b
000000014007fd32 jne      0x14007fd4b
000000014007fd34 mov      byte ptr [rcx + 0xa1], 0xfd
000000014007fd3b test     byte ptr [rdx], 8
000000014007fd3e je       0x14007fd60
000000014007fd40 mov      word ptr [rcx + 0xa3], 0xfffd
000000014007fd49 jmp      0x14007fd60
000000014007fd4b mov      byte ptr [rcx + 0xa1], 0xfe
000000014007fd52 test     byte ptr [rdx], 8
000000014007fd55 je       0x14007fd60
000000014007fd57 mov      word ptr [rcx + 0xa3], 0xfffe
000000014007fd60 lea      r9, [rcx + 0xa9]
000000014007fd67 mov      rax, r9
000000014007fd6a and      byte ptr [rax], 0xf
000000014007fd6d add      rax, r13
000000014007fd70 sub      r11, r13
000000014007fd73 jne      0x14007fd6a
000000014007fd75 mov      r8b, byte ptr [r9]
000000014007fd78 or       r8b, r12b
000000014007fd7b cmp      dil, 3
000000014007fd7f jne      0x14007fd89
000000014007fd81 mov      byte ptr [r9], r8b
000000014007fd84 jmp      0x14007fe6f
000000014007fd89 mov      r10b, byte ptr [rcx + 0xaa]
000000014007fd90 or       r10b, r12b
000000014007fd93 mov      byte ptr [rcx + 0xaa], r10b
000000014007fd9a cmp      dil, 2
000000014007fd9e jne      0x14007fdd0
000000014007fda0 mov      byte ptr [r9], r8b
000000014007fda3 test     byte ptr [rdx], 4
000000014007fda6 je       0x14007fdaf
000000014007fda8 or       byte ptr [rcx + 0xad], r12b
000000014007fdaf test     byte ptr [rdx], 8
000000014007fdb2 je       0x14007fdbb
000000014007fdb4 or       byte ptr [rcx + 0xb0], r12b
000000014007fdbb test     byte ptr [rdx], r12b
000000014007fdbe je       0x14007fe6f
000000014007fdc4 or       byte ptr [rcx + 0xb3], r12b
000000014007fdcb jmp      0x14007fe6f
000000014007fdd0 or       byte ptr [rcx + 0xab], r12b
000000014007fdd7 mov      byte ptr [r9], r8b
000000014007fdda cmp      dil, r13b
000000014007fddd jne      0x14007fe1a
000000014007fddf test     byte ptr [rdx], 4
000000014007fde2 je       0x14007fdf2
000000014007fde4 or       byte ptr [rcx + 0xad], r12b
000000014007fdeb or       byte ptr [rcx + 0xae], r12b
000000014007fdf2 test     byte ptr [rdx], 8
000000014007fdf5 je       0x14007fe05
000000014007fdf7 or       byte ptr [rcx + 0xb0], r12b
000000014007fdfe or       byte ptr [rcx + 0xb1], r12b
000000014007fe05 test     byte ptr [rdx], r12b
000000014007fe08 je       0x14007fe6f
000000014007fe0a or       byte ptr [rcx + 0xb3], r12b
000000014007fe11 or       byte ptr [rcx + 0xb4], r12b
000000014007fe18 jmp      0x14007fe6f
000000014007fe1a or       byte ptr [rcx + 0xac], r12b
000000014007fe21 test     byte ptr [rdx], 4
000000014007fe24 je       0x14007fe3b
000000014007fe26 or       byte ptr [rcx + 0xad], r12b
000000014007fe2d or       byte ptr [rcx + 0xae], r12b
000000014007fe34 or       byte ptr [rcx + 0xaf], r12b
000000014007fe3b test     byte ptr [rdx], 8
000000014007fe3e je       0x14007fe55
000000014007fe40 or       byte ptr [rcx + 0xb0], r12b
000000014007fe47 or       byte ptr [rcx + 0xb1], r12b
000000014007fe4e or       byte ptr [rcx + 0xb2], r12b
000000014007fe55 test     byte ptr [rdx], r12b
000000014007fe58 je       0x14007fe6f
000000014007fe5a or       byte ptr [rcx + 0xb3], r12b
000000014007fe61 or       byte ptr [rcx + 0xb4], r12b
000000014007fe68 or       byte ptr [rcx + 0xb5], r12b
000000014007fe6f mov      r10, qword ptr [rip + 0x8a018a]
000000014007fe76 lea      r13, [rip + 0x8a0183]
000000014007fe7d cmp      r10, r13
000000014007fe80 je       0x14007ff59
000000014007fe86 cmp      byte ptr [r10 + 0x29], 4
000000014007fe8b jb       0x14007fed0
000000014007fe8d bt       dword ptr [r10 + 0x2c], 8
000000014007fe93 jae      0x14007fed0
000000014007fe95 movzx    r8d, byte ptr [rcx + 0xee]
000000014007fe9d lea      r9, [rip + 0x57a6ac]
000000014007fea4 mov      rcx, qword ptr [r10 + 0x18]
000000014007fea8 mov      eax, r8d
000000014007feab shr      r8d, 2
000000014007feaf mov      edx, 0x19
000000014007feb4 and      r8d, 7
000000014007feb8 shr      eax, 5
000000014007febb mov      dword ptr [rsp + 0x28], eax
000000014007febf mov      dword ptr [rsp + 0x20], r8d
000000014007fec4 lea      r8, [rip + 0x612d65]
000000014007fecb call     0x140002b04
000000014007fed0 mov      rcx, qword ptr [rip + 0x8a0129]
000000014007fed7 cmp      rcx, r13
000000014007feda je       0x14007ff59
000000014007fedc cmp      byte ptr [rcx + 0x29], 4
000000014007fee0 jb       0x14007ff1f
000000014007fee2 bt       dword ptr [rcx + 0x2c], 8
000000014007fee7 jae      0x14007ff1f
000000014007fee9 movzx    eax, byte ptr [rsp + 0x90]
000000014007fef1 lea      r8, [rip + 0x612d38]
000000014007fef8 movzx    r10d, byte ptr [rsp + 0x80]
000000014007ff01 mov      r9d, r15d
000000014007ff04 mov      rcx, qword ptr [rcx + 0x18]
000000014007ff08 mov      edx, 0x1a
000000014007ff0d mov      dword ptr [rsp + 0x30], eax
000000014007ff11 mov      dword ptr [rsp + 0x28], ebx
000000014007ff15 mov      dword ptr [rsp + 0x20], r10d
000000014007ff1a call     0x140008794
000000014007ff1f mov      rcx, qword ptr [rip + 0x8a00da]
000000014007ff26 cmp      rcx, r13
000000014007ff29 je       0x14007ff59
000000014007ff2b cmp      byte ptr [rcx + 0x29], 4
000000014007ff2f jb       0x14007ff59
000000014007ff31 bt       dword ptr [rcx + 0x2c], 8
000000014007ff36 jae      0x14007ff59
000000014007ff38 mov      rcx, qword ptr [rcx + 0x18]
000000014007ff3c lea      r8, [rip + 0x612ced]
000000014007ff43 movzx    eax, sil
000000014007ff47 mov      edx, 0x1b
000000014007ff4c movzx    r9d, dil
000000014007ff50 mov      dword ptr [rsp + 0x20], eax
000000014007ff54 call     0x140001bec
000000014007ff59 mov      rbx, qword ptr [rsp + 0x60]
000000014007ff5e mov      rsi, qword ptr [rsp + 0x68]
000000014007ff63 mov      rdi, qword ptr [rsp + 0x70]
000000014007ff68 add      rsp, 0x40
000000014007ff6c pop      r15
000000014007ff6e pop      r13
000000014007ff70 pop      r12
000000014007ff72 ret      