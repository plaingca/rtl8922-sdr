0000000140199fe4 test     rcx, rcx
0000000140199fe7 je       0x14019a3f8
0000000140199fed mov      qword ptr [rsp + 8], rbx
0000000140199ff2 mov      qword ptr [rsp + 0x10], rbp
0000000140199ff7 mov      qword ptr [rsp + 0x18], rsi
0000000140199ffc push     rdi
0000000140199ffd push     r14
0000000140199fff push     r15
000000014019a001 sub      rsp, 0x20
000000014019a005 mov      rdi, r8
000000014019a008 mov      rbx, rdx
000000014019a00b mov      r15, rcx
000000014019a00e test     r8, r8
000000014019a011 je       0x14019a3e0
000000014019a017 test     rdx, rdx
000000014019a01a je       0x14019a3e0
000000014019a020 mov      rax, qword ptr [r8 + 0x3d30]
000000014019a027 mov      rcx, qword ptr [rax + 0xaf3b8]
000000014019a02e mov      r14, qword ptr [rcx]
000000014019a031 mov      byte ptr [rdx + 0x8e], 0
000000014019a038 test     r14, r14
000000014019a03b je       0x14019a22b
000000014019a041 cmp      byte ptr [rbx + 0x8e], 2
000000014019a048 jae      0x14019a22b
000000014019a04e mov      rcx, r14
000000014019a051 call     0x1400b2d18
000000014019a056 mov      rbp, rax
000000014019a059 test     rax, rax
000000014019a05c je       0x14019a217
000000014019a062 mov      rdx, qword ptr [rax + 0x2c0]
000000014019a069 test     rdx, rdx
000000014019a06c je       0x14019a217
000000014019a072 cmp      dword ptr [rdx + 0x10], 2
000000014019a076 jne      0x14019a217
000000014019a07c mov      edx, dword ptr [rdx + 0x604]
000000014019a082 test     edx, edx
000000014019a084 je       0x14019a09c
000000014019a086 sub      edx, 1
000000014019a089 je       0x14019a098
000000014019a08b cmp      edx, 1
000000014019a08e je       0x14019a094
000000014019a090 mov      dl, 3
000000014019a092 jmp      0x14019a09e
000000014019a094 mov      dl, 2
000000014019a096 jmp      0x14019a09e
000000014019a098 mov      dl, 1
000000014019a09a jmp      0x14019a09e
000000014019a09c xor      dl, dl
000000014019a09e movzx    eax, byte ptr [rbx + 0x8e]
000000014019a0a5 lea      rcx, [rax + rax*2]
000000014019a0a9 mov      byte ptr [rbx + rcx*4 + 0x6e], dl
000000014019a0ad movzx    eax, byte ptr [rbx + 0x8e]
000000014019a0b4 mov      rdx, qword ptr [rbp + 0x2c0]
000000014019a0bb lea      rcx, [rax + rax*2]
000000014019a0bf mov      al, byte ptr [rdx + 0x608]
000000014019a0c5 mov      byte ptr [rbx + rcx*4 + 0x6c], al
000000014019a0c9 mov      rcx, qword ptr [rbp + 0x2c0]
000000014019a0d0 mov      ecx, dword ptr [rcx + 0x60c]
000000014019a0d6 call     0x14019a9b8
000000014019a0db movzx    ecx, byte ptr [rbx + 0x8e]
000000014019a0e2 lea      rdx, [rcx + rcx*2]
000000014019a0e6 mov      byte ptr [rbx + rdx*4 + 0x6d], al
000000014019a0ea mov      rcx, qword ptr [rbp + 0x2c0]
000000014019a0f1 mov      ecx, dword ptr [rcx + 0x610]
000000014019a0f7 call     0x14019a95c
000000014019a0fc movzx    ecx, byte ptr [rbx + 0x8e]
000000014019a103 mov      r8d, 6
000000014019a109 lea      rdx, [rcx + rcx*2]
000000014019a10d mov      byte ptr [rbx + rdx*4 + 0x6f], al
000000014019a111 movzx    eax, byte ptr [rbx + 0x8e]
000000014019a118 mov      rdx, qword ptr [rbp + 0x2c0]
000000014019a11f add      rdx, 9
000000014019a123 lea      rcx, [rax + rax*2]
000000014019a127 lea      rcx, [rcx*4 + 0x71]
000000014019a12f add      rcx, rbx
000000014019a132 call     0x1400311e8
000000014019a137 mov      rax, qword ptr [rbp + 0x2c0]
000000014019a13e mov      rcx, qword ptr [rax]
000000014019a141 mov      edx, dword ptr [rcx + 8]
000000014019a144 sub      edx, 1
000000014019a147 je       0x14019a168
000000014019a149 sub      edx, 1
000000014019a14c je       0x14019a164
000000014019a14e sub      edx, 7
000000014019a151 je       0x14019a160
000000014019a153 cmp      edx, 1
000000014019a156 je       0x14019a15c
000000014019a158 xor      dl, dl
000000014019a15a jmp      0x14019a16a
000000014019a15c mov      dl, 4
000000014019a15e jmp      0x14019a16a
000000014019a160 mov      dl, 3
000000014019a162 jmp      0x14019a16a
000000014019a164 mov      dl, 2
000000014019a166 jmp      0x14019a16a
000000014019a168 mov      dl, 1
000000014019a16a movzx    eax, byte ptr [rbx + 0x8e]
000000014019a171 lea      rcx, [rax + rax*2]
000000014019a175 mov      byte ptr [rbx + rcx*4 + 0x70], dl
000000014019a179 movzx    eax, byte ptr [rbx + 0x8e]
000000014019a180 lea      rcx, [rax + rax*2]
000000014019a184 mov      byte ptr [rbx + rcx*4 + 0x77], 0
000000014019a189 mov      rax, qword ptr [rbp + 0x2c0]
000000014019a190 mov      r8, qword ptr [rax]
000000014019a193 test     r8, r8
000000014019a196 je       0x14019a211
000000014019a198 mov      dl, byte ptr [rdi + 0x1d10]
000000014019a19e xor      al, al
000000014019a1a0 test     dl, dl
000000014019a1a2 je       0x14019a211
000000014019a1a4 movzx    ecx, al
000000014019a1a7 add      rcx, 0x1cb
000000014019a1ae add      rcx, rcx
000000014019a1b1 cmp      qword ptr [rdi + rcx*8], r8
000000014019a1b5 je       0x14019a1bf
000000014019a1b7 inc      al
000000014019a1b9 cmp      al, dl
000000014019a1bb jb       0x14019a1a4
000000014019a1bd jmp      0x14019a211
000000014019a1bf cmp      byte ptr [rdi + 0x3d44], 0
000000014019a1c6 mov      edx, dword ptr [rdi + 0xcb4]
000000014019a1cc je       0x14019a201
000000014019a1ce mov      ecx, dword ptr [rdi + rcx*8 + 8]
000000014019a1d2 test     ecx, ecx
000000014019a1d4 je       0x14019a28b
000000014019a1da sub      ecx, 1
000000014019a1dd je       0x14019a280
000000014019a1e3 sub      ecx, 1
000000014019a1e6 je       0x14019a280
000000014019a1ec cmp      ecx, 1
000000014019a1ef jne      0x14019a297
000000014019a1f5 cmp      edx, 0x4b0
000000014019a1fb jae      0x14019a297
000000014019a201 movzx    eax, byte ptr [rbx + 0x8e]
000000014019a208 lea      rdx, [rax + rax*2]
000000014019a20c mov      byte ptr [rbx + rdx*4 + 0x77], 1
000000014019a211 inc      byte ptr [rbx + 0x8e]
000000014019a217 mov      rcx, r14
000000014019a21a call     0x140082704
000000014019a21f mov      r14, rax
000000014019a222 test     rax, rax
000000014019a225 jne      0x14019a041
000000014019a22b xor      r10b, r10b
000000014019a22e cmp      byte ptr [rdi + 0x45a8], r10b
000000014019a235 jbe      0x14019a34d
000000014019a23b cmp      r10b, 2
000000014019a23f jae      0x14019a34d
000000014019a245 movzx    r9d, r10b
000000014019a249 lea      rcx, [r9 + 0x455]
000000014019a250 add      rcx, rcx
000000014019a253 mov      edx, dword ptr [rdi + rcx*8]
000000014019a256 test     edx, edx
000000014019a258 je       0x14019a303
000000014019a25e sub      edx, 1
000000014019a261 je       0x14019a2ff
000000014019a267 sub      edx, 1
000000014019a26a je       0x14019a2fb
000000014019a270 cmp      edx, 1
000000014019a273 jne      0x14019a303
000000014019a279 mov      al, 3
000000014019a27b jmp      0x14019a305
000000014019a280 cmp      edx, 0x1f4
000000014019a286 jmp      0x14019a1fb
000000014019a28b cmp      edx, 0x1f4
000000014019a291 jb       0x14019a201
000000014019a297 xor      sil, sil
000000014019a29a cmp      byte ptr [r15 + 0x22], sil
000000014019a29e jbe      0x14019a211
000000014019a2a4 movzx    eax, sil
000000014019a2a8 movzx    edx, byte ptr [rax + r15 + 0x20]
000000014019a2ae mov      rax, qword ptr [rdi + 0x3d30]
000000014019a2b5 mov      rcx, qword ptr [rax + 0xaf3b8]
000000014019a2bc mov      rcx, qword ptr [rcx]
000000014019a2bf mov      rcx, qword ptr [rcx + 0x20708]
000000014019a2c6 call     0x1401b71e0
000000014019a2cb test     rax, rax
000000014019a2ce je       0x14019a2ed
000000014019a2d0 mov      rcx, qword ptr [rbp + 0x2c0]
000000014019a2d7 cmp      qword ptr [rax + 0x18], rcx
000000014019a2db jne      0x14019a2ed
000000014019a2dd movzx    eax, byte ptr [rbx + 0x8e]
000000014019a2e4 lea      rcx, [rax + rax*2]
000000014019a2e8 mov      byte ptr [rbx + rcx*4 + 0x77], 1
000000014019a2ed inc      sil
000000014019a2f0 cmp      sil, byte ptr [r15 + 0x22]
000000014019a2f4 jb       0x14019a2a4
000000014019a2f6 jmp      0x14019a211
000000014019a2fb mov      al, 2
000000014019a2fd jmp      0x14019a305
000000014019a2ff mov      al, 1
000000014019a301 jmp      0x14019a305
000000014019a303 xor      al, al
000000014019a305 lea      r8, [rbx + r9*4]
000000014019a309 mov      rdx, r9
000000014019a30c add      rdx, rdx
000000014019a30f mov      byte ptr [r9 + r8 + 0x84], al
000000014019a317 lea      rcx, [rbx + r9*4]
000000014019a31b inc      r10b
000000014019a31e movzx    eax, word ptr [rdi + rdx*8 + 0x4556]
000000014019a326 mov      word ptr [r9 + rcx + 0x87], ax
000000014019a32f movzx    eax, word ptr [rdi + rdx*8 + 0x4554]
000000014019a337 mov      word ptr [r9 + r8 + 0x85], ax
000000014019a340 cmp      r10b, byte ptr [rdi + 0x45a8]
000000014019a347 jb       0x14019a23b
000000014019a34d mov      r8b, byte ptr [rbx + 0x8e]
000000014019a354 xor      dl, dl
000000014019a356 test     r8b, r8b
000000014019a359 je       0x14019a3e0
000000014019a35f movzx    eax, dl
000000014019a362 lea      rcx, [rax + rax*2]
000000014019a366 cmp      byte ptr [rbx + rcx*4 + 0x77], 0
000000014019a36b je       0x14019a376
000000014019a36d inc      dl
000000014019a36f cmp      dl, r8b
000000014019a372 jb       0x14019a35f
000000014019a374 jmp      0x14019a3e0
000000014019a376 or       word ptr [rbx], 8
000000014019a37a mov      ecx, dword ptr [rdi + 0x4618]
000000014019a380 call     0x14019aa08
000000014019a385 mov      byte ptr [rbx + 0x69], al
000000014019a388 cmp      dword ptr [rdi + 0x45c4], 1
000000014019a38f sete     al
000000014019a392 mov      byte ptr [rbx + 0x6a], al
000000014019a395 cmp      dword ptr [rdi + 0x461c], 1
000000014019a39c sete     al
000000014019a39f mov      byte ptr [rbx + 0x6b], al
000000014019a3a2 mov      rcx, qword ptr [rip + 0x785c57]
000000014019a3a9 lea      rax, [rip + 0x785c50]
000000014019a3b0 cmp      rcx, rax
000000014019a3b3 je       0x14019a3e0
000000014019a3b5 cmp      byte ptr [rcx + 0x29], 4
000000014019a3b9 jb       0x14019a3e0
000000014019a3bb test     dword ptr [rcx + 0x2c], 0x200
000000014019a3c2 je       0x14019a3e0
000000014019a3c4 mov      rcx, qword ptr [rcx + 0x18]
000000014019a3c8 lea      r9, [rip + 0x473e61]
000000014019a3cf mov      edx, 0x19
000000014019a3d4 lea      r8, [rip + 0x4fb4ed]
000000014019a3db call     0x140008874
000000014019a3e0 mov      rbx, qword ptr [rsp + 0x40]
000000014019a3e5 mov      rbp, qword ptr [rsp + 0x48]
000000014019a3ea mov      rsi, qword ptr [rsp + 0x50]
000000014019a3ef add      rsp, 0x20
000000014019a3f3 pop      r15
000000014019a3f5 pop      r14
000000014019a3f7 pop      rdi
000000014019a3f8 ret      