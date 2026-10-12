0000000140147b78 test     rcx, rcx
0000000140147b7b je       0x140147c4e
0000000140147b81 mov      qword ptr [rsp + 8], rbx
0000000140147b86 mov      qword ptr [rsp + 0x10], rbp
0000000140147b8b mov      qword ptr [rsp + 0x18], rsi
0000000140147b90 push     rdi
0000000140147b91 sub      rsp, 0x30
0000000140147b95 mov      rbx, rdx
0000000140147b98 mov      rdi, rcx
0000000140147b9b test     rdx, rdx
0000000140147b9e je       0x140147c3a
0000000140147ba4 cmp      dword ptr [rdx], 2
0000000140147ba7 lea      rbp, [rip - 0x147bae]
0000000140147bae jb       0x140147be7
0000000140147bb0 xor      esi, esi
0000000140147bb2 mov      eax, esi
0000000140147bb4 lea      r8, [rbx + 0x24]
0000000140147bb8 imul     r9, rax, 0x6e
0000000140147bbc lea      rax, [rbp + 0x929bc0]
0000000140147bc3 add      rax, r9
0000000140147bc6 sub      r8, rax
0000000140147bc9 movzx    ecx, byte ptr [rax]
0000000140147bcc movzx    edx, byte ptr [rax + r8]
0000000140147bd1 sub      ecx, edx
0000000140147bd3 jne      0x140147bdc
0000000140147bd5 inc      rax
0000000140147bd8 test     edx, edx
0000000140147bda jne      0x140147bc9
0000000140147bdc test     ecx, ecx
0000000140147bde je       0x140147c4f
0000000140147be0 inc      esi
0000000140147be2 cmp      esi, 2
0000000140147be5 jb       0x140147bb2
0000000140147be7 xor      edi, edi
0000000140147be9 mov      r8, qword ptr [rbx + 8]
0000000140147bed test     r8, r8
0000000140147bf0 je       0x140147c33
0000000140147bf2 mov      r10d, dword ptr [rbx + 4]
0000000140147bf6 mov      edx, dword ptr [rbx + 0x10]
0000000140147bf9 cmp      r10d, edx
0000000140147bfc jae      0x140147c33
0000000140147bfe mov      eax, edi
0000000140147c00 lea      r9, [rbp + 0x929bc0]
0000000140147c07 imul     rcx, rax, 0x6e
0000000140147c0b lea      rax, [rbp + 0x929bca]
0000000140147c12 sub      edx, r10d
0000000140147c15 add      rax, rcx
0000000140147c18 add      r9, rcx
0000000140147c1b lea      rcx, [r8 + r10]
0000000140147c1f mov      qword ptr [rsp + 0x20], rax
0000000140147c24 lea      r8, [rip + 0x4c0c75]
0000000140147c2b call     0x140044426
0000000140147c30 add      dword ptr [rbx + 4], eax
0000000140147c33 inc      edi
0000000140147c35 cmp      edi, 2
0000000140147c38 jb       0x140147be9
0000000140147c3a mov      rbx, qword ptr [rsp + 0x40]
0000000140147c3f mov      rbp, qword ptr [rsp + 0x48]
0000000140147c44 mov      rsi, qword ptr [rsp + 0x50]
0000000140147c49 add      rsp, 0x30
0000000140147c4d pop      rdi
0000000140147c4e ret      
0000000140147c4f mov      r8, qword ptr [rbx + 8]
0000000140147c53 test     r8, r8
0000000140147c56 je       0x140147c82
0000000140147c58 mov      ecx, dword ptr [rbx + 4]
0000000140147c5b mov      eax, dword ptr [rbx + 0x10]
0000000140147c5e cmp      ecx, eax
0000000140147c60 jae      0x140147c82
0000000140147c62 sub      eax, ecx
0000000140147c64 lea      r9, [r9 + 0x929bca]
0000000140147c6b add      rcx, r8
0000000140147c6e mov      edx, eax
0000000140147c70 add      r9, rbp
0000000140147c73 lea      r8, [rip + 0x4c0c16]
0000000140147c7a call     0x140044426
0000000140147c7f add      dword ptr [rbx + 4], eax
0000000140147c82 test     esi, esi
0000000140147c84 jne      0x140147c8f
0000000140147c86 mov      byte ptr [rdi + 0x54f10], 1
0000000140147c8d jmp      0x140147c9b
0000000140147c8f cmp      esi, 1
0000000140147c92 jne      0x140147c9b
0000000140147c94 mov      byte ptr [rdi + 0x54f11], sil
0000000140147c9b cmp      byte ptr [rdi + 0x54f10], 0
0000000140147ca2 je       0x140147c3a
0000000140147ca4 movzx    edx, byte ptr [rdi + 0x53fb9]
0000000140147cab lea      rcx, [rdi + 0x54f12]
0000000140147cb2 shl      rdx, 6
0000000140147cb6 mov      r8d, 8
0000000140147cbc add      rdx, 0x53ef8
0000000140147cc3 add      rdx, rdi
0000000140147cc6 call     0x1400311e8
0000000140147ccb movsxd   r8, dword ptr [rdi + 0x53e38]
0000000140147cd2 mov      dl, byte ptr [rdi + 0x53ec0]
0000000140147cd8 movzx    eax, byte ptr [rbp + r8*8 + 0x693b36]
0000000140147ce1 lea      rcx, [rax + rax*2]
0000000140147ce5 cmp      dl, byte ptr [rcx + rbp + 0x693b29]
0000000140147cec jb       0x140147cf8
0000000140147cee mov      al, byte ptr [rbp + r8*8 + 0x693b35]
0000000140147cf6 jmp      0x140147d00
0000000140147cf8 mov      al, byte ptr [rbp + r8*8 + 0x693b34]
0000000140147d00 cmp      dl, al
0000000140147d02 jbe      0x140147d11
0000000140147d04 sub      dl, al
0000000140147d06 mov      byte ptr [rdi + 0x54f1a], dl
0000000140147d0c jmp      0x140147c3a
0000000140147d11 mov      byte ptr [rdi + 0x54f1a], 0
0000000140147d18 jmp      0x140147c3a