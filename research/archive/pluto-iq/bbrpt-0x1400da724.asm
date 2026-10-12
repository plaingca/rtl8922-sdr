00000001400da724 mov      qword ptr [rsp + 0x20], rbx
00000001400da729 push     rbp
00000001400da72a push     rsi
00000001400da72b push     rdi
00000001400da72c push     r12
00000001400da72e push     r13
00000001400da730 push     r14
00000001400da732 push     r15
00000001400da734 sub      rsp, 0x60
00000001400da738 mov      rax, qword ptr [rip + 0x84cd21]
00000001400da73f xor      rax, rsp
00000001400da742 mov      qword ptr [rsp + 0x58], rax
00000001400da747 mov      rax, qword ptr [r8 + 0x18]
00000001400da74b mov      rsi, rcx
00000001400da74e xor      r14d, r14d
00000001400da751 mov      qword ptr [rsp + 0x38], rdx
00000001400da756 mov      r10, rdx
00000001400da759 mov      r12, r8
00000001400da75c mov      edi, r14d
00000001400da75f mov      r13, qword ptr [rax]
00000001400da762 mov      al, byte ptr [r8 + 0x3958]
00000001400da769 neg      al
00000001400da76b mov      eax, 0x100
00000001400da770 sbb      cl, cl
00000001400da772 and      cl, 2
00000001400da775 add      cl, 0x18
00000001400da778 test     word ptr [r8 + 0x394c], ax
00000001400da780 lea      r8, [r13 + 4]
00000001400da784 movzx    edx, cl
00000001400da787 mov      rcx, rsi
00000001400da78a lea      eax, [rdx + 4]
00000001400da78d movzx    ebx, al
00000001400da790 cmove    ebx, edx
00000001400da793 mov      rdx, r10
00000001400da796 mov      dword ptr [rsp + 0x30], ebx
00000001400da79a lea      eax, [rbx + 3]
00000001400da79d movzx    eax, al
00000001400da7a0 mov      r9b, byte ptr [rax + r13]
00000001400da7a4 shr      r9b, 6
00000001400da7a8 call     0x1400cf750
00000001400da7ad lea      rdx, [r13 + 0xa]
00000001400da7b1 movzx    ebp, al
00000001400da7b4 lea      r8d, [r14 + 6]
00000001400da7b8 lea      rcx, [rsp + 0x40]
00000001400da7bd call     0x1400311e8
00000001400da7c2 mov      rcx, rsi
00000001400da7c5 call     0x1400dbea4
00000001400da7ca test     eax, eax
00000001400da7cc jle      0x1400da80b
00000001400da7ce lea      rcx, [rsp + 0x40]
00000001400da7d3 call     0x14007de8c
00000001400da7d8 test     al, al
00000001400da7da je       0x1400da7e5
00000001400da7dc cmp      byte ptr [rsi + 0xc0941], r14b
00000001400da7e3 jmp      0x1400da805
00000001400da7e5 lea      rdx, [rsp + 0x40]
00000001400da7ea mov      rcx, rsi
00000001400da7ed call     0x140051568
00000001400da7f2 mov      rdi, rax
00000001400da7f5 test     rax, rax
00000001400da7f8 je       0x1400daa7a
00000001400da7fe cmp      qword ptr [rax + 0x210], r14
00000001400da805 je       0x1400daa7a
00000001400da80b movzx    r15d, bl
00000001400da80f mov      eax, 0x100
00000001400da814 mov      rcx, rsi
00000001400da817 movzx    r14d, byte ptr [r15 + r13]
00000001400da81c movzx    ebx, byte ptr [r15 + r13 + 7]
00000001400da822 imul     r14d, eax
00000001400da826 movzx    eax, byte ptr [r15 + r13 + 2]
00000001400da82c shl      ebx, 8
00000001400da82f add      r14w, ax
00000001400da833 movzx    eax, byte ptr [r15 + r13 + 6]
00000001400da839 add      ebx, eax
00000001400da83b movzx    eax, byte ptr [r15 + r13 + 5]
00000001400da841 shl      ebx, 8
00000001400da844 add      ebx, eax
00000001400da846 movzx    eax, byte ptr [r15 + r13 + 4]
00000001400da84c shl      ebx, 8
00000001400da84f add      ebx, eax
00000001400da851 call     0x1400dbea4
00000001400da856 xor      edx, edx
00000001400da858 test     eax, eax
00000001400da85a jle      0x1400da889
00000001400da85c movzx    eax, r14w
00000001400da860 mov      ecx, ebx
00000001400da862 shl      rcx, 0x10
00000001400da866 or       rcx, rax
00000001400da869 mov      rax, rcx
00000001400da86c sub      rax, qword ptr [rdi + 0x230]
00000001400da873 cmp      rax, 0xf4240
00000001400da879 jae      0x1400da889
00000001400da87b mov      qword ptr [rdi + 0x230], rcx
00000001400da882 mov      word ptr [rdi + 0x236], dx
00000001400da889 mov      rcx, rsi
00000001400da88c call     0x1400dbea4
00000001400da891 xor      edx, edx
00000001400da893 test     eax, eax
00000001400da895 jle      0x1400da8bd
00000001400da897 lea      rcx, [rsp + 0x40]
00000001400da89c call     0x14007de8c
00000001400da8a1 test     al, al
00000001400da8a3 je       0x1400da8b1
00000001400da8a5 lea      rax, [rsi + 0xc0941]
00000001400da8ac jmp      0x1400da966
00000001400da8b1 mov      rax, qword ptr [rdi + 0x210]
00000001400da8b8 jmp      0x1400da966
00000001400da8bd bt       word ptr [r12 + 0x394c], 9
00000001400da8c8 jae      0x1400da8e4
00000001400da8ca mov      rax, qword ptr [rsi + 0x113710]
00000001400da8d1 cmp      byte ptr [rax + 0x969], dl
00000001400da8d7 je       0x1400da8e4
00000001400da8d9 add      rax, 0x96a
00000001400da8df jmp      0x1400da966
00000001400da8e4 cmp      bpl, 4
00000001400da8e8 jne      0x1400da939
00000001400da8ea mov      rcx, qword ptr [rip + 0x84570f]
00000001400da8f1 lea      rbx, [rip + 0x845708]
00000001400da8f8 cmp      rcx, rbx
00000001400da8fb je       0x1400daa7a
00000001400da901 cmp      byte ptr [rcx + 0x29], 3
00000001400da905 jb       0x1400daa7a
00000001400da90b test     dword ptr [rcx + 0x2c], 0x800
00000001400da912 je       0x1400daa7a
00000001400da918 mov      rcx, qword ptr [rcx + 0x18]
00000001400da91c lea      r9, [rip + 0x523d8d]
00000001400da923 mov      edx, 0x95
00000001400da928 lea      r8, [rip + 0x5b8401]
00000001400da92f call     0x140008874
00000001400da934 jmp      0x1400daa7a
00000001400da939 mov      rax, rbp
00000001400da93c test     bpl, bpl
00000001400da93f jne      0x1400da950
00000001400da941 imul     rax, rax, 0x3d
00000001400da945 add      rax, 0xc0bb5
00000001400da94b add      rax, rsi
00000001400da94e jmp      0x1400da966
00000001400da950 mov      rcx, qword ptr [rsp + 0x38]
00000001400da955 imul     rax, rax, 0x130
00000001400da95c add      rcx, 0x1870
00000001400da963 add      rax, rcx
00000001400da966 lea      r9, [rsp + 0x40]
00000001400da96b mov      qword ptr [rsp + 0x20], rax
00000001400da970 movzx    r8d, r14w
00000001400da974 lea      rcx, [rsp + 0x48]
00000001400da979 mov      edx, ebx
00000001400da97b call     0x140190cb0
00000001400da980 movzx    ecx, byte ptr [rsi + 0xc15a9]
00000001400da987 mov      edx, 0x10
00000001400da98c mov      rax, qword ptr [r12 + 0x18]
00000001400da991 lea      r8, [r15 + rcx]
00000001400da995 movzx    r9d, word ptr [rax + 0x10]
00000001400da99a add      r8, r13
00000001400da99d movzx    eax, byte ptr [rsp + 0x30]
00000001400da9a2 sub      r9d, ecx
00000001400da9a5 sub      r9d, eax
00000001400da9a8 mov      qword ptr [rsp + 0x20], r8
00000001400da9ad lea      rcx, [rsp + 0x48]
00000001400da9b2 call     0x140190ed0
00000001400da9b7 test     al, al
00000001400da9b9 jne      0x1400daa7e
00000001400da9bf mov      rcx, qword ptr [rip + 0x84563a]
00000001400da9c6 lea      rbx, [rip + 0x845633]
00000001400da9cd cmp      rcx, rbx
00000001400da9d0 je       0x1400da9f6
00000001400da9d2 cmp      byte ptr [rcx + 0x29], 4
00000001400da9d6 jb       0x1400da9f6
00000001400da9d8 test     dword ptr [rcx + 0x2c], 0x800
00000001400da9df je       0x1400da9f6
00000001400da9e1 mov      rcx, qword ptr [rcx + 0x18]
00000001400da9e5 lea      r8, [rip + 0x5b8344]
00000001400da9ec mov      edx, 0x96
00000001400da9f1 call     0x140001b88
00000001400da9f6 mov      rcx, rsi
00000001400da9f9 call     0x1400dbea4
00000001400da9fe test     eax, eax
00000001400daa00 jle      0x1400daa7a
00000001400daa02 test     rdi, rdi
00000001400daa05 je       0x1400daa4a
00000001400daa07 mov      r9d, dword ptr [rdi + 0x24c]
00000001400daa0e inc      r9d
00000001400daa11 mov      dword ptr [rdi + 0x24c], r9d
00000001400daa18 mov      rcx, qword ptr [rip + 0x8455e1]
00000001400daa1f cmp      rcx, rbx
00000001400daa22 je       0x1400daa7a
00000001400daa24 cmp      byte ptr [rcx + 0x29], 4
00000001400daa28 jb       0x1400daa7a
00000001400daa2a test     dword ptr [rcx + 0x2c], 0x4000
00000001400daa31 je       0x1400daa7a
00000001400daa33 mov      rcx, qword ptr [rcx + 0x18]
00000001400daa37 lea      r8, [rip + 0x5b82f2]
00000001400daa3e mov      edx, 0x97
00000001400daa43 call     0x140001bb0
00000001400daa48 jmp      0x1400daa7a
00000001400daa4a mov      rcx, qword ptr [rip + 0x8455af]
00000001400daa51 cmp      rcx, rbx
00000001400daa54 je       0x1400daa7a
00000001400daa56 cmp      byte ptr [rcx + 0x29], 4
00000001400daa5a jb       0x1400daa7a
00000001400daa5c test     dword ptr [rcx + 0x2c], 0x4000
00000001400daa63 je       0x1400daa7a
00000001400daa65 mov      rcx, qword ptr [rcx + 0x18]
00000001400daa69 lea      r8, [rip + 0x5b82c0]
00000001400daa70 mov      edx, 0x98
00000001400daa75 call     0x140001b88
00000001400daa7a xor      al, al
00000001400daa7c jmp      0x1400daab7
00000001400daa7e mov      rcx, qword ptr [rip + 0x84557b]
00000001400daa85 lea      rbx, [rip + 0x845574]
00000001400daa8c cmp      rcx, rbx
00000001400daa8f je       0x1400daab5
00000001400daa91 cmp      byte ptr [rcx + 0x29], 4
00000001400daa95 jb       0x1400daab5
00000001400daa97 test     dword ptr [rcx + 0x2c], 0x800
00000001400daa9e je       0x1400daab5
00000001400daaa0 mov      rcx, qword ptr [rcx + 0x18]
00000001400daaa4 lea      r8, [rip + 0x5b8285]
00000001400daaab mov      edx, 0x99
00000001400daab0 call     0x140001b88
00000001400daab5 mov      al, 1
00000001400daab7 mov      rcx, qword ptr [rsp + 0x58]
00000001400daabc xor      rcx, rsp
00000001400daabf call     0x1405f45b0
00000001400daac4 mov      rbx, qword ptr [rsp + 0xb8]
00000001400daacc add      rsp, 0x60
00000001400daad0 pop      r15
00000001400daad2 pop      r14
00000001400daad4 pop      r13
00000001400daad6 pop      r12
00000001400daad8 pop      rdi
00000001400daad9 pop      rsi
00000001400daada pop      rbp
00000001400daadb ret      