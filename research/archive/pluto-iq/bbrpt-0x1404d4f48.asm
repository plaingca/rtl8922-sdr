00000001404d4f48 push     rbx
00000001404d4f4a push     rbp
00000001404d4f4b push     rsi
00000001404d4f4c push     rdi
00000001404d4f4d push     r12
00000001404d4f4f push     r13
00000001404d4f51 push     r14
00000001404d4f53 sub      rsp, 0x140
00000001404d4f5a mov      rax, qword ptr [rip + 0x4524ff]
00000001404d4f61 xor      rax, rsp
00000001404d4f64 mov      qword ptr [rsp + 0x130], rax
00000001404d4f6c mov      rbp, r8
00000001404d4f6f mov      rbx, rdx
00000001404d4f72 mov      rsi, rcx
00000001404d4f75 xor      edx, edx
00000001404d4f77 mov      r8d, 0xf0
00000001404d4f7d lea      rcx, [rsp + 0x40]
00000001404d4f82 call     0x1405f4640
00000001404d4f87 and      dword ptr [rsp + 0x34], 0
00000001404d4f8c mov      rcx, rbx
00000001404d4f8f mov      byte ptr [rsp + 0x30], 0
00000001404d4f94 call     0x1402b4094
00000001404d4f99 mov      rdx, qword ptr [rbp + 0x78]
00000001404d4f9d xor      r9d, r9d
00000001404d4fa0 mov      r8, rbx
00000001404d4fa3 mov      rcx, rsi
00000001404d4fa6 call     0x1402bd8a4
00000001404d4fab mov      r8, rbp
00000001404d4fae mov      rdx, rbx
00000001404d4fb1 mov      rcx, rsi
00000001404d4fb4 call     0x14024b0b0
00000001404d4fb9 lea      r8, [rip + 0x186ca0]
00000001404d4fc0 mov      edi, eax
00000001404d4fc2 lea      r12, [rip + 0x44b037]
00000001404d4fc9 mov      r14d, 1
00000001404d4fcf lea      r13, [rip + 0x1393ba]
00000001404d4fd6 test     eax, eax
00000001404d4fd8 jne      0x1404d504d
00000001404d4fda mov      r8, qword ptr [rbp + 0x78]
00000001404d4fde lea      r9, [rsp + 0x40]
00000001404d4fe3 mov      rdx, rbx
00000001404d4fe6 mov      rcx, rsi
00000001404d4fe9 call     0x1404d3b30
00000001404d4fee mov      edi, eax
00000001404d4ff0 test     eax, eax
00000001404d4ff2 je       0x1404d50b1
00000001404d4ff8 mov      rcx, qword ptr [rip + 0x44b001]
00000001404d4fff cmp      rcx, r12
00000001404d5002 je       0x1404d508d
00000001404d5008 cmp      byte ptr [rcx + 0x169], 2
00000001404d500f jb       0x1404d5046
00000001404d5011 mov      eax, dword ptr [rcx + 0x16c]
00000001404d5017 test     r14b, al
00000001404d501a je       0x1404d5046
00000001404d501c mov      rcx, qword ptr [rcx + 0x158]
00000001404d5023 lea      rax, [rip + 0x186c36]
00000001404d502a lea      edx, [r14 + 0x1b]
00000001404d502e mov      dword ptr [rsp + 0x28], edi
00000001404d5032 mov      r9, r13
00000001404d5035 mov      qword ptr [rsp + 0x20], rax
00000001404d503a lea      r8, [rip + 0x414c57]
00000001404d5041 call     0x14003ca14
00000001404d5046 lea      r8, [rip + 0x186c13]
00000001404d504d mov      rcx, qword ptr [rip + 0x44afac]
00000001404d5054 cmp      rcx, r12
00000001404d5057 je       0x1404d508d
00000001404d5059 cmp      byte ptr [rcx + 0x169], 4
00000001404d5060 jb       0x1404d508d
00000001404d5062 mov      eax, dword ptr [rcx + 0x16c]
00000001404d5068 test     r14b, al
00000001404d506b je       0x1404d508d
00000001404d506d mov      rcx, qword ptr [rcx + 0x158]
00000001404d5074 mov      edx, 0x20
00000001404d5079 mov      qword ptr [rsp + 0x20], r8
00000001404d507e mov      r9, r13
00000001404d5081 lea      r8, [rip + 0x414c10]
00000001404d5088 call     0x14003c968
00000001404d508d mov      eax, edi
00000001404d508f mov      rcx, qword ptr [rsp + 0x130]
00000001404d5097 xor      rcx, rsp
00000001404d509a call     0x1405f45b0
00000001404d509f add      rsp, 0x140
00000001404d50a6 pop      r14
00000001404d50a8 pop      r13
00000001404d50aa pop      r12
00000001404d50ac pop      rdi
00000001404d50ad pop      rsi
00000001404d50ae pop      rbp
00000001404d50af pop      rbx
00000001404d50b0 ret      
00000001404d50b1 lea      r9, [rsp + 0x40]
00000001404d50b6 mov      r8, rbp
00000001404d50b9 mov      rdx, rbx
00000001404d50bc mov      rcx, rsi
00000001404d50bf call     0x14027f128
00000001404d50c4 mov      edi, eax
00000001404d50c6 test     eax, eax
00000001404d50c8 jne      0x1404d5046
00000001404d50ce mov      rcx, rsi
00000001404d50d1 call     0x14022b390
00000001404d50d6 xor      edx, edx
00000001404d50d8 lea      r8d, [rdi + 6]
00000001404d50dc mov      rcx, rbx
00000001404d50df call     0x140260ed4
00000001404d50e4 mov      rcx, qword ptr [rbx + 8]
00000001404d50e8 xor      edx, edx
00000001404d50ea mov      r8d, 0x2c00
00000001404d50f0 call     0x140287104
00000001404d50f5 lea      rdx, [rsp + 0x34]
00000001404d50fa mov      rcx, rbx
00000001404d50fd call     0x140288264
00000001404d5102 mov      edi, eax
00000001404d5104 cmp      eax, r14d
00000001404d5107 jne      0x1404d515a
00000001404d5109 mov      rcx, qword ptr [rip + 0x44aef0]
00000001404d5110 cmp      rcx, r12
00000001404d5113 je       0x1404d508d
00000001404d5119 cmp      byte ptr [rcx + 0x169], 3
00000001404d5120 jb       0x1404d5046
00000001404d5126 mov      eax, dword ptr [rcx + 0x16c]
00000001404d512c test     r14b, al
00000001404d512f je       0x1404d5046
00000001404d5135 mov      rcx, qword ptr [rcx + 0x158]
00000001404d513c lea      r8, [rip + 0x414b55]
00000001404d5143 mov      edx, 0x1d
00000001404d5148 mov      dword ptr [rsp + 0x20], r14d
00000001404d514d mov      r9, r13
00000001404d5150 call     0x1400088d8
00000001404d5155 jmp      0x1404d5046
00000001404d515a mov      eax, dword ptr [rsp + 0x34]
00000001404d515e xor      edx, edx
00000001404d5160 mov      cl, al
00000001404d5162 shr      eax, 0x10
00000001404d5165 and      cl, 0x7f
00000001404d5168 and      al, 0x7f
00000001404d516a mov      byte ptr [rsi + 0x96df], cl
00000001404d5170 sub      al, cl
00000001404d5172 mov      byte ptr [rsi + 0x96de], al
00000001404d5178 mov      rcx, rbx
00000001404d517b movzx    r9d, word ptr [rsi + 0xdece]
00000001404d5183 movzx    r8d, word ptr [rsi + 0xdecc]
00000001404d518b call     0x140285f74
00000001404d5190 mov      rcx, rbx
00000001404d5193 call     0x14027f8e0
00000001404d5198 mov      rax, qword ptr [rbx + 8]
00000001404d519c cmp      byte ptr [rax + 0x12d4], r14b
00000001404d51a3 jne      0x1404d51e3
00000001404d51a5 mov      r8d, 6
00000001404d51ab mov      dl, r14b
00000001404d51ae mov      rcx, rbx
00000001404d51b1 call     0x140260ed4
00000001404d51b6 mov      rcx, qword ptr [rbx + 8]
00000001404d51ba mov      r8d, 0x2c00
00000001404d51c0 mov      dl, r14b
00000001404d51c3 call     0x140287104
00000001404d51c8 movzx    r9d, word ptr [rsi + 0xdef2]
00000001404d51d0 mov      dl, r14b
00000001404d51d3 movzx    r8d, word ptr [rsi + 0xdef0]
00000001404d51db mov      rcx, rbx
00000001404d51de call     0x140285f74
00000001404d51e3 mov      rcx, rbx
00000001404d51e6 call     0x14000a5f0
00000001404d51eb mov      r8, qword ptr [rbp + 0x78]
00000001404d51ef mov      rdx, rbx
00000001404d51f2 mov      rcx, rsi
00000001404d51f5 call     0x140265b28
00000001404d51fa mov      rdx, rbx
00000001404d51fd mov      rcx, rsi
00000001404d5200 call     0x140261b30
00000001404d5205 mov      rcx, rbx
00000001404d5208 call     0x14026e158
00000001404d520d mov      rcx, rbx
00000001404d5210 call     0x14026e1a8
00000001404d5215 mov      rax, qword ptr [rbx + 8]
00000001404d5219 cmp      byte ptr [rax + 0x12d4], r14b
00000001404d5220 jne      0x1404d5230
00000001404d5222 mov      r8b, r14b
00000001404d5225 mov      rdx, rsi
00000001404d5228 mov      rcx, rbx
00000001404d522b call     0x14026e204
00000001404d5230 mov      rdx, rbx
00000001404d5233 mov      rcx, rsi
00000001404d5236 call     0x14024adfc
00000001404d523b mov      edi, eax
00000001404d523d test     eax, eax
00000001404d523f jne      0x1404d5046
00000001404d5245 mov      rdx, rbx
00000001404d5248 mov      rcx, rsi
00000001404d524b call     0x1402bed90
00000001404d5250 mov      rcx, rbx
00000001404d5253 call     0x140248eec
00000001404d5258 mov      rcx, rbx
00000001404d525b call     0x14026a81c
00000001404d5260 test     eax, eax
00000001404d5262 jne      0x1404d5046
00000001404d5268 mov      rcx, rbx
00000001404d526b call     0x1402bf0d8
00000001404d5270 lea      rdx, [rsp + 0x30]
00000001404d5275 mov      rcx, rbx
00000001404d5278 call     0x14027bd0c
00000001404d527d mov      edi, eax
00000001404d527f test     eax, eax
00000001404d5281 jne      0x1404d5046
00000001404d5287 mov      al, byte ptr [rsp + 0x30]
00000001404d528b lea      rdx, [rsp + 0x30]
00000001404d5290 mov      rcx, rbx
00000001404d5293 mov      byte ptr [rsi + 0xf4e8], al
00000001404d5299 call     0x14027bb94
00000001404d529e mov      edi, eax
00000001404d52a0 test     eax, eax
00000001404d52a2 jne      0x1404d5046
00000001404d52a8 mov      al, byte ptr [rsp + 0x30]
00000001404d52ac mov      byte ptr [rsi + 0xf4e9], al
00000001404d52b2 mov      rcx, qword ptr [rip + 0x44ad47]
00000001404d52b9 cmp      rcx, r12
00000001404d52bc je       0x1404d52eb
00000001404d52be cmp      byte ptr [rcx + 0x169], 4
00000001404d52c5 jb       0x1404d52eb
00000001404d52c7 mov      eax, dword ptr [rcx + 0x16c]
00000001404d52cd test     r14b, al
00000001404d52d0 je       0x1404d52eb
00000001404d52d2 mov      rcx, qword ptr [rcx + 0x158]
00000001404d52d9 lea      edx, [rdi + 0x1e]
00000001404d52dc mov      r9, r13
00000001404d52df lea      r8, [rip + 0x4149b2]
00000001404d52e6 call     0x140008874
00000001404d52eb mov      r8b, r14b
00000001404d52ee xor      edx, edx
00000001404d52f0 mov      rcx, rbx
00000001404d52f3 call     0x14024b024
00000001404d52f8 mov      edi, eax
00000001404d52fa test     eax, eax
00000001404d52fc jne      0x1404d5046
00000001404d5302 mov      byte ptr [rsi + 0x1020a], r14b
00000001404d5309 mov      rax, qword ptr [rbx + 8]
00000001404d530d cmp      byte ptr [rax + 0x12d4], r14b
00000001404d5314 jne      0x1404d536e
00000001404d5316 mov      rcx, qword ptr [rip + 0x44ace3]
00000001404d531d cmp      rcx, r12
00000001404d5320 je       0x1404d534f
00000001404d5322 cmp      byte ptr [rcx + 0x169], 4
00000001404d5329 jb       0x1404d534f
00000001404d532b mov      eax, dword ptr [rcx + 0x16c]
00000001404d5331 test     r14b, al
00000001404d5334 je       0x1404d534f
00000001404d5336 mov      rcx, qword ptr [rcx + 0x158]
00000001404d533d lea      edx, [rdi + 0x1f]
00000001404d5340 mov      r9, r13
00000001404d5343 lea      r8, [rip + 0x41494e]
00000001404d534a call     0x140008874
00000001404d534f mov      r8b, r14b
00000001404d5352 mov      dl, r14b
00000001404d5355 mov      rcx, rbx
00000001404d5358 call     0x14024b024
00000001404d535d mov      edi, eax
00000001404d535f test     eax, eax
00000001404d5361 jne      0x1404d5046
00000001404d5367 mov      byte ptr [rsi + 0x1020b], r14b
00000001404d536e cmp      byte ptr [rsi + 0xe187], r14b
00000001404d5375 jne      0x1404d53b4
00000001404d5377 xor      r8d, r8d
00000001404d537a mov      dl, r14b
00000001404d537d mov      rcx, rbx
00000001404d5380 call     0x140279dd8
00000001404d5385 mov      edi, eax
00000001404d5387 test     eax, eax
00000001404d5389 jne      0x1404d5046
00000001404d538f mov      rax, qword ptr [rbx + 8]
00000001404d5393 cmp      byte ptr [rax + 0x12d4], r14b
00000001404d539a jne      0x1404d53b4
00000001404d539c mov      r8d, r14d
00000001404d539f mov      dl, r14b
00000001404d53a2 mov      rcx, rbx
00000001404d53a5 call     0x140279dd8
00000001404d53aa mov      edi, eax
00000001404d53ac test     eax, eax
00000001404d53ae jne      0x1404d5046
00000001404d53b4 mov      dl, byte ptr [rsi + 0xe15a]
00000001404d53ba mov      rcx, rbx
00000001404d53bd call     0x1402760e4
00000001404d53c2 mov      edi, eax
00000001404d53c4 test     eax, eax
00000001404d53c6 jne      0x1404d5046
00000001404d53cc mov      r8b, byte ptr [rsi + 0xe194]
00000001404d53d3 mov      rcx, rbx
00000001404d53d6 mov      dl, byte ptr [rsi + 0xe193]
00000001404d53dc call     0x140275f40
00000001404d53e1 mov      edi, eax
00000001404d53e3 test     eax, eax
00000001404d53e5 jne      0x1404d5046
00000001404d53eb mov      dl, byte ptr [rsi + 0xe15b]
00000001404d53f1 xor      r9d, r9d
00000001404d53f4 mov      r8b, 4
00000001404d53f7 mov      byte ptr [rsp + 0x20], al
00000001404d53fb mov      rcx, rbx
00000001404d53fe call     0x14027b444
00000001404d5403 mov      edi, eax
00000001404d5405 test     eax, eax
00000001404d5407 jne      0x1404d5046
00000001404d540d mov      dl, byte ptr [rsi + 0xe15c]
00000001404d5413 xor      r8d, r8d
00000001404d5416 mov      rcx, rbx
00000001404d5419 call     0x14027b3bc
00000001404d541e mov      edi, eax
00000001404d5420 test     eax, eax
00000001404d5422 jne      0x1404d5046
00000001404d5428 cmp      byte ptr [rsi + 0xe15c], al
00000001404d542e je       0x1404d5445
00000001404d5430 mov      dl, r14b
00000001404d5433 mov      rcx, rbx
00000001404d5436 call     0x14027f59c
00000001404d543b mov      edi, eax
00000001404d543d test     eax, eax
00000001404d543f jne      0x1404d5046
00000001404d5445 mov      rcx, qword ptr [rbx + 8]
00000001404d5449 lea      rdx, [rsi + 0xe258]
00000001404d5450 call     0x14025b06c
00000001404d5455 xor      eax, eax
00000001404d5457 jmp      0x1404d508f