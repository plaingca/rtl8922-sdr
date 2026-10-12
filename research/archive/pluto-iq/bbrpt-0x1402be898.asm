00000001402be898 mov      qword ptr [rsp + 0x18], rbx
00000001402be89d push     rbp
00000001402be89e push     rsi
00000001402be89f push     rdi
00000001402be8a0 push     r12
00000001402be8a2 push     r13
00000001402be8a4 push     r14
00000001402be8a6 push     r15
00000001402be8a8 sub      rsp, 0x40
00000001402be8ac mov      r15, qword ptr [rdx]
00000001402be8af mov      rsi, rdx
00000001402be8b2 mov      r13, qword ptr [rcx]
00000001402be8b5 mov      r14, rcx
00000001402be8b8 xor      r12d, r12d
00000001402be8bb mov      rdx, qword ptr [r15 + 0x18]
00000001402be8bf mov      rcx, qword ptr [r13 + 0x10328]
00000001402be8c6 movzx    ebp, byte ptr [rsi + 0x1c]
00000001402be8ca movzx    ebx, byte ptr [rdx + 0x19]
00000001402be8ce call     0x1401b7324
00000001402be8d3 mov      rdi, qword ptr [r13 + 0xf570]
00000001402be8da mov      qword ptr [rsp + 0x88], rax
00000001402be8e2 test     bl, bl
00000001402be8e4 je       0x1402be8ed
00000001402be8e6 cmp      ebx, 1
00000001402be8e9 jne      0x1402be8ed
00000001402be8eb jmp      0x1402be8ef
00000001402be8ed xor      ebx, ebx
00000001402be8ef mov      rcx, qword ptr [rip + 0x66170a]
00000001402be8f6 lea      rax, [rip + 0x661703]
00000001402be8fd lea      r9, [rip + 0x366dac]
00000001402be904 cmp      rcx, rax
00000001402be907 je       0x1402be95a
00000001402be909 cmp      byte ptr [rcx + 0x169], 4
00000001402be910 jb       0x1402be95a
00000001402be912 mov      eax, dword ptr [rcx + 0x16c]
00000001402be918 test     al, 1
00000001402be91a je       0x1402be953
00000001402be91c movzx    eax, byte ptr [rdi + 0x58]
00000001402be920 lea      r8, [rip + 0x3daac1]
00000001402be927 mov      rcx, qword ptr [rcx + 0x158]
00000001402be92e mov      edx, 0xe
00000001402be933 mov      dword ptr [rsp + 0x38], eax
00000001402be937 mov      eax, dword ptr [rsi + 0x28]
00000001402be93a mov      dword ptr [rsp + 0x30], eax
00000001402be93e mov      dword ptr [rsp + 0x28], ebp
00000001402be942 mov      qword ptr [rsp + 0x20], r9
00000001402be947 lea      r9, [rip + 0x34fa42]
00000001402be94e call     0x1400328d4
00000001402be953 lea      rax, [rip + 0x6616a6]
00000001402be95a movzx    edx, byte ptr [rdi + 0x58]
00000001402be95e cmp      bpl, 1
00000001402be962 jne      0x1402beb9a
00000001402be968 test     dl, dl
00000001402be96a jne      0x1402beae4
00000001402be970 mov      eax, dword ptr [rsi + 0x28]
00000001402be973 cmp      eax, 2
00000001402be976 jne      0x1402bea58
00000001402be97c mov      r8, qword ptr [rsi]
00000001402be97f lea      rax, [rsp + 0x80]
00000001402be987 mov      r9d, dword ptr [r15 + 0xa48]
00000001402be98e mov      edx, ebx
00000001402be990 mov      byte ptr [rsp + 0x80], r12b
00000001402be998 mov      rcx, r14
00000001402be99b mov      qword ptr [rsp + 0x20], rax
00000001402be9a0 mov      r8d, dword ptr [r8 + 0x50]
00000001402be9a4 call     0x14026a168
00000001402be9a9 mov      r12d, eax
00000001402be9ac test     eax, eax
00000001402be9ae je       0x1402bea17
00000001402be9b0 mov      rcx, qword ptr [rip + 0x661649]
00000001402be9b7 lea      rbp, [rip + 0x661642]
00000001402be9be cmp      rcx, rbp
00000001402be9c1 je       0x1402bed62
00000001402be9c7 cmp      byte ptr [rcx + 0x169], 2
00000001402be9ce jb       0x1402bed62
00000001402be9d4 mov      edx, dword ptr [rcx + 0x16c]
00000001402be9da test     dl, 1
00000001402be9dd je       0x1402bed62
00000001402be9e3 mov      rcx, qword ptr [rcx + 0x158]
00000001402be9ea lea      r9, [rip + 0x34f99f]
00000001402be9f1 mov      dword ptr [rsp + 0x28], eax
00000001402be9f5 lea      r8, [rip + 0x3da9ec]
00000001402be9fc lea      rax, [rip + 0x366cad]
00000001402bea03 mov      edx, 0xf
00000001402bea08 mov      qword ptr [rsp + 0x20], rax
00000001402bea0d call     0x14003ca14
00000001402bea12 jmp      0x1402bed62
00000001402bea17 cmp      byte ptr [rsp + 0x80], 1
00000001402bea1f jne      0x1402bea27
00000001402bea21 and      dword ptr [rsi + 0x28], 0
00000001402bea25 jmp      0x1402bea5c
00000001402bea27 mov      dword ptr [rsi + 0x28], 1
00000001402bea2e mov      r8d, ebx
00000001402bea31 mov      dl, 1
00000001402bea33 mov      rcx, r14
00000001402bea36 call     0x14026a468
00000001402bea3b lea      rbp, [rip + 0x6615be]
00000001402bea42 mov      r8d, 0x48
00000001402bea48 mov      rdx, rsi
00000001402bea4b mov      rcx, rdi
00000001402bea4e call     0x1400311e8
00000001402bea53 jmp      0x1402beaeb
00000001402bea58 test     eax, eax
00000001402bea5a jne      0x1402bea2e
00000001402bea5c mov      r8d, dword ptr [rsi + 0xc]
00000001402bea60 test     r8d, r8d
00000001402bea63 jne      0x1402bea88
00000001402bea65 mov      byte ptr [rsp + 0x28], 1
00000001402bea6a mov      eax, dword ptr [r15 + 0xa48]
00000001402bea71 mov      r9b, bl
00000001402bea74 mov      r8d, dword ptr [rsi + 0x2c]
00000001402bea78 mov      dl, 1
00000001402bea7a mov      rcx, r14
00000001402bea7d mov      dword ptr [rsp + 0x20], eax
00000001402bea81 call     0x14026a3c0
00000001402bea86 jmp      0x1402bea3b
00000001402bea88 cmp      r8d, 1
00000001402bea8c jne      0x1402bea95
00000001402bea8e mov      byte ptr [rsp + 0x28], 0
00000001402bea93 jmp      0x1402bea6a
00000001402bea95 mov      rcx, qword ptr [rip + 0x661564]
00000001402bea9c lea      rbp, [rip + 0x66155d]
00000001402beaa3 cmp      rcx, rbp
00000001402beaa6 je       0x1402bea42
00000001402beaa8 cmp      byte ptr [rcx + 0x169], 2
00000001402beaaf jb       0x1402bea42
00000001402beab1 mov      eax, dword ptr [rcx + 0x16c]
00000001402beab7 test     al, 1
00000001402beab9 je       0x1402bea42
00000001402beabb mov      rcx, qword ptr [rcx + 0x158]
00000001402beac2 lea      r9, [rip + 0x34f8c7]
00000001402beac9 mov      dword ptr [rsp + 0x20], r8d
00000001402beace mov      edx, 0x10
00000001402bead3 lea      r8, [rip + 0x3da90e]
00000001402beada call     0x1400088d8
00000001402beadf jmp      0x1402bea42
00000001402beae4 lea      rbp, [rip + 0x661515]
00000001402beaeb mov      r9d, dword ptr [rdi + 0xc]
00000001402beaef test     r9d, r9d
00000001402beaf2 jne      0x1402beb02
00000001402beaf4 mov      rbx, qword ptr [rsp + 0x88]
00000001402beafc movzx    ebx, word ptr [rbx + 0x2c]
00000001402beb00 jmp      0x1402beb07
00000001402beb02 movzx    ebx, word ptr [r15 + 0x2c]
00000001402beb07 mov      rax, qword ptr [r13 + 0xf570]
00000001402beb0e cmp      dword ptr [rax + 0x28], 1
00000001402beb12 jne      0x1402beb31
00000001402beb14 mov      al, byte ptr [rsi + 0x36]
00000001402beb17 movzx    r8d, bx
00000001402beb1b mov      byte ptr [rsp + 0x28], al
00000001402beb1f mov      dl, 1
00000001402beb21 mov      rcx, r14
00000001402beb24 mov      byte ptr [rsp + 0x20], 0
00000001402beb29 call     0x140278eb0
00000001402beb2e mov      r12d, eax
00000001402beb31 movzx    edx, bx
00000001402beb34 movzx    eax, bx
00000001402beb37 shr      dx, 3
00000001402beb3b and      eax, 7
00000001402beb3e movzx    r8d, dl
00000001402beb42 movzx    ecx, byte ptr [r8 + rdi + 0x48]
00000001402beb48 bts      ecx, eax
00000001402beb4b mov      byte ptr [r8 + rdi + 0x48], cl
00000001402beb50 mov      r9b, byte ptr [rdi + 0x58]
00000001402beb54 inc      r9b
00000001402beb57 mov      byte ptr [rdi + 0x58], r9b
00000001402beb5b mov      rcx, qword ptr [rip + 0x66149e]
00000001402beb62 cmp      rcx, rbp
00000001402beb65 je       0x1402bed62
00000001402beb6b cmp      byte ptr [rcx + 0x169], 4
00000001402beb72 jb       0x1402bed62
00000001402beb78 mov      eax, dword ptr [rcx + 0x16c]
00000001402beb7e test     al, 1
00000001402beb80 je       0x1402bed62
00000001402beb86 movzx    eax, byte ptr [r8 + rdi + 0x48]
00000001402beb8c movzx    r8d, dl
00000001402beb90 mov      edx, 0x11
00000001402beb95 jmp      0x1402bed36
00000001402beb9a test     dl, dl
00000001402beb9c jne      0x1402bebf3
00000001402beb9e mov      rcx, qword ptr [rip + 0x66145b]
00000001402beba5 cmp      rcx, rax
00000001402beba8 je       0x1402bed62
00000001402bebae cmp      byte ptr [rcx + 0x169], 2
00000001402bebb5 jb       0x1402bed62
00000001402bebbb mov      eax, dword ptr [rcx + 0x16c]
00000001402bebc1 test     al, 1
00000001402bebc3 je       0x1402bed62
00000001402bebc9 mov      rcx, qword ptr [rcx + 0x158]
00000001402bebd0 lea      r9, [rip + 0x34f7b9]
00000001402bebd7 mov      eax, edx
00000001402bebd9 lea      r8, [rip + 0x3da808]
00000001402bebe0 mov      edx, 0x12
00000001402bebe5 mov      dword ptr [rsp + 0x20], eax
00000001402bebe9 call     0x1400088d8
00000001402bebee jmp      0x1402bed62
00000001402bebf3 cmp      dl, 1
00000001402bebf6 jne      0x1402bec92
00000001402bebfc cmp      dword ptr [rdi + 0x28], r12d
00000001402bec00 jne      0x1402bec80
00000001402bec02 mov      r8d, dword ptr [rdi + 0xc]
00000001402bec06 test     r8d, r8d
00000001402bec09 jne      0x1402bec11
00000001402bec0b mov      byte ptr [rsp + 0x28], dl
00000001402bec0f jmp      0x1402bec1c
00000001402bec11 cmp      r8d, 1
00000001402bec15 jne      0x1402bec3b
00000001402bec17 mov      byte ptr [rsp + 0x28], r12b
00000001402bec1c mov      eax, dword ptr [r15 + 0xa48]
00000001402bec23 mov      r9b, bl
00000001402bec26 mov      r8d, dword ptr [rsi + 0x2c]
00000001402bec2a mov      dl, bpl
00000001402bec2d mov      rcx, r14
00000001402bec30 mov      dword ptr [rsp + 0x20], eax
00000001402bec34 call     0x14026a3c0
00000001402bec39 jmp      0x1402bec8e
00000001402bec3b mov      rcx, qword ptr [rip + 0x6613be]
00000001402bec42 cmp      rcx, rax
00000001402bec45 je       0x1402bec8e
00000001402bec47 cmp      byte ptr [rcx + 0x169], 2
00000001402bec4e jb       0x1402bec8e
00000001402bec50 mov      eax, dword ptr [rcx + 0x16c]
00000001402bec56 test     al, 1
00000001402bec58 je       0x1402bec8e
00000001402bec5a mov      rcx, qword ptr [rcx + 0x158]
00000001402bec61 lea      r9, [rip + 0x34f728]
00000001402bec68 mov      dword ptr [rsp + 0x20], r8d
00000001402bec6d mov      edx, 0x13
00000001402bec72 lea      r8, [rip + 0x3da76f]
00000001402bec79 call     0x1400088d8
00000001402bec7e jmp      0x1402bec8e
00000001402bec80 mov      r8d, ebx
00000001402bec83 mov      dl, bpl
00000001402bec86 mov      rcx, r14
00000001402bec89 call     0x14026a468
00000001402bec8e mov      byte ptr [rdi + 0x1c], r12b
00000001402bec92 mov      r9d, dword ptr [rdi + 0xc]
00000001402bec96 test     r9d, r9d
00000001402bec99 jne      0x1402beca9
00000001402bec9b mov      rbx, qword ptr [rsp + 0x88]
00000001402beca3 movzx    ebx, word ptr [rbx + 0x2c]
00000001402beca7 jmp      0x1402becae
00000001402beca9 movzx    ebx, word ptr [r15 + 0x2c]
00000001402becae mov      rax, qword ptr [r13 + 0xf570]
00000001402becb5 cmp      dword ptr [rax + 0x28], 1
00000001402becb9 jne      0x1402becd7
00000001402becbb mov      byte ptr [rsp + 0x28], r12b
00000001402becc0 movzx    r8d, bx
00000001402becc4 mov      dl, bpl
00000001402becc7 mov      byte ptr [rsp + 0x20], r12b
00000001402beccc mov      rcx, r14
00000001402beccf call     0x140278eb0
00000001402becd4 mov      r12d, eax
00000001402becd7 movzx    edx, bx
00000001402becda movzx    eax, bx
00000001402becdd shr      dx, 3
00000001402bece1 and      eax, 7
00000001402bece4 movzx    r8d, dl
00000001402bece8 movzx    ecx, byte ptr [r8 + rdi + 0x48]
00000001402becee btr      ecx, eax
00000001402becf1 mov      byte ptr [r8 + rdi + 0x48], cl
00000001402becf6 mov      r9b, byte ptr [rdi + 0x58]
00000001402becfa dec      r9b
00000001402becfd mov      byte ptr [rdi + 0x58], r9b
00000001402bed01 mov      rcx, qword ptr [rip + 0x6612f8]
00000001402bed08 lea      rbp, [rip + 0x6612f1]
00000001402bed0f cmp      rcx, rbp
00000001402bed12 je       0x1402bed62
00000001402bed14 cmp      byte ptr [rcx + 0x169], 4
00000001402bed1b jb       0x1402bed62
00000001402bed1d mov      eax, dword ptr [rcx + 0x16c]
00000001402bed23 test     al, 1
00000001402bed25 je       0x1402bed62
00000001402bed27 movzx    eax, byte ptr [r8 + rdi + 0x48]
00000001402bed2d movzx    r8d, dl
00000001402bed31 mov      edx, 0x14
00000001402bed36 mov      rcx, qword ptr [rcx + 0x158]
00000001402bed3d mov      dword ptr [rsp + 0x30], eax
00000001402bed41 movzx    r9d, r9b
00000001402bed45 mov      dword ptr [rsp + 0x28], r8d
00000001402bed4a lea      r8, [rip + 0x3da697]
00000001402bed51 mov      dword ptr [rsp + 0x20], r9d
00000001402bed56 lea      r9, [rip + 0x34f633]
00000001402bed5d call     0x14001c670
00000001402bed62 mov      rbx, qword ptr [rsp + 0x90]
00000001402bed6a mov      eax, r12d
00000001402bed6d add      rsp, 0x40
00000001402bed71 pop      r15
00000001402bed73 pop      r14
00000001402bed75 pop      r13
00000001402bed77 pop      r12
00000001402bed79 pop      rdi
00000001402bed7a pop      rsi
00000001402bed7b pop      rbp
00000001402bed7c ret      