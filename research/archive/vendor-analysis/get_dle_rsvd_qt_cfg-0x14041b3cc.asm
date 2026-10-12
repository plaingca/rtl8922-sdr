000000014041b3cc mov      qword ptr [rsp + 8], rbx
000000014041b3d1 mov      qword ptr [rsp + 0x10], rbp
000000014041b3d6 mov      qword ptr [rsp + 0x18], rsi
000000014041b3db push     rdi
000000014041b3dc sub      rsp, 0x20
000000014041b3e0 mov      rbx, qword ptr [rcx + 0x3b8]
000000014041b3e7 xor      edi, edi
000000014041b3e9 mov      rsi, rdx
000000014041b3ec mov      rbp, rcx
000000014041b3ef test     rdx, rdx
000000014041b3f2 jne      0x14041b445
000000014041b3f4 mov      rcx, qword ptr [rip + 0x504c05]
000000014041b3fb lea      rax, [rip + 0x504bfe]
000000014041b402 cmp      rcx, rax
000000014041b405 je       0x14041b43b
000000014041b407 cmp      byte ptr [rcx + 0x169], 2
000000014041b40e jb       0x14041b43b
000000014041b410 mov      eax, dword ptr [rcx + 0x16c]
000000014041b416 lea      edi, [rdx + 8]
000000014041b419 test     dil, al
000000014041b41c je       0x14041b43b
000000014041b41e mov      rcx, qword ptr [rcx + 0x158]
000000014041b425 lea      edx, [rsi + 0x13]
000000014041b428 lea      r9, [rip + 0x236891]
000000014041b42f lea      r8, [rip + 0x2bb192]
000000014041b436 call     0x140008874
000000014041b43b mov      eax, 0x2e
000000014041b440 jmp      0x14041b678
000000014041b445 test     rbx, rbx
000000014041b448 jne      0x14041b49b
000000014041b44a mov      rcx, qword ptr [rip + 0x504baf]
000000014041b451 lea      rax, [rip + 0x504ba8]
000000014041b458 cmp      rcx, rax
000000014041b45b je       0x14041b491
000000014041b45d cmp      byte ptr [rcx + 0x169], 2
000000014041b464 jb       0x14041b491
000000014041b466 mov      eax, dword ptr [rcx + 0x16c]
000000014041b46c lea      edi, [rbx + 8]
000000014041b46f test     dil, al
000000014041b472 je       0x14041b491
000000014041b474 mov      rcx, qword ptr [rcx + 0x158]
000000014041b47b lea      edx, [rbx + 0x14]
000000014041b47e lea      r9, [rip + 0x23683b]
000000014041b485 lea      r8, [rip + 0x2bb13c]
000000014041b48c call     0x140008874
000000014041b491 mov      eax, 5
000000014041b496 jmp      0x14041b678
000000014041b49b mov      edx, 7
000000014041b4a0 call     0x14036c07c
000000014041b4a5 test     al, al
000000014041b4a7 je       0x14041b4d3
000000014041b4a9 mov      eax, dword ptr [rbp + 0x3e0]
000000014041b4af cmp      eax, 0x80
000000014041b4b4 je       0x14041b4ce
000000014041b4b6 cmp      eax, 0x100
000000014041b4bb je       0x14041b4c7
000000014041b4bd mov      eax, 0x52
000000014041b4c2 jmp      0x14041b678
000000014041b4c7 mov      edi, 8
000000014041b4cc jmp      0x14041b4d3
000000014041b4ce mov      edi, 0x10
000000014041b4d3 mov      ecx, dword ptr [rsi]
000000014041b4d5 test     ecx, ecx
000000014041b4d7 je       0x14041b657
000000014041b4dd sub      ecx, 1
000000014041b4e0 je       0x14041b640
000000014041b4e6 sub      ecx, 1
000000014041b4e9 je       0x14041b625
000000014041b4ef sub      ecx, 1
000000014041b4f2 je       0x14041b606
000000014041b4f8 sub      ecx, 1
000000014041b4fb je       0x14041b5e3
000000014041b501 sub      ecx, 1
000000014041b504 je       0x14041b5b9
000000014041b50a sub      ecx, 1
000000014041b50d je       0x14041b58b
000000014041b50f sub      ecx, 1
000000014041b512 je       0x14041b559
000000014041b514 cmp      ecx, 1
000000014041b517 je       0x14041b523
000000014041b519 mov      eax, 0xb
000000014041b51e jmp      0x14041b678
000000014041b523 movzx    ecx, word ptr [rbp + 0x3e4]
000000014041b52a add      cx, word ptr [rbx + 0xe]
000000014041b52e add      cx, word ptr [rbx + 0xc]
000000014041b532 add      cx, word ptr [rbx + 0xa]
000000014041b536 add      cx, word ptr [rbx + 8]
000000014041b53a add      cx, word ptr [rbx + 6]
000000014041b53e add      cx, word ptr [rbx + 4]
000000014041b542 add      cx, word ptr [rbx + 2]
000000014041b546 add      cx, word ptr [rbx]
000000014041b549 add      cx, di
000000014041b54c mov      word ptr [rsi + 8], cx
000000014041b550 movzx    eax, word ptr [rbx + 0x10]
000000014041b554 jmp      0x14041b665
000000014041b559 movzx    ecx, word ptr [rbp + 0x3e4]
000000014041b560 add      cx, word ptr [rbx + 0xc]
000000014041b564 add      cx, word ptr [rbx + 0xa]
000000014041b568 add      cx, word ptr [rbx + 8]
000000014041b56c add      cx, word ptr [rbx + 6]
000000014041b570 add      cx, word ptr [rbx + 4]
000000014041b574 add      cx, word ptr [rbx + 2]
000000014041b578 add      cx, word ptr [rbx]
000000014041b57b add      cx, di
000000014041b57e mov      word ptr [rsi + 8], cx
000000014041b582 movzx    eax, word ptr [rbx + 0xe]
000000014041b586 jmp      0x14041b665
000000014041b58b movzx    ecx, word ptr [rbp + 0x3e4]
000000014041b592 add      cx, word ptr [rbx + 0xa]
000000014041b596 add      cx, word ptr [rbx + 8]
000000014041b59a add      cx, word ptr [rbx + 6]
000000014041b59e add      cx, word ptr [rbx + 4]
000000014041b5a2 add      cx, word ptr [rbx + 2]
000000014041b5a6 add      cx, word ptr [rbx]
000000014041b5a9 add      cx, di
000000014041b5ac mov      word ptr [rsi + 8], cx
000000014041b5b0 movzx    eax, word ptr [rbx + 0xc]
000000014041b5b4 jmp      0x14041b665
000000014041b5b9 movzx    ecx, word ptr [rbp + 0x3e4]
000000014041b5c0 add      cx, word ptr [rbx + 8]
000000014041b5c4 add      cx, word ptr [rbx + 6]
000000014041b5c8 add      cx, word ptr [rbx + 4]
000000014041b5cc add      cx, word ptr [rbx + 2]
000000014041b5d0 add      cx, word ptr [rbx]
000000014041b5d3 add      cx, di
000000014041b5d6 mov      word ptr [rsi + 8], cx
000000014041b5da movzx    eax, word ptr [rbx + 0xa]
000000014041b5de jmp      0x14041b665
000000014041b5e3 movzx    ecx, word ptr [rbp + 0x3e4]
000000014041b5ea add      cx, word ptr [rbx + 6]
000000014041b5ee add      cx, word ptr [rbx + 4]
000000014041b5f2 add      cx, word ptr [rbx + 2]
000000014041b5f6 add      cx, word ptr [rbx]
000000014041b5f9 add      cx, di
000000014041b5fc mov      word ptr [rsi + 8], cx
000000014041b600 movzx    eax, word ptr [rbx + 8]
000000014041b604 jmp      0x14041b665
000000014041b606 movzx    ecx, word ptr [rbp + 0x3e4]
000000014041b60d add      cx, word ptr [rbx + 4]
000000014041b611 add      cx, word ptr [rbx + 2]
000000014041b615 add      cx, word ptr [rbx]
000000014041b618 add      cx, di
000000014041b61b mov      word ptr [rsi + 8], cx
000000014041b61f movzx    eax, word ptr [rbx + 6]
000000014041b623 jmp      0x14041b665
000000014041b625 movzx    ecx, word ptr [rbp + 0x3e4]
000000014041b62c add      cx, word ptr [rbx + 2]
000000014041b630 add      cx, word ptr [rbx]
000000014041b633 add      cx, di
000000014041b636 mov      word ptr [rsi + 8], cx
000000014041b63a movzx    eax, word ptr [rbx + 4]
000000014041b63e jmp      0x14041b665
000000014041b640 movzx    ecx, word ptr [rbp + 0x3e4]
000000014041b647 add      cx, word ptr [rbx]
000000014041b64a add      cx, di
000000014041b64d mov      word ptr [rsi + 8], cx
000000014041b651 movzx    eax, word ptr [rbx + 2]
000000014041b655 jmp      0x14041b665
000000014041b657 add      di, word ptr [rbp + 0x3e4]
000000014041b65e mov      word ptr [rsi + 8], di
000000014041b662 movzx    eax, word ptr [rbx]
000000014041b665 mov      word ptr [rsi + 0xa], ax
000000014041b669 movzx    eax, ax
000000014041b66c imul     eax, dword ptr [rbp + 0x3e0]
000000014041b673 mov      dword ptr [rsi + 4], eax
000000014041b676 xor      eax, eax
000000014041b678 mov      rbx, qword ptr [rsp + 0x30]
000000014041b67d mov      rbp, qword ptr [rsp + 0x38]
000000014041b682 mov      rsi, qword ptr [rsp + 0x40]
000000014041b687 add      rsp, 0x20
000000014041b68b pop      rdi
000000014041b68c ret      