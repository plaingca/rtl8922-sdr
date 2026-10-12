000000014014ad30 mov      r11, rsp
000000014014ad33 mov      qword ptr [r11 + 8], rbx
000000014014ad37 mov      qword ptr [r11 + 0x10], rbp
000000014014ad3b mov      qword ptr [r11 + 0x18], rsi
000000014014ad3f push     rdi
000000014014ad40 sub      rsp, 0x40
000000014014ad44 mov      rdi, qword ptr [rcx]
000000014014ad47 mov      rbx, r9
000000014014ad4a mov      rsi, rcx
000000014014ad4d mov      rax, qword ptr [rdi + 0xaf3b8]
000000014014ad54 mov      rdx, qword ptr [rax]
000000014014ad57 cmp      byte ptr [rdx + 0xaf548], 0
000000014014ad5e jne      0x14014ae34
000000014014ad64 cmp      byte ptr [rdx + 0xaf549], 0
000000014014ad6b jne      0x14014ae34
000000014014ad71 cmp      byte ptr [rdx + 0x53e918], 0
000000014014ad78 jne      0x14014ae34
000000014014ad7e test     rbx, rbx
000000014014ad81 je       0x14014ae34
000000014014ad87 movzx    eax, byte ptr [rsp + 0x70]
000000014014ad8c imul     rbp, rax, 0x1dc0
000000014014ad93 cmp      dword ptr [r9 + 0x20], 0
000000014014ad98 jne      0x14014ae34
000000014014ad9e cmp      byte ptr [r9 + 0x26], 0
000000014014ada3 je       0x14014ae34
000000014014ada9 mov      rcx, qword ptr [rip + 0x7d5250]
000000014014adb0 lea      rax, [rip + 0x7d5249]
000000014014adb7 cmp      rcx, rax
000000014014adba je       0x14014adf5
000000014014adbc cmp      byte ptr [rcx + 0x29], 4
000000014014adc0 jb       0x14014adf5
000000014014adc2 test     dword ptr [rcx + 0x2c], 0x200
000000014014adc9 je       0x14014adf5
000000014014adcb movzx    r8d, word ptr [r9 + 0x14]
000000014014add0 mov      edx, 0x14
000000014014add5 mov      eax, dword ptr [r9 + 0x34]
000000014014add9 mov      r9d, dword ptr [r9 + 0x10]
000000014014addd mov      rcx, qword ptr [rcx + 0x18]
000000014014ade1 mov      dword ptr [rsp + 0x28], eax
000000014014ade5 mov      dword ptr [r11 - 0x28], r8d
000000014014ade9 lea      r8, [rip + 0x548d80]
000000014014adf0 call     0x140001c34
000000014014adf5 cmp      byte ptr [rbx + 0x25], 2
000000014014adf9 jne      0x14014ae01
000000014014adfb cmp      byte ptr [rsi + 0x40], 3
000000014014adff jne      0x14014ae34
000000014014ae01 and      dword ptr [rsp + 0x38], 0
000000014014ae06 lea      rdx, [rdi + 0x53f360]
000000014014ae0d and      qword ptr [rsp + 0x30], 0
000000014014ae13 mov      r9d, 0xc
000000014014ae19 mov      eax, dword ptr [rbx + 0x10]
000000014014ae1c add      rdx, rbp
000000014014ae1f mov      dword ptr [rsp + 0x28], eax
000000014014ae23 mov      rcx, rdi
000000014014ae26 mov      byte ptr [rsp + 0x20], 0
000000014014ae2b lea      r8d, [r9 - 7]
000000014014ae2f call     0x140116434
000000014014ae34 mov      rbx, qword ptr [rsp + 0x50]
000000014014ae39 mov      eax, 1
000000014014ae3e mov      rbp, qword ptr [rsp + 0x58]
000000014014ae43 mov      rsi, qword ptr [rsp + 0x60]
000000014014ae48 add      rsp, 0x40
000000014014ae4c pop      rdi
000000014014ae4d ret      