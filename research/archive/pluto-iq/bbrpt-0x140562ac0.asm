0000000140562ac0 mov      qword ptr [rsp + 8], rbx
0000000140562ac5 push     rdi
0000000140562ac6 sub      rsp, 0x20
0000000140562aca mov      rax, qword ptr [rcx]
0000000140562acd mov      rdi, rdx
0000000140562ad0 mov      ebx, 1
0000000140562ad5 mov      rax, qword ptr [rax]
0000000140562ad8 test     r8d, r8d
0000000140562adb je       0x140562ae7
0000000140562add cmp      r8d, ebx
0000000140562ae0 jne      0x140562b0b
0000000140562ae2 mov      ebx, 2
0000000140562ae7 mov      rax, qword ptr [rax + 0x20]
0000000140562aeb mov      edx, 0x3f0
0000000140562af0 call     qword ptr [rip + 0x121802]
0000000140562af6 mov      dword ptr [rdi], eax
0000000140562af8 shr      eax, 8
0000000140562afb and      eax, 3
0000000140562afe sub      ebx, eax
0000000140562b00 neg      ebx
0000000140562b02 sbb      eax, eax
0000000140562b04 and      eax, 0x97
0000000140562b09 jmp      0x140562b10
0000000140562b0b mov      eax, 0x96
0000000140562b10 mov      rbx, qword ptr [rsp + 0x30]
0000000140562b15 add      rsp, 0x20
0000000140562b19 pop      rdi
0000000140562b1a ret      