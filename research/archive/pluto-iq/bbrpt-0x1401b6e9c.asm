00000001401b6e9c mov      qword ptr [rsp + 8], rbx
00000001401b6ea1 push     rdi
00000001401b6ea2 sub      rsp, 0x40
00000001401b6ea6 mov      ecx, dword ptr [rdx + 8]
00000001401b6ea9 xor      ebx, ebx
00000001401b6eab mov      r11b, r8b
00000001401b6eae mov      r10d, ebx
00000001401b6eb1 lea      eax, [rcx - 1]
00000001401b6eb4 test     eax, 0xfffffff5
00000001401b6eb9 jne      0x1401b7063
00000001401b6ebf cmp      ecx, 3
00000001401b6ec2 je       0x1401b7063
00000001401b6ec8 test     r9, r9
00000001401b6ecb je       0x1401b7063
00000001401b6ed1 mov      ecx, dword ptr [r9 + 0x24]
00000001401b6ed5 test     ecx, ecx
00000001401b6ed7 je       0x1401b7063
00000001401b6edd cmp      ecx, 1
00000001401b6ee0 jne      0x1401b7002
00000001401b6ee6 test     r8b, r8b
00000001401b6ee9 je       0x1401b6f9b
00000001401b6eef movzx    r8d, byte ptr [rdx + 0x16c8]
00000001401b6ef7 cmp      r8b, 2
00000001401b6efb jb       0x1401b6f74
00000001401b6efd mov      rcx, qword ptr [rip + 0x7690fc]
00000001401b6f04 lea      rax, [rip + 0x7690f5]
00000001401b6f0b cmp      rcx, rax
00000001401b6f0e je       0x1401b7063
00000001401b6f14 cmp      byte ptr [rcx + 0x169], 2
00000001401b6f1b jb       0x1401b7063
00000001401b6f21 mov      eax, dword ptr [rcx + 0x16c]
00000001401b6f27 test     al, 1
00000001401b6f29 je       0x1401b7063
00000001401b6f2f movzx    eax, byte ptr [rdx + 0x15]
00000001401b6f33 lea      r9, [rip + 0x457456]
00000001401b6f3a mov      rcx, qword ptr [rcx + 0x158]
00000001401b6f41 mov      edx, 0xe2
00000001401b6f46 mov      dword ptr [rsp + 0x38], eax
00000001401b6f4a lea      rax, [rip + 0x45865f]
00000001401b6f51 mov      dword ptr [rsp + 0x30], 2
00000001401b6f59 mov      dword ptr [rsp + 0x28], r8d
00000001401b6f5e lea      r8, [rip + 0x4e122b]
00000001401b6f65 mov      qword ptr [rsp + 0x20], rax
00000001401b6f6a call     0x1400328d4
00000001401b6f6f jmp      0x1401b7063
00000001401b6f74 imul     rcx, r8, 0xa38
00000001401b6f7b mov      eax, dword ptr [rcx + rdx + 0x268]
00000001401b6f82 add      rdx, 0x258
00000001401b6f89 add      rdx, rcx
00000001401b6f8c cmp      eax, 2
00000001401b6f8f cmovne   rdx, rbx
00000001401b6f93 mov      rbx, rdx
00000001401b6f96 jmp      0x1401b7063
00000001401b6f9b mov      rcx, qword ptr [rip + 0x76905e]
00000001401b6fa2 lea      rax, [rip + 0x769057]
00000001401b6fa9 cmp      rcx, rax
00000001401b6fac je       0x1401b7063
00000001401b6fb2 cmp      byte ptr [rcx + 0x169], 2
00000001401b6fb9 jb       0x1401b7063
00000001401b6fbf mov      eax, dword ptr [rcx + 0x16c]
00000001401b6fc5 test     al, 1
00000001401b6fc7 je       0x1401b7063
00000001401b6fcd movzx    eax, byte ptr [rdx + 0x15]
00000001401b6fd1 lea      r9, [rip + 0x4573b8]
00000001401b6fd8 mov      rcx, qword ptr [rcx + 0x158]
00000001401b6fdf lea      r8, [rip + 0x4e11aa]
00000001401b6fe6 mov      dword ptr [rsp + 0x28], eax
00000001401b6fea mov      edx, 0xe3
00000001401b6fef lea      rax, [rip + 0x4585ba]
00000001401b6ff6 mov      qword ptr [rsp + 0x20], rax
00000001401b6ffb call     0x14003ca14
00000001401b7000 jmp      0x1401b7063
00000001401b7002 mov      dil, byte ptr [r9 + 0x28]
00000001401b7006 mov      r8b, bl
00000001401b7009 test     dil, dil
00000001401b700c je       0x1401b7063
00000001401b700e movzx    eax, r8b
00000001401b7012 mov      rdx, qword ptr [r9 + rax*8 + 0x30]
00000001401b7017 mov      rax, qword ptr [rdx + 0x18]
00000001401b701b cmp      dword ptr [rax + 0x10], 2
00000001401b701f jne      0x1401b7075
00000001401b7021 cmp      ecx, 2
00000001401b7024 je       0x1401b7051
00000001401b7026 cmp      ecx, 5
00000001401b7029 je       0x1401b7051
00000001401b702b lea      eax, [rcx - 3]
00000001401b702e test     eax, 0xfffffffc
00000001401b7033 jne      0x1401b7075
00000001401b7035 cmp      ecx, 5
00000001401b7038 je       0x1401b7075
00000001401b703a test     r10, r10
00000001401b703d jne      0x1401b7043
00000001401b703f mov      r10, qword ptr [rdx + 0x18]
00000001401b7043 test     r11b, r11b
00000001401b7046 jne      0x1401b707f
00000001401b7048 mov      rax, qword ptr [rdx + 0x18]
00000001401b704c cmp      r10, rax
00000001401b704f jmp      0x1401b705e
00000001401b7051 mov      dl, byte ptr [rdx + 0x1408]
00000001401b7057 test     r11b, r11b
00000001401b705a je       0x1401b7071
00000001401b705c test     dl, dl
00000001401b705e je       0x1401b7075
00000001401b7060 mov      rbx, rax
00000001401b7063 mov      rax, rbx
00000001401b7066 mov      rbx, qword ptr [rsp + 0x50]
00000001401b706b add      rsp, 0x40
00000001401b706f pop      rdi
00000001401b7070 ret      
00000001401b7071 test     dl, dl
00000001401b7073 je       0x1401b7060
00000001401b7075 inc      r8b
00000001401b7078 cmp      r8b, dil
00000001401b707b jb       0x1401b700e
00000001401b707d jmp      0x1401b7063
00000001401b707f mov      rbx, r10
00000001401b7082 jmp      0x1401b7063