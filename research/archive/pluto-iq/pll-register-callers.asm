0000000140462d60 mov      rax, rsp
0000000140462d63 mov      qword ptr [rax + 8], rbx
0000000140462d67 mov      qword ptr [rax + 0x10], rbp
0000000140462d6b mov      qword ptr [rax + 0x18], rsi
0000000140462d6f mov      qword ptr [rax + 0x20], rdi
0000000140462d73 push     r14
0000000140462d75 sub      rsp, 0x30
0000000140462d79 mov      sil, byte ptr [rcx + 0x5b0]
0000000140462d80 mov      rdi, rcx
0000000140462d83 mov      byte ptr [rcx + 0x5b0], 0
0000000140462d8a mov      rcx, qword ptr [rip + 0x4bd26f]
0000000140462d91 lea      rax, [rip + 0x4bd268]
0000000140462d98 cmp      rcx, rax
0000000140462d9b je       0x140462dc8
0000000140462d9d cmp      byte ptr [rcx + 0x229], 4
0000000140462da4 jb       0x140462dc8
0000000140462da6 mov      eax, dword ptr [rcx + 0x22c]
0000000140462dac test     al, 4
0000000140462dae je       0x140462dc8
0000000140462db0 mov      rcx, qword ptr [rcx + 0x218]
0000000140462db7 lea      r8, [rip + 0x27aaca]
0000000140462dbe mov      edx, 0x64
0000000140462dc3 call     0x140001b88
0000000140462dc8 or       r14d, 0xffffffff
0000000140462dcc mov      ebp, 0xd3
0000000140462dd1 test     byte ptr [rdi + 0xb97a], 0xfd
0000000140462dd8 jne      0x140462e62
0000000140462dde mov      rcx, qword ptr [rdi + 8]
0000000140462de2 xor      edx, edx
0000000140462de4 lea      r8d, [rdx + 0x18]
0000000140462de8 call     0x14026c8bc
0000000140462ded and      dword ptr [rsp + 0x20], 0
0000000140462df2 xor      edx, edx
0000000140462df4 mov      r9d, r14d
0000000140462df7 mov      rcx, rdi
0000000140462dfa mov      ebx, eax
0000000140462dfc lea      r8d, [rdx + 5]
0000000140462e00 call     0x14045907c
0000000140462e05 mov      r9d, r14d
0000000140462e08 mov      dword ptr [rsp + 0x20], 0x30000
0000000140462e10 xor      r8d, r8d
0000000140462e13 xor      edx, edx
0000000140462e15 mov      rcx, rdi
0000000140462e18 call     0x14045907c
0000000140462e1d mov      r9d, r14d
0000000140462e20 mov      dword ptr [rsp + 0x20], 0x3103
0000000140462e28 mov      r8d, ebp
0000000140462e2b xor      edx, edx
0000000140462e2d mov      rcx, rdi
0000000140462e30 call     0x14045907c
0000000140462e35 xor      edx, edx
0000000140462e37 mov      dword ptr [rsp + 0x20], ebx
0000000140462e3b mov      r9d, r14d
0000000140462e3e mov      rcx, rdi
0000000140462e41 lea      r8d, [rdx + 0x18]
0000000140462e45 call     0x14045907c
0000000140462e4a mov      r9d, r14d
0000000140462e4d mov      dword ptr [rsp + 0x20], 0x3003
0000000140462e55 mov      r8d, ebp
0000000140462e58 xor      edx, edx
0000000140462e5a mov      rcx, rdi
0000000140462e5d call     0x14045907c
0000000140462e62 mov      al, byte ptr [rdi + 0xb97a]
0000000140462e68 mov      ebp, 1
0000000140462e6d sub      al, bpl
0000000140462e70 cmp      al, bpl
0000000140462e73 ja       0x140462f03
0000000140462e79 mov      rcx, qword ptr [rdi + 8]
0000000140462e7d lea      r8d, [rbp + 0x17]
0000000140462e81 mov      edx, ebp
0000000140462e83 call     0x14026c8bc
0000000140462e88 and      dword ptr [rsp + 0x20], 0
0000000140462e8d lea      r8d, [rbp + 4]
0000000140462e91 mov      r9d, r14d
0000000140462e94 mov      edx, ebp
0000000140462e96 mov      rcx, rdi
0000000140462e99 mov      ebx, eax
0000000140462e9b call     0x14045907c
0000000140462ea0 mov      r9d, r14d
0000000140462ea3 mov      dword ptr [rsp + 0x20], 0x30000
0000000140462eab xor      r8d, r8d
0000000140462eae mov      edx, ebp
0000000140462eb0 mov      rcx, rdi
0000000140462eb3 call     0x14045907c
0000000140462eb8 mov      r9d, r14d
0000000140462ebb mov      dword ptr [rsp + 0x20], 0x3103
0000000140462ec3 mov      r8d, 0xd3
0000000140462ec9 mov      edx, ebp
0000000140462ecb mov      rcx, rdi
0000000140462ece call     0x14045907c
0000000140462ed3 mov      r9d, r14d
0000000140462ed6 mov      dword ptr [rsp + 0x20], ebx
0000000140462eda lea      r8d, [rbp + 0x17]
0000000140462ede mov      edx, ebp
0000000140462ee0 mov      rcx, rdi
0000000140462ee3 call     0x14045907c
0000000140462ee8 mov      r9d, r14d
0000000140462eeb mov      dword ptr [rsp + 0x20], 0x3003
0000000140462ef3 mov      r8d, 0xd3
0000000140462ef9 mov      edx, ebp
0000000140462efb mov      rcx, rdi
0000000140462efe call     0x14045907c
0000000140462f03 mov      edx, 0x190
0000000140462f08 mov      rcx, rdi
0000000140462f0b call     0x140457f30
0000000140462f10 mov      ebx, 0x41
0000000140462f15 mov      r9d, r14d
0000000140462f18 xor      edx, edx
0000000140462f1a mov      dword ptr [rsp + 0x20], ebx
0000000140462f1e mov      rcx, rdi
0000000140462f21 lea      r8d, [rbx - 0x3c]
0000000140462f25 call     0x14045907c
0000000140462f2a mov      r9d, r14d
0000000140462f2d mov      dword ptr [rsp + 0x20], ebx
0000000140462f31 lea      r8d, [rbx - 0x3c]
0000000140462f35 mov      edx, ebp
0000000140462f37 mov      rcx, rdi
0000000140462f3a call     0x14045907c
0000000140462f3f mov      al, byte ptr [rdi + 0x58b]
0000000140462f45 mov      rbx, qword ptr [rsp + 0x40]
0000000140462f4a mov      rbp, qword ptr [rsp + 0x48]
0000000140462f4f mov      byte ptr [rdi + 0x59b], al
0000000140462f55 mov      al, byte ptr [rdi + 0x58c]
0000000140462f5b mov      byte ptr [rdi + 0x5b0], sil
0000000140462f62 mov      rsi, qword ptr [rsp + 0x50]
0000000140462f67 mov      byte ptr [rdi + 0x59c], al
0000000140462f6d mov      rdi, qword ptr [rsp + 0x58]
0000000140462f72 add      rsp, 0x30
0000000140462f76 pop      r14
0000000140462f78 ret      

