0000000140191824 mov      qword ptr [rsp + 8], rbx
0000000140191829 mov      qword ptr [rsp + 0x18], rbp
000000014019182e push     rsi
000000014019182f push     rdi
0000000140191830 push     r12
0000000140191832 push     r14
0000000140191834 push     r15
0000000140191836 sub      rsp, 0x20
000000014019183a cmp      byte ptr [rdx + 4], 0
000000014019183e mov      r12, r9
0000000140191841 mov      r15, r8
0000000140191844 mov      rsi, rdx
0000000140191847 jne      0x140191853
0000000140191849 mov      eax, 0xf
000000014019184e jmp      0x1401918e9
0000000140191853 mov      rbp, qword ptr [rsp + 0x70]
0000000140191858 lea      rdx, [rsp + 0x58]
000000014019185d and      qword ptr [rsp + 0x58], 0
0000000140191863 mov      ebx, dword ptr [rbp + 0x1c]
0000000140191866 lea      r8d, [rbx + 0x24]
000000014019186a call     0x140191900
000000014019186f mov      edi, eax
0000000140191871 test     eax, eax
0000000140191873 je       0x14019187c
0000000140191875 mov      edi, 3
000000014019187a jmp      0x1401918e7
000000014019187c mov      ecx, dword ptr [rbp + 4]
000000014019187f lea      r8d, [rbx + 0x10]
0000000140191883 mov      rax, qword ptr [rsp + 0x58]
0000000140191888 lea      rdx, [rbp + 0x10]
000000014019188c mov      dword ptr [rax + 0x10], ecx
000000014019188f mov      rcx, qword ptr [rsp + 0x58]
0000000140191894 add      rcx, 0x14
0000000140191898 call     0x1400311e8
000000014019189d lea      rdx, [rip + 0x47c25c]
00000001401918a4 lea      rcx, [rsi + 8]
00000001401918a8 call     0x140031478
00000001401918ad mov      r8, qword ptr [r15 + 8]
00000001401918b1 lea      rdx, [rip + 0x47c248]
00000001401918b8 mov      rax, qword ptr [rsp + 0x58]
00000001401918bd lea      rcx, [rsi + 8]
00000001401918c1 mov      qword ptr [rax], r15
00000001401918c4 mov      rax, qword ptr [rsp + 0x58]
00000001401918c9 mov      qword ptr [rax + 8], r8
00000001401918cd mov      rax, qword ptr [rsp + 0x58]
00000001401918d2 mov      qword ptr [r8], rax
00000001401918d5 mov      rax, qword ptr [rsp + 0x58]
00000001401918da mov      qword ptr [r15 + 8], rax
00000001401918de inc      dword ptr [r12]
00000001401918e2 call     0x140031684
00000001401918e7 mov      eax, edi
00000001401918e9 mov      rbx, qword ptr [rsp + 0x50]
00000001401918ee mov      rbp, qword ptr [rsp + 0x60]
00000001401918f3 add      rsp, 0x20
00000001401918f7 pop      r15
00000001401918f9 pop      r14
00000001401918fb pop      r12
00000001401918fd pop      rdi
00000001401918fe pop      rsi
00000001401918ff ret      