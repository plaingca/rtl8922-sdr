0000000140135658 mov      qword ptr [rsp + 0x20], rbx
000000014013565d push     rbp
000000014013565e push     rsi
000000014013565f push     rdi
0000000140135660 push     r12
0000000140135662 push     r13
0000000140135664 push     r14
0000000140135666 push     r15
0000000140135668 sub      rsp, 0x30
000000014013566c mov      rax, qword ptr [rcx + 0xaf3b8]
0000000140135673 mov      rdi, rcx
0000000140135676 mov      rdx, qword ptr [rax]
0000000140135679 mov      rbx, qword ptr [rdx + 0x20710]
0000000140135680 mov      rsi, qword ptr [rdx + 0x170]
0000000140135687 mov      rcx, qword ptr [rip + 0x7ea972]
000000014013568e lea      rax, [rip + 0x7ea96b]
0000000140135695 cmp      rcx, rax
0000000140135698 je       0x1401356c7
000000014013569a cmp      byte ptr [rcx + 0x29], 4
000000014013569e jb       0x1401356c7
00000001401356a0 bt       dword ptr [rcx + 0x2c], 8
00000001401356a5 jae      0x1401356c7
00000001401356a7 mov      r9, qword ptr [rdi + 0xaf288]
00000001401356ae lea      r8, [rip + 0x55e33b]
00000001401356b5 mov      rcx, qword ptr [rcx + 0x18]
00000001401356b9 mov      edx, 0x62
00000001401356be mov      r9d, dword ptr [r9 + 8]
00000001401356c2 call     0x140001bb0
00000001401356c7 mov      edx, 1
00000001401356cc mov      rcx, rdi
00000001401356cf mov      r8d, edx
00000001401356d2 call     0x140158b1c
00000001401356d7 mov      rax, qword ptr [rdi + 0xaf280]
00000001401356de mov      edx, 2
00000001401356e3 mov      rcx, rdi
00000001401356e6 movzx    r8d, byte ptr [rax + 0x113a]
00000001401356ee call     0x140158b1c
00000001401356f3 mov      rax, qword ptr [rdi + 0xaf280]
00000001401356fa mov      edx, 3
00000001401356ff mov      rcx, rdi
0000000140135702 movzx    r8d, byte ptr [rax + 0x113b]
000000014013570a call     0x140158b1c
000000014013570f lea      r8, [rsi + 0x218]
0000000140135716 xor      edx, edx
0000000140135718 mov      rcx, rdi
000000014013571b call     0x140158d78
0000000140135720 lea      r8, [rsi + 0x220]
0000000140135727 mov      edx, 1
000000014013572c mov      rcx, rdi
000000014013572f call     0x140158d78
0000000140135734 lea      r8, [rsi + 0x25b]
000000014013573b mov      edx, 2
0000000140135740 mov      rcx, rdi
0000000140135743 call     0x140158d78
0000000140135748 mov      rax, qword ptr [rdi + 0xaf280]
000000014013574f mov      cl, byte ptr [rax + 0x10c2]
0000000140135755 mov      bpl, byte ptr [rax + 0x10c1]
000000014013575c mov      r15b, byte ptr [rax + 0x10c3]
0000000140135763 mov      byte ptr [rsp + 0x78], cl
0000000140135767 mov      al, r15b
000000014013576a neg      al
000000014013576c mov      byte ptr [rsp + 0x70], bpl
0000000140135771 mov      al, cl
0000000140135773 sbb      r12b, r12b
0000000140135776 and      r12b, 4
000000014013577a neg      al
000000014013577c sbb      cl, cl
000000014013577e and      cl, 2
0000000140135781 or       r12b, cl
0000000140135784 mov      rcx, rdi
0000000140135787 test     bpl, bpl
000000014013578a setne    al
000000014013578d or       r12b, al
0000000140135790 mov      byte ptr [rbx + 0xdffc], r12b
0000000140135797 call     0x1405c277c
000000014013579c test     al, al
000000014013579e jne      0x1401357a7
00000001401357a0 and      byte ptr [rbx + 0xdffc], 0xfb
00000001401357a7 mov      word ptr [rbx + 0xdffe], 0xf
00000001401357b0 xor      esi, esi
00000001401357b2 mov      rax, qword ptr [rdi + 0xaf3b8]
00000001401357b9 mov      r14, qword ptr [rax]
00000001401357bc add      r14, 0x18
00000001401357c0 mov      r13, qword ptr [r14 + 0x206f8]
00000001401357c7 cmp      rdi, qword ptr [rax]
00000001401357ca jne      0x140135902
00000001401357d0 mov      rcx, qword ptr [rip + 0x7ea829]
00000001401357d7 lea      rax, [rip + 0x7ea822]
00000001401357de cmp      rcx, rax
00000001401357e1 je       0x14013580f
00000001401357e3 cmp      byte ptr [rcx + 0x29], 4
00000001401357e7 jb       0x14013580f
00000001401357e9 mov      eax, dword ptr [rcx + 0x2c]
00000001401357ec test     al, 2
00000001401357ee je       0x14013580f
00000001401357f0 mov      rcx, qword ptr [rcx + 0x18]
00000001401357f4 lea      edx, [rsi + 0xc]
00000001401357f7 lea      r9, [rip + 0x4d0a62]
00000001401357fe mov      qword ptr [rsp + 0x20], rdi
0000000140135803 lea      r8, [rip + 0x55e1e6]
000000014013580a call     0x14002873c
000000014013580f mov      rax, qword ptr [rdi + 0xaf280]
0000000140135816 mov      ebp, dword ptr [rax + 0xc10]
000000014013581c mov      rcx, qword ptr [rip + 0x7ea7dd]
0000000140135823 lea      rax, [rip + 0x7ea7d6]
000000014013582a cmp      rcx, rax
000000014013582d je       0x140135854
000000014013582f cmp      byte ptr [rcx + 0x29], 4
0000000140135833 jb       0x140135854
0000000140135835 mov      eax, dword ptr [rcx + 0x2c]
0000000140135838 test     al, 2
000000014013583a je       0x140135854
000000014013583c mov      rcx, qword ptr [rcx + 0x18]
0000000140135840 lea      r8, [rip + 0x55e1a9]
0000000140135847 mov      edx, 0xe
000000014013584c mov      r9d, ebp
000000014013584f call     0x140001bb0
0000000140135854 lea      rdx, [rsp + 0x80]
000000014013585c mov      r9b, 1
000000014013585f mov      rcx, r14
0000000140135862 bt       ebp, 8
0000000140135866 jae      0x14013589a
0000000140135868 mov      byte ptr [rsp + 0x80], bpl
0000000140135870 mov      r8d, 4
0000000140135876 shr      ebp, 0x10
0000000140135879 mov      byte ptr [rsp + 0x81], bpl
0000000140135881 call     0x140078ac8
0000000140135886 cmp      byte ptr [rsp + 0x80], 0x1a
000000014013588e jne      0x1401358ac
0000000140135890 mov      rcx, rdi
0000000140135893 call     0x1405c4944
0000000140135898 jmp      0x1401358ac
000000014013589a xor      r8d, r8d
000000014013589d mov      word ptr [rsp + 0x80], 0x76
00000001401358a7 call     0x140078ac8
00000001401358ac mov      cl, byte ptr [r13 + 0xdffc]
00000001401358b3 test     cl, 2
00000001401358b6 je       0x1401358c8
00000001401358b8 mov      al, byte ptr [rdi + 0x53eac8]
00000001401358be neg      al
00000001401358c0 sbb      esi, esi
00000001401358c2 and      esi, 4
00000001401358c5 add      esi, 0x12
00000001401358c8 mov      r13d, 1
00000001401358ce mov      r8d, esi
00000001401358d1 or       r8d, r13d
00000001401358d4 test     r13b, cl
00000001401358d7 cmove    r8d, esi
00000001401358db lea      esi, [r13 + 3]
00000001401358df mov      edx, r8d
00000001401358e2 or       edx, 8
00000001401358e5 test     sil, cl
00000001401358e8 mov      rcx, r14
00000001401358eb cmove    edx, r8d
00000001401358ef call     0x1400787b4
00000001401358f4 mov      bpl, byte ptr [rsp + 0x70]
00000001401358f9 lea      r14, [rip + 0x7ea700]
0000000140135900 jmp      0x14013594c
0000000140135902 mov      rcx, qword ptr [rip + 0x7ea6f7]
0000000140135909 lea      r14, [rip + 0x7ea6f0]
0000000140135910 mov      esi, 4
0000000140135915 cmp      rcx, r14
0000000140135918 je       0x140135946
000000014013591a cmp      byte ptr [rcx + 0x29], sil
000000014013591e jb       0x140135946
0000000140135920 mov      eax, dword ptr [rcx + 0x2c]
0000000140135923 test     al, 2
0000000140135925 je       0x140135946
0000000140135927 mov      rcx, qword ptr [rcx + 0x18]
000000014013592b lea      edx, [rsi + 9]
000000014013592e lea      r9, [rip + 0x4d092b]
0000000140135935 mov      qword ptr [rsp + 0x20], rdi
000000014013593a lea      r8, [rip + 0x55e0af]
0000000140135941 call     0x14002873c
0000000140135946 mov      r13d, 1
000000014013594c mov      rcx, rdi
000000014013594f call     0x140134b1c
0000000140135954 mov      rcx, rdi
0000000140135957 call     0x140133750
000000014013595c mov      rcx, rdi
000000014013595f call     0x1401335cc
0000000140135964 mov      rcx, rdi
0000000140135967 call     0x14010b6cc
000000014013596c mov      word ptr [rbx + 0xdfe0], r13w
0000000140135974 mov      rcx, qword ptr [rip + 0x7ea685]
000000014013597b cmp      rcx, r14
000000014013597e je       0x1401359b1
0000000140135980 cmp      byte ptr [rcx + 0x29], sil
0000000140135984 jb       0x1401359b1
0000000140135986 mov      eax, dword ptr [rcx + 0x2c]
0000000140135989 test     al, 2
000000014013598b je       0x1401359b1
000000014013598d mov      rax, qword ptr [rdi + 0xaf280]
0000000140135994 lea      r8, [rip + 0x55e055]
000000014013599b mov      rcx, qword ptr [rcx + 0x18]
000000014013599f mov      edx, 0x63
00000001401359a4 movzx    r9d, word ptr [rax + 0xc5a]
00000001401359ac call     0x140001bb0
00000001401359b1 mov      rax, qword ptr [rdi + 0xaf280]
00000001401359b8 test     byte ptr [rax + 0xc5a], r13b
00000001401359bf je       0x1401359cf
00000001401359c1 mov      dword ptr [rbx + 0x98d8], r13d
00000001401359c8 mov      dword ptr [rbx + 0xbbc8], r13d
00000001401359cf mov      rax, qword ptr [rdi + 0xaf280]
00000001401359d6 test     byte ptr [rax + 0xc5a], 2
00000001401359dd je       0x1401359ed
00000001401359df mov      dword ptr [rbx + 0x9a20], r13d
00000001401359e6 mov      dword ptr [rbx + 0xbd10], r13d
00000001401359ed mov      rax, qword ptr [rdi + 0xaf280]
00000001401359f4 test     byte ptr [rax + 0xc5a], sil
00000001401359fb je       0x140135a0b
00000001401359fd mov      dword ptr [rbx + 0x9b68], r13d
0000000140135a04 mov      dword ptr [rbx + 0xbe58], r13d
0000000140135a0b mov      rax, qword ptr [rdi + 0xaf280]
0000000140135a12 bt       word ptr [rax + 0xc5a], 8
0000000140135a1b jae      0x140135a2b
0000000140135a1d mov      dword ptr [rbx + 0x9cb0], r13d
0000000140135a24 mov      dword ptr [rbx + 0xbfa0], r13d
0000000140135a2b mov      rax, qword ptr [rdi + 0xaf280]
0000000140135a32 test     byte ptr [rax + 0xc5a], 8
0000000140135a39 je       0x140135a73
0000000140135a3b mov      dword ptr [rbx + 0x9f40], r13d
0000000140135a42 mov      dword ptr [rbx + 0xc230], r13d
0000000140135a49 mov      dword ptr [rbx + 0xa088], r13d
0000000140135a50 mov      dword ptr [rbx + 0xc378], r13d
0000000140135a57 mov      dword ptr [rbx + 0xa1d0], r13d
0000000140135a5e mov      dword ptr [rbx + 0xc4c0], r13d
0000000140135a65 mov      dword ptr [rbx + 0xa318], r13d
0000000140135a6c mov      dword ptr [rbx + 0xc608], r13d
0000000140135a73 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135a7a test     byte ptr [rax + 0xc5a], 0x10
0000000140135a81 je       0x140135a91
0000000140135a83 mov      dword ptr [rbx + 0xa5a8], r13d
0000000140135a8a mov      dword ptr [rbx + 0xc898], r13d
0000000140135a91 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135a98 test     byte ptr [rax + 0xc5a], 0x20
0000000140135a9f je       0x140135aaf
0000000140135aa1 mov      dword ptr [rbx + 0xa6f0], r13d
0000000140135aa8 mov      dword ptr [rbx + 0xc9e0], r13d
0000000140135aaf mov      rax, qword ptr [rdi + 0xaf280]
0000000140135ab6 test     byte ptr [rax + 0xc5a], 0x40
0000000140135abd je       0x140135adb
0000000140135abf mov      dword ptr [rbx + 0xa838], r13d
0000000140135ac6 mov      dword ptr [rbx + 0xcb28], r13d
0000000140135acd mov      dword ptr [rbx + 0xb1e8], r13d
0000000140135ad4 mov      dword ptr [rbx + 0xd4d8], r13d
0000000140135adb mov      rdx, qword ptr [rdi + 0xaf280]
0000000140135ae2 mov      al, byte ptr [rdx + 0xc5a]
0000000140135ae8 test     al, al
0000000140135aea jns      0x140135b0f
0000000140135aec mov      dword ptr [rbx + 0xad10], r13d
0000000140135af3 mov      dword ptr [rbx + 0xd000], r13d
0000000140135afa mov      dword ptr [rbx + 0xb6c0], r13d
0000000140135b01 mov      dword ptr [rbx + 0xd9b0], r13d
0000000140135b08 mov      rdx, qword ptr [rdi + 0xaf280]
0000000140135b0f mov      rcx, qword ptr [rip + 0x7ea4ea]
0000000140135b16 cmp      rcx, r14
0000000140135b19 je       0x140135b45
0000000140135b1b cmp      byte ptr [rcx + 0x29], sil
0000000140135b1f jb       0x140135b45
0000000140135b21 mov      eax, dword ptr [rcx + 0x2c]
0000000140135b24 test     al, 2
0000000140135b26 je       0x140135b45
0000000140135b28 movzx    r9d, byte ptr [rdx + 0x8a3]
0000000140135b30 lea      r8, [rip + 0x55deb9]
0000000140135b37 mov      rcx, qword ptr [rcx + 0x18]
0000000140135b3b mov      edx, 0x64
0000000140135b40 call     0x140001bb0
0000000140135b45 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135b4c test     byte ptr [rax + 0x8a3], r13b
0000000140135b53 jne      0x140135b5c
0000000140135b55 mov      dword ptr [rbx + 0xdf08], r13d
0000000140135b5c mov      rax, qword ptr [rdi + 0xaf280]
0000000140135b63 mov      cl, byte ptr [rax + 0x128d]
0000000140135b69 and      cl, r13b
0000000140135b6c mov      byte ptr [rbx + 0xdf0c], cl
0000000140135b72 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135b79 mov      cl, byte ptr [rax + 0x128c]
0000000140135b7f and      cl, r13b
0000000140135b82 mov      byte ptr [rbx + 0xdf0d], cl
0000000140135b88 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135b8f movzx    edx, byte ptr [rax + 0x12d3]
0000000140135b96 mov      byte ptr [rbx + 0xdf0e], dl
0000000140135b9c mov      rcx, qword ptr [rip + 0x7ea45d]
0000000140135ba3 cmp      rcx, r14
0000000140135ba6 je       0x140135bcd
0000000140135ba8 cmp      byte ptr [rcx + 0x29], sil
0000000140135bac jb       0x140135bcd
0000000140135bae mov      eax, dword ptr [rcx + 0x2c]
0000000140135bb1 test     al, 2
0000000140135bb3 je       0x140135bcd
0000000140135bb5 mov      rcx, qword ptr [rcx + 0x18]
0000000140135bb9 lea      r8, [rip + 0x55de30]
0000000140135bc0 mov      r9d, edx
0000000140135bc3 mov      edx, 0x65
0000000140135bc8 call     0x140001bb0
0000000140135bcd mov      rax, qword ptr [rdi + 0xaf280]
0000000140135bd4 test     byte ptr [rax + 0x8a3], sil
0000000140135bdb jne      0x140135be4
0000000140135bdd mov      dword ptr [rbx + 0xdf14], r13d
0000000140135be4 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135beb mov      cl, byte ptr [rax + 0x128d]
0000000140135bf1 shr      cl, 2
0000000140135bf4 and      cl, r13b
0000000140135bf7 mov      byte ptr [rbx + 0xdf18], cl
0000000140135bfd mov      rax, qword ptr [rdi + 0xaf280]
0000000140135c04 mov      cl, byte ptr [rax + 0x128c]
0000000140135c0a shr      cl, 2
0000000140135c0d and      cl, r13b
0000000140135c10 mov      byte ptr [rbx + 0xdf19], cl
0000000140135c16 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135c1d test     byte ptr [rax + 0x8a3], 8
0000000140135c24 jne      0x140135c2d
0000000140135c26 mov      dword ptr [rbx + 0xdf1c], r13d
0000000140135c2d mov      rax, qword ptr [rdi + 0xaf280]
0000000140135c34 mov      cl, byte ptr [rax + 0x128d]
0000000140135c3a shr      cl, 3
0000000140135c3d and      cl, r13b
0000000140135c40 mov      byte ptr [rbx + 0xdf20], cl
0000000140135c46 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135c4d mov      cl, byte ptr [rax + 0x128c]
0000000140135c53 shr      cl, 3
0000000140135c56 and      cl, r13b
0000000140135c59 mov      byte ptr [rbx + 0xdf21], cl
0000000140135c5f mov      rax, qword ptr [rdi + 0xaf280]
0000000140135c66 mov      cl, byte ptr [rax + 0xc5c]
0000000140135c6c mov      byte ptr [rbx + 0xdf02], cl
0000000140135c72 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135c79 mov      cl, byte ptr [rax + 0xc5d]
0000000140135c7f mov      byte ptr [rbx + 0xdf01], cl
0000000140135c85 mov      rcx, qword ptr [rip + 0x7ea374]
0000000140135c8c cmp      rcx, r14
0000000140135c8f je       0x140135cff
0000000140135c91 cmp      byte ptr [rcx + 0x29], sil
0000000140135c95 jb       0x140135cc2
0000000140135c97 mov      eax, dword ptr [rcx + 0x2c]
0000000140135c9a test     al, 2
0000000140135c9c je       0x140135cc2
0000000140135c9e mov      rax, qword ptr [rdi + 0xaf280]
0000000140135ca5 lea      r8, [rip + 0x55dd44]
0000000140135cac mov      rcx, qword ptr [rcx + 0x18]
0000000140135cb0 mov      edx, 0x66
0000000140135cb5 movzx    r9d, byte ptr [rax + 0xc5c]
0000000140135cbd call     0x140001bb0
0000000140135cc2 mov      rcx, qword ptr [rip + 0x7ea337]
0000000140135cc9 cmp      rcx, r14
0000000140135ccc je       0x140135cff
0000000140135cce cmp      byte ptr [rcx + 0x29], sil
0000000140135cd2 jb       0x140135cff
0000000140135cd4 mov      eax, dword ptr [rcx + 0x2c]
0000000140135cd7 test     al, 2
0000000140135cd9 je       0x140135cff
0000000140135cdb mov      rax, qword ptr [rdi + 0xaf280]
0000000140135ce2 lea      r8, [rip + 0x55dd07]
0000000140135ce9 mov      rcx, qword ptr [rcx + 0x18]
0000000140135ced mov      edx, 0x67
0000000140135cf2 movzx    r9d, byte ptr [rax + 0xc5d]
0000000140135cfa call     0x140001bb0
0000000140135cff mov      rax, qword ptr [rdi + 0xaf280]
0000000140135d06 cmp      byte ptr [rax + 0xc5e], r13b
0000000140135d0d jne      0x140135d47
0000000140135d0f mov      dword ptr [rbx + 0x961c], r13d
0000000140135d16 mov      rcx, qword ptr [rip + 0x7ea2e3]
0000000140135d1d cmp      rcx, r14
0000000140135d20 je       0x140135d47
0000000140135d22 cmp      byte ptr [rcx + 0x29], sil
0000000140135d26 jb       0x140135d47
0000000140135d28 mov      eax, dword ptr [rcx + 0x2c]
0000000140135d2b test     al, 2
0000000140135d2d je       0x140135d47
0000000140135d2f mov      rcx, qword ptr [rcx + 0x18]
0000000140135d33 lea      r8, [rip + 0x55dcb6]
0000000140135d3a mov      edx, 0x68
0000000140135d3f mov      r9d, r13d
0000000140135d42 call     0x140001bb0
0000000140135d47 or       r15b, byte ptr [rsp + 0x78]
0000000140135d4c or       r15b, bpl
0000000140135d4f mov      byte ptr [rbx + 0xbb99], r12b
0000000140135d56 mov      byte ptr [rbx + 0xbb98], r15b
0000000140135d5d mov      byte ptr [rbx + 0xde88], r15b
0000000140135d64 mov      byte ptr [rbx + 0xde89], r12b
0000000140135d6b mov      rcx, qword ptr [rip + 0x7ea28e]
0000000140135d72 lea      r12, [rip + 0x7ea287]
0000000140135d79 cmp      rcx, r12
0000000140135d7c je       0x140135e67
0000000140135d82 cmp      byte ptr [rcx + 0x29], sil
0000000140135d86 jb       0x140135daf
0000000140135d88 mov      eax, dword ptr [rcx + 0x2c]
0000000140135d8b test     al, 2
0000000140135d8d je       0x140135daf
0000000140135d8f mov      rcx, qword ptr [rcx + 0x18]
0000000140135d93 lea      r8, [rip + 0x55dc56]
0000000140135d9a movzx    eax, r15b
0000000140135d9e mov      edx, 0x69
0000000140135da3 xor      r9d, r9d
0000000140135da6 mov      dword ptr [rsp + 0x20], eax
0000000140135daa call     0x140001bec
0000000140135daf mov      rcx, qword ptr [rip + 0x7ea24a]
0000000140135db6 cmp      rcx, r12
0000000140135db9 je       0x140135e67
0000000140135dbf cmp      byte ptr [rcx + 0x29], sil
0000000140135dc3 jb       0x140135def
0000000140135dc5 mov      eax, dword ptr [rcx + 0x2c]
0000000140135dc8 test     al, 2
0000000140135dca je       0x140135def
0000000140135dcc movzx    eax, byte ptr [rbx + 0xbb99]
0000000140135dd3 lea      r8, [rip + 0x55dc16]
0000000140135dda mov      rcx, qword ptr [rcx + 0x18]
0000000140135dde mov      edx, 0x6a
0000000140135de3 xor      r9d, r9d
0000000140135de6 mov      dword ptr [rsp + 0x20], eax
0000000140135dea call     0x140001bec
0000000140135def mov      rcx, qword ptr [rip + 0x7ea20a]
0000000140135df6 cmp      rcx, r12
0000000140135df9 je       0x140135e67
0000000140135dfb cmp      byte ptr [rcx + 0x29], sil
0000000140135dff jb       0x140135e2b
0000000140135e01 mov      eax, dword ptr [rcx + 0x2c]
0000000140135e04 test     al, 2
0000000140135e06 je       0x140135e2b
0000000140135e08 movzx    eax, byte ptr [rbx + 0xde88]
0000000140135e0f lea      r8, [rip + 0x55dbda]
0000000140135e16 mov      rcx, qword ptr [rcx + 0x18]
0000000140135e1a mov      edx, 0x6b
0000000140135e1f xor      r9d, r9d
0000000140135e22 mov      dword ptr [rsp + 0x20], eax
0000000140135e26 call     0x140001bec
0000000140135e2b mov      rcx, qword ptr [rip + 0x7ea1ce]
0000000140135e32 cmp      rcx, r12
0000000140135e35 je       0x140135e67
0000000140135e37 cmp      byte ptr [rcx + 0x29], sil
0000000140135e3b jb       0x140135e67
0000000140135e3d mov      eax, dword ptr [rcx + 0x2c]
0000000140135e40 test     al, 2
0000000140135e42 je       0x140135e67
0000000140135e44 movzx    eax, byte ptr [rbx + 0xde89]
0000000140135e4b lea      r8, [rip + 0x55db9e]
0000000140135e52 mov      rcx, qword ptr [rcx + 0x18]
0000000140135e56 mov      edx, 0x6c
0000000140135e5b xor      r9d, r9d
0000000140135e5e mov      dword ptr [rsp + 0x20], eax
0000000140135e62 call     0x140001bec
0000000140135e67 mov      r14d, 0xf
0000000140135e6d mov      byte ptr [rbx + 0xbb9a], r14b
0000000140135e74 mov      byte ptr [rbx + 0xde8a], r14b
0000000140135e7b mov      rcx, qword ptr [rip + 0x7ea17e]
0000000140135e82 cmp      rcx, r12
0000000140135e85 je       0x140135eec
0000000140135e87 cmp      byte ptr [rcx + 0x29], sil
0000000140135e8b jb       0x140135eb0
0000000140135e8d mov      eax, dword ptr [rcx + 0x2c]
0000000140135e90 test     al, 2
0000000140135e92 je       0x140135eb0
0000000140135e94 mov      rcx, qword ptr [rcx + 0x18]
0000000140135e98 lea      edx, [r14 + 0x5e]
0000000140135e9c xor      r9d, r9d
0000000140135e9f mov      dword ptr [rsp + 0x20], r14d
0000000140135ea4 lea      r8, [rip + 0x55db45]
0000000140135eab call     0x140001bec
0000000140135eb0 mov      rcx, qword ptr [rip + 0x7ea149]
0000000140135eb7 cmp      rcx, r12
0000000140135eba je       0x140135eec
0000000140135ebc cmp      byte ptr [rcx + 0x29], sil
0000000140135ec0 jb       0x140135eec
0000000140135ec2 mov      eax, dword ptr [rcx + 0x2c]
0000000140135ec5 test     al, 2
0000000140135ec7 je       0x140135eec
0000000140135ec9 movzx    eax, byte ptr [rbx + 0xde8a]
0000000140135ed0 lea      r8, [rip + 0x55db19]
0000000140135ed7 mov      rcx, qword ptr [rcx + 0x18]
0000000140135edb mov      edx, 0x6e
0000000140135ee0 mov      r9d, r13d
0000000140135ee3 mov      dword ptr [rsp + 0x20], eax
0000000140135ee7 call     0x140001bec
0000000140135eec mov      rax, qword ptr [rdi + 0xaf280]
0000000140135ef3 mov      ecx, 6
0000000140135ef8 mov      dl, byte ptr [rax + 0x11ab]
0000000140135efe lea      r9d, [rcx - 1]
0000000140135f02 lea      r10d, [rcx + 1]
0000000140135f06 lea      ebp, [rcx - 4]
0000000140135f09 test     dl, dl
0000000140135f0b jne      0x140135f12
0000000140135f0d mov      r8d, r10d
0000000140135f10 jmp      0x140135f26
0000000140135f12 cmp      dl, r13b
0000000140135f15 jne      0x140135f1c
0000000140135f17 mov      r8d, ecx
0000000140135f1a jmp      0x140135f26
0000000140135f1c cmp      dl, bpl
0000000140135f1f mov      r8d, r14d
0000000140135f22 cmove    r8d, r9d
0000000140135f26 mov      dword ptr [rbx + 0xbbc0], r8d
0000000140135f2d mov      rax, qword ptr [rdi + 0xaf280]
0000000140135f34 mov      dl, byte ptr [rax + 0x11ab]
0000000140135f3a test     dl, dl
0000000140135f3c jne      0x140135f43
0000000140135f3e mov      ecx, r10d
0000000140135f41 jmp      0x140135f52
0000000140135f43 cmp      dl, r13b
0000000140135f46 je       0x140135f52
0000000140135f48 cmp      dl, bpl
0000000140135f4b mov      ecx, r14d
0000000140135f4e cmove    ecx, r9d
0000000140135f52 mov      dword ptr [rbx + 0xdeb0], ecx
0000000140135f58 mov      rcx, qword ptr [rip + 0x7ea0a1]
0000000140135f5f cmp      rcx, r12
0000000140135f62 je       0x140135fcb
0000000140135f64 cmp      byte ptr [rcx + 0x29], sil
0000000140135f68 jb       0x140135f8f
0000000140135f6a mov      eax, dword ptr [rcx + 0x2c]
0000000140135f6d test     bpl, al
0000000140135f70 je       0x140135f8f
0000000140135f72 mov      rcx, qword ptr [rcx + 0x18]
0000000140135f76 mov      edx, 0x6f
0000000140135f7b mov      dword ptr [rsp + 0x20], r8d
0000000140135f80 xor      r9d, r9d
0000000140135f83 lea      r8, [rip + 0x55da66]
0000000140135f8a call     0x140001bec
0000000140135f8f mov      rcx, qword ptr [rip + 0x7ea06a]
0000000140135f96 cmp      rcx, r12
0000000140135f99 je       0x140135fcb
0000000140135f9b cmp      byte ptr [rcx + 0x29], sil
0000000140135f9f jb       0x140135fcb
0000000140135fa1 mov      eax, dword ptr [rcx + 0x2c]
0000000140135fa4 test     bpl, al
0000000140135fa7 je       0x140135fcb
0000000140135fa9 mov      eax, dword ptr [rbx + 0xdeb0]
0000000140135faf lea      r8, [rip + 0x55da3a]
0000000140135fb6 mov      rcx, qword ptr [rcx + 0x18]
0000000140135fba mov      edx, 0x70
0000000140135fbf mov      r9d, r13d
0000000140135fc2 mov      dword ptr [rsp + 0x20], eax
0000000140135fc6 call     0x140001bec
0000000140135fcb mov      rcx, rdi
0000000140135fce call     0x140135064
0000000140135fd3 mov      rax, qword ptr [rdi + 0xaf280]
0000000140135fda lea      r14, [rbx + 0xdf00]
0000000140135fe1 mov      cl, byte ptr [rax + 0x10d0]
0000000140135fe7 mov      byte ptr [r14], cl
0000000140135fea mov      rcx, qword ptr [rip + 0x7ea00f]
0000000140135ff1 cmp      rcx, r12
0000000140135ff4 je       0x140136035
0000000140135ff6 cmp      byte ptr [rcx + 0x29], sil
0000000140135ffa jb       0x140136035
0000000140135ffc mov      eax, dword ptr [rcx + 0x2c]
0000000140135fff lea      r15, [rip + 0x55d9ea]
0000000140136006 test     bpl, al
0000000140136009 je       0x14013603c
000000014013600b mov      rax, qword ptr [rdi + 0xaf280]
0000000140136012 mov      edx, 0x71
0000000140136017 mov      rcx, qword ptr [rcx + 0x18]
000000014013601b xor      r9d, r9d
000000014013601e movzx    r8d, byte ptr [rax + 0x10d1]
0000000140136026 mov      dword ptr [rsp + 0x20], r8d
000000014013602b mov      r8, r15
000000014013602e call     0x140001bec
0000000140136033 jmp      0x14013603c
0000000140136035 lea      r15, [rip + 0x55d9b4]
000000014013603c mov      rax, qword ptr [rdi + 0xaf280]
0000000140136043 mov      cl, byte ptr [rax + 0x10d1]
0000000140136049 mov      byte ptr [rbx + 0xbba8], cl
000000014013604f mov      rcx, qword ptr [rip + 0x7e9faa]
0000000140136056 cmp      rcx, r12
0000000140136059 je       0x140136091
000000014013605b cmp      byte ptr [rcx + 0x29], sil
000000014013605f jb       0x140136091
0000000140136061 mov      eax, dword ptr [rcx + 0x2c]
0000000140136064 test     bpl, al
0000000140136067 je       0x140136091
0000000140136069 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136070 mov      edx, 0x72
0000000140136075 mov      rcx, qword ptr [rcx + 0x18]
0000000140136079 xor      r9d, r9d
000000014013607c movzx    r8d, byte ptr [rax + 0x10d2]
0000000140136084 mov      dword ptr [rsp + 0x20], r8d
0000000140136089 mov      r8, r15
000000014013608c call     0x140001bec
0000000140136091 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136098 mov      cl, byte ptr [rax + 0x10d2]
000000014013609e mov      byte ptr [rbx + 0xbba9], cl
00000001401360a4 mov      rcx, qword ptr [rip + 0x7e9f55]
00000001401360ab cmp      rcx, r12
00000001401360ae je       0x1401360e6
00000001401360b0 cmp      byte ptr [rcx + 0x29], sil
00000001401360b4 jb       0x1401360e6
00000001401360b6 mov      eax, dword ptr [rcx + 0x2c]
00000001401360b9 test     bpl, al
00000001401360bc je       0x1401360e6
00000001401360be mov      rax, qword ptr [rdi + 0xaf280]
00000001401360c5 mov      edx, 0x73
00000001401360ca mov      rcx, qword ptr [rcx + 0x18]
00000001401360ce xor      r9d, r9d
00000001401360d1 movzx    r8d, byte ptr [rax + 0x10d3]
00000001401360d9 mov      dword ptr [rsp + 0x20], r8d
00000001401360de mov      r8, r15
00000001401360e1 call     0x140001bec
00000001401360e6 mov      rax, qword ptr [rdi + 0xaf280]
00000001401360ed movzx    edx, byte ptr [rax + 0x10d3]
00000001401360f4 mov      byte ptr [rbx + 0xbbaa], dl
00000001401360fa cmp      byte ptr [rbx + 0xbba8], dl
0000000140136100 jbe      0x14013613c
0000000140136102 mov      byte ptr [rbx + 0xbba8], dl
0000000140136108 mov      rcx, qword ptr [rip + 0x7e9ef1]
000000014013610f cmp      rcx, r12
0000000140136112 je       0x14013617e
0000000140136114 cmp      byte ptr [rcx + 0x29], sil
0000000140136118 jb       0x14013613c
000000014013611a mov      eax, dword ptr [rcx + 0x2c]
000000014013611d test     bpl, al
0000000140136120 je       0x14013613c
0000000140136122 mov      rcx, qword ptr [rcx + 0x18]
0000000140136126 mov      eax, edx
0000000140136128 mov      edx, 0x74
000000014013612d mov      dword ptr [rsp + 0x20], eax
0000000140136131 xor      r9d, r9d
0000000140136134 mov      r8, r15
0000000140136137 call     0x140001bec
000000014013613c mov      rcx, qword ptr [rip + 0x7e9ebd]
0000000140136143 cmp      rcx, r12
0000000140136146 je       0x14013617e
0000000140136148 cmp      byte ptr [rcx + 0x29], sil
000000014013614c jb       0x14013617e
000000014013614e mov      eax, dword ptr [rcx + 0x2c]
0000000140136151 test     bpl, al
0000000140136154 je       0x14013617e
0000000140136156 mov      rax, qword ptr [rdi + 0xaf280]
000000014013615d mov      edx, 0x75
0000000140136162 mov      rcx, qword ptr [rcx + 0x18]
0000000140136166 xor      r9d, r9d
0000000140136169 movzx    r8d, byte ptr [rax + 0x10d4]
0000000140136171 mov      dword ptr [rsp + 0x20], r8d
0000000140136176 mov      r8, r15
0000000140136179 call     0x140001bec
000000014013617e mov      rax, qword ptr [rdi + 0xaf280]
0000000140136185 movzx    r8d, byte ptr [rax + 0x10d4]
000000014013618d mov      byte ptr [rbx + 0xbbab], r8b
0000000140136194 cmp      byte ptr [rbx + 0xbba9], r8b
000000014013619b jbe      0x1401361d7
000000014013619d mov      byte ptr [rbx + 0xbba9], r8b
00000001401361a4 mov      rcx, qword ptr [rip + 0x7e9e55]
00000001401361ab cmp      rcx, r12
00000001401361ae je       0x140136219
00000001401361b0 cmp      byte ptr [rcx + 0x29], sil
00000001401361b4 jb       0x1401361d7
00000001401361b6 mov      eax, dword ptr [rcx + 0x2c]
00000001401361b9 test     bpl, al
00000001401361bc je       0x1401361d7
00000001401361be mov      rcx, qword ptr [rcx + 0x18]
00000001401361c2 mov      edx, 0x76
00000001401361c7 mov      dword ptr [rsp + 0x20], r8d
00000001401361cc xor      r9d, r9d
00000001401361cf mov      r8, r15
00000001401361d2 call     0x140001bec
00000001401361d7 mov      rcx, qword ptr [rip + 0x7e9e22]
00000001401361de cmp      rcx, r12
00000001401361e1 je       0x140136219
00000001401361e3 cmp      byte ptr [rcx + 0x29], sil
00000001401361e7 jb       0x140136219
00000001401361e9 mov      eax, dword ptr [rcx + 0x2c]
00000001401361ec test     bpl, al
00000001401361ef je       0x140136219
00000001401361f1 mov      rax, qword ptr [rdi + 0xaf280]
00000001401361f8 mov      edx, 0x77
00000001401361fd mov      rcx, qword ptr [rcx + 0x18]
0000000140136201 mov      r9d, r13d
0000000140136204 movzx    r8d, byte ptr [rax + 0x10d5]
000000014013620c mov      dword ptr [rsp + 0x20], r8d
0000000140136211 mov      r8, r15
0000000140136214 call     0x140001bec
0000000140136219 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136220 mov      cl, byte ptr [rax + 0x10d5]
0000000140136226 mov      byte ptr [rbx + 0xde98], cl
000000014013622c mov      rcx, qword ptr [rip + 0x7e9dcd]
0000000140136233 cmp      rcx, r12
0000000140136236 je       0x14013626e
0000000140136238 cmp      byte ptr [rcx + 0x29], sil
000000014013623c jb       0x14013626e
000000014013623e mov      eax, dword ptr [rcx + 0x2c]
0000000140136241 test     bpl, al
0000000140136244 je       0x14013626e
0000000140136246 mov      rax, qword ptr [rdi + 0xaf280]
000000014013624d mov      edx, 0x78
0000000140136252 mov      rcx, qword ptr [rcx + 0x18]
0000000140136256 mov      r9d, r13d
0000000140136259 movzx    r8d, byte ptr [rax + 0x10d6]
0000000140136261 mov      dword ptr [rsp + 0x20], r8d
0000000140136266 mov      r8, r15
0000000140136269 call     0x140001bec
000000014013626e mov      rax, qword ptr [rdi + 0xaf280]
0000000140136275 mov      cl, byte ptr [rax + 0x10d6]
000000014013627b mov      byte ptr [rbx + 0xde99], cl
0000000140136281 mov      rcx, qword ptr [rip + 0x7e9d78]
0000000140136288 cmp      rcx, r12
000000014013628b je       0x1401362c3
000000014013628d cmp      byte ptr [rcx + 0x29], sil
0000000140136291 jb       0x1401362c3
0000000140136293 mov      eax, dword ptr [rcx + 0x2c]
0000000140136296 test     bpl, al
0000000140136299 je       0x1401362c3
000000014013629b mov      rax, qword ptr [rdi + 0xaf280]
00000001401362a2 mov      edx, 0x79
00000001401362a7 mov      rcx, qword ptr [rcx + 0x18]
00000001401362ab mov      r9d, r13d
00000001401362ae movzx    r8d, byte ptr [rax + 0x10d7]
00000001401362b6 mov      dword ptr [rsp + 0x20], r8d
00000001401362bb mov      r8, r15
00000001401362be call     0x140001bec
00000001401362c3 mov      rax, qword ptr [rdi + 0xaf280]
00000001401362ca movzx    edx, byte ptr [rax + 0x10d7]
00000001401362d1 mov      byte ptr [rbx + 0xde9a], dl
00000001401362d7 cmp      byte ptr [rbx + 0xde98], dl
00000001401362dd jbe      0x140136319
00000001401362df mov      byte ptr [rbx + 0xde98], dl
00000001401362e5 mov      rcx, qword ptr [rip + 0x7e9d14]
00000001401362ec cmp      rcx, r12
00000001401362ef je       0x14013635b
00000001401362f1 cmp      byte ptr [rcx + 0x29], sil
00000001401362f5 jb       0x140136319
00000001401362f7 mov      eax, dword ptr [rcx + 0x2c]
00000001401362fa test     bpl, al
00000001401362fd je       0x140136319
00000001401362ff mov      rcx, qword ptr [rcx + 0x18]
0000000140136303 mov      eax, edx
0000000140136305 mov      edx, 0x7a
000000014013630a mov      dword ptr [rsp + 0x20], eax
000000014013630e mov      r9d, r13d
0000000140136311 mov      r8, r15
0000000140136314 call     0x140001bec
0000000140136319 mov      rcx, qword ptr [rip + 0x7e9ce0]
0000000140136320 cmp      rcx, r12
0000000140136323 je       0x14013635b
0000000140136325 cmp      byte ptr [rcx + 0x29], sil
0000000140136329 jb       0x14013635b
000000014013632b mov      eax, dword ptr [rcx + 0x2c]
000000014013632e test     bpl, al
0000000140136331 je       0x14013635b
0000000140136333 mov      rax, qword ptr [rdi + 0xaf280]
000000014013633a mov      edx, 0x7b
000000014013633f mov      rcx, qword ptr [rcx + 0x18]
0000000140136343 mov      r9d, r13d
0000000140136346 movzx    r8d, byte ptr [rax + 0x10d8]
000000014013634e mov      dword ptr [rsp + 0x20], r8d
0000000140136353 mov      r8, r15
0000000140136356 call     0x140001bec
000000014013635b mov      rax, qword ptr [rdi + 0xaf280]
0000000140136362 movzx    edx, byte ptr [rax + 0x10d8]
0000000140136369 mov      byte ptr [rbx + 0xde9b], dl
000000014013636f cmp      byte ptr [rbx + 0xde99], dl
0000000140136375 jbe      0x1401363b1
0000000140136377 mov      byte ptr [rbx + 0xde99], dl
000000014013637d mov      rcx, qword ptr [rip + 0x7e9c7c]
0000000140136384 cmp      rcx, r12
0000000140136387 je       0x1401363b1
0000000140136389 cmp      byte ptr [rcx + 0x29], sil
000000014013638d jb       0x1401363b1
000000014013638f mov      eax, dword ptr [rcx + 0x2c]
0000000140136392 test     bpl, al
0000000140136395 je       0x1401363b1
0000000140136397 mov      rcx, qword ptr [rcx + 0x18]
000000014013639b mov      eax, edx
000000014013639d mov      edx, 0x7c
00000001401363a2 mov      dword ptr [rsp + 0x20], eax
00000001401363a6 mov      r9d, r13d
00000001401363a9 mov      r8, r15
00000001401363ac call     0x140001bec
00000001401363b1 mov      rax, qword ptr [rdi + 0xaf280]
00000001401363b8 lea      rdx, [rbx + 0x96e9]
00000001401363bf mov      r8, rbp
00000001401363c2 mov      r11d, 0xf8
00000001401363c8 mov      ecx, dword ptr [rax + 0x10dc]
00000001401363ce mov      dword ptr [rbx + 0xe03c], ecx
00000001401363d4 mov      rax, qword ptr [rdi + 0xaf280]
00000001401363db movzx    ecx, byte ptr [rax + 0x10e0]
00000001401363e2 mov      dword ptr [rbx + 0xe040], ecx
00000001401363e8 mov      rax, qword ptr [rdi + 0xaf280]
00000001401363ef mov      cl, byte ptr [rax + 0x10e1]
00000001401363f5 mov      byte ptr [rbx + 0xdf34], cl
00000001401363fb mov      rax, qword ptr [rdi + 0xaf280]
0000000140136402 mov      cl, byte ptr [rax + 0x502]
0000000140136408 mov      byte ptr [rbx + 0xdfd8], cl
000000014013640e mov      byte ptr [rbx + 0xdfda], r13b
0000000140136415 mov      rax, qword ptr [rdi + 0xaf280]
000000014013641c mov      cl, byte ptr [rax + 0x12c0]
0000000140136422 mov      byte ptr [rbx + 0xdfdc], cl
0000000140136428 mov      rax, qword ptr [rdi + 0xaf280]
000000014013642f mov      cl, byte ptr [rax + 0x1291]
0000000140136435 and      cl, r13b
0000000140136438 mov      byte ptr [rbx + 0xe013], cl
000000014013643e mov      rax, qword ptr [rdi + 0xaf280]
0000000140136445 mov      cl, byte ptr [rax + 0x1291]
000000014013644b shr      cl, 1
000000014013644d and      cl, r13b
0000000140136450 mov      byte ptr [rbx + 0xdfe8], 0
0000000140136457 mov      byte ptr [rbx + 0xe014], cl
000000014013645d mov      rax, qword ptr [rdi + 0xaf280]
0000000140136464 mov      cl, byte ptr [rax + 0x1120]
000000014013646a mov      al, byte ptr [rdx]
000000014013646c and      al, 0x3f
000000014013646e shl      cl, 6
0000000140136471 or       cl, al
0000000140136473 mov      byte ptr [rdx], cl
0000000140136475 add      rdx, r11
0000000140136478 sub      r8, r13
000000014013647b jne      0x14013645d
000000014013647d lea      r9, [rbx + 0x96ea]
0000000140136484 mov      r10, rbp
0000000140136487 mov      r8, r9
000000014013648a mov      dl, byte ptr [r8]
000000014013648d mov      rax, qword ptr [rdi + 0xaf280]
0000000140136494 mov      cl, dl
0000000140136496 xor      cl, byte ptr [rax + 0x1120]
000000014013649c and      cl, 3
000000014013649f xor      cl, dl
00000001401364a1 mov      byte ptr [r8], cl
00000001401364a4 add      r8, r11
00000001401364a7 sub      r10, r13
00000001401364aa jne      0x14013648a
00000001401364ac mov      rax, qword ptr [rdi + 0xaf280]
00000001401364b3 mov      dl, byte ptr [r9]
00000001401364b6 mov      cl, byte ptr [rax + 0x1120]
00000001401364bc shl      cl, 2
00000001401364bf xor      cl, dl
00000001401364c1 and      cl, 0xc
00000001401364c4 xor      cl, dl
00000001401364c6 mov      dl, byte ptr [rbx + 0x97e2]
00000001401364cc mov      byte ptr [r9], cl
00000001401364cf mov      rax, qword ptr [rdi + 0xaf280]
00000001401364d6 mov      cl, byte ptr [rax + 0x1120]
00000001401364dc shl      cl, 2
00000001401364df xor      cl, dl
00000001401364e1 and      cl, 0xc
00000001401364e4 xor      cl, dl
00000001401364e6 mov      byte ptr [rbx + 0x97e2], cl
00000001401364ec mov      rcx, qword ptr [rip + 0x7e9b0d]
00000001401364f3 cmp      rcx, r12
00000001401364f6 je       0x140136525
00000001401364f8 cmp      byte ptr [rcx + 0x29], sil
00000001401364fc jb       0x140136525
00000001401364fe mov      eax, dword ptr [rcx + 0x2c]
0000000140136501 test     bpl, al
0000000140136504 je       0x140136525
0000000140136506 mov      rax, qword ptr [rdi + 0xaf280]
000000014013650d lea      edx, [r10 + 0x7d]
0000000140136511 mov      rcx, qword ptr [rcx + 0x18]
0000000140136515 mov      r8, r15
0000000140136518 movzx    r9d, byte ptr [rax + 0x1120]
0000000140136520 call     0x140001bb0
0000000140136525 mov      rax, qword ptr [rdi + 0xaf280]
000000014013652c mov      r9b, 0x30
000000014013652f mov      r8b, byte ptr [rax + 0x320]
0000000140136536 mov      al, byte ptr [rbx + 0xbbb0]
000000014013653c mov      dl, al
000000014013653e xor      dl, r8b
0000000140136541 and      dl, r9b
0000000140136544 xor      dl, al
0000000140136546 mov      al, r8b
0000000140136549 mov      cl, dl
000000014013654b xor      cl, r8b
000000014013654e and      cl, 0xc
0000000140136551 xor      cl, dl
0000000140136553 xor      al, cl
0000000140136555 and      al, 3
0000000140136557 xor      al, cl
0000000140136559 mov      cl, r8b
000000014013655c mov      byte ptr [rbx + 0xbbb0], al
0000000140136562 mov      al, byte ptr [rbx + 0xdea0]
0000000140136568 xor      cl, al
000000014013656a and      cl, r9b
000000014013656d xor      cl, al
000000014013656f mov      al, cl
0000000140136571 xor      al, r8b
0000000140136574 and      al, 0xc
0000000140136576 xor      al, cl
0000000140136578 xor      r8b, al
000000014013657b and      r8b, 3
000000014013657f xor      r8b, al
0000000140136582 mov      byte ptr [rbx + 0xdea0], r8b
0000000140136589 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136590 mov      r8b, byte ptr [rax + 0x321]
0000000140136597 mov      al, byte ptr [rbx + 0xbbb1]
000000014013659d mov      dl, r8b
00000001401365a0 mov      cl, al
00000001401365a2 xor      cl, r8b
00000001401365a5 and      cl, r9b
00000001401365a8 xor      cl, al
00000001401365aa mov      al, r8b
00000001401365ad xor      dl, cl
00000001401365af and      dl, 0xc
00000001401365b2 xor      dl, cl
00000001401365b4 mov      cl, r8b
00000001401365b7 xor      al, dl
00000001401365b9 and      al, 3
00000001401365bb xor      al, dl
00000001401365bd lea      rdx, [rbx + 0xbbb2]
00000001401365c4 mov      byte ptr [rbx + 0xbbb1], al
00000001401365ca mov      al, byte ptr [rbx + 0xdea1]
00000001401365d0 xor      cl, al
00000001401365d2 and      cl, r9b
00000001401365d5 xor      cl, al
00000001401365d7 mov      al, r8b
00000001401365da xor      al, cl
00000001401365dc and      al, 0xc
00000001401365de xor      al, cl
00000001401365e0 xor      r8b, al
00000001401365e3 and      r8b, 3
00000001401365e7 xor      r8b, al
00000001401365ea mov      byte ptr [rbx + 0xdea1], r8b
00000001401365f1 mov      r8, rbp
00000001401365f4 mov      rax, qword ptr [rdi + 0xaf280]
00000001401365fb mov      cl, byte ptr [rax + 0x323]
0000000140136601 mov      byte ptr [rdx], cl
0000000140136603 lea      rdx, [rdx + 0x22f0]
000000014013660a sub      r8, r13
000000014013660d jne      0x1401365f4
000000014013660f mov      rax, qword ptr [rdi + 0xaf3b8]
0000000140136616 mov      rcx, qword ptr [rax]
0000000140136619 mov      rsi, qword ptr [rcx + 0x20710]
0000000140136620 mov      rcx, qword ptr [rip + 0x7e99d9]
0000000140136627 cmp      rcx, r12
000000014013662a je       0x1401366a4
000000014013662c cmp      byte ptr [rcx + 0x29], 4
0000000140136630 jb       0x140136662
0000000140136632 mov      eax, dword ptr [rcx + 0x2c]
0000000140136635 test     bpl, al
0000000140136638 je       0x140136662
000000014013663a mov      rax, qword ptr [rdi + 0xaf280]
0000000140136641 mov      edx, 0x10
0000000140136646 mov      rcx, qword ptr [rcx + 0x18]
000000014013664a xor      r9d, r9d
000000014013664d movzx    r8d, word ptr [rax + 0x10ea]
0000000140136655 mov      dword ptr [rsp + 0x20], r8d
000000014013665a mov      r8, r15
000000014013665d call     0x140001bec
0000000140136662 mov      rcx, qword ptr [rip + 0x7e9997]
0000000140136669 cmp      rcx, r12
000000014013666c je       0x1401366a4
000000014013666e cmp      byte ptr [rcx + 0x29], 4
0000000140136672 jb       0x1401366a4
0000000140136674 mov      eax, dword ptr [rcx + 0x2c]
0000000140136677 test     bpl, al
000000014013667a je       0x1401366a4
000000014013667c mov      rax, qword ptr [rdi + 0xaf280]
0000000140136683 mov      edx, 0x11
0000000140136688 mov      rcx, qword ptr [rcx + 0x18]
000000014013668c mov      r9d, r13d
000000014013668f movzx    r8d, word ptr [rax + 0x10ec]
0000000140136697 mov      dword ptr [rsp + 0x20], r8d
000000014013669c mov      r8, r15
000000014013669f call     0x140001bec
00000001401366a4 mov      rcx, qword ptr [rdi + 0xaf280]
00000001401366ab lea      rdx, [rsi + 0x96e4]
00000001401366b2 movzx    ecx, word ptr [rcx + 0x10ea]
00000001401366b9 call     0x140133484
00000001401366be mov      rcx, qword ptr [rdi + 0xaf280]
00000001401366c5 lea      rdx, [rsi + 0x97dc]
00000001401366cc movzx    ecx, word ptr [rcx + 0x10ec]
00000001401366d3 call     0x140133484
00000001401366d8 mov      rax, qword ptr [rdi + 0xaf280]
00000001401366df xor      edx, edx
00000001401366e1 movzx    ecx, word ptr [rax + 0x10ee]
00000001401366e8 mov      word ptr [rsi + 0x96e0], cx
00000001401366ef mov      rcx, rdi
00000001401366f2 call     0x14016f604
00000001401366f7 test     al, al
00000001401366f9 je       0x140136740
00000001401366fb or       byte ptr [rsi + 0x9727], r13b
0000000140136702 mov      eax, 0x88
0000000140136707 or       word ptr [rsi + 0x96e0], ax
000000014013670e or       byte ptr [rsi + 0x9728], 0x20
0000000140136715 mov      rcx, qword ptr [rip + 0x7e98e4]
000000014013671c cmp      rcx, r12
000000014013671f je       0x140136740
0000000140136721 cmp      byte ptr [rcx + 0x29], 4
0000000140136725 jb       0x140136740
0000000140136727 mov      eax, dword ptr [rcx + 0x2c]
000000014013672a test     bpl, al
000000014013672d je       0x140136740
000000014013672f mov      rcx, qword ptr [rcx + 0x18]
0000000140136733 mov      edx, 0x12
0000000140136738 mov      r8, r15
000000014013673b call     0x140001b88
0000000140136740 mov      rax, qword ptr [rdi + 0xaf3b8]
0000000140136747 mov      rcx, qword ptr [rax]
000000014013674a mov      rsi, qword ptr [rcx + 0x20710]
0000000140136751 mov      rcx, qword ptr [rip + 0x7e98a8]
0000000140136758 cmp      rcx, r12
000000014013675b je       0x1401367c5
000000014013675d cmp      byte ptr [rcx + 0x29], 4
0000000140136761 jb       0x14013678b
0000000140136763 mov      eax, dword ptr [rcx + 0x2c]
0000000140136766 test     bpl, al
0000000140136769 je       0x14013678b
000000014013676b mov      rax, qword ptr [rdi + 0xaf280]
0000000140136772 mov      edx, 0x13
0000000140136777 mov      rcx, qword ptr [rcx + 0x18]
000000014013677b mov      r8, r15
000000014013677e movzx    r9d, word ptr [rax + 0x1274]
0000000140136786 call     0x140001bb0
000000014013678b mov      rcx, qword ptr [rip + 0x7e986e]
0000000140136792 cmp      rcx, r12
0000000140136795 je       0x1401367c5
0000000140136797 cmp      byte ptr [rcx + 0x29], 4
000000014013679b jb       0x1401367c5
000000014013679d mov      eax, dword ptr [rcx + 0x2c]
00000001401367a0 test     bpl, al
00000001401367a3 je       0x1401367c5
00000001401367a5 mov      rax, qword ptr [rdi + 0xaf280]
00000001401367ac mov      edx, 0x14
00000001401367b1 mov      rcx, qword ptr [rcx + 0x18]
00000001401367b5 mov      r8, r15
00000001401367b8 movzx    r9d, word ptr [rax + 0x1276]
00000001401367c0 call     0x140001bb0
00000001401367c5 mov      rcx, qword ptr [rdi + 0xaf280]
00000001401367cc lea      rdx, [rsi + 0x96e4]
00000001401367d3 movzx    ecx, word ptr [rcx + 0x1274]
00000001401367da call     0x140133fa8
00000001401367df mov      rcx, qword ptr [rdi + 0xaf280]
00000001401367e6 lea      rdx, [rsi + 0x97dc]
00000001401367ed movzx    ecx, word ptr [rcx + 0x1276]
00000001401367f4 call     0x140133fa8
00000001401367f9 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136800 movzx    ecx, word ptr [rax + 0x1278]
0000000140136807 mov      word ptr [rsi + 0x96e2], cx
000000014013680e mov      rcx, rdi
0000000140136811 call     0x1401340d4
0000000140136816 mov      rcx, rdi
0000000140136819 call     0x140134e68
000000014013681e mov      rax, qword ptr [rdi + 0xaf280]
0000000140136825 xor      esi, esi
0000000140136827 cmp      byte ptr [rax + 0x116e], sil
000000014013682e je       0x140136837
0000000140136830 mov      byte ptr [rbx + 0xdf28], r13b
0000000140136837 mov      rax, qword ptr [rdi + 0xaf280]
000000014013683e mov      ecx, dword ptr [rax + 0x1174]
0000000140136844 mov      dword ptr [rbx + 0xdf2c], ecx
000000014013684a mov      rax, qword ptr [rdi + 0xaf280]
0000000140136851 mov      cl, byte ptr [rax + 0x1178]
0000000140136857 mov      byte ptr [rbx + 0xe078], cl
000000014013685d mov      rax, qword ptr [rdi + 0xaf280]
0000000140136864 cmp      byte ptr [rax + 0x11b3], sil
000000014013686b je       0x1401368e4
000000014013686d mov      byte ptr [rbx + 0xdf31], r13b
0000000140136874 mov      rcx, qword ptr [rip + 0x7e9785]
000000014013687b cmp      rcx, r12
000000014013687e je       0x1401368a2
0000000140136880 cmp      byte ptr [rcx + 0x29], 4
0000000140136884 jb       0x1401368a2
0000000140136886 mov      eax, dword ptr [rcx + 0x2c]
0000000140136889 test     bpl, al
000000014013688c je       0x1401368a2
000000014013688e mov      rcx, qword ptr [rcx + 0x18]
0000000140136892 mov      edx, 0x7e
0000000140136897 mov      r9d, r13d
000000014013689a mov      r8, r15
000000014013689d call     0x140001bb0
00000001401368a2 mov      rax, qword ptr [rdi + 0xaf280]
00000001401368a9 movzx    edx, byte ptr [rax + 0x11b5]
00000001401368b0 mov      byte ptr [rbx + 0xdf36], dl
00000001401368b6 mov      rcx, qword ptr [rip + 0x7e9743]
00000001401368bd cmp      rcx, r12
00000001401368c0 je       0x1401368e4
00000001401368c2 cmp      byte ptr [rcx + 0x29], 4
00000001401368c6 jb       0x1401368e4
00000001401368c8 mov      eax, dword ptr [rcx + 0x2c]
00000001401368cb test     bpl, al
00000001401368ce je       0x1401368e4
00000001401368d0 mov      rcx, qword ptr [rcx + 0x18]
00000001401368d4 mov      r9d, edx
00000001401368d7 mov      edx, 0x7f
00000001401368dc mov      r8, r15
00000001401368df call     0x140001bb0
00000001401368e4 mov      rax, qword ptr [rdi + 0xaf280]
00000001401368eb mov      cl, byte ptr [rax + 0x117c]
00000001401368f1 test     cl, cl
00000001401368f3 je       0x1401368fb
00000001401368f5 mov      byte ptr [rbx + 0xdf3a], cl
00000001401368fb mov      rax, qword ptr [rdi + 0xaf280]
0000000140136902 mov      rcx, rbx
0000000140136905 mov      dl, byte ptr [rax + 0x117d]
000000014013690b mov      r9b, dl
000000014013690e mov      r8b, dl
0000000140136911 shr      r9b, 2
0000000140136915 and      dl, r13b
0000000140136918 shr      r8b, 1
000000014013691b and      r9b, 7
000000014013691f and      r8b, r13b
0000000140136922 call     0x1401abf24
0000000140136927 mov      rax, qword ptr [rdi + 0xaf280]
000000014013692e mov      rdx, r14
0000000140136931 mov      ecx, dword ptr [rax + 0x126c]
0000000140136937 mov      dword ptr [rbx + 0xdff4], ecx
000000014013693d mov      rcx, rdi
0000000140136940 call     0x140134058
0000000140136945 mov      rcx, qword ptr [rdi + 0xaf280]
000000014013694c lea      rdx, [rbx + 0xdf9c]
0000000140136953 movzx    ecx, word ptr [rcx + 0x117a]
000000014013695a call     0x140133f10
000000014013695f mov      rax, qword ptr [rdi + 0xaf280]
0000000140136966 mov      cl, byte ptr [rax + 0x11b1]
000000014013696c mov      byte ptr [rbx + 0xdfe6], cl
0000000140136972 cmp      cl, bpl
0000000140136975 jne      0x14013697e
0000000140136977 mov      byte ptr [rbx + 0xdfe7], bpl
000000014013697e xor      edx, edx
0000000140136980 mov      rcx, rdi
0000000140136983 call     0x14016f604
0000000140136988 test     al, al
000000014013698a je       0x1401369c0
000000014013698c mov      word ptr [rbx + 0xdfe6], 0x202
0000000140136995 mov      rcx, qword ptr [rip + 0x7e9664]
000000014013699c cmp      rcx, r12
000000014013699f je       0x1401369c0
00000001401369a1 cmp      byte ptr [rcx + 0x29], 4
00000001401369a5 jb       0x1401369c0
00000001401369a7 mov      eax, dword ptr [rcx + 0x2c]
00000001401369aa test     bpl, al
00000001401369ad je       0x1401369c0
00000001401369af mov      rcx, qword ptr [rcx + 0x18]
00000001401369b3 mov      edx, 0x80
00000001401369b8 mov      r8, r15
00000001401369bb call     0x140001b88
00000001401369c0 mov      rax, qword ptr [rdi + 0xaf280]
00000001401369c7 test     byte ptr [rax + 0x8a2], r13b
00000001401369ce je       0x1401369ee
00000001401369d0 mov      byte ptr [rbx + 0xe044], r13b
00000001401369d7 mov      rax, qword ptr [rdi + 0xaf280]
00000001401369de test     byte ptr [rax + 0x8a2], bpl
00000001401369e5 je       0x1401369ee
00000001401369e7 mov      byte ptr [rbx + 0xe045], r13b
00000001401369ee mov      rax, qword ptr [rdi + 0xaf280]
00000001401369f5 mov      rdx, rsi
00000001401369f8 mov      cl, byte ptr [rax + 0x128e]
00000001401369fe mov      byte ptr [rbx + 0xdf03], cl
0000000140136a04 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136a0b mov      cl, byte ptr [rax + rdx + 0x127b]
0000000140136a12 mov      byte ptr [rbx + rdx + 0xe011], cl
0000000140136a19 add      rdx, r13
0000000140136a1c cmp      rdx, rbp
0000000140136a1f jl       0x140136a04
0000000140136a21 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136a28 cmp      byte ptr [rax + 0x10c1], sil
0000000140136a2f je       0x140136a53
0000000140136a31 mov      al, byte ptr [rax + 0x5c]
0000000140136a34 mov      byte ptr [rbx + 0xe01c], al
0000000140136a3a mov      dword ptr [rbx + 0xe018], esi
0000000140136a40 mov      qword ptr [rbx + 0xe020], rsi
0000000140136a47 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136a4e mov      cl, byte ptr [rax + 0x5c]
0000000140136a51 jmp      0x140136a74
0000000140136a53 mov      al, byte ptr [rax + 0x60]
0000000140136a56 mov      byte ptr [rbx + 0xe01c], al
0000000140136a5c mov      dword ptr [rbx + 0xe018], r13d
0000000140136a63 mov      qword ptr [rbx + 0xe020], rsi
0000000140136a6a mov      rax, qword ptr [rdi + 0xaf280]
0000000140136a71 mov      cl, byte ptr [rax + 0x60]
0000000140136a74 mov      byte ptr [rbx + 0xe028], cl
0000000140136a7a mov      rax, qword ptr [rdi + 0xaf280]
0000000140136a81 mov      cl, byte ptr [rax + 0x322]
0000000140136a87 mov      byte ptr [rbx + 0xf4ec], cl
0000000140136a8d mov      rax, qword ptr [rdi + 0xaf280]
0000000140136a94 mov      cl, byte ptr [rax + 0x1121]
0000000140136a9a mov      byte ptr [rbx + 0xf4ed], cl
0000000140136aa0 mov      rax, qword ptr [rdi + 0xaf280]
0000000140136aa7 cmp      dword ptr [rax + 0x1280], esi
0000000140136aad je       0x140136ab6
0000000140136aaf mov      byte ptr [rbx + 0xe046], r13b
0000000140136ab6 mov      rcx, rdi
0000000140136ab9 call     0x140133338
0000000140136abe mov      rax, qword ptr [rdi + 0xaf280]
0000000140136ac5 movsx    edx, byte ptr [rax + 0x12df]
0000000140136acc mov      byte ptr [rbx + 0xe051], dl
0000000140136ad2 mov      rcx, qword ptr [rip + 0x7e9527]
0000000140136ad9 cmp      rcx, r12
0000000140136adc je       0x140136b0a
0000000140136ade cmp      byte ptr [rcx + 0x29], 4
0000000140136ae2 jb       0x140136b0a
0000000140136ae4 mov      eax, dword ptr [rcx + 0x2c]
0000000140136ae7 test     bpl, al
0000000140136aea je       0x140136b0a
0000000140136aec mov      rcx, qword ptr [rcx + 0x18]
0000000140136af0 lea      r9, [rip + 0x4cf8d9]
0000000140136af7 mov      eax, edx
0000000140136af9 mov      r8, r15
0000000140136afc mov      edx, 0x81
0000000140136b01 mov      dword ptr [rsp + 0x20], eax
0000000140136b05 call     0x1400088d8
0000000140136b0a mov      byte ptr [rbx + 0xe050], r13b
0000000140136b11 mov      rbx, qword ptr [rsp + 0x88]
0000000140136b19 add      rsp, 0x30
0000000140136b1d pop      r15
0000000140136b1f pop      r14
0000000140136b21 pop      r13
0000000140136b23 pop      r12
0000000140136b25 pop      rdi
0000000140136b26 pop      rsi
0000000140136b27 pop      rbp
0000000140136b28 ret      