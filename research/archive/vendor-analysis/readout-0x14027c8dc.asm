000000014027c8dc mov      qword ptr [rsp + 8], rbx
000000014027c8e1 mov      qword ptr [rsp + 0x10], rsi
000000014027c8e6 push     rdi
000000014027c8e7 sub      rsp, 0x20
000000014027c8eb mov      rax, qword ptr [rcx + 0x1490]
000000014027c8f2 mov      rsi, r9
000000014027c8f5 mov      rdi, r8
000000014027c8f8 mov      rbx, rdx
000000014027c8fb mov      rcx, qword ptr [rax + 0x230]
000000014027c902 mov      rax, qword ptr [rcx]
000000014027c905 mov      rax, qword ptr [rax + 0x668]
000000014027c90c call     qword ptr [rip + 0x4079e6]
000000014027c912 mov      r9d, eax
000000014027c915 shr      r9d, 0x10
000000014027c919 mov      cl, r9b
000000014027c91c shr      cl, 1
000000014027c91e and      cl, 7
000000014027c921 mov      byte ptr [rbx], cl
000000014027c923 mov      rbx, qword ptr [rsp + 0x30]
000000014027c928 mov      word ptr [rdi], ax
000000014027c92b mov      al, r9b
000000014027c92e and      al, 1
000000014027c930 shr      r9b, 4
000000014027c934 mov      byte ptr [rsi], al
000000014027c936 and      r9b, 1
000000014027c93a mov      rax, qword ptr [rsp + 0x50]
000000014027c93f mov      rsi, qword ptr [rsp + 0x38]
000000014027c944 mov      byte ptr [rax], r9b
000000014027c947 xor      eax, eax
000000014027c949 add      rsp, 0x20
000000014027c94d pop      rdi
000000014027c94e ret      