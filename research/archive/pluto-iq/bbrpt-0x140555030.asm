0000000140555030 push     rbp
0000000140555032 push     rbx
0000000140555033 push     rsi
0000000140555034 push     rdi
0000000140555035 push     r12
0000000140555037 push     r13
0000000140555039 push     r14
000000014055503b push     r15
000000014055503d mov      rbp, rsp
0000000140555040 sub      rsp, 0x78
0000000140555044 mov      rax, qword ptr [rip + 0x3d2415]
000000014055504b xor      rax, rsp
000000014055504e mov      qword ptr [rbp - 0x10], rax
0000000140555052 mov      r13, qword ptr [rcx]
0000000140555055 xor      eax, eax
0000000140555057 mov      r15, qword ptr [rcx + 0x140]
000000014055505e xorps    xmm0, xmm0
0000000140555061 movups   xmmword ptr [rbp - 0x2f], xmm0
0000000140555065 mov      qword ptr [rbp - 0x1f], rax
0000000140555069 mov      r14d, r9d
000000014055506c mov      dword ptr [rbp - 0x17], eax
000000014055506f mov      rsi, r8
0000000140555072 mov      word ptr [rbp - 0x13], ax
0000000140555076 mov      rbx, rdx
0000000140555079 mov      byte ptr [rbp - 0x11], al
000000014055507c mov      rdi, rcx
000000014055507f call     0x1405202e0
0000000140555084 cmp      r14d, eax
0000000140555087 je       0x1405550b7
0000000140555089 mov      rax, qword ptr [rdi + 0x18]
000000014055508d lea      r8, [rip + 0x10a77c]
0000000140555094 mov      rcx, qword ptr [rdi + 8]
0000000140555098 mov      r9d, r14d
000000014055509b mov      edx, 2
00000001405550a0 mov      rax, qword ptr [rax + 0x118]
00000001405550a7 call     qword ptr [rip + 0x12f24b]
00000001405550ad mov      eax, 0xa
00000001405550b2 jmp      0x140555702
00000001405550b7 movzx    ecx, word ptr [rbx + 0x36]
00000001405550bb mov      r8d, 1
00000001405550c1 movzx    eax, cx
00000001405550c4 mov      edx, 0x3ffe
00000001405550c9 sub      ax, r8w
00000001405550cd cmp      ax, dx
00000001405550d0 ja       0x1405556d9
00000001405550d6 mov      eax, dword ptr [rdi + 0xeec]
00000001405550dc xor      r12d, r12d
00000001405550df mov      r14d, 0x400
00000001405550e5 cmp      eax, r8d
00000001405550e8 jne      0x1405550fc
00000001405550ea mov      al, byte ptr [rbx + 0x59]
00000001405550ed neg      al
00000001405550ef sbb      edx, edx
00000001405550f1 and      edx, 0x80
00000001405550f7 add      edx, r14d
00000001405550fa jmp      0x140555141
00000001405550fc test     eax, eax
00000001405550fe jne      0x14055511f
0000000140555100 mov      al, byte ptr [rbx + 0x5b]
0000000140555103 neg      al
0000000140555105 mov      al, byte ptr [rbx + 0x59]
0000000140555108 sbb      edx, edx
000000014055510a and      edx, 0x200000
0000000140555110 add      edx, r14d
0000000140555113 neg      al
0000000140555115 sbb      ecx, ecx
0000000140555117 and      ecx, 0x80
000000014055511d jmp      0x14055513f
000000014055511f mov      eax, dword ptr [rdi + 0x3b0]
0000000140555125 mov      ecx, r14d
0000000140555128 sub      eax, 3
000000014055512b cmp      eax, r8d
000000014055512e mov      al, byte ptr [rbx + 0x58]
0000000140555131 cmova    ecx, r12d
0000000140555135 neg      al
0000000140555137 sbb      edx, edx
0000000140555139 and      edx, 0x80
000000014055513f or       edx, ecx
0000000140555141 mov      dword ptr [rsi], edx
0000000140555143 lea      r8, [rbp - 0x48]
0000000140555147 mov      rdx, rbx
000000014055514a mov      rcx, rdi
000000014055514d call     0x14050d644
0000000140555152 test     eax, eax
0000000140555154 jne      0x140555702
000000014055515a lea      r9, [rbp - 0x46]
000000014055515e mov      rdx, rbx
0000000140555161 lea      r8, [rbp - 0x47]
0000000140555165 mov      rcx, rdi
0000000140555168 call     0x14050d740
000000014055516d test     eax, eax
000000014055516f jne      0x140555702
0000000140555175 movzx    edx, byte ptr [rbx + 0x51]
0000000140555179 and      edx, 0xf
000000014055517c movzx    eax, byte ptr [rbp - 0x48]
0000000140555180 shl      edx, 0xd
0000000140555183 and      eax, 0x1f
0000000140555186 or       edx, eax
0000000140555188 mov      al, byte ptr [rbx + 0x2e]
000000014055518b neg      al
000000014055518d movzx    eax, byte ptr [rbx + 0x3f]
0000000140555191 sbb      ecx, ecx
0000000140555193 and      eax, 7
0000000140555196 and      ecx, 0x40
0000000140555199 add      ecx, 0x100
000000014055519f or       edx, ecx
00000001405551a1 shl      edx, 9
00000001405551a4 or       edx, eax
00000001405551a6 mov      al, byte ptr [rbx + 0x5f]
00000001405551a9 shl      edx, 2
00000001405551ac neg      al
00000001405551ae mov      al, byte ptr [rbx + 0x43]
00000001405551b1 sbb      ecx, ecx
00000001405551b3 and      ecx, 0x40
00000001405551b6 or       edx, ecx
00000001405551b8 neg      al
00000001405551ba movzx    eax, byte ptr [rbx + 0x3e]
00000001405551be sbb      ecx, ecx
00000001405551c0 and      eax, 3
00000001405551c3 and      ecx, 0x20
00000001405551c6 or       edx, ecx
00000001405551c8 or       edx, eax
00000001405551ca mov      al, byte ptr [rbx + 0x59]
00000001405551cd neg      al
00000001405551cf mov      al, byte ptr [rbp - 0x47]
00000001405551d2 sbb      ecx, ecx
00000001405551d4 and      ecx, 0x400000
00000001405551da or       edx, ecx
00000001405551dc neg      al
00000001405551de sbb      ecx, ecx
00000001405551e0 and      ecx, 0x100000
00000001405551e6 or       edx, ecx
00000001405551e8 or       dword ptr [rsi], edx
00000001405551ea movzx    eax, byte ptr [rbx + 0x5a]
00000001405551ee movzx    edx, byte ptr [rbx + 0x54]
00000001405551f2 and      edx, 3
00000001405551f5 shl      eax, 2
00000001405551f8 or       edx, eax
00000001405551fa movzx    eax, byte ptr [rbx + 0x55]
00000001405551fe shl      edx, 4
0000000140555201 and      eax, 0xf
0000000140555204 or       edx, eax
0000000140555206 movzx    eax, byte ptr [rbx + 0x61]
000000014055520a shl      edx, 4
000000014055520d and      eax, 3
0000000140555210 or       edx, eax
0000000140555212 movzx    eax, byte ptr [rbx + 0x77]
0000000140555216 shl      edx, 4
0000000140555219 and      eax, 0xf
000000014055521c or       edx, eax
000000014055521e mov      al, byte ptr [rbx + 0x60]
0000000140555221 shl      edx, 0xc
0000000140555224 neg      al
0000000140555226 sbb      ecx, ecx
0000000140555228 and      ecx, 0x40000
000000014055522e or       edx, ecx
0000000140555230 mov      dword ptr [rsi + 4], edx
0000000140555233 mov      al, byte ptr [rbx + 0x2e]
0000000140555236 movzx    edx, word ptr [rbx + 0x3c]
000000014055523a shl      edx, 7
000000014055523d neg      al
000000014055523f movzx    eax, byte ptr [rbx + 0x34]
0000000140555243 sbb      ecx, ecx
0000000140555245 and      ecx, 8
0000000140555248 add      ecx, 0x12
000000014055524b or       edx, ecx
000000014055524d lea      rcx, [rip + 0x771174]
0000000140555254 mov      al, byte ptr [rax + rcx]
0000000140555257 shl      edx, 0xf
000000014055525a neg      al
000000014055525c sbb      ecx, ecx
000000014055525e and      ecx, 0x200000
0000000140555264 or       edx, ecx
0000000140555266 mov      al, byte ptr [rbx + 0x5d]
0000000140555269 mov      r11d, 0x4000
000000014055526f neg      al
0000000140555271 movzx    eax, word ptr [rbx + 0x36]
0000000140555275 sbb      ecx, ecx
0000000140555277 and      eax, 0x3fff
000000014055527c and      ecx, r11d
000000014055527f or       edx, ecx
0000000140555281 or       edx, eax
0000000140555283 mov      dword ptr [rsi + 8], edx
0000000140555286 cmp      byte ptr [rbx + 0x5e], r12b
000000014055528a jne      0x140555298
000000014055528c mov      edx, r12d
000000014055528f cmp      byte ptr [rbx + 0x92], r12b
0000000140555296 je       0x14055529b
0000000140555298 mov      edx, r11d
000000014055529b mov      al, byte ptr [rbx + 0x68]
000000014055529e mov      r10d, 0x2000
00000001405552a4 neg      al
00000001405552a6 mov      r9d, 0xfff
00000001405552ac movzx    eax, word ptr [rbx + 0x40]
00000001405552b0 sbb      ecx, ecx
00000001405552b2 and      eax, r9d
00000001405552b5 and      ecx, r10d
00000001405552b8 or       ecx, eax
00000001405552ba or       ecx, edx
00000001405552bc mov      dword ptr [rsi + 0xc], ecx
00000001405552bf movzx    eax, byte ptr [rbx + 0x62]
00000001405552c3 movzx    ecx, byte ptr [rbx + 0x63]
00000001405552c7 shl      ecx, 8
00000001405552ca or       ecx, eax
00000001405552cc shl      ecx, 0x10
00000001405552cf mov      dword ptr [rsi + 0x10], ecx
00000001405552d2 movzx    eax, byte ptr [rbx + 0x66]
00000001405552d6 movzx    ecx, byte ptr [rbx + 0x67]
00000001405552da shl      ecx, 8
00000001405552dd or       ecx, eax
00000001405552df movzx    eax, byte ptr [rbx + 0x65]
00000001405552e3 shl      ecx, 8
00000001405552e6 or       ecx, eax
00000001405552e8 movzx    eax, byte ptr [rbx + 0x64]
00000001405552ec shl      ecx, 8
00000001405552ef or       ecx, eax
00000001405552f1 mov      dword ptr [rsi + 0x14], ecx
00000001405552f4 cmp      byte ptr [rbx + 0x79], r12b
00000001405552f8 jne      0x140555303
00000001405552fa mov      r8d, r12d
00000001405552fd cmp      byte ptr [rbx + 0x7a], r12b
0000000140555301 je       0x140555309
0000000140555303 mov      r8d, 0x800
0000000140555309 mov      al, byte ptr [rbx + 0x4d]
000000014055530c neg      al
000000014055530e mov      dword ptr [rbp - 0x40], r12d
0000000140555312 mov      al, byte ptr [rbx + 0x6a]
0000000140555315 sbb      edx, edx
0000000140555317 mov      dword ptr [rbp - 0x38], r9d
000000014055531b and      edx, r11d
000000014055531e neg      al
0000000140555320 mov      al, byte ptr [rbx + 0x6b]
0000000140555323 sbb      ecx, ecx
0000000140555325 and      ecx, 0x1000
000000014055532b or       edx, ecx
000000014055532d neg      al
000000014055532f mov      al, byte ptr [rbp - 0x46]
0000000140555332 sbb      ecx, ecx
0000000140555334 and      ecx, 0x8000
000000014055533a or       edx, ecx
000000014055533c neg      al
000000014055533e sbb      ecx, ecx
0000000140555340 and      ecx, r10d
0000000140555343 or       edx, ecx
0000000140555345 mov      rcx, rdi
0000000140555348 or       edx, r8d
000000014055534b mov      dword ptr [rsi + 0x18], edx
000000014055534e lea      rdx, [rbp - 0x40]
0000000140555352 movzx    eax, word ptr [rbx + 0x70]
0000000140555356 mov      dword ptr [rbp - 0x3c], eax
0000000140555359 mov      rax, qword ptr [r13 + 0x5a0]
0000000140555360 call     qword ptr [rip + 0x12ef92]
0000000140555366 mov      r9d, eax
0000000140555369 test     eax, eax
000000014055536b je       0x14055538e
000000014055536d mov      rcx, qword ptr [rdi + 0x18]
0000000140555371 lea      r8, [rip + 0x10a478]
0000000140555378 mov      edx, 2
000000014055537d mov      rax, qword ptr [rcx + 0x118]
0000000140555384 mov      rcx, qword ptr [rdi + 8]
0000000140555388 call     qword ptr [rip + 0x12ef6a]
000000014055538e movzx    edx, byte ptr [rbx + 0x73]
0000000140555392 mov      r10d, 0x1000
0000000140555398 movzx    eax, byte ptr [rbx + 0x72]
000000014055539c and      edx, 7
000000014055539f shl      edx, 0xf
00000001405553a2 and      eax, 7
00000001405553a5 or       edx, eax
00000001405553a7 mov      r9d, 0x800
00000001405553ad movzx    eax, byte ptr [rbx + 0x53]
00000001405553b1 lea      r8d, [r10 - 1]
00000001405553b5 and      eax, 0xf
00000001405553b8 shl      edx, 7
00000001405553bb or       edx, eax
00000001405553bd mov      r11d, 0x80000000
00000001405553c3 mov      al, byte ptr [rbx + 0x6e]
00000001405553c6 shl      edx, 6
00000001405553c9 neg      al
00000001405553cb mov      al, byte ptr [rbx + 0x6d]
00000001405553ce sbb      ecx, ecx
00000001405553d0 and      ecx, r10d
00000001405553d3 or       edx, ecx
00000001405553d5 neg      al
00000001405553d7 mov      al, byte ptr [rbx + 0x6f]
00000001405553da sbb      ecx, ecx
00000001405553dc and      ecx, r9d
00000001405553df or       edx, ecx
00000001405553e1 neg      al
00000001405553e3 mov      al, byte ptr [rbx + 0x74]
00000001405553e6 sbb      ecx, ecx
00000001405553e8 and      ecx, r14d
00000001405553eb or       edx, ecx
00000001405553ed neg      al
00000001405553ef mov      eax, dword ptr [rbp - 0x38]
00000001405553f2 sbb      ecx, ecx
00000001405553f4 and      eax, r8d
00000001405553f7 and      ecx, r11d
00000001405553fa shl      eax, 0x10
00000001405553fd or       edx, ecx
00000001405553ff or       edx, eax
0000000140555401 mov      dword ptr [rsi + 0x1c], edx
0000000140555404 movzx    edx, byte ptr [rbx + 0x82]
000000014055540b movzx    eax, byte ptr [rbx + 0x90]
0000000140555412 and      edx, 0x3f
0000000140555415 and      eax, 7
0000000140555418 shl      edx, 0xc
000000014055541b or       edx, eax
000000014055541d mov      al, byte ptr [rbx + 0x7c]
0000000140555420 shl      edx, 4
0000000140555423 neg      al
0000000140555425 mov      al, byte ptr [rbx + 0x7b]
0000000140555428 sbb      ecx, ecx
000000014055542a and      ecx, r10d
000000014055542d or       edx, ecx
000000014055542f neg      al
0000000140555431 mov      al, byte ptr [rbx + 0x7e]
0000000140555434 sbb      ecx, ecx
0000000140555436 and      ecx, r9d
0000000140555439 or       edx, ecx
000000014055543b neg      al
000000014055543d mov      al, byte ptr [rbx + 0x7d]
0000000140555440 sbb      ecx, ecx
0000000140555442 and      ecx, r14d
0000000140555445 or       edx, ecx
0000000140555447 neg      al
0000000140555449 mov      al, byte ptr [rbx + 0x83]
000000014055544f sbb      ecx, ecx
0000000140555451 and      ecx, 0x200
0000000140555457 or       edx, ecx
0000000140555459 neg      al
000000014055545b mov      al, byte ptr [rbx + 0x92]
0000000140555461 sbb      ecx, ecx
0000000140555463 and      ecx, 0x400000
0000000140555469 or       edx, ecx
000000014055546b neg      al
000000014055546d movzx    eax, byte ptr [rbx + 0x8f]
0000000140555474 sbb      ecx, ecx
0000000140555476 and      eax, 0xf
0000000140555479 and      ecx, r11d
000000014055547c or       edx, ecx
000000014055547e or       edx, eax
0000000140555480 mov      dword ptr [rbp - 0x30], edx
0000000140555483 movzx    eax, word ptr [rbx + 0x84]
000000014055548a test     ax, ax
000000014055548d je       0x140555499
000000014055548f dec      ax
0000000140555492 mov      word ptr [rbx + 0x84], ax
0000000140555499 movzx    eax, word ptr [rbx + 0x80]
00000001405554a0 lea      rdx, [rbp - 0x40]
00000001405554a4 mov      dword ptr [rbp - 0x3c], eax
00000001405554a7 mov      rcx, rdi
00000001405554aa mov      dword ptr [rbp - 0x40], r12d
00000001405554ae mov      dword ptr [rbp - 0x38], r8d
00000001405554b2 mov      rax, qword ptr [r13 + 0x5a0]
00000001405554b9 call     qword ptr [rip + 0x12ee39]
00000001405554bf mov      al, byte ptr [rbx + 0x88]
00000001405554c5 mov      r8d, 0x8000
00000001405554cb movzx    edx, byte ptr [rbx + 0xa0]
00000001405554d2 mov      r9d, 0x80000000
00000001405554d8 shl      edx, 0x1c
00000001405554db neg      al
00000001405554dd mov      al, byte ptr [rbx + 0x87]
00000001405554e3 sbb      ecx, ecx
00000001405554e5 and      ecx, 0x4000
00000001405554eb or       edx, ecx
00000001405554ed neg      al
00000001405554ef mov      al, byte ptr [rbx + 0x91]
00000001405554f5 sbb      ecx, ecx
00000001405554f7 and      ecx, 0x1000
00000001405554fd or       edx, ecx
00000001405554ff neg      al
0000000140555501 mov      al, byte ptr [rbx + 0x89]
0000000140555507 sbb      ecx, ecx
0000000140555509 and      ecx, r14d
000000014055550c or       edx, ecx
000000014055550e neg      al
0000000140555510 movzx    eax, word ptr [rbx + 0x84]
0000000140555517 sbb      ecx, ecx
0000000140555519 and      ecx, r8d
000000014055551c or       edx, ecx
000000014055551e movzx    ecx, al
0000000140555521 mov      eax, dword ptr [rbp - 0x38]
0000000140555524 or       edx, ecx
0000000140555526 and      eax, 0xfff
000000014055552b shl      eax, 0x10
000000014055552e or       edx, eax
0000000140555530 movzx    eax, byte ptr [rbx + 0x93]
0000000140555537 and      eax, 7
000000014055553a mov      dword ptr [rbp - 0x2c], edx
000000014055553d movzx    edx, byte ptr [rbx + 0x86]
0000000140555544 and      edx, 7
0000000140555547 shl      edx, 5
000000014055554a or       edx, eax
000000014055554c mov      al, byte ptr [rbx + 0x9e]
0000000140555552 shl      edx, 0xd
0000000140555555 neg      al
0000000140555557 mov      al, byte ptr [rbx + 0x78]
000000014055555a sbb      ecx, ecx
000000014055555c and      ecx, 0x40000000
0000000140555562 or       edx, ecx
0000000140555564 neg      al
0000000140555566 mov      al, byte ptr [rbx + 0x9c]
000000014055556c sbb      ecx, ecx
000000014055556e and      ecx, r14d
0000000140555571 or       edx, ecx
0000000140555573 neg      al
0000000140555575 movzx    eax, byte ptr [rbx + 0x8a]
000000014055557c sbb      ecx, ecx
000000014055557e and      ecx, r9d
0000000140555581 or       edx, ecx
0000000140555583 or       edx, eax
0000000140555585 mov      al, byte ptr [rbx + 0xa6]
000000014055558b mov      dword ptr [rbp - 0x28], edx
000000014055558e movzx    edx, byte ptr [rbx + 0x9b]
0000000140555595 and      edx, 0xf
0000000140555598 shl      edx, 4
000000014055559b neg      al
000000014055559d mov      al, byte ptr [rbx + 0x9d]
00000001405555a3 sbb      ecx, ecx
00000001405555a5 and      ecx, 0x800
00000001405555ab or       edx, ecx
00000001405555ad neg      al
00000001405555af mov      al, byte ptr [rbx + 0x9f]
00000001405555b5 sbb      ecx, ecx
00000001405555b7 and      ecx, 0x200
00000001405555bd or       edx, ecx
00000001405555bf neg      al
00000001405555c1 sbb      ecx, ecx
00000001405555c3 movzx    eax, byte ptr [rbx + 0x94]
00000001405555ca and      ecx, r8d
00000001405555cd or       edx, ecx
00000001405555cf mov      qword ptr [rbp - 0x18], r12
00000001405555d3 and      eax, 0xf
00000001405555d6 or       edx, eax
00000001405555d8 movzx    eax, byte ptr [rbx + 0xa8]
00000001405555df and      eax, 3
00000001405555e2 mov      dword ptr [rbp - 0x24], edx
00000001405555e5 movzx    edx, byte ptr [rbx + 0x8d]
00000001405555ec and      edx, 3
00000001405555ef shl      edx, 8
00000001405555f2 or       edx, eax
00000001405555f4 movzx    eax, byte ptr [rbx + 0x96]
00000001405555fb and      eax, 3
00000001405555fe shl      edx, 5
0000000140555601 or       edx, eax
0000000140555603 mov      al, byte ptr [rbx + 0x8c]
0000000140555609 shl      edx, 0x10
000000014055560c neg      al
000000014055560e mov      al, byte ptr [rbx + 0x8b]
0000000140555614 sbb      ecx, ecx
0000000140555616 and      ecx, 0x10000000
000000014055561c or       edx, ecx
000000014055561e neg      al
0000000140555620 mov      al, byte ptr [rbx + 0xa7]
0000000140555626 sbb      ecx, ecx
0000000140555628 and      ecx, 0x8000000
000000014055562e or       edx, ecx
0000000140555630 neg      al
0000000140555632 mov      al, byte ptr [rbx + 0xa1]
0000000140555638 sbb      ecx, ecx
000000014055563a and      ecx, 0x100000
0000000140555640 or       edx, ecx
0000000140555642 neg      al
0000000140555644 mov      al, byte ptr [rbx + 0x8e]
000000014055564a sbb      ecx, ecx
000000014055564c and      ecx, 0x40000
0000000140555652 or       edx, ecx
0000000140555654 neg      al
0000000140555656 movzx    eax, word ptr [rbx + 0x98]
000000014055565d sbb      ecx, ecx
000000014055565f and      ecx, r9d
0000000140555662 or       edx, ecx
0000000140555664 or       edx, eax
0000000140555666 mov      al, byte ptr [rbx + 0xa2]
000000014055566c neg      al
000000014055566e mov      dword ptr [rbp - 0x20], edx
0000000140555671 movzx    eax, word ptr [rbx + 0xa4]
0000000140555678 sbb      ecx, ecx
000000014055567a and      eax, 0x1f
000000014055567d and      ecx, 0x20
0000000140555680 or       ecx, eax
0000000140555682 mov      dword ptr [rbp - 0x1c], ecx
0000000140555685 cmp      byte ptr [rbx + 0x59], r12b
0000000140555689 je       0x1405556b7
000000014055568b mov      rax, qword ptr [rdi + 0x18]
000000014055568f lea      r8, [rbp - 0x30]
0000000140555693 movzx    edx, byte ptr [r15 + 0xe2]
000000014055569b movzx    r9d, byte ptr [r15 + 0xe3]
00000001405556a3 add      rdx, rsi
00000001405556a6 mov      rcx, qword ptr [rdi + 8]
00000001405556aa mov      rax, qword ptr [rax + 0xa0]
00000001405556b1 call     qword ptr [rip + 0x12ec41]
00000001405556b7 mov      rax, qword ptr [rdi + 0x140]
00000001405556be cmp      byte ptr [rax + 0xf1], r12b
00000001405556c5 je       0x1405556d5
00000001405556c7 mov      r8, rsi
00000001405556ca mov      rdx, rbx
00000001405556cd mov      rcx, rdi
00000001405556d0 call     0x140520338
00000001405556d5 xor      eax, eax
00000001405556d7 jmp      0x140555702
00000001405556d9 mov      rax, qword ptr [rdi + 0x18]
00000001405556dd lea      r8, [rip + 0x10a0ec]
00000001405556e4 mov      r9d, ecx
00000001405556e7 mov      edx, 2
00000001405556ec mov      rcx, qword ptr [rdi + 8]
00000001405556f0 mov      rax, qword ptr [rax + 0x118]
00000001405556f7 call     qword ptr [rip + 0x12ebfb]
00000001405556fd mov      eax, 0x2e
0000000140555702 mov      rcx, qword ptr [rbp - 0x10]
0000000140555706 xor      rcx, rsp
0000000140555709 call     0x1405f45b0
000000014055570e add      rsp, 0x78
0000000140555712 pop      r15
0000000140555714 pop      r14
0000000140555716 pop      r13
0000000140555718 pop      r12
000000014055571a pop      rdi
000000014055571b pop      rsi
000000014055571c pop      rbx
000000014055571d pop      rbp
000000014055571e ret      