00000001402ec9b4 mov      qword ptr [rsp + 8], rbx
00000001402ec9b9 push     rdi
00000001402ec9ba sub      rsp, 0x30
00000001402ec9be mov      rbx, rdx
00000001402ec9c1 mov      rdi, rcx
00000001402ec9c4 test     rdx, rdx
00000001402ec9c7 je       0x1402ecafc
00000001402ec9cd cmp      qword ptr [rdx + 0xb70], 0
00000001402ec9d5 je       0x1402ecafc
00000001402ec9db lea      rcx, [rip + 0x33e40e]
00000001402ec9e2 call     0x14007dbe0
00000001402ec9e7 and      qword ptr [rsp + 0x48], 0
00000001402ec9ed lea      rdx, [rsp + 0x48]
00000001402ec9f2 mov      r8d, 0x78
00000001402ec9f8 mov      ecx, eax
00000001402ec9fa call     0x1400310f0
00000001402ec9ff test     eax, eax
00000001402eca01 jne      0x1402ecab8
00000001402eca07 mov      rcx, qword ptr [rsp + 0x48]
00000001402eca0c lea      edx, [rax + 0x78]
00000001402eca0f call     0x140031290
00000001402eca14 mov      rdx, qword ptr [rsp + 0x48]
00000001402eca19 test     rdx, rdx
00000001402eca1c je       0x1402ecab8
00000001402eca22 mov      rax, qword ptr [rbx + 0xb70]
00000001402eca29 mov      rcx, rdi
00000001402eca2c mov      qword ptr [rax + 0x158], rdx
00000001402eca33 mov      qword ptr [rdx], rbx
00000001402eca36 mov      word ptr [rdx + 8], 1
00000001402eca3c mov      byte ptr [rdx + 0xa], 0
00000001402eca40 add      rdx, 0x10
00000001402eca44 mov      rax, qword ptr [rdi + 0x9a0]
00000001402eca4b inc      dword ptr [rax + 0x18]
00000001402eca4e call     0x140326018
00000001402eca53 mov      rcx, qword ptr [rip + 0x6335a6]
00000001402eca5a lea      rax, [rip + 0x63359f]
00000001402eca61 cmp      rcx, rax
00000001402eca64 je       0x1402ecab4
00000001402eca66 cmp      byte ptr [rcx + 0x1e9], 4
00000001402eca6d jb       0x1402ecab4
00000001402eca6f test     dword ptr [rcx + 0x1ec], 0x200000
00000001402eca79 je       0x1402ecab4
00000001402eca7b mov      r8, qword ptr [rdi + 0x9a0]
00000001402eca82 mov      edx, 0xb
00000001402eca87 movzx    r9d, word ptr [rbx + 0x2c]
00000001402eca8c mov      rcx, qword ptr [rcx + 0x1d8]
00000001402eca93 mov      r8d, dword ptr [r8 + 0x18]
00000001402eca97 mov      dword ptr [rsp + 0x28], r8d
00000001402eca9c lea      r8, [rip + 0x3ae5bd]
00000001402ecaa3 mov      dword ptr [rsp + 0x20], r9d
00000001402ecaa8 lea      r9, [rip + 0x33e631]
00000001402ecaaf call     0x140002b04
00000001402ecab4 mov      al, 1
00000001402ecab6 jmp      0x1402ecafe
00000001402ecab8 mov      rcx, qword ptr [rip + 0x633541]
00000001402ecabf lea      rax, [rip + 0x63353a]
00000001402ecac6 cmp      rcx, rax
00000001402ecac9 je       0x1402ecaf8
00000001402ecacb cmp      byte ptr [rcx + 0x169], 3
00000001402ecad2 jb       0x1402ecaf8
00000001402ecad4 test     dword ptr [rcx + 0x16c], 0x1000
00000001402ecade je       0x1402ecaf8
00000001402ecae0 mov      rcx, qword ptr [rcx + 0x158]
00000001402ecae7 lea      r8, [rip + 0x3ae572]
00000001402ecaee mov      edx, 0xa
00000001402ecaf3 call     0x140001b88
00000001402ecaf8 mov      al, 5
00000001402ecafa jmp      0x1402ecafe
00000001402ecafc xor      al, al
00000001402ecafe mov      rbx, qword ptr [rsp + 0x40]
00000001402ecb03 add      rsp, 0x30
00000001402ecb07 pop      rdi
00000001402ecb08 ret      