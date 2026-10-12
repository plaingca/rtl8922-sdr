0000000140102120 mov      qword ptr [rsp + 0x20], rbx
0000000140102125 push     rbp
0000000140102126 push     rsi
0000000140102127 push     rdi
0000000140102128 push     r12
000000014010212a push     r13
000000014010212c push     r14
000000014010212e push     r15
0000000140102130 lea      rbp, [rsp - 0x3e0]
0000000140102138 sub      rsp, 0x4e0
000000014010213f mov      rax, qword ptr [rip + 0x82531a]
0000000140102146 xor      rax, rsp
0000000140102149 mov      qword ptr [rbp + 0x3d8], rax
0000000140102150 mov      rax, qword ptr [rcx + 0xaf3b8]
0000000140102157 mov      r13, rcx
000000014010215a mov      qword ptr [rbp - 0x50], rcx
000000014010215e xor      r15d, r15d
0000000140102161 xor      ecx, ecx
0000000140102163 mov      qword ptr [rbp - 0x70], r8
0000000140102167 mov      rsi, r8
000000014010216a mov      qword ptr [rbp - 0x58], rdx
000000014010216e mov      rax, qword ptr [rax]
0000000140102171 mov      rbx, rdx
0000000140102174 mov      qword ptr [rbp - 0x60], rax
0000000140102178 movzx    edi, r15w
000000014010217c add      rax, 0x8b060
0000000140102182 mov      dword ptr [rbp + 0x3d0], ecx
0000000140102188 mov      word ptr [rbp + 0x3d4], cx
000000014010218f movzx    r12d, r15w
0000000140102193 xor      edx, edx
0000000140102195 mov      qword ptr [rbp - 0x80], rax
0000000140102199 mov      r8d, 0x3f0
000000014010219f mov      byte ptr [rsp + 0x70], r15b
00000001401021a4 lea      rcx, [rbp - 0x40]
00000001401021a8 mov      dword ptr [rbp - 0x78], edi
00000001401021ab mov      dword ptr [rsp + 0x74], r12d
00000001401021b0 call     0x1405f4640
00000001401021b5 mov      rax, qword ptr [rbx + 0x20]
00000001401021b9 mov      r12b, r15b
00000001401021bc mov      byte ptr [rsp + 0x71], r15b
00000001401021c1 mov      ecx, dword ptr [rax + 0x24]
00000001401021c4 sub      ecx, 2
00000001401021c7 cmp      ecx, 4
00000001401021ca ja       0x140102bdc
00000001401021d0 mov      rax, qword ptr [rsi]
00000001401021d3 mov      al, byte ptr [rax + 0x1b]
00000001401021d6 mov      byte ptr [rsp + 0x78], al
00000001401021da and      al, 0x19
00000001401021dc cmp      al, 1
00000001401021de jne      0x140102bdc
00000001401021e4 mov      rdx, rbx
00000001401021e7 mov      rcx, r13
00000001401021ea call     0x1400b2f50
00000001401021ef movzx    edx, word ptr [rsi + 8]
00000001401021f3 lea      ecx, [r15 + 0x1f]
00000001401021f7 mov      qword ptr [rbp - 0x68], rax
00000001401021fb mov      dword ptr [rbp + 0x3c8], ecx
0000000140102201 cmp      cx, dx
0000000140102204 jae      0x140102bdc
000000014010220a mov      rdi, qword ptr [rsi]
000000014010220d mov      bl, r15b
0000000140102210 mov      r14b, r15b
0000000140102213 movzx    esi, cx
0000000140102216 movzx    r15d, cx
000000014010221a mov      byte ptr [rsp + 0x73], bl
000000014010221e movzx    eax, byte ptr [rsi + rdi + 1]
0000000140102223 cmp      byte ptr [r15 + rdi], 0x34
0000000140102228 je       0x140102232
000000014010222a xor      r15d, r15d
000000014010222d jmp      0x14010250c
0000000140102232 lea      ecx, [rsi + rax]
0000000140102235 mov      byte ptr [rsp + 0x72], al
0000000140102239 movzx    eax, dx
000000014010223c cmp      ecx, eax
000000014010223e ja       0x140102536
0000000140102244 lea      edx, [rsi + 2]
0000000140102247 mov      r8d, 6
000000014010224d add      rdx, rdi
0000000140102250 lea      rcx, [rbp + 0x3d0]
0000000140102257 call     0x1400311e8
000000014010225c mov      dil, 0xf
000000014010225f cmp      byte ptr [rsp + 0x72], dil
0000000140102264 jbe      0x140102360
000000014010226a mov      r13b, byte ptr [rsp + 0x72]
000000014010226f mov      r8, qword ptr [rbp - 0x70]
0000000140102273 mov      al, byte ptr [rsp + 0x70]
0000000140102277 mov      r9, qword ptr [r8]
000000014010227a movzx    r10d, dil
000000014010227e add      r10d, esi
0000000140102281 mov      cl, byte ptr [r10 + r9]
0000000140102285 movzx    ebx, byte ptr [r10 + r9 + 1]
000000014010228b cmp      cl, 0xc9
000000014010228e jne      0x140102321
0000000140102294 mov      rax, qword ptr [rbp - 0x60]
0000000140102298 lea      edx, [r10 + 2]
000000014010229c add      rdx, r9
000000014010229f movzx    r8d, bx
00000001401022a3 lea      r9, [rbp - 0x40]
00000001401022a7 mov      r14b, 1
00000001401022aa mov      rcx, qword ptr [rax + 0x20710]
00000001401022b1 call     0x140202248
00000001401022b6 movzx    r12d, byte ptr [rbp - 0x28]
00000001401022bb mov      rcx, qword ptr [rip + 0x81dd3e]
00000001401022c2 lea      rax, [rip + 0x81dd37]
00000001401022c9 cmp      rcx, rax
00000001401022cc je       0x1401022f5
00000001401022ce cmp      byte ptr [rcx + 0x29], 4
00000001401022d2 jb       0x1401022f5
00000001401022d4 test     dword ptr [rcx + 0x2c], 0x100
00000001401022db je       0x1401022f5
00000001401022dd mov      rcx, qword ptr [rcx + 0x18]
00000001401022e1 lea      r8, [rip + 0x591138]
00000001401022e8 mov      r9d, r12d
00000001401022eb mov      edx, 0x4a
00000001401022f0 call     0x140001bb0
00000001401022f5 mov      rax, qword ptr [rbp - 0x58]
00000001401022f9 mov      r8d, 6
00000001401022ff mov      rcx, qword ptr [rbp - 0x30]
0000000140102303 mov      rdx, qword ptr [rax + 0x20]
0000000140102307 add      rdx, 0x18
000000014010230b call     0x14003113c
0000000140102310 mov      r8, qword ptr [rbp - 0x70]
0000000140102314 test     eax, eax
0000000140102316 jne      0x140102345
0000000140102318 mov      al, r14b
000000014010231b mov      byte ptr [rsp + 0x70], al
000000014010231f jmp      0x140102349
0000000140102321 mov      byte ptr [rsp + 0x70], al
0000000140102325 cmp      cl, 3
0000000140102328 jne      0x140102349
000000014010232a movzx    ecx, dil
000000014010232e add      rcx, r15
0000000140102331 mov      byte ptr [rsp + 0x70], al
0000000140102335 mov      r8b, byte ptr [rcx + r9 + 2]
000000014010233a mov      byte ptr [rsp + 0x73], r8b
000000014010233f mov      r8, qword ptr [rbp - 0x70]
0000000140102343 jmp      0x140102349
0000000140102345 mov      al, byte ptr [rsp + 0x70]
0000000140102349 add      bl, 2
000000014010234c add      dil, bl
000000014010234f cmp      dil, r13b
0000000140102352 jb       0x140102277
0000000140102358 mov      r13, qword ptr [rbp - 0x50]
000000014010235c mov      bl, byte ptr [rsp + 0x73]
0000000140102360 mov      rcx, qword ptr [rip + 0x81dc99]
0000000140102367 lea      rdi, [rip + 0x81dc92]
000000014010236e cmp      rcx, rdi
0000000140102371 je       0x1401023e4
0000000140102373 cmp      byte ptr [rcx + 0x29], 4
0000000140102377 jb       0x14010239b
0000000140102379 test     dword ptr [rcx + 0x2c], 0x100
0000000140102380 je       0x14010239b
0000000140102382 mov      rcx, qword ptr [rcx + 0x18]
0000000140102386 lea      r8, [rip + 0x591093]
000000014010238d movzx    r9d, bl
0000000140102391 mov      edx, 0x4b
0000000140102396 call     0x140001bb0
000000014010239b mov      rcx, qword ptr [rip + 0x81dc5e]
00000001401023a2 cmp      rcx, rdi
00000001401023a5 je       0x1401023e4
00000001401023a7 cmp      byte ptr [rcx + 0x29], 4
00000001401023ab jb       0x1401023e4
00000001401023ad xor      r15d, r15d
00000001401023b0 test     dword ptr [rcx + 0x2c], 0x100
00000001401023b7 je       0x1401023e7
00000001401023b9 mov      rcx, qword ptr [rcx + 0x18]
00000001401023bd lea      rax, [rip + 0x4f9f0c]
00000001401023c4 test     r14b, r14b
00000001401023c7 lea      r9, [rip + 0x4f9f12]
00000001401023ce lea      edx, [r15 + 0x4c]
00000001401023d2 cmovne   r9, rax
00000001401023d6 lea      r8, [rip + 0x591043]
00000001401023dd call     0x140008874
00000001401023e2 jmp      0x1401023e7
00000001401023e4 xor      r15d, r15d
00000001401023e7 test     r14b, r14b
00000001401023ea je       0x140102502
00000001401023f0 test     bl, bl
00000001401023f2 je       0x140102502
00000001401023f8 mov      r14d, dword ptr [rsp + 0x74]
00000001401023fd lea      rdx, [rbp + 0x3d0]
0000000140102404 movzx    r14d, r14w
0000000140102408 mov      rcx, r13
000000014010240b movzx    edi, r12b
000000014010240f bts      r14d, edi
0000000140102413 mov      dword ptr [rsp + 0x74], r14d
0000000140102418 call     0x1400fea80
000000014010241d mov      esi, dword ptr [rbp - 0x78]
0000000140102420 test     al, al
0000000140102422 je       0x14010242d
0000000140102424 movzx    esi, si
0000000140102427 bts      esi, edi
000000014010242a mov      dword ptr [rbp - 0x78], esi
000000014010242d mov      bl, r15b
0000000140102430 cmp      byte ptr [rbp + 0x3a8], r15b
0000000140102437 jbe      0x140102502
000000014010243d movzx    r12d, byte ptr [rbp - 0x18]
0000000140102442 mov      rcx, qword ptr [rip + 0x81dbb7]
0000000140102449 lea      rax, [rip + 0x81dbb0]
0000000140102450 cmp      rcx, rax
0000000140102453 je       0x14010247c
0000000140102455 cmp      byte ptr [rcx + 0x29], 4
0000000140102459 jb       0x14010247c
000000014010245b test     dword ptr [rcx + 0x2c], 0x100
0000000140102462 je       0x14010247c
0000000140102464 mov      rcx, qword ptr [rcx + 0x18]
0000000140102468 lea      r8, [rip + 0x590fb1]
000000014010246f mov      r9d, r12d
0000000140102472 mov      edx, 0x4d
0000000140102477 call     0x140001bb0
000000014010247c mov      r8, qword ptr [rbp - 0x80]
0000000140102480 mov      dl, r15b
0000000140102483 mov      dil, byte ptr [r8 + 0x1f2c8]
000000014010248a test     dil, dil
000000014010248d je       0x1401024ec
000000014010248f movzx    eax, dl
0000000140102492 imul     rax, rax, 0x2138
0000000140102499 add      rax, 8
000000014010249d add      rax, r8
00000001401024a0 je       0x1401024ab
00000001401024a2 cmp      byte ptr [rax + 0x1623], r12b
00000001401024a9 je       0x1401024b4
00000001401024ab inc      dl
00000001401024ad cmp      dl, dil
00000001401024b0 jb       0x14010248f
00000001401024b2 jmp      0x1401024ec
00000001401024b4 lea      rdx, [rax + 1]
00000001401024b8 mov      r8d, 6
00000001401024be lea      rcx, [rbp + 0x3d0]
00000001401024c5 call     0x1400311e8
00000001401024ca movzx    r14d, r14w
00000001401024ce lea      rdx, [rbp + 0x3d0]
00000001401024d5 mov      rcx, r13
00000001401024d8 bts      r14d, r12d
00000001401024dc call     0x1400fea80
00000001401024e1 test     al, al
00000001401024e3 je       0x1401024ec
00000001401024e5 movzx    esi, si
00000001401024e8 bts      esi, r12d
00000001401024ec inc      bl
00000001401024ee cmp      bl, byte ptr [rbp + 0x3a8]
00000001401024f4 jb       0x14010243d
00000001401024fa mov      dword ptr [rsp + 0x74], r14d
00000001401024ff mov      dword ptr [rbp - 0x78], esi
0000000140102502 mov      ecx, dword ptr [rbp + 0x3c8]
0000000140102508 mov      al, byte ptr [rsp + 0x72]
000000014010250c mov      rsi, qword ptr [rbp - 0x70]
0000000140102510 mov      edi, 2
0000000140102515 movzx    eax, al
0000000140102518 add      ax, cx
000000014010251b add      ax, di
000000014010251e movzx    edx, word ptr [rsi + 8]
0000000140102522 movzx    ecx, ax
0000000140102525 mov      dword ptr [rbp + 0x3c8], ecx
000000014010252b cmp      ax, dx
000000014010252e jb       0x14010220a
0000000140102534 jmp      0x140102541
0000000140102536 mov      rsi, qword ptr [rbp - 0x70]
000000014010253a xor      r15d, r15d
000000014010253d lea      edi, [r15 + 2]
0000000140102541 cmp      byte ptr [rsp + 0x70], r15b
0000000140102546 je       0x140102bdc
000000014010254c mov      rcx, qword ptr [rip + 0x81daad]
0000000140102553 lea      r8, [rip + 0x81daa6]
000000014010255a cmp      rcx, r8
000000014010255d je       0x140102591
000000014010255f cmp      byte ptr [rcx + 0x29], 4
0000000140102563 jb       0x140102591
0000000140102565 test     dword ptr [rcx + 0x2c], 0x100
000000014010256c je       0x140102591
000000014010256e mov      rcx, qword ptr [rcx + 0x18]
0000000140102572 lea      r9, [rip + 0x500af7]
0000000140102579 mov      edx, 0x4e
000000014010257e lea      r8, [rip + 0x590e9b]
0000000140102585 call     0x140008874
000000014010258a lea      r8, [rip + 0x81da6f]
0000000140102591 mov      rcx, qword ptr [rbp - 0x60]
0000000140102595 mov      eax, dword ptr [rcx + 0xaa688]
000000014010259b cmp      eax, 1
000000014010259e jne      0x140102844
00000001401025a4 mov      eax, dword ptr [rcx + 0xaa68c]
00000001401025aa cmp      eax, 1
00000001401025ad jne      0x14010260d
00000001401025af movzx    eax, word ptr [rcx + 0xaa690]
00000001401025b6 test     ax, ax
00000001401025b9 je       0x1401028ce
00000001401025bf mov      edi, eax
00000001401025c1 mov      rcx, qword ptr [rip + 0x81da38]
00000001401025c8 cmp      rcx, r8
00000001401025cb je       0x140102b8d
00000001401025d1 cmp      byte ptr [rcx + 0x29], 4
00000001401025d5 jb       0x140102b8d
00000001401025db test     dword ptr [rcx + 0x2c], 0x100
00000001401025e2 je       0x140102b8d
00000001401025e8 mov      rcx, qword ptr [rcx + 0x18]
00000001401025ec lea      r9, [rip + 0x500a7d]
00000001401025f3 mov      edx, 0x4f
00000001401025f8 mov      dword ptr [rsp + 0x20], eax
00000001401025fc lea      r8, [rip + 0x590e1d]
0000000140102603 call     0x1400088d8
0000000140102608 jmp      0x140102b8d
000000014010260d mov      r12d, dword ptr [rsp + 0x74]
0000000140102612 cmp      eax, edi
0000000140102614 jne      0x140102824
000000014010261a test     r12w, r12w
000000014010261e je       0x1401028d8
0000000140102624 xor      eax, eax
0000000140102626 lea      r14, [rcx + 0xaa456]
000000014010262d lea      rdx, [rbp + 0x3c8]
0000000140102634 mov      dword ptr [rbp + 0x3c8], eax
000000014010263a mov      rcx, r14
000000014010263d mov      word ptr [rbp + 0x3cc], ax
0000000140102644 lea      edi, [rax + 6]
0000000140102647 mov      r8d, edi
000000014010264a call     0x1400311e8
000000014010264f mov      r15, qword ptr [rbp - 0x60]
0000000140102653 lea      rdx, [rbp + 0x3c8]
000000014010265a mov      r8d, edi
000000014010265d lea      rcx, [r15 + 0xaa45c]
0000000140102664 call     0x1400311e8
0000000140102669 mov      rdx, qword ptr [rbp - 0x80]
000000014010266d xor      edi, edi
000000014010266f mov      sil, dil
0000000140102672 cmp      byte ptr [rdx + 0x1f2c8], dil
0000000140102679 jbe      0x1401028d5
000000014010267f movzx    eax, sil
0000000140102683 lea      rbx, [rdx + 8]
0000000140102687 imul     rcx, rax, 0x2138
000000014010268e add      rbx, rcx
0000000140102691 je       0x140102791
0000000140102697 movzx    ecx, byte ptr [rbx + 0x1623]
000000014010269e movzx    eax, r12w
00000001401026a2 bt       eax, ecx
00000001401026a5 jae      0x140102791
00000001401026ab mov      al, byte ptr [rsp + 0x71]
00000001401026af test     al, al
00000001401026b1 jne      0x14010272c
00000001401026b3 lea      rdx, [rbx + 1]
00000001401026b7 mov      rcx, r13
00000001401026ba call     0x1400b6004
00000001401026bf mov      r8d, 6
00000001401026c5 lea      rdx, [rbx + 1]
00000001401026c9 mov      rcx, r14
00000001401026cc call     0x1400311e8
00000001401026d1 mov      rcx, qword ptr [rip + 0x81d928]
00000001401026d8 lea      rax, [rip + 0x81d921]
00000001401026df cmp      rcx, rax
00000001401026e2 je       0x14010271a
00000001401026e4 cmp      byte ptr [rcx + 0x29], 4
00000001401026e8 jb       0x14010271a
00000001401026ea test     dword ptr [rcx + 0x2c], 0x100
00000001401026f1 je       0x14010271a
00000001401026f3 movzx    eax, byte ptr [rbx + 0x1623]
00000001401026fa lea      r9, [rip + 0x50096f]
0000000140102701 mov      rcx, qword ptr [rcx + 0x18]
0000000140102705 lea      r8, [rip + 0x590d14]
000000014010270c mov      edx, 0x50
0000000140102711 mov      dword ptr [rsp + 0x20], eax
0000000140102715 call     0x1400088d8
000000014010271a xor      edi, edi
000000014010271c mov      rdx, qword ptr [rbp - 0x80]
0000000140102720 mov      bl, byte ptr [rsp + 0x71]
0000000140102724 inc      bl
0000000140102726 mov      byte ptr [rsp + 0x71], bl
000000014010272a jmp      0x140102795
000000014010272c cmp      al, 1
000000014010272e jne      0x140102720
0000000140102730 lea      rdx, [rbx + 1]
0000000140102734 mov      r8d, 6
000000014010273a lea      rcx, [r15 + 0xaa45c]
0000000140102741 call     0x1400311e8
0000000140102746 mov      rcx, qword ptr [rip + 0x81d8b3]
000000014010274d lea      rax, [rip + 0x81d8ac]
0000000140102754 cmp      rcx, rax
0000000140102757 je       0x14010271c
0000000140102759 cmp      byte ptr [rcx + 0x29], 4
000000014010275d jb       0x14010271c
000000014010275f test     dword ptr [rcx + 0x2c], 0x100
0000000140102766 je       0x14010271c
0000000140102768 movzx    eax, byte ptr [rbx + 0x1623]
000000014010276f lea      r9, [rip + 0x5008fa]
0000000140102776 mov      rcx, qword ptr [rcx + 0x18]
000000014010277a lea      r8, [rip + 0x590c9f]
0000000140102781 mov      edx, 0x51
0000000140102786 mov      dword ptr [rsp + 0x20], eax
000000014010278a call     0x1400088d8
000000014010278f jmp      0x14010271c
0000000140102791 mov      bl, byte ptr [rsp + 0x71]
0000000140102795 inc      sil
0000000140102798 cmp      sil, byte ptr [rdx + 0x1f2c8]
000000014010279f jb       0x14010267f
00000001401027a5 xor      r15d, r15d
00000001401027a8 test     bl, bl
00000001401027aa je       0x1401028d8
00000001401027b0 mov      rcx, qword ptr [rip + 0x81d849]
00000001401027b7 lea      rax, [rip + 0x81d842]
00000001401027be cmp      rcx, rax
00000001401027c1 je       0x1401027ed
00000001401027c3 cmp      byte ptr [rcx + 0x29], 4
00000001401027c7 jb       0x1401027ed
00000001401027c9 test     dword ptr [rcx + 0x2c], 0x100
00000001401027d0 je       0x1401027ed
00000001401027d2 mov      rcx, qword ptr [rcx + 0x18]
00000001401027d6 lea      edx, [r15 + 0x52]
00000001401027da lea      r9, [rip + 0x50088f]
00000001401027e1 lea      r8, [rip + 0x590c38]
00000001401027e8 call     0x140008874
00000001401027ed mov      r9, qword ptr [rbp - 0x70]
00000001401027f1 mov      rcx, r13
00000001401027f4 mov      rdx, qword ptr [rbp - 0x68]
00000001401027f8 mov      qword ptr [rsp + 0x28], r14
00000001401027fd mov      byte ptr [rsp + 0x20], r15b
0000000140102802 mov      r9, qword ptr [r9]
0000000140102805 lea      r8, [r9 + 0xa]
0000000140102809 mov      r9b, byte ptr [r9 + 0x1a]
000000014010280d call     0x140118954
0000000140102812 mov      edx, 0xe
0000000140102817 mov      rcx, r13
000000014010281a call     0x140029bec
000000014010281f jmp      0x140102bdc
0000000140102824 cmp      eax, 3
0000000140102827 jne      0x1401028d8
000000014010282d test     r12w, r12w
0000000140102831 je       0x1401028d8
0000000140102837 mov      rcx, r13
000000014010283a call     0x140153b34
000000014010283f jmp      0x140102bdc
0000000140102844 cmp      eax, edi
0000000140102846 jne      0x1401028a5
0000000140102848 mov      rcx, qword ptr [rip + 0x81d7b1]
000000014010284f cmp      rcx, r8
0000000140102852 je       0x14010287f
0000000140102854 cmp      byte ptr [rcx + 0x29], 4
0000000140102858 jb       0x14010287f
000000014010285a test     dword ptr [rcx + 0x2c], 0x100
0000000140102861 je       0x14010287f
0000000140102863 mov      edx, 0x53
0000000140102868 mov      rcx, qword ptr [rcx + 0x18]
000000014010286c lea      r9, [rip + 0x5007fd]
0000000140102873 lea      r8, [rip + 0x590ba6]
000000014010287a call     0x140008874
000000014010287f mov      r9, qword ptr [rsi]
0000000140102882 mov      rcx, r13
0000000140102885 mov      rdx, qword ptr [rbp - 0x68]
0000000140102889 mov      qword ptr [rsp + 0x28], r15
000000014010288e mov      byte ptr [rsp + 0x20], 1
0000000140102893 lea      r8, [r9 + 0xa]
0000000140102897 mov      r9b, byte ptr [r9 + 0x1a]
000000014010289b call     0x140118954
00000001401028a0 jmp      0x140102bdc
00000001401028a5 test     byte ptr [rsp + 0x78], 4
00000001401028aa jne      0x1401028ce
00000001401028ac mov      rcx, qword ptr [rip + 0x81d74d]
00000001401028b3 cmp      rcx, r8
00000001401028b6 je       0x14010287f
00000001401028b8 cmp      byte ptr [rcx + 0x29], 4
00000001401028bc jb       0x14010287f
00000001401028be test     dword ptr [rcx + 0x2c], 0x100
00000001401028c5 je       0x14010287f
00000001401028c7 mov      edx, 0x54
00000001401028cc jmp      0x140102868
00000001401028ce mov      r12d, dword ptr [rsp + 0x74]
00000001401028d3 jmp      0x1401028d8
00000001401028d5 xor      r15d, r15d
00000001401028d8 mov      rax, qword ptr [rbp - 0x58]
00000001401028dc mov      rax, qword ptr [rax + 0x20]
00000001401028e0 bt       word ptr [rax + 0x1b0], 0xd
00000001401028e9 jae      0x140102b8a
00000001401028ef xor      eax, eax
00000001401028f1 lea      r15, [r13 + 0x53ec50]
00000001401028f8 mov      rcx, r15
00000001401028fb mov      bl, al
00000001401028fd lea      edx, [rax + 0x50]
0000000140102900 call     0x140031290
0000000140102905 mov      rax, qword ptr [r13 + 0xaf3b8]
000000014010290c xor      r10d, r10d
000000014010290f mov      dl, r10b
0000000140102912 mov      r8, qword ptr [rax]
0000000140102915 lea      r11d, [r10 + 2]
0000000140102919 mov      r9b, byte ptr [r8 + 0xaaffa]
0000000140102920 test     r9b, r9b
0000000140102923 je       0x14010292e
0000000140102925 cmp      r8, r13
0000000140102928 jne      0x14010292e
000000014010292a mov      al, 3
000000014010292c jmp      0x14010293b
000000014010292e mov      rax, qword ptr [r13 + 0xab230]
0000000140102935 mov      al, byte ptr [rax + 0x250]
000000014010293b cmp      dl, al
000000014010293d jae      0x14010298f
000000014010293f movzx    eax, dl
0000000140102942 imul     rdi, rax, 0x1dc0
0000000140102949 lea      rax, [r13 + 0x544f74]
0000000140102950 lea      rcx, [rdi + 0x53f634]
0000000140102957 add      rcx, r13
000000014010295a cmp      dl, r11b
000000014010295d cmove    rcx, rax
0000000140102961 cmp      dword ptr [rcx], 4
0000000140102964 jne      0x14010298b
0000000140102966 lea      rax, [r13 + 0x544f68]
000000014010296d movzx    ebx, bl
0000000140102970 lea      rcx, [r13 + 0x53f628]
0000000140102977 add      rcx, rdi
000000014010297a cmp      dl, r11b
000000014010297d cmove    rcx, rax
0000000140102981 mov      rax, qword ptr [rcx]
0000000140102984 movzx    ecx, byte ptr [rax + 0x28]
0000000140102988 bts      ebx, ecx
000000014010298b inc      dl
000000014010298d jmp      0x140102920
000000014010298f mov      r14, qword ptr [rbp - 0x80]
0000000140102993 mov      dil, r10b
0000000140102996 movzx    esi, r12w
000000014010299a mov      r12d, 1
00000001401029a0 movzx    ebx, bl
00000001401029a3 mov      cl, dil
00000001401029a6 mov      eax, r12d
00000001401029a9 shl      eax, cl
00000001401029ab mov      ecx, esi
00000001401029ad and      ecx, eax
00000001401029af test     ebx, eax
00000001401029b1 je       0x1401029ca
00000001401029b3 test     ecx, ecx
00000001401029b5 jne      0x140102a26
00000001401029b7 movzx    eax, byte ptr [r15 + 0x48]
00000001401029bc lea      rcx, [rax + rax*2]
00000001401029c0 mov      dword ptr [r15 + rcx*8], 3
00000001401029c8 jmp      0x1401029db
00000001401029ca test     ecx, ecx
00000001401029cc je       0x140102a26
00000001401029ce movzx    eax, byte ptr [r15 + 0x48]
00000001401029d3 lea      rcx, [rax + rax*2]
00000001401029d7 mov      dword ptr [r15 + rcx*8], r11d
00000001401029db mov      dl, dil
00000001401029de mov      rcx, r14
00000001401029e1 call     0x14008c3b0
00000001401029e6 xor      r10d, r10d
00000001401029e9 mov      rdx, rax
00000001401029ec test     rax, rax
00000001401029ef je       0x140102a26
00000001401029f1 movzx    eax, byte ptr [r15 + 0x48]
00000001401029f6 lea      r8d, [r10 + 6]
00000001401029fa inc      rdx
00000001401029fd lea      rcx, [rax + rax*2]
0000000140102a01 mov      byte ptr [r15 + rcx*8 + 4], dil
0000000140102a06 movzx    eax, byte ptr [r15 + 0x48]
0000000140102a0b lea      rcx, [rax + rax*2]
0000000140102a0f lea      rcx, [rcx*8 + 5]
0000000140102a17 add      rcx, r15
0000000140102a1a call     0x1400311e8
0000000140102a1f add      byte ptr [r15 + 0x48], r12b
0000000140102a23 xor      r10d, r10d
0000000140102a26 add      dil, r12b
0000000140102a29 mov      r11d, 2
0000000140102a2f cmp      dil, 0xf
0000000140102a33 jb       0x1401029a3
0000000140102a39 mov      rcx, qword ptr [rip + 0x81d5c0]
0000000140102a40 lea      rdx, [rip + 0x81d5b9]
0000000140102a47 cmp      rcx, rdx
0000000140102a4a je       0x140102a85
0000000140102a4c cmp      byte ptr [rcx + 0x29], 4
0000000140102a50 jb       0x140102a85
0000000140102a52 mov      eax, dword ptr [rcx + 0x2c]
0000000140102a55 test     r11b, al
0000000140102a58 je       0x140102a85
0000000140102a5a movzx    eax, byte ptr [r15 + 0x48]
0000000140102a5f lea      edx, [r11 + 0x53]
0000000140102a63 mov      rcx, qword ptr [rcx + 0x18]
0000000140102a67 lea      r9, [rip + 0x500602]
0000000140102a6e lea      r8, [rip + 0x5909ab]
0000000140102a75 mov      dword ptr [rsp + 0x20], eax
0000000140102a79 call     0x1400088d8
0000000140102a7e lea      rdx, [rip + 0x81d57b]
0000000140102a85 xor      eax, eax
0000000140102a87 mov      r12b, al
0000000140102a8a cmp      byte ptr [r15 + 0x48], al
0000000140102a8e jbe      0x140102b54
0000000140102a94 lea      r13d, [rax + 2]
0000000140102a98 mov      rcx, qword ptr [rip + 0x81d561]
0000000140102a9f cmp      rcx, rdx
0000000140102aa2 je       0x140102b43
0000000140102aa8 cmp      byte ptr [rcx + 0x29], 4
0000000140102aac jb       0x140102b43
0000000140102ab2 mov      eax, dword ptr [rcx + 0x2c]
0000000140102ab5 test     r13b, al
0000000140102ab8 je       0x140102b43
0000000140102abe mov      rcx, qword ptr [rcx + 0x18]
0000000140102ac2 mov      edx, 0x56
0000000140102ac7 movzx    eax, r12b
0000000140102acb movzx    esi, r12b
0000000140102acf lea      r14, [rax + rax*2]
0000000140102ad3 movzx    eax, byte ptr [r15 + r14*8 + 0xa]
0000000140102ad9 movzx    r8d, byte ptr [r15 + r14*8 + 8]
0000000140102adf movzx    r9d, byte ptr [r15 + r14*8 + 7]
0000000140102ae5 movzx    edi, byte ptr [r15 + r14*8 + 9]
0000000140102aeb movzx    r10d, byte ptr [r15 + r14*8 + 6]
0000000140102af1 movzx    r11d, byte ptr [r15 + r14*8 + 5]
0000000140102af7 movzx    ebx, byte ptr [r15 + r14*8 + 4]
0000000140102afd mov      dword ptr [rsp + 0x60], eax
0000000140102b01 mov      eax, dword ptr [r15 + r14*8]
0000000140102b05 mov      dword ptr [rsp + 0x58], edi
0000000140102b09 mov      dword ptr [rsp + 0x50], r8d
0000000140102b0e lea      r8, [rip + 0x59090b]
0000000140102b15 mov      dword ptr [rsp + 0x48], r9d
0000000140102b1a lea      r9, [rip + 0x50054f]
0000000140102b21 mov      dword ptr [rsp + 0x40], r10d
0000000140102b26 mov      dword ptr [rsp + 0x38], r11d
0000000140102b2b mov      dword ptr [rsp + 0x30], ebx
0000000140102b2f mov      dword ptr [rsp + 0x28], eax
0000000140102b33 mov      dword ptr [rsp + 0x20], esi
0000000140102b37 call     0x140038830
0000000140102b3c lea      rdx, [rip + 0x81d4bd]
0000000140102b43 inc      r12b
0000000140102b46 cmp      r12b, byte ptr [r15 + 0x48]
0000000140102b4a jb       0x140102a98
0000000140102b50 mov      r13, qword ptr [rbp - 0x50]
0000000140102b54 mov      rax, qword ptr [rbp - 0x80]
0000000140102b58 xor      r15d, r15d
0000000140102b5b mov      r9, qword ptr [rbp - 0x70]
0000000140102b5f mov      rcx, r13
0000000140102b62 mov      rdx, qword ptr [rbp - 0x68]
0000000140102b66 mov      qword ptr [rsp + 0x28], rax
0000000140102b6b mov      byte ptr [rsp + 0x20], r15b
0000000140102b70 mov      r9, qword ptr [r9]
0000000140102b73 lea      r8, [r9 + 0xa]
0000000140102b77 mov      r9b, byte ptr [r9 + 0x1a]
0000000140102b7b call     0x140118954
0000000140102b80 mov      rcx, r13
0000000140102b83 call     0x14010495c
0000000140102b88 jmp      0x140102bdc
0000000140102b8a mov      edi, dword ptr [rbp - 0x78]
0000000140102b8d test     di, di
0000000140102b90 je       0x140102bdc
0000000140102b92 xor      eax, eax
0000000140102b94 lea      r8, [rbp + 0x3b0]
0000000140102b9b mov      qword ptr [rbp + 0x3c0], rax
0000000140102ba2 xorps    xmm0, xmm0
0000000140102ba5 movzx    eax, di
0000000140102ba8 mov      ecx, 8
0000000140102bad movups   xmmword ptr [rbp + 0x3b0], xmm0
0000000140102bb4 mov      word ptr [rbp + 0x3b0], 0xff02
0000000140102bbd lea      rdi, [rbp + 0x3b8]
0000000140102bc4 rep stosw word ptr [rdi], ax
0000000140102bc7 mov      rcx, r13
0000000140102bca xor      r9d, r9d
0000000140102bcd mov      dl, 1
0000000140102bcf call     0x140102d34
0000000140102bd4 mov      rcx, r13
0000000140102bd7 call     0x1401044b8
0000000140102bdc mov      rax, qword ptr [rbp - 0x60]
0000000140102be0 and      qword ptr [rax + 0xaa688], 0
0000000140102be8 mov      word ptr [rax + 0xaa690], r15w
0000000140102bf0 mov      al, byte ptr [rsp + 0x70]
0000000140102bf4 mov      rcx, qword ptr [rbp + 0x3d8]
0000000140102bfb xor      rcx, rsp
0000000140102bfe call     0x1405f45b0
0000000140102c03 mov      rbx, qword ptr [rsp + 0x538]
0000000140102c0b add      rsp, 0x4e0
0000000140102c12 pop      r15
0000000140102c14 pop      r14
0000000140102c16 pop      r13
0000000140102c18 pop      r12
0000000140102c1a pop      rdi
0000000140102c1b pop      rsi
0000000140102c1c pop      rbp
0000000140102c1d ret      