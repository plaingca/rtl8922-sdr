0000000140286058 mov      qword ptr [rsp + 0x18], rbx
000000014028605d push     rbp
000000014028605e push     rsi
000000014028605f push     rdi
0000000140286060 lea      rbp, [rsp - 0x80]
0000000140286065 sub      rsp, 0x180
000000014028606c mov      rax, qword ptr [rip + 0x6a13ed]
0000000140286073 xor      rax, rsp
0000000140286076 mov      qword ptr [rbp + 0x70], rax
000000014028607a mov      rsi, qword ptr [rcx + 0x230]
0000000140286081 mov      rbx, rdx
0000000140286084 mov      rdi, rcx
0000000140286087 xor      edx, edx
0000000140286089 lea      rcx, [rsp + 0x60]
000000014028608e mov      r8d, 0x10c
0000000140286094 call     0x1405f4640
0000000140286099 test     rbx, rbx
000000014028609c je       0x1402861b5
00000001402860a2 mov      r9d, 5
00000001402860a8 mov      byte ptr [rsp + 0x20], 1
00000001402860ad lea      r8, [rsp + 0x60]
00000001402860b2 mov      rdx, rbx
00000001402860b5 mov      rcx, rdi
00000001402860b8 call     0x140273e34
00000001402860bd and      dword ptr [rbp - 0x80], 0
00000001402860c1 lea      rcx, [rbp + 0x3a]
00000001402860c5 add      rbx, 0x36
00000001402860c9 mov      dword ptr [rsp + 0x68], 2
00000001402860d1 mov      edi, 6
00000001402860d6 mov      dword ptr [rsp + 0x7c], 1
00000001402860de mov      r8d, edi
00000001402860e1 mov      rdx, rbx
00000001402860e4 call     0x1400311e8
00000001402860e9 mov      r8d, edi
00000001402860ec lea      rcx, [rbp + 0x40]
00000001402860f0 mov      rdx, rbx
00000001402860f3 call     0x1400311e8
00000001402860f8 mov      r8d, edi
00000001402860fb lea      rcx, [rbp + 0x46]
00000001402860ff mov      rdx, rbx
0000000140286102 call     0x1400311e8
0000000140286107 mov      rax, qword ptr [rsi]
000000014028610a lea      rdx, [rsp + 0x60]
000000014028610f mov      rcx, rsi
0000000140286112 mov      rax, qword ptr [rax + 0x50]
0000000140286116 call     qword ptr [rip + 0x3fe1dc]
000000014028611c test     eax, eax
000000014028611e je       0x1402861ba
0000000140286124 mov      rcx, qword ptr [rip + 0x699ed5]
000000014028612b lea      rax, [rip + 0x699ece]
0000000140286132 cmp      rcx, rax
0000000140286135 je       0x1402861b5
0000000140286137 cmp      byte ptr [rcx + 0x169], 4
000000014028613e jb       0x1402861b5
0000000140286140 mov      eax, dword ptr [rcx + 0x16c]
0000000140286146 test     al, 1
0000000140286148 je       0x1402861b5
000000014028614a movzx    r8d, byte ptr [rbp + 0x45]
000000014028614f mov      edx, 0xa1
0000000140286154 movzx    r9d, byte ptr [rbp + 0x44]
0000000140286159 movzx    eax, word ptr [rbp + 0x38]
000000014028615d movzx    r10d, byte ptr [rbp + 0x43]
0000000140286162 movzx    r11d, byte ptr [rbp + 0x42]
0000000140286167 movzx    ebx, byte ptr [rbp + 0x41]
000000014028616b movzx    edi, byte ptr [rbp + 0x40]
000000014028616f mov      rcx, qword ptr [rcx + 0x158]
0000000140286176 mov      dword ptr [rsp + 0x58], eax
000000014028617a mov      dword ptr [rsp + 0x50], r8d
000000014028617f lea      r8, [rip + 0x39587a]
0000000140286186 mov      dword ptr [rsp + 0x48], r9d
000000014028618b lea      r9, [rip + 0x3881fe]
0000000140286192 mov      dword ptr [rsp + 0x40], r10d
0000000140286197 mov      dword ptr [rsp + 0x38], r11d
000000014028619c mov      dword ptr [rsp + 0x30], ebx
00000001402861a0 mov      dword ptr [rsp + 0x28], edi
00000001402861a4 mov      qword ptr [rsp + 0x20], r8
00000001402861a9 lea      r8, [rip + 0x412d30]
00000001402861b0 call     0x140085738
00000001402861b5 mov      eax, 1
00000001402861ba mov      rcx, qword ptr [rbp + 0x70]
00000001402861be xor      rcx, rsp
00000001402861c1 call     0x1405f45b0
00000001402861c6 mov      rbx, qword ptr [rsp + 0x1b0]
00000001402861ce add      rsp, 0x180
00000001402861d5 pop      rdi
00000001402861d6 pop      rsi
00000001402861d7 pop      rbp
00000001402861d8 ret      