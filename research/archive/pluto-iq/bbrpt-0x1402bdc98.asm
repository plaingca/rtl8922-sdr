00000001402bdc98 push     rbx
00000001402bdc9a push     rbp
00000001402bdc9b push     rsi
00000001402bdc9c push     rdi
00000001402bdc9d push     r12
00000001402bdc9f push     r14
00000001402bdca1 push     r15
00000001402bdca3 sub      rsp, 0x160
00000001402bdcaa mov      rax, qword ptr [rip + 0x6697af]
00000001402bdcb1 xor      rax, rsp
00000001402bdcb4 mov      qword ptr [rsp + 0x150], rax
00000001402bdcbc mov      r14, qword ptr [rsp + 0x1c0]
00000001402bdcc4 mov      r15, r8
00000001402bdcc7 mov      rdi, rdx
00000001402bdcca mov      rbx, rcx
00000001402bdccd xor      edx, edx
00000001402bdccf lea      rcx, [rsp + 0x50]
00000001402bdcd4 mov      r8d, 0x100
00000001402bdcda mov      r12, r9
00000001402bdcdd call     0x1405f4640
00000001402bdce2 mov      r8d, dword ptr [rbx + 0x9618]
00000001402bdce9 mov      ecx, r8d
00000001402bdcec sub      ecx, 1
00000001402bdcef je       0x1402bdd46
00000001402bdcf1 sub      ecx, 1
00000001402bdcf4 je       0x1402bdd3d
00000001402bdcf6 cmp      ecx, 2
00000001402bdcf9 je       0x1402bdd34
00000001402bdcfb mov      rcx, qword ptr [rip + 0x6622fe]
00000001402bdd02 lea      rax, [rip + 0x6622f7]
00000001402bdd09 cmp      rcx, rax
00000001402bdd0c je       0x1402bddb5
00000001402bdd12 cmp      byte ptr [rcx + 0x169], 3
00000001402bdd19 jb       0x1402bddb5
00000001402bdd1f mov      eax, dword ptr [rcx + 0x16c]
00000001402bdd25 test     al, 1
00000001402bdd27 je       0x1402bddb5
00000001402bdd2d mov      edx, 0xb3
00000001402bdd32 jmp      0x1402bdd8a
00000001402bdd34 lea      rsi, [rip + 0x3678f5]
00000001402bdd3b jmp      0x1402bdd4d
00000001402bdd3d lea      rsi, [rip + 0x3678dc]
00000001402bdd44 jmp      0x1402bdd4d
00000001402bdd46 lea      rsi, [rip + 0x3678c3]
00000001402bdd4d mov      r8d, dword ptr [rdi]
00000001402bdd50 test     r8d, r8d
00000001402bdd53 je       0x1402bdde2
00000001402bdd59 cmp      r8d, 2
00000001402bdd5d je       0x1402bddd9
00000001402bdd5f mov      rcx, qword ptr [rip + 0x66229a]
00000001402bdd66 lea      rax, [rip + 0x662293]
00000001402bdd6d cmp      rcx, rax
00000001402bdd70 je       0x1402bddb5
00000001402bdd72 cmp      byte ptr [rcx + 0x169], 3
00000001402bdd79 jb       0x1402bddb5
00000001402bdd7b mov      eax, dword ptr [rcx + 0x16c]
00000001402bdd81 test     al, 1
00000001402bdd83 je       0x1402bddb5
00000001402bdd85 mov      edx, 0xb4
00000001402bdd8a mov      rcx, qword ptr [rcx + 0x158]
00000001402bdd91 lea      rdi, [rip + 0x3678a8]
00000001402bdd98 mov      dword ptr [rsp + 0x28], r8d
00000001402bdd9d lea      r9, [rip + 0x3505ec]
00000001402bdda4 lea      r8, [rip + 0x3db62d]
00000001402bddab mov      qword ptr [rsp + 0x20], rdi
00000001402bddb0 call     0x14003ca14
00000001402bddb5 mov      al, 1
00000001402bddb7 mov      rcx, qword ptr [rsp + 0x150]
00000001402bddbf xor      rcx, rsp
00000001402bddc2 call     0x1405f45b0
00000001402bddc7 add      rsp, 0x160
00000001402bddce pop      r15
00000001402bddd0 pop      r14
00000001402bddd2 pop      r12
00000001402bddd4 pop      rdi
00000001402bddd5 pop      rsi
00000001402bddd6 pop      rbp
00000001402bddd7 pop      rbx
00000001402bddd8 ret      
00000001402bddd9 lea      rbp, [rip + 0x367890]
00000001402bdde0 jmp      0x1402bdde9
00000001402bdde2 lea      rbp, [rip + 0x367877]
00000001402bdde9 test     r15, r15
00000001402bddec je       0x1402bddb5
00000001402bddee test     r14, r14
00000001402bddf1 je       0x1402bddb5
00000001402bddf3 cmp      qword ptr [rbx + 0xe4c8], 0
00000001402bddfb lea      rdi, [rip + 0x36783e]
00000001402bde02 jne      0x1402bdeb1
00000001402bde08 mov      rcx, rdi
00000001402bde0b call     0x14007dbe0
00000001402bde10 and      qword ptr [rsp + 0x40], 0
00000001402bde16 lea      rdx, [rsp + 0x40]
00000001402bde1b mov      r8d, 0x100000
00000001402bde21 mov      ecx, eax
00000001402bde23 call     0x1400310f0
00000001402bde28 test     eax, eax
00000001402bde2a je       0x1402bde36
00000001402bde2c and      qword ptr [rbx + 0xe4c8], 0
00000001402bde34 jmp      0x1402bde56
00000001402bde36 mov      rcx, qword ptr [rsp + 0x40]
00000001402bde3b mov      edx, 0x100000
00000001402bde40 call     0x140031290
00000001402bde45 mov      rax, qword ptr [rsp + 0x40]
00000001402bde4a mov      qword ptr [rbx + 0xe4c8], rax
00000001402bde51 test     rax, rax
00000001402bde54 jne      0x1402bdeb1
00000001402bde56 mov      rcx, qword ptr [rip + 0x6621a3]
00000001402bde5d lea      rax, [rip + 0x66219c]
00000001402bde64 cmp      rcx, rax
00000001402bde67 je       0x1402bddb5
00000001402bde6d cmp      byte ptr [rcx + 0x169], 3
00000001402bde74 jb       0x1402bddb5
00000001402bde7a mov      eax, dword ptr [rcx + 0x16c]
00000001402bde80 test     al, 1
00000001402bde82 je       0x1402bddb5
00000001402bde88 mov      rcx, qword ptr [rcx + 0x158]
00000001402bde8f lea      r9, [rip + 0x3504fa]
00000001402bde96 mov      edx, 0xb5
00000001402bde9b mov      qword ptr [rsp + 0x20], rdi
00000001402bdea0 lea      r8, [rip + 0x3db531]
00000001402bdea7 call     0x14003c968
00000001402bdeac jmp      0x1402bddb5
00000001402bdeb1 mov      qword ptr [rsp + 0x38], r15
00000001402bdeb6 lea      rax, [rip + 0x3675c3]
00000001402bdebd mov      qword ptr [rsp + 0x30], rax
00000001402bdec2 lea      r9, [rip + 0x3394c7]
00000001402bdec9 mov      qword ptr [rsp + 0x28], rsi
00000001402bdece lea      r8, [rip + 0x3677ab]
00000001402bded5 mov      edx, 0x100
00000001402bdeda mov      qword ptr [rsp + 0x20], rbp
00000001402bdedf lea      rcx, [rsp + 0x50]
00000001402bdee4 call     0x140044426
00000001402bdee9 mov      rcx, qword ptr [rip + 0x662110]
00000001402bdef0 lea      rax, [rip + 0x662109]
00000001402bdef7 cmp      rcx, rax
00000001402bdefa je       0x1402bdf3d
00000001402bdefc cmp      byte ptr [rcx + 0x169], 4
00000001402bdf03 jb       0x1402bdf3d
00000001402bdf05 mov      eax, dword ptr [rcx + 0x16c]
00000001402bdf0b test     al, 1
00000001402bdf0d je       0x1402bdf3d
00000001402bdf0f mov      rcx, qword ptr [rcx + 0x158]
00000001402bdf16 lea      rax, [rsp + 0x50]
00000001402bdf1b mov      qword ptr [rsp + 0x28], rax
00000001402bdf20 lea      r9, [rip + 0x350469]
00000001402bdf27 mov      edx, 0xb6
00000001402bdf2c mov      qword ptr [rsp + 0x20], rdi
00000001402bdf31 lea      r8, [rip + 0x3db4a0]
00000001402bdf38 call     0x1400817dc
00000001402bdf3d mov      rdx, qword ptr [rbx + 0xe4c8]
00000001402bdf44 lea      rcx, [rsp + 0x50]
00000001402bdf49 mov      r8d, 0x100000
00000001402bdf4f call     0x14000d1b8
00000001402bdf54 mov      dword ptr [rbx + 0xe4d0], eax
00000001402bdf5a test     eax, eax
00000001402bdf5c je       0x1402bddb5
00000001402bdf62 mov      rax, qword ptr [rbx + 0xe4c8]
00000001402bdf69 mov      qword ptr [r12], rax
00000001402bdf6d mov      eax, dword ptr [rbx + 0xe4d0]
00000001402bdf73 mov      dword ptr [r14], eax
00000001402bdf76 xor      al, al
00000001402bdf78 jmp      0x1402bddb7