000000014036c07c mov      rax, qword ptr [rcx + 0x258]
000000014036c083 movzx    ecx, byte ptr [rax + 0x2e]
000000014036c087 cmp      edx, ecx
000000014036c089 sete     al
000000014036c08c ret      
000000014036c08d int3     
000000014036c08e int3     
000000014036c08f int3     
000000014036c090 mov      rax, qword ptr [rcx + 0x140]
000000014036c097 movzx    ecx, byte ptr [rax + 0xdf]
000000014036c09e cmp      edx, ecx
000000014036c0a0 sete     al
000000014036c0a3 ret      
000000014036c0a4 mov      qword ptr [rsp + 8], rbx
000000014036c0a9 mov      qword ptr [rsp + 0x10], rsi
000000014036c0ae push     rdi
000000014036c0af sub      rsp, 0x20
000000014036c0b3 mov      rdx, qword ptr [rcx + 0x5a0]