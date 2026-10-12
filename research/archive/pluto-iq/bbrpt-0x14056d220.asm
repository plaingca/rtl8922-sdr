000000014056d220 mov      qword ptr [rsp + 8], rbx
000000014056d225 push     rdi
000000014056d226 sub      rsp, 0x30
000000014056d22a mov      rdi, rcx
000000014056d22d cmp      edx, 0x18
000000014056d230 ja       0x14056d9e6
000000014056d236 je       0x14056d91b
000000014056d23c mov      eax, edx
000000014056d23e sub      eax, 0xc
000000014056d241 je       0x14056d7a3
000000014056d247 sub      eax, 1
000000014056d24a je       0x14056d6fa
000000014056d250 sub      eax, 1
000000014056d253 je       0x14056d651
000000014056d259 sub      eax, 6
000000014056d25c je       0x14056d5da
000000014056d262 sub      eax, 1
000000014056d265 je       0x14056d491
000000014056d26b sub      eax, 1
000000014056d26e je       0x14056d2f4
000000014056d274 cmp      eax, 1
000000014056d277 jne      0x14056da23
000000014056d27d mov      rax, qword ptr [rcx + 0x18]
000000014056d281 lea      r8, [rip + 0x1009f8]
000000014056d288 mov      rcx, qword ptr [rcx + 8]
000000014056d28c mov      ebx, 1
000000014056d291 mov      edx, ebx
000000014056d293 mov      rax, qword ptr [rax + 0x118]
000000014056d29a call     qword ptr [rip + 0x117058]
000000014056d2a0 mov      rax, qword ptr [rdi + 0x18]
000000014056d2a4 lea      r8, [rip + 0x100a05]
000000014056d2ab mov      rcx, qword ptr [rdi + 8]
000000014056d2af mov      edx, ebx
000000014056d2b1 mov      rax, qword ptr [rax + 0x118]
000000014056d2b8 call     qword ptr [rip + 0x11703a]
000000014056d2be lea      edx, [rbx + 0x31]
000000014056d2c1 mov      rcx, rdi
000000014056d2c4 call     0x14056e8c0
000000014056d2c9 mov      ebx, eax
000000014056d2cb test     eax, eax
000000014056d2cd jne      0x14056e28d
000000014056d2d3 lea      edx, [rax + 0x51]
000000014056d2d6 mov      rcx, rdi
000000014056d2d9 call     0x14056e8c0
000000014056d2de mov      ebx, eax
000000014056d2e0 test     eax, eax
000000014056d2e2 jne      0x14056e28d
000000014056d2e8 lea      r8, [rip + 0x1006b1]
000000014056d2ef jmp      0x14056e271
000000014056d2f4 mov      rax, qword ptr [rcx + 0x18]
000000014056d2f8 lea      r8, [rip + 0x100911]
000000014056d2ff mov      rcx, qword ptr [rcx + 8]
000000014056d303 mov      ebx, 1
000000014056d308 mov      edx, ebx
000000014056d30a mov      rax, qword ptr [rax + 0x118]
000000014056d311 call     qword ptr [rip + 0x116fe1]
000000014056d317 mov      rax, qword ptr [rdi + 0x18]
000000014056d31b lea      r8, [rip + 0x10091e]
000000014056d322 mov      rcx, qword ptr [rdi + 8]
000000014056d326 mov      edx, ebx
000000014056d328 mov      rax, qword ptr [rax + 0x118]
000000014056d32f call     qword ptr [rip + 0x116fc3]
000000014056d335 lea      edx, [rbx + 0x21]
000000014056d338 mov      rcx, rdi
000000014056d33b call     0x14056e8c0
000000014056d340 mov      ebx, eax
000000014056d342 test     eax, eax
000000014056d344 jne      0x14056e28d
000000014056d34a lea      edx, [rax + 0x23]
000000014056d34d mov      rcx, rdi
000000014056d350 call     0x14056e8c0
000000014056d355 mov      ebx, eax
000000014056d357 test     eax, eax
000000014056d359 jne      0x14056e28d
000000014056d35f lea      edx, [rax + 0x24]
000000014056d362 mov      rcx, rdi
000000014056d365 call     0x14056e8c0
000000014056d36a mov      ebx, eax
000000014056d36c test     eax, eax
000000014056d36e jne      0x14056e28d
000000014056d374 lea      edx, [rax + 0x25]
000000014056d377 mov      rcx, rdi
000000014056d37a call     0x14056e8c0
000000014056d37f mov      ebx, eax
000000014056d381 test     eax, eax
000000014056d383 jne      0x14056e28d
000000014056d389 lea      edx, [rax + 0x26]
000000014056d38c mov      rcx, rdi
000000014056d38f call     0x14056e8c0
000000014056d394 mov      ebx, eax
000000014056d396 test     eax, eax
000000014056d398 jne      0x14056e28d
000000014056d39e lea      edx, [rax + 0x27]
000000014056d3a1 mov      rcx, rdi
000000014056d3a4 call     0x14056e8c0
000000014056d3a9 mov      ebx, eax
000000014056d3ab test     eax, eax
000000014056d3ad jne      0x14056e28d
000000014056d3b3 lea      edx, [rax + 0x28]
000000014056d3b6 mov      rcx, rdi
000000014056d3b9 call     0x14056e8c0
000000014056d3be mov      ebx, eax
000000014056d3c0 test     eax, eax
000000014056d3c2 jne      0x14056e28d
000000014056d3c8 lea      edx, [rax + 0x29]
000000014056d3cb mov      rcx, rdi
000000014056d3ce call     0x14056e8c0
000000014056d3d3 mov      ebx, eax
000000014056d3d5 test     eax, eax
000000014056d3d7 jne      0x14056e28d
000000014056d3dd lea      edx, [rax + 0x2a]
000000014056d3e0 mov      rcx, rdi
000000014056d3e3 call     0x14056e8c0
000000014056d3e8 mov      ebx, eax
000000014056d3ea test     eax, eax
000000014056d3ec jne      0x14056e28d
000000014056d3f2 lea      edx, [rax + 0x2b]
000000014056d3f5 mov      rcx, rdi
000000014056d3f8 call     0x14056e8c0
000000014056d3fd mov      ebx, eax
000000014056d3ff test     eax, eax
000000014056d401 jne      0x14056e28d
000000014056d407 lea      edx, [rax + 0x2c]
000000014056d40a mov      rcx, rdi
000000014056d40d call     0x14056e8c0
000000014056d412 mov      ebx, eax
000000014056d414 test     eax, eax
000000014056d416 jne      0x14056e28d
000000014056d41c lea      edx, [rax + 0x2d]
000000014056d41f mov      rcx, rdi
000000014056d422 call     0x14056e8c0
000000014056d427 mov      ebx, eax
000000014056d429 test     eax, eax
000000014056d42b jne      0x14056e28d
000000014056d431 lea      edx, [rax + 0x2e]
000000014056d434 mov      rcx, rdi
000000014056d437 call     0x14056e8c0
000000014056d43c mov      ebx, eax
000000014056d43e test     eax, eax
000000014056d440 jne      0x14056e28d
000000014056d446 lea      edx, [rax + 0x2f]
000000014056d449 mov      rcx, rdi
000000014056d44c call     0x14056e8c0
000000014056d451 mov      ebx, eax
000000014056d453 test     eax, eax
000000014056d455 jne      0x14056e28d
000000014056d45b lea      edx, [rax + 0x30]
000000014056d45e mov      rcx, rdi
000000014056d461 call     0x14056e8c0
000000014056d466 mov      ebx, eax
000000014056d468 test     eax, eax
000000014056d46a jne      0x14056e28d
000000014056d470 lea      edx, [rax + 0x31]
000000014056d473 mov      rcx, rdi
000000014056d476 call     0x14056e8c0
000000014056d47b mov      ebx, eax
000000014056d47d test     eax, eax
000000014056d47f jne      0x14056e28d
000000014056d485 lea      r8, [rip + 0x1007d4]
000000014056d48c jmp      0x14056e271
000000014056d491 mov      rax, qword ptr [rcx + 0x18]
000000014056d495 lea      r8, [rip + 0x100704]
000000014056d49c mov      rcx, qword ptr [rcx + 8]
000000014056d4a0 mov      ebx, 1
000000014056d4a5 mov      edx, ebx
000000014056d4a7 mov      rax, qword ptr [rax + 0x118]
000000014056d4ae call     qword ptr [rip + 0x116e44]
000000014056d4b4 mov      rax, qword ptr [rdi + 0x18]
000000014056d4b8 lea      r8, [rip + 0x100711]
000000014056d4bf mov      rcx, qword ptr [rdi + 8]
000000014056d4c3 mov      edx, ebx
000000014056d4c5 mov      rax, qword ptr [rax + 0x118]
000000014056d4cc call     qword ptr [rip + 0x116e26]
000000014056d4d2 lea      edx, [rbx + 0x15]
000000014056d4d5 mov      rcx, rdi
000000014056d4d8 call     0x14056e8c0
000000014056d4dd mov      ebx, eax
000000014056d4df test     eax, eax
000000014056d4e1 jne      0x14056e28d
000000014056d4e7 lea      edx, [rax + 0x17]
000000014056d4ea mov      rcx, rdi
000000014056d4ed call     0x14056e8c0
000000014056d4f2 mov      ebx, eax
000000014056d4f4 test     eax, eax
000000014056d4f6 jne      0x14056e28d
000000014056d4fc lea      edx, [rax + 0x18]
000000014056d4ff mov      rcx, rdi
000000014056d502 call     0x14056e8c0
000000014056d507 mov      ebx, eax
000000014056d509 test     eax, eax
000000014056d50b jne      0x14056e28d
000000014056d511 lea      edx, [rax + 0x19]
000000014056d514 mov      rcx, rdi
000000014056d517 call     0x14056e8c0
000000014056d51c mov      ebx, eax
000000014056d51e test     eax, eax
000000014056d520 jne      0x14056e28d
000000014056d526 lea      edx, [rax + 0x1a]
000000014056d529 mov      rcx, rdi
000000014056d52c call     0x14056e8c0
000000014056d531 mov      ebx, eax
000000014056d533 test     eax, eax
000000014056d535 jne      0x14056e28d
000000014056d53b lea      edx, [rax + 0x1b]
000000014056d53e mov      rcx, rdi
000000014056d541 call     0x14056e8c0
000000014056d546 mov      ebx, eax
000000014056d548 test     eax, eax
000000014056d54a jne      0x14056e28d
000000014056d550 lea      edx, [rax + 0x1c]
000000014056d553 mov      rcx, rdi
000000014056d556 call     0x14056e8c0
000000014056d55b mov      ebx, eax
000000014056d55d test     eax, eax
000000014056d55f jne      0x14056e28d
000000014056d565 lea      edx, [rax + 0x1d]
000000014056d568 mov      rcx, rdi
000000014056d56b call     0x14056e8c0
000000014056d570 mov      ebx, eax
000000014056d572 test     eax, eax
000000014056d574 jne      0x14056e28d
000000014056d57a lea      edx, [rax + 0x1e]
000000014056d57d mov      rcx, rdi
000000014056d580 call     0x14056e8c0
000000014056d585 mov      ebx, eax
000000014056d587 test     eax, eax
000000014056d589 jne      0x14056e28d
000000014056d58f lea      edx, [rax + 0x1f]
000000014056d592 mov      rcx, rdi
000000014056d595 call     0x14056e8c0
000000014056d59a mov      ebx, eax
000000014056d59c test     eax, eax
000000014056d59e jne      0x14056e28d
000000014056d5a4 lea      edx, [rax + 0x20]
000000014056d5a7 mov      rcx, rdi
000000014056d5aa call     0x14056e8c0
000000014056d5af mov      ebx, eax
000000014056d5b1 test     eax, eax
000000014056d5b3 jne      0x14056e28d
000000014056d5b9 lea      edx, [rax + 0x21]
000000014056d5bc mov      rcx, rdi
000000014056d5bf call     0x14056e8c0
000000014056d5c4 mov      ebx, eax
000000014056d5c6 test     eax, eax
000000014056d5c8 jne      0x14056e28d
000000014056d5ce lea      r8, [rip + 0x10061b]
000000014056d5d5 jmp      0x14056e271
000000014056d5da mov      rax, qword ptr [rcx + 0x18]
000000014056d5de lea      r8, [rip + 0x10054b]
000000014056d5e5 mov      rcx, qword ptr [rcx + 8]
000000014056d5e9 mov      ebx, 1
000000014056d5ee mov      edx, ebx
000000014056d5f0 mov      rax, qword ptr [rax + 0x118]
000000014056d5f7 call     qword ptr [rip + 0x116cfb]
000000014056d5fd mov      rax, qword ptr [rdi + 0x18]
000000014056d601 lea      r8, [rip + 0x100558]
000000014056d608 mov      rcx, qword ptr [rdi + 8]
000000014056d60c mov      edx, ebx
000000014056d60e mov      rax, qword ptr [rax + 0x118]
000000014056d615 call     qword ptr [rip + 0x116cdd]
000000014056d61b lea      edx, [rbx + 0xd]
000000014056d61e mov      rcx, rdi
000000014056d621 call     0x14056e8c0
000000014056d626 mov      ebx, eax
000000014056d628 test     eax, eax
000000014056d62a jne      0x14056e28d
000000014056d630 lea      edx, [rax + 0xf]
000000014056d633 mov      rcx, rdi
000000014056d636 call     0x14056e8c0
000000014056d63b mov      ebx, eax
000000014056d63d test     eax, eax
000000014056d63f jne      0x14056e28d
000000014056d645 lea      r8, [rip + 0x100534]
000000014056d64c jmp      0x14056e271
000000014056d651 mov      rax, qword ptr [rcx + 0x18]
000000014056d655 lea      r8, [rip + 0x100934]
000000014056d65c mov      rcx, qword ptr [rcx + 8]
000000014056d660 mov      ebx, 1
000000014056d665 mov      edx, ebx
000000014056d667 mov      rax, qword ptr [rax + 0x118]
000000014056d66e call     qword ptr [rip + 0x116c84]
000000014056d674 mov      rax, qword ptr [rdi + 0x18]
000000014056d678 lea      r8, [rip + 0x100941]
000000014056d67f mov      rcx, qword ptr [rdi + 8]
000000014056d683 mov      edx, ebx
000000014056d685 mov      rax, qword ptr [rax + 0x118]
000000014056d68c call     qword ptr [rip + 0x116c66]
000000014056d692 mov      edx, 0x9f
000000014056d697 mov      rcx, rdi
000000014056d69a call     0x14056e8c0
000000014056d69f mov      ebx, eax
000000014056d6a1 test     eax, eax
000000014056d6a3 jne      0x14056e28d
000000014056d6a9 mov      edx, 0xa0
000000014056d6ae mov      rcx, rdi
000000014056d6b1 call     0x14056e8c0
000000014056d6b6 mov      ebx, eax
000000014056d6b8 test     eax, eax
000000014056d6ba jne      0x14056e28d
000000014056d6c0 mov      edx, 0xa1
000000014056d6c5 mov      rcx, rdi
000000014056d6c8 call     0x14056e8c0
000000014056d6cd mov      ebx, eax
000000014056d6cf test     eax, eax
000000014056d6d1 jne      0x14056e28d
000000014056d6d7 mov      edx, 0xa2
000000014056d6dc mov      rcx, rdi
000000014056d6df call     0x14056e8c0
000000014056d6e4 mov      ebx, eax
000000014056d6e6 test     eax, eax
000000014056d6e8 jne      0x14056e28d
000000014056d6ee lea      r8, [rip + 0x1008eb]
000000014056d6f5 jmp      0x14056e271
000000014056d6fa mov      rax, qword ptr [rcx + 0x18]
000000014056d6fe lea      r8, [rip + 0x10090b]
000000014056d705 mov      rcx, qword ptr [rcx + 8]
000000014056d709 mov      ebx, 1
000000014056d70e mov      edx, ebx
000000014056d710 mov      rax, qword ptr [rax + 0x118]
000000014056d717 call     qword ptr [rip + 0x116bdb]
000000014056d71d mov      rax, qword ptr [rdi + 0x18]
000000014056d721 lea      r8, [rip + 0x100918]
000000014056d728 mov      rcx, qword ptr [rdi + 8]
000000014056d72c mov      edx, ebx
000000014056d72e mov      rax, qword ptr [rax + 0x118]
000000014056d735 call     qword ptr [rip + 0x116bbd]
000000014056d73b mov      edx, 0xa3
000000014056d740 mov      rcx, rdi
000000014056d743 call     0x14056e8c0
000000014056d748 mov      ebx, eax
000000014056d74a test     eax, eax
000000014056d74c jne      0x14056e28d
000000014056d752 mov      edx, 0xa4
000000014056d757 mov      rcx, rdi
000000014056d75a call     0x14056e8c0
000000014056d75f mov      ebx, eax
000000014056d761 test     eax, eax
000000014056d763 jne      0x14056e28d
000000014056d769 mov      edx, 0xa5
000000014056d76e mov      rcx, rdi
000000014056d771 call     0x14056e8c0
000000014056d776 mov      ebx, eax
000000014056d778 test     eax, eax
000000014056d77a jne      0x14056e28d
000000014056d780 mov      edx, 0xa6
000000014056d785 mov      rcx, rdi
000000014056d788 call     0x14056e8c0
000000014056d78d mov      ebx, eax
000000014056d78f test     eax, eax
000000014056d791 jne      0x14056e28d
000000014056d797 lea      r8, [rip + 0x1008c2]
000000014056d79e jmp      0x14056e271
000000014056d7a3 mov      rax, qword ptr [rcx + 0x18]
000000014056d7a7 lea      r8, [rip + 0x1008e2]
000000014056d7ae mov      rcx, qword ptr [rcx + 8]
000000014056d7b2 mov      ebx, 1
000000014056d7b7 mov      edx, ebx
000000014056d7b9 mov      rax, qword ptr [rax + 0x118]
000000014056d7c0 call     qword ptr [rip + 0x116b32]
000000014056d7c6 mov      rax, qword ptr [rdi + 0x18]
000000014056d7ca lea      r8, [rip + 0x1008ef]
000000014056d7d1 mov      rcx, qword ptr [rdi + 8]
000000014056d7d5 mov      edx, ebx
000000014056d7d7 mov      rax, qword ptr [rax + 0x118]
000000014056d7de call     qword ptr [rip + 0x116b14]
000000014056d7e4 mov      edx, 0xa7
000000014056d7e9 mov      rcx, rdi
000000014056d7ec call     0x14056e8c0
000000014056d7f1 mov      ebx, eax
000000014056d7f3 test     eax, eax
000000014056d7f5 jne      0x14056e28d
000000014056d7fb mov      edx, 0xa8
000000014056d800 mov      rcx, rdi
000000014056d803 call     0x14056e8c0
000000014056d808 mov      ebx, eax
000000014056d80a test     eax, eax
000000014056d80c jne      0x14056e28d
000000014056d812 mov      edx, 0xa9
000000014056d817 mov      rcx, rdi
000000014056d81a call     0x14056e8c0
000000014056d81f mov      ebx, eax
000000014056d821 test     eax, eax
000000014056d823 jne      0x14056e28d
000000014056d829 mov      edx, 0xaa
000000014056d82e mov      rcx, rdi
000000014056d831 call     0x14056e8c0
000000014056d836 mov      ebx, eax
000000014056d838 test     eax, eax
000000014056d83a jne      0x14056e28d
000000014056d840 mov      edx, 0xab
000000014056d845 mov      rcx, rdi
000000014056d848 call     0x14056e8c0
000000014056d84d mov      ebx, eax
000000014056d84f test     eax, eax
000000014056d851 jne      0x14056e28d
000000014056d857 mov      edx, 0xac
000000014056d85c mov      rcx, rdi
000000014056d85f call     0x14056e8c0
000000014056d864 mov      ebx, eax
000000014056d866 test     eax, eax
000000014056d868 jne      0x14056e28d
000000014056d86e mov      edx, 0xad
000000014056d873 mov      rcx, rdi
000000014056d876 call     0x14056e8c0
000000014056d87b mov      ebx, eax
000000014056d87d test     eax, eax
000000014056d87f jne      0x14056e28d
000000014056d885 mov      edx, 0xae
000000014056d88a mov      rcx, rdi
000000014056d88d call     0x14056e8c0
000000014056d892 mov      ebx, eax
000000014056d894 test     eax, eax
000000014056d896 jne      0x14056e28d
000000014056d89c mov      edx, 0xaf
000000014056d8a1 mov      rcx, rdi
000000014056d8a4 call     0x14056e8c0
000000014056d8a9 mov      ebx, eax
000000014056d8ab test     eax, eax
000000014056d8ad jne      0x14056e28d
000000014056d8b3 mov      edx, 0xb0
000000014056d8b8 mov      rcx, rdi
000000014056d8bb call     0x14056e8c0
000000014056d8c0 mov      ebx, eax
000000014056d8c2 test     eax, eax
000000014056d8c4 jne      0x14056e28d
000000014056d8ca mov      edx, 0xb1
000000014056d8cf mov      rcx, rdi
000000014056d8d2 call     0x14056e8c0
000000014056d8d7 mov      ebx, eax
000000014056d8d9 test     eax, eax
000000014056d8db jne      0x14056e28d
000000014056d8e1 mov      edx, 0xb2
000000014056d8e6 mov      rcx, rdi
000000014056d8e9 call     0x14056e8c0
000000014056d8ee mov      ebx, eax
000000014056d8f0 test     eax, eax
000000014056d8f2 jne      0x14056e28d
000000014056d8f8 mov      edx, 0xb3
000000014056d8fd mov      rcx, rdi
000000014056d900 call     0x14056e8c0
000000014056d905 mov      ebx, eax
000000014056d907 test     eax, eax
000000014056d909 jne      0x14056e28d
000000014056d90f lea      r8, [rip + 0x1007ca]
000000014056d916 jmp      0x14056e271
000000014056d91b mov      rax, qword ptr [rcx + 0x18]
000000014056d91f lea      r8, [rip + 0x10041a]
000000014056d926 mov      rcx, qword ptr [rcx + 8]
000000014056d92a mov      ebx, 1
000000014056d92f mov      edx, ebx
000000014056d931 mov      rax, qword ptr [rax + 0x118]
000000014056d938 call     qword ptr [rip + 0x1169ba]
000000014056d93e mov      rax, qword ptr [rdi + 0x18]
000000014056d942 lea      r8, [rip + 0x100427]
000000014056d949 mov      rcx, qword ptr [rdi + 8]
000000014056d94d mov      edx, ebx
000000014056d94f mov      rax, qword ptr [rax + 0x118]
000000014056d956 call     qword ptr [rip + 0x11699c]
000000014056d95c lea      edx, [rbx + 0x5c]
000000014056d95f mov      rcx, rdi
000000014056d962 call     0x14056e8c0
000000014056d967 mov      ebx, eax
000000014056d969 test     eax, eax
000000014056d96b jne      0x14056e28d
000000014056d971 lea      edx, [rax + 0x5e]
000000014056d974 mov      rcx, rdi
000000014056d977 call     0x14056e8c0
000000014056d97c mov      ebx, eax
000000014056d97e test     eax, eax
000000014056d980 jne      0x14056e28d
000000014056d986 lea      edx, [rax + 0x5f]
000000014056d989 mov      rcx, rdi
000000014056d98c call     0x14056e8c0
000000014056d991 mov      ebx, eax
000000014056d993 test     eax, eax
000000014056d995 jne      0x14056e28d
000000014056d99b lea      edx, [rax + 0x60]
000000014056d99e mov      rcx, rdi
000000014056d9a1 call     0x14056e8c0
000000014056d9a6 mov      ebx, eax
000000014056d9a8 test     eax, eax
000000014056d9aa jne      0x14056e28d
000000014056d9b0 lea      edx, [rax + 0x61]
000000014056d9b3 mov      rcx, rdi
000000014056d9b6 call     0x14056e8c0
000000014056d9bb mov      ebx, eax
000000014056d9bd test     eax, eax
000000014056d9bf jne      0x14056e28d
000000014056d9c5 lea      edx, [rax + 0x62]
000000014056d9c8 mov      rcx, rdi
000000014056d9cb call     0x14056e8c0
000000014056d9d0 mov      ebx, eax
000000014056d9d2 test     eax, eax
000000014056d9d4 jne      0x14056e28d
000000014056d9da lea      r8, [rip + 0x1003af]
000000014056d9e1 jmp      0x14056e271
000000014056d9e6 mov      eax, edx
000000014056d9e8 sub      eax, 0x1a
000000014056d9eb je       0x14056e203
000000014056d9f1 sub      eax, 1
000000014056d9f4 je       0x14056e0fc
000000014056d9fa sub      eax, 1
000000014056d9fd je       0x14056def6
000000014056da03 sub      eax, 1
000000014056da06 je       0x14056ddbc
000000014056da0c sub      eax, 1
000000014056da0f je       0x14056dba3
000000014056da15 sub      eax, 1
000000014056da18 je       0x14056dafa
000000014056da1e cmp      eax, 1
000000014056da21 je       0x14056da51
000000014056da23 mov      rax, qword ptr [rcx + 0x18]
000000014056da27 lea      r8, [rip + 0x1000b2]
000000014056da2e mov      rcx, qword ptr [rcx + 8]
000000014056da32 mov      r9d, edx
000000014056da35 mov      edx, 2
000000014056da3a mov      rax, qword ptr [rax + 0x118]
000000014056da41 call     qword ptr [rip + 0x1168b1]
000000014056da47 mov      ebx, 0x41
000000014056da4c jmp      0x14056e2b1
000000014056da51 mov      rax, qword ptr [rcx + 0x18]
000000014056da55 lea      r8, [rip + 0x100724]
000000014056da5c mov      rcx, qword ptr [rcx + 8]
000000014056da60 mov      ebx, 1
000000014056da65 mov      edx, ebx
000000014056da67 mov      rax, qword ptr [rax + 0x118]
000000014056da6e call     qword ptr [rip + 0x116884]
000000014056da74 mov      rax, qword ptr [rdi + 0x18]
000000014056da78 lea      r8, [rip + 0x100731]
000000014056da7f mov      rcx, qword ptr [rdi + 8]
000000014056da83 mov      edx, ebx
000000014056da85 mov      rax, qword ptr [rax + 0x118]
000000014056da8c call     qword ptr [rip + 0x116866]
000000014056da92 mov      edx, 0xb8
000000014056da97 mov      rcx, rdi
000000014056da9a call     0x14056e8c0
000000014056da9f mov      ebx, eax
000000014056daa1 test     eax, eax
000000014056daa3 jne      0x14056e28d
000000014056daa9 mov      edx, 0xb9
000000014056daae mov      rcx, rdi
000000014056dab1 call     0x14056e8c0
000000014056dab6 mov      ebx, eax
000000014056dab8 test     eax, eax
000000014056daba jne      0x14056e28d
000000014056dac0 mov      edx, 0xba
000000014056dac5 mov      rcx, rdi
000000014056dac8 call     0x14056e8c0
000000014056dacd mov      ebx, eax
000000014056dacf test     eax, eax
000000014056dad1 jne      0x14056e28d
000000014056dad7 mov      edx, 0xbb
000000014056dadc mov      rcx, rdi
000000014056dadf call     0x14056e8c0
000000014056dae4 mov      ebx, eax
000000014056dae6 test     eax, eax
000000014056dae8 jne      0x14056e28d
000000014056daee lea      r8, [rip + 0x1006db]
000000014056daf5 jmp      0x14056e271
000000014056dafa mov      rax, qword ptr [rcx + 0x18]
000000014056dafe lea      r8, [rip + 0x10041b]
000000014056db05 mov      rcx, qword ptr [rcx + 8]
000000014056db09 mov      ebx, 1
000000014056db0e mov      edx, ebx
000000014056db10 mov      rax, qword ptr [rax + 0x118]
000000014056db17 call     qword ptr [rip + 0x1167db]
000000014056db1d mov      rax, qword ptr [rdi + 0x18]
000000014056db21 lea      r8, [rip + 0x100428]
000000014056db28 mov      rcx, qword ptr [rdi + 8]
000000014056db2c mov      edx, ebx
000000014056db2e mov      rax, qword ptr [rax + 0x118]
000000014056db35 call     qword ptr [rip + 0x1167bd]
000000014056db3b mov      edx, 0x97
000000014056db40 mov      rcx, rdi
000000014056db43 call     0x14056e8c0
000000014056db48 mov      ebx, eax
000000014056db4a test     eax, eax
000000014056db4c jne      0x14056e28d
000000014056db52 mov      edx, 0x98
000000014056db57 mov      rcx, rdi
000000014056db5a call     0x14056e8c0
000000014056db5f mov      ebx, eax
000000014056db61 test     eax, eax
000000014056db63 jne      0x14056e28d
000000014056db69 mov      edx, 0x99
000000014056db6e mov      rcx, rdi
000000014056db71 call     0x14056e8c0
000000014056db76 mov      ebx, eax
000000014056db78 test     eax, eax
000000014056db7a jne      0x14056e28d
000000014056db80 mov      edx, 0x9a
000000014056db85 mov      rcx, rdi
000000014056db88 call     0x14056e8c0
000000014056db8d mov      ebx, eax
000000014056db8f test     eax, eax
000000014056db91 jne      0x14056e28d
000000014056db97 lea      r8, [rip + 0x1003d2]
000000014056db9e jmp      0x14056e271
000000014056dba3 mov      rax, qword ptr [rcx + 0x18]
000000014056dba7 lea      r8, [rip + 0x1002f2]
000000014056dbae mov      rcx, qword ptr [rcx + 8]
000000014056dbb2 mov      ebx, 1
000000014056dbb7 mov      edx, ebx
000000014056dbb9 mov      rax, qword ptr [rax + 0x118]
000000014056dbc0 call     qword ptr [rip + 0x116732]
000000014056dbc6 mov      rax, qword ptr [rdi + 0x18]
000000014056dbca lea      r8, [rip + 0x1002ff]
000000014056dbd1 mov      rcx, qword ptr [rdi + 8]
000000014056dbd5 mov      edx, ebx
000000014056dbd7 mov      rax, qword ptr [rax + 0x118]
000000014056dbde call     qword ptr [rip + 0x116714]
000000014056dbe4 mov      edx, 0x83
000000014056dbe9 mov      rcx, rdi
000000014056dbec call     0x14056e8c0
000000014056dbf1 mov      ebx, eax
000000014056dbf3 test     eax, eax
000000014056dbf5 jne      0x14056e28d
000000014056dbfb mov      edx, 0x84
000000014056dc00 mov      rcx, rdi
000000014056dc03 call     0x14056e8c0
000000014056dc08 mov      ebx, eax
000000014056dc0a test     eax, eax
000000014056dc0c jne      0x14056e28d
000000014056dc12 mov      edx, 0x85
000000014056dc17 mov      rcx, rdi
000000014056dc1a call     0x14056e8c0
000000014056dc1f mov      ebx, eax
000000014056dc21 test     eax, eax
000000014056dc23 jne      0x14056e28d
000000014056dc29 mov      edx, 0x86
000000014056dc2e mov      rcx, rdi
000000014056dc31 call     0x14056e8c0
000000014056dc36 mov      ebx, eax
000000014056dc38 test     eax, eax
000000014056dc3a jne      0x14056e28d
000000014056dc40 mov      edx, 0x87
000000014056dc45 mov      rcx, rdi
000000014056dc48 call     0x14056e8c0
000000014056dc4d mov      ebx, eax
000000014056dc4f test     eax, eax
000000014056dc51 jne      0x14056e28d
000000014056dc57 mov      edx, 0x88
000000014056dc5c mov      rcx, rdi
000000014056dc5f call     0x14056e8c0
000000014056dc64 mov      ebx, eax
000000014056dc66 test     eax, eax
000000014056dc68 jne      0x14056e28d
000000014056dc6e mov      edx, 0x89
000000014056dc73 mov      rcx, rdi
000000014056dc76 call     0x14056e8c0
000000014056dc7b mov      ebx, eax
000000014056dc7d test     eax, eax
000000014056dc7f jne      0x14056e28d
000000014056dc85 mov      edx, 0x8a
000000014056dc8a mov      rcx, rdi
000000014056dc8d call     0x14056e8c0
000000014056dc92 mov      ebx, eax
000000014056dc94 test     eax, eax
000000014056dc96 jne      0x14056e28d
000000014056dc9c mov      edx, 0x8b
000000014056dca1 mov      rcx, rdi
000000014056dca4 call     0x14056e8c0
000000014056dca9 mov      ebx, eax
000000014056dcab test     eax, eax
000000014056dcad jne      0x14056e28d
000000014056dcb3 mov      edx, 0x8c
000000014056dcb8 mov      rcx, rdi
000000014056dcbb call     0x14056e8c0
000000014056dcc0 mov      ebx, eax
000000014056dcc2 test     eax, eax
000000014056dcc4 jne      0x14056e28d
000000014056dcca mov      edx, 0x8d
000000014056dccf mov      rcx, rdi
000000014056dcd2 call     0x14056e8c0
000000014056dcd7 mov      ebx, eax
000000014056dcd9 test     eax, eax
000000014056dcdb jne      0x14056e28d
000000014056dce1 mov      edx, 0x8e
000000014056dce6 mov      rcx, rdi
000000014056dce9 call     0x14056e8c0
000000014056dcee mov      ebx, eax
000000014056dcf0 test     eax, eax
000000014056dcf2 jne      0x14056e28d
000000014056dcf8 mov      edx, 0x8f
000000014056dcfd mov      rcx, rdi
000000014056dd00 call     0x14056e8c0
000000014056dd05 mov      ebx, eax
000000014056dd07 test     eax, eax
000000014056dd09 jne      0x14056e28d
000000014056dd0f mov      edx, 0x90
000000014056dd14 mov      rcx, rdi
000000014056dd17 call     0x14056e8c0
000000014056dd1c mov      ebx, eax
000000014056dd1e test     eax, eax
000000014056dd20 jne      0x14056e28d
000000014056dd26 mov      edx, 0x91
000000014056dd2b mov      rcx, rdi
000000014056dd2e call     0x14056e8c0
000000014056dd33 mov      ebx, eax
000000014056dd35 test     eax, eax
000000014056dd37 jne      0x14056e28d
000000014056dd3d mov      edx, 0x92
000000014056dd42 mov      rcx, rdi
000000014056dd45 call     0x14056e8c0
000000014056dd4a mov      ebx, eax
000000014056dd4c test     eax, eax
000000014056dd4e jne      0x14056e28d
000000014056dd54 mov      edx, 0x93
000000014056dd59 mov      rcx, rdi
000000014056dd5c call     0x14056e8c0
000000014056dd61 mov      ebx, eax
000000014056dd63 test     eax, eax
000000014056dd65 jne      0x14056e28d
000000014056dd6b mov      edx, 0x94
000000014056dd70 mov      rcx, rdi
000000014056dd73 call     0x14056e8c0
000000014056dd78 mov      ebx, eax
000000014056dd7a test     eax, eax
000000014056dd7c jne      0x14056e28d
000000014056dd82 mov      edx, 0x95
000000014056dd87 mov      rcx, rdi
000000014056dd8a call     0x14056e8c0
000000014056dd8f mov      ebx, eax
000000014056dd91 test     eax, eax
000000014056dd93 jne      0x14056e28d
000000014056dd99 mov      edx, 0x96
000000014056dd9e mov      rcx, rdi
000000014056dda1 call     0x14056e8c0
000000014056dda6 mov      ebx, eax
000000014056dda8 test     eax, eax
000000014056ddaa jne      0x14056e28d
000000014056ddb0 lea      r8, [rip + 0x100139]
000000014056ddb7 jmp      0x14056e271
000000014056ddbc mov      rax, qword ptr [rcx + 0x18]
000000014056ddc0 lea      r8, [rip + 0x100059]
000000014056ddc7 mov      rcx, qword ptr [rcx + 8]
000000014056ddcb mov      ebx, 1
000000014056ddd0 mov      edx, ebx
000000014056ddd2 mov      rax, qword ptr [rax + 0x118]
000000014056ddd9 call     qword ptr [rip + 0x116519]
000000014056dddf mov      rax, qword ptr [rdi + 0x18]
000000014056dde3 lea      r8, [rip + 0x100066]
000000014056ddea mov      rcx, qword ptr [rdi + 8]
000000014056ddee mov      edx, ebx
000000014056ddf0 mov      rax, qword ptr [rax + 0x118]
000000014056ddf7 call     qword ptr [rip + 0x1164fb]
000000014056ddfd lea      edx, [rbx + 0x77]
000000014056de00 mov      rcx, rdi
000000014056de03 call     0x14056e8c0
000000014056de08 mov      ebx, eax
000000014056de0a test     eax, eax
000000014056de0c jne      0x14056e28d
000000014056de12 lea      edx, [rax + 0x79]
000000014056de15 mov      rcx, rdi
000000014056de18 call     0x14056e8c0
000000014056de1d mov      ebx, eax
000000014056de1f test     eax, eax
000000014056de21 jne      0x14056e28d
000000014056de27 lea      edx, [rax + 0x7a]
000000014056de2a mov      rcx, rdi
000000014056de2d call     0x14056e8c0
000000014056de32 mov      ebx, eax
000000014056de34 test     eax, eax
000000014056de36 jne      0x14056e28d
000000014056de3c lea      edx, [rax + 0x7b]
000000014056de3f mov      rcx, rdi
000000014056de42 call     0x14056e8c0
000000014056de47 mov      ebx, eax
000000014056de49 test     eax, eax
000000014056de4b jne      0x14056e28d
000000014056de51 lea      edx, [rax + 0x7c]
000000014056de54 mov      rcx, rdi
000000014056de57 call     0x14056e8c0
000000014056de5c mov      ebx, eax
000000014056de5e test     eax, eax
000000014056de60 jne      0x14056e28d
000000014056de66 lea      edx, [rax + 0x7d]
000000014056de69 mov      rcx, rdi
000000014056de6c call     0x14056e8c0
000000014056de71 mov      ebx, eax
000000014056de73 test     eax, eax
000000014056de75 jne      0x14056e28d
000000014056de7b lea      edx, [rax + 0x7e]
000000014056de7e mov      rcx, rdi
000000014056de81 call     0x14056e8c0
000000014056de86 mov      ebx, eax
000000014056de88 test     eax, eax
000000014056de8a jne      0x14056e28d
000000014056de90 lea      edx, [rax + 0x7f]
000000014056de93 mov      rcx, rdi
000000014056de96 call     0x14056e8c0
000000014056de9b mov      ebx, eax
000000014056de9d test     eax, eax
000000014056de9f jne      0x14056e28d
000000014056dea5 mov      edx, 0x80
000000014056deaa mov      rcx, rdi
000000014056dead call     0x14056e8c0
000000014056deb2 mov      ebx, eax
000000014056deb4 test     eax, eax
000000014056deb6 jne      0x14056e28d
000000014056debc mov      edx, 0x81
000000014056dec1 mov      rcx, rdi
000000014056dec4 call     0x14056e8c0
000000014056dec9 mov      ebx, eax
000000014056decb test     eax, eax
000000014056decd jne      0x14056e28d
000000014056ded3 mov      edx, 0x82
000000014056ded8 mov      rcx, rdi
000000014056dedb call     0x14056e8c0
000000014056dee0 mov      ebx, eax
000000014056dee2 test     eax, eax
000000014056dee4 jne      0x14056e28d
000000014056deea lea      r8, [rip + 0xfff7f]
000000014056def1 jmp      0x14056e271
000000014056def6 mov      rax, qword ptr [rcx + 0x18]
000000014056defa lea      r8, [rip + 0xffeaf]
000000014056df01 mov      rcx, qword ptr [rcx + 8]
000000014056df05 mov      ebx, 1
000000014056df0a mov      edx, ebx
000000014056df0c mov      rax, qword ptr [rax + 0x118]
000000014056df13 call     qword ptr [rip + 0x1163df]
000000014056df19 mov      rax, qword ptr [rdi + 0x18]
000000014056df1d lea      r8, [rip + 0xffebc]
000000014056df24 mov      rcx, qword ptr [rdi + 8]
000000014056df28 mov      edx, ebx
000000014056df2a mov      rax, qword ptr [rax + 0x118]
000000014056df31 call     qword ptr [rip + 0x1163c1]
000000014056df37 lea      edx, [rbx + 0x62]
000000014056df3a mov      rcx, rdi
000000014056df3d call     0x14056e8c0
000000014056df42 mov      ebx, eax
000000014056df44 test     eax, eax
000000014056df46 jne      0x14056e28d
000000014056df4c lea      edx, [rax + 0x64]
000000014056df4f mov      rcx, rdi
000000014056df52 call     0x14056e8c0
000000014056df57 mov      ebx, eax
000000014056df59 test     eax, eax
000000014056df5b jne      0x14056e28d
000000014056df61 lea      edx, [rax + 0x65]
000000014056df64 mov      rcx, rdi
000000014056df67 call     0x14056e8c0
000000014056df6c mov      ebx, eax
000000014056df6e test     eax, eax
000000014056df70 jne      0x14056e28d
000000014056df76 lea      edx, [rax + 0x66]
000000014056df79 mov      rcx, rdi
000000014056df7c call     0x14056e8c0
000000014056df81 mov      ebx, eax
000000014056df83 test     eax, eax
000000014056df85 jne      0x14056e28d
000000014056df8b lea      edx, [rax + 0x67]
000000014056df8e mov      rcx, rdi
000000014056df91 call     0x14056e8c0
000000014056df96 mov      ebx, eax
000000014056df98 test     eax, eax
000000014056df9a jne      0x14056e28d
000000014056dfa0 lea      edx, [rax + 0x68]
000000014056dfa3 mov      rcx, rdi
000000014056dfa6 call     0x14056e8c0
000000014056dfab mov      ebx, eax
000000014056dfad test     eax, eax
000000014056dfaf jne      0x14056e28d
000000014056dfb5 lea      edx, [rax + 0x69]
000000014056dfb8 mov      rcx, rdi
000000014056dfbb call     0x14056e8c0
000000014056dfc0 mov      ebx, eax
000000014056dfc2 test     eax, eax
000000014056dfc4 jne      0x14056e28d
000000014056dfca lea      edx, [rax + 0x6a]
000000014056dfcd mov      rcx, rdi
000000014056dfd0 call     0x14056e8c0
000000014056dfd5 mov      ebx, eax
000000014056dfd7 test     eax, eax
000000014056dfd9 jne      0x14056e28d
000000014056dfdf lea      edx, [rax + 0x6b]
000000014056dfe2 mov      rcx, rdi
000000014056dfe5 call     0x14056e8c0
000000014056dfea mov      ebx, eax
000000014056dfec test     eax, eax
000000014056dfee jne      0x14056e28d
000000014056dff4 lea      edx, [rax + 0x6c]
000000014056dff7 mov      rcx, rdi
000000014056dffa call     0x14056e8c0
000000014056dfff mov      ebx, eax
000000014056e001 test     eax, eax
000000014056e003 jne      0x14056e28d
000000014056e009 lea      edx, [rax + 0x6d]
000000014056e00c mov      rcx, rdi
000000014056e00f call     0x14056e8c0
000000014056e014 mov      ebx, eax
000000014056e016 test     eax, eax
000000014056e018 jne      0x14056e28d
000000014056e01e lea      edx, [rax + 0x6e]
000000014056e021 mov      rcx, rdi
000000014056e024 call     0x14056e8c0
000000014056e029 mov      ebx, eax
000000014056e02b test     eax, eax
000000014056e02d jne      0x14056e28d
000000014056e033 lea      edx, [rax + 0x6f]
000000014056e036 mov      rcx, rdi
000000014056e039 call     0x14056e8c0
000000014056e03e mov      ebx, eax
000000014056e040 test     eax, eax
000000014056e042 jne      0x14056e28d
000000014056e048 lea      edx, [rax + 0x70]
000000014056e04b mov      rcx, rdi
000000014056e04e call     0x14056e8c0
000000014056e053 mov      ebx, eax
000000014056e055 test     eax, eax
000000014056e057 jne      0x14056e28d
000000014056e05d lea      edx, [rax + 0x71]
000000014056e060 mov      rcx, rdi
000000014056e063 call     0x14056e8c0
000000014056e068 mov      ebx, eax
000000014056e06a test     eax, eax
000000014056e06c jne      0x14056e28d
000000014056e072 lea      edx, [rax + 0x72]
000000014056e075 mov      rcx, rdi
000000014056e078 call     0x14056e8c0
000000014056e07d mov      ebx, eax
000000014056e07f test     eax, eax
000000014056e081 jne      0x14056e28d
000000014056e087 lea      edx, [rax + 0x73]
000000014056e08a mov      rcx, rdi
000000014056e08d call     0x14056e8c0
000000014056e092 mov      ebx, eax
000000014056e094 test     eax, eax
000000014056e096 jne      0x14056e28d
000000014056e09c lea      edx, [rax + 0x74]
000000014056e09f mov      rcx, rdi
000000014056e0a2 call     0x14056e8c0
000000014056e0a7 mov      ebx, eax
000000014056e0a9 test     eax, eax
000000014056e0ab jne      0x14056e28d
000000014056e0b1 lea      edx, [rax + 0x75]
000000014056e0b4 mov      rcx, rdi
000000014056e0b7 call     0x14056e8c0
000000014056e0bc mov      ebx, eax
000000014056e0be test     eax, eax
000000014056e0c0 jne      0x14056e28d
000000014056e0c6 lea      edx, [rax + 0x76]
000000014056e0c9 mov      rcx, rdi
000000014056e0cc call     0x14056e8c0
000000014056e0d1 mov      ebx, eax
000000014056e0d3 test     eax, eax
000000014056e0d5 jne      0x14056e28d
000000014056e0db lea      edx, [rax + 0x77]
000000014056e0de mov      rcx, rdi
000000014056e0e1 call     0x14056e8c0
000000014056e0e6 mov      ebx, eax
000000014056e0e8 test     eax, eax
000000014056e0ea jne      0x14056e28d
000000014056e0f0 lea      r8, [rip + 0xffd09]
000000014056e0f7 jmp      0x14056e271
000000014056e0fc mov      rax, qword ptr [rcx + 0x18]
000000014056e100 lea      r8, [rip + 0xffbc9]
000000014056e107 mov      rcx, qword ptr [rcx + 8]
000000014056e10b mov      ebx, 1
000000014056e110 mov      edx, ebx
000000014056e112 mov      rax, qword ptr [rax + 0x118]
000000014056e119 call     qword ptr [rip + 0x1161d9]
000000014056e11f mov      rax, qword ptr [rdi + 0x18]
000000014056e123 lea      r8, [rip + 0xffbd6]
000000014056e12a mov      rcx, qword ptr [rdi + 8]
000000014056e12e mov      edx, ebx
000000014056e130 mov      rax, qword ptr [rax + 0x118]
000000014056e137 call     qword ptr [rip + 0x1161bb]
000000014056e13d lea      edx, [rbx + 0x53]
000000014056e140 mov      rcx, rdi
000000014056e143 call     0x14056e8c0
000000014056e148 mov      ebx, eax
000000014056e14a test     eax, eax
000000014056e14c jne      0x14056e28d
000000014056e152 lea      edx, [rax + 0x55]
000000014056e155 mov      rcx, rdi
000000014056e158 call     0x14056e8c0
000000014056e15d mov      ebx, eax
000000014056e15f test     eax, eax
000000014056e161 jne      0x14056e28d
000000014056e167 lea      edx, [rax + 0x56]
000000014056e16a mov      rcx, rdi
000000014056e16d call     0x14056e8c0
000000014056e172 mov      ebx, eax
000000014056e174 test     eax, eax
000000014056e176 jne      0x14056e28d
000000014056e17c lea      edx, [rax + 0x57]
000000014056e17f mov      rcx, rdi
000000014056e182 call     0x14056e8c0
000000014056e187 mov      ebx, eax
000000014056e189 test     eax, eax
000000014056e18b jne      0x14056e28d
000000014056e191 lea      edx, [rax + 0x58]
000000014056e194 mov      rcx, rdi
000000014056e197 call     0x14056e8c0
000000014056e19c mov      ebx, eax
000000014056e19e test     eax, eax
000000014056e1a0 jne      0x14056e28d
000000014056e1a6 lea      edx, [rax + 0x59]
000000014056e1a9 mov      rcx, rdi
000000014056e1ac call     0x14056e8c0
000000014056e1b1 mov      ebx, eax
000000014056e1b3 test     eax, eax
000000014056e1b5 jne      0x14056e28d
000000014056e1bb lea      edx, [rax + 0x5a]
000000014056e1be mov      rcx, rdi
000000014056e1c1 call     0x14056e8c0
000000014056e1c6 mov      ebx, eax
000000014056e1c8 test     eax, eax
000000014056e1ca jne      0x14056e28d
000000014056e1d0 lea      edx, [rax + 0x5b]
000000014056e1d3 mov      rcx, rdi
000000014056e1d6 call     0x14056e8c0
000000014056e1db mov      ebx, eax
000000014056e1dd test     eax, eax
000000014056e1df jne      0x14056e28d
000000014056e1e5 lea      edx, [rax + 0x5c]
000000014056e1e8 mov      rcx, rdi
000000014056e1eb call     0x14056e8c0
000000014056e1f0 mov      ebx, eax
000000014056e1f2 test     eax, eax
000000014056e1f4 jne      0x14056e28d
000000014056e1fa lea      r8, [rip + 0xffb1f]
000000014056e201 jmp      0x14056e271
000000014056e203 mov      rax, qword ptr [rcx + 0x18]
000000014056e207 lea      r8, [rip + 0xfff02]
000000014056e20e mov      rcx, qword ptr [rcx + 8]
000000014056e212 mov      ebx, 1
000000014056e217 mov      edx, ebx
000000014056e219 mov      rax, qword ptr [rax + 0x118]
000000014056e220 call     qword ptr [rip + 0x1160d2]
000000014056e226 mov      rax, qword ptr [rdi + 0x18]
000000014056e22a lea      r8, [rip + 0xfff0f]
000000014056e231 mov      rcx, qword ptr [rdi + 8]
000000014056e235 mov      edx, ebx
000000014056e237 mov      rax, qword ptr [rax + 0x118]
000000014056e23e call     qword ptr [rip + 0x1160b4]
000000014056e244 mov      edx, 0xb6
000000014056e249 mov      rcx, rdi
000000014056e24c call     0x14056e8c0
000000014056e251 mov      ebx, eax
000000014056e253 test     eax, eax
000000014056e255 jne      0x14056e28d
000000014056e257 mov      edx, 0xb7
000000014056e25c mov      rcx, rdi
000000014056e25f call     0x14056e8c0
000000014056e264 mov      ebx, eax
000000014056e266 test     eax, eax
000000014056e268 jne      0x14056e28d
000000014056e26a lea      r8, [rip + 0xffeef]
000000014056e271 mov      rax, qword ptr [rdi + 0x18]
000000014056e275 mov      edx, 2
000000014056e27a mov      rcx, qword ptr [rdi + 8]
000000014056e27e mov      rax, qword ptr [rax + 0x118]
000000014056e285 call     qword ptr [rip + 0x11606d]
000000014056e28b jmp      0x14056e2b1
000000014056e28d mov      rax, qword ptr [rdi + 0x18]
000000014056e291 lea      r8, [rip + 0xfff68]
000000014056e298 mov      rcx, qword ptr [rdi + 8]
000000014056e29c mov      r9d, ebx
000000014056e29f mov      edx, 2
000000014056e2a4 mov      rax, qword ptr [rax + 0x118]
000000014056e2ab call     qword ptr [rip + 0x116047]
000000014056e2b1 mov      eax, ebx
000000014056e2b3 mov      rbx, qword ptr [rsp + 0x40]
000000014056e2b8 add      rsp, 0x30
000000014056e2bc pop      rdi
000000014056e2bd ret      