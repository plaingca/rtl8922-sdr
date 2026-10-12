000000014020a1d8 mov      rax, rsp
000000014020a1db mov      qword ptr [rax + 8], rbx
000000014020a1df mov      qword ptr [rax + 0x10], rbp
000000014020a1e3 mov      qword ptr [rax + 0x18], rsi
000000014020a1e7 mov      qword ptr [rax + 0x20], rdi
000000014020a1eb push     r13
000000014020a1ed push     r14
000000014020a1ef push     r15
000000014020a1f1 sub      rsp, 0x20
000000014020a1f5 mov      rsi, qword ptr [rcx + 0x798]
000000014020a1fc lea      eax, [r8 - 2]
000000014020a200 movzx    r14d, dl
000000014020a204 mov      r13, r9
000000014020a207 mov      ebp, r8d
000000014020a20a mov      r15, rcx
000000014020a20d test     eax, 0xfffffff6
000000014020a212 jne      0x14020a45a
000000014020a218 cmp      r8d, 0xb
000000014020a21c je       0x14020a45a
000000014020a222 mov      rcx, qword ptr [rcx + 0x8d08]
000000014020a229 mov      dl, r14b
000000014020a22c call     0x140249e28
000000014020a231 mov      rdi, qword ptr [rsp + 0x60]
000000014020a236 imul     rdx, r14, 0xf8
000000014020a23d mov      word ptr [rdi + 2], ax
000000014020a241 mov      al, byte ptr [rdi + 5]
000000014020a244 and      al, 0xf8
000000014020a246 mov      byte ptr [rdi + 4], 0xff
000000014020a24a mov      byte ptr [rdi + 5], al
000000014020a24d mov      cl, al
000000014020a24f xor      cl, byte ptr [rdx + rsi + 0x96e9]
000000014020a256 and      cl, 0x20
000000014020a259 xor      cl, al
000000014020a25b mov      byte ptr [rdi + 5], cl
000000014020a25e mov      al, byte ptr [rdx + rsi + 0x96e9]
000000014020a265 xor      cl, al
000000014020a267 and      cl, 0x3f
000000014020a26a xor      cl, al
000000014020a26c mov      al, byte ptr [rdi + 6]
000000014020a26f mov      byte ptr [rdi + 5], cl
000000014020a272 mov      cl, al
000000014020a274 xor      cl, byte ptr [rdx + rsi + 0x96ea]
000000014020a27b and      cl, 3
000000014020a27e xor      cl, al
000000014020a280 mov      byte ptr [rdi + 6], cl
000000014020a283 mov      al, cl
000000014020a285 xor      al, byte ptr [rdx + rsi + 0x96ea]
000000014020a28c and      byte ptr [rdi + 7], 0xfc
000000014020a290 and      al, 0xc
000000014020a292 xor      al, cl
000000014020a294 mov      byte ptr [rdi + 8], 0
000000014020a298 or       al, 0x70
000000014020a29a mov      byte ptr [rdi + 6], al
000000014020a29d mov      al, byte ptr [rsi + 0xe0ba]
000000014020a2a3 test     al, 2
000000014020a2a5 je       0x14020a2ac
000000014020a2a7 and      al, 0xe
000000014020a2a9 mov      byte ptr [rdi + 8], al
000000014020a2ac mov      dl, byte ptr [rdi + 0x42]
000000014020a2af lea      rbx, [r14 + r14*8]
000000014020a2b3 mov      cl, byte ptr [rdi + 0xf]
000000014020a2b6 or       dl, 0xe0
000000014020a2b9 mov      al, byte ptr [rdi + 9]
000000014020a2bc or       cl, 0xe
000000014020a2bf mov      byte ptr [rdi + 0xa], 0xe
000000014020a2c3 and      al, 0xbd
000000014020a2c5 or       al, 0x3d
000000014020a2c7 mov      byte ptr [rdi + 0x42], dl
000000014020a2ca mov      byte ptr [rdi + 9], al
000000014020a2cd and      dl, 0xf0
000000014020a2d0 mov      byte ptr [rdi + 0xf], cl
000000014020a2d3 mov      byte ptr [rdi + 0x10], 0
000000014020a2d7 mov      dword ptr [rdi + 0x14], 0xa42b
000000014020a2de mov      byte ptr [rdi + 0x18], 1
000000014020a2e2 mov      dword ptr [rdi + 0x1c], 0xa549
000000014020a2e9 mov      byte ptr [rdi + 0x20], 2
000000014020a2ed mov      dword ptr [rdi + 0x24], 0x5e4326
000000014020a2f4 mov      byte ptr [rdi + 0x28], 3
000000014020a2f8 mov      dword ptr [rdi + 0x2c], 0x2f3224
000000014020a2ff mov      al, byte ptr [rsi + 0xe178]
000000014020a305 shl      al, 4
000000014020a308 xor      al, cl
000000014020a30a mov      byte ptr [rdi + 0x42], dl
000000014020a30d and      al, 0x10
000000014020a30f mov      rdx, rdi
000000014020a312 xor      al, cl
000000014020a314 mov      byte ptr [rdi + 0xf], al
000000014020a317 mov      al, byte ptr [rdi + 0x41]
000000014020a31a and      al, 0x40
000000014020a31c or       al, 2
000000014020a31e mov      byte ptr [rdi + 0x41], al
000000014020a321 mov      rcx, qword ptr [r15 + 0x798]
000000014020a328 mov      r9b, byte ptr [rcx + rbx*4 + 0xdec9]
000000014020a330 mov      r8b, byte ptr [rcx + rbx*4 + 0xdec8]
000000014020a338 call     0x1402a9d10
000000014020a33d or       byte ptr [rdi + 0x90], 1
000000014020a344 mov      dl, r14b
000000014020a347 mov      rcx, r15
000000014020a34a mov      word ptr [rdi + 0x8e], 0x613f
000000014020a353 call     0x14020a9ac
000000014020a358 mov      r8, rdi
000000014020a35b mov      dl, r14b
000000014020a35e mov      rcx, r15
000000014020a361 call     0x140209cf4
000000014020a366 mov      r9, rdi
000000014020a369 mov      r8d, ebp
000000014020a36c mov      dl, r14b
000000014020a36f mov      rcx, r15
000000014020a372 call     0x140209268
000000014020a377 mov      dl, byte ptr [rdi + 0xc4]
000000014020a37d mov      al, byte ptr [rdi + 0x93]
000000014020a383 or       dl, 3
000000014020a386 and      al, 0x1f
000000014020a388 mov      byte ptr [rdi + 0xc4], dl
000000014020a38e or       al, 0xa0
000000014020a390 mov      byte ptr [rdi + 0x93], al
000000014020a396 mov      al, byte ptr [rdi + 0xb5]
000000014020a39c and      al, 0xef
000000014020a39e or       al, 0x61
000000014020a3a0 mov      byte ptr [rdi + 0xb5], al
000000014020a3a6 mov      al, byte ptr [rdi + 0xb6]
000000014020a3ac and      al, 0xfe
000000014020a3ae or       al, 0xe
000000014020a3b0 mov      byte ptr [rdi + 0xb6], al
000000014020a3b6 mov      cl, byte ptr [rsi + rbx*4 + 0xdec8]
000000014020a3bd mov      al, byte ptr [rdi + 0xba]
000000014020a3c3 shl      cl, 2
000000014020a3c6 xor      cl, al
000000014020a3c8 and      cl, 0x1c
000000014020a3cb xor      cl, al
000000014020a3cd mov      byte ptr [rdi + 0xba], cl
000000014020a3d3 and      cl, 0x1f
000000014020a3d6 mov      al, byte ptr [rsi + rbx*4 + 0xdec9]
000000014020a3dd and      byte ptr [rdi + 0x94], 0xfe
000000014020a3e4 shl      al, 5
000000014020a3e7 or       al, cl
000000014020a3e9 and      dl, 0xfb
000000014020a3ec mov      byte ptr [rdi + 0xba], al
000000014020a3f2 mov      byte ptr [rdi + 0xc4], dl
000000014020a3f8 and      word ptr [rdi + 0xef], 0
000000014020a400 lea      rdx, [r13 + 0x1a]
000000014020a404 mov      word ptr [rdi + 0x73], 0xfffc
000000014020a40a mov      ecx, 0xd7ff
000000014020a40f movzx    eax, word ptr [r13 + 2]
000000014020a414 and      ax, cx
000000014020a417 mov      word ptr [r13], 0xab
000000014020a41e mov      ecx, 0x5001
000000014020a423 mov      byte ptr [r13 + 8], 1
000000014020a428 or       ax, cx
000000014020a42b mov      ecx, 0x7fff
000000014020a430 mov      word ptr [r13 + 2], ax
000000014020a435 mov      eax, 0xff9f
000000014020a43a and      word ptr [r13 + 6], ax
000000014020a43f mov      eax, 8
000000014020a444 mov      word ptr [rdx - 0x10], cx
000000014020a448 mov      word ptr [rdx], cx
000000014020a44b lea      rdx, [rdx + 2]
000000014020a44f sub      rax, 1
000000014020a453 jne      0x14020a444
000000014020a455 jmp      0x14020a6ab
000000014020a45a lea      eax, [r8 - 1]
000000014020a45e test     eax, 0xfffffff5
000000014020a463 jne      0x14020a6ab
000000014020a469 cmp      ebp, 3
000000014020a46c je       0x14020a6ab
000000014020a472 mov      rcx, qword ptr [rcx + 0x8d08]
000000014020a479 mov      dl, r14b
000000014020a47c call     0x140249e28
000000014020a481 mov      rdi, qword ptr [rsp + 0x60]
000000014020a486 imul     rdx, r14, 0xf8
000000014020a48d mov      word ptr [rdi + 2], ax
000000014020a491 mov      al, byte ptr [rdi + 5]
000000014020a494 and      al, 0xf8
000000014020a496 mov      byte ptr [rdi + 4], 0xff
000000014020a49a mov      byte ptr [rdi + 5], al
000000014020a49d mov      cl, al
000000014020a49f xor      cl, byte ptr [rdx + rsi + 0x96e9]
000000014020a4a6 and      cl, 0x20
000000014020a4a9 xor      cl, al
000000014020a4ab mov      byte ptr [rdi + 5], cl
000000014020a4ae mov      al, byte ptr [rdx + rsi + 0x96e9]
000000014020a4b5 xor      cl, al
000000014020a4b7 and      cl, 0x3f
000000014020a4ba xor      cl, al
000000014020a4bc mov      al, byte ptr [rdi + 6]
000000014020a4bf mov      byte ptr [rdi + 5], cl
000000014020a4c2 mov      cl, al
000000014020a4c4 xor      cl, byte ptr [rdx + rsi + 0x96ea]
000000014020a4cb and      cl, 3
000000014020a4ce xor      cl, al
000000014020a4d0 mov      byte ptr [rdi + 6], cl
000000014020a4d3 mov      al, cl
000000014020a4d5 xor      al, byte ptr [rdx + rsi + 0x96ea]
000000014020a4dc and      al, 0xc
000000014020a4de mov      byte ptr [rdi + 8], 0
000000014020a4e2 xor      al, cl
000000014020a4e4 or       al, 0x70
000000014020a4e6 mov      byte ptr [rdi + 6], al
000000014020a4e9 mov      al, byte ptr [rdi + 7]
000000014020a4ec and      al, 0xfe
000000014020a4ee or       al, 2
000000014020a4f0 mov      byte ptr [rdi + 7], al
000000014020a4f3 mov      al, byte ptr [rsi + 0xe0ba]
000000014020a4f9 test     al, 1
000000014020a4fb je       0x14020a502
000000014020a4fd and      al, 0xd
000000014020a4ff mov      byte ptr [rdi + 8], al
000000014020a502 mov      dl, byte ptr [rdi + 0x42]
000000014020a505 lea      rbx, [r14 + r14*8]
000000014020a509 mov      cl, byte ptr [rdi + 0xf]
000000014020a50c or       dl, 0xe0
000000014020a50f mov      al, byte ptr [rdi + 9]
000000014020a512 or       cl, 0xe
000000014020a515 and      al, 0xed
000000014020a517 mov      byte ptr [rdi + 0x42], dl
000000014020a51a or       al, 0x6d
000000014020a51c mov      byte ptr [rdi + 0xf], cl
000000014020a51f mov      byte ptr [rdi + 9], al
000000014020a522 and      dl, 0xf0
000000014020a525 mov      byte ptr [rdi + 0x10], 0
000000014020a529 mov      dword ptr [rdi + 0x14], 0xa42b
000000014020a530 mov      byte ptr [rdi + 0x18], 1
000000014020a534 mov      dword ptr [rdi + 0x1c], 0xa549
000000014020a53b mov      byte ptr [rdi + 0x20], 2
000000014020a53f mov      dword ptr [rdi + 0x24], 0x5e4326
000000014020a546 mov      byte ptr [rdi + 0x28], 3
000000014020a54a mov      dword ptr [rdi + 0x2c], 0x2f3224
000000014020a551 mov      al, byte ptr [rsi + 0xe178]
000000014020a557 shl      al, 4
000000014020a55a xor      al, cl
000000014020a55c mov      byte ptr [rdi + 0x42], dl
000000014020a55f and      al, 0x10
000000014020a561 mov      rdx, rdi
000000014020a564 xor      al, cl
000000014020a566 mov      byte ptr [rdi + 0xf], al
000000014020a569 mov      al, byte ptr [rdi + 0x41]
000000014020a56c and      al, 0x40
000000014020a56e or       al, 2
000000014020a570 mov      byte ptr [rdi + 0x41], al
000000014020a573 mov      rcx, qword ptr [r15 + 0x798]
000000014020a57a mov      r9b, byte ptr [rcx + rbx*4 + 0xdec9]
000000014020a582 mov      r8b, byte ptr [rcx + rbx*4 + 0xdec8]
000000014020a58a call     0x1402a9d10
000000014020a58f mov      dl, r14b
000000014020a592 mov      word ptr [rdi + 0x8e], 0x13f
000000014020a59b mov      rcx, r15
000000014020a59e call     0x14020a9ac
000000014020a5a3 mov      r8, rdi
000000014020a5a6 mov      dl, r14b
000000014020a5a9 mov      rcx, r15
000000014020a5ac call     0x140209cf4
000000014020a5b1 mov      r9, rdi
000000014020a5b4 mov      r8d, ebp
000000014020a5b7 mov      dl, r14b
000000014020a5ba mov      rcx, r15
000000014020a5bd call     0x140209268
000000014020a5c2 and      byte ptr [rdi + 0x90], 0xfe
000000014020a5c9 or       byte ptr [rdi + 0xb6], 0xf
000000014020a5d0 mov      al, byte ptr [rdi + 0x93]
000000014020a5d6 mov      dl, byte ptr [rdi + 0xc4]
000000014020a5dc and      al, 0x1f
000000014020a5de or       al, 0xa0
000000014020a5e0 or       dl, 3
000000014020a5e3 mov      byte ptr [rdi + 0x93], al
000000014020a5e9 mov      al, byte ptr [rdi + 0xb5]
000000014020a5ef and      al, 0xef
000000014020a5f1 mov      byte ptr [rdi + 0xc4], dl
000000014020a5f7 or       al, 0x61
000000014020a5f9 mov      byte ptr [rdi + 0xb5], al
000000014020a5ff mov      cl, byte ptr [rsi + rbx*4 + 0xdec8]
000000014020a606 mov      al, byte ptr [rdi + 0xba]
000000014020a60c shl      cl, 2
000000014020a60f xor      cl, al
000000014020a611 and      cl, 0x1c
000000014020a614 xor      cl, al
000000014020a616 mov      byte ptr [rdi + 0xba], cl
000000014020a61c and      cl, 0x1f
000000014020a61f mov      al, byte ptr [rsi + rbx*4 + 0xdec9]
000000014020a626 and      byte ptr [rdi + 0x94], 0xfe
000000014020a62d shl      al, 5
000000014020a630 or       al, cl
000000014020a632 mov      word ptr [rdi + 0x73], 0xfffc
000000014020a638 mov      byte ptr [rdi + 0xba], al
000000014020a63e and      dl, 0xfb
000000014020a641 mov      byte ptr [rdi + 0xc4], dl
000000014020a647 mov      word ptr [rdi + 0xef], 0x101
000000014020a650 movzx    eax, word ptr [r13 + 2]
000000014020a655 mov      word ptr [r13], 0xab
000000014020a65c mov      ecx, 0xffd9
000000014020a661 mov      byte ptr [r13 + 8], 1
000000014020a666 and      ax, cx
000000014020a669 lea      rdx, [r13 + 0x1a]
000000014020a66d or       ax, 0x59
000000014020a671 mov      ecx, 0xffbf
000000014020a676 mov      word ptr [r13 + 2], ax
000000014020a67b movzx    eax, word ptr [r13 + 6]
000000014020a680 and      ax, cx
000000014020a683 mov      ecx, 0x2020
000000014020a688 or       ax, cx
000000014020a68b mov      ecx, 0x7fff
000000014020a690 mov      word ptr [r13 + 6], ax
000000014020a695 mov      eax, 8
000000014020a69a mov      word ptr [rdx - 0x10], cx
000000014020a69e mov      word ptr [rdx], cx
000000014020a6a1 lea      rdx, [rdx + 2]
000000014020a6a5 sub      rax, 1
000000014020a6a9 jne      0x14020a69a
000000014020a6ab mov      rbx, qword ptr [rsp + 0x40]
000000014020a6b0 xor      eax, eax
000000014020a6b2 mov      rbp, qword ptr [rsp + 0x48]
000000014020a6b7 mov      rsi, qword ptr [rsp + 0x50]
000000014020a6bc mov      rdi, qword ptr [rsp + 0x58]
000000014020a6c1 add      rsp, 0x20
000000014020a6c5 pop      r15
000000014020a6c7 pop      r14
000000014020a6c9 pop      r13
000000014020a6cb ret      