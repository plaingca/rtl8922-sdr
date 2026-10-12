000000014041b188 mov      rax, rsp
000000014041b18b mov      qword ptr [rax + 8], rbx
000000014041b18f mov      qword ptr [rax + 0x10], rbp
000000014041b193 mov      qword ptr [rax + 0x18], rsi
000000014041b197 mov      qword ptr [rax + 0x20], rdi
000000014041b19b push     r14
000000014041b19d sub      rsp, 0x20
000000014041b1a1 mov      rax, qword ptr [rdx + 8]
000000014041b1a5 mov      rsi, rdx
000000014041b1a8 mov      rdi, rcx
000000014041b1ab mov      ebp, dword ptr [rax + 8]
000000014041b1ae add      ebp, dword ptr [rax + 4]
000000014041b1b1 imul     ebp, dword ptr [rax]
000000014041b1b4 mov      rax, qword ptr [rdx + 0x10]
000000014041b1b8 mov      edx, 8
000000014041b1bd mov      r14d, dword ptr [rax + 8]
000000014041b1c1 add      r14d, dword ptr [rax + 4]
000000014041b1c5 imul     r14d, dword ptr [rax]
000000014041b1c9 call     0x14036c07c
000000014041b1ce xor      ebx, ebx
000000014041b1d0 test     al, al
000000014041b1d2 jne      0x14041b223
000000014041b1d4 lea      edx, [rbx + 9]
000000014041b1d7 mov      rcx, rdi
000000014041b1da call     0x14036c07c
000000014041b1df test     al, al
000000014041b1e1 jne      0x14041b223
000000014041b1e3 lea      edx, [rbx + 0xb]
000000014041b1e6 mov      rcx, rdi
000000014041b1e9 call     0x14036c07c
000000014041b1ee test     al, al
000000014041b1f0 jne      0x14041b223
000000014041b1f2 lea      edx, [rbx + 0x10]
000000014041b1f5 mov      rcx, rdi
000000014041b1f8 call     0x14036c07c
000000014041b1fd test     al, al
000000014041b1ff jne      0x14041b223
000000014041b201 lea      edx, [rbx + 0xd]
000000014041b204 mov      rcx, rdi
000000014041b207 call     0x14036c07c
000000014041b20c test     al, al
000000014041b20e jne      0x14041b223
000000014041b210 lea      edx, [rbx + 0xc]
000000014041b213 mov      rcx, rdi
000000014041b216 call     0x14036c07c
000000014041b21b test     al, al
000000014041b21d jne      0x14041b223
000000014041b21f mov      eax, ebx
000000014041b221 jmp      0x14041b231
000000014041b223 mov      rax, qword ptr [rsi + 0x48]
000000014041b227 mov      ebx, dword ptr [rax + 4]
000000014041b22a mov      rax, qword ptr [rsi + 0x50]
000000014041b22e mov      eax, dword ptr [rax + 4]
000000014041b231 mov      rsi, qword ptr [rsp + 0x40]
000000014041b236 add      eax, ebx
000000014041b238 mov      rbx, qword ptr [rsp + 0x30]
000000014041b23d add      eax, r14d
000000014041b240 mov      rdi, qword ptr [rsp + 0x48]
000000014041b245 add      eax, ebp
000000014041b247 mov      rbp, qword ptr [rsp + 0x38]
000000014041b24c add      rsp, 0x20
000000014041b250 pop      r14
000000014041b252 ret      