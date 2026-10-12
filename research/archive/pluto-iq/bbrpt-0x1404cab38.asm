00000001404cab38 mov      qword ptr [rsp + 0x18], rbx
00000001404cab3d mov      dword ptr [rsp + 0x10], edx
00000001404cab41 push     rbp
00000001404cab42 push     rsi
00000001404cab43 push     rdi
00000001404cab44 push     r12
00000001404cab46 push     r13
00000001404cab48 push     r14
00000001404cab4a push     r15
00000001404cab4c sub      rsp, 0x50
00000001404cab50 movsxd   rax, edx
00000001404cab53 xor      ebx, ebx
00000001404cab55 imul     r9, rax, 0x6d0
00000001404cab5c mov      rax, qword ptr [rcx + 8]
00000001404cab60 mov      rsi, rcx
00000001404cab63 mov      edi, r8d
00000001404cab66 lea      r12d, [rbx + 1]
00000001404cab6a mov      ecx, dword ptr [r9 + rax + 0x534]
00000001404cab72 test     ecx, ecx
00000001404cab74 jne      0x1404cabd5
00000001404cab76 mov      r15d, 0x10000
00000001404cab7c mov      dword ptr [rsp + 0x90], r8d
00000001404cab84 mov      r14d, 0xf0000
00000001404cab8a mov      dword ptr [rsp + 0x34], r15d
00000001404cab8f mov      r13d, 0x83
00000001404cab95 mov      dword ptr [rsp + 0x30], r14d
00000001404cab9a mov      r15d, ebx
00000001404cab9d mov      dword ptr [rsp + 0x44], 0xf0
00000001404caba5 mov      r14d, 0xffff0
00000001404cabab mov      dword ptr [rsp + 0x40], 4
00000001404cabb3 mov      dword ptr [rsp + 0x3c], r13d
00000001404cabb8 mov      ebp, 0x507e
00000001404cabbd mov      dword ptr [rsp + 0x38], 7
00000001404cabc5 mov      dword ptr [rsp + 0xa8], 5
00000001404cabd0 jmp      0x1404cad22
00000001404cabd5 xor      r8d, r8d
00000001404cabd8 mov      dword ptr [rsp + 0x20], 0x507e
00000001404cabe0 cmp      ecx, r12d
00000001404cabe3 mov      r9d, 0xffff0
00000001404cabe9 mov      rcx, rsi
00000001404cabec jne      0x1404cac2a
00000001404cabee mov      edx, edi
00000001404cabf0 call     0x14045907c
00000001404cabf5 mov      dword ptr [rsp + 0x40], r12d
00000001404cabfa mov      r15d, 0x10000
00000001404cac00 mov      r12d, 3
00000001404cac06 mov      dword ptr [rsp + 0x90], edi
00000001404cac0d mov      dword ptr [rsp + 0x44], r15d
00000001404cac12 mov      r14d, 0xf0000
00000001404cac18 mov      dword ptr [rsp + 0x38], 0x300
00000001404cac20 lea      ebp, [r12 + 2]
00000001404cac25 jmp      0x1404cacfd
00000001404cac2a test     edi, edi
00000001404cac2c jne      0x1404cac5e
00000001404cac2e xor      edx, edx
00000001404cac30 call     0x14045907c
00000001404cac35 mov      r15d, 0x10000
00000001404cac3b mov      dword ptr [rsp + 0x40], r12d
00000001404cac40 mov      dword ptr [rsp + 0x44], r15d
00000001404cac45 lea      r12d, [rdi + 3]
00000001404cac49 mov      dword ptr [rsp + 0x90], ebx
00000001404cac50 lea      ebp, [rdi + 5]
00000001404cac53 mov      r14d, 0xf0000
00000001404cac59 jmp      0x1404cacf4
00000001404cac5e mov      edx, r12d
00000001404cac61 call     0x14045907c
00000001404cac66 mov      r14d, 0xf0000
00000001404cac6c mov      dword ptr [rsp + 0x20], r12d
00000001404cac71 mov      r9d, r14d
00000001404cac74 xor      r8d, r8d
00000001404cac77 xor      edx, edx
00000001404cac79 mov      rcx, rsi
00000001404cac7c call     0x14045907c
00000001404cac81 mov      ebp, 5
00000001404cac86 mov      dword ptr [rsp + 0x20], ebx
00000001404cac8a mov      r8d, ebp
00000001404cac8d mov      r9d, r12d
00000001404cac90 xor      edx, edx
00000001404cac92 mov      rcx, rsi
00000001404cac95 call     0x14045907c
00000001404cac9a mov      r9d, r12d
00000001404cac9d mov      dword ptr [rsp + 0x20], ebx
00000001404caca1 mov      r8d, ebp
00000001404caca4 mov      edx, r12d
00000001404caca7 mov      rcx, rsi
00000001404cacaa call     0x14045907c
00000001404cacaf mov      r15d, 0x10000
00000001404cacb5 mov      dword ptr [rsp + 0x20], ebp
00000001404cacb9 mov      r8d, r15d
00000001404cacbc mov      r9d, r14d
00000001404cacbf mov      edx, r12d
00000001404cacc2 mov      rcx, rsi
00000001404cacc5 call     0x14045907c
00000001404cacca mov      dword ptr [rsp + 0x48], 3
00000001404cacd2 mov      r14d, r12d
00000001404cacd5 mov      dword ptr [rsp + 0x90], r12d
00000001404cacdd mov      ebp, ebx
00000001404cacdf mov      dword ptr [rsp + 0x44], r15d
00000001404cace4 mov      r15d, 0x10005
00000001404cacea mov      dword ptr [rsp + 0x40], r12d
00000001404cacef mov      r12d, dword ptr [rsp + 0x48]
00000001404cacf4 mov      eax, 0x300
00000001404cacf9 mov      dword ptr [rsp + 0x38], eax
00000001404cacfd mov      r13d, 0x89
00000001404cad03 mov      dword ptr [rsp + 0x3c], 0x8a
00000001404cad0b mov      dword ptr [rsp + 0x34], 0x67
00000001404cad13 mov      dword ptr [rsp + 0x30], 0x70
00000001404cad1b mov      dword ptr [rsp + 0xa8], ebx
00000001404cad22 mov      dword ptr [rsp + 0x20], ebp
00000001404cad26 mov      r9d, r14d
00000001404cad29 mov      ebp, dword ptr [rsp + 0x90]
00000001404cad30 mov      r8d, r15d
00000001404cad33 mov      edx, ebp
00000001404cad35 mov      rcx, rsi
00000001404cad38 call     0x14045907c
00000001404cad3d mov      eax, dword ptr [rsp + 0xa8]
00000001404cad44 mov      edx, ebp
00000001404cad46 mov      r9d, dword ptr [rsp + 0x30]
00000001404cad4b mov      rcx, rsi
00000001404cad4e mov      r8d, dword ptr [rsp + 0x34]
00000001404cad53 mov      dword ptr [rsp + 0x20], eax
00000001404cad57 call     0x14045907c
00000001404cad5c mov      r9d, dword ptr [rsp + 0x38]
00000001404cad61 mov      edx, ebp
00000001404cad63 mov      r8d, dword ptr [rsp + 0x3c]
00000001404cad68 mov      rcx, rsi
00000001404cad6b mov      dword ptr [rsp + 0x20], r12d
00000001404cad70 call     0x14045907c
00000001404cad75 mov      eax, dword ptr [rsp + 0x40]
00000001404cad79 mov      r8d, r13d
00000001404cad7c mov      r9d, dword ptr [rsp + 0x44]
00000001404cad81 mov      edx, ebp
00000001404cad83 mov      rcx, rsi
00000001404cad86 mov      dword ptr [rsp + 0x20], eax
00000001404cad8a call     0x14045907c
00000001404cad8f cmp      byte ptr [rsi + 0xb978], bl
00000001404cad95 je       0x1404cadea
00000001404cad97 mov      r9d, 2
00000001404cad9d mov      dword ptr [rsp + 0x20], ebx
00000001404cada1 xor      r8d, r8d
00000001404cada4 mov      edx, edi
00000001404cada6 mov      rcx, rsi
00000001404cada9 call     0x14045907c
00000001404cadae mov      rcx, qword ptr [rip + 0x45524b]
00000001404cadb5 lea      rax, [rip + 0x455244]
00000001404cadbc cmp      rcx, rax
00000001404cadbf je       0x1404cae99
00000001404cadc5 cmp      byte ptr [rcx + 0x229], 4
00000001404cadcc jb       0x1404cae99
00000001404cadd2 mov      eax, dword ptr [rcx + 0x22c]
00000001404cadd8 test     al, 0x10
00000001404cadda je       0x1404cae99
00000001404cade0 mov      edx, 0xe
00000001404cade5 jmp      0x1404cae83
00000001404cadea cmp      dword ptr [rsp + 0x98], ebx
00000001404cadf1 jne      0x1404cae3c
00000001404cadf3 test     edi, edi
00000001404cadf5 mov      r9d, 2
00000001404cadfb mov      edx, edi
00000001404cadfd mov      rcx, rsi
00000001404cae00 setne    bl
00000001404cae03 xor      r8d, r8d
00000001404cae06 mov      dword ptr [rsp + 0x20], ebx
00000001404cae0a call     0x14045907c
00000001404cae0f mov      rcx, qword ptr [rip + 0x4551ea]
00000001404cae16 lea      rax, [rip + 0x4551e3]
00000001404cae1d cmp      rcx, rax
00000001404cae20 je       0x1404cae99
00000001404cae22 cmp      byte ptr [rcx + 0x229], 4
00000001404cae29 jb       0x1404cae99
00000001404cae2b mov      eax, dword ptr [rcx + 0x22c]
00000001404cae31 test     al, 2
00000001404cae33 je       0x1404cae99
00000001404cae35 mov      edx, 0xf
00000001404cae3a jmp      0x1404cae83
00000001404cae3c test     edi, edi
00000001404cae3e mov      r9d, 2
00000001404cae44 mov      edx, edi
00000001404cae46 mov      rcx, rsi
00000001404cae49 sete     bl
00000001404cae4c xor      r8d, r8d
00000001404cae4f mov      dword ptr [rsp + 0x20], ebx
00000001404cae53 call     0x14045907c
00000001404cae58 mov      rcx, qword ptr [rip + 0x4551a1]
00000001404cae5f lea      rax, [rip + 0x45519a]
00000001404cae66 cmp      rcx, rax
00000001404cae69 je       0x1404cae99
00000001404cae6b cmp      byte ptr [rcx + 0x229], 4
00000001404cae72 jb       0x1404cae99
00000001404cae74 mov      eax, dword ptr [rcx + 0x22c]
00000001404cae7a test     al, 0x10
00000001404cae7c je       0x1404cae99
00000001404cae7e mov      edx, 0x10
00000001404cae83 mov      rcx, qword ptr [rcx + 0x218]
00000001404cae8a lea      r8, [rip + 0x41d21f]
00000001404cae91 mov      r9d, edi
00000001404cae94 call     0x140001bb0
00000001404cae99 mov      rbx, qword ptr [rsp + 0xa0]
00000001404caea1 add      rsp, 0x50
00000001404caea5 pop      r15
00000001404caea7 pop      r14
00000001404caea9 pop      r13
00000001404caeab pop      r12
00000001404caead pop      rdi
00000001404caeae pop      rsi
00000001404caeaf pop      rbp
00000001404caeb0 ret      