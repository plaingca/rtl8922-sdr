00000001401ee86c mov      qword ptr [rsp + 0x18], rbx
00000001401ee871 push     rbp
00000001401ee872 push     rsi
00000001401ee873 push     rdi
00000001401ee874 push     r12
00000001401ee876 push     r13
00000001401ee878 push     r14
00000001401ee87a push     r15
00000001401ee87c sub      rsp, 0x40
00000001401ee880 mov      rax, qword ptr [rcx + 0x798]
00000001401ee887 mov      r13, rcx
00000001401ee88a mov      rdi, rdx
00000001401ee88d mov      rcx, qword ptr [rax + 0x10330]
00000001401ee894 movzx    r12d, word ptr [rax + 0x96ca]
00000001401ee89c mov      qword ptr [rsp + 0x88], rcx
00000001401ee8a4 mov      ebx, r12d
00000001401ee8a7 lea      rcx, [rip + 0x424902]
00000001401ee8ae shl      ebx, 6
00000001401ee8b1 call     0x14007dbe0
00000001401ee8b6 xor      r15d, r15d
00000001401ee8b9 lea      rdx, [rsp + 0x80]
00000001401ee8c1 mov      r8d, ebx
00000001401ee8c4 mov      qword ptr [rsp + 0x80], r15
00000001401ee8cc mov      ecx, eax
00000001401ee8ce call     0x1400310f0
00000001401ee8d3 test     eax, eax
00000001401ee8d5 je       0x1401ee8dc
00000001401ee8d7 mov      ebp, r15d
00000001401ee8da jmp      0x1401ee8f3
00000001401ee8dc mov      rcx, qword ptr [rsp + 0x80]
00000001401ee8e4 mov      edx, ebx
00000001401ee8e6 call     0x140031290
00000001401ee8eb mov      rbp, qword ptr [rsp + 0x80]
00000001401ee8f3 mov      qword ptr [rdi + 8], rbp
00000001401ee8f7 test     rbp, rbp
00000001401ee8fa jne      0x1401ee905
00000001401ee8fc lea      rsi, [rdi + 0x10]
00000001401ee900 jmp      0x1401eea24
00000001401ee905 xor      r8d, r8d
00000001401ee908 mov      edx, ebx
00000001401ee90a mov      rcx, rbp
00000001401ee90d call     0x140031144
00000001401ee912 lea      rcx, [rip + 0x424897]
00000001401ee919 lea      ebx, [r12*8]
00000001401ee921 call     0x14007dbe0
00000001401ee926 mov      r8d, ebx
00000001401ee929 mov      qword ptr [rsp + 0x80], r15
00000001401ee931 lea      rdx, [rsp + 0x80]
00000001401ee939 mov      ecx, eax
00000001401ee93b call     0x1400310f0
00000001401ee940 test     eax, eax
00000001401ee942 je       0x1401ee949
00000001401ee944 mov      rcx, r15
00000001401ee947 jmp      0x1401ee960
00000001401ee949 mov      rcx, qword ptr [rsp + 0x80]
00000001401ee951 mov      edx, ebx
00000001401ee953 call     0x140031290
00000001401ee958 mov      rcx, qword ptr [rsp + 0x80]
00000001401ee960 lea      rsi, [rdi + 0x10]
00000001401ee964 mov      qword ptr [rsi], rcx
00000001401ee967 test     rcx, rcx
00000001401ee96a je       0x1401eea24
00000001401ee970 xor      r8d, r8d
00000001401ee973 mov      edx, ebx
00000001401ee975 call     0x140031144
00000001401ee97a movzx    r14d, r15w
00000001401ee97e cmp      r15w, r12w
00000001401ee982 jae      0x1401ee9fc
00000001401ee984 mov      rcx, qword ptr [rsp + 0x88]
00000001401ee98c mov      r9d, 0x80
00000001401ee992 movzx    r15d, r14w
00000001401ee996 mov      ebx, r15d
00000001401ee999 shl      rbx, 6
00000001401ee99d add      rbx, rbp
00000001401ee9a0 lea      rax, [rbx + 0x28]
00000001401ee9a4 mov      byte ptr [rbx + 0x31], 1
00000001401ee9a8 mov      qword ptr [rsp + 0x30], rax
00000001401ee9ad lea      r8, [rbx + 0x1c]
00000001401ee9b1 mov      byte ptr [rsp + 0x28], 0
00000001401ee9b6 lea      rdx, [rbx + 0x18]
00000001401ee9ba mov      byte ptr [rsp + 0x20], 1
00000001401ee9bf call     0x1401ed448
00000001401ee9c4 mov      qword ptr [rbx + 0x10], rax
00000001401ee9c8 test     rax, rax
00000001401ee9cb je       0x1401eea21
00000001401ee9cd mov      dword ptr [rbx + 0x20], 0x80
00000001401ee9d4 inc      r14w
00000001401ee9d8 mov      word ptr [rbx + 0x32], 0x3fff
00000001401ee9de mov      qword ptr [rbx], rbx
00000001401ee9e1 mov      qword ptr [rbx + 8], rbx
00000001401ee9e5 mov      rax, qword ptr [rsi]
00000001401ee9e8 mov      qword ptr [rax + r15*8], rbx
00000001401ee9ec inc      word ptr [rdi + 0x96]
00000001401ee9f3 cmp      r14w, r12w
00000001401ee9f7 jb       0x1401ee984
00000001401ee9f9 xor      r15d, r15d
00000001401ee9fc mov      word ptr [rdi + 0x98], r15w
00000001401eea04 mov      ebx, r15d
00000001401eea07 mov      eax, ebx
00000001401eea09 mov      rbx, qword ptr [rsp + 0x90]
00000001401eea11 add      rsp, 0x40
00000001401eea15 pop      r15
00000001401eea17 pop      r14
00000001401eea19 pop      r13
00000001401eea1b pop      r12
00000001401eea1d pop      rdi
00000001401eea1e pop      rsi
00000001401eea1f pop      rbp
00000001401eea20 ret      
00000001401eea21 xor      r15d, r15d
00000001401eea24 mov      rdx, rdi
00000001401eea27 mov      rcx, r13
00000001401eea2a mov      ebx, 2
00000001401eea2f call     0x1401f0c30
00000001401eea34 mov      qword ptr [rdi + 8], r15
00000001401eea38 mov      qword ptr [rsi], r15
00000001401eea3b jmp      0x1401eea07