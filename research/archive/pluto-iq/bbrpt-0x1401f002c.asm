00000001401f002c mov      qword ptr [rsp + 8], rbx
00000001401f0031 mov      qword ptr [rsp + 0x10], rbp
00000001401f0036 mov      qword ptr [rsp + 0x18], rsi
00000001401f003b push     rdi
00000001401f003c push     r12
00000001401f003e push     r13
00000001401f0040 push     r14
00000001401f0042 push     r15
00000001401f0044 sub      rsp, 0x20
00000001401f0048 mov      rax, qword ptr [rcx + 0x798]
00000001401f004f mov      rbx, rdx
00000001401f0052 mov      rsi, qword ptr [rdx + 0xa0]
00000001401f0059 mov      r15, rcx
00000001401f005c mov      r14, qword ptr [rdx + 0xa8]
00000001401f0063 mov      r13, qword ptr [rdx + 0xb0]
00000001401f006a movzx    edi, word ptr [rax + 0x96ca]
00000001401f0071 xor      eax, eax
00000001401f0073 mov      r12, qword ptr [rcx + 0x8b88]
00000001401f007a test     rsi, rsi
00000001401f007d je       0x1401f00c9
00000001401f007f cmp      ax, di
00000001401f0082 jae      0x1401f00b0
00000001401f0084 mov      ebp, edi
00000001401f0086 cmp      qword ptr [rsi + 0x10], rax
00000001401f008a je       0x1401f00aa
00000001401f008c mov      rax, qword ptr [r12 + 0x48]
00000001401f0091 mov      rdx, rsi
00000001401f0094 mov      rcx, r15
00000001401f0097 call     qword ptr [rip + 0x49425b]
00000001401f009d xor      eax, eax
00000001401f009f mov      qword ptr [rsi + 0x10], rax
00000001401f00a3 mov      byte ptr [rsi + 0x54], al
00000001401f00a6 add      rsi, 0x60
00000001401f00aa sub      rbp, 1
00000001401f00ae jne      0x1401f0086
00000001401f00b0 mov      rcx, qword ptr [rbx + 0xa0]
00000001401f00b7 test     rcx, rcx
00000001401f00ba je       0x1401f00c9
00000001401f00bc lea      edx, [rdi + rdi*2]
00000001401f00bf shl      edx, 5
00000001401f00c2 call     0x140031160
00000001401f00c7 xor      eax, eax
00000001401f00c9 test     r14, r14
00000001401f00cc je       0x1401f011c
00000001401f00ce cmp      ax, di
00000001401f00d1 jae      0x1401f0103
00000001401f00d3 lea      rsi, [r14 + 0x10]
00000001401f00d7 mov      rbp, rdi
00000001401f00da cmp      qword ptr [rsi], rax
00000001401f00dd je       0x1401f00fd
00000001401f00df mov      rax, qword ptr [r12 + 0x48]
00000001401f00e4 lea      rdx, [rsi - 0x10]
00000001401f00e8 mov      rcx, r15
00000001401f00eb call     qword ptr [rip + 0x494207]
00000001401f00f1 xor      eax, eax
00000001401f00f3 mov      qword ptr [rsi], rax
00000001401f00f6 mov      byte ptr [rsi + 0x44], al
00000001401f00f9 add      rsi, 0x60
00000001401f00fd sub      rbp, 1
00000001401f0101 jne      0x1401f00da
00000001401f0103 mov      rcx, qword ptr [rbx + 0xa8]
00000001401f010a test     rcx, rcx
00000001401f010d je       0x1401f011c
00000001401f010f lea      edx, [rdi + rdi*2]
00000001401f0112 shl      edx, 5
00000001401f0115 call     0x140031160
00000001401f011a xor      eax, eax
00000001401f011c test     r13, r13
00000001401f011f je       0x1401f016d
00000001401f0121 cmp      ax, di
00000001401f0124 jae      0x1401f0156
00000001401f0126 lea      rsi, [r13 + 0x10]
00000001401f012a mov      rbp, rdi
00000001401f012d cmp      qword ptr [rsi], rax
00000001401f0130 je       0x1401f0150
00000001401f0132 mov      rax, qword ptr [r12 + 0x48]
00000001401f0137 lea      rdx, [rsi - 0x10]
00000001401f013b mov      rcx, r15
00000001401f013e call     qword ptr [rip + 0x4941b4]
00000001401f0144 xor      eax, eax
00000001401f0146 mov      qword ptr [rsi], rax
00000001401f0149 mov      byte ptr [rsi + 0x44], al
00000001401f014c add      rsi, 0x60
00000001401f0150 sub      rbp, 1
00000001401f0154 jne      0x1401f012d
00000001401f0156 mov      rcx, qword ptr [rbx + 0xb0]
00000001401f015d test     rcx, rcx
00000001401f0160 je       0x1401f016d
00000001401f0162 lea      edx, [rdi + rdi*2]
00000001401f0165 shl      edx, 5
00000001401f0168 call     0x140031160
00000001401f016d mov      rcx, qword ptr [rbx + 0xb8]
00000001401f0174 test     rcx, rcx
00000001401f0177 je       0x1401f0183
00000001401f0179 mov      edx, edi
00000001401f017b shl      edx, 3
00000001401f017e call     0x140031160
00000001401f0183 mov      rcx, qword ptr [rbx + 0xc0]
00000001401f018a test     rcx, rcx
00000001401f018d je       0x1401f0199
00000001401f018f mov      edx, edi
00000001401f0191 shl      edx, 3
00000001401f0194 call     0x140031160
00000001401f0199 mov      rcx, qword ptr [rbx + 0xc8]
00000001401f01a0 test     rcx, rcx
00000001401f01a3 je       0x1401f01af
00000001401f01a5 mov      edx, edi
00000001401f01a7 shl      edx, 3
00000001401f01aa call     0x140031160
00000001401f01af and      qword ptr [rbx + 0xd8], 0
00000001401f01b7 lea      rcx, [rbx + 0xd0]
00000001401f01be and      dword ptr [rbx + 0xe0], 0
00000001401f01c5 lea      rdx, [rip + 0x41e744]
00000001401f01cc mov      rbx, qword ptr [rsp + 0x50]
00000001401f01d1 mov      rbp, qword ptr [rsp + 0x58]
00000001401f01d6 mov      rsi, qword ptr [rsp + 0x60]
00000001401f01db add      rsp, 0x20
00000001401f01df pop      r15
00000001401f01e1 pop      r14
00000001401f01e3 pop      r13
00000001401f01e5 pop      r12
00000001401f01e7 pop      rdi
00000001401f01e8 jmp      0x1400314e4