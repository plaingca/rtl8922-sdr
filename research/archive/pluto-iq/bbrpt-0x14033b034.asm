000000014033b034 push     rbp
000000014033b036 push     rbx
000000014033b037 push     rsi
000000014033b038 push     rdi
000000014033b039 push     r12
000000014033b03b push     r13
000000014033b03d push     r14
000000014033b03f push     r15
000000014033b041 lea      rbp, [rsp - 0x17]
000000014033b046 sub      rsp, 0x88
000000014033b04d mov      rax, qword ptr [rip + 0x5ec40c]
000000014033b054 xor      rax, rsp
000000014033b057 mov      qword ptr [rbp + 7], rax
000000014033b05b movzx    eax, word ptr [rip + 0x2bd49e]
000000014033b062 lea      r15, [rdx + 0x10]
000000014033b066 mov      ebx, dword ptr [r8]
000000014033b069 mov      rsi, rcx
000000014033b06c mov      rcx, qword ptr [rbp + 0x7f]
000000014033b070 xorps    xmm0, xmm0
000000014033b073 mov      word ptr [rbp - 0x29], ax
000000014033b077 mov      r12, r8
000000014033b07a mov      al, byte ptr [rip + 0x2bd482]
000000014033b080 lea      r8, [rbp - 0x21]
000000014033b084 mov      byte ptr [rbp - 0x27], al
000000014033b087 mov      r13, rdx
000000014033b08a mov      edi, dword ptr [rcx]
000000014033b08c lea      rdx, [rip + 0x2e06dd]
000000014033b093 xor      eax, eax
000000014033b095 mov      qword ptr [rbp - 0x31], rcx
000000014033b099 mov      rcx, r15
000000014033b09c mov      qword ptr [rbp - 1], rax
000000014033b0a0 mov      r14, r9
000000014033b0a3 movups   xmmword ptr [rbp - 0x21], xmm0
000000014033b0a7 movups   xmmword ptr [rbp - 0x11], xmm0
000000014033b0ab call     0x140044420
000000014033b0b0 lea      rdx, [rbp - 0x29]
000000014033b0b4 sub      rdx, r15
000000014033b0b7 movzx    eax, byte ptr [r15]
000000014033b0bb movzx    ecx, byte ptr [r15 + rdx]
000000014033b0c0 sub      eax, ecx
000000014033b0c2 jne      0x14033b0cb
000000014033b0c4 inc      r15
000000014033b0c7 test     ecx, ecx
000000014033b0c9 jne      0x14033b0b7
000000014033b0cb test     eax, eax
000000014033b0cd jne      0x14033b169
000000014033b0d3 cmp      ebx, edi
000000014033b0d5 jae      0x14033b13e
000000014033b0d7 mov      edx, edi
000000014033b0d9 lea      rcx, [r14 + rbx]
000000014033b0dd sub      edx, ebx
000000014033b0df lea      r8, [rip + 0x2fbb5a]
000000014033b0e6 call     0x140044426
000000014033b0eb add      ebx, eax
000000014033b0ed cmp      ebx, edi
000000014033b0ef jae      0x14033b13e
000000014033b0f1 mov      edx, edi
000000014033b0f3 mov      ecx, ebx
000000014033b0f5 sub      edx, ebx
000000014033b0f7 lea      r8, [rip + 0x2fbbb2]
000000014033b0fe add      rcx, r14
000000014033b101 call     0x140044426
000000014033b106 add      ebx, eax
000000014033b108 cmp      ebx, edi
000000014033b10a jae      0x14033b13e
000000014033b10c mov      edx, edi
000000014033b10e mov      ecx, ebx
000000014033b110 sub      edx, ebx
000000014033b112 lea      r8, [rip + 0x2fbbf7]
000000014033b119 add      rcx, r14
000000014033b11c call     0x140044426
000000014033b121 add      ebx, eax
000000014033b123 cmp      ebx, edi
000000014033b125 jae      0x14033b13e
000000014033b127 mov      edx, edi
000000014033b129 mov      ecx, ebx
000000014033b12b sub      edx, ebx
000000014033b12d lea      r8, [rip + 0x2fbc1c]
000000014033b134 add      rcx, r14
000000014033b137 call     0x140044426
000000014033b13c add      ebx, eax
000000014033b13e mov      r15, qword ptr [rbp - 0x31]
000000014033b142 mov      dword ptr [r12], ebx
000000014033b146 mov      dword ptr [r15], edi
000000014033b149 mov      rcx, qword ptr [rbp + 7]
000000014033b14d xor      rcx, rsp
000000014033b150 call     0x1405f45b0
000000014033b155 add      rsp, 0x88
000000014033b15c pop      r15
000000014033b15e pop      r14
000000014033b160 pop      r13
000000014033b162 pop      r12
000000014033b164 pop      rdi
000000014033b165 pop      rsi
000000014033b166 pop      rbx
000000014033b167 pop      rbp
000000014033b168 ret      
000000014033b169 mov      eax, dword ptr [rbp - 0x21]
000000014033b16c cmp      eax, 1
000000014033b16f jne      0x14033b258
000000014033b175 lea      r15, [rip + 0x2e05f4]
000000014033b17c mov      rdx, r15
000000014033b17f lea      rcx, [r13 + 0x20]
000000014033b183 lea      r8, [rbp - 0x1d]
000000014033b187 call     0x140044420
000000014033b18c lea      rcx, [r13 + 0x30]
000000014033b190 mov      rdx, r15
000000014033b193 lea      r8, [rbp - 0x19]
000000014033b197 call     0x140044420
000000014033b19c lea      rcx, [r13 + 0x40]
000000014033b1a0 mov      rdx, r15
000000014033b1a3 lea      r8, [rbp - 0x15]
000000014033b1a7 call     0x140044420
000000014033b1ac lea      rcx, [r13 + 0x50]
000000014033b1b0 mov      rdx, r15
000000014033b1b3 lea      r8, [rbp - 0x11]
000000014033b1b7 call     0x140044420
000000014033b1bc movzx    eax, byte ptr [rbp - 0x1d]
000000014033b1c0 movzx    ecx, byte ptr [rbp - 0x19]
000000014033b1c4 movzx    edx, byte ptr [rbp - 0x15]
000000014033b1c8 movzx    r8d, byte ptr [rbp - 0x11]
000000014033b1cd mov      byte ptr [rsi + 0x1c2a], al
000000014033b1d3 mov      byte ptr [rsi + 0x1c2b], cl
000000014033b1d9 mov      byte ptr [rsi + 0x1c2c], dl
000000014033b1df mov      byte ptr [rsi + 0x1c29], r8b
000000014033b1e6 cmp      ebx, edi
000000014033b1e8 jae      0x14033b218
000000014033b1ea mov      r10d, edx
000000014033b1ed mov      dword ptr [rsp + 0x30], r8d
000000014033b1f2 mov      r11d, ecx
000000014033b1f5 mov      dword ptr [rsp + 0x28], r10d
000000014033b1fa mov      edx, edi
000000014033b1fc mov      dword ptr [rsp + 0x20], r11d
000000014033b201 sub      edx, ebx
000000014033b203 lea      rcx, [r14 + rbx]
000000014033b207 mov      r9d, eax
000000014033b20a lea      r8, [rip + 0x2fbb5f]
000000014033b211 call     0x140044426
000000014033b216 add      ebx, eax
000000014033b218 mov      ecx, 0x80
000000014033b21d mov      eax, ecx
000000014033b21f sub      al, byte ptr [rsi + 0x1c2a]
000000014033b225 mov      byte ptr [rsi + 0x1c2a], al
000000014033b22b mov      eax, ecx
000000014033b22d sub      al, byte ptr [rsi + 0x1c2b]
000000014033b233 mov      byte ptr [rsi + 0x1c2b], al
000000014033b239 mov      eax, ecx
000000014033b23b sub      al, byte ptr [rsi + 0x1c2c]
000000014033b241 sub      cl, byte ptr [rsi + 0x1c29]
000000014033b247 mov      byte ptr [rsi + 0x1c29], cl
000000014033b24d mov      byte ptr [rsi + 0x1c2c], al
000000014033b253 jmp      0x14033b13e
000000014033b258 cmp      eax, 3
000000014033b25b jne      0x14033b2c9
000000014033b25d lea      rcx, [r13 + 0x20]
000000014033b261 lea      r8, [rbp - 0x1d]
000000014033b265 lea      rdx, [rip + 0x2e0504]
000000014033b26c call     0x140044420
000000014033b271 mov      al, byte ptr [rbp - 0x1d]
000000014033b274 mov      byte ptr [rsi + 0x1c27], al
000000014033b27a cmp      ebx, edi
000000014033b27c jae      0x14033b13e
000000014033b282 test     al, al
000000014033b284 jne      0x14033b28f
000000014033b286 lea      r9, [rip + 0x2fbb53]
000000014033b28d jmp      0x14033b2b0
000000014033b28f cmp      al, 1
000000014033b291 jne      0x14033b29c
000000014033b293 lea      r9, [rip + 0x2fbb56]
000000014033b29a jmp      0x14033b2b0
000000014033b29c cmp      al, 2
000000014033b29e lea      rcx, [rip + 0x2fbb5b]
000000014033b2a5 lea      r9, [rip + 0x2fbb74]
000000014033b2ac cmove    r9, rcx
000000014033b2b0 mov      edx, edi
000000014033b2b2 lea      rcx, [r14 + rbx]
000000014033b2b6 sub      edx, ebx
000000014033b2b8 lea      r8, [rip + 0x2fbb71]
000000014033b2bf call     0x140044426
000000014033b2c4 jmp      0x14033b13c
000000014033b2c9 cmp      eax, 4
000000014033b2cc jne      0x14033b310
000000014033b2ce lea      rcx, [r13 + 0x20]
000000014033b2d2 lea      r8, [rbp - 0x1d]
000000014033b2d6 lea      rdx, [rip + 0x2e0493]
000000014033b2dd call     0x140044420
000000014033b2e2 movzx    eax, byte ptr [rbp - 0x1d]
000000014033b2e6 mov      byte ptr [rsi + 0x1c32], al
000000014033b2ec cmp      ebx, edi
000000014033b2ee jae      0x14033b13e
000000014033b2f4 mov      edx, edi
000000014033b2f6 lea      rcx, [r14 + rbx]
000000014033b2fa sub      edx, ebx
000000014033b2fc lea      r8, [rip + 0x2fbb4d]
000000014033b303 mov      r9d, eax
000000014033b306 call     0x140044426
000000014033b30b jmp      0x14033b13c
000000014033b310 cmp      eax, 0x64
000000014033b313 jne      0x14033b13e
000000014033b319 mov      r15, qword ptr [rbp - 0x31]
000000014033b31d mov      r8, r14
000000014033b320 mov      r9, r15
000000014033b323 mov      rdx, r12
000000014033b326 mov      rcx, rsi
000000014033b329 call     0x14033a700
000000014033b32e jmp      0x14033b142