00000001403e6808 push     rbp
00000001403e680a push     rbx
00000001403e680b push     rsi
00000001403e680c push     rdi
00000001403e680d push     r12
00000001403e680f push     r13
00000001403e6811 push     r14
00000001403e6813 push     r15
00000001403e6815 mov      rbp, rsp
00000001403e6818 sub      rsp, 0x78
00000001403e681c mov      rax, qword ptr [rip + 0x540c3d]
00000001403e6823 xor      rax, rsp
00000001403e6826 mov      qword ptr [rbp - 0x10], rax
00000001403e682a movzx    eax, word ptr [rip + 0x211ccf]
00000001403e6831 mov      r13, r8
00000001403e6834 mov      ebx, dword ptr [r8]
00000001403e6837 xorps    xmm0, xmm0
00000001403e683a mov      word ptr [rbp - 0x48], ax
00000001403e683e lea      r8, [rbp - 0x48]
00000001403e6842 mov      al, byte ptr [rip + 0x211cba]
00000001403e6848 mov      rsi, rcx
00000001403e684b mov      rcx, qword ptr [rbp + 0x68]
00000001403e684f mov      r14, r9
00000001403e6852 mov      byte ptr [rbp - 0x46], al
00000001403e6855 lea      r9, [rdx + 0x10]
00000001403e6859 xor      eax, eax
00000001403e685b mov      qword ptr [rbp - 0x40], rcx
00000001403e685f mov      qword ptr [rbp - 0x18], rax
00000001403e6863 mov      r15, rdx
00000001403e6866 mov      edi, dword ptr [rcx]
00000001403e6868 mov      rax, r9
00000001403e686b movups   xmmword ptr [rbp - 0x38], xmm0
00000001403e686f sub      r8, r9
00000001403e6872 movups   xmmword ptr [rbp - 0x28], xmm0
00000001403e6876 movzx    ecx, byte ptr [rax]
00000001403e6879 movzx    edx, byte ptr [rax + r8]
00000001403e687e sub      ecx, edx
00000001403e6880 jne      0x1403e6889
00000001403e6882 inc      rax
00000001403e6885 test     edx, edx
00000001403e6887 jne      0x1403e6876
00000001403e6889 test     ecx, ecx
00000001403e688b jne      0x1403e690b
00000001403e688d cmp      ebx, edi
00000001403e688f jae      0x1403e6cf5
00000001403e6895 mov      edx, edi
00000001403e6897 lea      rcx, [r14 + rbx]
00000001403e689b sub      edx, ebx
00000001403e689d lea      r8, [rip + 0x268c2c]
00000001403e68a4 call     0x140044426
00000001403e68a9 add      ebx, eax
00000001403e68ab cmp      ebx, edi
00000001403e68ad jae      0x1403e6cf5
00000001403e68b3 mov      edx, edi
00000001403e68b5 mov      ecx, ebx
00000001403e68b7 sub      edx, ebx
00000001403e68b9 lea      r8, [rip + 0x268c50]
00000001403e68c0 add      rcx, r14
00000001403e68c3 call     0x140044426
00000001403e68c8 add      ebx, eax
00000001403e68ca cmp      ebx, edi
00000001403e68cc jae      0x1403e6cf5
00000001403e68d2 mov      edx, edi
00000001403e68d4 mov      ecx, ebx
00000001403e68d6 sub      edx, ebx
00000001403e68d8 lea      r8, [rip + 0x268c71]
00000001403e68df add      rcx, r14
00000001403e68e2 call     0x140044426
00000001403e68e7 add      ebx, eax
00000001403e68e9 cmp      ebx, edi
00000001403e68eb jae      0x1403e6cf5
00000001403e68f1 mov      edx, edi
00000001403e68f3 mov      ecx, ebx
00000001403e68f5 sub      edx, ebx
00000001403e68f7 lea      r8, [rip + 0x268c92]
00000001403e68fe add      rcx, r14
00000001403e6901 call     0x140044426
00000001403e6906 jmp      0x1403e6cf3
00000001403e690b lea      r12, [rip + 0x234e5e]
00000001403e6912 mov      rcx, r9
00000001403e6915 mov      rdx, r12
00000001403e6918 lea      r8, [rbp - 0x38]
00000001403e691c call     0x140044420
00000001403e6921 mov      eax, dword ptr [rbp - 0x38]
00000001403e6924 cmp      eax, 1
00000001403e6927 jne      0x1403e6adf
00000001403e692d lea      rcx, [r15 + 0x20]
00000001403e6931 mov      rdx, r12
00000001403e6934 lea      r8, [rbp - 0x34]
00000001403e6938 call     0x140044420
00000001403e693d lea      rcx, [r15 + 0x30]
00000001403e6941 mov      rdx, r12
00000001403e6944 lea      r8, [rbp - 0x30]
00000001403e6948 call     0x140044420
00000001403e694d lea      rcx, [r15 + 0x40]
00000001403e6951 mov      rdx, r12
00000001403e6954 lea      r8, [rbp - 0x2c]
00000001403e6958 call     0x140044420
00000001403e695d movzx    r15d, byte ptr [rbp - 0x30]
00000001403e6962 cmp      r15b, 0x80
00000001403e6966 jb       0x1403e69c5
00000001403e6968 mov      rcx, qword ptr [rip + 0x539691]
00000001403e696f lea      rax, [rip + 0x53968a]
00000001403e6976 cmp      rcx, rax
00000001403e6979 je       0x1403e6cff
00000001403e697f cmp      byte ptr [rcx + 0x169], 3
00000001403e6986 jb       0x1403e6cff
00000001403e698c test     dword ptr [rcx + 0x16c], 0x1000
00000001403e6996 je       0x1403e6cff
00000001403e699c mov      edx, 0x47
00000001403e69a1 mov      rcx, qword ptr [rcx + 0x158]
00000001403e69a8 lea      r8, [rip + 0x2ee901]
00000001403e69af mov      dword ptr [rsp + 0x20], r15d
00000001403e69b4 lea      r9, [rip + 0x268c05]
00000001403e69bb call     0x1400088d8
00000001403e69c0 jmp      0x1403e6cff
00000001403e69c5 mov      rdx, qword ptr [rsi + r15*8 + 0x10]
00000001403e69ca mov      rcx, rsi
00000001403e69cd call     0x1402ea04c
00000001403e69d2 test     al, al
00000001403e69d4 jne      0x1403e6a2e
00000001403e69d6 mov      rcx, qword ptr [rip + 0x539623]
00000001403e69dd lea      rax, [rip + 0x53961c]
00000001403e69e4 cmp      rcx, rax
00000001403e69e7 je       0x1403e6cff
00000001403e69ed cmp      byte ptr [rcx + 0x169], 3
00000001403e69f4 jb       0x1403e6cff
00000001403e69fa test     dword ptr [rcx + 0x16c], 0x1000
00000001403e6a04 je       0x1403e6cff
00000001403e6a0a mov      edx, 0x48
00000001403e6a0f mov      rcx, qword ptr [rcx + 0x158]
00000001403e6a16 lea      r9, [rip + 0x268ba3]
00000001403e6a1d lea      r8, [rip + 0x2ee88c]
00000001403e6a24 call     0x140008874
00000001403e6a29 jmp      0x1403e6cff
00000001403e6a2e mov      rcx, qword ptr [rsi + r15*8 + 0x410]
00000001403e6a36 test     rcx, rcx
00000001403e6a39 jne      0x1403e6a80
00000001403e6a3b mov      rcx, qword ptr [rip + 0x5395be]
00000001403e6a42 lea      rax, [rip + 0x5395b7]
00000001403e6a49 cmp      rcx, rax
00000001403e6a4c je       0x1403e6cff
00000001403e6a52 cmp      byte ptr [rcx + 0x1e9], 4
00000001403e6a59 jb       0x1403e6cff
00000001403e6a5f test     dword ptr [rcx + 0x1ec], 0x1000
00000001403e6a69 je       0x1403e6cff
00000001403e6a6f mov      edx, 0x49
00000001403e6a74 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403e6a7b jmp      0x1403e69a8
00000001403e6a80 mov      al, byte ptr [rbp - 0x34]
00000001403e6a83 movzx    edx, r15w
00000001403e6a87 mov      byte ptr [rcx + 0x68], al
00000001403e6a8a mov      rcx, qword ptr [rsi + r15*8 + 0x410]
00000001403e6a92 mov      eax, dword ptr [rbp - 0x2c]
00000001403e6a95 mov      dword ptr [rcx + 0x70], eax
00000001403e6a98 mov      rcx, rsi
00000001403e6a9b mov      r8d, dword ptr [rbp - 0x2c]
00000001403e6a9f call     0x1403e71a4
00000001403e6aa4 cmp      ebx, edi
00000001403e6aa6 jae      0x1403e6cf5
00000001403e6aac mov      rax, qword ptr [rsi + r15*8 + 0x410]
00000001403e6ab4 lea      rdx, [rip + 0x2112b5]
00000001403e6abb lea      r8, [rip + 0x2112be]
00000001403e6ac2 lea      rcx, [r14 + rbx]
00000001403e6ac6 cmp      dword ptr [rax + 0x70], 1
00000001403e6aca cmove    r8, rdx
00000001403e6ace mov      qword ptr [rsp + 0x20], r8
00000001403e6ad3 lea      r8, [rip + 0x268b06]
00000001403e6ada jmp      0x1403e6ce7
00000001403e6adf cmp      eax, 2
00000001403e6ae2 jne      0x1403e6b23
00000001403e6ae4 lea      rcx, [r15 + 0x20]
00000001403e6ae8 mov      rdx, r12
00000001403e6aeb lea      r8, [rbp - 0x34]
00000001403e6aef call     0x140044420
00000001403e6af4 mov      r9d, dword ptr [rbp - 0x34]
00000001403e6af8 mov      byte ptr [rsi + 0x82dc], r9b
00000001403e6aff cmp      ebx, edi
00000001403e6b01 jae      0x1403e6cf5
00000001403e6b07 mov      edx, edi
00000001403e6b09 shr      r9d, 1
00000001403e6b0c sub      edx, ebx
00000001403e6b0e lea      rcx, [r14 + rbx]
00000001403e6b12 lea      r8, [rip + 0x268ae7]
00000001403e6b19 call     0x140044426
00000001403e6b1e jmp      0x1403e6cf3
00000001403e6b23 cmp      eax, 3
00000001403e6b26 jne      0x1403e6b77
00000001403e6b28 lea      rcx, [r15 + 0x20]
00000001403e6b2c mov      rdx, r12
00000001403e6b2f lea      r8, [rbp - 0x34]
00000001403e6b33 call     0x140044420
00000001403e6b38 movzx    eax, byte ptr [rbp - 0x34]
00000001403e6b3c mov      dword ptr [rsi + 0x82d8], eax
00000001403e6b42 cmp      ebx, edi
00000001403e6b44 jae      0x1403e6cf5
00000001403e6b4a test     eax, eax
00000001403e6b4c lea      rcx, [rip + 0x268acd]
00000001403e6b53 mov      edx, edi
00000001403e6b55 lea      r9, [rip + 0x268ad4]
00000001403e6b5c cmove    r9, rcx
00000001403e6b60 lea      r8, [rip + 0x268ad9]
00000001403e6b67 sub      edx, ebx
00000001403e6b69 lea      rcx, [r14 + rbx]
00000001403e6b6d call     0x140044426
00000001403e6b72 jmp      0x1403e6cf3
00000001403e6b77 cmp      eax, 0x64
00000001403e6b7a jne      0x1403e6cf5
00000001403e6b80 lea      rcx, [r15 + 0x20]
00000001403e6b84 mov      rdx, r12
00000001403e6b87 lea      r8, [rbp - 0x34]
00000001403e6b8b call     0x140044420
00000001403e6b90 movzx    r15d, byte ptr [rbp - 0x34]
00000001403e6b95 cmp      r15b, 0x80
00000001403e6b99 jb       0x1403e6bd9
00000001403e6b9b mov      rcx, qword ptr [rip + 0x53945e]
00000001403e6ba2 lea      rax, [rip + 0x539457]
00000001403e6ba9 cmp      rcx, rax
00000001403e6bac je       0x1403e6cff
00000001403e6bb2 cmp      byte ptr [rcx + 0x169], 3
00000001403e6bb9 jb       0x1403e6cff
00000001403e6bbf test     dword ptr [rcx + 0x16c], 0x1000
00000001403e6bc9 je       0x1403e6cff
00000001403e6bcf mov      edx, 0x4a
00000001403e6bd4 jmp      0x1403e69a1
00000001403e6bd9 mov      rdx, qword ptr [rsi + r15*8 + 0x10]
00000001403e6bde mov      rcx, rsi
00000001403e6be1 call     0x1402ea04c
00000001403e6be6 test     al, al
00000001403e6be8 jne      0x1403e6c28
00000001403e6bea mov      rcx, qword ptr [rip + 0x53940f]
00000001403e6bf1 lea      rax, [rip + 0x539408]
00000001403e6bf8 cmp      rcx, rax
00000001403e6bfb je       0x1403e6cff
00000001403e6c01 cmp      byte ptr [rcx + 0x169], 3
00000001403e6c08 jb       0x1403e6cff
00000001403e6c0e test     dword ptr [rcx + 0x16c], 0x1000
00000001403e6c18 je       0x1403e6cff
00000001403e6c1e mov      edx, 0x4b
00000001403e6c23 jmp      0x1403e6a0f
00000001403e6c28 mov      rax, qword ptr [rsi + r15*8 + 0x410]
00000001403e6c30 test     rax, rax
00000001403e6c33 jne      0x1403e6c73
00000001403e6c35 mov      rcx, qword ptr [rip + 0x5393c4]
00000001403e6c3c lea      rax, [rip + 0x5393bd]
00000001403e6c43 cmp      rcx, rax
00000001403e6c46 je       0x1403e6cff
00000001403e6c4c cmp      byte ptr [rcx + 0x1e9], 4
00000001403e6c53 jb       0x1403e6cff
00000001403e6c59 test     dword ptr [rcx + 0x1ec], 0x1000
00000001403e6c63 je       0x1403e6cff
00000001403e6c69 mov      edx, 0x4c
00000001403e6c6e jmp      0x1403e6a74
00000001403e6c73 cmp      ebx, edi
00000001403e6c75 jae      0x1403e6ca4
00000001403e6c77 mov      al, byte ptr [rax + 0x68]
00000001403e6c7a lea      rcx, [rip + 0x2689df]
00000001403e6c81 test     al, al
00000001403e6c83 lea      r9, [rip + 0x213196]
00000001403e6c8a mov      edx, edi
00000001403e6c8c lea      r8, [rip + 0x2689dd]
00000001403e6c93 cmovne   r9, rcx
00000001403e6c97 sub      edx, ebx
00000001403e6c99 lea      rcx, [r14 + rbx]
00000001403e6c9d call     0x140044426
00000001403e6ca2 add      ebx, eax
00000001403e6ca4 mov      rax, qword ptr [rsi + r15*8 + 0x410]
00000001403e6cac cmp      byte ptr [rax + 0x68], 0
00000001403e6cb0 je       0x1403e6cbc
00000001403e6cb2 cmp      ebx, edi
00000001403e6cb4 jae      0x1403e6cf5
00000001403e6cb6 cmp      dword ptr [rax + 0x70], 1
00000001403e6cba jmp      0x1403e6cc4
00000001403e6cbc cmp      ebx, edi
00000001403e6cbe jae      0x1403e6cf5
00000001403e6cc0 cmp      dword ptr [rax + 0x6c], 1
00000001403e6cc4 lea      r8, [rip + 0x2110b5]
00000001403e6ccb mov      ecx, ebx
00000001403e6ccd lea      rdx, [rip + 0x21109c]
00000001403e6cd4 cmove    r8, rdx
00000001403e6cd8 add      rcx, r14
00000001403e6cdb mov      qword ptr [rsp + 0x20], r8
00000001403e6ce0 lea      r8, [rip + 0x2689a9]
00000001403e6ce7 mov      edx, edi
00000001403e6ce9 mov      r9d, r15d
00000001403e6cec sub      edx, ebx
00000001403e6cee call     0x140044426
00000001403e6cf3 add      ebx, eax
00000001403e6cf5 mov      rax, qword ptr [rbp - 0x40]
00000001403e6cf9 mov      dword ptr [r13], ebx
00000001403e6cfd mov      dword ptr [rax], edi
00000001403e6cff mov      rcx, qword ptr [rbp - 0x10]
00000001403e6d03 xor      rcx, rsp
00000001403e6d06 call     0x1405f45b0
00000001403e6d0b add      rsp, 0x78
00000001403e6d0f pop      r15
00000001403e6d11 pop      r14
00000001403e6d13 pop      r13
00000001403e6d15 pop      r12
00000001403e6d17 pop      rdi
00000001403e6d18 pop      rsi
00000001403e6d19 pop      rbx
00000001403e6d1a pop      rbp
00000001403e6d1b ret      