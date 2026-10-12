000000014009bc74 push     rbp
000000014009bc76 push     rbx
000000014009bc77 push     rsi
000000014009bc78 push     rdi
000000014009bc79 push     r12
000000014009bc7b push     r13
000000014009bc7d push     r14
000000014009bc7f push     r15
000000014009bc81 lea      rbp, [rsp - 0x2108]
000000014009bc89 mov      eax, 0x2208
000000014009bc8e call     0x140044380
000000014009bc93 sub      rsp, rax
000000014009bc96 movaps   xmmword ptr [rsp + 0x21f0], xmm6
000000014009bc9e mov      rax, qword ptr [rip + 0x88b7bb]
000000014009bca5 xor      rax, rsp
000000014009bca8 mov      qword ptr [rbp + 0x20e0], rax
000000014009bcaf movups   xmm0, xmmword ptr [rdx]
000000014009bcb2 xor      edi, edi
000000014009bcb4 mov      qword ptr [rsp + 0x60], rcx
000000014009bcb9 mov      r12, rcx
000000014009bcbc mov      qword ptr [rsp + 0x68], r9
000000014009bcc1 movq     rsi, xmm0
000000014009bcc6 mov      byte ptr [rsp + 0x51], dil
000000014009bccb pextrw   r14d, xmm0, 4
000000014009bcd1 lea      ecx, [rdi + 1]
000000014009bcd4 mov      qword ptr [rsp + 0x58], rsi
000000014009bcd9 mov      r13, r8
000000014009bcdc mov      word ptr [rsp + 0x52], cx
000000014009bce1 mov      al, byte ptr [rsi]
000000014009bce3 mov      bl, dil
000000014009bce6 mov      byte ptr [rsp + 0x50], al
000000014009bcea sub      r14w, cx
000000014009bcee mov      byte ptr [r8 + 0x161a], al
000000014009bcf5 sub      al, cl
000000014009bcf7 cmp      al, 7
000000014009bcf9 ja       0x14009bf9f
000000014009bcff cmp      r14w, 2
000000014009bd04 jb       0x14009bf9f
000000014009bd0a lea      r8, [rip + 0x56044f]
000000014009bd11 mov      edx, 0x2138
000000014009bd16 mov      rcx, r12
000000014009bd19 call     0x14008df70
000000014009bd1e mov      r15, rax
000000014009bd21 test     rax, rax
000000014009bd24 je       0x14009bf9f
000000014009bd2a mov      rdi, qword ptr [rax + 0x18]
000000014009bd2e mov      edx, 0x2138
000000014009bd33 mov      rcx, rdi
000000014009bd36 call     0x140031290
000000014009bd3b movzx    eax, word ptr [rsp + 0x52]
000000014009bd40 movzx    edx, ax
000000014009bd43 lea      rcx, [rsi + 2]
000000014009bd47 mov      rax, qword ptr [rsp + 0x58]
000000014009bd4c add      rcx, rdx
000000014009bd4f mov      qword ptr [rbp - 0x80], rcx
000000014009bd53 xor      ecx, ecx
000000014009bd55 movzx    esi, byte ptr [rdx + rsi + 1]
000000014009bd5a mov      word ptr [rbp - 0x78], si
000000014009bd5e cmp      byte ptr [rdx + rax], cl
000000014009bd61 jne      0x14009be35
000000014009bd67 movaps   xmm6, xmmword ptr [rbp - 0x80]
000000014009bd6b lea      rax, [rsp + 0x51]
000000014009bd70 mov      qword ptr [rsp + 0x28], rax
000000014009bd75 lea      r8d, [rcx + 0x55]
000000014009bd79 mov      byte ptr [rsp + 0x20], cl
000000014009bd7d lea      rdx, [rsp + 0x70]
000000014009bd82 lea      rcx, [rbp - 0x70]
000000014009bd86 movdqa   xmmword ptr [rsp + 0x70], xmm6
000000014009bd8c xor      r9d, r9d
000000014009bd8f call     0x14007e154
000000014009bd94 movups   xmm0, xmmword ptr [rax]
000000014009bd97 pextrw   eax, xmm0, 4
000000014009bd9c test     ax, ax
000000014009bd9f je       0x14009bde5
000000014009bda1 test     bl, bl
000000014009bda3 je       0x14009bdd3
000000014009bda5 mov      rdx, qword ptr [rsp + 0x68]
000000014009bdaa lea      rcx, [rdi + 1]
000000014009bdae mov      r8d, 6
000000014009bdb4 call     0x14003113c
000000014009bdb9 test     eax, eax
000000014009bdbb je       0x14009be66
000000014009bdc1 mov      edx, 0x2138
000000014009bdc6 mov      rcx, rdi
000000014009bdc9 call     0x140031290
000000014009bdce mov      r12, qword ptr [rsp + 0x60]
000000014009bdd3 mov      edx, 0x2138
000000014009bdd8 mov      rcx, rdi
000000014009bddb call     0x140031290
000000014009bde0 mov      r9, r13
000000014009bde3 jmp      0x14009be17
000000014009bde5 test     bl, bl
000000014009bde7 je       0x14009be0b
000000014009bde9 lea      rcx, [rbp - 0x60]
000000014009bded call     0x140178ebc
000000014009bdf2 mov      rdx, rdi
000000014009bdf5 lea      rcx, [rbp - 0x60]
000000014009bdf9 call     0x140178ec8
000000014009bdfe mov      edx, 0x2138
000000014009be03 mov      rcx, rdi
000000014009be06 call     0x140031290
000000014009be0b mov      rcx, rdi
000000014009be0e call     0x140178ebc
000000014009be13 lea      r9, [rbp - 0x60]
000000014009be17 mov      dl, byte ptr [rsp + 0x50]
000000014009be1b lea      r8, [rsp + 0x70]
000000014009be20 mov      rcx, r12
000000014009be23 mov      qword ptr [rsp + 0x20], rdi
000000014009be28 movdqa   xmmword ptr [rsp + 0x70], xmm6
000000014009be2e call     0x14009bfcc
000000014009be33 mov      bl, 1
000000014009be35 mov      eax, 0xfffe
000000014009be3a sub      ax, si
000000014009be3d add      si, 2
000000014009be41 add      r14w, ax
000000014009be45 movzx    eax, word ptr [rsp + 0x52]
000000014009be4a add      ax, si
000000014009be4d mov      word ptr [rsp + 0x52], ax
000000014009be52 test     r14w, r14w
000000014009be56 je       0x14009bef6
000000014009be5c mov      rsi, qword ptr [rsp + 0x58]
000000014009be61 jmp      0x14009bd40
000000014009be66 mov      rsi, qword ptr [rip + 0x884193]
000000014009be6d lea      rax, [rip + 0x88418c]
000000014009be74 cmp      rsi, rax
000000014009be77 je       0x14009bed9
000000014009be79 cmp      byte ptr [rsi + 0x29], 4
000000014009be7d jb       0x14009bed9
000000014009be7f test     dword ptr [rsi + 0x2c], 0x100
000000014009be86 je       0x14009bed9
000000014009be88 movzx    ecx, byte ptr [rdi + 6]
000000014009be8c lea      rax, [rdi + 7]
000000014009be90 movzx    r8d, byte ptr [rdi + 5]
000000014009be95 mov      edx, 0x135
000000014009be9a movzx    r10d, byte ptr [rdi + 4]
000000014009be9f movzx    r11d, byte ptr [rdi + 3]
000000014009bea4 movzx    ebx, byte ptr [rdi + 2]
000000014009bea8 movzx    r9d, byte ptr [rdi + 1]
000000014009bead mov      qword ptr [rsp + 0x48], rax
000000014009beb2 mov      dword ptr [rsp + 0x40], ecx
000000014009beb6 mov      rcx, qword ptr [rsi + 0x18]
000000014009beba mov      dword ptr [rsp + 0x38], r8d
000000014009bebf lea      r8, [rip + 0x5f6dea]
000000014009bec6 mov      dword ptr [rsp + 0x30], r10d
000000014009becb mov      dword ptr [rsp + 0x28], r11d
000000014009bed0 mov      dword ptr [rsp + 0x20], ebx
000000014009bed4 call     0x140050578
000000014009bed9 mov      rdx, rdi
000000014009bedc mov      rcx, r13
000000014009bedf call     0x140178ec8
000000014009bee4 mov      rcx, rdi
000000014009bee7 call     0x140178ebc
000000014009beec mov      r12, qword ptr [rsp + 0x60]
000000014009bef1 jmp      0x14009bf94
000000014009bef6 test     bl, bl
000000014009bef8 je       0x14009bf94
000000014009befe mov      rdx, qword ptr [rsp + 0x68]
000000014009bf03 lea      rcx, [rdi + 1]
000000014009bf07 mov      r8d, 6
000000014009bf0d call     0x14003113c
000000014009bf12 test     eax, eax
000000014009bf14 jne      0x14009bf89
000000014009bf16 mov      rsi, qword ptr [rip + 0x8840e3]
000000014009bf1d lea      rax, [rip + 0x8840dc]
000000014009bf24 cmp      rsi, rax
000000014009bf27 je       0x14009bf89
000000014009bf29 cmp      byte ptr [rsi + 0x29], 4
000000014009bf2d jb       0x14009bf89
000000014009bf2f test     dword ptr [rsi + 0x2c], 0x100
000000014009bf36 je       0x14009bf89
000000014009bf38 movzx    ecx, byte ptr [rdi + 6]
000000014009bf3c lea      rax, [rdi + 7]
000000014009bf40 movzx    r8d, byte ptr [rdi + 5]
000000014009bf45 mov      edx, 0x136
000000014009bf4a movzx    r10d, byte ptr [rdi + 4]
000000014009bf4f movzx    r11d, byte ptr [rdi + 3]
000000014009bf54 movzx    ebx, byte ptr [rdi + 2]
000000014009bf58 movzx    r9d, byte ptr [rdi + 1]
000000014009bf5d mov      qword ptr [rsp + 0x48], rax
000000014009bf62 mov      dword ptr [rsp + 0x40], ecx
000000014009bf66 mov      rcx, qword ptr [rsi + 0x18]
000000014009bf6a mov      dword ptr [rsp + 0x38], r8d
000000014009bf6f lea      r8, [rip + 0x5f6d3a]
000000014009bf76 mov      dword ptr [rsp + 0x30], r10d
000000014009bf7b mov      dword ptr [rsp + 0x28], r11d
000000014009bf80 mov      dword ptr [rsp + 0x20], ebx
000000014009bf84 call     0x140050578
000000014009bf89 mov      rdx, rdi
000000014009bf8c mov      rcx, r13
000000014009bf8f call     0x140178ec8
000000014009bf94 mov      rdx, r15
000000014009bf97 mov      rcx, r12
000000014009bf9a call     0x140092aac
000000014009bf9f mov      rcx, qword ptr [rbp + 0x20e0]
000000014009bfa6 xor      rcx, rsp
000000014009bfa9 call     0x1405f45b0
000000014009bfae movaps   xmm6, xmmword ptr [rsp + 0x21f0]
000000014009bfb6 add      rsp, 0x2208
000000014009bfbd pop      r15
000000014009bfbf pop      r14
000000014009bfc1 pop      r13
000000014009bfc3 pop      r12
000000014009bfc5 pop      rdi
000000014009bfc6 pop      rsi
000000014009bfc7 pop      rbx
000000014009bfc8 pop      rbp
000000014009bfc9 ret      