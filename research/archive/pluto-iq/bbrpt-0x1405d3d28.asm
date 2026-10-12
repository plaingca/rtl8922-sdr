00000001405d3d28 mov      qword ptr [rsp + 0x18], rbx
00000001405d3d2d push     rbp
00000001405d3d2e push     rsi
00000001405d3d2f push     rdi
00000001405d3d30 push     r12
00000001405d3d32 push     r13
00000001405d3d34 push     r14
00000001405d3d36 push     r15
00000001405d3d38 lea      rbp, [rsp - 0xa0]
00000001405d3d40 sub      rsp, 0x1a0
00000001405d3d47 mov      rax, qword ptr [rip + 0x353712]
00000001405d3d4e xor      rax, rsp
00000001405d3d51 mov      qword ptr [rbp + 0x90], rax
00000001405d3d58 mov      rbx, rdx
00000001405d3d5b mov      qword ptr [rsp + 0x60], rdx
00000001405d3d60 mov      r15, rcx
00000001405d3d63 mov      qword ptr [rsp + 0x40], rcx
00000001405d3d68 xor      edx, edx
00000001405d3d6a lea      rcx, [rbp - 0x70]
00000001405d3d6e mov      r8d, 0x100
00000001405d3d74 call     0x1405f4640
00000001405d3d79 test     r15, r15
00000001405d3d7c je       0x1405d4173
00000001405d3d82 test     rbx, rbx
00000001405d3d85 je       0x1405d4173
00000001405d3d8b mov      rcx, qword ptr [rip + 0x34c26e]
00000001405d3d92 lea      r12, [rip + 0x34c267]
00000001405d3d99 mov      r13d, 0x200
00000001405d3d9f cmp      rcx, r12
00000001405d3da2 je       0x1405d3ee3
00000001405d3da8 cmp      byte ptr [rcx + 0x29], 4
00000001405d3dac jb       0x1405d3dc9
00000001405d3dae test     dword ptr [rcx + 0x2c], r13d
00000001405d3db2 je       0x1405d3dc9
00000001405d3db4 mov      rcx, qword ptr [rcx + 0x18]
00000001405d3db8 lea      r8, [rip + 0x332541]
00000001405d3dbf mov      edx, 0x49
00000001405d3dc4 call     0x140001b88
00000001405d3dc9 mov      rcx, qword ptr [rip + 0x34c230]
00000001405d3dd0 cmp      rcx, r12
00000001405d3dd3 je       0x1405d3ee3
00000001405d3dd9 cmp      byte ptr [rcx + 0x29], 4
00000001405d3ddd jb       0x1405d3dfa
00000001405d3ddf test     dword ptr [rcx + 0x2c], r13d
00000001405d3de3 je       0x1405d3dfa
00000001405d3de5 mov      rcx, qword ptr [rcx + 0x18]
00000001405d3de9 lea      r8, [rip + 0x332510]
00000001405d3df0 mov      edx, 0x4a
00000001405d3df5 call     0x140001b88
00000001405d3dfa mov      rdi, qword ptr [rip + 0x34c1ff]
00000001405d3e01 cmp      rdi, r12
00000001405d3e04 je       0x1405d3ee3
00000001405d3e0a cmp      byte ptr [rdi + 0x29], 4
00000001405d3e0e jb       0x1405d3e3d
00000001405d3e10 test     dword ptr [rdi + 0x2c], r13d
00000001405d3e14 je       0x1405d3e3d
00000001405d3e16 mov      cl, byte ptr [rbx + 0x4c]
00000001405d3e19 call     0x1405d1a0c
00000001405d3e1e mov      rcx, qword ptr [rdi + 0x18]
00000001405d3e22 lea      r8, [rip + 0x3324d7]
00000001405d3e29 mov      r9, rax
00000001405d3e2c mov      edx, 0x4b
00000001405d3e31 mov      eax, dword ptr [rbx + 0x4c]
00000001405d3e34 mov      dword ptr [rsp + 0x20], eax
00000001405d3e38 call     0x1400088d8
00000001405d3e3d mov      rcx, qword ptr [rip + 0x34c1bc]
00000001405d3e44 cmp      rcx, r12
00000001405d3e47 je       0x1405d3ee3
00000001405d3e4d cmp      byte ptr [rcx + 0x29], 4
00000001405d3e51 jb       0x1405d3e73
00000001405d3e53 test     dword ptr [rcx + 0x2c], r13d
00000001405d3e57 je       0x1405d3e73
00000001405d3e59 movzx    r9d, byte ptr [rbx + 0x40]
00000001405d3e5e lea      r8, [rip + 0x33249b]
00000001405d3e65 mov      rcx, qword ptr [rcx + 0x18]
00000001405d3e69 mov      edx, 0x4c
00000001405d3e6e call     0x140001bb0
00000001405d3e73 mov      rcx, qword ptr [rip + 0x34c186]
00000001405d3e7a cmp      rcx, r12
00000001405d3e7d je       0x1405d3ee3
00000001405d3e7f cmp      byte ptr [rcx + 0x29], 4
00000001405d3e83 jb       0x1405d3ea4
00000001405d3e85 test     dword ptr [rcx + 0x2c], r13d
00000001405d3e89 je       0x1405d3ea4
00000001405d3e8b mov      r9d, dword ptr [rbx + 0x58]
00000001405d3e8f lea      r8, [rip + 0x33246a]
00000001405d3e96 mov      rcx, qword ptr [rcx + 0x18]
00000001405d3e9a mov      edx, 0x4d
00000001405d3e9f call     0x140001bb0
00000001405d3ea4 mov      rdi, qword ptr [rip + 0x34c155]
00000001405d3eab cmp      rdi, r12
00000001405d3eae je       0x1405d3ee3
00000001405d3eb0 cmp      byte ptr [rdi + 0x29], 4
00000001405d3eb4 jb       0x1405d3ee3
00000001405d3eb6 test     dword ptr [rdi + 0x2c], r13d
00000001405d3eba je       0x1405d3ee3
00000001405d3ebc mov      cl, byte ptr [rbx + 0x44]
00000001405d3ebf call     0x1405d4b40
00000001405d3ec4 mov      rcx, qword ptr [rdi + 0x18]
00000001405d3ec8 lea      r8, [rip + 0x332431]
00000001405d3ecf mov      r9, rax
00000001405d3ed2 mov      edx, 0x4e
00000001405d3ed7 mov      eax, dword ptr [rbx + 0x44]
00000001405d3eda mov      dword ptr [rsp + 0x20], eax
00000001405d3ede call     0x1400088d8
00000001405d3ee3 mov      eax, dword ptr [rbx + 0x58]
00000001405d3ee6 mov      rdi, qword ptr [r15 + 0x18]
00000001405d3eea mov      dword ptr [r15 + 0x14], eax
00000001405d3eee mov      al, byte ptr [rbx + 0x44]
00000001405d3ef1 mov      byte ptr [r15 + 0x11], al
00000001405d3ef5 mov      al, byte ptr [rbx + 0x40]
00000001405d3ef8 mov      byte ptr [r15 + 0x10], al
00000001405d3efc mov      al, byte ptr [rbx + 0x4c]
00000001405d3eff mov      byte ptr [r15 + 0x12], al
00000001405d3f03 test     rdi, rdi
00000001405d3f06 je       0x1405d401d
00000001405d3f0c and      dword ptr [rdi], 0
00000001405d3f0f mov      eax, dword ptr [rbx + 0x60]
00000001405d3f12 test     eax, eax
00000001405d3f14 je       0x1405d401d
00000001405d3f1a xor      esi, esi
00000001405d3f1c mov      qword ptr [rsp + 0x38], rax
00000001405d3f21 mov      r14, qword ptr [rbx + 0x68]
00000001405d3f25 mov      qword ptr [rsp + 0x50], r14
00000001405d3f2a mov      ecx, dword ptr [rsi + r14]
00000001405d3f2e call     0x1405cc378
00000001405d3f33 mov      r8d, eax
00000001405d3f36 mov      dword ptr [rsp + 0x30], eax
00000001405d3f3a mov      r10, qword ptr [rip + 0x34c0bf]
00000001405d3f41 cmp      r10, r12
00000001405d3f44 je       0x1405d3f70
00000001405d3f46 cmp      byte ptr [r10 + 0x29], 4
00000001405d3f4b jb       0x1405d3f70
00000001405d3f4d test     dword ptr [r10 + 0x2c], r13d
00000001405d3f51 je       0x1405d3f70
00000001405d3f53 mov      rcx, qword ptr [r10 + 0x18]
00000001405d3f57 lea      r8, [rip + 0x3323a2]
00000001405d3f5e mov      edx, 0x4f
00000001405d3f63 mov      r9d, eax
00000001405d3f66 call     0x140001bb0
00000001405d3f6b mov      r8d, dword ptr [rsp + 0x30]
00000001405d3f70 mov      r13d, dword ptr [rsi + r14 + 8]
00000001405d3f75 xor      r14d, r14d
00000001405d3f78 test     r13d, r13d
00000001405d3f7b je       0x1405d4002
00000001405d3f81 mov      r15, qword ptr [rsp + 0x50]
00000001405d3f86 lea      rbx, [rip + 0x34c073]
00000001405d3f8d xor      r12d, r12d
00000001405d3f90 mov      eax, dword ptr [rdi]
00000001405d3f92 cmp      eax, 0x65
00000001405d3f95 jae      0x1405d3ff6
00000001405d3f97 mov      dword ptr [rdi + rax*8 + 4], r8d
00000001405d3f9c mov      rax, qword ptr [rsi + r15 + 0x10]
00000001405d3fa1 mov      ecx, dword ptr [rdi]
00000001405d3fa3 mov      al, byte ptr [r12 + rax]
00000001405d3fa7 mov      byte ptr [rdi + rcx*8 + 8], al
00000001405d3fab mov      rcx, qword ptr [rip + 0x34c04e]
00000001405d3fb2 cmp      rcx, rbx
00000001405d3fb5 je       0x1405d3fe8
00000001405d3fb7 cmp      byte ptr [rcx + 0x29], 4
00000001405d3fbb jb       0x1405d3fe8
00000001405d3fbd test     dword ptr [rcx + 0x2c], 0x200
00000001405d3fc4 je       0x1405d3fe8
00000001405d3fc6 mov      eax, dword ptr [rdi]
00000001405d3fc8 lea      r8, [rip + 0x332331]
00000001405d3fcf mov      rcx, qword ptr [rcx + 0x18]
00000001405d3fd3 mov      edx, 0x50
00000001405d3fd8 movzx    r9d, byte ptr [rdi + rax*8 + 8]
00000001405d3fde call     0x140001bb0
00000001405d3fe3 mov      r8d, dword ptr [rsp + 0x30]
00000001405d3fe8 inc      dword ptr [rdi]
00000001405d3fea inc      r14d
00000001405d3fed add      r12, 4
00000001405d3ff1 cmp      r14d, r13d
00000001405d3ff4 jb       0x1405d3f90
00000001405d3ff6 mov      rbx, qword ptr [rsp + 0x60]
00000001405d3ffb lea      r12, [rip + 0x34bffe]
00000001405d4002 add      rsi, 0x20
00000001405d4006 mov      r13d, 0x200
00000001405d400c sub      qword ptr [rsp + 0x38], 1
00000001405d4012 jne      0x1405d3f21
00000001405d4018 mov      r15, qword ptr [rsp + 0x40]
00000001405d401d mov      r8d, dword ptr [rbx + 0x10]
00000001405d4021 xor      esi, esi
00000001405d4023 lea      eax, [rsi + 0x10]
00000001405d4026 test     r8d, r8d
00000001405d4029 je       0x1405d411c
00000001405d402f mov      r15d, eax
00000001405d4032 cmp      esi, r15d
00000001405d4035 jae      0x1405d4112
00000001405d403b mov      rax, qword ptr [rbx + 0x18]
00000001405d403f lea      rcx, [rsi + rsi*2]
00000001405d4043 mov      edi, esi
00000001405d4045 movups   xmm1, xmmword ptr [rax + rcx*8]
00000001405d4049 mov      r14, qword ptr [rax + rcx*8 + 8]
00000001405d404e movups   xmmword ptr [rsp + 0x70], xmm1
00000001405d4053 test     r14, r14
00000001405d4056 je       0x1405d40a4
00000001405d4058 mov      rcx, qword ptr [rip + 0x34bfa1]
00000001405d405f cmp      rcx, r12
00000001405d4062 je       0x1405d40a4
00000001405d4064 cmp      byte ptr [rcx + 0x29], 4
00000001405d4068 jb       0x1405d40a4
00000001405d406a test     dword ptr [rcx + 0x2c], r13d
00000001405d406e je       0x1405d40a4
00000001405d4070 mov      eax, dword ptr [rsp + 0x70]
00000001405d4074 lea      r9, [rip + 0xadb45]
00000001405d407b mov      rcx, qword ptr [rcx + 0x18]
00000001405d407f lea      r8, [rip + 0x33227a]
00000001405d4086 mov      qword ptr [rsp + 0x68], rax
00000001405d408b mov      edx, 0x51
00000001405d4090 lea      rax, [rsp + 0x60]
00000001405d4095 mov      qword ptr [rsp + 0x60], r14
00000001405d409a mov      qword ptr [rsp + 0x20], rax
00000001405d409f call     0x140001c88
00000001405d40a4 movzx    edx, word ptr [rsp + 0x70]
00000001405d40a9 add      rdi, rdi
00000001405d40ac mov      qword ptr [rbp + rdi*8 - 0x70], r14
00000001405d40b1 mov      word ptr [rbp + rdi*8 - 0x68], dx
00000001405d40b6 test     r14, r14
00000001405d40b9 je       0x1405d4103
00000001405d40bb mov      rcx, qword ptr [rip + 0x34bf3e]
00000001405d40c2 cmp      rcx, r12
00000001405d40c5 je       0x1405d4103
00000001405d40c7 cmp      byte ptr [rcx + 0x29], 4
00000001405d40cb jb       0x1405d4103
00000001405d40cd test     dword ptr [rcx + 0x2c], r13d
00000001405d40d1 je       0x1405d4103
00000001405d40d3 mov      rcx, qword ptr [rcx + 0x18]
00000001405d40d7 lea      rax, [rsp + 0x50]
00000001405d40dc mov      qword ptr [rsp + 0x58], rdx
00000001405d40e1 lea      r9, [rip + 0xadaf8]
00000001405d40e8 mov      edx, 0x52
00000001405d40ed mov      qword ptr [rsp + 0x20], rax
00000001405d40f2 lea      r8, [rip + 0x332207]
00000001405d40f9 mov      qword ptr [rsp + 0x50], r14
00000001405d40fe call     0x140001c88
00000001405d4103 mov      r8d, dword ptr [rbx + 0x10]
00000001405d4107 inc      esi
00000001405d4109 cmp      esi, r8d
00000001405d410c jb       0x1405d4032
00000001405d4112 mov      r15, qword ptr [rsp + 0x40]
00000001405d4117 mov      eax, 0x10
00000001405d411c mov      rcx, qword ptr [r15]
00000001405d411f lea      rdx, [rbp - 0x70]
00000001405d4123 cmp      r8d, eax
00000001405d4126 cmova    r8d, eax
00000001405d412a call     0x1400b1ebc
00000001405d412f mov      eax, dword ptr [rbx]
00000001405d4131 test     al, 1
00000001405d4133 je       0x1405d4173
00000001405d4135 mov      rcx, qword ptr [rip + 0x34bec4]
00000001405d413c cmp      rcx, r12
00000001405d413f je       0x1405d4163
00000001405d4141 cmp      byte ptr [rcx + 0x29], 4
00000001405d4145 jb       0x1405d4163
00000001405d4147 mov      eax, dword ptr [rcx + 0x2c]
00000001405d414a test     al, 8
00000001405d414c je       0x1405d4163
00000001405d414e mov      rcx, qword ptr [rcx + 0x18]
00000001405d4152 lea      r8, [rip + 0x3321a7]
00000001405d4159 mov      edx, 0x53
00000001405d415e call     0x140001b88
00000001405d4163 mov      r8d, dword ptr [rbx + 0x28]
00000001405d4167 mov      rdx, qword ptr [rbx + 0x30]
00000001405d416b mov      rcx, qword ptr [r15]
00000001405d416e call     0x1400a7f70
00000001405d4173 mov      rcx, qword ptr [rbp + 0x90]
00000001405d417a xor      rcx, rsp
00000001405d417d call     0x1405f45b0
00000001405d4182 mov      rbx, qword ptr [rsp + 0x1f0]
00000001405d418a add      rsp, 0x1a0
00000001405d4191 pop      r15
00000001405d4193 pop      r14
00000001405d4195 pop      r13
00000001405d4197 pop      r12
00000001405d4199 pop      rdi
00000001405d419a pop      rsi
00000001405d419b pop      rbp
00000001405d419c ret      