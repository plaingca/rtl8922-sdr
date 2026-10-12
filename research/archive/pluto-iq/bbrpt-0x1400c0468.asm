00000001400c0468 mov      qword ptr [rsp + 0x20], rbx
00000001400c046d mov      qword ptr [rsp + 8], rcx
00000001400c0472 push     rbp
00000001400c0473 push     rsi
00000001400c0474 push     rdi
00000001400c0475 push     r12
00000001400c0477 push     r13
00000001400c0479 push     r14
00000001400c047b push     r15
00000001400c047d sub      rsp, 0x40
00000001400c0481 mov      r13, qword ptr [rcx + 0x160]
00000001400c0488 lea      rsi, [rcx + 0x228]
00000001400c048f movzx    ebx, word ptr [rcx + 0x220]
00000001400c0496 xor      r15d, r15d
00000001400c0499 mov      rbp, rcx
00000001400c049c mov      word ptr [rsp + 0x90], bx
00000001400c04a4 mov      word ptr [rsp + 0x88], r15w
00000001400c04ad mov      r14d, 0x17e8
00000001400c04b3 mov      rax, qword ptr [r13 + 0xaf280]
00000001400c04ba movzx    ecx, byte ptr [rax + 0x110d]
00000001400c04c1 lea      eax, [rcx + 0x2a]
00000001400c04c4 cmp      eax, 0xff
00000001400c04c9 jae      0x1400c04d6
00000001400c04cb lea      eax, [rcx + 0x2a]
00000001400c04ce lea      r14d, [rax + rax*2]
00000001400c04d2 shl      r14d, 3
00000001400c04d6 lea      rcx, [rbp + 0xaafe8]
00000001400c04dd lea      rdx, [rip + 0x53d41c]
00000001400c04e4 call     0x1400314e4
00000001400c04e9 mov      rax, qword ptr [rip + 0x85fb10]
00000001400c04f0 lea      rdi, [rip + 0x85fb09]
00000001400c04f7 cmp      rax, rdi
00000001400c04fa je       0x1400c0559
00000001400c04fc cmp      byte ptr [rax + 0x29], 4
00000001400c0500 jb       0x1400c0559
00000001400c0502 mov      eax, dword ptr [rax + 0x2c]
00000001400c0505 test     al, 2
00000001400c0507 je       0x1400c0559
00000001400c0509 mov      edi, ebx
00000001400c050b lea      rcx, [rsi + 0x80]
00000001400c0512 imul     ebx, ebx, 0x6d0
00000001400c0518 call     0x1400ab524
00000001400c051d mov      rcx, qword ptr [rip + 0x85fadc]
00000001400c0524 lea      r8, [rip + 0x5d27e5]
00000001400c052b movzx    r9d, word ptr [rsi + 0x58]
00000001400c0530 mov      edx, 0x94
00000001400c0535 mov      dword ptr [rsp + 0x38], ebx
00000001400c0539 mov      dword ptr [rsp + 0x30], 0x6d0
00000001400c0541 mov      rcx, qword ptr [rcx + 0x18]
00000001400c0545 mov      dword ptr [rsp + 0x28], edi
00000001400c0549 mov      dword ptr [rsp + 0x20], eax
00000001400c054d call     0x140039d40
00000001400c0552 lea      rdi, [rip + 0x85faa7]
00000001400c0559 mov      bl, r15b
00000001400c055c mov      r15d, 1
00000001400c0562 lea      r12d, [r15 + 9]
00000001400c0566 mov      rcx, qword ptr [rip + 0x85fa93]
00000001400c056d cmp      rcx, rdi
00000001400c0570 je       0x1400c05a6
00000001400c0572 cmp      byte ptr [rcx + 0x29], 4
00000001400c0576 jb       0x1400c05a6
00000001400c0578 mov      eax, dword ptr [rcx + 0x2c]
00000001400c057b test     al, 2
00000001400c057d je       0x1400c05a6
00000001400c057f mov      rcx, qword ptr [rcx + 0x18]
00000001400c0583 mov      edx, 0x95
00000001400c0588 movzx    eax, bl
00000001400c058b movzx    r8d, bl
00000001400c058f mov      dword ptr [rsp + 0x20], r8d
00000001400c0594 lea      r8, [rip + 0x5d2775]
00000001400c059b movzx    r9d, word ptr [rsi + rax*2 + 0x5a]
00000001400c05a1 call     0x140001bec
00000001400c05a6 add      bl, r15b
00000001400c05a9 cmp      bl, r12b
00000001400c05ac jb       0x1400c0566
00000001400c05ae mov      rcx, rbp
00000001400c05b1 call     0x1400c10c4
00000001400c05b6 mov      rcx, qword ptr [rip + 0x85fa43]
00000001400c05bd cmp      rcx, rdi
00000001400c05c0 je       0x1400c05e9
00000001400c05c2 cmp      byte ptr [rcx + 0x29], 4
00000001400c05c6 jb       0x1400c05e9
00000001400c05c8 mov      eax, dword ptr [rcx + 0x2c]
00000001400c05cb test     al, 2
00000001400c05cd je       0x1400c05e9
00000001400c05cf movzx    r9d, word ptr [rsi + 0x58]
00000001400c05d4 lea      r8, [rip + 0x5d2735]
00000001400c05db mov      rcx, qword ptr [rcx + 0x18]
00000001400c05df mov      edx, 0x96
00000001400c05e4 call     0x140001bb0
00000001400c05e9 lea      r15, [rsi + 0x70]
00000001400c05ed mov      rbx, qword ptr [r15]
00000001400c05f0 lea      rdi, [rbp + 0x204f8]
00000001400c05f7 cmp      rbx, r15
00000001400c05fa je       0x1400c0690
00000001400c0600 movzx    r12d, word ptr [rsp + 0x88]
00000001400c0609 mov      ebp, 1
00000001400c060e mov      rax, qword ptr [rbx + 8]
00000001400c0612 mov      edx, r14d
00000001400c0615 mov      rcx, qword ptr [rbx]
00000001400c0618 mov      qword ptr [rax], rcx
00000001400c061b mov      qword ptr [rcx + 8], rax
00000001400c061f mov      eax, 0xffff
00000001400c0624 mov      qword ptr [rbx], 0x100100
00000001400c062b mov      qword ptr [rbx + 8], 0x200200
00000001400c0633 add      word ptr [rsi + 0x58], ax
00000001400c0637 mov      rcx, qword ptr [rbx + 0x248]
00000001400c063e call     0x140031160
00000001400c0643 and      qword ptr [rbx + 0x248], 0
00000001400c064b cmp      qword ptr [rdi], 0
00000001400c064f jne      0x1400c0660
00000001400c0651 lea      rdx, [rbx + 0x3e8]
00000001400c0658 mov      rcx, r13
00000001400c065b call     0x14002fb04
00000001400c0660 mov      edx, 0x6d0
00000001400c0665 mov      rcx, rbx
00000001400c0668 call     0x140031160
00000001400c066d mov      rbx, qword ptr [r15]
00000001400c0670 add      r12w, bp
00000001400c0674 cmp      rbx, r15
00000001400c0677 jne      0x1400c060e
00000001400c0679 mov      rbp, qword ptr [rsp + 0x80]
00000001400c0681 mov      word ptr [rsp + 0x88], r12w
00000001400c068a mov      r12d, 0xa
00000001400c0690 mov      r9, qword ptr [rdi]
00000001400c0693 xor      r14d, r14d
00000001400c0696 test     r9, r9
00000001400c0699 je       0x1400c06e8
00000001400c069b mov      rcx, qword ptr [rip + 0x85f95e]
00000001400c06a2 lea      rax, [rip + 0x85f957]
00000001400c06a9 cmp      rcx, rax
00000001400c06ac je       0x1400c06da
00000001400c06ae cmp      byte ptr [rcx + 0x29], 4
00000001400c06b2 jb       0x1400c06da
00000001400c06b4 mov      eax, dword ptr [rcx + 0x2c]
00000001400c06b7 test     al, 2
00000001400c06b9 je       0x1400c06da
00000001400c06bb mov      eax, dword ptr [rbp + 0x20508]
00000001400c06c1 lea      r8, [rip + 0x5d2648]
00000001400c06c8 mov      rcx, qword ptr [rcx + 0x18]
00000001400c06cc mov      edx, 0x98
00000001400c06d1 mov      dword ptr [rsp + 0x20], eax
00000001400c06d5 call     0x14002af78
00000001400c06da mov      rdx, rdi
00000001400c06dd mov      rcx, r13
00000001400c06e0 call     0x14002fb04
00000001400c06e5 mov      qword ptr [rdi], r14
00000001400c06e8 movzx    edx, word ptr [rsi + 0x58]
00000001400c06ec test     dx, dx
00000001400c06ef je       0x1400c072b
00000001400c06f1 mov      rcx, qword ptr [rip + 0x85f908]
00000001400c06f8 lea      r13, [rip + 0x85f901]
00000001400c06ff cmp      rcx, r13
00000001400c0702 je       0x1400c0732
00000001400c0704 cmp      byte ptr [rcx + 0x29], 2
00000001400c0708 jb       0x1400c0732
00000001400c070a mov      eax, dword ptr [rcx + 0x2c]
00000001400c070d test     al, 2
00000001400c070f je       0x1400c0732
00000001400c0711 mov      rcx, qword ptr [rcx + 0x18]
00000001400c0715 lea      r8, [rip + 0x5d25f4]
00000001400c071c mov      r9d, edx
00000001400c071f mov      edx, 0x99
00000001400c0724 call     0x140001bb0
00000001400c0729 jmp      0x1400c0732
00000001400c072b lea      r13, [rip + 0x85f8ce]
00000001400c0732 lea      rbp, [rsi + 0x80]
00000001400c0739 mov      rcx, rbp
00000001400c073c call     0x1400ab524
00000001400c0741 test     eax, eax
00000001400c0743 je       0x1400c0785
00000001400c0745 mov      rax, qword ptr [rip + 0x85f8b4]
00000001400c074c cmp      rax, r13
00000001400c074f je       0x1400c0785
00000001400c0751 cmp      byte ptr [rax + 0x29], 2
00000001400c0755 jb       0x1400c0785
00000001400c0757 mov      eax, dword ptr [rax + 0x2c]
00000001400c075a test     al, 2
00000001400c075c je       0x1400c0785
00000001400c075e mov      rcx, rbp
00000001400c0761 call     0x1400ab524
00000001400c0766 mov      rcx, qword ptr [rip + 0x85f893]
00000001400c076d lea      r8, [rip + 0x5d259c]
00000001400c0774 mov      r9d, eax
00000001400c0777 mov      edx, 0x9a
00000001400c077c mov      rcx, qword ptr [rcx + 0x18]
00000001400c0780 call     0x140001bb0
00000001400c0785 movzx    r15d, word ptr [rsp + 0x88]
00000001400c078e lea      rdi, [rsi + 0x5a]
00000001400c0792 mov      bl, r14b
00000001400c0795 mov      eax, 1
00000001400c079a cmp      word ptr [rdi], r14w
00000001400c079e je       0x1400c07dd
00000001400c07a0 mov      rcx, qword ptr [rip + 0x85f859]
00000001400c07a7 cmp      rcx, r13
00000001400c07aa je       0x1400c07dd
00000001400c07ac cmp      byte ptr [rcx + 0x29], 2
00000001400c07b0 jb       0x1400c07dd
00000001400c07b2 mov      eax, dword ptr [rcx + 0x2c]
00000001400c07b5 test     al, 2
00000001400c07b7 je       0x1400c07d8
00000001400c07b9 mov      rcx, qword ptr [rcx + 0x18]
00000001400c07bd lea      r8, [rip + 0x5d254c]
00000001400c07c4 movzx    eax, bl
00000001400c07c7 mov      r9d, r15d
00000001400c07ca mov      edx, 0x9b
00000001400c07cf mov      dword ptr [rsp + 0x20], eax
00000001400c07d3 call     0x140001bec
00000001400c07d8 mov      eax, 1
00000001400c07dd add      bl, al
00000001400c07df add      rdi, 2
00000001400c07e3 cmp      bl, r12b
00000001400c07e6 jb       0x1400c079a
00000001400c07e8 movzx    edx, word ptr [rsp + 0x90]
00000001400c07f0 cmp      r15w, dx
00000001400c07f4 lea      r15, [rsi + 0x70]
00000001400c07f8 je       0x1400c0837
00000001400c07fa mov      rcx, qword ptr [rip + 0x85f7ff]
00000001400c0801 cmp      rcx, r13
00000001400c0804 je       0x1400c0837
00000001400c0806 cmp      byte ptr [rcx + 0x29], 2
00000001400c080a jb       0x1400c0837
00000001400c080c mov      eax, dword ptr [rcx + 0x2c]
00000001400c080f test     al, 2
00000001400c0811 je       0x1400c0837
00000001400c0813 movzx    r9d, word ptr [rsp + 0x88]
00000001400c081c lea      r8, [rip + 0x5d24ed]
00000001400c0823 mov      rcx, qword ptr [rcx + 0x18]
00000001400c0827 mov      eax, edx
00000001400c0829 mov      edx, 0x9c
00000001400c082e mov      dword ptr [rsp + 0x20], eax
00000001400c0832 call     0x140001bec
00000001400c0837 lea      rdx, [rip + 0x53d0c2]
00000001400c083e mov      rcx, rsi
00000001400c0841 call     0x1400314e4
00000001400c0846 mov      rcx, rbp
00000001400c0849 mov      qword ptr [rsi + 0x78], r15
00000001400c084d mov      qword ptr [rsi + 0x70], r15
00000001400c0851 mov      word ptr [rsi + 0x58], r14w
00000001400c0856 call     0x1400ab564
00000001400c085b lea      rcx, [rsi + 0xc0]
00000001400c0862 call     0x1400ab564
00000001400c0867 lea      rdi, [rsi + 0x5a]
00000001400c086b lea      rbx, [rsi + 0x140]
00000001400c0872 add      rsi, 8
00000001400c0876 lea      rdx, [rip + 0x53d083]
00000001400c087d mov      rcx, rsi
00000001400c0880 call     0x1400314e4
00000001400c0885 mov      qword ptr [rbx + 8], rbx
00000001400c0889 add      rsi, 8
00000001400c088d mov      qword ptr [rbx], rbx
00000001400c0890 add      rbx, 0x10
00000001400c0894 mov      word ptr [rdi], r14w
00000001400c0898 lea      rdi, [rdi + 2]
00000001400c089c sub      r12, 1
00000001400c08a0 jne      0x1400c0876
00000001400c08a2 mov      rbx, qword ptr [rsp + 0x98]
00000001400c08aa add      rsp, 0x40
00000001400c08ae pop      r15
00000001400c08b0 pop      r14
00000001400c08b2 pop      r13
00000001400c08b4 pop      r12
00000001400c08b6 pop      rdi
00000001400c08b7 pop      rsi
00000001400c08b8 pop      rbp
00000001400c08b9 ret      