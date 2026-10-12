000000014051af80 mov      qword ptr [rsp + 0x18], rbx
000000014051af85 push     rbp
000000014051af86 push     rsi
000000014051af87 push     rdi
000000014051af88 push     r12
000000014051af8a push     r13
000000014051af8c push     r14
000000014051af8e push     r15
000000014051af90 mov      rbp, rsp
000000014051af93 sub      rsp, 0x40
000000014051af97 mov      rax, qword ptr [rip + 0x40c4c2]
000000014051af9e xor      rax, rsp
000000014051afa1 mov      qword ptr [rbp - 8], rax
000000014051afa5 mov      rax, qword ptr [rcx]
000000014051afa8 lea      r14, [rcx + 0x105]
000000014051afaf xor      ebx, ebx
000000014051afb1 mov      r12, rdx
000000014051afb4 mov      rdi, rcx
000000014051afb7 mov      word ptr [rbp - 0x10], bx
000000014051afbb mov      dword ptr [rbp - 0x20], ebx
000000014051afbe cmp      byte ptr [rcx + 0x24a], bl
000000014051afc4 je       0x14051afd4
000000014051afc6 cmp      byte ptr [r14], 5
000000014051afca je       0x14051afd4
000000014051afcc lea      eax, [rbx + 0x56]
000000014051afcf jmp      0x14051b28f
000000014051afd4 mov      rax, qword ptr [rax + 0x360]
000000014051afdb lea      rdx, [rbp - 0x20]
000000014051afdf call     qword ptr [rip + 0x169313]
000000014051afe5 test     eax, eax
000000014051afe7 jne      0x14051b28f
000000014051afed mov      eax, dword ptr [rbp - 0x20]
000000014051aff0 movzx    ecx, byte ptr [r12 + 7]
000000014051aff6 shr      eax, 0x10
000000014051aff9 and      eax, 0x7f
000000014051affc cmp      eax, ecx
000000014051affe jae      0x14051b04f
000000014051b000 mov      rcx, qword ptr [rip + 0x404ff9]
000000014051b007 lea      r14, [rip + 0x404ff2]
000000014051b00e mov      ebx, 9
000000014051b013 cmp      rcx, r14
000000014051b016 je       0x14051b048
000000014051b018 cmp      byte ptr [rcx + 0x169], 2
000000014051b01f jb       0x14051b048
000000014051b021 mov      edx, dword ptr [rcx + 0x16c]
000000014051b027 lea      esi, [rbx - 1]
000000014051b02a test     sil, dl
000000014051b02d je       0x14051b048
000000014051b02f mov      rcx, qword ptr [rcx + 0x158]
000000014051b036 lea      edx, [rbx + 7]
000000014051b039 mov      r9d, ebx
000000014051b03c lea      r8, [rip + 0x3e6ced]
000000014051b043 call     0x140001bb0
000000014051b048 mov      eax, ebx
000000014051b04a jmp      0x14051b28f
000000014051b04f mov      rax, qword ptr [rdi + 0x18]
000000014051b053 mov      esi, 8
000000014051b058 mov      rcx, qword ptr [rdi + 8]
000000014051b05c mov      edx, esi
000000014051b05e mov      dword ptr [rbp - 0x14], 1
000000014051b065 mov      dword ptr [rbp - 0x18], 0xc010008
000000014051b06c mov      rax, qword ptr [rax + 0x98]
000000014051b073 call     qword ptr [rip + 0x16927f]
000000014051b079 mov      r13, rax
000000014051b07c test     rax, rax
000000014051b07f jne      0x14051b089
000000014051b081 lea      eax, [rsi + 6]
000000014051b084 jmp      0x14051b28f
000000014051b089 mov      eax, dword ptr [r12 + 4]
000000014051b08e shr      eax, 8
000000014051b091 movzx    ecx, al
000000014051b094 mov      eax, dword ptr [r12]
000000014051b098 shl      ecx, 8
000000014051b09b and      eax, 0xffff00f3
000000014051b0a0 or       ecx, eax
000000014051b0a2 mov      dword ptr [r13], ecx
000000014051b0a6 mov      ecx, dword ptr [r12]
000000014051b0aa mov      eax, dword ptr [r12 + 4]
000000014051b0af and      ecx, 0x700
000000014051b0b5 and      eax, 0xff0000ff
000000014051b0ba or       ecx, eax
000000014051b0bc mov      dword ptr [r13 + 4], ecx
000000014051b0c0 cmp      byte ptr [r14], 5
000000014051b0c4 je       0x14051b1c6
000000014051b0ca mov      rcx, qword ptr [rip + 0x404f2f]
000000014051b0d1 lea      r14, [rip + 0x404f28]
000000014051b0d8 cmp      rcx, r14
000000014051b0db je       0x14051b110
000000014051b0dd cmp      byte ptr [rcx + 0x169], 3
000000014051b0e4 jb       0x14051b110
000000014051b0e6 mov      eax, dword ptr [rcx + 0x16c]
000000014051b0ec test     sil, al
000000014051b0ef je       0x14051b110
000000014051b0f1 mov      rcx, qword ptr [rcx + 0x158]
000000014051b0f8 lea      r9, [rip + 0x144071]
000000014051b0ff mov      edx, 0x11
000000014051b104 lea      r8, [rip + 0x3e6c25]
000000014051b10b call     0x140008874
000000014051b110 movzx    edx, byte ptr [r12 + 7]
000000014051b116 mov      r9d, 0xa
000000014051b11c mov      r8d, dword ptr [r13]
000000014051b120 mov      rcx, rdi
000000014051b123 shl      edx, 6
000000014051b126 call     0x1403695cc
000000014051b12b mov      r15d, eax
000000014051b12e test     eax, eax
000000014051b130 je       0x14051b177
000000014051b132 mov      rcx, qword ptr [rip + 0x404ec7]
000000014051b139 cmp      rcx, r14
000000014051b13c je       0x14051b1d8
000000014051b142 cmp      byte ptr [rcx + 0x169], 2
000000014051b149 jb       0x14051b1d8
000000014051b14f mov      edx, dword ptr [rcx + 0x16c]
000000014051b155 test     sil, dl
000000014051b158 je       0x14051b1d8
000000014051b15a mov      edx, 0x12
000000014051b15f mov      r9d, eax
000000014051b162 mov      rcx, qword ptr [rcx + 0x158]
000000014051b169 lea      r8, [rip + 0x3e6bc0]
000000014051b170 call     0x140001bb0
000000014051b175 jmp      0x14051b1d8
000000014051b177 movzx    edx, byte ptr [r12 + 7]
000000014051b17d mov      r9d, 0xa
000000014051b183 mov      r8d, dword ptr [r13 + 4]
000000014051b187 mov      rcx, rdi
000000014051b18a shl      edx, 6
000000014051b18d add      edx, 4
000000014051b190 call     0x1403695cc
000000014051b195 mov      r15d, eax
000000014051b198 test     eax, eax
000000014051b19a je       0x14051b1d8
000000014051b19c mov      rcx, qword ptr [rip + 0x404e5d]
000000014051b1a3 cmp      rcx, r14
000000014051b1a6 je       0x14051b1d8
000000014051b1a8 cmp      byte ptr [rcx + 0x169], 2
000000014051b1af jb       0x14051b1d8
000000014051b1b1 mov      eax, dword ptr [rcx + 0x16c]
000000014051b1b7 test     sil, al
000000014051b1ba je       0x14051b1d8
000000014051b1bc mov      edx, 0x13
000000014051b1c1 mov      r9d, r15d
000000014051b1c4 jmp      0x14051b162
000000014051b1c6 mov      r8, r13
000000014051b1c9 lea      rdx, [rbp - 0x18]
000000014051b1cd mov      rcx, rdi
000000014051b1d0 call     0x14041621c
000000014051b1d5 mov      r15d, eax
000000014051b1d8 mov      rax, qword ptr [rdi + 0x18]
000000014051b1dc mov      rdx, r13
000000014051b1df movzx    r8d, word ptr [rbp - 0x18]
000000014051b1e4 mov      rcx, qword ptr [rdi + 8]
000000014051b1e8 mov      rax, qword ptr [rax + 0x90]
000000014051b1ef call     qword ptr [rip + 0x169103]
000000014051b1f5 test     r15d, r15d
000000014051b1f8 je       0x14051b202
000000014051b1fa mov      eax, r15d
000000014051b1fd jmp      0x14051b28f
000000014051b202 mov      ecx, dword ptr [r12]
000000014051b206 mov      eax, ecx
000000014051b208 and      eax, 0xf0000
000000014051b20d cmp      eax, 0x80000
000000014051b212 jae      0x14051b21c
000000014051b214 mov      r9d, 1
000000014051b21a jmp      0x14051b22c
000000014051b21c cmp      eax, 0xa0000
000000014051b221 sbb      r9d, r9d
000000014051b224 and      r9d, 0xfffffffe
000000014051b228 add      r9d, 4
000000014051b22c test     cl, 1
000000014051b22f je       0x14051b260
000000014051b231 movzx    eax, byte ptr [r12 + 7]
000000014051b237 mov      rcx, qword ptr [rdi + 0xff8]
000000014051b23e add      eax, ebx
000000014051b240 mov      r8d, eax
000000014051b243 inc      ebx
000000014051b245 shr      r8, 5
000000014051b249 mov      edx, eax
000000014051b24b and      edx, 0x1f
000000014051b24e mov      eax, dword ptr [rcx + r8*4]
000000014051b252 bts      eax, edx
000000014051b255 mov      dword ptr [rcx + r8*4], eax
000000014051b259 cmp      ebx, r9d
000000014051b25c jb       0x14051b231
000000014051b25e jmp      0x14051b28d
000000014051b260 movzx    eax, byte ptr [r12 + 7]
000000014051b266 mov      rcx, qword ptr [rdi + 0xff8]
000000014051b26d add      eax, ebx
000000014051b26f mov      r8d, eax
000000014051b272 inc      ebx
000000014051b274 shr      r8, 5
000000014051b278 mov      edx, eax
000000014051b27a and      edx, 0x1f
000000014051b27d mov      eax, dword ptr [rcx + r8*4]
000000014051b281 btr      eax, edx
000000014051b284 mov      dword ptr [rcx + r8*4], eax
000000014051b288 cmp      ebx, r9d
000000014051b28b jb       0x14051b260
000000014051b28d xor      eax, eax
000000014051b28f mov      rcx, qword ptr [rbp - 8]
000000014051b293 xor      rcx, rsp
000000014051b296 call     0x1405f45b0
000000014051b29b mov      rbx, qword ptr [rsp + 0x90]
000000014051b2a3 add      rsp, 0x40
000000014051b2a7 pop      r15
000000014051b2a9 pop      r14
000000014051b2ab pop      r13
000000014051b2ad pop      r12
000000014051b2af pop      rdi
000000014051b2b0 pop      rsi
000000014051b2b1 pop      rbp
000000014051b2b2 ret      