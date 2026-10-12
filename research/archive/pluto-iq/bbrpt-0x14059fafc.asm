000000014059fafc mov      qword ptr [rsp + 0x10], rbx
000000014059fb01 mov      qword ptr [rsp + 0x18], rsi
000000014059fb06 mov      qword ptr [rsp + 0x20], rdi
000000014059fb0b push     rbp
000000014059fb0c push     r12
000000014059fb0e push     r13
000000014059fb10 push     r14
000000014059fb12 push     r15
000000014059fb14 mov      rbp, rsp
000000014059fb17 sub      rsp, 0x30
000000014059fb1b mov      rax, qword ptr [rcx]
000000014059fb1e lea      r12, [rcx + 0x1208]
000000014059fb25 mov      ebx, edx
000000014059fb27 mov      rdi, rcx
000000014059fb2a mov      rdx, r12
000000014059fb2d mov      rsi, qword ptr [rax]
000000014059fb30 mov      rax, qword ptr [rcx + 0x18]
000000014059fb34 mov      rcx, qword ptr [rcx + 8]
000000014059fb38 mov      rax, qword ptr [rax + 0x108]
000000014059fb3f call     qword ptr [rip + 0xe47b3]
000000014059fb45 mov      ecx, dword ptr [rdi + 0xef8]
000000014059fb4b mov      r13d, 1
000000014059fb51 inc      ecx
000000014059fb53 mov      dword ptr [rdi + 0xef8], ecx
000000014059fb59 cmp      ecx, r13d
000000014059fb5c je       0x14059fb8a
000000014059fb5e mov      rax, qword ptr [rdi + 0x18]
000000014059fb62 lea      r8, [rip + 0xc5997]
000000014059fb69 mov      dword ptr [rsp + 0x20], ecx
000000014059fb6d lea      edx, [r13 + 1]
000000014059fb71 mov      rcx, qword ptr [rdi + 8]
000000014059fb75 mov      r9d, ebx
000000014059fb78 mov      rax, qword ptr [rax + 0x118]
000000014059fb7f call     qword ptr [rip + 0xe4773]
000000014059fb85 jmp      0x1405ab47c
000000014059fb8a cmp      ebx, 0x69
000000014059fb8d ja       0x1405a374f
000000014059fb93 je       0x1405a3681
000000014059fb99 cmp      ebx, 0x34
000000014059fb9c ja       0x1405a1b42
000000014059fba2 je       0x1405a1af8
000000014059fba8 cmp      ebx, 0x1a
000000014059fbab ja       0x1405a12db
000000014059fbb1 je       0x1405a1291
000000014059fbb7 cmp      ebx, 0xd
000000014059fbba ja       0x1405a08c7
000000014059fbc0 je       0x1405a087d
000000014059fbc6 cmp      ebx, 6
000000014059fbc9 ja       0x1405a0260
000000014059fbcf je       0x1405a0216
000000014059fbd5 test     ebx, ebx
000000014059fbd7 je       0x1405a009c
000000014059fbdd sub      ebx, r13d
000000014059fbe0 je       0x14059ff6c
000000014059fbe6 sub      ebx, r13d
000000014059fbe9 je       0x14059fe3c
000000014059fbef sub      ebx, r13d
000000014059fbf2 je       0x14059fcc2
000000014059fbf8 sub      ebx, r13d
000000014059fbfb je       0x14059fc78
000000014059fbfd cmp      ebx, r13d
000000014059fc00 jne      0x1405ab45d
000000014059fc06 mov      rax, qword ptr [rdi + 0x18]
000000014059fc0a lea      r8, [rip + 0xc893f]
000000014059fc11 mov      rcx, qword ptr [rdi + 8]
000000014059fc15 mov      edx, r13d
000000014059fc18 mov      rax, qword ptr [rax + 0x118]
000000014059fc1f call     qword ptr [rip + 0xe46d3]
000000014059fc25 mov      rax, qword ptr [rdi + 0x18]
000000014059fc29 lea      r8, [rip + 0xc8950]
000000014059fc30 mov      rcx, qword ptr [rdi + 8]
000000014059fc34 mov      edx, r13d
000000014059fc37 mov      rax, qword ptr [rax + 0x118]
000000014059fc3e call     qword ptr [rip + 0xe46b4]
000000014059fc44 mov      r9b, r13b
000000014059fc47 mov      byte ptr [rsp + 0x20], 0
000000014059fc4c xor      r8d, r8d
000000014059fc4f lea      rdx, [rip + 0x72e192]
000000014059fc56 mov      rcx, rdi
000000014059fc59 call     0x14056e2c0
000000014059fc5e mov      ebx, eax
000000014059fc60 test     eax, eax
000000014059fc62 je       0x1405abaaf
000000014059fc68 mov      rcx, qword ptr [rdi + 0x18]
000000014059fc6c mov      rax, qword ptr [rcx + 0x118]
000000014059fc73 jmp      0x1405aba96
000000014059fc78 mov      rax, qword ptr [rdi + 0x18]
000000014059fc7c lea      r8, [rip + 0xc886d]
000000014059fc83 mov      rcx, qword ptr [rdi + 8]
000000014059fc87 mov      edx, r13d
000000014059fc8a mov      rax, qword ptr [rax + 0x118]
000000014059fc91 call     qword ptr [rip + 0xe4661]
000000014059fc97 mov      rax, qword ptr [rdi + 0x18]
000000014059fc9b lea      r8, [rip + 0xc887e]
000000014059fca2 mov      rcx, qword ptr [rdi + 8]
000000014059fca6 mov      edx, r13d
000000014059fca9 mov      rax, qword ptr [rax + 0x118]
000000014059fcb0 call     qword ptr [rip + 0xe4642]
000000014059fcb6 lea      rdx, [rip + 0x72e11b]
000000014059fcbd jmp      0x1405aba72
000000014059fcc2 mov      rax, qword ptr [rdi + 0x18]
000000014059fcc6 lea      r8, [rip + 0xc8733]
000000014059fccd mov      rcx, qword ptr [rdi + 8]
000000014059fcd1 mov      edx, r13d
000000014059fcd4 mov      rax, qword ptr [rax + 0x118]
000000014059fcdb call     qword ptr [rip + 0xe4617]
000000014059fce1 mov      rax, qword ptr [rsi + 0x20]
000000014059fce5 mov      r14d, 0xf4
000000014059fceb mov      edx, r14d
000000014059fcee mov      rcx, rdi
000000014059fcf1 call     qword ptr [rip + 0xe4601]
000000014059fcf7 mov      r9d, 0x186000f4
000000014059fcfd lea      r8, [rip + 0xc84cc]
000000014059fd04 btr      eax, 0x11
000000014059fd08 mov      edx, r13d
000000014059fd0b bts      eax, 0x10
000000014059fd0f mov      dword ptr [rbp + 0x30], eax
000000014059fd12 mov      rax, qword ptr [rdi + 0x18]
000000014059fd16 mov      rcx, qword ptr [rdi + 8]
000000014059fd1a mov      rax, qword ptr [rax + 0x118]
000000014059fd21 call     qword ptr [rip + 0xe45d1]
000000014059fd27 mov      rax, qword ptr [rsi + 0x28]
000000014059fd2b mov      edx, r14d
000000014059fd2e mov      r8d, dword ptr [rbp + 0x30]
000000014059fd32 mov      rcx, rdi
000000014059fd35 call     qword ptr [rip + 0xe45bd]
000000014059fd3b mov      rax, qword ptr [rsi + 0x20]
000000014059fd3f mov      ebx, 0x58
000000014059fd44 mov      edx, ebx
000000014059fd46 mov      rcx, rdi
000000014059fd49 call     qword ptr [rip + 0xe45a9]
000000014059fd4f mov      r9d, 0x18600058
000000014059fd55 lea      r8, [rip + 0xc86d4]
000000014059fd5c and      eax, 0xffffffa6
000000014059fd5f mov      edx, r13d
000000014059fd62 or       eax, 0xa6
000000014059fd67 mov      dword ptr [rbp + 0x30], eax
000000014059fd6a mov      rax, qword ptr [rdi + 0x18]
000000014059fd6e mov      rcx, qword ptr [rdi + 8]
000000014059fd72 mov      rax, qword ptr [rax + 0x118]
000000014059fd79 call     qword ptr [rip + 0xe4579]
000000014059fd7f mov      eax, dword ptr [rbp + 0x30]
000000014059fd82 lea      r8, [rip + 0xc86d7]
000000014059fd89 and      eax, 0xffa6ffff
000000014059fd8e mov      r9d, 0x18600058
000000014059fd94 or       eax, 0xa60000
000000014059fd99 mov      edx, r13d
000000014059fd9c mov      dword ptr [rbp + 0x30], eax
000000014059fd9f mov      rax, qword ptr [rdi + 0x18]
000000014059fda3 mov      rcx, qword ptr [rdi + 8]
000000014059fda7 mov      rax, qword ptr [rax + 0x118]
000000014059fdae call     qword ptr [rip + 0xe4544]
000000014059fdb4 mov      rax, qword ptr [rsi + 0x28]
000000014059fdb8 mov      edx, ebx
000000014059fdba mov      r8d, dword ptr [rbp + 0x30]
000000014059fdbe mov      rcx, rdi
000000014059fdc1 call     qword ptr [rip + 0xe4531]
000000014059fdc7 mov      rax, qword ptr [rsi]
000000014059fdca mov      ebx, 0x110f4
000000014059fdcf mov      edx, ebx
000000014059fdd1 mov      rcx, rdi
000000014059fdd4 call     qword ptr [rip + 0xe451e]
000000014059fdda mov      rax, qword ptr [rdi + 0x18]
000000014059fdde lea      r8, [rip + 0xc86ab]
000000014059fde5 mov      rcx, qword ptr [rdi + 8]
000000014059fde9 mov      r9d, 0x186110f4
000000014059fdef mov      edx, r13d
000000014059fdf2 mov      rax, qword ptr [rax + 0x118]
000000014059fdf9 call     qword ptr [rip + 0xe44f9]
000000014059fdff mov      rax, qword ptr [rsi + 8]
000000014059fe03 mov      r8b, r13b
000000014059fe06 mov      edx, ebx
000000014059fe08 mov      rcx, rdi
000000014059fe0b call     qword ptr [rip + 0xe44e7]
000000014059fe11 mov      rax, qword ptr [rdi + 0x18]
000000014059fe15 lea      r8, [rip + 0xc86a4]
000000014059fe1c mov      rcx, qword ptr [rdi + 8]
000000014059fe20 mov      edx, r13d
000000014059fe23 mov      rax, qword ptr [rax + 0x118]
000000014059fe2a call     qword ptr [rip + 0xe44c8]
000000014059fe30 lea      rdx, [rip + 0x72df91]
000000014059fe37 jmp      0x1405aba72
000000014059fe3c mov      rax, qword ptr [rdi + 0x18]
000000014059fe40 lea      r8, [rip + 0xc8559]
000000014059fe47 mov      rcx, qword ptr [rdi + 8]
000000014059fe4b mov      edx, r13d
000000014059fe4e mov      rax, qword ptr [rax + 0x118]
000000014059fe55 call     qword ptr [rip + 0xe449d]
000000014059fe5b mov      rax, qword ptr [rsi + 0x20]
000000014059fe5f mov      r14d, 0xf4
000000014059fe65 mov      edx, r14d
000000014059fe68 mov      rcx, rdi
000000014059fe6b call     qword ptr [rip + 0xe4487]
000000014059fe71 mov      r9d, 0x186000f4
000000014059fe77 lea      r8, [rip + 0xc8352]
000000014059fe7e btr      eax, 0x11
000000014059fe82 mov      edx, r13d
000000014059fe85 bts      eax, 0x10
000000014059fe89 mov      dword ptr [rbp + 0x30], eax
000000014059fe8c mov      rax, qword ptr [rdi + 0x18]
000000014059fe90 mov      rcx, qword ptr [rdi + 8]
000000014059fe94 mov      rax, qword ptr [rax + 0x118]
000000014059fe9b call     qword ptr [rip + 0xe4457]
000000014059fea1 mov      rax, qword ptr [rsi + 0x28]
000000014059fea5 mov      edx, r14d
000000014059fea8 mov      r8d, dword ptr [rbp + 0x30]
000000014059feac mov      rcx, rdi
000000014059feaf call     qword ptr [rip + 0xe4443]
000000014059feb5 mov      rax, qword ptr [rsi + 0x20]
000000014059feb9 mov      ebx, 0x58
000000014059febe mov      edx, ebx
000000014059fec0 mov      rcx, rdi
000000014059fec3 call     qword ptr [rip + 0xe442f]
000000014059fec9 mov      r9d, 0x18600058
000000014059fecf lea      r8, [rip + 0xc843a]
000000014059fed6 and      eax, 0xffffffa7
000000014059fed9 mov      edx, r13d
000000014059fedc or       eax, 0xa7
000000014059fee1 mov      dword ptr [rbp + 0x30], eax
000000014059fee4 mov      rax, qword ptr [rdi + 0x18]
000000014059fee8 mov      rcx, qword ptr [rdi + 8]
000000014059feec mov      rax, qword ptr [rax + 0x118]
000000014059fef3 call     qword ptr [rip + 0xe43ff]
000000014059fef9 mov      eax, dword ptr [rbp + 0x30]
000000014059fefc lea      r8, [rip + 0xc843d]
000000014059ff03 and      eax, 0xffa7ffff
000000014059ff08 mov      r9d, 0x18600058
000000014059ff0e or       eax, 0xa70000
000000014059ff13 mov      edx, r13d
000000014059ff16 mov      dword ptr [rbp + 0x30], eax
000000014059ff19 mov      rax, qword ptr [rdi + 0x18]
000000014059ff1d mov      rcx, qword ptr [rdi + 8]
000000014059ff21 mov      rax, qword ptr [rax + 0x118]
000000014059ff28 call     qword ptr [rip + 0xe43ca]
000000014059ff2e mov      rax, qword ptr [rsi + 0x28]
000000014059ff32 mov      edx, ebx
000000014059ff34 mov      r8d, dword ptr [rbp + 0x30]
000000014059ff38 mov      rcx, rdi
000000014059ff3b call     qword ptr [rip + 0xe43b7]
000000014059ff41 mov      rax, qword ptr [rdi + 0x18]
000000014059ff45 lea      r8, [rip + 0xc8484]
000000014059ff4c mov      rcx, qword ptr [rdi + 8]
000000014059ff50 mov      edx, r13d
000000014059ff53 mov      rax, qword ptr [rax + 0x118]
000000014059ff5a call     qword ptr [rip + 0xe4398]
000000014059ff60 lea      rdx, [rip + 0x72de51]
000000014059ff67 jmp      0x1405aba72
000000014059ff6c mov      rax, qword ptr [rdi + 0x18]
000000014059ff70 lea      r8, [rip + 0xc8369]
000000014059ff77 mov      rcx, qword ptr [rdi + 8]
000000014059ff7b mov      edx, r13d
000000014059ff7e mov      rax, qword ptr [rax + 0x118]
000000014059ff85 call     qword ptr [rip + 0xe436d]
000000014059ff8b mov      rax, qword ptr [rsi + 0x20]
000000014059ff8f mov      r14d, 0xf4
000000014059ff95 mov      edx, r14d
000000014059ff98 mov      rcx, rdi
000000014059ff9b call     qword ptr [rip + 0xe4357]
000000014059ffa1 mov      r9d, 0x186000f4
000000014059ffa7 lea      r8, [rip + 0xc8222]
000000014059ffae btr      eax, 0x11
000000014059ffb2 mov      edx, r13d
000000014059ffb5 bts      eax, 0x10
000000014059ffb9 mov      dword ptr [rbp + 0x30], eax
000000014059ffbc mov      rax, qword ptr [rdi + 0x18]
000000014059ffc0 mov      rcx, qword ptr [rdi + 8]
000000014059ffc4 mov      rax, qword ptr [rax + 0x118]
000000014059ffcb call     qword ptr [rip + 0xe4327]
000000014059ffd1 mov      rax, qword ptr [rsi + 0x28]
000000014059ffd5 mov      edx, r14d
000000014059ffd8 mov      r8d, dword ptr [rbp + 0x30]
000000014059ffdc mov      rcx, rdi
000000014059ffdf call     qword ptr [rip + 0xe4313]
000000014059ffe5 mov      rax, qword ptr [rsi + 0x20]
000000014059ffe9 mov      ebx, 0x58
000000014059ffee mov      edx, ebx
000000014059fff0 mov      rcx, rdi
000000014059fff3 call     qword ptr [rip + 0xe42ff]
000000014059fff9 mov      r9d, 0x18600058
000000014059ffff lea      r8, [rip + 0xc830a]
00000001405a0006 and      eax, 0xffffffa7
00000001405a0009 mov      edx, r13d
00000001405a000c or       eax, 0xa7
00000001405a0011 mov      dword ptr [rbp + 0x30], eax
00000001405a0014 mov      rax, qword ptr [rdi + 0x18]
00000001405a0018 mov      rcx, qword ptr [rdi + 8]
00000001405a001c mov      rax, qword ptr [rax + 0x118]
00000001405a0023 call     qword ptr [rip + 0xe42cf]
00000001405a0029 mov      eax, dword ptr [rbp + 0x30]
00000001405a002c lea      r8, [rip + 0xc830d]
00000001405a0033 and      eax, 0xffa7ffff
00000001405a0038 mov      r9d, 0x18600058
00000001405a003e or       eax, 0xa70000
00000001405a0043 mov      edx, r13d
00000001405a0046 mov      dword ptr [rbp + 0x30], eax
00000001405a0049 mov      rax, qword ptr [rdi + 0x18]
00000001405a004d mov      rcx, qword ptr [rdi + 8]
00000001405a0051 mov      rax, qword ptr [rax + 0x118]
00000001405a0058 call     qword ptr [rip + 0xe429a]
00000001405a005e mov      rax, qword ptr [rsi + 0x28]
00000001405a0062 mov      edx, ebx
00000001405a0064 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0068 mov      rcx, rdi
00000001405a006b call     qword ptr [rip + 0xe4287]
00000001405a0071 mov      rax, qword ptr [rdi + 0x18]
00000001405a0075 lea      r8, [rip + 0xc82f4]
00000001405a007c mov      rcx, qword ptr [rdi + 8]
00000001405a0080 mov      edx, r13d
00000001405a0083 mov      rax, qword ptr [rax + 0x118]
00000001405a008a call     qword ptr [rip + 0xe4268]
00000001405a0090 lea      rdx, [rip + 0x72dd11]
00000001405a0097 jmp      0x1405aba72
00000001405a009c mov      rax, qword ptr [rdi + 0x18]
00000001405a00a0 lea      r8, [rip + 0xc80f9]
00000001405a00a7 mov      rcx, qword ptr [rdi + 8]
00000001405a00ab mov      edx, r13d
00000001405a00ae mov      rax, qword ptr [rax + 0x118]
00000001405a00b5 call     qword ptr [rip + 0xe423d]
00000001405a00bb mov      rax, qword ptr [rsi + 0x20]
00000001405a00bf mov      r14d, 0xf4
00000001405a00c5 mov      edx, r14d
00000001405a00c8 mov      rcx, rdi
00000001405a00cb call     qword ptr [rip + 0xe4227]
00000001405a00d1 mov      r9d, 0x186000f4
00000001405a00d7 lea      r8, [rip + 0xc80f2]
00000001405a00de btr      eax, 0x11
00000001405a00e2 mov      edx, r13d
00000001405a00e5 bts      eax, 0x10
00000001405a00e9 mov      dword ptr [rbp + 0x30], eax
00000001405a00ec mov      rax, qword ptr [rdi + 0x18]
00000001405a00f0 mov      rcx, qword ptr [rdi + 8]
00000001405a00f4 mov      rax, qword ptr [rax + 0x118]
00000001405a00fb call     qword ptr [rip + 0xe41f7]
00000001405a0101 mov      rax, qword ptr [rsi + 0x28]
00000001405a0105 mov      edx, r14d
00000001405a0108 mov      r8d, dword ptr [rbp + 0x30]
00000001405a010c mov      rcx, rdi
00000001405a010f call     qword ptr [rip + 0xe41e3]
00000001405a0115 mov      rax, qword ptr [rsi + 0x20]
00000001405a0119 mov      ebx, 0x58
00000001405a011e mov      edx, ebx
00000001405a0120 mov      rcx, rdi
00000001405a0123 call     qword ptr [rip + 0xe41cf]
00000001405a0129 mov      r9d, 0x18600058
00000001405a012f lea      r8, [rip + 0xc80ca]
00000001405a0136 and      eax, 0xffffffa5
00000001405a0139 mov      edx, r13d
00000001405a013c or       eax, 0xa5
00000001405a0141 mov      dword ptr [rbp + 0x30], eax
00000001405a0144 mov      rax, qword ptr [rdi + 0x18]
00000001405a0148 mov      rcx, qword ptr [rdi + 8]
00000001405a014c mov      rax, qword ptr [rax + 0x118]
00000001405a0153 call     qword ptr [rip + 0xe419f]
00000001405a0159 mov      eax, dword ptr [rbp + 0x30]
00000001405a015c lea      r8, [rip + 0xc80cd]
00000001405a0163 and      eax, 0xffa5ffff
00000001405a0168 mov      r9d, 0x18600058
00000001405a016e or       eax, 0xa50000
00000001405a0173 mov      edx, r13d
00000001405a0176 mov      dword ptr [rbp + 0x30], eax
00000001405a0179 mov      rax, qword ptr [rdi + 0x18]
00000001405a017d mov      rcx, qword ptr [rdi + 8]
00000001405a0181 mov      rax, qword ptr [rax + 0x118]
00000001405a0188 call     qword ptr [rip + 0xe416a]
00000001405a018e mov      rax, qword ptr [rsi + 0x28]
00000001405a0192 mov      edx, ebx
00000001405a0194 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0198 mov      rcx, rdi
00000001405a019b call     qword ptr [rip + 0xe4157]
00000001405a01a1 mov      rax, qword ptr [rsi]
00000001405a01a4 mov      ebx, 0x110f4
00000001405a01a9 mov      edx, ebx
00000001405a01ab mov      rcx, rdi
00000001405a01ae call     qword ptr [rip + 0xe4144]
00000001405a01b4 mov      rax, qword ptr [rdi + 0x18]
00000001405a01b8 lea      r8, [rip + 0xc80a1]
00000001405a01bf mov      rcx, qword ptr [rdi + 8]
00000001405a01c3 mov      r9d, 0x186110f4
00000001405a01c9 mov      edx, r13d
00000001405a01cc mov      rax, qword ptr [rax + 0x118]
00000001405a01d3 call     qword ptr [rip + 0xe411f]
00000001405a01d9 mov      rax, qword ptr [rsi + 8]
00000001405a01dd xor      r8d, r8d
00000001405a01e0 mov      edx, ebx
00000001405a01e2 mov      rcx, rdi
00000001405a01e5 call     qword ptr [rip + 0xe410d]
00000001405a01eb mov      rax, qword ptr [rdi + 0x18]
00000001405a01ef lea      r8, [rip + 0xc809a]
00000001405a01f6 mov      rcx, qword ptr [rdi + 8]
00000001405a01fa mov      edx, r13d
00000001405a01fd mov      rax, qword ptr [rax + 0x118]
00000001405a0204 call     qword ptr [rip + 0xe40ee]
00000001405a020a lea      rdx, [rip + 0x72db87]
00000001405a0211 jmp      0x1405aba72
00000001405a0216 mov      rax, qword ptr [rdi + 0x18]
00000001405a021a lea      r8, [rip + 0xdda4f]
00000001405a0221 mov      rcx, qword ptr [rdi + 8]
00000001405a0225 mov      edx, r13d
00000001405a0228 mov      rax, qword ptr [rax + 0x118]
00000001405a022f call     qword ptr [rip + 0xe40c3]
00000001405a0235 mov      rax, qword ptr [rdi + 0x18]
00000001405a0239 lea      r8, [rip + 0xdda60]
00000001405a0240 mov      rcx, qword ptr [rdi + 8]
00000001405a0244 mov      edx, r13d
00000001405a0247 mov      rax, qword ptr [rax + 0x118]
00000001405a024e call     qword ptr [rip + 0xe40a4]
00000001405a0254 lea      rdx, [rip + 0x72db9d]
00000001405a025b jmp      0x1405aba72
00000001405a0260 sub      ebx, 7
00000001405a0263 je       0x1405a0703
00000001405a0269 sub      ebx, r13d
00000001405a026c je       0x1405a05d3
00000001405a0272 sub      ebx, r13d
00000001405a0275 je       0x1405a04a3
00000001405a027b sub      ebx, r13d
00000001405a027e je       0x1405a0329
00000001405a0284 sub      ebx, r13d
00000001405a0287 je       0x1405a02df
00000001405a0289 cmp      ebx, r13d
00000001405a028c jne      0x1405ab45d
00000001405a0292 mov      rax, qword ptr [rdi + 0x18]
00000001405a0296 lea      r8, [rip + 0xc8613]
00000001405a029d mov      rcx, qword ptr [rdi + 8]
00000001405a02a1 mov      edx, r13d
00000001405a02a4 mov      rax, qword ptr [rax + 0x118]
00000001405a02ab call     qword ptr [rip + 0xe4047]
00000001405a02b1 mov      rax, qword ptr [rdi + 0x18]
00000001405a02b5 lea      r8, [rip + 0xc8624]
00000001405a02bc mov      rcx, qword ptr [rdi + 8]
00000001405a02c0 mov      edx, r13d
00000001405a02c3 mov      rax, qword ptr [rax + 0x118]
00000001405a02ca call     qword ptr [rip + 0xe4028]
00000001405a02d0 mov      r9b, r13b
00000001405a02d3 lea      rdx, [rip + 0x72db7e]
00000001405a02da jmp      0x1405aba75
00000001405a02df mov      rax, qword ptr [rdi + 0x18]
00000001405a02e3 lea      r8, [rip + 0xc8566]
00000001405a02ea mov      rcx, qword ptr [rdi + 8]
00000001405a02ee mov      edx, r13d
00000001405a02f1 mov      rax, qword ptr [rax + 0x118]
00000001405a02f8 call     qword ptr [rip + 0xe3ffa]
00000001405a02fe mov      rax, qword ptr [rdi + 0x18]
00000001405a0302 lea      r8, [rip + 0xc8577]
00000001405a0309 mov      rcx, qword ptr [rdi + 8]
00000001405a030d mov      edx, r13d
00000001405a0310 mov      rax, qword ptr [rax + 0x118]
00000001405a0317 call     qword ptr [rip + 0xe3fdb]
00000001405a031d lea      rdx, [rip + 0x72db24]
00000001405a0324 jmp      0x1405aba72
00000001405a0329 mov      rax, qword ptr [rdi + 0x18]
00000001405a032d lea      r8, [rip + 0xc845c]
00000001405a0334 mov      rcx, qword ptr [rdi + 8]
00000001405a0338 mov      edx, r13d
00000001405a033b mov      rax, qword ptr [rax + 0x118]
00000001405a0342 call     qword ptr [rip + 0xe3fb0]
00000001405a0348 mov      rax, qword ptr [rsi + 0x20]
00000001405a034c mov      r14d, 0xf4
00000001405a0352 mov      edx, r14d
00000001405a0355 mov      rcx, rdi
00000001405a0358 call     qword ptr [rip + 0xe3f9a]
00000001405a035e mov      r9d, 0x186000f4
00000001405a0364 lea      r8, [rip + 0xc7e65]
00000001405a036b btr      eax, 0x11
00000001405a036f mov      edx, r13d
00000001405a0372 bts      eax, 0x10
00000001405a0376 mov      dword ptr [rbp + 0x30], eax
00000001405a0379 mov      rax, qword ptr [rdi + 0x18]
00000001405a037d mov      rcx, qword ptr [rdi + 8]
00000001405a0381 mov      rax, qword ptr [rax + 0x118]
00000001405a0388 call     qword ptr [rip + 0xe3f6a]
00000001405a038e mov      rax, qword ptr [rsi + 0x28]
00000001405a0392 mov      edx, r14d
00000001405a0395 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0399 mov      rcx, rdi
00000001405a039c call     qword ptr [rip + 0xe3f56]
00000001405a03a2 mov      rax, qword ptr [rsi + 0x20]
00000001405a03a6 mov      ebx, 0x58
00000001405a03ab mov      edx, ebx
00000001405a03ad mov      rcx, rdi
00000001405a03b0 call     qword ptr [rip + 0xe3f42]
00000001405a03b6 mov      r9d, 0x18600058
00000001405a03bc lea      r8, [rip + 0xc83fd]
00000001405a03c3 and      eax, 0xffffffb6
00000001405a03c6 mov      edx, r13d
00000001405a03c9 or       eax, 0xb6
00000001405a03ce mov      dword ptr [rbp + 0x30], eax
00000001405a03d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a03d5 mov      rcx, qword ptr [rdi + 8]
00000001405a03d9 mov      rax, qword ptr [rax + 0x118]
00000001405a03e0 call     qword ptr [rip + 0xe3f12]
00000001405a03e6 mov      eax, dword ptr [rbp + 0x30]
00000001405a03e9 lea      r8, [rip + 0xc8400]
00000001405a03f0 and      eax, 0xffb6ffff
00000001405a03f5 mov      r9d, 0x18600058
00000001405a03fb or       eax, 0xb60000
00000001405a0400 mov      edx, r13d
00000001405a0403 mov      dword ptr [rbp + 0x30], eax
00000001405a0406 mov      rax, qword ptr [rdi + 0x18]
00000001405a040a mov      rcx, qword ptr [rdi + 8]
00000001405a040e mov      rax, qword ptr [rax + 0x118]
00000001405a0415 call     qword ptr [rip + 0xe3edd]
00000001405a041b mov      rax, qword ptr [rsi + 0x28]
00000001405a041f mov      edx, ebx
00000001405a0421 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0425 mov      rcx, rdi
00000001405a0428 call     qword ptr [rip + 0xe3eca]
00000001405a042e mov      rax, qword ptr [rsi]
00000001405a0431 mov      ebx, 0x150f4
00000001405a0436 mov      edx, ebx
00000001405a0438 mov      rcx, rdi
00000001405a043b call     qword ptr [rip + 0xe3eb7]
00000001405a0441 mov      rax, qword ptr [rdi + 0x18]
00000001405a0445 lea      r8, [rip + 0xc8044]
00000001405a044c mov      rcx, qword ptr [rdi + 8]
00000001405a0450 mov      r9d, 0x186150f4
00000001405a0456 mov      edx, r13d
00000001405a0459 mov      rax, qword ptr [rax + 0x118]
00000001405a0460 call     qword ptr [rip + 0xe3e92]
00000001405a0466 mov      rax, qword ptr [rsi + 8]
00000001405a046a mov      r8b, r13b
00000001405a046d mov      edx, ebx
00000001405a046f mov      rcx, rdi
00000001405a0472 call     qword ptr [rip + 0xe3e80]
00000001405a0478 mov      rax, qword ptr [rdi + 0x18]
00000001405a047c lea      r8, [rip + 0xc839d]
00000001405a0483 mov      rcx, qword ptr [rdi + 8]
00000001405a0487 mov      edx, r13d
00000001405a048a mov      rax, qword ptr [rax + 0x118]
00000001405a0491 call     qword ptr [rip + 0xe3e61]
00000001405a0497 lea      rdx, [rip + 0x72d99a]
00000001405a049e jmp      0x1405aba72
00000001405a04a3 mov      rax, qword ptr [rdi + 0x18]
00000001405a04a7 lea      r8, [rip + 0xc8282]
00000001405a04ae mov      rcx, qword ptr [rdi + 8]
00000001405a04b2 mov      edx, r13d
00000001405a04b5 mov      rax, qword ptr [rax + 0x118]
00000001405a04bc call     qword ptr [rip + 0xe3e36]
00000001405a04c2 mov      rax, qword ptr [rsi + 0x20]
00000001405a04c6 mov      r14d, 0xf4
00000001405a04cc mov      edx, r14d
00000001405a04cf mov      rcx, rdi
00000001405a04d2 call     qword ptr [rip + 0xe3e20]
00000001405a04d8 mov      r9d, 0x186000f4
00000001405a04de lea      r8, [rip + 0xc7ceb]
00000001405a04e5 btr      eax, 0x11
00000001405a04e9 mov      edx, r13d
00000001405a04ec bts      eax, 0x10
00000001405a04f0 mov      dword ptr [rbp + 0x30], eax
00000001405a04f3 mov      rax, qword ptr [rdi + 0x18]
00000001405a04f7 mov      rcx, qword ptr [rdi + 8]
00000001405a04fb mov      rax, qword ptr [rax + 0x118]
00000001405a0502 call     qword ptr [rip + 0xe3df0]
00000001405a0508 mov      rax, qword ptr [rsi + 0x28]
00000001405a050c mov      edx, r14d
00000001405a050f mov      r8d, dword ptr [rbp + 0x30]
00000001405a0513 mov      rcx, rdi
00000001405a0516 call     qword ptr [rip + 0xe3ddc]
00000001405a051c mov      rax, qword ptr [rsi + 0x20]
00000001405a0520 mov      ebx, 0x58
00000001405a0525 mov      edx, ebx
00000001405a0527 mov      rcx, rdi
00000001405a052a call     qword ptr [rip + 0xe3dc8]
00000001405a0530 mov      r9d, 0x18600058
00000001405a0536 lea      r8, [rip + 0xc8163]
00000001405a053d and      eax, 0xffffffb7
00000001405a0540 mov      edx, r13d
00000001405a0543 or       eax, 0xb7
00000001405a0548 mov      dword ptr [rbp + 0x30], eax
00000001405a054b mov      rax, qword ptr [rdi + 0x18]
00000001405a054f mov      rcx, qword ptr [rdi + 8]
00000001405a0553 mov      rax, qword ptr [rax + 0x118]
00000001405a055a call     qword ptr [rip + 0xe3d98]
00000001405a0560 mov      eax, dword ptr [rbp + 0x30]
00000001405a0563 lea      r8, [rip + 0xc8166]
00000001405a056a and      eax, 0xffb7ffff
00000001405a056f mov      r9d, 0x18600058
00000001405a0575 or       eax, 0xb70000
00000001405a057a mov      edx, r13d
00000001405a057d mov      dword ptr [rbp + 0x30], eax
00000001405a0580 mov      rax, qword ptr [rdi + 0x18]
00000001405a0584 mov      rcx, qword ptr [rdi + 8]
00000001405a0588 mov      rax, qword ptr [rax + 0x118]
00000001405a058f call     qword ptr [rip + 0xe3d63]
00000001405a0595 mov      rax, qword ptr [rsi + 0x28]
00000001405a0599 mov      edx, ebx
00000001405a059b mov      r8d, dword ptr [rbp + 0x30]
00000001405a059f mov      rcx, rdi
00000001405a05a2 call     qword ptr [rip + 0xe3d50]
00000001405a05a8 mov      rax, qword ptr [rdi + 0x18]
00000001405a05ac lea      r8, [rip + 0xc81ad]
00000001405a05b3 mov      rcx, qword ptr [rdi + 8]
00000001405a05b7 mov      edx, r13d
00000001405a05ba mov      rax, qword ptr [rax + 0x118]
00000001405a05c1 call     qword ptr [rip + 0xe3d31]
00000001405a05c7 lea      rdx, [rip + 0x72d85a]
00000001405a05ce jmp      0x1405aba72
00000001405a05d3 mov      rax, qword ptr [rdi + 0x18]
00000001405a05d7 lea      r8, [rip + 0xc8092]
00000001405a05de mov      rcx, qword ptr [rdi + 8]
00000001405a05e2 mov      edx, r13d
00000001405a05e5 mov      rax, qword ptr [rax + 0x118]
00000001405a05ec call     qword ptr [rip + 0xe3d06]
00000001405a05f2 mov      rax, qword ptr [rsi + 0x20]
00000001405a05f6 mov      r14d, 0xf4
00000001405a05fc mov      edx, r14d
00000001405a05ff mov      rcx, rdi
00000001405a0602 call     qword ptr [rip + 0xe3cf0]
00000001405a0608 mov      r9d, 0x186000f4
00000001405a060e lea      r8, [rip + 0xc7bbb]
00000001405a0615 btr      eax, 0x11
00000001405a0619 mov      edx, r13d
00000001405a061c bts      eax, 0x10
00000001405a0620 mov      dword ptr [rbp + 0x30], eax
00000001405a0623 mov      rax, qword ptr [rdi + 0x18]
00000001405a0627 mov      rcx, qword ptr [rdi + 8]
00000001405a062b mov      rax, qword ptr [rax + 0x118]
00000001405a0632 call     qword ptr [rip + 0xe3cc0]
00000001405a0638 mov      rax, qword ptr [rsi + 0x28]
00000001405a063c mov      edx, r14d
00000001405a063f mov      r8d, dword ptr [rbp + 0x30]
00000001405a0643 mov      rcx, rdi
00000001405a0646 call     qword ptr [rip + 0xe3cac]
00000001405a064c mov      rax, qword ptr [rsi + 0x20]
00000001405a0650 mov      ebx, 0x58
00000001405a0655 mov      edx, ebx
00000001405a0657 mov      rcx, rdi
00000001405a065a call     qword ptr [rip + 0xe3c98]
00000001405a0660 mov      r9d, 0x18600058
00000001405a0666 lea      r8, [rip + 0xc8033]
00000001405a066d and      eax, 0xffffffb7
00000001405a0670 mov      edx, r13d
00000001405a0673 or       eax, 0xb7
00000001405a0678 mov      dword ptr [rbp + 0x30], eax
00000001405a067b mov      rax, qword ptr [rdi + 0x18]
00000001405a067f mov      rcx, qword ptr [rdi + 8]
00000001405a0683 mov      rax, qword ptr [rax + 0x118]
00000001405a068a call     qword ptr [rip + 0xe3c68]
00000001405a0690 mov      eax, dword ptr [rbp + 0x30]
00000001405a0693 lea      r8, [rip + 0xc8036]
00000001405a069a and      eax, 0xffb7ffff
00000001405a069f mov      r9d, 0x18600058
00000001405a06a5 or       eax, 0xb70000
00000001405a06aa mov      edx, r13d
00000001405a06ad mov      dword ptr [rbp + 0x30], eax
00000001405a06b0 mov      rax, qword ptr [rdi + 0x18]
00000001405a06b4 mov      rcx, qword ptr [rdi + 8]
00000001405a06b8 mov      rax, qword ptr [rax + 0x118]
00000001405a06bf call     qword ptr [rip + 0xe3c33]
00000001405a06c5 mov      rax, qword ptr [rsi + 0x28]
00000001405a06c9 mov      edx, ebx
00000001405a06cb mov      r8d, dword ptr [rbp + 0x30]
00000001405a06cf mov      rcx, rdi
00000001405a06d2 call     qword ptr [rip + 0xe3c20]
00000001405a06d8 mov      rax, qword ptr [rdi + 0x18]
00000001405a06dc lea      r8, [rip + 0xc801d]
00000001405a06e3 mov      rcx, qword ptr [rdi + 8]
00000001405a06e7 mov      edx, r13d
00000001405a06ea mov      rax, qword ptr [rax + 0x118]
00000001405a06f1 call     qword ptr [rip + 0xe3c01]
00000001405a06f7 lea      rdx, [rip + 0x72d71a]
00000001405a06fe jmp      0x1405aba72
00000001405a0703 mov      rax, qword ptr [rdi + 0x18]
00000001405a0707 lea      r8, [rip + 0xc7ea2]
00000001405a070e mov      rcx, qword ptr [rdi + 8]
00000001405a0712 mov      edx, r13d
00000001405a0715 mov      rax, qword ptr [rax + 0x118]
00000001405a071c call     qword ptr [rip + 0xe3bd6]
00000001405a0722 mov      rax, qword ptr [rsi + 0x20]
00000001405a0726 mov      r14d, 0xf4
00000001405a072c mov      edx, r14d
00000001405a072f mov      rcx, rdi
00000001405a0732 call     qword ptr [rip + 0xe3bc0]
00000001405a0738 mov      r9d, 0x186000f4
00000001405a073e lea      r8, [rip + 0xc7a8b]
00000001405a0745 btr      eax, 0x11
00000001405a0749 mov      edx, r13d
00000001405a074c bts      eax, 0x10
00000001405a0750 mov      dword ptr [rbp + 0x30], eax
00000001405a0753 mov      rax, qword ptr [rdi + 0x18]
00000001405a0757 mov      rcx, qword ptr [rdi + 8]
00000001405a075b mov      rax, qword ptr [rax + 0x118]
00000001405a0762 call     qword ptr [rip + 0xe3b90]
00000001405a0768 mov      rax, qword ptr [rsi + 0x28]
00000001405a076c mov      edx, r14d
00000001405a076f mov      r8d, dword ptr [rbp + 0x30]
00000001405a0773 mov      rcx, rdi
00000001405a0776 call     qword ptr [rip + 0xe3b7c]
00000001405a077c mov      rax, qword ptr [rsi + 0x20]
00000001405a0780 mov      ebx, 0x58
00000001405a0785 mov      edx, ebx
00000001405a0787 mov      rcx, rdi
00000001405a078a call     qword ptr [rip + 0xe3b68]
00000001405a0790 mov      r9d, 0x18600058
00000001405a0796 lea      r8, [rip + 0xc7e43]
00000001405a079d and      eax, 0xffffffb5
00000001405a07a0 mov      edx, r13d
00000001405a07a3 or       eax, 0xb5
00000001405a07a8 mov      dword ptr [rbp + 0x30], eax
00000001405a07ab mov      rax, qword ptr [rdi + 0x18]
00000001405a07af mov      rcx, qword ptr [rdi + 8]
00000001405a07b3 mov      rax, qword ptr [rax + 0x118]
00000001405a07ba call     qword ptr [rip + 0xe3b38]
00000001405a07c0 mov      eax, dword ptr [rbp + 0x30]
00000001405a07c3 lea      r8, [rip + 0xc7e46]
00000001405a07ca and      eax, 0xffb5ffff
00000001405a07cf mov      r9d, 0x18600058
00000001405a07d5 or       eax, 0xb50000
00000001405a07da mov      edx, r13d
00000001405a07dd mov      dword ptr [rbp + 0x30], eax
00000001405a07e0 mov      rax, qword ptr [rdi + 0x18]
00000001405a07e4 mov      rcx, qword ptr [rdi + 8]
00000001405a07e8 mov      rax, qword ptr [rax + 0x118]
00000001405a07ef call     qword ptr [rip + 0xe3b03]
00000001405a07f5 mov      rax, qword ptr [rsi + 0x28]
00000001405a07f9 mov      edx, ebx
00000001405a07fb mov      r8d, dword ptr [rbp + 0x30]
00000001405a07ff mov      rcx, rdi
00000001405a0802 call     qword ptr [rip + 0xe3af0]
00000001405a0808 mov      rax, qword ptr [rsi]
00000001405a080b mov      ebx, 0x150f4
00000001405a0810 mov      edx, ebx
00000001405a0812 mov      rcx, rdi
00000001405a0815 call     qword ptr [rip + 0xe3add]
00000001405a081b mov      rax, qword ptr [rdi + 0x18]
00000001405a081f lea      r8, [rip + 0xc7a3a]
00000001405a0826 mov      rcx, qword ptr [rdi + 8]
00000001405a082a mov      r9d, 0x186150f4
00000001405a0830 mov      edx, r13d
00000001405a0833 mov      rax, qword ptr [rax + 0x118]
00000001405a083a call     qword ptr [rip + 0xe3ab8]
00000001405a0840 mov      rax, qword ptr [rsi + 8]
00000001405a0844 xor      r8d, r8d
00000001405a0847 mov      edx, ebx
00000001405a0849 mov      rcx, rdi
00000001405a084c call     qword ptr [rip + 0xe3aa6]
00000001405a0852 mov      rax, qword ptr [rdi + 0x18]
00000001405a0856 lea      r8, [rip + 0xc7de3]
00000001405a085d mov      rcx, qword ptr [rdi + 8]
00000001405a0861 mov      edx, r13d
00000001405a0864 mov      rax, qword ptr [rax + 0x118]
00000001405a086b call     qword ptr [rip + 0xe3a87]
00000001405a0871 lea      rdx, [rip + 0x72d590]
00000001405a0878 jmp      0x1405aba72
00000001405a087d mov      rax, qword ptr [rdi + 0x18]
00000001405a0881 lea      r8, [rip + 0xdd448]
00000001405a0888 mov      rcx, qword ptr [rdi + 8]
00000001405a088c mov      edx, r13d
00000001405a088f mov      rax, qword ptr [rax + 0x118]
00000001405a0896 call     qword ptr [rip + 0xe3a5c]
00000001405a089c mov      rax, qword ptr [rdi + 0x18]
00000001405a08a0 lea      r8, [rip + 0xdd459]
00000001405a08a7 mov      rcx, qword ptr [rdi + 8]
00000001405a08ab mov      edx, r13d
00000001405a08ae mov      rax, qword ptr [rax + 0x118]
00000001405a08b5 call     qword ptr [rip + 0xe3a3d]
00000001405a08bb lea      rdx, [rip + 0x72d5a6]
00000001405a08c2 jmp      0x1405aba72
00000001405a08c7 cmp      ebx, 0x14
00000001405a08ca ja       0x1405a0e5f
00000001405a08d0 je       0x1405a0cdc
00000001405a08d6 sub      ebx, 0xe
00000001405a08d9 je       0x1405a0c8a
00000001405a08df sub      ebx, r13d
00000001405a08e2 je       0x1405a0c38
00000001405a08e8 sub      ebx, r13d
00000001405a08eb je       0x1405a0b9b
00000001405a08f1 sub      ebx, r13d
00000001405a08f4 je       0x1405a0afe
00000001405a08fa sub      ebx, r13d
00000001405a08fd je       0x1405a0a05
00000001405a0903 cmp      ebx, r13d
00000001405a0906 jne      0x1405ab45d
00000001405a090c mov      rax, qword ptr [rdi + 0x18]
00000001405a0910 lea      r8, [rip + 0xdd599]
00000001405a0917 mov      rcx, qword ptr [rdi + 8]
00000001405a091b mov      edx, r13d
00000001405a091e mov      rax, qword ptr [rax + 0x118]
00000001405a0925 call     qword ptr [rip + 0xe39cd]
00000001405a092b mov      rax, qword ptr [rsi + 0x20]
00000001405a092f mov      r14d, 0xf4
00000001405a0935 mov      edx, r14d
00000001405a0938 mov      rcx, rdi
00000001405a093b call     qword ptr [rip + 0xe39b7]
00000001405a0941 mov      r9d, 0x186000f4
00000001405a0947 lea      r8, [rip + 0xc7882]
00000001405a094e btr      eax, 0x11
00000001405a0952 mov      edx, r13d
00000001405a0955 bts      eax, 0x10
00000001405a0959 mov      dword ptr [rbp + 0x30], eax
00000001405a095c mov      rax, qword ptr [rdi + 0x18]
00000001405a0960 mov      rcx, qword ptr [rdi + 8]
00000001405a0964 mov      rax, qword ptr [rax + 0x118]
00000001405a096b call     qword ptr [rip + 0xe3987]
00000001405a0971 mov      rax, qword ptr [rsi + 0x28]
00000001405a0975 mov      edx, r14d
00000001405a0978 mov      r8d, dword ptr [rbp + 0x30]
00000001405a097c mov      rcx, rdi
00000001405a097f call     qword ptr [rip + 0xe3973]
00000001405a0985 mov      rax, qword ptr [rsi]
00000001405a0988 mov      r14d, 0x14094
00000001405a098e mov      edx, r14d
00000001405a0991 mov      rcx, rdi
00000001405a0994 call     qword ptr [rip + 0xe395e]
00000001405a099a mov      rcx, qword ptr [rdi + 8]
00000001405a099e lea      r8, [rip + 0xdd4ab]
00000001405a09a5 mov      bl, al
00000001405a09a7 mov      r9d, 0x18614094
00000001405a09ad mov      rax, qword ptr [rdi + 0x18]
00000001405a09b1 and      bl, 0xf
00000001405a09b4 mov      edx, r13d
00000001405a09b7 or       bl, 0x10
00000001405a09ba mov      rax, qword ptr [rax + 0x118]
00000001405a09c1 call     qword ptr [rip + 0xe3931]
00000001405a09c7 mov      rax, qword ptr [rsi + 8]
00000001405a09cb mov      r8b, bl
00000001405a09ce mov      edx, r14d
00000001405a09d1 mov      rcx, rdi
00000001405a09d4 call     qword ptr [rip + 0xe391e]
00000001405a09da mov      rax, qword ptr [rdi + 0x18]
00000001405a09de lea      r8, [rip + 0xdd4fb]
00000001405a09e5 mov      rcx, qword ptr [rdi + 8]
00000001405a09e9 mov      edx, r13d
00000001405a09ec mov      rax, qword ptr [rax + 0x118]
00000001405a09f3 call     qword ptr [rip + 0xe38ff]
00000001405a09f9 lea      rdx, [rip + 0x72d4c8]
00000001405a0a00 jmp      0x1405aba72
00000001405a0a05 mov      rax, qword ptr [rdi + 0x18]
00000001405a0a09 lea      r8, [rip + 0xdd410]
00000001405a0a10 mov      rcx, qword ptr [rdi + 8]
00000001405a0a14 mov      edx, r13d
00000001405a0a17 mov      rax, qword ptr [rax + 0x118]
00000001405a0a1e call     qword ptr [rip + 0xe38d4]
00000001405a0a24 mov      rax, qword ptr [rsi + 0x20]
00000001405a0a28 mov      r14d, 0xf4
00000001405a0a2e mov      edx, r14d
00000001405a0a31 mov      rcx, rdi
00000001405a0a34 call     qword ptr [rip + 0xe38be]
00000001405a0a3a mov      r9d, 0x186000f4
00000001405a0a40 lea      r8, [rip + 0xc7789]
00000001405a0a47 btr      eax, 0x11
00000001405a0a4b mov      edx, r13d
00000001405a0a4e bts      eax, 0x10
00000001405a0a52 mov      dword ptr [rbp + 0x30], eax
00000001405a0a55 mov      rax, qword ptr [rdi + 0x18]
00000001405a0a59 mov      rcx, qword ptr [rdi + 8]
00000001405a0a5d mov      rax, qword ptr [rax + 0x118]
00000001405a0a64 call     qword ptr [rip + 0xe388e]
00000001405a0a6a mov      rax, qword ptr [rsi + 0x28]
00000001405a0a6e mov      edx, r14d
00000001405a0a71 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0a75 mov      rcx, rdi
00000001405a0a78 call     qword ptr [rip + 0xe387a]
00000001405a0a7e mov      rax, qword ptr [rsi]
00000001405a0a81 mov      r14d, 0x10094
00000001405a0a87 mov      edx, r14d
00000001405a0a8a mov      rcx, rdi
00000001405a0a8d call     qword ptr [rip + 0xe3865]
00000001405a0a93 mov      rcx, qword ptr [rdi + 8]
00000001405a0a97 lea      r8, [rip + 0xdd3b2]
00000001405a0a9e mov      bl, al
00000001405a0aa0 mov      r9d, 0x18610094
00000001405a0aa6 mov      rax, qword ptr [rdi + 0x18]
00000001405a0aaa and      bl, 0xf
00000001405a0aad mov      edx, r13d
00000001405a0ab0 or       bl, 0x10
00000001405a0ab3 mov      rax, qword ptr [rax + 0x118]
00000001405a0aba call     qword ptr [rip + 0xe3838]
00000001405a0ac0 mov      rax, qword ptr [rsi + 8]
00000001405a0ac4 mov      r8b, bl
00000001405a0ac7 mov      edx, r14d
00000001405a0aca mov      rcx, rdi
00000001405a0acd call     qword ptr [rip + 0xe3825]
00000001405a0ad3 mov      rax, qword ptr [rdi + 0x18]
00000001405a0ad7 lea      r8, [rip + 0xdd3a2]
00000001405a0ade mov      rcx, qword ptr [rdi + 8]
00000001405a0ae2 mov      edx, r13d
00000001405a0ae5 mov      rax, qword ptr [rax + 0x118]
00000001405a0aec call     qword ptr [rip + 0xe3806]
00000001405a0af2 lea      rdx, [rip + 0x72d3bf]
00000001405a0af9 jmp      0x1405aba72
00000001405a0afe mov      rax, qword ptr [rdi + 0x18]
00000001405a0b02 lea      r8, [rip + 0xdd2b7]
00000001405a0b09 mov      rcx, qword ptr [rdi + 8]
00000001405a0b0d mov      edx, r13d
00000001405a0b10 mov      rax, qword ptr [rax + 0x118]
00000001405a0b17 call     qword ptr [rip + 0xe37db]
00000001405a0b1d mov      rax, qword ptr [rsi + 0x20]
00000001405a0b21 mov      ebx, 0x140c8
00000001405a0b26 mov      edx, ebx
00000001405a0b28 mov      rcx, rdi
00000001405a0b2b call     qword ptr [rip + 0xe37c7]
00000001405a0b31 mov      r9d, 0x186140c8
00000001405a0b37 lea      r8, [rip + 0xdd222]
00000001405a0b3e bts      eax, 0x1c
00000001405a0b42 mov      edx, r13d
00000001405a0b45 mov      dword ptr [rbp + 0x30], eax
00000001405a0b48 mov      rax, qword ptr [rdi + 0x18]
00000001405a0b4c mov      rcx, qword ptr [rdi + 8]
00000001405a0b50 mov      rax, qword ptr [rax + 0x118]
00000001405a0b57 call     qword ptr [rip + 0xe379b]
00000001405a0b5d mov      rax, qword ptr [rsi + 0x28]
00000001405a0b61 mov      edx, ebx
00000001405a0b63 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0b67 mov      rcx, rdi
00000001405a0b6a call     qword ptr [rip + 0xe3788]
00000001405a0b70 mov      rax, qword ptr [rdi + 0x18]
00000001405a0b74 lea      r8, [rip + 0xdd275]
00000001405a0b7b mov      rcx, qword ptr [rdi + 8]
00000001405a0b7f mov      edx, r13d
00000001405a0b82 mov      rax, qword ptr [rax + 0x118]
00000001405a0b89 call     qword ptr [rip + 0xe3769]
00000001405a0b8f lea      rdx, [rip + 0x72d312]
00000001405a0b96 jmp      0x1405aba72
00000001405a0b9b mov      rax, qword ptr [rdi + 0x18]
00000001405a0b9f lea      r8, [rip + 0xdd18a]
00000001405a0ba6 mov      rcx, qword ptr [rdi + 8]
00000001405a0baa mov      edx, r13d
00000001405a0bad mov      rax, qword ptr [rax + 0x118]
00000001405a0bb4 call     qword ptr [rip + 0xe373e]
00000001405a0bba mov      rax, qword ptr [rsi + 0x20]
00000001405a0bbe mov      ebx, 0x100c8
00000001405a0bc3 mov      edx, ebx
00000001405a0bc5 mov      rcx, rdi
00000001405a0bc8 call     qword ptr [rip + 0xe372a]
00000001405a0bce mov      r9d, 0x186100c8
00000001405a0bd4 lea      r8, [rip + 0xdd185]
00000001405a0bdb bts      eax, 0x1c
00000001405a0bdf mov      edx, r13d
00000001405a0be2 mov      dword ptr [rbp + 0x30], eax
00000001405a0be5 mov      rax, qword ptr [rdi + 0x18]
00000001405a0be9 mov      rcx, qword ptr [rdi + 8]
00000001405a0bed mov      rax, qword ptr [rax + 0x118]
00000001405a0bf4 call     qword ptr [rip + 0xe36fe]
00000001405a0bfa mov      rax, qword ptr [rsi + 0x28]
00000001405a0bfe mov      edx, ebx
00000001405a0c00 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0c04 mov      rcx, rdi
00000001405a0c07 call     qword ptr [rip + 0xe36eb]
00000001405a0c0d mov      rax, qword ptr [rdi + 0x18]
00000001405a0c11 lea      r8, [rip + 0xdd178]
00000001405a0c18 mov      rcx, qword ptr [rdi + 8]
00000001405a0c1c mov      edx, r13d
00000001405a0c1f mov      rax, qword ptr [rax + 0x118]
00000001405a0c26 call     qword ptr [rip + 0xe36cc]
00000001405a0c2c lea      rdx, [rip + 0x72d265]
00000001405a0c33 jmp      0x1405aba72
00000001405a0c38 mov      rax, qword ptr [rdi + 0x18]
00000001405a0c3c lea      r8, [rip + 0xc7d2d]
00000001405a0c43 mov      rcx, qword ptr [rdi + 8]
00000001405a0c47 mov      edx, r13d
00000001405a0c4a mov      rax, qword ptr [rax + 0x118]
00000001405a0c51 call     qword ptr [rip + 0xe36a1]
00000001405a0c57 mov      rax, qword ptr [rdi + 0x18]
00000001405a0c5b lea      r8, [rip + 0xc7d3e]
00000001405a0c62 mov      rcx, qword ptr [rdi + 8]
00000001405a0c66 mov      edx, r13d
00000001405a0c69 mov      rax, qword ptr [rax + 0x118]
00000001405a0c70 call     qword ptr [rip + 0xe3682]
00000001405a0c76 xor      r9d, r9d
00000001405a0c79 mov      byte ptr [rsp + 0x20], r13b
00000001405a0c7e lea      rdx, [rip + 0x72d203]
00000001405a0c85 jmp      0x1405aba7a
00000001405a0c8a mov      rax, qword ptr [rdi + 0x18]
00000001405a0c8e lea      r8, [rip + 0xc7c7b]
00000001405a0c95 mov      rcx, qword ptr [rdi + 8]
00000001405a0c99 mov      edx, r13d
00000001405a0c9c mov      rax, qword ptr [rax + 0x118]
00000001405a0ca3 call     qword ptr [rip + 0xe364f]
00000001405a0ca9 mov      rax, qword ptr [rdi + 0x18]
00000001405a0cad lea      r8, [rip + 0xc7c8c]
00000001405a0cb4 mov      rcx, qword ptr [rdi + 8]
00000001405a0cb8 mov      edx, r13d
00000001405a0cbb mov      rax, qword ptr [rax + 0x118]
00000001405a0cc2 call     qword ptr [rip + 0xe3630]
00000001405a0cc8 xor      r9d, r9d
00000001405a0ccb mov      byte ptr [rsp + 0x20], r13b
00000001405a0cd0 lea      rdx, [rip + 0x72d1a1]
00000001405a0cd7 jmp      0x1405aba7a
00000001405a0cdc mov      rax, qword ptr [rdi + 0x18]
00000001405a0ce0 lea      r8, [rip + 0xc7ce9]
00000001405a0ce7 mov      rcx, qword ptr [rdi + 8]
00000001405a0ceb mov      edx, r13d
00000001405a0cee mov      rax, qword ptr [rax + 0x118]
00000001405a0cf5 call     qword ptr [rip + 0xe35fd]
00000001405a0cfb mov      rax, qword ptr [rsi + 0x20]
00000001405a0cff mov      r14d, 0xf4
00000001405a0d05 mov      edx, r14d
00000001405a0d08 mov      rcx, rdi
00000001405a0d0b call     qword ptr [rip + 0xe35e7]
00000001405a0d11 mov      r9d, 0x186000f4
00000001405a0d17 lea      r8, [rip + 0xc74b2]
00000001405a0d1e btr      eax, 0x11
00000001405a0d22 mov      edx, r13d
00000001405a0d25 bts      eax, 0x10
00000001405a0d29 mov      dword ptr [rbp + 0x30], eax
00000001405a0d2c mov      rax, qword ptr [rdi + 0x18]
00000001405a0d30 mov      rcx, qword ptr [rdi + 8]
00000001405a0d34 mov      rax, qword ptr [rax + 0x118]
00000001405a0d3b call     qword ptr [rip + 0xe35b7]
00000001405a0d41 mov      rax, qword ptr [rsi + 0x28]
00000001405a0d45 mov      edx, r14d
00000001405a0d48 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0d4c mov      rcx, rdi
00000001405a0d4f call     qword ptr [rip + 0xe35a3]
00000001405a0d55 mov      rax, qword ptr [rsi + 0x20]
00000001405a0d59 mov      ebx, 0x58
00000001405a0d5e mov      edx, ebx
00000001405a0d60 mov      rcx, rdi
00000001405a0d63 call     qword ptr [rip + 0xe358f]
00000001405a0d69 mov      r9d, 0x18600058
00000001405a0d6f lea      r8, [rip + 0xc7c8a]
00000001405a0d76 and      eax, 0xffffff74
00000001405a0d7b mov      edx, r13d
00000001405a0d7e or       eax, 0x74
00000001405a0d81 mov      dword ptr [rbp + 0x30], eax
00000001405a0d84 mov      rax, qword ptr [rdi + 0x18]
00000001405a0d88 mov      rcx, qword ptr [rdi + 8]
00000001405a0d8c mov      rax, qword ptr [rax + 0x118]
00000001405a0d93 call     qword ptr [rip + 0xe355f]
00000001405a0d99 mov      eax, dword ptr [rbp + 0x30]
00000001405a0d9c lea      r8, [rip + 0xc7c8d]
00000001405a0da3 and      eax, 0xff74ffff
00000001405a0da8 mov      r9d, 0x18600058
00000001405a0dae or       eax, 0x740000
00000001405a0db3 mov      edx, r13d
00000001405a0db6 mov      dword ptr [rbp + 0x30], eax
00000001405a0db9 mov      rax, qword ptr [rdi + 0x18]
00000001405a0dbd mov      rcx, qword ptr [rdi + 8]
00000001405a0dc1 mov      rax, qword ptr [rax + 0x118]
00000001405a0dc8 call     qword ptr [rip + 0xe352a]
00000001405a0dce mov      rax, qword ptr [rsi + 0x28]
00000001405a0dd2 mov      edx, ebx
00000001405a0dd4 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0dd8 mov      rcx, rdi
00000001405a0ddb call     qword ptr [rip + 0xe3517]
00000001405a0de1 mov      rax, qword ptr [rsi + 0x20]
00000001405a0de5 mov      ebx, 0xe300
00000001405a0dea mov      edx, ebx
00000001405a0dec mov      rcx, rdi
00000001405a0def call     qword ptr [rip + 0xe3503]
00000001405a0df5 mov      r9d, 0x1860e300
00000001405a0dfb lea      r8, [rip + 0xc7c5e]
00000001405a0e02 btr      eax, 0x1b
00000001405a0e06 mov      edx, r13d
00000001405a0e09 mov      dword ptr [rbp + 0x30], eax
00000001405a0e0c mov      rax, qword ptr [rdi + 0x18]
00000001405a0e10 mov      rcx, qword ptr [rdi + 8]
00000001405a0e14 mov      rax, qword ptr [rax + 0x118]
00000001405a0e1b call     qword ptr [rip + 0xe34d7]
00000001405a0e21 mov      rax, qword ptr [rsi + 0x28]
00000001405a0e25 mov      edx, ebx
00000001405a0e27 mov      r8d, dword ptr [rbp + 0x30]
00000001405a0e2b mov      rcx, rdi
00000001405a0e2e call     qword ptr [rip + 0xe34c4]
00000001405a0e34 mov      rax, qword ptr [rdi + 0x18]
00000001405a0e38 lea      r8, [rip + 0xc7c51]
00000001405a0e3f mov      rcx, qword ptr [rdi + 8]
00000001405a0e43 mov      edx, r13d
00000001405a0e46 mov      rax, qword ptr [rax + 0x118]
00000001405a0e4d call     qword ptr [rip + 0xe34a5]
00000001405a0e53 lea      rdx, [rip + 0x72d07e]
00000001405a0e5a jmp      0x1405aba72
00000001405a0e5f sub      ebx, 0x15
00000001405a0e62 je       0x1405a110e
00000001405a0e68 sub      ebx, r13d
00000001405a0e6b je       0x1405a1071
00000001405a0e71 sub      ebx, r13d
00000001405a0e74 je       0x1405a0fd4
00000001405a0e7a sub      ebx, r13d
00000001405a0e7d je       0x1405a0f30
00000001405a0e83 cmp      ebx, r13d
00000001405a0e86 jne      0x1405ab45d
00000001405a0e8c mov      rax, qword ptr [rdi + 0x18]
00000001405a0e90 lea      r8, [rip + 0xc7e19]
00000001405a0e97 mov      rcx, qword ptr [rdi + 8]
00000001405a0e9b mov      edx, r13d
00000001405a0e9e mov      rax, qword ptr [rax + 0x118]
00000001405a0ea5 call     qword ptr [rip + 0xe344d]
00000001405a0eab mov      rax, qword ptr [rsi + 0x10]
00000001405a0eaf mov      r14d, 0x148f4
00000001405a0eb5 mov      edx, r14d
00000001405a0eb8 mov      rcx, rdi
00000001405a0ebb call     qword ptr [rip + 0xe3437]
00000001405a0ec1 mov      rcx, qword ptr [rdi + 8]
00000001405a0ec5 lea      r8, [rip + 0xc7d94]
00000001405a0ecc movzx    ebx, ax
00000001405a0ecf mov      r9d, 0x186148f4
00000001405a0ed5 mov      eax, 0x100
00000001405a0eda mov      edx, r13d
00000001405a0edd or       bx, ax
00000001405a0ee0 mov      rax, qword ptr [rdi + 0x18]
00000001405a0ee4 mov      rax, qword ptr [rax + 0x118]
00000001405a0eeb call     qword ptr [rip + 0xe3407]
00000001405a0ef1 mov      rax, qword ptr [rsi + 0x18]
00000001405a0ef5 movzx    r8d, bx
00000001405a0ef9 mov      edx, r14d
00000001405a0efc mov      rcx, rdi
00000001405a0eff call     qword ptr [rip + 0xe33f3]
00000001405a0f05 mov      rax, qword ptr [rdi + 0x18]
00000001405a0f09 lea      r8, [rip + 0xc7dc0]
00000001405a0f10 mov      rcx, qword ptr [rdi + 8]
00000001405a0f14 mov      edx, r13d
00000001405a0f17 mov      rax, qword ptr [rax + 0x118]
00000001405a0f1e call     qword ptr [rip + 0xe33d4]
00000001405a0f24 lea      rdx, [rip + 0x72cffd]
00000001405a0f2b jmp      0x1405aba72
00000001405a0f30 mov      rax, qword ptr [rdi + 0x18]
00000001405a0f34 lea      r8, [rip + 0xc7d05]
00000001405a0f3b mov      rcx, qword ptr [rdi + 8]
00000001405a0f3f mov      edx, r13d
00000001405a0f42 mov      rax, qword ptr [rax + 0x118]
00000001405a0f49 call     qword ptr [rip + 0xe33a9]
00000001405a0f4f mov      rax, qword ptr [rsi + 0x10]
00000001405a0f53 mov      r14d, 0x108f4
00000001405a0f59 mov      edx, r14d
00000001405a0f5c mov      rcx, rdi
00000001405a0f5f call     qword ptr [rip + 0xe3393]
00000001405a0f65 mov      rcx, qword ptr [rdi + 8]
00000001405a0f69 lea      r8, [rip + 0xc7cf0]
00000001405a0f70 movzx    ebx, ax
00000001405a0f73 mov      r9d, 0x186108f4
00000001405a0f79 mov      eax, 0x100
00000001405a0f7e mov      edx, r13d
00000001405a0f81 or       bx, ax
00000001405a0f84 mov      rax, qword ptr [rdi + 0x18]
00000001405a0f88 mov      rax, qword ptr [rax + 0x118]
00000001405a0f8f call     qword ptr [rip + 0xe3363]
00000001405a0f95 mov      rax, qword ptr [rsi + 0x18]
00000001405a0f99 movzx    r8d, bx
00000001405a0f9d mov      edx, r14d
00000001405a0fa0 mov      rcx, rdi
00000001405a0fa3 call     qword ptr [rip + 0xe334f]
00000001405a0fa9 mov      rax, qword ptr [rdi + 0x18]
00000001405a0fad lea      r8, [rip + 0xc7cdc]
00000001405a0fb4 mov      rcx, qword ptr [rdi + 8]
00000001405a0fb8 mov      edx, r13d
00000001405a0fbb mov      rax, qword ptr [rax + 0x118]
00000001405a0fc2 call     qword ptr [rip + 0xe3330]
00000001405a0fc8 lea      rdx, [rip + 0x72cf49]
00000001405a0fcf jmp      0x1405aba72
00000001405a0fd4 mov      rax, qword ptr [rdi + 0x18]
00000001405a0fd8 lea      r8, [rip + 0xc7c01]
00000001405a0fdf mov      rcx, qword ptr [rdi + 8]
00000001405a0fe3 mov      edx, r13d
00000001405a0fe6 mov      rax, qword ptr [rax + 0x118]
00000001405a0fed call     qword ptr [rip + 0xe3305]
00000001405a0ff3 mov      rax, qword ptr [rsi + 0x20]
00000001405a0ff7 mov      ebx, 0x143f4
00000001405a0ffc mov      edx, ebx
00000001405a0ffe mov      rcx, rdi
00000001405a1001 call     qword ptr [rip + 0xe32f1]
00000001405a1007 mov      r9d, 0x186143f4
00000001405a100d lea      r8, [rip + 0xc7b6c]
00000001405a1014 bts      eax, 0x10
00000001405a1018 mov      edx, r13d
00000001405a101b mov      dword ptr [rbp + 0x30], eax
00000001405a101e mov      rax, qword ptr [rdi + 0x18]
00000001405a1022 mov      rcx, qword ptr [rdi + 8]
00000001405a1026 mov      rax, qword ptr [rax + 0x118]
00000001405a102d call     qword ptr [rip + 0xe32c5]
00000001405a1033 mov      rax, qword ptr [rsi + 0x28]
00000001405a1037 mov      edx, ebx
00000001405a1039 mov      r8d, dword ptr [rbp + 0x30]
00000001405a103d mov      rcx, rdi
00000001405a1040 call     qword ptr [rip + 0xe32b2]
00000001405a1046 mov      rax, qword ptr [rdi + 0x18]
00000001405a104a lea      r8, [rip + 0xc7bbf]
00000001405a1051 mov      rcx, qword ptr [rdi + 8]
00000001405a1055 mov      edx, r13d
00000001405a1058 mov      rax, qword ptr [rax + 0x118]
00000001405a105f call     qword ptr [rip + 0xe3293]
00000001405a1065 lea      rdx, [rip + 0x72ce9c]
00000001405a106c jmp      0x1405aba72
00000001405a1071 mov      rax, qword ptr [rdi + 0x18]
00000001405a1075 lea      r8, [rip + 0xc7ad4]
00000001405a107c mov      rcx, qword ptr [rdi + 8]
00000001405a1080 mov      edx, r13d
00000001405a1083 mov      rax, qword ptr [rax + 0x118]
00000001405a108a call     qword ptr [rip + 0xe3268]
00000001405a1090 mov      rax, qword ptr [rsi + 0x20]
00000001405a1094 mov      ebx, 0x103f4
00000001405a1099 mov      edx, ebx
00000001405a109b mov      rcx, rdi
00000001405a109e call     qword ptr [rip + 0xe3254]
00000001405a10a4 mov      r9d, 0x186103f4
00000001405a10aa lea      r8, [rip + 0xc7acf]
00000001405a10b1 bts      eax, 0x10
00000001405a10b5 mov      edx, r13d
00000001405a10b8 mov      dword ptr [rbp + 0x30], eax
00000001405a10bb mov      rax, qword ptr [rdi + 0x18]
00000001405a10bf mov      rcx, qword ptr [rdi + 8]
00000001405a10c3 mov      rax, qword ptr [rax + 0x118]
00000001405a10ca call     qword ptr [rip + 0xe3228]
00000001405a10d0 mov      rax, qword ptr [rsi + 0x28]
00000001405a10d4 mov      edx, ebx
00000001405a10d6 mov      r8d, dword ptr [rbp + 0x30]
00000001405a10da mov      rcx, rdi
00000001405a10dd call     qword ptr [rip + 0xe3215]
00000001405a10e3 mov      rax, qword ptr [rdi + 0x18]
00000001405a10e7 lea      r8, [rip + 0xc7ac2]
00000001405a10ee mov      rcx, qword ptr [rdi + 8]
00000001405a10f2 mov      edx, r13d
00000001405a10f5 mov      rax, qword ptr [rax + 0x118]
00000001405a10fc call     qword ptr [rip + 0xe31f6]
00000001405a1102 lea      rdx, [rip + 0x72cdef]
00000001405a1109 jmp      0x1405aba72
00000001405a110e mov      rax, qword ptr [rdi + 0x18]
00000001405a1112 lea      r8, [rip + 0xc79a7]
00000001405a1119 mov      rcx, qword ptr [rdi + 8]
00000001405a111d mov      edx, r13d
00000001405a1120 mov      rax, qword ptr [rax + 0x118]
00000001405a1127 call     qword ptr [rip + 0xe31cb]
00000001405a112d mov      rax, qword ptr [rsi + 0x20]
00000001405a1131 mov      r14d, 0xf4
00000001405a1137 mov      edx, r14d
00000001405a113a mov      rcx, rdi
00000001405a113d call     qword ptr [rip + 0xe31b5]
00000001405a1143 mov      r9d, 0x186000f4
00000001405a1149 lea      r8, [rip + 0xc7080]
00000001405a1150 btr      eax, 0x11
00000001405a1154 mov      edx, r13d
00000001405a1157 bts      eax, 0x10
00000001405a115b mov      dword ptr [rbp + 0x30], eax
00000001405a115e mov      rax, qword ptr [rdi + 0x18]
00000001405a1162 mov      rcx, qword ptr [rdi + 8]
00000001405a1166 mov      rax, qword ptr [rax + 0x118]
00000001405a116d call     qword ptr [rip + 0xe3185]
00000001405a1173 mov      rax, qword ptr [rsi + 0x28]
00000001405a1177 mov      edx, r14d
00000001405a117a mov      r8d, dword ptr [rbp + 0x30]
00000001405a117e mov      rcx, rdi
00000001405a1181 call     qword ptr [rip + 0xe3171]
00000001405a1187 mov      rax, qword ptr [rsi + 0x20]
00000001405a118b mov      ebx, 0x58
00000001405a1190 mov      edx, ebx
00000001405a1192 mov      rcx, rdi
00000001405a1195 call     qword ptr [rip + 0xe315d]
00000001405a119b mov      r9d, 0x18600058
00000001405a11a1 lea      r8, [rip + 0xc7858]
00000001405a11a8 and      eax, 0xffffff74
00000001405a11ad mov      edx, r13d
00000001405a11b0 or       eax, 0x74
00000001405a11b3 mov      dword ptr [rbp + 0x30], eax
00000001405a11b6 mov      rax, qword ptr [rdi + 0x18]
00000001405a11ba mov      rcx, qword ptr [rdi + 8]
00000001405a11be mov      rax, qword ptr [rax + 0x118]
00000001405a11c5 call     qword ptr [rip + 0xe312d]
00000001405a11cb mov      eax, dword ptr [rbp + 0x30]
00000001405a11ce lea      r8, [rip + 0xc785b]
00000001405a11d5 and      eax, 0xff74ffff
00000001405a11da mov      r9d, 0x18600058
00000001405a11e0 or       eax, 0x740000
00000001405a11e5 mov      edx, r13d
00000001405a11e8 mov      dword ptr [rbp + 0x30], eax
00000001405a11eb mov      rax, qword ptr [rdi + 0x18]
00000001405a11ef mov      rcx, qword ptr [rdi + 8]
00000001405a11f3 mov      rax, qword ptr [rax + 0x118]
00000001405a11fa call     qword ptr [rip + 0xe30f8]
00000001405a1200 mov      rax, qword ptr [rsi + 0x28]
00000001405a1204 mov      edx, ebx
00000001405a1206 mov      r8d, dword ptr [rbp + 0x30]
00000001405a120a mov      rcx, rdi
00000001405a120d call     qword ptr [rip + 0xe30e5]
00000001405a1213 mov      rax, qword ptr [rsi + 0x20]
00000001405a1217 mov      ebx, 0xe300
00000001405a121c mov      edx, ebx
00000001405a121e mov      rcx, rdi
00000001405a1221 call     qword ptr [rip + 0xe30d1]
00000001405a1227 mov      r9d, 0x1860e300
00000001405a122d lea      r8, [rip + 0xc78bc]
00000001405a1234 bts      eax, 0x1b
00000001405a1238 mov      edx, r13d
00000001405a123b mov      dword ptr [rbp + 0x30], eax
00000001405a123e mov      rax, qword ptr [rdi + 0x18]
00000001405a1242 mov      rcx, qword ptr [rdi + 8]
00000001405a1246 mov      rax, qword ptr [rax + 0x118]
00000001405a124d call     qword ptr [rip + 0xe30a5]
00000001405a1253 mov      rax, qword ptr [rsi + 0x28]
00000001405a1257 mov      edx, ebx
00000001405a1259 mov      r8d, dword ptr [rbp + 0x30]
00000001405a125d mov      rcx, rdi
00000001405a1260 call     qword ptr [rip + 0xe3092]
00000001405a1266 mov      rax, qword ptr [rdi + 0x18]
00000001405a126a lea      r8, [rip + 0xc78af]
00000001405a1271 mov      rcx, qword ptr [rdi + 8]
00000001405a1275 mov      edx, r13d
00000001405a1278 mov      rax, qword ptr [rax + 0x118]
00000001405a127f call     qword ptr [rip + 0xe3073]
00000001405a1285 lea      rdx, [rip + 0x72cc5c]
00000001405a128c jmp      0x1405aba72
00000001405a1291 mov      rax, qword ptr [rdi + 0x18]
00000001405a1295 lea      r8, [rip + 0xc7a54]
00000001405a129c mov      rcx, qword ptr [rdi + 8]
00000001405a12a0 mov      edx, r13d
00000001405a12a3 mov      rax, qword ptr [rax + 0x118]
00000001405a12aa call     qword ptr [rip + 0xe3048]
00000001405a12b0 mov      rax, qword ptr [rdi + 0x18]
00000001405a12b4 lea      r8, [rip + 0xc7a65]
00000001405a12bb mov      rcx, qword ptr [rdi + 8]
00000001405a12bf mov      edx, r13d
00000001405a12c2 mov      rax, qword ptr [rax + 0x118]
00000001405a12c9 call     qword ptr [rip + 0xe3029]
00000001405a12cf lea      rdx, [rip + 0x72cc62]
00000001405a12d6 jmp      0x1405aba72
00000001405a12db cmp      ebx, 0x27
00000001405a12de ja       0x1405a1716
00000001405a12e4 je       0x1405a16cc
00000001405a12ea cmp      ebx, 0x21
00000001405a12ed ja       0x1405a1531
00000001405a12f3 je       0x1405a14e7
00000001405a12f9 sub      ebx, 0x1b
00000001405a12fc je       0x1405a149d
00000001405a1302 sub      ebx, r13d
00000001405a1305 je       0x1405a1453
00000001405a130b sub      ebx, r13d
00000001405a130e je       0x1405a1409
00000001405a1314 sub      ebx, r13d
00000001405a1317 je       0x1405a13bf
00000001405a131d sub      ebx, r13d
00000001405a1320 je       0x1405a1375
00000001405a1322 cmp      ebx, r13d
00000001405a1325 jne      0x1405ab45d
00000001405a132b mov      rax, qword ptr [rdi + 0x18]
00000001405a132f lea      r8, [rip + 0xc7bfa]
00000001405a1336 mov      rcx, qword ptr [rdi + 8]
00000001405a133a mov      edx, r13d
00000001405a133d mov      rax, qword ptr [rax + 0x118]
00000001405a1344 call     qword ptr [rip + 0xe2fae]
00000001405a134a mov      rax, qword ptr [rdi + 0x18]
00000001405a134e lea      r8, [rip + 0xc7c0b]
00000001405a1355 mov      rcx, qword ptr [rdi + 8]
00000001405a1359 mov      edx, r13d
00000001405a135c mov      rax, qword ptr [rax + 0x118]
00000001405a1363 call     qword ptr [rip + 0xe2f8f]
00000001405a1369 lea      rdx, [rip + 0x72cc28]
00000001405a1370 jmp      0x1405aba72
00000001405a1375 mov      rax, qword ptr [rdi + 0x18]
00000001405a1379 lea      r8, [rip + 0xc7b50]
00000001405a1380 mov      rcx, qword ptr [rdi + 8]
00000001405a1384 mov      edx, r13d
00000001405a1387 mov      rax, qword ptr [rax + 0x118]
00000001405a138e call     qword ptr [rip + 0xe2f64]
00000001405a1394 mov      rax, qword ptr [rdi + 0x18]
00000001405a1398 lea      r8, [rip + 0xc7b61]
00000001405a139f mov      rcx, qword ptr [rdi + 8]
00000001405a13a3 mov      edx, r13d
00000001405a13a6 mov      rax, qword ptr [rax + 0x118]
00000001405a13ad call     qword ptr [rip + 0xe2f45]
00000001405a13b3 lea      rdx, [rip + 0x72cbce]
00000001405a13ba jmp      0x1405aba72
00000001405a13bf mov      rax, qword ptr [rdi + 0x18]
00000001405a13c3 lea      r8, [rip + 0xc7aa6]
00000001405a13ca mov      rcx, qword ptr [rdi + 8]
00000001405a13ce mov      edx, r13d
00000001405a13d1 mov      rax, qword ptr [rax + 0x118]
00000001405a13d8 call     qword ptr [rip + 0xe2f1a]
00000001405a13de mov      rax, qword ptr [rdi + 0x18]
00000001405a13e2 lea      r8, [rip + 0xc7ab7]
00000001405a13e9 mov      rcx, qword ptr [rdi + 8]
00000001405a13ed mov      edx, r13d
00000001405a13f0 mov      rax, qword ptr [rax + 0x118]
00000001405a13f7 call     qword ptr [rip + 0xe2efb]
00000001405a13fd lea      rdx, [rip + 0x72cb74]
00000001405a1404 jmp      0x1405aba72
00000001405a1409 mov      rax, qword ptr [rdi + 0x18]
00000001405a140d lea      r8, [rip + 0xc79fc]
00000001405a1414 mov      rcx, qword ptr [rdi + 8]
00000001405a1418 mov      edx, r13d
00000001405a141b mov      rax, qword ptr [rax + 0x118]
00000001405a1422 call     qword ptr [rip + 0xe2ed0]
00000001405a1428 mov      rax, qword ptr [rdi + 0x18]
00000001405a142c lea      r8, [rip + 0xc7a0d]
00000001405a1433 mov      rcx, qword ptr [rdi + 8]
00000001405a1437 mov      edx, r13d
00000001405a143a mov      rax, qword ptr [rax + 0x118]
00000001405a1441 call     qword ptr [rip + 0xe2eb1]
00000001405a1447 lea      rdx, [rip + 0x72cb1a]
00000001405a144e jmp      0x1405aba72
00000001405a1453 mov      rax, qword ptr [rdi + 0x18]
00000001405a1457 lea      r8, [rip + 0xc7952]
00000001405a145e mov      rcx, qword ptr [rdi + 8]
00000001405a1462 mov      edx, r13d
00000001405a1465 mov      rax, qword ptr [rax + 0x118]
00000001405a146c call     qword ptr [rip + 0xe2e86]
00000001405a1472 mov      rax, qword ptr [rdi + 0x18]
00000001405a1476 lea      r8, [rip + 0xc7963]
00000001405a147d mov      rcx, qword ptr [rdi + 8]
00000001405a1481 mov      edx, r13d
00000001405a1484 mov      rax, qword ptr [rax + 0x118]
00000001405a148b call     qword ptr [rip + 0xe2e67]
00000001405a1491 lea      rdx, [rip + 0x72cac0]
00000001405a1498 jmp      0x1405aba72
00000001405a149d mov      rax, qword ptr [rdi + 0x18]
00000001405a14a1 lea      r8, [rip + 0xc78a8]
00000001405a14a8 mov      rcx, qword ptr [rdi + 8]
00000001405a14ac mov      edx, r13d
00000001405a14af mov      rax, qword ptr [rax + 0x118]
00000001405a14b6 call     qword ptr [rip + 0xe2e3c]
00000001405a14bc mov      rax, qword ptr [rdi + 0x18]
00000001405a14c0 lea      r8, [rip + 0xc78b9]
00000001405a14c7 mov      rcx, qword ptr [rdi + 8]
00000001405a14cb mov      edx, r13d
00000001405a14ce mov      rax, qword ptr [rax + 0x118]
00000001405a14d5 call     qword ptr [rip + 0xe2e1d]
00000001405a14db lea      rdx, [rip + 0x72ca66]
00000001405a14e2 jmp      0x1405aba72
00000001405a14e7 mov      rax, qword ptr [rdi + 0x18]
00000001405a14eb lea      r8, [rip + 0xc7a9e]
00000001405a14f2 mov      rcx, qword ptr [rdi + 8]
00000001405a14f6 mov      edx, r13d
00000001405a14f9 mov      rax, qword ptr [rax + 0x118]
00000001405a1500 call     qword ptr [rip + 0xe2df2]
00000001405a1506 mov      rax, qword ptr [rdi + 0x18]
00000001405a150a lea      r8, [rip + 0xc7aaf]
00000001405a1511 mov      rcx, qword ptr [rdi + 8]
00000001405a1515 mov      edx, r13d
00000001405a1518 mov      rax, qword ptr [rax + 0x118]
00000001405a151f call     qword ptr [rip + 0xe2dd3]
00000001405a1525 lea      rdx, [rip + 0x72ca7c]
00000001405a152c jmp      0x1405aba72
00000001405a1531 sub      ebx, 0x22
00000001405a1534 je       0x1405a1682
00000001405a153a sub      ebx, r13d
00000001405a153d je       0x1405a1638
00000001405a1543 sub      ebx, r13d
00000001405a1546 je       0x1405a15ee
00000001405a154c sub      ebx, r13d
00000001405a154f je       0x1405a15a4
00000001405a1551 cmp      ebx, r13d
00000001405a1554 jne      0x1405ab45d
00000001405a155a mov      rax, qword ptr [rdi + 0x18]
00000001405a155e lea      r8, [rip + 0xc7c0b]
00000001405a1565 mov      rcx, qword ptr [rdi + 8]
00000001405a1569 mov      edx, r13d
00000001405a156c mov      rax, qword ptr [rax + 0x118]
00000001405a1573 call     qword ptr [rip + 0xe2d7f]
00000001405a1579 mov      rax, qword ptr [rdi + 0x18]
00000001405a157d lea      r8, [rip + 0xc7c1c]
00000001405a1584 mov      rcx, qword ptr [rdi + 8]
00000001405a1588 mov      edx, r13d
00000001405a158b mov      rax, qword ptr [rax + 0x118]
00000001405a1592 call     qword ptr [rip + 0xe2d60]
00000001405a1598 lea      rdx, [rip + 0x72ca59]
00000001405a159f jmp      0x1405aba72
00000001405a15a4 mov      rax, qword ptr [rdi + 0x18]
00000001405a15a8 lea      r8, [rip + 0xc7b61]
00000001405a15af mov      rcx, qword ptr [rdi + 8]
00000001405a15b3 mov      edx, r13d
00000001405a15b6 mov      rax, qword ptr [rax + 0x118]
00000001405a15bd call     qword ptr [rip + 0xe2d35]
00000001405a15c3 mov      rax, qword ptr [rdi + 0x18]
00000001405a15c7 lea      r8, [rip + 0xc7b72]
00000001405a15ce mov      rcx, qword ptr [rdi + 8]
00000001405a15d2 mov      edx, r13d
00000001405a15d5 mov      rax, qword ptr [rax + 0x118]
00000001405a15dc call     qword ptr [rip + 0xe2d16]
00000001405a15e2 lea      rdx, [rip + 0x72c9ff]
00000001405a15e9 jmp      0x1405aba72
00000001405a15ee mov      rax, qword ptr [rdi + 0x18]
00000001405a15f2 lea      r8, [rip + 0xc7ab7]
00000001405a15f9 mov      rcx, qword ptr [rdi + 8]
00000001405a15fd mov      edx, r13d
00000001405a1600 mov      rax, qword ptr [rax + 0x118]
00000001405a1607 call     qword ptr [rip + 0xe2ceb]
00000001405a160d mov      rax, qword ptr [rdi + 0x18]
00000001405a1611 lea      r8, [rip + 0xc7ac8]
00000001405a1618 mov      rcx, qword ptr [rdi + 8]
00000001405a161c mov      edx, r13d
00000001405a161f mov      rax, qword ptr [rax + 0x118]
00000001405a1626 call     qword ptr [rip + 0xe2ccc]
00000001405a162c lea      rdx, [rip + 0x72c9a5]
00000001405a1633 jmp      0x1405aba72
00000001405a1638 mov      rax, qword ptr [rdi + 0x18]
00000001405a163c lea      r8, [rip + 0xc7a0d]
00000001405a1643 mov      rcx, qword ptr [rdi + 8]
00000001405a1647 mov      edx, r13d
00000001405a164a mov      rax, qword ptr [rax + 0x118]
00000001405a1651 call     qword ptr [rip + 0xe2ca1]
00000001405a1657 mov      rax, qword ptr [rdi + 0x18]
00000001405a165b lea      r8, [rip + 0xc7a1e]
00000001405a1662 mov      rcx, qword ptr [rdi + 8]
00000001405a1666 mov      edx, r13d
00000001405a1669 mov      rax, qword ptr [rax + 0x118]
00000001405a1670 call     qword ptr [rip + 0xe2c82]
00000001405a1676 lea      rdx, [rip + 0x72c94b]
00000001405a167d jmp      0x1405aba72
00000001405a1682 mov      rax, qword ptr [rdi + 0x18]
00000001405a1686 lea      r8, [rip + 0xc7963]
00000001405a168d mov      rcx, qword ptr [rdi + 8]
00000001405a1691 mov      edx, r13d
00000001405a1694 mov      rax, qword ptr [rax + 0x118]
00000001405a169b call     qword ptr [rip + 0xe2c57]
00000001405a16a1 mov      rax, qword ptr [rdi + 0x18]
00000001405a16a5 lea      r8, [rip + 0xc7974]
00000001405a16ac mov      rcx, qword ptr [rdi + 8]
00000001405a16b0 mov      edx, r13d
00000001405a16b3 mov      rax, qword ptr [rax + 0x118]
00000001405a16ba call     qword ptr [rip + 0xe2c38]
00000001405a16c0 lea      rdx, [rip + 0x72c8f1]
00000001405a16c7 jmp      0x1405aba72
00000001405a16cc mov      rax, qword ptr [rdi + 0x18]
00000001405a16d0 lea      r8, [rip + 0xc7af9]
00000001405a16d7 mov      rcx, qword ptr [rdi + 8]
00000001405a16db mov      edx, r13d
00000001405a16de mov      rax, qword ptr [rax + 0x118]
00000001405a16e5 call     qword ptr [rip + 0xe2c0d]
00000001405a16eb mov      rax, qword ptr [rdi + 0x18]
00000001405a16ef lea      r8, [rip + 0xc7b0a]
00000001405a16f6 mov      rcx, qword ptr [rdi + 8]
00000001405a16fa mov      edx, r13d
00000001405a16fd mov      rax, qword ptr [rax + 0x118]
00000001405a1704 call     qword ptr [rip + 0xe2bee]
00000001405a170a lea      rdx, [rip + 0x72c8f7]
00000001405a1711 jmp      0x1405aba72
00000001405a1716 cmp      ebx, 0x2e
00000001405a1719 ja       0x1405a195d
00000001405a171f je       0x1405a1913
00000001405a1725 sub      ebx, 0x28
00000001405a1728 je       0x1405a18c9
00000001405a172e sub      ebx, r13d
00000001405a1731 je       0x1405a187f
00000001405a1737 sub      ebx, r13d
00000001405a173a je       0x1405a1835
00000001405a1740 sub      ebx, r13d
00000001405a1743 je       0x1405a17eb
00000001405a1749 sub      ebx, r13d
00000001405a174c je       0x1405a17a1
00000001405a174e cmp      ebx, r13d
00000001405a1751 jne      0x1405ab45d
00000001405a1757 mov      rax, qword ptr [rdi + 0x18]
00000001405a175b lea      r8, [rip + 0xc7cae]
00000001405a1762 mov      rcx, qword ptr [rdi + 8]
00000001405a1766 mov      edx, r13d
00000001405a1769 mov      rax, qword ptr [rax + 0x118]
00000001405a1770 call     qword ptr [rip + 0xe2b82]
00000001405a1776 mov      rax, qword ptr [rdi + 0x18]
00000001405a177a lea      r8, [rip + 0xc7cbf]
00000001405a1781 mov      rcx, qword ptr [rdi + 8]
00000001405a1785 mov      edx, r13d
00000001405a1788 mov      rax, qword ptr [rax + 0x118]
00000001405a178f call     qword ptr [rip + 0xe2b63]
00000001405a1795 lea      rdx, [rip + 0x72c8cc]
00000001405a179c jmp      0x1405aba72
00000001405a17a1 mov      rax, qword ptr [rdi + 0x18]
00000001405a17a5 lea      r8, [rip + 0xc7c04]
00000001405a17ac mov      rcx, qword ptr [rdi + 8]
00000001405a17b0 mov      edx, r13d
00000001405a17b3 mov      rax, qword ptr [rax + 0x118]
00000001405a17ba call     qword ptr [rip + 0xe2b38]
00000001405a17c0 mov      rax, qword ptr [rdi + 0x18]
00000001405a17c4 lea      r8, [rip + 0xc7c15]
00000001405a17cb mov      rcx, qword ptr [rdi + 8]
00000001405a17cf mov      edx, r13d
00000001405a17d2 mov      rax, qword ptr [rax + 0x118]
00000001405a17d9 call     qword ptr [rip + 0xe2b19]
00000001405a17df lea      rdx, [rip + 0x72c872]
00000001405a17e6 jmp      0x1405aba72
00000001405a17eb mov      rax, qword ptr [rdi + 0x18]
00000001405a17ef lea      r8, [rip + 0xc7b5a]
00000001405a17f6 mov      rcx, qword ptr [rdi + 8]
00000001405a17fa mov      edx, r13d
00000001405a17fd mov      rax, qword ptr [rax + 0x118]
00000001405a1804 call     qword ptr [rip + 0xe2aee]
00000001405a180a mov      rax, qword ptr [rdi + 0x18]
00000001405a180e lea      r8, [rip + 0xc7b6b]
00000001405a1815 mov      rcx, qword ptr [rdi + 8]
00000001405a1819 mov      edx, r13d
00000001405a181c mov      rax, qword ptr [rax + 0x118]
00000001405a1823 call     qword ptr [rip + 0xe2acf]
00000001405a1829 lea      rdx, [rip + 0x72c818]
00000001405a1830 jmp      0x1405aba72
00000001405a1835 mov      rax, qword ptr [rdi + 0x18]
00000001405a1839 lea      r8, [rip + 0xc7ab0]
00000001405a1840 mov      rcx, qword ptr [rdi + 8]
00000001405a1844 mov      edx, r13d
00000001405a1847 mov      rax, qword ptr [rax + 0x118]
00000001405a184e call     qword ptr [rip + 0xe2aa4]
00000001405a1854 mov      rax, qword ptr [rdi + 0x18]
00000001405a1858 lea      r8, [rip + 0xc7ac1]
00000001405a185f mov      rcx, qword ptr [rdi + 8]
00000001405a1863 mov      edx, r13d
00000001405a1866 mov      rax, qword ptr [rax + 0x118]
00000001405a186d call     qword ptr [rip + 0xe2a85]
00000001405a1873 lea      rdx, [rip + 0x72c7be]
00000001405a187a jmp      0x1405aba72
00000001405a187f mov      rax, qword ptr [rdi + 0x18]
00000001405a1883 lea      r8, [rip + 0xc7a06]
00000001405a188a mov      rcx, qword ptr [rdi + 8]
00000001405a188e mov      edx, r13d
00000001405a1891 mov      rax, qword ptr [rax + 0x118]
00000001405a1898 call     qword ptr [rip + 0xe2a5a]
00000001405a189e mov      rax, qword ptr [rdi + 0x18]
00000001405a18a2 lea      r8, [rip + 0xc7a17]
00000001405a18a9 mov      rcx, qword ptr [rdi + 8]
00000001405a18ad mov      edx, r13d
00000001405a18b0 mov      rax, qword ptr [rax + 0x118]
00000001405a18b7 call     qword ptr [rip + 0xe2a3b]
00000001405a18bd lea      rdx, [rip + 0x72c764]
00000001405a18c4 jmp      0x1405aba72
00000001405a18c9 mov      rax, qword ptr [rdi + 0x18]
00000001405a18cd lea      r8, [rip + 0xc795c]
00000001405a18d4 mov      rcx, qword ptr [rdi + 8]
00000001405a18d8 mov      edx, r13d
00000001405a18db mov      rax, qword ptr [rax + 0x118]
00000001405a18e2 call     qword ptr [rip + 0xe2a10]
00000001405a18e8 mov      rax, qword ptr [rdi + 0x18]
00000001405a18ec lea      r8, [rip + 0xc796d]
00000001405a18f3 mov      rcx, qword ptr [rdi + 8]
00000001405a18f7 mov      edx, r13d
00000001405a18fa mov      rax, qword ptr [rax + 0x118]
00000001405a1901 call     qword ptr [rip + 0xe29f1]
00000001405a1907 lea      rdx, [rip + 0x72c70a]
00000001405a190e jmp      0x1405aba72
00000001405a1913 mov      rax, qword ptr [rdi + 0x18]
00000001405a1917 lea      r8, [rip + 0xc7b52]
00000001405a191e mov      rcx, qword ptr [rdi + 8]
00000001405a1922 mov      edx, r13d
00000001405a1925 mov      rax, qword ptr [rax + 0x118]
00000001405a192c call     qword ptr [rip + 0xe29c6]
00000001405a1932 mov      rax, qword ptr [rdi + 0x18]
00000001405a1936 lea      r8, [rip + 0xc7b63]
00000001405a193d mov      rcx, qword ptr [rdi + 8]
00000001405a1941 mov      edx, r13d
00000001405a1944 mov      rax, qword ptr [rax + 0x118]
00000001405a194b call     qword ptr [rip + 0xe29a7]
00000001405a1951 lea      rdx, [rip + 0x72c720]
00000001405a1958 jmp      0x1405aba72
00000001405a195d sub      ebx, 0x2f
00000001405a1960 je       0x1405a1aae
00000001405a1966 sub      ebx, r13d
00000001405a1969 je       0x1405a1a64
00000001405a196f sub      ebx, r13d
00000001405a1972 je       0x1405a1a1a
00000001405a1978 sub      ebx, r13d
00000001405a197b je       0x1405a19d0
00000001405a197d cmp      ebx, r13d
00000001405a1980 jne      0x1405ab45d
00000001405a1986 mov      rax, qword ptr [rdi + 0x18]
00000001405a198a lea      r8, [rip + 0xc7cbf]
00000001405a1991 mov      rcx, qword ptr [rdi + 8]
00000001405a1995 mov      edx, r13d
00000001405a1998 mov      rax, qword ptr [rax + 0x118]
00000001405a199f call     qword ptr [rip + 0xe2953]
00000001405a19a5 mov      rax, qword ptr [rdi + 0x18]
00000001405a19a9 lea      r8, [rip + 0xc7cd0]
00000001405a19b0 mov      rcx, qword ptr [rdi + 8]
00000001405a19b4 mov      edx, r13d
00000001405a19b7 mov      rax, qword ptr [rax + 0x118]
00000001405a19be call     qword ptr [rip + 0xe2934]
00000001405a19c4 lea      rdx, [rip + 0x72c6fd]
00000001405a19cb jmp      0x1405aba72
00000001405a19d0 mov      rax, qword ptr [rdi + 0x18]
00000001405a19d4 lea      r8, [rip + 0xc7c15]
00000001405a19db mov      rcx, qword ptr [rdi + 8]
00000001405a19df mov      edx, r13d
00000001405a19e2 mov      rax, qword ptr [rax + 0x118]
00000001405a19e9 call     qword ptr [rip + 0xe2909]
00000001405a19ef mov      rax, qword ptr [rdi + 0x18]
00000001405a19f3 lea      r8, [rip + 0xc7c26]
00000001405a19fa mov      rcx, qword ptr [rdi + 8]
00000001405a19fe mov      edx, r13d
00000001405a1a01 mov      rax, qword ptr [rax + 0x118]
00000001405a1a08 call     qword ptr [rip + 0xe28ea]
00000001405a1a0e lea      rdx, [rip + 0x72c6a3]
00000001405a1a15 jmp      0x1405aba72
00000001405a1a1a mov      rax, qword ptr [rdi + 0x18]
00000001405a1a1e lea      r8, [rip + 0xc7b6b]
00000001405a1a25 mov      rcx, qword ptr [rdi + 8]
00000001405a1a29 mov      edx, r13d
00000001405a1a2c mov      rax, qword ptr [rax + 0x118]
00000001405a1a33 call     qword ptr [rip + 0xe28bf]
00000001405a1a39 mov      rax, qword ptr [rdi + 0x18]
00000001405a1a3d lea      r8, [rip + 0xc7b7c]
00000001405a1a44 mov      rcx, qword ptr [rdi + 8]
00000001405a1a48 mov      edx, r13d
00000001405a1a4b mov      rax, qword ptr [rax + 0x118]
00000001405a1a52 call     qword ptr [rip + 0xe28a0]
00000001405a1a58 lea      rdx, [rip + 0x72c649]
00000001405a1a5f jmp      0x1405aba72
00000001405a1a64 mov      rax, qword ptr [rdi + 0x18]
00000001405a1a68 lea      r8, [rip + 0xc7ac1]
00000001405a1a6f mov      rcx, qword ptr [rdi + 8]
00000001405a1a73 mov      edx, r13d
00000001405a1a76 mov      rax, qword ptr [rax + 0x118]
00000001405a1a7d call     qword ptr [rip + 0xe2875]
00000001405a1a83 mov      rax, qword ptr [rdi + 0x18]
00000001405a1a87 lea      r8, [rip + 0xc7ad2]
00000001405a1a8e mov      rcx, qword ptr [rdi + 8]
00000001405a1a92 mov      edx, r13d
00000001405a1a95 mov      rax, qword ptr [rax + 0x118]
00000001405a1a9c call     qword ptr [rip + 0xe2856]
00000001405a1aa2 lea      rdx, [rip + 0x72c5ef]
00000001405a1aa9 jmp      0x1405aba72
00000001405a1aae mov      rax, qword ptr [rdi + 0x18]
00000001405a1ab2 lea      r8, [rip + 0xc7a17]
00000001405a1ab9 mov      rcx, qword ptr [rdi + 8]
00000001405a1abd mov      edx, r13d
00000001405a1ac0 mov      rax, qword ptr [rax + 0x118]
00000001405a1ac7 call     qword ptr [rip + 0xe282b]
00000001405a1acd mov      rax, qword ptr [rdi + 0x18]
00000001405a1ad1 lea      r8, [rip + 0xc7a28]
00000001405a1ad8 mov      rcx, qword ptr [rdi + 8]
00000001405a1adc mov      edx, r13d
00000001405a1adf mov      rax, qword ptr [rax + 0x118]
00000001405a1ae6 call     qword ptr [rip + 0xe280c]
00000001405a1aec lea      rdx, [rip + 0x72c595]
00000001405a1af3 jmp      0x1405aba72
00000001405a1af8 mov      rax, qword ptr [rdi + 0x18]
00000001405a1afc lea      r8, [rip + 0xc7bad]
00000001405a1b03 mov      rcx, qword ptr [rdi + 8]
00000001405a1b07 mov      edx, r13d
00000001405a1b0a mov      rax, qword ptr [rax + 0x118]
00000001405a1b11 call     qword ptr [rip + 0xe27e1]
00000001405a1b17 mov      rax, qword ptr [rdi + 0x18]
00000001405a1b1b lea      r8, [rip + 0xc7bbe]
00000001405a1b22 mov      rcx, qword ptr [rdi + 8]
00000001405a1b26 mov      edx, r13d
00000001405a1b29 mov      rax, qword ptr [rax + 0x118]
00000001405a1b30 call     qword ptr [rip + 0xe27c2]
00000001405a1b36 lea      rdx, [rip + 0x72c59b]
00000001405a1b3d jmp      0x1405aba72
00000001405a1b42 cmp      ebx, 0x4f
00000001405a1b45 ja       0x1405a240b
00000001405a1b4b je       0x1405a23c1
00000001405a1b51 cmp      ebx, 0x42
00000001405a1b54 ja       0x1405a1fdf
00000001405a1b5a je       0x1405a1f95
00000001405a1b60 cmp      ebx, 0x3b
00000001405a1b63 ja       0x1405a1da7
00000001405a1b69 je       0x1405a1d5d
00000001405a1b6f sub      ebx, 0x35
00000001405a1b72 je       0x1405a1d13
00000001405a1b78 sub      ebx, r13d
00000001405a1b7b je       0x1405a1cc9
00000001405a1b81 sub      ebx, r13d
00000001405a1b84 je       0x1405a1c7f
00000001405a1b8a sub      ebx, r13d
00000001405a1b8d je       0x1405a1c35
00000001405a1b93 sub      ebx, r13d
00000001405a1b96 je       0x1405a1beb
00000001405a1b98 cmp      ebx, r13d
00000001405a1b9b jne      0x1405ab45d
00000001405a1ba1 mov      rax, qword ptr [rdi + 0x18]
00000001405a1ba5 lea      r8, [rip + 0xc7d44]
00000001405a1bac mov      rcx, qword ptr [rdi + 8]
00000001405a1bb0 mov      edx, r13d
00000001405a1bb3 mov      rax, qword ptr [rax + 0x118]
00000001405a1bba call     qword ptr [rip + 0xe2738]
00000001405a1bc0 mov      rax, qword ptr [rdi + 0x18]
00000001405a1bc4 lea      r8, [rip + 0xc7d55]
00000001405a1bcb mov      rcx, qword ptr [rdi + 8]
00000001405a1bcf mov      edx, r13d
00000001405a1bd2 mov      rax, qword ptr [rax + 0x118]
00000001405a1bd9 call     qword ptr [rip + 0xe2719]
00000001405a1bdf lea      rdx, [rip + 0x72c552]
00000001405a1be6 jmp      0x1405aba72
00000001405a1beb mov      rax, qword ptr [rdi + 0x18]
00000001405a1bef lea      r8, [rip + 0xc7c9a]
00000001405a1bf6 mov      rcx, qword ptr [rdi + 8]
00000001405a1bfa mov      edx, r13d
00000001405a1bfd mov      rax, qword ptr [rax + 0x118]
00000001405a1c04 call     qword ptr [rip + 0xe26ee]
00000001405a1c0a mov      rax, qword ptr [rdi + 0x18]
00000001405a1c0e lea      r8, [rip + 0xc7cab]
00000001405a1c15 mov      rcx, qword ptr [rdi + 8]
00000001405a1c19 mov      edx, r13d
00000001405a1c1c mov      rax, qword ptr [rax + 0x118]
00000001405a1c23 call     qword ptr [rip + 0xe26cf]
00000001405a1c29 lea      rdx, [rip + 0x72c4f8]
00000001405a1c30 jmp      0x1405aba72
00000001405a1c35 mov      rax, qword ptr [rdi + 0x18]
00000001405a1c39 lea      r8, [rip + 0xc7bf0]
00000001405a1c40 mov      rcx, qword ptr [rdi + 8]
00000001405a1c44 mov      edx, r13d
00000001405a1c47 mov      rax, qword ptr [rax + 0x118]
00000001405a1c4e call     qword ptr [rip + 0xe26a4]
00000001405a1c54 mov      rax, qword ptr [rdi + 0x18]
00000001405a1c58 lea      r8, [rip + 0xc7c01]
00000001405a1c5f mov      rcx, qword ptr [rdi + 8]
00000001405a1c63 mov      edx, r13d
00000001405a1c66 mov      rax, qword ptr [rax + 0x118]
00000001405a1c6d call     qword ptr [rip + 0xe2685]
00000001405a1c73 lea      rdx, [rip + 0x72c49e]
00000001405a1c7a jmp      0x1405aba72
00000001405a1c7f mov      rax, qword ptr [rdi + 0x18]
00000001405a1c83 lea      r8, [rip + 0xc7b46]
00000001405a1c8a mov      rcx, qword ptr [rdi + 8]
00000001405a1c8e mov      edx, r13d
00000001405a1c91 mov      rax, qword ptr [rax + 0x118]
00000001405a1c98 call     qword ptr [rip + 0xe265a]
00000001405a1c9e mov      rax, qword ptr [rdi + 0x18]
00000001405a1ca2 lea      r8, [rip + 0xc7b57]
00000001405a1ca9 mov      rcx, qword ptr [rdi + 8]
00000001405a1cad mov      edx, r13d
00000001405a1cb0 mov      rax, qword ptr [rax + 0x118]
00000001405a1cb7 call     qword ptr [rip + 0xe263b]
00000001405a1cbd lea      rdx, [rip + 0x72c444]
00000001405a1cc4 jmp      0x1405aba72
00000001405a1cc9 mov      rax, qword ptr [rdi + 0x18]
00000001405a1ccd lea      r8, [rip + 0xc7a9c]
00000001405a1cd4 mov      rcx, qword ptr [rdi + 8]
00000001405a1cd8 mov      edx, r13d
00000001405a1cdb mov      rax, qword ptr [rax + 0x118]
00000001405a1ce2 call     qword ptr [rip + 0xe2610]
00000001405a1ce8 mov      rax, qword ptr [rdi + 0x18]
00000001405a1cec lea      r8, [rip + 0xc7aad]
00000001405a1cf3 mov      rcx, qword ptr [rdi + 8]
00000001405a1cf7 mov      edx, r13d
00000001405a1cfa mov      rax, qword ptr [rax + 0x118]
00000001405a1d01 call     qword ptr [rip + 0xe25f1]
00000001405a1d07 lea      rdx, [rip + 0x72c3ea]
00000001405a1d0e jmp      0x1405aba72
00000001405a1d13 mov      rax, qword ptr [rdi + 0x18]
00000001405a1d17 lea      r8, [rip + 0xc79f2]
00000001405a1d1e mov      rcx, qword ptr [rdi + 8]
00000001405a1d22 mov      edx, r13d
00000001405a1d25 mov      rax, qword ptr [rax + 0x118]
00000001405a1d2c call     qword ptr [rip + 0xe25c6]
00000001405a1d32 mov      rax, qword ptr [rdi + 0x18]
00000001405a1d36 lea      r8, [rip + 0xc7a03]
00000001405a1d3d mov      rcx, qword ptr [rdi + 8]
00000001405a1d41 mov      edx, r13d
00000001405a1d44 mov      rax, qword ptr [rax + 0x118]
00000001405a1d4b call     qword ptr [rip + 0xe25a7]
00000001405a1d51 lea      rdx, [rip + 0x72c390]
00000001405a1d58 jmp      0x1405aba72
00000001405a1d5d mov      rax, qword ptr [rdi + 0x18]
00000001405a1d61 lea      r8, [rip + 0xdc1a8]
00000001405a1d68 mov      rcx, qword ptr [rdi + 8]
00000001405a1d6c mov      edx, r13d
00000001405a1d6f mov      rax, qword ptr [rax + 0x118]
00000001405a1d76 call     qword ptr [rip + 0xe257c]
00000001405a1d7c mov      rax, qword ptr [rdi + 0x18]
00000001405a1d80 lea      r8, [rip + 0xdc1b9]
00000001405a1d87 mov      rcx, qword ptr [rdi + 8]
00000001405a1d8b mov      edx, r13d
00000001405a1d8e mov      rax, qword ptr [rax + 0x118]
00000001405a1d95 call     qword ptr [rip + 0xe255d]
00000001405a1d9b lea      rdx, [rip + 0x72c3a6]
00000001405a1da2 jmp      0x1405aba72
00000001405a1da7 sub      ebx, 0x3c
00000001405a1daa je       0x1405a1f4b
00000001405a1db0 sub      ebx, r13d
00000001405a1db3 je       0x1405a1f01
00000001405a1db9 sub      ebx, r13d
00000001405a1dbc je       0x1405a1eb7
00000001405a1dc2 sub      ebx, r13d
00000001405a1dc5 je       0x1405a1e6d
00000001405a1dcb sub      ebx, r13d
00000001405a1dce je       0x1405a1e23
00000001405a1dd0 cmp      ebx, r13d
00000001405a1dd3 jne      0x1405ab45d
00000001405a1dd9 mov      rax, qword ptr [rdi + 0x18]
00000001405a1ddd lea      r8, [rip + 0xc7d4c]
00000001405a1de4 mov      rcx, qword ptr [rdi + 8]
00000001405a1de8 mov      edx, r13d
00000001405a1deb mov      rax, qword ptr [rax + 0x118]
00000001405a1df2 call     qword ptr [rip + 0xe2500]
00000001405a1df8 mov      rax, qword ptr [rdi + 0x18]
00000001405a1dfc lea      r8, [rip + 0xc7d5d]
00000001405a1e03 mov      rcx, qword ptr [rdi + 8]
00000001405a1e07 mov      edx, r13d
00000001405a1e0a mov      rax, qword ptr [rax + 0x118]
00000001405a1e11 call     qword ptr [rip + 0xe24e1]
00000001405a1e17 lea      rdx, [rip + 0x72c38a]
00000001405a1e1e jmp      0x1405aba72
00000001405a1e23 mov      rax, qword ptr [rdi + 0x18]
00000001405a1e27 lea      r8, [rip + 0xc7ca2]
00000001405a1e2e mov      rcx, qword ptr [rdi + 8]
00000001405a1e32 mov      edx, r13d
00000001405a1e35 mov      rax, qword ptr [rax + 0x118]
00000001405a1e3c call     qword ptr [rip + 0xe24b6]
00000001405a1e42 mov      rax, qword ptr [rdi + 0x18]
00000001405a1e46 lea      r8, [rip + 0xc7cb3]
00000001405a1e4d mov      rcx, qword ptr [rdi + 8]
00000001405a1e51 mov      edx, r13d
00000001405a1e54 mov      rax, qword ptr [rax + 0x118]
00000001405a1e5b call     qword ptr [rip + 0xe2497]
00000001405a1e61 lea      rdx, [rip + 0x72c330]
00000001405a1e68 jmp      0x1405aba72
00000001405a1e6d mov      rax, qword ptr [rdi + 0x18]
00000001405a1e71 lea      r8, [rip + 0xc7bf8]
00000001405a1e78 mov      rcx, qword ptr [rdi + 8]
00000001405a1e7c mov      edx, r13d
00000001405a1e7f mov      rax, qword ptr [rax + 0x118]
00000001405a1e86 call     qword ptr [rip + 0xe246c]
00000001405a1e8c mov      rax, qword ptr [rdi + 0x18]
00000001405a1e90 lea      r8, [rip + 0xc7c09]
00000001405a1e97 mov      rcx, qword ptr [rdi + 8]
00000001405a1e9b mov      edx, r13d
00000001405a1e9e mov      rax, qword ptr [rax + 0x118]
00000001405a1ea5 call     qword ptr [rip + 0xe244d]
00000001405a1eab lea      rdx, [rip + 0x72c2d6]
00000001405a1eb2 jmp      0x1405aba72
00000001405a1eb7 mov      rax, qword ptr [rdi + 0x18]
00000001405a1ebb lea      r8, [rip + 0xc7b4e]
00000001405a1ec2 mov      rcx, qword ptr [rdi + 8]
00000001405a1ec6 mov      edx, r13d
00000001405a1ec9 mov      rax, qword ptr [rax + 0x118]
00000001405a1ed0 call     qword ptr [rip + 0xe2422]
00000001405a1ed6 mov      rax, qword ptr [rdi + 0x18]
00000001405a1eda lea      r8, [rip + 0xc7b5f]
00000001405a1ee1 mov      rcx, qword ptr [rdi + 8]
00000001405a1ee5 mov      edx, r13d
00000001405a1ee8 mov      rax, qword ptr [rax + 0x118]
00000001405a1eef call     qword ptr [rip + 0xe2403]
00000001405a1ef5 lea      rdx, [rip + 0x72c27c]
00000001405a1efc jmp      0x1405aba72
00000001405a1f01 mov      rax, qword ptr [rdi + 0x18]
00000001405a1f05 lea      r8, [rip + 0xc7aa4]
00000001405a1f0c mov      rcx, qword ptr [rdi + 8]
00000001405a1f10 mov      edx, r13d
00000001405a1f13 mov      rax, qword ptr [rax + 0x118]
00000001405a1f1a call     qword ptr [rip + 0xe23d8]
00000001405a1f20 mov      rax, qword ptr [rdi + 0x18]
00000001405a1f24 lea      r8, [rip + 0xc7ab5]
00000001405a1f2b mov      rcx, qword ptr [rdi + 8]
00000001405a1f2f mov      edx, r13d
00000001405a1f32 mov      rax, qword ptr [rax + 0x118]
00000001405a1f39 call     qword ptr [rip + 0xe23b9]
00000001405a1f3f lea      rdx, [rip + 0x72c222]
00000001405a1f46 jmp      0x1405aba72
00000001405a1f4b mov      rax, qword ptr [rdi + 0x18]
00000001405a1f4f lea      r8, [rip + 0xc79fa]
00000001405a1f56 mov      rcx, qword ptr [rdi + 8]
00000001405a1f5a mov      edx, r13d
00000001405a1f5d mov      rax, qword ptr [rax + 0x118]
00000001405a1f64 call     qword ptr [rip + 0xe238e]
00000001405a1f6a mov      rax, qword ptr [rdi + 0x18]
00000001405a1f6e lea      r8, [rip + 0xc7a0b]
00000001405a1f75 mov      rcx, qword ptr [rdi + 8]
00000001405a1f79 mov      edx, r13d
00000001405a1f7c mov      rax, qword ptr [rax + 0x118]
00000001405a1f83 call     qword ptr [rip + 0xe236f]
00000001405a1f89 lea      rdx, [rip + 0x72c1c8]
00000001405a1f90 jmp      0x1405aba72
00000001405a1f95 mov      rax, qword ptr [rdi + 0x18]
00000001405a1f99 lea      r8, [rip + 0xc7bf0]
00000001405a1fa0 mov      rcx, qword ptr [rdi + 8]
00000001405a1fa4 mov      edx, r13d
00000001405a1fa7 mov      rax, qword ptr [rax + 0x118]
00000001405a1fae call     qword ptr [rip + 0xe2344]
00000001405a1fb4 mov      rax, qword ptr [rdi + 0x18]
00000001405a1fb8 lea      r8, [rip + 0xc7c01]
00000001405a1fbf mov      rcx, qword ptr [rdi + 8]
00000001405a1fc3 mov      edx, r13d
00000001405a1fc6 mov      rax, qword ptr [rax + 0x118]
00000001405a1fcd call     qword ptr [rip + 0xe2325]
00000001405a1fd3 lea      rdx, [rip + 0x72c1de]
00000001405a1fda jmp      0x1405aba72
00000001405a1fdf cmp      ebx, 0x49
00000001405a1fe2 ja       0x1405a2226
00000001405a1fe8 je       0x1405a21dc
00000001405a1fee sub      ebx, 0x43
00000001405a1ff1 je       0x1405a2192
00000001405a1ff7 sub      ebx, r13d
00000001405a1ffa je       0x1405a2148
00000001405a2000 sub      ebx, r13d
00000001405a2003 je       0x1405a20fe
00000001405a2009 sub      ebx, r13d
00000001405a200c je       0x1405a20b4
00000001405a2012 sub      ebx, r13d
00000001405a2015 je       0x1405a206a
00000001405a2017 cmp      ebx, r13d
00000001405a201a jne      0x1405ab45d
00000001405a2020 mov      rax, qword ptr [rdi + 0x18]
00000001405a2024 lea      r8, [rip + 0xc7da5]
00000001405a202b mov      rcx, qword ptr [rdi + 8]
00000001405a202f mov      edx, r13d
00000001405a2032 mov      rax, qword ptr [rax + 0x118]
00000001405a2039 call     qword ptr [rip + 0xe22b9]
00000001405a203f mov      rax, qword ptr [rdi + 0x18]
00000001405a2043 lea      r8, [rip + 0xc7db6]
00000001405a204a mov      rcx, qword ptr [rdi + 8]
00000001405a204e mov      edx, r13d
00000001405a2051 mov      rax, qword ptr [rax + 0x118]
00000001405a2058 call     qword ptr [rip + 0xe229a]
00000001405a205e lea      rdx, [rip + 0x72c1b3]
00000001405a2065 jmp      0x1405aba72
00000001405a206a mov      rax, qword ptr [rdi + 0x18]
00000001405a206e lea      r8, [rip + 0xc7cfb]
00000001405a2075 mov      rcx, qword ptr [rdi + 8]
00000001405a2079 mov      edx, r13d
00000001405a207c mov      rax, qword ptr [rax + 0x118]
00000001405a2083 call     qword ptr [rip + 0xe226f]
00000001405a2089 mov      rax, qword ptr [rdi + 0x18]
00000001405a208d lea      r8, [rip + 0xc7d0c]
00000001405a2094 mov      rcx, qword ptr [rdi + 8]
00000001405a2098 mov      edx, r13d
00000001405a209b mov      rax, qword ptr [rax + 0x118]
00000001405a20a2 call     qword ptr [rip + 0xe2250]
00000001405a20a8 lea      rdx, [rip + 0x72c159]
00000001405a20af jmp      0x1405aba72
00000001405a20b4 mov      rax, qword ptr [rdi + 0x18]
00000001405a20b8 lea      r8, [rip + 0xc7c51]
00000001405a20bf mov      rcx, qword ptr [rdi + 8]
00000001405a20c3 mov      edx, r13d
00000001405a20c6 mov      rax, qword ptr [rax + 0x118]
00000001405a20cd call     qword ptr [rip + 0xe2225]
00000001405a20d3 mov      rax, qword ptr [rdi + 0x18]
00000001405a20d7 lea      r8, [rip + 0xc7c62]
00000001405a20de mov      rcx, qword ptr [rdi + 8]
00000001405a20e2 mov      edx, r13d
00000001405a20e5 mov      rax, qword ptr [rax + 0x118]
00000001405a20ec call     qword ptr [rip + 0xe2206]
00000001405a20f2 lea      rdx, [rip + 0x72c0ff]
00000001405a20f9 jmp      0x1405aba72
00000001405a20fe mov      rax, qword ptr [rdi + 0x18]
00000001405a2102 lea      r8, [rip + 0xc7ba7]
00000001405a2109 mov      rcx, qword ptr [rdi + 8]
00000001405a210d mov      edx, r13d
00000001405a2110 mov      rax, qword ptr [rax + 0x118]
00000001405a2117 call     qword ptr [rip + 0xe21db]
00000001405a211d mov      rax, qword ptr [rdi + 0x18]
00000001405a2121 lea      r8, [rip + 0xc7bb8]
00000001405a2128 mov      rcx, qword ptr [rdi + 8]
00000001405a212c mov      edx, r13d
00000001405a212f mov      rax, qword ptr [rax + 0x118]
00000001405a2136 call     qword ptr [rip + 0xe21bc]
00000001405a213c lea      rdx, [rip + 0x72c0a5]
00000001405a2143 jmp      0x1405aba72
00000001405a2148 mov      rax, qword ptr [rdi + 0x18]
00000001405a214c lea      r8, [rip + 0xc7afd]
00000001405a2153 mov      rcx, qword ptr [rdi + 8]
00000001405a2157 mov      edx, r13d
00000001405a215a mov      rax, qword ptr [rax + 0x118]
00000001405a2161 call     qword ptr [rip + 0xe2191]
00000001405a2167 mov      rax, qword ptr [rdi + 0x18]
00000001405a216b lea      r8, [rip + 0xc7b0e]
00000001405a2172 mov      rcx, qword ptr [rdi + 8]
00000001405a2176 mov      edx, r13d
00000001405a2179 mov      rax, qword ptr [rax + 0x118]
00000001405a2180 call     qword ptr [rip + 0xe2172]
00000001405a2186 lea      rdx, [rip + 0x72c04b]
00000001405a218d jmp      0x1405aba72
00000001405a2192 mov      rax, qword ptr [rdi + 0x18]
00000001405a2196 lea      r8, [rip + 0xc7a53]
00000001405a219d mov      rcx, qword ptr [rdi + 8]
00000001405a21a1 mov      edx, r13d
00000001405a21a4 mov      rax, qword ptr [rax + 0x118]
00000001405a21ab call     qword ptr [rip + 0xe2147]
00000001405a21b1 mov      rax, qword ptr [rdi + 0x18]
00000001405a21b5 lea      r8, [rip + 0xc7a64]
00000001405a21bc mov      rcx, qword ptr [rdi + 8]
00000001405a21c0 mov      edx, r13d
00000001405a21c3 mov      rax, qword ptr [rax + 0x118]
00000001405a21ca call     qword ptr [rip + 0xe2128]
00000001405a21d0 lea      rdx, [rip + 0x72bff1]
00000001405a21d7 jmp      0x1405aba72
00000001405a21dc mov      rax, qword ptr [rdi + 0x18]
00000001405a21e0 lea      r8, [rip + 0xc7c49]
00000001405a21e7 mov      rcx, qword ptr [rdi + 8]
00000001405a21eb mov      edx, r13d
00000001405a21ee mov      rax, qword ptr [rax + 0x118]
00000001405a21f5 call     qword ptr [rip + 0xe20fd]
00000001405a21fb mov      rax, qword ptr [rdi + 0x18]
00000001405a21ff lea      r8, [rip + 0xc7c5a]
00000001405a2206 mov      rcx, qword ptr [rdi + 8]
00000001405a220a mov      edx, r13d
00000001405a220d mov      rax, qword ptr [rax + 0x118]
00000001405a2214 call     qword ptr [rip + 0xe20de]
00000001405a221a lea      rdx, [rip + 0x72c007]
00000001405a2221 jmp      0x1405aba72
00000001405a2226 sub      ebx, 0x4a
00000001405a2229 je       0x1405a2377
00000001405a222f sub      ebx, r13d
00000001405a2232 je       0x1405a232d
00000001405a2238 sub      ebx, r13d
00000001405a223b je       0x1405a22e3
00000001405a2241 sub      ebx, r13d
00000001405a2244 je       0x1405a2299
00000001405a2246 cmp      ebx, r13d
00000001405a2249 jne      0x1405ab45d
00000001405a224f mov      rax, qword ptr [rdi + 0x18]
00000001405a2253 lea      r8, [rip + 0xc7db6]
00000001405a225a mov      rcx, qword ptr [rdi + 8]
00000001405a225e mov      edx, r13d
00000001405a2261 mov      rax, qword ptr [rax + 0x118]
00000001405a2268 call     qword ptr [rip + 0xe208a]
00000001405a226e mov      rax, qword ptr [rdi + 0x18]
00000001405a2272 lea      r8, [rip + 0xc7dc7]
00000001405a2279 mov      rcx, qword ptr [rdi + 8]
00000001405a227d mov      edx, r13d
00000001405a2280 mov      rax, qword ptr [rax + 0x118]
00000001405a2287 call     qword ptr [rip + 0xe206b]
00000001405a228d lea      rdx, [rip + 0x72bfe4]
00000001405a2294 jmp      0x1405aba72
00000001405a2299 mov      rax, qword ptr [rdi + 0x18]
00000001405a229d lea      r8, [rip + 0xc7d0c]
00000001405a22a4 mov      rcx, qword ptr [rdi + 8]
00000001405a22a8 mov      edx, r13d
00000001405a22ab mov      rax, qword ptr [rax + 0x118]
00000001405a22b2 call     qword ptr [rip + 0xe2040]
00000001405a22b8 mov      rax, qword ptr [rdi + 0x18]
00000001405a22bc lea      r8, [rip + 0xc7d1d]
00000001405a22c3 mov      rcx, qword ptr [rdi + 8]
00000001405a22c7 mov      edx, r13d
00000001405a22ca mov      rax, qword ptr [rax + 0x118]
00000001405a22d1 call     qword ptr [rip + 0xe2021]
00000001405a22d7 lea      rdx, [rip + 0x72bf8a]
00000001405a22de jmp      0x1405aba72
00000001405a22e3 mov      rax, qword ptr [rdi + 0x18]
00000001405a22e7 lea      r8, [rip + 0xc7c62]
00000001405a22ee mov      rcx, qword ptr [rdi + 8]
00000001405a22f2 mov      edx, r13d
00000001405a22f5 mov      rax, qword ptr [rax + 0x118]
00000001405a22fc call     qword ptr [rip + 0xe1ff6]
00000001405a2302 mov      rax, qword ptr [rdi + 0x18]
00000001405a2306 lea      r8, [rip + 0xc7c73]
00000001405a230d mov      rcx, qword ptr [rdi + 8]
00000001405a2311 mov      edx, r13d
00000001405a2314 mov      rax, qword ptr [rax + 0x118]
00000001405a231b call     qword ptr [rip + 0xe1fd7]
00000001405a2321 lea      rdx, [rip + 0x72bf30]
00000001405a2328 jmp      0x1405aba72
00000001405a232d mov      rax, qword ptr [rdi + 0x18]
00000001405a2331 lea      r8, [rip + 0xc7bb8]
00000001405a2338 mov      rcx, qword ptr [rdi + 8]
00000001405a233c mov      edx, r13d
00000001405a233f mov      rax, qword ptr [rax + 0x118]
00000001405a2346 call     qword ptr [rip + 0xe1fac]
00000001405a234c mov      rax, qword ptr [rdi + 0x18]
00000001405a2350 lea      r8, [rip + 0xc7bc9]
00000001405a2357 mov      rcx, qword ptr [rdi + 8]
00000001405a235b mov      edx, r13d
00000001405a235e mov      rax, qword ptr [rax + 0x118]
00000001405a2365 call     qword ptr [rip + 0xe1f8d]
00000001405a236b lea      rdx, [rip + 0x72bed6]
00000001405a2372 jmp      0x1405aba72
00000001405a2377 mov      rax, qword ptr [rdi + 0x18]
00000001405a237b lea      r8, [rip + 0xc7b0e]
00000001405a2382 mov      rcx, qword ptr [rdi + 8]
00000001405a2386 mov      edx, r13d
00000001405a2389 mov      rax, qword ptr [rax + 0x118]
00000001405a2390 call     qword ptr [rip + 0xe1f62]
00000001405a2396 mov      rax, qword ptr [rdi + 0x18]
00000001405a239a lea      r8, [rip + 0xc7b1f]
00000001405a23a1 mov      rcx, qword ptr [rdi + 8]
00000001405a23a5 mov      edx, r13d
00000001405a23a8 mov      rax, qword ptr [rax + 0x118]
00000001405a23af call     qword ptr [rip + 0xe1f43]
00000001405a23b5 lea      rdx, [rip + 0x72be7c]
00000001405a23bc jmp      0x1405aba72
00000001405a23c1 mov      rax, qword ptr [rdi + 0x18]
00000001405a23c5 lea      r8, [rip + 0xdbba4]
00000001405a23cc mov      rcx, qword ptr [rdi + 8]
00000001405a23d0 mov      edx, r13d
00000001405a23d3 mov      rax, qword ptr [rax + 0x118]
00000001405a23da call     qword ptr [rip + 0xe1f18]
00000001405a23e0 mov      rax, qword ptr [rdi + 0x18]
00000001405a23e4 lea      r8, [rip + 0xdbbb5]
00000001405a23eb mov      rcx, qword ptr [rdi + 8]
00000001405a23ef mov      edx, r13d
00000001405a23f2 mov      rax, qword ptr [rax + 0x118]
00000001405a23f9 call     qword ptr [rip + 0xe1ef9]
00000001405a23ff lea      rdx, [rip + 0x72be82]
00000001405a2406 jmp      0x1405aba72
00000001405a240b cmp      ebx, 0x5c
00000001405a240e ja       0x1405a293c
00000001405a2414 je       0x1405a27fc
00000001405a241a cmp      ebx, 0x56
00000001405a241d ja       0x1405a2661
00000001405a2423 je       0x1405a2617
00000001405a2429 sub      ebx, 0x50
00000001405a242c je       0x1405a25cd
00000001405a2432 sub      ebx, r13d
00000001405a2435 je       0x1405a2583
00000001405a243b sub      ebx, r13d
00000001405a243e je       0x1405a2539
00000001405a2444 sub      ebx, r13d
00000001405a2447 je       0x1405a24ef
00000001405a244d sub      ebx, r13d
00000001405a2450 je       0x1405a24a5
00000001405a2452 cmp      ebx, r13d
00000001405a2455 jne      0x1405ab45d
00000001405a245b mov      rax, qword ptr [rdi + 0x18]
00000001405a245f lea      r8, [rip + 0xc7dea]
00000001405a2466 mov      rcx, qword ptr [rdi + 8]
00000001405a246a mov      edx, r13d
00000001405a246d mov      rax, qword ptr [rax + 0x118]
00000001405a2474 call     qword ptr [rip + 0xe1e7e]
00000001405a247a mov      rax, qword ptr [rdi + 0x18]
00000001405a247e lea      r8, [rip + 0xc7dfb]
00000001405a2485 mov      rcx, qword ptr [rdi + 8]
00000001405a2489 mov      edx, r13d
00000001405a248c mov      rax, qword ptr [rax + 0x118]
00000001405a2493 call     qword ptr [rip + 0xe1e5f]
00000001405a2499 lea      rdx, [rip + 0x72be48]
00000001405a24a0 jmp      0x1405aba72
00000001405a24a5 mov      rax, qword ptr [rdi + 0x18]
00000001405a24a9 lea      r8, [rip + 0xc7d40]
00000001405a24b0 mov      rcx, qword ptr [rdi + 8]
00000001405a24b4 mov      edx, r13d
00000001405a24b7 mov      rax, qword ptr [rax + 0x118]
00000001405a24be call     qword ptr [rip + 0xe1e34]
00000001405a24c4 mov      rax, qword ptr [rdi + 0x18]
00000001405a24c8 lea      r8, [rip + 0xc7d51]
00000001405a24cf mov      rcx, qword ptr [rdi + 8]
00000001405a24d3 mov      edx, r13d
00000001405a24d6 mov      rax, qword ptr [rax + 0x118]
00000001405a24dd call     qword ptr [rip + 0xe1e15]
00000001405a24e3 lea      rdx, [rip + 0x72bdee]
00000001405a24ea jmp      0x1405aba72
00000001405a24ef mov      rax, qword ptr [rdi + 0x18]
00000001405a24f3 lea      r8, [rip + 0xc7c96]
00000001405a24fa mov      rcx, qword ptr [rdi + 8]
00000001405a24fe mov      edx, r13d
00000001405a2501 mov      rax, qword ptr [rax + 0x118]
00000001405a2508 call     qword ptr [rip + 0xe1dea]
00000001405a250e mov      rax, qword ptr [rdi + 0x18]
00000001405a2512 lea      r8, [rip + 0xc7ca7]
00000001405a2519 mov      rcx, qword ptr [rdi + 8]
00000001405a251d mov      edx, r13d
00000001405a2520 mov      rax, qword ptr [rax + 0x118]
00000001405a2527 call     qword ptr [rip + 0xe1dcb]
00000001405a252d lea      rdx, [rip + 0x72bd94]
00000001405a2534 jmp      0x1405aba72
00000001405a2539 mov      rax, qword ptr [rdi + 0x18]
00000001405a253d lea      r8, [rip + 0xc7bec]
00000001405a2544 mov      rcx, qword ptr [rdi + 8]
00000001405a2548 mov      edx, r13d
00000001405a254b mov      rax, qword ptr [rax + 0x118]
00000001405a2552 call     qword ptr [rip + 0xe1da0]
00000001405a2558 mov      rax, qword ptr [rdi + 0x18]
00000001405a255c lea      r8, [rip + 0xc7bfd]
00000001405a2563 mov      rcx, qword ptr [rdi + 8]
00000001405a2567 mov      edx, r13d
00000001405a256a mov      rax, qword ptr [rax + 0x118]
00000001405a2571 call     qword ptr [rip + 0xe1d81]
00000001405a2577 lea      rdx, [rip + 0x72bd3a]
00000001405a257e jmp      0x1405aba72
00000001405a2583 mov      rax, qword ptr [rdi + 0x18]
00000001405a2587 lea      r8, [rip + 0xc7b42]
00000001405a258e mov      rcx, qword ptr [rdi + 8]
00000001405a2592 mov      edx, r13d
00000001405a2595 mov      rax, qword ptr [rax + 0x118]
00000001405a259c call     qword ptr [rip + 0xe1d56]
00000001405a25a2 mov      rax, qword ptr [rdi + 0x18]
00000001405a25a6 lea      r8, [rip + 0xc7b53]
00000001405a25ad mov      rcx, qword ptr [rdi + 8]
00000001405a25b1 mov      edx, r13d
00000001405a25b4 mov      rax, qword ptr [rax + 0x118]
00000001405a25bb call     qword ptr [rip + 0xe1d37]
00000001405a25c1 lea      rdx, [rip + 0x72bce0]
00000001405a25c8 jmp      0x1405aba72
00000001405a25cd mov      rax, qword ptr [rdi + 0x18]
00000001405a25d1 lea      r8, [rip + 0xc7a98]
00000001405a25d8 mov      rcx, qword ptr [rdi + 8]
00000001405a25dc mov      edx, r13d
00000001405a25df mov      rax, qword ptr [rax + 0x118]
00000001405a25e6 call     qword ptr [rip + 0xe1d0c]
00000001405a25ec mov      rax, qword ptr [rdi + 0x18]
00000001405a25f0 lea      r8, [rip + 0xc7aa9]
00000001405a25f7 mov      rcx, qword ptr [rdi + 8]
00000001405a25fb mov      edx, r13d
00000001405a25fe mov      rax, qword ptr [rax + 0x118]
00000001405a2605 call     qword ptr [rip + 0xe1ced]
00000001405a260b lea      rdx, [rip + 0x72bc86]
00000001405a2612 jmp      0x1405aba72
00000001405a2617 mov      rax, qword ptr [rdi + 0x18]
00000001405a261b lea      r8, [rip + 0xc7c8e]
00000001405a2622 mov      rcx, qword ptr [rdi + 8]
00000001405a2626 mov      edx, r13d
00000001405a2629 mov      rax, qword ptr [rax + 0x118]
00000001405a2630 call     qword ptr [rip + 0xe1cc2]
00000001405a2636 mov      rax, qword ptr [rdi + 0x18]
00000001405a263a lea      r8, [rip + 0xc7c9f]
00000001405a2641 mov      rcx, qword ptr [rdi + 8]
00000001405a2645 mov      edx, r13d
00000001405a2648 mov      rax, qword ptr [rax + 0x118]
00000001405a264f call     qword ptr [rip + 0xe1ca3]
00000001405a2655 lea      rdx, [rip + 0x72bc9c]
00000001405a265c jmp      0x1405aba72
00000001405a2661 sub      ebx, 0x57
00000001405a2664 je       0x1405a27b2
00000001405a266a sub      ebx, r13d
00000001405a266d je       0x1405a2768
00000001405a2673 sub      ebx, r13d
00000001405a2676 je       0x1405a271e
00000001405a267c sub      ebx, r13d
00000001405a267f je       0x1405a26d4
00000001405a2681 cmp      ebx, r13d
00000001405a2684 jne      0x1405ab45d
00000001405a268a mov      rax, qword ptr [rdi + 0x18]
00000001405a268e lea      r8, [rip + 0xc7dfb]
00000001405a2695 mov      rcx, qword ptr [rdi + 8]
00000001405a2699 mov      edx, r13d
00000001405a269c mov      rax, qword ptr [rax + 0x118]
00000001405a26a3 call     qword ptr [rip + 0xe1c4f]
00000001405a26a9 mov      rax, qword ptr [rdi + 0x18]
00000001405a26ad lea      r8, [rip + 0xc7e0c]
00000001405a26b4 mov      rcx, qword ptr [rdi + 8]
00000001405a26b8 mov      edx, r13d
00000001405a26bb mov      rax, qword ptr [rax + 0x118]
00000001405a26c2 call     qword ptr [rip + 0xe1c30]
00000001405a26c8 lea      rdx, [rip + 0x72bc79]
00000001405a26cf jmp      0x1405aba72
00000001405a26d4 mov      rax, qword ptr [rdi + 0x18]
00000001405a26d8 lea      r8, [rip + 0xc7d51]
00000001405a26df mov      rcx, qword ptr [rdi + 8]
00000001405a26e3 mov      edx, r13d
00000001405a26e6 mov      rax, qword ptr [rax + 0x118]
00000001405a26ed call     qword ptr [rip + 0xe1c05]
00000001405a26f3 mov      rax, qword ptr [rdi + 0x18]
00000001405a26f7 lea      r8, [rip + 0xc7d62]
00000001405a26fe mov      rcx, qword ptr [rdi + 8]
00000001405a2702 mov      edx, r13d
00000001405a2705 mov      rax, qword ptr [rax + 0x118]
00000001405a270c call     qword ptr [rip + 0xe1be6]
00000001405a2712 lea      rdx, [rip + 0x72bc1f]
00000001405a2719 jmp      0x1405aba72
00000001405a271e mov      rax, qword ptr [rdi + 0x18]
00000001405a2722 lea      r8, [rip + 0xc7ca7]
00000001405a2729 mov      rcx, qword ptr [rdi + 8]
00000001405a272d mov      edx, r13d
00000001405a2730 mov      rax, qword ptr [rax + 0x118]
00000001405a2737 call     qword ptr [rip + 0xe1bbb]
00000001405a273d mov      rax, qword ptr [rdi + 0x18]
00000001405a2741 lea      r8, [rip + 0xc7cb8]
00000001405a2748 mov      rcx, qword ptr [rdi + 8]
00000001405a274c mov      edx, r13d
00000001405a274f mov      rax, qword ptr [rax + 0x118]
00000001405a2756 call     qword ptr [rip + 0xe1b9c]
00000001405a275c lea      rdx, [rip + 0x72bbc5]
00000001405a2763 jmp      0x1405aba72
00000001405a2768 mov      rax, qword ptr [rdi + 0x18]
00000001405a276c lea      r8, [rip + 0xc7bfd]
00000001405a2773 mov      rcx, qword ptr [rdi + 8]
00000001405a2777 mov      edx, r13d
00000001405a277a mov      rax, qword ptr [rax + 0x118]
00000001405a2781 call     qword ptr [rip + 0xe1b71]
00000001405a2787 mov      rax, qword ptr [rdi + 0x18]
00000001405a278b lea      r8, [rip + 0xc7c0e]
00000001405a2792 mov      rcx, qword ptr [rdi + 8]
00000001405a2796 mov      edx, r13d
00000001405a2799 mov      rax, qword ptr [rax + 0x118]
00000001405a27a0 call     qword ptr [rip + 0xe1b52]
00000001405a27a6 lea      rdx, [rip + 0x72bb6b]
00000001405a27ad jmp      0x1405aba72
00000001405a27b2 mov      rax, qword ptr [rdi + 0x18]
00000001405a27b6 lea      r8, [rip + 0xc7b53]
00000001405a27bd mov      rcx, qword ptr [rdi + 8]
00000001405a27c1 mov      edx, r13d
00000001405a27c4 mov      rax, qword ptr [rax + 0x118]
00000001405a27cb call     qword ptr [rip + 0xe1b27]
00000001405a27d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a27d5 lea      r8, [rip + 0xc7b64]
00000001405a27dc mov      rcx, qword ptr [rdi + 8]
00000001405a27e0 mov      edx, r13d
00000001405a27e3 mov      rax, qword ptr [rax + 0x118]
00000001405a27ea call     qword ptr [rip + 0xe1b08]
00000001405a27f0 lea      rdx, [rip + 0x72bb11]
00000001405a27f7 jmp      0x1405aba72
00000001405a27fc mov      rax, qword ptr [rdi + 0x18]
00000001405a2800 lea      r8, [rip + 0xdb7c9]
00000001405a2807 mov      rcx, qword ptr [rdi + 8]
00000001405a280b mov      edx, r13d
00000001405a280e mov      rax, qword ptr [rax + 0x118]
00000001405a2815 call     qword ptr [rip + 0xe1add]
00000001405a281b mov      rax, qword ptr [rsi + 0x20]
00000001405a281f mov      r14d, 0xf4
00000001405a2825 mov      edx, r14d
00000001405a2828 mov      rcx, rdi
00000001405a282b call     qword ptr [rip + 0xe1ac7]
00000001405a2831 mov      r9d, 0x186000f4
00000001405a2837 lea      r8, [rip + 0xc5992]
00000001405a283e btr      eax, 0x11
00000001405a2842 mov      edx, r13d
00000001405a2845 bts      eax, 0x10
00000001405a2849 mov      dword ptr [rbp + 0x30], eax
00000001405a284c mov      rax, qword ptr [rdi + 0x18]
00000001405a2850 mov      rcx, qword ptr [rdi + 8]
00000001405a2854 mov      rax, qword ptr [rax + 0x118]
00000001405a285b call     qword ptr [rip + 0xe1a97]
00000001405a2861 mov      rax, qword ptr [rsi + 0x28]
00000001405a2865 mov      edx, r14d
00000001405a2868 mov      r8d, dword ptr [rbp + 0x30]
00000001405a286c mov      rcx, rdi
00000001405a286f call     qword ptr [rip + 0xe1a83]
00000001405a2875 mov      rax, qword ptr [rsi]
00000001405a2878 mov      ebx, 0x58
00000001405a287d mov      edx, ebx
00000001405a287f mov      rcx, rdi
00000001405a2882 call     qword ptr [rip + 0xe1a70]
00000001405a2888 mov      rax, qword ptr [rdi + 0x18]
00000001405a288c lea      r8, [rip + 0xdb76d]
00000001405a2893 mov      rcx, qword ptr [rdi + 8]
00000001405a2897 mov      r9d, 0x18600058
00000001405a289d mov      edx, r13d
00000001405a28a0 mov      rax, qword ptr [rax + 0x118]
00000001405a28a7 call     qword ptr [rip + 0xe1a4b]
00000001405a28ad mov      rax, qword ptr [rsi + 8]
00000001405a28b1 mov      r8b, 0x83
00000001405a28b4 mov      edx, ebx
00000001405a28b6 mov      rcx, rdi
00000001405a28b9 call     qword ptr [rip + 0xe1a39]
00000001405a28bf mov      rax, qword ptr [rsi]
00000001405a28c2 mov      r14d, 0x9438
00000001405a28c8 mov      edx, r14d
00000001405a28cb mov      rcx, rdi
00000001405a28ce call     qword ptr [rip + 0xe1a24]
00000001405a28d4 mov      rcx, qword ptr [rdi + 8]
00000001405a28d8 lea      r8, [rip + 0xdb751]
00000001405a28df mov      bl, al
00000001405a28e1 mov      r9d, 0x18609438
00000001405a28e7 mov      rax, qword ptr [rdi + 0x18]
00000001405a28eb mov      edx, r13d
00000001405a28ee and      bl, 3
00000001405a28f1 mov      rax, qword ptr [rax + 0x118]
00000001405a28f8 call     qword ptr [rip + 0xe19fa]
00000001405a28fe mov      rax, qword ptr [rsi + 8]
00000001405a2902 mov      r8b, bl
00000001405a2905 mov      edx, r14d
00000001405a2908 mov      rcx, rdi
00000001405a290b call     qword ptr [rip + 0xe19e7]
00000001405a2911 mov      rax, qword ptr [rdi + 0x18]
00000001405a2915 lea      r8, [rip + 0xdb744]
00000001405a291c mov      rcx, qword ptr [rdi + 8]
00000001405a2920 mov      edx, r13d
00000001405a2923 mov      rax, qword ptr [rax + 0x118]
00000001405a292a call     qword ptr [rip + 0xe19c8]
00000001405a2930 lea      rdx, [rip + 0x72ba21]
00000001405a2937 jmp      0x1405aba72
00000001405a293c cmp      ebx, 0x63
00000001405a293f ja       0x1405a3256
00000001405a2945 je       0x1405a3113
00000001405a294b sub      ebx, 0x5d
00000001405a294e je       0x1405a2fd0
00000001405a2954 sub      ebx, r13d
00000001405a2957 je       0x1405a2e8d
00000001405a295d sub      ebx, r13d
00000001405a2960 je       0x1405a2d4a
00000001405a2966 sub      ebx, r13d
00000001405a2969 je       0x1405a2c07
00000001405a296f sub      ebx, r13d
00000001405a2972 je       0x1405a2ac4
00000001405a2978 cmp      ebx, r13d
00000001405a297b jne      0x1405ab45d
00000001405a2981 mov      rax, qword ptr [rdi + 0x18]
00000001405a2985 lea      r8, [rip + 0xdb9d4]
00000001405a298c mov      rcx, qword ptr [rdi + 8]
00000001405a2990 mov      edx, r13d
00000001405a2993 mov      rax, qword ptr [rax + 0x118]
00000001405a299a call     qword ptr [rip + 0xe1958]
00000001405a29a0 mov      rax, qword ptr [rsi + 0x20]
00000001405a29a4 mov      r14d, 0xf4
00000001405a29aa mov      edx, r14d
00000001405a29ad mov      rcx, rdi
00000001405a29b0 call     qword ptr [rip + 0xe1942]
00000001405a29b6 mov      r9d, 0x186000f4
00000001405a29bc lea      r8, [rip + 0xc580d]
00000001405a29c3 btr      eax, 0x11
00000001405a29c7 mov      edx, r13d
00000001405a29ca bts      eax, 0x10
00000001405a29ce mov      dword ptr [rbp + 0x30], eax
00000001405a29d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a29d5 mov      rcx, qword ptr [rdi + 8]
00000001405a29d9 mov      rax, qword ptr [rax + 0x118]
00000001405a29e0 call     qword ptr [rip + 0xe1912]
00000001405a29e6 mov      rax, qword ptr [rsi + 0x28]
00000001405a29ea mov      edx, r14d
00000001405a29ed mov      r8d, dword ptr [rbp + 0x30]
00000001405a29f1 mov      rcx, rdi
00000001405a29f4 call     qword ptr [rip + 0xe18fe]
00000001405a29fa mov      rax, qword ptr [rsi]
00000001405a29fd mov      ebx, 0x58
00000001405a2a02 mov      edx, ebx
00000001405a2a04 mov      rcx, rdi
00000001405a2a07 call     qword ptr [rip + 0xe18eb]
00000001405a2a0d mov      rax, qword ptr [rdi + 0x18]
00000001405a2a11 lea      r8, [rip + 0xdb5e8]
00000001405a2a18 mov      rcx, qword ptr [rdi + 8]
00000001405a2a1c mov      r9d, 0x18600058
00000001405a2a22 mov      edx, r13d
00000001405a2a25 mov      rax, qword ptr [rax + 0x118]
00000001405a2a2c call     qword ptr [rip + 0xe18c6]
00000001405a2a32 mov      rax, qword ptr [rsi + 8]
00000001405a2a36 mov      r8b, 0x83
00000001405a2a39 mov      edx, ebx
00000001405a2a3b mov      rcx, rdi
00000001405a2a3e call     qword ptr [rip + 0xe18b4]
00000001405a2a44 mov      rax, qword ptr [rsi]
00000001405a2a47 mov      r14d, 0x9438
00000001405a2a4d mov      edx, r14d
00000001405a2a50 mov      rcx, rdi
00000001405a2a53 call     qword ptr [rip + 0xe189f]
00000001405a2a59 mov      rcx, qword ptr [rdi + 8]
00000001405a2a5d lea      r8, [rip + 0xdb92c]
00000001405a2a64 mov      bl, al
00000001405a2a66 mov      r9d, 0x18609438
00000001405a2a6c mov      rax, qword ptr [rdi + 0x18]
00000001405a2a70 and      bl, 3
00000001405a2a73 mov      edx, r13d
00000001405a2a76 or       bl, 0x1c
00000001405a2a79 mov      rax, qword ptr [rax + 0x118]
00000001405a2a80 call     qword ptr [rip + 0xe1872]
00000001405a2a86 mov      rax, qword ptr [rsi + 8]
00000001405a2a8a mov      r8b, bl
00000001405a2a8d mov      edx, r14d
00000001405a2a90 mov      rcx, rdi
00000001405a2a93 call     qword ptr [rip + 0xe185f]
00000001405a2a99 mov      rax, qword ptr [rdi + 0x18]
00000001405a2a9d lea      r8, [rip + 0xdb91c]
00000001405a2aa4 mov      rcx, qword ptr [rdi + 8]
00000001405a2aa8 mov      edx, r13d
00000001405a2aab mov      rax, qword ptr [rax + 0x118]
00000001405a2ab2 call     qword ptr [rip + 0xe1840]
00000001405a2ab8 lea      rdx, [rip + 0x72b8f9]
00000001405a2abf jmp      0x1405aba72
00000001405a2ac4 mov      rax, qword ptr [rdi + 0x18]
00000001405a2ac8 lea      r8, [rip + 0xdb801]
00000001405a2acf mov      rcx, qword ptr [rdi + 8]
00000001405a2ad3 mov      edx, r13d
00000001405a2ad6 mov      rax, qword ptr [rax + 0x118]
00000001405a2add call     qword ptr [rip + 0xe1815]
00000001405a2ae3 mov      rax, qword ptr [rsi + 0x20]
00000001405a2ae7 mov      r14d, 0xf4
00000001405a2aed mov      edx, r14d
00000001405a2af0 mov      rcx, rdi
00000001405a2af3 call     qword ptr [rip + 0xe17ff]
00000001405a2af9 mov      r9d, 0x186000f4
00000001405a2aff lea      r8, [rip + 0xc56ca]
00000001405a2b06 btr      eax, 0x11
00000001405a2b0a mov      edx, r13d
00000001405a2b0d bts      eax, 0x10
00000001405a2b11 mov      dword ptr [rbp + 0x30], eax
00000001405a2b14 mov      rax, qword ptr [rdi + 0x18]
00000001405a2b18 mov      rcx, qword ptr [rdi + 8]
00000001405a2b1c mov      rax, qword ptr [rax + 0x118]
00000001405a2b23 call     qword ptr [rip + 0xe17cf]
00000001405a2b29 mov      rax, qword ptr [rsi + 0x28]
00000001405a2b2d mov      edx, r14d
00000001405a2b30 mov      r8d, dword ptr [rbp + 0x30]
00000001405a2b34 mov      rcx, rdi
00000001405a2b37 call     qword ptr [rip + 0xe17bb]
00000001405a2b3d mov      rax, qword ptr [rsi]
00000001405a2b40 mov      ebx, 0x58
00000001405a2b45 mov      edx, ebx
00000001405a2b47 mov      rcx, rdi
00000001405a2b4a call     qword ptr [rip + 0xe17a8]
00000001405a2b50 mov      rax, qword ptr [rdi + 0x18]
00000001405a2b54 lea      r8, [rip + 0xdb4a5]
00000001405a2b5b mov      rcx, qword ptr [rdi + 8]
00000001405a2b5f mov      r9d, 0x18600058
00000001405a2b65 mov      edx, r13d
00000001405a2b68 mov      rax, qword ptr [rax + 0x118]
00000001405a2b6f call     qword ptr [rip + 0xe1783]
00000001405a2b75 mov      rax, qword ptr [rsi + 8]
00000001405a2b79 mov      r8b, 0x83
00000001405a2b7c mov      edx, ebx
00000001405a2b7e mov      rcx, rdi
00000001405a2b81 call     qword ptr [rip + 0xe1771]
00000001405a2b87 mov      rax, qword ptr [rsi]
00000001405a2b8a mov      r14d, 0x9438
00000001405a2b90 mov      edx, r14d
00000001405a2b93 mov      rcx, rdi
00000001405a2b96 call     qword ptr [rip + 0xe175c]
00000001405a2b9c mov      rcx, qword ptr [rdi + 8]
00000001405a2ba0 lea      r8, [rip + 0xdb759]
00000001405a2ba7 mov      bl, al
00000001405a2ba9 mov      r9d, 0x18609438
00000001405a2baf mov      rax, qword ptr [rdi + 0x18]
00000001405a2bb3 and      bl, 3
00000001405a2bb6 mov      edx, r13d
00000001405a2bb9 or       bl, 0x18
00000001405a2bbc mov      rax, qword ptr [rax + 0x118]
00000001405a2bc3 call     qword ptr [rip + 0xe172f]
00000001405a2bc9 mov      rax, qword ptr [rsi + 8]
00000001405a2bcd mov      r8b, bl
00000001405a2bd0 mov      edx, r14d
00000001405a2bd3 mov      rcx, rdi
00000001405a2bd6 call     qword ptr [rip + 0xe171c]
00000001405a2bdc mov      rax, qword ptr [rdi + 0x18]
00000001405a2be0 lea      r8, [rip + 0xdb749]
00000001405a2be7 mov      rcx, qword ptr [rdi + 8]
00000001405a2beb mov      edx, r13d
00000001405a2bee mov      rax, qword ptr [rax + 0x118]
00000001405a2bf5 call     qword ptr [rip + 0xe16fd]
00000001405a2bfb lea      rdx, [rip + 0x72b7a6]
00000001405a2c02 jmp      0x1405aba72
00000001405a2c07 mov      rax, qword ptr [rdi + 0x18]
00000001405a2c0b lea      r8, [rip + 0xdb62e]
00000001405a2c12 mov      rcx, qword ptr [rdi + 8]
00000001405a2c16 mov      edx, r13d
00000001405a2c19 mov      rax, qword ptr [rax + 0x118]
00000001405a2c20 call     qword ptr [rip + 0xe16d2]
00000001405a2c26 mov      rax, qword ptr [rsi + 0x20]
00000001405a2c2a mov      r14d, 0xf4
00000001405a2c30 mov      edx, r14d
00000001405a2c33 mov      rcx, rdi
00000001405a2c36 call     qword ptr [rip + 0xe16bc]
00000001405a2c3c mov      r9d, 0x186000f4
00000001405a2c42 lea      r8, [rip + 0xc5587]
00000001405a2c49 btr      eax, 0x11
00000001405a2c4d mov      edx, r13d
00000001405a2c50 bts      eax, 0x10
00000001405a2c54 mov      dword ptr [rbp + 0x30], eax
00000001405a2c57 mov      rax, qword ptr [rdi + 0x18]
00000001405a2c5b mov      rcx, qword ptr [rdi + 8]
00000001405a2c5f mov      rax, qword ptr [rax + 0x118]
00000001405a2c66 call     qword ptr [rip + 0xe168c]
00000001405a2c6c mov      rax, qword ptr [rsi + 0x28]
00000001405a2c70 mov      edx, r14d
00000001405a2c73 mov      r8d, dword ptr [rbp + 0x30]
00000001405a2c77 mov      rcx, rdi
00000001405a2c7a call     qword ptr [rip + 0xe1678]
00000001405a2c80 mov      rax, qword ptr [rsi]
00000001405a2c83 mov      ebx, 0x58
00000001405a2c88 mov      edx, ebx
00000001405a2c8a mov      rcx, rdi
00000001405a2c8d call     qword ptr [rip + 0xe1665]
00000001405a2c93 mov      rax, qword ptr [rdi + 0x18]
00000001405a2c97 lea      r8, [rip + 0xdb362]
00000001405a2c9e mov      rcx, qword ptr [rdi + 8]
00000001405a2ca2 mov      r9d, 0x18600058
00000001405a2ca8 mov      edx, r13d
00000001405a2cab mov      rax, qword ptr [rax + 0x118]
00000001405a2cb2 call     qword ptr [rip + 0xe1640]
00000001405a2cb8 mov      rax, qword ptr [rsi + 8]
00000001405a2cbc mov      r8b, 0x83
00000001405a2cbf mov      edx, ebx
00000001405a2cc1 mov      rcx, rdi
00000001405a2cc4 call     qword ptr [rip + 0xe162e]
00000001405a2cca mov      rax, qword ptr [rsi]
00000001405a2ccd mov      r14d, 0x9438
00000001405a2cd3 mov      edx, r14d
00000001405a2cd6 mov      rcx, rdi
00000001405a2cd9 call     qword ptr [rip + 0xe1619]
00000001405a2cdf mov      rcx, qword ptr [rdi + 8]
00000001405a2ce3 lea      r8, [rip + 0xdb586]
00000001405a2cea mov      bl, al
00000001405a2cec mov      r9d, 0x18609438
00000001405a2cf2 mov      rax, qword ptr [rdi + 0x18]
00000001405a2cf6 and      bl, 3
00000001405a2cf9 mov      edx, r13d
00000001405a2cfc or       bl, 0x14
00000001405a2cff mov      rax, qword ptr [rax + 0x118]
00000001405a2d06 call     qword ptr [rip + 0xe15ec]
00000001405a2d0c mov      rax, qword ptr [rsi + 8]
00000001405a2d10 mov      r8b, bl
00000001405a2d13 mov      edx, r14d
00000001405a2d16 mov      rcx, rdi
00000001405a2d19 call     qword ptr [rip + 0xe15d9]
00000001405a2d1f mov      rax, qword ptr [rdi + 0x18]
00000001405a2d23 lea      r8, [rip + 0xdb576]
00000001405a2d2a mov      rcx, qword ptr [rdi + 8]
00000001405a2d2e mov      edx, r13d
00000001405a2d31 mov      rax, qword ptr [rax + 0x118]
00000001405a2d38 call     qword ptr [rip + 0xe15ba]
00000001405a2d3e lea      rdx, [rip + 0x72b653]
00000001405a2d45 jmp      0x1405aba72
00000001405a2d4a mov      rax, qword ptr [rdi + 0x18]
00000001405a2d4e lea      r8, [rip + 0xdb45b]
00000001405a2d55 mov      rcx, qword ptr [rdi + 8]
00000001405a2d59 mov      edx, r13d
00000001405a2d5c mov      rax, qword ptr [rax + 0x118]
00000001405a2d63 call     qword ptr [rip + 0xe158f]
00000001405a2d69 mov      rax, qword ptr [rsi + 0x20]
00000001405a2d6d mov      r14d, 0xf4
00000001405a2d73 mov      edx, r14d
00000001405a2d76 mov      rcx, rdi
00000001405a2d79 call     qword ptr [rip + 0xe1579]
00000001405a2d7f mov      r9d, 0x186000f4
00000001405a2d85 lea      r8, [rip + 0xc5444]
00000001405a2d8c btr      eax, 0x11
00000001405a2d90 mov      edx, r13d
00000001405a2d93 bts      eax, 0x10
00000001405a2d97 mov      dword ptr [rbp + 0x30], eax
00000001405a2d9a mov      rax, qword ptr [rdi + 0x18]
00000001405a2d9e mov      rcx, qword ptr [rdi + 8]
00000001405a2da2 mov      rax, qword ptr [rax + 0x118]
00000001405a2da9 call     qword ptr [rip + 0xe1549]
00000001405a2daf mov      rax, qword ptr [rsi + 0x28]
00000001405a2db3 mov      edx, r14d
00000001405a2db6 mov      r8d, dword ptr [rbp + 0x30]
00000001405a2dba mov      rcx, rdi
00000001405a2dbd call     qword ptr [rip + 0xe1535]
00000001405a2dc3 mov      rax, qword ptr [rsi]
00000001405a2dc6 mov      ebx, 0x58
00000001405a2dcb mov      edx, ebx
00000001405a2dcd mov      rcx, rdi
00000001405a2dd0 call     qword ptr [rip + 0xe1522]
00000001405a2dd6 mov      rax, qword ptr [rdi + 0x18]
00000001405a2dda lea      r8, [rip + 0xdb21f]
00000001405a2de1 mov      rcx, qword ptr [rdi + 8]
00000001405a2de5 mov      r9d, 0x18600058
00000001405a2deb mov      edx, r13d
00000001405a2dee mov      rax, qword ptr [rax + 0x118]
00000001405a2df5 call     qword ptr [rip + 0xe14fd]
00000001405a2dfb mov      rax, qword ptr [rsi + 8]
00000001405a2dff mov      r8b, 0x83
00000001405a2e02 mov      edx, ebx
00000001405a2e04 mov      rcx, rdi
00000001405a2e07 call     qword ptr [rip + 0xe14eb]
00000001405a2e0d mov      rax, qword ptr [rsi]
00000001405a2e10 mov      r14d, 0x9438
00000001405a2e16 mov      edx, r14d
00000001405a2e19 mov      rcx, rdi
00000001405a2e1c call     qword ptr [rip + 0xe14d6]
00000001405a2e22 mov      rcx, qword ptr [rdi + 8]
00000001405a2e26 lea      r8, [rip + 0xdb3b3]
00000001405a2e2d mov      bl, al
00000001405a2e2f mov      r9d, 0x18609438
00000001405a2e35 mov      rax, qword ptr [rdi + 0x18]
00000001405a2e39 and      bl, 3
00000001405a2e3c mov      edx, r13d
00000001405a2e3f or       bl, 0x10
00000001405a2e42 mov      rax, qword ptr [rax + 0x118]
00000001405a2e49 call     qword ptr [rip + 0xe14a9]
00000001405a2e4f mov      rax, qword ptr [rsi + 8]
00000001405a2e53 mov      r8b, bl
00000001405a2e56 mov      edx, r14d
00000001405a2e59 mov      rcx, rdi
00000001405a2e5c call     qword ptr [rip + 0xe1496]
00000001405a2e62 mov      rax, qword ptr [rdi + 0x18]
00000001405a2e66 lea      r8, [rip + 0xdb3a3]
00000001405a2e6d mov      rcx, qword ptr [rdi + 8]
00000001405a2e71 mov      edx, r13d
00000001405a2e74 mov      rax, qword ptr [rax + 0x118]
00000001405a2e7b call     qword ptr [rip + 0xe1477]
00000001405a2e81 lea      rdx, [rip + 0x72b500]
00000001405a2e88 jmp      0x1405aba72
00000001405a2e8d mov      rax, qword ptr [rdi + 0x18]
00000001405a2e91 lea      r8, [rip + 0xdb288]
00000001405a2e98 mov      rcx, qword ptr [rdi + 8]
00000001405a2e9c mov      edx, r13d
00000001405a2e9f mov      rax, qword ptr [rax + 0x118]
00000001405a2ea6 call     qword ptr [rip + 0xe144c]
00000001405a2eac mov      rax, qword ptr [rsi + 0x20]
00000001405a2eb0 mov      r14d, 0xf4
00000001405a2eb6 mov      edx, r14d
00000001405a2eb9 mov      rcx, rdi
00000001405a2ebc call     qword ptr [rip + 0xe1436]
00000001405a2ec2 mov      r9d, 0x186000f4
00000001405a2ec8 lea      r8, [rip + 0xc5301]
00000001405a2ecf btr      eax, 0x11
00000001405a2ed3 mov      edx, r13d
00000001405a2ed6 bts      eax, 0x10
00000001405a2eda mov      dword ptr [rbp + 0x30], eax
00000001405a2edd mov      rax, qword ptr [rdi + 0x18]
00000001405a2ee1 mov      rcx, qword ptr [rdi + 8]
00000001405a2ee5 mov      rax, qword ptr [rax + 0x118]
00000001405a2eec call     qword ptr [rip + 0xe1406]
00000001405a2ef2 mov      rax, qword ptr [rsi + 0x28]
00000001405a2ef6 mov      edx, r14d
00000001405a2ef9 mov      r8d, dword ptr [rbp + 0x30]
00000001405a2efd mov      rcx, rdi
00000001405a2f00 call     qword ptr [rip + 0xe13f2]
00000001405a2f06 mov      rax, qword ptr [rsi]
00000001405a2f09 mov      ebx, 0x58
00000001405a2f0e mov      edx, ebx
00000001405a2f10 mov      rcx, rdi
00000001405a2f13 call     qword ptr [rip + 0xe13df]
00000001405a2f19 mov      rax, qword ptr [rdi + 0x18]
00000001405a2f1d lea      r8, [rip + 0xdb0dc]
00000001405a2f24 mov      rcx, qword ptr [rdi + 8]
00000001405a2f28 mov      r9d, 0x18600058
00000001405a2f2e mov      edx, r13d
00000001405a2f31 mov      rax, qword ptr [rax + 0x118]
00000001405a2f38 call     qword ptr [rip + 0xe13ba]
00000001405a2f3e mov      rax, qword ptr [rsi + 8]
00000001405a2f42 mov      r8b, 0x83
00000001405a2f45 mov      edx, ebx
00000001405a2f47 mov      rcx, rdi
00000001405a2f4a call     qword ptr [rip + 0xe13a8]
00000001405a2f50 mov      rax, qword ptr [rsi]
00000001405a2f53 mov      r14d, 0x9438
00000001405a2f59 mov      edx, r14d
00000001405a2f5c mov      rcx, rdi
00000001405a2f5f call     qword ptr [rip + 0xe1393]
00000001405a2f65 mov      rcx, qword ptr [rdi + 8]
00000001405a2f69 lea      r8, [rip + 0xdb1e0]
00000001405a2f70 mov      bl, al
00000001405a2f72 mov      r9d, 0x18609438
00000001405a2f78 mov      rax, qword ptr [rdi + 0x18]
00000001405a2f7c and      bl, 3
00000001405a2f7f mov      edx, r13d
00000001405a2f82 or       bl, 0xc
00000001405a2f85 mov      rax, qword ptr [rax + 0x118]
00000001405a2f8c call     qword ptr [rip + 0xe1366]
00000001405a2f92 mov      rax, qword ptr [rsi + 8]
00000001405a2f96 mov      r8b, bl
00000001405a2f99 mov      edx, r14d
00000001405a2f9c mov      rcx, rdi
00000001405a2f9f call     qword ptr [rip + 0xe1353]
00000001405a2fa5 mov      rax, qword ptr [rdi + 0x18]
00000001405a2fa9 lea      r8, [rip + 0xdb1d0]
00000001405a2fb0 mov      rcx, qword ptr [rdi + 8]
00000001405a2fb4 mov      edx, r13d
00000001405a2fb7 mov      rax, qword ptr [rax + 0x118]
00000001405a2fbe call     qword ptr [rip + 0xe1334]
00000001405a2fc4 lea      rdx, [rip + 0x72b3ad]
00000001405a2fcb jmp      0x1405aba72
00000001405a2fd0 mov      rax, qword ptr [rdi + 0x18]
00000001405a2fd4 lea      r8, [rip + 0xdb0b5]
00000001405a2fdb mov      rcx, qword ptr [rdi + 8]
00000001405a2fdf mov      edx, r13d
00000001405a2fe2 mov      rax, qword ptr [rax + 0x118]
00000001405a2fe9 call     qword ptr [rip + 0xe1309]
00000001405a2fef mov      rax, qword ptr [rsi + 0x20]
00000001405a2ff3 mov      r14d, 0xf4
00000001405a2ff9 mov      edx, r14d
00000001405a2ffc mov      rcx, rdi
00000001405a2fff call     qword ptr [rip + 0xe12f3]
00000001405a3005 mov      r9d, 0x186000f4
00000001405a300b lea      r8, [rip + 0xc51be]
00000001405a3012 btr      eax, 0x11
00000001405a3016 mov      edx, r13d
00000001405a3019 bts      eax, 0x10
00000001405a301d mov      dword ptr [rbp + 0x30], eax
00000001405a3020 mov      rax, qword ptr [rdi + 0x18]
00000001405a3024 mov      rcx, qword ptr [rdi + 8]
00000001405a3028 mov      rax, qword ptr [rax + 0x118]
00000001405a302f call     qword ptr [rip + 0xe12c3]
00000001405a3035 mov      rax, qword ptr [rsi + 0x28]
00000001405a3039 mov      edx, r14d
00000001405a303c mov      r8d, dword ptr [rbp + 0x30]
00000001405a3040 mov      rcx, rdi
00000001405a3043 call     qword ptr [rip + 0xe12af]
00000001405a3049 mov      rax, qword ptr [rsi]
00000001405a304c mov      ebx, 0x58
00000001405a3051 mov      edx, ebx
00000001405a3053 mov      rcx, rdi
00000001405a3056 call     qword ptr [rip + 0xe129c]
00000001405a305c mov      rax, qword ptr [rdi + 0x18]
00000001405a3060 lea      r8, [rip + 0xdaf99]
00000001405a3067 mov      rcx, qword ptr [rdi + 8]
00000001405a306b mov      r9d, 0x18600058
00000001405a3071 mov      edx, r13d
00000001405a3074 mov      rax, qword ptr [rax + 0x118]
00000001405a307b call     qword ptr [rip + 0xe1277]
00000001405a3081 mov      rax, qword ptr [rsi + 8]
00000001405a3085 mov      r8b, 0x83
00000001405a3088 mov      edx, ebx
00000001405a308a mov      rcx, rdi
00000001405a308d call     qword ptr [rip + 0xe1265]
00000001405a3093 mov      rax, qword ptr [rsi]
00000001405a3096 mov      r14d, 0x9438
00000001405a309c mov      edx, r14d
00000001405a309f mov      rcx, rdi
00000001405a30a2 call     qword ptr [rip + 0xe1250]
00000001405a30a8 mov      rcx, qword ptr [rdi + 8]
00000001405a30ac lea      r8, [rip + 0xdb00d]
00000001405a30b3 mov      bl, al
00000001405a30b5 mov      r9d, 0x18609438
00000001405a30bb mov      rax, qword ptr [rdi + 0x18]
00000001405a30bf and      bl, 3
00000001405a30c2 mov      edx, r13d
00000001405a30c5 or       bl, 8
00000001405a30c8 mov      rax, qword ptr [rax + 0x118]
00000001405a30cf call     qword ptr [rip + 0xe1223]
00000001405a30d5 mov      rax, qword ptr [rsi + 8]
00000001405a30d9 mov      r8b, bl
00000001405a30dc mov      edx, r14d
00000001405a30df mov      rcx, rdi
00000001405a30e2 call     qword ptr [rip + 0xe1210]
00000001405a30e8 mov      rax, qword ptr [rdi + 0x18]
00000001405a30ec lea      r8, [rip + 0xdaffd]
00000001405a30f3 mov      rcx, qword ptr [rdi + 8]
00000001405a30f7 mov      edx, r13d
00000001405a30fa mov      rax, qword ptr [rax + 0x118]
00000001405a3101 call     qword ptr [rip + 0xe11f1]
00000001405a3107 lea      rdx, [rip + 0x72b25a]
00000001405a310e jmp      0x1405aba72
00000001405a3113 mov      rax, qword ptr [rdi + 0x18]
00000001405a3117 lea      r8, [rip + 0xdb2d2]
00000001405a311e mov      rcx, qword ptr [rdi + 8]
00000001405a3122 mov      edx, r13d
00000001405a3125 mov      rax, qword ptr [rax + 0x118]
00000001405a312c call     qword ptr [rip + 0xe11c6]
00000001405a3132 mov      rax, qword ptr [rsi + 0x20]
00000001405a3136 mov      r14d, 0xf4
00000001405a313c mov      edx, r14d
00000001405a313f mov      rcx, rdi
00000001405a3142 call     qword ptr [rip + 0xe11b0]
00000001405a3148 mov      r9d, 0x186000f4
00000001405a314e lea      r8, [rip + 0xc507b]
00000001405a3155 btr      eax, 0x11
00000001405a3159 mov      edx, r13d
00000001405a315c bts      eax, 0x10
00000001405a3160 mov      dword ptr [rbp + 0x30], eax
00000001405a3163 mov      rax, qword ptr [rdi + 0x18]
00000001405a3167 mov      rcx, qword ptr [rdi + 8]
00000001405a316b mov      rax, qword ptr [rax + 0x118]
00000001405a3172 call     qword ptr [rip + 0xe1180]
00000001405a3178 mov      rax, qword ptr [rsi + 0x28]
00000001405a317c mov      edx, r14d
00000001405a317f mov      r8d, dword ptr [rbp + 0x30]
00000001405a3183 mov      rcx, rdi
00000001405a3186 call     qword ptr [rip + 0xe116c]
00000001405a318c mov      rax, qword ptr [rsi]
00000001405a318f mov      ebx, 0x58
00000001405a3194 mov      edx, ebx
00000001405a3196 mov      rcx, rdi
00000001405a3199 call     qword ptr [rip + 0xe1159]
00000001405a319f mov      rax, qword ptr [rdi + 0x18]
00000001405a31a3 lea      r8, [rip + 0xdae56]
00000001405a31aa mov      rcx, qword ptr [rdi + 8]
00000001405a31ae mov      r9d, 0x18600058
00000001405a31b4 mov      edx, r13d
00000001405a31b7 mov      rax, qword ptr [rax + 0x118]
00000001405a31be call     qword ptr [rip + 0xe1134]
00000001405a31c4 mov      rax, qword ptr [rsi + 8]
00000001405a31c8 mov      r8b, 0x83
00000001405a31cb mov      edx, ebx
00000001405a31cd mov      rcx, rdi
00000001405a31d0 call     qword ptr [rip + 0xe1122]
00000001405a31d6 mov      rax, qword ptr [rsi]
00000001405a31d9 mov      r14d, 0x9438
00000001405a31df mov      edx, r14d
00000001405a31e2 mov      rcx, rdi
00000001405a31e5 call     qword ptr [rip + 0xe110d]
00000001405a31eb mov      rcx, qword ptr [rdi + 8]
00000001405a31ef lea      r8, [rip + 0xdb22a]
00000001405a31f6 mov      bl, al
00000001405a31f8 mov      r9d, 0x18609438
00000001405a31fe mov      rax, qword ptr [rdi + 0x18]
00000001405a3202 and      bl, 3
00000001405a3205 mov      edx, r13d
00000001405a3208 or       bl, 0x20
00000001405a320b mov      rax, qword ptr [rax + 0x118]
00000001405a3212 call     qword ptr [rip + 0xe10e0]
00000001405a3218 mov      rax, qword ptr [rsi + 8]
00000001405a321c mov      r8b, bl
00000001405a321f mov      edx, r14d
00000001405a3222 mov      rcx, rdi
00000001405a3225 call     qword ptr [rip + 0xe10cd]
00000001405a322b mov      rax, qword ptr [rdi + 0x18]
00000001405a322f lea      r8, [rip + 0xdb21a]
00000001405a3236 mov      rcx, qword ptr [rdi + 8]
00000001405a323a mov      edx, r13d
00000001405a323d mov      rax, qword ptr [rax + 0x118]
00000001405a3244 call     qword ptr [rip + 0xe10ae]
00000001405a324a lea      rdx, [rip + 0x72b177]
00000001405a3251 jmp      0x1405aba72
00000001405a3256 sub      ebx, 0x64
00000001405a3259 je       0x1405a35bb
00000001405a325f sub      ebx, r13d
00000001405a3262 je       0x1405a34ed
00000001405a3268 sub      ebx, r13d
00000001405a326b je       0x1405a341f
00000001405a3271 sub      ebx, r13d
00000001405a3274 je       0x1405a3351
00000001405a327a cmp      ebx, r13d
00000001405a327d jne      0x1405ab45d
00000001405a3283 mov      rax, qword ptr [rdi + 0x18]
00000001405a3287 lea      r8, [rip + 0xc7a02]
00000001405a328e mov      rcx, qword ptr [rdi + 8]
00000001405a3292 mov      edx, r13d
00000001405a3295 mov      rax, qword ptr [rax + 0x118]
00000001405a329c call     qword ptr [rip + 0xe1056]
00000001405a32a2 mov      rax, qword ptr [rsi + 0x20]
00000001405a32a6 mov      ebx, 0x4200
00000001405a32ab mov      edx, ebx
00000001405a32ad mov      rcx, rdi
00000001405a32b0 call     qword ptr [rip + 0xe1042]
00000001405a32b6 mov      r14d, 0x18604200
00000001405a32bc lea      r8, [rip + 0xdb1ed]
00000001405a32c3 btr      eax, 0x10
00000001405a32c7 mov      r9d, r14d
00000001405a32ca mov      dword ptr [rbp + 0x30], eax
00000001405a32cd mov      edx, r13d
00000001405a32d0 mov      rax, qword ptr [rdi + 0x18]
00000001405a32d4 mov      rcx, qword ptr [rdi + 8]
00000001405a32d8 mov      rax, qword ptr [rax + 0x118]
00000001405a32df call     qword ptr [rip + 0xe1013]
00000001405a32e5 mov      eax, dword ptr [rbp + 0x30]
00000001405a32e8 lea      r8, [rip + 0xdb251]
00000001405a32ef and      eax, 0xffffffe1
00000001405a32f2 mov      r9d, r14d
00000001405a32f5 or       eax, r13d
00000001405a32f8 mov      edx, r13d
00000001405a32fb mov      dword ptr [rbp + 0x30], eax
00000001405a32fe mov      rax, qword ptr [rdi + 0x18]
00000001405a3302 mov      rcx, qword ptr [rdi + 8]
00000001405a3306 mov      rax, qword ptr [rax + 0x118]
00000001405a330d call     qword ptr [rip + 0xe0fe5]
00000001405a3313 mov      rax, qword ptr [rsi + 0x28]
00000001405a3317 mov      edx, ebx
00000001405a3319 mov      r8d, dword ptr [rbp + 0x30]
00000001405a331d mov      rcx, rdi
00000001405a3320 call     qword ptr [rip + 0xe0fd2]
00000001405a3326 mov      rax, qword ptr [rdi + 0x18]
00000001405a332a lea      r8, [rip + 0xc798f]
00000001405a3331 mov      rcx, qword ptr [rdi + 8]
00000001405a3335 mov      edx, r13d
00000001405a3338 mov      rax, qword ptr [rax + 0x118]
00000001405a333f call     qword ptr [rip + 0xe0fb3]
00000001405a3345 lea      rdx, [rip + 0x72b0cc]
00000001405a334c jmp      0x1405aba72
00000001405a3351 mov      rax, qword ptr [rdi + 0x18]
00000001405a3355 lea      r8, [rip + 0xc78d4]
00000001405a335c mov      rcx, qword ptr [rdi + 8]
00000001405a3360 mov      edx, r13d
00000001405a3363 mov      rax, qword ptr [rax + 0x118]
00000001405a336a call     qword ptr [rip + 0xe0f88]
00000001405a3370 mov      rax, qword ptr [rsi + 0x20]
00000001405a3374 mov      ebx, 0x4200
00000001405a3379 mov      edx, ebx
00000001405a337b mov      rcx, rdi
00000001405a337e call     qword ptr [rip + 0xe0f74]
00000001405a3384 mov      r14d, 0x18604200
00000001405a338a lea      r8, [rip + 0xdb11f]
00000001405a3391 btr      eax, 0x10
00000001405a3395 mov      r9d, r14d
00000001405a3398 mov      dword ptr [rbp + 0x30], eax
00000001405a339b mov      edx, r13d
00000001405a339e mov      rax, qword ptr [rdi + 0x18]
00000001405a33a2 mov      rcx, qword ptr [rdi + 8]
00000001405a33a6 mov      rax, qword ptr [rax + 0x118]
00000001405a33ad call     qword ptr [rip + 0xe0f45]
00000001405a33b3 mov      eax, dword ptr [rbp + 0x30]
00000001405a33b6 lea      r8, [rip + 0xdb183]
00000001405a33bd and      eax, 0xffffffe1
00000001405a33c0 mov      r9d, r14d
00000001405a33c3 or       eax, r13d
00000001405a33c6 mov      edx, r13d
00000001405a33c9 mov      dword ptr [rbp + 0x30], eax
00000001405a33cc mov      rax, qword ptr [rdi + 0x18]
00000001405a33d0 mov      rcx, qword ptr [rdi + 8]
00000001405a33d4 mov      rax, qword ptr [rax + 0x118]
00000001405a33db call     qword ptr [rip + 0xe0f17]
00000001405a33e1 mov      rax, qword ptr [rsi + 0x28]
00000001405a33e5 mov      edx, ebx
00000001405a33e7 mov      r8d, dword ptr [rbp + 0x30]
00000001405a33eb mov      rcx, rdi
00000001405a33ee call     qword ptr [rip + 0xe0f04]
00000001405a33f4 mov      rax, qword ptr [rdi + 0x18]
00000001405a33f8 lea      r8, [rip + 0xc7861]
00000001405a33ff mov      rcx, qword ptr [rdi + 8]
00000001405a3403 mov      edx, r13d
00000001405a3406 mov      rax, qword ptr [rax + 0x118]
00000001405a340d call     qword ptr [rip + 0xe0ee5]
00000001405a3413 lea      rdx, [rip + 0x72afee]
00000001405a341a jmp      0x1405aba72
00000001405a341f mov      rax, qword ptr [rdi + 0x18]
00000001405a3423 lea      r8, [rip + 0xc77a6]
00000001405a342a mov      rcx, qword ptr [rdi + 8]
00000001405a342e mov      edx, r13d
00000001405a3431 mov      rax, qword ptr [rax + 0x118]
00000001405a3438 call     qword ptr [rip + 0xe0eba]
00000001405a343e mov      rax, qword ptr [rsi + 0x20]
00000001405a3442 mov      ebx, 0x4200
00000001405a3447 mov      edx, ebx
00000001405a3449 mov      rcx, rdi
00000001405a344c call     qword ptr [rip + 0xe0ea6]
00000001405a3452 mov      r14d, 0x18604200
00000001405a3458 lea      r8, [rip + 0xdb051]
00000001405a345f btr      eax, 0x10
00000001405a3463 mov      r9d, r14d
00000001405a3466 mov      dword ptr [rbp + 0x30], eax
00000001405a3469 mov      edx, r13d
00000001405a346c mov      rax, qword ptr [rdi + 0x18]
00000001405a3470 mov      rcx, qword ptr [rdi + 8]
00000001405a3474 mov      rax, qword ptr [rax + 0x118]
00000001405a347b call     qword ptr [rip + 0xe0e77]
00000001405a3481 mov      eax, dword ptr [rbp + 0x30]
00000001405a3484 lea      r8, [rip + 0xdb0b5]
00000001405a348b and      eax, 0xffffffe1
00000001405a348e mov      r9d, r14d
00000001405a3491 or       eax, r13d
00000001405a3494 mov      edx, r13d
00000001405a3497 mov      dword ptr [rbp + 0x30], eax
00000001405a349a mov      rax, qword ptr [rdi + 0x18]
00000001405a349e mov      rcx, qword ptr [rdi + 8]
00000001405a34a2 mov      rax, qword ptr [rax + 0x118]
00000001405a34a9 call     qword ptr [rip + 0xe0e49]
00000001405a34af mov      rax, qword ptr [rsi + 0x28]
00000001405a34b3 mov      edx, ebx
00000001405a34b5 mov      r8d, dword ptr [rbp + 0x30]
00000001405a34b9 mov      rcx, rdi
00000001405a34bc call     qword ptr [rip + 0xe0e36]
00000001405a34c2 mov      rax, qword ptr [rdi + 0x18]
00000001405a34c6 lea      r8, [rip + 0xc7733]
00000001405a34cd mov      rcx, qword ptr [rdi + 8]
00000001405a34d1 mov      edx, r13d
00000001405a34d4 mov      rax, qword ptr [rax + 0x118]
00000001405a34db call     qword ptr [rip + 0xe0e17]
00000001405a34e1 lea      rdx, [rip + 0x72af10]
00000001405a34e8 jmp      0x1405aba72
00000001405a34ed mov      rax, qword ptr [rdi + 0x18]
00000001405a34f1 lea      r8, [rip + 0xc7648]
00000001405a34f8 mov      rcx, qword ptr [rdi + 8]
00000001405a34fc mov      edx, r13d
00000001405a34ff mov      rax, qword ptr [rax + 0x118]
00000001405a3506 call     qword ptr [rip + 0xe0dec]
00000001405a350c mov      rax, qword ptr [rsi + 0x20]
00000001405a3510 mov      ebx, 0x4200
00000001405a3515 mov      edx, ebx
00000001405a3517 mov      rcx, rdi
00000001405a351a call     qword ptr [rip + 0xe0dd8]
00000001405a3520 mov      r14d, 0x18604200
00000001405a3526 lea      r8, [rip + 0xdaf83]
00000001405a352d btr      eax, 0x10
00000001405a3531 mov      r9d, r14d
00000001405a3534 mov      dword ptr [rbp + 0x30], eax
00000001405a3537 mov      edx, r13d
00000001405a353a mov      rax, qword ptr [rdi + 0x18]
00000001405a353e mov      rcx, qword ptr [rdi + 8]
00000001405a3542 mov      rax, qword ptr [rax + 0x118]
00000001405a3549 call     qword ptr [rip + 0xe0da9]
00000001405a354f mov      eax, dword ptr [rbp + 0x30]
00000001405a3552 lea      r8, [rip + 0xdafe7]
00000001405a3559 and      eax, 0xffffffe1
00000001405a355c mov      r9d, r14d
00000001405a355f or       eax, r13d
00000001405a3562 mov      edx, r13d
00000001405a3565 mov      dword ptr [rbp + 0x30], eax
00000001405a3568 mov      rax, qword ptr [rdi + 0x18]
00000001405a356c mov      rcx, qword ptr [rdi + 8]
00000001405a3570 mov      rax, qword ptr [rax + 0x118]
00000001405a3577 call     qword ptr [rip + 0xe0d7b]
00000001405a357d mov      rax, qword ptr [rsi + 0x28]
00000001405a3581 mov      edx, ebx
00000001405a3583 mov      r8d, dword ptr [rbp + 0x30]
00000001405a3587 mov      rcx, rdi
00000001405a358a call     qword ptr [rip + 0xe0d68]
00000001405a3590 mov      rax, qword ptr [rdi + 0x18]
00000001405a3594 lea      r8, [rip + 0xc7605]
00000001405a359b mov      rcx, qword ptr [rdi + 8]
00000001405a359f mov      edx, r13d
00000001405a35a2 mov      rax, qword ptr [rax + 0x118]
00000001405a35a9 call     qword ptr [rip + 0xe0d49]
00000001405a35af lea      rdx, [rip + 0x72ae32]
00000001405a35b6 jmp      0x1405aba72
00000001405a35bb mov      rax, qword ptr [rdi + 0x18]
00000001405a35bf lea      r8, [rip + 0xdaeba]
00000001405a35c6 mov      rcx, qword ptr [rdi + 8]
00000001405a35ca mov      edx, r13d
00000001405a35cd mov      rax, qword ptr [rax + 0x118]
00000001405a35d4 call     qword ptr [rip + 0xe0d1e]
00000001405a35da mov      rax, qword ptr [rsi + 0x20]
00000001405a35de mov      ebx, 0x4200
00000001405a35e3 mov      edx, ebx
00000001405a35e5 mov      rcx, rdi
00000001405a35e8 call     qword ptr [rip + 0xe0d0a]
00000001405a35ee mov      r14d, 0x18604200
00000001405a35f4 lea      r8, [rip + 0xdaeb5]
00000001405a35fb btr      eax, 0x10
00000001405a35ff mov      r9d, r14d
00000001405a3602 mov      dword ptr [rbp + 0x30], eax
00000001405a3605 mov      edx, r13d
00000001405a3608 mov      rax, qword ptr [rdi + 0x18]
00000001405a360c mov      rcx, qword ptr [rdi + 8]
00000001405a3610 mov      rax, qword ptr [rax + 0x118]
00000001405a3617 call     qword ptr [rip + 0xe0cdb]
00000001405a361d and      dword ptr [rbp + 0x30], 0xffffffe0
00000001405a3621 lea      r8, [rip + 0xdaeb8]
00000001405a3628 mov      rax, qword ptr [rdi + 0x18]
00000001405a362c mov      r9d, r14d
00000001405a362f mov      rcx, qword ptr [rdi + 8]
00000001405a3633 mov      edx, r13d
00000001405a3636 mov      rax, qword ptr [rax + 0x118]
00000001405a363d call     qword ptr [rip + 0xe0cb5]
00000001405a3643 mov      rax, qword ptr [rsi + 0x28]
00000001405a3647 mov      edx, ebx
00000001405a3649 mov      r8d, dword ptr [rbp + 0x30]
00000001405a364d mov      rcx, rdi
00000001405a3650 call     qword ptr [rip + 0xe0ca2]
00000001405a3656 mov      rax, qword ptr [rdi + 0x18]
00000001405a365a lea      r8, [rip + 0xdaeaf]
00000001405a3661 mov      rcx, qword ptr [rdi + 8]
00000001405a3665 mov      edx, r13d
00000001405a3668 mov      rax, qword ptr [rax + 0x118]
00000001405a366f call     qword ptr [rip + 0xe0c83]
00000001405a3675 lea      rdx, [rip + 0x72ad5c]
00000001405a367c jmp      0x1405aba72
00000001405a3681 mov      rax, qword ptr [rdi + 0x18]
00000001405a3685 lea      r8, [rip + 0xc7664]
00000001405a368c mov      rcx, qword ptr [rdi + 8]
00000001405a3690 mov      edx, r13d
00000001405a3693 mov      rax, qword ptr [rax + 0x118]
00000001405a369a call     qword ptr [rip + 0xe0c58]
00000001405a36a0 mov      rax, qword ptr [rsi + 0x20]
00000001405a36a4 mov      ebx, 0x4200
00000001405a36a9 mov      edx, ebx
00000001405a36ab mov      rcx, rdi
00000001405a36ae call     qword ptr [rip + 0xe0c44]
00000001405a36b4 mov      r14d, 0x18604200
00000001405a36ba lea      r8, [rip + 0xdadef]
00000001405a36c1 btr      eax, 0x10
00000001405a36c5 mov      r9d, r14d
00000001405a36c8 mov      dword ptr [rbp + 0x30], eax
00000001405a36cb mov      edx, r13d
00000001405a36ce mov      rax, qword ptr [rdi + 0x18]
00000001405a36d2 mov      rcx, qword ptr [rdi + 8]
00000001405a36d6 mov      rax, qword ptr [rax + 0x118]
00000001405a36dd call     qword ptr [rip + 0xe0c15]
00000001405a36e3 mov      eax, dword ptr [rbp + 0x30]
00000001405a36e6 lea      r8, [rip + 0xdae83]
00000001405a36ed and      eax, 0xffffffe2
00000001405a36f0 mov      r9d, r14d
00000001405a36f3 or       eax, 2
00000001405a36f6 mov      edx, r13d
00000001405a36f9 mov      dword ptr [rbp + 0x30], eax
00000001405a36fc mov      rax, qword ptr [rdi + 0x18]
00000001405a3700 mov      rcx, qword ptr [rdi + 8]
00000001405a3704 mov      rax, qword ptr [rax + 0x118]
00000001405a370b call     qword ptr [rip + 0xe0be7]
00000001405a3711 mov      rax, qword ptr [rsi + 0x28]
00000001405a3715 mov      edx, ebx
00000001405a3717 mov      r8d, dword ptr [rbp + 0x30]
00000001405a371b mov      rcx, rdi
00000001405a371e call     qword ptr [rip + 0xe0bd4]
00000001405a3724 mov      rax, qword ptr [rdi + 0x18]
00000001405a3728 lea      r8, [rip + 0xc7621]
00000001405a372f mov      rcx, qword ptr [rdi + 8]
00000001405a3733 mov      edx, r13d
00000001405a3736 mov      rax, qword ptr [rax + 0x118]
00000001405a373d call     qword ptr [rip + 0xe0bb5]
00000001405a3743 lea      rdx, [rip + 0x72acde]
00000001405a374a jmp      0x1405aba72
00000001405a374f mov      eax, 0x9e
00000001405a3754 cmp      ebx, eax
00000001405a3756 ja       0x1405a6c9b
00000001405a375c je       0x1405a6ac3
00000001405a3762 mov      eax, 0x84
00000001405a3767 cmp      ebx, eax
00000001405a3769 ja       0x1405a5077
00000001405a376f je       0x1405a4f58
00000001405a3775 cmp      ebx, 0x77
00000001405a3778 ja       0x1405a434c
00000001405a377e je       0x1405a427b
00000001405a3784 cmp      ebx, 0x70
00000001405a3787 ja       0x1405a3d6b
00000001405a378d je       0x1405a3c9d
00000001405a3793 sub      ebx, 0x6a
00000001405a3796 je       0x1405a3bcf
00000001405a379c sub      ebx, r13d
00000001405a379f je       0x1405a3b01
00000001405a37a5 sub      ebx, r13d
00000001405a37a8 je       0x1405a3a33
00000001405a37ae sub      ebx, r13d
00000001405a37b1 je       0x1405a3965
00000001405a37b7 sub      ebx, r13d
00000001405a37ba je       0x1405a3897
00000001405a37c0 cmp      ebx, r13d
00000001405a37c3 jne      0x1405ab45d
00000001405a37c9 mov      rax, qword ptr [rdi + 0x18]
00000001405a37cd lea      r8, [rip + 0xc76fc]
00000001405a37d4 mov      rcx, qword ptr [rdi + 8]
00000001405a37d8 mov      edx, r13d
00000001405a37db mov      rax, qword ptr [rax + 0x118]
00000001405a37e2 call     qword ptr [rip + 0xe0b10]
00000001405a37e8 mov      rax, qword ptr [rsi + 0x20]
00000001405a37ec mov      ebx, 0x4200
00000001405a37f1 mov      edx, ebx
00000001405a37f3 mov      rcx, rdi
00000001405a37f6 call     qword ptr [rip + 0xe0afc]
00000001405a37fc mov      r14d, 0x18604200
00000001405a3802 lea      r8, [rip + 0xdaca7]
00000001405a3809 btr      eax, 0x10
00000001405a380d mov      r9d, r14d
00000001405a3810 mov      dword ptr [rbp + 0x30], eax
00000001405a3813 mov      edx, r13d
00000001405a3816 mov      rax, qword ptr [rdi + 0x18]
00000001405a381a mov      rcx, qword ptr [rdi + 8]
00000001405a381e mov      rax, qword ptr [rax + 0x118]
00000001405a3825 call     qword ptr [rip + 0xe0acd]
00000001405a382b mov      eax, dword ptr [rbp + 0x30]
00000001405a382e lea      r8, [rip + 0xdae5b]
00000001405a3835 and      eax, 0xffffffe4
00000001405a3838 mov      r9d, r14d
00000001405a383b or       eax, 4
00000001405a383e mov      edx, r13d
00000001405a3841 mov      dword ptr [rbp + 0x30], eax
00000001405a3844 mov      rax, qword ptr [rdi + 0x18]
00000001405a3848 mov      rcx, qword ptr [rdi + 8]
00000001405a384c mov      rax, qword ptr [rax + 0x118]
00000001405a3853 call     qword ptr [rip + 0xe0a9f]
00000001405a3859 mov      rax, qword ptr [rsi + 0x28]
00000001405a385d mov      edx, ebx
00000001405a385f mov      r8d, dword ptr [rbp + 0x30]
00000001405a3863 mov      rcx, rdi
00000001405a3866 call     qword ptr [rip + 0xe0a8c]
00000001405a386c mov      rax, qword ptr [rdi + 0x18]
00000001405a3870 lea      r8, [rip + 0xc76b9]
00000001405a3877 mov      rcx, qword ptr [rdi + 8]
00000001405a387b mov      edx, r13d
00000001405a387e mov      rax, qword ptr [rax + 0x118]
00000001405a3885 call     qword ptr [rip + 0xe0a6d]
00000001405a388b lea      rdx, [rip + 0x72abf6]
00000001405a3892 jmp      0x1405aba72
00000001405a3897 mov      rax, qword ptr [rdi + 0x18]
00000001405a389b lea      r8, [rip + 0xc75ce]
00000001405a38a2 mov      rcx, qword ptr [rdi + 8]
00000001405a38a6 mov      edx, r13d
00000001405a38a9 mov      rax, qword ptr [rax + 0x118]
00000001405a38b0 call     qword ptr [rip + 0xe0a42]
00000001405a38b6 mov      rax, qword ptr [rsi + 0x20]
00000001405a38ba mov      ebx, 0x4200
00000001405a38bf mov      edx, ebx
00000001405a38c1 mov      rcx, rdi
00000001405a38c4 call     qword ptr [rip + 0xe0a2e]
00000001405a38ca mov      r14d, 0x18604200
00000001405a38d0 lea      r8, [rip + 0xdabd9]
00000001405a38d7 btr      eax, 0x10
00000001405a38db mov      r9d, r14d
00000001405a38de mov      dword ptr [rbp + 0x30], eax
00000001405a38e1 mov      edx, r13d
00000001405a38e4 mov      rax, qword ptr [rdi + 0x18]
00000001405a38e8 mov      rcx, qword ptr [rdi + 8]
00000001405a38ec mov      rax, qword ptr [rax + 0x118]
00000001405a38f3 call     qword ptr [rip + 0xe09ff]
00000001405a38f9 mov      eax, dword ptr [rbp + 0x30]
00000001405a38fc lea      r8, [rip + 0xdad5d]
00000001405a3903 and      eax, 0xffffffe3
00000001405a3906 mov      r9d, r14d
00000001405a3909 or       eax, 3
00000001405a390c mov      edx, r13d
00000001405a390f mov      dword ptr [rbp + 0x30], eax
00000001405a3912 mov      rax, qword ptr [rdi + 0x18]
00000001405a3916 mov      rcx, qword ptr [rdi + 8]
00000001405a391a mov      rax, qword ptr [rax + 0x118]
00000001405a3921 call     qword ptr [rip + 0xe09d1]
00000001405a3927 mov      rax, qword ptr [rsi + 0x28]
00000001405a392b mov      edx, ebx
00000001405a392d mov      r8d, dword ptr [rbp + 0x30]
00000001405a3931 mov      rcx, rdi
00000001405a3934 call     qword ptr [rip + 0xe09be]
00000001405a393a mov      rax, qword ptr [rdi + 0x18]
00000001405a393e lea      r8, [rip + 0xc755b]
00000001405a3945 mov      rcx, qword ptr [rdi + 8]
00000001405a3949 mov      edx, r13d
00000001405a394c mov      rax, qword ptr [rax + 0x118]
00000001405a3953 call     qword ptr [rip + 0xe099f]
00000001405a3959 lea      rdx, [rip + 0x72ab18]
00000001405a3960 jmp      0x1405aba72
00000001405a3965 mov      rax, qword ptr [rdi + 0x18]
00000001405a3969 lea      r8, [rip + 0xc7470]
00000001405a3970 mov      rcx, qword ptr [rdi + 8]
00000001405a3974 mov      edx, r13d
00000001405a3977 mov      rax, qword ptr [rax + 0x118]
00000001405a397e call     qword ptr [rip + 0xe0974]
00000001405a3984 mov      rax, qword ptr [rsi + 0x20]
00000001405a3988 mov      ebx, 0x4200
00000001405a398d mov      edx, ebx
00000001405a398f mov      rcx, rdi
00000001405a3992 call     qword ptr [rip + 0xe0960]
00000001405a3998 mov      r14d, 0x18604200
00000001405a399e lea      r8, [rip + 0xdab0b]
00000001405a39a5 btr      eax, 0x10
00000001405a39a9 mov      r9d, r14d
00000001405a39ac mov      dword ptr [rbp + 0x30], eax
00000001405a39af mov      edx, r13d
00000001405a39b2 mov      rax, qword ptr [rdi + 0x18]
00000001405a39b6 mov      rcx, qword ptr [rdi + 8]
00000001405a39ba mov      rax, qword ptr [rax + 0x118]
00000001405a39c1 call     qword ptr [rip + 0xe0931]
00000001405a39c7 mov      eax, dword ptr [rbp + 0x30]
00000001405a39ca lea      r8, [rip + 0xdac8f]
00000001405a39d1 and      eax, 0xffffffe3
00000001405a39d4 mov      r9d, r14d
00000001405a39d7 or       eax, 3
00000001405a39da mov      edx, r13d
00000001405a39dd mov      dword ptr [rbp + 0x30], eax
00000001405a39e0 mov      rax, qword ptr [rdi + 0x18]
00000001405a39e4 mov      rcx, qword ptr [rdi + 8]
00000001405a39e8 mov      rax, qword ptr [rax + 0x118]
00000001405a39ef call     qword ptr [rip + 0xe0903]
00000001405a39f5 mov      rax, qword ptr [rsi + 0x28]
00000001405a39f9 mov      edx, ebx
00000001405a39fb mov      r8d, dword ptr [rbp + 0x30]
00000001405a39ff mov      rcx, rdi
00000001405a3a02 call     qword ptr [rip + 0xe08f0]
00000001405a3a08 mov      rax, qword ptr [rdi + 0x18]
00000001405a3a0c lea      r8, [rip + 0xc742d]
00000001405a3a13 mov      rcx, qword ptr [rdi + 8]
00000001405a3a17 mov      edx, r13d
00000001405a3a1a mov      rax, qword ptr [rax + 0x118]
00000001405a3a21 call     qword ptr [rip + 0xe08d1]
00000001405a3a27 lea      rdx, [rip + 0x72aa3a]
00000001405a3a2e jmp      0x1405aba72
00000001405a3a33 mov      rax, qword ptr [rdi + 0x18]
00000001405a3a37 lea      r8, [rip + 0xdabc2]
00000001405a3a3e mov      rcx, qword ptr [rdi + 8]
00000001405a3a42 mov      edx, r13d
00000001405a3a45 mov      rax, qword ptr [rax + 0x118]
00000001405a3a4c call     qword ptr [rip + 0xe08a6]
00000001405a3a52 mov      rax, qword ptr [rsi + 0x20]
00000001405a3a56 mov      ebx, 0x4200
00000001405a3a5b mov      edx, ebx
00000001405a3a5d mov      rcx, rdi
00000001405a3a60 call     qword ptr [rip + 0xe0892]
00000001405a3a66 mov      r14d, 0x18604200
00000001405a3a6c lea      r8, [rip + 0xdaa3d]
00000001405a3a73 btr      eax, 0x10
00000001405a3a77 mov      r9d, r14d
00000001405a3a7a mov      dword ptr [rbp + 0x30], eax
00000001405a3a7d mov      edx, r13d
00000001405a3a80 mov      rax, qword ptr [rdi + 0x18]
00000001405a3a84 mov      rcx, qword ptr [rdi + 8]
00000001405a3a88 mov      rax, qword ptr [rax + 0x118]
00000001405a3a8f call     qword ptr [rip + 0xe0863]
00000001405a3a95 mov      eax, dword ptr [rbp + 0x30]
00000001405a3a98 lea      r8, [rip + 0xdaad1]
00000001405a3a9f and      eax, 0xffffffe2
00000001405a3aa2 mov      r9d, r14d
00000001405a3aa5 or       eax, 2
00000001405a3aa8 mov      edx, r13d
00000001405a3aab mov      dword ptr [rbp + 0x30], eax
00000001405a3aae mov      rax, qword ptr [rdi + 0x18]
00000001405a3ab2 mov      rcx, qword ptr [rdi + 8]
00000001405a3ab6 mov      rax, qword ptr [rax + 0x118]
00000001405a3abd call     qword ptr [rip + 0xe0835]
00000001405a3ac3 mov      rax, qword ptr [rsi + 0x28]
00000001405a3ac7 mov      edx, ebx
00000001405a3ac9 mov      r8d, dword ptr [rbp + 0x30]
00000001405a3acd mov      rcx, rdi
00000001405a3ad0 call     qword ptr [rip + 0xe0822]
00000001405a3ad6 mov      rax, qword ptr [rdi + 0x18]
00000001405a3ada lea      r8, [rip + 0xdab4f]
00000001405a3ae1 mov      rcx, qword ptr [rdi + 8]
00000001405a3ae5 mov      edx, r13d
00000001405a3ae8 mov      rax, qword ptr [rax + 0x118]
00000001405a3aef call     qword ptr [rip + 0xe0803]
00000001405a3af5 lea      rdx, [rip + 0x72a95c]
00000001405a3afc jmp      0x1405aba72
00000001405a3b01 mov      rax, qword ptr [rdi + 0x18]
00000001405a3b05 lea      r8, [rip + 0xdaa94]
00000001405a3b0c mov      rcx, qword ptr [rdi + 8]
00000001405a3b10 mov      edx, r13d
00000001405a3b13 mov      rax, qword ptr [rax + 0x118]
00000001405a3b1a call     qword ptr [rip + 0xe07d8]
00000001405a3b20 mov      rax, qword ptr [rsi + 0x20]
00000001405a3b24 mov      ebx, 0x4200
00000001405a3b29 mov      edx, ebx
00000001405a3b2b mov      rcx, rdi
00000001405a3b2e call     qword ptr [rip + 0xe07c4]
00000001405a3b34 mov      r14d, 0x18604200
00000001405a3b3a lea      r8, [rip + 0xda96f]
00000001405a3b41 btr      eax, 0x10
00000001405a3b45 mov      r9d, r14d
00000001405a3b48 mov      dword ptr [rbp + 0x30], eax
00000001405a3b4b mov      edx, r13d
00000001405a3b4e mov      rax, qword ptr [rdi + 0x18]
00000001405a3b52 mov      rcx, qword ptr [rdi + 8]
00000001405a3b56 mov      rax, qword ptr [rax + 0x118]
00000001405a3b5d call     qword ptr [rip + 0xe0795]
00000001405a3b63 mov      eax, dword ptr [rbp + 0x30]
00000001405a3b66 lea      r8, [rip + 0xdaa03]
00000001405a3b6d and      eax, 0xffffffe2
00000001405a3b70 mov      r9d, r14d
00000001405a3b73 or       eax, 2
00000001405a3b76 mov      edx, r13d
00000001405a3b79 mov      dword ptr [rbp + 0x30], eax
00000001405a3b7c mov      rax, qword ptr [rdi + 0x18]
00000001405a3b80 mov      rcx, qword ptr [rdi + 8]
00000001405a3b84 mov      rax, qword ptr [rax + 0x118]
00000001405a3b8b call     qword ptr [rip + 0xe0767]
00000001405a3b91 mov      rax, qword ptr [rsi + 0x28]
00000001405a3b95 mov      edx, ebx
00000001405a3b97 mov      r8d, dword ptr [rbp + 0x30]
00000001405a3b9b mov      rcx, rdi
00000001405a3b9e call     qword ptr [rip + 0xe0754]
00000001405a3ba4 mov      rax, qword ptr [rdi + 0x18]
00000001405a3ba8 lea      r8, [rip + 0xdaa21]
00000001405a3baf mov      rcx, qword ptr [rdi + 8]
00000001405a3bb3 mov      edx, r13d
00000001405a3bb6 mov      rax, qword ptr [rax + 0x118]
00000001405a3bbd call     qword ptr [rip + 0xe0735]
00000001405a3bc3 lea      rdx, [rip + 0x72a87e]
00000001405a3bca jmp      0x1405aba72
00000001405a3bcf mov      rax, qword ptr [rdi + 0x18]
00000001405a3bd3 lea      r8, [rip + 0xc71a6]
00000001405a3bda mov      rcx, qword ptr [rdi + 8]
00000001405a3bde mov      edx, r13d
00000001405a3be1 mov      rax, qword ptr [rax + 0x118]
00000001405a3be8 call     qword ptr [rip + 0xe070a]
00000001405a3bee mov      rax, qword ptr [rsi + 0x20]
00000001405a3bf2 mov      ebx, 0x4200
00000001405a3bf7 mov      edx, ebx
00000001405a3bf9 mov      rcx, rdi
00000001405a3bfc call     qword ptr [rip + 0xe06f6]
00000001405a3c02 mov      r14d, 0x18604200
00000001405a3c08 lea      r8, [rip + 0xda8a1]
00000001405a3c0f btr      eax, 0x10
00000001405a3c13 mov      r9d, r14d
00000001405a3c16 mov      dword ptr [rbp + 0x30], eax
00000001405a3c19 mov      edx, r13d
00000001405a3c1c mov      rax, qword ptr [rdi + 0x18]
00000001405a3c20 mov      rcx, qword ptr [rdi + 8]
00000001405a3c24 mov      rax, qword ptr [rax + 0x118]
00000001405a3c2b call     qword ptr [rip + 0xe06c7]
00000001405a3c31 mov      eax, dword ptr [rbp + 0x30]
00000001405a3c34 lea      r8, [rip + 0xda935]
00000001405a3c3b and      eax, 0xffffffe2
00000001405a3c3e mov      r9d, r14d
00000001405a3c41 or       eax, 2
00000001405a3c44 mov      edx, r13d
00000001405a3c47 mov      dword ptr [rbp + 0x30], eax
00000001405a3c4a mov      rax, qword ptr [rdi + 0x18]
00000001405a3c4e mov      rcx, qword ptr [rdi + 8]
00000001405a3c52 mov      rax, qword ptr [rax + 0x118]
00000001405a3c59 call     qword ptr [rip + 0xe0699]
00000001405a3c5f mov      rax, qword ptr [rsi + 0x28]
00000001405a3c63 mov      edx, ebx
00000001405a3c65 mov      r8d, dword ptr [rbp + 0x30]
00000001405a3c69 mov      rcx, rdi
00000001405a3c6c call     qword ptr [rip + 0xe0686]
00000001405a3c72 mov      rax, qword ptr [rdi + 0x18]
00000001405a3c76 lea      r8, [rip + 0xc7133]
00000001405a3c7d mov      rcx, qword ptr [rdi + 8]
00000001405a3c81 mov      edx, r13d
00000001405a3c84 mov      rax, qword ptr [rax + 0x118]
00000001405a3c8b call     qword ptr [rip + 0xe0667]
00000001405a3c91 lea      rdx, [rip + 0x72a7a0]
00000001405a3c98 jmp      0x1405aba72
00000001405a3c9d mov      rax, qword ptr [rdi + 0x18]
00000001405a3ca1 lea      r8, [rip + 0xdaa18]
00000001405a3ca8 mov      rcx, qword ptr [rdi + 8]
00000001405a3cac mov      edx, r13d
00000001405a3caf mov      rax, qword ptr [rax + 0x118]
00000001405a3cb6 call     qword ptr [rip + 0xe063c]
00000001405a3cbc mov      rax, qword ptr [rsi + 0x20]
00000001405a3cc0 mov      ebx, 0x4200
00000001405a3cc5 mov      edx, ebx
00000001405a3cc7 mov      rcx, rdi
00000001405a3cca call     qword ptr [rip + 0xe0628]
00000001405a3cd0 mov      r14d, 0x18604200
00000001405a3cd6 lea      r8, [rip + 0xda7d3]
00000001405a3cdd btr      eax, 0x10
00000001405a3ce1 mov      r9d, r14d
00000001405a3ce4 mov      dword ptr [rbp + 0x30], eax
00000001405a3ce7 mov      edx, r13d
00000001405a3cea mov      rax, qword ptr [rdi + 0x18]
00000001405a3cee mov      rcx, qword ptr [rdi + 8]
00000001405a3cf2 mov      rax, qword ptr [rax + 0x118]
00000001405a3cf9 call     qword ptr [rip + 0xe05f9]
00000001405a3cff mov      eax, dword ptr [rbp + 0x30]
00000001405a3d02 lea      r8, [rip + 0xda987]
00000001405a3d09 and      eax, 0xffffffe4
00000001405a3d0c mov      r9d, r14d
00000001405a3d0f or       eax, 4
00000001405a3d12 mov      edx, r13d
00000001405a3d15 mov      dword ptr [rbp + 0x30], eax
00000001405a3d18 mov      rax, qword ptr [rdi + 0x18]
00000001405a3d1c mov      rcx, qword ptr [rdi + 8]
00000001405a3d20 mov      rax, qword ptr [rax + 0x118]
00000001405a3d27 call     qword ptr [rip + 0xe05cb]
00000001405a3d2d mov      rax, qword ptr [rsi + 0x28]
00000001405a3d31 mov      edx, ebx
00000001405a3d33 mov      r8d, dword ptr [rbp + 0x30]
00000001405a3d37 mov      rcx, rdi
00000001405a3d3a call     qword ptr [rip + 0xe05b8]
00000001405a3d40 mov      rax, qword ptr [rdi + 0x18]
00000001405a3d44 lea      r8, [rip + 0xda9a5]
00000001405a3d4b mov      rcx, qword ptr [rdi + 8]
00000001405a3d4f mov      edx, r13d
00000001405a3d52 mov      rax, qword ptr [rax + 0x118]
00000001405a3d59 call     qword ptr [rip + 0xe0599]
00000001405a3d5f lea      rdx, [rip + 0x72a732]
00000001405a3d66 jmp      0x1405aba72
00000001405a3d6b sub      ebx, 0x71
00000001405a3d6e je       0x1405a41ad
00000001405a3d74 sub      ebx, r13d
00000001405a3d77 je       0x1405a40df
00000001405a3d7d sub      ebx, r13d
00000001405a3d80 je       0x1405a4011
00000001405a3d86 sub      ebx, r13d
00000001405a3d89 je       0x1405a3f43
00000001405a3d8f sub      ebx, r13d
00000001405a3d92 je       0x1405a3e72
00000001405a3d98 cmp      ebx, r13d
00000001405a3d9b jne      0x1405ab45d
00000001405a3da1 mov      rax, qword ptr [rdi + 0x18]
00000001405a3da5 lea      r8, [rip + 0xc73f4]
00000001405a3dac mov      rcx, qword ptr [rdi + 8]
00000001405a3db0 mov      edx, r13d
00000001405a3db3 mov      rax, qword ptr [rax + 0x118]
00000001405a3dba call     qword ptr [rip + 0xe0538]
00000001405a3dc0 mov      rax, qword ptr [rsi + 0x20]
00000001405a3dc4 mov      ebx, 0x4200
00000001405a3dc9 mov      edx, ebx
00000001405a3dcb mov      rcx, rdi
00000001405a3dce call     qword ptr [rip + 0xe0524]
00000001405a3dd4 mov      r14d, 0x18604200
00000001405a3dda lea      r8, [rip + 0xda6cf]
00000001405a3de1 btr      eax, 0x10
00000001405a3de5 mov      r9d, r14d
00000001405a3de8 mov      dword ptr [rbp + 0x30], eax
00000001405a3deb mov      edx, r13d
00000001405a3dee mov      rax, qword ptr [rdi + 0x18]
00000001405a3df2 mov      rcx, qword ptr [rdi + 8]
00000001405a3df6 mov      rax, qword ptr [rax + 0x118]
00000001405a3dfd call     qword ptr [rip + 0xe04f5]
00000001405a3e03 mov      eax, dword ptr [rbp + 0x30]
00000001405a3e06 lea      r8, [rip + 0xda943]
00000001405a3e0d and      eax, 0xffffffe6
00000001405a3e10 mov      r9d, r14d
00000001405a3e13 or       eax, 6
00000001405a3e16 mov      edx, r13d
00000001405a3e19 mov      dword ptr [rbp + 0x30], eax
00000001405a3e1c mov      rax, qword ptr [rdi + 0x18]
00000001405a3e20 mov      rcx, qword ptr [rdi + 8]
00000001405a3e24 mov      rax, qword ptr [rax + 0x118]
00000001405a3e2b call     qword ptr [rip + 0xe04c7]
00000001405a3e31 mov      rax, qword ptr [rsi + 0x28]
00000001405a3e35 mov      edx, ebx
00000001405a3e37 mov      r8d, dword ptr [rbp + 0x30]
00000001405a3e3b mov      rcx, rdi
00000001405a3e3e call     qword ptr [rip + 0xe04b4]
00000001405a3e44 mov      rax, qword ptr [rdi + 0x18]
00000001405a3e48 lea      r8, [rip + 0xc7381]
00000001405a3e4f mov      rcx, qword ptr [rdi + 8]
00000001405a3e53 mov      edx, r13d
00000001405a3e56 mov      rax, qword ptr [rax + 0x118]
00000001405a3e5d call     qword ptr [rip + 0xe0495]
00000001405a3e63 mov      r9b, r13b
00000001405a3e66 lea      rdx, [rip + 0x72a68b]
00000001405a3e6d jmp      0x1405aba75
00000001405a3e72 mov      rax, qword ptr [rdi + 0x18]
00000001405a3e76 lea      r8, [rip + 0xc7293]
00000001405a3e7d mov      rcx, qword ptr [rdi + 8]
00000001405a3e81 mov      edx, r13d
00000001405a3e84 mov      rax, qword ptr [rax + 0x118]
00000001405a3e8b call     qword ptr [rip + 0xe0467]
00000001405a3e91 mov      rax, qword ptr [rsi + 0x20]
00000001405a3e95 mov      ebx, 0x4200
00000001405a3e9a mov      edx, ebx
00000001405a3e9c mov      rcx, rdi
00000001405a3e9f call     qword ptr [rip + 0xe0453]
00000001405a3ea5 mov      r14d, 0x18604200
00000001405a3eab lea      r8, [rip + 0xda5fe]
00000001405a3eb2 btr      eax, 0x10
00000001405a3eb6 mov      r9d, r14d
00000001405a3eb9 mov      dword ptr [rbp + 0x30], eax
00000001405a3ebc mov      edx, r13d
00000001405a3ebf mov      rax, qword ptr [rdi + 0x18]
00000001405a3ec3 mov      rcx, qword ptr [rdi + 8]
00000001405a3ec7 mov      rax, qword ptr [rax + 0x118]
00000001405a3ece call     qword ptr [rip + 0xe0424]
00000001405a3ed4 mov      eax, dword ptr [rbp + 0x30]
00000001405a3ed7 lea      r8, [rip + 0xda872]
00000001405a3ede and      eax, 0xffffffe6
00000001405a3ee1 mov      r9d, r14d
00000001405a3ee4 or       eax, 6
00000001405a3ee7 mov      edx, r13d
00000001405a3eea mov      dword ptr [rbp + 0x30], eax
00000001405a3eed mov      rax, qword ptr [rdi + 0x18]
00000001405a3ef1 mov      rcx, qword ptr [rdi + 8]
00000001405a3ef5 mov      rax, qword ptr [rax + 0x118]
00000001405a3efc call     qword ptr [rip + 0xe03f6]
00000001405a3f02 mov      rax, qword ptr [rsi + 0x28]
00000001405a3f06 mov      edx, ebx
00000001405a3f08 mov      r8d, dword ptr [rbp + 0x30]
00000001405a3f0c mov      rcx, rdi
00000001405a3f0f call     qword ptr [rip + 0xe03e3]
00000001405a3f15 mov      rax, qword ptr [rdi + 0x18]
00000001405a3f19 lea      r8, [rip + 0xc7250]
00000001405a3f20 mov      rcx, qword ptr [rdi + 8]
00000001405a3f24 mov      edx, r13d
00000001405a3f27 mov      rax, qword ptr [rax + 0x118]
00000001405a3f2e call     qword ptr [rip + 0xe03c4]
00000001405a3f34 mov      r9b, r13b
00000001405a3f37 lea      rdx, [rip + 0x72a5aa]
00000001405a3f3e jmp      0x1405aba75
00000001405a3f43 mov      rax, qword ptr [rdi + 0x18]
00000001405a3f47 lea      r8, [rip + 0xc7162]
00000001405a3f4e mov      rcx, qword ptr [rdi + 8]
00000001405a3f52 mov      edx, r13d
00000001405a3f55 mov      rax, qword ptr [rax + 0x118]
00000001405a3f5c call     qword ptr [rip + 0xe0396]
00000001405a3f62 mov      rax, qword ptr [rsi + 0x20]
00000001405a3f66 mov      ebx, 0x4200
00000001405a3f6b mov      edx, ebx
00000001405a3f6d mov      rcx, rdi
00000001405a3f70 call     qword ptr [rip + 0xe0382]
00000001405a3f76 mov      r14d, 0x18604200
00000001405a3f7c lea      r8, [rip + 0xda52d]
00000001405a3f83 btr      eax, 0x10
00000001405a3f87 mov      r9d, r14d
00000001405a3f8a mov      dword ptr [rbp + 0x30], eax
00000001405a3f8d mov      edx, r13d
00000001405a3f90 mov      rax, qword ptr [rdi + 0x18]
00000001405a3f94 mov      rcx, qword ptr [rdi + 8]
00000001405a3f98 mov      rax, qword ptr [rax + 0x118]
00000001405a3f9f call     qword ptr [rip + 0xe0353]
00000001405a3fa5 mov      eax, dword ptr [rbp + 0x30]
00000001405a3fa8 lea      r8, [rip + 0xda771]
00000001405a3faf and      eax, 0xffffffe5
00000001405a3fb2 mov      r9d, r14d
00000001405a3fb5 or       eax, 5
00000001405a3fb8 mov      edx, r13d
00000001405a3fbb mov      dword ptr [rbp + 0x30], eax
00000001405a3fbe mov      rax, qword ptr [rdi + 0x18]
00000001405a3fc2 mov      rcx, qword ptr [rdi + 8]
00000001405a3fc6 mov      rax, qword ptr [rax + 0x118]
00000001405a3fcd call     qword ptr [rip + 0xe0325]
00000001405a3fd3 mov      rax, qword ptr [rsi + 0x28]
00000001405a3fd7 mov      edx, ebx
00000001405a3fd9 mov      r8d, dword ptr [rbp + 0x30]
00000001405a3fdd mov      rcx, rdi
00000001405a3fe0 call     qword ptr [rip + 0xe0312]
00000001405a3fe6 mov      rax, qword ptr [rdi + 0x18]
00000001405a3fea lea      r8, [rip + 0xc70ef]
00000001405a3ff1 mov      rcx, qword ptr [rdi + 8]
00000001405a3ff5 mov      edx, r13d
00000001405a3ff8 mov      rax, qword ptr [rax + 0x118]
00000001405a3fff call     qword ptr [rip + 0xe02f3]
00000001405a4005 lea      rdx, [rip + 0x72a4cc]
00000001405a400c jmp      0x1405aba72
00000001405a4011 mov      rax, qword ptr [rdi + 0x18]
00000001405a4015 lea      r8, [rip + 0xc7034]
00000001405a401c mov      rcx, qword ptr [rdi + 8]
00000001405a4020 mov      edx, r13d
00000001405a4023 mov      rax, qword ptr [rax + 0x118]
00000001405a402a call     qword ptr [rip + 0xe02c8]
00000001405a4030 mov      rax, qword ptr [rsi + 0x20]
00000001405a4034 mov      ebx, 0x4200
00000001405a4039 mov      edx, ebx
00000001405a403b mov      rcx, rdi
00000001405a403e call     qword ptr [rip + 0xe02b4]
00000001405a4044 mov      r14d, 0x18604200
00000001405a404a lea      r8, [rip + 0xda45f]
00000001405a4051 btr      eax, 0x10
00000001405a4055 mov      r9d, r14d
00000001405a4058 mov      dword ptr [rbp + 0x30], eax
00000001405a405b mov      edx, r13d
00000001405a405e mov      rax, qword ptr [rdi + 0x18]
00000001405a4062 mov      rcx, qword ptr [rdi + 8]
00000001405a4066 mov      rax, qword ptr [rax + 0x118]
00000001405a406d call     qword ptr [rip + 0xe0285]
00000001405a4073 mov      eax, dword ptr [rbp + 0x30]
00000001405a4076 lea      r8, [rip + 0xda6a3]
00000001405a407d and      eax, 0xffffffe5
00000001405a4080 mov      r9d, r14d
00000001405a4083 or       eax, 5
00000001405a4086 mov      edx, r13d
00000001405a4089 mov      dword ptr [rbp + 0x30], eax
00000001405a408c mov      rax, qword ptr [rdi + 0x18]
00000001405a4090 mov      rcx, qword ptr [rdi + 8]
00000001405a4094 mov      rax, qword ptr [rax + 0x118]
00000001405a409b call     qword ptr [rip + 0xe0257]
00000001405a40a1 mov      rax, qword ptr [rsi + 0x28]
00000001405a40a5 mov      edx, ebx
00000001405a40a7 mov      r8d, dword ptr [rbp + 0x30]
00000001405a40ab mov      rcx, rdi
00000001405a40ae call     qword ptr [rip + 0xe0244]
00000001405a40b4 mov      rax, qword ptr [rdi + 0x18]
00000001405a40b8 lea      r8, [rip + 0xc6fc1]
00000001405a40bf mov      rcx, qword ptr [rdi + 8]
00000001405a40c3 mov      edx, r13d
00000001405a40c6 mov      rax, qword ptr [rax + 0x118]
00000001405a40cd call     qword ptr [rip + 0xe0225]
00000001405a40d3 lea      rdx, [rip + 0x72a3ee]
00000001405a40da jmp      0x1405aba72
00000001405a40df mov      rax, qword ptr [rdi + 0x18]
00000001405a40e3 lea      r8, [rip + 0xc6f06]
00000001405a40ea mov      rcx, qword ptr [rdi + 8]
00000001405a40ee mov      edx, r13d
00000001405a40f1 mov      rax, qword ptr [rax + 0x118]
00000001405a40f8 call     qword ptr [rip + 0xe01fa]
00000001405a40fe mov      rax, qword ptr [rsi + 0x20]
00000001405a4102 mov      ebx, 0x4200
00000001405a4107 mov      edx, ebx
00000001405a4109 mov      rcx, rdi
00000001405a410c call     qword ptr [rip + 0xe01e6]
00000001405a4112 mov      r14d, 0x18604200
00000001405a4118 lea      r8, [rip + 0xda391]
00000001405a411f btr      eax, 0x10
00000001405a4123 mov      r9d, r14d
00000001405a4126 mov      dword ptr [rbp + 0x30], eax
00000001405a4129 mov      edx, r13d
00000001405a412c mov      rax, qword ptr [rdi + 0x18]
00000001405a4130 mov      rcx, qword ptr [rdi + 8]
00000001405a4134 mov      rax, qword ptr [rax + 0x118]
00000001405a413b call     qword ptr [rip + 0xe01b7]
00000001405a4141 mov      eax, dword ptr [rbp + 0x30]
00000001405a4144 lea      r8, [rip + 0xda5d5]
00000001405a414b and      eax, 0xffffffe5
00000001405a414e mov      r9d, r14d
00000001405a4151 or       eax, 5
00000001405a4154 mov      edx, r13d
00000001405a4157 mov      dword ptr [rbp + 0x30], eax
00000001405a415a mov      rax, qword ptr [rdi + 0x18]
00000001405a415e mov      rcx, qword ptr [rdi + 8]
00000001405a4162 mov      rax, qword ptr [rax + 0x118]
00000001405a4169 call     qword ptr [rip + 0xe0189]
00000001405a416f mov      rax, qword ptr [rsi + 0x28]
00000001405a4173 mov      edx, ebx
00000001405a4175 mov      r8d, dword ptr [rbp + 0x30]
00000001405a4179 mov      rcx, rdi
00000001405a417c call     qword ptr [rip + 0xe0176]
00000001405a4182 mov      rax, qword ptr [rdi + 0x18]
00000001405a4186 lea      r8, [rip + 0xc6e93]
00000001405a418d mov      rcx, qword ptr [rdi + 8]
00000001405a4191 mov      edx, r13d
00000001405a4194 mov      rax, qword ptr [rax + 0x118]
00000001405a419b call     qword ptr [rip + 0xe0157]
00000001405a41a1 lea      rdx, [rip + 0x72a310]
00000001405a41a8 jmp      0x1405aba72
00000001405a41ad mov      rax, qword ptr [rdi + 0x18]
00000001405a41b1 lea      r8, [rip + 0xc6da8]
00000001405a41b8 mov      rcx, qword ptr [rdi + 8]
00000001405a41bc mov      edx, r13d
00000001405a41bf mov      rax, qword ptr [rax + 0x118]
00000001405a41c6 call     qword ptr [rip + 0xe012c]
00000001405a41cc mov      rax, qword ptr [rsi + 0x20]
00000001405a41d0 mov      ebx, 0x4200
00000001405a41d5 mov      edx, ebx
00000001405a41d7 mov      rcx, rdi
00000001405a41da call     qword ptr [rip + 0xe0118]
00000001405a41e0 mov      r14d, 0x18604200
00000001405a41e6 lea      r8, [rip + 0xda2c3]
00000001405a41ed btr      eax, 0x10
00000001405a41f1 mov      r9d, r14d
00000001405a41f4 mov      dword ptr [rbp + 0x30], eax
00000001405a41f7 mov      edx, r13d
00000001405a41fa mov      rax, qword ptr [rdi + 0x18]
00000001405a41fe mov      rcx, qword ptr [rdi + 8]
00000001405a4202 mov      rax, qword ptr [rax + 0x118]
00000001405a4209 call     qword ptr [rip + 0xe00e9]
00000001405a420f mov      eax, dword ptr [rbp + 0x30]
00000001405a4212 lea      r8, [rip + 0xda507]
00000001405a4219 and      eax, 0xffffffe5
00000001405a421c mov      r9d, r14d
00000001405a421f or       eax, 5
00000001405a4222 mov      edx, r13d
00000001405a4225 mov      dword ptr [rbp + 0x30], eax
00000001405a4228 mov      rax, qword ptr [rdi + 0x18]
00000001405a422c mov      rcx, qword ptr [rdi + 8]
00000001405a4230 mov      rax, qword ptr [rax + 0x118]
00000001405a4237 call     qword ptr [rip + 0xe00bb]
00000001405a423d mov      rax, qword ptr [rsi + 0x28]
00000001405a4241 mov      edx, ebx
00000001405a4243 mov      r8d, dword ptr [rbp + 0x30]
00000001405a4247 mov      rcx, rdi
00000001405a424a call     qword ptr [rip + 0xe00a8]
00000001405a4250 mov      rax, qword ptr [rdi + 0x18]
00000001405a4254 lea      r8, [rip + 0xc6d65]
00000001405a425b mov      rcx, qword ptr [rdi + 8]
00000001405a425f mov      edx, r13d
00000001405a4262 mov      rax, qword ptr [rax + 0x118]
00000001405a4269 call     qword ptr [rip + 0xe0089]
00000001405a426f lea      rdx, [rip + 0x72a232]
00000001405a4276 jmp      0x1405aba72
00000001405a427b mov      rax, qword ptr [rdi + 0x18]
00000001405a427f lea      r8, [rip + 0xc6f8a]
00000001405a4286 mov      rcx, qword ptr [rdi + 8]
00000001405a428a mov      edx, r13d
00000001405a428d mov      rax, qword ptr [rax + 0x118]
00000001405a4294 call     qword ptr [rip + 0xe005e]
00000001405a429a mov      rax, qword ptr [rsi + 0x20]
00000001405a429e mov      ebx, 0x4200
00000001405a42a3 mov      edx, ebx
00000001405a42a5 mov      rcx, rdi
00000001405a42a8 call     qword ptr [rip + 0xe004a]
00000001405a42ae mov      r14d, 0x18604200
00000001405a42b4 lea      r8, [rip + 0xda1f5]
00000001405a42bb btr      eax, 0x10
00000001405a42bf mov      r9d, r14d
00000001405a42c2 mov      dword ptr [rbp + 0x30], eax
00000001405a42c5 mov      edx, r13d
00000001405a42c8 mov      rax, qword ptr [rdi + 0x18]
00000001405a42cc mov      rcx, qword ptr [rdi + 8]
00000001405a42d0 mov      rax, qword ptr [rax + 0x118]
00000001405a42d7 call     qword ptr [rip + 0xe001b]
00000001405a42dd mov      eax, dword ptr [rbp + 0x30]
00000001405a42e0 lea      r8, [rip + 0xda499]
00000001405a42e7 and      eax, 0xffffffe7
00000001405a42ea mov      r9d, r14d
00000001405a42ed or       eax, 7
00000001405a42f0 mov      edx, r13d
00000001405a42f3 mov      dword ptr [rbp + 0x30], eax
00000001405a42f6 mov      rax, qword ptr [rdi + 0x18]
00000001405a42fa mov      rcx, qword ptr [rdi + 8]
00000001405a42fe mov      rax, qword ptr [rax + 0x118]
00000001405a4305 call     qword ptr [rip + 0xdffed]
00000001405a430b mov      rax, qword ptr [rsi + 0x28]
00000001405a430f mov      edx, ebx
00000001405a4311 mov      r8d, dword ptr [rbp + 0x30]
00000001405a4315 mov      rcx, rdi
00000001405a4318 call     qword ptr [rip + 0xdffda]
00000001405a431e mov      rax, qword ptr [rdi + 0x18]
00000001405a4322 lea      r8, [rip + 0xc6f47]
00000001405a4329 mov      rcx, qword ptr [rdi + 8]
00000001405a432d mov      edx, r13d
00000001405a4330 mov      rax, qword ptr [rax + 0x118]
00000001405a4337 call     qword ptr [rip + 0xdffbb]
00000001405a433d mov      r9b, r13b
00000001405a4340 lea      rdx, [rip + 0x72a1c1]
00000001405a4347 jmp      0x1405aba75
00000001405a434c cmp      ebx, 0x7e
00000001405a434f ja       0x1405a4990
00000001405a4355 je       0x1405a4874
00000001405a435b sub      ebx, 0x78
00000001405a435e je       0x1405a47a3
00000001405a4364 sub      ebx, r13d
00000001405a4367 je       0x1405a46d2
00000001405a436d sub      ebx, r13d
00000001405a4370 je       0x1405a4604
00000001405a4376 sub      ebx, r13d
00000001405a4379 je       0x1405a4533
00000001405a437f sub      ebx, r13d
00000001405a4382 je       0x1405a4462
00000001405a4388 cmp      ebx, r13d
00000001405a438b jne      0x1405ab45d
00000001405a4391 mov      rax, qword ptr [rdi + 0x18]
00000001405a4395 lea      r8, [rip + 0xda564]
00000001405a439c mov      rcx, qword ptr [rdi + 8]
00000001405a43a0 mov      edx, r13d
00000001405a43a3 mov      rax, qword ptr [rax + 0x118]
00000001405a43aa call     qword ptr [rip + 0xdff48]
00000001405a43b0 mov      rax, qword ptr [rsi + 0x20]
00000001405a43b4 mov      ebx, 0x4200
00000001405a43b9 mov      edx, ebx
00000001405a43bb mov      rcx, rdi
00000001405a43be call     qword ptr [rip + 0xdff34]
00000001405a43c4 mov      r14d, 0x18604200
00000001405a43ca lea      r8, [rip + 0xda0df]
00000001405a43d1 btr      eax, 0x10
00000001405a43d5 mov      r9d, r14d
00000001405a43d8 mov      dword ptr [rbp + 0x30], eax
00000001405a43db mov      edx, r13d
00000001405a43de mov      rax, qword ptr [rdi + 0x18]
00000001405a43e2 mov      rcx, qword ptr [rdi + 8]
00000001405a43e6 mov      rax, qword ptr [rax + 0x118]
00000001405a43ed call     qword ptr [rip + 0xdff05]
00000001405a43f3 mov      eax, dword ptr [rbp + 0x30]
00000001405a43f6 lea      r8, [rip + 0xda4a3]
00000001405a43fd and      eax, 0xffffffed
00000001405a4400 mov      r9d, r14d
00000001405a4403 or       eax, 0xd
00000001405a4406 mov      edx, r13d
00000001405a4409 mov      dword ptr [rbp + 0x30], eax
00000001405a440c mov      rax, qword ptr [rdi + 0x18]
00000001405a4410 mov      rcx, qword ptr [rdi + 8]
00000001405a4414 mov      rax, qword ptr [rax + 0x118]
00000001405a441b call     qword ptr [rip + 0xdfed7]
00000001405a4421 mov      rax, qword ptr [rsi + 0x28]
00000001405a4425 mov      edx, ebx
00000001405a4427 mov      r8d, dword ptr [rbp + 0x30]
00000001405a442b mov      rcx, rdi
00000001405a442e call     qword ptr [rip + 0xdfec4]
00000001405a4434 mov      rax, qword ptr [rdi + 0x18]
00000001405a4438 lea      r8, [rip + 0xda4f1]
00000001405a443f mov      rcx, qword ptr [rdi + 8]
00000001405a4443 mov      edx, r13d
00000001405a4446 mov      rax, qword ptr [rax + 0x118]
00000001405a444d call     qword ptr [rip + 0xdfea5]
00000001405a4453 mov      r9b, r13b
00000001405a4456 lea      rdx, [rip + 0x72a10b]
00000001405a445d jmp      0x1405aba75
00000001405a4462 mov      rax, qword ptr [rdi + 0x18]
00000001405a4466 lea      r8, [rip + 0xda403]
00000001405a446d mov      rcx, qword ptr [rdi + 8]
00000001405a4471 mov      edx, r13d
00000001405a4474 mov      rax, qword ptr [rax + 0x118]
00000001405a447b call     qword ptr [rip + 0xdfe77]
00000001405a4481 mov      rax, qword ptr [rsi + 0x20]
00000001405a4485 mov      ebx, 0x4200
00000001405a448a mov      edx, ebx
00000001405a448c mov      rcx, rdi
00000001405a448f call     qword ptr [rip + 0xdfe63]
00000001405a4495 mov      r14d, 0x18604200
00000001405a449b lea      r8, [rip + 0xda00e]
00000001405a44a2 btr      eax, 0x10
00000001405a44a6 mov      r9d, r14d
00000001405a44a9 mov      dword ptr [rbp + 0x30], eax
00000001405a44ac mov      edx, r13d
00000001405a44af mov      rax, qword ptr [rdi + 0x18]
00000001405a44b3 mov      rcx, qword ptr [rdi + 8]
00000001405a44b7 mov      rax, qword ptr [rax + 0x118]
00000001405a44be call     qword ptr [rip + 0xdfe34]
00000001405a44c4 mov      eax, dword ptr [rbp + 0x30]
00000001405a44c7 lea      r8, [rip + 0xda3d2]
00000001405a44ce and      eax, 0xffffffed
00000001405a44d1 mov      r9d, r14d
00000001405a44d4 or       eax, 0xd
00000001405a44d7 mov      edx, r13d
00000001405a44da mov      dword ptr [rbp + 0x30], eax
00000001405a44dd mov      rax, qword ptr [rdi + 0x18]
00000001405a44e1 mov      rcx, qword ptr [rdi + 8]
00000001405a44e5 mov      rax, qword ptr [rax + 0x118]
00000001405a44ec call     qword ptr [rip + 0xdfe06]
00000001405a44f2 mov      rax, qword ptr [rsi + 0x28]
00000001405a44f6 mov      edx, ebx
00000001405a44f8 mov      r8d, dword ptr [rbp + 0x30]
00000001405a44fc mov      rcx, rdi
00000001405a44ff call     qword ptr [rip + 0xdfdf3]
00000001405a4505 mov      rax, qword ptr [rdi + 0x18]
00000001405a4509 lea      r8, [rip + 0xda3c0]
00000001405a4510 mov      rcx, qword ptr [rdi + 8]
00000001405a4514 mov      edx, r13d
00000001405a4517 mov      rax, qword ptr [rax + 0x118]
00000001405a451e call     qword ptr [rip + 0xdfdd4]
00000001405a4524 mov      r9b, r13b
00000001405a4527 lea      rdx, [rip + 0x72a02a]
00000001405a452e jmp      0x1405aba75
00000001405a4533 mov      rax, qword ptr [rdi + 0x18]
00000001405a4537 lea      r8, [rip + 0xc6f12]
00000001405a453e mov      rcx, qword ptr [rdi + 8]
00000001405a4542 mov      edx, r13d
00000001405a4545 mov      rax, qword ptr [rax + 0x118]
00000001405a454c call     qword ptr [rip + 0xdfda6]
00000001405a4552 mov      rax, qword ptr [rsi + 0x20]
00000001405a4556 mov      ebx, 0x4200
00000001405a455b mov      edx, ebx
00000001405a455d mov      rcx, rdi
00000001405a4560 call     qword ptr [rip + 0xdfd92]
00000001405a4566 mov      r14d, 0x18604200
00000001405a456c lea      r8, [rip + 0xd9f3d]
00000001405a4573 btr      eax, 0x10
00000001405a4577 mov      r9d, r14d
00000001405a457a mov      dword ptr [rbp + 0x30], eax
00000001405a457d mov      edx, r13d
00000001405a4580 mov      rax, qword ptr [rdi + 0x18]
00000001405a4584 mov      rcx, qword ptr [rdi + 8]
00000001405a4588 mov      rax, qword ptr [rax + 0x118]
00000001405a458f call     qword ptr [rip + 0xdfd63]
00000001405a4595 mov      eax, dword ptr [rbp + 0x30]
00000001405a4598 lea      r8, [rip + 0xda2a1]
00000001405a459f and      eax, 0xffffffec
00000001405a45a2 mov      r9d, r14d
00000001405a45a5 or       eax, 0xc
00000001405a45a8 mov      edx, r13d
00000001405a45ab mov      dword ptr [rbp + 0x30], eax
00000001405a45ae mov      rax, qword ptr [rdi + 0x18]
00000001405a45b2 mov      rcx, qword ptr [rdi + 8]
00000001405a45b6 mov      rax, qword ptr [rax + 0x118]
00000001405a45bd call     qword ptr [rip + 0xdfd35]
00000001405a45c3 mov      rax, qword ptr [rsi + 0x28]
00000001405a45c7 mov      edx, ebx
00000001405a45c9 mov      r8d, dword ptr [rbp + 0x30]
00000001405a45cd mov      rcx, rdi
00000001405a45d0 call     qword ptr [rip + 0xdfd22]
00000001405a45d6 mov      rax, qword ptr [rdi + 0x18]
00000001405a45da lea      r8, [rip + 0xc6ecf]
00000001405a45e1 mov      rcx, qword ptr [rdi + 8]
00000001405a45e5 mov      edx, r13d
00000001405a45e8 mov      rax, qword ptr [rax + 0x118]
00000001405a45ef call     qword ptr [rip + 0xdfd03]
00000001405a45f5 mov      r9b, r13b
00000001405a45f8 lea      rdx, [rip + 0x729f49]
00000001405a45ff jmp      0x1405aba75
00000001405a4604 mov      rax, qword ptr [rdi + 0x18]
00000001405a4608 lea      r8, [rip + 0xc6db1]
00000001405a460f mov      rcx, qword ptr [rdi + 8]
00000001405a4613 mov      edx, r13d
00000001405a4616 mov      rax, qword ptr [rax + 0x118]
00000001405a461d call     qword ptr [rip + 0xdfcd5]
00000001405a4623 mov      rax, qword ptr [rsi + 0x20]
00000001405a4627 mov      ebx, 0x4200
00000001405a462c mov      edx, ebx
00000001405a462e mov      rcx, rdi
00000001405a4631 call     qword ptr [rip + 0xdfcc1]
00000001405a4637 mov      r14d, 0x18604200
00000001405a463d lea      r8, [rip + 0xd9e6c]
00000001405a4644 btr      eax, 0x10
00000001405a4648 mov      r9d, r14d
00000001405a464b mov      dword ptr [rbp + 0x30], eax
00000001405a464e mov      edx, r13d
00000001405a4651 mov      rax, qword ptr [rdi + 0x18]
00000001405a4655 mov      rcx, qword ptr [rdi + 8]
00000001405a4659 mov      rax, qword ptr [rax + 0x118]
00000001405a4660 call     qword ptr [rip + 0xdfc92]
00000001405a4666 mov      eax, dword ptr [rbp + 0x30]
00000001405a4669 lea      r8, [rip + 0xda1a0]
00000001405a4670 and      eax, 0xffffffea
00000001405a4673 mov      r9d, r14d
00000001405a4676 or       eax, 0xa
00000001405a4679 mov      edx, r13d
00000001405a467c mov      dword ptr [rbp + 0x30], eax
00000001405a467f mov      rax, qword ptr [rdi + 0x18]
00000001405a4683 mov      rcx, qword ptr [rdi + 8]
00000001405a4687 mov      rax, qword ptr [rax + 0x118]
00000001405a468e call     qword ptr [rip + 0xdfc64]
00000001405a4694 mov      rax, qword ptr [rsi + 0x28]
00000001405a4698 mov      edx, ebx
00000001405a469a mov      r8d, dword ptr [rbp + 0x30]
00000001405a469e mov      rcx, rdi
00000001405a46a1 call     qword ptr [rip + 0xdfc51]
00000001405a46a7 mov      rax, qword ptr [rdi + 0x18]
00000001405a46ab lea      r8, [rip + 0xc6d6e]
00000001405a46b2 mov      rcx, qword ptr [rdi + 8]
00000001405a46b6 mov      edx, r13d
00000001405a46b9 mov      rax, qword ptr [rax + 0x118]
00000001405a46c0 call     qword ptr [rip + 0xdfc32]
00000001405a46c6 lea      rdx, [rip + 0x729e6b]
00000001405a46cd jmp      0x1405aba72
00000001405a46d2 mov      rax, qword ptr [rdi + 0x18]
00000001405a46d6 lea      r8, [rip + 0xc6c53]
00000001405a46dd mov      rcx, qword ptr [rdi + 8]
00000001405a46e1 mov      edx, r13d
00000001405a46e4 mov      rax, qword ptr [rax + 0x118]
00000001405a46eb call     qword ptr [rip + 0xdfc07]
00000001405a46f1 mov      rax, qword ptr [rsi + 0x20]
00000001405a46f5 mov      ebx, 0x4200
00000001405a46fa mov      edx, ebx
00000001405a46fc mov      rcx, rdi
00000001405a46ff call     qword ptr [rip + 0xdfbf3]
00000001405a4705 mov      r14d, 0x18604200
00000001405a470b lea      r8, [rip + 0xd9d9e]
00000001405a4712 btr      eax, 0x10
00000001405a4716 mov      r9d, r14d
00000001405a4719 mov      dword ptr [rbp + 0x30], eax
00000001405a471c mov      edx, r13d
00000001405a471f mov      rax, qword ptr [rdi + 0x18]
00000001405a4723 mov      rcx, qword ptr [rdi + 8]
00000001405a4727 mov      rax, qword ptr [rax + 0x118]
00000001405a472e call     qword ptr [rip + 0xdfbc4]
00000001405a4734 mov      eax, dword ptr [rbp + 0x30]
00000001405a4737 lea      r8, [rip + 0xda0a2]
00000001405a473e and      eax, 0xffffffe9
00000001405a4741 mov      r9d, r14d
00000001405a4744 or       eax, 9
00000001405a4747 mov      edx, r13d
00000001405a474a mov      dword ptr [rbp + 0x30], eax
00000001405a474d mov      rax, qword ptr [rdi + 0x18]
00000001405a4751 mov      rcx, qword ptr [rdi + 8]
00000001405a4755 mov      rax, qword ptr [rax + 0x118]
00000001405a475c call     qword ptr [rip + 0xdfb96]
00000001405a4762 mov      rax, qword ptr [rsi + 0x28]
00000001405a4766 mov      edx, ebx
00000001405a4768 mov      r8d, dword ptr [rbp + 0x30]
00000001405a476c mov      rcx, rdi
00000001405a476f call     qword ptr [rip + 0xdfb83]
00000001405a4775 mov      rax, qword ptr [rdi + 0x18]
00000001405a4779 lea      r8, [rip + 0xc6c10]
00000001405a4780 mov      rcx, qword ptr [rdi + 8]
00000001405a4784 mov      edx, r13d
00000001405a4787 mov      rax, qword ptr [rax + 0x118]
00000001405a478e call     qword ptr [rip + 0xdfb64]
00000001405a4794 mov      r9b, r13b
00000001405a4797 lea      rdx, [rip + 0x729d8a]
00000001405a479e jmp      0x1405aba75
00000001405a47a3 mov      rax, qword ptr [rdi + 0x18]
00000001405a47a7 lea      r8, [rip + 0xc6af2]
00000001405a47ae mov      rcx, qword ptr [rdi + 8]
00000001405a47b2 mov      edx, r13d
00000001405a47b5 mov      rax, qword ptr [rax + 0x118]
00000001405a47bc call     qword ptr [rip + 0xdfb36]
00000001405a47c2 mov      rax, qword ptr [rsi + 0x20]
00000001405a47c6 mov      ebx, 0x4200
00000001405a47cb mov      edx, ebx
00000001405a47cd mov      rcx, rdi
00000001405a47d0 call     qword ptr [rip + 0xdfb22]
00000001405a47d6 mov      r14d, 0x18604200
00000001405a47dc lea      r8, [rip + 0xd9ccd]
00000001405a47e3 btr      eax, 0x10
00000001405a47e7 mov      r9d, r14d
00000001405a47ea mov      dword ptr [rbp + 0x30], eax
00000001405a47ed mov      edx, r13d
00000001405a47f0 mov      rax, qword ptr [rdi + 0x18]
00000001405a47f4 mov      rcx, qword ptr [rdi + 8]
00000001405a47f8 mov      rax, qword ptr [rax + 0x118]
00000001405a47ff call     qword ptr [rip + 0xdfaf3]
00000001405a4805 mov      eax, dword ptr [rbp + 0x30]
00000001405a4808 lea      r8, [rip + 0xd9fa1]
00000001405a480f and      eax, 0xffffffe8
00000001405a4812 mov      r9d, r14d
00000001405a4815 or       eax, 8
00000001405a4818 mov      edx, r13d
00000001405a481b mov      dword ptr [rbp + 0x30], eax
00000001405a481e mov      rax, qword ptr [rdi + 0x18]
00000001405a4822 mov      rcx, qword ptr [rdi + 8]
00000001405a4826 mov      rax, qword ptr [rax + 0x118]
00000001405a482d call     qword ptr [rip + 0xdfac5]
00000001405a4833 mov      rax, qword ptr [rsi + 0x28]
00000001405a4837 mov      edx, ebx
00000001405a4839 mov      r8d, dword ptr [rbp + 0x30]
00000001405a483d mov      rcx, rdi
00000001405a4840 call     qword ptr [rip + 0xdfab2]
00000001405a4846 mov      rax, qword ptr [rdi + 0x18]
00000001405a484a lea      r8, [rip + 0xc6aaf]
00000001405a4851 mov      rcx, qword ptr [rdi + 8]
00000001405a4855 mov      edx, r13d
00000001405a4858 mov      rax, qword ptr [rax + 0x118]
00000001405a485f call     qword ptr [rip + 0xdfa93]
00000001405a4865 mov      r9b, r13b
00000001405a4868 lea      rdx, [rip + 0x729ca9]
00000001405a486f jmp      0x1405aba75
00000001405a4874 mov      rax, qword ptr [rdi + 0x18]
00000001405a4878 lea      r8, [rip + 0xc6c61]
00000001405a487f mov      rcx, qword ptr [rdi + 8]
00000001405a4883 mov      edx, r13d
00000001405a4886 mov      rax, qword ptr [rax + 0x118]
00000001405a488d call     qword ptr [rip + 0xdfa65]
00000001405a4893 mov      rax, qword ptr [rsi + 0x20]
00000001405a4897 mov      ebx, 0x4200
00000001405a489c mov      edx, ebx
00000001405a489e mov      rcx, rdi
00000001405a48a1 call     qword ptr [rip + 0xdfa51]
00000001405a48a7 mov      r14d, 0x18604200
00000001405a48ad lea      r8, [rip + 0xd9bfc]
00000001405a48b4 btr      eax, 0x10
00000001405a48b8 mov      r9d, r14d
00000001405a48bb mov      dword ptr [rbp + 0x30], eax
00000001405a48be mov      edx, r13d
00000001405a48c1 mov      rax, qword ptr [rdi + 0x18]
00000001405a48c5 mov      rcx, qword ptr [rdi + 8]
00000001405a48c9 mov      rax, qword ptr [rax + 0x118]
00000001405a48d0 call     qword ptr [rip + 0xdfa22]
00000001405a48d6 mov      eax, dword ptr [rbp + 0x30]
00000001405a48d9 lea      r8, [rip + 0xda080]
00000001405a48e0 and      eax, 0xffffffef
00000001405a48e3 mov      r9d, r14d
00000001405a48e6 or       eax, 0xf
00000001405a48e9 mov      edx, r13d
00000001405a48ec mov      dword ptr [rbp + 0x30], eax
00000001405a48ef mov      rax, qword ptr [rdi + 0x18]
00000001405a48f3 mov      rcx, qword ptr [rdi + 8]
00000001405a48f7 mov      rax, qword ptr [rax + 0x118]
00000001405a48fe call     qword ptr [rip + 0xdf9f4]
00000001405a4904 mov      rax, qword ptr [rsi + 0x28]
00000001405a4908 mov      edx, ebx
00000001405a490a mov      r8d, dword ptr [rbp + 0x30]
00000001405a490e mov      rcx, rdi
00000001405a4911 call     qword ptr [rip + 0xdf9e1]
00000001405a4917 mov      rax, qword ptr [rsi]
00000001405a491a lea      r15d, [rbx - 4]
00000001405a491e mov      edx, r15d
00000001405a4921 mov      rcx, rdi
00000001405a4924 call     qword ptr [rip + 0xdf9ce]
00000001405a492a mov      rcx, qword ptr [rdi + 8]
00000001405a492e lea      r9d, [r14 - 4]
00000001405a4932 mov      bl, al
00000001405a4934 lea      r8, [rip + 0xda055]
00000001405a493b mov      rax, qword ptr [rdi + 0x18]
00000001405a493f mov      edx, r13d
00000001405a4942 and      bl, 0xf0
00000001405a4945 mov      rax, qword ptr [rax + 0x118]
00000001405a494c call     qword ptr [rip + 0xdf9a6]
00000001405a4952 mov      rax, qword ptr [rsi + 8]
00000001405a4956 mov      r8b, bl
00000001405a4959 mov      edx, r15d
00000001405a495c mov      rcx, rdi
00000001405a495f call     qword ptr [rip + 0xdf993]
00000001405a4965 mov      rax, qword ptr [rdi + 0x18]
00000001405a4969 lea      r8, [rip + 0xc6bd0]
00000001405a4970 mov      rcx, qword ptr [rdi + 8]
00000001405a4974 mov      edx, r13d
00000001405a4977 mov      rax, qword ptr [rax + 0x118]
00000001405a497e call     qword ptr [rip + 0xdf974]
00000001405a4984 lea      rdx, [rip + 0x729bed]
00000001405a498b jmp      0x1405aba72
00000001405a4990 sub      ebx, 0x7f
00000001405a4993 je       0x1405a4e39
00000001405a4999 sub      ebx, r13d
00000001405a499c je       0x1405a4d1a
00000001405a49a2 sub      ebx, r13d
00000001405a49a5 je       0x1405a4bfb
00000001405a49ab sub      ebx, r13d
00000001405a49ae je       0x1405a4adc
00000001405a49b4 cmp      ebx, r13d
00000001405a49b7 jne      0x1405ab45d
00000001405a49bd mov      rax, qword ptr [rdi + 0x18]
00000001405a49c1 lea      r8, [rip + 0xc6d48]
00000001405a49c8 mov      rcx, qword ptr [rdi + 8]
00000001405a49cc mov      edx, r13d
00000001405a49cf mov      rax, qword ptr [rax + 0x118]
00000001405a49d6 call     qword ptr [rip + 0xdf91c]
00000001405a49dc mov      rax, qword ptr [rsi + 0x20]
00000001405a49e0 mov      ebx, 0x4200
00000001405a49e5 mov      edx, ebx
00000001405a49e7 mov      rcx, rdi
00000001405a49ea call     qword ptr [rip + 0xdf908]
00000001405a49f0 mov      r14d, 0x18604200
00000001405a49f6 lea      r8, [rip + 0xd9ab3]
00000001405a49fd btr      eax, 0x10
00000001405a4a01 mov      r9d, r14d
00000001405a4a04 mov      dword ptr [rbp + 0x30], eax
00000001405a4a07 mov      edx, r13d
00000001405a4a0a mov      rax, qword ptr [rdi + 0x18]
00000001405a4a0e mov      rcx, qword ptr [rdi + 8]
00000001405a4a12 mov      rax, qword ptr [rax + 0x118]
00000001405a4a19 call     qword ptr [rip + 0xdf8d9]
00000001405a4a1f mov      eax, dword ptr [rbp + 0x30]
00000001405a4a22 lea      r8, [rip + 0xd9f37]
00000001405a4a29 and      eax, 0xffffffef
00000001405a4a2c mov      r9d, r14d
00000001405a4a2f or       eax, 0xf
00000001405a4a32 mov      edx, r13d
00000001405a4a35 mov      dword ptr [rbp + 0x30], eax
00000001405a4a38 mov      rax, qword ptr [rdi + 0x18]
00000001405a4a3c mov      rcx, qword ptr [rdi + 8]
00000001405a4a40 mov      rax, qword ptr [rax + 0x118]
00000001405a4a47 call     qword ptr [rip + 0xdf8ab]
00000001405a4a4d mov      rax, qword ptr [rsi + 0x28]
00000001405a4a51 mov      edx, ebx
00000001405a4a53 mov      r8d, dword ptr [rbp + 0x30]
00000001405a4a57 mov      rcx, rdi
00000001405a4a5a call     qword ptr [rip + 0xdf898]
00000001405a4a60 mov      rax, qword ptr [rsi]
00000001405a4a63 lea      r15d, [rbx - 4]
00000001405a4a67 mov      edx, r15d
00000001405a4a6a mov      rcx, rdi
00000001405a4a6d call     qword ptr [rip + 0xdf885]
00000001405a4a73 mov      rcx, qword ptr [rdi + 8]
00000001405a4a77 lea      r9d, [r14 - 4]
00000001405a4a7b mov      bl, al
00000001405a4a7d lea      r8, [rip + 0xd9ffc]
00000001405a4a84 mov      rax, qword ptr [rdi + 0x18]
00000001405a4a88 and      bl, 0xfa
00000001405a4a8b mov      edx, r13d
00000001405a4a8e or       bl, 0xa
00000001405a4a91 mov      rax, qword ptr [rax + 0x118]
00000001405a4a98 call     qword ptr [rip + 0xdf85a]
00000001405a4a9e mov      rax, qword ptr [rsi + 8]
00000001405a4aa2 mov      r8b, bl
00000001405a4aa5 mov      edx, r15d
00000001405a4aa8 mov      rcx, rdi
00000001405a4aab call     qword ptr [rip + 0xdf847]
00000001405a4ab1 mov      rax, qword ptr [rdi + 0x18]
00000001405a4ab5 lea      r8, [rip + 0xc6c84]
00000001405a4abc mov      rcx, qword ptr [rdi + 8]
00000001405a4ac0 mov      edx, r13d
00000001405a4ac3 mov      rax, qword ptr [rax + 0x118]
00000001405a4aca call     qword ptr [rip + 0xdf828]
00000001405a4ad0 lea      rdx, [rip + 0x729af1]
00000001405a4ad7 jmp      0x1405aba72
00000001405a4adc mov      rax, qword ptr [rdi + 0x18]
00000001405a4ae0 lea      r8, [rip + 0xc6bc9]
00000001405a4ae7 mov      rcx, qword ptr [rdi + 8]
00000001405a4aeb mov      edx, r13d
00000001405a4aee mov      rax, qword ptr [rax + 0x118]
00000001405a4af5 call     qword ptr [rip + 0xdf7fd]
00000001405a4afb mov      rax, qword ptr [rsi + 0x20]
00000001405a4aff mov      ebx, 0x4200
00000001405a4b04 mov      edx, ebx
00000001405a4b06 mov      rcx, rdi
00000001405a4b09 call     qword ptr [rip + 0xdf7e9]
00000001405a4b0f mov      r14d, 0x18604200
00000001405a4b15 lea      r8, [rip + 0xd9994]
00000001405a4b1c btr      eax, 0x10
00000001405a4b20 mov      r9d, r14d
00000001405a4b23 mov      dword ptr [rbp + 0x30], eax
00000001405a4b26 mov      edx, r13d
00000001405a4b29 mov      rax, qword ptr [rdi + 0x18]
00000001405a4b2d mov      rcx, qword ptr [rdi + 8]
00000001405a4b31 mov      rax, qword ptr [rax + 0x118]
00000001405a4b38 call     qword ptr [rip + 0xdf7ba]
00000001405a4b3e mov      eax, dword ptr [rbp + 0x30]
00000001405a4b41 lea      r8, [rip + 0xd9e18]
00000001405a4b48 and      eax, 0xffffffef
00000001405a4b4b mov      r9d, r14d
00000001405a4b4e or       eax, 0xf
00000001405a4b51 mov      edx, r13d
00000001405a4b54 mov      dword ptr [rbp + 0x30], eax
00000001405a4b57 mov      rax, qword ptr [rdi + 0x18]
00000001405a4b5b mov      rcx, qword ptr [rdi + 8]
00000001405a4b5f mov      rax, qword ptr [rax + 0x118]
00000001405a4b66 call     qword ptr [rip + 0xdf78c]
00000001405a4b6c mov      rax, qword ptr [rsi + 0x28]
00000001405a4b70 mov      edx, ebx
00000001405a4b72 mov      r8d, dword ptr [rbp + 0x30]
00000001405a4b76 mov      rcx, rdi
00000001405a4b79 call     qword ptr [rip + 0xdf779]
00000001405a4b7f mov      rax, qword ptr [rsi]
00000001405a4b82 lea      r15d, [rbx - 4]
00000001405a4b86 mov      edx, r15d
00000001405a4b89 mov      rcx, rdi
00000001405a4b8c call     qword ptr [rip + 0xdf766]
00000001405a4b92 mov      rcx, qword ptr [rdi + 8]
00000001405a4b96 lea      r9d, [r14 - 4]
00000001405a4b9a mov      bl, al
00000001405a4b9c lea      r8, [rip + 0xd9ead]
00000001405a4ba3 mov      rax, qword ptr [rdi + 0x18]
00000001405a4ba7 and      bl, 0xf4
00000001405a4baa mov      edx, r13d
00000001405a4bad or       bl, 4
00000001405a4bb0 mov      rax, qword ptr [rax + 0x118]
00000001405a4bb7 call     qword ptr [rip + 0xdf73b]
00000001405a4bbd mov      rax, qword ptr [rsi + 8]
00000001405a4bc1 mov      r8b, bl
00000001405a4bc4 mov      edx, r15d
00000001405a4bc7 mov      rcx, rdi
00000001405a4bca call     qword ptr [rip + 0xdf728]
00000001405a4bd0 mov      rax, qword ptr [rdi + 0x18]
00000001405a4bd4 lea      r8, [rip + 0xc6b05]
00000001405a4bdb mov      rcx, qword ptr [rdi + 8]
00000001405a4bdf mov      edx, r13d
00000001405a4be2 mov      rax, qword ptr [rax + 0x118]
00000001405a4be9 call     qword ptr [rip + 0xdf709]
00000001405a4bef lea      rdx, [rip + 0x7299c2]
00000001405a4bf6 jmp      0x1405aba72
00000001405a4bfb mov      rax, qword ptr [rdi + 0x18]
00000001405a4bff lea      r8, [rip + 0xc6a4a]
00000001405a4c06 mov      rcx, qword ptr [rdi + 8]
00000001405a4c0a mov      edx, r13d
00000001405a4c0d mov      rax, qword ptr [rax + 0x118]
00000001405a4c14 call     qword ptr [rip + 0xdf6de]
00000001405a4c1a mov      rax, qword ptr [rsi + 0x20]
00000001405a4c1e mov      ebx, 0x4200
00000001405a4c23 mov      edx, ebx
00000001405a4c25 mov      rcx, rdi
00000001405a4c28 call     qword ptr [rip + 0xdf6ca]
00000001405a4c2e mov      r14d, 0x18604200
00000001405a4c34 lea      r8, [rip + 0xd9875]
00000001405a4c3b btr      eax, 0x10
00000001405a4c3f mov      r9d, r14d
00000001405a4c42 mov      dword ptr [rbp + 0x30], eax
00000001405a4c45 mov      edx, r13d
00000001405a4c48 mov      rax, qword ptr [rdi + 0x18]
00000001405a4c4c mov      rcx, qword ptr [rdi + 8]
00000001405a4c50 mov      rax, qword ptr [rax + 0x118]
00000001405a4c57 call     qword ptr [rip + 0xdf69b]
00000001405a4c5d mov      eax, dword ptr [rbp + 0x30]
00000001405a4c60 lea      r8, [rip + 0xd9cf9]
00000001405a4c67 and      eax, 0xffffffef
00000001405a4c6a mov      r9d, r14d
00000001405a4c6d or       eax, 0xf
00000001405a4c70 mov      edx, r13d
00000001405a4c73 mov      dword ptr [rbp + 0x30], eax
00000001405a4c76 mov      rax, qword ptr [rdi + 0x18]
00000001405a4c7a mov      rcx, qword ptr [rdi + 8]
00000001405a4c7e mov      rax, qword ptr [rax + 0x118]
00000001405a4c85 call     qword ptr [rip + 0xdf66d]
00000001405a4c8b mov      rax, qword ptr [rsi + 0x28]
00000001405a4c8f mov      edx, ebx
00000001405a4c91 mov      r8d, dword ptr [rbp + 0x30]
00000001405a4c95 mov      rcx, rdi
00000001405a4c98 call     qword ptr [rip + 0xdf65a]
00000001405a4c9e mov      rax, qword ptr [rsi]
00000001405a4ca1 lea      r15d, [rbx - 4]
00000001405a4ca5 mov      edx, r15d
00000001405a4ca8 mov      rcx, rdi
00000001405a4cab call     qword ptr [rip + 0xdf647]
00000001405a4cb1 mov      rcx, qword ptr [rdi + 8]
00000001405a4cb5 lea      r9d, [r14 - 4]
00000001405a4cb9 mov      bl, al
00000001405a4cbb lea      r8, [rip + 0xd9d5e]
00000001405a4cc2 mov      rax, qword ptr [rdi + 0x18]
00000001405a4cc6 and      bl, 0xf3
00000001405a4cc9 mov      edx, r13d
00000001405a4ccc or       bl, 3
00000001405a4ccf mov      rax, qword ptr [rax + 0x118]
00000001405a4cd6 call     qword ptr [rip + 0xdf61c]
00000001405a4cdc mov      rax, qword ptr [rsi + 8]
00000001405a4ce0 mov      r8b, bl
00000001405a4ce3 mov      edx, r15d
00000001405a4ce6 mov      rcx, rdi
00000001405a4ce9 call     qword ptr [rip + 0xdf609]
00000001405a4cef mov      rax, qword ptr [rdi + 0x18]
00000001405a4cf3 lea      r8, [rip + 0xc6986]
00000001405a4cfa mov      rcx, qword ptr [rdi + 8]
00000001405a4cfe mov      edx, r13d
00000001405a4d01 mov      rax, qword ptr [rax + 0x118]
00000001405a4d08 call     qword ptr [rip + 0xdf5ea]
00000001405a4d0e lea      rdx, [rip + 0x729893]
00000001405a4d15 jmp      0x1405aba72
00000001405a4d1a mov      rax, qword ptr [rdi + 0x18]
00000001405a4d1e lea      r8, [rip + 0xc68cb]
00000001405a4d25 mov      rcx, qword ptr [rdi + 8]
00000001405a4d29 mov      edx, r13d
00000001405a4d2c mov      rax, qword ptr [rax + 0x118]
00000001405a4d33 call     qword ptr [rip + 0xdf5bf]
00000001405a4d39 mov      rax, qword ptr [rsi + 0x20]
00000001405a4d3d mov      ebx, 0x4200
00000001405a4d42 mov      edx, ebx
00000001405a4d44 mov      rcx, rdi
00000001405a4d47 call     qword ptr [rip + 0xdf5ab]
00000001405a4d4d mov      r14d, 0x18604200
00000001405a4d53 lea      r8, [rip + 0xd9756]
00000001405a4d5a btr      eax, 0x10
00000001405a4d5e mov      r9d, r14d
00000001405a4d61 mov      dword ptr [rbp + 0x30], eax
00000001405a4d64 mov      edx, r13d
00000001405a4d67 mov      rax, qword ptr [rdi + 0x18]
00000001405a4d6b mov      rcx, qword ptr [rdi + 8]
00000001405a4d6f mov      rax, qword ptr [rax + 0x118]
00000001405a4d76 call     qword ptr [rip + 0xdf57c]
00000001405a4d7c mov      eax, dword ptr [rbp + 0x30]
00000001405a4d7f lea      r8, [rip + 0xd9bda]
00000001405a4d86 and      eax, 0xffffffef
00000001405a4d89 mov      r9d, r14d
00000001405a4d8c or       eax, 0xf
00000001405a4d8f mov      edx, r13d
00000001405a4d92 mov      dword ptr [rbp + 0x30], eax
00000001405a4d95 mov      rax, qword ptr [rdi + 0x18]
00000001405a4d99 mov      rcx, qword ptr [rdi + 8]
00000001405a4d9d mov      rax, qword ptr [rax + 0x118]
00000001405a4da4 call     qword ptr [rip + 0xdf54e]
00000001405a4daa mov      rax, qword ptr [rsi + 0x28]
00000001405a4dae mov      edx, ebx
00000001405a4db0 mov      r8d, dword ptr [rbp + 0x30]
00000001405a4db4 mov      rcx, rdi
00000001405a4db7 call     qword ptr [rip + 0xdf53b]
00000001405a4dbd mov      rax, qword ptr [rsi]
00000001405a4dc0 lea      r15d, [rbx - 4]
00000001405a4dc4 mov      edx, r15d
00000001405a4dc7 mov      rcx, rdi
00000001405a4dca call     qword ptr [rip + 0xdf528]
00000001405a4dd0 mov      rcx, qword ptr [rdi + 8]
00000001405a4dd4 lea      r9d, [r14 - 4]
00000001405a4dd8 mov      bl, al
00000001405a4dda lea      r8, [rip + 0xd9c0f]
00000001405a4de1 mov      rax, qword ptr [rdi + 0x18]
00000001405a4de5 and      bl, 0xf2
00000001405a4de8 mov      edx, r13d
00000001405a4deb or       bl, 2
00000001405a4dee mov      rax, qword ptr [rax + 0x118]
00000001405a4df5 call     qword ptr [rip + 0xdf4fd]
00000001405a4dfb mov      rax, qword ptr [rsi + 8]
00000001405a4dff mov      r8b, bl
00000001405a4e02 mov      edx, r15d
00000001405a4e05 mov      rcx, rdi
00000001405a4e08 call     qword ptr [rip + 0xdf4ea]
00000001405a4e0e mov      rax, qword ptr [rdi + 0x18]
00000001405a4e12 lea      r8, [rip + 0xc6807]
00000001405a4e19 mov      rcx, qword ptr [rdi + 8]
00000001405a4e1d mov      edx, r13d
00000001405a4e20 mov      rax, qword ptr [rax + 0x118]
00000001405a4e27 call     qword ptr [rip + 0xdf4cb]
00000001405a4e2d lea      rdx, [rip + 0x729764]
00000001405a4e34 jmp      0x1405aba72
00000001405a4e39 mov      rax, qword ptr [rdi + 0x18]
00000001405a4e3d lea      r8, [rip + 0xc673c]
00000001405a4e44 mov      rcx, qword ptr [rdi + 8]
00000001405a4e48 mov      edx, r13d
00000001405a4e4b mov      rax, qword ptr [rax + 0x118]
00000001405a4e52 call     qword ptr [rip + 0xdf4a0]
00000001405a4e58 mov      rax, qword ptr [rsi + 0x20]
00000001405a4e5c mov      ebx, 0x4200
00000001405a4e61 mov      edx, ebx
00000001405a4e63 mov      rcx, rdi
00000001405a4e66 call     qword ptr [rip + 0xdf48c]
00000001405a4e6c mov      r14d, 0x18604200
00000001405a4e72 lea      r8, [rip + 0xd9637]
00000001405a4e79 btr      eax, 0x10
00000001405a4e7d mov      r9d, r14d
00000001405a4e80 mov      dword ptr [rbp + 0x30], eax
00000001405a4e83 mov      edx, r13d
00000001405a4e86 mov      rax, qword ptr [rdi + 0x18]
00000001405a4e8a mov      rcx, qword ptr [rdi + 8]
00000001405a4e8e mov      rax, qword ptr [rax + 0x118]
00000001405a4e95 call     qword ptr [rip + 0xdf45d]
00000001405a4e9b mov      eax, dword ptr [rbp + 0x30]
00000001405a4e9e lea      r8, [rip + 0xd9abb]
00000001405a4ea5 and      eax, 0xffffffef
00000001405a4ea8 mov      r9d, r14d
00000001405a4eab or       eax, 0xf
00000001405a4eae mov      edx, r13d
00000001405a4eb1 mov      dword ptr [rbp + 0x30], eax
00000001405a4eb4 mov      rax, qword ptr [rdi + 0x18]
00000001405a4eb8 mov      rcx, qword ptr [rdi + 8]
00000001405a4ebc mov      rax, qword ptr [rax + 0x118]
00000001405a4ec3 call     qword ptr [rip + 0xdf42f]
00000001405a4ec9 mov      rax, qword ptr [rsi + 0x28]
00000001405a4ecd mov      edx, ebx
00000001405a4ecf mov      r8d, dword ptr [rbp + 0x30]
00000001405a4ed3 mov      rcx, rdi
00000001405a4ed6 call     qword ptr [rip + 0xdf41c]
00000001405a4edc mov      rax, qword ptr [rsi]
00000001405a4edf lea      r15d, [rbx - 4]
00000001405a4ee3 mov      edx, r15d
00000001405a4ee6 mov      rcx, rdi
00000001405a4ee9 call     qword ptr [rip + 0xdf409]
00000001405a4eef mov      rcx, qword ptr [rdi + 8]
00000001405a4ef3 lea      r9d, [r14 - 4]
00000001405a4ef7 mov      bl, al
00000001405a4ef9 lea      r8, [rip + 0xd9ac0]
00000001405a4f00 mov      rax, qword ptr [rdi + 0x18]
00000001405a4f04 and      bl, 0xf1
00000001405a4f07 mov      edx, r13d
00000001405a4f0a or       bl, r13b
00000001405a4f0d mov      rax, qword ptr [rax + 0x118]
00000001405a4f14 call     qword ptr [rip + 0xdf3de]
00000001405a4f1a mov      rax, qword ptr [rsi + 8]
00000001405a4f1e mov      r8b, bl
00000001405a4f21 mov      edx, r15d
00000001405a4f24 mov      rcx, rdi
00000001405a4f27 call     qword ptr [rip + 0xdf3cb]
00000001405a4f2d mov      rax, qword ptr [rdi + 0x18]
00000001405a4f31 lea      r8, [rip + 0xc6678]
00000001405a4f38 mov      rcx, qword ptr [rdi + 8]
00000001405a4f3c mov      edx, r13d
00000001405a4f3f mov      rax, qword ptr [rax + 0x118]
00000001405a4f46 call     qword ptr [rip + 0xdf3ac]
00000001405a4f4c lea      rdx, [rip + 0x729635]
00000001405a4f53 jmp      0x1405aba72
00000001405a4f58 mov      rax, qword ptr [rdi + 0x18]
00000001405a4f5c lea      r8, [rip + 0xc680d]
00000001405a4f63 mov      rcx, qword ptr [rdi + 8]
00000001405a4f67 mov      edx, r13d
00000001405a4f6a mov      rax, qword ptr [rax + 0x118]
00000001405a4f71 call     qword ptr [rip + 0xdf381]
00000001405a4f77 mov      rax, qword ptr [rsi + 0x20]
00000001405a4f7b mov      ebx, 0x4200
00000001405a4f80 mov      edx, ebx
00000001405a4f82 mov      rcx, rdi
00000001405a4f85 call     qword ptr [rip + 0xdf36d]
00000001405a4f8b mov      r14d, 0x18604200
00000001405a4f91 lea      r8, [rip + 0xd9518]
00000001405a4f98 btr      eax, 0x10
00000001405a4f9c mov      r9d, r14d
00000001405a4f9f mov      dword ptr [rbp + 0x30], eax
00000001405a4fa2 mov      edx, r13d
00000001405a4fa5 mov      rax, qword ptr [rdi + 0x18]
00000001405a4fa9 mov      rcx, qword ptr [rdi + 8]
00000001405a4fad mov      rax, qword ptr [rax + 0x118]
00000001405a4fb4 call     qword ptr [rip + 0xdf33e]
00000001405a4fba mov      eax, dword ptr [rbp + 0x30]
00000001405a4fbd lea      r8, [rip + 0xd999c]
00000001405a4fc4 and      eax, 0xffffffef
00000001405a4fc7 mov      r9d, r14d
00000001405a4fca or       eax, 0xf
00000001405a4fcd mov      edx, r13d
00000001405a4fd0 mov      dword ptr [rbp + 0x30], eax
00000001405a4fd3 mov      rax, qword ptr [rdi + 0x18]
00000001405a4fd7 mov      rcx, qword ptr [rdi + 8]
00000001405a4fdb mov      rax, qword ptr [rax + 0x118]
00000001405a4fe2 call     qword ptr [rip + 0xdf310]
00000001405a4fe8 mov      rax, qword ptr [rsi + 0x28]
00000001405a4fec mov      edx, ebx
00000001405a4fee mov      r8d, dword ptr [rbp + 0x30]
00000001405a4ff2 mov      rcx, rdi
00000001405a4ff5 call     qword ptr [rip + 0xdf2fd]
00000001405a4ffb mov      rax, qword ptr [rsi]
00000001405a4ffe lea      r15d, [rbx - 4]
00000001405a5002 mov      edx, r15d
00000001405a5005 mov      rcx, rdi
00000001405a5008 call     qword ptr [rip + 0xdf2ea]
00000001405a500e mov      rcx, qword ptr [rdi + 8]
00000001405a5012 lea      r9d, [r14 - 4]
00000001405a5016 mov      bl, al
00000001405a5018 lea      r8, [rip + 0xd9a61]
00000001405a501f mov      rax, qword ptr [rdi + 0x18]
00000001405a5023 and      bl, 0xfa
00000001405a5026 mov      edx, r13d
00000001405a5029 or       bl, 0xa
00000001405a502c mov      rax, qword ptr [rax + 0x118]
00000001405a5033 call     qword ptr [rip + 0xdf2bf]
00000001405a5039 mov      rax, qword ptr [rsi + 8]
00000001405a503d mov      r8b, bl
00000001405a5040 mov      edx, r15d
00000001405a5043 mov      rcx, rdi
00000001405a5046 call     qword ptr [rip + 0xdf2ac]
00000001405a504c mov      rax, qword ptr [rdi + 0x18]
00000001405a5050 lea      r8, [rip + 0xc6749]
00000001405a5057 mov      rcx, qword ptr [rdi + 8]
00000001405a505b mov      edx, r13d
00000001405a505e mov      rax, qword ptr [rax + 0x118]
00000001405a5065 call     qword ptr [rip + 0xdf28d]
00000001405a506b lea      rdx, [rip + 0x729566]
00000001405a5072 jmp      0x1405aba72
00000001405a5077 mov      eax, 0x91
00000001405a507c cmp      ebx, eax
00000001405a507e ja       0x1405a5813
00000001405a5084 je       0x1405a57c9
00000001405a508a cmp      ebx, 0x8b
00000001405a5090 ja       0x1405a562b
00000001405a5096 je       0x1405a55e1
00000001405a509c sub      ebx, 0x85
00000001405a50a2 je       0x1405a54c2
00000001405a50a8 sub      ebx, r13d
00000001405a50ab je       0x1405a53a3
00000001405a50b1 sub      ebx, r13d
00000001405a50b4 je       0x1405a5284
00000001405a50ba sub      ebx, r13d
00000001405a50bd je       0x1405a5165
00000001405a50c3 sub      ebx, r13d
00000001405a50c6 je       0x1405a511b
00000001405a50c8 cmp      ebx, r13d
00000001405a50cb jne      0x1405ab45d
00000001405a50d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a50d5 lea      r8, [rip + 0xc57d4]
00000001405a50dc mov      rcx, qword ptr [rdi + 8]
00000001405a50e0 mov      edx, r13d
00000001405a50e3 mov      rax, qword ptr [rax + 0x118]
00000001405a50ea call     qword ptr [rip + 0xdf208]
00000001405a50f0 mov      rax, qword ptr [rdi + 0x18]
00000001405a50f4 lea      r8, [rip + 0xc57e5]
00000001405a50fb mov      rcx, qword ptr [rdi + 8]
00000001405a50ff mov      edx, r13d
00000001405a5102 mov      rax, qword ptr [rax + 0x118]
00000001405a5109 call     qword ptr [rip + 0xdf1e9]
00000001405a510f lea      rdx, [rip + 0x729522]
00000001405a5116 jmp      0x1405aba72
00000001405a511b mov      rax, qword ptr [rdi + 0x18]
00000001405a511f lea      r8, [rip + 0xc572a]
00000001405a5126 mov      rcx, qword ptr [rdi + 8]
00000001405a512a mov      edx, r13d
00000001405a512d mov      rax, qword ptr [rax + 0x118]
00000001405a5134 call     qword ptr [rip + 0xdf1be]
00000001405a513a mov      rax, qword ptr [rdi + 0x18]
00000001405a513e lea      r8, [rip + 0xc573b]
00000001405a5145 mov      rcx, qword ptr [rdi + 8]
00000001405a5149 mov      edx, r13d
00000001405a514c mov      rax, qword ptr [rax + 0x118]
00000001405a5153 call     qword ptr [rip + 0xdf19f]
00000001405a5159 lea      rdx, [rip + 0x7294c8]
00000001405a5160 jmp      0x1405aba72
00000001405a5165 mov      rax, qword ptr [rdi + 0x18]
00000001405a5169 lea      r8, [rip + 0xc67b0]
00000001405a5170 mov      rcx, qword ptr [rdi + 8]
00000001405a5174 mov      edx, r13d
00000001405a5177 mov      rax, qword ptr [rax + 0x118]
00000001405a517e call     qword ptr [rip + 0xdf174]
00000001405a5184 mov      rax, qword ptr [rsi + 0x20]
00000001405a5188 mov      ebx, 0x4200
00000001405a518d mov      edx, ebx
00000001405a518f mov      rcx, rdi
00000001405a5192 call     qword ptr [rip + 0xdf160]
00000001405a5198 mov      r14d, 0x18604200
00000001405a519e lea      r8, [rip + 0xd930b]
00000001405a51a5 btr      eax, 0x10
00000001405a51a9 mov      r9d, r14d
00000001405a51ac mov      dword ptr [rbp + 0x30], eax
00000001405a51af mov      edx, r13d
00000001405a51b2 mov      rax, qword ptr [rdi + 0x18]
00000001405a51b6 mov      rcx, qword ptr [rdi + 8]
00000001405a51ba mov      rax, qword ptr [rax + 0x118]
00000001405a51c1 call     qword ptr [rip + 0xdf131]
00000001405a51c7 mov      eax, dword ptr [rbp + 0x30]
00000001405a51ca lea      r8, [rip + 0xd978f]
00000001405a51d1 and      eax, 0xffffffef
00000001405a51d4 mov      r9d, r14d
00000001405a51d7 or       eax, 0xf
00000001405a51da mov      edx, r13d
00000001405a51dd mov      dword ptr [rbp + 0x30], eax
00000001405a51e0 mov      rax, qword ptr [rdi + 0x18]
00000001405a51e4 mov      rcx, qword ptr [rdi + 8]
00000001405a51e8 mov      rax, qword ptr [rax + 0x118]
00000001405a51ef call     qword ptr [rip + 0xdf103]
00000001405a51f5 mov      rax, qword ptr [rsi + 0x28]
00000001405a51f9 mov      edx, ebx
00000001405a51fb mov      r8d, dword ptr [rbp + 0x30]
00000001405a51ff mov      rcx, rdi
00000001405a5202 call     qword ptr [rip + 0xdf0f0]
00000001405a5208 mov      rax, qword ptr [rsi]
00000001405a520b lea      r15d, [rbx - 4]
00000001405a520f mov      edx, r15d
00000001405a5212 mov      rcx, rdi
00000001405a5215 call     qword ptr [rip + 0xdf0dd]
00000001405a521b mov      rcx, qword ptr [rdi + 8]
00000001405a521f lea      r9d, [r14 - 4]
00000001405a5223 mov      bl, al
00000001405a5225 lea      r8, [rip + 0xd98e4]
00000001405a522c mov      rax, qword ptr [rdi + 0x18]
00000001405a5230 and      bl, 0xfd
00000001405a5233 mov      edx, r13d
00000001405a5236 or       bl, 0xd
00000001405a5239 mov      rax, qword ptr [rax + 0x118]
00000001405a5240 call     qword ptr [rip + 0xdf0b2]
00000001405a5246 mov      rax, qword ptr [rsi + 8]
00000001405a524a mov      r8b, bl
00000001405a524d mov      edx, r15d
00000001405a5250 mov      rcx, rdi
00000001405a5253 call     qword ptr [rip + 0xdf09f]
00000001405a5259 mov      rax, qword ptr [rdi + 0x18]
00000001405a525d lea      r8, [rip + 0xc672c]
00000001405a5264 mov      rcx, qword ptr [rdi + 8]
00000001405a5268 mov      edx, r13d
00000001405a526b mov      rax, qword ptr [rax + 0x118]
00000001405a5272 call     qword ptr [rip + 0xdf080]
00000001405a5278 lea      rdx, [rip + 0x729399]
00000001405a527f jmp      0x1405aba72
00000001405a5284 mov      rax, qword ptr [rdi + 0x18]
00000001405a5288 lea      r8, [rip + 0xc6631]
00000001405a528f mov      rcx, qword ptr [rdi + 8]
00000001405a5293 mov      edx, r13d
00000001405a5296 mov      rax, qword ptr [rax + 0x118]
00000001405a529d call     qword ptr [rip + 0xdf055]
00000001405a52a3 mov      rax, qword ptr [rsi + 0x20]
00000001405a52a7 mov      ebx, 0x4200
00000001405a52ac mov      edx, ebx
00000001405a52ae mov      rcx, rdi
00000001405a52b1 call     qword ptr [rip + 0xdf041]
00000001405a52b7 mov      r14d, 0x18604200
00000001405a52bd lea      r8, [rip + 0xd91ec]
00000001405a52c4 btr      eax, 0x10
00000001405a52c8 mov      r9d, r14d
00000001405a52cb mov      dword ptr [rbp + 0x30], eax
00000001405a52ce mov      edx, r13d
00000001405a52d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a52d5 mov      rcx, qword ptr [rdi + 8]
00000001405a52d9 mov      rax, qword ptr [rax + 0x118]
00000001405a52e0 call     qword ptr [rip + 0xdf012]
00000001405a52e6 mov      eax, dword ptr [rbp + 0x30]
00000001405a52e9 lea      r8, [rip + 0xd9670]
00000001405a52f0 and      eax, 0xffffffef
00000001405a52f3 mov      r9d, r14d
00000001405a52f6 or       eax, 0xf
00000001405a52f9 mov      edx, r13d
00000001405a52fc mov      dword ptr [rbp + 0x30], eax
00000001405a52ff mov      rax, qword ptr [rdi + 0x18]
00000001405a5303 mov      rcx, qword ptr [rdi + 8]
00000001405a5307 mov      rax, qword ptr [rax + 0x118]
00000001405a530e call     qword ptr [rip + 0xdefe4]
00000001405a5314 mov      rax, qword ptr [rsi + 0x28]
00000001405a5318 mov      edx, ebx
00000001405a531a mov      r8d, dword ptr [rbp + 0x30]
00000001405a531e mov      rcx, rdi
00000001405a5321 call     qword ptr [rip + 0xdefd1]
00000001405a5327 mov      rax, qword ptr [rsi]
00000001405a532a lea      r15d, [rbx - 4]
00000001405a532e mov      edx, r15d
00000001405a5331 mov      rcx, rdi
00000001405a5334 call     qword ptr [rip + 0xdefbe]
00000001405a533a mov      rcx, qword ptr [rdi + 8]
00000001405a533e lea      r9d, [r14 - 4]
00000001405a5342 mov      bl, al
00000001405a5344 lea      r8, [rip + 0xd9795]
00000001405a534b mov      rax, qword ptr [rdi + 0x18]
00000001405a534f and      bl, 0xfc
00000001405a5352 mov      edx, r13d
00000001405a5355 or       bl, 0xc
00000001405a5358 mov      rax, qword ptr [rax + 0x118]
00000001405a535f call     qword ptr [rip + 0xdef93]
00000001405a5365 mov      rax, qword ptr [rsi + 8]
00000001405a5369 mov      r8b, bl
00000001405a536c mov      edx, r15d
00000001405a536f mov      rcx, rdi
00000001405a5372 call     qword ptr [rip + 0xdef80]
00000001405a5378 mov      rax, qword ptr [rdi + 0x18]
00000001405a537c lea      r8, [rip + 0xc656d]
00000001405a5383 mov      rcx, qword ptr [rdi + 8]
00000001405a5387 mov      edx, r13d
00000001405a538a mov      rax, qword ptr [rax + 0x118]
00000001405a5391 call     qword ptr [rip + 0xdef61]
00000001405a5397 lea      rdx, [rip + 0x72926a]
00000001405a539e jmp      0x1405aba72
00000001405a53a3 mov      rax, qword ptr [rdi + 0x18]
00000001405a53a7 lea      r8, [rip + 0xc64b2]
00000001405a53ae mov      rcx, qword ptr [rdi + 8]
00000001405a53b2 mov      edx, r13d
00000001405a53b5 mov      rax, qword ptr [rax + 0x118]
00000001405a53bc call     qword ptr [rip + 0xdef36]
00000001405a53c2 mov      rax, qword ptr [rsi + 0x20]
00000001405a53c6 mov      ebx, 0x4200
00000001405a53cb mov      edx, ebx
00000001405a53cd mov      rcx, rdi
00000001405a53d0 call     qword ptr [rip + 0xdef22]
00000001405a53d6 mov      r14d, 0x18604200
00000001405a53dc lea      r8, [rip + 0xd90cd]
00000001405a53e3 btr      eax, 0x10
00000001405a53e7 mov      r9d, r14d
00000001405a53ea mov      dword ptr [rbp + 0x30], eax
00000001405a53ed mov      edx, r13d
00000001405a53f0 mov      rax, qword ptr [rdi + 0x18]
00000001405a53f4 mov      rcx, qword ptr [rdi + 8]
00000001405a53f8 mov      rax, qword ptr [rax + 0x118]
00000001405a53ff call     qword ptr [rip + 0xdeef3]
00000001405a5405 mov      eax, dword ptr [rbp + 0x30]
00000001405a5408 lea      r8, [rip + 0xd9551]
00000001405a540f and      eax, 0xffffffef
00000001405a5412 mov      r9d, r14d
00000001405a5415 or       eax, 0xf
00000001405a5418 mov      edx, r13d
00000001405a541b mov      dword ptr [rbp + 0x30], eax
00000001405a541e mov      rax, qword ptr [rdi + 0x18]
00000001405a5422 mov      rcx, qword ptr [rdi + 8]
00000001405a5426 mov      rax, qword ptr [rax + 0x118]
00000001405a542d call     qword ptr [rip + 0xdeec5]
00000001405a5433 mov      rax, qword ptr [rsi + 0x28]
00000001405a5437 mov      edx, ebx
00000001405a5439 mov      r8d, dword ptr [rbp + 0x30]
00000001405a543d mov      rcx, rdi
00000001405a5440 call     qword ptr [rip + 0xdeeb2]
00000001405a5446 mov      rax, qword ptr [rsi]
00000001405a5449 lea      r15d, [rbx - 4]
00000001405a544d mov      edx, r15d
00000001405a5450 mov      rcx, rdi
00000001405a5453 call     qword ptr [rip + 0xdee9f]
00000001405a5459 mov      rcx, qword ptr [rdi + 8]
00000001405a545d lea      r9d, [r14 - 4]
00000001405a5461 mov      bl, al
00000001405a5463 lea      r8, [rip + 0xd9676]
00000001405a546a mov      rax, qword ptr [rdi + 0x18]
00000001405a546e and      bl, 0xfc
00000001405a5471 mov      edx, r13d
00000001405a5474 or       bl, 0xc
00000001405a5477 mov      rax, qword ptr [rax + 0x118]
00000001405a547e call     qword ptr [rip + 0xdee74]
00000001405a5484 mov      rax, qword ptr [rsi + 8]
00000001405a5488 mov      r8b, bl
00000001405a548b mov      edx, r15d
00000001405a548e mov      rcx, rdi
00000001405a5491 call     qword ptr [rip + 0xdee61]
00000001405a5497 mov      rax, qword ptr [rdi + 0x18]
00000001405a549b lea      r8, [rip + 0xc63ee]
00000001405a54a2 mov      rcx, qword ptr [rdi + 8]
00000001405a54a6 mov      edx, r13d
00000001405a54a9 mov      rax, qword ptr [rax + 0x118]
00000001405a54b0 call     qword ptr [rip + 0xdee42]
00000001405a54b6 lea      rdx, [rip + 0x72913b]
00000001405a54bd jmp      0x1405aba72
00000001405a54c2 mov      rax, qword ptr [rdi + 0x18]
00000001405a54c6 lea      r8, [rip + 0xc6303]
00000001405a54cd mov      rcx, qword ptr [rdi + 8]
00000001405a54d1 mov      edx, r13d
00000001405a54d4 mov      rax, qword ptr [rax + 0x118]
00000001405a54db call     qword ptr [rip + 0xdee17]
00000001405a54e1 mov      rax, qword ptr [rsi + 0x20]
00000001405a54e5 mov      ebx, 0x4200
00000001405a54ea mov      edx, ebx
00000001405a54ec mov      rcx, rdi
00000001405a54ef call     qword ptr [rip + 0xdee03]
00000001405a54f5 mov      r14d, 0x18604200
00000001405a54fb lea      r8, [rip + 0xd8fae]
00000001405a5502 btr      eax, 0x10
00000001405a5506 mov      r9d, r14d
00000001405a5509 mov      dword ptr [rbp + 0x30], eax
00000001405a550c mov      edx, r13d
00000001405a550f mov      rax, qword ptr [rdi + 0x18]
00000001405a5513 mov      rcx, qword ptr [rdi + 8]
00000001405a5517 mov      rax, qword ptr [rax + 0x118]
00000001405a551e call     qword ptr [rip + 0xdedd4]
00000001405a5524 mov      eax, dword ptr [rbp + 0x30]
00000001405a5527 lea      r8, [rip + 0xd9432]
00000001405a552e and      eax, 0xffffffef
00000001405a5531 mov      r9d, r14d
00000001405a5534 or       eax, 0xf
00000001405a5537 mov      edx, r13d
00000001405a553a mov      dword ptr [rbp + 0x30], eax
00000001405a553d mov      rax, qword ptr [rdi + 0x18]
00000001405a5541 mov      rcx, qword ptr [rdi + 8]
00000001405a5545 mov      rax, qword ptr [rax + 0x118]
00000001405a554c call     qword ptr [rip + 0xdeda6]
00000001405a5552 mov      rax, qword ptr [rsi + 0x28]
00000001405a5556 mov      edx, ebx
00000001405a5558 mov      r8d, dword ptr [rbp + 0x30]
00000001405a555c mov      rcx, rdi
00000001405a555f call     qword ptr [rip + 0xded93]
00000001405a5565 mov      rax, qword ptr [rsi]
00000001405a5568 lea      r15d, [rbx - 4]
00000001405a556c mov      edx, r15d
00000001405a556f mov      rcx, rdi
00000001405a5572 call     qword ptr [rip + 0xded80]
00000001405a5578 mov      rcx, qword ptr [rdi + 8]
00000001405a557c lea      r9d, [r14 - 4]
00000001405a5580 mov      bl, al
00000001405a5582 lea      r8, [rip + 0xd9527]
00000001405a5589 mov      rax, qword ptr [rdi + 0x18]
00000001405a558d and      bl, 0xfb
00000001405a5590 mov      edx, r13d
00000001405a5593 or       bl, 0xb
00000001405a5596 mov      rax, qword ptr [rax + 0x118]
00000001405a559d call     qword ptr [rip + 0xded55]
00000001405a55a3 mov      rax, qword ptr [rsi + 8]
00000001405a55a7 mov      r8b, bl
00000001405a55aa mov      edx, r15d
00000001405a55ad mov      rcx, rdi
00000001405a55b0 call     qword ptr [rip + 0xded42]
00000001405a55b6 mov      rax, qword ptr [rdi + 0x18]
00000001405a55ba lea      r8, [rip + 0xc626f]
00000001405a55c1 mov      rcx, qword ptr [rdi + 8]
00000001405a55c5 mov      edx, r13d
00000001405a55c8 mov      rax, qword ptr [rax + 0x118]
00000001405a55cf call     qword ptr [rip + 0xded23]
00000001405a55d5 lea      rdx, [rip + 0x72900c]
00000001405a55dc jmp      0x1405aba72
00000001405a55e1 mov      rax, qword ptr [rdi + 0x18]
00000001405a55e5 lea      r8, [rip + 0xd9554]
00000001405a55ec mov      rcx, qword ptr [rdi + 8]
00000001405a55f0 mov      edx, r13d
00000001405a55f3 mov      rax, qword ptr [rax + 0x118]
00000001405a55fa call     qword ptr [rip + 0xdecf8]
00000001405a5600 mov      rax, qword ptr [rdi + 0x18]
00000001405a5604 lea      r8, [rip + 0xd9565]
00000001405a560b mov      rcx, qword ptr [rdi + 8]
00000001405a560f mov      edx, r13d
00000001405a5612 mov      rax, qword ptr [rax + 0x118]
00000001405a5619 call     qword ptr [rip + 0xdecd9]
00000001405a561f lea      rdx, [rip + 0x729022]
00000001405a5626 jmp      0x1405aba72
00000001405a562b sub      ebx, 0x8c
00000001405a5631 je       0x1405a577f
00000001405a5637 sub      ebx, r13d
00000001405a563a je       0x1405a5735
00000001405a5640 sub      ebx, r13d
00000001405a5643 je       0x1405a56eb
00000001405a5649 sub      ebx, r13d
00000001405a564c je       0x1405a56a1
00000001405a564e cmp      ebx, r13d
00000001405a5651 jne      0x1405ab45d
00000001405a5657 mov      rax, qword ptr [rdi + 0x18]
00000001405a565b lea      r8, [rip + 0xc53be]
00000001405a5662 mov      rcx, qword ptr [rdi + 8]
00000001405a5666 mov      edx, r13d
00000001405a5669 mov      rax, qword ptr [rax + 0x118]
00000001405a5670 call     qword ptr [rip + 0xdec82]
00000001405a5676 mov      rax, qword ptr [rdi + 0x18]
00000001405a567a lea      r8, [rip + 0xc53cf]
00000001405a5681 mov      rcx, qword ptr [rdi + 8]
00000001405a5685 mov      edx, r13d
00000001405a5688 mov      rax, qword ptr [rax + 0x118]
00000001405a568f call     qword ptr [rip + 0xdec63]
00000001405a5695 lea      rdx, [rip + 0x728ffc]
00000001405a569c jmp      0x1405aba72
00000001405a56a1 mov      rax, qword ptr [rdi + 0x18]
00000001405a56a5 lea      r8, [rip + 0xc5314]
00000001405a56ac mov      rcx, qword ptr [rdi + 8]
00000001405a56b0 mov      edx, r13d
00000001405a56b3 mov      rax, qword ptr [rax + 0x118]
00000001405a56ba call     qword ptr [rip + 0xdec38]
00000001405a56c0 mov      rax, qword ptr [rdi + 0x18]
00000001405a56c4 lea      r8, [rip + 0xc5325]
00000001405a56cb mov      rcx, qword ptr [rdi + 8]
00000001405a56cf mov      edx, r13d
00000001405a56d2 mov      rax, qword ptr [rax + 0x118]
00000001405a56d9 call     qword ptr [rip + 0xdec19]
00000001405a56df lea      rdx, [rip + 0x728fa2]
00000001405a56e6 jmp      0x1405aba72
00000001405a56eb mov      rax, qword ptr [rdi + 0x18]
00000001405a56ef lea      r8, [rip + 0xc526a]
00000001405a56f6 mov      rcx, qword ptr [rdi + 8]
00000001405a56fa mov      edx, r13d
00000001405a56fd mov      rax, qword ptr [rax + 0x118]
00000001405a5704 call     qword ptr [rip + 0xdebee]
00000001405a570a mov      rax, qword ptr [rdi + 0x18]
00000001405a570e lea      r8, [rip + 0xc527b]
00000001405a5715 mov      rcx, qword ptr [rdi + 8]
00000001405a5719 mov      edx, r13d
00000001405a571c mov      rax, qword ptr [rax + 0x118]
00000001405a5723 call     qword ptr [rip + 0xdebcf]
00000001405a5729 lea      rdx, [rip + 0x728f48]
00000001405a5730 jmp      0x1405aba72
00000001405a5735 mov      rax, qword ptr [rdi + 0x18]
00000001405a5739 lea      r8, [rip + 0xc51d0]
00000001405a5740 mov      rcx, qword ptr [rdi + 8]
00000001405a5744 mov      edx, r13d
00000001405a5747 mov      rax, qword ptr [rax + 0x118]
00000001405a574e call     qword ptr [rip + 0xdeba4]
00000001405a5754 mov      rax, qword ptr [rdi + 0x18]
00000001405a5758 lea      r8, [rip + 0xc51d1]
00000001405a575f mov      rcx, qword ptr [rdi + 8]
00000001405a5763 mov      edx, r13d
00000001405a5766 mov      rax, qword ptr [rax + 0x118]
00000001405a576d call     qword ptr [rip + 0xdeb85]
00000001405a5773 lea      rdx, [rip + 0x728eee]
00000001405a577a jmp      0x1405aba72
00000001405a577f mov      rax, qword ptr [rdi + 0x18]
00000001405a5783 lea      r8, [rip + 0xd9416]
00000001405a578a mov      rcx, qword ptr [rdi + 8]
00000001405a578e mov      edx, r13d
00000001405a5791 mov      rax, qword ptr [rax + 0x118]
00000001405a5798 call     qword ptr [rip + 0xdeb5a]
00000001405a579e mov      rax, qword ptr [rdi + 0x18]
00000001405a57a2 lea      r8, [rip + 0xd9427]
00000001405a57a9 mov      rcx, qword ptr [rdi + 8]
00000001405a57ad mov      edx, r13d
00000001405a57b0 mov      rax, qword ptr [rax + 0x118]
00000001405a57b7 call     qword ptr [rip + 0xdeb3b]
00000001405a57bd lea      rdx, [rip + 0x728e94]
00000001405a57c4 jmp      0x1405aba72
00000001405a57c9 mov      rax, qword ptr [rdi + 0x18]
00000001405a57cd lea      r8, [rip + 0xc6b7c]
00000001405a57d4 mov      rcx, qword ptr [rdi + 8]
00000001405a57d8 mov      edx, r13d
00000001405a57db mov      rax, qword ptr [rax + 0x118]
00000001405a57e2 call     qword ptr [rip + 0xdeb10]
00000001405a57e8 mov      rax, qword ptr [rdi + 0x18]
00000001405a57ec lea      r8, [rip + 0xc6b7d]
00000001405a57f3 mov      rcx, qword ptr [rdi + 8]
00000001405a57f7 mov      edx, r13d
00000001405a57fa mov      rax, qword ptr [rax + 0x118]
00000001405a5801 call     qword ptr [rip + 0xdeaf1]
00000001405a5807 lea      rdx, [rip + 0x728e9a]
00000001405a580e jmp      0x1405aba72
00000001405a5813 mov      eax, 0x98
00000001405a5818 cmp      ebx, eax
00000001405a581a ja       0x1405a61ab
00000001405a5820 je       0x1405a5fd0
00000001405a5826 sub      ebx, 0x92
00000001405a582c je       0x1405a5f86
00000001405a5832 sub      ebx, r13d
00000001405a5835 je       0x1405a5e8d
00000001405a583b sub      ebx, r13d
00000001405a583e je       0x1405a5d94
00000001405a5844 sub      ebx, r13d
00000001405a5847 je       0x1405a5c12
00000001405a584d sub      ebx, r13d
00000001405a5850 je       0x1405a5a3a
00000001405a5856 cmp      ebx, r13d
00000001405a5859 jne      0x1405ab45d
00000001405a585f mov      rax, qword ptr [rdi + 0x18]
00000001405a5863 lea      r8, [rip + 0xd9516]
00000001405a586a mov      rcx, qword ptr [rdi + 8]
00000001405a586e mov      edx, r13d
00000001405a5871 mov      rax, qword ptr [rax + 0x118]
00000001405a5878 call     qword ptr [rip + 0xdea7a]
00000001405a587e mov      rax, qword ptr [rsi + 0x20]
00000001405a5882 mov      r14d, 0xf4
00000001405a5888 mov      edx, r14d
00000001405a588b mov      rcx, rdi
00000001405a588e call     qword ptr [rip + 0xdea64]
00000001405a5894 mov      r9d, 0x186000f4
00000001405a589a lea      r8, [rip + 0xc292f]
00000001405a58a1 btr      eax, 0x11
00000001405a58a5 mov      edx, r13d
00000001405a58a8 bts      eax, 0x10
00000001405a58ac mov      dword ptr [rbp + 0x30], eax
00000001405a58af mov      rax, qword ptr [rdi + 0x18]
00000001405a58b3 mov      rcx, qword ptr [rdi + 8]
00000001405a58b7 mov      rax, qword ptr [rax + 0x118]
00000001405a58be call     qword ptr [rip + 0xdea34]
00000001405a58c4 mov      rax, qword ptr [rsi + 0x28]
00000001405a58c8 mov      edx, r14d
00000001405a58cb mov      r8d, dword ptr [rbp + 0x30]
00000001405a58cf mov      rcx, rdi
00000001405a58d2 call     qword ptr [rip + 0xdea20]
00000001405a58d8 mov      rax, qword ptr [rsi + 0x20]
00000001405a58dc mov      ebx, 0x58
00000001405a58e1 mov      edx, ebx
00000001405a58e3 mov      rcx, rdi
00000001405a58e6 call     qword ptr [rip + 0xdea0c]
00000001405a58ec mov      r9d, 0x18600058
00000001405a58f2 lea      r8, [rip + 0xc6c57]
00000001405a58f9 and      eax, 0xffffffa0
00000001405a58fc mov      edx, r13d
00000001405a58ff or       eax, 0xa0
00000001405a5904 mov      dword ptr [rbp + 0x30], eax
00000001405a5907 mov      rax, qword ptr [rdi + 0x18]
00000001405a590b mov      rcx, qword ptr [rdi + 8]
00000001405a590f mov      rax, qword ptr [rax + 0x118]
00000001405a5916 call     qword ptr [rip + 0xde9dc]
00000001405a591c mov      eax, dword ptr [rbp + 0x30]
00000001405a591f lea      r8, [rip + 0xd930a]
00000001405a5926 and      eax, 0xffa0ffff
00000001405a592b mov      r9d, 0x18600058
00000001405a5931 or       eax, 0xa00000
00000001405a5936 mov      edx, r13d
00000001405a5939 mov      dword ptr [rbp + 0x30], eax
00000001405a593c mov      rax, qword ptr [rdi + 0x18]
00000001405a5940 mov      rcx, qword ptr [rdi + 8]
00000001405a5944 mov      rax, qword ptr [rax + 0x118]
00000001405a594b call     qword ptr [rip + 0xde9a7]
00000001405a5951 mov      rax, qword ptr [rsi + 0x28]
00000001405a5955 mov      edx, ebx
00000001405a5957 mov      r8d, dword ptr [rbp + 0x30]
00000001405a595b mov      rcx, rdi
00000001405a595e call     qword ptr [rip + 0xde994]
00000001405a5964 mov      rax, qword ptr [rsi]
00000001405a5967 mov      r14d, 0x10c0c
00000001405a596d mov      edx, r14d
00000001405a5970 mov      rcx, rdi
00000001405a5973 call     qword ptr [rip + 0xde97f]
00000001405a5979 mov      rcx, qword ptr [rdi + 8]
00000001405a597d lea      r8, [rip + 0xd936c]
00000001405a5984 mov      bl, al
00000001405a5986 mov      r9d, 0x18610c0c
00000001405a598c mov      rax, qword ptr [rdi + 0x18]
00000001405a5990 and      bl, 0xfd
00000001405a5993 mov      edx, r13d
00000001405a5996 or       bl, r13b
00000001405a5999 mov      rax, qword ptr [rax + 0x118]
00000001405a59a0 call     qword ptr [rip + 0xde952]
00000001405a59a6 mov      rax, qword ptr [rsi + 8]
00000001405a59aa mov      r8b, bl
00000001405a59ad mov      edx, r14d
00000001405a59b0 mov      rcx, rdi
00000001405a59b3 call     qword ptr [rip + 0xde93f]
00000001405a59b9 mov      rax, qword ptr [rsi + 0x20]
00000001405a59bd lea      ebx, [r14 + 4]
00000001405a59c1 mov      edx, ebx
00000001405a59c3 mov      rcx, rdi
00000001405a59c6 call     qword ptr [rip + 0xde92c]
00000001405a59cc mov      r9d, 0x18610c10
00000001405a59d2 lea      r8, [rip + 0xd93d7]
00000001405a59d9 btr      eax, 0x18
00000001405a59dd mov      edx, r13d
00000001405a59e0 bts      eax, 0x17
00000001405a59e4 mov      dword ptr [rbp + 0x30], eax
00000001405a59e7 mov      rax, qword ptr [rdi + 0x18]
00000001405a59eb mov      rcx, qword ptr [rdi + 8]
00000001405a59ef mov      rax, qword ptr [rax + 0x118]
00000001405a59f6 call     qword ptr [rip + 0xde8fc]
00000001405a59fc mov      rax, qword ptr [rsi + 0x28]
00000001405a5a00 mov      edx, ebx
00000001405a5a02 mov      r8d, dword ptr [rbp + 0x30]
00000001405a5a06 mov      rcx, rdi
00000001405a5a09 call     qword ptr [rip + 0xde8e9]
00000001405a5a0f mov      rax, qword ptr [rdi + 0x18]
00000001405a5a13 lea      r8, [rip + 0xd93c6]
00000001405a5a1a mov      rcx, qword ptr [rdi + 8]
00000001405a5a1e mov      edx, r13d
00000001405a5a21 mov      rax, qword ptr [rax + 0x118]
00000001405a5a28 call     qword ptr [rip + 0xde8ca]
00000001405a5a2e lea      rdx, [rip + 0x728cd3]
00000001405a5a35 jmp      0x1405aba72
00000001405a5a3a mov      rax, qword ptr [rdi + 0x18]
00000001405a5a3e lea      r8, [rip + 0xd927b]
00000001405a5a45 mov      rcx, qword ptr [rdi + 8]
00000001405a5a49 mov      edx, r13d
00000001405a5a4c mov      rax, qword ptr [rax + 0x118]
00000001405a5a53 call     qword ptr [rip + 0xde89f]
00000001405a5a59 mov      rax, qword ptr [rsi + 0x20]
00000001405a5a5d mov      r14d, 0xf4
00000001405a5a63 mov      edx, r14d
00000001405a5a66 mov      rcx, rdi
00000001405a5a69 call     qword ptr [rip + 0xde889]
00000001405a5a6f mov      r9d, 0x186000f4
00000001405a5a75 lea      r8, [rip + 0xc2754]
00000001405a5a7c btr      eax, 0x11
00000001405a5a80 mov      edx, r13d
00000001405a5a83 bts      eax, 0x10
00000001405a5a87 mov      dword ptr [rbp + 0x30], eax
00000001405a5a8a mov      rax, qword ptr [rdi + 0x18]
00000001405a5a8e mov      rcx, qword ptr [rdi + 8]
00000001405a5a92 mov      rax, qword ptr [rax + 0x118]
00000001405a5a99 call     qword ptr [rip + 0xde859]
00000001405a5a9f mov      rax, qword ptr [rsi + 0x28]
00000001405a5aa3 mov      edx, r14d
00000001405a5aa6 mov      r8d, dword ptr [rbp + 0x30]
00000001405a5aaa mov      rcx, rdi
00000001405a5aad call     qword ptr [rip + 0xde845]
00000001405a5ab3 mov      rax, qword ptr [rsi + 0x20]
00000001405a5ab7 mov      ebx, 0x58
00000001405a5abc mov      edx, ebx
00000001405a5abe mov      rcx, rdi
00000001405a5ac1 call     qword ptr [rip + 0xde831]
00000001405a5ac7 mov      r9d, 0x18600058
00000001405a5acd lea      r8, [rip + 0xc6a7c]
00000001405a5ad4 and      eax, 0xffffffa0
00000001405a5ad7 mov      edx, r13d
00000001405a5ada or       eax, 0xa0
00000001405a5adf mov      dword ptr [rbp + 0x30], eax
00000001405a5ae2 mov      rax, qword ptr [rdi + 0x18]
00000001405a5ae6 mov      rcx, qword ptr [rdi + 8]
00000001405a5aea mov      rax, qword ptr [rax + 0x118]
00000001405a5af1 call     qword ptr [rip + 0xde801]
00000001405a5af7 mov      eax, dword ptr [rbp + 0x30]
00000001405a5afa lea      r8, [rip + 0xd912f]
00000001405a5b01 and      eax, 0xffa0ffff
00000001405a5b06 mov      r9d, 0x18600058
00000001405a5b0c or       eax, 0xa00000
00000001405a5b11 mov      edx, r13d
00000001405a5b14 mov      dword ptr [rbp + 0x30], eax
00000001405a5b17 mov      rax, qword ptr [rdi + 0x18]
00000001405a5b1b mov      rcx, qword ptr [rdi + 8]
00000001405a5b1f mov      rax, qword ptr [rax + 0x118]
00000001405a5b26 call     qword ptr [rip + 0xde7cc]
00000001405a5b2c mov      rax, qword ptr [rsi + 0x28]
00000001405a5b30 mov      edx, ebx
00000001405a5b32 mov      r8d, dword ptr [rbp + 0x30]
00000001405a5b36 mov      rcx, rdi
00000001405a5b39 call     qword ptr [rip + 0xde7b9]
00000001405a5b3f mov      rax, qword ptr [rsi]
00000001405a5b42 mov      r14d, 0x10c0c
00000001405a5b48 mov      edx, r14d
00000001405a5b4b mov      rcx, rdi
00000001405a5b4e call     qword ptr [rip + 0xde7a4]
00000001405a5b54 mov      rcx, qword ptr [rdi + 8]
00000001405a5b58 lea      r8, [rip + 0xd9191]
00000001405a5b5f mov      bl, al
00000001405a5b61 mov      r9d, 0x18610c0c
00000001405a5b67 mov      rax, qword ptr [rdi + 0x18]
00000001405a5b6b and      bl, 0xfd
00000001405a5b6e mov      edx, r13d
00000001405a5b71 or       bl, r13b
00000001405a5b74 mov      rax, qword ptr [rax + 0x118]
00000001405a5b7b call     qword ptr [rip + 0xde777]
00000001405a5b81 mov      rax, qword ptr [rsi + 8]
00000001405a5b85 mov      r8b, bl
00000001405a5b88 mov      edx, r14d
00000001405a5b8b mov      rcx, rdi
00000001405a5b8e call     qword ptr [rip + 0xde764]
00000001405a5b94 mov      rax, qword ptr [rsi + 0x20]
00000001405a5b98 lea      ebx, [r14 + 4]
00000001405a5b9c mov      edx, ebx
00000001405a5b9e mov      rcx, rdi
00000001405a5ba1 call     qword ptr [rip + 0xde751]
00000001405a5ba7 mov      r9d, 0x18610c10
00000001405a5bad lea      r8, [rip + 0xd916c]
00000001405a5bb4 and      eax, 0xfe7fffff
00000001405a5bb9 mov      edx, r13d
00000001405a5bbc mov      dword ptr [rbp + 0x30], eax
00000001405a5bbf mov      rax, qword ptr [rdi + 0x18]
00000001405a5bc3 mov      rcx, qword ptr [rdi + 8]
00000001405a5bc7 mov      rax, qword ptr [rax + 0x118]
00000001405a5bce call     qword ptr [rip + 0xde724]
00000001405a5bd4 mov      rax, qword ptr [rsi + 0x28]
00000001405a5bd8 mov      edx, ebx
00000001405a5bda mov      r8d, dword ptr [rbp + 0x30]
00000001405a5bde mov      rcx, rdi
00000001405a5be1 call     qword ptr [rip + 0xde711]
00000001405a5be7 mov      rax, qword ptr [rdi + 0x18]
00000001405a5beb lea      r8, [rip + 0xd915e]
00000001405a5bf2 mov      rcx, qword ptr [rdi + 8]
00000001405a5bf6 mov      edx, r13d
00000001405a5bf9 mov      rax, qword ptr [rax + 0x118]
00000001405a5c00 call     qword ptr [rip + 0xde6f2]
00000001405a5c06 lea      rdx, [rip + 0x728aeb]
00000001405a5c0d jmp      0x1405aba72
00000001405a5c12 mov      rax, qword ptr [rdi + 0x18]
00000001405a5c16 lea      r8, [rip + 0xd8fe3]
00000001405a5c1d mov      rcx, qword ptr [rdi + 8]
00000001405a5c21 mov      edx, r13d
00000001405a5c24 mov      rax, qword ptr [rax + 0x118]
00000001405a5c2b call     qword ptr [rip + 0xde6c7]
00000001405a5c31 mov      rax, qword ptr [rsi + 0x20]
00000001405a5c35 mov      r14d, 0xf4
00000001405a5c3b mov      edx, r14d
00000001405a5c3e mov      rcx, rdi
00000001405a5c41 call     qword ptr [rip + 0xde6b1]
00000001405a5c47 mov      r9d, 0x186000f4
00000001405a5c4d lea      r8, [rip + 0xc257c]
00000001405a5c54 btr      eax, 0x11
00000001405a5c58 mov      edx, r13d
00000001405a5c5b bts      eax, 0x10
00000001405a5c5f mov      dword ptr [rbp + 0x30], eax
00000001405a5c62 mov      rax, qword ptr [rdi + 0x18]
00000001405a5c66 mov      rcx, qword ptr [rdi + 8]
00000001405a5c6a mov      rax, qword ptr [rax + 0x118]
00000001405a5c71 call     qword ptr [rip + 0xde681]
00000001405a5c77 mov      rax, qword ptr [rsi + 0x28]
00000001405a5c7b mov      edx, r14d
00000001405a5c7e mov      r8d, dword ptr [rbp + 0x30]
00000001405a5c82 mov      rcx, rdi
00000001405a5c85 call     qword ptr [rip + 0xde66d]
00000001405a5c8b mov      rax, qword ptr [rsi + 0x20]
00000001405a5c8f mov      ebx, 0x58
00000001405a5c94 mov      edx, ebx
00000001405a5c96 mov      rcx, rdi
00000001405a5c99 call     qword ptr [rip + 0xde659]
00000001405a5c9f mov      r9d, 0x18600058
00000001405a5ca5 lea      r8, [rip + 0xc68a4]
00000001405a5cac and      eax, 0xffffffa0
00000001405a5caf mov      edx, r13d
00000001405a5cb2 or       eax, 0xa0
00000001405a5cb7 mov      dword ptr [rbp + 0x30], eax
00000001405a5cba mov      rax, qword ptr [rdi + 0x18]
00000001405a5cbe mov      rcx, qword ptr [rdi + 8]
00000001405a5cc2 mov      rax, qword ptr [rax + 0x118]
00000001405a5cc9 call     qword ptr [rip + 0xde629]
00000001405a5ccf mov      eax, dword ptr [rbp + 0x30]
00000001405a5cd2 lea      r8, [rip + 0xd8f57]
00000001405a5cd9 and      eax, 0xffa0ffff
00000001405a5cde mov      r9d, 0x18600058
00000001405a5ce4 or       eax, 0xa00000
00000001405a5ce9 mov      edx, r13d
00000001405a5cec mov      dword ptr [rbp + 0x30], eax
00000001405a5cef mov      rax, qword ptr [rdi + 0x18]
00000001405a5cf3 mov      rcx, qword ptr [rdi + 8]
00000001405a5cf7 mov      rax, qword ptr [rax + 0x118]
00000001405a5cfe call     qword ptr [rip + 0xde5f4]
00000001405a5d04 mov      rax, qword ptr [rsi + 0x28]
00000001405a5d08 mov      edx, ebx
00000001405a5d0a mov      r8d, dword ptr [rbp + 0x30]
00000001405a5d0e mov      rcx, rdi
00000001405a5d11 call     qword ptr [rip + 0xde5e1]
00000001405a5d17 mov      rax, qword ptr [rsi]
00000001405a5d1a mov      r14d, 0x10c0c
00000001405a5d20 mov      edx, r14d
00000001405a5d23 mov      rcx, rdi
00000001405a5d26 call     qword ptr [rip + 0xde5cc]
00000001405a5d2c mov      rcx, qword ptr [rdi + 8]
00000001405a5d30 lea      r8, [rip + 0xd8f29]
00000001405a5d37 mov      bl, al
00000001405a5d39 mov      r9d, 0x18610c0c
00000001405a5d3f mov      rax, qword ptr [rdi + 0x18]
00000001405a5d43 mov      edx, r13d
00000001405a5d46 and      bl, 0xfc
00000001405a5d49 mov      rax, qword ptr [rax + 0x118]
00000001405a5d50 call     qword ptr [rip + 0xde5a2]
00000001405a5d56 mov      rax, qword ptr [rsi + 8]
00000001405a5d5a mov      r8b, bl
00000001405a5d5d mov      edx, r14d
00000001405a5d60 mov      rcx, rdi
00000001405a5d63 call     qword ptr [rip + 0xde58f]
00000001405a5d69 mov      rax, qword ptr [rdi + 0x18]
00000001405a5d6d lea      r8, [rip + 0xd8f1c]
00000001405a5d74 mov      rcx, qword ptr [rdi + 8]
00000001405a5d78 mov      edx, r13d
00000001405a5d7b mov      rax, qword ptr [rax + 0x118]
00000001405a5d82 call     qword ptr [rip + 0xde570]
00000001405a5d88 lea      rdx, [rip + 0x728959]
00000001405a5d8f jmp      0x1405aba72
00000001405a5d94 mov      rax, qword ptr [rdi + 0x18]
00000001405a5d98 lea      r8, [rip + 0xc66f1]
00000001405a5d9f mov      rcx, qword ptr [rdi + 8]
00000001405a5da3 mov      edx, r13d
00000001405a5da6 mov      rax, qword ptr [rax + 0x118]
00000001405a5dad call     qword ptr [rip + 0xde545]
00000001405a5db3 mov      rax, qword ptr [rsi + 0x20]
00000001405a5db7 mov      r14d, 0xf4
00000001405a5dbd mov      edx, r14d
00000001405a5dc0 mov      rcx, rdi
00000001405a5dc3 call     qword ptr [rip + 0xde52f]
00000001405a5dc9 mov      r9d, 0x186000f4
00000001405a5dcf lea      r8, [rip + 0xc23fa]
00000001405a5dd6 btr      eax, 0x11
00000001405a5dda mov      edx, r13d
00000001405a5ddd bts      eax, 0x10
00000001405a5de1 mov      dword ptr [rbp + 0x30], eax
00000001405a5de4 mov      rax, qword ptr [rdi + 0x18]
00000001405a5de8 mov      rcx, qword ptr [rdi + 8]
00000001405a5dec mov      rax, qword ptr [rax + 0x118]
00000001405a5df3 call     qword ptr [rip + 0xde4ff]
00000001405a5df9 mov      rax, qword ptr [rsi + 0x28]
00000001405a5dfd mov      edx, r14d
00000001405a5e00 mov      r8d, dword ptr [rbp + 0x30]
00000001405a5e04 mov      rcx, rdi
00000001405a5e07 call     qword ptr [rip + 0xde4eb]
00000001405a5e0d mov      rax, qword ptr [rsi]
00000001405a5e10 mov      r14d, 0x31c0
00000001405a5e16 mov      edx, r14d
00000001405a5e19 mov      rcx, rdi
00000001405a5e1c call     qword ptr [rip + 0xde4d6]
00000001405a5e22 mov      rcx, qword ptr [rdi + 8]
00000001405a5e26 lea      r8, [rip + 0xc6693]
00000001405a5e2d mov      bl, al
00000001405a5e2f mov      r9d, 0x186031c0
00000001405a5e35 mov      rax, qword ptr [rdi + 0x18]
00000001405a5e39 mov      edx, r13d
00000001405a5e3c or       bl, r13b
00000001405a5e3f mov      rax, qword ptr [rax + 0x118]
00000001405a5e46 call     qword ptr [rip + 0xde4ac]
00000001405a5e4c mov      rax, qword ptr [rsi + 8]
00000001405a5e50 mov      r8b, bl
00000001405a5e53 mov      edx, r14d
00000001405a5e56 mov      rcx, rdi
00000001405a5e59 call     qword ptr [rip + 0xde499]
00000001405a5e5f mov      rax, qword ptr [rdi + 0x18]
00000001405a5e63 lea      r8, [rip + 0xc6686]
00000001405a5e6a mov      rcx, qword ptr [rdi + 8]
00000001405a5e6e mov      edx, r13d
00000001405a5e71 mov      rax, qword ptr [rax + 0x118]
00000001405a5e78 call     qword ptr [rip + 0xde47a]
00000001405a5e7e mov      r9b, r13b
00000001405a5e81 lea      rdx, [rip + 0x728850]
00000001405a5e88 jmp      0x1405aba75
00000001405a5e8d mov      rax, qword ptr [rdi + 0x18]
00000001405a5e91 lea      r8, [rip + 0xc6568]
00000001405a5e98 mov      rcx, qword ptr [rdi + 8]
00000001405a5e9c mov      edx, r13d
00000001405a5e9f mov      rax, qword ptr [rax + 0x118]
00000001405a5ea6 call     qword ptr [rip + 0xde44c]
00000001405a5eac mov      rax, qword ptr [rsi + 0x20]
00000001405a5eb0 mov      r14d, 0xf4
00000001405a5eb6 mov      edx, r14d
00000001405a5eb9 mov      rcx, rdi
00000001405a5ebc call     qword ptr [rip + 0xde436]
00000001405a5ec2 mov      r9d, 0x186000f4
00000001405a5ec8 lea      r8, [rip + 0xc2301]
00000001405a5ecf btr      eax, 0x11
00000001405a5ed3 mov      edx, r13d
00000001405a5ed6 bts      eax, 0x10
00000001405a5eda mov      dword ptr [rbp + 0x30], eax
00000001405a5edd mov      rax, qword ptr [rdi + 0x18]
00000001405a5ee1 mov      rcx, qword ptr [rdi + 8]
00000001405a5ee5 mov      rax, qword ptr [rax + 0x118]
00000001405a5eec call     qword ptr [rip + 0xde406]
00000001405a5ef2 mov      rax, qword ptr [rsi + 0x28]
00000001405a5ef6 mov      edx, r14d
00000001405a5ef9 mov      r8d, dword ptr [rbp + 0x30]
00000001405a5efd mov      rcx, rdi
00000001405a5f00 call     qword ptr [rip + 0xde3f2]
00000001405a5f06 mov      rax, qword ptr [rsi]
00000001405a5f09 mov      r14d, 0x31c0
00000001405a5f0f mov      edx, r14d
00000001405a5f12 mov      rcx, rdi
00000001405a5f15 call     qword ptr [rip + 0xde3dd]
00000001405a5f1b mov      rcx, qword ptr [rdi + 8]
00000001405a5f1f lea      r8, [rip + 0xc650a]
00000001405a5f26 mov      bl, al
00000001405a5f28 mov      r9d, 0x186031c0
00000001405a5f2e mov      rax, qword ptr [rdi + 0x18]
00000001405a5f32 mov      edx, r13d
00000001405a5f35 and      bl, 0xfe
00000001405a5f38 mov      rax, qword ptr [rax + 0x118]
00000001405a5f3f call     qword ptr [rip + 0xde3b3]
00000001405a5f45 mov      rax, qword ptr [rsi + 8]
00000001405a5f49 mov      r8b, bl
00000001405a5f4c mov      edx, r14d
00000001405a5f4f mov      rcx, rdi
00000001405a5f52 call     qword ptr [rip + 0xde3a0]
00000001405a5f58 mov      rax, qword ptr [rdi + 0x18]
00000001405a5f5c lea      r8, [rip + 0xc64fd]
00000001405a5f63 mov      rcx, qword ptr [rdi + 8]
00000001405a5f67 mov      edx, r13d
00000001405a5f6a mov      rax, qword ptr [rax + 0x118]
00000001405a5f71 call     qword ptr [rip + 0xde381]
00000001405a5f77 mov      r9b, r13b
00000001405a5f7a lea      rdx, [rip + 0x728747]
00000001405a5f81 jmp      0x1405aba75
00000001405a5f86 mov      rax, qword ptr [rdi + 0x18]
00000001405a5f8a lea      r8, [rip + 0xc640f]
00000001405a5f91 mov      rcx, qword ptr [rdi + 8]
00000001405a5f95 mov      edx, r13d
00000001405a5f98 mov      rax, qword ptr [rax + 0x118]
00000001405a5f9f call     qword ptr [rip + 0xde353]
00000001405a5fa5 mov      rax, qword ptr [rdi + 0x18]
00000001405a5fa9 lea      r8, [rip + 0xc6420]
00000001405a5fb0 mov      rcx, qword ptr [rdi + 8]
00000001405a5fb4 mov      edx, r13d
00000001405a5fb7 mov      rax, qword ptr [rax + 0x118]
00000001405a5fbe call     qword ptr [rip + 0xde334]
00000001405a5fc4 lea      rdx, [rip + 0x7286ed]
00000001405a5fcb jmp      0x1405aba72
00000001405a5fd0 mov      rax, qword ptr [rdi + 0x18]
00000001405a5fd4 lea      r8, [rip + 0xd8e35]
00000001405a5fdb mov      rcx, qword ptr [rdi + 8]
00000001405a5fdf mov      edx, r13d
00000001405a5fe2 mov      rax, qword ptr [rax + 0x118]
00000001405a5fe9 call     qword ptr [rip + 0xde309]
00000001405a5fef mov      rax, qword ptr [rsi + 0x20]
00000001405a5ff3 mov      r14d, 0xf4
00000001405a5ff9 mov      edx, r14d
00000001405a5ffc mov      rcx, rdi
00000001405a5fff call     qword ptr [rip + 0xde2f3]
00000001405a6005 mov      r9d, 0x186000f4
00000001405a600b lea      r8, [rip + 0xc21be]
00000001405a6012 btr      eax, 0x11
00000001405a6016 mov      edx, r13d
00000001405a6019 bts      eax, 0x10
00000001405a601d mov      dword ptr [rbp + 0x30], eax
00000001405a6020 mov      rax, qword ptr [rdi + 0x18]
00000001405a6024 mov      rcx, qword ptr [rdi + 8]
00000001405a6028 mov      rax, qword ptr [rax + 0x118]
00000001405a602f call     qword ptr [rip + 0xde2c3]
00000001405a6035 mov      rax, qword ptr [rsi + 0x28]
00000001405a6039 mov      edx, r14d
00000001405a603c mov      r8d, dword ptr [rbp + 0x30]
00000001405a6040 mov      rcx, rdi
00000001405a6043 call     qword ptr [rip + 0xde2af]
00000001405a6049 mov      rax, qword ptr [rsi + 0x20]
00000001405a604d mov      ebx, 0x58
00000001405a6052 mov      edx, ebx
00000001405a6054 mov      rcx, rdi
00000001405a6057 call     qword ptr [rip + 0xde29b]
00000001405a605d mov      r9d, 0x18600058
00000001405a6063 lea      r8, [rip + 0xc64e6]
00000001405a606a and      eax, 0xffffffa0
00000001405a606d mov      edx, r13d
00000001405a6070 or       eax, 0xa0
00000001405a6075 mov      dword ptr [rbp + 0x30], eax
00000001405a6078 mov      rax, qword ptr [rdi + 0x18]
00000001405a607c mov      rcx, qword ptr [rdi + 8]
00000001405a6080 mov      rax, qword ptr [rax + 0x118]
00000001405a6087 call     qword ptr [rip + 0xde26b]
00000001405a608d mov      eax, dword ptr [rbp + 0x30]
00000001405a6090 lea      r8, [rip + 0xd8b99]
00000001405a6097 and      eax, 0xffa0ffff
00000001405a609c mov      r9d, 0x18600058
00000001405a60a2 or       eax, 0xa00000
00000001405a60a7 mov      edx, r13d
00000001405a60aa mov      dword ptr [rbp + 0x30], eax
00000001405a60ad mov      rax, qword ptr [rdi + 0x18]
00000001405a60b1 mov      rcx, qword ptr [rdi + 8]
00000001405a60b5 mov      rax, qword ptr [rax + 0x118]
00000001405a60bc call     qword ptr [rip + 0xde236]
00000001405a60c2 mov      rax, qword ptr [rsi + 0x28]
00000001405a60c6 mov      edx, ebx
00000001405a60c8 mov      r8d, dword ptr [rbp + 0x30]
00000001405a60cc mov      rcx, rdi
00000001405a60cf call     qword ptr [rip + 0xde223]
00000001405a60d5 mov      rax, qword ptr [rsi]
00000001405a60d8 mov      r14d, 0x10c0c
00000001405a60de mov      edx, r14d
00000001405a60e1 mov      rcx, rdi
00000001405a60e4 call     qword ptr [rip + 0xde20e]
00000001405a60ea mov      rcx, qword ptr [rdi + 8]
00000001405a60ee lea      r8, [rip + 0xd8bfb]
00000001405a60f5 mov      bl, al
00000001405a60f7 mov      r9d, 0x18610c0c
00000001405a60fd mov      rax, qword ptr [rdi + 0x18]
00000001405a6101 and      bl, 0xfd
00000001405a6104 mov      edx, r13d
00000001405a6107 or       bl, r13b
00000001405a610a mov      rax, qword ptr [rax + 0x118]
00000001405a6111 call     qword ptr [rip + 0xde1e1]
00000001405a6117 mov      rax, qword ptr [rsi + 8]
00000001405a611b mov      r8b, bl
00000001405a611e mov      edx, r14d
00000001405a6121 mov      rcx, rdi
00000001405a6124 call     qword ptr [rip + 0xde1ce]
00000001405a612a mov      rax, qword ptr [rsi + 0x20]
00000001405a612e lea      ebx, [r14 + 4]
00000001405a6132 mov      edx, ebx
00000001405a6134 mov      rcx, rdi
00000001405a6137 call     qword ptr [rip + 0xde1bb]
00000001405a613d mov      r9d, 0x18610c10
00000001405a6143 lea      r8, [rip + 0xd8cf6]
00000001405a614a btr      eax, 0x17
00000001405a614e mov      edx, r13d
00000001405a6151 bts      eax, 0x18
00000001405a6155 mov      dword ptr [rbp + 0x30], eax
00000001405a6158 mov      rax, qword ptr [rdi + 0x18]
00000001405a615c mov      rcx, qword ptr [rdi + 8]
00000001405a6160 mov      rax, qword ptr [rax + 0x118]
00000001405a6167 call     qword ptr [rip + 0xde18b]
00000001405a616d mov      rax, qword ptr [rsi + 0x28]
00000001405a6171 mov      edx, ebx
00000001405a6173 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6177 mov      rcx, rdi
00000001405a617a call     qword ptr [rip + 0xde178]
00000001405a6180 mov      rax, qword ptr [rdi + 0x18]
00000001405a6184 lea      r8, [rip + 0xd8ce5]
00000001405a618b mov      rcx, qword ptr [rdi + 8]
00000001405a618f mov      edx, r13d
00000001405a6192 mov      rax, qword ptr [rax + 0x118]
00000001405a6199 call     qword ptr [rip + 0xde159]
00000001405a619f lea      rdx, [rip + 0x728572]
00000001405a61a6 jmp      0x1405aba72
00000001405a61ab sub      ebx, 0x99
00000001405a61b1 je       0x1405a68eb
00000001405a61b7 sub      ebx, r13d
00000001405a61ba je       0x1405a6769
00000001405a61c0 sub      ebx, r13d
00000001405a61c3 je       0x1405a6591
00000001405a61c9 sub      ebx, r13d
00000001405a61cc je       0x1405a63b6
00000001405a61d2 cmp      ebx, r13d
00000001405a61d5 jne      0x1405ab45d
00000001405a61db mov      rax, qword ptr [rdi + 0x18]
00000001405a61df lea      r8, [rip + 0xd8e9a]
00000001405a61e6 mov      rcx, qword ptr [rdi + 8]
00000001405a61ea mov      edx, r13d
00000001405a61ed mov      rax, qword ptr [rax + 0x118]
00000001405a61f4 call     qword ptr [rip + 0xde0fe]
00000001405a61fa mov      rax, qword ptr [rsi + 0x20]
00000001405a61fe mov      r14d, 0xf4
00000001405a6204 mov      edx, r14d
00000001405a6207 mov      rcx, rdi
00000001405a620a call     qword ptr [rip + 0xde0e8]
00000001405a6210 mov      r9d, 0x186000f4
00000001405a6216 lea      r8, [rip + 0xc1fb3]
00000001405a621d btr      eax, 0x11
00000001405a6221 mov      edx, r13d
00000001405a6224 bts      eax, 0x10
00000001405a6228 mov      dword ptr [rbp + 0x30], eax
00000001405a622b mov      rax, qword ptr [rdi + 0x18]
00000001405a622f mov      rcx, qword ptr [rdi + 8]
00000001405a6233 mov      rax, qword ptr [rax + 0x118]
00000001405a623a call     qword ptr [rip + 0xde0b8]
00000001405a6240 mov      rax, qword ptr [rsi + 0x28]
00000001405a6244 mov      edx, r14d
00000001405a6247 mov      r8d, dword ptr [rbp + 0x30]
00000001405a624b mov      rcx, rdi
00000001405a624e call     qword ptr [rip + 0xde0a4]
00000001405a6254 mov      rax, qword ptr [rsi + 0x20]
00000001405a6258 mov      ebx, 0x58
00000001405a625d mov      edx, ebx
00000001405a625f mov      rcx, rdi
00000001405a6262 call     qword ptr [rip + 0xde090]
00000001405a6268 mov      r9d, 0x18600058
00000001405a626e lea      r8, [rip + 0xc63cb]
00000001405a6275 and      eax, 0xffffffb0
00000001405a6278 mov      edx, r13d
00000001405a627b or       eax, 0xb0
00000001405a6280 mov      dword ptr [rbp + 0x30], eax
00000001405a6283 mov      rax, qword ptr [rdi + 0x18]
00000001405a6287 mov      rcx, qword ptr [rdi + 8]
00000001405a628b mov      rax, qword ptr [rax + 0x118]
00000001405a6292 call     qword ptr [rip + 0xde060]
00000001405a6298 mov      eax, dword ptr [rbp + 0x30]
00000001405a629b lea      r8, [rip + 0xd8cbe]
00000001405a62a2 and      eax, 0xffb0ffff
00000001405a62a7 mov      r9d, 0x18600058
00000001405a62ad or       eax, 0xb00000
00000001405a62b2 mov      edx, r13d
00000001405a62b5 mov      dword ptr [rbp + 0x30], eax
00000001405a62b8 mov      rax, qword ptr [rdi + 0x18]
00000001405a62bc mov      rcx, qword ptr [rdi + 8]
00000001405a62c0 mov      rax, qword ptr [rax + 0x118]
00000001405a62c7 call     qword ptr [rip + 0xde02b]
00000001405a62cd mov      rax, qword ptr [rsi + 0x28]
00000001405a62d1 mov      edx, ebx
00000001405a62d3 mov      r8d, dword ptr [rbp + 0x30]
00000001405a62d7 mov      rcx, rdi
00000001405a62da call     qword ptr [rip + 0xde018]
00000001405a62e0 mov      rax, qword ptr [rsi]
00000001405a62e3 mov      r14d, 0x14c0c
00000001405a62e9 mov      edx, r14d
00000001405a62ec mov      rcx, rdi
00000001405a62ef call     qword ptr [rip + 0xde003]
00000001405a62f5 mov      rcx, qword ptr [rdi + 8]
00000001405a62f9 lea      r8, [rip + 0xd89f0]
00000001405a6300 mov      bl, al
00000001405a6302 mov      r9d, 0x18614c0c
00000001405a6308 mov      rax, qword ptr [rdi + 0x18]
00000001405a630c and      bl, 0xfd
00000001405a630f mov      edx, r13d
00000001405a6312 or       bl, r13b
00000001405a6315 mov      rax, qword ptr [rax + 0x118]
00000001405a631c call     qword ptr [rip + 0xddfd6]
00000001405a6322 mov      rax, qword ptr [rsi + 8]
00000001405a6326 mov      r8b, bl
00000001405a6329 mov      edx, r14d
00000001405a632c mov      rcx, rdi
00000001405a632f call     qword ptr [rip + 0xddfc3]
00000001405a6335 mov      rax, qword ptr [rsi + 0x20]
00000001405a6339 lea      ebx, [r14 + 4]
00000001405a633d mov      edx, ebx
00000001405a633f mov      rcx, rdi
00000001405a6342 call     qword ptr [rip + 0xddfb0]
00000001405a6348 mov      r9d, 0x18614c10
00000001405a634e lea      r8, [rip + 0xd8aeb]
00000001405a6355 btr      eax, 0x17
00000001405a6359 mov      edx, r13d
00000001405a635c bts      eax, 0x18
00000001405a6360 mov      dword ptr [rbp + 0x30], eax
00000001405a6363 mov      rax, qword ptr [rdi + 0x18]
00000001405a6367 mov      rcx, qword ptr [rdi + 8]
00000001405a636b mov      rax, qword ptr [rax + 0x118]
00000001405a6372 call     qword ptr [rip + 0xddf80]
00000001405a6378 mov      rax, qword ptr [rsi + 0x28]
00000001405a637c mov      edx, ebx
00000001405a637e mov      r8d, dword ptr [rbp + 0x30]
00000001405a6382 mov      rcx, rdi
00000001405a6385 call     qword ptr [rip + 0xddf6d]
00000001405a638b mov      rax, qword ptr [rdi + 0x18]
00000001405a638f lea      r8, [rip + 0xd8d1a]
00000001405a6396 mov      rcx, qword ptr [rdi + 8]
00000001405a639a mov      edx, r13d
00000001405a639d mov      rax, qword ptr [rax + 0x118]
00000001405a63a4 call     qword ptr [rip + 0xddf4e]
00000001405a63aa lea      rdx, [rip + 0x7283b7]
00000001405a63b1 jmp      0x1405aba72
00000001405a63b6 mov      rax, qword ptr [rdi + 0x18]
00000001405a63ba lea      r8, [rip + 0xd8c5f]
00000001405a63c1 mov      rcx, qword ptr [rdi + 8]
00000001405a63c5 mov      edx, r13d
00000001405a63c8 mov      rax, qword ptr [rax + 0x118]
00000001405a63cf call     qword ptr [rip + 0xddf23]
00000001405a63d5 mov      rax, qword ptr [rsi + 0x20]
00000001405a63d9 mov      r14d, 0xf4
00000001405a63df mov      edx, r14d
00000001405a63e2 mov      rcx, rdi
00000001405a63e5 call     qword ptr [rip + 0xddf0d]
00000001405a63eb mov      r9d, 0x186000f4
00000001405a63f1 lea      r8, [rip + 0xc1dd8]
00000001405a63f8 btr      eax, 0x11
00000001405a63fc mov      edx, r13d
00000001405a63ff bts      eax, 0x10
00000001405a6403 mov      dword ptr [rbp + 0x30], eax
00000001405a6406 mov      rax, qword ptr [rdi + 0x18]
00000001405a640a mov      rcx, qword ptr [rdi + 8]
00000001405a640e mov      rax, qword ptr [rax + 0x118]
00000001405a6415 call     qword ptr [rip + 0xddedd]
00000001405a641b mov      rax, qword ptr [rsi + 0x28]
00000001405a641f mov      edx, r14d
00000001405a6422 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6426 mov      rcx, rdi
00000001405a6429 call     qword ptr [rip + 0xddec9]
00000001405a642f mov      rax, qword ptr [rsi + 0x20]
00000001405a6433 mov      ebx, 0x58
00000001405a6438 mov      edx, ebx
00000001405a643a mov      rcx, rdi
00000001405a643d call     qword ptr [rip + 0xddeb5]
00000001405a6443 mov      r9d, 0x18600058
00000001405a6449 lea      r8, [rip + 0xc61f0]
00000001405a6450 and      eax, 0xffffffb0
00000001405a6453 mov      edx, r13d
00000001405a6456 or       eax, 0xb0
00000001405a645b mov      dword ptr [rbp + 0x30], eax
00000001405a645e mov      rax, qword ptr [rdi + 0x18]
00000001405a6462 mov      rcx, qword ptr [rdi + 8]
00000001405a6466 mov      rax, qword ptr [rax + 0x118]
00000001405a646d call     qword ptr [rip + 0xdde85]
00000001405a6473 mov      eax, dword ptr [rbp + 0x30]
00000001405a6476 lea      r8, [rip + 0xd8ae3]
00000001405a647d and      eax, 0xffb0ffff
00000001405a6482 mov      r9d, 0x18600058
00000001405a6488 or       eax, 0xb00000
00000001405a648d mov      edx, r13d
00000001405a6490 mov      dword ptr [rbp + 0x30], eax
00000001405a6493 mov      rax, qword ptr [rdi + 0x18]
00000001405a6497 mov      rcx, qword ptr [rdi + 8]
00000001405a649b mov      rax, qword ptr [rax + 0x118]
00000001405a64a2 call     qword ptr [rip + 0xdde50]
00000001405a64a8 mov      rax, qword ptr [rsi + 0x28]
00000001405a64ac mov      edx, ebx
00000001405a64ae mov      r8d, dword ptr [rbp + 0x30]
00000001405a64b2 mov      rcx, rdi
00000001405a64b5 call     qword ptr [rip + 0xdde3d]
00000001405a64bb mov      rax, qword ptr [rsi]
00000001405a64be mov      r14d, 0x14c0c
00000001405a64c4 mov      edx, r14d
00000001405a64c7 mov      rcx, rdi
00000001405a64ca call     qword ptr [rip + 0xdde28]
00000001405a64d0 mov      rcx, qword ptr [rdi + 8]
00000001405a64d4 lea      r8, [rip + 0xd8815]
00000001405a64db mov      bl, al
00000001405a64dd mov      r9d, 0x18614c0c
00000001405a64e3 mov      rax, qword ptr [rdi + 0x18]
00000001405a64e7 and      bl, 0xfd
00000001405a64ea mov      edx, r13d
00000001405a64ed or       bl, r13b
00000001405a64f0 mov      rax, qword ptr [rax + 0x118]
00000001405a64f7 call     qword ptr [rip + 0xdddfb]
00000001405a64fd mov      rax, qword ptr [rsi + 8]
00000001405a6501 mov      r8b, bl
00000001405a6504 mov      edx, r14d
00000001405a6507 mov      rcx, rdi
00000001405a650a call     qword ptr [rip + 0xddde8]
00000001405a6510 mov      rax, qword ptr [rsi + 0x20]
00000001405a6514 lea      ebx, [r14 + 4]
00000001405a6518 mov      edx, ebx
00000001405a651a mov      rcx, rdi
00000001405a651d call     qword ptr [rip + 0xdddd5]
00000001405a6523 mov      r9d, 0x18614c10
00000001405a6529 lea      r8, [rip + 0xd8880]
00000001405a6530 btr      eax, 0x18
00000001405a6534 mov      edx, r13d
00000001405a6537 bts      eax, 0x17
00000001405a653b mov      dword ptr [rbp + 0x30], eax
00000001405a653e mov      rax, qword ptr [rdi + 0x18]
00000001405a6542 mov      rcx, qword ptr [rdi + 8]
00000001405a6546 mov      rax, qword ptr [rax + 0x118]
00000001405a654d call     qword ptr [rip + 0xddda5]
00000001405a6553 mov      rax, qword ptr [rsi + 0x28]
00000001405a6557 mov      edx, ebx
00000001405a6559 mov      r8d, dword ptr [rbp + 0x30]
00000001405a655d mov      rcx, rdi
00000001405a6560 call     qword ptr [rip + 0xddd92]
00000001405a6566 mov      rax, qword ptr [rdi + 0x18]
00000001405a656a lea      r8, [rip + 0xd8adf]
00000001405a6571 mov      rcx, qword ptr [rdi + 8]
00000001405a6575 mov      edx, r13d
00000001405a6578 mov      rax, qword ptr [rax + 0x118]
00000001405a657f call     qword ptr [rip + 0xddd73]
00000001405a6585 lea      rdx, [rip + 0x7281cc]
00000001405a658c jmp      0x1405aba72
00000001405a6591 mov      rax, qword ptr [rdi + 0x18]
00000001405a6595 lea      r8, [rip + 0xd8a24]
00000001405a659c mov      rcx, qword ptr [rdi + 8]
00000001405a65a0 mov      edx, r13d
00000001405a65a3 mov      rax, qword ptr [rax + 0x118]
00000001405a65aa call     qword ptr [rip + 0xddd48]
00000001405a65b0 mov      rax, qword ptr [rsi + 0x20]
00000001405a65b4 mov      r14d, 0xf4
00000001405a65ba mov      edx, r14d
00000001405a65bd mov      rcx, rdi
00000001405a65c0 call     qword ptr [rip + 0xddd32]
00000001405a65c6 mov      r9d, 0x186000f4
00000001405a65cc lea      r8, [rip + 0xc1bfd]
00000001405a65d3 btr      eax, 0x11
00000001405a65d7 mov      edx, r13d
00000001405a65da bts      eax, 0x10
00000001405a65de mov      dword ptr [rbp + 0x30], eax
00000001405a65e1 mov      rax, qword ptr [rdi + 0x18]
00000001405a65e5 mov      rcx, qword ptr [rdi + 8]
00000001405a65e9 mov      rax, qword ptr [rax + 0x118]
00000001405a65f0 call     qword ptr [rip + 0xddd02]
00000001405a65f6 mov      rax, qword ptr [rsi + 0x28]
00000001405a65fa mov      edx, r14d
00000001405a65fd mov      r8d, dword ptr [rbp + 0x30]
00000001405a6601 mov      rcx, rdi
00000001405a6604 call     qword ptr [rip + 0xddcee]
00000001405a660a mov      rax, qword ptr [rsi + 0x20]
00000001405a660e mov      ebx, 0x58
00000001405a6613 mov      edx, ebx
00000001405a6615 mov      rcx, rdi
00000001405a6618 call     qword ptr [rip + 0xddcda]
00000001405a661e mov      r9d, 0x18600058
00000001405a6624 lea      r8, [rip + 0xc6015]
00000001405a662b and      eax, 0xffffffb0
00000001405a662e mov      edx, r13d
00000001405a6631 or       eax, 0xb0
00000001405a6636 mov      dword ptr [rbp + 0x30], eax
00000001405a6639 mov      rax, qword ptr [rdi + 0x18]
00000001405a663d mov      rcx, qword ptr [rdi + 8]
00000001405a6641 mov      rax, qword ptr [rax + 0x118]
00000001405a6648 call     qword ptr [rip + 0xddcaa]
00000001405a664e mov      eax, dword ptr [rbp + 0x30]
00000001405a6651 lea      r8, [rip + 0xd8908]
00000001405a6658 and      eax, 0xffb0ffff
00000001405a665d mov      r9d, 0x18600058
00000001405a6663 or       eax, 0xb00000
00000001405a6668 mov      edx, r13d
00000001405a666b mov      dword ptr [rbp + 0x30], eax
00000001405a666e mov      rax, qword ptr [rdi + 0x18]
00000001405a6672 mov      rcx, qword ptr [rdi + 8]
00000001405a6676 mov      rax, qword ptr [rax + 0x118]
00000001405a667d call     qword ptr [rip + 0xddc75]
00000001405a6683 mov      rax, qword ptr [rsi + 0x28]
00000001405a6687 mov      edx, ebx
00000001405a6689 mov      r8d, dword ptr [rbp + 0x30]
00000001405a668d mov      rcx, rdi
00000001405a6690 call     qword ptr [rip + 0xddc62]
00000001405a6696 mov      rax, qword ptr [rsi]
00000001405a6699 mov      r14d, 0x14c0c
00000001405a669f mov      edx, r14d
00000001405a66a2 mov      rcx, rdi
00000001405a66a5 call     qword ptr [rip + 0xddc4d]
00000001405a66ab mov      rcx, qword ptr [rdi + 8]
00000001405a66af lea      r8, [rip + 0xd863a]
00000001405a66b6 mov      bl, al
00000001405a66b8 mov      r9d, 0x18614c0c
00000001405a66be mov      rax, qword ptr [rdi + 0x18]
00000001405a66c2 and      bl, 0xfd
00000001405a66c5 mov      edx, r13d
00000001405a66c8 or       bl, r13b
00000001405a66cb mov      rax, qword ptr [rax + 0x118]
00000001405a66d2 call     qword ptr [rip + 0xddc20]
00000001405a66d8 mov      rax, qword ptr [rsi + 8]
00000001405a66dc mov      r8b, bl
00000001405a66df mov      edx, r14d
00000001405a66e2 mov      rcx, rdi
00000001405a66e5 call     qword ptr [rip + 0xddc0d]
00000001405a66eb mov      rax, qword ptr [rsi + 0x20]
00000001405a66ef lea      ebx, [r14 + 4]
00000001405a66f3 mov      edx, ebx
00000001405a66f5 mov      rcx, rdi
00000001405a66f8 call     qword ptr [rip + 0xddbfa]
00000001405a66fe mov      r9d, 0x18614c10
00000001405a6704 lea      r8, [rip + 0xd8615]
00000001405a670b and      eax, 0xfe7fffff
00000001405a6710 mov      edx, r13d
00000001405a6713 mov      dword ptr [rbp + 0x30], eax
00000001405a6716 mov      rax, qword ptr [rdi + 0x18]
00000001405a671a mov      rcx, qword ptr [rdi + 8]
00000001405a671e mov      rax, qword ptr [rax + 0x118]
00000001405a6725 call     qword ptr [rip + 0xddbcd]
00000001405a672b mov      rax, qword ptr [rsi + 0x28]
00000001405a672f mov      edx, ebx
00000001405a6731 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6735 mov      rcx, rdi
00000001405a6738 call     qword ptr [rip + 0xddbba]
00000001405a673e mov      rax, qword ptr [rdi + 0x18]
00000001405a6742 lea      r8, [rip + 0xd88a7]
00000001405a6749 mov      rcx, qword ptr [rdi + 8]
00000001405a674d mov      edx, r13d
00000001405a6750 mov      rax, qword ptr [rax + 0x118]
00000001405a6757 call     qword ptr [rip + 0xddb9b]
00000001405a675d lea      rdx, [rip + 0x727fe4]
00000001405a6764 jmp      0x1405aba72
00000001405a6769 mov      rax, qword ptr [rdi + 0x18]
00000001405a676d lea      r8, [rip + 0xd87bc]
00000001405a6774 mov      rcx, qword ptr [rdi + 8]
00000001405a6778 mov      edx, r13d
00000001405a677b mov      rax, qword ptr [rax + 0x118]
00000001405a6782 call     qword ptr [rip + 0xddb70]
00000001405a6788 mov      rax, qword ptr [rsi + 0x20]
00000001405a678c mov      r14d, 0xf4
00000001405a6792 mov      edx, r14d
00000001405a6795 mov      rcx, rdi
00000001405a6798 call     qword ptr [rip + 0xddb5a]
00000001405a679e mov      r9d, 0x186000f4
00000001405a67a4 lea      r8, [rip + 0xc1a25]
00000001405a67ab btr      eax, 0x11
00000001405a67af mov      edx, r13d
00000001405a67b2 bts      eax, 0x10
00000001405a67b6 mov      dword ptr [rbp + 0x30], eax
00000001405a67b9 mov      rax, qword ptr [rdi + 0x18]
00000001405a67bd mov      rcx, qword ptr [rdi + 8]
00000001405a67c1 mov      rax, qword ptr [rax + 0x118]
00000001405a67c8 call     qword ptr [rip + 0xddb2a]
00000001405a67ce mov      rax, qword ptr [rsi + 0x28]
00000001405a67d2 mov      edx, r14d
00000001405a67d5 mov      r8d, dword ptr [rbp + 0x30]
00000001405a67d9 mov      rcx, rdi
00000001405a67dc call     qword ptr [rip + 0xddb16]
00000001405a67e2 mov      rax, qword ptr [rsi + 0x20]
00000001405a67e6 mov      ebx, 0x58
00000001405a67eb mov      edx, ebx
00000001405a67ed mov      rcx, rdi
00000001405a67f0 call     qword ptr [rip + 0xddb02]
00000001405a67f6 mov      r9d, 0x18600058
00000001405a67fc lea      r8, [rip + 0xc5e3d]
00000001405a6803 and      eax, 0xffffffb0
00000001405a6806 mov      edx, r13d
00000001405a6809 or       eax, 0xb0
00000001405a680e mov      dword ptr [rbp + 0x30], eax
00000001405a6811 mov      rax, qword ptr [rdi + 0x18]
00000001405a6815 mov      rcx, qword ptr [rdi + 8]
00000001405a6819 mov      rax, qword ptr [rax + 0x118]
00000001405a6820 call     qword ptr [rip + 0xddad2]
00000001405a6826 mov      eax, dword ptr [rbp + 0x30]
00000001405a6829 lea      r8, [rip + 0xd8730]
00000001405a6830 and      eax, 0xffb0ffff
00000001405a6835 mov      r9d, 0x18600058
00000001405a683b or       eax, 0xb00000
00000001405a6840 mov      edx, r13d
00000001405a6843 mov      dword ptr [rbp + 0x30], eax
00000001405a6846 mov      rax, qword ptr [rdi + 0x18]
00000001405a684a mov      rcx, qword ptr [rdi + 8]
00000001405a684e mov      rax, qword ptr [rax + 0x118]
00000001405a6855 call     qword ptr [rip + 0xdda9d]
00000001405a685b mov      rax, qword ptr [rsi + 0x28]
00000001405a685f mov      edx, ebx
00000001405a6861 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6865 mov      rcx, rdi
00000001405a6868 call     qword ptr [rip + 0xdda8a]
00000001405a686e mov      rax, qword ptr [rsi]
00000001405a6871 mov      r14d, 0x14c0c
00000001405a6877 mov      edx, r14d
00000001405a687a mov      rcx, rdi
00000001405a687d call     qword ptr [rip + 0xdda75]
00000001405a6883 mov      rcx, qword ptr [rdi + 8]
00000001405a6887 lea      r8, [rip + 0xd83d2]
00000001405a688e mov      bl, al
00000001405a6890 mov      r9d, 0x18614c0c
00000001405a6896 mov      rax, qword ptr [rdi + 0x18]
00000001405a689a mov      edx, r13d
00000001405a689d and      bl, 0xfc
00000001405a68a0 mov      rax, qword ptr [rax + 0x118]
00000001405a68a7 call     qword ptr [rip + 0xdda4b]
00000001405a68ad mov      rax, qword ptr [rsi + 8]
00000001405a68b1 mov      r8b, bl
00000001405a68b4 mov      edx, r14d
00000001405a68b7 mov      rcx, rdi
00000001405a68ba call     qword ptr [rip + 0xdda38]
00000001405a68c0 mov      rax, qword ptr [rdi + 0x18]
00000001405a68c4 lea      r8, [rip + 0xd86c5]
00000001405a68cb mov      rcx, qword ptr [rdi + 8]
00000001405a68cf mov      edx, r13d
00000001405a68d2 mov      rax, qword ptr [rax + 0x118]
00000001405a68d9 call     qword ptr [rip + 0xdda19]
00000001405a68df lea      rdx, [rip + 0x727e52]
00000001405a68e6 jmp      0x1405aba72
00000001405a68eb mov      rax, qword ptr [rdi + 0x18]
00000001405a68ef lea      r8, [rip + 0xd85aa]
00000001405a68f6 mov      rcx, qword ptr [rdi + 8]
00000001405a68fa mov      edx, r13d
00000001405a68fd mov      rax, qword ptr [rax + 0x118]
00000001405a6904 call     qword ptr [rip + 0xdd9ee]
00000001405a690a mov      rax, qword ptr [rsi + 0x20]
00000001405a690e mov      r14d, 0xf4
00000001405a6914 mov      edx, r14d
00000001405a6917 mov      rcx, rdi
00000001405a691a call     qword ptr [rip + 0xdd9d8]
00000001405a6920 mov      r9d, 0x186000f4
00000001405a6926 lea      r8, [rip + 0xc18a3]
00000001405a692d btr      eax, 0x11
00000001405a6931 mov      edx, r13d
00000001405a6934 bts      eax, 0x10
00000001405a6938 mov      dword ptr [rbp + 0x30], eax
00000001405a693b mov      rax, qword ptr [rdi + 0x18]
00000001405a693f mov      rcx, qword ptr [rdi + 8]
00000001405a6943 mov      rax, qword ptr [rax + 0x118]
00000001405a694a call     qword ptr [rip + 0xdd9a8]
00000001405a6950 mov      rax, qword ptr [rsi + 0x28]
00000001405a6954 mov      edx, r14d
00000001405a6957 mov      r8d, dword ptr [rbp + 0x30]
00000001405a695b mov      rcx, rdi
00000001405a695e call     qword ptr [rip + 0xdd994]
00000001405a6964 mov      rax, qword ptr [rsi + 0x20]
00000001405a6968 mov      ebx, 0x58
00000001405a696d mov      edx, ebx
00000001405a696f mov      rcx, rdi
00000001405a6972 call     qword ptr [rip + 0xdd980]
00000001405a6978 mov      r9d, 0x18600058
00000001405a697e lea      r8, [rip + 0xc5bcb]
00000001405a6985 and      eax, 0xffffffa0
00000001405a6988 mov      edx, r13d
00000001405a698b or       eax, 0xa0
00000001405a6990 mov      dword ptr [rbp + 0x30], eax
00000001405a6993 mov      rax, qword ptr [rdi + 0x18]
00000001405a6997 mov      rcx, qword ptr [rdi + 8]
00000001405a699b mov      rax, qword ptr [rax + 0x118]
00000001405a69a2 call     qword ptr [rip + 0xdd950]
00000001405a69a8 mov      eax, dword ptr [rbp + 0x30]
00000001405a69ab lea      r8, [rip + 0xd827e]
00000001405a69b2 and      eax, 0xffa0ffff
00000001405a69b7 mov      r9d, 0x18600058
00000001405a69bd or       eax, 0xa00000
00000001405a69c2 mov      edx, r13d
00000001405a69c5 mov      dword ptr [rbp + 0x30], eax
00000001405a69c8 mov      rax, qword ptr [rdi + 0x18]
00000001405a69cc mov      rcx, qword ptr [rdi + 8]
00000001405a69d0 mov      rax, qword ptr [rax + 0x118]
00000001405a69d7 call     qword ptr [rip + 0xdd91b]
00000001405a69dd mov      rax, qword ptr [rsi + 0x28]
00000001405a69e1 mov      edx, ebx
00000001405a69e3 mov      r8d, dword ptr [rbp + 0x30]
00000001405a69e7 mov      rcx, rdi
00000001405a69ea call     qword ptr [rip + 0xdd908]
00000001405a69f0 mov      rax, qword ptr [rsi]
00000001405a69f3 mov      r14d, 0x10c0c
00000001405a69f9 mov      edx, r14d
00000001405a69fc mov      rcx, rdi
00000001405a69ff call     qword ptr [rip + 0xdd8f3]
00000001405a6a05 mov      rcx, qword ptr [rdi + 8]
00000001405a6a09 lea      r8, [rip + 0xd82e0]
00000001405a6a10 mov      bl, al
00000001405a6a12 mov      r9d, 0x18610c0c
00000001405a6a18 mov      rax, qword ptr [rdi + 0x18]
00000001405a6a1c and      bl, 0xfd
00000001405a6a1f mov      edx, r13d
00000001405a6a22 or       bl, r13b
00000001405a6a25 mov      rax, qword ptr [rax + 0x118]
00000001405a6a2c call     qword ptr [rip + 0xdd8c6]
00000001405a6a32 mov      rax, qword ptr [rsi + 8]
00000001405a6a36 mov      r8b, bl
00000001405a6a39 mov      edx, r14d
00000001405a6a3c mov      rcx, rdi
00000001405a6a3f call     qword ptr [rip + 0xdd8b3]
00000001405a6a45 mov      rax, qword ptr [rsi + 0x20]
00000001405a6a49 lea      ebx, [r14 + 4]
00000001405a6a4d mov      edx, ebx
00000001405a6a4f mov      rcx, rdi
00000001405a6a52 call     qword ptr [rip + 0xdd8a0]
00000001405a6a58 mov      r9d, 0x18610c10
00000001405a6a5e lea      r8, [rip + 0xd846b]
00000001405a6a65 or       eax, 0x1800000
00000001405a6a6a mov      edx, r13d
00000001405a6a6d mov      dword ptr [rbp + 0x30], eax
00000001405a6a70 mov      rax, qword ptr [rdi + 0x18]
00000001405a6a74 mov      rcx, qword ptr [rdi + 8]
00000001405a6a78 mov      rax, qword ptr [rax + 0x118]
00000001405a6a7f call     qword ptr [rip + 0xdd873]
00000001405a6a85 mov      rax, qword ptr [rsi + 0x28]
00000001405a6a89 mov      edx, ebx
00000001405a6a8b mov      r8d, dword ptr [rbp + 0x30]
00000001405a6a8f mov      rcx, rdi
00000001405a6a92 call     qword ptr [rip + 0xdd860]
00000001405a6a98 mov      rax, qword ptr [rdi + 0x18]
00000001405a6a9c lea      r8, [rip + 0xd845d]
00000001405a6aa3 mov      rcx, qword ptr [rdi + 8]
00000001405a6aa7 mov      edx, r13d
00000001405a6aaa mov      rax, qword ptr [rax + 0x118]
00000001405a6ab1 call     qword ptr [rip + 0xdd841]
00000001405a6ab7 lea      rdx, [rip + 0x727c6a]
00000001405a6abe jmp      0x1405aba72
00000001405a6ac3 mov      rax, qword ptr [rdi + 0x18]
00000001405a6ac7 lea      r8, [rip + 0xd8612]
00000001405a6ace mov      rcx, qword ptr [rdi + 8]
00000001405a6ad2 mov      edx, r13d
00000001405a6ad5 mov      rax, qword ptr [rax + 0x118]
00000001405a6adc call     qword ptr [rip + 0xdd816]
00000001405a6ae2 mov      rax, qword ptr [rsi + 0x20]
00000001405a6ae6 mov      r14d, 0xf4
00000001405a6aec mov      edx, r14d
00000001405a6aef mov      rcx, rdi
00000001405a6af2 call     qword ptr [rip + 0xdd800]
00000001405a6af8 mov      r9d, 0x186000f4
00000001405a6afe lea      r8, [rip + 0xc16cb]
00000001405a6b05 btr      eax, 0x11
00000001405a6b09 mov      edx, r13d
00000001405a6b0c bts      eax, 0x10
00000001405a6b10 mov      dword ptr [rbp + 0x30], eax
00000001405a6b13 mov      rax, qword ptr [rdi + 0x18]
00000001405a6b17 mov      rcx, qword ptr [rdi + 8]
00000001405a6b1b mov      rax, qword ptr [rax + 0x118]
00000001405a6b22 call     qword ptr [rip + 0xdd7d0]
00000001405a6b28 mov      rax, qword ptr [rsi + 0x28]
00000001405a6b2c mov      edx, r14d
00000001405a6b2f mov      r8d, dword ptr [rbp + 0x30]
00000001405a6b33 mov      rcx, rdi
00000001405a6b36 call     qword ptr [rip + 0xdd7bc]
00000001405a6b3c mov      rax, qword ptr [rsi + 0x20]
00000001405a6b40 mov      ebx, 0x58
00000001405a6b45 mov      edx, ebx
00000001405a6b47 mov      rcx, rdi
00000001405a6b4a call     qword ptr [rip + 0xdd7a8]
00000001405a6b50 mov      r9d, 0x18600058
00000001405a6b56 lea      r8, [rip + 0xc5ae3]
00000001405a6b5d and      eax, 0xffffffb0
00000001405a6b60 mov      edx, r13d
00000001405a6b63 or       eax, 0xb0
00000001405a6b68 mov      dword ptr [rbp + 0x30], eax
00000001405a6b6b mov      rax, qword ptr [rdi + 0x18]
00000001405a6b6f mov      rcx, qword ptr [rdi + 8]
00000001405a6b73 mov      rax, qword ptr [rax + 0x118]
00000001405a6b7a call     qword ptr [rip + 0xdd778]
00000001405a6b80 mov      eax, dword ptr [rbp + 0x30]
00000001405a6b83 lea      r8, [rip + 0xd83d6]
00000001405a6b8a and      eax, 0xffb0ffff
00000001405a6b8f mov      r9d, 0x18600058
00000001405a6b95 or       eax, 0xb00000
00000001405a6b9a mov      edx, r13d
00000001405a6b9d mov      dword ptr [rbp + 0x30], eax
00000001405a6ba0 mov      rax, qword ptr [rdi + 0x18]
00000001405a6ba4 mov      rcx, qword ptr [rdi + 8]
00000001405a6ba8 mov      rax, qword ptr [rax + 0x118]
00000001405a6baf call     qword ptr [rip + 0xdd743]
00000001405a6bb5 mov      rax, qword ptr [rsi + 0x28]
00000001405a6bb9 mov      edx, ebx
00000001405a6bbb mov      r8d, dword ptr [rbp + 0x30]
00000001405a6bbf mov      rcx, rdi
00000001405a6bc2 call     qword ptr [rip + 0xdd730]
00000001405a6bc8 mov      rax, qword ptr [rsi]
00000001405a6bcb mov      r14d, 0x14c0c
00000001405a6bd1 mov      edx, r14d
00000001405a6bd4 mov      rcx, rdi
00000001405a6bd7 call     qword ptr [rip + 0xdd71b]
00000001405a6bdd mov      rcx, qword ptr [rdi + 8]
00000001405a6be1 lea      r8, [rip + 0xd8108]
00000001405a6be8 mov      bl, al
00000001405a6bea mov      r9d, 0x18614c0c
00000001405a6bf0 mov      rax, qword ptr [rdi + 0x18]
00000001405a6bf4 and      bl, 0xfd
00000001405a6bf7 mov      edx, r13d
00000001405a6bfa or       bl, r13b
00000001405a6bfd mov      rax, qword ptr [rax + 0x118]
00000001405a6c04 call     qword ptr [rip + 0xdd6ee]
00000001405a6c0a mov      rax, qword ptr [rsi + 8]
00000001405a6c0e mov      r8b, bl
00000001405a6c11 mov      edx, r14d
00000001405a6c14 mov      rcx, rdi
00000001405a6c17 call     qword ptr [rip + 0xdd6db]
00000001405a6c1d mov      rax, qword ptr [rsi + 0x20]
00000001405a6c21 lea      ebx, [r14 + 4]
00000001405a6c25 mov      edx, ebx
00000001405a6c27 mov      rcx, rdi
00000001405a6c2a call     qword ptr [rip + 0xdd6c8]
00000001405a6c30 mov      r9d, 0x18614c10
00000001405a6c36 lea      r8, [rip + 0xd8293]
00000001405a6c3d or       eax, 0x1800000
00000001405a6c42 mov      edx, r13d
00000001405a6c45 mov      dword ptr [rbp + 0x30], eax
00000001405a6c48 mov      rax, qword ptr [rdi + 0x18]
00000001405a6c4c mov      rcx, qword ptr [rdi + 8]
00000001405a6c50 mov      rax, qword ptr [rax + 0x118]
00000001405a6c57 call     qword ptr [rip + 0xdd69b]
00000001405a6c5d mov      rax, qword ptr [rsi + 0x28]
00000001405a6c61 mov      edx, ebx
00000001405a6c63 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6c67 mov      rcx, rdi
00000001405a6c6a call     qword ptr [rip + 0xdd688]
00000001405a6c70 mov      rax, qword ptr [rdi + 0x18]
00000001405a6c74 lea      r8, [rip + 0xd8495]
00000001405a6c7b mov      rcx, qword ptr [rdi + 8]
00000001405a6c7f mov      edx, r13d
00000001405a6c82 mov      rax, qword ptr [rax + 0x118]
00000001405a6c89 call     qword ptr [rip + 0xdd669]
00000001405a6c8f lea      rdx, [rip + 0x727ae2]
00000001405a6c96 jmp      0x1405aba72
00000001405a6c9b mov      r15d, 0xb8
00000001405a6ca1 cmp      ebx, r15d
00000001405a6ca4 ja       0x1405a9622
00000001405a6caa je       0x1405a94d0
00000001405a6cb0 lea      eax, [r15 - 0xd]
00000001405a6cb4 cmp      ebx, eax
00000001405a6cb6 ja       0x1405a8135
00000001405a6cbc je       0x1405a7f95
00000001405a6cc2 lea      ecx, [rax - 6]
00000001405a6cc5 cmp      ebx, ecx
00000001405a6cc7 ja       0x1405a77bf
00000001405a6ccd je       0x1405a7637
00000001405a6cd3 sub      ebx, 0x9f
00000001405a6cd9 je       0x1405a74af
00000001405a6cdf sub      ebx, r13d
00000001405a6ce2 je       0x1405a7327
00000001405a6ce8 sub      ebx, r13d
00000001405a6ceb je       0x1405a719f
00000001405a6cf1 sub      ebx, r13d
00000001405a6cf4 je       0x1405a7016
00000001405a6cfa sub      ebx, r13d
00000001405a6cfd je       0x1405a6e8d
00000001405a6d03 cmp      ebx, r13d
00000001405a6d06 jne      0x1405ab45d
00000001405a6d0c mov      rax, qword ptr [rdi + 0x18]
00000001405a6d10 lea      r8, [rip + 0xd8639]
00000001405a6d17 mov      rcx, qword ptr [rdi + 8]
00000001405a6d1b mov      edx, r13d
00000001405a6d1e mov      rax, qword ptr [rax + 0x118]
00000001405a6d25 call     qword ptr [rip + 0xdd5cd]
00000001405a6d2b mov      rax, qword ptr [rsi + 0x20]
00000001405a6d2f lea      r14d, [r15 + 0x3c]
00000001405a6d33 mov      edx, r14d
00000001405a6d36 mov      rcx, rdi
00000001405a6d39 call     qword ptr [rip + 0xdd5b9]
00000001405a6d3f mov      r9d, 0x186000f4
00000001405a6d45 lea      r8, [rip + 0xc1484]
00000001405a6d4c btr      eax, 0x11
00000001405a6d50 mov      edx, r13d
00000001405a6d53 bts      eax, 0x10
00000001405a6d57 mov      dword ptr [rbp + 0x30], eax
00000001405a6d5a mov      rax, qword ptr [rdi + 0x18]
00000001405a6d5e mov      rcx, qword ptr [rdi + 8]
00000001405a6d62 mov      rax, qword ptr [rax + 0x118]
00000001405a6d69 call     qword ptr [rip + 0xdd589]
00000001405a6d6f mov      rax, qword ptr [rsi + 0x28]
00000001405a6d73 mov      edx, r14d
00000001405a6d76 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6d7a mov      rcx, rdi
00000001405a6d7d call     qword ptr [rip + 0xdd575]
00000001405a6d83 mov      rax, qword ptr [rsi + 0x20]
00000001405a6d87 lea      ebx, [r15 - 0x60]
00000001405a6d8b mov      edx, ebx
00000001405a6d8d mov      rcx, rdi
00000001405a6d90 call     qword ptr [rip + 0xdd562]
00000001405a6d96 mov      r9d, 0x18600058
00000001405a6d9c lea      r8, [rip + 0xd839d]
00000001405a6da3 and      eax, 0xffffffd1
00000001405a6da6 mov      edx, r13d
00000001405a6da9 or       eax, 0xd1
00000001405a6dae mov      dword ptr [rbp + 0x30], eax
00000001405a6db1 mov      rax, qword ptr [rdi + 0x18]
00000001405a6db5 mov      rcx, qword ptr [rdi + 8]
00000001405a6db9 mov      rax, qword ptr [rax + 0x118]
00000001405a6dc0 call     qword ptr [rip + 0xdd532]
00000001405a6dc6 mov      eax, dword ptr [rbp + 0x30]
00000001405a6dc9 lea      r8, [rip + 0xd83a0]
00000001405a6dd0 and      eax, 0xffd1ffff
00000001405a6dd5 mov      r9d, 0x18600058
00000001405a6ddb or       eax, 0xd10000
00000001405a6de0 mov      edx, r13d
00000001405a6de3 mov      dword ptr [rbp + 0x30], eax
00000001405a6de6 mov      rax, qword ptr [rdi + 0x18]
00000001405a6dea mov      rcx, qword ptr [rdi + 8]
00000001405a6dee mov      rax, qword ptr [rax + 0x118]
00000001405a6df5 call     qword ptr [rip + 0xdd4fd]
00000001405a6dfb mov      rax, qword ptr [rsi + 0x28]
00000001405a6dff mov      edx, ebx
00000001405a6e01 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6e05 mov      rcx, rdi
00000001405a6e08 call     qword ptr [rip + 0xdd4ea]
00000001405a6e0e mov      rax, qword ptr [rsi + 0x20]
00000001405a6e12 mov      ebx, 0xb024
00000001405a6e17 mov      edx, ebx
00000001405a6e19 mov      rcx, rdi
00000001405a6e1c call     qword ptr [rip + 0xdd4d6]
00000001405a6e22 mov      r9d, 0x1860b024
00000001405a6e28 lea      r8, [rip + 0xd8551]
00000001405a6e2f or       eax, 0xe00000
00000001405a6e34 mov      edx, r13d
00000001405a6e37 mov      dword ptr [rbp + 0x30], eax
00000001405a6e3a mov      rax, qword ptr [rdi + 0x18]
00000001405a6e3e mov      rcx, qword ptr [rdi + 8]
00000001405a6e42 mov      rax, qword ptr [rax + 0x118]
00000001405a6e49 call     qword ptr [rip + 0xdd4a9]
00000001405a6e4f mov      rax, qword ptr [rsi + 0x28]
00000001405a6e53 mov      edx, ebx
00000001405a6e55 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6e59 mov      rcx, rdi
00000001405a6e5c call     qword ptr [rip + 0xdd496]
00000001405a6e62 mov      rax, qword ptr [rdi + 0x18]
00000001405a6e66 lea      r8, [rip + 0xd8543]
00000001405a6e6d mov      rcx, qword ptr [rdi + 8]
00000001405a6e71 mov      edx, r13d
00000001405a6e74 mov      rax, qword ptr [rax + 0x118]
00000001405a6e7b call     qword ptr [rip + 0xdd477]
00000001405a6e81 lea      rdx, [rip + 0x727950]
00000001405a6e88 jmp      0x1405aba72
00000001405a6e8d mov      rax, qword ptr [rdi + 0x18]
00000001405a6e91 lea      r8, [rip + 0xd8428]
00000001405a6e98 mov      rcx, qword ptr [rdi + 8]
00000001405a6e9c mov      edx, r13d
00000001405a6e9f mov      rax, qword ptr [rax + 0x118]
00000001405a6ea6 call     qword ptr [rip + 0xdd44c]
00000001405a6eac mov      rax, qword ptr [rsi + 0x20]
00000001405a6eb0 mov      r14d, 0xf4
00000001405a6eb6 mov      edx, r14d
00000001405a6eb9 mov      rcx, rdi
00000001405a6ebc call     qword ptr [rip + 0xdd436]
00000001405a6ec2 mov      r9d, 0x186000f4
00000001405a6ec8 lea      r8, [rip + 0xc1301]
00000001405a6ecf btr      eax, 0x11
00000001405a6ed3 mov      edx, r13d
00000001405a6ed6 bts      eax, 0x10
00000001405a6eda mov      dword ptr [rbp + 0x30], eax
00000001405a6edd mov      rax, qword ptr [rdi + 0x18]
00000001405a6ee1 mov      rcx, qword ptr [rdi + 8]
00000001405a6ee5 mov      rax, qword ptr [rax + 0x118]
00000001405a6eec call     qword ptr [rip + 0xdd406]
00000001405a6ef2 mov      rax, qword ptr [rsi + 0x28]
00000001405a6ef6 mov      edx, r14d
00000001405a6ef9 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6efd mov      rcx, rdi
00000001405a6f00 call     qword ptr [rip + 0xdd3f2]
00000001405a6f06 mov      rax, qword ptr [rsi + 0x20]
00000001405a6f0a mov      ebx, 0x58
00000001405a6f0f mov      edx, ebx
00000001405a6f11 mov      rcx, rdi
00000001405a6f14 call     qword ptr [rip + 0xdd3de]
00000001405a6f1a mov      r9d, 0x18600058
00000001405a6f20 lea      r8, [rip + 0xd8219]
00000001405a6f27 and      eax, 0xffffffd1
00000001405a6f2a mov      edx, r13d
00000001405a6f2d or       eax, 0xd1
00000001405a6f32 mov      dword ptr [rbp + 0x30], eax
00000001405a6f35 mov      rax, qword ptr [rdi + 0x18]
00000001405a6f39 mov      rcx, qword ptr [rdi + 8]
00000001405a6f3d mov      rax, qword ptr [rax + 0x118]
00000001405a6f44 call     qword ptr [rip + 0xdd3ae]
00000001405a6f4a mov      eax, dword ptr [rbp + 0x30]
00000001405a6f4d lea      r8, [rip + 0xd821c]
00000001405a6f54 and      eax, 0xffd1ffff
00000001405a6f59 mov      r9d, 0x18600058
00000001405a6f5f or       eax, 0xd10000
00000001405a6f64 mov      edx, r13d
00000001405a6f67 mov      dword ptr [rbp + 0x30], eax
00000001405a6f6a mov      rax, qword ptr [rdi + 0x18]
00000001405a6f6e mov      rcx, qword ptr [rdi + 8]
00000001405a6f72 mov      rax, qword ptr [rax + 0x118]
00000001405a6f79 call     qword ptr [rip + 0xdd379]
00000001405a6f7f mov      rax, qword ptr [rsi + 0x28]
00000001405a6f83 mov      edx, ebx
00000001405a6f85 mov      r8d, dword ptr [rbp + 0x30]
00000001405a6f89 mov      rcx, rdi
00000001405a6f8c call     qword ptr [rip + 0xdd366]
00000001405a6f92 mov      rax, qword ptr [rsi + 0x20]
00000001405a6f96 mov      ebx, 0xb024
00000001405a6f9b mov      edx, ebx
00000001405a6f9d mov      rcx, rdi
00000001405a6fa0 call     qword ptr [rip + 0xdd352]
00000001405a6fa6 mov      r9d, 0x1860b024
00000001405a6fac lea      r8, [rip + 0xd833d]
00000001405a6fb3 and      eax, 0xff63ffff
00000001405a6fb8 mov      edx, r13d
00000001405a6fbb or       eax, 0x630000
00000001405a6fc0 mov      dword ptr [rbp + 0x30], eax
00000001405a6fc3 mov      rax, qword ptr [rdi + 0x18]
00000001405a6fc7 mov      rcx, qword ptr [rdi + 8]
00000001405a6fcb mov      rax, qword ptr [rax + 0x118]
00000001405a6fd2 call     qword ptr [rip + 0xdd320]
00000001405a6fd8 mov      rax, qword ptr [rsi + 0x28]
00000001405a6fdc mov      edx, ebx
00000001405a6fde mov      r8d, dword ptr [rbp + 0x30]
00000001405a6fe2 mov      rcx, rdi
00000001405a6fe5 call     qword ptr [rip + 0xdd30d]
00000001405a6feb mov      rax, qword ptr [rdi + 0x18]
00000001405a6fef lea      r8, [rip + 0xd832a]
00000001405a6ff6 mov      edx, r13d
00000001405a6ff9 mov      rax, qword ptr [rax + 0x118]
00000001405a7000 mov      rcx, qword ptr [rdi + 8]
00000001405a7004 call     qword ptr [rip + 0xdd2ee]
00000001405a700a lea      rdx, [rip + 0x7277b7]
00000001405a7011 jmp      0x1405aba72
00000001405a7016 mov      rax, qword ptr [rdi + 0x18]
00000001405a701a lea      r8, [rip + 0xd820f]
00000001405a7021 mov      rcx, qword ptr [rdi + 8]
00000001405a7025 mov      edx, r13d
00000001405a7028 mov      rax, qword ptr [rax + 0x118]
00000001405a702f call     qword ptr [rip + 0xdd2c3]
00000001405a7035 mov      rax, qword ptr [rsi + 0x20]
00000001405a7039 mov      r14d, 0xf4
00000001405a703f mov      edx, r14d
00000001405a7042 mov      rcx, rdi
00000001405a7045 call     qword ptr [rip + 0xdd2ad]
00000001405a704b mov      r9d, 0x186000f4
00000001405a7051 lea      r8, [rip + 0xc1178]
00000001405a7058 btr      eax, 0x11
00000001405a705c mov      edx, r13d
00000001405a705f bts      eax, 0x10
00000001405a7063 mov      dword ptr [rbp + 0x30], eax
00000001405a7066 mov      rax, qword ptr [rdi + 0x18]
00000001405a706a mov      rcx, qword ptr [rdi + 8]
00000001405a706e mov      rax, qword ptr [rax + 0x118]
00000001405a7075 call     qword ptr [rip + 0xdd27d]
00000001405a707b mov      rax, qword ptr [rsi + 0x28]
00000001405a707f mov      edx, r14d
00000001405a7082 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7086 mov      rcx, rdi
00000001405a7089 call     qword ptr [rip + 0xdd269]
00000001405a708f mov      rax, qword ptr [rsi + 0x20]
00000001405a7093 mov      ebx, 0x58
00000001405a7098 mov      edx, ebx
00000001405a709a mov      rcx, rdi
00000001405a709d call     qword ptr [rip + 0xdd255]
00000001405a70a3 mov      r9d, 0x18600058
00000001405a70a9 lea      r8, [rip + 0xd8090]
00000001405a70b0 and      eax, 0xffffffd1
00000001405a70b3 mov      edx, r13d
00000001405a70b6 or       eax, 0xd1
00000001405a70bb mov      dword ptr [rbp + 0x30], eax
00000001405a70be mov      rax, qword ptr [rdi + 0x18]
00000001405a70c2 mov      rcx, qword ptr [rdi + 8]
00000001405a70c6 mov      rax, qword ptr [rax + 0x118]
00000001405a70cd call     qword ptr [rip + 0xdd225]
00000001405a70d3 mov      eax, dword ptr [rbp + 0x30]
00000001405a70d6 lea      r8, [rip + 0xd8093]
00000001405a70dd and      eax, 0xffd1ffff
00000001405a70e2 mov      r9d, 0x18600058
00000001405a70e8 or       eax, 0xd10000
00000001405a70ed mov      edx, r13d
00000001405a70f0 mov      dword ptr [rbp + 0x30], eax
00000001405a70f3 mov      rax, qword ptr [rdi + 0x18]
00000001405a70f7 mov      rcx, qword ptr [rdi + 8]
00000001405a70fb mov      rax, qword ptr [rax + 0x118]
00000001405a7102 call     qword ptr [rip + 0xdd1f0]
00000001405a7108 mov      rax, qword ptr [rsi + 0x28]
00000001405a710c mov      edx, ebx
00000001405a710e mov      r8d, dword ptr [rbp + 0x30]
00000001405a7112 mov      rcx, rdi
00000001405a7115 call     qword ptr [rip + 0xdd1dd]
00000001405a711b mov      rax, qword ptr [rsi + 0x20]
00000001405a711f mov      ebx, 0xb024
00000001405a7124 mov      edx, ebx
00000001405a7126 mov      rcx, rdi
00000001405a7129 call     qword ptr [rip + 0xdd1c9]
00000001405a712f mov      r9d, 0x1860b024
00000001405a7135 lea      r8, [rip + 0xd8124]
00000001405a713c and      eax, 0xff22ffff
00000001405a7141 mov      edx, r13d
00000001405a7144 or       eax, 0x220000
00000001405a7149 mov      dword ptr [rbp + 0x30], eax
00000001405a714c mov      rax, qword ptr [rdi + 0x18]
00000001405a7150 mov      rcx, qword ptr [rdi + 8]
00000001405a7154 mov      rax, qword ptr [rax + 0x118]
00000001405a715b call     qword ptr [rip + 0xdd197]
00000001405a7161 mov      rax, qword ptr [rsi + 0x28]
00000001405a7165 mov      edx, ebx
00000001405a7167 mov      r8d, dword ptr [rbp + 0x30]
00000001405a716b mov      rcx, rdi
00000001405a716e call     qword ptr [rip + 0xdd184]
00000001405a7174 mov      rax, qword ptr [rdi + 0x18]
00000001405a7178 lea      r8, [rip + 0xd8111]
00000001405a717f mov      edx, r13d
00000001405a7182 mov      rax, qword ptr [rax + 0x118]
00000001405a7189 mov      rcx, qword ptr [rdi + 8]
00000001405a718d call     qword ptr [rip + 0xdd165]
00000001405a7193 lea      rdx, [rip + 0x72761e]
00000001405a719a jmp      0x1405aba72
00000001405a719f mov      rax, qword ptr [rdi + 0x18]
00000001405a71a3 lea      r8, [rip + 0xc56d6]
00000001405a71aa mov      rcx, qword ptr [rdi + 8]
00000001405a71ae mov      edx, r13d
00000001405a71b1 mov      rax, qword ptr [rax + 0x118]
00000001405a71b8 call     qword ptr [rip + 0xdd13a]
00000001405a71be mov      rax, qword ptr [rsi + 0x20]
00000001405a71c2 mov      r14d, 0xf4
00000001405a71c8 mov      edx, r14d
00000001405a71cb mov      rcx, rdi
00000001405a71ce call     qword ptr [rip + 0xdd124]
00000001405a71d4 mov      r9d, 0x186000f4
00000001405a71da lea      r8, [rip + 0xc0fef]
00000001405a71e1 btr      eax, 0x11
00000001405a71e5 mov      edx, r13d
00000001405a71e8 bts      eax, 0x10
00000001405a71ec mov      dword ptr [rbp + 0x30], eax
00000001405a71ef mov      rax, qword ptr [rdi + 0x18]
00000001405a71f3 mov      rcx, qword ptr [rdi + 8]
00000001405a71f7 mov      rax, qword ptr [rax + 0x118]
00000001405a71fe call     qword ptr [rip + 0xdd0f4]
00000001405a7204 mov      rax, qword ptr [rsi + 0x28]
00000001405a7208 mov      edx, r14d
00000001405a720b mov      r8d, dword ptr [rbp + 0x30]
00000001405a720f mov      rcx, rdi
00000001405a7212 call     qword ptr [rip + 0xdd0e0]
00000001405a7218 mov      rax, qword ptr [rsi + 0x20]
00000001405a721c mov      ebx, 0x58
00000001405a7221 mov      edx, ebx
00000001405a7223 mov      rcx, rdi
00000001405a7226 call     qword ptr [rip + 0xdd0cc]
00000001405a722c mov      r9d, 0x18600058
00000001405a7232 lea      r8, [rip + 0xd7f07]
00000001405a7239 and      eax, 0xffffffd1
00000001405a723c mov      edx, r13d
00000001405a723f or       eax, 0xd1
00000001405a7244 mov      dword ptr [rbp + 0x30], eax
00000001405a7247 mov      rax, qword ptr [rdi + 0x18]
00000001405a724b mov      rcx, qword ptr [rdi + 8]
00000001405a724f mov      rax, qword ptr [rax + 0x118]
00000001405a7256 call     qword ptr [rip + 0xdd09c]
00000001405a725c mov      eax, dword ptr [rbp + 0x30]
00000001405a725f lea      r8, [rip + 0xd7f0a]
00000001405a7266 and      eax, 0xffd1ffff
00000001405a726b mov      r9d, 0x18600058
00000001405a7271 or       eax, 0xd10000
00000001405a7276 mov      edx, r13d
00000001405a7279 mov      dword ptr [rbp + 0x30], eax
00000001405a727c mov      rax, qword ptr [rdi + 0x18]
00000001405a7280 mov      rcx, qword ptr [rdi + 8]
00000001405a7284 mov      rax, qword ptr [rax + 0x118]
00000001405a728b call     qword ptr [rip + 0xdd067]
00000001405a7291 mov      rax, qword ptr [rsi + 0x28]
00000001405a7295 mov      edx, ebx
00000001405a7297 mov      r8d, dword ptr [rbp + 0x30]
00000001405a729b mov      rcx, rdi
00000001405a729e call     qword ptr [rip + 0xdd054]
00000001405a72a4 mov      rax, qword ptr [rsi + 0x20]
00000001405a72a8 mov      ebx, 0xb024
00000001405a72ad mov      edx, ebx
00000001405a72af mov      rcx, rdi
00000001405a72b2 call     qword ptr [rip + 0xdd040]
00000001405a72b8 mov      r9d, 0x1860b024
00000001405a72be lea      r8, [rip + 0xd7f3b]
00000001405a72c5 btr      eax, 0x16
00000001405a72c9 mov      edx, r13d
00000001405a72cc or       eax, 0xa00000
00000001405a72d1 mov      dword ptr [rbp + 0x30], eax
00000001405a72d4 mov      rax, qword ptr [rdi + 0x18]
00000001405a72d8 mov      rcx, qword ptr [rdi + 8]
00000001405a72dc mov      rax, qword ptr [rax + 0x118]
00000001405a72e3 call     qword ptr [rip + 0xdd00f]
00000001405a72e9 mov      rax, qword ptr [rsi + 0x28]
00000001405a72ed mov      edx, ebx
00000001405a72ef mov      r8d, dword ptr [rbp + 0x30]
00000001405a72f3 mov      rcx, rdi
00000001405a72f6 call     qword ptr [rip + 0xdcffc]
00000001405a72fc mov      rax, qword ptr [rdi + 0x18]
00000001405a7300 lea      r8, [rip + 0xc55d9]
00000001405a7307 mov      edx, r13d
00000001405a730a mov      rax, qword ptr [rax + 0x118]
00000001405a7311 mov      rcx, qword ptr [rdi + 8]
00000001405a7315 call     qword ptr [rip + 0xdcfdd]
00000001405a731b lea      rdx, [rip + 0x727486]
00000001405a7322 jmp      0x1405aba72
00000001405a7327 mov      rax, qword ptr [rdi + 0x18]
00000001405a732b lea      r8, [rip + 0xc54be]
00000001405a7332 mov      rcx, qword ptr [rdi + 8]
00000001405a7336 mov      edx, r13d
00000001405a7339 mov      rax, qword ptr [rax + 0x118]
00000001405a7340 call     qword ptr [rip + 0xdcfb2]
00000001405a7346 mov      rax, qword ptr [rsi + 0x20]
00000001405a734a mov      r14d, 0xf4
00000001405a7350 mov      edx, r14d
00000001405a7353 mov      rcx, rdi
00000001405a7356 call     qword ptr [rip + 0xdcf9c]
00000001405a735c mov      r9d, 0x186000f4
00000001405a7362 lea      r8, [rip + 0xc0e67]
00000001405a7369 btr      eax, 0x11
00000001405a736d mov      edx, r13d
00000001405a7370 bts      eax, 0x10
00000001405a7374 mov      dword ptr [rbp + 0x30], eax
00000001405a7377 mov      rax, qword ptr [rdi + 0x18]
00000001405a737b mov      rcx, qword ptr [rdi + 8]
00000001405a737f mov      rax, qword ptr [rax + 0x118]
00000001405a7386 call     qword ptr [rip + 0xdcf6c]
00000001405a738c mov      rax, qword ptr [rsi + 0x28]
00000001405a7390 mov      edx, r14d
00000001405a7393 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7397 mov      rcx, rdi
00000001405a739a call     qword ptr [rip + 0xdcf58]
00000001405a73a0 mov      rax, qword ptr [rsi + 0x20]
00000001405a73a4 mov      ebx, 0x58
00000001405a73a9 mov      edx, ebx
00000001405a73ab mov      rcx, rdi
00000001405a73ae call     qword ptr [rip + 0xdcf44]
00000001405a73b4 mov      r9d, 0x18600058
00000001405a73ba lea      r8, [rip + 0xd7d7f]
00000001405a73c1 and      eax, 0xffffffd1
00000001405a73c4 mov      edx, r13d
00000001405a73c7 or       eax, 0xd1
00000001405a73cc mov      dword ptr [rbp + 0x30], eax
00000001405a73cf mov      rax, qword ptr [rdi + 0x18]
00000001405a73d3 mov      rcx, qword ptr [rdi + 8]
00000001405a73d7 mov      rax, qword ptr [rax + 0x118]
00000001405a73de call     qword ptr [rip + 0xdcf14]
00000001405a73e4 mov      eax, dword ptr [rbp + 0x30]
00000001405a73e7 lea      r8, [rip + 0xd7d82]
00000001405a73ee and      eax, 0xffd1ffff
00000001405a73f3 mov      r9d, 0x18600058
00000001405a73f9 or       eax, 0xd10000
00000001405a73fe mov      edx, r13d
00000001405a7401 mov      dword ptr [rbp + 0x30], eax
00000001405a7404 mov      rax, qword ptr [rdi + 0x18]
00000001405a7408 mov      rcx, qword ptr [rdi + 8]
00000001405a740c mov      rax, qword ptr [rax + 0x118]
00000001405a7413 call     qword ptr [rip + 0xdcedf]
00000001405a7419 mov      rax, qword ptr [rsi + 0x28]
00000001405a741d mov      edx, ebx
00000001405a741f mov      r8d, dword ptr [rbp + 0x30]
00000001405a7423 mov      rcx, rdi
00000001405a7426 call     qword ptr [rip + 0xdcecc]
00000001405a742c mov      rax, qword ptr [rsi + 0x20]
00000001405a7430 mov      ebx, 0xb024
00000001405a7435 mov      edx, ebx
00000001405a7437 mov      rcx, rdi
00000001405a743a call     qword ptr [rip + 0xdceb8]
00000001405a7440 mov      r9d, 0x1860b024
00000001405a7446 lea      r8, [rip + 0xd7d83]
00000001405a744d btr      eax, 0x17
00000001405a7451 mov      edx, r13d
00000001405a7454 or       eax, 0x600000
00000001405a7459 mov      dword ptr [rbp + 0x30], eax
00000001405a745c mov      rax, qword ptr [rdi + 0x18]
00000001405a7460 mov      rcx, qword ptr [rdi + 8]
00000001405a7464 mov      rax, qword ptr [rax + 0x118]
00000001405a746b call     qword ptr [rip + 0xdce87]
00000001405a7471 mov      rax, qword ptr [rsi + 0x28]
00000001405a7475 mov      edx, ebx
00000001405a7477 mov      r8d, dword ptr [rbp + 0x30]
00000001405a747b mov      rcx, rdi
00000001405a747e call     qword ptr [rip + 0xdce74]
00000001405a7484 mov      rax, qword ptr [rdi + 0x18]
00000001405a7488 lea      r8, [rip + 0xc53c1]
00000001405a748f mov      edx, r13d
00000001405a7492 mov      rax, qword ptr [rax + 0x118]
00000001405a7499 mov      rcx, qword ptr [rdi + 8]
00000001405a749d call     qword ptr [rip + 0xdce55]
00000001405a74a3 lea      rdx, [rip + 0x7272ee]
00000001405a74aa jmp      0x1405aba72
00000001405a74af mov      rax, qword ptr [rdi + 0x18]
00000001405a74b3 lea      r8, [rip + 0xc5246]
00000001405a74ba mov      rcx, qword ptr [rdi + 8]
00000001405a74be mov      edx, r13d
00000001405a74c1 mov      rax, qword ptr [rax + 0x118]
00000001405a74c8 call     qword ptr [rip + 0xdce2a]
00000001405a74ce mov      rax, qword ptr [rsi + 0x20]
00000001405a74d2 mov      r14d, 0xf4
00000001405a74d8 mov      edx, r14d
00000001405a74db mov      rcx, rdi
00000001405a74de call     qword ptr [rip + 0xdce14]
00000001405a74e4 mov      r9d, 0x186000f4
00000001405a74ea lea      r8, [rip + 0xc0cdf]
00000001405a74f1 btr      eax, 0x11
00000001405a74f5 mov      edx, r13d
00000001405a74f8 bts      eax, 0x10
00000001405a74fc mov      dword ptr [rbp + 0x30], eax
00000001405a74ff mov      rax, qword ptr [rdi + 0x18]
00000001405a7503 mov      rcx, qword ptr [rdi + 8]
00000001405a7507 mov      rax, qword ptr [rax + 0x118]
00000001405a750e call     qword ptr [rip + 0xdcde4]
00000001405a7514 mov      rax, qword ptr [rsi + 0x28]
00000001405a7518 mov      edx, r14d
00000001405a751b mov      r8d, dword ptr [rbp + 0x30]
00000001405a751f mov      rcx, rdi
00000001405a7522 call     qword ptr [rip + 0xdcdd0]
00000001405a7528 mov      rax, qword ptr [rsi + 0x20]
00000001405a752c mov      ebx, 0x58
00000001405a7531 mov      edx, ebx
00000001405a7533 mov      rcx, rdi
00000001405a7536 call     qword ptr [rip + 0xdcdbc]
00000001405a753c mov      r9d, 0x18600058
00000001405a7542 lea      r8, [rip + 0xd7bf7]
00000001405a7549 and      eax, 0xffffffd1
00000001405a754c mov      edx, r13d
00000001405a754f or       eax, 0xd1
00000001405a7554 mov      dword ptr [rbp + 0x30], eax
00000001405a7557 mov      rax, qword ptr [rdi + 0x18]
00000001405a755b mov      rcx, qword ptr [rdi + 8]
00000001405a755f mov      rax, qword ptr [rax + 0x118]
00000001405a7566 call     qword ptr [rip + 0xdcd8c]
00000001405a756c mov      eax, dword ptr [rbp + 0x30]
00000001405a756f lea      r8, [rip + 0xd7bfa]
00000001405a7576 and      eax, 0xffd1ffff
00000001405a757b mov      r9d, 0x18600058
00000001405a7581 or       eax, 0xd10000
00000001405a7586 mov      edx, r13d
00000001405a7589 mov      dword ptr [rbp + 0x30], eax
00000001405a758c mov      rax, qword ptr [rdi + 0x18]
00000001405a7590 mov      rcx, qword ptr [rdi + 8]
00000001405a7594 mov      rax, qword ptr [rax + 0x118]
00000001405a759b call     qword ptr [rip + 0xdcd57]
00000001405a75a1 mov      rax, qword ptr [rsi + 0x28]
00000001405a75a5 mov      edx, ebx
00000001405a75a7 mov      r8d, dword ptr [rbp + 0x30]
00000001405a75ab mov      rcx, rdi
00000001405a75ae call     qword ptr [rip + 0xdcd44]
00000001405a75b4 mov      rax, qword ptr [rsi + 0x20]
00000001405a75b8 mov      ebx, 0xb024
00000001405a75bd mov      edx, ebx
00000001405a75bf mov      rcx, rdi
00000001405a75c2 call     qword ptr [rip + 0xdcd30]
00000001405a75c8 mov      r9d, 0x1860b024
00000001405a75ce lea      r8, [rip + 0xd7bcb]
00000001405a75d5 and      eax, 0xff3fffff
00000001405a75da mov      edx, r13d
00000001405a75dd bts      eax, 0x15
00000001405a75e1 mov      dword ptr [rbp + 0x30], eax
00000001405a75e4 mov      rax, qword ptr [rdi + 0x18]
00000001405a75e8 mov      rcx, qword ptr [rdi + 8]
00000001405a75ec mov      rax, qword ptr [rax + 0x118]
00000001405a75f3 call     qword ptr [rip + 0xdccff]
00000001405a75f9 mov      rax, qword ptr [rsi + 0x28]
00000001405a75fd mov      edx, ebx
00000001405a75ff mov      r8d, dword ptr [rbp + 0x30]
00000001405a7603 mov      rcx, rdi
00000001405a7606 call     qword ptr [rip + 0xdccec]
00000001405a760c mov      rax, qword ptr [rdi + 0x18]
00000001405a7610 lea      r8, [rip + 0xc51a9]
00000001405a7617 mov      edx, r13d
00000001405a761a mov      rax, qword ptr [rax + 0x118]
00000001405a7621 mov      rcx, qword ptr [rdi + 8]
00000001405a7625 call     qword ptr [rip + 0xdcccd]
00000001405a762b lea      rdx, [rip + 0x727156]
00000001405a7632 jmp      0x1405aba72
00000001405a7637 mov      rax, qword ptr [rdi + 0x18]
00000001405a763b lea      r8, [rip + 0xd7d9e]
00000001405a7642 mov      rcx, qword ptr [rdi + 8]
00000001405a7646 mov      edx, r13d
00000001405a7649 mov      rax, qword ptr [rax + 0x118]
00000001405a7650 call     qword ptr [rip + 0xdcca2]
00000001405a7656 mov      rax, qword ptr [rsi + 0x20]
00000001405a765a mov      r14d, 0xf4
00000001405a7660 mov      edx, r14d
00000001405a7663 mov      rcx, rdi
00000001405a7666 call     qword ptr [rip + 0xdcc8c]
00000001405a766c mov      r9d, 0x186000f4
00000001405a7672 lea      r8, [rip + 0xc0b57]
00000001405a7679 btr      eax, 0x11
00000001405a767d mov      edx, r13d
00000001405a7680 bts      eax, 0x10
00000001405a7684 mov      dword ptr [rbp + 0x30], eax
00000001405a7687 mov      rax, qword ptr [rdi + 0x18]
00000001405a768b mov      rcx, qword ptr [rdi + 8]
00000001405a768f mov      rax, qword ptr [rax + 0x118]
00000001405a7696 call     qword ptr [rip + 0xdcc5c]
00000001405a769c mov      rax, qword ptr [rsi + 0x28]
00000001405a76a0 mov      edx, r14d
00000001405a76a3 mov      r8d, dword ptr [rbp + 0x30]
00000001405a76a7 mov      rcx, rdi
00000001405a76aa call     qword ptr [rip + 0xdcc48]
00000001405a76b0 mov      rax, qword ptr [rsi + 0x20]
00000001405a76b4 mov      ebx, 0x58
00000001405a76b9 mov      edx, ebx
00000001405a76bb mov      rcx, rdi
00000001405a76be call     qword ptr [rip + 0xdcc34]
00000001405a76c4 mov      r9d, 0x18600058
00000001405a76ca lea      r8, [rip + 0xd7a6f]
00000001405a76d1 and      eax, 0xffffffd1
00000001405a76d4 mov      edx, r13d
00000001405a76d7 or       eax, 0xd1
00000001405a76dc mov      dword ptr [rbp + 0x30], eax
00000001405a76df mov      rax, qword ptr [rdi + 0x18]
00000001405a76e3 mov      rcx, qword ptr [rdi + 8]
00000001405a76e7 mov      rax, qword ptr [rax + 0x118]
00000001405a76ee call     qword ptr [rip + 0xdcc04]
00000001405a76f4 mov      eax, dword ptr [rbp + 0x30]
00000001405a76f7 lea      r8, [rip + 0xd7a72]
00000001405a76fe and      eax, 0xffd1ffff
00000001405a7703 mov      r9d, 0x18600058
00000001405a7709 or       eax, 0xd10000
00000001405a770e mov      edx, r13d
00000001405a7711 mov      dword ptr [rbp + 0x30], eax
00000001405a7714 mov      rax, qword ptr [rdi + 0x18]
00000001405a7718 mov      rcx, qword ptr [rdi + 8]
00000001405a771c mov      rax, qword ptr [rax + 0x118]
00000001405a7723 call     qword ptr [rip + 0xdcbcf]
00000001405a7729 mov      rax, qword ptr [rsi + 0x28]
00000001405a772d mov      edx, ebx
00000001405a772f mov      r8d, dword ptr [rbp + 0x30]
00000001405a7733 mov      rcx, rdi
00000001405a7736 call     qword ptr [rip + 0xdcbbc]
00000001405a773c mov      rax, qword ptr [rsi + 0x20]
00000001405a7740 mov      ebx, 0xb024
00000001405a7745 mov      edx, ebx
00000001405a7747 mov      rcx, rdi
00000001405a774a call     qword ptr [rip + 0xdcba8]
00000001405a7750 mov      r9d, 0x1860b024
00000001405a7756 lea      r8, [rip + 0xd7a43]
00000001405a775d and      eax, 0xff3fffff
00000001405a7762 mov      edx, r13d
00000001405a7765 bts      eax, 0x15
00000001405a7769 mov      dword ptr [rbp + 0x30], eax
00000001405a776c mov      rax, qword ptr [rdi + 0x18]
00000001405a7770 mov      rcx, qword ptr [rdi + 8]
00000001405a7774 mov      rax, qword ptr [rax + 0x118]
00000001405a777b call     qword ptr [rip + 0xdcb77]
00000001405a7781 mov      rax, qword ptr [rsi + 0x28]
00000001405a7785 mov      edx, ebx
00000001405a7787 mov      r8d, dword ptr [rbp + 0x30]
00000001405a778b mov      rcx, rdi
00000001405a778e call     qword ptr [rip + 0xdcb64]
00000001405a7794 mov      rax, qword ptr [rdi + 0x18]
00000001405a7798 lea      r8, [rip + 0xd7c71]
00000001405a779f mov      edx, r13d
00000001405a77a2 mov      rax, qword ptr [rax + 0x118]
00000001405a77a9 mov      rcx, qword ptr [rdi + 8]
00000001405a77ad call     qword ptr [rip + 0xdcb45]
00000001405a77b3 lea      rdx, [rip + 0x72702e]
00000001405a77ba jmp      0x1405aba72
00000001405a77bf sub      ebx, 0xa6
00000001405a77c5 je       0x1405a7e0d
00000001405a77cb sub      ebx, r13d
00000001405a77ce je       0x1405a7c85
00000001405a77d4 sub      ebx, r13d
00000001405a77d7 je       0x1405a7afc
00000001405a77dd sub      ebx, r13d
00000001405a77e0 je       0x1405a7973
00000001405a77e6 cmp      ebx, r13d
00000001405a77e9 jne      0x1405ab45d
00000001405a77ef mov      rax, qword ptr [rdi + 0x18]
00000001405a77f3 lea      r8, [rip + 0xd7dc6]
00000001405a77fa mov      rcx, qword ptr [rdi + 8]
00000001405a77fe mov      edx, r13d
00000001405a7801 mov      rax, qword ptr [rax + 0x118]
00000001405a7808 call     qword ptr [rip + 0xdcaea]
00000001405a780e mov      rax, qword ptr [rsi + 0x20]
00000001405a7812 mov      r14d, 0xf4
00000001405a7818 mov      edx, r14d
00000001405a781b mov      rcx, rdi
00000001405a781e call     qword ptr [rip + 0xdcad4]
00000001405a7824 mov      r9d, 0x186000f4
00000001405a782a lea      r8, [rip + 0xc099f]
00000001405a7831 btr      eax, 0x11
00000001405a7835 mov      edx, r13d
00000001405a7838 bts      eax, 0x10
00000001405a783c mov      dword ptr [rbp + 0x30], eax
00000001405a783f mov      rax, qword ptr [rdi + 0x18]
00000001405a7843 mov      rcx, qword ptr [rdi + 8]
00000001405a7847 mov      rax, qword ptr [rax + 0x118]
00000001405a784e call     qword ptr [rip + 0xdcaa4]
00000001405a7854 mov      rax, qword ptr [rsi + 0x28]
00000001405a7858 mov      edx, r14d
00000001405a785b mov      r8d, dword ptr [rbp + 0x30]
00000001405a785f mov      rcx, rdi
00000001405a7862 call     qword ptr [rip + 0xdca90]
00000001405a7868 mov      rax, qword ptr [rsi + 0x20]
00000001405a786c mov      ebx, 0x58
00000001405a7871 mov      edx, ebx
00000001405a7873 mov      rcx, rdi
00000001405a7876 call     qword ptr [rip + 0xdca7c]
00000001405a787c mov      r9d, 0x18600058
00000001405a7882 lea      r8, [rip + 0xd78b7]
00000001405a7889 and      eax, 0xffffffd1
00000001405a788c mov      edx, r13d
00000001405a788f or       eax, 0xd1
00000001405a7894 mov      dword ptr [rbp + 0x30], eax
00000001405a7897 mov      rax, qword ptr [rdi + 0x18]
00000001405a789b mov      rcx, qword ptr [rdi + 8]
00000001405a789f mov      rax, qword ptr [rax + 0x118]
00000001405a78a6 call     qword ptr [rip + 0xdca4c]
00000001405a78ac mov      eax, dword ptr [rbp + 0x30]
00000001405a78af lea      r8, [rip + 0xd78ba]
00000001405a78b6 and      eax, 0xffd1ffff
00000001405a78bb mov      r9d, 0x18600058
00000001405a78c1 or       eax, 0xd10000
00000001405a78c6 mov      edx, r13d
00000001405a78c9 mov      dword ptr [rbp + 0x30], eax
00000001405a78cc mov      rax, qword ptr [rdi + 0x18]
00000001405a78d0 mov      rcx, qword ptr [rdi + 8]
00000001405a78d4 mov      rax, qword ptr [rax + 0x118]
00000001405a78db call     qword ptr [rip + 0xdca17]
00000001405a78e1 mov      rax, qword ptr [rsi + 0x28]
00000001405a78e5 mov      edx, ebx
00000001405a78e7 mov      r8d, dword ptr [rbp + 0x30]
00000001405a78eb mov      rcx, rdi
00000001405a78ee call     qword ptr [rip + 0xdca04]
00000001405a78f4 mov      rax, qword ptr [rsi + 0x20]
00000001405a78f8 mov      ebx, 0xb024
00000001405a78fd mov      edx, ebx
00000001405a78ff mov      rcx, rdi
00000001405a7902 call     qword ptr [rip + 0xdc9f0]
00000001405a7908 mov      r9d, 0x1860b024
00000001405a790e lea      r8, [rip + 0xd7a6b]
00000001405a7915 or       eax, 0xe00000
00000001405a791a mov      edx, r13d
00000001405a791d mov      dword ptr [rbp + 0x30], eax
00000001405a7920 mov      rax, qword ptr [rdi + 0x18]
00000001405a7924 mov      rcx, qword ptr [rdi + 8]
00000001405a7928 mov      rax, qword ptr [rax + 0x118]
00000001405a792f call     qword ptr [rip + 0xdc9c3]
00000001405a7935 mov      rax, qword ptr [rsi + 0x28]
00000001405a7939 mov      edx, ebx
00000001405a793b mov      r8d, dword ptr [rbp + 0x30]
00000001405a793f mov      rcx, rdi
00000001405a7942 call     qword ptr [rip + 0xdc9b0]
00000001405a7948 mov      rax, qword ptr [rdi + 0x18]
00000001405a794c lea      r8, [rip + 0xd7c9d]
00000001405a7953 mov      rcx, qword ptr [rdi + 8]
00000001405a7957 mov      edx, r13d
00000001405a795a mov      rax, qword ptr [rax + 0x118]
00000001405a7961 call     qword ptr [rip + 0xdc991]
00000001405a7967 lea      rdx, [rip + 0x726eca]
00000001405a796e jmp      0x1405aba72
00000001405a7973 mov      rax, qword ptr [rdi + 0x18]
00000001405a7977 lea      r8, [rip + 0xd7be2]
00000001405a797e mov      rcx, qword ptr [rdi + 8]
00000001405a7982 mov      edx, r13d
00000001405a7985 mov      rax, qword ptr [rax + 0x118]
00000001405a798c call     qword ptr [rip + 0xdc966]
00000001405a7992 mov      rax, qword ptr [rsi + 0x20]
00000001405a7996 mov      r14d, 0xf4
00000001405a799c mov      edx, r14d
00000001405a799f mov      rcx, rdi
00000001405a79a2 call     qword ptr [rip + 0xdc950]
00000001405a79a8 mov      r9d, 0x186000f4
00000001405a79ae lea      r8, [rip + 0xc081b]
00000001405a79b5 btr      eax, 0x11
00000001405a79b9 mov      edx, r13d
00000001405a79bc bts      eax, 0x10
00000001405a79c0 mov      dword ptr [rbp + 0x30], eax
00000001405a79c3 mov      rax, qword ptr [rdi + 0x18]
00000001405a79c7 mov      rcx, qword ptr [rdi + 8]
00000001405a79cb mov      rax, qword ptr [rax + 0x118]
00000001405a79d2 call     qword ptr [rip + 0xdc920]
00000001405a79d8 mov      rax, qword ptr [rsi + 0x28]
00000001405a79dc mov      edx, r14d
00000001405a79df mov      r8d, dword ptr [rbp + 0x30]
00000001405a79e3 mov      rcx, rdi
00000001405a79e6 call     qword ptr [rip + 0xdc90c]
00000001405a79ec mov      rax, qword ptr [rsi + 0x20]
00000001405a79f0 mov      ebx, 0x58
00000001405a79f5 mov      edx, ebx
00000001405a79f7 mov      rcx, rdi
00000001405a79fa call     qword ptr [rip + 0xdc8f8]
00000001405a7a00 mov      r9d, 0x18600058
00000001405a7a06 lea      r8, [rip + 0xd7733]
00000001405a7a0d and      eax, 0xffffffd1
00000001405a7a10 mov      edx, r13d
00000001405a7a13 or       eax, 0xd1
00000001405a7a18 mov      dword ptr [rbp + 0x30], eax
00000001405a7a1b mov      rax, qword ptr [rdi + 0x18]
00000001405a7a1f mov      rcx, qword ptr [rdi + 8]
00000001405a7a23 mov      rax, qword ptr [rax + 0x118]
00000001405a7a2a call     qword ptr [rip + 0xdc8c8]
00000001405a7a30 mov      eax, dword ptr [rbp + 0x30]
00000001405a7a33 lea      r8, [rip + 0xd7736]
00000001405a7a3a and      eax, 0xffd1ffff
00000001405a7a3f mov      r9d, 0x18600058
00000001405a7a45 or       eax, 0xd10000
00000001405a7a4a mov      edx, r13d
00000001405a7a4d mov      dword ptr [rbp + 0x30], eax
00000001405a7a50 mov      rax, qword ptr [rdi + 0x18]
00000001405a7a54 mov      rcx, qword ptr [rdi + 8]
00000001405a7a58 mov      rax, qword ptr [rax + 0x118]
00000001405a7a5f call     qword ptr [rip + 0xdc893]
00000001405a7a65 mov      rax, qword ptr [rsi + 0x28]
00000001405a7a69 mov      edx, ebx
00000001405a7a6b mov      r8d, dword ptr [rbp + 0x30]
00000001405a7a6f mov      rcx, rdi
00000001405a7a72 call     qword ptr [rip + 0xdc880]
00000001405a7a78 mov      rax, qword ptr [rsi + 0x20]
00000001405a7a7c mov      ebx, 0xb024
00000001405a7a81 mov      edx, ebx
00000001405a7a83 mov      rcx, rdi
00000001405a7a86 call     qword ptr [rip + 0xdc86c]
00000001405a7a8c mov      r9d, 0x1860b024
00000001405a7a92 lea      r8, [rip + 0xd7857]
00000001405a7a99 and      eax, 0xff63ffff
00000001405a7a9e mov      edx, r13d
00000001405a7aa1 or       eax, 0x630000
00000001405a7aa6 mov      dword ptr [rbp + 0x30], eax
00000001405a7aa9 mov      rax, qword ptr [rdi + 0x18]
00000001405a7aad mov      rcx, qword ptr [rdi + 8]
00000001405a7ab1 mov      rax, qword ptr [rax + 0x118]
00000001405a7ab8 call     qword ptr [rip + 0xdc83a]
00000001405a7abe mov      rax, qword ptr [rsi + 0x28]
00000001405a7ac2 mov      edx, ebx
00000001405a7ac4 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7ac8 mov      rcx, rdi
00000001405a7acb call     qword ptr [rip + 0xdc827]
00000001405a7ad1 mov      rax, qword ptr [rdi + 0x18]
00000001405a7ad5 lea      r8, [rip + 0xd7ab4]
00000001405a7adc mov      edx, r13d
00000001405a7adf mov      rax, qword ptr [rax + 0x118]
00000001405a7ae6 mov      rcx, qword ptr [rdi + 8]
00000001405a7aea call     qword ptr [rip + 0xdc808]
00000001405a7af0 lea      rdx, [rip + 0x726d31]
00000001405a7af7 jmp      0x1405aba72
00000001405a7afc mov      rax, qword ptr [rdi + 0x18]
00000001405a7b00 lea      r8, [rip + 0xd79f9]
00000001405a7b07 mov      rcx, qword ptr [rdi + 8]
00000001405a7b0b mov      edx, r13d
00000001405a7b0e mov      rax, qword ptr [rax + 0x118]
00000001405a7b15 call     qword ptr [rip + 0xdc7dd]
00000001405a7b1b mov      rax, qword ptr [rsi + 0x20]
00000001405a7b1f mov      r14d, 0xf4
00000001405a7b25 mov      edx, r14d
00000001405a7b28 mov      rcx, rdi
00000001405a7b2b call     qword ptr [rip + 0xdc7c7]
00000001405a7b31 mov      r9d, 0x186000f4
00000001405a7b37 lea      r8, [rip + 0xc0692]
00000001405a7b3e btr      eax, 0x11
00000001405a7b42 mov      edx, r13d
00000001405a7b45 bts      eax, 0x10
00000001405a7b49 mov      dword ptr [rbp + 0x30], eax
00000001405a7b4c mov      rax, qword ptr [rdi + 0x18]
00000001405a7b50 mov      rcx, qword ptr [rdi + 8]
00000001405a7b54 mov      rax, qword ptr [rax + 0x118]
00000001405a7b5b call     qword ptr [rip + 0xdc797]
00000001405a7b61 mov      rax, qword ptr [rsi + 0x28]
00000001405a7b65 mov      edx, r14d
00000001405a7b68 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7b6c mov      rcx, rdi
00000001405a7b6f call     qword ptr [rip + 0xdc783]
00000001405a7b75 mov      rax, qword ptr [rsi + 0x20]
00000001405a7b79 mov      ebx, 0x58
00000001405a7b7e mov      edx, ebx
00000001405a7b80 mov      rcx, rdi
00000001405a7b83 call     qword ptr [rip + 0xdc76f]
00000001405a7b89 mov      r9d, 0x18600058
00000001405a7b8f lea      r8, [rip + 0xd75aa]
00000001405a7b96 and      eax, 0xffffffd1
00000001405a7b99 mov      edx, r13d
00000001405a7b9c or       eax, 0xd1
00000001405a7ba1 mov      dword ptr [rbp + 0x30], eax
00000001405a7ba4 mov      rax, qword ptr [rdi + 0x18]
00000001405a7ba8 mov      rcx, qword ptr [rdi + 8]
00000001405a7bac mov      rax, qword ptr [rax + 0x118]
00000001405a7bb3 call     qword ptr [rip + 0xdc73f]
00000001405a7bb9 mov      eax, dword ptr [rbp + 0x30]
00000001405a7bbc lea      r8, [rip + 0xd75ad]
00000001405a7bc3 and      eax, 0xffd1ffff
00000001405a7bc8 mov      r9d, 0x18600058
00000001405a7bce or       eax, 0xd10000
00000001405a7bd3 mov      edx, r13d
00000001405a7bd6 mov      dword ptr [rbp + 0x30], eax
00000001405a7bd9 mov      rax, qword ptr [rdi + 0x18]
00000001405a7bdd mov      rcx, qword ptr [rdi + 8]
00000001405a7be1 mov      rax, qword ptr [rax + 0x118]
00000001405a7be8 call     qword ptr [rip + 0xdc70a]
00000001405a7bee mov      rax, qword ptr [rsi + 0x28]
00000001405a7bf2 mov      edx, ebx
00000001405a7bf4 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7bf8 mov      rcx, rdi
00000001405a7bfb call     qword ptr [rip + 0xdc6f7]
00000001405a7c01 mov      rax, qword ptr [rsi + 0x20]
00000001405a7c05 mov      ebx, 0xb024
00000001405a7c0a mov      edx, ebx
00000001405a7c0c mov      rcx, rdi
00000001405a7c0f call     qword ptr [rip + 0xdc6e3]
00000001405a7c15 mov      r9d, 0x1860b024
00000001405a7c1b lea      r8, [rip + 0xd763e]
00000001405a7c22 and      eax, 0xff22ffff
00000001405a7c27 mov      edx, r13d
00000001405a7c2a or       eax, 0x220000
00000001405a7c2f mov      dword ptr [rbp + 0x30], eax
00000001405a7c32 mov      rax, qword ptr [rdi + 0x18]
00000001405a7c36 mov      rcx, qword ptr [rdi + 8]
00000001405a7c3a mov      rax, qword ptr [rax + 0x118]
00000001405a7c41 call     qword ptr [rip + 0xdc6b1]
00000001405a7c47 mov      rax, qword ptr [rsi + 0x28]
00000001405a7c4b mov      edx, ebx
00000001405a7c4d mov      r8d, dword ptr [rbp + 0x30]
00000001405a7c51 mov      rcx, rdi
00000001405a7c54 call     qword ptr [rip + 0xdc69e]
00000001405a7c5a mov      rax, qword ptr [rdi + 0x18]
00000001405a7c5e lea      r8, [rip + 0xd78cb]
00000001405a7c65 mov      edx, r13d
00000001405a7c68 mov      rax, qword ptr [rax + 0x118]
00000001405a7c6f mov      rcx, qword ptr [rdi + 8]
00000001405a7c73 call     qword ptr [rip + 0xdc67f]
00000001405a7c79 lea      rdx, [rip + 0x726b98]
00000001405a7c80 jmp      0x1405aba72
00000001405a7c85 mov      rax, qword ptr [rdi + 0x18]
00000001405a7c89 lea      r8, [rip + 0xd7810]
00000001405a7c90 mov      rcx, qword ptr [rdi + 8]
00000001405a7c94 mov      edx, r13d
00000001405a7c97 mov      rax, qword ptr [rax + 0x118]
00000001405a7c9e call     qword ptr [rip + 0xdc654]
00000001405a7ca4 mov      rax, qword ptr [rsi + 0x20]
00000001405a7ca8 mov      r14d, 0xf4
00000001405a7cae mov      edx, r14d
00000001405a7cb1 mov      rcx, rdi
00000001405a7cb4 call     qword ptr [rip + 0xdc63e]
00000001405a7cba mov      r9d, 0x186000f4
00000001405a7cc0 lea      r8, [rip + 0xc0509]
00000001405a7cc7 btr      eax, 0x11
00000001405a7ccb mov      edx, r13d
00000001405a7cce bts      eax, 0x10
00000001405a7cd2 mov      dword ptr [rbp + 0x30], eax
00000001405a7cd5 mov      rax, qword ptr [rdi + 0x18]
00000001405a7cd9 mov      rcx, qword ptr [rdi + 8]
00000001405a7cdd mov      rax, qword ptr [rax + 0x118]
00000001405a7ce4 call     qword ptr [rip + 0xdc60e]
00000001405a7cea mov      rax, qword ptr [rsi + 0x28]
00000001405a7cee mov      edx, r14d
00000001405a7cf1 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7cf5 mov      rcx, rdi
00000001405a7cf8 call     qword ptr [rip + 0xdc5fa]
00000001405a7cfe mov      rax, qword ptr [rsi + 0x20]
00000001405a7d02 mov      ebx, 0x58
00000001405a7d07 mov      edx, ebx
00000001405a7d09 mov      rcx, rdi
00000001405a7d0c call     qword ptr [rip + 0xdc5e6]
00000001405a7d12 mov      r9d, 0x18600058
00000001405a7d18 lea      r8, [rip + 0xd7421]
00000001405a7d1f and      eax, 0xffffffd1
00000001405a7d22 mov      edx, r13d
00000001405a7d25 or       eax, 0xd1
00000001405a7d2a mov      dword ptr [rbp + 0x30], eax
00000001405a7d2d mov      rax, qword ptr [rdi + 0x18]
00000001405a7d31 mov      rcx, qword ptr [rdi + 8]
00000001405a7d35 mov      rax, qword ptr [rax + 0x118]
00000001405a7d3c call     qword ptr [rip + 0xdc5b6]
00000001405a7d42 mov      eax, dword ptr [rbp + 0x30]
00000001405a7d45 lea      r8, [rip + 0xd7424]
00000001405a7d4c and      eax, 0xffd1ffff
00000001405a7d51 mov      r9d, 0x18600058
00000001405a7d57 or       eax, 0xd10000
00000001405a7d5c mov      edx, r13d
00000001405a7d5f mov      dword ptr [rbp + 0x30], eax
00000001405a7d62 mov      rax, qword ptr [rdi + 0x18]
00000001405a7d66 mov      rcx, qword ptr [rdi + 8]
00000001405a7d6a mov      rax, qword ptr [rax + 0x118]
00000001405a7d71 call     qword ptr [rip + 0xdc581]
00000001405a7d77 mov      rax, qword ptr [rsi + 0x28]
00000001405a7d7b mov      edx, ebx
00000001405a7d7d mov      r8d, dword ptr [rbp + 0x30]
00000001405a7d81 mov      rcx, rdi
00000001405a7d84 call     qword ptr [rip + 0xdc56e]
00000001405a7d8a mov      rax, qword ptr [rsi + 0x20]
00000001405a7d8e mov      ebx, 0xb024
00000001405a7d93 mov      edx, ebx
00000001405a7d95 mov      rcx, rdi
00000001405a7d98 call     qword ptr [rip + 0xdc55a]
00000001405a7d9e mov      r9d, 0x1860b024
00000001405a7da4 lea      r8, [rip + 0xd7455]
00000001405a7dab btr      eax, 0x16
00000001405a7daf mov      edx, r13d
00000001405a7db2 or       eax, 0xa00000
00000001405a7db7 mov      dword ptr [rbp + 0x30], eax
00000001405a7dba mov      rax, qword ptr [rdi + 0x18]
00000001405a7dbe mov      rcx, qword ptr [rdi + 8]
00000001405a7dc2 mov      rax, qword ptr [rax + 0x118]
00000001405a7dc9 call     qword ptr [rip + 0xdc529]
00000001405a7dcf mov      rax, qword ptr [rsi + 0x28]
00000001405a7dd3 mov      edx, ebx
00000001405a7dd5 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7dd9 mov      rcx, rdi
00000001405a7ddc call     qword ptr [rip + 0xdc516]
00000001405a7de2 mov      rax, qword ptr [rdi + 0x18]
00000001405a7de6 lea      r8, [rip + 0xd76e3]
00000001405a7ded mov      edx, r13d
00000001405a7df0 mov      rax, qword ptr [rax + 0x118]
00000001405a7df7 mov      rcx, qword ptr [rdi + 8]
00000001405a7dfb call     qword ptr [rip + 0xdc4f7]
00000001405a7e01 lea      rdx, [rip + 0x726a00]
00000001405a7e08 jmp      0x1405aba72
00000001405a7e0d mov      rax, qword ptr [rdi + 0x18]
00000001405a7e11 lea      r8, [rip + 0xd7628]
00000001405a7e18 mov      rcx, qword ptr [rdi + 8]
00000001405a7e1c mov      edx, r13d
00000001405a7e1f mov      rax, qword ptr [rax + 0x118]
00000001405a7e26 call     qword ptr [rip + 0xdc4cc]
00000001405a7e2c mov      rax, qword ptr [rsi + 0x20]
00000001405a7e30 mov      r14d, 0xf4
00000001405a7e36 mov      edx, r14d
00000001405a7e39 mov      rcx, rdi
00000001405a7e3c call     qword ptr [rip + 0xdc4b6]
00000001405a7e42 mov      r9d, 0x186000f4
00000001405a7e48 lea      r8, [rip + 0xc0381]
00000001405a7e4f btr      eax, 0x11
00000001405a7e53 mov      edx, r13d
00000001405a7e56 bts      eax, 0x10
00000001405a7e5a mov      dword ptr [rbp + 0x30], eax
00000001405a7e5d mov      rax, qword ptr [rdi + 0x18]
00000001405a7e61 mov      rcx, qword ptr [rdi + 8]
00000001405a7e65 mov      rax, qword ptr [rax + 0x118]
00000001405a7e6c call     qword ptr [rip + 0xdc486]
00000001405a7e72 mov      rax, qword ptr [rsi + 0x28]
00000001405a7e76 mov      edx, r14d
00000001405a7e79 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7e7d mov      rcx, rdi
00000001405a7e80 call     qword ptr [rip + 0xdc472]
00000001405a7e86 mov      rax, qword ptr [rsi + 0x20]
00000001405a7e8a mov      ebx, 0x58
00000001405a7e8f mov      edx, ebx
00000001405a7e91 mov      rcx, rdi
00000001405a7e94 call     qword ptr [rip + 0xdc45e]
00000001405a7e9a mov      r9d, 0x18600058
00000001405a7ea0 lea      r8, [rip + 0xd7299]
00000001405a7ea7 and      eax, 0xffffffd1
00000001405a7eaa mov      edx, r13d
00000001405a7ead or       eax, 0xd1
00000001405a7eb2 mov      dword ptr [rbp + 0x30], eax
00000001405a7eb5 mov      rax, qword ptr [rdi + 0x18]
00000001405a7eb9 mov      rcx, qword ptr [rdi + 8]
00000001405a7ebd mov      rax, qword ptr [rax + 0x118]
00000001405a7ec4 call     qword ptr [rip + 0xdc42e]
00000001405a7eca mov      eax, dword ptr [rbp + 0x30]
00000001405a7ecd lea      r8, [rip + 0xd729c]
00000001405a7ed4 and      eax, 0xffd1ffff
00000001405a7ed9 mov      r9d, 0x18600058
00000001405a7edf or       eax, 0xd10000
00000001405a7ee4 mov      edx, r13d
00000001405a7ee7 mov      dword ptr [rbp + 0x30], eax
00000001405a7eea mov      rax, qword ptr [rdi + 0x18]
00000001405a7eee mov      rcx, qword ptr [rdi + 8]
00000001405a7ef2 mov      rax, qword ptr [rax + 0x118]
00000001405a7ef9 call     qword ptr [rip + 0xdc3f9]
00000001405a7eff mov      rax, qword ptr [rsi + 0x28]
00000001405a7f03 mov      edx, ebx
00000001405a7f05 mov      r8d, dword ptr [rbp + 0x30]
00000001405a7f09 mov      rcx, rdi
00000001405a7f0c call     qword ptr [rip + 0xdc3e6]
00000001405a7f12 mov      rax, qword ptr [rsi + 0x20]
00000001405a7f16 mov      ebx, 0xb024
00000001405a7f1b mov      edx, ebx
00000001405a7f1d mov      rcx, rdi
00000001405a7f20 call     qword ptr [rip + 0xdc3d2]
00000001405a7f26 mov      r9d, 0x1860b024
00000001405a7f2c lea      r8, [rip + 0xd729d]
00000001405a7f33 btr      eax, 0x17
00000001405a7f37 mov      edx, r13d
00000001405a7f3a or       eax, 0x600000
00000001405a7f3f mov      dword ptr [rbp + 0x30], eax
00000001405a7f42 mov      rax, qword ptr [rdi + 0x18]
00000001405a7f46 mov      rcx, qword ptr [rdi + 8]
00000001405a7f4a mov      rax, qword ptr [rax + 0x118]
00000001405a7f51 call     qword ptr [rip + 0xdc3a1]
00000001405a7f57 mov      rax, qword ptr [rsi + 0x28]
00000001405a7f5b mov      edx, ebx
00000001405a7f5d mov      r8d, dword ptr [rbp + 0x30]
00000001405a7f61 mov      rcx, rdi
00000001405a7f64 call     qword ptr [rip + 0xdc38e]
00000001405a7f6a mov      rax, qword ptr [rdi + 0x18]
00000001405a7f6e lea      r8, [rip + 0xd74fb]
00000001405a7f75 mov      edx, r13d
00000001405a7f78 mov      rax, qword ptr [rax + 0x118]
00000001405a7f7f mov      rcx, qword ptr [rdi + 8]
00000001405a7f83 call     qword ptr [rip + 0xdc36f]
00000001405a7f89 lea      rdx, [rip + 0x726868]
00000001405a7f90 jmp      0x1405aba72
00000001405a7f95 mov      rax, qword ptr [rdi + 0x18]
00000001405a7f99 lea      r8, [rip + 0xc4a00]
00000001405a7fa0 mov      rcx, qword ptr [rdi + 8]
00000001405a7fa4 mov      edx, r13d
00000001405a7fa7 mov      rax, qword ptr [rax + 0x118]
00000001405a7fae call     qword ptr [rip + 0xdc344]
00000001405a7fb4 mov      rax, qword ptr [rsi + 0x20]
00000001405a7fb8 mov      r14d, 0xf4
00000001405a7fbe mov      edx, r14d
00000001405a7fc1 mov      rcx, rdi
00000001405a7fc4 call     qword ptr [rip + 0xdc32e]
00000001405a7fca mov      r9d, 0x186000f4
00000001405a7fd0 lea      r8, [rip + 0xc01f9]
00000001405a7fd7 btr      eax, 0x11
00000001405a7fdb mov      edx, r13d
00000001405a7fde bts      eax, 0x10
00000001405a7fe2 mov      dword ptr [rbp + 0x30], eax
00000001405a7fe5 mov      rax, qword ptr [rdi + 0x18]
00000001405a7fe9 mov      rcx, qword ptr [rdi + 8]
00000001405a7fed mov      rax, qword ptr [rax + 0x118]
00000001405a7ff4 call     qword ptr [rip + 0xdc2fe]
00000001405a7ffa mov      rax, qword ptr [rsi + 0x28]
00000001405a7ffe mov      edx, r14d
00000001405a8001 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8005 mov      rcx, rdi
00000001405a8008 call     qword ptr [rip + 0xdc2ea]
00000001405a800e mov      rax, qword ptr [rsi + 0x20]
00000001405a8012 mov      ebx, 0x58
00000001405a8017 mov      edx, ebx
00000001405a8019 mov      rcx, rdi
00000001405a801c call     qword ptr [rip + 0xdc2d6]
00000001405a8022 mov      r9d, 0x18600058
00000001405a8028 lea      r8, [rip + 0xd75f1]
00000001405a802f and      eax, 0xffffffd2
00000001405a8032 mov      edx, r13d
00000001405a8035 or       eax, 0xd2
00000001405a803a mov      dword ptr [rbp + 0x30], eax
00000001405a803d mov      rax, qword ptr [rdi + 0x18]
00000001405a8041 mov      rcx, qword ptr [rdi + 8]
00000001405a8045 mov      rax, qword ptr [rax + 0x118]
00000001405a804c call     qword ptr [rip + 0xdc2a6]
00000001405a8052 mov      eax, dword ptr [rbp + 0x30]
00000001405a8055 lea      r8, [rip + 0xd75f4]
00000001405a805c and      eax, 0xffd2ffff
00000001405a8061 mov      r9d, 0x18600058
00000001405a8067 or       eax, 0xd20000
00000001405a806c mov      edx, r13d
00000001405a806f mov      dword ptr [rbp + 0x30], eax
00000001405a8072 mov      rax, qword ptr [rdi + 0x18]
00000001405a8076 mov      rcx, qword ptr [rdi + 8]
00000001405a807a mov      rax, qword ptr [rax + 0x118]
00000001405a8081 call     qword ptr [rip + 0xdc271]
00000001405a8087 mov      rax, qword ptr [rsi + 0x28]
00000001405a808b mov      edx, ebx
00000001405a808d mov      r8d, dword ptr [rbp + 0x30]
00000001405a8091 mov      rcx, rdi
00000001405a8094 call     qword ptr [rip + 0xdc25e]
00000001405a809a mov      r14d, 0x500
00000001405a80a0 lea      r9d, [rbx - 0x56]
00000001405a80a4 mov      edx, r14d
00000001405a80a7 lea      r8, [rbp + 0x30]
00000001405a80ab mov      rcx, rdi
00000001405a80ae call     0x1403695ac
00000001405a80b3 test     eax, eax
00000001405a80b5 jne      0x1405ab47c
00000001405a80bb mov      eax, dword ptr [rbp + 0x30]
00000001405a80be lea      r8, [rip + 0xd70db]
00000001405a80c5 and      eax, 0xff3fffff
00000001405a80ca mov      r9d, 0x18006500
00000001405a80d0 bts      eax, 0x15
00000001405a80d4 mov      edx, r13d
00000001405a80d7 mov      dword ptr [rbp + 0x30], eax
00000001405a80da mov      rax, qword ptr [rdi + 0x18]
00000001405a80de mov      rcx, qword ptr [rdi + 8]
00000001405a80e2 mov      rax, qword ptr [rax + 0x118]
00000001405a80e9 call     qword ptr [rip + 0xdc209]
00000001405a80ef mov      r8d, dword ptr [rbp + 0x30]
00000001405a80f3 lea      r9d, [rbx - 0x56]
00000001405a80f7 mov      edx, r14d
00000001405a80fa mov      rcx, rdi
00000001405a80fd call     0x1403695cc
00000001405a8102 test     eax, eax
00000001405a8104 jne      0x1405ab47c
00000001405a810a mov      rax, qword ptr [rdi + 0x18]
00000001405a810e lea      r8, [rip + 0xc491b]
00000001405a8115 mov      rcx, qword ptr [rdi + 8]
00000001405a8119 mov      edx, r13d
00000001405a811c mov      rax, qword ptr [rax + 0x118]
00000001405a8123 call     qword ptr [rip + 0xdc1cf]
00000001405a8129 lea      rdx, [rip + 0x726718]
00000001405a8130 jmp      0x1405aba72
00000001405a8135 mov      eax, 0xb2
00000001405a813a cmp      ebx, eax
00000001405a813c ja       0x1405a8cdb
00000001405a8142 je       0x1405a8b3b
00000001405a8148 sub      ebx, 0xac
00000001405a814e je       0x1405a899b
00000001405a8154 sub      ebx, r13d
00000001405a8157 je       0x1405a87fb
00000001405a815d sub      ebx, r13d
00000001405a8160 je       0x1405a865a
00000001405a8166 sub      ebx, r13d
00000001405a8169 je       0x1405a84b9
00000001405a816f sub      ebx, r13d
00000001405a8172 je       0x1405a8321
00000001405a8178 cmp      ebx, r13d
00000001405a817b jne      0x1405ab45d
00000001405a8181 mov      rax, qword ptr [rdi + 0x18]
00000001405a8185 lea      r8, [rip + 0xd7614]
00000001405a818c mov      rcx, qword ptr [rdi + 8]
00000001405a8190 mov      edx, r13d
00000001405a8193 mov      rax, qword ptr [rax + 0x118]
00000001405a819a call     qword ptr [rip + 0xdc158]
00000001405a81a0 mov      rax, qword ptr [rsi + 0x20]
00000001405a81a4 mov      r14d, 0xf4
00000001405a81aa mov      edx, r14d
00000001405a81ad mov      rcx, rdi
00000001405a81b0 call     qword ptr [rip + 0xdc142]
00000001405a81b6 mov      r9d, 0x186000f4
00000001405a81bc lea      r8, [rip + 0xc000d]
00000001405a81c3 btr      eax, 0x11
00000001405a81c7 mov      edx, r13d
00000001405a81ca bts      eax, 0x10
00000001405a81ce mov      dword ptr [rbp + 0x30], eax
00000001405a81d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a81d5 mov      rcx, qword ptr [rdi + 8]
00000001405a81d9 mov      rax, qword ptr [rax + 0x118]
00000001405a81e0 call     qword ptr [rip + 0xdc112]
00000001405a81e6 mov      rax, qword ptr [rsi + 0x28]
00000001405a81ea mov      edx, r14d
00000001405a81ed mov      r8d, dword ptr [rbp + 0x30]
00000001405a81f1 mov      rcx, rdi
00000001405a81f4 call     qword ptr [rip + 0xdc0fe]
00000001405a81fa mov      rax, qword ptr [rsi + 0x20]
00000001405a81fe mov      ebx, 0x58
00000001405a8203 mov      edx, ebx
00000001405a8205 mov      rcx, rdi
00000001405a8208 call     qword ptr [rip + 0xdc0ea]
00000001405a820e mov      r9d, 0x18600058
00000001405a8214 lea      r8, [rip + 0xd7405]
00000001405a821b and      eax, 0xffffffd2
00000001405a821e mov      edx, r13d
00000001405a8221 or       eax, 0xd2
00000001405a8226 mov      dword ptr [rbp + 0x30], eax
00000001405a8229 mov      rax, qword ptr [rdi + 0x18]
00000001405a822d mov      rcx, qword ptr [rdi + 8]
00000001405a8231 mov      rax, qword ptr [rax + 0x118]
00000001405a8238 call     qword ptr [rip + 0xdc0ba]
00000001405a823e mov      eax, dword ptr [rbp + 0x30]
00000001405a8241 lea      r8, [rip + 0xd7408]
00000001405a8248 and      eax, 0xffd2ffff
00000001405a824d mov      r9d, 0x18600058
00000001405a8253 or       eax, 0xd20000
00000001405a8258 mov      edx, r13d
00000001405a825b mov      dword ptr [rbp + 0x30], eax
00000001405a825e mov      rax, qword ptr [rdi + 0x18]
00000001405a8262 mov      rcx, qword ptr [rdi + 8]
00000001405a8266 mov      rax, qword ptr [rax + 0x118]
00000001405a826d call     qword ptr [rip + 0xdc085]
00000001405a8273 mov      rax, qword ptr [rsi + 0x28]
00000001405a8277 mov      edx, ebx
00000001405a8279 mov      r8d, dword ptr [rbp + 0x30]
00000001405a827d mov      rcx, rdi
00000001405a8280 call     qword ptr [rip + 0xdc072]
00000001405a8286 mov      r14d, 0x500
00000001405a828c lea      r9d, [rbx - 0x56]
00000001405a8290 mov      edx, r14d
00000001405a8293 lea      r8, [rbp + 0x30]
00000001405a8297 mov      rcx, rdi
00000001405a829a call     0x1403695ac
00000001405a829f test     eax, eax
00000001405a82a1 jne      0x1405ab47c
00000001405a82a7 mov      eax, dword ptr [rbp + 0x30]
00000001405a82aa lea      r8, [rip + 0xd6eef]
00000001405a82b1 and      eax, 0xff3fffff
00000001405a82b6 mov      r9d, 0x18006500
00000001405a82bc bts      eax, 0x15
00000001405a82c0 mov      edx, r13d
00000001405a82c3 mov      dword ptr [rbp + 0x30], eax
00000001405a82c6 mov      rax, qword ptr [rdi + 0x18]
00000001405a82ca mov      rcx, qword ptr [rdi + 8]
00000001405a82ce mov      rax, qword ptr [rax + 0x118]
00000001405a82d5 call     qword ptr [rip + 0xdc01d]
00000001405a82db mov      r8d, dword ptr [rbp + 0x30]
00000001405a82df lea      r9d, [rbx - 0x56]
00000001405a82e3 mov      edx, r14d
00000001405a82e6 mov      rcx, rdi
00000001405a82e9 call     0x1403695cc
00000001405a82ee test     eax, eax
00000001405a82f0 jne      0x1405ab47c
00000001405a82f6 mov      rax, qword ptr [rdi + 0x18]
00000001405a82fa lea      r8, [rip + 0xd74cf]
00000001405a8301 mov      rcx, qword ptr [rdi + 8]
00000001405a8305 mov      edx, r13d
00000001405a8308 mov      rax, qword ptr [rax + 0x118]
00000001405a830f call     qword ptr [rip + 0xdbfe3]
00000001405a8315 lea      rdx, [rip + 0x72658c]
00000001405a831c jmp      0x1405aba72
00000001405a8321 mov      rax, qword ptr [rdi + 0x18]
00000001405a8325 lea      r8, [rip + 0xd7414]
00000001405a832c mov      rcx, qword ptr [rdi + 8]
00000001405a8330 mov      edx, r13d
00000001405a8333 mov      rax, qword ptr [rax + 0x118]
00000001405a833a call     qword ptr [rip + 0xdbfb8]
00000001405a8340 mov      rax, qword ptr [rsi + 0x20]
00000001405a8344 mov      r14d, 0xf4
00000001405a834a mov      edx, r14d
00000001405a834d mov      rcx, rdi
00000001405a8350 call     qword ptr [rip + 0xdbfa2]
00000001405a8356 mov      r9d, 0x186000f4
00000001405a835c lea      r8, [rip + 0xbfe6d]
00000001405a8363 btr      eax, 0x11
00000001405a8367 mov      edx, r13d
00000001405a836a bts      eax, 0x10
00000001405a836e mov      dword ptr [rbp + 0x30], eax
00000001405a8371 mov      rax, qword ptr [rdi + 0x18]
00000001405a8375 mov      rcx, qword ptr [rdi + 8]
00000001405a8379 mov      rax, qword ptr [rax + 0x118]
00000001405a8380 call     qword ptr [rip + 0xdbf72]
00000001405a8386 mov      rax, qword ptr [rsi + 0x28]
00000001405a838a mov      edx, r14d
00000001405a838d mov      r8d, dword ptr [rbp + 0x30]
00000001405a8391 mov      rcx, rdi
00000001405a8394 call     qword ptr [rip + 0xdbf5e]
00000001405a839a mov      rax, qword ptr [rsi + 0x20]
00000001405a839e mov      ebx, 0x58
00000001405a83a3 mov      edx, ebx
00000001405a83a5 mov      rcx, rdi
00000001405a83a8 call     qword ptr [rip + 0xdbf4a]
00000001405a83ae mov      r9d, 0x18600058
00000001405a83b4 lea      r8, [rip + 0xd7265]
00000001405a83bb and      eax, 0xffffffd2
00000001405a83be mov      edx, r13d
00000001405a83c1 or       eax, 0xd2
00000001405a83c6 mov      dword ptr [rbp + 0x30], eax
00000001405a83c9 mov      rax, qword ptr [rdi + 0x18]
00000001405a83cd mov      rcx, qword ptr [rdi + 8]
00000001405a83d1 mov      rax, qword ptr [rax + 0x118]
00000001405a83d8 call     qword ptr [rip + 0xdbf1a]
00000001405a83de mov      eax, dword ptr [rbp + 0x30]
00000001405a83e1 lea      r8, [rip + 0xd7268]
00000001405a83e8 and      eax, 0xffd2ffff
00000001405a83ed mov      r9d, 0x18600058
00000001405a83f3 or       eax, 0xd20000
00000001405a83f8 mov      edx, r13d
00000001405a83fb mov      dword ptr [rbp + 0x30], eax
00000001405a83fe mov      rax, qword ptr [rdi + 0x18]
00000001405a8402 mov      rcx, qword ptr [rdi + 8]
00000001405a8406 mov      rax, qword ptr [rax + 0x118]
00000001405a840d call     qword ptr [rip + 0xdbee5]
00000001405a8413 mov      rax, qword ptr [rsi + 0x28]
00000001405a8417 mov      edx, ebx
00000001405a8419 mov      r8d, dword ptr [rbp + 0x30]
00000001405a841d mov      rcx, rdi
00000001405a8420 call     qword ptr [rip + 0xdbed2]
00000001405a8426 mov      r14d, 0x500
00000001405a842c lea      r9d, [rbx - 0x56]
00000001405a8430 mov      edx, r14d
00000001405a8433 lea      r8, [rbp + 0x30]
00000001405a8437 mov      rcx, rdi
00000001405a843a call     0x1403695ac
00000001405a843f test     eax, eax
00000001405a8441 jne      0x1405ab47c
00000001405a8447 or       dword ptr [rbp + 0x30], 0xe00000
00000001405a844e lea      r8, [rip + 0xd6f2b]
00000001405a8455 mov      rax, qword ptr [rdi + 0x18]
00000001405a8459 mov      r9d, 0x18006500
00000001405a845f mov      rcx, qword ptr [rdi + 8]
00000001405a8463 mov      edx, r13d
00000001405a8466 mov      rax, qword ptr [rax + 0x118]
00000001405a846d call     qword ptr [rip + 0xdbe85]
00000001405a8473 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8477 lea      r9d, [rbx - 0x56]
00000001405a847b mov      edx, r14d
00000001405a847e mov      rcx, rdi
00000001405a8481 call     0x1403695cc
00000001405a8486 test     eax, eax
00000001405a8488 jne      0x1405ab47c
00000001405a848e mov      rax, qword ptr [rdi + 0x18]
00000001405a8492 lea      r8, [rip + 0xd72d7]
00000001405a8499 mov      rcx, qword ptr [rdi + 8]
00000001405a849d mov      edx, r13d
00000001405a84a0 mov      rax, qword ptr [rax + 0x118]
00000001405a84a7 call     qword ptr [rip + 0xdbe4b]
00000001405a84ad lea      rdx, [rip + 0x7263e4]
00000001405a84b4 jmp      0x1405aba72
00000001405a84b9 mov      rax, qword ptr [rdi + 0x18]
00000001405a84bd lea      r8, [rip + 0xd721c]
00000001405a84c4 mov      rcx, qword ptr [rdi + 8]
00000001405a84c8 mov      edx, r13d
00000001405a84cb mov      rax, qword ptr [rax + 0x118]
00000001405a84d2 call     qword ptr [rip + 0xdbe20]
00000001405a84d8 mov      rax, qword ptr [rsi + 0x20]
00000001405a84dc mov      r14d, 0xf4
00000001405a84e2 mov      edx, r14d
00000001405a84e5 mov      rcx, rdi
00000001405a84e8 call     qword ptr [rip + 0xdbe0a]
00000001405a84ee mov      r9d, 0x186000f4
00000001405a84f4 lea      r8, [rip + 0xbfcd5]
00000001405a84fb btr      eax, 0x11
00000001405a84ff mov      edx, r13d
00000001405a8502 bts      eax, 0x10
00000001405a8506 mov      dword ptr [rbp + 0x30], eax
00000001405a8509 mov      rax, qword ptr [rdi + 0x18]
00000001405a850d mov      rcx, qword ptr [rdi + 8]
00000001405a8511 mov      rax, qword ptr [rax + 0x118]
00000001405a8518 call     qword ptr [rip + 0xdbdda]
00000001405a851e mov      rax, qword ptr [rsi + 0x28]
00000001405a8522 mov      edx, r14d
00000001405a8525 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8529 mov      rcx, rdi
00000001405a852c call     qword ptr [rip + 0xdbdc6]
00000001405a8532 mov      rax, qword ptr [rsi + 0x20]
00000001405a8536 mov      ebx, 0x58
00000001405a853b mov      edx, ebx
00000001405a853d mov      rcx, rdi
00000001405a8540 call     qword ptr [rip + 0xdbdb2]
00000001405a8546 mov      r9d, 0x18600058
00000001405a854c lea      r8, [rip + 0xd70cd]
00000001405a8553 and      eax, 0xffffffd2
00000001405a8556 mov      edx, r13d
00000001405a8559 or       eax, 0xd2
00000001405a855e mov      dword ptr [rbp + 0x30], eax
00000001405a8561 mov      rax, qword ptr [rdi + 0x18]
00000001405a8565 mov      rcx, qword ptr [rdi + 8]
00000001405a8569 mov      rax, qword ptr [rax + 0x118]
00000001405a8570 call     qword ptr [rip + 0xdbd82]
00000001405a8576 mov      eax, dword ptr [rbp + 0x30]
00000001405a8579 lea      r8, [rip + 0xd70d0]
00000001405a8580 and      eax, 0xffd2ffff
00000001405a8585 mov      r9d, 0x18600058
00000001405a858b or       eax, 0xd20000
00000001405a8590 mov      edx, r13d
00000001405a8593 mov      dword ptr [rbp + 0x30], eax
00000001405a8596 mov      rax, qword ptr [rdi + 0x18]
00000001405a859a mov      rcx, qword ptr [rdi + 8]
00000001405a859e mov      rax, qword ptr [rax + 0x118]
00000001405a85a5 call     qword ptr [rip + 0xdbd4d]
00000001405a85ab mov      rax, qword ptr [rsi + 0x28]
00000001405a85af mov      edx, ebx
00000001405a85b1 mov      r8d, dword ptr [rbp + 0x30]
00000001405a85b5 mov      rcx, rdi
00000001405a85b8 call     qword ptr [rip + 0xdbd3a]
00000001405a85be mov      r14d, 0x500
00000001405a85c4 lea      r9d, [rbx - 0x56]
00000001405a85c8 mov      edx, r14d
00000001405a85cb lea      r8, [rbp + 0x30]
00000001405a85cf mov      rcx, rdi
00000001405a85d2 call     0x1403695ac
00000001405a85d7 test     eax, eax
00000001405a85d9 jne      0x1405ab47c
00000001405a85df mov      eax, dword ptr [rbp + 0x30]
00000001405a85e2 lea      r8, [rip + 0xd6d07]
00000001405a85e9 and      eax, 0xff63ffff
00000001405a85ee mov      r9d, 0x18006500
00000001405a85f4 or       eax, 0x630000
00000001405a85f9 mov      edx, r13d
00000001405a85fc mov      dword ptr [rbp + 0x30], eax
00000001405a85ff mov      rax, qword ptr [rdi + 0x18]
00000001405a8603 mov      rcx, qword ptr [rdi + 8]
00000001405a8607 mov      rax, qword ptr [rax + 0x118]
00000001405a860e call     qword ptr [rip + 0xdbce4]
00000001405a8614 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8618 lea      r9d, [rbx - 0x56]
00000001405a861c mov      edx, r14d
00000001405a861f mov      rcx, rdi
00000001405a8622 call     0x1403695cc
00000001405a8627 test     eax, eax
00000001405a8629 jne      0x1405ab47c
00000001405a862f mov      rax, qword ptr [rdi + 0x18]
00000001405a8633 lea      r8, [rip + 0xd70d6]
00000001405a863a mov      rcx, qword ptr [rdi + 8]
00000001405a863e mov      edx, r13d
00000001405a8641 mov      rax, qword ptr [rax + 0x118]
00000001405a8648 call     qword ptr [rip + 0xdbcaa]
00000001405a864e lea      rdx, [rip + 0x726233]
00000001405a8655 jmp      0x1405aba72
00000001405a865a mov      rax, qword ptr [rdi + 0x18]
00000001405a865e lea      r8, [rip + 0xd701b]
00000001405a8665 mov      rcx, qword ptr [rdi + 8]
00000001405a8669 mov      edx, r13d
00000001405a866c mov      rax, qword ptr [rax + 0x118]
00000001405a8673 call     qword ptr [rip + 0xdbc7f]
00000001405a8679 mov      rax, qword ptr [rsi + 0x20]
00000001405a867d mov      r14d, 0xf4
00000001405a8683 mov      edx, r14d
00000001405a8686 mov      rcx, rdi
00000001405a8689 call     qword ptr [rip + 0xdbc69]
00000001405a868f mov      r9d, 0x186000f4
00000001405a8695 lea      r8, [rip + 0xbfb34]
00000001405a869c btr      eax, 0x11
00000001405a86a0 mov      edx, r13d
00000001405a86a3 bts      eax, 0x10
00000001405a86a7 mov      dword ptr [rbp + 0x30], eax
00000001405a86aa mov      rax, qword ptr [rdi + 0x18]
00000001405a86ae mov      rcx, qword ptr [rdi + 8]
00000001405a86b2 mov      rax, qword ptr [rax + 0x118]
00000001405a86b9 call     qword ptr [rip + 0xdbc39]
00000001405a86bf mov      rax, qword ptr [rsi + 0x28]
00000001405a86c3 mov      edx, r14d
00000001405a86c6 mov      r8d, dword ptr [rbp + 0x30]
00000001405a86ca mov      rcx, rdi
00000001405a86cd call     qword ptr [rip + 0xdbc25]
00000001405a86d3 mov      rax, qword ptr [rsi + 0x20]
00000001405a86d7 mov      ebx, 0x58
00000001405a86dc mov      edx, ebx
00000001405a86de mov      rcx, rdi
00000001405a86e1 call     qword ptr [rip + 0xdbc11]
00000001405a86e7 mov      r9d, 0x18600058
00000001405a86ed lea      r8, [rip + 0xd6f2c]
00000001405a86f4 and      eax, 0xffffffd2
00000001405a86f7 mov      edx, r13d
00000001405a86fa or       eax, 0xd2
00000001405a86ff mov      dword ptr [rbp + 0x30], eax
00000001405a8702 mov      rax, qword ptr [rdi + 0x18]
00000001405a8706 mov      rcx, qword ptr [rdi + 8]
00000001405a870a mov      rax, qword ptr [rax + 0x118]
00000001405a8711 call     qword ptr [rip + 0xdbbe1]
00000001405a8717 mov      eax, dword ptr [rbp + 0x30]
00000001405a871a lea      r8, [rip + 0xd6f2f]
00000001405a8721 and      eax, 0xffd2ffff
00000001405a8726 mov      r9d, 0x18600058
00000001405a872c or       eax, 0xd20000
00000001405a8731 mov      edx, r13d
00000001405a8734 mov      dword ptr [rbp + 0x30], eax
00000001405a8737 mov      rax, qword ptr [rdi + 0x18]
00000001405a873b mov      rcx, qword ptr [rdi + 8]
00000001405a873f mov      rax, qword ptr [rax + 0x118]
00000001405a8746 call     qword ptr [rip + 0xdbbac]
00000001405a874c mov      rax, qword ptr [rsi + 0x28]
00000001405a8750 mov      edx, ebx
00000001405a8752 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8756 mov      rcx, rdi
00000001405a8759 call     qword ptr [rip + 0xdbb99]
00000001405a875f mov      r14d, 0x500
00000001405a8765 lea      r9d, [rbx - 0x56]
00000001405a8769 mov      edx, r14d
00000001405a876c lea      r8, [rbp + 0x30]
00000001405a8770 mov      rcx, rdi
00000001405a8773 call     0x1403695ac
00000001405a8778 test     eax, eax
00000001405a877a jne      0x1405ab47c
00000001405a8780 mov      eax, dword ptr [rbp + 0x30]
00000001405a8783 lea      r8, [rip + 0xd6ad6]
00000001405a878a and      eax, 0xff22ffff
00000001405a878f mov      r9d, 0x18006500
00000001405a8795 or       eax, 0x220000
00000001405a879a mov      edx, r13d
00000001405a879d mov      dword ptr [rbp + 0x30], eax
00000001405a87a0 mov      rax, qword ptr [rdi + 0x18]
00000001405a87a4 mov      rcx, qword ptr [rdi + 8]
00000001405a87a8 mov      rax, qword ptr [rax + 0x118]
00000001405a87af call     qword ptr [rip + 0xdbb43]
00000001405a87b5 mov      r8d, dword ptr [rbp + 0x30]
00000001405a87b9 lea      r9d, [rbx - 0x56]
00000001405a87bd mov      edx, r14d
00000001405a87c0 mov      rcx, rdi
00000001405a87c3 call     0x1403695cc
00000001405a87c8 test     eax, eax
00000001405a87ca jne      0x1405ab47c
00000001405a87d0 mov      rax, qword ptr [rdi + 0x18]
00000001405a87d4 lea      r8, [rip + 0xd6ed5]
00000001405a87db mov      rcx, qword ptr [rdi + 8]
00000001405a87df mov      edx, r13d
00000001405a87e2 mov      rax, qword ptr [rax + 0x118]
00000001405a87e9 call     qword ptr [rip + 0xdbb09]
00000001405a87ef lea      rdx, [rip + 0x726082]
00000001405a87f6 jmp      0x1405aba72
00000001405a87fb mov      rax, qword ptr [rdi + 0x18]
00000001405a87ff lea      r8, [rip + 0xc42ba]
00000001405a8806 mov      rcx, qword ptr [rdi + 8]
00000001405a880a mov      edx, r13d
00000001405a880d mov      rax, qword ptr [rax + 0x118]
00000001405a8814 call     qword ptr [rip + 0xdbade]
00000001405a881a mov      rax, qword ptr [rsi + 0x20]
00000001405a881e mov      r14d, 0xf4
00000001405a8824 mov      edx, r14d
00000001405a8827 mov      rcx, rdi
00000001405a882a call     qword ptr [rip + 0xdbac8]
00000001405a8830 mov      r9d, 0x186000f4
00000001405a8836 lea      r8, [rip + 0xbf993]
00000001405a883d btr      eax, 0x11
00000001405a8841 mov      edx, r13d
00000001405a8844 bts      eax, 0x10
00000001405a8848 mov      dword ptr [rbp + 0x30], eax
00000001405a884b mov      rax, qword ptr [rdi + 0x18]
00000001405a884f mov      rcx, qword ptr [rdi + 8]
00000001405a8853 mov      rax, qword ptr [rax + 0x118]
00000001405a885a call     qword ptr [rip + 0xdba98]
00000001405a8860 mov      rax, qword ptr [rsi + 0x28]
00000001405a8864 mov      edx, r14d
00000001405a8867 mov      r8d, dword ptr [rbp + 0x30]
00000001405a886b mov      rcx, rdi
00000001405a886e call     qword ptr [rip + 0xdba84]
00000001405a8874 mov      rax, qword ptr [rsi + 0x20]
00000001405a8878 mov      ebx, 0x58
00000001405a887d mov      edx, ebx
00000001405a887f mov      rcx, rdi
00000001405a8882 call     qword ptr [rip + 0xdba70]
00000001405a8888 mov      r9d, 0x18600058
00000001405a888e lea      r8, [rip + 0xd6d8b]
00000001405a8895 and      eax, 0xffffffd2
00000001405a8898 mov      edx, r13d
00000001405a889b or       eax, 0xd2
00000001405a88a0 mov      dword ptr [rbp + 0x30], eax
00000001405a88a3 mov      rax, qword ptr [rdi + 0x18]
00000001405a88a7 mov      rcx, qword ptr [rdi + 8]
00000001405a88ab mov      rax, qword ptr [rax + 0x118]
00000001405a88b2 call     qword ptr [rip + 0xdba40]
00000001405a88b8 mov      eax, dword ptr [rbp + 0x30]
00000001405a88bb lea      r8, [rip + 0xd6d8e]
00000001405a88c2 and      eax, 0xffd2ffff
00000001405a88c7 mov      r9d, 0x18600058
00000001405a88cd or       eax, 0xd20000
00000001405a88d2 mov      edx, r13d
00000001405a88d5 mov      dword ptr [rbp + 0x30], eax
00000001405a88d8 mov      rax, qword ptr [rdi + 0x18]
00000001405a88dc mov      rcx, qword ptr [rdi + 8]
00000001405a88e0 mov      rax, qword ptr [rax + 0x118]
00000001405a88e7 call     qword ptr [rip + 0xdba0b]
00000001405a88ed mov      rax, qword ptr [rsi + 0x28]
00000001405a88f1 mov      edx, ebx
00000001405a88f3 mov      r8d, dword ptr [rbp + 0x30]
00000001405a88f7 mov      rcx, rdi
00000001405a88fa call     qword ptr [rip + 0xdb9f8]
00000001405a8900 mov      r14d, 0x500
00000001405a8906 lea      r9d, [rbx - 0x56]
00000001405a890a mov      edx, r14d
00000001405a890d lea      r8, [rbp + 0x30]
00000001405a8911 mov      rcx, rdi
00000001405a8914 call     0x1403695ac
00000001405a8919 test     eax, eax
00000001405a891b jne      0x1405ab47c
00000001405a8921 mov      eax, dword ptr [rbp + 0x30]
00000001405a8924 lea      r8, [rip + 0xd68d5]
00000001405a892b btr      eax, 0x16
00000001405a892f mov      r9d, 0x18006500
00000001405a8935 or       eax, 0xa00000
00000001405a893a mov      edx, r13d
00000001405a893d mov      dword ptr [rbp + 0x30], eax
00000001405a8940 mov      rax, qword ptr [rdi + 0x18]
00000001405a8944 mov      rcx, qword ptr [rdi + 8]
00000001405a8948 mov      rax, qword ptr [rax + 0x118]
00000001405a894f call     qword ptr [rip + 0xdb9a3]
00000001405a8955 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8959 lea      r9d, [rbx - 0x56]
00000001405a895d mov      edx, r14d
00000001405a8960 mov      rcx, rdi
00000001405a8963 call     0x1403695cc
00000001405a8968 test     eax, eax
00000001405a896a jne      0x1405ab47c
00000001405a8970 mov      rax, qword ptr [rdi + 0x18]
00000001405a8974 lea      r8, [rip + 0xc4175]
00000001405a897b mov      rcx, qword ptr [rdi + 8]
00000001405a897f mov      edx, r13d
00000001405a8982 mov      rax, qword ptr [rax + 0x118]
00000001405a8989 call     qword ptr [rip + 0xdb969]
00000001405a898f lea      rdx, [rip + 0x725ed2]
00000001405a8996 jmp      0x1405aba72
00000001405a899b mov      rax, qword ptr [rdi + 0x18]
00000001405a899f lea      r8, [rip + 0xc40ba]
00000001405a89a6 mov      rcx, qword ptr [rdi + 8]
00000001405a89aa mov      edx, r13d
00000001405a89ad mov      rax, qword ptr [rax + 0x118]
00000001405a89b4 call     qword ptr [rip + 0xdb93e]
00000001405a89ba mov      rax, qword ptr [rsi + 0x20]
00000001405a89be mov      r14d, 0xf4
00000001405a89c4 mov      edx, r14d
00000001405a89c7 mov      rcx, rdi
00000001405a89ca call     qword ptr [rip + 0xdb928]
00000001405a89d0 mov      r9d, 0x186000f4
00000001405a89d6 lea      r8, [rip + 0xbf7f3]
00000001405a89dd btr      eax, 0x11
00000001405a89e1 mov      edx, r13d
00000001405a89e4 bts      eax, 0x10
00000001405a89e8 mov      dword ptr [rbp + 0x30], eax
00000001405a89eb mov      rax, qword ptr [rdi + 0x18]
00000001405a89ef mov      rcx, qword ptr [rdi + 8]
00000001405a89f3 mov      rax, qword ptr [rax + 0x118]
00000001405a89fa call     qword ptr [rip + 0xdb8f8]
00000001405a8a00 mov      rax, qword ptr [rsi + 0x28]
00000001405a8a04 mov      edx, r14d
00000001405a8a07 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8a0b mov      rcx, rdi
00000001405a8a0e call     qword ptr [rip + 0xdb8e4]
00000001405a8a14 mov      rax, qword ptr [rsi + 0x20]
00000001405a8a18 mov      ebx, 0x58
00000001405a8a1d mov      edx, ebx
00000001405a8a1f mov      rcx, rdi
00000001405a8a22 call     qword ptr [rip + 0xdb8d0]
00000001405a8a28 mov      r9d, 0x18600058
00000001405a8a2e lea      r8, [rip + 0xd6beb]
00000001405a8a35 and      eax, 0xffffffd2
00000001405a8a38 mov      edx, r13d
00000001405a8a3b or       eax, 0xd2
00000001405a8a40 mov      dword ptr [rbp + 0x30], eax
00000001405a8a43 mov      rax, qword ptr [rdi + 0x18]
00000001405a8a47 mov      rcx, qword ptr [rdi + 8]
00000001405a8a4b mov      rax, qword ptr [rax + 0x118]
00000001405a8a52 call     qword ptr [rip + 0xdb8a0]
00000001405a8a58 mov      eax, dword ptr [rbp + 0x30]
00000001405a8a5b lea      r8, [rip + 0xd6bee]
00000001405a8a62 and      eax, 0xffd2ffff
00000001405a8a67 mov      r9d, 0x18600058
00000001405a8a6d or       eax, 0xd20000
00000001405a8a72 mov      edx, r13d
00000001405a8a75 mov      dword ptr [rbp + 0x30], eax
00000001405a8a78 mov      rax, qword ptr [rdi + 0x18]
00000001405a8a7c mov      rcx, qword ptr [rdi + 8]
00000001405a8a80 mov      rax, qword ptr [rax + 0x118]
00000001405a8a87 call     qword ptr [rip + 0xdb86b]
00000001405a8a8d mov      rax, qword ptr [rsi + 0x28]
00000001405a8a91 mov      edx, ebx
00000001405a8a93 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8a97 mov      rcx, rdi
00000001405a8a9a call     qword ptr [rip + 0xdb858]
00000001405a8aa0 mov      r14d, 0x500
00000001405a8aa6 lea      r9d, [rbx - 0x56]
00000001405a8aaa mov      edx, r14d
00000001405a8aad lea      r8, [rbp + 0x30]
00000001405a8ab1 mov      rcx, rdi
00000001405a8ab4 call     0x1403695ac
00000001405a8ab9 test     eax, eax
00000001405a8abb jne      0x1405ab47c
00000001405a8ac1 mov      eax, dword ptr [rbp + 0x30]
00000001405a8ac4 lea      r8, [rip + 0xd6705]
00000001405a8acb btr      eax, 0x17
00000001405a8acf mov      r9d, 0x18006500
00000001405a8ad5 or       eax, 0x600000
00000001405a8ada mov      edx, r13d
00000001405a8add mov      dword ptr [rbp + 0x30], eax
00000001405a8ae0 mov      rax, qword ptr [rdi + 0x18]
00000001405a8ae4 mov      rcx, qword ptr [rdi + 8]
00000001405a8ae8 mov      rax, qword ptr [rax + 0x118]
00000001405a8aef call     qword ptr [rip + 0xdb803]
00000001405a8af5 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8af9 lea      r9d, [rbx - 0x56]
00000001405a8afd mov      edx, r14d
00000001405a8b00 mov      rcx, rdi
00000001405a8b03 call     0x1403695cc
00000001405a8b08 test     eax, eax
00000001405a8b0a jne      0x1405ab47c
00000001405a8b10 mov      rax, qword ptr [rdi + 0x18]
00000001405a8b14 lea      r8, [rip + 0xc3f75]
00000001405a8b1b mov      rcx, qword ptr [rdi + 8]
00000001405a8b1f mov      edx, r13d
00000001405a8b22 mov      rax, qword ptr [rax + 0x118]
00000001405a8b29 call     qword ptr [rip + 0xdb7c9]
00000001405a8b2f lea      rdx, [rip + 0x725d22]
00000001405a8b36 jmp      0x1405aba72
00000001405a8b3b mov      rax, qword ptr [rdi + 0x18]
00000001405a8b3f lea      r8, [rip + 0xd6cba]
00000001405a8b46 mov      rcx, qword ptr [rdi + 8]
00000001405a8b4a mov      edx, r13d
00000001405a8b4d mov      rax, qword ptr [rax + 0x118]
00000001405a8b54 call     qword ptr [rip + 0xdb79e]
00000001405a8b5a mov      rax, qword ptr [rsi + 0x20]
00000001405a8b5e mov      r14d, 0xf4
00000001405a8b64 mov      edx, r14d
00000001405a8b67 mov      rcx, rdi
00000001405a8b6a call     qword ptr [rip + 0xdb788]
00000001405a8b70 mov      r9d, 0x186000f4
00000001405a8b76 lea      r8, [rip + 0xbf653]
00000001405a8b7d btr      eax, 0x11
00000001405a8b81 mov      edx, r13d
00000001405a8b84 bts      eax, 0x10
00000001405a8b88 mov      dword ptr [rbp + 0x30], eax
00000001405a8b8b mov      rax, qword ptr [rdi + 0x18]
00000001405a8b8f mov      rcx, qword ptr [rdi + 8]
00000001405a8b93 mov      rax, qword ptr [rax + 0x118]
00000001405a8b9a call     qword ptr [rip + 0xdb758]
00000001405a8ba0 mov      rax, qword ptr [rsi + 0x28]
00000001405a8ba4 mov      edx, r14d
00000001405a8ba7 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8bab mov      rcx, rdi
00000001405a8bae call     qword ptr [rip + 0xdb744]
00000001405a8bb4 mov      rax, qword ptr [rsi + 0x20]
00000001405a8bb8 mov      ebx, 0x58
00000001405a8bbd mov      edx, ebx
00000001405a8bbf mov      rcx, rdi
00000001405a8bc2 call     qword ptr [rip + 0xdb730]
00000001405a8bc8 mov      r9d, 0x18600058
00000001405a8bce lea      r8, [rip + 0xd6a4b]
00000001405a8bd5 and      eax, 0xffffffd2
00000001405a8bd8 mov      edx, r13d
00000001405a8bdb or       eax, 0xd2
00000001405a8be0 mov      dword ptr [rbp + 0x30], eax
00000001405a8be3 mov      rax, qword ptr [rdi + 0x18]
00000001405a8be7 mov      rcx, qword ptr [rdi + 8]
00000001405a8beb mov      rax, qword ptr [rax + 0x118]
00000001405a8bf2 call     qword ptr [rip + 0xdb700]
00000001405a8bf8 mov      eax, dword ptr [rbp + 0x30]
00000001405a8bfb lea      r8, [rip + 0xd6a4e]
00000001405a8c02 and      eax, 0xffd2ffff
00000001405a8c07 mov      r9d, 0x18600058
00000001405a8c0d or       eax, 0xd20000
00000001405a8c12 mov      edx, r13d
00000001405a8c15 mov      dword ptr [rbp + 0x30], eax
00000001405a8c18 mov      rax, qword ptr [rdi + 0x18]
00000001405a8c1c mov      rcx, qword ptr [rdi + 8]
00000001405a8c20 mov      rax, qword ptr [rax + 0x118]
00000001405a8c27 call     qword ptr [rip + 0xdb6cb]
00000001405a8c2d mov      rax, qword ptr [rsi + 0x28]
00000001405a8c31 mov      edx, ebx
00000001405a8c33 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8c37 mov      rcx, rdi
00000001405a8c3a call     qword ptr [rip + 0xdb6b8]
00000001405a8c40 mov      r14d, 0x500
00000001405a8c46 lea      r9d, [rbx - 0x56]
00000001405a8c4a mov      edx, r14d
00000001405a8c4d lea      r8, [rbp + 0x30]
00000001405a8c51 mov      rcx, rdi
00000001405a8c54 call     0x1403695ac
00000001405a8c59 test     eax, eax
00000001405a8c5b jne      0x1405ab47c
00000001405a8c61 mov      eax, dword ptr [rbp + 0x30]
00000001405a8c64 lea      r8, [rip + 0xd6565]
00000001405a8c6b btr      eax, 0x17
00000001405a8c6f mov      r9d, 0x18006500
00000001405a8c75 or       eax, 0x600000
00000001405a8c7a mov      edx, r13d
00000001405a8c7d mov      dword ptr [rbp + 0x30], eax
00000001405a8c80 mov      rax, qword ptr [rdi + 0x18]
00000001405a8c84 mov      rcx, qword ptr [rdi + 8]
00000001405a8c88 mov      rax, qword ptr [rax + 0x118]
00000001405a8c8f call     qword ptr [rip + 0xdb663]
00000001405a8c95 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8c99 lea      r9d, [rbx - 0x56]
00000001405a8c9d mov      edx, r14d
00000001405a8ca0 mov      rcx, rdi
00000001405a8ca3 call     0x1403695cc
00000001405a8ca8 test     eax, eax
00000001405a8caa jne      0x1405ab47c
00000001405a8cb0 mov      rax, qword ptr [rdi + 0x18]
00000001405a8cb4 lea      r8, [rip + 0xd6b75]
00000001405a8cbb mov      rcx, qword ptr [rdi + 8]
00000001405a8cbf mov      edx, r13d
00000001405a8cc2 mov      rax, qword ptr [rax + 0x118]
00000001405a8cc9 call     qword ptr [rip + 0xdb629]
00000001405a8ccf lea      rdx, [rip + 0x725be2]
00000001405a8cd6 jmp      0x1405aba72
00000001405a8cdb sub      ebx, 0xb3
00000001405a8ce1 je       0x1405a9330
00000001405a8ce7 sub      ebx, r13d
00000001405a8cea je       0x1405a918f
00000001405a8cf0 sub      ebx, r13d
00000001405a8cf3 je       0x1405a8fee
00000001405a8cf9 sub      ebx, r13d
00000001405a8cfc je       0x1405a8e56
00000001405a8d02 cmp      ebx, r13d
00000001405a8d05 jne      0x1405ab45d
00000001405a8d0b mov      rax, qword ptr [rdi + 0x18]
00000001405a8d0f lea      r8, [rip + 0xc3e6a]
00000001405a8d16 mov      rcx, qword ptr [rdi + 8]
00000001405a8d1a mov      edx, r13d
00000001405a8d1d mov      rax, qword ptr [rax + 0x118]
00000001405a8d24 call     qword ptr [rip + 0xdb5ce]
00000001405a8d2a mov      rax, qword ptr [rsi + 0x20]
00000001405a8d2e mov      r14d, 0xf4
00000001405a8d34 mov      edx, r14d
00000001405a8d37 mov      rcx, rdi
00000001405a8d3a call     qword ptr [rip + 0xdb5b8]
00000001405a8d40 mov      r9d, 0x186000f4
00000001405a8d46 lea      r8, [rip + 0xbf483]
00000001405a8d4d btr      eax, 0x11
00000001405a8d51 mov      edx, r13d
00000001405a8d54 bts      eax, 0x10
00000001405a8d58 mov      dword ptr [rbp + 0x30], eax
00000001405a8d5b mov      rax, qword ptr [rdi + 0x18]
00000001405a8d5f mov      rcx, qword ptr [rdi + 8]
00000001405a8d63 mov      rax, qword ptr [rax + 0x118]
00000001405a8d6a call     qword ptr [rip + 0xdb588]
00000001405a8d70 mov      rax, qword ptr [rsi + 0x28]
00000001405a8d74 mov      edx, r14d
00000001405a8d77 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8d7b mov      rcx, rdi
00000001405a8d7e call     qword ptr [rip + 0xdb574]
00000001405a8d84 mov      rax, qword ptr [rsi]
00000001405a8d87 mov      ebx, 0x58
00000001405a8d8c mov      edx, ebx
00000001405a8d8e mov      rcx, rdi
00000001405a8d91 call     qword ptr [rip + 0xdb561]
00000001405a8d97 mov      rax, qword ptr [rdi + 0x18]
00000001405a8d9b lea      r8, [rip + 0xc3e0e]
00000001405a8da2 mov      rcx, qword ptr [rdi + 8]
00000001405a8da6 mov      r9d, 0x18600058
00000001405a8dac mov      edx, r13d
00000001405a8daf mov      rax, qword ptr [rax + 0x118]
00000001405a8db6 call     qword ptr [rip + 0xdb53c]
00000001405a8dbc mov      rax, qword ptr [rsi + 8]
00000001405a8dc0 mov      r8b, 0x80
00000001405a8dc3 mov      edx, ebx
00000001405a8dc5 mov      rcx, rdi
00000001405a8dc8 call     qword ptr [rip + 0xdb52a]
00000001405a8dce mov      rax, qword ptr [rsi + 0x10]
00000001405a8dd2 mov      r15d, 0x8864
00000001405a8dd8 mov      edx, r15d
00000001405a8ddb mov      rcx, rdi
00000001405a8dde call     qword ptr [rip + 0xdb514]
00000001405a8de4 mov      rcx, qword ptr [rdi + 8]
00000001405a8de8 lea      r8, [rip + 0xc3df1]
00000001405a8def movzx    ebx, ax
00000001405a8df2 mov      r9d, 0x18608864
00000001405a8df8 mov      eax, 0xf0ff
00000001405a8dfd mov      edx, r13d
00000001405a8e00 and      bx, ax
00000001405a8e03 mov      rax, qword ptr [rdi + 0x18]
00000001405a8e07 mov      rax, qword ptr [rax + 0x118]
00000001405a8e0e call     qword ptr [rip + 0xdb4e4]
00000001405a8e14 mov      rax, qword ptr [rsi + 0x18]
00000001405a8e18 movzx    r8d, bx
00000001405a8e1c mov      edx, r15d
00000001405a8e1f mov      rcx, rdi
00000001405a8e22 call     qword ptr [rip + 0xdb4d0]
00000001405a8e28 mov      rax, qword ptr [rdi + 0x18]
00000001405a8e2c lea      r8, [rip + 0xc3ddd]
00000001405a8e33 mov      rcx, qword ptr [rdi + 8]
00000001405a8e37 mov      edx, r13d
00000001405a8e3a mov      rax, qword ptr [rax + 0x118]
00000001405a8e41 call     qword ptr [rip + 0xdb4b1]
00000001405a8e47 mov      r9b, r13b
00000001405a8e4a lea      rdx, [rip + 0x725ab7]
00000001405a8e51 jmp      0x1405aba75
00000001405a8e56 mov      rax, qword ptr [rdi + 0x18]
00000001405a8e5a lea      r8, [rip + 0xd6b1f]
00000001405a8e61 mov      rcx, qword ptr [rdi + 8]
00000001405a8e65 mov      edx, r13d
00000001405a8e68 mov      rax, qword ptr [rax + 0x118]
00000001405a8e6f call     qword ptr [rip + 0xdb483]
00000001405a8e75 mov      rax, qword ptr [rsi + 0x20]
00000001405a8e79 mov      r14d, 0xf4
00000001405a8e7f mov      edx, r14d
00000001405a8e82 mov      rcx, rdi
00000001405a8e85 call     qword ptr [rip + 0xdb46d]
00000001405a8e8b mov      r9d, 0x186000f4
00000001405a8e91 lea      r8, [rip + 0xbf338]
00000001405a8e98 btr      eax, 0x11
00000001405a8e9c mov      edx, r13d
00000001405a8e9f bts      eax, 0x10
00000001405a8ea3 mov      dword ptr [rbp + 0x30], eax
00000001405a8ea6 mov      rax, qword ptr [rdi + 0x18]
00000001405a8eaa mov      rcx, qword ptr [rdi + 8]
00000001405a8eae mov      rax, qword ptr [rax + 0x118]
00000001405a8eb5 call     qword ptr [rip + 0xdb43d]
00000001405a8ebb mov      rax, qword ptr [rsi + 0x28]
00000001405a8ebf mov      edx, r14d
00000001405a8ec2 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8ec6 mov      rcx, rdi
00000001405a8ec9 call     qword ptr [rip + 0xdb429]
00000001405a8ecf mov      rax, qword ptr [rsi + 0x20]
00000001405a8ed3 mov      ebx, 0x58
00000001405a8ed8 mov      edx, ebx
00000001405a8eda mov      rcx, rdi
00000001405a8edd call     qword ptr [rip + 0xdb415]
00000001405a8ee3 mov      r9d, 0x18600058
00000001405a8ee9 lea      r8, [rip + 0xd6730]
00000001405a8ef0 and      eax, 0xffffffd2
00000001405a8ef3 mov      edx, r13d
00000001405a8ef6 or       eax, 0xd2
00000001405a8efb mov      dword ptr [rbp + 0x30], eax
00000001405a8efe mov      rax, qword ptr [rdi + 0x18]
00000001405a8f02 mov      rcx, qword ptr [rdi + 8]
00000001405a8f06 mov      rax, qword ptr [rax + 0x118]
00000001405a8f0d call     qword ptr [rip + 0xdb3e5]
00000001405a8f13 mov      eax, dword ptr [rbp + 0x30]
00000001405a8f16 lea      r8, [rip + 0xd6733]
00000001405a8f1d and      eax, 0xffd2ffff
00000001405a8f22 mov      r9d, 0x18600058
00000001405a8f28 or       eax, 0xd20000
00000001405a8f2d mov      edx, r13d
00000001405a8f30 mov      dword ptr [rbp + 0x30], eax
00000001405a8f33 mov      rax, qword ptr [rdi + 0x18]
00000001405a8f37 mov      rcx, qword ptr [rdi + 8]
00000001405a8f3b mov      rax, qword ptr [rax + 0x118]
00000001405a8f42 call     qword ptr [rip + 0xdb3b0]
00000001405a8f48 mov      rax, qword ptr [rsi + 0x28]
00000001405a8f4c mov      edx, ebx
00000001405a8f4e mov      r8d, dword ptr [rbp + 0x30]
00000001405a8f52 mov      rcx, rdi
00000001405a8f55 call     qword ptr [rip + 0xdb39d]
00000001405a8f5b mov      r14d, 0x500
00000001405a8f61 lea      r9d, [rbx - 0x56]
00000001405a8f65 mov      edx, r14d
00000001405a8f68 lea      r8, [rbp + 0x30]
00000001405a8f6c mov      rcx, rdi
00000001405a8f6f call     0x1403695ac
00000001405a8f74 test     eax, eax
00000001405a8f76 jne      0x1405ab47c
00000001405a8f7c or       dword ptr [rbp + 0x30], 0xe00000
00000001405a8f83 lea      r8, [rip + 0xd63f6]
00000001405a8f8a mov      rax, qword ptr [rdi + 0x18]
00000001405a8f8e mov      r9d, 0x18006500
00000001405a8f94 mov      rcx, qword ptr [rdi + 8]
00000001405a8f98 mov      edx, r13d
00000001405a8f9b mov      rax, qword ptr [rax + 0x118]
00000001405a8fa2 call     qword ptr [rip + 0xdb350]
00000001405a8fa8 mov      r8d, dword ptr [rbp + 0x30]
00000001405a8fac lea      r9d, [rbx - 0x56]
00000001405a8fb0 mov      edx, r14d
00000001405a8fb3 mov      rcx, rdi
00000001405a8fb6 call     0x1403695cc
00000001405a8fbb test     eax, eax
00000001405a8fbd jne      0x1405ab47c
00000001405a8fc3 mov      rax, qword ptr [rdi + 0x18]
00000001405a8fc7 lea      r8, [rip + 0xd69e2]
00000001405a8fce mov      rcx, qword ptr [rdi + 8]
00000001405a8fd2 mov      edx, r13d
00000001405a8fd5 mov      rax, qword ptr [rax + 0x118]
00000001405a8fdc call     qword ptr [rip + 0xdb316]
00000001405a8fe2 lea      rdx, [rip + 0x72590f]
00000001405a8fe9 jmp      0x1405aba72
00000001405a8fee mov      rax, qword ptr [rdi + 0x18]
00000001405a8ff2 lea      r8, [rip + 0xd6927]
00000001405a8ff9 mov      rcx, qword ptr [rdi + 8]
00000001405a8ffd mov      edx, r13d
00000001405a9000 mov      rax, qword ptr [rax + 0x118]
00000001405a9007 call     qword ptr [rip + 0xdb2eb]
00000001405a900d mov      rax, qword ptr [rsi + 0x20]
00000001405a9011 mov      r14d, 0xf4
00000001405a9017 mov      edx, r14d
00000001405a901a mov      rcx, rdi
00000001405a901d call     qword ptr [rip + 0xdb2d5]
00000001405a9023 mov      r9d, 0x186000f4
00000001405a9029 lea      r8, [rip + 0xbf1a0]
00000001405a9030 btr      eax, 0x11
00000001405a9034 mov      edx, r13d
00000001405a9037 bts      eax, 0x10
00000001405a903b mov      dword ptr [rbp + 0x30], eax
00000001405a903e mov      rax, qword ptr [rdi + 0x18]
00000001405a9042 mov      rcx, qword ptr [rdi + 8]
00000001405a9046 mov      rax, qword ptr [rax + 0x118]
00000001405a904d call     qword ptr [rip + 0xdb2a5]
00000001405a9053 mov      rax, qword ptr [rsi + 0x28]
00000001405a9057 mov      edx, r14d
00000001405a905a mov      r8d, dword ptr [rbp + 0x30]
00000001405a905e mov      rcx, rdi
00000001405a9061 call     qword ptr [rip + 0xdb291]
00000001405a9067 mov      rax, qword ptr [rsi + 0x20]
00000001405a906b mov      ebx, 0x58
00000001405a9070 mov      edx, ebx
00000001405a9072 mov      rcx, rdi
00000001405a9075 call     qword ptr [rip + 0xdb27d]
00000001405a907b mov      r9d, 0x18600058
00000001405a9081 lea      r8, [rip + 0xd6598]
00000001405a9088 and      eax, 0xffffffd2
00000001405a908b mov      edx, r13d
00000001405a908e or       eax, 0xd2
00000001405a9093 mov      dword ptr [rbp + 0x30], eax
00000001405a9096 mov      rax, qword ptr [rdi + 0x18]
00000001405a909a mov      rcx, qword ptr [rdi + 8]
00000001405a909e mov      rax, qword ptr [rax + 0x118]
00000001405a90a5 call     qword ptr [rip + 0xdb24d]
00000001405a90ab mov      eax, dword ptr [rbp + 0x30]
00000001405a90ae lea      r8, [rip + 0xd659b]
00000001405a90b5 and      eax, 0xffd2ffff
00000001405a90ba mov      r9d, 0x18600058
00000001405a90c0 or       eax, 0xd20000
00000001405a90c5 mov      edx, r13d
00000001405a90c8 mov      dword ptr [rbp + 0x30], eax
00000001405a90cb mov      rax, qword ptr [rdi + 0x18]
00000001405a90cf mov      rcx, qword ptr [rdi + 8]
00000001405a90d3 mov      rax, qword ptr [rax + 0x118]
00000001405a90da call     qword ptr [rip + 0xdb218]
00000001405a90e0 mov      rax, qword ptr [rsi + 0x28]
00000001405a90e4 mov      edx, ebx
00000001405a90e6 mov      r8d, dword ptr [rbp + 0x30]
00000001405a90ea mov      rcx, rdi
00000001405a90ed call     qword ptr [rip + 0xdb205]
00000001405a90f3 mov      r14d, 0x500
00000001405a90f9 lea      r9d, [rbx - 0x56]
00000001405a90fd mov      edx, r14d
00000001405a9100 lea      r8, [rbp + 0x30]
00000001405a9104 mov      rcx, rdi
00000001405a9107 call     0x1403695ac
00000001405a910c test     eax, eax
00000001405a910e jne      0x1405ab47c
00000001405a9114 mov      eax, dword ptr [rbp + 0x30]
00000001405a9117 lea      r8, [rip + 0xd61d2]
00000001405a911e and      eax, 0xff63ffff
00000001405a9123 mov      r9d, 0x18006500
00000001405a9129 or       eax, 0x630000
00000001405a912e mov      edx, r13d
00000001405a9131 mov      dword ptr [rbp + 0x30], eax
00000001405a9134 mov      rax, qword ptr [rdi + 0x18]
00000001405a9138 mov      rcx, qword ptr [rdi + 8]
00000001405a913c mov      rax, qword ptr [rax + 0x118]
00000001405a9143 call     qword ptr [rip + 0xdb1af]
00000001405a9149 mov      r8d, dword ptr [rbp + 0x30]
00000001405a914d lea      r9d, [rbx - 0x56]
00000001405a9151 mov      edx, r14d
00000001405a9154 mov      rcx, rdi
00000001405a9157 call     0x1403695cc
00000001405a915c test     eax, eax
00000001405a915e jne      0x1405ab47c
00000001405a9164 mov      rax, qword ptr [rdi + 0x18]
00000001405a9168 lea      r8, [rip + 0xd67e1]
00000001405a916f mov      rcx, qword ptr [rdi + 8]
00000001405a9173 mov      edx, r13d
00000001405a9176 mov      rax, qword ptr [rax + 0x118]
00000001405a917d call     qword ptr [rip + 0xdb175]
00000001405a9183 lea      rdx, [rip + 0x72575e]
00000001405a918a jmp      0x1405aba72
00000001405a918f mov      rax, qword ptr [rdi + 0x18]
00000001405a9193 lea      r8, [rip + 0xd6726]
00000001405a919a mov      rcx, qword ptr [rdi + 8]
00000001405a919e mov      edx, r13d
00000001405a91a1 mov      rax, qword ptr [rax + 0x118]
00000001405a91a8 call     qword ptr [rip + 0xdb14a]
00000001405a91ae mov      rax, qword ptr [rsi + 0x20]
00000001405a91b2 mov      r14d, 0xf4
00000001405a91b8 mov      edx, r14d
00000001405a91bb mov      rcx, rdi
00000001405a91be call     qword ptr [rip + 0xdb134]
00000001405a91c4 mov      r9d, 0x186000f4
00000001405a91ca lea      r8, [rip + 0xbefff]
00000001405a91d1 btr      eax, 0x11
00000001405a91d5 mov      edx, r13d
00000001405a91d8 bts      eax, 0x10
00000001405a91dc mov      dword ptr [rbp + 0x30], eax
00000001405a91df mov      rax, qword ptr [rdi + 0x18]
00000001405a91e3 mov      rcx, qword ptr [rdi + 8]
00000001405a91e7 mov      rax, qword ptr [rax + 0x118]
00000001405a91ee call     qword ptr [rip + 0xdb104]
00000001405a91f4 mov      rax, qword ptr [rsi + 0x28]
00000001405a91f8 mov      edx, r14d
00000001405a91fb mov      r8d, dword ptr [rbp + 0x30]
00000001405a91ff mov      rcx, rdi
00000001405a9202 call     qword ptr [rip + 0xdb0f0]
00000001405a9208 mov      rax, qword ptr [rsi + 0x20]
00000001405a920c mov      ebx, 0x58
00000001405a9211 mov      edx, ebx
00000001405a9213 mov      rcx, rdi
00000001405a9216 call     qword ptr [rip + 0xdb0dc]
00000001405a921c mov      r9d, 0x18600058
00000001405a9222 lea      r8, [rip + 0xd63f7]
00000001405a9229 and      eax, 0xffffffd2
00000001405a922c mov      edx, r13d
00000001405a922f or       eax, 0xd2
00000001405a9234 mov      dword ptr [rbp + 0x30], eax
00000001405a9237 mov      rax, qword ptr [rdi + 0x18]
00000001405a923b mov      rcx, qword ptr [rdi + 8]
00000001405a923f mov      rax, qword ptr [rax + 0x118]
00000001405a9246 call     qword ptr [rip + 0xdb0ac]
00000001405a924c mov      eax, dword ptr [rbp + 0x30]
00000001405a924f lea      r8, [rip + 0xd63fa]
00000001405a9256 and      eax, 0xffd2ffff
00000001405a925b mov      r9d, 0x18600058
00000001405a9261 or       eax, 0xd20000
00000001405a9266 mov      edx, r13d
00000001405a9269 mov      dword ptr [rbp + 0x30], eax
00000001405a926c mov      rax, qword ptr [rdi + 0x18]
00000001405a9270 mov      rcx, qword ptr [rdi + 8]
00000001405a9274 mov      rax, qword ptr [rax + 0x118]
00000001405a927b call     qword ptr [rip + 0xdb077]
00000001405a9281 mov      rax, qword ptr [rsi + 0x28]
00000001405a9285 mov      edx, ebx
00000001405a9287 mov      r8d, dword ptr [rbp + 0x30]
00000001405a928b mov      rcx, rdi
00000001405a928e call     qword ptr [rip + 0xdb064]
00000001405a9294 mov      r14d, 0x500
00000001405a929a lea      r9d, [rbx - 0x56]
00000001405a929e mov      edx, r14d
00000001405a92a1 lea      r8, [rbp + 0x30]
00000001405a92a5 mov      rcx, rdi
00000001405a92a8 call     0x1403695ac
00000001405a92ad test     eax, eax
00000001405a92af jne      0x1405ab47c
00000001405a92b5 mov      eax, dword ptr [rbp + 0x30]
00000001405a92b8 lea      r8, [rip + 0xd5fa1]
00000001405a92bf and      eax, 0xff22ffff
00000001405a92c4 mov      r9d, 0x18006500
00000001405a92ca or       eax, 0x220000
00000001405a92cf mov      edx, r13d
00000001405a92d2 mov      dword ptr [rbp + 0x30], eax
00000001405a92d5 mov      rax, qword ptr [rdi + 0x18]
00000001405a92d9 mov      rcx, qword ptr [rdi + 8]
00000001405a92dd mov      rax, qword ptr [rax + 0x118]
00000001405a92e4 call     qword ptr [rip + 0xdb00e]
00000001405a92ea mov      r8d, dword ptr [rbp + 0x30]
00000001405a92ee lea      r9d, [rbx - 0x56]
00000001405a92f2 mov      edx, r14d
00000001405a92f5 mov      rcx, rdi
00000001405a92f8 call     0x1403695cc
00000001405a92fd test     eax, eax
00000001405a92ff jne      0x1405ab47c
00000001405a9305 mov      rax, qword ptr [rdi + 0x18]
00000001405a9309 lea      r8, [rip + 0xd65e0]
00000001405a9310 mov      rcx, qword ptr [rdi + 8]
00000001405a9314 mov      edx, r13d
00000001405a9317 mov      rax, qword ptr [rax + 0x118]
00000001405a931e call     qword ptr [rip + 0xdafd4]
00000001405a9324 lea      rdx, [rip + 0x7255ad]
00000001405a932b jmp      0x1405aba72
00000001405a9330 mov      rax, qword ptr [rdi + 0x18]
00000001405a9334 lea      r8, [rip + 0xd6525]
00000001405a933b mov      rcx, qword ptr [rdi + 8]
00000001405a933f mov      edx, r13d
00000001405a9342 mov      rax, qword ptr [rax + 0x118]
00000001405a9349 call     qword ptr [rip + 0xdafa9]
00000001405a934f mov      rax, qword ptr [rsi + 0x20]
00000001405a9353 mov      r14d, 0xf4
00000001405a9359 mov      edx, r14d
00000001405a935c mov      rcx, rdi
00000001405a935f call     qword ptr [rip + 0xdaf93]
00000001405a9365 mov      r9d, 0x186000f4
00000001405a936b lea      r8, [rip + 0xbee5e]
00000001405a9372 btr      eax, 0x11
00000001405a9376 mov      edx, r13d
00000001405a9379 bts      eax, 0x10
00000001405a937d mov      dword ptr [rbp + 0x30], eax
00000001405a9380 mov      rax, qword ptr [rdi + 0x18]
00000001405a9384 mov      rcx, qword ptr [rdi + 8]
00000001405a9388 mov      rax, qword ptr [rax + 0x118]
00000001405a938f call     qword ptr [rip + 0xdaf63]
00000001405a9395 mov      rax, qword ptr [rsi + 0x28]
00000001405a9399 mov      edx, r14d
00000001405a939c mov      r8d, dword ptr [rbp + 0x30]
00000001405a93a0 mov      rcx, rdi
00000001405a93a3 call     qword ptr [rip + 0xdaf4f]
00000001405a93a9 mov      rax, qword ptr [rsi + 0x20]
00000001405a93ad mov      ebx, 0x58
00000001405a93b2 mov      edx, ebx
00000001405a93b4 mov      rcx, rdi
00000001405a93b7 call     qword ptr [rip + 0xdaf3b]
00000001405a93bd mov      r9d, 0x18600058
00000001405a93c3 lea      r8, [rip + 0xd6256]
00000001405a93ca and      eax, 0xffffffd2
00000001405a93cd mov      edx, r13d
00000001405a93d0 or       eax, 0xd2
00000001405a93d5 mov      dword ptr [rbp + 0x30], eax
00000001405a93d8 mov      rax, qword ptr [rdi + 0x18]
00000001405a93dc mov      rcx, qword ptr [rdi + 8]
00000001405a93e0 mov      rax, qword ptr [rax + 0x118]
00000001405a93e7 call     qword ptr [rip + 0xdaf0b]
00000001405a93ed mov      eax, dword ptr [rbp + 0x30]
00000001405a93f0 lea      r8, [rip + 0xd6259]
00000001405a93f7 and      eax, 0xffd2ffff
00000001405a93fc mov      r9d, 0x18600058
00000001405a9402 or       eax, 0xd20000
00000001405a9407 mov      edx, r13d
00000001405a940a mov      dword ptr [rbp + 0x30], eax
00000001405a940d mov      rax, qword ptr [rdi + 0x18]
00000001405a9411 mov      rcx, qword ptr [rdi + 8]
00000001405a9415 mov      rax, qword ptr [rax + 0x118]
00000001405a941c call     qword ptr [rip + 0xdaed6]
00000001405a9422 mov      rax, qword ptr [rsi + 0x28]
00000001405a9426 mov      edx, ebx
00000001405a9428 mov      r8d, dword ptr [rbp + 0x30]
00000001405a942c mov      rcx, rdi
00000001405a942f call     qword ptr [rip + 0xdaec3]
00000001405a9435 mov      r14d, 0x500
00000001405a943b lea      r9d, [rbx - 0x56]
00000001405a943f mov      edx, r14d
00000001405a9442 lea      r8, [rbp + 0x30]
00000001405a9446 mov      rcx, rdi
00000001405a9449 call     0x1403695ac
00000001405a944e test     eax, eax
00000001405a9450 jne      0x1405ab47c
00000001405a9456 mov      eax, dword ptr [rbp + 0x30]
00000001405a9459 lea      r8, [rip + 0xd5da0]
00000001405a9460 btr      eax, 0x16
00000001405a9464 mov      r9d, 0x18006500
00000001405a946a or       eax, 0xa00000
00000001405a946f mov      edx, r13d
00000001405a9472 mov      dword ptr [rbp + 0x30], eax
00000001405a9475 mov      rax, qword ptr [rdi + 0x18]
00000001405a9479 mov      rcx, qword ptr [rdi + 8]
00000001405a947d mov      rax, qword ptr [rax + 0x118]
00000001405a9484 call     qword ptr [rip + 0xdae6e]
00000001405a948a mov      r8d, dword ptr [rbp + 0x30]
00000001405a948e lea      r9d, [rbx - 0x56]
00000001405a9492 mov      edx, r14d
00000001405a9495 mov      rcx, rdi
00000001405a9498 call     0x1403695cc
00000001405a949d test     eax, eax
00000001405a949f jne      0x1405ab47c
00000001405a94a5 mov      rax, qword ptr [rdi + 0x18]
00000001405a94a9 lea      r8, [rip + 0xd63e0]
00000001405a94b0 mov      rcx, qword ptr [rdi + 8]
00000001405a94b4 mov      edx, r13d
00000001405a94b7 mov      rax, qword ptr [rax + 0x118]
00000001405a94be call     qword ptr [rip + 0xdae34]
00000001405a94c4 lea      rdx, [rip + 0x7253fd]
00000001405a94cb jmp      0x1405aba72
00000001405a94d0 mov      rax, qword ptr [rdi + 0x18]
00000001405a94d4 lea      r8, [rip + 0xc3765]
00000001405a94db mov      rcx, qword ptr [rdi + 8]
00000001405a94df mov      edx, r13d
00000001405a94e2 mov      rax, qword ptr [rax + 0x118]
00000001405a94e9 call     qword ptr [rip + 0xdae09]
00000001405a94ef mov      rax, qword ptr [rsi + 0x20]
00000001405a94f3 mov      r14d, 0xf4
00000001405a94f9 mov      edx, r14d
00000001405a94fc mov      rcx, rdi
00000001405a94ff call     qword ptr [rip + 0xdadf3]
00000001405a9505 mov      r9d, 0x186000f4
00000001405a950b lea      r8, [rip + 0xbecbe]
00000001405a9512 btr      eax, 0x11
00000001405a9516 mov      edx, r13d
00000001405a9519 bts      eax, 0x10
00000001405a951d mov      dword ptr [rbp + 0x30], eax
00000001405a9520 mov      rax, qword ptr [rdi + 0x18]
00000001405a9524 mov      rcx, qword ptr [rdi + 8]
00000001405a9528 mov      rax, qword ptr [rax + 0x118]
00000001405a952f call     qword ptr [rip + 0xdadc3]
00000001405a9535 mov      rax, qword ptr [rsi + 0x28]
00000001405a9539 mov      edx, r14d
00000001405a953c mov      r8d, dword ptr [rbp + 0x30]
00000001405a9540 mov      rcx, rdi
00000001405a9543 call     qword ptr [rip + 0xdadaf]
00000001405a9549 mov      rax, qword ptr [rsi]
00000001405a954c mov      ebx, 0x58
00000001405a9551 mov      edx, ebx
00000001405a9553 mov      rcx, rdi
00000001405a9556 call     qword ptr [rip + 0xdad9c]
00000001405a955c mov      rax, qword ptr [rdi + 0x18]
00000001405a9560 lea      r8, [rip + 0xc3649]
00000001405a9567 mov      rcx, qword ptr [rdi + 8]
00000001405a956b mov      r9d, 0x18600058
00000001405a9571 mov      edx, r13d
00000001405a9574 mov      rax, qword ptr [rax + 0x118]
00000001405a957b call     qword ptr [rip + 0xdad77]
00000001405a9581 mov      rax, qword ptr [rsi + 8]
00000001405a9585 mov      r8b, 0x80
00000001405a9588 mov      edx, ebx
00000001405a958a mov      rcx, rdi
00000001405a958d call     qword ptr [rip + 0xdad65]
00000001405a9593 mov      rax, qword ptr [rsi + 0x10]
00000001405a9597 mov      r15d, 0x8864
00000001405a959d mov      edx, r15d
00000001405a95a0 mov      rcx, rdi
00000001405a95a3 call     qword ptr [rip + 0xdad4f]
00000001405a95a9 mov      rcx, qword ptr [rdi + 8]
00000001405a95ad lea      r8, [rip + 0xc36bc]
00000001405a95b4 movzx    ebx, ax
00000001405a95b7 mov      r9d, 0x18608864
00000001405a95bd mov      eax, 0xf1ff
00000001405a95c2 mov      edx, r13d
00000001405a95c5 and      bx, ax
00000001405a95c8 lea      eax, [r14 + 0xc]
00000001405a95cc or       bx, ax
00000001405a95cf mov      rax, qword ptr [rdi + 0x18]
00000001405a95d3 mov      rax, qword ptr [rax + 0x118]
00000001405a95da call     qword ptr [rip + 0xdad18]
00000001405a95e0 mov      rax, qword ptr [rsi + 0x18]
00000001405a95e4 movzx    r8d, bx
00000001405a95e8 mov      edx, r15d
00000001405a95eb mov      rcx, rdi
00000001405a95ee call     qword ptr [rip + 0xdad04]
00000001405a95f4 mov      rax, qword ptr [rdi + 0x18]
00000001405a95f8 lea      r8, [rip + 0xc36a1]
00000001405a95ff mov      rcx, qword ptr [rdi + 8]
00000001405a9603 mov      edx, r13d
00000001405a9606 mov      rax, qword ptr [rax + 0x118]
00000001405a960d call     qword ptr [rip + 0xdace5]
00000001405a9613 mov      r9b, r13b
00000001405a9616 lea      rdx, [rip + 0x7252fb]
00000001405a961d jmp      0x1405aba75
00000001405a9622 mov      eax, 0xc5
00000001405a9627 cmp      ebx, eax
00000001405a9629 ja       0x1405aa6ce
00000001405a962f je       0x1405aa5dd
00000001405a9635 mov      eax, 0xbf
00000001405a963a cmp      ebx, eax
00000001405a963c ja       0x1405a9f57
00000001405a9642 je       0x1405a9e69
00000001405a9648 sub      ebx, 0xb9
00000001405a964e je       0x1405a9d16
00000001405a9654 sub      ebx, r13d
00000001405a9657 je       0x1405a9bc3
00000001405a965d sub      ebx, r13d
00000001405a9660 je       0x1405a9a73
00000001405a9666 sub      ebx, r13d
00000001405a9669 je       0x1405a9921
00000001405a966f sub      ebx, r13d
00000001405a9672 je       0x1405a97d1
00000001405a9678 cmp      ebx, r13d
00000001405a967b jne      0x1405ab45d
00000001405a9681 mov      rax, qword ptr [rdi + 0x18]
00000001405a9685 lea      r8, [rip + 0xc3914]
00000001405a968c mov      rcx, qword ptr [rdi + 8]
00000001405a9690 mov      edx, r13d
00000001405a9693 mov      rax, qword ptr [rax + 0x118]
00000001405a969a call     qword ptr [rip + 0xdac58]
00000001405a96a0 mov      rax, qword ptr [rsi + 0x20]
00000001405a96a4 mov      r14d, 0xf4
00000001405a96aa mov      edx, r14d
00000001405a96ad mov      rcx, rdi
00000001405a96b0 call     qword ptr [rip + 0xdac42]
00000001405a96b6 mov      r9d, 0x186000f4
00000001405a96bc lea      r8, [rip + 0xbeb0d]
00000001405a96c3 btr      eax, 0x11
00000001405a96c7 mov      edx, r13d
00000001405a96ca bts      eax, 0x10
00000001405a96ce mov      dword ptr [rbp + 0x30], eax
00000001405a96d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a96d5 mov      rcx, qword ptr [rdi + 8]
00000001405a96d9 mov      rax, qword ptr [rax + 0x118]
00000001405a96e0 call     qword ptr [rip + 0xdac12]
00000001405a96e6 mov      rax, qword ptr [rsi + 0x28]
00000001405a96ea mov      edx, r14d
00000001405a96ed mov      r8d, dword ptr [rbp + 0x30]
00000001405a96f1 mov      rcx, rdi
00000001405a96f4 call     qword ptr [rip + 0xdabfe]
00000001405a96fa mov      rax, qword ptr [rsi]
00000001405a96fd mov      ebx, 0x58
00000001405a9702 mov      edx, ebx
00000001405a9704 mov      rcx, rdi
00000001405a9707 call     qword ptr [rip + 0xdabeb]
00000001405a970d mov      rax, qword ptr [rdi + 0x18]
00000001405a9711 lea      r8, [rip + 0xc3498]
00000001405a9718 mov      rcx, qword ptr [rdi + 8]
00000001405a971c mov      r9d, 0x18600058
00000001405a9722 mov      edx, r13d
00000001405a9725 mov      rax, qword ptr [rax + 0x118]
00000001405a972c call     qword ptr [rip + 0xdabc6]
00000001405a9732 mov      rax, qword ptr [rsi + 8]
00000001405a9736 mov      r8b, 0x80
00000001405a9739 mov      edx, ebx
00000001405a973b mov      rcx, rdi
00000001405a973e call     qword ptr [rip + 0xdabb4]
00000001405a9744 mov      rax, qword ptr [rsi + 0x10]
00000001405a9748 mov      r15d, 0x8864
00000001405a974e mov      edx, r15d
00000001405a9751 mov      rcx, rdi
00000001405a9754 call     qword ptr [rip + 0xdab9e]
00000001405a975a mov      rcx, qword ptr [rdi + 8]
00000001405a975e lea      r8, [rip + 0xc386b]
00000001405a9765 movzx    ebx, ax
00000001405a9768 mov      r9d, 0x18608864
00000001405a976e mov      eax, 0xf7ff
00000001405a9773 mov      edx, r13d
00000001405a9776 and      bx, ax
00000001405a9779 mov      eax, 0x700
00000001405a977e or       bx, ax
00000001405a9781 mov      rax, qword ptr [rdi + 0x18]
00000001405a9785 mov      rax, qword ptr [rax + 0x118]
00000001405a978c call     qword ptr [rip + 0xdab66]
00000001405a9792 mov      rax, qword ptr [rsi + 0x18]
00000001405a9796 movzx    r8d, bx
00000001405a979a mov      edx, r15d
00000001405a979d mov      rcx, rdi
00000001405a97a0 call     qword ptr [rip + 0xdab52]
00000001405a97a6 mov      rax, qword ptr [rdi + 0x18]
00000001405a97aa lea      r8, [rip + 0xc384f]
00000001405a97b1 mov      rcx, qword ptr [rdi + 8]
00000001405a97b5 mov      edx, r13d
00000001405a97b8 mov      rax, qword ptr [rax + 0x118]
00000001405a97bf call     qword ptr [rip + 0xdab33]
00000001405a97c5 lea      rdx, [rip + 0x7251ac]
00000001405a97cc jmp      0x1405aba72
00000001405a97d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a97d5 lea      r8, [rip + 0xc3734]
00000001405a97dc mov      rcx, qword ptr [rdi + 8]
00000001405a97e0 mov      edx, r13d
00000001405a97e3 mov      rax, qword ptr [rax + 0x118]
00000001405a97ea call     qword ptr [rip + 0xdab08]
00000001405a97f0 mov      rax, qword ptr [rsi + 0x20]
00000001405a97f4 mov      r14d, 0xf4
00000001405a97fa mov      edx, r14d
00000001405a97fd mov      rcx, rdi
00000001405a9800 call     qword ptr [rip + 0xdaaf2]
00000001405a9806 mov      r9d, 0x186000f4
00000001405a980c lea      r8, [rip + 0xbe9bd]
00000001405a9813 btr      eax, 0x11
00000001405a9817 mov      edx, r13d
00000001405a981a bts      eax, 0x10
00000001405a981e mov      dword ptr [rbp + 0x30], eax
00000001405a9821 mov      rax, qword ptr [rdi + 0x18]
00000001405a9825 mov      rcx, qword ptr [rdi + 8]
00000001405a9829 mov      rax, qword ptr [rax + 0x118]
00000001405a9830 call     qword ptr [rip + 0xdaac2]
00000001405a9836 mov      rax, qword ptr [rsi + 0x28]
00000001405a983a mov      edx, r14d
00000001405a983d mov      r8d, dword ptr [rbp + 0x30]
00000001405a9841 mov      rcx, rdi
00000001405a9844 call     qword ptr [rip + 0xdaaae]
00000001405a984a mov      rax, qword ptr [rsi]
00000001405a984d mov      ebx, 0x58
00000001405a9852 mov      edx, ebx
00000001405a9854 mov      rcx, rdi
00000001405a9857 call     qword ptr [rip + 0xdaa9b]
00000001405a985d mov      rax, qword ptr [rdi + 0x18]
00000001405a9861 lea      r8, [rip + 0xc3348]
00000001405a9868 mov      rcx, qword ptr [rdi + 8]
00000001405a986c mov      r9d, 0x18600058
00000001405a9872 mov      edx, r13d
00000001405a9875 mov      rax, qword ptr [rax + 0x118]
00000001405a987c call     qword ptr [rip + 0xdaa76]
00000001405a9882 mov      rax, qword ptr [rsi + 8]
00000001405a9886 mov      r8b, 0x80
00000001405a9889 mov      edx, ebx
00000001405a988b mov      rcx, rdi
00000001405a988e call     qword ptr [rip + 0xdaa64]
00000001405a9894 mov      rax, qword ptr [rsi + 0x10]
00000001405a9898 mov      r15d, 0x8864
00000001405a989e mov      edx, r15d
00000001405a98a1 mov      rcx, rdi
00000001405a98a4 call     qword ptr [rip + 0xdaa4e]
00000001405a98aa mov      rcx, qword ptr [rdi + 8]
00000001405a98ae lea      r8, [rip + 0xc368b]
00000001405a98b5 movzx    ebx, ax
00000001405a98b8 mov      r9d, 0x18608864
00000001405a98be mov      eax, 0xf6ff
00000001405a98c3 mov      edx, r13d
00000001405a98c6 and      bx, ax
00000001405a98c9 mov      eax, 0x600
00000001405a98ce or       bx, ax
00000001405a98d1 mov      rax, qword ptr [rdi + 0x18]
00000001405a98d5 mov      rax, qword ptr [rax + 0x118]
00000001405a98dc call     qword ptr [rip + 0xdaa16]
00000001405a98e2 mov      rax, qword ptr [rsi + 0x18]
00000001405a98e6 movzx    r8d, bx
00000001405a98ea mov      edx, r15d
00000001405a98ed mov      rcx, rdi
00000001405a98f0 call     qword ptr [rip + 0xdaa02]
00000001405a98f6 mov      rax, qword ptr [rdi + 0x18]
00000001405a98fa lea      r8, [rip + 0xc366f]
00000001405a9901 mov      rcx, qword ptr [rdi + 8]
00000001405a9905 mov      edx, r13d
00000001405a9908 mov      rax, qword ptr [rax + 0x118]
00000001405a990f call     qword ptr [rip + 0xda9e3]
00000001405a9915 lea      rdx, [rip + 0x72504c]
00000001405a991c jmp      0x1405aba72
00000001405a9921 mov      rax, qword ptr [rdi + 0x18]
00000001405a9925 lea      r8, [rip + 0xc3554]
00000001405a992c mov      rcx, qword ptr [rdi + 8]
00000001405a9930 mov      edx, r13d
00000001405a9933 mov      rax, qword ptr [rax + 0x118]
00000001405a993a call     qword ptr [rip + 0xda9b8]
00000001405a9940 mov      rax, qword ptr [rsi + 0x20]
00000001405a9944 mov      r14d, 0xf4
00000001405a994a mov      edx, r14d
00000001405a994d mov      rcx, rdi
00000001405a9950 call     qword ptr [rip + 0xda9a2]
00000001405a9956 mov      r9d, 0x186000f4
00000001405a995c lea      r8, [rip + 0xbe86d]
00000001405a9963 btr      eax, 0x11
00000001405a9967 mov      edx, r13d
00000001405a996a bts      eax, 0x10
00000001405a996e mov      dword ptr [rbp + 0x30], eax
00000001405a9971 mov      rax, qword ptr [rdi + 0x18]
00000001405a9975 mov      rcx, qword ptr [rdi + 8]
00000001405a9979 mov      rax, qword ptr [rax + 0x118]
00000001405a9980 call     qword ptr [rip + 0xda972]
00000001405a9986 mov      rax, qword ptr [rsi + 0x28]
00000001405a998a mov      edx, r14d
00000001405a998d mov      r8d, dword ptr [rbp + 0x30]
00000001405a9991 mov      rcx, rdi
00000001405a9994 call     qword ptr [rip + 0xda95e]
00000001405a999a mov      rax, qword ptr [rsi]
00000001405a999d mov      ebx, 0x58
00000001405a99a2 mov      edx, ebx
00000001405a99a4 mov      rcx, rdi
00000001405a99a7 call     qword ptr [rip + 0xda94b]
00000001405a99ad mov      rax, qword ptr [rdi + 0x18]
00000001405a99b1 lea      r8, [rip + 0xc31f8]
00000001405a99b8 mov      rcx, qword ptr [rdi + 8]
00000001405a99bc mov      r9d, 0x18600058
00000001405a99c2 mov      edx, r13d
00000001405a99c5 mov      rax, qword ptr [rax + 0x118]
00000001405a99cc call     qword ptr [rip + 0xda926]
00000001405a99d2 mov      rax, qword ptr [rsi + 8]
00000001405a99d6 mov      r8b, 0x80
00000001405a99d9 mov      edx, ebx
00000001405a99db mov      rcx, rdi
00000001405a99de call     qword ptr [rip + 0xda914]
00000001405a99e4 mov      rax, qword ptr [rsi + 0x10]
00000001405a99e8 mov      r15d, 0x8864
00000001405a99ee mov      edx, r15d
00000001405a99f1 mov      rcx, rdi
00000001405a99f4 call     qword ptr [rip + 0xda8fe]
00000001405a99fa mov      rcx, qword ptr [rdi + 8]
00000001405a99fe lea      r8, [rip + 0xc34ab]
00000001405a9a05 movzx    ebx, ax
00000001405a9a08 mov      r14d, 0x500
00000001405a9a0e mov      eax, 0xf5ff
00000001405a9a13 mov      r9d, 0x18608864
00000001405a9a19 and      bx, ax
00000001405a9a1c mov      edx, r13d
00000001405a9a1f mov      rax, qword ptr [rdi + 0x18]
00000001405a9a23 or       bx, r14w
00000001405a9a27 mov      rax, qword ptr [rax + 0x118]
00000001405a9a2e call     qword ptr [rip + 0xda8c4]
00000001405a9a34 mov      rax, qword ptr [rsi + 0x18]
00000001405a9a38 movzx    r8d, bx
00000001405a9a3c mov      edx, r15d
00000001405a9a3f mov      rcx, rdi
00000001405a9a42 call     qword ptr [rip + 0xda8b0]
00000001405a9a48 mov      rax, qword ptr [rdi + 0x18]
00000001405a9a4c lea      r8, [rip + 0xc348d]
00000001405a9a53 mov      rcx, qword ptr [rdi + 8]
00000001405a9a57 mov      edx, r13d
00000001405a9a5a mov      rax, qword ptr [rax + 0x118]
00000001405a9a61 call     qword ptr [rip + 0xda891]
00000001405a9a67 lea      rdx, [rip + 0x724eea]
00000001405a9a6e jmp      0x1405aba72
00000001405a9a73 mov      rax, qword ptr [rdi + 0x18]
00000001405a9a77 lea      r8, [rip + 0xc3372]
00000001405a9a7e mov      rcx, qword ptr [rdi + 8]
00000001405a9a82 mov      edx, r13d
00000001405a9a85 mov      rax, qword ptr [rax + 0x118]
00000001405a9a8c call     qword ptr [rip + 0xda866]
00000001405a9a92 mov      rax, qword ptr [rsi + 0x20]
00000001405a9a96 mov      r14d, 0xf4
00000001405a9a9c mov      edx, r14d
00000001405a9a9f mov      rcx, rdi
00000001405a9aa2 call     qword ptr [rip + 0xda850]
00000001405a9aa8 mov      r9d, 0x186000f4
00000001405a9aae lea      r8, [rip + 0xbe71b]
00000001405a9ab5 btr      eax, 0x11
00000001405a9ab9 mov      edx, r13d
00000001405a9abc bts      eax, 0x10
00000001405a9ac0 mov      dword ptr [rbp + 0x30], eax
00000001405a9ac3 mov      rax, qword ptr [rdi + 0x18]
00000001405a9ac7 mov      rcx, qword ptr [rdi + 8]
00000001405a9acb mov      rax, qword ptr [rax + 0x118]
00000001405a9ad2 call     qword ptr [rip + 0xda820]
00000001405a9ad8 mov      rax, qword ptr [rsi + 0x28]
00000001405a9adc mov      edx, r14d
00000001405a9adf mov      r8d, dword ptr [rbp + 0x30]
00000001405a9ae3 mov      rcx, rdi
00000001405a9ae6 call     qword ptr [rip + 0xda80c]
00000001405a9aec mov      rax, qword ptr [rsi]
00000001405a9aef mov      ebx, 0x58
00000001405a9af4 mov      edx, ebx
00000001405a9af6 mov      rcx, rdi
00000001405a9af9 call     qword ptr [rip + 0xda7f9]
00000001405a9aff mov      rax, qword ptr [rdi + 0x18]
00000001405a9b03 lea      r8, [rip + 0xc30a6]
00000001405a9b0a mov      rcx, qword ptr [rdi + 8]
00000001405a9b0e mov      r9d, 0x18600058
00000001405a9b14 mov      edx, r13d
00000001405a9b17 mov      rax, qword ptr [rax + 0x118]
00000001405a9b1e call     qword ptr [rip + 0xda7d4]
00000001405a9b24 mov      rax, qword ptr [rsi + 8]
00000001405a9b28 mov      r8b, 0x80
00000001405a9b2b mov      edx, ebx
00000001405a9b2d mov      rcx, rdi
00000001405a9b30 call     qword ptr [rip + 0xda7c2]
00000001405a9b36 mov      rax, qword ptr [rsi + 0x10]
00000001405a9b3a mov      r15d, 0x8864
00000001405a9b40 mov      edx, r15d
00000001405a9b43 mov      rcx, rdi
00000001405a9b46 call     qword ptr [rip + 0xda7ac]
00000001405a9b4c mov      rcx, qword ptr [rdi + 8]
00000001405a9b50 lea      r8, [rip + 0xc32c9]
00000001405a9b57 movzx    ebx, ax
00000001405a9b5a mov      r9d, 0x18608864
00000001405a9b60 mov      eax, 0xf4ff
00000001405a9b65 mov      edx, r13d
00000001405a9b68 and      bx, ax
00000001405a9b6b mov      eax, 0x400
00000001405a9b70 or       bx, ax
00000001405a9b73 mov      rax, qword ptr [rdi + 0x18]
00000001405a9b77 mov      rax, qword ptr [rax + 0x118]
00000001405a9b7e call     qword ptr [rip + 0xda774]
00000001405a9b84 mov      rax, qword ptr [rsi + 0x18]
00000001405a9b88 movzx    r8d, bx
00000001405a9b8c mov      edx, r15d
00000001405a9b8f mov      rcx, rdi
00000001405a9b92 call     qword ptr [rip + 0xda760]
00000001405a9b98 mov      rax, qword ptr [rdi + 0x18]
00000001405a9b9c lea      r8, [rip + 0xc32ad]
00000001405a9ba3 mov      rcx, qword ptr [rdi + 8]
00000001405a9ba7 mov      edx, r13d
00000001405a9baa mov      rax, qword ptr [rax + 0x118]
00000001405a9bb1 call     qword ptr [rip + 0xda741]
00000001405a9bb7 lea      rdx, [rip + 0x724d8a]
00000001405a9bbe jmp      0x1405aba72
00000001405a9bc3 mov      rax, qword ptr [rdi + 0x18]
00000001405a9bc7 lea      r8, [rip + 0xc3192]
00000001405a9bce mov      rcx, qword ptr [rdi + 8]
00000001405a9bd2 mov      edx, r13d
00000001405a9bd5 mov      rax, qword ptr [rax + 0x118]
00000001405a9bdc call     qword ptr [rip + 0xda716]
00000001405a9be2 mov      rax, qword ptr [rsi + 0x20]
00000001405a9be6 mov      r14d, 0xf4
00000001405a9bec mov      edx, r14d
00000001405a9bef mov      rcx, rdi
00000001405a9bf2 call     qword ptr [rip + 0xda700]
00000001405a9bf8 mov      r9d, 0x186000f4
00000001405a9bfe lea      r8, [rip + 0xbe5cb]
00000001405a9c05 btr      eax, 0x11
00000001405a9c09 mov      edx, r13d
00000001405a9c0c bts      eax, 0x10
00000001405a9c10 mov      dword ptr [rbp + 0x30], eax
00000001405a9c13 mov      rax, qword ptr [rdi + 0x18]
00000001405a9c17 mov      rcx, qword ptr [rdi + 8]
00000001405a9c1b mov      rax, qword ptr [rax + 0x118]
00000001405a9c22 call     qword ptr [rip + 0xda6d0]
00000001405a9c28 mov      rax, qword ptr [rsi + 0x28]
00000001405a9c2c mov      edx, r14d
00000001405a9c2f mov      r8d, dword ptr [rbp + 0x30]
00000001405a9c33 mov      rcx, rdi
00000001405a9c36 call     qword ptr [rip + 0xda6bc]
00000001405a9c3c mov      rax, qword ptr [rsi]
00000001405a9c3f mov      ebx, 0x58
00000001405a9c44 mov      edx, ebx
00000001405a9c46 mov      rcx, rdi
00000001405a9c49 call     qword ptr [rip + 0xda6a9]
00000001405a9c4f mov      rax, qword ptr [rdi + 0x18]
00000001405a9c53 lea      r8, [rip + 0xc2f56]
00000001405a9c5a mov      rcx, qword ptr [rdi + 8]
00000001405a9c5e mov      r9d, 0x18600058
00000001405a9c64 mov      edx, r13d
00000001405a9c67 mov      rax, qword ptr [rax + 0x118]
00000001405a9c6e call     qword ptr [rip + 0xda684]
00000001405a9c74 mov      rax, qword ptr [rsi + 8]
00000001405a9c78 mov      r8b, 0x80
00000001405a9c7b mov      edx, ebx
00000001405a9c7d mov      rcx, rdi
00000001405a9c80 call     qword ptr [rip + 0xda672]
00000001405a9c86 mov      rax, qword ptr [rsi + 0x10]
00000001405a9c8a mov      r15d, 0x8864
00000001405a9c90 mov      edx, r15d
00000001405a9c93 mov      rcx, rdi
00000001405a9c96 call     qword ptr [rip + 0xda65c]
00000001405a9c9c mov      rcx, qword ptr [rdi + 8]
00000001405a9ca0 lea      r8, [rip + 0xc30e9]
00000001405a9ca7 movzx    ebx, ax
00000001405a9caa mov      r9d, 0x18608864
00000001405a9cb0 mov      eax, 0xf3ff
00000001405a9cb5 mov      edx, r13d
00000001405a9cb8 and      bx, ax
00000001405a9cbb mov      eax, 0x300
00000001405a9cc0 or       bx, ax
00000001405a9cc3 mov      rax, qword ptr [rdi + 0x18]
00000001405a9cc7 mov      rax, qword ptr [rax + 0x118]
00000001405a9cce call     qword ptr [rip + 0xda624]
00000001405a9cd4 mov      rax, qword ptr [rsi + 0x18]
00000001405a9cd8 movzx    r8d, bx
00000001405a9cdc mov      edx, r15d
00000001405a9cdf mov      rcx, rdi
00000001405a9ce2 call     qword ptr [rip + 0xda610]
00000001405a9ce8 mov      rax, qword ptr [rdi + 0x18]
00000001405a9cec lea      r8, [rip + 0xc30cd]
00000001405a9cf3 mov      rcx, qword ptr [rdi + 8]
00000001405a9cf7 mov      edx, r13d
00000001405a9cfa mov      rax, qword ptr [rax + 0x118]
00000001405a9d01 call     qword ptr [rip + 0xda5f1]
00000001405a9d07 mov      r9b, r13b
00000001405a9d0a lea      rdx, [rip + 0x724c27]
00000001405a9d11 jmp      0x1405aba75
00000001405a9d16 mov      rax, qword ptr [rdi + 0x18]
00000001405a9d1a lea      r8, [rip + 0xc2faf]
00000001405a9d21 mov      rcx, qword ptr [rdi + 8]
00000001405a9d25 mov      edx, r13d
00000001405a9d28 mov      rax, qword ptr [rax + 0x118]
00000001405a9d2f call     qword ptr [rip + 0xda5c3]
00000001405a9d35 mov      rax, qword ptr [rsi + 0x20]
00000001405a9d39 mov      r14d, 0xf4
00000001405a9d3f mov      edx, r14d
00000001405a9d42 mov      rcx, rdi
00000001405a9d45 call     qword ptr [rip + 0xda5ad]
00000001405a9d4b mov      r9d, 0x186000f4
00000001405a9d51 lea      r8, [rip + 0xbe478]
00000001405a9d58 btr      eax, 0x11
00000001405a9d5c mov      edx, r13d
00000001405a9d5f bts      eax, 0x10
00000001405a9d63 mov      dword ptr [rbp + 0x30], eax
00000001405a9d66 mov      rax, qword ptr [rdi + 0x18]
00000001405a9d6a mov      rcx, qword ptr [rdi + 8]
00000001405a9d6e mov      rax, qword ptr [rax + 0x118]
00000001405a9d75 call     qword ptr [rip + 0xda57d]
00000001405a9d7b mov      rax, qword ptr [rsi + 0x28]
00000001405a9d7f mov      edx, r14d
00000001405a9d82 mov      r8d, dword ptr [rbp + 0x30]
00000001405a9d86 mov      rcx, rdi
00000001405a9d89 call     qword ptr [rip + 0xda569]
00000001405a9d8f mov      rax, qword ptr [rsi]
00000001405a9d92 mov      ebx, 0x58
00000001405a9d97 mov      edx, ebx
00000001405a9d99 mov      rcx, rdi
00000001405a9d9c call     qword ptr [rip + 0xda556]
00000001405a9da2 mov      rax, qword ptr [rdi + 0x18]
00000001405a9da6 lea      r8, [rip + 0xc2e03]
00000001405a9dad mov      rcx, qword ptr [rdi + 8]
00000001405a9db1 mov      r9d, 0x18600058
00000001405a9db7 mov      edx, r13d
00000001405a9dba mov      rax, qword ptr [rax + 0x118]
00000001405a9dc1 call     qword ptr [rip + 0xda531]
00000001405a9dc7 mov      rax, qword ptr [rsi + 8]
00000001405a9dcb mov      r8b, 0x80
00000001405a9dce mov      edx, ebx
00000001405a9dd0 mov      rcx, rdi
00000001405a9dd3 call     qword ptr [rip + 0xda51f]
00000001405a9dd9 mov      rax, qword ptr [rsi + 0x10]
00000001405a9ddd mov      r15d, 0x8864
00000001405a9de3 mov      edx, r15d
00000001405a9de6 mov      rcx, rdi
00000001405a9de9 call     qword ptr [rip + 0xda509]
00000001405a9def mov      rcx, qword ptr [rdi + 8]
00000001405a9df3 lea      r8, [rip + 0xc2f06]
00000001405a9dfa movzx    ebx, ax
00000001405a9dfd mov      r9d, 0x18608864
00000001405a9e03 mov      eax, 0xf2ff
00000001405a9e08 mov      edx, r13d
00000001405a9e0b and      bx, ax
00000001405a9e0e mov      eax, 0x200
00000001405a9e13 or       bx, ax
00000001405a9e16 mov      rax, qword ptr [rdi + 0x18]
00000001405a9e1a mov      rax, qword ptr [rax + 0x118]
00000001405a9e21 call     qword ptr [rip + 0xda4d1]
00000001405a9e27 mov      rax, qword ptr [rsi + 0x18]
00000001405a9e2b movzx    r8d, bx
00000001405a9e2f mov      edx, r15d
00000001405a9e32 mov      rcx, rdi
00000001405a9e35 call     qword ptr [rip + 0xda4bd]
00000001405a9e3b mov      rax, qword ptr [rdi + 0x18]
00000001405a9e3f lea      r8, [rip + 0xc2eea]
00000001405a9e46 mov      rcx, qword ptr [rdi + 8]
00000001405a9e4a mov      edx, r13d
00000001405a9e4d mov      rax, qword ptr [rax + 0x118]
00000001405a9e54 call     qword ptr [rip + 0xda49e]
00000001405a9e5a mov      r9b, r13b
00000001405a9e5d lea      rdx, [rip + 0x724ac4]
00000001405a9e64 jmp      0x1405aba75
00000001405a9e69 mov      rax, qword ptr [rdi + 0x18]
00000001405a9e6d lea      r8, [rip + 0xc31bc]
00000001405a9e74 mov      rcx, qword ptr [rdi + 8]
00000001405a9e78 mov      edx, r13d
00000001405a9e7b mov      rax, qword ptr [rax + 0x118]
00000001405a9e82 call     qword ptr [rip + 0xda470]
00000001405a9e88 mov      rax, qword ptr [rsi + 0x20]
00000001405a9e8c mov      r14d, 0xf4
00000001405a9e92 mov      edx, r14d
00000001405a9e95 mov      rcx, rdi
00000001405a9e98 call     qword ptr [rip + 0xda45a]
00000001405a9e9e mov      r9d, 0x186000f4
00000001405a9ea4 lea      r8, [rip + 0xbe325]
00000001405a9eab btr      eax, 0x11
00000001405a9eaf mov      edx, r13d
00000001405a9eb2 bts      eax, 0x10
00000001405a9eb6 mov      dword ptr [rbp + 0x30], eax
00000001405a9eb9 mov      rax, qword ptr [rdi + 0x18]
00000001405a9ebd mov      rcx, qword ptr [rdi + 8]
00000001405a9ec1 mov      rax, qword ptr [rax + 0x118]
00000001405a9ec8 call     qword ptr [rip + 0xda42a]
00000001405a9ece mov      rax, qword ptr [rsi + 0x28]
00000001405a9ed2 mov      edx, r14d
00000001405a9ed5 mov      r8d, dword ptr [rbp + 0x30]
00000001405a9ed9 mov      rcx, rdi
00000001405a9edc call     qword ptr [rip + 0xda416]
00000001405a9ee2 mov      rax, qword ptr [rsi]
00000001405a9ee5 mov      ebx, 0x58
00000001405a9eea mov      edx, ebx
00000001405a9eec mov      rcx, rdi
00000001405a9eef call     qword ptr [rip + 0xda403]
00000001405a9ef5 mov      rax, qword ptr [rdi + 0x18]
00000001405a9ef9 lea      r8, [rip + 0xc2cb0]
00000001405a9f00 mov      rcx, qword ptr [rdi + 8]
00000001405a9f04 mov      r9d, 0x18600058
00000001405a9f0a mov      edx, r13d
00000001405a9f0d mov      rax, qword ptr [rax + 0x118]
00000001405a9f14 call     qword ptr [rip + 0xda3de]
00000001405a9f1a mov      rax, qword ptr [rsi + 8]
00000001405a9f1e mov      r8b, 0x80
00000001405a9f21 mov      edx, ebx
00000001405a9f23 mov      rcx, rdi
00000001405a9f26 call     qword ptr [rip + 0xda3cc]
00000001405a9f2c mov      rax, qword ptr [rdi + 0x18]
00000001405a9f30 lea      r8, [rip + 0xc3129]
00000001405a9f37 mov      rcx, qword ptr [rdi + 8]
00000001405a9f3b mov      edx, r13d
00000001405a9f3e mov      rax, qword ptr [rax + 0x118]
00000001405a9f45 call     qword ptr [rip + 0xda3ad]
00000001405a9f4b lea      rdx, [rip + 0x724a36]
00000001405a9f52 jmp      0x1405aba72
00000001405a9f57 sub      ebx, 0xc0
00000001405a9f5d je       0x1405aa487
00000001405a9f63 sub      ebx, r13d
00000001405a9f66 je       0x1405aa32d
00000001405a9f6c sub      ebx, r13d
00000001405a9f6f je       0x1405aa1d3
00000001405a9f75 sub      ebx, r13d
00000001405a9f78 je       0x1405aa078
00000001405a9f7e cmp      ebx, r13d
00000001405a9f81 jne      0x1405ab45d
00000001405a9f87 mov      rax, qword ptr [rdi + 0x18]
00000001405a9f8b lea      r8, [rip + 0xc336e]
00000001405a9f92 mov      rcx, qword ptr [rdi + 8]
00000001405a9f96 mov      edx, r13d
00000001405a9f99 mov      rax, qword ptr [rax + 0x118]
00000001405a9fa0 call     qword ptr [rip + 0xda352]
00000001405a9fa6 mov      rax, qword ptr [rsi + 0x20]
00000001405a9faa mov      r14d, 0xf4
00000001405a9fb0 mov      edx, r14d
00000001405a9fb3 mov      rcx, rdi
00000001405a9fb6 call     qword ptr [rip + 0xda33c]
00000001405a9fbc mov      r9d, 0x186000f4
00000001405a9fc2 lea      r8, [rip + 0xbe207]
00000001405a9fc9 btr      eax, 0x11
00000001405a9fcd mov      edx, r13d
00000001405a9fd0 bts      eax, 0x10
00000001405a9fd4 mov      dword ptr [rbp + 0x30], eax
00000001405a9fd7 mov      rax, qword ptr [rdi + 0x18]
00000001405a9fdb mov      rcx, qword ptr [rdi + 8]
00000001405a9fdf mov      rax, qword ptr [rax + 0x118]
00000001405a9fe6 call     qword ptr [rip + 0xda30c]
00000001405a9fec mov      rax, qword ptr [rsi + 0x28]
00000001405a9ff0 mov      edx, r14d
00000001405a9ff3 mov      r8d, dword ptr [rbp + 0x30]
00000001405a9ff7 mov      rcx, rdi
00000001405a9ffa call     qword ptr [rip + 0xda2f8]
00000001405aa000 mov      rax, qword ptr [rsi]
00000001405aa003 mov      ebx, 0x58
00000001405aa008 mov      edx, ebx
00000001405aa00a mov      rcx, rdi
00000001405aa00d call     qword ptr [rip + 0xda2e5]
00000001405aa013 mov      rax, qword ptr [rdi + 0x18]
00000001405aa017 lea      r8, [rip + 0xc3322]
00000001405aa01e mov      rcx, qword ptr [rdi + 8]
00000001405aa022 mov      r9d, 0x18600058
00000001405aa028 mov      edx, r13d
00000001405aa02b mov      rax, qword ptr [rax + 0x118]
00000001405aa032 call     qword ptr [rip + 0xda2c0]
00000001405aa038 mov      rax, qword ptr [rsi + 8]
00000001405aa03c mov      r8b, 0xa8
00000001405aa03f mov      edx, ebx
00000001405aa041 mov      rcx, rdi
00000001405aa044 call     qword ptr [rip + 0xda2ae]
00000001405aa04a mov      rax, qword ptr [rdi + 0x18]
00000001405aa04e lea      r8, [rip + 0xc331b]
00000001405aa055 mov      rcx, qword ptr [rdi + 8]
00000001405aa059 mov      edx, r13d
00000001405aa05c mov      rax, qword ptr [rax + 0x118]
00000001405aa063 call     qword ptr [rip + 0xda28f]
00000001405aa069 mov      r9b, r13b
00000001405aa06c lea      rdx, [rip + 0x724965]
00000001405aa073 jmp      0x1405aba75
00000001405aa078 mov      rax, qword ptr [rdi + 0x18]
00000001405aa07c lea      r8, [rip + 0xc31ed]
00000001405aa083 mov      rcx, qword ptr [rdi + 8]
00000001405aa087 mov      edx, r13d
00000001405aa08a mov      rax, qword ptr [rax + 0x118]
00000001405aa091 call     qword ptr [rip + 0xda261]
00000001405aa097 mov      rax, qword ptr [rsi + 0x20]
00000001405aa09b mov      r14d, 0xf4
00000001405aa0a1 mov      edx, r14d
00000001405aa0a4 mov      rcx, rdi
00000001405aa0a7 call     qword ptr [rip + 0xda24b]
00000001405aa0ad mov      r9d, 0x186000f4
00000001405aa0b3 lea      r8, [rip + 0xbe116]
00000001405aa0ba btr      eax, 0x11
00000001405aa0be mov      edx, r13d
00000001405aa0c1 bts      eax, 0x10
00000001405aa0c5 mov      dword ptr [rbp + 0x30], eax
00000001405aa0c8 mov      rax, qword ptr [rdi + 0x18]
00000001405aa0cc mov      rcx, qword ptr [rdi + 8]
00000001405aa0d0 mov      rax, qword ptr [rax + 0x118]
00000001405aa0d7 call     qword ptr [rip + 0xda21b]
00000001405aa0dd mov      rax, qword ptr [rsi + 0x28]
00000001405aa0e1 mov      edx, r14d
00000001405aa0e4 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa0e8 mov      rcx, rdi
00000001405aa0eb call     qword ptr [rip + 0xda207]
00000001405aa0f1 mov      rax, qword ptr [rsi + 0x20]
00000001405aa0f5 mov      ebx, 0x58
00000001405aa0fa mov      edx, ebx
00000001405aa0fc mov      rcx, rdi
00000001405aa0ff call     qword ptr [rip + 0xda1f3]
00000001405aa105 mov      r9d, 0x18600058
00000001405aa10b lea      r8, [rip + 0xc2fae]
00000001405aa112 and      eax, 0xff80ffff
00000001405aa117 mov      edx, r13d
00000001405aa11a bts      eax, 0x17
00000001405aa11e mov      dword ptr [rbp + 0x30], eax
00000001405aa121 mov      rax, qword ptr [rdi + 0x18]
00000001405aa125 mov      rcx, qword ptr [rdi + 8]
00000001405aa129 mov      rax, qword ptr [rax + 0x118]
00000001405aa130 call     qword ptr [rip + 0xda1c2]
00000001405aa136 mov      rax, qword ptr [rsi + 0x28]
00000001405aa13a mov      edx, ebx
00000001405aa13c mov      r8d, dword ptr [rbp + 0x30]
00000001405aa140 mov      rcx, rdi
00000001405aa143 call     qword ptr [rip + 0xda1af]
00000001405aa149 mov      rax, qword ptr [rsi + 0x20]
00000001405aa14d mov      r15d, 0x8864
00000001405aa153 mov      edx, r15d
00000001405aa156 mov      rcx, rdi
00000001405aa159 call     qword ptr [rip + 0xda199]
00000001405aa15f mov      r9d, 0x18608864
00000001405aa165 lea      r8, [rip + 0xc3134]
00000001405aa16c and      eax, 0xf3ffffff
00000001405aa171 mov      edx, r13d
00000001405aa174 or       eax, 0x3000000
00000001405aa179 mov      dword ptr [rbp + 0x30], eax
00000001405aa17c mov      rax, qword ptr [rdi + 0x18]
00000001405aa180 mov      rcx, qword ptr [rdi + 8]
00000001405aa184 mov      rax, qword ptr [rax + 0x118]
00000001405aa18b call     qword ptr [rip + 0xda167]
00000001405aa191 mov      rax, qword ptr [rsi + 0x28]
00000001405aa195 mov      edx, r15d
00000001405aa198 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa19c mov      rcx, rdi
00000001405aa19f call     qword ptr [rip + 0xda153]
00000001405aa1a5 mov      rax, qword ptr [rdi + 0x18]
00000001405aa1a9 lea      r8, [rip + 0xc3120]
00000001405aa1b0 mov      rcx, qword ptr [rdi + 8]
00000001405aa1b4 mov      edx, r13d
00000001405aa1b7 mov      rax, qword ptr [rax + 0x118]
00000001405aa1be call     qword ptr [rip + 0xda134]
00000001405aa1c4 mov      r9b, r13b
00000001405aa1c7 lea      rdx, [rip + 0x7247fa]
00000001405aa1ce jmp      0x1405aba75
00000001405aa1d3 mov      rax, qword ptr [rdi + 0x18]
00000001405aa1d7 lea      r8, [rip + 0xc3002]
00000001405aa1de mov      rcx, qword ptr [rdi + 8]
00000001405aa1e2 mov      edx, r13d
00000001405aa1e5 mov      rax, qword ptr [rax + 0x118]
00000001405aa1ec call     qword ptr [rip + 0xda106]
00000001405aa1f2 mov      rax, qword ptr [rsi + 0x20]
00000001405aa1f6 mov      r14d, 0xf4
00000001405aa1fc mov      edx, r14d
00000001405aa1ff mov      rcx, rdi
00000001405aa202 call     qword ptr [rip + 0xda0f0]
00000001405aa208 mov      r9d, 0x186000f4
00000001405aa20e lea      r8, [rip + 0xbdfbb]
00000001405aa215 btr      eax, 0x11
00000001405aa219 mov      edx, r13d
00000001405aa21c bts      eax, 0x10
00000001405aa220 mov      dword ptr [rbp + 0x30], eax
00000001405aa223 mov      rax, qword ptr [rdi + 0x18]
00000001405aa227 mov      rcx, qword ptr [rdi + 8]
00000001405aa22b mov      rax, qword ptr [rax + 0x118]
00000001405aa232 call     qword ptr [rip + 0xda0c0]
00000001405aa238 mov      rax, qword ptr [rsi + 0x28]
00000001405aa23c mov      edx, r14d
00000001405aa23f mov      r8d, dword ptr [rbp + 0x30]
00000001405aa243 mov      rcx, rdi
00000001405aa246 call     qword ptr [rip + 0xda0ac]
00000001405aa24c mov      rax, qword ptr [rsi + 0x20]
00000001405aa250 mov      ebx, 0x58
00000001405aa255 mov      edx, ebx
00000001405aa257 mov      rcx, rdi
00000001405aa25a call     qword ptr [rip + 0xda098]
00000001405aa260 mov      r9d, 0x18600058
00000001405aa266 lea      r8, [rip + 0xc2e53]
00000001405aa26d and      eax, 0xff80ffff
00000001405aa272 mov      edx, r13d
00000001405aa275 bts      eax, 0x17
00000001405aa279 mov      dword ptr [rbp + 0x30], eax
00000001405aa27c mov      rax, qword ptr [rdi + 0x18]
00000001405aa280 mov      rcx, qword ptr [rdi + 8]
00000001405aa284 mov      rax, qword ptr [rax + 0x118]
00000001405aa28b call     qword ptr [rip + 0xda067]
00000001405aa291 mov      rax, qword ptr [rsi + 0x28]
00000001405aa295 mov      edx, ebx
00000001405aa297 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa29b mov      rcx, rdi
00000001405aa29e call     qword ptr [rip + 0xda054]
00000001405aa2a4 mov      rax, qword ptr [rsi + 0x20]
00000001405aa2a8 mov      r15d, 0x8864
00000001405aa2ae mov      edx, r15d
00000001405aa2b1 mov      rcx, rdi
00000001405aa2b4 call     qword ptr [rip + 0xda03e]
00000001405aa2ba mov      r9d, 0x18608864
00000001405aa2c0 lea      r8, [rip + 0xc2f49]
00000001405aa2c7 and      eax, 0xf2ffffff
00000001405aa2cc mov      edx, r13d
00000001405aa2cf bts      eax, 0x19
00000001405aa2d3 mov      dword ptr [rbp + 0x30], eax
00000001405aa2d6 mov      rax, qword ptr [rdi + 0x18]
00000001405aa2da mov      rcx, qword ptr [rdi + 8]
00000001405aa2de mov      rax, qword ptr [rax + 0x118]
00000001405aa2e5 call     qword ptr [rip + 0xda00d]
00000001405aa2eb mov      rax, qword ptr [rsi + 0x28]
00000001405aa2ef mov      edx, r15d
00000001405aa2f2 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa2f6 mov      rcx, rdi
00000001405aa2f9 call     qword ptr [rip + 0xd9ff9]
00000001405aa2ff mov      rax, qword ptr [rdi + 0x18]
00000001405aa303 lea      r8, [rip + 0xc2f36]
00000001405aa30a mov      rcx, qword ptr [rdi + 8]
00000001405aa30e mov      edx, r13d
00000001405aa311 mov      rax, qword ptr [rax + 0x118]
00000001405aa318 call     qword ptr [rip + 0xd9fda]
00000001405aa31e mov      r9b, r13b
00000001405aa321 lea      rdx, [rip + 0x724690]
00000001405aa328 jmp      0x1405aba75
00000001405aa32d mov      rax, qword ptr [rdi + 0x18]
00000001405aa331 lea      r8, [rip + 0xc2e18]
00000001405aa338 mov      rcx, qword ptr [rdi + 8]
00000001405aa33c mov      edx, r13d
00000001405aa33f mov      rax, qword ptr [rax + 0x118]
00000001405aa346 call     qword ptr [rip + 0xd9fac]
00000001405aa34c mov      rax, qword ptr [rsi + 0x20]
00000001405aa350 mov      r14d, 0xf4
00000001405aa356 mov      edx, r14d
00000001405aa359 mov      rcx, rdi
00000001405aa35c call     qword ptr [rip + 0xd9f96]
00000001405aa362 mov      r9d, 0x186000f4
00000001405aa368 lea      r8, [rip + 0xbde61]
00000001405aa36f btr      eax, 0x11
00000001405aa373 mov      edx, r13d
00000001405aa376 bts      eax, 0x10
00000001405aa37a mov      dword ptr [rbp + 0x30], eax
00000001405aa37d mov      rax, qword ptr [rdi + 0x18]
00000001405aa381 mov      rcx, qword ptr [rdi + 8]
00000001405aa385 mov      rax, qword ptr [rax + 0x118]
00000001405aa38c call     qword ptr [rip + 0xd9f66]
00000001405aa392 mov      rax, qword ptr [rsi + 0x28]
00000001405aa396 mov      edx, r14d
00000001405aa399 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa39d mov      rcx, rdi
00000001405aa3a0 call     qword ptr [rip + 0xd9f52]
00000001405aa3a6 mov      rax, qword ptr [rsi + 0x20]
00000001405aa3aa mov      ebx, 0x58
00000001405aa3af mov      edx, ebx
00000001405aa3b1 mov      rcx, rdi
00000001405aa3b4 call     qword ptr [rip + 0xd9f3e]
00000001405aa3ba mov      r9d, 0x18600058
00000001405aa3c0 lea      r8, [rip + 0xc2cf9]
00000001405aa3c7 and      eax, 0xff80ffff
00000001405aa3cc mov      edx, r13d
00000001405aa3cf bts      eax, 0x17
00000001405aa3d3 mov      dword ptr [rbp + 0x30], eax
00000001405aa3d6 mov      rax, qword ptr [rdi + 0x18]
00000001405aa3da mov      rcx, qword ptr [rdi + 8]
00000001405aa3de mov      rax, qword ptr [rax + 0x118]
00000001405aa3e5 call     qword ptr [rip + 0xd9f0d]
00000001405aa3eb mov      rax, qword ptr [rsi + 0x28]
00000001405aa3ef mov      edx, ebx
00000001405aa3f1 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa3f5 mov      rcx, rdi
00000001405aa3f8 call     qword ptr [rip + 0xd9efa]
00000001405aa3fe mov      rax, qword ptr [rsi + 0x20]
00000001405aa402 mov      r15d, 0x8864
00000001405aa408 mov      edx, r15d
00000001405aa40b mov      rcx, rdi
00000001405aa40e call     qword ptr [rip + 0xd9ee4]
00000001405aa414 mov      r9d, 0x18608864
00000001405aa41a lea      r8, [rip + 0xc2d5f]
00000001405aa421 and      eax, 0xf1ffffff
00000001405aa426 mov      edx, r13d
00000001405aa429 bts      eax, 0x18
00000001405aa42d mov      dword ptr [rbp + 0x30], eax
00000001405aa430 mov      rax, qword ptr [rdi + 0x18]
00000001405aa434 mov      rcx, qword ptr [rdi + 8]
00000001405aa438 mov      rax, qword ptr [rax + 0x118]
00000001405aa43f call     qword ptr [rip + 0xd9eb3]
00000001405aa445 mov      rax, qword ptr [rsi + 0x28]
00000001405aa449 mov      edx, r15d
00000001405aa44c mov      r8d, dword ptr [rbp + 0x30]
00000001405aa450 mov      rcx, rdi
00000001405aa453 call     qword ptr [rip + 0xd9e9f]
00000001405aa459 mov      rax, qword ptr [rdi + 0x18]
00000001405aa45d lea      r8, [rip + 0xc2d4c]
00000001405aa464 mov      rcx, qword ptr [rdi + 8]
00000001405aa468 mov      edx, r13d
00000001405aa46b mov      rax, qword ptr [rax + 0x118]
00000001405aa472 call     qword ptr [rip + 0xd9e80]
00000001405aa478 mov      r9b, r13b
00000001405aa47b lea      rdx, [rip + 0x724526]
00000001405aa482 jmp      0x1405aba75
00000001405aa487 mov      rax, qword ptr [rdi + 0x18]
00000001405aa48b lea      r8, [rip + 0xc2bfe]
00000001405aa492 mov      rcx, qword ptr [rdi + 8]
00000001405aa496 mov      edx, r13d
00000001405aa499 mov      rax, qword ptr [rax + 0x118]
00000001405aa4a0 call     qword ptr [rip + 0xd9e52]
00000001405aa4a6 mov      rax, qword ptr [rsi + 0x20]
00000001405aa4aa mov      r14d, 0xf4
00000001405aa4b0 mov      edx, r14d
00000001405aa4b3 mov      rcx, rdi
00000001405aa4b6 call     qword ptr [rip + 0xd9e3c]
00000001405aa4bc mov      r9d, 0x186000f4
00000001405aa4c2 lea      r8, [rip + 0xbdd07]
00000001405aa4c9 btr      eax, 0x11
00000001405aa4cd mov      edx, r13d
00000001405aa4d0 bts      eax, 0x10
00000001405aa4d4 mov      dword ptr [rbp + 0x30], eax
00000001405aa4d7 mov      rax, qword ptr [rdi + 0x18]
00000001405aa4db mov      rcx, qword ptr [rdi + 8]
00000001405aa4df mov      rax, qword ptr [rax + 0x118]
00000001405aa4e6 call     qword ptr [rip + 0xd9e0c]
00000001405aa4ec mov      rax, qword ptr [rsi + 0x28]
00000001405aa4f0 mov      edx, r14d
00000001405aa4f3 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa4f7 mov      rcx, rdi
00000001405aa4fa call     qword ptr [rip + 0xd9df8]
00000001405aa500 mov      rax, qword ptr [rsi + 0x20]
00000001405aa504 mov      ebx, 0x58
00000001405aa509 mov      edx, ebx
00000001405aa50b mov      rcx, rdi
00000001405aa50e call     qword ptr [rip + 0xd9de4]
00000001405aa514 mov      r9d, 0x18600058
00000001405aa51a lea      r8, [rip + 0xc2b9f]
00000001405aa521 and      eax, 0xff80ffff
00000001405aa526 mov      edx, r13d
00000001405aa529 bts      eax, 0x17
00000001405aa52d mov      dword ptr [rbp + 0x30], eax
00000001405aa530 mov      rax, qword ptr [rdi + 0x18]
00000001405aa534 mov      rcx, qword ptr [rdi + 8]
00000001405aa538 mov      rax, qword ptr [rax + 0x118]
00000001405aa53f call     qword ptr [rip + 0xd9db3]
00000001405aa545 mov      rax, qword ptr [rsi + 0x28]
00000001405aa549 mov      edx, ebx
00000001405aa54b mov      r8d, dword ptr [rbp + 0x30]
00000001405aa54f mov      rcx, rdi
00000001405aa552 call     qword ptr [rip + 0xd9da0]
00000001405aa558 mov      rax, qword ptr [rsi + 0x20]
00000001405aa55c mov      r15d, 0x8864
00000001405aa562 mov      edx, r15d
00000001405aa565 mov      rcx, rdi
00000001405aa568 call     qword ptr [rip + 0xd9d8a]
00000001405aa56e mov      r9d, 0x18608864
00000001405aa574 lea      r8, [rip + 0xc2b75]
00000001405aa57b and      eax, 0xf0ffffff
00000001405aa580 mov      edx, r13d
00000001405aa583 mov      dword ptr [rbp + 0x30], eax
00000001405aa586 mov      rax, qword ptr [rdi + 0x18]
00000001405aa58a mov      rcx, qword ptr [rdi + 8]
00000001405aa58e mov      rax, qword ptr [rax + 0x118]
00000001405aa595 call     qword ptr [rip + 0xd9d5d]
00000001405aa59b mov      rax, qword ptr [rsi + 0x28]
00000001405aa59f mov      edx, r15d
00000001405aa5a2 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa5a6 mov      rcx, rdi
00000001405aa5a9 call     qword ptr [rip + 0xd9d49]
00000001405aa5af mov      rax, qword ptr [rdi + 0x18]
00000001405aa5b3 lea      r8, [rip + 0xc2b66]
00000001405aa5ba mov      rcx, qword ptr [rdi + 8]
00000001405aa5be mov      edx, r13d
00000001405aa5c1 mov      rax, qword ptr [rax + 0x118]
00000001405aa5c8 call     qword ptr [rip + 0xd9d2a]
00000001405aa5ce mov      r9b, r13b
00000001405aa5d1 lea      rdx, [rip + 0x7243c0]
00000001405aa5d8 jmp      0x1405aba75
00000001405aa5dd mov      rax, qword ptr [rdi + 0x18]
00000001405aa5e1 lea      r8, [rip + 0xc2dc8]
00000001405aa5e8 mov      rcx, qword ptr [rdi + 8]
00000001405aa5ec mov      edx, r13d
00000001405aa5ef mov      rax, qword ptr [rax + 0x118]
00000001405aa5f6 call     qword ptr [rip + 0xd9cfc]
00000001405aa5fc mov      rax, qword ptr [rsi + 0x20]
00000001405aa600 mov      r14d, 0xf4
00000001405aa606 mov      edx, r14d
00000001405aa609 mov      rcx, rdi
00000001405aa60c call     qword ptr [rip + 0xd9ce6]
00000001405aa612 mov      r9d, 0x186000f4
00000001405aa618 lea      r8, [rip + 0xbdbb1]
00000001405aa61f btr      eax, 0x11
00000001405aa623 mov      edx, r13d
00000001405aa626 bts      eax, 0x10
00000001405aa62a mov      dword ptr [rbp + 0x30], eax
00000001405aa62d mov      rax, qword ptr [rdi + 0x18]
00000001405aa631 mov      rcx, qword ptr [rdi + 8]
00000001405aa635 mov      rax, qword ptr [rax + 0x118]
00000001405aa63c call     qword ptr [rip + 0xd9cb6]
00000001405aa642 mov      rax, qword ptr [rsi + 0x28]
00000001405aa646 mov      edx, r14d
00000001405aa649 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa64d mov      rcx, rdi
00000001405aa650 call     qword ptr [rip + 0xd9ca2]
00000001405aa656 mov      rax, qword ptr [rsi]
00000001405aa659 mov      ebx, 0x58
00000001405aa65e mov      edx, ebx
00000001405aa660 mov      rcx, rdi
00000001405aa663 call     qword ptr [rip + 0xd9c8f]
00000001405aa669 mov      rax, qword ptr [rdi + 0x18]
00000001405aa66d lea      r8, [rip + 0xc2d7c]
00000001405aa674 mov      rcx, qword ptr [rdi + 8]
00000001405aa678 mov      r9d, 0x18600058
00000001405aa67e mov      edx, r13d
00000001405aa681 mov      rax, qword ptr [rax + 0x118]
00000001405aa688 call     qword ptr [rip + 0xd9c6a]
00000001405aa68e mov      rax, qword ptr [rsi + 8]
00000001405aa692 mov      r8b, r15b
00000001405aa695 mov      edx, ebx
00000001405aa697 mov      rcx, rdi
00000001405aa69a call     qword ptr [rip + 0xd9c58]
00000001405aa6a0 mov      rax, qword ptr [rdi + 0x18]
00000001405aa6a4 lea      r8, [rip + 0xc2d75]
00000001405aa6ab mov      rcx, qword ptr [rdi + 8]
00000001405aa6af mov      edx, r13d
00000001405aa6b2 mov      rax, qword ptr [rax + 0x118]
00000001405aa6b9 call     qword ptr [rip + 0xd9c39]
00000001405aa6bf mov      r9b, r13b
00000001405aa6c2 lea      rdx, [rip + 0x72431f]
00000001405aa6c9 jmp      0x1405aba75
00000001405aa6ce mov      eax, 0xcc
00000001405aa6d3 cmp      ebx, eax
00000001405aa6d5 ja       0x1405ab431
00000001405aa6db je       0x1405ab251
00000001405aa6e1 sub      ebx, 0xc6
00000001405aa6e7 je       0x1405ab074
00000001405aa6ed sub      ebx, r13d
00000001405aa6f0 je       0x1405aae94
00000001405aa6f6 sub      ebx, r13d
00000001405aa6f9 je       0x1405aacb4
00000001405aa6ff sub      ebx, r13d
00000001405aa702 je       0x1405aaad7
00000001405aa708 sub      ebx, r13d
00000001405aa70b je       0x1405aa8fa
00000001405aa711 cmp      ebx, r13d
00000001405aa714 jne      0x1405ab45d
00000001405aa71a mov      rax, qword ptr [rdi + 0x18]
00000001405aa71e lea      r8, [rip + 0xd55bb]
00000001405aa725 mov      rcx, qword ptr [rdi + 8]
00000001405aa729 mov      edx, r13d
00000001405aa72c mov      rax, qword ptr [rax + 0x118]
00000001405aa733 call     qword ptr [rip + 0xd9bbf]
00000001405aa739 mov      rax, qword ptr [rsi + 0x20]
00000001405aa73d mov      r14d, 0xf4
00000001405aa743 mov      edx, r14d
00000001405aa746 mov      rcx, rdi
00000001405aa749 call     qword ptr [rip + 0xd9ba9]
00000001405aa74f mov      r9d, 0x186000f4
00000001405aa755 lea      r8, [rip + 0xbda74]
00000001405aa75c btr      eax, 0x11
00000001405aa760 mov      edx, r13d
00000001405aa763 bts      eax, 0x10
00000001405aa767 mov      dword ptr [rbp + 0x30], eax
00000001405aa76a mov      rax, qword ptr [rdi + 0x18]
00000001405aa76e mov      rcx, qword ptr [rdi + 8]
00000001405aa772 mov      rax, qword ptr [rax + 0x118]
00000001405aa779 call     qword ptr [rip + 0xd9b79]
00000001405aa77f mov      rax, qword ptr [rsi + 0x28]
00000001405aa783 mov      edx, r14d
00000001405aa786 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa78a mov      rcx, rdi
00000001405aa78d call     qword ptr [rip + 0xd9b65]
00000001405aa793 mov      rax, qword ptr [rsi + 0x20]
00000001405aa797 mov      ebx, 0x58
00000001405aa79c mov      edx, ebx
00000001405aa79e mov      rcx, rdi
00000001405aa7a1 call     qword ptr [rip + 0xd9b51]
00000001405aa7a7 mov      r9d, 0x18600058
00000001405aa7ad lea      r8, [rip + 0xc2cdc]
00000001405aa7b4 and      eax, 0xffffff8b
00000001405aa7b7 mov      edx, r13d
00000001405aa7ba or       eax, 0x8b
00000001405aa7bf mov      dword ptr [rbp + 0x30], eax
00000001405aa7c2 mov      rax, qword ptr [rdi + 0x18]
00000001405aa7c6 mov      rcx, qword ptr [rdi + 8]
00000001405aa7ca mov      rax, qword ptr [rax + 0x118]
00000001405aa7d1 call     qword ptr [rip + 0xd9b21]
00000001405aa7d7 mov      eax, dword ptr [rbp + 0x30]
00000001405aa7da lea      r8, [rip + 0xd522f]
00000001405aa7e1 and      eax, 0xff8bffff
00000001405aa7e6 mov      r9d, 0x18600058
00000001405aa7ec or       eax, 0x8b0000
00000001405aa7f1 mov      edx, r13d
00000001405aa7f4 mov      dword ptr [rbp + 0x30], eax
00000001405aa7f7 mov      rax, qword ptr [rdi + 0x18]
00000001405aa7fb mov      rcx, qword ptr [rdi + 8]
00000001405aa7ff mov      rax, qword ptr [rax + 0x118]
00000001405aa806 call     qword ptr [rip + 0xd9aec]
00000001405aa80c mov      rax, qword ptr [rsi + 0x28]
00000001405aa810 mov      edx, ebx
00000001405aa812 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa816 mov      rcx, rdi
00000001405aa819 call     qword ptr [rip + 0xd9ad9]
00000001405aa81f mov      rax, qword ptr [rsi + 0x10]
00000001405aa823 mov      r14d, 0x9d04
00000001405aa829 mov      edx, r14d
00000001405aa82c mov      rcx, rdi
00000001405aa82f call     qword ptr [rip + 0xd9ac3]
00000001405aa835 mov      rcx, qword ptr [rdi + 8]
00000001405aa839 lea      r8, [rip + 0xbe420]
00000001405aa840 movzx    ebx, ax
00000001405aa843 mov      r9d, 0x18609d04
00000001405aa849 mov      eax, 0x100
00000001405aa84e mov      edx, r13d
00000001405aa851 or       bx, ax
00000001405aa854 mov      rax, qword ptr [rdi + 0x18]
00000001405aa858 mov      rax, qword ptr [rax + 0x118]
00000001405aa85f call     qword ptr [rip + 0xd9a93]
00000001405aa865 mov      rax, qword ptr [rsi + 0x18]
00000001405aa869 movzx    r8d, bx
00000001405aa86d mov      edx, r14d
00000001405aa870 mov      rcx, rdi
00000001405aa873 call     qword ptr [rip + 0xd9a7f]
00000001405aa879 mov      rax, qword ptr [rsi + 0x20]
00000001405aa87d lea      ebx, [r14 - 4]
00000001405aa881 mov      edx, ebx
00000001405aa883 mov      rcx, rdi
00000001405aa886 call     qword ptr [rip + 0xd9a6c]
00000001405aa88c mov      r9d, 0x18609d00
00000001405aa892 lea      r8, [rip + 0xd5267]
00000001405aa899 btr      eax, 0x15
00000001405aa89d mov      edx, r13d
00000001405aa8a0 bts      eax, 0x14
00000001405aa8a4 mov      dword ptr [rbp + 0x30], eax
00000001405aa8a7 mov      rax, qword ptr [rdi + 0x18]
00000001405aa8ab mov      rcx, qword ptr [rdi + 8]
00000001405aa8af mov      rax, qword ptr [rax + 0x118]
00000001405aa8b6 call     qword ptr [rip + 0xd9a3c]
00000001405aa8bc mov      rax, qword ptr [rsi + 0x28]
00000001405aa8c0 mov      edx, ebx
00000001405aa8c2 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa8c6 mov      rcx, rdi
00000001405aa8c9 call     qword ptr [rip + 0xd9a29]
00000001405aa8cf mov      rax, qword ptr [rdi + 0x18]
00000001405aa8d3 lea      r8, [rip + 0xd5436]
00000001405aa8da mov      rcx, qword ptr [rdi + 8]
00000001405aa8de mov      edx, r13d
00000001405aa8e1 mov      rax, qword ptr [rax + 0x118]
00000001405aa8e8 call     qword ptr [rip + 0xd9a0a]
00000001405aa8ee lea      rdx, [rip + 0x724153]
00000001405aa8f5 jmp      0x1405aba72
00000001405aa8fa mov      rax, qword ptr [rdi + 0x18]
00000001405aa8fe lea      r8, [rip + 0xd537b]
00000001405aa905 mov      rcx, qword ptr [rdi + 8]
00000001405aa909 mov      edx, r13d
00000001405aa90c mov      rax, qword ptr [rax + 0x118]
00000001405aa913 call     qword ptr [rip + 0xd99df]
00000001405aa919 mov      rax, qword ptr [rsi + 0x20]
00000001405aa91d mov      r14d, 0xf4
00000001405aa923 mov      edx, r14d
00000001405aa926 mov      rcx, rdi
00000001405aa929 call     qword ptr [rip + 0xd99c9]
00000001405aa92f mov      r9d, 0x186000f4
00000001405aa935 lea      r8, [rip + 0xbd894]
00000001405aa93c btr      eax, 0x11
00000001405aa940 mov      edx, r13d
00000001405aa943 bts      eax, 0x10
00000001405aa947 mov      dword ptr [rbp + 0x30], eax
00000001405aa94a mov      rax, qword ptr [rdi + 0x18]
00000001405aa94e mov      rcx, qword ptr [rdi + 8]
00000001405aa952 mov      rax, qword ptr [rax + 0x118]
00000001405aa959 call     qword ptr [rip + 0xd9999]
00000001405aa95f mov      rax, qword ptr [rsi + 0x28]
00000001405aa963 mov      edx, r14d
00000001405aa966 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa96a mov      rcx, rdi
00000001405aa96d call     qword ptr [rip + 0xd9985]
00000001405aa973 mov      rax, qword ptr [rsi + 0x20]
00000001405aa977 mov      ebx, 0x58
00000001405aa97c mov      edx, ebx
00000001405aa97e mov      rcx, rdi
00000001405aa981 call     qword ptr [rip + 0xd9971]
00000001405aa987 mov      r9d, 0x18600058
00000001405aa98d lea      r8, [rip + 0xc2afc]
00000001405aa994 and      eax, 0xffffff8b
00000001405aa997 mov      edx, r13d
00000001405aa99a or       eax, 0x8b
00000001405aa99f mov      dword ptr [rbp + 0x30], eax
00000001405aa9a2 mov      rax, qword ptr [rdi + 0x18]
00000001405aa9a6 mov      rcx, qword ptr [rdi + 8]
00000001405aa9aa mov      rax, qword ptr [rax + 0x118]
00000001405aa9b1 call     qword ptr [rip + 0xd9941]
00000001405aa9b7 mov      eax, dword ptr [rbp + 0x30]
00000001405aa9ba lea      r8, [rip + 0xd504f]
00000001405aa9c1 and      eax, 0xff8bffff
00000001405aa9c6 mov      r9d, 0x18600058
00000001405aa9cc or       eax, 0x8b0000
00000001405aa9d1 mov      edx, r13d
00000001405aa9d4 mov      dword ptr [rbp + 0x30], eax
00000001405aa9d7 mov      rax, qword ptr [rdi + 0x18]
00000001405aa9db mov      rcx, qword ptr [rdi + 8]
00000001405aa9df mov      rax, qword ptr [rax + 0x118]
00000001405aa9e6 call     qword ptr [rip + 0xd990c]
00000001405aa9ec mov      rax, qword ptr [rsi + 0x28]
00000001405aa9f0 mov      edx, ebx
00000001405aa9f2 mov      r8d, dword ptr [rbp + 0x30]
00000001405aa9f6 mov      rcx, rdi
00000001405aa9f9 call     qword ptr [rip + 0xd98f9]
00000001405aa9ff mov      rax, qword ptr [rsi + 0x10]
00000001405aaa03 mov      r14d, 0x9d04
00000001405aaa09 mov      edx, r14d
00000001405aaa0c mov      rcx, rdi
00000001405aaa0f call     qword ptr [rip + 0xd98e3]
00000001405aaa15 mov      rcx, qword ptr [rdi + 8]
00000001405aaa19 lea      r8, [rip + 0xbe240]
00000001405aaa20 movzx    ebx, ax
00000001405aaa23 mov      r9d, 0x18609d04
00000001405aaa29 mov      eax, 0x100
00000001405aaa2e mov      edx, r13d
00000001405aaa31 or       bx, ax
00000001405aaa34 mov      rax, qword ptr [rdi + 0x18]
00000001405aaa38 mov      rax, qword ptr [rax + 0x118]
00000001405aaa3f call     qword ptr [rip + 0xd98b3]
00000001405aaa45 mov      rax, qword ptr [rsi + 0x18]
00000001405aaa49 movzx    r8d, bx
00000001405aaa4d mov      edx, r14d
00000001405aaa50 mov      rcx, rdi
00000001405aaa53 call     qword ptr [rip + 0xd989f]
00000001405aaa59 mov      rax, qword ptr [rsi + 0x20]
00000001405aaa5d lea      ebx, [r14 - 4]
00000001405aaa61 mov      edx, ebx
00000001405aaa63 mov      rcx, rdi
00000001405aaa66 call     qword ptr [rip + 0xd988c]
00000001405aaa6c mov      r9d, 0x18609d00
00000001405aaa72 lea      r8, [rip + 0xd4ff7]
00000001405aaa79 and      eax, 0xffcfffff
00000001405aaa7e mov      edx, r13d
00000001405aaa81 mov      dword ptr [rbp + 0x30], eax
00000001405aaa84 mov      rax, qword ptr [rdi + 0x18]
00000001405aaa88 mov      rcx, qword ptr [rdi + 8]
00000001405aaa8c mov      rax, qword ptr [rax + 0x118]
00000001405aaa93 call     qword ptr [rip + 0xd985f]
00000001405aaa99 mov      rax, qword ptr [rsi + 0x28]
00000001405aaa9d mov      edx, ebx
00000001405aaa9f mov      r8d, dword ptr [rbp + 0x30]
00000001405aaaa3 mov      rcx, rdi
00000001405aaaa6 call     qword ptr [rip + 0xd984c]
00000001405aaaac mov      rax, qword ptr [rdi + 0x18]
00000001405aaab0 lea      r8, [rip + 0xd51f9]
00000001405aaab7 mov      rcx, qword ptr [rdi + 8]
00000001405aaabb mov      edx, r13d
00000001405aaabe mov      rax, qword ptr [rax + 0x118]
00000001405aaac5 call     qword ptr [rip + 0xd982d]
00000001405aaacb lea      rdx, [rip + 0x723f66]
00000001405aaad2 jmp      0x1405aba72
00000001405aaad7 mov      rax, qword ptr [rdi + 0x18]
00000001405aaadb lea      r8, [rip + 0xd510e]
00000001405aaae2 mov      rcx, qword ptr [rdi + 8]
00000001405aaae6 mov      edx, r13d
00000001405aaae9 mov      rax, qword ptr [rax + 0x118]
00000001405aaaf0 call     qword ptr [rip + 0xd9802]
00000001405aaaf6 mov      rax, qword ptr [rsi + 0x20]
00000001405aaafa mov      r14d, 0xf4
00000001405aab00 mov      edx, r14d
00000001405aab03 mov      rcx, rdi
00000001405aab06 call     qword ptr [rip + 0xd97ec]
00000001405aab0c mov      r9d, 0x186000f4
00000001405aab12 lea      r8, [rip + 0xbd6b7]
00000001405aab19 btr      eax, 0x11
00000001405aab1d mov      edx, r13d
00000001405aab20 bts      eax, 0x10
00000001405aab24 mov      dword ptr [rbp + 0x30], eax
00000001405aab27 mov      rax, qword ptr [rdi + 0x18]
00000001405aab2b mov      rcx, qword ptr [rdi + 8]
00000001405aab2f mov      rax, qword ptr [rax + 0x118]
00000001405aab36 call     qword ptr [rip + 0xd97bc]
00000001405aab3c mov      rax, qword ptr [rsi + 0x28]
00000001405aab40 mov      edx, r14d
00000001405aab43 mov      r8d, dword ptr [rbp + 0x30]
00000001405aab47 mov      rcx, rdi
00000001405aab4a call     qword ptr [rip + 0xd97a8]
00000001405aab50 mov      rax, qword ptr [rsi + 0x20]
00000001405aab54 mov      ebx, 0x58
00000001405aab59 mov      edx, ebx
00000001405aab5b mov      rcx, rdi
00000001405aab5e call     qword ptr [rip + 0xd9794]
00000001405aab64 mov      r9d, 0x18600058
00000001405aab6a lea      r8, [rip + 0xc291f]
00000001405aab71 and      eax, 0xffffff8b
00000001405aab74 mov      edx, r13d
00000001405aab77 or       eax, 0x8b
00000001405aab7c mov      dword ptr [rbp + 0x30], eax
00000001405aab7f mov      rax, qword ptr [rdi + 0x18]
00000001405aab83 mov      rcx, qword ptr [rdi + 8]
00000001405aab87 mov      rax, qword ptr [rax + 0x118]
00000001405aab8e call     qword ptr [rip + 0xd9764]
00000001405aab94 mov      eax, dword ptr [rbp + 0x30]
00000001405aab97 lea      r8, [rip + 0xd4e72]
00000001405aab9e and      eax, 0xff8bffff
00000001405aaba3 mov      r9d, 0x18600058
00000001405aaba9 or       eax, 0x8b0000
00000001405aabae mov      edx, r13d
00000001405aabb1 mov      dword ptr [rbp + 0x30], eax
00000001405aabb4 mov      rax, qword ptr [rdi + 0x18]
00000001405aabb8 mov      rcx, qword ptr [rdi + 8]
00000001405aabbc mov      rax, qword ptr [rax + 0x118]
00000001405aabc3 call     qword ptr [rip + 0xd972f]
00000001405aabc9 mov      rax, qword ptr [rsi + 0x28]
00000001405aabcd mov      edx, ebx
00000001405aabcf mov      r8d, dword ptr [rbp + 0x30]
00000001405aabd3 mov      rcx, rdi
00000001405aabd6 call     qword ptr [rip + 0xd971c]
00000001405aabdc mov      rax, qword ptr [rsi + 0x10]
00000001405aabe0 mov      r14d, 0x9d04
00000001405aabe6 mov      edx, r14d
00000001405aabe9 mov      rcx, rdi
00000001405aabec call     qword ptr [rip + 0xd9706]
00000001405aabf2 mov      rcx, qword ptr [rdi + 8]
00000001405aabf6 lea      r8, [rip + 0xd4e43]
00000001405aabfd movzx    ebx, ax
00000001405aac00 mov      r9d, 0x18609d04
00000001405aac06 mov      eax, 0xfeff
00000001405aac0b mov      edx, r13d
00000001405aac0e and      bx, ax
00000001405aac11 mov      rax, qword ptr [rdi + 0x18]
00000001405aac15 mov      rax, qword ptr [rax + 0x118]
00000001405aac1c call     qword ptr [rip + 0xd96d6]
00000001405aac22 mov      rax, qword ptr [rsi + 0x18]
00000001405aac26 movzx    r8d, bx
00000001405aac2a mov      edx, r14d
00000001405aac2d mov      rcx, rdi
00000001405aac30 call     qword ptr [rip + 0xd96c2]
00000001405aac36 mov      rax, qword ptr [rsi + 0x20]
00000001405aac3a lea      ebx, [r14 - 4]
00000001405aac3e mov      edx, ebx
00000001405aac40 mov      rcx, rdi
00000001405aac43 call     qword ptr [rip + 0xd96af]
00000001405aac49 mov      r9d, 0x18609d00
00000001405aac4f lea      r8, [rip + 0xd4fca]
00000001405aac56 or       eax, 0x300000
00000001405aac5b mov      edx, r13d
00000001405aac5e mov      dword ptr [rbp + 0x30], eax
00000001405aac61 mov      rax, qword ptr [rdi + 0x18]
00000001405aac65 mov      rcx, qword ptr [rdi + 8]
00000001405aac69 mov      rax, qword ptr [rax + 0x118]
00000001405aac70 call     qword ptr [rip + 0xd9682]
00000001405aac76 mov      rax, qword ptr [rsi + 0x28]
00000001405aac7a mov      edx, ebx
00000001405aac7c mov      r8d, dword ptr [rbp + 0x30]
00000001405aac80 mov      rcx, rdi
00000001405aac83 call     qword ptr [rip + 0xd966f]
00000001405aac89 mov      rax, qword ptr [rdi + 0x18]
00000001405aac8d lea      r8, [rip + 0xd4fbc]
00000001405aac94 mov      rcx, qword ptr [rdi + 8]
00000001405aac98 mov      edx, r13d
00000001405aac9b mov      rax, qword ptr [rax + 0x118]
00000001405aaca2 call     qword ptr [rip + 0xd9650]
00000001405aaca8 lea      rdx, [rip + 0x723d79]
00000001405aacaf jmp      0x1405aba72
00000001405aacb4 mov      rax, qword ptr [rdi + 0x18]
00000001405aacb8 lea      r8, [rip + 0xd4ea1]
00000001405aacbf mov      rcx, qword ptr [rdi + 8]
00000001405aacc3 mov      edx, r13d
00000001405aacc6 mov      rax, qword ptr [rax + 0x118]
00000001405aaccd call     qword ptr [rip + 0xd9625]
00000001405aacd3 mov      rax, qword ptr [rsi + 0x20]
00000001405aacd7 mov      r14d, 0xf4
00000001405aacdd mov      edx, r14d
00000001405aace0 mov      rcx, rdi
00000001405aace3 call     qword ptr [rip + 0xd960f]
00000001405aace9 mov      r9d, 0x186000f4
00000001405aacef lea      r8, [rip + 0xbd4da]
00000001405aacf6 btr      eax, 0x11
00000001405aacfa mov      edx, r13d
00000001405aacfd bts      eax, 0x10
00000001405aad01 mov      dword ptr [rbp + 0x30], eax
00000001405aad04 mov      rax, qword ptr [rdi + 0x18]
00000001405aad08 mov      rcx, qword ptr [rdi + 8]
00000001405aad0c mov      rax, qword ptr [rax + 0x118]
00000001405aad13 call     qword ptr [rip + 0xd95df]
00000001405aad19 mov      rax, qword ptr [rsi + 0x28]
00000001405aad1d mov      edx, r14d
00000001405aad20 mov      r8d, dword ptr [rbp + 0x30]
00000001405aad24 mov      rcx, rdi
00000001405aad27 call     qword ptr [rip + 0xd95cb]
00000001405aad2d mov      rax, qword ptr [rsi + 0x20]
00000001405aad31 mov      ebx, 0x58
00000001405aad36 mov      edx, ebx
00000001405aad38 mov      rcx, rdi
00000001405aad3b call     qword ptr [rip + 0xd95b7]
00000001405aad41 mov      r9d, 0x18600058
00000001405aad47 lea      r8, [rip + 0xc2742]
00000001405aad4e and      eax, 0xffffff8b
00000001405aad51 mov      edx, r13d
00000001405aad54 or       eax, 0x8b
00000001405aad59 mov      dword ptr [rbp + 0x30], eax
00000001405aad5c mov      rax, qword ptr [rdi + 0x18]
00000001405aad60 mov      rcx, qword ptr [rdi + 8]
00000001405aad64 mov      rax, qword ptr [rax + 0x118]
00000001405aad6b call     qword ptr [rip + 0xd9587]
00000001405aad71 mov      eax, dword ptr [rbp + 0x30]
00000001405aad74 lea      r8, [rip + 0xd4c95]
00000001405aad7b and      eax, 0xff8bffff
00000001405aad80 mov      r9d, 0x18600058
00000001405aad86 or       eax, 0x8b0000
00000001405aad8b mov      edx, r13d
00000001405aad8e mov      dword ptr [rbp + 0x30], eax
00000001405aad91 mov      rax, qword ptr [rdi + 0x18]
00000001405aad95 mov      rcx, qword ptr [rdi + 8]
00000001405aad99 mov      rax, qword ptr [rax + 0x118]
00000001405aada0 call     qword ptr [rip + 0xd9552]
00000001405aada6 mov      rax, qword ptr [rsi + 0x28]
00000001405aadaa mov      edx, ebx
00000001405aadac mov      r8d, dword ptr [rbp + 0x30]
00000001405aadb0 mov      rcx, rdi
00000001405aadb3 call     qword ptr [rip + 0xd953f]
00000001405aadb9 mov      rax, qword ptr [rsi + 0x10]
00000001405aadbd mov      r14d, 0x9d04
00000001405aadc3 mov      edx, r14d
00000001405aadc6 mov      rcx, rdi
00000001405aadc9 call     qword ptr [rip + 0xd9529]
00000001405aadcf mov      rcx, qword ptr [rdi + 8]
00000001405aadd3 lea      r8, [rip + 0xd4c66]
00000001405aadda movzx    ebx, ax
00000001405aaddd mov      r9d, 0x18609d04
00000001405aade3 mov      eax, 0xfeff
00000001405aade8 mov      edx, r13d
00000001405aadeb and      bx, ax
00000001405aadee mov      rax, qword ptr [rdi + 0x18]
00000001405aadf2 mov      rax, qword ptr [rax + 0x118]
00000001405aadf9 call     qword ptr [rip + 0xd94f9]
00000001405aadff mov      rax, qword ptr [rsi + 0x18]
00000001405aae03 movzx    r8d, bx
00000001405aae07 mov      edx, r14d
00000001405aae0a mov      rcx, rdi
00000001405aae0d call     qword ptr [rip + 0xd94e5]
00000001405aae13 mov      rax, qword ptr [rsi + 0x20]
00000001405aae17 lea      ebx, [r14 - 4]
00000001405aae1b mov      edx, ebx
00000001405aae1d mov      rcx, rdi
00000001405aae20 call     qword ptr [rip + 0xd94d2]
00000001405aae26 mov      r9d, 0x18609d00
00000001405aae2c lea      r8, [rip + 0xd4d5d]
00000001405aae33 btr      eax, 0x14
00000001405aae37 mov      edx, r13d
00000001405aae3a bts      eax, 0x15
00000001405aae3e mov      dword ptr [rbp + 0x30], eax
00000001405aae41 mov      rax, qword ptr [rdi + 0x18]
00000001405aae45 mov      rcx, qword ptr [rdi + 8]
00000001405aae49 mov      rax, qword ptr [rax + 0x118]
00000001405aae50 call     qword ptr [rip + 0xd94a2]
00000001405aae56 mov      rax, qword ptr [rsi + 0x28]
00000001405aae5a mov      edx, ebx
00000001405aae5c mov      r8d, dword ptr [rbp + 0x30]
00000001405aae60 mov      rcx, rdi
00000001405aae63 call     qword ptr [rip + 0xd948f]
00000001405aae69 mov      rax, qword ptr [rdi + 0x18]
00000001405aae6d lea      r8, [rip + 0xd4d4c]
00000001405aae74 mov      rcx, qword ptr [rdi + 8]
00000001405aae78 mov      edx, r13d
00000001405aae7b mov      rax, qword ptr [rax + 0x118]
00000001405aae82 call     qword ptr [rip + 0xd9470]
00000001405aae88 lea      rdx, [rip + 0x723b89]
00000001405aae8f jmp      0x1405aba72
00000001405aae94 mov      rax, qword ptr [rdi + 0x18]
00000001405aae98 lea      r8, [rip + 0xd4c31]
00000001405aae9f mov      rcx, qword ptr [rdi + 8]
00000001405aaea3 mov      edx, r13d
00000001405aaea6 mov      rax, qword ptr [rax + 0x118]
00000001405aaead call     qword ptr [rip + 0xd9445]
00000001405aaeb3 mov      rax, qword ptr [rsi + 0x20]
00000001405aaeb7 mov      r14d, 0xf4
00000001405aaebd mov      edx, r14d
00000001405aaec0 mov      rcx, rdi
00000001405aaec3 call     qword ptr [rip + 0xd942f]
00000001405aaec9 mov      r9d, 0x186000f4
00000001405aaecf lea      r8, [rip + 0xbd2fa]
00000001405aaed6 btr      eax, 0x11
00000001405aaeda mov      edx, r13d
00000001405aaedd bts      eax, 0x10
00000001405aaee1 mov      dword ptr [rbp + 0x30], eax
00000001405aaee4 mov      rax, qword ptr [rdi + 0x18]
00000001405aaee8 mov      rcx, qword ptr [rdi + 8]
00000001405aaeec mov      rax, qword ptr [rax + 0x118]
00000001405aaef3 call     qword ptr [rip + 0xd93ff]
00000001405aaef9 mov      rax, qword ptr [rsi + 0x28]
00000001405aaefd mov      edx, r14d
00000001405aaf00 mov      r8d, dword ptr [rbp + 0x30]
00000001405aaf04 mov      rcx, rdi
00000001405aaf07 call     qword ptr [rip + 0xd93eb]
00000001405aaf0d mov      rax, qword ptr [rsi + 0x20]
00000001405aaf11 mov      ebx, 0x58
00000001405aaf16 mov      edx, ebx
00000001405aaf18 mov      rcx, rdi
00000001405aaf1b call     qword ptr [rip + 0xd93d7]
00000001405aaf21 mov      r9d, 0x18600058
00000001405aaf27 lea      r8, [rip + 0xc2562]
00000001405aaf2e and      eax, 0xffffff8b
00000001405aaf31 mov      edx, r13d
00000001405aaf34 or       eax, 0x8b
00000001405aaf39 mov      dword ptr [rbp + 0x30], eax
00000001405aaf3c mov      rax, qword ptr [rdi + 0x18]
00000001405aaf40 mov      rcx, qword ptr [rdi + 8]
00000001405aaf44 mov      rax, qword ptr [rax + 0x118]
00000001405aaf4b call     qword ptr [rip + 0xd93a7]
00000001405aaf51 mov      eax, dword ptr [rbp + 0x30]
00000001405aaf54 lea      r8, [rip + 0xd4ab5]
00000001405aaf5b and      eax, 0xff8bffff
00000001405aaf60 mov      r9d, 0x18600058
00000001405aaf66 or       eax, 0x8b0000
00000001405aaf6b mov      edx, r13d
00000001405aaf6e mov      dword ptr [rbp + 0x30], eax
00000001405aaf71 mov      rax, qword ptr [rdi + 0x18]
00000001405aaf75 mov      rcx, qword ptr [rdi + 8]
00000001405aaf79 mov      rax, qword ptr [rax + 0x118]
00000001405aaf80 call     qword ptr [rip + 0xd9372]
00000001405aaf86 mov      rax, qword ptr [rsi + 0x28]
00000001405aaf8a mov      edx, ebx
00000001405aaf8c mov      r8d, dword ptr [rbp + 0x30]
00000001405aaf90 mov      rcx, rdi
00000001405aaf93 call     qword ptr [rip + 0xd935f]
00000001405aaf99 mov      rax, qword ptr [rsi + 0x10]
00000001405aaf9d mov      r14d, 0x9d04
00000001405aafa3 mov      edx, r14d
00000001405aafa6 mov      rcx, rdi
00000001405aafa9 call     qword ptr [rip + 0xd9349]
00000001405aafaf mov      rcx, qword ptr [rdi + 8]
00000001405aafb3 lea      r8, [rip + 0xd4a86]
00000001405aafba movzx    ebx, ax
00000001405aafbd mov      r9d, 0x18609d04
00000001405aafc3 mov      eax, 0xfeff
00000001405aafc8 mov      edx, r13d
00000001405aafcb and      bx, ax
00000001405aafce mov      rax, qword ptr [rdi + 0x18]
00000001405aafd2 mov      rax, qword ptr [rax + 0x118]
00000001405aafd9 call     qword ptr [rip + 0xd9319]
00000001405aafdf mov      rax, qword ptr [rsi + 0x18]
00000001405aafe3 movzx    r8d, bx
00000001405aafe7 mov      edx, r14d
00000001405aafea mov      rcx, rdi
00000001405aafed call     qword ptr [rip + 0xd9305]
00000001405aaff3 mov      rax, qword ptr [rsi + 0x20]
00000001405aaff7 lea      ebx, [r14 - 4]
00000001405aaffb mov      edx, ebx
00000001405aaffd mov      rcx, rdi
00000001405ab000 call     qword ptr [rip + 0xd92f2]
00000001405ab006 mov      r9d, 0x18609d00
00000001405ab00c lea      r8, [rip + 0xd4aed]
00000001405ab013 btr      eax, 0x15
00000001405ab017 mov      edx, r13d
00000001405ab01a bts      eax, 0x14
00000001405ab01e mov      dword ptr [rbp + 0x30], eax
00000001405ab021 mov      rax, qword ptr [rdi + 0x18]
00000001405ab025 mov      rcx, qword ptr [rdi + 8]
00000001405ab029 mov      rax, qword ptr [rax + 0x118]
00000001405ab030 call     qword ptr [rip + 0xd92c2]
00000001405ab036 mov      rax, qword ptr [rsi + 0x28]
00000001405ab03a mov      edx, ebx
00000001405ab03c mov      r8d, dword ptr [rbp + 0x30]
00000001405ab040 mov      rcx, rdi
00000001405ab043 call     qword ptr [rip + 0xd92af]
00000001405ab049 mov      rax, qword ptr [rdi + 0x18]
00000001405ab04d lea      r8, [rip + 0xd4adc]
00000001405ab054 mov      rcx, qword ptr [rdi + 8]
00000001405ab058 mov      edx, r13d
00000001405ab05b mov      rax, qword ptr [rax + 0x118]
00000001405ab062 call     qword ptr [rip + 0xd9290]
00000001405ab068 lea      rdx, [rip + 0x723999]
00000001405ab06f jmp      0x1405aba72
00000001405ab074 mov      rax, qword ptr [rdi + 0x18]
00000001405ab078 lea      r8, [rip + 0xd4961]
00000001405ab07f mov      rcx, qword ptr [rdi + 8]
00000001405ab083 mov      edx, r13d
00000001405ab086 mov      rax, qword ptr [rax + 0x118]
00000001405ab08d call     qword ptr [rip + 0xd9265]
00000001405ab093 mov      rax, qword ptr [rsi + 0x20]
00000001405ab097 mov      r14d, 0xf4
00000001405ab09d mov      edx, r14d
00000001405ab0a0 mov      rcx, rdi
00000001405ab0a3 call     qword ptr [rip + 0xd924f]
00000001405ab0a9 mov      r9d, 0x186000f4
00000001405ab0af lea      r8, [rip + 0xbd11a]
00000001405ab0b6 btr      eax, 0x11
00000001405ab0ba mov      edx, r13d
00000001405ab0bd bts      eax, 0x10
00000001405ab0c1 mov      dword ptr [rbp + 0x30], eax
00000001405ab0c4 mov      rax, qword ptr [rdi + 0x18]
00000001405ab0c8 mov      rcx, qword ptr [rdi + 8]
00000001405ab0cc mov      rax, qword ptr [rax + 0x118]
00000001405ab0d3 call     qword ptr [rip + 0xd921f]
00000001405ab0d9 mov      rax, qword ptr [rsi + 0x28]
00000001405ab0dd mov      edx, r14d
00000001405ab0e0 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab0e4 mov      rcx, rdi
00000001405ab0e7 call     qword ptr [rip + 0xd920b]
00000001405ab0ed mov      rax, qword ptr [rsi + 0x20]
00000001405ab0f1 mov      ebx, 0x58
00000001405ab0f6 mov      edx, ebx
00000001405ab0f8 mov      rcx, rdi
00000001405ab0fb call     qword ptr [rip + 0xd91f7]
00000001405ab101 mov      r9d, 0x18600058
00000001405ab107 lea      r8, [rip + 0xc2382]
00000001405ab10e and      eax, 0xffffff8b
00000001405ab111 mov      edx, r13d
00000001405ab114 or       eax, 0x8b
00000001405ab119 mov      dword ptr [rbp + 0x30], eax
00000001405ab11c mov      rax, qword ptr [rdi + 0x18]
00000001405ab120 mov      rcx, qword ptr [rdi + 8]
00000001405ab124 mov      rax, qword ptr [rax + 0x118]
00000001405ab12b call     qword ptr [rip + 0xd91c7]
00000001405ab131 mov      eax, dword ptr [rbp + 0x30]
00000001405ab134 lea      r8, [rip + 0xd48d5]
00000001405ab13b and      eax, 0xff8bffff
00000001405ab140 mov      r9d, 0x18600058
00000001405ab146 or       eax, 0x8b0000
00000001405ab14b mov      edx, r13d
00000001405ab14e mov      dword ptr [rbp + 0x30], eax
00000001405ab151 mov      rax, qword ptr [rdi + 0x18]
00000001405ab155 mov      rcx, qword ptr [rdi + 8]
00000001405ab159 mov      rax, qword ptr [rax + 0x118]
00000001405ab160 call     qword ptr [rip + 0xd9192]
00000001405ab166 mov      rax, qword ptr [rsi + 0x28]
00000001405ab16a mov      edx, ebx
00000001405ab16c mov      r8d, dword ptr [rbp + 0x30]
00000001405ab170 mov      rcx, rdi
00000001405ab173 call     qword ptr [rip + 0xd917f]
00000001405ab179 mov      rax, qword ptr [rsi + 0x10]
00000001405ab17d mov      r14d, 0x9d04
00000001405ab183 mov      edx, r14d
00000001405ab186 mov      rcx, rdi
00000001405ab189 call     qword ptr [rip + 0xd9169]
00000001405ab18f mov      rcx, qword ptr [rdi + 8]
00000001405ab193 lea      r8, [rip + 0xd48a6]
00000001405ab19a movzx    ebx, ax
00000001405ab19d mov      r9d, 0x18609d04
00000001405ab1a3 mov      eax, 0xfeff
00000001405ab1a8 mov      edx, r13d
00000001405ab1ab and      bx, ax
00000001405ab1ae mov      rax, qword ptr [rdi + 0x18]
00000001405ab1b2 mov      rax, qword ptr [rax + 0x118]
00000001405ab1b9 call     qword ptr [rip + 0xd9139]
00000001405ab1bf mov      rax, qword ptr [rsi + 0x18]
00000001405ab1c3 movzx    r8d, bx
00000001405ab1c7 mov      edx, r14d
00000001405ab1ca mov      rcx, rdi
00000001405ab1cd call     qword ptr [rip + 0xd9125]
00000001405ab1d3 mov      rax, qword ptr [rsi + 0x20]
00000001405ab1d7 lea      ebx, [r14 - 4]
00000001405ab1db mov      edx, ebx
00000001405ab1dd mov      rcx, rdi
00000001405ab1e0 call     qword ptr [rip + 0xd9112]
00000001405ab1e6 mov      r9d, 0x18609d00
00000001405ab1ec lea      r8, [rip + 0xd487d]
00000001405ab1f3 and      eax, 0xffcfffff
00000001405ab1f8 mov      edx, r13d
00000001405ab1fb mov      dword ptr [rbp + 0x30], eax
00000001405ab1fe mov      rax, qword ptr [rdi + 0x18]
00000001405ab202 mov      rcx, qword ptr [rdi + 8]
00000001405ab206 mov      rax, qword ptr [rax + 0x118]
00000001405ab20d call     qword ptr [rip + 0xd90e5]
00000001405ab213 mov      rax, qword ptr [rsi + 0x28]
00000001405ab217 mov      edx, ebx
00000001405ab219 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab21d mov      rcx, rdi
00000001405ab220 call     qword ptr [rip + 0xd90d2]
00000001405ab226 mov      rax, qword ptr [rdi + 0x18]
00000001405ab22a lea      r8, [rip + 0xd486f]
00000001405ab231 mov      rcx, qword ptr [rdi + 8]
00000001405ab235 mov      edx, r13d
00000001405ab238 mov      rax, qword ptr [rax + 0x118]
00000001405ab23f call     qword ptr [rip + 0xd90b3]
00000001405ab245 lea      rdx, [rip + 0x7237ac]
00000001405ab24c jmp      0x1405aba72
00000001405ab251 mov      rax, qword ptr [rdi + 0x18]
00000001405ab255 lea      r8, [rip + 0xd4ae4]
00000001405ab25c mov      rcx, qword ptr [rdi + 8]
00000001405ab260 mov      edx, r13d
00000001405ab263 mov      rax, qword ptr [rax + 0x118]
00000001405ab26a call     qword ptr [rip + 0xd9088]
00000001405ab270 mov      rax, qword ptr [rsi + 0x20]
00000001405ab274 mov      r14d, 0xf4
00000001405ab27a mov      edx, r14d
00000001405ab27d mov      rcx, rdi
00000001405ab280 call     qword ptr [rip + 0xd9072]
00000001405ab286 mov      r9d, 0x186000f4
00000001405ab28c lea      r8, [rip + 0xbcf3d]
00000001405ab293 btr      eax, 0x11
00000001405ab297 mov      edx, r13d
00000001405ab29a bts      eax, 0x10
00000001405ab29e mov      dword ptr [rbp + 0x30], eax
00000001405ab2a1 mov      rax, qword ptr [rdi + 0x18]
00000001405ab2a5 mov      rcx, qword ptr [rdi + 8]
00000001405ab2a9 mov      rax, qword ptr [rax + 0x118]
00000001405ab2b0 call     qword ptr [rip + 0xd9042]
00000001405ab2b6 mov      rax, qword ptr [rsi + 0x28]
00000001405ab2ba mov      edx, r14d
00000001405ab2bd mov      r8d, dword ptr [rbp + 0x30]
00000001405ab2c1 mov      rcx, rdi
00000001405ab2c4 call     qword ptr [rip + 0xd902e]
00000001405ab2ca mov      rax, qword ptr [rsi + 0x20]
00000001405ab2ce mov      ebx, 0x58
00000001405ab2d3 mov      edx, ebx
00000001405ab2d5 mov      rcx, rdi
00000001405ab2d8 call     qword ptr [rip + 0xd901a]
00000001405ab2de mov      r9d, 0x18600058
00000001405ab2e4 lea      r8, [rip + 0xc21a5]
00000001405ab2eb and      eax, 0xffffff8b
00000001405ab2ee mov      edx, r13d
00000001405ab2f1 or       eax, 0x8b
00000001405ab2f6 mov      dword ptr [rbp + 0x30], eax
00000001405ab2f9 mov      rax, qword ptr [rdi + 0x18]
00000001405ab2fd mov      rcx, qword ptr [rdi + 8]
00000001405ab301 mov      rax, qword ptr [rax + 0x118]
00000001405ab308 call     qword ptr [rip + 0xd8fea]
00000001405ab30e mov      eax, dword ptr [rbp + 0x30]
00000001405ab311 lea      r8, [rip + 0xd46f8]
00000001405ab318 and      eax, 0xff8bffff
00000001405ab31d mov      r9d, 0x18600058
00000001405ab323 or       eax, 0x8b0000
00000001405ab328 mov      edx, r13d
00000001405ab32b mov      dword ptr [rbp + 0x30], eax
00000001405ab32e mov      rax, qword ptr [rdi + 0x18]
00000001405ab332 mov      rcx, qword ptr [rdi + 8]
00000001405ab336 mov      rax, qword ptr [rax + 0x118]
00000001405ab33d call     qword ptr [rip + 0xd8fb5]
00000001405ab343 mov      rax, qword ptr [rsi + 0x28]
00000001405ab347 mov      edx, ebx
00000001405ab349 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab34d mov      rcx, rdi
00000001405ab350 call     qword ptr [rip + 0xd8fa2]
00000001405ab356 mov      rax, qword ptr [rsi + 0x10]
00000001405ab35a mov      r14d, 0x9d04
00000001405ab360 mov      edx, r14d
00000001405ab363 mov      rcx, rdi
00000001405ab366 call     qword ptr [rip + 0xd8f8c]
00000001405ab36c mov      rcx, qword ptr [rdi + 8]
00000001405ab370 lea      r8, [rip + 0xbd8e9]
00000001405ab377 movzx    ebx, ax
00000001405ab37a mov      r9d, 0x18609d04
00000001405ab380 mov      eax, 0x100
00000001405ab385 mov      edx, r13d
00000001405ab388 or       bx, ax
00000001405ab38b mov      rax, qword ptr [rdi + 0x18]
00000001405ab38f mov      rax, qword ptr [rax + 0x118]
00000001405ab396 call     qword ptr [rip + 0xd8f5c]
00000001405ab39c mov      rax, qword ptr [rsi + 0x18]
00000001405ab3a0 movzx    r8d, bx
00000001405ab3a4 mov      edx, r14d
00000001405ab3a7 mov      rcx, rdi
00000001405ab3aa call     qword ptr [rip + 0xd8f48]
00000001405ab3b0 mov      rax, qword ptr [rsi + 0x20]
00000001405ab3b4 lea      ebx, [r14 - 4]
00000001405ab3b8 mov      edx, ebx
00000001405ab3ba mov      rcx, rdi
00000001405ab3bd call     qword ptr [rip + 0xd8f35]
00000001405ab3c3 mov      r9d, 0x18609d00
00000001405ab3c9 lea      r8, [rip + 0xd47c0]
00000001405ab3d0 btr      eax, 0x14
00000001405ab3d4 mov      edx, r13d
00000001405ab3d7 bts      eax, 0x15
00000001405ab3db mov      dword ptr [rbp + 0x30], eax
00000001405ab3de mov      rax, qword ptr [rdi + 0x18]
00000001405ab3e2 mov      rcx, qword ptr [rdi + 8]
00000001405ab3e6 mov      rax, qword ptr [rax + 0x118]
00000001405ab3ed call     qword ptr [rip + 0xd8f05]
00000001405ab3f3 mov      rax, qword ptr [rsi + 0x28]
00000001405ab3f7 mov      edx, ebx
00000001405ab3f9 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab3fd mov      rcx, rdi
00000001405ab400 call     qword ptr [rip + 0xd8ef2]
00000001405ab406 mov      rax, qword ptr [rdi + 0x18]
00000001405ab40a lea      r8, [rip + 0xd495f]
00000001405ab411 mov      rcx, qword ptr [rdi + 8]
00000001405ab415 mov      edx, r13d
00000001405ab418 mov      rax, qword ptr [rax + 0x118]
00000001405ab41f call     qword ptr [rip + 0xd8ed3]
00000001405ab425 lea      rdx, [rip + 0x72362c]
00000001405ab42c jmp      0x1405aba72
00000001405ab431 sub      ebx, 0xcd
00000001405ab437 je       0x1405ab89a
00000001405ab43d sub      ebx, r13d
00000001405ab440 je       0x1405ab7a3
00000001405ab446 sub      ebx, r13d
00000001405ab449 je       0x1405ab6ac
00000001405ab44f sub      ebx, r13d
00000001405ab452 je       0x1405ab5b5
00000001405ab458 cmp      ebx, r13d
00000001405ab45b je       0x1405ab4c5
00000001405ab45d mov      rax, qword ptr [rdi + 0x18]
00000001405ab461 lea      r8, [rip + 0xc2298]
00000001405ab468 mov      rcx, qword ptr [rdi + 8]
00000001405ab46c mov      edx, r13d
00000001405ab46f mov      rax, qword ptr [rax + 0x118]
00000001405ab476 call     qword ptr [rip + 0xd8e7c]
00000001405ab47c mov      rax, qword ptr [rdi + 0x18]
00000001405ab480 lea      r8, [rip + 0xc2299]
00000001405ab487 mov      rcx, qword ptr [rdi + 8]
00000001405ab48b mov      edx, 2
00000001405ab490 mov      rax, qword ptr [rax + 0x118]
00000001405ab497 call     qword ptr [rip + 0xd8e5b]
00000001405ab49d dec      dword ptr [rdi + 0xef8]
00000001405ab4a3 mov      rdx, r12
00000001405ab4a6 mov      rax, qword ptr [rdi + 0x18]
00000001405ab4aa mov      rcx, qword ptr [rdi + 8]
00000001405ab4ae mov      rax, qword ptr [rax + 0x110]
00000001405ab4b5 call     qword ptr [rip + 0xd8e3d]
00000001405ab4bb mov      eax, 0x18
00000001405ab4c0 jmp      0x1405abacf
00000001405ab4c5 mov      rax, qword ptr [rdi + 0x18]
00000001405ab4c9 lea      r8, [rip + 0xc21d0]
00000001405ab4d0 mov      rcx, qword ptr [rdi + 8]
00000001405ab4d4 mov      edx, r13d
00000001405ab4d7 mov      rax, qword ptr [rax + 0x118]
00000001405ab4de call     qword ptr [rip + 0xd8e14]
00000001405ab4e4 mov      rax, qword ptr [rsi + 0x20]
00000001405ab4e8 mov      ebx, 0xe03c
00000001405ab4ed mov      edx, ebx
00000001405ab4ef mov      rcx, rdi
00000001405ab4f2 call     qword ptr [rip + 0xd8e00]
00000001405ab4f8 mov      r9d, 0x1860e03c
00000001405ab4fe lea      r8, [rip + 0xd48fb]
00000001405ab505 bts      eax, 0x14
00000001405ab509 mov      edx, r13d
00000001405ab50c mov      dword ptr [rbp + 0x30], eax
00000001405ab50f mov      rax, qword ptr [rdi + 0x18]
00000001405ab513 mov      rcx, qword ptr [rdi + 8]
00000001405ab517 mov      rax, qword ptr [rax + 0x118]
00000001405ab51e call     qword ptr [rip + 0xd8dd4]
00000001405ab524 mov      rax, qword ptr [rsi + 0x28]
00000001405ab528 mov      edx, ebx
00000001405ab52a mov      r8d, dword ptr [rbp + 0x30]
00000001405ab52e mov      rcx, rdi
00000001405ab531 call     qword ptr [rip + 0xd8dc1]
00000001405ab537 mov      rax, qword ptr [rsi + 0x20]
00000001405ab53b mov      ebx, 0x58
00000001405ab540 mov      edx, ebx
00000001405ab542 mov      rcx, rdi
00000001405ab545 call     qword ptr [rip + 0xd8dad]
00000001405ab54b mov      dword ptr [rbp + 0x30], 0xc000c0
00000001405ab552 lea      r8, [rip + 0xc2027]
00000001405ab559 mov      rax, qword ptr [rdi + 0x18]
00000001405ab55d mov      r9d, 0x18600058
00000001405ab563 mov      rcx, qword ptr [rdi + 8]
00000001405ab567 mov      edx, r13d
00000001405ab56a mov      rax, qword ptr [rax + 0x118]
00000001405ab571 call     qword ptr [rip + 0xd8d81]
00000001405ab577 mov      rax, qword ptr [rsi + 0x28]
00000001405ab57b mov      edx, ebx
00000001405ab57d mov      r8d, dword ptr [rbp + 0x30]
00000001405ab581 mov      rcx, rdi
00000001405ab584 call     qword ptr [rip + 0xd8d6e]
00000001405ab58a mov      rax, qword ptr [rdi + 0x18]
00000001405ab58e lea      r8, [rip + 0xc213b]
00000001405ab595 mov      rcx, qword ptr [rdi + 8]
00000001405ab599 mov      edx, r13d
00000001405ab59c mov      rax, qword ptr [rax + 0x118]
00000001405ab5a3 call     qword ptr [rip + 0xd8d4f]
00000001405ab5a9 lea      rdx, [rip + 0x7234f8]
00000001405ab5b0 jmp      0x1405aba72
00000001405ab5b5 mov      rax, qword ptr [rdi + 0x18]
00000001405ab5b9 lea      r8, [rip + 0xc2080]
00000001405ab5c0 mov      rcx, qword ptr [rdi + 8]
00000001405ab5c4 mov      edx, r13d
00000001405ab5c7 mov      rax, qword ptr [rax + 0x118]
00000001405ab5ce call     qword ptr [rip + 0xd8d24]
00000001405ab5d4 mov      rax, qword ptr [rsi + 0x20]
00000001405ab5d8 mov      r14d, 0xf4
00000001405ab5de mov      edx, r14d
00000001405ab5e1 mov      rcx, rdi
00000001405ab5e4 call     qword ptr [rip + 0xd8d0e]
00000001405ab5ea mov      r9d, 0x186000f4
00000001405ab5f0 lea      r8, [rip + 0xbcbd9]
00000001405ab5f7 btr      eax, 0x11
00000001405ab5fb mov      edx, r13d
00000001405ab5fe bts      eax, 0x10
00000001405ab602 mov      dword ptr [rbp + 0x30], eax
00000001405ab605 mov      rax, qword ptr [rdi + 0x18]
00000001405ab609 mov      rcx, qword ptr [rdi + 8]
00000001405ab60d mov      rax, qword ptr [rax + 0x118]
00000001405ab614 call     qword ptr [rip + 0xd8cde]
00000001405ab61a mov      rax, qword ptr [rsi + 0x28]
00000001405ab61e mov      edx, r14d
00000001405ab621 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab625 mov      rcx, rdi
00000001405ab628 call     qword ptr [rip + 0xd8cca]
00000001405ab62e mov      rax, qword ptr [rsi + 0x20]
00000001405ab632 mov      ebx, 0x58
00000001405ab637 mov      edx, ebx
00000001405ab639 mov      rcx, rdi
00000001405ab63c call     qword ptr [rip + 0xd8cb6]
00000001405ab642 mov      dword ptr [rbp + 0x30], 0xc000c0
00000001405ab649 lea      r8, [rip + 0xc1f30]
00000001405ab650 mov      rax, qword ptr [rdi + 0x18]
00000001405ab654 mov      r9d, 0x18600058
00000001405ab65a mov      rcx, qword ptr [rdi + 8]
00000001405ab65e mov      edx, r13d
00000001405ab661 mov      rax, qword ptr [rax + 0x118]
00000001405ab668 call     qword ptr [rip + 0xd8c8a]
00000001405ab66e mov      rax, qword ptr [rsi + 0x28]
00000001405ab672 mov      edx, ebx
00000001405ab674 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab678 mov      rcx, rdi
00000001405ab67b call     qword ptr [rip + 0xd8c77]
00000001405ab681 mov      rax, qword ptr [rdi + 0x18]
00000001405ab685 lea      r8, [rip + 0xc1fe4]
00000001405ab68c mov      rcx, qword ptr [rdi + 8]
00000001405ab690 mov      edx, r13d
00000001405ab693 mov      rax, qword ptr [rax + 0x118]
00000001405ab69a call     qword ptr [rip + 0xd8c58]
00000001405ab6a0 lea      rdx, [rip + 0x7233f1]
00000001405ab6a7 jmp      0x1405aba72
00000001405ab6ac mov      rax, qword ptr [rdi + 0x18]
00000001405ab6b0 lea      r8, [rip + 0xc1f29]
00000001405ab6b7 mov      rcx, qword ptr [rdi + 8]
00000001405ab6bb mov      edx, r13d
00000001405ab6be mov      rax, qword ptr [rax + 0x118]
00000001405ab6c5 call     qword ptr [rip + 0xd8c2d]
00000001405ab6cb mov      rax, qword ptr [rsi + 0x20]
00000001405ab6cf mov      r14d, 0xf4
00000001405ab6d5 mov      edx, r14d
00000001405ab6d8 mov      rcx, rdi
00000001405ab6db call     qword ptr [rip + 0xd8c17]
00000001405ab6e1 mov      r9d, 0x186000f4
00000001405ab6e7 lea      r8, [rip + 0xbcae2]
00000001405ab6ee btr      eax, 0x11
00000001405ab6f2 mov      edx, r13d
00000001405ab6f5 bts      eax, 0x10
00000001405ab6f9 mov      dword ptr [rbp + 0x30], eax
00000001405ab6fc mov      rax, qword ptr [rdi + 0x18]
00000001405ab700 mov      rcx, qword ptr [rdi + 8]
00000001405ab704 mov      rax, qword ptr [rax + 0x118]
00000001405ab70b call     qword ptr [rip + 0xd8be7]
00000001405ab711 mov      rax, qword ptr [rsi + 0x28]
00000001405ab715 mov      edx, r14d
00000001405ab718 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab71c mov      rcx, rdi
00000001405ab71f call     qword ptr [rip + 0xd8bd3]
00000001405ab725 mov      rax, qword ptr [rsi + 0x20]
00000001405ab729 mov      ebx, 0x58
00000001405ab72e mov      edx, ebx
00000001405ab730 mov      rcx, rdi
00000001405ab733 call     qword ptr [rip + 0xd8bbf]
00000001405ab739 mov      dword ptr [rbp + 0x30], 0xc000c0
00000001405ab740 lea      r8, [rip + 0xc1e39]
00000001405ab747 mov      rax, qword ptr [rdi + 0x18]
00000001405ab74b mov      r9d, 0x18600058
00000001405ab751 mov      rcx, qword ptr [rdi + 8]
00000001405ab755 mov      edx, r13d
00000001405ab758 mov      rax, qword ptr [rax + 0x118]
00000001405ab75f call     qword ptr [rip + 0xd8b93]
00000001405ab765 mov      rax, qword ptr [rsi + 0x28]
00000001405ab769 mov      edx, ebx
00000001405ab76b mov      r8d, dword ptr [rbp + 0x30]
00000001405ab76f mov      rcx, rdi
00000001405ab772 call     qword ptr [rip + 0xd8b80]
00000001405ab778 mov      rax, qword ptr [rdi + 0x18]
00000001405ab77c lea      r8, [rip + 0xc1e8d]
00000001405ab783 mov      rcx, qword ptr [rdi + 8]
00000001405ab787 mov      edx, r13d
00000001405ab78a mov      rax, qword ptr [rax + 0x118]
00000001405ab791 call     qword ptr [rip + 0xd8b61]
00000001405ab797 lea      rdx, [rip + 0x7232ea]
00000001405ab79e jmp      0x1405aba72
00000001405ab7a3 mov      rax, qword ptr [rdi + 0x18]
00000001405ab7a7 lea      r8, [rip + 0xc1da2]
00000001405ab7ae mov      rcx, qword ptr [rdi + 8]
00000001405ab7b2 mov      edx, r13d
00000001405ab7b5 mov      rax, qword ptr [rax + 0x118]
00000001405ab7bc call     qword ptr [rip + 0xd8b36]
00000001405ab7c2 mov      rax, qword ptr [rsi + 0x20]
00000001405ab7c6 mov      r14d, 0xf4
00000001405ab7cc mov      edx, r14d
00000001405ab7cf mov      rcx, rdi
00000001405ab7d2 call     qword ptr [rip + 0xd8b20]
00000001405ab7d8 mov      r9d, 0x186000f4
00000001405ab7de lea      r8, [rip + 0xbc9eb]
00000001405ab7e5 btr      eax, 0x11
00000001405ab7e9 mov      edx, r13d
00000001405ab7ec bts      eax, 0x10
00000001405ab7f0 mov      dword ptr [rbp + 0x30], eax
00000001405ab7f3 mov      rax, qword ptr [rdi + 0x18]
00000001405ab7f7 mov      rcx, qword ptr [rdi + 8]
00000001405ab7fb mov      rax, qword ptr [rax + 0x118]
00000001405ab802 call     qword ptr [rip + 0xd8af0]
00000001405ab808 mov      rax, qword ptr [rsi + 0x28]
00000001405ab80c mov      edx, r14d
00000001405ab80f mov      r8d, dword ptr [rbp + 0x30]
00000001405ab813 mov      rcx, rdi
00000001405ab816 call     qword ptr [rip + 0xd8adc]
00000001405ab81c mov      rax, qword ptr [rsi + 0x20]
00000001405ab820 mov      ebx, 0x58
00000001405ab825 mov      edx, ebx
00000001405ab827 mov      rcx, rdi
00000001405ab82a call     qword ptr [rip + 0xd8ac8]
00000001405ab830 mov      dword ptr [rbp + 0x30], 0xc000c0
00000001405ab837 lea      r8, [rip + 0xc1d42]
00000001405ab83e mov      rax, qword ptr [rdi + 0x18]
00000001405ab842 mov      r9d, 0x18600058
00000001405ab848 mov      rcx, qword ptr [rdi + 8]
00000001405ab84c mov      edx, r13d
00000001405ab84f mov      rax, qword ptr [rax + 0x118]
00000001405ab856 call     qword ptr [rip + 0xd8a9c]
00000001405ab85c mov      rax, qword ptr [rsi + 0x28]
00000001405ab860 mov      edx, ebx
00000001405ab862 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab866 mov      rcx, rdi
00000001405ab869 call     qword ptr [rip + 0xd8a89]
00000001405ab86f mov      rax, qword ptr [rdi + 0x18]
00000001405ab873 lea      r8, [rip + 0xc1d36]
00000001405ab87a mov      rcx, qword ptr [rdi + 8]
00000001405ab87e mov      edx, r13d
00000001405ab881 mov      rax, qword ptr [rax + 0x118]
00000001405ab888 call     qword ptr [rip + 0xd8a6a]
00000001405ab88e lea      rdx, [rip + 0x7231e3]
00000001405ab895 jmp      0x1405aba72
00000001405ab89a mov      rax, qword ptr [rdi + 0x18]
00000001405ab89e lea      r8, [rip + 0xd44fb]
00000001405ab8a5 mov      rcx, qword ptr [rdi + 8]
00000001405ab8a9 mov      edx, r13d
00000001405ab8ac mov      rax, qword ptr [rax + 0x118]
00000001405ab8b3 call     qword ptr [rip + 0xd8a3f]
00000001405ab8b9 mov      rax, qword ptr [rsi + 0x20]
00000001405ab8bd mov      r14d, 0xf4
00000001405ab8c3 mov      edx, r14d
00000001405ab8c6 mov      rcx, rdi
00000001405ab8c9 call     qword ptr [rip + 0xd8a29]
00000001405ab8cf mov      r9d, 0x186000f4
00000001405ab8d5 lea      r8, [rip + 0xbc8f4]
00000001405ab8dc btr      eax, 0x11
00000001405ab8e0 mov      edx, r13d
00000001405ab8e3 bts      eax, 0x10
00000001405ab8e7 mov      dword ptr [rbp + 0x30], eax
00000001405ab8ea mov      rax, qword ptr [rdi + 0x18]
00000001405ab8ee mov      rcx, qword ptr [rdi + 8]
00000001405ab8f2 mov      rax, qword ptr [rax + 0x118]
00000001405ab8f9 call     qword ptr [rip + 0xd89f9]
00000001405ab8ff mov      rax, qword ptr [rsi + 0x28]
00000001405ab903 mov      edx, r14d
00000001405ab906 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab90a mov      rcx, rdi
00000001405ab90d call     qword ptr [rip + 0xd89e5]
00000001405ab913 mov      rax, qword ptr [rsi + 0x20]
00000001405ab917 mov      ebx, 0x58
00000001405ab91c mov      edx, ebx
00000001405ab91e mov      rcx, rdi
00000001405ab921 call     qword ptr [rip + 0xd89d1]
00000001405ab927 mov      r9d, 0x18600058
00000001405ab92d lea      r8, [rip + 0xc1b5c]
00000001405ab934 and      eax, 0xffffff8b
00000001405ab937 mov      edx, r13d
00000001405ab93a or       eax, 0x8b
00000001405ab93f mov      dword ptr [rbp + 0x30], eax
00000001405ab942 mov      rax, qword ptr [rdi + 0x18]
00000001405ab946 mov      rcx, qword ptr [rdi + 8]
00000001405ab94a mov      rax, qword ptr [rax + 0x118]
00000001405ab951 call     qword ptr [rip + 0xd89a1]
00000001405ab957 mov      eax, dword ptr [rbp + 0x30]
00000001405ab95a lea      r8, [rip + 0xd40af]
00000001405ab961 and      eax, 0xff8bffff
00000001405ab966 mov      r9d, 0x18600058
00000001405ab96c or       eax, 0x8b0000
00000001405ab971 mov      edx, r13d
00000001405ab974 mov      dword ptr [rbp + 0x30], eax
00000001405ab977 mov      rax, qword ptr [rdi + 0x18]
00000001405ab97b mov      rcx, qword ptr [rdi + 8]
00000001405ab97f mov      rax, qword ptr [rax + 0x118]
00000001405ab986 call     qword ptr [rip + 0xd896c]
00000001405ab98c mov      rax, qword ptr [rsi + 0x28]
00000001405ab990 mov      edx, ebx
00000001405ab992 mov      r8d, dword ptr [rbp + 0x30]
00000001405ab996 mov      rcx, rdi
00000001405ab999 call     qword ptr [rip + 0xd8959]
00000001405ab99f mov      rax, qword ptr [rsi + 0x10]
00000001405ab9a3 mov      r14d, 0x9d04
00000001405ab9a9 mov      edx, r14d
00000001405ab9ac mov      rcx, rdi
00000001405ab9af call     qword ptr [rip + 0xd8943]
00000001405ab9b5 mov      rcx, qword ptr [rdi + 8]
00000001405ab9b9 lea      r8, [rip + 0xbd2a0]
00000001405ab9c0 movzx    ebx, ax
00000001405ab9c3 mov      r9d, 0x18609d04
00000001405ab9c9 mov      eax, 0x100
00000001405ab9ce mov      edx, r13d
00000001405ab9d1 or       bx, ax
00000001405ab9d4 mov      rax, qword ptr [rdi + 0x18]
00000001405ab9d8 mov      rax, qword ptr [rax + 0x118]
00000001405ab9df call     qword ptr [rip + 0xd8913]
00000001405ab9e5 mov      rax, qword ptr [rsi + 0x18]
00000001405ab9e9 movzx    r8d, bx
00000001405ab9ed mov      edx, r14d
00000001405ab9f0 mov      rcx, rdi
00000001405ab9f3 call     qword ptr [rip + 0xd88ff]
00000001405ab9f9 mov      rax, qword ptr [rsi + 0x20]
00000001405ab9fd lea      ebx, [r14 - 4]
00000001405aba01 mov      edx, ebx
00000001405aba03 mov      rcx, rdi
00000001405aba06 call     qword ptr [rip + 0xd88ec]
00000001405aba0c mov      r9d, 0x18609d00
00000001405aba12 lea      r8, [rip + 0xd4207]
00000001405aba19 or       eax, 0x300000
00000001405aba1e mov      edx, r13d
00000001405aba21 mov      dword ptr [rbp + 0x30], eax
00000001405aba24 mov      rax, qword ptr [rdi + 0x18]
00000001405aba28 mov      rcx, qword ptr [rdi + 8]
00000001405aba2c mov      rax, qword ptr [rax + 0x118]
00000001405aba33 call     qword ptr [rip + 0xd88bf]
00000001405aba39 mov      rax, qword ptr [rsi + 0x28]
00000001405aba3d mov      edx, ebx
00000001405aba3f mov      r8d, dword ptr [rbp + 0x30]
00000001405aba43 mov      rcx, rdi
00000001405aba46 call     qword ptr [rip + 0xd88ac]
00000001405aba4c mov      rax, qword ptr [rdi + 0x18]
00000001405aba50 lea      r8, [rip + 0xd4379]
00000001405aba57 mov      rcx, qword ptr [rdi + 8]
00000001405aba5b mov      edx, r13d
00000001405aba5e mov      rax, qword ptr [rax + 0x118]
00000001405aba65 call     qword ptr [rip + 0xd888d]
00000001405aba6b lea      rdx, [rip + 0x722ff6]
00000001405aba72 xor      r9d, r9d
00000001405aba75 mov      byte ptr [rsp + 0x20], 0
00000001405aba7a xor      r8d, r8d
00000001405aba7d mov      rcx, rdi
00000001405aba80 call     0x14056e2c0
00000001405aba85 mov      ebx, eax
00000001405aba87 test     eax, eax
00000001405aba89 je       0x1405abaaf
00000001405aba8b mov      rax, qword ptr [rdi + 0x18]
00000001405aba8f mov      rax, qword ptr [rax + 0x118]
00000001405aba96 mov      rcx, qword ptr [rdi + 8]
00000001405aba9a lea      r8, [rip + 0xbc81f]
00000001405abaa1 mov      r9d, ebx
00000001405abaa4 mov      edx, 2
00000001405abaa9 call     qword ptr [rip + 0xd8849]
00000001405abaaf dec      dword ptr [rdi + 0xef8]
00000001405abab5 mov      rdx, r12
00000001405abab8 mov      rax, qword ptr [rdi + 0x18]
00000001405ababc mov      rcx, qword ptr [rdi + 8]
00000001405abac0 mov      rax, qword ptr [rax + 0x110]
00000001405abac7 call     qword ptr [rip + 0xd882b]
00000001405abacd mov      eax, ebx
00000001405abacf mov      rbx, qword ptr [rsp + 0x68]
00000001405abad4 mov      rsi, qword ptr [rsp + 0x70]
00000001405abad9 mov      rdi, qword ptr [rsp + 0x78]
00000001405abade add      rsp, 0x30
00000001405abae2 pop      r15
00000001405abae4 pop      r14
00000001405abae6 pop      r13
00000001405abae8 pop      r12
00000001405abaea pop      rbp
00000001405abaeb ret      