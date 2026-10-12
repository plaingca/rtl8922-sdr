000000014026d9cc mov      rax, rsp
000000014026d9cf mov      qword ptr [rax + 8], rbx
000000014026d9d3 mov      qword ptr [rax + 0x10], rsi
000000014026d9d7 mov      qword ptr [rax + 0x18], rdi
000000014026d9db mov      qword ptr [rax + 0x20], r13
000000014026d9df push     rbp
000000014026d9e0 push     r14
000000014026d9e2 push     r15
000000014026d9e4 lea      rbp, [rax - 0x47]
000000014026d9e8 sub      rsp, 0xa0
000000014026d9ef mov      r14, qword ptr [rcx + 8]
000000014026d9f3 xor      eax, eax
000000014026d9f5 mov      esi, r9d
000000014026d9f8 movzx    edi, r8b
000000014026d9fc mov      r15d, edx
000000014026d9ff mov      qword ptr [rbp - 1], rax
000000014026da03 mov      r13, rcx
000000014026da06 mov      qword ptr [rbp - 0x31], rax
000000014026da0a xorps    xmm0, xmm0
000000014026da0d mov      dword ptr [rbp - 0x29], eax
000000014026da10 mov      rcx, r14
000000014026da13 mov      r9b, 1
000000014026da16 xor      r8d, r8d
000000014026da19 xor      edx, edx
000000014026da1b movups   xmmword ptr [rbp - 0x11], xmm0
000000014026da1f call     0x14024b398
000000014026da24 lea      r8, [rip + 0x3ada65]
000000014026da2b lea      rbx, [rip + 0x6b25ce]
000000014026da32 test     eax, eax
000000014026da34 je       0x14026da79
000000014026da36 mov      rcx, qword ptr [rip + 0x6b25c3]
000000014026da3d cmp      rcx, rbx
000000014026da40 je       0x14026da79
000000014026da42 cmp      byte ptr [rcx + 0x169], 2
000000014026da49 jb       0x14026da79
000000014026da4b mov      eax, dword ptr [rcx + 0x16c]
000000014026da51 test     al, 1
000000014026da53 je       0x14026da79
000000014026da55 mov      rcx, qword ptr [rcx + 0x158]
000000014026da5c lea      r9, [rip + 0x3a092d]
000000014026da63 mov      qword ptr [rsp + 0x20], r8
000000014026da68 mov      edx, 0x96
000000014026da6d lea      r8, [rip + 0x42b2fc]
000000014026da74 call     0x14003c968
000000014026da79 cmp      byte ptr [r14 + 0x12d4], 0
000000014026da81 je       0x14026dae4
000000014026da83 mov      r9b, 1
000000014026da86 mov      edx, 1
000000014026da8b mov      r8b, r9b
000000014026da8e mov      rcx, r14
000000014026da91 call     0x14024b398
000000014026da96 test     eax, eax
000000014026da98 je       0x14026dae4
000000014026da9a mov      rcx, qword ptr [rip + 0x6b255f]
000000014026daa1 cmp      rcx, rbx
000000014026daa4 je       0x14026dae4
000000014026daa6 cmp      byte ptr [rcx + 0x169], 2
000000014026daad jb       0x14026dae4
000000014026daaf mov      eax, dword ptr [rcx + 0x16c]
000000014026dab5 test     al, 1
000000014026dab7 je       0x14026dae4
000000014026dab9 mov      rcx, qword ptr [rcx + 0x158]
000000014026dac0 lea      rax, [rip + 0x3ad9c9]
000000014026dac7 mov      edx, 0x97
000000014026dacc mov      qword ptr [rsp + 0x20], rax
000000014026dad1 lea      r9, [rip + 0x3a08b8]
000000014026dad8 lea      r8, [rip + 0x42b291]
000000014026dadf call     0x14003c968
000000014026dae4 mov      eax, 5
000000014026dae9 mov      bl, 3
000000014026daeb cmp      r15d, eax
000000014026daee jge      0x14026daf5
000000014026daf0 mov      dil, 1
000000014026daf3 jmp      0x14026db19
000000014026daf5 cmp      r15d, 0xf
000000014026daf9 jge      0x14026db00
000000014026dafb mov      dil, 2
000000014026dafe jmp      0x14026db19
000000014026db00 cmp      r15d, 0x19
000000014026db04 jge      0x14026db0b
000000014026db06 mov      dil, bl
000000014026db09 jmp      0x14026db19
000000014026db0b cmp      r15d, 0x1e
000000014026db0f jge      0x14026db16
000000014026db11 mov      dil, 4
000000014026db14 jmp      0x14026db19
000000014026db16 cmove    edi, eax
000000014026db19 cmp      esi, eax
000000014026db1b jge      0x14026db21
000000014026db1d mov      bl, 1
000000014026db1f jmp      0x14026db3f
000000014026db21 cmp      esi, 0xf
000000014026db24 jge      0x14026db2a
000000014026db26 mov      bl, 2
000000014026db28 jmp      0x14026db3f
000000014026db2a cmp      esi, 0x19
000000014026db2d jl       0x14026db3f
000000014026db2f cmp      esi, 0x1e
000000014026db32 jge      0x14026db38
000000014026db34 mov      bl, 4
000000014026db36 jmp      0x14026db3f
000000014026db38 movzx    ebx, byte ptr [rbp + 0x6f]
000000014026db3c cmove    ebx, eax
000000014026db3f mov      al, byte ptr [rbp + 0x77]
000000014026db42 mov      edx, r15d
000000014026db45 mov      rcx, qword ptr [r13 + 0x238]
000000014026db4c mov      byte ptr [rbp - 0x11], al
000000014026db4f mov      eax, dword ptr [rbp + 0x7f]
000000014026db52 mov      dword ptr [rbp - 0xd], eax
000000014026db55 mov      byte ptr [rbp - 0x10], dil
000000014026db59 call     0x140308570
000000014026db5e mov      rcx, qword ptr [r13 + 0x238]
000000014026db65 mov      edx, esi
000000014026db67 mov      dword ptr [rbp + 3], eax
000000014026db6a mov      dword ptr [rbp - 1], eax
000000014026db6d mov      dword ptr [rbp - 5], eax
000000014026db70 mov      dword ptr [rbp - 9], eax
000000014026db73 call     0x140308570
000000014026db78 movsd    xmm1, qword ptr [rbp - 1]
000000014026db7d lea      r8, [rbp - 0x21]
000000014026db81 mov      r9d, dword ptr [r14 + 0x17c0]
000000014026db88 lea      rdx, [rbp + 0xf]
000000014026db8c mov      rcx, qword ptr [r13 + 0x238]
000000014026db93 mov      dword ptr [rbp - 0x2d], eax
000000014026db96 movsd    xmm0, qword ptr [rbp - 0x31]
000000014026db9b movsd    qword ptr [rbp - 0x21], xmm0
000000014026dba0 movups   xmm0, xmmword ptr [rbp - 0x11]
000000014026dba4 mov      byte ptr [rbp - 0x29], bl
000000014026dba7 mov      eax, dword ptr [rbp - 0x29]
000000014026dbaa movaps   xmmword ptr [rbp + 0xf], xmm0
000000014026dbae mov      dword ptr [rbp - 0x19], eax
000000014026dbb1 movsd    qword ptr [rbp + 0x1f], xmm1
000000014026dbb6 call     0x1402ee354
000000014026dbbb mov      rcx, qword ptr [rip + 0x6b243e]
000000014026dbc2 lea      r13, [rip + 0x6b2437]
000000014026dbc9 cmp      rcx, r13
000000014026dbcc je       0x14026dc19
000000014026dbce cmp      byte ptr [rcx + 0x169], 4
000000014026dbd5 jb       0x14026dc19
000000014026dbd7 mov      eax, dword ptr [rcx + 0x16c]
000000014026dbdd test     al, 1
000000014026dbdf je       0x14026dc19
000000014026dbe1 mov      rcx, qword ptr [rcx + 0x158]
000000014026dbe8 lea      r9, [rip + 0x3a07a1]
000000014026dbef movzx    eax, bl
000000014026dbf2 mov      edx, 0x98
000000014026dbf7 mov      dword ptr [rsp + 0x38], eax
000000014026dbfb movzx    r8d, dil
000000014026dbff mov      dword ptr [rsp + 0x30], esi
000000014026dc03 mov      dword ptr [rsp + 0x28], r8d
000000014026dc08 lea      r8, [rip + 0x42b161]
000000014026dc0f mov      dword ptr [rsp + 0x20], r15d
000000014026dc14 call     0x14001c710
000000014026dc19 xor      r9d, r9d
000000014026dc1c xor      r8d, r8d
000000014026dc1f xor      edx, edx
000000014026dc21 mov      rcx, r14
000000014026dc24 call     0x14024b398
000000014026dc29 mov      ebx, eax
000000014026dc2b test     eax, eax
000000014026dc2d je       0x14026dc7c
000000014026dc2f mov      rcx, qword ptr [rip + 0x6b23ca]
000000014026dc36 cmp      rcx, r13
000000014026dc39 je       0x14026dc7c
000000014026dc3b cmp      byte ptr [rcx + 0x169], 2
000000014026dc42 jb       0x14026dc7c
000000014026dc44 mov      edx, dword ptr [rcx + 0x16c]
000000014026dc4a lea      rdi, [rip + 0x3ad83f]
000000014026dc51 test     dl, 1
000000014026dc54 je       0x14026dc83
000000014026dc56 mov      rcx, qword ptr [rcx + 0x158]
000000014026dc5d lea      r9, [rip + 0x3a072c]
000000014026dc64 mov      edx, 0x99
000000014026dc69 mov      qword ptr [rsp + 0x20], rdi
000000014026dc6e lea      r8, [rip + 0x42b0fb]
000000014026dc75 call     0x14003c968
000000014026dc7a jmp      0x14026dc83
000000014026dc7c lea      rdi, [rip + 0x3ad80d]
000000014026dc83 cmp      byte ptr [r14 + 0x12d4], 0
000000014026dc8b je       0x14026dce8
000000014026dc8d xor      r9d, r9d
000000014026dc90 mov      r8b, 1
000000014026dc93 mov      rcx, r14
000000014026dc96 lea      edx, [r9 + 1]
000000014026dc9a call     0x14024b398
000000014026dc9f mov      ebx, eax
000000014026dca1 test     eax, eax
000000014026dca3 je       0x14026dce8
000000014026dca5 mov      rcx, qword ptr [rip + 0x6b2354]
000000014026dcac cmp      rcx, r13
000000014026dcaf je       0x14026dce8
000000014026dcb1 cmp      byte ptr [rcx + 0x169], 2
000000014026dcb8 jb       0x14026dce8
000000014026dcba mov      eax, dword ptr [rcx + 0x16c]
000000014026dcc0 test     al, 1
000000014026dcc2 je       0x14026dce8
000000014026dcc4 mov      rcx, qword ptr [rcx + 0x158]
000000014026dccb lea      r9, [rip + 0x3a06be]
000000014026dcd2 mov      edx, 0x9a
000000014026dcd7 mov      qword ptr [rsp + 0x20], rdi
000000014026dcdc lea      r8, [rip + 0x42b08d]
000000014026dce3 call     0x14003c968
000000014026dce8 lea      r11, [rsp + 0xa0]
000000014026dcf0 mov      eax, ebx
000000014026dcf2 mov      rbx, qword ptr [r11 + 0x20]
000000014026dcf6 mov      rsi, qword ptr [r11 + 0x28]
000000014026dcfa mov      rdi, qword ptr [r11 + 0x30]
000000014026dcfe mov      r13, qword ptr [r11 + 0x38]
000000014026dd02 mov      rsp, r11
000000014026dd05 pop      r15
000000014026dd07 pop      r14
000000014026dd09 pop      rbp
000000014026dd0a ret      