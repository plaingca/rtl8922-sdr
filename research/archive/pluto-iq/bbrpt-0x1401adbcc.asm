00000001401adbcc mov      r11, rsp
00000001401adbcf mov      qword ptr [r11 + 8], rbx
00000001401adbd3 mov      qword ptr [r11 + 0x10], rbp
00000001401adbd7 mov      qword ptr [r11 + 0x18], rsi
00000001401adbdb push     rdi
00000001401adbdc push     r12
00000001401adbde push     r13
00000001401adbe0 push     r14
00000001401adbe2 push     r15
00000001401adbe4 sub      rsp, 0x60
00000001401adbe8 mov      rdi, qword ptr [rsp + 0xb8]
00000001401adbf0 xor      ebx, ebx
00000001401adbf2 mov      r12, r9
00000001401adbf5 mov      r10, r8
00000001401adbf8 mov      r15, rdx
00000001401adbfb mov      rbp, rcx
00000001401adbfe test     rdi, rdi
00000001401adc01 jne      0x1401adc62
00000001401adc03 mov      rcx, qword ptr [rip + 0x7723f6]
00000001401adc0a lea      rax, [rip + 0x7723ef]
00000001401adc11 cmp      rcx, rax
00000001401adc14 je       0x1401add86
00000001401adc1a cmp      byte ptr [rcx + 0x169], 2
00000001401adc21 jb       0x1401add86
00000001401adc27 mov      eax, dword ptr [rcx + 0x16c]
00000001401adc2d test     al, 1
00000001401adc2f je       0x1401add86
00000001401adc35 mov      rcx, qword ptr [rcx + 0x158]
00000001401adc3c lea      rax, [rip + 0x46145d]
00000001401adc43 lea      edx, [rdi + 0x5f]
00000001401adc46 mov      qword ptr [r11 - 0x68], rax
00000001401adc4a lea      r9, [rip + 0x46073f]
00000001401adc51 lea      r8, [rip + 0x4ea538]
00000001401adc58 call     0x14003c968
00000001401adc5d jmp      0x1401add86
00000001401adc62 cmp      byte ptr [rdi + 0x28], bl
00000001401adc65 jne      0x1401adc6e
00000001401adc67 mov      eax, 0xffff
00000001401adc6c jmp      0x1401adc76
00000001401adc6e mov      rax, qword ptr [rdi + 0x30]
00000001401adc72 movzx    eax, word ptr [rax + 0x2c]
00000001401adc76 mov      r14b, byte ptr [rsp + 0xc0]
00000001401adc7e mov      r8, r12
00000001401adc81 mov      r13, qword ptr [rsp + 0xb0]
00000001401adc89 mov      rdx, r10
00000001401adc8c mov      r9d, dword ptr [rdi + 0x20]
00000001401adc90 mov      byte ptr [rsp + 0x30], r14b
00000001401adc95 mov      qword ptr [rsp + 0x28], r13
00000001401adc9a mov      word ptr [rsp + 0x20], ax
00000001401adc9f call     0x1401b2cd4
00000001401adca4 mov      rsi, rax
00000001401adca7 test     rax, rax
00000001401adcaa jne      0x1401add03
00000001401adcac mov      rcx, qword ptr [rip + 0x77234d]
00000001401adcb3 lea      rax, [rip + 0x772346]
00000001401adcba cmp      rcx, rax
00000001401adcbd je       0x1401adcfb
00000001401adcbf cmp      byte ptr [rcx + 0x169], 2
00000001401adcc6 jb       0x1401adcfb
00000001401adcc8 mov      eax, dword ptr [rcx + 0x16c]
00000001401adcce test     al, 1
00000001401adcd0 je       0x1401adcfb
00000001401adcd2 mov      rcx, qword ptr [rcx + 0x158]
00000001401adcd9 lea      rax, [rip + 0x4613c0]
00000001401adce0 lea      edx, [rsi + 0x60]
00000001401adce3 mov      qword ptr [rsp + 0x20], rax
00000001401adce8 lea      r9, [rip + 0x4606a1]
00000001401adcef lea      r8, [rip + 0x4ea49a]
00000001401adcf6 call     0x14003c968
00000001401adcfb mov      rbx, rsi
00000001401adcfe jmp      0x1401add86
00000001401add03 cmp      qword ptr [rax + 0x20], rdi
00000001401add07 je       0x1401add14
00000001401add09 mov      rdx, rsi
00000001401add0c mov      rcx, rdi
00000001401add0f call     0x1401b7534
00000001401add14 cmp      byte ptr [rsi + 0x29], bl
00000001401add17 jne      0x1401add93
00000001401add19 mov      r9, rsi
00000001401add1c mov      byte ptr [rsp + 0x20], r14b
00000001401add21 mov      r8, r13
00000001401add24 mov      rdx, r12
00000001401add27 mov      rcx, rbp
00000001401add2a call     0x1401ade48
00000001401add2f test     eax, eax
00000001401add31 je       0x1401add93
00000001401add33 mov      rcx, qword ptr [rip + 0x7722c6]
00000001401add3a lea      rax, [rip + 0x7722bf]
00000001401add41 cmp      rcx, rax
00000001401add44 je       0x1401add78
00000001401add46 cmp      byte ptr [rcx + 0x169], 2
00000001401add4d jb       0x1401add78
00000001401add4f mov      eax, dword ptr [rcx + 0x16c]
00000001401add55 test     al, 1
00000001401add57 je       0x1401add78
00000001401add59 mov      rcx, qword ptr [rcx + 0x158]
00000001401add60 lea      r9, [rip + 0x460629]
00000001401add67 mov      edx, 0x61
00000001401add6c lea      r8, [rip + 0x4ea41d]
00000001401add73 call     0x140008874
00000001401add78 mov      r8b, r14b
00000001401add7b mov      rdx, rsi
00000001401add7e mov      rcx, rbp
00000001401add81 call     0x1401ae0cc
00000001401add86 mov      qword ptr [r15], rbx
00000001401add89 mov      eax, 1
00000001401add8e jmp      0x1401ade29
00000001401add93 mov      rcx, qword ptr [rip + 0x772266]
00000001401add9a lea      rax, [rip + 0x77225f]
00000001401adda1 cmp      rcx, rax
00000001401adda4 je       0x1401ade24
00000001401adda6 cmp      byte ptr [rcx + 0x169], 4
00000001401addad jb       0x1401ade24
00000001401addaf mov      eax, dword ptr [rcx + 0x16c]
00000001401addb5 test     al, 1
00000001401addb7 je       0x1401ade24
00000001401addb9 movzx    eax, byte ptr [rsi + 0x3b]
00000001401addbd mov      edx, 0x62
00000001401addc2 movzx    r8d, byte ptr [rsi + 0x3a]
00000001401addc7 movzx    r9d, byte ptr [rsi + 0x39]
00000001401addcc movzx    r10d, byte ptr [rsi + 0x38]
00000001401addd1 movzx    r11d, byte ptr [rsi + 0x37]
00000001401addd6 movzx    ebx, byte ptr [rsi + 0x36]
00000001401addda movzx    edi, word ptr [rsi + 0x2c]
00000001401addde mov      rcx, qword ptr [rcx + 0x158]
00000001401adde5 mov      dword ptr [rsp + 0x58], eax
00000001401adde9 lea      rax, [rip + 0x4612b0]
00000001401addf0 mov      dword ptr [rsp + 0x50], r8d
00000001401addf5 lea      r8, [rip + 0x4ea394]
00000001401addfc mov      dword ptr [rsp + 0x48], r9d
00000001401ade01 lea      r9, [rip + 0x460588]
00000001401ade08 mov      dword ptr [rsp + 0x40], r10d
00000001401ade0d mov      dword ptr [rsp + 0x38], r11d
00000001401ade12 mov      dword ptr [rsp + 0x30], ebx
00000001401ade16 mov      dword ptr [rsp + 0x28], edi
00000001401ade1a mov      qword ptr [rsp + 0x20], rax
00000001401ade1f call     0x140085738
00000001401ade24 mov      qword ptr [r15], rsi
00000001401ade27 xor      eax, eax
00000001401ade29 lea      r11, [rsp + 0x60]
00000001401ade2e mov      rbx, qword ptr [r11 + 0x30]
00000001401ade32 mov      rbp, qword ptr [r11 + 0x38]
00000001401ade36 mov      rsi, qword ptr [r11 + 0x40]
00000001401ade3a mov      rsp, r11
00000001401ade3d pop      r15
00000001401ade3f pop      r14
00000001401ade41 pop      r13
00000001401ade43 pop      r12
00000001401ade45 pop      rdi
00000001401ade46 ret      