00000001401e292c mov      qword ptr [rsp + 8], rbx
00000001401e2931 mov      qword ptr [rsp + 0x10], rbp
00000001401e2936 mov      qword ptr [rsp + 0x18], rsi
00000001401e293b push     rdi
00000001401e293c push     r14
00000001401e293e push     r15
00000001401e2940 sub      rsp, 0x50
00000001401e2944 movzx    r14d, dl
00000001401e2948 mov      r15, r8
00000001401e294b mov      rbx, rcx
00000001401e294e cmp      r14d, 0xa
00000001401e2952 ja       0x1401e29e4
00000001401e2958 je       0x1401e29d8
00000001401e295a mov      ecx, r14d
00000001401e295d sub      ecx, 2
00000001401e2960 je       0x1401e29c3
00000001401e2962 sub      ecx, 3
00000001401e2965 je       0x1401e29b5
00000001401e2967 sub      ecx, 1
00000001401e296a je       0x1401e29a7
00000001401e296c sub      ecx, 1
00000001401e296f je       0x1401e2999
00000001401e2971 sub      ecx, 1
00000001401e2974 je       0x1401e298b
00000001401e2976 cmp      ecx, 1
00000001401e2979 jne      0x1401e2a0c
00000001401e297f lea      rdi, [rbx + 0xd4]
00000001401e2986 jmp      0x1401e2a9f
00000001401e298b movzx    edi, byte ptr [rsp + 0x98]
00000001401e2993 add      rdi, 0x31
00000001401e2997 jmp      0x1401e29cf
00000001401e2999 movzx    edi, byte ptr [rsp + 0x98]
00000001401e29a1 add      rdi, 0x2f
00000001401e29a5 jmp      0x1401e29cf
00000001401e29a7 movzx    edi, byte ptr [rsp + 0x98]
00000001401e29af add      rdi, 0x2d
00000001401e29b3 jmp      0x1401e29cf
00000001401e29b5 movzx    edi, byte ptr [rsp + 0x98]
00000001401e29bd add      rdi, 0x2b
00000001401e29c1 jmp      0x1401e29cf
00000001401e29c3 movzx    edi, byte ptr [rsp + 0x98]
00000001401e29cb add      rdi, 0x29
00000001401e29cf lea      rdi, [rbx + rdi*4]
00000001401e29d3 jmp      0x1401e2a9f
00000001401e29d8 lea      rdi, [rcx + 0xd8]
00000001401e29df jmp      0x1401e2a9f
00000001401e29e4 mov      ecx, r14d
00000001401e29e7 sub      ecx, 0xb
00000001401e29ea je       0x1401e2a98
00000001401e29f0 sub      ecx, 6
00000001401e29f3 je       0x1401e2a8f
00000001401e29f9 sub      ecx, 1
00000001401e29fc je       0x1401e2a86
00000001401e2a02 sub      ecx, 1
00000001401e2a05 je       0x1401e2a7d
00000001401e2a07 cmp      ecx, 2
00000001401e2a0a je       0x1401e2a6c
00000001401e2a0c mov      rcx, qword ptr [rip + 0x73d5ed]
00000001401e2a13 lea      rax, [rip + 0x73d5e6]
00000001401e2a1a cmp      rcx, rax
00000001401e2a1d je       0x1401e2a62
00000001401e2a1f cmp      byte ptr [rcx + 0x169], 2
00000001401e2a26 jb       0x1401e2a62
00000001401e2a28 mov      eax, dword ptr [rcx + 0x16c]
00000001401e2a2e test     al, 0x20
00000001401e2a30 je       0x1401e2a62
00000001401e2a32 mov      rcx, qword ptr [rcx + 0x158]
00000001401e2a39 lea      rsi, [rip + 0x42f9d0]
00000001401e2a40 mov      edx, 0xb8
00000001401e2a45 mov      dword ptr [rsp + 0x28], r14d
00000001401e2a4a lea      r9, [rip + 0x42b93f]
00000001401e2a51 mov      qword ptr [rsp + 0x20], rsi
00000001401e2a56 lea      r8, [rip + 0x4b5a13]
00000001401e2a5d call     0x14003ca14
00000001401e2a62 mov      eax, 1
00000001401e2a67 jmp      0x1401e2b54
00000001401e2a6c movzx    edi, byte ptr [rsp + 0x98]
00000001401e2a74 add      rdi, 0x33
00000001401e2a78 jmp      0x1401e29cf
00000001401e2a7d lea      rdi, [rbx + 0xe8]
00000001401e2a84 jmp      0x1401e2a9f
00000001401e2a86 lea      rdi, [rbx + 0xe4]
00000001401e2a8d jmp      0x1401e2a9f
00000001401e2a8f lea      rdi, [rbx + 0xe0]
00000001401e2a96 jmp      0x1401e2a9f
00000001401e2a98 lea      rdi, [rbx + 0xdc]
00000001401e2a9f movzx    edx, word ptr [rsp + 0x90]
00000001401e2aa7 lea      rsi, [rip + 0x42f962]
00000001401e2aae mov      rcx, qword ptr [rbx]
00000001401e2ab1 mov      r8b, r14b
00000001401e2ab4 mov      qword ptr [rsp + 0x28], rsi
00000001401e2ab9 mov      qword ptr [rsp + 0x20], r9
00000001401e2abe mov      r9, rdi
00000001401e2ac1 call     0x140256080
00000001401e2ac6 mov      ebp, eax
00000001401e2ac8 test     eax, eax
00000001401e2aca jne      0x1401e2ae2
00000001401e2acc movzx    edx, word ptr [rsp + 0x90]
00000001401e2ad4 mov      r8b, r14b
00000001401e2ad7 mov      rcx, qword ptr [rbx]
00000001401e2ada call     0x14025580c
00000001401e2adf mov      byte ptr [r15], al
00000001401e2ae2 mov      rcx, qword ptr [rip + 0x73d517]
00000001401e2ae9 lea      rax, [rip + 0x73d510]
00000001401e2af0 cmp      rcx, rax
00000001401e2af3 je       0x1401e2b52
00000001401e2af5 cmp      byte ptr [rcx + 0x169], 4
00000001401e2afc jb       0x1401e2b52
00000001401e2afe mov      eax, dword ptr [rcx + 0x16c]
00000001401e2b04 test     al, 0x20
00000001401e2b06 je       0x1401e2b52
00000001401e2b08 movzx    ebx, byte ptr [r15]
00000001401e2b0c mov      ecx, r14d
00000001401e2b0f call     0x1402552ec
00000001401e2b14 mov      ecx, dword ptr [rdi]
00000001401e2b16 lea      r9, [rip + 0x42b873]
00000001401e2b1d mov      dword ptr [rsp + 0x40], ebp
00000001401e2b21 lea      r8, [rip + 0x4b5948]
00000001401e2b28 mov      dword ptr [rsp + 0x38], ecx
00000001401e2b2c mov      edx, 0xb9
00000001401e2b31 mov      rcx, qword ptr [rip + 0x73d4c8]
00000001401e2b38 mov      dword ptr [rsp + 0x30], ebx
00000001401e2b3c mov      qword ptr [rsp + 0x28], rax
00000001401e2b41 mov      qword ptr [rsp + 0x20], rsi
00000001401e2b46 mov      rcx, qword ptr [rcx + 0x158]
00000001401e2b4d call     0x1401e0680
00000001401e2b52 mov      eax, ebp
00000001401e2b54 lea      r11, [rsp + 0x50]
00000001401e2b59 mov      rbx, qword ptr [r11 + 0x20]
00000001401e2b5d mov      rbp, qword ptr [r11 + 0x28]
00000001401e2b61 mov      rsi, qword ptr [r11 + 0x30]
00000001401e2b65 mov      rsp, r11
00000001401e2b68 pop      r15
00000001401e2b6a pop      r14
00000001401e2b6c pop      rdi
00000001401e2b6d ret      