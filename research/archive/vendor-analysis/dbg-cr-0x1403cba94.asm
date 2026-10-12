00000001403cba94 mov      qword ptr [rsp + 0x10], rbx
00000001403cba99 mov      qword ptr [rsp + 0x18], rsi
00000001403cba9e mov      qword ptr [rsp + 0x20], rdi
00000001403cbaa3 push     rbp
00000001403cbaa4 push     r12
00000001403cbaa6 push     r13
00000001403cbaa8 push     r14
00000001403cbaaa push     r15
00000001403cbaac mov      rbp, rsp
00000001403cbaaf sub      rsp, 0x60
00000001403cbab3 mov      rax, qword ptr [rip + 0x55b9a6]
00000001403cbaba xor      rax, rsp
00000001403cbabd mov      qword ptr [rbp - 8], rax
00000001403cbac1 mov      rax, qword ptr [rcx + 0x9a0]
00000001403cbac8 lea      rdi, [rcx + 0x4aa0]
00000001403cbacf xor      ebx, ebx
00000001403cbad1 mov      dword ptr [rbp - 0x18], 0x1d400ea
00000001403cbad8 mov      edx, 0x48
00000001403cbadd mov      dword ptr [rbp - 0x14], 0x7a803d4
00000001403cbae4 mov      rsi, rcx
00000001403cbae7 mov      dword ptr [rbp - 0x10], 0x78003c
00000001403cbaee cmp      dword ptr [rax + 0x1014], 0x1011
00000001403cbaf8 lea      r14, [rax + 0x1890]
00000001403cbaff mov      qword ptr [rbp - 0x30], r14
00000001403cbb03 mov      r10, r14
00000001403cbb06 mov      rax, r14
00000001403cbb09 mov      dword ptr [rbp - 0xc], 0x1ec00f0
00000001403cbb10 mov      dword ptr [rbp - 0x28], 0x18120c06
00000001403cbb17 lea      r8d, [rdx + 4]
00000001403cbb1b mov      dword ptr [rbp - 0x24], 0x3c363024
00000001403cbb22 mov      r9d, ebx
00000001403cbb25 mov      dword ptr [rbp - 0x20], 0x645a5048
00000001403cbb2c mov      word ptr [rbp - 0x1c], 0x786c
00000001403cbb32 jne      0x1403cbb3e
00000001403cbb34 cmp      dword ptr [rcx + 0x998], ebx
00000001403cbb3a setne    r9b
00000001403cbb3e mov      r8d, dword ptr [r10 + r8]
00000001403cbb42 mov      edx, dword ptr [rax + rdx]
00000001403cbb45 call     0x1403168c4
00000001403cbb4a mov      eax, dword ptr [rsi + 0x13f0]
00000001403cbb50 lea      r13, [rdi + 0x8c]
00000001403cbb57 and      eax, 0x1fe0000
00000001403cbb5c mov      r12, r14
00000001403cbb5f sub      r12, rdi
00000001403cbb62 neg      eax
00000001403cbb64 sbb      r15, r15
00000001403cbb67 and      r15d, 2
00000001403cbb6b add      r15, 4
00000001403cbb6f mov      edx, dword ptr [r12 + r13 - 0x3c]
00000001403cbb74 or       r8d, 0xffffffff
00000001403cbb78 mov      rcx, rsi
00000001403cbb7b call     0x140315a88
00000001403cbb80 mov      dword ptr [r13], eax
00000001403cbb84 lea      r13, [r13 + 4]
00000001403cbb88 sub      r15, 1
00000001403cbb8c jne      0x1403cbb6f
00000001403cbb8e test     dword ptr [rsi + 0x13f0], 0x1fe0000
00000001403cbb98 je       0x1403cbbc5
00000001403cbb9a lea      r15, [rdi + 0xa4]
00000001403cbba1 mov      r13d, 2
00000001403cbba7 mov      edx, dword ptr [r15 + r12 - 0x3c]
00000001403cbbac or       r8d, 0xffffffff
00000001403cbbb0 mov      rcx, rsi
00000001403cbbb3 call     0x140315a88
00000001403cbbb8 mov      dword ptr [r15], eax
00000001403cbbbb lea      r15, [r15 + 4]
00000001403cbbbf sub      r13, 1
00000001403cbbc3 jne      0x1403cbba7
00000001403cbbc5 lea      r15, [rdi + 0xac]
00000001403cbbcc mov      r13d, 2
00000001403cbbd2 mov      edx, dword ptr [r15 + r12 - 0x3c]
00000001403cbbd7 or       r8d, 0xffffffff
00000001403cbbdb mov      rcx, rsi
00000001403cbbde call     0x140315a88
00000001403cbbe3 mov      dword ptr [r15], eax
00000001403cbbe6 lea      r15, [r15 + 4]
00000001403cbbea sub      r13, 1
00000001403cbbee jne      0x1403cbbd2
00000001403cbbf0 mov      r12, rdi
00000001403cbbf3 lea      r15, [r14 + 0x78]
00000001403cbbf7 sub      r12, r14
00000001403cbbfa lea      r14d, [r13 + 4]
00000001403cbbfe mov      r13d, r14d
00000001403cbc01 mov      edi, 2
00000001403cbc06 mov      edx, dword ptr [r15]
00000001403cbc09 or       r8d, 0xffffffff
00000001403cbc0d mov      rcx, rsi
00000001403cbc10 call     0x140315a88
00000001403cbc15 mov      dword ptr [r12 + r15 + 0x3c], eax
00000001403cbc1a add      r15, r14
00000001403cbc1d sub      rdi, 1
00000001403cbc21 jne      0x1403cbc06
00000001403cbc23 sub      r13, 1
00000001403cbc27 jne      0x1403cbc01
00000001403cbc29 mov      r14, qword ptr [rbp - 0x30]
00000001403cbc2d or       r13d, 0xffffffff
00000001403cbc31 mov      r8d, r13d
00000001403cbc34 mov      rcx, rsi
00000001403cbc37 mov      edx, dword ptr [r14 + 0x98]
00000001403cbc3e call     0x140315a88
00000001403cbc43 lea      rdi, [rsi + 0x4aa0]
00000001403cbc4a mov      r8d, r13d
00000001403cbc4d mov      dword ptr [rdi + 0x134], eax
00000001403cbc53 mov      rcx, rsi
00000001403cbc56 mov      edx, dword ptr [r14 + 0x9c]
00000001403cbc5d call     0x140315a88
00000001403cbc62 mov      dword ptr [rdi + 0x74], eax
00000001403cbc65 mov      r8d, r13d
00000001403cbc68 mov      edx, dword ptr [r14 + 0xa0]
00000001403cbc6f mov      rcx, rsi
00000001403cbc72 call     0x140315a88
00000001403cbc77 mov      edx, dword ptr [r14 + 0xa4]
00000001403cbc7e mov      r8d, r13d
00000001403cbc81 mov      rcx, rsi
00000001403cbc84 mov      dword ptr [rbp - 0x30], eax
00000001403cbc87 mov      r15d, eax
00000001403cbc8a call     0x140315a88
00000001403cbc8f mov      edx, dword ptr [r14 + 0xa8]
00000001403cbc96 mov      r8d, r13d
00000001403cbc99 mov      rcx, rsi
00000001403cbc9c mov      r12d, eax
00000001403cbc9f call     0x140315a88
00000001403cbca4 mov      dword ptr [rdi + 0x80], eax
00000001403cbcaa test     dword ptr [rsi + 0x13f0], 0x1fe0000
00000001403cbcb4 je       0x1403cbce6
00000001403cbcb6 mov      edx, dword ptr [r14 + 0xac]
00000001403cbcbd mov      r8d, r13d
00000001403cbcc0 mov      rcx, rsi
00000001403cbcc3 call     0x140315a88
00000001403cbcc8 mov      dword ptr [rdi + 0x84], eax
00000001403cbcce mov      r8d, r13d
00000001403cbcd1 mov      edx, dword ptr [r14 + 0xb0]
00000001403cbcd8 mov      rcx, rsi
00000001403cbcdb call     0x140315a88
00000001403cbce0 mov      dword ptr [rdi + 0x88], eax
00000001403cbce6 mov      r8d, dword ptr [r14 + 0xb8]
00000001403cbced mov      rcx, rsi
00000001403cbcf0 mov      edx, dword ptr [r14 + 0xb4]
00000001403cbcf7 call     0x140315a88
00000001403cbcfc mov      word ptr [rdi + 0x138], ax
00000001403cbd03 cmp      byte ptr [rsi + 0x1416], 2
00000001403cbd0a jb       0x1403cbd29
00000001403cbd0c mov      r8d, dword ptr [r14 + 0xc0]
00000001403cbd13 mov      rcx, rsi
00000001403cbd16 mov      edx, dword ptr [r14 + 0xbc]
00000001403cbd1d call     0x140315a88
00000001403cbd22 mov      word ptr [rdi + 0x13a], ax
00000001403cbd29 cmp      byte ptr [rsi + 0x1416], 3
00000001403cbd30 jb       0x1403cbd4f
00000001403cbd32 mov      r8d, dword ptr [r14 + 0xc8]
00000001403cbd39 mov      rcx, rsi
00000001403cbd3c mov      edx, dword ptr [r14 + 0xc4]
00000001403cbd43 call     0x140315a88
00000001403cbd48 mov      word ptr [rdi + 0x13c], ax
00000001403cbd4f cmp      byte ptr [rsi + 0x1416], 4
00000001403cbd56 jb       0x1403cbd75
00000001403cbd58 mov      r8d, dword ptr [r14 + 0xd0]
00000001403cbd5f mov      rcx, rsi
00000001403cbd62 mov      edx, dword ptr [r14 + 0xcc]
00000001403cbd69 call     0x140315a88
00000001403cbd6e mov      word ptr [rdi + 0x13e], ax
00000001403cbd75 cmp      byte ptr [rsi + 0x1416], 5
00000001403cbd7c jb       0x1403cbd9b
00000001403cbd7e mov      r8d, dword ptr [r14 + 0xd8]
00000001403cbd85 mov      rcx, rsi
00000001403cbd88 mov      edx, dword ptr [r14 + 0xd4]
00000001403cbd8f call     0x140315a88
00000001403cbd94 mov      word ptr [rdi + 0x140], ax
00000001403cbd9b mov      edx, dword ptr [r14 + 0xdc]
00000001403cbda2 mov      r8d, r13d
00000001403cbda5 mov      rcx, rsi
00000001403cbda8 call     0x140315a88
00000001403cbdad mov      dword ptr [rdi + 0x144], eax
00000001403cbdb3 lea      r9, [rdi + 0x8c]
00000001403cbdba mov      word ptr [rdi + 0x14a], ax
00000001403cbdc1 movzx    ecx, ax
00000001403cbdc4 mov      ecx, eax
00000001403cbdc6 mov      r10b, 0xf
00000001403cbdc9 shr      ecx, 0x10
00000001403cbdcc mov      r11d, 1
00000001403cbdd2 mov      byte ptr [rdi + 0x14c], cl
00000001403cbdd8 mov      ecx, eax
00000001403cbdda shr      eax, 0x1f
00000001403cbddd mov      byte ptr [rdi + 0x14d], al
00000001403cbde3 shr      ecx, 0x18
00000001403cbde6 and      cl, r10b
00000001403cbde9 mov      byte ptr [rdi + 0x148], cl
00000001403cbdef mov      al, byte ptr [r9]
00000001403cbdf2 and      al, r10b
00000001403cbdf5 mov      byte ptr [rdi], al
00000001403cbdf7 mov      r9d, dword ptr [r9]
00000001403cbdfa mov      eax, r9d
00000001403cbdfd shr      eax, 4
00000001403cbe00 and      al, r10b
00000001403cbe03 mov      byte ptr [rdi + 1], al
00000001403cbe06 mov      eax, r9d
00000001403cbe09 shr      eax, 8
00000001403cbe0c movzx    r8d, al
00000001403cbe10 mov      al, r8b
00000001403cbe13 and      al, 0x3f
00000001403cbe15 test     dword ptr [rsi + 0x13f0], 0x20000
00000001403cbe1f mov      sil, 3
00000001403cbe22 movzx    ecx, al
00000001403cbe25 cmove    ecx, r8d
00000001403cbe29 shr      r9d, 0x18
00000001403cbe2d mov      byte ptr [rdi + 4], cl
00000001403cbe30 and      r9b, r10b
00000001403cbe33 mov      edx, dword ptr [rdi + 0x90]
00000001403cbe39 mov      ecx, 0x1ff
00000001403cbe3e mov      eax, edx
00000001403cbe40 mov      byte ptr [rdi + 5], r9b
00000001403cbe44 shr      eax, 4
00000001403cbe47 mov      r9b, 7
00000001403cbe4a and      al, r9b
00000001403cbe4d mov      r8b, bl
00000001403cbe50 mov      byte ptr [rdi + 6], al
00000001403cbe53 mov      eax, edx
00000001403cbe55 shr      eax, 8
00000001403cbe58 and      ax, cx
00000001403cbe5b shr      edx, 0x18
00000001403cbe5e mov      word ptr [rdi + 8], ax
00000001403cbe62 and      dl, 0x3f
00000001403cbe65 mov      byte ptr [rdi + 0xa], dl
00000001403cbe68 mov      ecx, dword ptr [rdi + 0x94]
00000001403cbe6e mov      eax, ecx
00000001403cbe70 shr      eax, 4
00000001403cbe73 and      al, r10b
00000001403cbe76 shr      ecx, 8
00000001403cbe79 mov      byte ptr [rdi + 2], al
00000001403cbe7c mov      al, byte ptr [rdi + 0x9c]
00000001403cbe82 and      al, r10b
00000001403cbe85 mov      byte ptr [rdi + 3], cl
00000001403cbe88 mov      byte ptr [rdi + 0xb], al
00000001403cbe8b lea      rcx, [rdi + 0xac]
00000001403cbe92 mov      al, byte ptr [rcx]
00000001403cbe94 and      al, r11b
00000001403cbe97 mov      byte ptr [rdi + 0xc], al
00000001403cbe9a mov      ecx, dword ptr [rcx]
00000001403cbe9c mov      eax, ecx
00000001403cbe9e shr      eax, 4
00000001403cbea1 shr      ecx, 6
00000001403cbea4 and      al, sil
00000001403cbea7 and      cl, sil
00000001403cbeaa mov      byte ptr [rdi + 0xd], al
00000001403cbead mov      byte ptr [rdi + 0xe], cl
00000001403cbeb0 test     dl, dl
00000001403cbeb2 je       0x1403cbf2a
00000001403cbeb4 movzx    edx, r8b
00000001403cbeb8 add      r8b, r11b
00000001403cbebb mov      al, byte ptr [rdi + rdx*8 + 0xb4]
00000001403cbec2 mov      byte ptr [rdx + rdi + 0xf], al
00000001403cbec6 mov      al, byte ptr [rdi + rdx*8 + 0xb7]
00000001403cbecd and      al, r9b
00000001403cbed0 mov      byte ptr [rdx + rdi + 0x1f], al
00000001403cbed4 mov      eax, dword ptr [rdi + rdx*8 + 0xb4]
00000001403cbedb shr      eax, 0x1b
00000001403cbede and      al, r11b
00000001403cbee1 mov      byte ptr [rdx + rdi + 0x2f], al
00000001403cbee5 mov      cl, byte ptr [rdi + rdx*8 + 0xb8]
00000001403cbeec mov      eax, dword ptr [rdi + rdx*8 + 0xb4]
00000001403cbef3 and      cl, sil
00000001403cbef6 shr      eax, 0x1c
00000001403cbef9 shl      cl, 4
00000001403cbefc add      cl, al
00000001403cbefe mov      byte ptr [rdx + rdi + 0x3f], cl
00000001403cbf02 mov      eax, dword ptr [rdi + rdx*8 + 0xb8]
00000001403cbf09 shr      eax, 2
00000001403cbf0c and      al, r11b
00000001403cbf0f mov      byte ptr [rdx + rdi + 0x4f], al
00000001403cbf13 mov      eax, dword ptr [rdi + rdx*8 + 0xb4]
00000001403cbf1a shr      eax, 0x13
00000001403cbf1d and      al, sil
00000001403cbf20 mov      byte ptr [rdx + rdi + 0x5f], al
00000001403cbf24 cmp      r8b, byte ptr [rdi + 0xa]
00000001403cbf28 jb       0x1403cbeb4
00000001403cbf2a mov      ecx, dword ptr [rdi + 0x134]
00000001403cbf30 mov      edx, 0x7ff
00000001403cbf35 and      dx, word ptr [rdi + 0x134]
00000001403cbf3c mov      r10d, ecx
00000001403cbf3f mov      r8b, byte ptr [rdi]
00000001403cbf42 mov      eax, ecx
00000001403cbf44 shr      r10d, 0x18
00000001403cbf48 shr      eax, 0x19
00000001403cbf4b and      r10b, r11b
00000001403cbf4e shr      ecx, 0x1c
00000001403cbf51 and      al, r9b
00000001403cbf54 and      cl, sil
00000001403cbf57 mov      word ptr [rdi + 0x70], dx
00000001403cbf5b mov      byte ptr [rdi + 0x72], al
00000001403cbf5e mov      byte ptr [rdi + 0x73], cl
00000001403cbf61 cmp      r8b, 6
00000001403cbf65 jbe      0x1403cc151
00000001403cbf6b and      r12d, 0xfffff
00000001403cbf72 mov      eax, r15d
00000001403cbf75 shl      r12d, 6
00000001403cbf79 and      eax, 0x3ffffff
00000001403cbf7e shr      r15d, 0x1a
00000001403cbf82 or       r12d, r15d
00000001403cbf85 mov      dword ptr [rdi + 0x78], eax
00000001403cbf88 mov      dword ptr [rdi + 0x7c], r12d
00000001403cbf8c cmp      r8b, r9b
00000001403cbf8f je       0x1403cbfa4
00000001403cbf91 cmp      r8b, 0xb
00000001403cbf95 jne      0x1403cc145
00000001403cbf9b cmp      byte ptr [rdi + 1], bl
00000001403cbf9e jne      0x1403cc145
00000001403cbfa4 test     dx, dx
00000001403cbfa7 je       0x1403cc145
00000001403cbfad mov      al, byte ptr [rdi + 0xd]
00000001403cbfb0 cmp      al, r11b
00000001403cbfb3 jne      0x1403cbfe0
00000001403cbfb5 movzx    eax, dx
00000001403cbfb8 mov      r8d, ebx
00000001403cbfbb imul     ecx, eax, 0x22
00000001403cbfbe mov      eax, 0x66666667
00000001403cbfc3 imul     ecx
00000001403cbfc5 sar      edx, 2
00000001403cbfc8 mov      eax, edx
00000001403cbfca shr      eax, 0x1f
00000001403cbfcd add      edx, eax
00000001403cbfcf lea      eax, [rdx + rdx*4]
00000001403cbfd2 add      eax, eax
00000001403cbfd4 cmp      ecx, eax
00000001403cbfd6 setg     r8b
00000001403cbfda add      r8w, dx
00000001403cbfde jmp      0x1403cc012
00000001403cbfe0 cmp      al, 2
00000001403cbfe2 jne      0x1403cc019
00000001403cbfe4 movzx    eax, dx
00000001403cbfe7 mov      ecx, ebx
00000001403cbfe9 lea      r8d, [rax + rax*8]
00000001403cbfed mov      eax, 0x66666667
00000001403cbff2 shl      r8d, 2
00000001403cbff6 imul     r8d
00000001403cbff9 sar      edx, 2
00000001403cbffc mov      eax, edx
00000001403cbffe shr      eax, 0x1f
00000001403cc001 add      edx, eax
00000001403cc003 lea      eax, [rdx + rdx*4]
00000001403cc006 add      eax, eax
00000001403cc008 cmp      r8d, eax
00000001403cc00b setg     cl
00000001403cc00e lea      r8d, [rdx + rcx]
00000001403cc012 shl      r8w, 2
00000001403cc017 jmp      0x1403cc02c
00000001403cc019 cmp      al, sil
00000001403cc01c jne      0x1403cc028
00000001403cc01e shl      dx, 4
00000001403cc022 movzx    r8d, dx
00000001403cc026 jmp      0x1403cc02c
00000001403cc028 movzx    r8d, bx
00000001403cc02c mov      word ptr [rdi + 0x14e], r8w
00000001403cc034 movzx    edx, byte ptr [rdi + 0x3f]
00000001403cc038 cmp      dl, 0xd
00000001403cc03b ja       0x1403cc208
00000001403cc041 movzx    ecx, byte ptr [rdi + 0x1f]
00000001403cc045 mov      sil, byte ptr [rdi + 0xc]
00000001403cc049 movzx    r12d, byte ptr [rbp + rdx - 0x28]
00000001403cc04f test     sil, sil
00000001403cc052 movzx    r8d, byte ptr [rdi + 6]
00000001403cc057 movzx    r9d, byte ptr [rdi + 0x73]
00000001403cc05c lea      eax, [r11 + rcx]
00000001403cc060 mov      r15b, byte ptr [rdi + 0x4f]
00000001403cc064 cmove    ecx, eax
00000001403cc067 mov      r14b, byte ptr [rdi + 0x2f]
00000001403cc06b inc      sil
00000001403cc06e movzx    r13d, cl
00000001403cc072 mov      eax, 0x2aaaaaab
00000001403cc077 movzx    ecx, word ptr [rbp + r8*2 - 0x18]
00000001403cc07d imul     ecx, r12d
00000001403cc081 imul     ecx, r13d
00000001403cc085 imul     ecx
00000001403cc087 mov      cl, r15b
00000001403cc08a mov      r11d, edx
00000001403cc08d sar      r11d, 1
00000001403cc090 mov      eax, r11d
00000001403cc093 shr      eax, 0x1f
00000001403cc096 add      r11d, eax
00000001403cc099 sar      r11d, cl
00000001403cc09c mov      ecx, 4
00000001403cc0a1 test     r9b, r9b
00000001403cc0a4 cmove    r9d, ecx
00000001403cc0a8 test     r14b, r14b
00000001403cc0ab je       0x1403cc0cc
00000001403cc0ad test     r10b, r10b
00000001403cc0b0 je       0x1403cc0cc
00000001403cc0b2 cmp      r9b, 1
00000001403cc0b6 jne      0x1403cc0c7
00000001403cc0b8 movzx    r10d, word ptr [rdi + 0x70]
00000001403cc0bd movzx    eax, sil
00000001403cc0c1 sub      r10w, ax
00000001403cc0c5 jmp      0x1403cc0df
00000001403cc0c7 jbe      0x1403cc0cc
00000001403cc0c9 dec      r9b
00000001403cc0cc mov      r10d, 0x70
00000001403cc0d2 mov      rax, rdi
00000001403cc0d5 movzx    r10d, word ptr [rax + r10]
00000001403cc0da cmp      r9b, cl
00000001403cc0dd jne      0x1403cc0e4
00000001403cc0df mov      r8d, r11d
00000001403cc0e2 jmp      0x1403cc117
00000001403cc0e4 movzx    r8d, word ptr [rbp + r8*2 - 0x10]
00000001403cc0ea mov      eax, 0x2aaaaaab
00000001403cc0ef imul     r8d, r12d
00000001403cc0f3 mov      cl, r15b
00000001403cc0f6 imul     r8d, r13d
00000001403cc0fa imul     r8d
00000001403cc0fd mov      r8d, edx
00000001403cc100 sar      r8d, 1
00000001403cc103 mov      eax, r8d
00000001403cc106 shr      eax, 0x1f
00000001403cc109 add      r8d, eax
00000001403cc10c movzx    eax, r9b
00000001403cc110 imul     r8d, eax
00000001403cc114 sar      r8d, cl
00000001403cc117 movzx    edx, sil
00000001403cc11b mov      sil, 3
00000001403cc11e movzx    ecx, r10w
00000001403cc122 sub      ecx, edx
00000001403cc124 imul     ecx, r11d
00000001403cc128 neg      r14b
00000001403cc12b sbb      eax, eax
00000001403cc12d imul     edx, r8d
00000001403cc131 not      eax
00000001403cc133 and      eax, 6
00000001403cc136 sub      ecx, eax
00000001403cc138 lea      ebx, [rdx - 0x10]
00000001403cc13b add      ebx, ecx
00000001403cc13d shr      ebx, 3
00000001403cc140 jmp      0x1403cc208
00000001403cc145 mov      word ptr [rdi + 0x14e], bx
00000001403cc14c jmp      0x1403cc208
00000001403cc151 mov      eax, 4
00000001403cc156 cmp      r8b, al
00000001403cc159 jbe      0x1403cc218
00000001403cc15f movzx    eax, byte ptr [rbp - 0x2d]
00000001403cc163 lea      r9, [rdi + 0x14e]
00000001403cc16a and      r15d, 0xffffff
00000001403cc171 movzx    ecx, r12w
00000001403cc175 shl      ecx, 8
00000001403cc178 or       ecx, eax
00000001403cc17a mov      dword ptr [rdi + 0x78], r15d
00000001403cc17e mov      dword ptr [rdi + 0x7c], ecx
00000001403cc181 cmp      r8b, 5
00000001403cc185 jne      0x1403cc204
00000001403cc187 mov      al, byte ptr [rdi + 0xd]
00000001403cc18a test     al, al
00000001403cc18c jne      0x1403cc1be
00000001403cc18e movzx    eax, dx
00000001403cc191 mov      r8d, ebx
00000001403cc194 lea      ecx, [rax + rax*8]
00000001403cc197 mov      eax, 0x66666667
00000001403cc19c imul     ecx
00000001403cc19e sar      edx, 2
00000001403cc1a1 mov      eax, edx
00000001403cc1a3 shr      eax, 0x1f
00000001403cc1a6 add      edx, eax
00000001403cc1a8 lea      eax, [rdx + rdx*4]
00000001403cc1ab add      eax, eax
00000001403cc1ad cmp      ecx, eax
00000001403cc1af setg     r8b
00000001403cc1b3 add      r8w, dx
00000001403cc1b7 shl      r8w, 2
00000001403cc1bc jmp      0x1403cc1d1
00000001403cc1be cmp      al, r11b
00000001403cc1c1 jne      0x1403cc1cd
00000001403cc1c3 shl      dx, 2
00000001403cc1c7 movzx    r8d, dx
00000001403cc1cb jmp      0x1403cc1d1
00000001403cc1cd movzx    r8d, bx
00000001403cc1d1 mov      word ptr [r9], r8w
00000001403cc1d5 mov      cl, byte ptr [rdi + 6]
00000001403cc1d8 mov      eax, dword ptr [rdi + 0x80]
00000001403cc1de mov      ebx, eax
00000001403cc1e0 test     cl, cl
00000001403cc1e2 jne      0x1403cc1ec
00000001403cc1e4 and      ebx, 0x1ffff
00000001403cc1ea jmp      0x1403cc1ff
00000001403cc1ec cmp      cl, r11b
00000001403cc1ef jne      0x1403cc1f9
00000001403cc1f1 and      ebx, 0x7ffff
00000001403cc1f7 jmp      0x1403cc1ff
00000001403cc1f9 and      ebx, 0x1fffff
00000001403cc1ff shl      ebx, 2
00000001403cc202 jmp      0x1403cc208
00000001403cc204 mov      word ptr [r9], bx
00000001403cc208 mov      eax, 0x150
00000001403cc20d mov      rcx, rdi
00000001403cc210 add      rcx, rax
00000001403cc213 jmp      0x1403cc2c0
00000001403cc218 cmp      r8b, 2
00000001403cc21c jbe      0x1403cc28f
00000001403cc21e movzx    eax, byte ptr [rbp - 0x2d]
00000001403cc222 and      r15d, 0xffffff
00000001403cc229 movzx    ecx, r12w
00000001403cc22d shl      ecx, 8
00000001403cc230 or       ecx, eax
00000001403cc232 mov      dword ptr [rdi + 0x78], r15d
00000001403cc236 mov      al, byte ptr [rdi + 0xd]
00000001403cc239 mov      dword ptr [rdi + 0x7c], ecx
00000001403cc23c test     al, al
00000001403cc23e jne      0x1403cc26a
00000001403cc240 movzx    eax, dx
00000001403cc243 lea      ecx, [rax + rax*8]
00000001403cc246 mov      eax, 0x66666667
00000001403cc24b imul     ecx
00000001403cc24d sar      edx, 2
00000001403cc250 mov      eax, edx
00000001403cc252 shr      eax, 0x1f
00000001403cc255 add      edx, eax
00000001403cc257 lea      eax, [rdx + rdx*4]
00000001403cc25a add      eax, eax
00000001403cc25c cmp      ecx, eax
00000001403cc25e setg     bl
00000001403cc261 add      bx, dx
00000001403cc264 shl      bx, 2
00000001403cc268 jmp      0x1403cc276
00000001403cc26a cmp      al, r11b
00000001403cc26d jne      0x1403cc276
00000001403cc26f shl      dx, 2
00000001403cc273 movzx    ebx, dx
00000001403cc276 mov      rax, rdi
00000001403cc279 lea      rcx, [rdi + 0x150]
00000001403cc280 mov      word ptr [rax + 0x14e], bx
00000001403cc287 mov      ebx, r15d
00000001403cc28a shr      ebx, 8
00000001403cc28d jmp      0x1403cc2c0
00000001403cc28f and      qword ptr [rdi + 0x78], 0
00000001403cc294 lea      rcx, [rdi + 0x150]
00000001403cc29b cmp      r8b, r11b
00000001403cc29e jbe      0x1403cc2b9
00000001403cc2a0 mov      ebx, dword ptr [rdi + 0x74]
00000001403cc2a3 shl      dx, 2
00000001403cc2a7 shr      ebx, 5
00000001403cc2aa and      ebx, 0xfff
00000001403cc2b0 mov      word ptr [rdi + 0x14e], dx
00000001403cc2b7 jmp      0x1403cc2c0
00000001403cc2b9 mov      word ptr [rdi + 0x14e], bx
00000001403cc2c0 mov      dword ptr [rcx], ebx
00000001403cc2c2 mov      eax, 0x156c
00000001403cc2c7 movzx    edx, word ptr [rdi + 0x14e]
00000001403cc2ce cmp      dx, ax
00000001403cc2d1 jbe      0x1403cc320
00000001403cc2d3 mov      rcx, qword ptr [rip + 0x553d26]
00000001403cc2da lea      rax, [rip + 0x553d1f]
00000001403cc2e1 cmp      rcx, rax
00000001403cc2e4 je       0x1403cc320
00000001403cc2e6 cmp      byte ptr [rcx + 0x169], sil
00000001403cc2ed jb       0x1403cc320
00000001403cc2ef test     dword ptr [rcx + 0x16c], 0x1000
00000001403cc2f9 je       0x1403cc320
00000001403cc2fb mov      rcx, qword ptr [rcx + 0x158]
00000001403cc302 lea      r9, [rip + 0x27dc27]
00000001403cc309 mov      eax, edx
00000001403cc30b lea      r8, [rip + 0x308e6e]
00000001403cc312 mov      edx, 0x2b
00000001403cc317 mov      dword ptr [rsp + 0x20], eax
00000001403cc31b call     0x1400088d8
00000001403cc320 mov      rcx, qword ptr [rbp - 8]
00000001403cc324 xor      rcx, rsp
00000001403cc327 call     0x1405f45b0
00000001403cc32c lea      r11, [rsp + 0x60]
00000001403cc331 mov      rbx, qword ptr [r11 + 0x38]
00000001403cc335 mov      rsi, qword ptr [r11 + 0x40]
00000001403cc339 mov      rdi, qword ptr [r11 + 0x48]
00000001403cc33d mov      rsp, r11
00000001403cc340 pop      r15
00000001403cc342 pop      r14
00000001403cc344 pop      r13
00000001403cc346 pop      r12
00000001403cc348 pop      rbp
00000001403cc349 ret      