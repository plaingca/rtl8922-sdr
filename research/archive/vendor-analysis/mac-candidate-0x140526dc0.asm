0000000140526dc0 mov      qword ptr [rsp + 8], rbx
0000000140526dc5 mov      qword ptr [rsp + 0x10], rsi
0000000140526dca push     rdi
0000000140526dcb sub      rsp, 0x20
0000000140526dcf mov      rax, qword ptr [rcx]
0000000140526dd2 mov      rbx, rdx
0000000140526dd5 mov      edx, 0x9660
0000000140526dda mov      rdi, rcx
0000000140526ddd mov      rsi, qword ptr [rax]
0000000140526de0 mov      rax, qword ptr [rsi + 0x20]
0000000140526de4 call     qword ptr [rip + 0x15d50e]
0000000140526dea mov      r8d, dword ptr [rbx]
0000000140526ded mov      edx, 0x9660
0000000140526df2 mov      ecx, r8d
0000000140526df5 mov      r9d, r8d
0000000140526df8 and      r9d, 0x1ffc0
0000000140526dff and      ecx, 0x1e
0000000140526e02 shl      r9d, 0xb
0000000140526e06 and      r8d, 1
0000000140526e0a or       r9d, ecx
0000000140526e0d and      eax, 0xfff00
0000000140526e12 shl      r9d, 3
0000000140526e16 mov      rcx, rdi
0000000140526e19 or       r8d, r9d
0000000140526e1c or       r8d, eax
0000000140526e1f mov      rax, qword ptr [rsi + 0x28]
0000000140526e23 call     qword ptr [rip + 0x15d4cf]
0000000140526e29 mov      eax, dword ptr [rbx]
0000000140526e2b test     al, 0x20
0000000140526e2d je       0x140526e44
0000000140526e2f mov      rax, qword ptr [rsi + 8]
0000000140526e33 mov      r8b, 1
0000000140526e36 mov      edx, 0x9668
0000000140526e3b mov      rcx, rdi
0000000140526e3e call     qword ptr [rip + 0x15d4b4]
0000000140526e44 mov      rbx, qword ptr [rsp + 0x30]
0000000140526e49 xor      eax, eax
0000000140526e4b mov      rsi, qword ptr [rsp + 0x38]
0000000140526e50 add      rsp, 0x20
0000000140526e54 pop      rdi
0000000140526e55 ret      