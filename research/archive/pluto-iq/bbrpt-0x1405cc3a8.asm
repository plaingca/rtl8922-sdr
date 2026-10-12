00000001405cc3a8 mov      qword ptr [rsp + 8], rbx
00000001405cc3ad push     rdi
00000001405cc3ae sub      rsp, 0x30
00000001405cc3b2 mov      rdi, rcx
00000001405cc3b5 test     rcx, rcx
00000001405cc3b8 jne      0x1405cc3c4
00000001405cc3ba mov      eax, 1
00000001405cc3bf jmp      0x1405cc4c0
00000001405cc3c4 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001405cc3cb lea      rcx, [rip + 0xb537e]
00000001405cc3d2 mov      rbx, qword ptr [rax]
00000001405cc3d5 call     0x14007dbe0
00000001405cc3da mov      ecx, eax
00000001405cc3dc lea      rdx, [rbx + 0x8b050]
00000001405cc3e3 mov      r8d, 0x250
00000001405cc3e9 call     0x1400310f0
00000001405cc3ee test     eax, eax
00000001405cc3f0 je       0x1405cc438
00000001405cc3f2 mov      rcx, qword ptr [rip + 0x353c07]
00000001405cc3f9 lea      rax, [rip + 0x353c00]
00000001405cc400 cmp      rcx, rax
00000001405cc403 je       0x1405cc42e
00000001405cc405 cmp      byte ptr [rcx + 0x29], 2
00000001405cc409 jb       0x1405cc42e
00000001405cc40b mov      eax, dword ptr [rcx + 0x2c]
00000001405cc40e test     al, 2
00000001405cc410 je       0x1405cc42e
00000001405cc412 mov      rcx, qword ptr [rcx + 0x18]
00000001405cc416 lea      r9, [rip + 0xb5333]
00000001405cc41d mov      edx, 0x88
00000001405cc422 lea      r8, [rip + 0x339eb7]
00000001405cc429 call     0x140008874
00000001405cc42e mov      rcx, rdi
00000001405cc431 call     0x1405cc4cc
00000001405cc436 jmp      0x1405cc3ba
00000001405cc438 mov      rcx, qword ptr [rbx + 0x8b050]
00000001405cc43f mov      edx, 0x250
00000001405cc444 call     0x140031290
00000001405cc449 mov      rcx, qword ptr [rip + 0x353bb0]
00000001405cc450 lea      rax, [rip + 0x353ba9]
00000001405cc457 cmp      rcx, rax
00000001405cc45a je       0x1405cc499
00000001405cc45c cmp      byte ptr [rcx + 0x29], 4
00000001405cc460 jb       0x1405cc499
00000001405cc462 mov      eax, dword ptr [rcx + 0x2c]
00000001405cc465 test     al, 2
00000001405cc467 je       0x1405cc499
00000001405cc469 mov      rax, qword ptr [rbx + 0x8b050]
00000001405cc470 lea      r9, [rip + 0xb52d9]
00000001405cc477 mov      rcx, qword ptr [rcx + 0x18]
00000001405cc47b lea      r8, [rip + 0x339e5e]
00000001405cc482 mov      edx, 0x89
00000001405cc487 mov      dword ptr [rsp + 0x28], 0x250
00000001405cc48f mov      qword ptr [rsp + 0x20], rax
00000001405cc494 call     0x14000cf14
00000001405cc499 mov      rbx, qword ptr [rbx + 0x8b050]
00000001405cc4a0 mov      rdx, rdi
00000001405cc4a3 lea      rcx, [rbx + 0xf8]
00000001405cc4aa call     0x1405d52fc
00000001405cc4af lea      rcx, [rbx + 0x1b8]
00000001405cc4b6 mov      rdx, rdi
00000001405cc4b9 call     0x1405eb00c
00000001405cc4be xor      eax, eax
00000001405cc4c0 mov      rbx, qword ptr [rsp + 0x40]
00000001405cc4c5 add      rsp, 0x30
00000001405cc4c9 pop      rdi
00000001405cc4ca ret      