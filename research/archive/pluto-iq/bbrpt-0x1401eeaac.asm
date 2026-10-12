00000001401eeaac mov      qword ptr [rsp + 8], rcx
00000001401eeab1 push     rbx
00000001401eeab2 push     rbp
00000001401eeab3 push     rsi
00000001401eeab4 push     rdi
00000001401eeab5 push     r12
00000001401eeab7 push     r13
00000001401eeab9 push     r14
00000001401eeabb push     r15
00000001401eeabd sub      rsp, 0x58
00000001401eeac1 mov      rbp, qword ptr [rcx + 0x798]
00000001401eeac8 xor      r15d, r15d
00000001401eeacb mov      rdi, rdx
00000001401eeace mov      qword ptr [rsp + 0x48], rbp
00000001401eead3 movzx    r12d, r15w
00000001401eead7 mov      word ptr [rsp + 0xb0], r15w
00000001401eeae0 mov      word ptr [rsp + 0xb8], r15w
00000001401eeae9 cmp      byte ptr [rdx + 0x79], r15b
00000001401eeaed je       0x1401eeaf8
00000001401eeaef mov      r14b, byte ptr [rbp + 0x96cd]
00000001401eeaf6 jmp      0x1401eeb06
00000001401eeaf8 mov      r14b, byte ptr [rbp + 0x96ce]
00000001401eeaff add      r14b, byte ptr [rbp + 0x96cd]
00000001401eeb06 mov      esi, 1
00000001401eeb0b mov      r13, qword ptr [rdx + 0xf0]
00000001401eeb12 cmp      byte ptr [rdx + 0xc9], r15b
00000001401eeb19 jne      0x1401eeb57
00000001401eeb1b mov      r8b, byte ptr [rdx + 0xe8]
00000001401eeb22 cmp      r8b, r14b
00000001401eeb25 ja       0x1401eeb57
00000001401eeb27 mov      dl, r15b
00000001401eeb2a test     r8b, r8b
00000001401eeb2d je       0x1401eef8a
00000001401eeb33 movzx    r9d, word ptr [rbp + 0x96d0]
00000001401eeb3b movzx    eax, dl
00000001401eeb3e lea      rcx, [rax + rax*2]
00000001401eeb42 cmp      word ptr [r13 + rcx*8 + 0x10], r9w
00000001401eeb48 ja       0x1401eeb57
00000001401eeb4a add      dl, sil
00000001401eeb4d cmp      dl, r8b
00000001401eeb50 jb       0x1401eeb3b
00000001401eeb52 jmp      0x1401eef8a
00000001401eeb57 mov      rdx, qword ptr [rdi + 0x100]
00000001401eeb5e lea      rbx, [rip + 0x73149b]
00000001401eeb65 mov      rcx, qword ptr [rbp + 0x10330]
00000001401eeb6c mov      qword ptr [rsp + 0x40], rcx
00000001401eeb71 test     rdx, rdx
00000001401eeb74 jne      0x1401eecc6
00000001401eeb7a lea      rcx, [rip + 0x42464f]
00000001401eeb81 call     0x14007dbe0
00000001401eeb86 mov      r8d, 0x28
00000001401eeb8c mov      qword ptr [rsp + 0xa8], r15
00000001401eeb94 lea      rdx, [rsp + 0xa8]
00000001401eeb9c mov      ecx, eax
00000001401eeb9e call     0x1400310f0
00000001401eeba3 test     eax, eax
00000001401eeba5 je       0x1401eec03
00000001401eeba7 mov      qword ptr [rdi + 0x100], r15
00000001401eebae mov      rcx, qword ptr [rip + 0x73144b]
00000001401eebb5 cmp      rcx, rbx
00000001401eebb8 je       0x1401eebed
00000001401eebba cmp      byte ptr [rcx + 0x169], 3
00000001401eebc1 jb       0x1401eebed
00000001401eebc3 mov      eax, dword ptr [rcx + 0x16c]
00000001401eebc9 test     sil, al
00000001401eebcc je       0x1401eebed
00000001401eebce mov      rcx, qword ptr [rcx + 0x158]
00000001401eebd5 lea      r9, [rip + 0x41f7b4]
00000001401eebdc mov      edx, 0x8e
00000001401eebe1 lea      r8, [rip + 0x4a98d8]
00000001401eebe8 call     0x140008874
00000001401eebed mov      eax, 2
00000001401eebf2 add      rsp, 0x58
00000001401eebf6 pop      r15
00000001401eebf8 pop      r14
00000001401eebfa pop      r13
00000001401eebfc pop      r12
00000001401eebfe pop      rdi
00000001401eebff pop      rsi
00000001401eec00 pop      rbp
00000001401eec01 pop      rbx
00000001401eec02 ret      
00000001401eec03 mov      rcx, qword ptr [rsp + 0xa8]
00000001401eec0b mov      edx, 0x28
00000001401eec10 call     0x140031290
00000001401eec15 mov      r15, qword ptr [rsp + 0xa8]
00000001401eec1d xor      ecx, ecx
00000001401eec1f mov      qword ptr [rdi + 0x100], r15
00000001401eec26 test     r15, r15
00000001401eec29 je       0x1401eebae
00000001401eec2b mov      rax, qword ptr [rbp + 0x95d0]
00000001401eec32 test     rax, rax
00000001401eec35 je       0x1401eec47
00000001401eec37 mov      rcx, qword ptr [rsp + 0x40]
00000001401eec3c mov      rdx, r15
00000001401eec3f call     qword ptr [rip + 0x4956b3]
00000001401eec45 xor      ecx, ecx
00000001401eec47 cmp      qword ptr [r15], rcx
00000001401eec4a jne      0x1401eecfc
00000001401eec50 mov      rcx, qword ptr [rdi + 0x100]
00000001401eec57 xor      r15d, r15d
00000001401eec5a test     rcx, rcx
00000001401eec5d je       0x1401eec68
00000001401eec5f lea      edx, [r15 + 0x28]
00000001401eec63 call     0x140031160
00000001401eec68 mov      qword ptr [rdi + 0x100], r15
00000001401eec6f mov      rcx, qword ptr [rip + 0x73138a]
00000001401eec76 mov      rdx, r15
00000001401eec79 cmp      rcx, rbx
00000001401eec7c je       0x1401eecb8
00000001401eec7e cmp      byte ptr [rcx + 0x169], 4
00000001401eec85 jb       0x1401eecb8
00000001401eec87 mov      eax, dword ptr [rcx + 0x16c]
00000001401eec8d test     sil, al
00000001401eec90 je       0x1401eecb8
00000001401eec92 mov      rcx, qword ptr [rcx + 0x158]
00000001401eec99 lea      r9, [rip + 0x41f6f0]
00000001401eeca0 mov      edx, 0x41
00000001401eeca5 lea      r8, [rip + 0x4a9814]
00000001401eecac call     0x140008874
00000001401eecb1 mov      rdx, qword ptr [rdi + 0x100]
00000001401eecb8 test     rdx, rdx
00000001401eecbb je       0x1401eebae
00000001401eecc1 mov      rcx, qword ptr [rsp + 0x40]
00000001401eecc6 cmp      qword ptr [rdx], r15
00000001401eecc9 je       0x1401eecdd
00000001401eeccb mov      rax, qword ptr [rbp + 0x95d8]
00000001401eecd2 test     rax, rax
00000001401eecd5 je       0x1401eecdd
00000001401eecd7 call     qword ptr [rip + 0x49561b]
00000001401eecdd mov      rcx, qword ptr [rdi + 0x100]
00000001401eece4 test     rcx, rcx
00000001401eece7 je       0x1401eeba7
00000001401eeced mov      edx, 0x28
00000001401eecf2 call     0x140031160
00000001401eecf7 jmp      0x1401eeba7
00000001401eecfc mov      r15, qword ptr [rdi + 0x100]
00000001401eed03 mov      r8d, dword ptr [rdi + 0xe4]
00000001401eed0a mov      r9d, dword ptr [r15 + 0x14]
00000001401eed0e cmp      r8d, r9d
00000001401eed11 jbe      0x1401eed79
00000001401eed13 mov      rcx, qword ptr [rip + 0x7312e6]
00000001401eed1a lea      rbx, [rip + 0x7312df]
00000001401eed21 cmp      rcx, rbx
00000001401eed24 je       0x1401eed6f
00000001401eed26 cmp      byte ptr [rcx + 0x169], 3
00000001401eed2d jb       0x1401eed6f
00000001401eed2f mov      eax, dword ptr [rcx + 0x16c]
00000001401eed35 test     sil, al
00000001401eed38 je       0x1401eed6f
00000001401eed3a mov      rcx, qword ptr [rcx + 0x158]
00000001401eed41 lea      rax, [rip + 0x424618]
00000001401eed48 mov      dword ptr [rsp + 0x30], r9d
00000001401eed4d mov      edx, 0x8f
00000001401eed52 mov      dword ptr [rsp + 0x28], r8d
00000001401eed57 lea      r9, [rip + 0x41f632]
00000001401eed5e lea      r8, [rip + 0x4a975b]
00000001401eed65 mov      qword ptr [rsp + 0x20], rax
00000001401eed6a call     0x1400aa578
00000001401eed6f mov      esi, 2
00000001401eed74 jmp      0x1401eeec5
00000001401eed79 mov      dword ptr [r15 + 0x10], r8d
00000001401eed7d cmp      byte ptr [rdi + 0xe8], cl
00000001401eed83 jbe      0x1401eedc0
00000001401eed85 mov      bpl, cl
00000001401eed88 movzx    eax, bpl
00000001401eed8c movzx    ecx, r12w
00000001401eed90 add      rcx, qword ptr [r15]
00000001401eed93 lea      rbx, [rax + rax*2]
00000001401eed97 movzx    r8d, word ptr [r13 + rbx*8 + 0x10]
00000001401eed9d mov      rdx, qword ptr [r13 + rbx*8]
00000001401eeda2 call     0x1400311e8
00000001401eeda7 add      r12w, word ptr [r13 + rbx*8 + 0x10]
00000001401eedad add      bpl, sil
00000001401eedb0 cmp      bpl, byte ptr [rdi + 0xe8]
00000001401eedb7 jb       0x1401eed88
00000001401eedb9 mov      rbp, qword ptr [rsp + 0x48]
00000001401eedbe xor      ecx, ecx
00000001401eedc0 movzx    r11d, word ptr [rbp + 0x96d0]
00000001401eedc8 mov      eax, 0xfffc
00000001401eedcd and      r11w, ax
00000001401eedd1 mov      r8b, cl
00000001401eedd4 test     r14b, r14b
00000001401eedd7 je       0x1401eee45
00000001401eedd9 movzx    ebx, word ptr [rsp + 0xb0]
00000001401eede1 cmp      r12w, word ptr [rbp + 0x96d0]
00000001401eede9 movzx    r10d, r12w
00000001401eeded movzx    eax, r8b
00000001401eedf1 cmova    r10w, r11w
00000001401eedf6 movzx    edx, bx
00000001401eedf9 lea      r9, [rax + rax*2]
00000001401eedfd movzx    eax, bx
00000001401eee00 add      rax, qword ptr [r15]
00000001401eee03 mov      qword ptr [r13 + r9*8], rax
00000001401eee08 add      edx, dword ptr [r15 + 8]
00000001401eee0c mov      dword ptr [r13 + r9*8 + 8], edx
00000001401eee11 mov      eax, dword ptr [r15 + 0xc]
00000001401eee15 mov      dword ptr [r13 + r9*8 + 0xc], eax
00000001401eee1a cmp      edx, dword ptr [r15 + 8]
00000001401eee1e jae      0x1401eee27
00000001401eee20 inc      eax
00000001401eee22 mov      dword ptr [r13 + r9*8 + 0xc], eax
00000001401eee27 add      bx, r10w
00000001401eee2b mov      word ptr [r13 + r9*8 + 0x10], r10w
00000001401eee31 sub      r12w, r10w
00000001401eee35 je       0x1401eef24
00000001401eee3b add      r8b, sil
00000001401eee3e cmp      r8b, r14b
00000001401eee41 jb       0x1401eede1
00000001401eee43 jmp      0x1401eee4e
00000001401eee45 movzx    r10d, word ptr [rsp + 0xb8]
00000001401eee4e test     r12w, r12w
00000001401eee52 je       0x1401eef24
00000001401eee58 mov      rcx, qword ptr [rip + 0x7311a1]
00000001401eee5f lea      rbx, [rip + 0x73119a]
00000001401eee66 cmp      rcx, rbx
00000001401eee69 je       0x1401eeec5
00000001401eee6b cmp      byte ptr [rcx + 0x169], 3
00000001401eee72 jb       0x1401eeec5
00000001401eee74 mov      eax, dword ptr [rcx + 0x16c]
00000001401eee7a test     sil, al
00000001401eee7d je       0x1401eeec5
00000001401eee7f mov      rcx, qword ptr [rcx + 0x158]
00000001401eee86 lea      r9, [rip + 0x41f503]
00000001401eee8d movzx    eax, r12w
00000001401eee91 mov      edx, 0x90
00000001401eee96 mov      dword ptr [rsp + 0x38], eax
00000001401eee9a mov      eax, dword ptr [rdi + 0xe4]
00000001401eeea0 mov      dword ptr [rsp + 0x30], eax
00000001401eeea4 lea      rax, [rip + 0x4244b5]
00000001401eeeab movzx    r8d, r10w
00000001401eeeaf mov      dword ptr [rsp + 0x28], r8d
00000001401eeeb4 lea      r8, [rip + 0x4a9605]
00000001401eeebb mov      qword ptr [rsp + 0x20], rax
00000001401eeec0 call     0x1400328d4
00000001401eeec5 mov      rcx, qword ptr [rsp + 0xa0]
00000001401eeecd mov      rdx, qword ptr [rdi + 0x100]
00000001401eeed4 mov      rcx, qword ptr [rcx + 0x798]
00000001401eeedb test     rdx, rdx
00000001401eeede je       0x1401eef1d
00000001401eeee0 cmp      qword ptr [rdx], 0
00000001401eeee4 je       0x1401eeeff
00000001401eeee6 mov      rax, qword ptr [rcx + 0x95d8]
00000001401eeeed test     rax, rax
00000001401eeef0 je       0x1401eeeff
00000001401eeef2 mov      rcx, qword ptr [rcx + 0x10330]
00000001401eeef9 call     qword ptr [rip + 0x4953f9]
00000001401eeeff mov      rcx, qword ptr [rdi + 0x100]
00000001401eef06 test     rcx, rcx
00000001401eef09 je       0x1401eef15
00000001401eef0b mov      edx, 0x28
00000001401eef10 call     0x140031160
00000001401eef15 and      qword ptr [rdi + 0x100], 0
00000001401eef1d mov      eax, esi
00000001401eef1f jmp      0x1401eebf2
00000001401eef24 add      r8b, sil
00000001401eef27 mov      byte ptr [rdi + 0xe8], r8b
00000001401eef2e mov      byte ptr [rdi + 0x7a], r8b
00000001401eef32 cmp      byte ptr [r15 + 0x18], sil
00000001401eef36 jne      0x1401eef8a
00000001401eef38 mov      rcx, qword ptr [rip + 0x7310c1]
00000001401eef3f lea      rbx, [rip + 0x7310ba]
00000001401eef46 cmp      rcx, rbx
00000001401eef49 je       0x1401eef8a
00000001401eef4b cmp      byte ptr [rcx + 0x169], 5
00000001401eef52 jb       0x1401eef8a
00000001401eef54 mov      eax, dword ptr [rcx + 0x16c]
00000001401eef5a test     sil, al
00000001401eef5d je       0x1401eef8a
00000001401eef5f mov      rcx, qword ptr [rcx + 0x158]
00000001401eef66 lea      rax, [rip + 0x4243f3]
00000001401eef6d mov      edx, 0x91
00000001401eef72 mov      qword ptr [rsp + 0x20], rax
00000001401eef77 lea      r9, [rip + 0x41f412]
00000001401eef7e lea      r8, [rip + 0x4a953b]
00000001401eef85 call     0x14003c968
00000001401eef8a xor      eax, eax
00000001401eef8c jmp      0x1401eebf2