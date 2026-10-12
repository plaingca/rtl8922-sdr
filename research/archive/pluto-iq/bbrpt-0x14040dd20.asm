000000014040dd20 mov      qword ptr [rsp + 8], rbp
000000014040dd25 mov      qword ptr [rsp + 0x10], rsi
000000014040dd2a mov      qword ptr [rsp + 0x18], rdi
000000014040dd2f push     r12
000000014040dd31 push     r13
000000014040dd33 push     r14
000000014040dd35 sub      rsp, 0x20
000000014040dd39 mov      rdi, rdx
000000014040dd3c mov      rsi, rcx
000000014040dd3f mov      rcx, qword ptr [rip + 0x5122ba]
000000014040dd46 lea      r12, [rip + 0x5122b3]
000000014040dd4d lea      r13, [rip + 0x2c870c]
000000014040dd54 cmp      rcx, r12
000000014040dd57 je       0x14040dd87
000000014040dd59 cmp      byte ptr [rcx + 0x169], 1
000000014040dd60 jb       0x14040dd87
000000014040dd62 mov      eax, dword ptr [rcx + 0x16c]
000000014040dd68 test     al, 8
000000014040dd6a je       0x14040dd87
000000014040dd6c mov      rcx, qword ptr [rcx + 0x158]
000000014040dd73 lea      r9, [rip + 0x243b76]
000000014040dd7a mov      edx, 0x8c
000000014040dd7f mov      r8, r13
000000014040dd82 call     0x140008874
000000014040dd87 test     rdi, rdi
000000014040dd8a jne      0x14040ddd0
000000014040dd8c mov      rcx, qword ptr [rip + 0x51226d]
000000014040dd93 cmp      rcx, r12
000000014040dd96 je       0x14040ddc6
000000014040dd98 cmp      byte ptr [rcx + 0x169], 2
000000014040dd9f jb       0x14040ddc6
000000014040dda1 mov      eax, dword ptr [rcx + 0x16c]
000000014040dda7 test     al, 8
000000014040dda9 je       0x14040ddc6
000000014040ddab mov      rcx, qword ptr [rcx + 0x158]
000000014040ddb2 lea      r9, [rip + 0x243b37]
000000014040ddb9 mov      edx, 0x8d
000000014040ddbe mov      r8, r13
000000014040ddc1 call     0x140008874
000000014040ddc6 mov      eax, 5
000000014040ddcb jmp      0x14040df5b
000000014040ddd0 mov      ecx, dword ptr [rdi + 8]
000000014040ddd3 mov      al, cl
000000014040ddd5 and      al, 1
000000014040ddd7 shr      ecx, 8
000000014040ddda mov      byte ptr [rsi + 0x5c3], al
000000014040dde0 movzx    r14d, cl
000000014040dde4 test     al, al
000000014040dde6 je       0x14040df0d
000000014040ddec mov      rcx, qword ptr [rip + 0x51220d]
000000014040ddf3 cmp      rcx, r12
000000014040ddf6 je       0x14040de26
000000014040ddf8 cmp      byte ptr [rcx + 0x169], 2
000000014040ddff jb       0x14040de26
000000014040de01 mov      eax, dword ptr [rcx + 0x16c]
000000014040de07 test     al, 8
000000014040de09 je       0x14040de26
000000014040de0b mov      rcx, qword ptr [rcx + 0x158]
000000014040de12 lea      r9, [rip + 0x243ad7]
000000014040de19 mov      edx, 0x8e
000000014040de1e mov      r8, r13
000000014040de21 call     0x140008874
000000014040de26 mov      r9d, dword ptr [rdi + 0xc]
000000014040de2a mov      ebp, dword ptr [rdi + 0x10]
000000014040de2d mov      edi, dword ptr [rdi + 0x14]
000000014040de30 mov      rcx, qword ptr [rip + 0x5121c9]
000000014040de37 cmp      rcx, r12
000000014040de3a je       0x14040df0d
000000014040de40 cmp      byte ptr [rcx + 0x169], 2
000000014040de47 jb       0x14040de67
000000014040de49 mov      eax, dword ptr [rcx + 0x16c]
000000014040de4f test     al, 8
000000014040de51 je       0x14040de67
000000014040de53 mov      rcx, qword ptr [rcx + 0x158]
000000014040de5a mov      edx, 0x8f
000000014040de5f mov      r8, r13
000000014040de62 call     0x140001bb0
000000014040de67 mov      rcx, qword ptr [rip + 0x512192]
000000014040de6e cmp      rcx, r12
000000014040de71 je       0x14040df0d
000000014040de77 cmp      byte ptr [rcx + 0x169], 2
000000014040de7e jb       0x14040dea1
000000014040de80 mov      eax, dword ptr [rcx + 0x16c]
000000014040de86 test     al, 8
000000014040de88 je       0x14040dea1
000000014040de8a mov      rcx, qword ptr [rcx + 0x158]
000000014040de91 mov      edx, 0x90
000000014040de96 mov      r9d, ebp
000000014040de99 mov      r8, r13
000000014040de9c call     0x140001bb0
000000014040dea1 mov      rcx, qword ptr [rip + 0x512158]
000000014040dea8 cmp      rcx, r12
000000014040deab je       0x14040df0d
000000014040dead cmp      byte ptr [rcx + 0x169], 2
000000014040deb4 jb       0x14040ded7
000000014040deb6 mov      eax, dword ptr [rcx + 0x16c]
000000014040debc test     al, 8
000000014040debe je       0x14040ded7
000000014040dec0 mov      rcx, qword ptr [rcx + 0x158]
000000014040dec7 mov      edx, 0x91
000000014040decc mov      r9d, edi
000000014040decf mov      r8, r13
000000014040ded2 call     0x140001bb0
000000014040ded7 mov      rcx, qword ptr [rip + 0x512122]
000000014040dede cmp      rcx, r12
000000014040dee1 je       0x14040df0d
000000014040dee3 cmp      byte ptr [rcx + 0x169], 2
000000014040deea jb       0x14040df0d
000000014040deec mov      eax, dword ptr [rcx + 0x16c]
000000014040def2 test     al, 8
000000014040def4 je       0x14040df0d
000000014040def6 mov      rcx, qword ptr [rcx + 0x158]
000000014040defd mov      edx, 0x92
000000014040df02 mov      r9d, r14d
000000014040df05 mov      r8, r13
000000014040df08 call     0x140001bb0
000000014040df0d cmp      byte ptr [rsi + 0x107], 2
000000014040df14 je       0x14040df52
000000014040df16 mov      rcx, qword ptr [rip + 0x5120e3]
000000014040df1d cmp      rcx, r12
000000014040df20 je       0x14040df59
000000014040df22 cmp      byte ptr [rcx + 0x169], 2
000000014040df29 jb       0x14040df59
000000014040df2b mov      eax, dword ptr [rcx + 0x16c]
000000014040df31 test     al, 8
000000014040df33 je       0x14040df59
000000014040df35 mov      rcx, qword ptr [rcx + 0x158]
000000014040df3c lea      r9, [rip + 0x2439ad]
000000014040df43 mov      edx, 0x93
000000014040df48 mov      r8, r13
000000014040df4b call     0x140008874
000000014040df50 jmp      0x14040df59
000000014040df52 mov      byte ptr [rsi + 0x107], 3
000000014040df59 xor      eax, eax
000000014040df5b mov      rbp, qword ptr [rsp + 0x40]
000000014040df60 mov      rsi, qword ptr [rsp + 0x48]
000000014040df65 mov      rdi, qword ptr [rsp + 0x50]
000000014040df6a add      rsp, 0x20
000000014040df6e pop      r14
000000014040df70 pop      r13
000000014040df72 pop      r12
000000014040df74 ret      