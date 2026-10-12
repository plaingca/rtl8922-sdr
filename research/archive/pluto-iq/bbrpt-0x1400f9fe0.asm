00000001400f9fe0 mov      rax, rsp
00000001400f9fe3 mov      qword ptr [rax + 8], rbx
00000001400f9fe7 mov      qword ptr [rax + 0x10], rbp
00000001400f9feb mov      qword ptr [rax + 0x18], rsi
00000001400f9fef mov      qword ptr [rax + 0x20], rdi
00000001400f9ff3 push     r12
00000001400f9ff5 push     r14
00000001400f9ff7 push     r15
00000001400f9ff9 sub      rsp, 0x30
00000001400f9ffd mov      r14, qword ptr [rcx + 0x53f628]
00000001400fa004 mov      r12, rdx
00000001400fa007 mov      r15, rcx
00000001400fa00a mov      edx, 0x668
00000001400fa00f xor      sil, sil
00000001400fa012 lea      rcx, [r14 + 0xd80]
00000001400fa019 call     0x140031290
00000001400fa01e xor      bpl, bpl
00000001400fa021 movzx    eax, bpl
00000001400fa025 imul     rbx, rax, 0xcc
00000001400fa02c add      rbx, r12
00000001400fa02f mov      dl, byte ptr [rbx]
00000001400fa031 test     dl, dl
00000001400fa033 je       0x1400fa0d8
00000001400fa039 cmp      sil, 5
00000001400fa03d jae      0x1400fa0e7
00000001400fa043 movzx    eax, sil
00000001400fa047 imul     rdi, rax, 0x148
00000001400fa04e add      rdi, 0xd80
00000001400fa055 add      rdi, r14
00000001400fa058 mov      byte ptr [rdi], dl
00000001400fa05a mov      al, byte ptr [rbx + 1]
00000001400fa05d mov      byte ptr [rdi + 1], al
00000001400fa060 cmp      byte ptr [rbx + 2], 0
00000001400fa064 je       0x1400fa093
00000001400fa066 mov      al, byte ptr [rdi + 3]
00000001400fa069 mov      cl, al
00000001400fa06b mov      byte ptr [rdi + 2], 1
00000001400fa06f xor      cl, byte ptr [rbx + 3]
00000001400fa072 and      cl, 7
00000001400fa075 xor      cl, al
00000001400fa077 mov      byte ptr [rdi + 3], cl
00000001400fa07a mov      dl, cl
00000001400fa07c xor      dl, byte ptr [rbx + 3]
00000001400fa07f and      dl, 8
00000001400fa082 xor      dl, cl
00000001400fa084 mov      byte ptr [rdi + 3], dl
00000001400fa087 mov      al, dl
00000001400fa089 xor      al, byte ptr [rbx + 3]
00000001400fa08c and      al, 0x10
00000001400fa08e xor      al, dl
00000001400fa090 mov      byte ptr [rdi + 3], al
00000001400fa093 mov      rdx, rdi
00000001400fa096 mov      rcx, rbx
00000001400fa099 call     0x1400f991c
00000001400fa09e cmp      byte ptr [rbx + 0x96], 0
00000001400fa0a5 je       0x1400fa0b3
00000001400fa0a7 mov      al, byte ptr [rbx + 0x97]
00000001400fa0ad mov      byte ptr [rdi + 0x110], al
00000001400fa0b3 cmp      byte ptr [rbx + 0x98], 0
00000001400fa0ba je       0x1400fa0d5
00000001400fa0bc lea      r9, [rdi + 0x114]
00000001400fa0c3 mov      rdx, r14
00000001400fa0c6 lea      r8, [rbx + 0x9c]
00000001400fa0cd mov      rcx, r15
00000001400fa0d0 call     0x1400f9714
00000001400fa0d5 inc      sil
00000001400fa0d8 inc      bpl
00000001400fa0db cmp      bpl, 5
00000001400fa0df jb       0x1400fa021
00000001400fa0e5 jmp      0x1400fa135
00000001400fa0e7 mov      rcx, qword ptr [rip + 0x825f12]
00000001400fa0ee lea      rax, [rip + 0x825f0b]
00000001400fa0f5 cmp      rcx, rax
00000001400fa0f8 je       0x1400fa135
00000001400fa0fa cmp      byte ptr [rcx + 0x29], 3
00000001400fa0fe jb       0x1400fa135
00000001400fa100 test     dword ptr [rcx + 0x2c], 0x2000
00000001400fa107 je       0x1400fa135
00000001400fa109 mov      rcx, qword ptr [rcx + 0x18]
00000001400fa10d lea      r9, [rip + 0x50896c]
00000001400fa114 movzx    eax, sil
00000001400fa118 lea      r8, [rip + 0x599221]
00000001400fa11f mov      edx, 0x8f
00000001400fa124 mov      dword ptr [rsp + 0x28], 5
00000001400fa12c mov      dword ptr [rsp + 0x20], eax
00000001400fa130 call     0x140002b04
00000001400fa135 mov      rdx, r14
00000001400fa138 mov      rcx, r15
00000001400fa13b mov      rbx, qword ptr [rsp + 0x50]
00000001400fa140 mov      rbp, qword ptr [rsp + 0x58]
00000001400fa145 mov      rsi, qword ptr [rsp + 0x60]
00000001400fa14a mov      rdi, qword ptr [rsp + 0x68]
00000001400fa14f add      rsp, 0x30
00000001400fa153 pop      r15
00000001400fa155 pop      r14
00000001400fa157 pop      r12
00000001400fa159 jmp      0x1400f9228