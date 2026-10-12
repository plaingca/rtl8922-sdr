00000001403dbb18 push     rbp
00000001403dbb1a push     rbx
00000001403dbb1b push     rsi
00000001403dbb1c push     rdi
00000001403dbb1d push     r12
00000001403dbb1f push     r13
00000001403dbb21 push     r14
00000001403dbb23 push     r15
00000001403dbb25 mov      rbp, rsp
00000001403dbb28 sub      rsp, 0x48
00000001403dbb2c mov      rbx, qword ptr [rcx + 0x9a0]
00000001403dbb33 lea      rdx, [rip + 0x5444c6]
00000001403dbb3a xor      r14d, r14d
00000001403dbb3d mov      rdi, rcx
00000001403dbb40 mov      byte ptr [rbp + 0x48], r14b
00000001403dbb44 mov      r15b, r14b
00000001403dbb47 mov      word ptr [rbp + 0x60], r14w
00000001403dbb4c mov      sil, r14b
00000001403dbb4f mov      byte ptr [rbp + 0x50], r14b
00000001403dbb53 movzx    r12d, r14w
00000001403dbb57 mov      byte ptr [rbp + 0x58], r14b
00000001403dbb5b mov      r13b, r14b
00000001403dbb5e cmp      dword ptr [rbx + 0x1348], 1
00000001403dbb65 je       0x1403dbbbb
00000001403dbb67 mov      dword ptr [rbx + 0x1348], r14d
00000001403dbb6e mov      byte ptr [rbx + 0x13c9], r14b
00000001403dbb75 mov      rcx, qword ptr [rip + 0x544484]
00000001403dbb7c cmp      rcx, rdx
00000001403dbb7f je       0x1403dbbbb
00000001403dbb81 cmp      byte ptr [rcx + 0x169], 3
00000001403dbb88 jb       0x1403dbbbb
00000001403dbb8a test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbb94 je       0x1403dbbbb
00000001403dbb96 mov      rcx, qword ptr [rcx + 0x158]
00000001403dbb9d lea      edx, [r14 + 0x30]
00000001403dbba1 lea      r9, [rip + 0x2708a8]
00000001403dbba8 lea      r8, [rip + 0x2f9669]
00000001403dbbaf call     0x140008874
00000001403dbbb4 lea      rdx, [rip + 0x544445]
00000001403dbbbb mov      eax, dword ptr [rdi + 0x998]
00000001403dbbc1 mov      dword ptr [rbx + 0x134c], eax
00000001403dbbc7 test     dword ptr [rdi + 0x13f0], 0x1f00000
00000001403dbbd1 je       0x1403dbc42
00000001403dbbd3 mov      eax, dword ptr [rbx + 0x13ac]
00000001403dbbd9 sub      eax, 0x1c
00000001403dbbdc cmp      eax, 1
00000001403dbbdf ja       0x1403dbc42
00000001403dbbe1 mov      dword ptr [rbx + 0x1370], 7
00000001403dbbeb mov      word ptr [rbx + 0x1374], 0xa0
00000001403dbbf4 mov      rcx, qword ptr [rip + 0x544405]
00000001403dbbfb cmp      rcx, rdx
00000001403dbbfe je       0x1403dbcb1
00000001403dbc04 cmp      byte ptr [rcx + 0x169], 4
00000001403dbc0b jb       0x1403dbc42
00000001403dbc0d test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbc17 je       0x1403dbc42
00000001403dbc19 mov      eax, dword ptr [rbx + 0x13ac]
00000001403dbc1f lea      r9, [rip + 0x27082a]
00000001403dbc26 mov      rcx, qword ptr [rcx + 0x158]
00000001403dbc2d lea      r8, [rip + 0x2f95e4]
00000001403dbc34 mov      edx, 0x31
00000001403dbc39 mov      dword ptr [rsp + 0x20], eax
00000001403dbc3d call     0x1400088d8
00000001403dbc42 mov      rcx, qword ptr [rip + 0x5443b7]
00000001403dbc49 lea      rax, [rip + 0x5443b0]
00000001403dbc50 cmp      rcx, rax
00000001403dbc53 je       0x1403dbcb1
00000001403dbc55 cmp      byte ptr [rcx + 0x169], 4
00000001403dbc5c jb       0x1403dbcb1
00000001403dbc5e test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbc68 je       0x1403dbcb1
00000001403dbc6a mov      eax, dword ptr [rbx + 0x13ac]
00000001403dbc70 lea      r8, [rip + 0x2f95a1]
00000001403dbc77 mov      r9d, dword ptr [rbx + 0x1350]
00000001403dbc7e mov      edx, 0x33
00000001403dbc83 mov      rcx, qword ptr [rcx + 0x158]
00000001403dbc8a mov      dword ptr [rsp + 0x38], eax
00000001403dbc8e mov      eax, dword ptr [rbx + 0x1378]
00000001403dbc94 mov      dword ptr [rsp + 0x30], eax
00000001403dbc98 mov      eax, dword ptr [rbx + 0x1370]
00000001403dbc9e mov      dword ptr [rsp + 0x28], eax
00000001403dbca2 mov      eax, dword ptr [rbx + 0x136c]
00000001403dbca8 mov      dword ptr [rsp + 0x20], eax
00000001403dbcac call     0x140039d40
00000001403dbcb1 mov      rcx, rdi
00000001403dbcb4 call     0x1403d6ba8
00000001403dbcb9 mov      rcx, rdi
00000001403dbcbc call     0x1403d67d4
00000001403dbcc1 mov      dl, byte ptr [rbx + 0x1366]
00000001403dbcc7 mov      rcx, rdi
00000001403dbcca call     0x1403d6660
00000001403dbccf mov      r9b, byte ptr [rbx + 0x1366]
00000001403dbcd6 mov      rcx, rdi
00000001403dbcd9 mov      r8b, byte ptr [rbx + 0x13d4]
00000001403dbce0 mov      dl, byte ptr [rbx + 0x1376]
00000001403dbce6 call     0x1403d6fd0
00000001403dbceb mov      dl, byte ptr [rbx + 0x13c8]
00000001403dbcf1 mov      rcx, rdi
00000001403dbcf4 call     0x1403d6d58
00000001403dbcf9 mov      dl, byte ptr [rbx + 0x1434]
00000001403dbcff mov      rcx, rdi
00000001403dbd02 call     0x1403db76c
00000001403dbd07 mov      rcx, rdi
00000001403dbd0a call     0x1403dcc98
00000001403dbd0f mov      edx, 1
00000001403dbd14 mov      rcx, rdi
00000001403dbd17 call     0x1403154ac
00000001403dbd1c mov      eax, dword ptr [rdi + 0x998]
00000001403dbd22 mov      r9d, 1
00000001403dbd28 mov      r8d, dword ptr [rbx + 0x104c]
00000001403dbd2f mov      rcx, rdi
00000001403dbd32 mov      edx, dword ptr [rbx + 0x1048]
00000001403dbd38 mov      dword ptr [rsp + 0x20], eax
00000001403dbd3c call     0x140316994
00000001403dbd41 mov      rcx, rdi
00000001403dbd44 call     0x1403db6bc
00000001403dbd49 cmp      byte ptr [rbx + 0x1366], r14b
00000001403dbd50 je       0x1403dbd69
00000001403dbd52 mov      edx, 0x64
00000001403dbd57 mov      rcx, rdi
00000001403dbd5a call     0x1403153a8
00000001403dbd5f xor      edx, edx
00000001403dbd61 mov      rcx, rdi
00000001403dbd64 call     0x1403d6660
00000001403dbd69 cmp      byte ptr [rbx + 0x13c9], r14b
00000001403dbd70 jne      0x1403dbdcb
00000001403dbd72 mov      rcx, qword ptr [rdi + 8]
00000001403dbd76 mov      dl, 1
00000001403dbd78 call     0x14027fca8
00000001403dbd7d mov      r14d, eax
00000001403dbd80 mov      rcx, qword ptr [rip + 0x544279]
00000001403dbd87 lea      rax, [rip + 0x544272]
00000001403dbd8e cmp      rcx, rax
00000001403dbd91 je       0x1403dbdc0
00000001403dbd93 cmp      byte ptr [rcx + 0x169], 4
00000001403dbd9a jb       0x1403dbdc0
00000001403dbd9c test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbda6 je       0x1403dbdc0
00000001403dbda8 mov      rcx, qword ptr [rcx + 0x158]
00000001403dbdaf lea      r8, [rip + 0x2f9462]
00000001403dbdb6 mov      edx, 0x34
00000001403dbdbb call     0x140001b88
00000001403dbdc0 test     r14d, r14d
00000001403dbdc3 jne      0x1403dc049
00000001403dbdc9 jmp      0x1403dbe13
00000001403dbdcb mov      rcx, qword ptr [rip + 0x54422e]
00000001403dbdd2 lea      rax, [rip + 0x544227]
00000001403dbdd9 cmp      rcx, rax
00000001403dbddc je       0x1403dbe13
00000001403dbdde cmp      byte ptr [rcx + 0x169], 4
00000001403dbde5 jb       0x1403dbe13
00000001403dbde7 test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbdf1 je       0x1403dbe13
00000001403dbdf3 movzx    r9d, word ptr [rbx + 0x13ca]
00000001403dbdfb lea      r8, [rip + 0x2f9416]
00000001403dbe02 mov      rcx, qword ptr [rcx + 0x158]
00000001403dbe09 mov      edx, 0x35
00000001403dbe0e call     0x140001bb0
00000001403dbe13 mov      rcx, qword ptr [rdi + 8]
00000001403dbe17 lea      rax, [rbp + 0x58]
00000001403dbe1b lea      r9, [rbp + 0x50]
00000001403dbe1f mov      qword ptr [rsp + 0x20], rax
00000001403dbe24 lea      r8, [rbp + 0x60]
00000001403dbe28 lea      rdx, [rbp + 0x48]
00000001403dbe2c call     0x14027c8dc
00000001403dbe31 mov      rcx, qword ptr [rip + 0x5441c8]
00000001403dbe38 lea      r8, [rip + 0x5441c1]
00000001403dbe3f cmp      rcx, r8
00000001403dbe42 je       0x1403dbe98
00000001403dbe44 cmp      byte ptr [rcx + 0x169], 4
00000001403dbe4b jb       0x1403dbe98
00000001403dbe4d test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbe57 je       0x1403dbe98
00000001403dbe59 movzx    r8d, word ptr [rbp + 0x60]
00000001403dbe5e mov      edx, 0x36
00000001403dbe63 movzx    eax, byte ptr [rbp + 0x50]
00000001403dbe67 movzx    r10d, byte ptr [rbp + 0x48]
00000001403dbe6c mov      rcx, qword ptr [rcx + 0x158]
00000001403dbe73 mov      dword ptr [rsp + 0x30], eax
00000001403dbe77 mov      dword ptr [rsp + 0x28], r8d
00000001403dbe7c lea      r8, [rip + 0x2f9395]
00000001403dbe83 movzx    r9d, r15b
00000001403dbe87 mov      dword ptr [rsp + 0x20], r10d
00000001403dbe8c call     0x140008794
00000001403dbe91 lea      r8, [rip + 0x544168]
00000001403dbe98 mov      dl, byte ptr [rbp + 0x48]
00000001403dbe9b cmp      dl, 4
00000001403dbe9e je       0x1403dbf97
00000001403dbea4 cmp      dl, 2
00000001403dbea7 jne      0x1403dbf3a
00000001403dbead inc      sil
00000001403dbeb0 mov      rcx, qword ptr [rip + 0x544149]
00000001403dbeb7 cmp      rcx, r8
00000001403dbeba je       0x1403dbef0
00000001403dbebc cmp      byte ptr [rcx + 0x169], 4
00000001403dbec3 jb       0x1403dbef0
00000001403dbec5 test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbecf je       0x1403dbef0
00000001403dbed1 mov      rcx, qword ptr [rcx + 0x158]
00000001403dbed8 lea      r8, [rip + 0x2f9339]
00000001403dbedf movzx    r9d, sil
00000001403dbee3 mov      edx, 0x38
00000001403dbee8 call     0x140001bb0
00000001403dbeed mov      dl, byte ptr [rbp + 0x48]
00000001403dbef0 cmp      byte ptr [rbx + 0x13c8], r14b
00000001403dbef7 je       0x1403dbfdf
00000001403dbefd cmp      r12w, word ptr [rbp + 0x60]
00000001403dbf02 jne      0x1403dbf0a
00000001403dbf04 cmp      r13b, byte ptr [rbp + 0x50]
00000001403dbf08 je       0x1403dbf16
00000001403dbf0a movzx    r12d, word ptr [rbp + 0x60]
00000001403dbf0f mov      sil, r14b
00000001403dbf12 mov      r13b, byte ptr [rbp + 0x50]
00000001403dbf16 movzx    eax, sil
00000001403dbf1a mov      rcx, rdi
00000001403dbf1d lea      edx, [rax + rax*4]
00000001403dbf20 add      edx, edx
00000001403dbf22 call     0x1403154ac
00000001403dbf27 movzx    eax, sil
00000001403dbf2b cmp      ax, word ptr [rbx + 0x1364]
00000001403dbf32 jae      0x1403dbfdc
00000001403dbf38 jmp      0x1403dbf4f
00000001403dbf3a cmp      dl, 1
00000001403dbf3d jne      0x1403dbf5e
00000001403dbf3f mov      edx, 0x64
00000001403dbf44 mov      rcx, rdi
00000001403dbf47 call     0x1403153a8
00000001403dbf4c inc      r15b
00000001403dbf4f cmp      r15b, byte ptr [rbx + 0x1368]
00000001403dbf56 jb       0x1403dbe13
00000001403dbf5c jmp      0x1403dbfdc
00000001403dbf5e cmp      dl, 3
00000001403dbf61 jne      0x1403dbfdf
00000001403dbf63 mov      rcx, qword ptr [rip + 0x544096]
00000001403dbf6a cmp      rcx, r8
00000001403dbf6d je       0x1403dc050
00000001403dbf73 cmp      byte ptr [rcx + 0x169], 4
00000001403dbf7a jb       0x1403dc010
00000001403dbf80 test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbf8a je       0x1403dc010
00000001403dbf90 mov      edx, 0x39
00000001403dbf95 jmp      0x1403dbfc9
00000001403dbf97 mov      rcx, qword ptr [rip + 0x544062]
00000001403dbf9e cmp      rcx, r8
00000001403dbfa1 je       0x1403dc15b
00000001403dbfa7 cmp      byte ptr [rcx + 0x169], 4
00000001403dbfae jb       0x1403dc15b
00000001403dbfb4 test     dword ptr [rcx + 0x16c], 0x1000
00000001403dbfbe je       0x1403dc15b
00000001403dbfc4 mov      edx, 0x37
00000001403dbfc9 mov      rcx, qword ptr [rcx + 0x158]
00000001403dbfd0 lea      r8, [rip + 0x2f9241]
00000001403dbfd7 call     0x140001b88
00000001403dbfdc mov      dl, byte ptr [rbp + 0x48]
00000001403dbfdf cmp      dl, 2
00000001403dbfe2 jne      0x1403dc000
00000001403dbfe4 mov      dword ptr [rbx + 0x1348], 2
00000001403dbfee mov      rcx, rdi
00000001403dbff1 mov      r8b, byte ptr [rbp + 0x50]
00000001403dbff5 movzx    edx, word ptr [rbp + 0x60]
00000001403dbff9 call     0x1403dc620
00000001403dbffe jmp      0x1403dc049
00000001403dc000 cmp      dl, 4
00000001403dc003 je       0x1403dc15b
00000001403dc009 lea      r8, [rip + 0x543ff0]
00000001403dc010 mov      rcx, qword ptr [rip + 0x543fe9]
00000001403dc017 cmp      rcx, r8
00000001403dc01a je       0x1403dc050
00000001403dc01c cmp      byte ptr [rcx + 0x169], 4
00000001403dc023 jb       0x1403dc050
00000001403dc025 test     dword ptr [rcx + 0x16c], 0x1000
00000001403dc02f je       0x1403dc050
00000001403dc031 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc038 lea      r8, [rip + 0x2f91d9]
00000001403dc03f mov      edx, 0x3a
00000001403dc044 call     0x140001b88
00000001403dc049 lea      r8, [rip + 0x543fb0]
00000001403dc050 mov      rax, qword ptr [rdi + 0x9a0]
00000001403dc057 and      dword ptr [rax + 0x1348], 0
00000001403dc05e mov      byte ptr [rax + 0x13c9], 0
00000001403dc065 mov      rcx, qword ptr [rip + 0x543f94]
00000001403dc06c cmp      rcx, r8
00000001403dc06f je       0x1403dc0ac
00000001403dc071 cmp      byte ptr [rcx + 0x169], 4
00000001403dc078 jb       0x1403dc0ac
00000001403dc07a test     dword ptr [rcx + 0x16c], 0x1000
00000001403dc084 je       0x1403dc0ac
00000001403dc086 mov      r9d, dword ptr [rbx + 0x1354]
00000001403dc08d lea      r8, [rip + 0x2f9184]
00000001403dc094 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc09b mov      edx, 0x3b
00000001403dc0a0 call     0x140001bb0
00000001403dc0a5 lea      r8, [rip + 0x543f54]
00000001403dc0ac mov      eax, dword ptr [rbx + 0x1354]
00000001403dc0b2 cmp      eax, 1
00000001403dc0b5 ja       0x1403dc0fa
00000001403dc0b7 mov      rcx, qword ptr [rip + 0x543f42]
00000001403dc0be cmp      rcx, r8
00000001403dc0c1 je       0x1403dc0f0
00000001403dc0c3 cmp      byte ptr [rcx + 0x169], 4
00000001403dc0ca jb       0x1403dc0f0
00000001403dc0cc test     dword ptr [rcx + 0x16c], 0x1000
00000001403dc0d6 je       0x1403dc0f0
00000001403dc0d8 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc0df lea      r8, [rip + 0x2f9132]
00000001403dc0e6 mov      edx, 0x3c
00000001403dc0eb call     0x140001b88
00000001403dc0f0 mov      rcx, rdi
00000001403dc0f3 call     0x1403ccad8
00000001403dc0f8 jmp      0x1403dc16c
00000001403dc0fa dec      eax
00000001403dc0fc mov      dword ptr [rbx + 0x1354], eax
00000001403dc102 mov      rcx, qword ptr [rip + 0x543ef7]
00000001403dc109 cmp      rcx, r8
00000001403dc10c je       0x1403dc13b
00000001403dc10e cmp      byte ptr [rcx + 0x169], 4
00000001403dc115 jb       0x1403dc13b
00000001403dc117 test     dword ptr [rcx + 0x16c], 0x1000
00000001403dc121 je       0x1403dc13b
00000001403dc123 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc12a lea      r8, [rip + 0x2f90e7]
00000001403dc131 mov      edx, 0x3d
00000001403dc136 call     0x140001b88
00000001403dc13b lea      r8, [rbx + 0x1490]
00000001403dc142 mov      dword ptr [rbx + 0x1510], 0x1f4
00000001403dc14c mov      edx, 3
00000001403dc151 mov      rcx, rdi
00000001403dc154 call     0x140315108
00000001403dc159 jmp      0x1403dc16c
00000001403dc15b mov      dword ptr [rbx + 0x1348], 3
00000001403dc165 mov      dword ptr [rbx + 0x1354], r14d
00000001403dc16c add      rsp, 0x48
00000001403dc170 pop      r15
00000001403dc172 pop      r14
00000001403dc174 pop      r13
00000001403dc176 pop      r12
00000001403dc178 pop      rdi
00000001403dc179 pop      rsi
00000001403dc17a pop      rbx
00000001403dc17b pop      rbp
00000001403dc17c ret      