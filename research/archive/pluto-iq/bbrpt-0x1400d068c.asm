00000001400d068c mov      qword ptr [rsp + 0x10], rbx
00000001400d0691 push     rbp
00000001400d0692 push     rsi
00000001400d0693 push     rdi
00000001400d0694 push     r12
00000001400d0696 push     r13
00000001400d0698 push     r14
00000001400d069a push     r15
00000001400d069c lea      rbp, [rsp - 0xd0]
00000001400d06a4 sub      rsp, 0x1d0
00000001400d06ab mov      rax, qword ptr [rip + 0x856dae]
00000001400d06b2 xor      rax, rsp
00000001400d06b5 mov      qword ptr [rbp + 0xc0], rax
00000001400d06bc mov      r12, qword ptr [rbp + 0x138]
00000001400d06c3 xor      eax, eax
00000001400d06c5 mov      edi, edx
00000001400d06c7 mov      dword ptr [rbp - 0x7c], edx
00000001400d06ca mov      r15, rcx
00000001400d06cd mov      qword ptr [rbp - 0x50], r12
00000001400d06d1 mov      edx, 0xfd
00000001400d06d6 mov      word ptr [rsp + 0x44], ax
00000001400d06db lea      rcx, [rbp - 0x40]
00000001400d06df mov      byte ptr [rsp + 0x46], al
00000001400d06e3 mov      byte ptr [rsp + 0x40], al
00000001400d06e7 mov      ebx, eax
00000001400d06e9 mov      qword ptr [rbp - 0x60], rax
00000001400d06ed mov      r14, r8
00000001400d06f0 mov      qword ptr [rbp - 0x70], rax
00000001400d06f4 mov      dword ptr [rsp + 0x58], r9d
00000001400d06f9 mov      qword ptr [rsp + 0x68], r8
00000001400d06fe mov      byte ptr [rsp + 0x41], 0xff
00000001400d0703 call     0x140031290
00000001400d0708 xor      r11d, r11d
00000001400d070b test     r12, r12
00000001400d070e jne      0x1400d071a
00000001400d0710 lea      eax, [r12 + 4]
00000001400d0715 jmp      0x1400d1a2c
00000001400d071a lea      rsi, [rbp - 0x40]
00000001400d071e movzx    ecx, r11w
00000001400d0722 mov      qword ptr [rsp + 0x70], rsi
00000001400d0727 mov      r10d, 2
00000001400d072d mov      dword ptr [rsp + 0x4c], ecx
00000001400d0731 mov      word ptr [rsp + 0x78], cx
00000001400d0736 test     dil, 0x1c
00000001400d073a je       0x1400d078a
00000001400d073c mov      r9d, dword ptr [r15 + 0xc16c8]
00000001400d0743 cmp      r9d, r10d
00000001400d0746 je       0x1400d078a
00000001400d0748 mov      rcx, qword ptr [rip + 0x84f8b1]
00000001400d074f lea      r12, [rip + 0x84f8aa]
00000001400d0756 cmp      rcx, r12
00000001400d0759 je       0x1400d077f
00000001400d075b lea      edi, [r10 + 1]
00000001400d075f cmp      byte ptr [rcx + 0x29], dil
00000001400d0763 jb       0x1400d077f
00000001400d0765 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d076a jae      0x1400d077f
00000001400d076c mov      rcx, qword ptr [rcx + 0x18]
00000001400d0770 lea      edx, [rdi + 0x41]
00000001400d0773 lea      r8, [rip + 0x5c25b6]
00000001400d077a call     0x140001bb0
00000001400d077f mov      r14d, 0xf
00000001400d0785 jmp      0x1400d1a29
00000001400d078a mov      eax, 1
00000001400d078f test     al, dil
00000001400d0792 je       0x1400d07a0
00000001400d0794 mov      rax, qword ptr [r12]
00000001400d0798 mov      al, byte ptr [rax]
00000001400d079a and      al, 0xfc
00000001400d079c mov      byte ptr [rsp + 0x41], al
00000001400d07a0 mov      edi, 3
00000001400d07a5 lea      r12, [rip + 0x84f854]
00000001400d07ac lea      edx, [rdi + 1]
00000001400d07af lea      r8d, [rdi + 7]
00000001400d07b3 test     byte ptr [rbp - 0x7c], dl
00000001400d07b6 je       0x1400d0da3
00000001400d07bc mov      byte ptr [rsp + 0x4a], r11b
00000001400d07c1 mov      r8d, 0x2138
00000001400d07c7 test     r14, r14
00000001400d07ca je       0x1400d0d50
00000001400d07d0 cmp      dword ptr [rsp + 0x58], r8d
00000001400d07d5 jb       0x1400d0d50
00000001400d07db mov      rax, qword ptr [r15 + 0xaf280]
00000001400d07e2 mov      qword ptr [rbp - 0x60], r14
00000001400d07e6 cmp      byte ptr [rax + 0xc56], r11b
00000001400d07ed je       0x1400d07fb
00000001400d07ef mov      ebx, dword ptr [r15 + 0xfc524]
00000001400d07f6 jmp      0x1400d0b5f
00000001400d07fb mov      eax, dword ptr [r15 + 0xc0bb0]
00000001400d0802 lea      r8, [rsp + 0x49]
00000001400d0807 mov      dword ptr [rbp - 0x78], eax
00000001400d080a lea      rdx, [rsp + 0x48]
00000001400d080f mov      rax, qword ptr [r15 + 0xaf3b8]
00000001400d0816 mov      rcx, r15
00000001400d0819 mov      r14d, r11d
00000001400d081c mov      dword ptr [rsp + 0x54], r11d
00000001400d0821 mov      byte ptr [rbp - 0x80], r11b
00000001400d0825 mov      byte ptr [rsp + 0x58], r11b
00000001400d082a mov      rax, qword ptr [rax]
00000001400d082d mov      qword ptr [rsp + 0x60], rax
00000001400d0832 mov      rax, qword ptr [rsp + 0x68]
00000001400d0837 mov      byte ptr [rsp + 0x48], r11b
00000001400d083c mov      byte ptr [rsp + 0x49], r11b
00000001400d0841 mov      eax, dword ptr [rax + 0x1664]
00000001400d0847 mov      dword ptr [rsp + 0x50], eax
00000001400d084b call     0x14012ffe8
00000001400d0850 mov      rcx, qword ptr [rsp + 0x68]
00000001400d0855 mov      r9d, 0x80
00000001400d085b mov      rdx, qword ptr [rsp + 0x60]
00000001400d0860 mov      r8d, dword ptr [rcx + 0x1664]
00000001400d0867 test     r9b, r8b
00000001400d086a je       0x1400d0877
00000001400d086c mov      eax, dword ptr [rdx + 0xab228]
00000001400d0872 test     r9b, al
00000001400d0875 jne      0x1400d0888
00000001400d0877 bt       r8d, 0xf
00000001400d087c jae      0x1400d08a1
00000001400d087e bt       dword ptr [rdx + 0xab228], 0xf
00000001400d0886 jae      0x1400d08a1
00000001400d0888 lea      rdx, [rcx + 1]
00000001400d088c mov      rcx, r15
00000001400d088f call     0x1400945e0
00000001400d0894 test     rax, rax
00000001400d0897 je       0x1400d08a1
00000001400d0899 movzx    eax, word ptr [rax + 0xc]
00000001400d089d mov      dword ptr [rsp + 0x54], eax
00000001400d08a1 mov      rdx, qword ptr [rsp + 0x68]
00000001400d08a6 mov      rcx, r15
00000001400d08a9 inc      rdx
00000001400d08ac call     0x1400a0290
00000001400d08b1 mov      r8, qword ptr [rsp + 0x68]
00000001400d08b6 mov      r11d, 1
00000001400d08bc mov      edx, dword ptr [rbp - 0x80]
00000001400d08bf mov      ecx, dword ptr [r8 + 0x1664]
00000001400d08c6 test     ecx, 0x60000
00000001400d08cc je       0x1400d08e2
00000001400d08ce mov      eax, dword ptr [r15 + 0x114680]
00000001400d08d5 sub      eax, r11d
00000001400d08d8 movzx    edx, dl
00000001400d08db cmp      eax, r11d
00000001400d08de cmovbe   edx, r11d
00000001400d08e2 bt       ecx, 0x12
00000001400d08e6 mov      r10, qword ptr [rsp + 0x60]
00000001400d08eb mov      r9d, dword ptr [rsp + 0x58]
00000001400d08f0 jae      0x1400d0903
00000001400d08f2 bt       dword ptr [r10 + 0xab228], 0x12
00000001400d08fb movzx    r9d, r9b
00000001400d08ff cmovb    r9d, r11d
00000001400d0903 mov      r11d, dword ptr [rbp - 0x78]
00000001400d0907 mov      ecx, r11d
00000001400d090a sub      ecx, edi
00000001400d090c je       0x1400d0a73
00000001400d0912 sub      ecx, 1
00000001400d0915 je       0x1400d0a6c
00000001400d091b sub      ecx, 2
00000001400d091e je       0x1400d0a15
00000001400d0924 sub      ecx, 1
00000001400d0927 je       0x1400d09da
00000001400d092d sub      ecx, 1
00000001400d0930 je       0x1400d09b1
00000001400d0932 sub      ecx, edi
00000001400d0934 je       0x1400d09a7
00000001400d0936 sub      ecx, 1
00000001400d0939 je       0x1400d0995
00000001400d093b sub      ecx, 1
00000001400d093e je       0x1400d098b
00000001400d0940 cmp      ecx, 1
00000001400d0943 je       0x1400d0950
00000001400d0945 mov      r14d, 0xa
00000001400d094b jmp      0x1400d0a89
00000001400d0950 xor      ecx, ecx
00000001400d0952 cmp      dword ptr [rsp + 0x54], ecx
00000001400d0956 jbe      0x1400d0962
00000001400d0958 mov      ebx, 0x80
00000001400d095d jmp      0x1400d0a89
00000001400d0962 mov      ecx, dword ptr [rsp + 0x50]
00000001400d0966 mov      edx, 0x40
00000001400d096b test     dl, cl
00000001400d096d je       0x1400d0981
00000001400d096f mov      eax, dword ptr [r10 + 0xab228]
00000001400d0976 test     dl, al
00000001400d0978 je       0x1400d0981
00000001400d097a mov      ebx, edx
00000001400d097c jmp      0x1400d0a89
00000001400d0981 mov      ebx, 0x10
00000001400d0986 jmp      0x1400d0a89
00000001400d098b mov      ebx, 0x10000
00000001400d0990 jmp      0x1400d0a89
00000001400d0995 test     dl, dl
00000001400d0997 je       0x1400d0a0e
00000001400d0999 movzx    ebx, r9b
00000001400d099d inc      ebx
00000001400d099f shl      ebx, 0x11
00000001400d09a2 jmp      0x1400d0a89
00000001400d09a7 mov      ebx, 0x100
00000001400d09ac jmp      0x1400d0a89
00000001400d09b1 mov      ecx, dword ptr [rsp + 0x50]
00000001400d09b5 mov      ebx, 0x2000
00000001400d09ba test     ebx, ecx
00000001400d09bc jne      0x1400d0a89
00000001400d09c2 test     cl, 4
00000001400d09c5 je       0x1400d09d1
00000001400d09c7 mov      ebx, 4
00000001400d09cc jmp      0x1400d0a89
00000001400d09d1 xor      eax, eax
00000001400d09d3 mov      ebx, eax
00000001400d09d5 jmp      0x1400d0945
00000001400d09da xor      ecx, ecx
00000001400d09dc cmp      dword ptr [rsp + 0x54], ecx
00000001400d09e0 jbe      0x1400d09ec
00000001400d09e2 mov      ebx, 0x8000
00000001400d09e7 jmp      0x1400d0a89
00000001400d09ec test     dl, dl
00000001400d09ee je       0x1400d09fa
00000001400d09f0 mov      ebx, 0x20000
00000001400d09f5 jmp      0x1400d0a89
00000001400d09fa mov      ebx, 0x4000
00000001400d09ff test     dword ptr [rsp + 0x50], ebx
00000001400d0a03 je       0x1400d0a0e
00000001400d0a05 test     dword ptr [r10 + 0xab228], ebx
00000001400d0a0c jne      0x1400d0a89
00000001400d0a0e mov      ebx, 0x1000
00000001400d0a13 jmp      0x1400d0a89
00000001400d0a15 xor      ecx, ecx
00000001400d0a17 cmp      byte ptr [rsp + 0x48], cl
00000001400d0a1b je       0x1400d0a2a
00000001400d0a1d cmp      byte ptr [rsp + 0x49], cl
00000001400d0a21 je       0x1400d0a2a
00000001400d0a23 mov      ebx, 0x2000
00000001400d0a28 jmp      0x1400d0a89
00000001400d0a2a cmp      dword ptr [rsp + 0x54], ecx
00000001400d0a2e ja       0x1400d0958
00000001400d0a34 mov      ecx, dword ptr [rsp + 0x50]
00000001400d0a38 mov      r9d, 0x10
00000001400d0a3e test     r9b, cl
00000001400d0a41 je       0x1400d0a4f
00000001400d0a43 mov      eax, dword ptr [r10 + 0xab228]
00000001400d0a4a test     r9b, al
00000001400d0a4d jne      0x1400d0a67
00000001400d0a4f mov      edx, 0x40
00000001400d0a54 test     dl, cl
00000001400d0a56 je       0x1400d0a67
00000001400d0a58 mov      eax, dword ptr [r10 + 0xab228]
00000001400d0a5f test     dl, al
00000001400d0a61 jne      0x1400d097a
00000001400d0a67 mov      ebx, r9d
00000001400d0a6a jmp      0x1400d0a89
00000001400d0a6c mov      ebx, 2
00000001400d0a71 jmp      0x1400d0a89
00000001400d0a73 xor      ecx, ecx
00000001400d0a75 cmp      byte ptr [rsp + 0x48], cl
00000001400d0a79 je       0x1400d0a84
00000001400d0a7b lea      ebx, [rcx + 4]
00000001400d0a7e cmp      byte ptr [rsp + 0x49], cl
00000001400d0a82 jne      0x1400d0a89
00000001400d0a84 mov      ebx, 1
00000001400d0a89 mov      rax, qword ptr [rip + 0x84f570]
00000001400d0a90 mov      qword ptr [rbp - 0x78], rax
00000001400d0a94 cmp      rax, r12
00000001400d0a97 je       0x1400d0af6
00000001400d0a99 cmp      byte ptr [rax + 0x29], 4
00000001400d0a9d jb       0x1400d0af6
00000001400d0a9f bt       dword ptr [rax + 0x2c], 0xb
00000001400d0aa4 jae      0x1400d0af6
00000001400d0aa6 mov      cl, r11b
00000001400d0aa9 call     0x1400d5874
00000001400d0aae mov      rcx, qword ptr [rbp - 0x78]
00000001400d0ab2 lea      r9, [rip + 0x52d877]
00000001400d0ab9 mov      r8, rax
00000001400d0abc mov      dword ptr [rsp + 0x38], ebx
00000001400d0ac0 mov      rax, qword ptr [rsp + 0x60]
00000001400d0ac5 mov      edx, 0x2c
00000001400d0aca mov      rcx, qword ptr [rcx + 0x18]
00000001400d0ace mov      eax, dword ptr [rax + 0xab228]
00000001400d0ad4 mov      dword ptr [rsp + 0x30], eax
00000001400d0ad8 mov      eax, dword ptr [rsp + 0x50]
00000001400d0adc mov      dword ptr [rsp + 0x28], eax
00000001400d0ae0 mov      qword ptr [rsp + 0x20], r8
00000001400d0ae5 lea      r8, [rip + 0x5c2244]
00000001400d0aec call     0x1400328d4
00000001400d0af1 mov      r8, qword ptr [rsp + 0x68]
00000001400d0af6 test     r14d, r14d
00000001400d0af9 je       0x1400d0b53
00000001400d0afb mov      rcx, qword ptr [rip + 0x84f4fe]
00000001400d0b02 cmp      rcx, r12
00000001400d0b05 je       0x1400d1a29
00000001400d0b0b cmp      byte ptr [rcx + 0x29], dil
00000001400d0b0f jb       0x1400d1a29
00000001400d0b15 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d0b1a jae      0x1400d1a29
00000001400d0b20 mov      eax, dword ptr [r8 + 0x1664]
00000001400d0b27 mov      edx, 0x46
00000001400d0b2c mov      rcx, qword ptr [rcx + 0x18]
00000001400d0b30 lea      r8, [rip + 0x5c21f9]
00000001400d0b37 mov      dword ptr [rsp + 0x28], eax
00000001400d0b3b mov      r9d, r14d
00000001400d0b3e mov      eax, dword ptr [r15 + 0xc0bb0]
00000001400d0b45 mov      dword ptr [rsp + 0x20], eax
00000001400d0b49 call     0x140001c34
00000001400d0b4e jmp      0x1400d1a29
00000001400d0b53 mov      r14, qword ptr [rsp + 0x68]
00000001400d0b58 mov      dword ptr [r15 + 0xfc524], ebx
00000001400d0b5f lea      r8, [rsp + 0x40]
00000001400d0b64 mov      ecx, ebx
00000001400d0b66 lea      rdx, [rsp + 0x44]
00000001400d0b6b call     0x1400d24c8
00000001400d0b70 mov      rax, qword ptr [rip + 0x84f489]
00000001400d0b77 cmp      rax, r12
00000001400d0b7a je       0x1400d0bc3
00000001400d0b7c mov      ecx, 4
00000001400d0b81 cmp      byte ptr [rax + 0x29], cl
00000001400d0b84 jb       0x1400d0bc3
00000001400d0b86 bt       dword ptr [rax + 0x2c], 0xb
00000001400d0b8b jae      0x1400d0bc3
00000001400d0b8d mov      dl, byte ptr [rsp + 0x40]
00000001400d0b91 lea      rcx, [rsp + 0x44]
00000001400d0b96 call     0x1400d5fb4
00000001400d0b9b mov      rcx, qword ptr [rip + 0x84f45e]
00000001400d0ba2 lea      r9, [rip + 0x52d877]
00000001400d0ba9 mov      edx, 0x47
00000001400d0bae mov      qword ptr [rsp + 0x20], rax
00000001400d0bb3 lea      r8, [rip + 0x5c2176]
00000001400d0bba mov      rcx, qword ptr [rcx + 0x18]
00000001400d0bbe call     0x14003c968
00000001400d0bc3 mov      rcx, r15
00000001400d0bc6 call     0x1401398fc
00000001400d0bcb mov      dl, al
00000001400d0bcd mov      r9d, ebx
00000001400d0bd0 mov      rax, qword ptr [r15 + 0xaf3b8]
00000001400d0bd7 mov      r8d, 0x20
00000001400d0bdd mov      rcx, qword ptr [rax]
00000001400d0be0 add      rcx, 0x18
00000001400d0be4 call     0x140139988
00000001400d0be9 cmp      ebx, 0x80
00000001400d0bef je       0x1400d0bf9
00000001400d0bf1 cmp      ebx, 0x8000
00000001400d0bf7 jne      0x1400d0c0b
00000001400d0bf9 lea      rdx, [r14 + 1]
00000001400d0bfd mov      rcx, r15
00000001400d0c00 call     0x1400945e0
00000001400d0c05 mov      qword ptr [rbp - 0x70], rax
00000001400d0c09 jmp      0x1400d0c0f
00000001400d0c0b mov      rax, qword ptr [rbp - 0x70]
00000001400d0c0f mov      r8b, byte ptr [rsp + 0x41]
00000001400d0c14 mov      edx, 0xe
00000001400d0c19 mov      r14d, edx
00000001400d0c1c test     r8b, 0xdf
00000001400d0c20 je       0x1400d0cab
00000001400d0c26 cmp      r8b, 0xb0
00000001400d0c2a jne      0x1400d0c68
00000001400d0c2c mov      rdx, qword ptr [rsp + 0x68]
00000001400d0c31 mov      rcx, r15
00000001400d0c34 inc      rdx
00000001400d0c37 call     0x140094814
00000001400d0c3c xor      r11d, r11d
00000001400d0c3f lea      r10d, [r14 - 0xc]
00000001400d0c43 test     al, al
00000001400d0c45 je       0x1400d0c52
00000001400d0c47 cmp      byte ptr [r15 + 0xbbce3], r10b
00000001400d0c4e cmove    r14d, r11d
00000001400d0c52 mov      qword ptr [rsp + 0x70], rsi
00000001400d0c57 mov      ecx, r11d
00000001400d0c5a test     r14d, r14d
00000001400d0c5d je       0x1400d0d98
00000001400d0c63 mov      r8b, byte ptr [rsp + 0x41]
00000001400d0c68 mov      rcx, qword ptr [rip + 0x84f391]
00000001400d0c6f cmp      rcx, r12
00000001400d0c72 je       0x1400d1a29
00000001400d0c78 cmp      byte ptr [rcx + 0x29], 5
00000001400d0c7c jb       0x1400d1a29
00000001400d0c82 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d0c87 jae      0x1400d1a29
00000001400d0c8d mov      rcx, qword ptr [rcx + 0x18]
00000001400d0c91 mov      edx, 0x49
00000001400d0c96 movzx    r9d, r8b
00000001400d0c9a lea      r8, [rip + 0x5c208f]
00000001400d0ca1 call     0x140001bb0
00000001400d0ca6 jmp      0x1400d1a29
00000001400d0cab xor      r11d, r11d
00000001400d0cae test     rax, rax
00000001400d0cb1 je       0x1400d0d32
00000001400d0cb3 mov      rdx, qword ptr [rsp + 0x68]
00000001400d0cb8 mov      rcx, r15
00000001400d0cbb inc      rdx
00000001400d0cbe call     0x140094764
00000001400d0cc3 xor      r11d, r11d
00000001400d0cc6 lea      r10d, [r11 + 2]
00000001400d0cca test     al, al
00000001400d0ccc je       0x1400d0d38
00000001400d0cce mov      rax, qword ptr [rbp - 0x70]
00000001400d0cd2 movzx    ecx, word ptr [rax + 0x12a]
00000001400d0cd9 cmp      cx, r10w
00000001400d0cdd jbe      0x1400d0d38
00000001400d0cdf sub      cx, r10w
00000001400d0ce3 mov      byte ptr [rsp + 0x4a], 1
00000001400d0ce8 lea      rsi, [rax + 0x12e]
00000001400d0cef mov      dword ptr [rsp + 0x4c], ecx
00000001400d0cf3 mov      qword ptr [rsp + 0x70], rsi
00000001400d0cf8 mov      word ptr [rsp + 0x78], cx
00000001400d0cfd mov      r9, qword ptr [rip + 0x84f2fc]
00000001400d0d04 lea      edx, [r11 + 4]
00000001400d0d08 cmp      r9, r12
00000001400d0d0b je       0x1400d0d41
00000001400d0d0d cmp      byte ptr [r9 + 0x29], dl
00000001400d0d11 jb       0x1400d0d41
00000001400d0d13 bt       dword ptr [r9 + 0x2c], 0xb
00000001400d0d19 jae      0x1400d0d41
00000001400d0d1b mov      rcx, qword ptr [r9 + 0x18]
00000001400d0d1f lea      edx, [r11 + 0x48]
00000001400d0d23 lea      r8, [rip + 0x5c2006]
00000001400d0d2a call     0x140001b88
00000001400d0d2f xor      r11d, r11d
00000001400d0d32 mov      r10d, 2
00000001400d0d38 mov      ecx, dword ptr [rsp + 0x4c]
00000001400d0d3c mov      edx, 4
00000001400d0d41 mov      r14d, r11d
00000001400d0d44 cmp      byte ptr [rsp + 0x4a], r11b
00000001400d0d49 je       0x1400d0d9d
00000001400d0d4b jmp      0x1400d1765
00000001400d0d50 mov      rcx, qword ptr [rip + 0x84f2a9]
00000001400d0d57 lea      r12, [rip + 0x84f2a2]
00000001400d0d5e cmp      rcx, r12
00000001400d0d61 je       0x1400d0d8d
00000001400d0d63 cmp      byte ptr [rcx + 0x29], dil
00000001400d0d67 jb       0x1400d0d8d
00000001400d0d69 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d0d6e jae      0x1400d0d8d
00000001400d0d70 mov      rcx, qword ptr [rcx + 0x18]
00000001400d0d74 mov      edx, 0x45
00000001400d0d79 mov      dword ptr [rsp + 0x20], r8d
00000001400d0d7e mov      r9, r14
00000001400d0d81 lea      r8, [rip + 0x5c1fa8]
00000001400d0d88 call     0x14002af78
00000001400d0d8d mov      r14d, 0xe
00000001400d0d93 jmp      0x1400d1a29
00000001400d0d98 mov      edx, 4
00000001400d0d9d mov      r8d, 0xa
00000001400d0da3 mov      word ptr [rsi], 1
00000001400d0da8 movzx    r14d, cx
00000001400d0dac mov      eax, dword ptr [r15 + 0xc0ba4]
00000001400d0db3 mov      word ptr [rsp + 0x4a], cx
00000001400d0db8 lea      rcx, [rip + 0x8572d5]
00000001400d0dbf cmp      eax, 0x18
00000001400d0dc2 ja       0x1400d0ebe
00000001400d0dc8 je       0x1400d0e8f
00000001400d0dce test     eax, eax
00000001400d0dd0 je       0x1400d0e6f
00000001400d0dd6 sub      eax, 1
00000001400d0dd9 je       0x1400d0e54
00000001400d0ddb sub      eax, 1
00000001400d0dde je       0x1400d0e3d
00000001400d0de0 sub      eax, r10d
00000001400d0de3 je       0x1400d0e23
00000001400d0de5 sub      eax, edx
00000001400d0de7 je       0x1400d0e0c
00000001400d0de9 cmp      eax, 8
00000001400d0dec jne      0x1400d0ee6
00000001400d0df2 mov      rdx, rcx
00000001400d0df5 mov      r8d, edi
00000001400d0df8 lea      rcx, [rsp + 0x44]
00000001400d0dfd call     0x1400311e8
00000001400d0e02 mov      byte ptr [rsp + 0x40], 5
00000001400d0e07 jmp      0x1400d0f63
00000001400d0e0c mov      rdx, rcx
00000001400d0e0f mov      r8d, edi
00000001400d0e12 lea      rcx, [rsp + 0x44]
00000001400d0e17 call     0x1400311e8
00000001400d0e1c mov      eax, 1
00000001400d0e21 jmp      0x1400d0e66
00000001400d0e23 mov      rdx, rcx
00000001400d0e26 mov      r8d, edi
00000001400d0e29 lea      rcx, [rsp + 0x44]
00000001400d0e2e call     0x1400311e8
00000001400d0e33 mov      byte ptr [rsp + 0x40], 4
00000001400d0e38 jmp      0x1400d0f63
00000001400d0e3d mov      rdx, rcx
00000001400d0e40 mov      r8d, edi
00000001400d0e43 lea      rcx, [rsp + 0x44]
00000001400d0e48 call     0x1400311e8
00000001400d0e4d mov      eax, 2
00000001400d0e52 jmp      0x1400d0e66
00000001400d0e54 mov      rdx, rcx
00000001400d0e57 mov      r8d, edi
00000001400d0e5a lea      rcx, [rsp + 0x44]
00000001400d0e5f call     0x1400311e8
00000001400d0e64 xor      eax, eax
00000001400d0e66 mov      byte ptr [rsp + 0x40], al
00000001400d0e6a jmp      0x1400d0f63
00000001400d0e6f mov      edx, edi
00000001400d0e71 lea      rcx, [rsp + 0x44]
00000001400d0e76 call     0x140031290
00000001400d0e7b mov      edx, 1
00000001400d0e80 lea      rcx, [rsp + 0x40]
00000001400d0e85 call     0x140031290
00000001400d0e8a jmp      0x1400d0f63
00000001400d0e8f mov      rcx, qword ptr [rip + 0x84f16a]
00000001400d0e96 cmp      rcx, r12
00000001400d0e99 je       0x1400d19e4
00000001400d0e9f cmp      byte ptr [rcx + 0x29], dil
00000001400d0ea3 jb       0x1400d19e4
00000001400d0ea9 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d0eae jae      0x1400d19e4
00000001400d0eb4 mov      edx, 0x2f
00000001400d0eb9 jmp      0x1400d19d4
00000001400d0ebe sub      eax, 0x20
00000001400d0ec1 je       0x1400d19b6
00000001400d0ec7 sub      eax, 0x20
00000001400d0eca je       0x1400d0f4a
00000001400d0ecc sub      eax, 0x40
00000001400d0ecf je       0x1400d0f33
00000001400d0ed1 sub      eax, 0x180
00000001400d0ed6 je       0x1400d0f1c
00000001400d0ed8 sub      eax, 0x200
00000001400d0edd je       0x1400d0f05
00000001400d0edf cmp      eax, 0x400
00000001400d0ee4 je       0x1400d0eee
00000001400d0ee6 mov      r14d, r8d
00000001400d0ee9 jmp      0x1400d19ed
00000001400d0eee mov      rdx, rcx
00000001400d0ef1 mov      r8d, edi
00000001400d0ef4 lea      rcx, [rsp + 0x44]
00000001400d0ef9 call     0x1400311e8
00000001400d0efe mov      byte ptr [rsp + 0x40], 0xc
00000001400d0f03 jmp      0x1400d0f63
00000001400d0f05 mov      rdx, rcx
00000001400d0f08 mov      r8d, edi
00000001400d0f0b lea      rcx, [rsp + 0x44]
00000001400d0f10 call     0x1400311e8
00000001400d0f15 mov      byte ptr [rsp + 0x40], 0xb
00000001400d0f1a jmp      0x1400d0f63
00000001400d0f1c mov      rdx, rcx
00000001400d0f1f mov      r8d, edi
00000001400d0f22 lea      rcx, [rsp + 0x44]
00000001400d0f27 call     0x1400311e8
00000001400d0f2c mov      byte ptr [rsp + 0x40], 9
00000001400d0f31 jmp      0x1400d0f63
00000001400d0f33 mov      rdx, rcx
00000001400d0f36 mov      r8d, edi
00000001400d0f39 lea      rcx, [rsp + 0x44]
00000001400d0f3e call     0x1400311e8
00000001400d0f43 mov      byte ptr [rsp + 0x40], 7
00000001400d0f48 jmp      0x1400d0f63
00000001400d0f4a mov      rdx, rcx
00000001400d0f4d mov      r8d, edi
00000001400d0f50 lea      rcx, [rsp + 0x44]
00000001400d0f55 call     0x1400311e8
00000001400d0f5a mov      ecx, 6
00000001400d0f5f mov      byte ptr [rsp + 0x40], cl
00000001400d0f63 lea      rcx, [rsi + 2]
00000001400d0f67 mov      r8d, edi
00000001400d0f6a lea      rdx, [rsp + 0x44]
00000001400d0f6f call     0x1400311e8
00000001400d0f74 mov      al, byte ptr [rsp + 0x40]
00000001400d0f78 mov      byte ptr [rsi + 5], al
00000001400d0f7b movzx    eax, r14w
00000001400d0f7f mov      r14d, 6
00000001400d0f85 add      ax, r14w
00000001400d0f89 mov      word ptr [rsp + 0x78], ax
00000001400d0f8e mov      eax, dword ptr [r15 + 0xc0ba0]
00000001400d0f95 cmp      eax, 0x18
00000001400d0f98 ja       0x1400d1098
00000001400d0f9e je       0x1400d1069
00000001400d0fa4 xor      r14d, r14d
00000001400d0fa7 test     eax, eax
00000001400d0fa9 je       0x1400d1049
00000001400d0faf sub      eax, 1
00000001400d0fb2 je       0x1400d113e
00000001400d0fb8 sub      eax, 1
00000001400d0fbb je       0x1400d102e
00000001400d0fbd sub      eax, 2
00000001400d0fc0 je       0x1400d1010
00000001400d0fc2 sub      eax, 4
00000001400d0fc5 je       0x1400d0fee
00000001400d0fc7 cmp      eax, 8
00000001400d0fca jne      0x1400d10c4
00000001400d0fd0 mov      r8d, edi
00000001400d0fd3 lea      rdx, [rip + 0x8570ba]
00000001400d0fda lea      rcx, [rsp + 0x44]
00000001400d0fdf call     0x1400311e8
00000001400d0fe4 mov      byte ptr [rsp + 0x40], 5
00000001400d0fe9 jmp      0x1400d1157
00000001400d0fee mov      r8d, edi
00000001400d0ff1 lea      rdx, [rip + 0x85709c]
00000001400d0ff8 lea      rcx, [rsp + 0x44]
00000001400d0ffd call     0x1400311e8
00000001400d1002 mov      eax, 1
00000001400d1007 mov      byte ptr [rsp + 0x40], al
00000001400d100b jmp      0x1400d1157
00000001400d1010 mov      r8d, edi
00000001400d1013 lea      rdx, [rip + 0x85707a]
00000001400d101a lea      rcx, [rsp + 0x44]
00000001400d101f call     0x1400311e8
00000001400d1024 mov      byte ptr [rsp + 0x40], 4
00000001400d1029 jmp      0x1400d1157
00000001400d102e mov      r8d, edi
00000001400d1031 lea      rdx, [rip + 0x85705c]
00000001400d1038 lea      rcx, [rsp + 0x44]
00000001400d103d call     0x1400311e8
00000001400d1042 mov      eax, 2
00000001400d1047 jmp      0x1400d1007
00000001400d1049 mov      edx, edi
00000001400d104b lea      rcx, [rsp + 0x44]
00000001400d1050 call     0x140031290
00000001400d1055 mov      edx, 1
00000001400d105a lea      rcx, [rsp + 0x40]
00000001400d105f call     0x140031290
00000001400d1064 jmp      0x1400d1157
00000001400d1069 mov      rcx, qword ptr [rip + 0x84ef90]
00000001400d1070 cmp      rcx, r12
00000001400d1073 je       0x1400d197a
00000001400d1079 cmp      byte ptr [rcx + 0x29], dil
00000001400d107d jb       0x1400d197a
00000001400d1083 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d1088 jae      0x1400d197a
00000001400d108e mov      edx, 0x2f
00000001400d1093 jmp      0x1400d196a
00000001400d1098 sub      eax, 0x20
00000001400d109b je       0x1400d194c
00000001400d10a1 sub      eax, 0x20
00000001400d10a4 je       0x1400d113e
00000001400d10aa sub      eax, 0x40
00000001400d10ad je       0x1400d1123
00000001400d10af sub      eax, 0x180
00000001400d10b4 je       0x1400d1108
00000001400d10b6 sub      eax, 0x200
00000001400d10bb je       0x1400d10ed
00000001400d10bd cmp      eax, 0x400
00000001400d10c2 je       0x1400d10d2
00000001400d10c4 mov      r9d, 0xa
00000001400d10ca mov      r14d, r9d
00000001400d10cd jmp      0x1400d1983
00000001400d10d2 mov      r8d, edi
00000001400d10d5 lea      rdx, [rip + 0x856fb8]
00000001400d10dc lea      rcx, [rsp + 0x44]
00000001400d10e1 call     0x1400311e8
00000001400d10e6 mov      byte ptr [rsp + 0x40], 0xc
00000001400d10eb jmp      0x1400d1157
00000001400d10ed mov      r8d, edi
00000001400d10f0 lea      rdx, [rip + 0x856f9d]
00000001400d10f7 lea      rcx, [rsp + 0x44]
00000001400d10fc call     0x1400311e8
00000001400d1101 mov      byte ptr [rsp + 0x40], 0xb
00000001400d1106 jmp      0x1400d1157
00000001400d1108 mov      r8d, edi
00000001400d110b lea      rdx, [rip + 0x856f82]
00000001400d1112 lea      rcx, [rsp + 0x44]
00000001400d1117 call     0x1400311e8
00000001400d111c mov      byte ptr [rsp + 0x40], 9
00000001400d1121 jmp      0x1400d1157
00000001400d1123 mov      r8d, edi
00000001400d1126 lea      rdx, [rip + 0x856f67]
00000001400d112d lea      rcx, [rsp + 0x44]
00000001400d1132 call     0x1400311e8
00000001400d1137 mov      byte ptr [rsp + 0x40], 7
00000001400d113c jmp      0x1400d1157
00000001400d113e mov      r8d, edi
00000001400d1141 lea      rdx, [rip + 0x856f4c]
00000001400d1148 lea      rcx, [rsp + 0x44]
00000001400d114d call     0x1400311e8
00000001400d1152 mov      byte ptr [rsp + 0x40], r14b
00000001400d1157 mov      rcx, r15
00000001400d115a call     0x1401398fc
00000001400d115f mov      r9d, dword ptr [r15 + 0xc0ba0]
00000001400d1166 mov      dl, al
00000001400d1168 mov      rax, qword ptr [r15 + 0xaf3b8]
00000001400d116f mov      r8d, 0x100
00000001400d1175 mov      rcx, qword ptr [rax]
00000001400d1178 add      rcx, 0x18
00000001400d117c call     0x140139988
00000001400d1181 mov      rcx, r15
00000001400d1184 call     0x1401398fc
00000001400d1189 mov      r9d, dword ptr [r15 + 0xc0ba4]
00000001400d1190 mov      dl, al
00000001400d1192 mov      rax, qword ptr [r15 + 0xaf3b8]
00000001400d1199 mov      r8d, 0x200
00000001400d119f mov      rcx, qword ptr [rax]
00000001400d11a2 add      rcx, 0x18
00000001400d11a6 call     0x140139988
00000001400d11ab xor      eax, eax
00000001400d11ad lea      rcx, [rsi + 8]
00000001400d11b1 mov      r8d, edi
00000001400d11b4 mov      word ptr [rsi + 6], ax
00000001400d11b8 lea      rdx, [rsp + 0x44]
00000001400d11bd call     0x1400311e8
00000001400d11c2 mov      al, byte ptr [rsp + 0x40]
00000001400d11c6 movzx    ecx, word ptr [rsi + 6]
00000001400d11ca mov      byte ptr [rsi + rcx*4 + 0xb], al
00000001400d11ce xor      ecx, ecx
00000001400d11d0 mov      eax, 1
00000001400d11d5 add      word ptr [rsi + 6], ax
00000001400d11d9 movzx    eax, word ptr [rsi + 6]
00000001400d11dd lea      r14d, [rcx + 0xe]
00000001400d11e1 mov      word ptr [rsi + rax*4 + 8], cx
00000001400d11e6 lea      ecx, [r14 - 0xa]
00000001400d11ea movzx    eax, word ptr [rsp + 0x4a]
00000001400d11ef add      ax, r14w
00000001400d11f3 mov      word ptr [rsp + 0x4a], ax
00000001400d11f8 mov      word ptr [rsp + 0x78], ax
00000001400d11fd test     byte ptr [rbp - 0x7c], cl
00000001400d1200 je       0x1400d1941
00000001400d1206 lea      r8, [rsp + 0x40]
00000001400d120b mov      ecx, ebx
00000001400d120d lea      rdx, [rsp + 0x44]
00000001400d1212 call     0x1400d24c8
00000001400d1217 mov      r14d, eax
00000001400d121a test     eax, eax
00000001400d121c je       0x1400d127a
00000001400d121e mov      rcx, qword ptr [rip + 0x84eddb]
00000001400d1225 cmp      rcx, r12
00000001400d1228 je       0x1400d1a29
00000001400d122e cmp      byte ptr [rcx + 0x29], dil
00000001400d1232 jb       0x1400d1a29
00000001400d1238 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d123d jae      0x1400d1a29
00000001400d1243 mov      eax, dword ptr [r15 + 0xfc520]
00000001400d124a lea      r8, [rip + 0x5c1adf]
00000001400d1251 mov      rcx, qword ptr [rcx + 0x18]
00000001400d1255 mov      edx, 0x4c
00000001400d125a mov      dword ptr [rsp + 0x30], eax
00000001400d125e mov      r9d, r14d
00000001400d1261 mov      eax, dword ptr [r15 + 0xc0bb0]
00000001400d1268 mov      dword ptr [rsp + 0x28], eax
00000001400d126c mov      dword ptr [rsp + 0x20], ebx
00000001400d1270 call     0x140008794
00000001400d1275 jmp      0x1400d1a29
00000001400d127a test     byte ptr [rsp + 0x41], 0xdf
00000001400d127f jne      0x1400d128c
00000001400d1281 mov      al, byte ptr [rsp + 0x40]
00000001400d1285 mov      byte ptr [r15 + 0xfc51e], al
00000001400d128c movzx    eax, word ptr [rsi + 6]
00000001400d1290 lea      rdx, [rsp + 0x44]
00000001400d1295 mov      r8d, edi
00000001400d1298 lea      rcx, [rax*4]
00000001400d12a0 movzx    eax, word ptr [rcx + rsi + 8]
00000001400d12a5 lea      rcx, [rcx + rax*4]
00000001400d12a9 add      rcx, 0xa
00000001400d12ad add      rcx, rsi
00000001400d12b0 call     0x1400311e8
00000001400d12b5 movzx    ecx, word ptr [rsi + 6]
00000001400d12b9 xor      r8d, r8d
00000001400d12bc shl      rcx, 2
00000001400d12c0 mov      qword ptr [rsp + 0x60], r8
00000001400d12c5 mov      byte ptr [rsp + 0x41], r8b
00000001400d12ca movzx    eax, word ptr [rcx + rsi + 8]
00000001400d12cf lea      rcx, [rcx + rax*4]
00000001400d12d3 mov      al, byte ptr [rsp + 0x40]
00000001400d12d7 mov      byte ptr [rcx + rsi + 0xd], al
00000001400d12db mov      ecx, 1
00000001400d12e0 movzx    eax, word ptr [rsi + 6]
00000001400d12e4 add      word ptr [rsi + rax*4 + 8], cx
00000001400d12e9 movzx    ecx, word ptr [rsi + 6]
00000001400d12ed shl      rcx, 2
00000001400d12f1 movzx    eax, word ptr [rcx + rsi + 8]
00000001400d12f6 lea      rcx, [rcx + rax*4]
00000001400d12fa mov      eax, 0xfffe
00000001400d12ff and      word ptr [rcx + rsi + 0xa], ax
00000001400d1304 movzx    ecx, word ptr [rsi + 6]
00000001400d1308 shl      rcx, 2
00000001400d130c movzx    eax, word ptr [rcx + rsi + 8]
00000001400d1311 lea      rcx, [rcx + rax*4]
00000001400d1315 mov      eax, 0xfffd
00000001400d131a and      word ptr [rcx + rsi + 0xa], ax
00000001400d131f movzx    ecx, word ptr [rsi + 6]
00000001400d1323 shl      rcx, 2
00000001400d1327 movzx    eax, word ptr [rcx + rsi + 8]
00000001400d132c lea      rcx, [rcx + rax*4]
00000001400d1330 mov      eax, 0xfff3
00000001400d1335 and      word ptr [rcx + rsi + 0xa], ax
00000001400d133a movzx    ecx, word ptr [rsi + 6]
00000001400d133e shl      rcx, 2
00000001400d1342 movzx    eax, word ptr [rcx + rsi + 8]
00000001400d1347 lea      rcx, [rcx + rax*4]
00000001400d134b mov      eax, 0xffcf
00000001400d1350 and      word ptr [rcx + rsi + 0xa], ax
00000001400d1355 movzx    eax, word ptr [rsp + 0x4a]
00000001400d135a add      ax, 6
00000001400d135e mov      dword ptr [rsp + 0x4c], eax
00000001400d1362 mov      word ptr [rsp + 0x78], ax
00000001400d1367 mov      rax, qword ptr [rbp - 0x70]
00000001400d136b test     rax, rax
00000001400d136e je       0x1400d1395
00000001400d1370 cmp      word ptr [rax + 0x118], r8w
00000001400d1378 jbe      0x1400d1417
00000001400d137e cmp      byte ptr [r15 + 0xbbce3], 2
00000001400d1386 jne      0x1400d1417
00000001400d138c lea      rcx, [rax + 0x11a]
00000001400d1393 jmp      0x1400d13bc
00000001400d1395 mov      rdx, qword ptr [rbp - 0x60]
00000001400d1399 mov      rcx, r15
00000001400d139c inc      rdx
00000001400d139f call     0x1400cff4c
00000001400d13a4 xor      r8d, r8d
00000001400d13a7 test     eax, eax
00000001400d13a9 js       0x1400d1417
00000001400d13ab cdqe     
00000001400d13ad lea      rcx, [rax + rax*8]
00000001400d13b1 lea      rcx, [rcx*8 + 0xc1b27]
00000001400d13b9 add      rcx, r15
00000001400d13bc mov      qword ptr [rsp + 0x60], rcx
00000001400d13c1 test     rcx, rcx
00000001400d13c4 je       0x1400d1417
00000001400d13c6 mov      r10, qword ptr [rip + 0x84ec33]
00000001400d13cd cmp      r10, r12
00000001400d13d0 je       0x1400d1417
00000001400d13d2 cmp      byte ptr [r10 + 0x29], 4
00000001400d13d7 jb       0x1400d1417
00000001400d13d9 test     dword ptr [r10 + 0x2c], 0x100
00000001400d13e1 je       0x1400d1417
00000001400d13e3 mov      qword ptr [rbp - 0x70], rcx
00000001400d13e7 lea      rax, [rbp - 0x70]
00000001400d13eb mov      rcx, qword ptr [r10 + 0x18]
00000001400d13ef lea      r9, [rip + 0x52d03a]
00000001400d13f6 mov      edx, 0x4d
00000001400d13fb mov      qword ptr [rsp + 0x20], rax
00000001400d1400 lea      r8, [rip + 0x5c1929]
00000001400d1407 mov      qword ptr [rbp - 0x68], 0x10
00000001400d140f call     0x140001c88
00000001400d1414 xor      r8d, r8d
00000001400d1417 mov      rdx, qword ptr [rbp - 0x60]
00000001400d141b cmp      byte ptr [rdx + 0x1ca], r8b
00000001400d1422 je       0x1400d15c0
00000001400d1428 cmp      byte ptr [r15 + 0xfc490], r8b
00000001400d142f je       0x1400d15c0
00000001400d1435 movzx    ecx, word ptr [rsi + 6]
00000001400d1439 shl      rcx, 2
00000001400d143d movzx    eax, word ptr [rcx + rsi + 8]
00000001400d1442 lea      rcx, [rcx + rax*4]
00000001400d1446 mov      eax, 0x80
00000001400d144b or       word ptr [rcx + rsi + 0xa], ax
00000001400d1450 cmp      byte ptr [rdx + 0x1c9], r8b
00000001400d1457 jne      0x1400d1461
00000001400d1459 test     ebx, 0x70140
00000001400d145f je       0x1400d147e
00000001400d1461 movzx    ecx, word ptr [rsi + 6]
00000001400d1465 mov      edx, 0x40
00000001400d146a shl      rcx, 2
00000001400d146e movzx    eax, word ptr [rcx + rsi + 8]
00000001400d1473 lea      rcx, [rcx + rax*4]
00000001400d1477 or       word ptr [rcx + rsi + 0xa], dx
00000001400d147c jmp      0x1400d1483
00000001400d147e mov      edx, 0x40
00000001400d1483 mov      eax, dword ptr [r15 + 0xc0ba8]
00000001400d148a test     eax, eax
00000001400d148c je       0x1400d189f
00000001400d1492 cmp      eax, 0x18
00000001400d1495 ja       0x1400d17cf
00000001400d149b je       0x1400d158f
00000001400d14a1 test     eax, eax
00000001400d14a3 je       0x1400d156f
00000001400d14a9 sub      eax, 1
00000001400d14ac je       0x1400d154a
00000001400d14b2 sub      eax, 1
00000001400d14b5 je       0x1400d1528
00000001400d14b7 mov      edx, 2
00000001400d14bc sub      eax, edx
00000001400d14be je       0x1400d150a
00000001400d14c0 sub      eax, 4
00000001400d14c3 je       0x1400d14ec
00000001400d14c5 cmp      eax, 8
00000001400d14c8 jne      0x1400d15c5
00000001400d14ce mov      r8d, edi
00000001400d14d1 lea      rdx, [rip + 0x856bbc]
00000001400d14d8 lea      rcx, [rsp + 0x44]
00000001400d14dd call     0x1400311e8
00000001400d14e2 mov      byte ptr [rsp + 0x40], 5
00000001400d14e7 jmp      0x1400d18bc
00000001400d14ec mov      r8d, edi
00000001400d14ef lea      rdx, [rip + 0x856b9e]
00000001400d14f6 lea      rcx, [rsp + 0x44]
00000001400d14fb call     0x1400311e8
00000001400d1500 mov      byte ptr [rsp + 0x40], 1
00000001400d1505 jmp      0x1400d18bc
00000001400d150a mov      r8d, edi
00000001400d150d lea      rdx, [rip + 0x856b80]
00000001400d1514 lea      rcx, [rsp + 0x44]
00000001400d1519 call     0x1400311e8
00000001400d151e mov      byte ptr [rsp + 0x40], 4
00000001400d1523 jmp      0x1400d18bc
00000001400d1528 mov      r8d, edi
00000001400d152b lea      rdx, [rip + 0x856b62]
00000001400d1532 lea      rcx, [rsp + 0x44]
00000001400d1537 call     0x1400311e8
00000001400d153c mov      edx, 2
00000001400d1541 mov      byte ptr [rsp + 0x40], dl
00000001400d1545 jmp      0x1400d18c1
00000001400d154a mov      r8d, edi
00000001400d154d lea      rdx, [rip + 0x856b40]
00000001400d1554 lea      rcx, [rsp + 0x44]
00000001400d1559 call     0x1400311e8
00000001400d155e xor      r8d, r8d
00000001400d1561 mov      byte ptr [rsp + 0x40], r8b
00000001400d1566 lea      edx, [r8 + 2]
00000001400d156a jmp      0x1400d18c4
00000001400d156f mov      edx, edi
00000001400d1571 lea      rcx, [rsp + 0x44]
00000001400d1576 call     0x140031290
00000001400d157b mov      edx, 1
00000001400d1580 lea      rcx, [rsp + 0x40]
00000001400d1585 call     0x140031290
00000001400d158a jmp      0x1400d18bc
00000001400d158f mov      rcx, qword ptr [rip + 0x84ea6a]
00000001400d1596 cmp      rcx, r12
00000001400d1599 je       0x1400d15c0
00000001400d159b cmp      byte ptr [rcx + 0x29], dil
00000001400d159f jb       0x1400d15c0
00000001400d15a1 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d15a6 jae      0x1400d15c0
00000001400d15a8 mov      edx, 0x2f
00000001400d15ad mov      rcx, qword ptr [rcx + 0x18]
00000001400d15b1 lea      r8, [rip + 0x5c1778]
00000001400d15b8 call     0x140001b88
00000001400d15bd xor      r8d, r8d
00000001400d15c0 mov      edx, 2
00000001400d15c5 mov      al, byte ptr [rsp + 0x41]
00000001400d15c9 mov      r9, qword ptr [rsp + 0x60]
00000001400d15ce test     r9, r9
00000001400d15d1 jne      0x1400d15db
00000001400d15d3 test     al, al
00000001400d15d5 je       0x1400d1680
00000001400d15db movzx    ecx, word ptr [rsi + 6]
00000001400d15df shl      rcx, 2
00000001400d15e3 movzx    eax, word ptr [rcx + rsi + 8]
00000001400d15e8 lea      rcx, [rcx + rax*4]
00000001400d15ec mov      eax, dword ptr [rsp + 0x4c]
00000001400d15f0 add      ax, dx
00000001400d15f3 mov      word ptr [rcx + rsi + 0xc], r8w
00000001400d15f9 mov      dword ptr [rsp + 0x4c], eax
00000001400d15fd movzx    ebx, ax
00000001400d1600 mov      word ptr [rsp + 0x78], ax
00000001400d1605 test     r9, r9
00000001400d1608 je       0x1400d1680
00000001400d160a movzx    eax, word ptr [rsi + 6]
00000001400d160e lea      r8, [rax*4]
00000001400d1616 movzx    eax, word ptr [r8 + rsi + 8]
00000001400d161c lea      rcx, [rax*4]
00000001400d1624 lea      rax, [rcx + r8]
00000001400d1628 movzx    edx, word ptr [rax + rsi + 0xc]
00000001400d162d shl      rdx, 4
00000001400d1631 add      rdx, 0xe
00000001400d1635 add      rcx, rdx
00000001400d1638 mov      rdx, r9
00000001400d163b add      rcx, r8
00000001400d163e mov      r8d, 0x10
00000001400d1644 add      rcx, rsi
00000001400d1647 call     0x1400311e8
00000001400d164c movzx    ecx, word ptr [rsi + 6]
00000001400d1650 mov      r9, qword ptr [rsp + 0x60]
00000001400d1655 shl      rcx, 2
00000001400d1659 movzx    eax, word ptr [rcx + rsi + 8]
00000001400d165e lea      rcx, [rcx + rax*4]
00000001400d1662 mov      eax, 1
00000001400d1667 add      word ptr [rcx + rsi + 0xc], ax
00000001400d166c mov      eax, 0x10
00000001400d1671 add      ax, bx
00000001400d1674 mov      dword ptr [rsp + 0x4c], eax
00000001400d1678 xor      r8d, r8d
00000001400d167b mov      word ptr [rsp + 0x78], ax
00000001400d1680 test     r9, r9
00000001400d1683 mov      ebx, r8d
00000001400d1686 mov      rcx, r15
00000001400d1689 setne    bl
00000001400d168c call     0x1401398fc
00000001400d1691 mov      dl, al
00000001400d1693 mov      r9d, ebx
00000001400d1696 mov      rax, qword ptr [r15 + 0xaf3b8]
00000001400d169d mov      r8d, 0x40
00000001400d16a3 mov      rcx, qword ptr [rax]
00000001400d16a6 add      rcx, 0x18
00000001400d16aa call     0x140139988
00000001400d16af xor      ecx, ecx
00000001400d16b1 cmp      byte ptr [rsp + 0x41], cl
00000001400d16b5 je       0x1400d173b
00000001400d16bb movzx    eax, word ptr [rsi + 6]
00000001400d16bf lea      r8, [rax*4]
00000001400d16c7 movzx    eax, word ptr [r8 + rsi + 8]
00000001400d16cd lea      rcx, [rax*4]
00000001400d16d5 lea      rax, [rcx + r8]
00000001400d16d9 movzx    edx, word ptr [rax + rsi + 0xc]
00000001400d16de shl      rdx, 4
00000001400d16e2 add      rdx, 0xe
00000001400d16e6 add      rcx, rdx
00000001400d16e9 lea      rdx, [rsp + 0x44]
00000001400d16ee add      rcx, r8
00000001400d16f1 mov      r8d, edi
00000001400d16f4 add      rcx, rsi
00000001400d16f7 call     0x1400311e8
00000001400d16fc movzx    r8d, word ptr [rsi + 6]
00000001400d1701 shl      r8, 2
00000001400d1705 movzx    edx, word ptr [r8 + rsi + 8]
00000001400d170b shl      rdx, 2
00000001400d170f lea      rax, [r8 + rdx]
00000001400d1713 movzx    ecx, word ptr [rax + rsi + 0xc]
00000001400d1718 mov      al, byte ptr [rsp + 0x40]
00000001400d171c shl      rcx, 4
00000001400d1720 add      rcx, r8
00000001400d1723 add      rcx, rdx
00000001400d1726 mov      byte ptr [rcx + rsi + 0x11], al
00000001400d172a mov      eax, dword ptr [rsp + 0x4c]
00000001400d172e add      ax, 4
00000001400d1732 mov      dword ptr [rsp + 0x4c], eax
00000001400d1736 mov      word ptr [rsp + 0x78], ax
00000001400d173b mov      rcx, r15
00000001400d173e call     0x1401398fc
00000001400d1743 mov      r9d, dword ptr [r15 + 0xc0ba8]
00000001400d174a mov      dl, al
00000001400d174c mov      rax, qword ptr [r15 + 0xaf3b8]
00000001400d1753 mov      r8d, 0x400
00000001400d1759 mov      rcx, qword ptr [rax]
00000001400d175c add      rcx, 0x18
00000001400d1760 call     0x140139988
00000001400d1765 mov      rbx, qword ptr [rbp - 0x50]
00000001400d1769 mov      r9d, dword ptr [rbp + 0x130]
00000001400d1770 mov      eax, r9d
00000001400d1773 mov      ecx, dword ptr [rsp + 0x4c]
00000001400d1777 movzx    r10d, cx
00000001400d177b movzx    r8d, word ptr [rbx + 8]
00000001400d1780 sub      eax, r8d
00000001400d1783 cmp      eax, r10d
00000001400d1786 jae      0x1400d18cf
00000001400d178c mov      rcx, qword ptr [rip + 0x84e86d]
00000001400d1793 cmp      rcx, r12
00000001400d1796 je       0x1400d17c4
00000001400d1798 cmp      byte ptr [rcx + 0x29], dil
00000001400d179c jb       0x1400d17c4
00000001400d179e bt       dword ptr [rcx + 0x2c], 0xb
00000001400d17a3 jae      0x1400d17c4
00000001400d17a5 mov      rcx, qword ptr [rcx + 0x18]
00000001400d17a9 mov      edx, 0x4e
00000001400d17ae mov      dword ptr [rsp + 0x28], r10d
00000001400d17b3 mov      dword ptr [rsp + 0x20], r8d
00000001400d17b8 lea      r8, [rip + 0x5c1571]
00000001400d17bf call     0x140001c34
00000001400d17c4 mov      r14d, 8
00000001400d17ca jmp      0x1400d1a29
00000001400d17cf sub      eax, 0x20
00000001400d17d2 je       0x1400d1870
00000001400d17d8 sub      eax, 0x20
00000001400d17db je       0x1400d189f
00000001400d17e1 sub      eax, edx
00000001400d17e3 je       0x1400d1855
00000001400d17e5 sub      eax, 0x180
00000001400d17ea je       0x1400d183a
00000001400d17ec sub      eax, 0x200
00000001400d17f1 je       0x1400d181c
00000001400d17f3 cmp      eax, 0x400
00000001400d17f8 jne      0x1400d15c0
00000001400d17fe mov      r8d, edi
00000001400d1801 lea      rdx, [rip + 0x85688c]
00000001400d1808 lea      rcx, [rsp + 0x44]
00000001400d180d call     0x1400311e8
00000001400d1812 mov      byte ptr [rsp + 0x40], 0xc
00000001400d1817 jmp      0x1400d18bc
00000001400d181c mov      r8d, edi
00000001400d181f lea      rdx, [rip + 0x85686e]
00000001400d1826 lea      rcx, [rsp + 0x44]
00000001400d182b call     0x1400311e8
00000001400d1830 mov      byte ptr [rsp + 0x40], 0xb
00000001400d1835 jmp      0x1400d18bc
00000001400d183a mov      r8d, edi
00000001400d183d lea      rdx, [rip + 0x856850]
00000001400d1844 lea      rcx, [rsp + 0x44]
00000001400d1849 call     0x1400311e8
00000001400d184e mov      byte ptr [rsp + 0x40], 9
00000001400d1853 jmp      0x1400d18bc
00000001400d1855 mov      r8d, edi
00000001400d1858 lea      rdx, [rip + 0x856835]
00000001400d185f lea      rcx, [rsp + 0x44]
00000001400d1864 call     0x1400311e8
00000001400d1869 mov      byte ptr [rsp + 0x40], 7
00000001400d186e jmp      0x1400d18bc
00000001400d1870 mov      rcx, qword ptr [rip + 0x84e789]
00000001400d1877 cmp      rcx, r12
00000001400d187a je       0x1400d15c0
00000001400d1880 cmp      byte ptr [rcx + 0x29], dil
00000001400d1884 jb       0x1400d15c0
00000001400d188a bt       dword ptr [rcx + 0x2c], 0xb
00000001400d188f jae      0x1400d15c0
00000001400d1895 mov      edx, 0x30
00000001400d189a jmp      0x1400d15ad
00000001400d189f mov      r8d, edi
00000001400d18a2 lea      rdx, [rip + 0x8567eb]
00000001400d18a9 lea      rcx, [rsp + 0x44]
00000001400d18ae call     0x1400311e8
00000001400d18b3 mov      eax, 6
00000001400d18b8 mov      byte ptr [rsp + 0x40], al
00000001400d18bc mov      edx, 2
00000001400d18c1 xor      r8d, r8d
00000001400d18c4 mov      al, 1
00000001400d18c6 mov      byte ptr [rsp + 0x41], al
00000001400d18ca jmp      0x1400d15c9
00000001400d18cf test     rsi, rsi
00000001400d18d2 je       0x1400d191f
00000001400d18d4 mov      r10, qword ptr [rip + 0x84e725]
00000001400d18db cmp      r10, r12
00000001400d18de je       0x1400d191f
00000001400d18e0 cmp      byte ptr [r10 + 0x29], 4
00000001400d18e5 jb       0x1400d191f
00000001400d18e7 bt       dword ptr [r10 + 0x2c], 0xb
00000001400d18ed jae      0x1400d191f
00000001400d18ef movzx    eax, cx
00000001400d18f2 lea      r9, [rip + 0x52cb07]
00000001400d18f9 mov      rcx, qword ptr [r10 + 0x18]
00000001400d18fd lea      r8, [rip + 0x5c142c]
00000001400d1904 mov      qword ptr [rbp - 0x48], rax
00000001400d1908 mov      edx, 0x4f
00000001400d190d lea      rax, [rbp - 0x50]
00000001400d1911 mov      qword ptr [rbp - 0x50], rsi
00000001400d1915 mov      qword ptr [rsp + 0x20], rax
00000001400d191a call     0x140001c88
00000001400d191f movaps   xmm0, xmmword ptr [rsp + 0x70]
00000001400d1924 lea      r8, [rsp + 0x70]
00000001400d1929 mov      edx, 0x30
00000001400d192e movdqa   xmmword ptr [rsp + 0x70], xmm0
00000001400d1934 mov      rcx, rbx
00000001400d1937 call     0x14007f364
00000001400d193c jmp      0x1400d1a29
00000001400d1941 mov      r14d, 6
00000001400d1947 jmp      0x1400d1a29
00000001400d194c mov      rcx, qword ptr [rip + 0x84e6ad]
00000001400d1953 cmp      rcx, r12
00000001400d1956 je       0x1400d197a
00000001400d1958 cmp      byte ptr [rcx + 0x29], dil
00000001400d195c jb       0x1400d197a
00000001400d195e bt       dword ptr [rcx + 0x2c], 0xb
00000001400d1963 jae      0x1400d197a
00000001400d1965 mov      edx, 0x30
00000001400d196a mov      rcx, qword ptr [rcx + 0x18]
00000001400d196e lea      r8, [rip + 0x5c13bb]
00000001400d1975 call     0x140001b88
00000001400d197a mov      r14d, 0xe
00000001400d1980 mov      r9d, r14d
00000001400d1983 mov      rcx, qword ptr [rip + 0x84e676]
00000001400d198a cmp      rcx, r12
00000001400d198d je       0x1400d1a29
00000001400d1993 cmp      byte ptr [rcx + 0x29], dil
00000001400d1997 jb       0x1400d1a29
00000001400d199d bt       dword ptr [rcx + 0x2c], 0xb
00000001400d19a2 jae      0x1400d1a29
00000001400d19a8 mov      eax, dword ptr [r15 + 0xc0ba0]
00000001400d19af mov      edx, 0x4b
00000001400d19b4 jmp      0x1400d1a15
00000001400d19b6 mov      rcx, qword ptr [rip + 0x84e643]
00000001400d19bd cmp      rcx, r12
00000001400d19c0 je       0x1400d19e4
00000001400d19c2 cmp      byte ptr [rcx + 0x29], dil
00000001400d19c6 jb       0x1400d19e4
00000001400d19c8 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d19cd jae      0x1400d19e4
00000001400d19cf mov      edx, 0x30
00000001400d19d4 mov      rcx, qword ptr [rcx + 0x18]
00000001400d19d8 lea      r8, [rip + 0x5c1351]
00000001400d19df call     0x140001b88
00000001400d19e4 mov      r14d, 0xe
00000001400d19ea mov      r8d, r14d
00000001400d19ed mov      rcx, qword ptr [rip + 0x84e60c]
00000001400d19f4 cmp      rcx, r12
00000001400d19f7 je       0x1400d1a29
00000001400d19f9 cmp      byte ptr [rcx + 0x29], dil
00000001400d19fd jb       0x1400d1a29
00000001400d19ff bt       dword ptr [rcx + 0x2c], 0xb
00000001400d1a04 jae      0x1400d1a29
00000001400d1a06 mov      eax, dword ptr [r15 + 0xc0ba4]
00000001400d1a0d mov      edx, 0x4a
00000001400d1a12 mov      r9d, r8d
00000001400d1a15 mov      rcx, qword ptr [rcx + 0x18]
00000001400d1a19 lea      r8, [rip + 0x5c1310]
00000001400d1a20 mov      dword ptr [rsp + 0x20], eax
00000001400d1a24 call     0x140001bec
00000001400d1a29 mov      eax, r14d
00000001400d1a2c mov      rcx, qword ptr [rbp + 0xc0]
00000001400d1a33 xor      rcx, rsp
00000001400d1a36 call     0x1405f45b0
00000001400d1a3b mov      rbx, qword ptr [rsp + 0x218]
00000001400d1a43 add      rsp, 0x1d0
00000001400d1a4a pop      r15
00000001400d1a4c pop      r14
00000001400d1a4e pop      r13
00000001400d1a50 pop      r12
00000001400d1a52 pop      rdi
00000001400d1a53 pop      rsi
00000001400d1a54 pop      rbp
00000001400d1a55 ret      