00000001403f56dc mov      rax, rsp
00000001403f56df mov      qword ptr [rax + 8], rbx
00000001403f56e3 mov      qword ptr [rax + 0x10], rbp
00000001403f56e7 mov      qword ptr [rax + 0x18], rsi
00000001403f56eb mov      qword ptr [rax + 0x20], rdi
00000001403f56ef push     r12
00000001403f56f1 push     r14
00000001403f56f3 push     r15
00000001403f56f5 sub      rsp, 0x30
00000001403f56f9 mov      edi, dword ptr [rsp + 0x70]
00000001403f56fd mov      esi, r9d
00000001403f5700 mov      r12d, dword ptr [rsp + 0x78]
00000001403f5705 mov      ebp, r8d
00000001403f5708 mov      r14d, edx
00000001403f570b mov      r15, rcx
00000001403f570e cmp      r9d, -1
00000001403f5712 je       0x1403f5741
00000001403f5714 mov      ecx, r9d
00000001403f5717 call     0x1403e8a84
00000001403f571c mov      r9d, r12d
00000001403f571f mov      r8d, ebp
00000001403f5722 mov      edx, r14d
00000001403f5725 mov      rcx, r15
00000001403f5728 mov      ebx, eax
00000001403f572a call     0x1403f44d8
00000001403f572f mov      ecx, esi
00000001403f5731 not      ecx
00000001403f5733 and      eax, ecx
00000001403f5735 mov      ecx, ebx
00000001403f5737 shl      edi, cl
00000001403f5739 mov      ecx, edi
00000001403f573b mov      edi, eax
00000001403f573d and      ecx, esi
00000001403f573f or       edi, ecx
00000001403f5741 mov      r9d, edi
00000001403f5744 mov      dword ptr [rsp + 0x70], r12d
00000001403f5749 mov      r8d, ebp
00000001403f574c mov      edx, r14d
00000001403f574f mov      rcx, r15
00000001403f5752 mov      rbx, qword ptr [rsp + 0x50]
00000001403f5757 mov      rbp, qword ptr [rsp + 0x58]
00000001403f575c mov      rsi, qword ptr [rsp + 0x60]
00000001403f5761 mov      rdi, qword ptr [rsp + 0x68]
00000001403f5766 add      rsp, 0x30
00000001403f576a pop      r15
00000001403f576c pop      r14
00000001403f576e pop      r12
00000001403f5770 jmp      0x1403f5778