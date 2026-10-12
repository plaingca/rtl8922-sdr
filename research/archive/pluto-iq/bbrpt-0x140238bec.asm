0000000140238bec mov      rax, rsp
0000000140238bef mov      qword ptr [rax + 8], rbx
0000000140238bf3 mov      qword ptr [rax + 0x10], rbp
0000000140238bf7 mov      qword ptr [rax + 0x18], rsi
0000000140238bfb mov      qword ptr [rax + 0x20], rdi
0000000140238bff push     r12
0000000140238c01 push     r14
0000000140238c03 push     r15
0000000140238c05 sub      rsp, 0x20
0000000140238c09 mov      rbx, rdx
0000000140238c0c mov      rdi, rcx
0000000140238c0f xor      esi, esi
0000000140238c11 mov      rcx, qword ptr [rip + 0x6e73e8]
0000000140238c18 lea      r14, [rip + 0x6e73e1]
0000000140238c1f lea      r9d, [rsi + 1]
0000000140238c23 lea      r15, [rip + 0x3d5766]
0000000140238c2a lea      r12, [rip + 0x45fe2f]
0000000140238c31 cmp      rcx, r14
0000000140238c34 je       0x140238c63
0000000140238c36 cmp      byte ptr [rcx + 0x169], 5
0000000140238c3d jb       0x140238c63
0000000140238c3f mov      eax, dword ptr [rcx + 0x16c]
0000000140238c45 test     r9b, al
0000000140238c48 je       0x140238c63
0000000140238c4a mov      rcx, qword ptr [rcx + 0x158]
0000000140238c51 lea      edx, [rsi + 0x34]
0000000140238c54 mov      r9, r15
0000000140238c57 mov      r8, r12
0000000140238c5a call     0x140008874
0000000140238c5f lea      r9d, [rsi + 1]
0000000140238c63 cmp      dword ptr [rbx + 4], 3
0000000140238c67 mov      ebp, dword ptr [rbx + 0x18]
0000000140238c6a setge    dl
0000000140238c6d cmp      ebp, r9d
0000000140238c70 sete     r8b
0000000140238c74 test     byte ptr [rbx + 0x96], 2
0000000140238c7b je       0x140238cbb
0000000140238c7d mov      rcx, qword ptr [rip + 0x6e737c]
0000000140238c84 cmp      rcx, r14
0000000140238c87 je       0x140238cda
0000000140238c89 cmp      byte ptr [rcx + 0x169], 4
0000000140238c90 jb       0x140238cda
0000000140238c92 mov      eax, dword ptr [rcx + 0x16c]
0000000140238c98 test     al, 0x10
0000000140238c9a je       0x140238cda
0000000140238c9c mov      rcx, qword ptr [rcx + 0x158]
0000000140238ca3 mov      edx, 0x35
0000000140238ca8 mov      r9, r15
0000000140238cab mov      r8, r12
0000000140238cae call     0x140008874
0000000140238cb3 mov      r9d, 1
0000000140238cb9 jmp      0x140238cda
0000000140238cbb mov      r9b, byte ptr [rbx + 0x94]
0000000140238cc2 mov      rcx, qword ptr [rdi + 0x8d08]
0000000140238cc9 call     0x14010b7f0
0000000140238cce test     eax, eax
0000000140238cd0 mov      r9d, 1
0000000140238cd6 cmovne   esi, r9d
0000000140238cda test     byte ptr [rbx + 0x96], 4
0000000140238ce1 je       0x140238d1b
0000000140238ce3 mov      rcx, qword ptr [rip + 0x6e7316]
0000000140238cea cmp      rcx, r14
0000000140238ced je       0x140238d2b
0000000140238cef cmp      byte ptr [rcx + 0x169], 4
0000000140238cf6 jb       0x140238d2b
0000000140238cf8 mov      eax, dword ptr [rcx + 0x16c]
0000000140238cfe test     al, 0x10
0000000140238d00 je       0x140238d2b
0000000140238d02 mov      rcx, qword ptr [rcx + 0x158]
0000000140238d09 mov      edx, 0x36
0000000140238d0e mov      r9, r15
0000000140238d11 mov      r8, r12
0000000140238d14 call     0x140008874
0000000140238d19 jmp      0x140238d2b
0000000140238d1b cmp      ebp, r9d
0000000140238d1e jne      0x140238d2b
0000000140238d20 mov      rdx, rbx
0000000140238d23 mov      rcx, rdi
0000000140238d26 call     0x1402379d8
0000000140238d2b test     byte ptr [rbx + 0x96], 8
0000000140238d32 je       0x140238d6c
0000000140238d34 mov      rcx, qword ptr [rip + 0x6e72c5]
0000000140238d3b cmp      rcx, r14
0000000140238d3e je       0x140238dae
0000000140238d40 cmp      byte ptr [rcx + 0x169], 4
0000000140238d47 jb       0x140238d77
0000000140238d49 mov      eax, dword ptr [rcx + 0x16c]
0000000140238d4f test     al, 0x10
0000000140238d51 je       0x140238d77
0000000140238d53 mov      rcx, qword ptr [rcx + 0x158]
0000000140238d5a mov      edx, 0x37
0000000140238d5f mov      r9, r15
0000000140238d62 mov      r8, r12
0000000140238d65 call     0x140008874
0000000140238d6a jmp      0x140238d77
0000000140238d6c mov      rdx, rbx
0000000140238d6f mov      rcx, rdi
0000000140238d72 call     0x140237bbc
0000000140238d77 mov      rcx, qword ptr [rip + 0x6e7282]
0000000140238d7e cmp      rcx, r14
0000000140238d81 je       0x140238dae
0000000140238d83 cmp      byte ptr [rcx + 0x169], 5
0000000140238d8a jb       0x140238dae
0000000140238d8c mov      edx, dword ptr [rcx + 0x16c]
0000000140238d92 test     dl, 1
0000000140238d95 je       0x140238dae
0000000140238d97 mov      rcx, qword ptr [rcx + 0x158]
0000000140238d9e mov      edx, 0x38
0000000140238da3 mov      r9, r15
0000000140238da6 mov      r8, r12
0000000140238da9 call     0x140008874
0000000140238dae mov      rbx, qword ptr [rsp + 0x40]
0000000140238db3 mov      eax, esi
0000000140238db5 mov      rsi, qword ptr [rsp + 0x50]
0000000140238dba mov      rbp, qword ptr [rsp + 0x48]
0000000140238dbf mov      rdi, qword ptr [rsp + 0x58]
0000000140238dc4 add      rsp, 0x20
0000000140238dc8 pop      r15
0000000140238dca pop      r14
0000000140238dcc pop      r12
0000000140238dce ret      