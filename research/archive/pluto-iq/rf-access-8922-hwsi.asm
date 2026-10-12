0000000140408964 mov      qword ptr [rsp + 8], rbx
0000000140408969 mov      qword ptr [rsp + 0x10], rbp
000000014040896e mov      qword ptr [rsp + 0x18], rsi
0000000140408973 push     rdi
0000000140408974 push     r12
0000000140408976 push     r14
0000000140408978 sub      rsp, 0x40
000000014040897c mov      esi, r9d
000000014040897f mov      ebp, r8d
0000000140408982 mov      ebx, edx
0000000140408984 mov      r14, rcx
0000000140408987 mov      rcx, qword ptr [rip + 0x517672]
000000014040898e lea      r12, [rip + 0x51766b]
0000000140408995 cmp      rcx, r12
0000000140408998 je       0x1404089ce
000000014040899a cmp      byte ptr [rcx + 0x1e9], 4
00000001404089a1 jb       0x1404089ce
00000001404089a3 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001404089ad je       0x1404089ce
00000001404089af mov      rcx, qword ptr [rcx + 0x1d8]
00000001404089b6 lea      r9, [rip + 0x248d83]
00000001404089bd mov      edx, 0x29
00000001404089c2 lea      r8, [rip + 0x2cda77]
00000001404089c9 call     0x140008874
00000001404089ce cmp      ebx, 1
00000001404089d1 jle      0x140408a19
00000001404089d3 mov      rcx, qword ptr [rip + 0x517626]
00000001404089da cmp      rcx, r12
00000001404089dd je       0x140408a2e
00000001404089df cmp      byte ptr [rcx + 0x169], 3
00000001404089e6 jb       0x140408a2e
00000001404089e8 test     dword ptr [rcx + 0x16c], 0x1000
00000001404089f2 je       0x140408a2e
00000001404089f4 mov      rcx, qword ptr [rcx + 0x158]
00000001404089fb lea      r9, [rip + 0x248d3e]
0000000140408a02 mov      edx, 0x2a
0000000140408a07 mov      dword ptr [rsp + 0x20], ebx
0000000140408a0b lea      r8, [rip + 0x2cda2e]
0000000140408a12 call     0x1400088d8
0000000140408a17 jmp      0x140408a2e
0000000140408a19 mov      edi, dword ptr [rsp + 0x80]
0000000140408a20 mov      rcx, r14
0000000140408a23 mov      edx, edi
0000000140408a25 call     0x140407a44
0000000140408a2a test     al, al
0000000140408a2c je       0x140408a32
0000000140408a2e xor      al, al
0000000140408a30 jmp      0x140408ab0
0000000140408a32 mov      ecx, ebx
0000000140408a34 movzx    ebp, bpl
0000000140408a38 shl      ecx, 0x1c
0000000140408a3b mov      eax, ebp
0000000140408a3d shl      eax, 0x14
0000000140408a40 and      esi, 0xfffff
0000000140408a46 or       ecx, eax
0000000140408a48 mov      dword ptr [rsp + 0x28], edi
0000000140408a4c or       ecx, esi
0000000140408a4e xor      r9d, r9d
0000000140408a51 mov      dword ptr [rsp + 0x20], ecx
0000000140408a55 or       r8d, 0xffffffff
0000000140408a59 mov      rcx, r14
0000000140408a5c mov      edx, 0x20370
0000000140408a61 call     0x140316730
0000000140408a66 mov      rcx, qword ptr [rip + 0x517593]
0000000140408a6d cmp      rcx, r12
0000000140408a70 je       0x140408aae
0000000140408a72 cmp      byte ptr [rcx + 0x1e9], 4
0000000140408a79 jb       0x140408aae
0000000140408a7b test     dword ptr [rcx + 0x1ec], 0x10000000
0000000140408a85 je       0x140408aae
0000000140408a87 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140408a8e lea      r8, [rip + 0x2cd9ab]
0000000140408a95 mov      dword ptr [rsp + 0x30], edi
0000000140408a99 mov      edx, 0x2b
0000000140408a9e mov      dword ptr [rsp + 0x28], esi
0000000140408aa2 mov      r9d, ebx
0000000140408aa5 mov      dword ptr [rsp + 0x20], ebp
0000000140408aa9 call     0x140008794
0000000140408aae mov      al, 1
0000000140408ab0 mov      rbx, qword ptr [rsp + 0x60]
0000000140408ab5 mov      rbp, qword ptr [rsp + 0x68]
0000000140408aba mov      rsi, qword ptr [rsp + 0x70]
0000000140408abf add      rsp, 0x40
0000000140408ac3 pop      r14
0000000140408ac5 pop      r12
0000000140408ac7 pop      rdi
0000000140408ac8 ret      