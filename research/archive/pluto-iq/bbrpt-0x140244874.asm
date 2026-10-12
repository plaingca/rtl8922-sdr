0000000140244874 mov      word ptr [rsp + 0x20], r9w
000000014024487a mov      byte ptr [rsp + 0x18], r8b
000000014024487f mov      qword ptr [rsp + 8], rcx
0000000140244884 push     rbx
0000000140244885 push     rbp
0000000140244886 push     rsi
0000000140244887 push     rdi
0000000140244888 push     r12
000000014024488a push     r13
000000014024488c push     r14
000000014024488e push     r15
0000000140244890 sub      rsp, 0x88
0000000140244897 mov      rax, qword ptr [rcx]
000000014024489a mov      r15, rcx
000000014024489d mov      rbx, qword ptr [rcx + 8]
00000001402448a1 mov      r13, rdx
00000001402448a4 movzx    r14d, word ptr [rsp + 0x100]
00000001402448ad mov      r12d, 1
00000001402448b3 mov      bpl, byte ptr [rax + 0x96de]
00000001402448ba mov      rax, qword ptr [rdx + 0x18]
00000001402448be mov      r11b, byte ptr [rax + 0x19]
00000001402448c2 mov      rax, qword ptr [rdx + 0x20]
00000001402448c6 mov      byte ptr [rsp + 0xd8], r11b
00000001402448ce mov      r10d, dword ptr [rax + 0x24]
00000001402448d2 sub      r10d, 2
00000001402448d6 cmp      r10d, 4
00000001402448da setbe    cl
00000001402448dd xor      r10d, r10d
00000001402448e0 mov      byte ptr [rsp + 0x70], cl
00000001402448e4 mov      dil, r10b
00000001402448e7 test     bpl, bpl
00000001402448ea je       0x14024491f
00000001402448ec movzx    eax, dil
00000001402448f0 cmp      byte ptr [rax + rbx + 0x15be], r10b
00000001402448f8 je       0x140244917
00000001402448fa movzx    edx, word ptr [r13 + 0x2c]
00000001402448ff cmp      dx, word ptr [rbx + rax*2 + 0x16be]
0000000140244907 jne      0x140244917
0000000140244909 cmp      r14b, byte ptr [rax + rbx + 0x163e]
0000000140244911 je       0x1402449a3
0000000140244917 inc      dil
000000014024491a cmp      dil, bpl
000000014024491d jb       0x1402448ec
000000014024491f lea      rsi, [rip + 0x6db6da]
0000000140244926 cmp      byte ptr [rbx + 0x17be], bpl
000000014024492d jne      0x140244bb3
0000000140244933 test     r14w, r14w
0000000140244937 je       0x140244a7c
000000014024493d cmp      r14d, 5
0000000140244941 je       0x140244a7c
0000000140244947 mov      rcx, qword ptr [rip + 0x6db6b2]
000000014024494e lea      rsi, [rip + 0x6db6ab]
0000000140244955 cmp      rcx, rsi
0000000140244958 je       0x140244ca5
000000014024495e cmp      byte ptr [rcx + 0x169], 4
0000000140244965 jb       0x140244ca5
000000014024496b mov      eax, dword ptr [rcx + 0x16c]
0000000140244971 test     r12b, al
0000000140244974 je       0x140244ca5
000000014024497a mov      edx, 0x16
000000014024497f mov      dword ptr [rsp + 0x20], r14d
0000000140244984 mov      rcx, qword ptr [rcx + 0x158]
000000014024498b lea      r9, [rip + 0x3c99fe]
0000000140244992 lea      r8, [rip + 0x454117]
0000000140244999 call     0x1400088d8
000000014024499e jmp      0x140244ca5
00000001402449a3 mov      rcx, qword ptr [rip + 0x6db656]
00000001402449aa lea      rsi, [rip + 0x6db64f]
00000001402449b1 cmp      rcx, rsi
00000001402449b4 je       0x140244a12
00000001402449b6 cmp      byte ptr [rcx + 0x169], 4
00000001402449bd jb       0x140244a12
00000001402449bf mov      eax, dword ptr [rcx + 0x16c]
00000001402449c5 test     r12b, al
00000001402449c8 je       0x140244a12
00000001402449ca mov      rcx, qword ptr [rcx + 0x158]
00000001402449d1 lea      r9, [rip + 0x3c99b8]
00000001402449d8 mov      r8d, edx
00000001402449db mov      dword ptr [rsp + 0x28], r14d
00000001402449e0 mov      dword ptr [rsp + 0x20], r8d
00000001402449e5 mov      edx, 0x14
00000001402449ea lea      r8, [rip + 0x4540bf]
00000001402449f1 call     0x140002b04
00000001402449f6 movzx    r9d, word ptr [rsp + 0xe8]
00000001402449ff xor      r10d, r10d
0000000140244a02 mov      r8b, byte ptr [rsp + 0xe0]
0000000140244a0a mov      r11b, byte ptr [rsp + 0xd8]
0000000140244a12 mov      al, byte ptr [rsp + 0x70]
0000000140244a16 mov      dl, r12b
0000000140244a19 mov      byte ptr [rsp + 0x68], al
0000000140244a1d mov      rcx, r15
0000000140244a20 movzx    eax, word ptr [rsp + 0x108]
0000000140244a28 mov      byte ptr [rsp + 0x60], r12b
0000000140244a2d mov      byte ptr [rsp + 0x58], r10b
0000000140244a32 mov      byte ptr [rsp + 0x50], r11b
0000000140244a37 mov      byte ptr [rsp + 0x48], dil
0000000140244a3c mov      word ptr [rsp + 0x40], ax
0000000140244a41 movzx    eax, word ptr [rsp + 0xf8]
0000000140244a49 mov      word ptr [rsp + 0x38], r14w
0000000140244a4f mov      word ptr [rsp + 0x30], ax
0000000140244a54 movzx    eax, word ptr [rsp + 0xf0]
0000000140244a5c mov      word ptr [rsp + 0x28], ax
0000000140244a61 mov      word ptr [rsp + 0x20], r9w
0000000140244a67 mov      r9b, r8b
0000000140244a6a movzx    r8d, word ptr [r13 + 0x2c]
0000000140244a6f call     0x140242ef8
0000000140244a74 mov      r12d, eax
0000000140244a77 jmp      0x140244ca5
0000000140244a7c mov      dil, r10b
0000000140244a7f test     bpl, bpl
0000000140244a82 je       0x140244bb3
0000000140244a88 movzx    r15d, dil
0000000140244a8c movzx    edx, byte ptr [r15 + rbx + 0x163e]
0000000140244a95 test     dl, dl
0000000140244a97 je       0x140244b5d
0000000140244a9d cmp      dl, 5
0000000140244aa0 je       0x140244b5d
0000000140244aa6 mov      rcx, qword ptr [rip + 0x6db553]
0000000140244aad cmp      rcx, rsi
0000000140244ab0 je       0x140244b04
0000000140244ab2 cmp      byte ptr [rcx + 0x169], 4
0000000140244ab9 jb       0x140244b04
0000000140244abb mov      eax, dword ptr [rcx + 0x16c]
0000000140244ac1 test     al, 1
0000000140244ac3 je       0x140244b04
0000000140244ac5 movzx    r8d, word ptr [rbx + r15*2 + 0x16be]
0000000140244ace mov      eax, edx
0000000140244ad0 mov      rcx, qword ptr [rcx + 0x158]
0000000140244ad7 mov      edx, 0x15
0000000140244adc mov      dword ptr [rsp + 0x30], eax
0000000140244ae0 mov      dword ptr [rsp + 0x28], r8d
0000000140244ae5 lea      r8, [rip + 0x453fc4]
0000000140244aec movzx    r9d, dil
0000000140244af0 mov      dword ptr [rsp + 0x20], r9d
0000000140244af5 lea      r9, [rip + 0x3c9894]
0000000140244afc call     0x14001c670
0000000140244b01 xor      r10d, r10d
0000000140244b04 mov      al, byte ptr [rsp + 0x70]
0000000140244b08 xor      r8d, r8d
0000000140244b0b mov      rcx, qword ptr [rsp + 0xd0]
0000000140244b13 xor      r9d, r9d
0000000140244b16 mov      byte ptr [rsp + 0x68], al
0000000140244b1a xor      edx, edx
0000000140244b1c mov      byte ptr [rsp + 0x60], r10b
0000000140244b21 mov      byte ptr [rsp + 0x58], r10b
0000000140244b26 mov      byte ptr [rsp + 0x50], r10b
0000000140244b2b mov      byte ptr [rsp + 0x48], dil
0000000140244b30 mov      word ptr [rsp + 0x40], r10w
0000000140244b36 mov      word ptr [rsp + 0x38], r10w
0000000140244b3c mov      word ptr [rsp + 0x30], r10w
0000000140244b42 mov      word ptr [rsp + 0x28], r10w
0000000140244b48 mov      word ptr [rsp + 0x20], r10w
0000000140244b4e call     0x140242ef8
0000000140244b53 xor      r10d, r10d
0000000140244b56 mov      r12d, eax
0000000140244b59 test     eax, eax
0000000140244b5b je       0x140244b6b
0000000140244b5d inc      dil
0000000140244b60 cmp      dil, bpl
0000000140244b63 jb       0x140244a88
0000000140244b69 jmp      0x140244b8d
0000000140244b6b mov      byte ptr [r15 + rbx + 0x15be], r10b
0000000140244b73 mov      byte ptr [r15 + rbx + 0x163e], 0xff
0000000140244b7c or       word ptr [rbx + r15*2 + 0x16be], 0xffff
0000000140244b87 dec      byte ptr [rbx + 0x17be]
0000000140244b8d mov      r15, qword ptr [rsp + 0xd0]
0000000140244b95 mov      dil, r10b
0000000140244b98 movzx    r9d, word ptr [rsp + 0xe8]
0000000140244ba1 mov      r8b, byte ptr [rsp + 0xe0]
0000000140244ba9 mov      r11b, byte ptr [rsp + 0xd8]
0000000140244bb1 jmp      0x140244bbb
0000000140244bb3 mov      dil, r10b
0000000140244bb6 test     bpl, bpl
0000000140244bb9 je       0x140244bd5
0000000140244bbb movzx    eax, dil
0000000140244bbf cmp      byte ptr [rax + rbx + 0x15be], r10b
0000000140244bc7 je       0x140244bd1
0000000140244bc9 inc      dil
0000000140244bcc cmp      dil, bpl
0000000140244bcf jb       0x140244bbb
0000000140244bd1 mov      cl, byte ptr [rsp + 0x70]
0000000140244bd5 cmp      dil, bpl
0000000140244bd8 jne      0x140244c1a
0000000140244bda mov      rcx, qword ptr [rip + 0x6db41f]
0000000140244be1 cmp      rcx, rsi
0000000140244be4 je       0x140244ca5
0000000140244bea cmp      byte ptr [rcx + 0x169], 3
0000000140244bf1 jb       0x140244ca5
0000000140244bf7 mov      eax, dword ptr [rcx + 0x16c]
0000000140244bfd test     al, 1
0000000140244bff je       0x140244ca5
0000000140244c05 movzx    eax, byte ptr [rbx + 0x17be]
0000000140244c0c mov      edx, 0x17
0000000140244c11 mov      dword ptr [rsp + 0x20], eax
0000000140244c15 jmp      0x140244984
0000000140244c1a movzx    eax, word ptr [rsp + 0x108]
0000000140244c22 mov      dl, 1
0000000140244c24 mov      byte ptr [rsp + 0x68], cl
0000000140244c28 mov      rcx, r15
0000000140244c2b mov      byte ptr [rsp + 0x60], 1
0000000140244c30 mov      byte ptr [rsp + 0x58], r10b
0000000140244c35 mov      byte ptr [rsp + 0x50], r11b
0000000140244c3a mov      byte ptr [rsp + 0x48], dil
0000000140244c3f mov      word ptr [rsp + 0x40], ax
0000000140244c44 movzx    eax, word ptr [rsp + 0xf8]
0000000140244c4c mov      word ptr [rsp + 0x38], r14w
0000000140244c52 mov      word ptr [rsp + 0x30], ax
0000000140244c57 movzx    eax, word ptr [rsp + 0xf0]
0000000140244c5f mov      word ptr [rsp + 0x28], ax
0000000140244c64 mov      word ptr [rsp + 0x20], r9w
0000000140244c6a mov      r9b, r8b
0000000140244c6d movzx    r8d, word ptr [r13 + 0x2c]
0000000140244c72 call     0x140242ef8
0000000140244c77 mov      r12d, eax
0000000140244c7a test     eax, eax
0000000140244c7c jne      0x140244ca5
0000000140244c7e movzx    ecx, dil
0000000140244c82 mov      byte ptr [rcx + rbx + 0x15be], 1
0000000140244c8a mov      byte ptr [rcx + rbx + 0x163e], r14b
0000000140244c92 movzx    eax, word ptr [r13 + 0x2c]
0000000140244c97 mov      word ptr [rbx + rcx*2 + 0x16be], ax
0000000140244c9f inc      byte ptr [rbx + 0x17be]
0000000140244ca5 mov      eax, r12d
0000000140244ca8 add      rsp, 0x88
0000000140244caf pop      r15
0000000140244cb1 pop      r14
0000000140244cb3 pop      r13
0000000140244cb5 pop      r12
0000000140244cb7 pop      rdi
0000000140244cb8 pop      rsi
0000000140244cb9 pop      rbp
0000000140244cba pop      rbx
0000000140244cbb ret      