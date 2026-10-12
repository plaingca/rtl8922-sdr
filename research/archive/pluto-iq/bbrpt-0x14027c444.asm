000000014027c444 mov      qword ptr [rsp + 8], rbx
000000014027c449 mov      qword ptr [rsp + 0x10], rsi
000000014027c44e push     rdi
000000014027c44f sub      rsp, 0x30
000000014027c453 mov      rdi, qword ptr [rdx + 8]
000000014027c457 mov      rsi, rcx
000000014027c45a mov      rcx, qword ptr [rdx + 0x230]
000000014027c461 mov      rax, qword ptr [rcx]
000000014027c464 mov      rax, qword ptr [rax + 0x9e8]
000000014027c46b call     qword ptr [rip + 0x407e87]
000000014027c471 mov      rbx, rax
000000014027c474 test     rax, rax
000000014027c477 jne      0x14027c4d3
000000014027c479 mov      rcx, qword ptr [rip + 0x6a3b80]
000000014027c480 lea      rax, [rip + 0x6a3b79]
000000014027c487 cmp      rcx, rax
000000014027c48a je       0x14027c4c9
000000014027c48c cmp      byte ptr [rcx + 0x169], 2
000000014027c493 jb       0x14027c4c9
000000014027c495 mov      edx, dword ptr [rcx + 0x16c]
000000014027c49b test     dl, 1
000000014027c49e je       0x14027c4c9
000000014027c4a0 mov      rcx, qword ptr [rcx + 0x158]
000000014027c4a7 lea      rax, [rip + 0x39f172]
000000014027c4ae lea      edx, [rbx + 0x46]
000000014027c4b1 mov      qword ptr [rsp + 0x20], rax
000000014027c4b6 lea      r9, [rip + 0x391ed3]
000000014027c4bd lea      r8, [rip + 0x41ca1c]
000000014027c4c4 call     0x14003c968
000000014027c4c9 mov      eax, 1
000000014027c4ce jmp      0x14027c6ab
000000014027c4d3 mov      rcx, rbx
000000014027c4d6 call     0x14026f570
000000014027c4db movzx    eax, byte ptr [rbx + 0xd8]
000000014027c4e2 mov      r8d, 8
000000014027c4e8 mov      dword ptr [rdi + 4], eax
000000014027c4eb movzx    eax, byte ptr [rbx + 0xdd]
000000014027c4f2 mov      dword ptr [rdi + 0x10], eax
000000014027c4f5 movzx    eax, word ptr [rbx + 0xb6]
000000014027c4fc mov      dword ptr [rdi + 0x14], eax
000000014027c4ff movzx    eax, word ptr [rbx + 0xb8]
000000014027c506 mov      dword ptr [rdi + 0x18], eax
000000014027c509 movzx    eax, byte ptr [rbx + 0xda]
000000014027c510 cmp      al, r8b
000000014027c513 jbe      0x14027c518
000000014027c515 mov      eax, r8d
000000014027c518 mov      dword ptr [rdi + 8], eax
000000014027c51b movzx    eax, byte ptr [rbx + 0xdb]
000000014027c522 cmp      al, r8b
000000014027c525 jbe      0x14027c52a
000000014027c527 mov      eax, r8d
000000014027c52a mov      dword ptr [rdi + 0xc], eax
000000014027c52d mov      al, byte ptr [rbx + 0xf3]
000000014027c533 mov      byte ptr [rsi + 0x96c8], al
000000014027c539 mov      al, byte ptr [rbx + 0xe6]
000000014027c53f mov      byte ptr [rsi + 0x9639], al
000000014027c545 mov      al, byte ptr [rbx + 0xe8]
000000014027c54b mov      byte ptr [rsi + 0x963a], al
000000014027c551 mov      al, byte ptr [rbx + 0xe5]
000000014027c557 mov      byte ptr [rdi + 0x40e], al
000000014027c55d movzx    eax, word ptr [rbx + 0xbe]
000000014027c564 mov      word ptr [rdi + 0x408], ax
000000014027c56b movzx    eax, word ptr [rbx + 0xc0]
000000014027c572 mov      word ptr [rdi + 0x40a], ax
000000014027c579 movzx    eax, word ptr [rbx + 0xc2]
000000014027c580 mov      word ptr [rdi + 0x40c], ax
000000014027c587 cmp      byte ptr [rbx + 0xe5], 2
000000014027c58e jne      0x14027c597
000000014027c590 mov      byte ptr [rdi + 0x339], 1
000000014027c597 mov      al, byte ptr [rbx + 0xf6]
000000014027c59d mov      byte ptr [rdi + 0x457], al
000000014027c5a3 mov      al, byte ptr [rbx + 0xd5]
000000014027c5a9 mov      byte ptr [rdi + 0x45a], al
000000014027c5af mov      al, byte ptr [rbx + 0xd6]
000000014027c5b5 mov      byte ptr [rdi + 0x45b], al
000000014027c5bb mov      al, byte ptr [rbx + 0xfd]
000000014027c5c1 mov      byte ptr [rdi + 0x3e0], al
000000014027c5c7 mov      al, byte ptr [rbx + 0x101]
000000014027c5cd mov      byte ptr [rdi + 0x41b], al
000000014027c5d3 mov      al, byte ptr [rbx + 0x102]
000000014027c5d9 mov      byte ptr [rdi + 0x41c], al
000000014027c5df cmp      byte ptr [rbx + 0x101], 0
000000014027c5e6 je       0x14027c5f8
000000014027c5e8 cmp      byte ptr [rbx + 0x102], 0
000000014027c5ef je       0x14027c5f8
000000014027c5f1 mov      byte ptr [rdi + 0x3e2], 1
000000014027c5f8 mov      al, byte ptr [rbx + 0xff]
000000014027c5fe mov      byte ptr [rdi + 0x3e3], al
000000014027c604 mov      al, byte ptr [rbx + 0x100]
000000014027c60a mov      byte ptr [rdi + 0x3e4], al
000000014027c610 mov      al, byte ptr [rdi + 0x3a4]
000000014027c616 mov      cl, al
000000014027c618 mov      byte ptr [rdi + 0x3f0], 1
000000014027c61f xor      cl, byte ptr [rbx + 0xea]
000000014027c625 and      cl, 1
000000014027c628 xor      cl, al
000000014027c62a mov      byte ptr [rdi + 0x3a4], cl
000000014027c630 mov      dl, byte ptr [rbx + 0xeb]
000000014027c636 add      dl, dl
000000014027c638 xor      dl, cl
000000014027c63a and      dl, 2
000000014027c63d xor      dl, cl
000000014027c63f mov      byte ptr [rdi + 0x3a4], dl
000000014027c645 mov      al, byte ptr [rbx + 0xec]
000000014027c64b shl      al, 2
000000014027c64e xor      al, dl
000000014027c650 and      al, 4
000000014027c652 xor      al, dl
000000014027c654 mov      byte ptr [rdi + 0x3a4], al
000000014027c65a mov      al, byte ptr [rbx + 0xfb]
000000014027c660 mov      byte ptr [rdi + 0x40f], al
000000014027c666 mov      al, byte ptr [rbx + 0xfa]
000000014027c66c mov      byte ptr [rdi + 0x456], al
000000014027c672 mov      al, byte ptr [rbx + 0xd4]
000000014027c678 mov      byte ptr [rdi + 0x450], al
000000014027c67e mov      byte ptr [rsi + 0xe1c8], al
000000014027c684 mov      eax, dword ptr [rsi + 0xe124]
000000014027c68a test     r8b, al
000000014027c68d je       0x14027c696
000000014027c68f mov      byte ptr [rdi + 0x342], 1
000000014027c696 test     dword ptr [rsi + 0xe124], 0x400
000000014027c6a0 je       0x14027c6a9
000000014027c6a2 or       byte ptr [rdi + 0x342], 2
000000014027c6a9 xor      eax, eax
000000014027c6ab mov      rbx, qword ptr [rsp + 0x40]
000000014027c6b0 mov      rsi, qword ptr [rsp + 0x48]
000000014027c6b5 add      rsp, 0x30
000000014027c6b9 pop      rdi
000000014027c6ba ret      