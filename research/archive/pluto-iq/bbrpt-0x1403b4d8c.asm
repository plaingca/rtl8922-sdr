00000001403b4d8c mov      rax, rsp
00000001403b4d8f mov      qword ptr [rax + 8], rcx
00000001403b4d93 push     rbx
00000001403b4d94 push     rbp
00000001403b4d95 push     rsi
00000001403b4d96 push     rdi
00000001403b4d97 push     r12
00000001403b4d99 push     r13
00000001403b4d9b push     r14
00000001403b4d9d push     r15
00000001403b4d9f sub      rsp, 0x48
00000001403b4da3 xor      r12d, r12d
00000001403b4da6 mov      word ptr [rax + 0x18], 0x100
00000001403b4dac mov      rax, qword ptr [rcx + 0x18]
00000001403b4db0 lea      r10, [rcx + 0xcb0]
00000001403b4db7 mov      r15, rcx
00000001403b4dba mov      edi, r12d
00000001403b4dbd mov      r9d, r12d
00000001403b4dc0 bt       dword ptr [rax + 4], 8
00000001403b4dc5 jae      0x1403b5127
00000001403b4dcb lea      rsi, [r12 - 4]
00000001403b4dd0 mov      rbp, 0xfffffffffffffd8e
00000001403b4dd7 sub      rsi, r10
00000001403b4dda lea      rbx, [r10 + 0x4f4]
00000001403b4de1 sub      rbp, r10
00000001403b4de4 mov      qword ptr [rsp + 8], rbx
00000001403b4de9 add      rcx, 0x560
00000001403b4df0 mov      qword ptr [rsp + 0x28], rsi
00000001403b4df5 lea      rax, [r10 + 0x506]
00000001403b4dfc mov      qword ptr [rsp], rcx
00000001403b4e00 lea      edx, [r12 + 2]
00000001403b4e05 mov      qword ptr [rsp + 0x10], rax
00000001403b4e0a lea      r13, [r15 + 0x57c]
00000001403b4e11 mov      qword ptr [rsp + 0x30], rbp
00000001403b4e16 mov      qword ptr [rsp + 0x20], rdx
00000001403b4e1b mov      r8d, 0x8000
00000001403b4e21 mov      qword ptr [rsp + 0x18], r13
00000001403b4e26 cmp      byte ptr [rcx], r12b
00000001403b4e29 jne      0x1403b4e3d
00000001403b4e2b mov      word ptr [rbx], r12w
00000001403b4e2f and      word ptr [rbx - 4], 0
00000001403b4e34 and      dword ptr [rax - 2], 0
00000001403b4e38 jmp      0x1403b5094
00000001403b4e3d mov      ecx, dword ptr [r13]
00000001403b4e41 movzx    edx, byte ptr [r13 + 0x10]
00000001403b4e46 test     ecx, ecx
00000001403b4e48 je       0x1403b4eb5
00000001403b4e4a sub      ecx, 1
00000001403b4e4d je       0x1403b4e90
00000001403b4e4f cmp      ecx, 1
00000001403b4e52 jne      0x1403b4eb5
00000001403b4e54 movzx    r11d, r8w
00000001403b4e58 mov      r8d, 0x4a6
00000001403b4e5e add      r8d, edx
00000001403b4e61 movzx    eax, r8w
00000001403b4e65 shl      ax, 2
00000001403b4e69 add      r8w, ax
00000001403b4e6d movzx    eax, r8w
00000001403b4e71 imul     ecx, eax, 0x30d40
00000001403b4e77 mov      eax, 0x1b4e81b5
00000001403b4e7c imul     ecx
00000001403b4e7e mov      r14d, edx
00000001403b4e81 sar      r14d, 4
00000001403b4e85 mov      eax, r14d
00000001403b4e88 shr      eax, 0x1f
00000001403b4e8b add      r14d, eax
00000001403b4e8e jmp      0x1403b4ee7
00000001403b4e90 mov      r11d, r8d
00000001403b4e93 mov      r8d, 0x3e8
00000001403b4e99 add      r8d, edx
00000001403b4e9c movzx    eax, r8w
00000001403b4ea0 shl      ax, 2
00000001403b4ea4 add      r8w, ax
00000001403b4ea8 movzx    eax, r8w
00000001403b4eac imul     r14d, eax, 0x640
00000001403b4eb3 jmp      0x1403b4ee7
00000001403b4eb5 movzx    r11d, r12w
00000001403b4eb9 cmp      dl, 0xe
00000001403b4ebc jne      0x1403b4ec6
00000001403b4ebe mov      r8d, 0x9b4
00000001403b4ec4 jmp      0x1403b4edc
00000001403b4ec6 movzx    r8d, dx
00000001403b4eca mov      eax, 0x967
00000001403b4ecf shl      r8w, 2
00000001403b4ed4 add      r8w, dx
00000001403b4ed8 add      r8w, ax
00000001403b4edc movzx    eax, r8w
00000001403b4ee0 imul     r14d, eax, 0xc80
00000001403b4ee7 lea      rax, [rbx + rsi]
00000001403b4eeb add      r8w, r11w
00000001403b4eef mov      qword ptr [rsp + 0x98], rax
00000001403b4ef7 mov      r11b, r12b
00000001403b4efa mov      r15, qword ptr [rsp + 0x98]
00000001403b4f02 lea      rax, [rbx + rbp]
00000001403b4f06 mov      word ptr [rbx], r8w
00000001403b4f0a mov      r13, rax
00000001403b4f0d mov      ebx, 0x100
00000001403b4f12 mov      byte ptr [rsp + 0x98], r12b
00000001403b4f1a movzx    ecx, r11b
00000001403b4f1e test     r11b, r11b
00000001403b4f21 je       0x1403b4f67
00000001403b4f23 cmp      ecx, 1
00000001403b4f26 jne      0x1403b4f67
00000001403b4f28 imul     r8d, r14d, 0x96
00000001403b4f2f mov      ebp, 0x51eb851f
00000001403b4f34 mov      eax, ebp
00000001403b4f36 lea      ecx, [r8 - 0x393870]
00000001403b4f3d mul      ecx
00000001403b4f3f lea      ecx, [r8 + 0x393870]
00000001403b4f46 mov      eax, ebp
00000001403b4f48 mov      esi, edx
00000001403b4f4a mov      ebp, 0x514
00000001403b4f4f mul      ecx
00000001403b4f51 shr      esi, 6
00000001403b4f54 mov      eax, 0x4e3388
00000001403b4f59 mov      r8d, edx
00000001403b4f5c mov      ecx, 0x258
00000001403b4f61 shr      r8d, 6
00000001403b4f65 jmp      0x1403b4f9f
00000001403b4f67 imul     r8d, r14d, 0x7d
00000001403b4f6b mov      ebp, 0x51eb851f
00000001403b4f70 mov      eax, ebp
00000001403b4f72 lea      ecx, [r8 - 0x2faf08]
00000001403b4f79 mul      ecx
00000001403b4f7b lea      ecx, [r8 + 0x2faf08]
00000001403b4f82 mov      eax, ebp
00000001403b4f84 mov      esi, edx
00000001403b4f86 mov      ebp, 0x4e
00000001403b4f8b mul      ecx
00000001403b4f8d shr      esi, 7
00000001403b4f90 mov      eax, 0x24a6d0
00000001403b4f95 mov      r8d, edx
00000001403b4f98 mov      ecx, r12d
00000001403b4f9b shr      r8d, 7
00000001403b4f9f sub      esi, eax
00000001403b4fa1 mov      dword ptr [rsp + 0xa8], eax
00000001403b4fa8 mov      eax, 0x10624dd3
00000001403b4fad mul      esi
00000001403b4faf shr      edx, 6
00000001403b4fb2 imul     eax, edx, 0x3e8
00000001403b4fb8 lea      r12d, [rdx + 1]
00000001403b4fbc cmp      esi, eax
00000001403b4fbe mov      eax, 0x10624dd3
00000001403b4fc3 cmove    r12d, edx
00000001403b4fc7 sub      r8d, dword ptr [rsp + 0xa8]
00000001403b4fcf mul      r8d
00000001403b4fd2 shr      edx, 6
00000001403b4fd5 cmp      r12d, ebp
00000001403b4fd8 ja       0x1403b4fde
00000001403b4fda cmp      edx, ecx
00000001403b4fdc jae      0x1403b4fe8
00000001403b4fde xor      edi, edi
00000001403b4fe0 mov      sil, 1
00000001403b4fe3 xor      r9d, r9d
00000001403b4fe6 jmp      0x1403b4ff0
00000001403b4fe8 mov      sil, byte ptr [rsp + 0x98]
00000001403b4ff0 cmp      r12d, ecx
00000001403b4ff3 jae      0x1403b4ff9
00000001403b4ff5 mov      edi, ecx
00000001403b4ff7 jmp      0x1403b5000
00000001403b4ff9 cmp      r12d, ebp
00000001403b4ffc cmovbe   edi, r12d
00000001403b5000 cmp      edx, ebp
00000001403b5002 jbe      0x1403b5009
00000001403b5004 mov      r9d, ebp
00000001403b5007 jmp      0x1403b500f
00000001403b5009 cmp      edx, ecx
00000001403b500b cmovae   r9d, edx
00000001403b500f cmp      r11b, 1
00000001403b5013 jne      0x1403b502b
00000001403b5015 mov      eax, r9d
00000001403b5018 shr      edi, 3
00000001403b501b shr      eax, 3
00000001403b501e test     r9b, 7
00000001403b5022 lea      r9d, [rax + 1]
00000001403b5026 jne      0x1403b502b
00000001403b5028 mov      r9d, eax
00000001403b502b movzx    eax, r11b
00000001403b502f xor      r12d, r12d
00000001403b5032 lea      rdx, [rax + r15]
00000001403b5036 lea      r8, [rax + r13]
00000001403b503a mov      al, r11b
00000001403b503d add      al, al
00000001403b503f test     sil, sil
00000001403b5042 je       0x1403b504a
00000001403b5044 movzx    ecx, r12w
00000001403b5048 jmp      0x1403b5056
00000001403b504a movzx    ecx, r9w
00000001403b504e imul     ecx, ebx
00000001403b5051 add      cx, di
00000001403b5054 inc      al
00000001403b5056 inc      r11b
00000001403b5059 mov      byte ptr [rdx + r10], al
00000001403b505d mov      word ptr [r10 + r8*2], cx
00000001403b5062 cmp      r11b, 1
00000001403b5066 jbe      0x1403b4f12
00000001403b506c mov      rbx, qword ptr [rsp + 8]
00000001403b5071 mov      r8d, 0x8000
00000001403b5077 mov      r13, qword ptr [rsp + 0x18]
00000001403b507c mov      rax, qword ptr [rsp + 0x10]
00000001403b5081 mov      rcx, qword ptr [rsp]
00000001403b5085 mov      rsi, qword ptr [rsp + 0x28]
00000001403b508a mov      rbp, qword ptr [rsp + 0x30]
00000001403b508f mov      rdx, qword ptr [rsp + 0x20]
00000001403b5094 inc      rcx
00000001403b5097 add      rbx, 2
00000001403b509b add      rax, 4
00000001403b509f mov      qword ptr [rsp], rcx
00000001403b50a3 add      r13, 0x20
00000001403b50a7 mov      qword ptr [rsp + 8], rbx
00000001403b50ac sub      rdx, 1
00000001403b50b0 mov      qword ptr [rsp + 0x10], rax
00000001403b50b5 mov      qword ptr [rsp + 0x20], rdx
00000001403b50ba mov      qword ptr [rsp + 0x18], r13
00000001403b50bf jne      0x1403b4e26
00000001403b50c5 mov      r15, qword ptr [rsp + 0x90]
00000001403b50cd lea      rdx, [rsp + 0xa0]
00000001403b50d5 lea      rcx, [r10 + 0x7a2]
00000001403b50dc mov      r9d, 2
00000001403b50e2 movzx    eax, byte ptr [rdx]
00000001403b50e5 mov      r11d, 3
00000001403b50eb add      rax, 0xd4
00000001403b50f1 lea      rax, [rax + rax*2]
00000001403b50f5 lea      r8, [r10 + rax*2]
00000001403b50f9 cmp      byte ptr [rcx], r12b
00000001403b50fc je       0x1403b5105
00000001403b50fe mov      eax, 0x7ff
00000001403b5103 jmp      0x1403b510d
00000001403b5105 mov      rax, qword ptr [r15 + 0x18]
00000001403b5109 movzx    eax, word ptr [rax + 0x16]
00000001403b510d mov      word ptr [r8], ax
00000001403b5111 inc      rcx
00000001403b5114 add      r8, 2
00000001403b5118 sub      r11, 1
00000001403b511c jne      0x1403b50f9
00000001403b511e inc      rdx
00000001403b5121 sub      r9, 1
00000001403b5125 jne      0x1403b50e2
00000001403b5127 add      rsp, 0x48
00000001403b512b pop      r15
00000001403b512d pop      r14
00000001403b512f pop      r13
00000001403b5131 pop      r12
00000001403b5133 pop      rdi
00000001403b5134 pop      rsi
00000001403b5135 pop      rbp
00000001403b5136 pop      rbx
00000001403b5137 ret      