000000014046b204 mov      rax, rsp
000000014046b207 mov      qword ptr [rax + 0x10], rbx
000000014046b20b mov      qword ptr [rax + 0x18], rbp
000000014046b20f push     rsi
000000014046b210 push     rdi
000000014046b211 push     r12
000000014046b213 push     r14
000000014046b215 push     r15
000000014046b217 sub      rsp, 0x40
000000014046b21b xor      r15b, r15b
000000014046b21e mov      ebp, r8d
000000014046b221 xor      r14b, r14b
000000014046b224 mov      word ptr [rax + 0x20], 0x602
000000014046b22a mov      ebx, edx
000000014046b22c mov      word ptr [rax + 8], 0x703
000000014046b232 mov      rsi, rcx
000000014046b235 mov      r12d, 1
000000014046b23b cmp      byte ptr [rbp + rsi + 0xfa5d], 0
000000014046b243 lea      rcx, [rsp + 0x88]
000000014046b24b movzx    r8d, r14b
000000014046b24f lea      rax, [rsp + 0x70]
000000014046b254 cmove    rax, rcx
000000014046b258 mov      edx, ebp
000000014046b25a mov      rcx, rsi
000000014046b25d mov      r8b, byte ptr [rax + r8]
000000014046b261 call     0x14046c1d4
000000014046b266 mov      r8d, ebp
000000014046b269 mov      edx, ebx
000000014046b26b mov      rcx, rsi
000000014046b26e call     0x14046da64
000000014046b273 cmp      byte ptr [rsi + 0xfa55], 0
000000014046b27a je       0x14046b2b1
000000014046b27c movzx    ecx, byte ptr [rbp + rsi + 0xfa5d]
000000014046b284 test     ecx, ecx
000000014046b286 je       0x14046b2a1
000000014046b288 sub      ecx, r12d
000000014046b28b je       0x14046b292
000000014046b28d cmp      ecx, r12d
000000014046b290 jne      0x14046b2b1
000000014046b292 mov      r8d, ebp
000000014046b295 mov      edx, ebx
000000014046b297 mov      rcx, rsi
000000014046b29a call     0x140469524
000000014046b29f jmp      0x14046b2ae
000000014046b2a1 mov      r8d, ebp
000000014046b2a4 mov      edx, ebx
000000014046b2a6 mov      rcx, rsi
000000014046b2a9 call     0x140467ea0
000000014046b2ae mov      r15b, al
000000014046b2b1 lea      rax, [rip + 0x4b4d48]
000000014046b2b8 test     r15b, r15b
000000014046b2bb je       0x14046b392
000000014046b2c1 add      r14b, r12b
000000014046b2c4 cmp      r14b, 2
000000014046b2c8 jb       0x14046b23b
000000014046b2ce mov      rcx, qword ptr [rip + 0x4b4d2b]
000000014046b2d5 cmp      rcx, rax
000000014046b2d8 je       0x14046b308
000000014046b2da cmp      byte ptr [rcx + 0x229], 4
000000014046b2e1 jb       0x14046b308
000000014046b2e3 mov      eax, dword ptr [rcx + 0x22c]
000000014046b2e9 test     al, 2
000000014046b2eb je       0x14046b308
000000014046b2ed mov      rcx, qword ptr [rcx + 0x218]
000000014046b2f4 lea      r8, [rip + 0x272995]
000000014046b2fb mov      edx, 0x67
000000014046b300 mov      r9d, ebp
000000014046b303 call     0x140001bb0
000000014046b308 mov      r15d, 0xfffff
000000014046b30e mov      r14d, 0x80200
000000014046b314 mov      r9d, r15d
000000014046b317 mov      dword ptr [rsp + 0x20], r14d
000000014046b31c mov      r8d, 8
000000014046b322 mov      edx, ebp
000000014046b324 mov      rcx, rsi
000000014046b327 call     0x14045907c
000000014046b32c mov      r9d, r15d
000000014046b32f mov      dword ptr [rsp + 0x20], r14d
000000014046b334 mov      r8d, 9
000000014046b33a mov      edx, ebp
000000014046b33c mov      rcx, rsi
000000014046b33f call     0x14045907c
000000014046b344 mov      r9d, r15d
000000014046b347 mov      dword ptr [rsp + 0x20], r14d
000000014046b34c mov      r8d, 0xa
000000014046b352 mov      edx, ebp
000000014046b354 mov      rcx, rsi
000000014046b357 call     0x14045907c
000000014046b35c mov      r9d, 4
000000014046b362 mov      dword ptr [rsp + 0x20], r12d
000000014046b367 mov      r8d, 0xdf
000000014046b36d mov      edx, ebp
000000014046b36f mov      rcx, rsi
000000014046b372 call     0x14045907c
000000014046b377 mov      r9d, r15d
000000014046b37a mov      dword ptr [rsp + 0x20], 0x84220
000000014046b382 mov      r8d, 0x58
000000014046b388 mov      edx, ebp
000000014046b38a mov      rcx, rsi
000000014046b38d call     0x14045907c
000000014046b392 cmp      byte ptr [rsi + 0xfa56], 0
000000014046b399 je       0x14046b3a8
000000014046b39b mov      r8d, ebp
000000014046b39e mov      edx, ebx
000000014046b3a0 mov      rcx, rsi
000000014046b3a3 call     0x14046b974
000000014046b3a8 cmp      byte ptr [rsi + 0xfa53], 0
000000014046b3af je       0x14046b40a
000000014046b3b1 movzx    ecx, byte ptr [rbp + rsi + 0xfa5d]
000000014046b3b9 test     ecx, ecx
000000014046b3bb je       0x14046b3e6
000000014046b3bd sub      ecx, r12d
000000014046b3c0 je       0x14046b3c7
000000014046b3c2 cmp      ecx, r12d
000000014046b3c5 jne      0x14046b40a
000000014046b3c7 cmp      byte ptr [rsi + 0xfa52], 0
000000014046b3ce mov      r8d, ebp
000000014046b3d1 mov      edx, ebx
000000014046b3d3 mov      rcx, rsi
000000014046b3d6 je       0x14046b3df
000000014046b3d8 call     0x140469a28
000000014046b3dd jmp      0x14046b403
000000014046b3df call     0x140469d1c
000000014046b3e4 jmp      0x14046b403
000000014046b3e6 cmp      byte ptr [rsi + 0xfa52], 0
000000014046b3ed mov      r8d, ebp
000000014046b3f0 mov      edx, ebx
000000014046b3f2 mov      rcx, rsi
000000014046b3f5 je       0x14046b3fe
000000014046b3f7 call     0x14046883c
000000014046b3fc jmp      0x14046b403
000000014046b3fe call     0x140469170
000000014046b403 mov      byte ptr [rbp + rsi + 0xfa48], al
000000014046b40a mov      r8d, ebp
000000014046b40d mov      edx, ebx
000000014046b40f mov      rcx, rsi
000000014046b412 call     0x14046d6c0
000000014046b417 mov      edx, ebp
000000014046b419 mov      rcx, rsi
000000014046b41c call     0x14046d3ac
000000014046b421 cmp      byte ptr [rsi + 0xfa56], 0
000000014046b428 je       0x14046b437
000000014046b42a mov      r8d, ebp
000000014046b42d mov      edx, ebx
000000014046b42f mov      rcx, rsi
000000014046b432 call     0x14046b974
000000014046b437 cmp      byte ptr [rsi + 0xfa54], 0
000000014046b43e je       0x14046b499
000000014046b440 movzx    ecx, byte ptr [rbp + rsi + 0xfa5d]
000000014046b448 test     ecx, ecx
000000014046b44a je       0x14046b475
000000014046b44c sub      ecx, r12d
000000014046b44f je       0x14046b456
000000014046b451 cmp      ecx, r12d
000000014046b454 jne      0x14046b499
000000014046b456 cmp      byte ptr [rsi + 0xfa52], 0
000000014046b45d mov      r8d, ebp
000000014046b460 mov      edx, ebx
000000014046b462 mov      rcx, rsi
000000014046b465 je       0x14046b46e
000000014046b467 call     0x14046a178
000000014046b46c jmp      0x14046b492
000000014046b46e call     0x14046a808
000000014046b473 jmp      0x14046b492
000000014046b475 cmp      byte ptr [rsi + 0xfa52], 0
000000014046b47c mov      r8d, ebp
000000014046b47f mov      edx, ebx
000000014046b481 mov      rcx, rsi
000000014046b484 je       0x14046b48d
000000014046b486 call     0x140468390
000000014046b48b jmp      0x14046b492
000000014046b48d call     0x140468ad0
000000014046b492 mov      byte ptr [rbp + rsi + 0xfa4a], al
000000014046b499 mov      rax, qword ptr [rip + 0x4b4b60]
000000014046b4a0 lea      rcx, [rip + 0x4b4b59]
000000014046b4a7 cmp      rax, rcx
000000014046b4aa je       0x14046b525
000000014046b4ac cmp      byte ptr [rax + 0x229], 4
000000014046b4b3 jb       0x14046b525
000000014046b4b5 mov      eax, dword ptr [rax + 0x22c]
000000014046b4bb test     al, 2
000000014046b4bd je       0x14046b525
000000014046b4bf mov      ecx, ebp
000000014046b4c1 mov      edi, ebp
000000014046b4c3 shl      r12d, cl
000000014046b4c6 or       r14d, 0xffffffff
000000014046b4ca shl      edi, 8
000000014046b4cd mov      r8d, r14d
000000014046b4d0 mov      rcx, rsi
000000014046b4d3 lea      edx, [rdi + 0x8124]
000000014046b4d9 call     0x140458630
000000014046b4de lea      edx, [rdi + 0x813c]
000000014046b4e4 mov      r8d, r14d
000000014046b4e7 mov      rcx, rsi
000000014046b4ea mov      ebx, eax
000000014046b4ec call     0x140458630
000000014046b4f1 mov      rcx, qword ptr [rip + 0x4b4b08]
000000014046b4f8 lea      r8, [rip + 0x272791]
000000014046b4ff mov      dword ptr [rsp + 0x38], ebx
000000014046b503 mov      edx, 0x68
000000014046b508 mov      dword ptr [rsp + 0x30], r12d
000000014046b50d mov      r9d, ebp
000000014046b510 mov      dword ptr [rsp + 0x28], eax
000000014046b514 mov      rcx, qword ptr [rcx + 0x218]
000000014046b51b mov      dword ptr [rsp + 0x20], r12d
000000014046b520 call     0x14005008c
000000014046b525 lea      r11, [rsp + 0x40]
000000014046b52a mov      rbx, qword ptr [r11 + 0x38]
000000014046b52e mov      rbp, qword ptr [r11 + 0x40]
000000014046b532 mov      rsp, r11
000000014046b535 pop      r15
000000014046b537 pop      r14
000000014046b539 pop      r12
000000014046b53b pop      rdi
000000014046b53c pop      rsi
000000014046b53d ret      

0000000140470434 mov      qword ptr [rsp + 8], rbx
0000000140470439 push     rdi
000000014047043a sub      rsp, 0x30
000000014047043e movzx    ebx, dl
0000000140470441 mov      r9d, 4
0000000140470447 mov      edx, ebx
0000000140470449 mov      byte ptr [rcx + 0xfa55], 0
0000000140470450 mov      r8d, 0xdf
0000000140470456 mov      dword ptr [rsp + 0x20], 1
000000014047045e mov      rdi, rcx
0000000140470461 call     0x14045907c
0000000140470466 mov      r9d, 0xfffff
000000014047046c mov      dword ptr [rsp + 0x20], 0x84220
0000000140470474 mov      r8d, 0x58
000000014047047a mov      edx, ebx
000000014047047c mov      rcx, rdi
000000014047047f call     0x14045907c
0000000140470484 mov      rbx, qword ptr [rsp + 0x40]
0000000140470489 add      rsp, 0x30
000000014047048d pop      rdi
000000014047048e ret      