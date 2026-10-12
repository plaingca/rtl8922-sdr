14041b9d4 mov rax, qword ptr [rdx + 0x40]
14041b9d8 mov r9, rcx
14041b9db mov qword ptr [rcx + 0x3b8], rax
14041b9e2 mov r10, rdx
14041b9e5 mov rax, qword ptr [rdx + 0x68]
14041b9e9 mov qword ptr [rcx + 0x3c0], rax
14041b9f0 mov eax, dword ptr [rdx]
14041b9f2 mov dword ptr [rcx + 0x3b0], eax
14041b9f8 mov rax, qword ptr [rdx + 8]
14041b9fc mov r8d, dword ptr [rax]
14041b9ff mov dword ptr [rcx + 0x3d0], r8d
14041ba06 mov rax, qword ptr [rdx + 0x10]
14041ba0a mov ecx, dword ptr [rax]
14041ba0c mov dword ptr [r9 + 0x3e0], ecx
14041ba13 mov rax, qword ptr [rdx + 8]
14041ba17 mov edx, dword ptr [rax + 4]
14041ba1a mov dword ptr [r9 + 0x3d4], edx
14041ba21 mov rax, qword ptr [r10 + 8]
14041ba25 mov ecx, dword ptr [rax + 8]
14041ba28 mov dword ptr [r9 + 0x3d8], ecx
14041ba2f lea eax, [rcx + rdx]
14041ba32 mov dword ptr [r9 + 0x3dc], eax
14041ba39 mov rax, qword ptr [r10 + 0x10]
14041ba3d mov edx, dword ptr [rax + 4]
14041ba40 mov dword ptr [r9 + 0x3e4], edx
14041ba47 mov rax, qword ptr [r10 + 0x10]
14041ba4b mov ecx, dword ptr [rax + 8]
14041ba4e mov dword ptr [r9 + 0x3e8], ecx
14041ba55 lea eax, [rcx + rdx]
14041ba58 mov dword ptr [r9 + 0x3ec], eax
14041ba5f mov rax, qword ptr [r10 + 0x30]
14041ba63 movzx ecx, word ptr [rax + 0xc]
14041ba67 mov word ptr [r9 + 0x3f0], cx
14041ba6f mov rax, qword ptr [r10 + 0x30]
14041ba73 movzx ecx, word ptr [rax + 0xe]
14041ba77 mov word ptr [r9 + 0x3f2], cx
14041ba7f mov rax, qword ptr [r10 + 0x30]
14041ba83 movzx ecx, word ptr [rax]
14041ba86 mov word ptr [r9 + 0x3f8], cx
14041ba8e mov rax, qword ptr [r10 + 0x38]
14041ba92 movzx ecx, word ptr [rax]
14041ba95 mov word ptr [r9 + 0x3fa], cx
14041ba9d mov rax, qword ptr [r10 + 0x30]
14041baa1 movzx ecx, word ptr [rax + 2]
14041baa5 mov word ptr [r9 + 0x3fc], cx
14041baad mov rax, qword ptr [r10 + 0x38]
14041bab1 movzx ecx, word ptr [rax + 2]
14041bab5 mov word ptr [r9 + 0x3fe], cx
14041babd mov rax, qword ptr [r10 + 0x18]
14041bac1 movzx ecx, word ptr [rax]
14041bac4 mov word ptr [r9 + 0x400], cx
14041bacc mov rax, qword ptr [r10 + 0x30]
14041bad0 movzx ecx, word ptr [rax + 0x18]
14041bad4 xor eax, eax
14041bad6 mov word ptr [r9 + 0x402], cx
14041bade mov rcx, qword ptr [r10 + 0x48]
14041bae2 test rcx, rcx
14041bae5 je 0x14041baeb
14041bae7 mov ecx, dword ptr [rcx]
14041bae9 jmp 0x14041baed
14041baeb mov ecx, eax
14041baed mov dword ptr [r9 + 0x3c8], ecx
14041baf4 mov rcx, qword ptr [r10 + 0x58]
14041baf8 test rcx, rcx
14041bafb je 0x14041baff
14041bafd mov eax, dword ptr [rcx]
14041baff mov dword ptr [r9 + 0x3cc], eax
14041bb06 xor eax, eax
14041bb08 ret 
14041bb09 int3 
14041bb0a int3 
14041bb0b int3 
14041bb0c int3 
14041bb0d int3 
14041bb0e int3 
14041bb0f int3 
14041bb10 mov rax, rsp
14041bb13 mov qword ptr [rax + 8], rbx
14041bb17 mov qword ptr [rax + 0x10], rbp
14041bb1b mov qword ptr [rax + 0x18], rsi
14041bb1f mov qword ptr [rax + 0x20], rdi
14041bb23 push r14
14041bb25 sub rsp, 0x30
14041bb29 mov edi, dword ptr [rcx + 0x10c0]
14041bb2f mov r14, rdx
14041bb32 mov rbp, qword ptr [rcx + 0x10b8]
14041bb39 mov eax, edi
14041bb3b sub eax, dword ptr [rcx + 0x10c4]
14041bb41 mov rbx, rcx
14041bb44 cmp r8d, eax
14041bb47 jbe 0x14041bb53
14041bb49 mov eax, 0x6f
14041bb4e jmp 0x14041bc90
14041bb53 mov rax, qword ptr [rcx + 0x18]
14041bb57 lea rsi, [rcx + 0x1320]
14041bb5e mov rcx, qword ptr [rcx + 8]
14041bb62 mov rdx, rsi
14041bb65 mov rax, qword ptr [rax + 0x108]
14041bb6c call qword ptr [rip + 0x268786]
14041bb72 mov edx, dword ptr [rbx + 0x10c4]
14041bb78 cmp edx, edi
14041bb7a jae 0x14041bba7
14041bb7c mov rcx, qword ptr [rbx + 0x18]
14041bb80 lea r9, [rip + 0x236ec9]
14041bb87 mov r8d, edi
14041bb8a sub r8d, edx
14041bb8d add rdx, rbp
14041bb90 mov rax, qword ptr [rcx + 0x128]
14041bb97 mov rcx, qword ptr [rbx + 8]
14041bb9b call qword ptr [rip + 0x268757]
14041bba1 add dword ptr [rbx + 0x10c4], eax
14041bba7 mov rax, qword ptr [rbx + 0x18]
14041bbab mov rdx, rsi
14041bbae mov rcx, qword ptr [rbx + 8]
14041bbb2 mov rax, qword ptr [rax + 0x110]
14041bbb9 call qword ptr [rip + 0x268739]
14041bbbf mov rax, qword ptr [rbx + 0x18]
14041bbc3 mov rdx, rsi
14041bbc6 mov rcx, qword ptr [rbx + 8]
14041bbca mov rax, qword ptr [rax + 0x108]
14041bbd1 call qword ptr [rip + 0x268721]
14041bbd7 mov edx, dword ptr [rbx + 0x10c4]
14041bbdd cmp edx, edi
14041bbdf jae 0x14041bc0c
14041bbe1 mov rcx, qword ptr [rbx + 0x18]
14041bbe5 lea r9, [rip + 0x236ea4]
14041bbec mov r8d, edi
14041bbef sub r8d, edx
14041bbf2 add rdx, rbp
14041bbf5 mov rax, qword ptr [rcx + 0x128]
14041bbfc mov rcx, qword ptr [rbx + 8]
14041bc00 call qword ptr [rip + 0x2686f2]
14041bc06 add dword ptr [rbx + 0x10c4], eax
14041bc0c mov rax, qword ptr [rbx + 0x18]
14041bc10 mov rdx, rsi
14041bc13 mov rcx, qword ptr [rbx + 8]
14041bc17 mov rax, qword ptr [rax + 0x110]
14041bc1e call qword ptr [rip + 0x2686d4]
14041bc24 mov rax, qword ptr [rbx + 0x18]
14041bc28 mov rdx, rsi