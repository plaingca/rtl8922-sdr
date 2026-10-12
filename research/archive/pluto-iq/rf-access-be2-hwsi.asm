00000001403efdb4 push     rbp
00000001403efdb6 push     rbx
00000001403efdb7 push     rsi
00000001403efdb8 push     rdi
00000001403efdb9 push     r12
00000001403efdbb push     r13
00000001403efdbd push     r14
00000001403efdbf push     r15
00000001403efdc1 lea      rbp, [rsp - 0x88]
00000001403efdc9 sub      rsp, 0x188
00000001403efdd0 mov      rax, qword ptr [rip + 0x537689]
00000001403efdd7 xor      rax, rsp
00000001403efdda mov      qword ptr [rbp + 0x70], rax
00000001403efdde mov      eax, 0xc60
00000001403efde3 movsxd   rbx, edx
00000001403efde6 mov      dword ptr [rbp - 0x50], eax
00000001403efde9 mov      edx, 0xf
00000001403efdee mov      dword ptr [rbp - 0x4c], eax
00000001403efdf1 xor      edi, edi
00000001403efdf3 xor      eax, eax
00000001403efdf5 mov      dword ptr [rsp + 0x40], r9d
00000001403efdfa mov      dword ptr [rbp + 0x50], eax
00000001403efdfd xorps    xmm0, xmm0
00000001403efe00 mov      qword ptr [rbp - 0x28], rax
00000001403efe04 lea      r15d, [rdx - 0xe]
00000001403efe08 mov      dword ptr [rbp - 0x20], eax
00000001403efe0b lea      r14d, [rdx - 0xc]
00000001403efe0f mov      eax, 0x2adc
00000001403efe14 mov      dword ptr [rsp + 0x50], r8d
00000001403efe19 mov      dword ptr [rbp - 0x14], eax
00000001403efe1c mov      rsi, rcx
00000001403efe1f mov      dword ptr [rbp - 8], eax
00000001403efe22 mov      ecx, 0xf00
00000001403efe27 mov      eax, 0x2bdc
00000001403efe2c mov      dword ptr [rbp - 0x48], 0xc74
00000001403efe33 mov      dword ptr [rbp], eax
00000001403efe36 mov      dword ptr [rbp + 0xc], eax
00000001403efe39 mov      eax, 0x3f000
00000001403efe3e mov      dword ptr [rbp - 0x78], eax
00000001403efe41 mov      dword ptr [rbp - 0x74], eax
00000001403efe44 xor      eax, eax
00000001403efe46 mov      dword ptr [rbp + 0x68], eax
00000001403efe49 mov      dword ptr [rbp - 0x44], 0xc58
00000001403efe50 mov      dword ptr [rbp - 0x40], 0x6b54
00000001403efe57 mov      dword ptr [rbp - 0x68], 0xc0000
00000001403efe5e mov      dword ptr [rbp - 0x64], ecx
00000001403efe61 mov      dword ptr [rbp - 0x60], 0x30
00000001403efe68 mov      dword ptr [rbp - 0x5c], 0x100000
00000001403efe6f mov      dword ptr [rbp - 0x58], edx
00000001403efe72 mov      qword ptr [rbp + 0x10], rdi
00000001403efe76 mov      dword ptr [rbp + 0x18], edi
00000001403efe79 mov      dword ptr [rbp + 0x1c], r15d
00000001403efe7d mov      dword ptr [rbp + 0x20], r14d
00000001403efe81 movups   xmmword ptr [rbp + 0x40], xmm0
00000001403efe85 mov      dword ptr [rsp + 0x70], 0x1008
00000001403efe8d mov      dword ptr [rsp + 0x74], 4
00000001403efe95 mov      dword ptr [rsp + 0x78], 4
00000001403efe9d mov      dword ptr [rsp + 0x60], 0x800000
00000001403efea5 mov      dword ptr [rsp + 0x64], 0xf00000
00000001403efead mov      dword ptr [rsp + 0x68], ecx
00000001403efeb1 mov      dword ptr [rbp - 0x38], r15d
00000001403efeb5 mov      dword ptr [rbp - 0x34], 2
00000001403efebc mov      dword ptr [rbp - 0x30], r15d
00000001403efec0 mov      dword ptr [rsp + 0x44], 0x2b002a00
00000001403efec8 mov      dword ptr [rbp - 0x18], 0xe414
00000001403efecf mov      dword ptr [rbp - 0x10], 0x40ec
00000001403efed6 mov      dword ptr [rbp - 0xc], 0x50ec
00000001403efedd mov      dword ptr [rbp - 4], 0xe514
00000001403efee4 mov      dword ptr [rbp + 4], 0x44ec
00000001403efeeb mov      dword ptr [rbp + 8], 0x54ec
00000001403efef2 mov      dword ptr [rbp - 0x80], 0x800
00000001403efef9 mov      dword ptr [rbp - 0x7c], 0x1f8000
00000001403eff00 mov      dword ptr [rbp - 0x70], 0x3000
00000001403eff07 mov      dword ptr [rbp + 0x28], r15d
00000001403eff0b mov      dword ptr [rbp + 0x2c], 0x3f
00000001403eff12 mov      dword ptr [rbp + 0x30], edx
00000001403eff15 mov      dword ptr [rbp + 0x34], edx
00000001403eff18 mov      dword ptr [rbp + 0x38], r14d
00000001403eff1c movups   xmmword ptr [rbp + 0x58], xmm0
00000001403eff20 mov      dword ptr [rsp + 0x48], 0xe610
00000001403eff28 mov      dword ptr [rsp + 0x4c], 0xe710
00000001403eff30 mov      rcx, qword ptr [rip + 0x5300c9]
00000001403eff37 lea      rax, [rip + 0x5300c2]
00000001403eff3e cmp      rcx, rax
00000001403eff41 je       0x1403eff7c
00000001403eff43 cmp      byte ptr [rcx + 0x1e9], 4
00000001403eff4a jb       0x1403eff7c
00000001403eff4c test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403eff56 je       0x1403eff75
00000001403eff58 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403eff5f lea      edx, [rdi + 0x23]
00000001403eff62 lea      r9, [rip + 0x25fd87]
00000001403eff69 lea      r8, [rip + 0x2e5580]
00000001403eff70 call     0x140008874
00000001403eff75 lea      rax, [rip + 0x530084]
00000001403eff7c cmp      ebx, r15d
00000001403eff7f jle      0x1403effcc
00000001403eff81 mov      rcx, qword ptr [rip + 0x530078]
00000001403eff88 cmp      rcx, rax
00000001403eff8b je       0x1403effc5
00000001403eff8d cmp      byte ptr [rcx + 0x169], r14b
00000001403eff94 jb       0x1403effc5
00000001403eff96 test     dword ptr [rcx + 0x16c], 0x1000
00000001403effa0 je       0x1403effc5
00000001403effa2 mov      rcx, qword ptr [rcx + 0x158]
00000001403effa9 lea      r9, [rip + 0x25fd40]
00000001403effb0 mov      edx, 0x24
00000001403effb5 mov      dword ptr [rsp + 0x20], ebx
00000001403effb9 lea      r8, [rip + 0x2e5530]
00000001403effc0 call     0x1400088d8
00000001403effc5 xor      al, al
00000001403effc7 jmp      0x1403f02e7
00000001403effcc mov      r12d, dword ptr [rbp + 0xf0]
00000001403effd3 xor      r9d, r9d
00000001403effd6 mov      edx, 0x704
00000001403effdb mov      dword ptr [rsp + 0x20], r12d
00000001403effe0 mov      r8d, 0x1000
00000001403effe6 mov      rcx, rsi
00000001403effe9 call     0x140316680
00000001403effee xor      r9d, r9d
00000001403efff1 mov      dword ptr [rsp + 0x20], r12d
00000001403efff6 mov      edx, 0x730
00000001403efffb mov      r8d, 0x2000
00000001403f0001 mov      rcx, rsi
00000001403f0004 call     0x140316680
00000001403f0009 mov      eax, dword ptr [rsp + rbx*4 + 0x48]
00000001403f000d mov      r9d, r15d
00000001403f0010 mov      edx, eax
00000001403f0012 mov      qword ptr [rsp + 0x58], rbx
00000001403f0017 mov      r8d, 8
00000001403f001d mov      dword ptr [rsp + 0x48], eax
00000001403f0021 mov      rcx, rsi
00000001403f0024 mov      dword ptr [rsp + 0x20], edi
00000001403f0028 call     0x140316680
00000001403f002d xor      r9d, r9d
00000001403f0030 mov      dword ptr [rsp + 0x20], r12d
00000001403f0035 mov      edx, 0x704
00000001403f003a mov      rcx, rsi
00000001403f003d lea      r8d, [r9 + 2]
00000001403f0041 call     0x140316680
00000001403f0046 mov      edx, r15d
00000001403f0049 mov      rcx, rsi
00000001403f004c call     0x1403154ac
00000001403f0051 mov      r15, rdi
00000001403f0054 mov      r13d, 5
00000001403f005a mov      ebx, dword ptr [rbp + r15 - 0x68]
00000001403f005f mov      r9d, r12d
00000001403f0062 mov      edi, dword ptr [rbp + r15 - 0x50]
00000001403f0067 mov      r8d, ebx
00000001403f006a mov      edx, edi
00000001403f006c mov      rcx, rsi
00000001403f006f call     0x14031658c
00000001403f0074 mov      r9d, dword ptr [rbp + r15 + 0x10]
00000001403f0079 mov      r8d, ebx
00000001403f007c mov      edx, edi
00000001403f007e mov      dword ptr [rbp + r15 + 0x40], eax
00000001403f0083 mov      rcx, rsi
00000001403f0086 mov      dword ptr [rsp + 0x20], r12d
00000001403f008b call     0x140316680
00000001403f0090 lea      r15, [r15 + 4]
00000001403f0094 sub      r13, 1
00000001403f0098 jne      0x1403f005a
00000001403f009a mov      r13, qword ptr [rsp + 0x58]
00000001403f009f xor      r15d, r15d
00000001403f00a2 mov      r12, r14
00000001403f00a5 mov      ebx, dword ptr [rsp + r15 + 0x60]
00000001403f00aa xor      r9d, r9d
00000001403f00ad mov      edi, dword ptr [rsp + r15 + 0x70]
00000001403f00b2 mov      r8d, ebx
00000001403f00b5 mov      edx, edi
00000001403f00b7 mov      rcx, rsi
00000001403f00ba call     0x14031658c
00000001403f00bf mov      r9d, dword ptr [rbp + r15 - 0x38]
00000001403f00c4 mov      r8d, ebx
00000001403f00c7 and      dword ptr [rsp + 0x20], 0
00000001403f00cc mov      edx, edi
00000001403f00ce mov      rcx, rsi
00000001403f00d1 mov      dword ptr [rbp + r15 - 0x28], eax
00000001403f00d6 call     0x140316680
00000001403f00db lea      r15, [r15 + 4]
00000001403f00df sub      r12, 1
00000001403f00e3 jne      0x1403f00a5
00000001403f00e5 mov      r12d, dword ptr [rbp + 0xf0]
00000001403f00ec lea      r15, [r13*4]
00000001403f00f4 xor      dil, dil
00000001403f00f7 add      r15, r13
00000001403f00fa cmp      dil, 4
00000001403f00fe je       0x1403f0122
00000001403f0100 movzx    ebx, dil
00000001403f0104 xor      r9d, r9d
00000001403f0107 mov      rcx, rsi
00000001403f010a mov      r8d, dword ptr [rbp + rbx*4 - 0x80]
00000001403f010f lea      rdx, [r15 + rbx]
00000001403f0113 mov      edx, dword ptr [rbp + rdx*4 - 0x18]
00000001403f0117 call     0x14031658c
00000001403f011c mov      dword ptr [rbp + rbx*4 + 0x58], eax
00000001403f0120 jmp      0x1403f0127
00000001403f0122 mov      ebx, 4
00000001403f0127 mov      r9d, dword ptr [rbp + rbx*4 + 0x28]
00000001403f012c lea      rdx, [r15 + rbx]
00000001403f0130 mov      edx, dword ptr [rbp + rdx*4 - 0x18]
00000001403f0134 mov      rcx, rsi
00000001403f0137 mov      r8d, dword ptr [rbp + rbx*4 - 0x80]
00000001403f013c and      dword ptr [rsp + 0x20], 0
00000001403f0141 call     0x140316680
00000001403f0146 inc      dil
00000001403f0149 cmp      dil, 5
00000001403f014d jb       0x1403f00fa
00000001403f014f mov      ebx, 2
00000001403f0154 mov      dword ptr [rsp + 0x20], r12d
00000001403f0159 mov      edi, 0x704
00000001403f015e mov      r8d, ebx
00000001403f0161 mov      edx, edi
00000001403f0163 mov      rcx, rsi
00000001403f0166 lea      r9d, [rbx - 1]
00000001403f016a call     0x140316680
00000001403f016f mov      edx, r14d
00000001403f0172 mov      rcx, rsi
00000001403f0175 call     0x1403154ac
00000001403f017a mov      eax, dword ptr [rsp + 0x40]
00000001403f017e or       r8d, 0xffffffff
00000001403f0182 movzx    edx, word ptr [rsp + r13*2 + 0x44]
00000001403f0188 and      eax, 0xfffff
00000001403f018d movzx    r15d, byte ptr [rsp + 0x50]
00000001403f0193 mov      r9d, eax
00000001403f0196 and      dword ptr [rsp + 0x20], 0
00000001403f019b add      edx, 0xe0
00000001403f01a1 shl      r9d, 8
00000001403f01a5 mov      rcx, rsi
00000001403f01a8 or       r9d, r15d
00000001403f01ab mov      dword ptr [rsp + 0x40], eax
00000001403f01af call     0x140316680
00000001403f01b4 xor      r9d, r9d
00000001403f01b7 mov      dword ptr [rsp + 0x20], r12d
00000001403f01bc mov      r8d, ebx
00000001403f01bf mov      edx, edi
00000001403f01c1 mov      rcx, rsi
00000001403f01c4 call     0x140316680
00000001403f01c9 xor      ebx, ebx
00000001403f01cb lea      edi, [rbx + 5]
00000001403f01ce lea      rbx, [rbx - 4]
00000001403f01d2 mov      dword ptr [rsp + 0x20], r12d
00000001403f01d7 mov      r9d, dword ptr [rbp + rbx + 0x54]
00000001403f01dc mov      rcx, rsi
00000001403f01df mov      r8d, dword ptr [rbp + rbx - 0x54]
00000001403f01e4 mov      edx, dword ptr [rbp + rbx - 0x3c]
00000001403f01e8 call     0x140316680
00000001403f01ed add      dil, 0xff
00000001403f01f1 jne      0x1403f01ce
00000001403f01f3 xor      ebx, ebx
00000001403f01f5 and      dword ptr [rsp + 0x20], 0
00000001403f01fa lea      rbx, [rbx - 4]
00000001403f01fe mov      r9d, dword ptr [rbp + rbx - 0x1c]
00000001403f0203 mov      rcx, rsi
00000001403f0206 mov      r8d, dword ptr [rsp + rbx + 0x6c]
00000001403f020b mov      edx, dword ptr [rsp + rbx + 0x7c]
00000001403f020f call     0x140316680
00000001403f0214 add      r14b, 0xff
00000001403f0218 jne      0x1403f01f5
00000001403f021a lea      rax, [r13*4]
00000001403f0222 mov      dil, 4
00000001403f0225 add      rax, r13
00000001403f0228 lea      r14, [rbp - 8]
00000001403f022c xor      ebx, ebx
00000001403f022e lea      r14, [r14 + rax*4]
00000001403f0232 and      dword ptr [rsp + 0x20], 0
00000001403f0237 lea      rbx, [rbx - 4]
00000001403f023b mov      r9d, dword ptr [rbp + rbx + 0x68]
00000001403f0240 lea      r14, [r14 - 4]
00000001403f0244 mov      r8d, dword ptr [rbp + rbx - 0x70]
00000001403f0249 mov      rcx, rsi
00000001403f024c mov      edx, dword ptr [r14]
00000001403f024f call     0x140316680
00000001403f0254 add      dil, 0xff
00000001403f0258 jne      0x1403f0232
00000001403f025a mov      r9d, 1
00000001403f0260 mov      dword ptr [rsp + 0x20], r12d
00000001403f0265 mov      edx, 0x704
00000001403f026a mov      rcx, rsi
00000001403f026d lea      r8d, [r9 + 1]
00000001403f0271 call     0x140316680
00000001403f0276 and      dword ptr [rsp + 0x20], 0
00000001403f027b xor      r9d, r9d
00000001403f027e mov      edx, dword ptr [rsp + 0x48]
00000001403f0282 mov      rcx, rsi
00000001403f0285 lea      r8d, [r9 + 8]
00000001403f0289 call     0x140316680
00000001403f028e mov      rcx, qword ptr [rip + 0x52fd6b]
00000001403f0295 lea      rax, [rip + 0x52fd64]
00000001403f029c cmp      rcx, rax
00000001403f029f je       0x1403f02e5
00000001403f02a1 cmp      byte ptr [rcx + 0x1e9], 4
00000001403f02a8 jb       0x1403f02e5
00000001403f02aa test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f02b4 je       0x1403f02e5
00000001403f02b6 mov      r9d, dword ptr [rsp + 0x40]
00000001403f02bb lea      r8, [rip + 0x2e522e]
00000001403f02c2 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403f02c9 mov      edx, 0x25
00000001403f02ce mov      dword ptr [rsp + 0x30], r12d
00000001403f02d3 mov      dword ptr [rsp + 0x28], r9d
00000001403f02d8 mov      r9d, r13d
00000001403f02db mov      dword ptr [rsp + 0x20], r15d
00000001403f02e0 call     0x140008794
00000001403f02e5 mov      al, 1
00000001403f02e7 mov      rcx, qword ptr [rbp + 0x70]
00000001403f02eb xor      rcx, rsp
00000001403f02ee call     0x1405f45b0
00000001403f02f3 add      rsp, 0x188
00000001403f02fa pop      r15
00000001403f02fc pop      r14
00000001403f02fe pop      r13
00000001403f0300 pop      r12
00000001403f0302 pop      rdi
00000001403f0303 pop      rsi
00000001403f0304 pop      rbx
00000001403f0305 pop      rbp
00000001403f0306 ret      