00000001403a7a1d int3     
00000001403a7a1e xchg     esi, eax
00000001403a7a1f add      byte ptr [rax], al
00000001403a7a21 add      ebx, eax
00000001403a7a23 int3     
00000001403a7a24 int3     
00000001403a7a25 int3     
00000001403a7a26 int3     
00000001403a7a27 int3     
00000001403a7a28 int3     
00000001403a7a29 int3     
00000001403a7a2a int3     
00000001403a7a2b int3     
00000001403a7a2c int3     
00000001403a7a2d int3     
00000001403a7a2e int3     
00000001403a7a2f int3     
00000001403a7a30 mov      rax, rsp
00000001403a7a33 mov      qword ptr [rax + 0x10], rbx
00000001403a7a37 mov      qword ptr [rax + 0x18], rsi
00000001403a7a3b mov      qword ptr [rax + 0x20], rdi
00000001403a7a3f mov      qword ptr [rax + 8], rcx
00000001403a7a43 push     rbp
00000001403a7a44 push     r14
00000001403a7a46 push     r15
00000001403a7a48 mov      rbp, rsp
00000001403a7a4b sub      rsp, 0x30
00000001403a7a4f mov      r14, qword ptr [rdx + 8]
00000001403a7a53 mov      rcx, rdx
00000001403a7a56 mov      rdi, rdx