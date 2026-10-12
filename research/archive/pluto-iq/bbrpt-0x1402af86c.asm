00000001402af86c mov      qword ptr [rsp + 8], rbx
00000001402af871 mov      qword ptr [rsp + 0x20], r9
00000001402af876 push     rbp
00000001402af877 push     rsi
00000001402af878 push     rdi
00000001402af879 push     r12
00000001402af87b push     r13
00000001402af87d push     r14
00000001402af87f push     r15
00000001402af881 sub      rsp, 0x60
00000001402af885 xor      r13d, r13d
00000001402af888 mov      rbp, r9
00000001402af88b mov      rdi, rdx
00000001402af88e mov      rsi, rcx
00000001402af891 mov      r14d, r13d
00000001402af894 test     r8d, r8d
00000001402af897 jne      0x1402af8a0
00000001402af899 xor      eax, eax
00000001402af89b jmp      0x1402afbf2
00000001402af8a0 mov      r15d, dword ptr [rsp + 0xc0]
00000001402af8a8 test     r15d, r15d
00000001402af8ab je       0x1402af8c2
00000001402af8ad mov      edx, r15d
00000001402af8b0 lea      r8, [rip + 0x346209]
00000001402af8b7 mov      rcx, rbp
00000001402af8ba call     0x140044426
00000001402af8bf mov      r14d, eax
00000001402af8c2 mov      eax, 0x2d
00000001402af8c7 lea      rbx, [rdi + 0x10]
00000001402af8cb lea      r12d, [rax + 0x3b]
00000001402af8cf cmp      al, byte ptr [rbx]
00000001402af8d1 jne      0x1402af8f4
00000001402af8d3 cmp      r12b, byte ptr [rbx + 1]
00000001402af8d7 jne      0x1402af8f4
00000001402af8d9 cmp      r13b, byte ptr [rbx + 2]
00000001402af8dd jne      0x1402af8f4
00000001402af8df cmp      r14d, r15d
00000001402af8e2 jae      0x1402afbef
00000001402af8e8 lea      r8, [rip + 0x375051]
00000001402af8ef jmp      0x1402afbd4
00000001402af8f4 mov      rdx, rbx
00000001402af8f7 lea      rcx, [rip + 0x348cd2]
00000001402af8fe call     0x140044360
00000001402af903 test     eax, eax
00000001402af905 jne      0x1402afa5a
00000001402af90b mov      rbx, qword ptr [rsi + 0x798]
00000001402af912 cmp      r14d, r15d
00000001402af915 jae      0x1402af9aa
00000001402af91b movzx    r8d, byte ptr [rbx + 0x10ca9]
00000001402af923 mov      edx, r15d
00000001402af926 mov      eax, dword ptr [rbx + 0x10ca4]
00000001402af92c sub      edx, r14d
00000001402af92f movzx    r9d, byte ptr [rbx + 0x10ca8]
00000001402af937 mov      dword ptr [rsp + 0x28], eax
00000001402af93b mov      dword ptr [rsp + 0x20], r8d
00000001402af940 lea      r8, [rip + 0x375049]
00000001402af947 mov      ecx, r14d
00000001402af94a add      rcx, rbp
00000001402af94d call     0x140044426
00000001402af952 add      r14d, eax
00000001402af955 cmp      r14d, r15d
00000001402af958 jae      0x1402af9aa
00000001402af95a movzx    r8d, word ptr [rbx + 0x10cf4]
00000001402af962 mov      edx, r15d
00000001402af965 movzx    r9d, byte ptr [rbx + 0x10cd8]
00000001402af96d sub      edx, r14d
00000001402af970 mov      eax, dword ptr [rbx + 0x10cdc]
00000001402af976 mov      dword ptr [rsp + 0x38], r8d
00000001402af97b lea      r8, [rip + 0x37503e]
00000001402af982 mov      dword ptr [rsp + 0x30], eax
00000001402af986 mov      eax, dword ptr [rbx + 0x10cd4]
00000001402af98c mov      dword ptr [rsp + 0x28], r9d
00000001402af991 mov      r9d, dword ptr [rbx + 0x10cd0]
00000001402af998 mov      ecx, r14d
00000001402af99b add      rcx, rbp
00000001402af99e mov      dword ptr [rsp + 0x20], eax
00000001402af9a2 call     0x140044426
00000001402af9a7 add      r14d, eax
00000001402af9aa lea      r13, [rbx + 0x10cb0]
00000001402af9b1 mov      r12d, 2
00000001402af9b7 mov      rax, qword ptr [r13]
00000001402af9bb test     rax, rax
00000001402af9be je       0x1402afa47
00000001402af9c4 mov      rcx, qword ptr [rax + 0x18]
00000001402af9c8 test     rcx, rcx
00000001402af9cb je       0x1402afa47
00000001402af9cd cmp      r14d, r15d
00000001402af9d0 jae      0x1402afa47
00000001402af9d2 movzx    r8d, byte ptr [rcx + 0xe]
00000001402af9d7 lea      r9, [rip + 0x348792]
00000001402af9de movzx    r10d, byte ptr [rcx + 0xd]
00000001402af9e3 mov      edx, r15d
00000001402af9e6 movzx    r11d, byte ptr [rcx + 0xc]
00000001402af9eb movzx    ebx, byte ptr [rcx + 0xb]
00000001402af9ef movzx    edi, byte ptr [rcx + 0xa]
00000001402af9f3 movzx    esi, byte ptr [rcx + 9]
00000001402af9f7 lea      rcx, [rip + 0x348762]
00000001402af9fe cmp      byte ptr [r13 + 8], 0
00000001402afa03 movzx    ebp, word ptr [rax + 0x2c]
00000001402afa07 mov      dword ptr [rsp + 0x50], r8d
00000001402afa0c cmovne   r9, rcx
00000001402afa10 mov      dword ptr [rsp + 0x48], r10d
00000001402afa15 lea      r8, [rip + 0x374ff4]
00000001402afa1c mov      dword ptr [rsp + 0x40], r11d
00000001402afa21 sub      edx, r14d
00000001402afa24 mov      dword ptr [rsp + 0x38], ebx
00000001402afa28 mov      dword ptr [rsp + 0x30], edi
00000001402afa2c mov      ecx, r14d
00000001402afa2f add      rcx, qword ptr [rsp + 0xb8]
00000001402afa37 mov      dword ptr [rsp + 0x28], esi
00000001402afa3b mov      dword ptr [rsp + 0x20], ebp
00000001402afa3f call     0x140044426
00000001402afa44 add      r14d, eax
00000001402afa47 add      r13, 0x10
00000001402afa4b sub      r12, 1
00000001402afa4f jne      0x1402af9b7
00000001402afa55 jmp      0x1402afbef
00000001402afa5a mov      rdx, rbx
00000001402afa5d lea      rcx, [rip + 0x374ffc]
00000001402afa64 call     0x140044360
00000001402afa69 test     eax, eax
00000001402afa6b jne      0x1402afbc8
00000001402afa71 mov      rbx, qword ptr [rsi + 0x798]
00000001402afa78 lea      rcx, [rip + 0x348c31]
00000001402afa7f lea      rsi, [rdi + 0x20]
00000001402afa83 mov      dword ptr [rsp + 0xb0], r13d
00000001402afa8b mov      rdx, rsi
00000001402afa8e add      rbx, 0x10c80
00000001402afa95 call     0x140044360
00000001402afa9a test     eax, eax
00000001402afa9c jne      0x1402afab9
00000001402afa9e mov      dword ptr [rbx], 3
00000001402afaa4 mov      byte ptr [rbx + 4], r13b
00000001402afaa8 mov      qword ptr [rbx + 8], r13
00000001402afaac mov      byte ptr [rbx + 0x10], r13b
00000001402afab0 mov      byte ptr [rbx + 0x20], r13b
00000001402afab4 jmp      0x1402afb94
00000001402afab9 mov      eax, 0x63
00000001402afabe cmp      al, byte ptr [rsi]
00000001402afac0 jne      0x1402afb66
00000001402afac6 cmp      r12b, byte ptr [rsi + 1]
00000001402afaca jne      0x1402afb66
00000001402afad0 cmp      r13b, byte ptr [rsi + 2]
00000001402afad4 jne      0x1402afb66
00000001402afada mov      eax, 0x32
00000001402afadf lea      ecx, [rax + 0x35]
00000001402afae2 cmp      al, byte ptr [rdi + 0x30]
00000001402afae5 jne      0x1402afaf7
00000001402afae7 cmp      cl, byte ptr [rdi + 0x31]
00000001402afaea jne      0x1402afaf7
00000001402afaec cmp      r13b, byte ptr [rdi + 0x32]
00000001402afaf0 jne      0x1402afaf7
00000001402afaf2 mov      dword ptr [rbx], r13d
00000001402afaf5 jmp      0x1402afb3b
00000001402afaf7 mov      eax, 0x35
00000001402afafc cmp      al, byte ptr [rdi + 0x30]
00000001402afaff jne      0x1402afb14
00000001402afb01 cmp      cl, byte ptr [rdi + 0x31]
00000001402afb04 jne      0x1402afb14
00000001402afb06 cmp      r13b, byte ptr [rdi + 0x32]
00000001402afb0a jne      0x1402afb14
00000001402afb0c mov      dword ptr [rbx], 1
00000001402afb12 jmp      0x1402afb3b
00000001402afb14 mov      eax, 0x36
00000001402afb19 cmp      al, byte ptr [rdi + 0x30]
00000001402afb1c jne      0x1402afbc8
00000001402afb22 cmp      cl, byte ptr [rdi + 0x31]
00000001402afb25 jne      0x1402afbc8
00000001402afb2b cmp      r13b, byte ptr [rdi + 0x32]
00000001402afb2f jne      0x1402afbc8
00000001402afb35 mov      dword ptr [rbx], 2
00000001402afb3b lea      rcx, [rdi + 0x40]
00000001402afb3f lea      rdx, [rsp + 0xb0]
00000001402afb47 call     0x1402acc40
00000001402afb4c mov      al, byte ptr [rsp + 0xb0]
00000001402afb53 mov      byte ptr [rbx + 4], al
00000001402afb56 mov      al, byte ptr [rsp + 0xb0]
00000001402afb5d mov      byte ptr [rbx + 0x10], al
00000001402afb60 mov      qword ptr [rbx + 8], r13
00000001402afb64 jmp      0x1402afb94
00000001402afb66 mov      rdx, rsi
00000001402afb69 lea      rcx, [rip + 0x374f00]
00000001402afb70 call     0x140044360
00000001402afb75 test     eax, eax
00000001402afb77 jne      0x1402afbc8
00000001402afb79 lea      rcx, [rdi + 0x30]
00000001402afb7d lea      rdx, [rsp + 0xb0]
00000001402afb85 call     0x1402acc40
00000001402afb8a mov      al, byte ptr [rsp + 0xb0]
00000001402afb91 mov      byte ptr [rbx + 0x20], al
00000001402afb94 cmp      r14d, r15d
00000001402afb97 jae      0x1402afbef
00000001402afb99 movzx    r8d, byte ptr [rbx + 4]
00000001402afb9e sub      r15d, r14d
00000001402afba1 movzx    eax, byte ptr [rbx + 0x20]
00000001402afba5 mov      r9d, dword ptr [rbx]
00000001402afba8 mov      dword ptr [rsp + 0x28], eax
00000001402afbac mov      dword ptr [rsp + 0x20], r8d
00000001402afbb1 lea      r8, [rip + 0x374ec8]
00000001402afbb8 mov      ecx, r14d
00000001402afbbb mov      edx, r15d
00000001402afbbe add      rcx, rbp
00000001402afbc1 call     0x140044426
00000001402afbc6 jmp      0x1402afbec
00000001402afbc8 cmp      r14d, r15d
00000001402afbcb jae      0x1402afbef
00000001402afbcd lea      r8, [rip + 0x37122c]
00000001402afbd4 sub      r15d, r14d
00000001402afbd7 mov      ecx, r14d
00000001402afbda mov      edx, r15d
00000001402afbdd lea      r9, [rip + 0x374d3c]
00000001402afbe4 add      rcx, rbp
00000001402afbe7 call     0x140044426
00000001402afbec add      r14d, eax
00000001402afbef mov      eax, r14d
00000001402afbf2 mov      rbx, qword ptr [rsp + 0xa0]
00000001402afbfa add      rsp, 0x60
00000001402afbfe pop      r15
00000001402afc00 pop      r14
00000001402afc02 pop      r13
00000001402afc04 pop      r12
00000001402afc06 pop      rdi
00000001402afc07 pop      rsi
00000001402afc08 pop      rbp
00000001402afc09 ret      