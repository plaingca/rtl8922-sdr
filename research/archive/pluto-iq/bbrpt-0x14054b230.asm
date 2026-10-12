000000014054b230 push     rbp
000000014054b232 push     rbx
000000014054b233 push     rsi
000000014054b234 push     rdi
000000014054b235 push     r12
000000014054b237 push     r13
000000014054b239 push     r14
000000014054b23b push     r15
000000014054b23d mov      rbp, rsp
000000014054b240 sub      rsp, 0x78
000000014054b244 mov      rax, qword ptr [rip + 0x3dc215]
000000014054b24b xor      rax, rsp
000000014054b24e mov      qword ptr [rbp - 0x10], rax
000000014054b252 mov      r13, qword ptr [rcx]
000000014054b255 xor      eax, eax
000000014054b257 mov      r15, qword ptr [rcx + 0x140]
000000014054b25e xorps    xmm0, xmm0
000000014054b261 movups   xmmword ptr [rbp - 0x2f], xmm0
000000014054b265 mov      qword ptr [rbp - 0x1f], rax
000000014054b269 mov      r14d, r9d
000000014054b26c mov      dword ptr [rbp - 0x17], eax
000000014054b26f mov      rsi, r8
000000014054b272 mov      word ptr [rbp - 0x13], ax
000000014054b276 mov      rbx, rdx
000000014054b279 mov      byte ptr [rbp - 0x11], al
000000014054b27c mov      rdi, rcx
000000014054b27f call     0x1405202e0
000000014054b284 cmp      r14d, eax
000000014054b287 je       0x14054b2b7
000000014054b289 mov      rax, qword ptr [rdi + 0x18]
000000014054b28d lea      r8, [rip + 0x11457c]
000000014054b294 mov      rcx, qword ptr [rdi + 8]
000000014054b298 mov      r9d, r14d
000000014054b29b mov      edx, 2
000000014054b2a0 mov      rax, qword ptr [rax + 0x118]
000000014054b2a7 call     qword ptr [rip + 0x13904b]
000000014054b2ad mov      eax, 0xa
000000014054b2b2 jmp      0x14054b902
000000014054b2b7 movzx    ecx, word ptr [rbx + 0x36]
000000014054b2bb mov      r8d, 1
000000014054b2c1 movzx    eax, cx
000000014054b2c4 mov      edx, 0x3ffe
000000014054b2c9 sub      ax, r8w
000000014054b2cd cmp      ax, dx
000000014054b2d0 ja       0x14054b8d9
000000014054b2d6 mov      eax, dword ptr [rdi + 0xeec]
000000014054b2dc xor      r12d, r12d
000000014054b2df mov      r14d, 0x400
000000014054b2e5 cmp      eax, r8d
000000014054b2e8 jne      0x14054b2fc
000000014054b2ea mov      al, byte ptr [rbx + 0x59]
000000014054b2ed neg      al
000000014054b2ef sbb      edx, edx
000000014054b2f1 and      edx, 0x80
000000014054b2f7 add      edx, r14d
000000014054b2fa jmp      0x14054b341
000000014054b2fc test     eax, eax
000000014054b2fe jne      0x14054b31f
000000014054b300 mov      al, byte ptr [rbx + 0x5b]
000000014054b303 neg      al
000000014054b305 mov      al, byte ptr [rbx + 0x59]
000000014054b308 sbb      edx, edx
000000014054b30a and      edx, 0x200000
000000014054b310 add      edx, r14d
000000014054b313 neg      al
000000014054b315 sbb      ecx, ecx
000000014054b317 and      ecx, 0x80
000000014054b31d jmp      0x14054b33f
000000014054b31f mov      eax, dword ptr [rdi + 0x3b0]
000000014054b325 mov      ecx, r14d
000000014054b328 sub      eax, 3
000000014054b32b cmp      eax, r8d
000000014054b32e mov      al, byte ptr [rbx + 0x58]
000000014054b331 cmova    ecx, r12d
000000014054b335 neg      al
000000014054b337 sbb      edx, edx
000000014054b339 and      edx, 0x80
000000014054b33f or       edx, ecx
000000014054b341 mov      dword ptr [rsi], edx
000000014054b343 lea      r8, [rbp - 0x48]
000000014054b347 mov      rdx, rbx
000000014054b34a mov      rcx, rdi
000000014054b34d call     0x14050d644
000000014054b352 test     eax, eax
000000014054b354 jne      0x14054b902
000000014054b35a lea      r9, [rbp - 0x46]
000000014054b35e mov      rdx, rbx
000000014054b361 lea      r8, [rbp - 0x47]
000000014054b365 mov      rcx, rdi
000000014054b368 call     0x14050d740
000000014054b36d test     eax, eax
000000014054b36f jne      0x14054b902
000000014054b375 movzx    edx, byte ptr [rbx + 0x51]
000000014054b379 and      edx, 0xf
000000014054b37c movzx    eax, byte ptr [rbp - 0x48]
000000014054b380 shl      edx, 0xd
000000014054b383 and      eax, 0x1f
000000014054b386 or       edx, eax
000000014054b388 mov      al, byte ptr [rbx + 0x2e]
000000014054b38b neg      al
000000014054b38d movzx    eax, byte ptr [rbx + 0x3f]
000000014054b391 sbb      ecx, ecx
000000014054b393 and      eax, 7
000000014054b396 and      ecx, 0x40
000000014054b399 add      ecx, 0x100
000000014054b39f or       edx, ecx
000000014054b3a1 shl      edx, 9
000000014054b3a4 or       edx, eax
000000014054b3a6 mov      al, byte ptr [rbx + 0x5f]
000000014054b3a9 shl      edx, 2
000000014054b3ac neg      al
000000014054b3ae mov      al, byte ptr [rbx + 0x43]
000000014054b3b1 sbb      ecx, ecx
000000014054b3b3 and      ecx, 0x40
000000014054b3b6 or       edx, ecx
000000014054b3b8 neg      al
000000014054b3ba movzx    eax, byte ptr [rbx + 0x3e]
000000014054b3be sbb      ecx, ecx
000000014054b3c0 and      eax, 3
000000014054b3c3 and      ecx, 0x20
000000014054b3c6 or       edx, ecx
000000014054b3c8 or       edx, eax
000000014054b3ca mov      al, byte ptr [rbx + 0x59]
000000014054b3cd neg      al
000000014054b3cf mov      al, byte ptr [rbp - 0x47]
000000014054b3d2 sbb      ecx, ecx
000000014054b3d4 and      ecx, 0x400000
000000014054b3da or       edx, ecx
000000014054b3dc neg      al
000000014054b3de sbb      ecx, ecx
000000014054b3e0 and      ecx, 0x100000
000000014054b3e6 or       edx, ecx
000000014054b3e8 or       dword ptr [rsi], edx
000000014054b3ea movzx    eax, byte ptr [rbx + 0x5a]
000000014054b3ee movzx    edx, byte ptr [rbx + 0x54]
000000014054b3f2 and      edx, 3
000000014054b3f5 shl      eax, 2
000000014054b3f8 or       edx, eax
000000014054b3fa movzx    eax, byte ptr [rbx + 0x55]
000000014054b3fe shl      edx, 4
000000014054b401 and      eax, 0xf
000000014054b404 or       edx, eax
000000014054b406 movzx    eax, byte ptr [rbx + 0x61]
000000014054b40a shl      edx, 4
000000014054b40d and      eax, 3
000000014054b410 or       edx, eax
000000014054b412 movzx    eax, byte ptr [rbx + 0x77]
000000014054b416 shl      edx, 4
000000014054b419 and      eax, 0xf
000000014054b41c or       edx, eax
000000014054b41e mov      al, byte ptr [rbx + 0x60]
000000014054b421 shl      edx, 0xc
000000014054b424 neg      al
000000014054b426 sbb      ecx, ecx
000000014054b428 and      ecx, 0x40000
000000014054b42e or       edx, ecx
000000014054b430 mov      dword ptr [rsi + 4], edx
000000014054b433 mov      al, byte ptr [rbx + 0x2e]
000000014054b436 movzx    edx, word ptr [rbx + 0x3c]
000000014054b43a shl      edx, 7
000000014054b43d neg      al
000000014054b43f movzx    eax, byte ptr [rbx + 0x34]
000000014054b443 sbb      ecx, ecx
000000014054b445 and      ecx, 8
000000014054b448 add      ecx, 0x12
000000014054b44b or       edx, ecx
000000014054b44d lea      rcx, [rip + 0x779d34]
000000014054b454 mov      al, byte ptr [rax + rcx]
000000014054b457 shl      edx, 0xf
000000014054b45a neg      al
000000014054b45c sbb      ecx, ecx
000000014054b45e and      ecx, 0x200000
000000014054b464 or       edx, ecx
000000014054b466 mov      al, byte ptr [rbx + 0x5d]
000000014054b469 mov      r11d, 0x4000
000000014054b46f neg      al
000000014054b471 movzx    eax, word ptr [rbx + 0x36]
000000014054b475 sbb      ecx, ecx
000000014054b477 and      eax, 0x3fff
000000014054b47c and      ecx, r11d
000000014054b47f or       edx, ecx
000000014054b481 or       edx, eax
000000014054b483 mov      dword ptr [rsi + 8], edx
000000014054b486 cmp      byte ptr [rbx + 0x5e], r12b
000000014054b48a jne      0x14054b498
000000014054b48c mov      edx, r12d
000000014054b48f cmp      byte ptr [rbx + 0x92], r12b
000000014054b496 je       0x14054b49b
000000014054b498 mov      edx, r11d
000000014054b49b mov      al, byte ptr [rbx + 0x68]
000000014054b49e mov      r10d, 0x2000
000000014054b4a4 neg      al
000000014054b4a6 mov      r9d, 0xfff
000000014054b4ac movzx    eax, word ptr [rbx + 0x40]
000000014054b4b0 sbb      ecx, ecx
000000014054b4b2 and      eax, r9d
000000014054b4b5 and      ecx, r10d
000000014054b4b8 or       ecx, eax
000000014054b4ba or       ecx, edx
000000014054b4bc mov      dword ptr [rsi + 0xc], ecx
000000014054b4bf movzx    eax, byte ptr [rbx + 0x62]
000000014054b4c3 movzx    ecx, byte ptr [rbx + 0x63]
000000014054b4c7 shl      ecx, 8
000000014054b4ca or       ecx, eax
000000014054b4cc shl      ecx, 0x10
000000014054b4cf mov      dword ptr [rsi + 0x10], ecx
000000014054b4d2 movzx    eax, byte ptr [rbx + 0x66]
000000014054b4d6 movzx    ecx, byte ptr [rbx + 0x67]
000000014054b4da shl      ecx, 8
000000014054b4dd or       ecx, eax
000000014054b4df movzx    eax, byte ptr [rbx + 0x65]
000000014054b4e3 shl      ecx, 8
000000014054b4e6 or       ecx, eax
000000014054b4e8 movzx    eax, byte ptr [rbx + 0x64]
000000014054b4ec shl      ecx, 8
000000014054b4ef or       ecx, eax
000000014054b4f1 mov      dword ptr [rsi + 0x14], ecx
000000014054b4f4 cmp      byte ptr [rbx + 0x79], r12b
000000014054b4f8 jne      0x14054b503
000000014054b4fa mov      r8d, r12d
000000014054b4fd cmp      byte ptr [rbx + 0x7a], r12b
000000014054b501 je       0x14054b509
000000014054b503 mov      r8d, 0x800
000000014054b509 mov      al, byte ptr [rbx + 0x4d]
000000014054b50c neg      al
000000014054b50e mov      dword ptr [rbp - 0x40], r12d
000000014054b512 mov      al, byte ptr [rbx + 0x6a]
000000014054b515 sbb      edx, edx
000000014054b517 mov      dword ptr [rbp - 0x38], r9d
000000014054b51b and      edx, r11d
000000014054b51e neg      al
000000014054b520 mov      al, byte ptr [rbx + 0x6b]
000000014054b523 sbb      ecx, ecx
000000014054b525 and      ecx, 0x1000
000000014054b52b or       edx, ecx
000000014054b52d neg      al
000000014054b52f mov      al, byte ptr [rbp - 0x46]
000000014054b532 sbb      ecx, ecx
000000014054b534 and      ecx, 0x8000
000000014054b53a or       edx, ecx
000000014054b53c neg      al
000000014054b53e sbb      ecx, ecx
000000014054b540 and      ecx, r10d
000000014054b543 or       edx, ecx
000000014054b545 mov      rcx, rdi
000000014054b548 or       edx, r8d
000000014054b54b mov      dword ptr [rsi + 0x18], edx
000000014054b54e lea      rdx, [rbp - 0x40]
000000014054b552 movzx    eax, word ptr [rbx + 0x70]
000000014054b556 mov      dword ptr [rbp - 0x3c], eax
000000014054b559 mov      rax, qword ptr [r13 + 0x5a0]
000000014054b560 call     qword ptr [rip + 0x138d92]
000000014054b566 mov      r9d, eax
000000014054b569 test     eax, eax
000000014054b56b je       0x14054b58e
000000014054b56d mov      rcx, qword ptr [rdi + 0x18]
000000014054b571 lea      r8, [rip + 0x114278]
000000014054b578 mov      edx, 2
000000014054b57d mov      rax, qword ptr [rcx + 0x118]
000000014054b584 mov      rcx, qword ptr [rdi + 8]
000000014054b588 call     qword ptr [rip + 0x138d6a]
000000014054b58e movzx    edx, byte ptr [rbx + 0x73]
000000014054b592 mov      r10d, 0x1000
000000014054b598 movzx    eax, byte ptr [rbx + 0x72]
000000014054b59c and      edx, 7
000000014054b59f shl      edx, 0xf
000000014054b5a2 and      eax, 7
000000014054b5a5 or       edx, eax
000000014054b5a7 mov      r9d, 0x800
000000014054b5ad movzx    eax, byte ptr [rbx + 0x53]
000000014054b5b1 lea      r8d, [r10 - 1]
000000014054b5b5 and      eax, 0xf
000000014054b5b8 shl      edx, 7
000000014054b5bb or       edx, eax
000000014054b5bd mov      r11d, 0x80000000
000000014054b5c3 mov      al, byte ptr [rbx + 0x6e]
000000014054b5c6 shl      edx, 6
000000014054b5c9 neg      al
000000014054b5cb mov      al, byte ptr [rbx + 0x6d]
000000014054b5ce sbb      ecx, ecx
000000014054b5d0 and      ecx, r10d
000000014054b5d3 or       edx, ecx
000000014054b5d5 neg      al
000000014054b5d7 mov      al, byte ptr [rbx + 0x6f]
000000014054b5da sbb      ecx, ecx
000000014054b5dc and      ecx, r9d
000000014054b5df or       edx, ecx
000000014054b5e1 neg      al
000000014054b5e3 mov      al, byte ptr [rbx + 0x74]
000000014054b5e6 sbb      ecx, ecx
000000014054b5e8 and      ecx, r14d
000000014054b5eb or       edx, ecx
000000014054b5ed neg      al
000000014054b5ef mov      eax, dword ptr [rbp - 0x38]
000000014054b5f2 sbb      ecx, ecx
000000014054b5f4 and      eax, r8d
000000014054b5f7 and      ecx, r11d
000000014054b5fa shl      eax, 0x10
000000014054b5fd or       edx, ecx
000000014054b5ff or       edx, eax
000000014054b601 mov      dword ptr [rsi + 0x1c], edx
000000014054b604 movzx    edx, byte ptr [rbx + 0x82]
000000014054b60b movzx    eax, byte ptr [rbx + 0x90]
000000014054b612 and      edx, 0x3f
000000014054b615 and      eax, 7
000000014054b618 shl      edx, 0xc
000000014054b61b or       edx, eax
000000014054b61d mov      al, byte ptr [rbx + 0x7c]
000000014054b620 shl      edx, 4
000000014054b623 neg      al
000000014054b625 mov      al, byte ptr [rbx + 0x7b]
000000014054b628 sbb      ecx, ecx
000000014054b62a and      ecx, r10d
000000014054b62d or       edx, ecx
000000014054b62f neg      al
000000014054b631 mov      al, byte ptr [rbx + 0x7e]
000000014054b634 sbb      ecx, ecx
000000014054b636 and      ecx, r9d
000000014054b639 or       edx, ecx
000000014054b63b neg      al
000000014054b63d mov      al, byte ptr [rbx + 0x7d]
000000014054b640 sbb      ecx, ecx
000000014054b642 and      ecx, r14d
000000014054b645 or       edx, ecx
000000014054b647 neg      al
000000014054b649 mov      al, byte ptr [rbx + 0x83]
000000014054b64f sbb      ecx, ecx
000000014054b651 and      ecx, 0x200
000000014054b657 or       edx, ecx
000000014054b659 neg      al
000000014054b65b mov      al, byte ptr [rbx + 0x92]
000000014054b661 sbb      ecx, ecx
000000014054b663 and      ecx, 0x400000
000000014054b669 or       edx, ecx
000000014054b66b neg      al
000000014054b66d movzx    eax, byte ptr [rbx + 0x8f]
000000014054b674 sbb      ecx, ecx
000000014054b676 and      eax, 0xf
000000014054b679 and      ecx, r11d
000000014054b67c or       edx, ecx
000000014054b67e or       edx, eax
000000014054b680 mov      dword ptr [rbp - 0x30], edx
000000014054b683 movzx    eax, word ptr [rbx + 0x84]
000000014054b68a test     ax, ax
000000014054b68d je       0x14054b699
000000014054b68f dec      ax
000000014054b692 mov      word ptr [rbx + 0x84], ax
000000014054b699 movzx    eax, word ptr [rbx + 0x80]
000000014054b6a0 lea      rdx, [rbp - 0x40]
000000014054b6a4 mov      dword ptr [rbp - 0x3c], eax
000000014054b6a7 mov      rcx, rdi
000000014054b6aa mov      dword ptr [rbp - 0x40], r12d
000000014054b6ae mov      dword ptr [rbp - 0x38], r8d
000000014054b6b2 mov      rax, qword ptr [r13 + 0x5a0]
000000014054b6b9 call     qword ptr [rip + 0x138c39]
000000014054b6bf mov      al, byte ptr [rbx + 0x88]
000000014054b6c5 mov      r8d, 0x8000
000000014054b6cb movzx    edx, byte ptr [rbx + 0xa0]
000000014054b6d2 mov      r9d, 0x80000000
000000014054b6d8 shl      edx, 0x1c
000000014054b6db neg      al
000000014054b6dd mov      al, byte ptr [rbx + 0x87]
000000014054b6e3 sbb      ecx, ecx
000000014054b6e5 and      ecx, 0x4000
000000014054b6eb or       edx, ecx
000000014054b6ed neg      al
000000014054b6ef mov      al, byte ptr [rbx + 0x91]
000000014054b6f5 sbb      ecx, ecx
000000014054b6f7 and      ecx, 0x1000
000000014054b6fd or       edx, ecx
000000014054b6ff neg      al
000000014054b701 mov      al, byte ptr [rbx + 0x89]
000000014054b707 sbb      ecx, ecx
000000014054b709 and      ecx, r14d
000000014054b70c or       edx, ecx
000000014054b70e neg      al
000000014054b710 movzx    eax, word ptr [rbx + 0x84]
000000014054b717 sbb      ecx, ecx
000000014054b719 and      ecx, r8d
000000014054b71c or       edx, ecx
000000014054b71e movzx    ecx, al
000000014054b721 mov      eax, dword ptr [rbp - 0x38]
000000014054b724 or       edx, ecx
000000014054b726 and      eax, 0xfff
000000014054b72b shl      eax, 0x10
000000014054b72e or       edx, eax
000000014054b730 movzx    eax, byte ptr [rbx + 0x93]
000000014054b737 and      eax, 7
000000014054b73a mov      dword ptr [rbp - 0x2c], edx
000000014054b73d movzx    edx, byte ptr [rbx + 0x86]
000000014054b744 and      edx, 7
000000014054b747 shl      edx, 5
000000014054b74a or       edx, eax
000000014054b74c mov      al, byte ptr [rbx + 0x9e]
000000014054b752 shl      edx, 0xd
000000014054b755 neg      al
000000014054b757 mov      al, byte ptr [rbx + 0x78]
000000014054b75a sbb      ecx, ecx
000000014054b75c and      ecx, 0x40000000
000000014054b762 or       edx, ecx
000000014054b764 neg      al
000000014054b766 mov      al, byte ptr [rbx + 0x9c]
000000014054b76c sbb      ecx, ecx
000000014054b76e and      ecx, r14d
000000014054b771 or       edx, ecx
000000014054b773 neg      al
000000014054b775 movzx    eax, byte ptr [rbx + 0x8a]
000000014054b77c sbb      ecx, ecx
000000014054b77e and      ecx, r9d
000000014054b781 or       edx, ecx
000000014054b783 or       edx, eax
000000014054b785 mov      al, byte ptr [rbx + 0xa6]
000000014054b78b mov      dword ptr [rbp - 0x28], edx
000000014054b78e movzx    edx, byte ptr [rbx + 0x9b]
000000014054b795 and      edx, 0xf
000000014054b798 shl      edx, 4
000000014054b79b neg      al
000000014054b79d mov      al, byte ptr [rbx + 0x9d]
000000014054b7a3 sbb      ecx, ecx
000000014054b7a5 and      ecx, 0x800
000000014054b7ab or       edx, ecx
000000014054b7ad neg      al
000000014054b7af mov      al, byte ptr [rbx + 0x9f]
000000014054b7b5 sbb      ecx, ecx
000000014054b7b7 and      ecx, 0x200
000000014054b7bd or       edx, ecx
000000014054b7bf neg      al
000000014054b7c1 sbb      ecx, ecx
000000014054b7c3 movzx    eax, byte ptr [rbx + 0x94]
000000014054b7ca and      ecx, r8d
000000014054b7cd or       edx, ecx
000000014054b7cf mov      qword ptr [rbp - 0x18], r12
000000014054b7d3 and      eax, 0xf
000000014054b7d6 or       edx, eax
000000014054b7d8 movzx    eax, byte ptr [rbx + 0xa8]
000000014054b7df and      eax, 3
000000014054b7e2 mov      dword ptr [rbp - 0x24], edx
000000014054b7e5 movzx    edx, byte ptr [rbx + 0x8d]
000000014054b7ec and      edx, 3
000000014054b7ef shl      edx, 8
000000014054b7f2 or       edx, eax
000000014054b7f4 movzx    eax, byte ptr [rbx + 0x96]
000000014054b7fb and      eax, 3
000000014054b7fe shl      edx, 5
000000014054b801 or       edx, eax
000000014054b803 mov      al, byte ptr [rbx + 0x8c]
000000014054b809 shl      edx, 0x10
000000014054b80c neg      al
000000014054b80e mov      al, byte ptr [rbx + 0x8b]
000000014054b814 sbb      ecx, ecx
000000014054b816 and      ecx, 0x10000000
000000014054b81c or       edx, ecx
000000014054b81e neg      al
000000014054b820 mov      al, byte ptr [rbx + 0xa7]
000000014054b826 sbb      ecx, ecx
000000014054b828 and      ecx, 0x8000000
000000014054b82e or       edx, ecx
000000014054b830 neg      al
000000014054b832 mov      al, byte ptr [rbx + 0xa1]
000000014054b838 sbb      ecx, ecx
000000014054b83a and      ecx, 0x100000
000000014054b840 or       edx, ecx
000000014054b842 neg      al
000000014054b844 mov      al, byte ptr [rbx + 0x8e]
000000014054b84a sbb      ecx, ecx
000000014054b84c and      ecx, 0x40000
000000014054b852 or       edx, ecx
000000014054b854 neg      al
000000014054b856 movzx    eax, word ptr [rbx + 0x98]
000000014054b85d sbb      ecx, ecx
000000014054b85f and      ecx, r9d
000000014054b862 or       edx, ecx
000000014054b864 or       edx, eax
000000014054b866 mov      al, byte ptr [rbx + 0xa2]
000000014054b86c neg      al
000000014054b86e mov      dword ptr [rbp - 0x20], edx
000000014054b871 movzx    eax, word ptr [rbx + 0xa4]
000000014054b878 sbb      ecx, ecx
000000014054b87a and      eax, 0x1f
000000014054b87d and      ecx, 0x20
000000014054b880 or       ecx, eax
000000014054b882 mov      dword ptr [rbp - 0x1c], ecx
000000014054b885 cmp      byte ptr [rbx + 0x59], r12b
000000014054b889 je       0x14054b8b7
000000014054b88b mov      rax, qword ptr [rdi + 0x18]
000000014054b88f lea      r8, [rbp - 0x30]
000000014054b893 movzx    edx, byte ptr [r15 + 0xe2]
000000014054b89b movzx    r9d, byte ptr [r15 + 0xe3]
000000014054b8a3 add      rdx, rsi
000000014054b8a6 mov      rcx, qword ptr [rdi + 8]
000000014054b8aa mov      rax, qword ptr [rax + 0xa0]
000000014054b8b1 call     qword ptr [rip + 0x138a41]
000000014054b8b7 mov      rax, qword ptr [rdi + 0x140]
000000014054b8be cmp      byte ptr [rax + 0xf1], r12b
000000014054b8c5 je       0x14054b8d5
000000014054b8c7 mov      r8, rsi
000000014054b8ca mov      rdx, rbx
000000014054b8cd mov      rcx, rdi
000000014054b8d0 call     0x140520338
000000014054b8d5 xor      eax, eax
000000014054b8d7 jmp      0x14054b902
000000014054b8d9 mov      rax, qword ptr [rdi + 0x18]
000000014054b8dd lea      r8, [rip + 0x113eec]
000000014054b8e4 mov      r9d, ecx
000000014054b8e7 mov      edx, 2
000000014054b8ec mov      rcx, qword ptr [rdi + 8]
000000014054b8f0 mov      rax, qword ptr [rax + 0x118]
000000014054b8f7 call     qword ptr [rip + 0x1389fb]
000000014054b8fd mov      eax, 0x2e
000000014054b902 mov      rcx, qword ptr [rbp - 0x10]
000000014054b906 xor      rcx, rsp
000000014054b909 call     0x1405f45b0
000000014054b90e add      rsp, 0x78
000000014054b912 pop      r15
000000014054b914 pop      r14
000000014054b916 pop      r13
000000014054b918 pop      r12
000000014054b91a pop      rdi
000000014054b91b pop      rsi
000000014054b91c pop      rbx
000000014054b91d pop      rbp
000000014054b91e ret      