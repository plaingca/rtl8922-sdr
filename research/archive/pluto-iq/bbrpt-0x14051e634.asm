000000014051e634 mov      qword ptr [rsp + 0x20], rbx
000000014051e639 push     rbp
000000014051e63a push     rsi
000000014051e63b push     rdi
000000014051e63c push     r14
000000014051e63e push     r15
000000014051e640 lea      rbp, [rsp - 0x37]
000000014051e645 sub      rsp, 0xe0
000000014051e64c mov      rax, qword ptr [rip + 0x408e0d]
000000014051e653 xor      rax, rsp
000000014051e656 mov      qword ptr [rbp + 0x27], rax
000000014051e65a movzx    ebx, r8b
000000014051e65e mov      rdi, rcx
000000014051e661 movzx    esi, dl
000000014051e664 lea      rcx, [rbp - 0x29]
000000014051e668 mov      r15d, 0x50
000000014051e66e xor      edx, edx
000000014051e670 mov      r8d, r15d
000000014051e673 mov      r14b, r9b
000000014051e676 call     0x1405f4640
000000014051e67b mov      r8d, r15d
000000014051e67e lea      rcx, [rbp - 0x79]
000000014051e682 xor      edx, edx
000000014051e684 call     0x1405f4640
000000014051e689 mov      rax, qword ptr [rdi + 0x140]
000000014051e690 mov      r8, qword ptr [rax + 0x20]
000000014051e694 test     r8, r8
000000014051e697 jne      0x14051e6a1
000000014051e699 or       eax, 0xffffffff
000000014051e69c jmp      0x14051ead7
000000014051e6a1 mov      r8, qword ptr [r8 + rsi*8 + 0x400]
000000014051e6a9 mov      r15d, 3
000000014051e6af mov      eax, dword ptr [rbp - 0xd]
000000014051e6b2 mov      r9d, dword ptr [rbp - 0x5d]
000000014051e6b6 and      eax, 0xffff0000
000000014051e6bb or       r9d, 0xffff
000000014051e6c2 movzx    r11d, word ptr [r8 + 6]
000000014051e6c7 movzx    r10d, byte ptr [r8 + 0x26]
000000014051e6cc or       r11d, eax
000000014051e6cf mov      eax, dword ptr [rbp - 0x15]
000000014051e6d2 and      r10d, r15d
000000014051e6d5 and      eax, 0xcfffffff
000000014051e6da mov      dword ptr [rbp - 0xd], r11d
000000014051e6de add      r10d, r10d
000000014051e6e1 mov      dword ptr [rbp - 0x5d], r9d
000000014051e6e5 movzx    ecx, byte ptr [r8 + 0x1a]
000000014051e6ea or       dword ptr [rbp - 0x65], 0x30000000
000000014051e6f1 and      ecx, r15d
000000014051e6f4 shl      ecx, 0x1c
000000014051e6f7 or       ecx, eax
000000014051e6f9 mov      dword ptr [rbp - 0x15], ecx
000000014051e6fc mov      ecx, ebx
000000014051e6fe movzx    eax, byte ptr [r8 + 0x1b]
000000014051e703 and      eax, 1
000000014051e706 mov      dword ptr [rbp - 0x61], 0x1c
000000014051e70d or       r10d, eax
000000014051e710 shl      r10d, 2
000000014051e714 mov      dword ptr [rbp - 0x11], r10d
000000014051e718 cmp      ebx, 5
000000014051e71b ja       0x14051e8ed
000000014051e721 je       0x14051e8a9
000000014051e727 test     bl, bl
000000014051e729 je       0x14051e862
000000014051e72f sub      ecx, 1
000000014051e732 je       0x14051e81b
000000014051e738 sub      ecx, 1
000000014051e73b je       0x14051e7d7
000000014051e741 sub      ecx, 1
000000014051e744 je       0x14051e790
000000014051e746 cmp      ecx, 1
000000014051e749 jne      0x14051ea95
000000014051e74f movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051e755 and      eax, r15d
000000014051e758 shl      eax, 0xd
000000014051e75b or       eax, r10d
000000014051e75e mov      dword ptr [rbp - 0x11], eax
000000014051e761 movzx    edx, word ptr [r8 + rbx*2 + 8]
000000014051e767 mov      eax, dword ptr [rbp - 5]
000000014051e76a and      edx, 0x3ff
000000014051e770 and      eax, 0xfffffc00
000000014051e775 mov      dword ptr [rbp - 0x61], 0x601c
000000014051e77c or       edx, eax
000000014051e77e mov      eax, dword ptr [rbp - 0x55]
000000014051e781 and      eax, 0xfffffcff
000000014051e786 or       eax, 0xff
000000014051e78b jmp      0x14051ea8f
000000014051e790 movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051e796 and      eax, r15d
000000014051e799 shl      eax, 0xb
000000014051e79c or       eax, r10d
000000014051e79f mov      dword ptr [rbp - 0x11], eax
000000014051e7a2 movzx    edx, word ptr [r8 + rbx*2 + 8]
000000014051e7a8 mov      eax, dword ptr [rbp - 9]
000000014051e7ab and      edx, 0x3ff
000000014051e7b1 and      eax, 0xc00fffff
000000014051e7b6 shl      edx, 0x14
000000014051e7b9 or       edx, eax
000000014051e7bb mov      dword ptr [rbp - 0x61], 0x181c
000000014051e7c2 mov      eax, dword ptr [rbp - 0x59]
000000014051e7c5 and      eax, 0xcfffffff
000000014051e7ca mov      dword ptr [rbp - 9], edx
000000014051e7cd or       eax, 0xff00000
000000014051e7d2 jmp      0x14051e85a
000000014051e7d7 movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051e7dd and      eax, r15d
000000014051e7e0 shl      eax, 9
000000014051e7e3 or       eax, r10d
000000014051e7e6 mov      dword ptr [rbp - 0x11], eax
000000014051e7e9 movzx    edx, word ptr [r8 + rbx*2 + 8]
000000014051e7ef mov      eax, dword ptr [rbp - 9]
000000014051e7f2 and      edx, 0x3ff
000000014051e7f8 and      eax, 0xfff003ff
000000014051e7fd shl      edx, 0xa
000000014051e800 or       edx, eax
000000014051e802 mov      dword ptr [rbp - 0x61], 0x61c
000000014051e809 mov      eax, dword ptr [rbp - 0x59]
000000014051e80c and      eax, 0xfff3ffff
000000014051e811 mov      dword ptr [rbp - 9], edx
000000014051e814 or       eax, 0x3fc00
000000014051e819 jmp      0x14051e85a
000000014051e81b movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051e821 and      eax, r15d
000000014051e824 shl      eax, 7
000000014051e827 or       eax, r10d
000000014051e82a mov      dword ptr [rbp - 0x11], eax
000000014051e82d movzx    edx, word ptr [r8 + rbx*2 + 8]
000000014051e833 mov      eax, dword ptr [rbp - 9]
000000014051e836 and      edx, 0x3ff
000000014051e83c and      eax, 0xfffffc00
000000014051e841 mov      dword ptr [rbp - 0x61], 0x19c
000000014051e848 or       edx, eax
000000014051e84a mov      dword ptr [rbp - 9], edx
000000014051e84d mov      eax, dword ptr [rbp - 0x59]
000000014051e850 and      eax, 0xfffffcff
000000014051e855 or       eax, 0xff
000000014051e85a mov      dword ptr [rbp - 0x59], eax
000000014051e85d jmp      0x14051ea95
000000014051e862 movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051e868 and      r9d, 0xfcffffff
000000014051e86f and      eax, r15d
000000014051e872 shl      eax, 5
000000014051e875 or       eax, r10d
000000014051e878 mov      dword ptr [rbp - 0x11], eax
000000014051e87b movzx    eax, word ptr [r8 + rbx*2 + 8]
000000014051e881 shl      eax, 0x10
000000014051e884 xor      eax, r11d
000000014051e887 mov      dword ptr [rbp - 0x61], 0x7c
000000014051e88e and      eax, 0x3ff0000
000000014051e893 xor      eax, r11d
000000014051e896 or       r9d, 0xff0000
000000014051e89d mov      dword ptr [rbp - 0xd], eax
000000014051e8a0 mov      dword ptr [rbp - 0x5d], r9d
000000014051e8a4 jmp      0x14051ea95
000000014051e8a9 movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051e8af and      eax, r15d
000000014051e8b2 shl      eax, 0xf
000000014051e8b5 or       eax, r10d
000000014051e8b8 mov      dword ptr [rbp - 0x11], eax
000000014051e8bb movzx    edx, word ptr [r8 + rbx*2 + 8]
000000014051e8c1 mov      eax, dword ptr [rbp - 5]
000000014051e8c4 and      edx, 0x3ff
000000014051e8ca and      eax, 0xfff003ff
000000014051e8cf shl      edx, 0xa
000000014051e8d2 or       edx, eax
000000014051e8d4 mov      dword ptr [rbp - 0x61], 0x1801c
000000014051e8db mov      eax, dword ptr [rbp - 0x55]
000000014051e8de and      eax, 0xfff3ffff
000000014051e8e3 or       eax, 0x3fc00
000000014051e8e8 jmp      0x14051ea8f
000000014051e8ed sub      ecx, 6
000000014051e8f0 je       0x14051ea50
000000014051e8f6 sub      ecx, 1
000000014051e8f9 je       0x14051ea0c
000000014051e8ff sub      ecx, 1
000000014051e902 je       0x14051e9cb
000000014051e908 sub      ecx, 1
000000014051e90b je       0x14051e982
000000014051e90d cmp      ecx, 2
000000014051e910 jne      0x14051ea95
000000014051e916 movzx    eax, word ptr [r8 + 8]
000000014051e91b and      r9d, 0xfcffffff
000000014051e922 movzx    edx, byte ptr [r8 + 0x1c]
000000014051e927 or       r9d, 0xff0000
000000014051e92e shl      eax, 0x10
000000014051e931 xor      eax, r11d
000000014051e934 mov      dword ptr [rbp - 0x5d], r9d
000000014051e938 and      eax, 0x3ff0000
000000014051e93d xor      eax, r11d
000000014051e940 mov      dword ptr [rbp - 0xd], eax
000000014051e943 mov      eax, edx
000000014051e945 movzx    ecx, byte ptr [r8 + 0x1d]
000000014051e94a and      eax, r15d
000000014051e94d and      ecx, r15d
000000014051e950 shl      ecx, 2
000000014051e953 or       ecx, eax
000000014051e955 mov      eax, dword ptr [rbp - 9]
000000014051e958 shl      ecx, 5
000000014051e95b and      eax, 0xfffffc00
000000014051e960 or       ecx, r10d
000000014051e963 mov      dword ptr [rbp - 0x11], ecx
000000014051e966 movzx    ecx, word ptr [r8 + 0xa]
000000014051e96b and      ecx, 0x3ff
000000014051e971 mov      dword ptr [rbp - 0x61], 0x1fc
000000014051e978 or       ecx, eax
000000014051e97a mov      dword ptr [rbp - 9], ecx
000000014051e97d jmp      0x14051e84d
000000014051e982 mov      eax, dword ptr [rbp - 0x59]
000000014051e985 mov      edx, 0xcff3fcff
000000014051e98a and      eax, edx
000000014051e98c mov      dword ptr [rbp - 0x61], 0x7ffffc
000000014051e993 mov      ecx, 0xff3fcff
000000014051e998 and      r9d, 0xfcffffff
000000014051e99f or       eax, ecx
000000014051e9a1 or       r9d, 0xff0000
000000014051e9a8 mov      dword ptr [rbp - 0x59], eax
000000014051e9ab mov      eax, dword ptr [rbp - 0x55]
000000014051e9ae and      eax, edx
000000014051e9b0 mov      dword ptr [rbp - 0x5d], r9d
000000014051e9b4 or       eax, ecx
000000014051e9b6 mov      dword ptr [rbp - 0x55], eax
000000014051e9b9 mov      eax, dword ptr [rbp - 0x51]
000000014051e9bc and      eax, 0xfff3fcff
000000014051e9c1 or       eax, 0x3fcff
000000014051e9c6 jmp      0x14051ea4b
000000014051e9cb movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051e9d1 and      eax, r15d
000000014051e9d4 shl      eax, 0x15
000000014051e9d7 or       eax, r10d
000000014051e9da mov      dword ptr [rbp - 0x11], eax
000000014051e9dd movzx    edx, word ptr [r8 + rbx*2 + 8]
000000014051e9e3 mov      eax, dword ptr [rbp - 1]
000000014051e9e6 and      edx, 0x3ff
000000014051e9ec and      eax, 0xfff003ff
000000014051e9f1 shl      edx, 0xa
000000014051e9f4 or       edx, eax
000000014051e9f6 mov      dword ptr [rbp - 0x61], 0x60001c
000000014051e9fd mov      eax, dword ptr [rbp - 0x51]
000000014051ea00 and      eax, 0xfff3ffff
000000014051ea05 or       eax, 0x3fc00
000000014051ea0a jmp      0x14051ea48
000000014051ea0c movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051ea12 and      eax, r15d
000000014051ea15 shl      eax, 0x13
000000014051ea18 or       eax, r10d
000000014051ea1b mov      dword ptr [rbp - 0x11], eax
000000014051ea1e movzx    edx, word ptr [r8 + rbx*2 + 8]
000000014051ea24 mov      eax, dword ptr [rbp - 1]
000000014051ea27 and      edx, 0x3ff
000000014051ea2d and      eax, 0xfffffc00
000000014051ea32 mov      dword ptr [rbp - 0x61], 0x18001c
000000014051ea39 or       edx, eax
000000014051ea3b mov      eax, dword ptr [rbp - 0x51]
000000014051ea3e and      eax, 0xfffffcff
000000014051ea43 or       eax, 0xff
000000014051ea48 mov      dword ptr [rbp - 1], edx
000000014051ea4b mov      dword ptr [rbp - 0x51], eax
000000014051ea4e jmp      0x14051ea95
000000014051ea50 movzx    eax, byte ptr [rbx + r8 + 0x1c]
000000014051ea56 and      eax, r15d
000000014051ea59 shl      eax, 0x11
000000014051ea5c or       eax, r10d
000000014051ea5f mov      dword ptr [rbp - 0x11], eax
000000014051ea62 movzx    edx, word ptr [r8 + rbx*2 + 8]
000000014051ea68 mov      eax, dword ptr [rbp - 5]
000000014051ea6b and      edx, 0x3ff
000000014051ea71 and      eax, 0xc00fffff
000000014051ea76 shl      edx, 0x14
000000014051ea79 or       edx, eax
000000014051ea7b mov      dword ptr [rbp - 0x61], 0x6001c
000000014051ea82 mov      eax, dword ptr [rbp - 0x55]
000000014051ea85 and      eax, 0xcfffffff
000000014051ea8a or       eax, 0xff00000
000000014051ea8f mov      dword ptr [rbp - 5], edx
000000014051ea92 mov      dword ptr [rbp - 0x55], eax
000000014051ea95 cmp      r14b, 1
000000014051ea99 jne      0x14051eabe
000000014051ea9b mov      eax, dword ptr [r8]
000000014051ea9e or       dword ptr [rbp - 0x71], 0xffffffff
000000014051eaa2 mov      dword ptr [rbp - 0x21], eax
000000014051eaa5 movzx    edx, word ptr [r8 + 4]
000000014051eaaa mov      eax, dword ptr [rbp - 0x25]
000000014051eaad and      eax, 0xffff0000
000000014051eab2 or       edx, eax
000000014051eab4 or       dword ptr [rbp - 0x75], 0xffff
000000014051eabb mov      dword ptr [rbp - 0x25], edx
000000014051eabe movzx    r9d, si
000000014051eac2 mov      byte ptr [rsp + 0x20], 1
000000014051eac7 lea      r8, [rbp - 0x79]
000000014051eacb mov      rcx, rdi
000000014051eace lea      rdx, [rbp - 0x29]
000000014051ead2 call     0x14051bda0
000000014051ead7 mov      rcx, qword ptr [rbp + 0x27]
000000014051eadb xor      rcx, rsp
000000014051eade call     0x1405f45b0
000000014051eae3 mov      rbx, qword ptr [rsp + 0x128]
000000014051eaeb add      rsp, 0xe0
000000014051eaf2 pop      r15
000000014051eaf4 pop      r14
000000014051eaf6 pop      rdi
000000014051eaf7 pop      rsi
000000014051eaf8 pop      rbp
000000014051eaf9 ret      