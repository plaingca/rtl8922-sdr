0000000140461bfc mov      rax, rsp
0000000140461bff mov      qword ptr [rax + 8], rbx
0000000140461c03 mov      qword ptr [rax + 0x10], rbp
0000000140461c07 mov      qword ptr [rax + 0x18], rsi
0000000140461c0b mov      qword ptr [rax + 0x20], rdi
0000000140461c0f push     r13
0000000140461c11 push     r14
0000000140461c13 push     r15
0000000140461c15 sub      rsp, 0x30
0000000140461c19 movzx    ebx, r9b
0000000140461c1d mov      ebp, r8d
0000000140461c20 mov      edi, edx
0000000140461c22 mov      rsi, rcx
0000000140461c25 mov      rcx, qword ptr [rip + 0x4be3d4]
0000000140461c2c lea      rax, [rip + 0x4be3cd]
0000000140461c33 cmp      rcx, rax
0000000140461c36 je       0x140461c6a
0000000140461c38 cmp      byte ptr [rcx + 0x229], 4
0000000140461c3f jb       0x140461c6a
0000000140461c41 bt       dword ptr [rcx + 0x22c], 8
0000000140461c49 jae      0x140461c6a
0000000140461c4b mov      rcx, qword ptr [rcx + 0x218]
0000000140461c52 lea      r9, [rip + 0x1f61e7]
0000000140461c59 mov      edx, 0xd
0000000140461c5e lea      r8, [rip + 0x27bc23]
0000000140461c65 call     0x140008874
0000000140461c6a mov      edx, edi
0000000140461c6c mov      rcx, rsi
0000000140461c6f call     0x140464c74
0000000140461c74 mov      rcx, rsi
0000000140461c77 movzx    r14d, al
0000000140461c7b call     0x14037ab58
0000000140461c80 mov      edx, ebp
0000000140461c82 mov      r15d, ebx
0000000140461c85 mov      edi, ebx
0000000140461c87 sub      edx, 1
0000000140461c8a je       0x140461c99
0000000140461c8c cmp      edx, 1
0000000140461c8f jne      0x140461c9f
0000000140461c91 or       edi, 0x30000
0000000140461c97 jmp      0x140461c9f
0000000140461c99 or       edi, 0x10100
0000000140461c9f mov      ebx, dword ptr [rsp + 0x70]
0000000140461ca3 mov      ecx, ebx
0000000140461ca5 test     ebx, ebx
0000000140461ca7 je       0x140461d1f
0000000140461ca9 sub      ecx, 1
0000000140461cac je       0x140461d1b
0000000140461cae sub      ecx, 1
0000000140461cb1 je       0x140461d15
0000000140461cb3 sub      ecx, 1
0000000140461cb6 je       0x140461d0d
0000000140461cb8 sub      ecx, 1
0000000140461cbb je       0x140461d07
0000000140461cbd sub      ecx, 2
0000000140461cc0 je       0x140461d1f
0000000140461cc2 cmp      ecx, 1
0000000140461cc5 je       0x140461d1f
0000000140461cc7 mov      rcx, qword ptr [rip + 0x4be332]
0000000140461cce lea      rax, [rip + 0x4be32b]
0000000140461cd5 cmp      rcx, rax
0000000140461cd8 je       0x140461d26
0000000140461cda cmp      byte ptr [rcx + 0x229], 4
0000000140461ce1 jb       0x140461d26
0000000140461ce3 bt       dword ptr [rcx + 0x22c], 8
0000000140461ceb jae      0x140461d1f
0000000140461ced mov      rcx, qword ptr [rcx + 0x218]
0000000140461cf4 lea      r8, [rip + 0x27bb8d]
0000000140461cfb mov      edx, 0xe
0000000140461d00 call     0x140001b88
0000000140461d05 jmp      0x140461d1f
0000000140461d07 bts      edi, 0xc
0000000140461d0b jmp      0x140461d1f
0000000140461d0d or       edi, 0xc00
0000000140461d13 jmp      0x140461d1f
0000000140461d15 bts      edi, 0xb
0000000140461d19 jmp      0x140461d1f
0000000140461d1b bts      edi, 0xa
0000000140461d1f lea      rax, [rip + 0x4be2da]
0000000140461d26 mov      r13d, 0xfffff
0000000140461d2c cmp      r14b, 1
0000000140461d30 ja       0x140461de3
0000000140461d36 and      dword ptr [rsp + 0x20], 0
0000000140461d3b mov      rcx, rsi
0000000140461d3e mov      dword ptr [rsi + r14*4 + 0xb98c], ebx
0000000140461d46 mov      ebx, r14d
0000000140461d49 mov      dword ptr [rsi + r14*4 + 0xb97c], r15d
0000000140461d51 mov      edx, ebx
0000000140461d53 mov      dword ptr [rsi + r14*4 + 0xb984], ebp
0000000140461d5b or       r15d, 0xffffffff
0000000140461d5f mov      dword ptr [rsi + r14*4 + 0xb994], edi
0000000140461d67 mov      r9d, r15d
0000000140461d6a mov      r14d, 5
0000000140461d70 mov      r8d, r14d
0000000140461d73 call     0x14045907c
0000000140461d78 mov      r9d, r15d
0000000140461d7b mov      dword ptr [rsp + 0x20], 0x30000
0000000140461d83 xor      r8d, r8d
0000000140461d86 mov      edx, ebx
0000000140461d88 mov      rcx, rsi
0000000140461d8b call     0x14045907c
0000000140461d90 mov      r9d, r15d
0000000140461d93 mov      dword ptr [rsp + 0x20], edi
0000000140461d97 lea      r8d, [r14 + 0x13]
0000000140461d9b mov      edx, ebx
0000000140461d9d mov      rcx, rsi
0000000140461da0 call     0x14045907c
0000000140461da5 mov      edx, 0x190
0000000140461daa mov      rcx, rsi
0000000140461dad call     0x140457f30
0000000140461db2 mov      r9d, r15d
0000000140461db5 mov      dword ptr [rsp + 0x20], 0x41
0000000140461dbd mov      r8d, r14d
0000000140461dc0 mov      edx, ebx
0000000140461dc2 mov      rcx, rsi
0000000140461dc5 call     0x14045907c
0000000140461dca mov      r9d, r13d
0000000140461dcd mov      dword ptr [rsp + 0x20], edi
0000000140461dd1 mov      r8d, 0x10018
0000000140461dd7 mov      edx, ebx
0000000140461dd9 mov      rcx, rsi
0000000140461ddc call     0x14045907c
0000000140461de1 jmp      0x140461e1f
0000000140461de3 mov      rcx, qword ptr [rip + 0x4be216]
0000000140461dea cmp      rcx, rax
0000000140461ded je       0x140461e1f
0000000140461def cmp      byte ptr [rcx + 0x229], 4
0000000140461df6 jb       0x140461e1f
0000000140461df8 test     dword ptr [rcx + 0x22c], 0x100
0000000140461e02 je       0x140461e1f
0000000140461e04 mov      rcx, qword ptr [rcx + 0x218]
0000000140461e0b lea      r8, [rip + 0x27ba76]
0000000140461e12 mov      r9d, r14d
0000000140461e15 mov      edx, 0xf
0000000140461e1a call     0x140001bb0
0000000140461e1f mov      rax, qword ptr [rsi + 8]
0000000140461e23 cmp      dword ptr [rax + 4], 0
0000000140461e27 jne      0x140461eba
0000000140461e2d mov      ebx, 0xef
0000000140461e32 mov      dword ptr [rsp + 0x20], 0x80000
0000000140461e3a mov      r8d, ebx
0000000140461e3d mov      r9d, r13d
0000000140461e40 xor      edx, edx
0000000140461e42 mov      rcx, rsi
0000000140461e45 call     0x14045907c
0000000140461e4a xor      edx, edx
0000000140461e4c mov      dword ptr [rsp + 0x20], 3
0000000140461e54 mov      r9d, r13d
0000000140461e57 mov      rcx, rsi
0000000140461e5a lea      r8d, [rdx + 0x33]
0000000140461e5e call     0x14045907c
0000000140461e63 xor      edx, edx
0000000140461e65 mov      r9d, r13d
0000000140461e68 mov      rcx, rsi
0000000140461e6b lea      r8d, [rdx + 0x3e]
0000000140461e6f test     ebp, ebp
0000000140461e71 jne      0x140461e7d
0000000140461e73 mov      dword ptr [rsp + 0x20], 0xc990
0000000140461e7b jmp      0x140461e85
0000000140461e7d mov      dword ptr [rsp + 0x20], 0xc190
0000000140461e85 call     0x14045907c
0000000140461e8a mov      r9d, r13d
0000000140461e8d mov      dword ptr [rsp + 0x20], 0xebe38
0000000140461e95 mov      r8d, 0x3f
0000000140461e9b xor      edx, edx
0000000140461e9d mov      rcx, rsi
0000000140461ea0 call     0x14045907c
0000000140461ea5 and      dword ptr [rsp + 0x20], 0
0000000140461eaa mov      r9d, r13d
0000000140461ead mov      r8d, ebx
0000000140461eb0 xor      edx, edx
0000000140461eb2 mov      rcx, rsi
0000000140461eb5 call     0x14045907c
0000000140461eba mov      rcx, rsi
0000000140461ebd call     0x14037ab28
0000000140461ec2 mov      rbx, qword ptr [rsp + 0x50]
0000000140461ec7 mov      al, 1
0000000140461ec9 mov      rbp, qword ptr [rsp + 0x58]
0000000140461ece mov      rsi, qword ptr [rsp + 0x60]
0000000140461ed3 mov      rdi, qword ptr [rsp + 0x68]
0000000140461ed8 add      rsp, 0x30
0000000140461edc pop      r15
0000000140461ede pop      r14
0000000140461ee0 pop      r13
0000000140461ee2 ret      