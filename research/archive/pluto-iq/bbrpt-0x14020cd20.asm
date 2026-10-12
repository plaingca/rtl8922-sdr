000000014020cd20 mov      qword ptr [rsp + 0x10], rbx
000000014020cd25 mov      qword ptr [rsp + 0x18], rbp
000000014020cd2a mov      qword ptr [rsp + 0x20], rsi
000000014020cd2f push     rdi
000000014020cd30 push     r12
000000014020cd32 push     r13
000000014020cd34 push     r14
000000014020cd36 push     r15
000000014020cd38 sub      rsp, 0x40
000000014020cd3c mov      r13, qword ptr [rcx + 0x798]
000000014020cd43 mov      rdi, rcx
000000014020cd46 movsxd   r15, r8d
000000014020cd49 mov      ebp, r9d
000000014020cd4c imul     rsi, r15, 0x538
000000014020cd53 lea      rcx, [r13 + 0x8a90]
000000014020cd5a mov      r12, rdx
000000014020cd5d add      rcx, rsi
000000014020cd60 mov      ebx, 1
000000014020cd65 mov      qword ptr [rsp + 0x70], rcx
000000014020cd6a mov      r14, qword ptr [rip + 0x71328f]
000000014020cd71 lea      rax, [rip + 0x713288]
000000014020cd78 lea      r9, [rip + 0x407d21]
000000014020cd7f cmp      r14, rax
000000014020cd82 je       0x14020cdea
000000014020cd84 cmp      byte ptr [r14 + 0x169], 4
000000014020cd8c jb       0x14020cdea
000000014020cd8e test     dword ptr [r14 + 0x16c], 0x200000
000000014020cd99 je       0x14020cdea
000000014020cd9b mov      ecx, ebp
000000014020cd9d call     0x14021310c
000000014020cda2 mov      rcx, qword ptr [r14 + 0x158]
000000014020cda9 lea      edx, [rbx + 0x37]
000000014020cdac mov      dword ptr [rsp + 0x38], ebp
000000014020cdb0 lea      r9, [rip + 0x4015d9]
000000014020cdb7 mov      qword ptr [rsp + 0x30], rax
000000014020cdbc lea      r8, [rip + 0x48bbdd]
000000014020cdc3 lea      rax, [rip + 0x407cd6]
000000014020cdca mov      dword ptr [rsp + 0x28], r15d
000000014020cdcf mov      qword ptr [rsp + 0x20], rax
000000014020cdd4 call     0x14020af00
000000014020cdd9 lea      rcx, [r13 + 0x8a90]
000000014020cde0 add      rcx, rsi
000000014020cde3 lea      r9, [rip + 0x407cb6]
000000014020cdea cmp      ebp, 0xb
000000014020cded ja       0x14020ce16
000000014020cdef mov      eax, 0x86c
000000014020cdf4 bt       eax, ebp
000000014020cdf7 jae      0x14020ce16
000000014020cdf9 mov      rax, qword ptr [rdi + 0x798]
000000014020ce00 mov      byte ptr [rax + rsi + 0x8f39], bl
000000014020ce07 mov      rax, qword ptr [rdi + 0x798]
000000014020ce0e mov      byte ptr [rax + rsi + 0x8f3a], bpl
000000014020ce16 mov      r8d, dword ptr [r13 + 0xe0a4]
000000014020ce1d cmp      r8d, ebx
000000014020ce20 jne      0x14020ce67
000000014020ce22 mov      rbp, qword ptr [rdi + 0x798]
000000014020ce29 mov      eax, dword ptr [rsi + rbp + 0x8a94]
000000014020ce30 cmp      eax, ebx
000000014020ce32 jne      0x14020ce41
000000014020ce34 mov      edx, r15d
000000014020ce37 mov      rcx, rdi
000000014020ce3a call     0x14020ca04
000000014020ce3f jmp      0x14020ce54
000000014020ce41 cmp      eax, 7
000000014020ce44 jne      0x14020ce63
000000014020ce46 mov      r8d, r15d
000000014020ce49 mov      rdx, r12
000000014020ce4c mov      rcx, rdi
000000014020ce4f call     0x140211f58
000000014020ce54 mov      ebx, eax
000000014020ce56 test     eax, eax
000000014020ce58 jne      0x14020ce84
000000014020ce5a and      dword ptr [rsi + rbp + 0x8a94], eax
000000014020ce61 jmp      0x14020ce84
000000014020ce63 xor      ebx, ebx
000000014020ce65 jmp      0x14020ce84
000000014020ce67 cmp      r8d, 2
000000014020ce6b jne      0x14020ce95
000000014020ce6d mov      rdx, rcx
000000014020ce70 mov      dword ptr [rsp + 0x20], ebp
000000014020ce74 mov      rcx, rdi
000000014020ce77 mov      r9d, r15d
000000014020ce7a mov      r8, r12
000000014020ce7d call     0x14020be1c
000000014020ce82 mov      ebx, eax
000000014020ce84 test     ebx, ebx
000000014020ce86 je       0x14020cf42
000000014020ce8c lea      rdi, [rip + 0x71316d]
000000014020ce93 jmp      0x14020ceea
000000014020ce95 mov      rcx, qword ptr [rip + 0x713164]
000000014020ce9c lea      rdi, [rip + 0x71315d]
000000014020cea3 cmp      rcx, rdi
000000014020cea6 je       0x14020cf42
000000014020ceac cmp      byte ptr [rcx + 0x169], 2
000000014020ceb3 jb       0x14020ceea
000000014020ceb5 test     dword ptr [rcx + 0x16c], 0x200000
000000014020cebf je       0x14020ceea
000000014020cec1 mov      rcx, qword ptr [rcx + 0x158]
000000014020cec8 mov      edx, 0x39
000000014020cecd mov      dword ptr [rsp + 0x28], r8d
000000014020ced2 lea      r8, [rip + 0x48bac7]
000000014020ced9 mov      qword ptr [rsp + 0x20], r9
000000014020cede lea      r9, [rip + 0x4014ab]
000000014020cee5 call     0x14003ca14
000000014020ceea mov      rcx, qword ptr [rip + 0x71310f]
000000014020cef1 cmp      rcx, rdi
000000014020cef4 je       0x14020cf42
000000014020cef6 cmp      byte ptr [rcx + 0x169], 2
000000014020cefd jb       0x14020cf42
000000014020ceff test     dword ptr [rcx + 0x16c], 0x200000
000000014020cf09 je       0x14020cf42
000000014020cf0b mov      rax, qword ptr [rsp + 0x70]
000000014020cf10 lea      r9, [rip + 0x401479]
000000014020cf17 mov      rcx, qword ptr [rcx + 0x158]
000000014020cf1e lea      r8, [rip + 0x48ba7b]
000000014020cf25 mov      edx, 0x3a
000000014020cf2a mov      eax, dword ptr [rax + 4]
000000014020cf2d mov      dword ptr [rsp + 0x28], eax
000000014020cf31 lea      rax, [rip + 0x407b68]
000000014020cf38 mov      qword ptr [rsp + 0x20], rax
000000014020cf3d call     0x14003ca14
000000014020cf42 lea      r11, [rsp + 0x40]
000000014020cf47 mov      eax, ebx
000000014020cf49 mov      rbx, qword ptr [r11 + 0x38]
000000014020cf4d mov      rbp, qword ptr [r11 + 0x40]
000000014020cf51 mov      rsi, qword ptr [r11 + 0x48]
000000014020cf55 mov      rsp, r11
000000014020cf58 pop      r15
000000014020cf5a pop      r14
000000014020cf5c pop      r13
000000014020cf5e pop      r12
000000014020cf60 pop      rdi
000000014020cf61 ret      