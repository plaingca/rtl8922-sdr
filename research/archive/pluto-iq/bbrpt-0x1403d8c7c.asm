00000001403d8c7c push     rbp
00000001403d8c7e push     rbx
00000001403d8c7f push     rsi
00000001403d8c80 push     rdi
00000001403d8c81 push     r12
00000001403d8c83 push     r13
00000001403d8c85 push     r14
00000001403d8c87 push     r15
00000001403d8c89 mov      rbp, rsp
00000001403d8c8c sub      rsp, 0x78
00000001403d8c90 mov      rax, qword ptr [rip + 0x54e7c9]
00000001403d8c97 xor      rax, rsp
00000001403d8c9a mov      qword ptr [rbp - 0x10], rax
00000001403d8c9e mov      rbx, qword ptr [rcx + 0x9a0]
00000001403d8ca5 xorps    xmm0, xmm0
00000001403d8ca8 mov      r12, qword ptr [rbp + 0x68]
00000001403d8cac mov      r15, rcx
00000001403d8caf lea      rcx, [rdx + 0x20]
00000001403d8cb3 mov      r14, rdx
00000001403d8cb6 xor      eax, eax
00000001403d8cb8 lea      rdx, [rip + 0x274371]
00000001403d8cbf mov      r13, r9
00000001403d8cc2 mov      qword ptr [rbp - 0x18], rax
00000001403d8cc6 mov      rdi, r8
00000001403d8cc9 movups   xmmword ptr [rbp - 0x38], xmm0
00000001403d8ccd movups   xmmword ptr [rbp - 0x28], xmm0
00000001403d8cd1 call     0x140044360
00000001403d8cd6 xor      esi, esi
00000001403d8cd8 test     eax, eax
00000001403d8cda jne      0x1403d8d8e
00000001403d8ce0 lea      rcx, [r14 + 0x30]
00000001403d8ce4 lea      rdx, [rip + 0x274355]
00000001403d8ceb call     0x140044360
00000001403d8cf0 test     eax, eax
00000001403d8cf2 jne      0x1403d8d8e
00000001403d8cf8 test     dword ptr [r15 + 0x13f0], 0x1fc0000
00000001403d8d03 je       0x1403d8d8e
00000001403d8d09 lea      rcx, [r14 + 0x40]
00000001403d8d0d lea      r8, [rbp - 0x38]
00000001403d8d11 lea      rdx, [rip + 0x242a58]
00000001403d8d18 call     0x140044420
00000001403d8d1d mov      eax, dword ptr [rbp - 0x38]
00000001403d8d20 cmp      eax, 0xf
00000001403d8d23 jbe      0x1403d8d52
00000001403d8d25 cmp      eax, 0x1f
00000001403d8d28 je       0x1403d8d52
00000001403d8d2a mov      r8d, dword ptr [rdi]
00000001403d8d2d mov      ecx, dword ptr [r12]
00000001403d8d31 cmp      r8d, ecx
00000001403d8d34 jae      0x1403d9273
00000001403d8d3a sub      ecx, r8d
00000001403d8d3d mov      r9d, eax
00000001403d8d40 mov      edx, ecx
00000001403d8d42 lea      rcx, [r8 + r13]
00000001403d8d46 lea      r8, [rip + 0x274303]
00000001403d8d4d jmp      0x1403d926c
00000001403d8d52 mov      byte ptr [rbx + 0x1431], al
00000001403d8d58 mov      ecx, dword ptr [rdi]
00000001403d8d5a mov      eax, dword ptr [r12]
00000001403d8d5e cmp      ecx, eax
00000001403d8d60 jae      0x1403d8d7b
00000001403d8d62 mov      r9d, dword ptr [rbp - 0x38]
00000001403d8d66 lea      r8, [rip + 0x274313]
00000001403d8d6d sub      eax, ecx
00000001403d8d6f add      rcx, r13
00000001403d8d72 mov      edx, eax
00000001403d8d74 call     0x140044426
00000001403d8d79 add      dword ptr [rdi], eax
00000001403d8d7b mov      byte ptr [rbx + 0x13d4], 1
00000001403d8d82 mov      byte ptr [rbx + 0x1430], 1
00000001403d8d89 jmp      0x1403d9273
00000001403d8d8e lea      rdx, [rip + 0x2741cb]
00000001403d8d95 lea      rcx, [r14 + 0x20]
00000001403d8d99 call     0x140044360
00000001403d8d9e test     eax, eax
00000001403d8da0 jne      0x1403d9053
00000001403d8da6 test     dword ptr [r15 + 0x13f0], 0x1fe0000
00000001403d8db1 je       0x1403d9053
00000001403d8db7 lea      r15, [r14 + 0x30]
00000001403d8dbb mov      rcx, r15
00000001403d8dbe lea      rdx, [rip + 0x2742fb]
00000001403d8dc5 call     0x140044360
00000001403d8dca test     eax, eax
00000001403d8dcc jne      0x1403d8e2a
00000001403d8dce lea      rcx, [r14 + 0x40]
00000001403d8dd2 lea      rdx, [rip + 0x2742f7]
00000001403d8dd9 call     0x140044360
00000001403d8dde test     eax, eax
00000001403d8de0 jne      0x1403d8e2a
00000001403d8de2 lea      rcx, [r14 + 0x50]
00000001403d8de6 lea      r8, [rbp - 0x38]
00000001403d8dea lea      rdx, [rip + 0x24297f]
00000001403d8df1 call     0x140044420
00000001403d8df6 mov      al, byte ptr [rbp - 0x38]
00000001403d8df9 mov      byte ptr [rbx + 0x141e], al
00000001403d8dff mov      ecx, dword ptr [rdi]
00000001403d8e01 mov      eax, dword ptr [r12]
00000001403d8e05 cmp      ecx, eax
00000001403d8e07 jae      0x1403d9021
00000001403d8e0d movzx    r9d, byte ptr [rbp - 0x38]
00000001403d8e12 lea      r8, [rip + 0x2742c7]
00000001403d8e19 sub      eax, ecx
00000001403d8e1b add      rcx, r13
00000001403d8e1e mov      edx, eax
00000001403d8e20 call     0x140044426
00000001403d8e25 jmp      0x1403d901f
00000001403d8e2a lea      rdx, [rip + 0x2742bf]
00000001403d8e31 mov      rcx, r15
00000001403d8e34 call     0x140044360
00000001403d8e39 test     eax, eax
00000001403d8e3b jne      0x1403d8e8c
00000001403d8e3d lea      rcx, [r14 + 0x40]
00000001403d8e41 lea      rdx, [rip + 0x25b028]
00000001403d8e48 call     0x140044360
00000001403d8e4d test     eax, eax
00000001403d8e4f jne      0x1403d8e8c
00000001403d8e51 lea      rcx, [r14 + 0x50]
00000001403d8e55 lea      r8, [rbp - 0x38]
00000001403d8e59 lea      rdx, [rip + 0x21e540]
00000001403d8e60 call     0x140044420
00000001403d8e65 movzx    eax, word ptr [rbp - 0x38]
00000001403d8e69 mov      word ptr [rbx + 0x1420], ax
00000001403d8e70 mov      ecx, dword ptr [rdi]
00000001403d8e72 mov      eax, dword ptr [r12]
00000001403d8e76 cmp      ecx, eax
00000001403d8e78 jae      0x1403d9021
00000001403d8e7e movzx    r9d, word ptr [rbp - 0x38]
00000001403d8e83 lea      r8, [rip + 0x274276]
00000001403d8e8a jmp      0x1403d8e19
00000001403d8e8c lea      rdx, [rip + 0x27428d]
00000001403d8e93 mov      rcx, r15
00000001403d8e96 call     0x140044360
00000001403d8e9b test     eax, eax
00000001403d8e9d jne      0x1403d8ef1
00000001403d8e9f lea      rcx, [r14 + 0x40]
00000001403d8ea3 lea      rdx, [rip + 0x25afc6]
00000001403d8eaa call     0x140044360
00000001403d8eaf test     eax, eax
00000001403d8eb1 jne      0x1403d8ef1
00000001403d8eb3 lea      rcx, [r14 + 0x50]
00000001403d8eb7 lea      r8, [rbp - 0x38]
00000001403d8ebb lea      rdx, [rip + 0x21e4de]
00000001403d8ec2 call     0x140044420
00000001403d8ec7 movzx    eax, word ptr [rbp - 0x38]
00000001403d8ecb mov      word ptr [rbx + 0x1422], ax
00000001403d8ed2 mov      ecx, dword ptr [rdi]
00000001403d8ed4 mov      eax, dword ptr [r12]
00000001403d8ed8 cmp      ecx, eax
00000001403d8eda jae      0x1403d9021
00000001403d8ee0 movzx    r9d, word ptr [rbp - 0x38]
00000001403d8ee5 lea      r8, [rip + 0x274244]
00000001403d8eec jmp      0x1403d8e19
00000001403d8ef1 lea      rdx, [rip + 0x274258]
00000001403d8ef8 mov      rcx, r15
00000001403d8efb call     0x140044360
00000001403d8f00 test     eax, eax
00000001403d8f02 jne      0x1403d8f56
00000001403d8f04 lea      rcx, [r14 + 0x40]
00000001403d8f08 lea      rdx, [rip + 0x25af61]
00000001403d8f0f call     0x140044360
00000001403d8f14 test     eax, eax
00000001403d8f16 jne      0x1403d8f56
00000001403d8f18 lea      rcx, [r14 + 0x50]
00000001403d8f1c lea      r8, [rbp - 0x38]
00000001403d8f20 lea      rdx, [rip + 0x21e479]
00000001403d8f27 call     0x140044420
00000001403d8f2c movzx    eax, word ptr [rbp - 0x38]
00000001403d8f30 mov      word ptr [rbx + 0x1424], ax
00000001403d8f37 mov      ecx, dword ptr [rdi]
00000001403d8f39 mov      eax, dword ptr [r12]
00000001403d8f3d cmp      ecx, eax
00000001403d8f3f jae      0x1403d9021
00000001403d8f45 movzx    r9d, word ptr [rbp - 0x38]
00000001403d8f4a lea      r8, [rip + 0x27420f]
00000001403d8f51 jmp      0x1403d8e19
00000001403d8f56 lea      rcx, [r14 + 0x30]
00000001403d8f5a lea      rdx, [rip + 0x27421f]
00000001403d8f61 call     0x140044360
00000001403d8f66 test     eax, eax
00000001403d8f68 jne      0x1403d902d
00000001403d8f6e lea      rcx, [r14 + 0x40]
00000001403d8f72 lea      r8, [rbp - 0x38]
00000001403d8f76 lea      rdx, [rip + 0x2427f3]
00000001403d8f7d call     0x140044420
00000001403d8f82 lea      rcx, [r14 + 0x50]
00000001403d8f86 lea      r8, [rbp - 0x34]
00000001403d8f8a lea      rdx, [rip + 0x2427df]
00000001403d8f91 call     0x140044420
00000001403d8f96 lea      r15, [rip + 0x21e403]
00000001403d8f9d mov      rdx, r15
00000001403d8fa0 lea      rcx, [r14 + 0x60]
00000001403d8fa4 lea      r8, [rbp - 0x30]
00000001403d8fa8 call     0x140044420
00000001403d8fad lea      rcx, [r14 + 0x70]
00000001403d8fb1 mov      rdx, r15
00000001403d8fb4 lea      r8, [rbp - 0x2c]
00000001403d8fb8 call     0x140044420
00000001403d8fbd mov      al, byte ptr [rbp - 0x38]
00000001403d8fc0 mov      byte ptr [rbx + 0x1426], al
00000001403d8fc6 mov      al, byte ptr [rbp - 0x34]
00000001403d8fc9 movzx    edx, byte ptr [rbp - 0x38]
00000001403d8fcd mov      byte ptr [rbx + 0x1427], al
00000001403d8fd3 mov      eax, dword ptr [rbp - 0x30]
00000001403d8fd6 movzx    r8d, byte ptr [rbp - 0x34]
00000001403d8fdb mov      dword ptr [rbx + 0x1428], eax
00000001403d8fe1 mov      eax, dword ptr [rbp - 0x2c]
00000001403d8fe4 mov      r10d, dword ptr [rbp - 0x30]
00000001403d8fe8 mov      dword ptr [rbx + 0x142c], eax
00000001403d8fee mov      ecx, dword ptr [rdi]
00000001403d8ff0 mov      eax, dword ptr [r12]
00000001403d8ff4 cmp      ecx, eax
00000001403d8ff6 jae      0x1403d9021
00000001403d8ff8 sub      eax, ecx
00000001403d8ffa mov      r9d, edx
00000001403d8ffd mov      edx, eax
00000001403d8fff add      rcx, r13
00000001403d9002 mov      eax, dword ptr [rbp - 0x2c]
00000001403d9005 mov      dword ptr [rsp + 0x30], eax
00000001403d9009 mov      dword ptr [rsp + 0x28], r10d
00000001403d900e mov      dword ptr [rsp + 0x20], r8d
00000001403d9013 lea      r8, [rip + 0x274176]
00000001403d901a call     0x140044426
00000001403d901f add      dword ptr [rdi], eax
00000001403d9021 mov      byte ptr [rbx + 0x13d4], 1
00000001403d9028 jmp      0x1403d9273
00000001403d902d mov      ecx, dword ptr [rdi]
00000001403d902f mov      eax, dword ptr [r12]
00000001403d9033 cmp      ecx, eax
00000001403d9035 jae      0x1403d9273
00000001403d903b sub      eax, ecx
00000001403d903d lea      r8, [rip + 0x25420c]
00000001403d9044 mov      edx, eax
00000001403d9046 add      rcx, r13
00000001403d9049 call     0x140044426
00000001403d904e jmp      0x1403d9271
00000001403d9053 lea      r15, [rip + 0x21e346]
00000001403d905a mov      rdx, r15
00000001403d905d lea      r8, [rbp - 0x38]
00000001403d9061 lea      rcx, [r14 + 0x20]
00000001403d9065 call     0x140044420
00000001403d906a lea      rcx, [r14 + 0x30]
00000001403d906e mov      rdx, r15
00000001403d9071 lea      r8, [rbp - 0x34]
00000001403d9075 call     0x140044420
00000001403d907a lea      rcx, [r14 + 0x40]
00000001403d907e mov      rdx, r15
00000001403d9081 lea      r8, [rbp - 0x30]
00000001403d9085 call     0x140044420
00000001403d908a lea      rcx, [r14 + 0x50]
00000001403d908e mov      rdx, r15
00000001403d9091 lea      r8, [rbp - 0x2c]
00000001403d9095 call     0x140044420
00000001403d909a lea      rcx, [r14 + 0x60]
00000001403d909e mov      rdx, r15
00000001403d90a1 lea      r8, [rbp - 0x28]
00000001403d90a5 call     0x140044420
00000001403d90aa lea      rcx, [r14 + 0x70]
00000001403d90ae mov      rdx, r15
00000001403d90b1 lea      r8, [rbp - 0x24]
00000001403d90b5 call     0x140044420
00000001403d90ba lea      rcx, [r14 + 0x80]
00000001403d90c1 mov      rdx, r15
00000001403d90c4 lea      r8, [rbp - 0x20]
00000001403d90c8 call     0x140044420
00000001403d90cd mov      eax, dword ptr [rbp - 0x38]
00000001403d90d0 test     eax, eax
00000001403d90d2 jne      0x1403d90eb
00000001403d90d4 mov      al, byte ptr [rbp - 0x34]
00000001403d90d7 mov      byte ptr [rbx + 0x1376], al
00000001403d90dd mov      eax, dword ptr [rbp - 0x30]
00000001403d90e0 mov      dword ptr [rbx + 0x1378], eax
00000001403d90e6 jmp      0x1403d920b
00000001403d90eb cmp      eax, 1
00000001403d90ee jne      0x1403d9110
00000001403d90f0 mov      eax, dword ptr [rbp - 0x34]
00000001403d90f3 mov      dword ptr [rbx + 0x13d8], eax
00000001403d90f9 mov      al, byte ptr [rbp - 0x30]
00000001403d90fc mov      byte ptr [rbx + 0x13e0], al
00000001403d9102 mov      eax, dword ptr [rbp - 0x2c]
00000001403d9105 mov      dword ptr [rbx + 0x13dc], eax
00000001403d910b jmp      0x1403d920b
00000001403d9110 cmp      eax, 2
00000001403d9113 jne      0x1403d9148
00000001403d9115 mov      al, byte ptr [rbp - 0x34]
00000001403d9118 mov      byte ptr [rbx + 0x13e1], al
00000001403d911e mov      al, byte ptr [rbp - 0x30]
00000001403d9121 mov      byte ptr [rbx + 0x13e2], al
00000001403d9127 mov      eax, dword ptr [rbp - 0x2c]
00000001403d912a mov      dword ptr [rbx + 0x13e4], eax
00000001403d9130 mov      eax, dword ptr [rbp - 0x28]
00000001403d9133 mov      dword ptr [rbx + 0x13e8], eax
00000001403d9139 movzx    eax, byte ptr [rbp - 0x24]
00000001403d913d mov      dword ptr [rbx + 0x13ec], eax
00000001403d9143 jmp      0x1403d920b
00000001403d9148 cmp      eax, 3
00000001403d914b jne      0x1403d9180
00000001403d914d mov      al, byte ptr [rbp - 0x34]
00000001403d9150 mov      byte ptr [rbx + 0x13f0], al
00000001403d9156 mov      al, byte ptr [rbp - 0x30]
00000001403d9159 mov      byte ptr [rbx + 0x13f1], al
00000001403d915f mov      eax, dword ptr [rbp - 0x2c]
00000001403d9162 mov      dword ptr [rbx + 0x13f4], eax
00000001403d9168 mov      eax, dword ptr [rbp - 0x28]
00000001403d916b mov      dword ptr [rbx + 0x13f8], eax
00000001403d9171 movzx    eax, byte ptr [rbp - 0x24]
00000001403d9175 mov      dword ptr [rbx + 0x13fc], eax
00000001403d917b jmp      0x1403d920b
00000001403d9180 cmp      eax, 4
00000001403d9183 jne      0x1403d91a4
00000001403d9185 mov      al, byte ptr [rbp - 0x34]
00000001403d9188 mov      byte ptr [rbx + 0x1400], al
00000001403d918e mov      al, byte ptr [rbp - 0x30]
00000001403d9191 mov      byte ptr [rbx + 0x1404], al
00000001403d9197 movzx    eax, word ptr [rbp - 0x2c]
00000001403d919b mov      word ptr [rbx + 0x1402], ax
00000001403d91a2 jmp      0x1403d920b
00000001403d91a4 cmp      eax, 5
00000001403d91a7 jne      0x1403d91c7
00000001403d91a9 movzx    eax, byte ptr [rbp - 0x34]
00000001403d91ad mov      dword ptr [rbx + 0x1408], eax
00000001403d91b3 mov      al, byte ptr [rbp - 0x30]
00000001403d91b6 mov      byte ptr [rbx + 0x140c], al
00000001403d91bc mov      al, byte ptr [rbp - 0x2c]
00000001403d91bf mov      byte ptr [rbx + 0x140d], al
00000001403d91c5 jmp      0x1403d920b
00000001403d91c7 cmp      eax, 6
00000001403d91ca jne      0x1403d91ea
00000001403d91cc movzx    eax, byte ptr [rbp - 0x34]
00000001403d91d0 mov      dword ptr [rbx + 0x1410], eax
00000001403d91d6 mov      al, byte ptr [rbp - 0x30]
00000001403d91d9 mov      byte ptr [rbx + 0x1414], al
00000001403d91df mov      al, byte ptr [rbp - 0x2c]
00000001403d91e2 mov      byte ptr [rbx + 0x1415], al
00000001403d91e8 jmp      0x1403d920b
00000001403d91ea cmp      eax, 7
00000001403d91ed jne      0x1403d920b
00000001403d91ef movzx    eax, byte ptr [rbp - 0x34]
00000001403d91f3 mov      dword ptr [rbx + 0x1418], eax
00000001403d91f9 mov      al, byte ptr [rbp - 0x30]
00000001403d91fc mov      byte ptr [rbx + 0x141c], al
00000001403d9202 mov      al, byte ptr [rbp - 0x2c]
00000001403d9205 mov      byte ptr [rbx + 0x141d], al
00000001403d920b cmp      dword ptr [rbx + 0x13d8], esi
00000001403d9211 jne      0x1403d9246
00000001403d9213 cmp      byte ptr [rbx + 0x13e1], sil
00000001403d921a jne      0x1403d9246
00000001403d921c cmp      byte ptr [rbx + 0x13f0], sil
00000001403d9223 jne      0x1403d9246
00000001403d9225 cmp      byte ptr [rbx + 0x1400], sil
00000001403d922c jne      0x1403d9246
00000001403d922e cmp      dword ptr [rbx + 0x1408], esi
00000001403d9234 jne      0x1403d9246
00000001403d9236 cmp      dword ptr [rbx + 0x1410], esi
00000001403d923c jne      0x1403d9246
00000001403d923e cmp      dword ptr [rbx + 0x1418], esi
00000001403d9244 je       0x1403d9249
00000001403d9246 mov      sil, 1
00000001403d9249 mov      byte ptr [rbx + 0x13d4], sil
00000001403d9250 mov      ecx, dword ptr [rdi]
00000001403d9252 mov      eax, dword ptr [r12]
00000001403d9256 cmp      ecx, eax
00000001403d9258 jae      0x1403d9273
00000001403d925a sub      eax, ecx
00000001403d925c movzx    r9d, sil
00000001403d9260 mov      edx, eax
00000001403d9262 lea      r8, [rip + 0x273f67]
00000001403d9269 add      rcx, r13
00000001403d926c call     0x140044426
00000001403d9271 add      dword ptr [rdi], eax
00000001403d9273 mov      rcx, qword ptr [rbp - 0x10]
00000001403d9277 xor      rcx, rsp
00000001403d927a call     0x1405f45b0
00000001403d927f add      rsp, 0x78
00000001403d9283 pop      r15
00000001403d9285 pop      r14
00000001403d9287 pop      r13
00000001403d9289 pop      r12
00000001403d928b pop      rdi
00000001403d928c pop      rsi
00000001403d928d pop      rbx
00000001403d928e pop      rbp
00000001403d928f ret      