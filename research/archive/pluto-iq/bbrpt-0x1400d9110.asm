00000001400d9110 mov      qword ptr [rsp + 8], rbx
00000001400d9115 mov      qword ptr [rsp + 0x10], rbp
00000001400d911a mov      qword ptr [rsp + 0x18], rsi
00000001400d911f push     rdi
00000001400d9120 push     r14
00000001400d9122 push     r15
00000001400d9124 sub      rsp, 0x30
00000001400d9128 mov      rax, qword ptr [r8 + 0x18]
00000001400d912c mov      rbx, rcx
00000001400d912f mov      rbp, r8
00000001400d9132 mov      rsi, rdx
00000001400d9135 mov      r8, qword ptr [rax]
00000001400d9138 mov      al, byte ptr [rbp + 0x3958]
00000001400d913e neg      al
00000001400d9140 mov      eax, 0x100
00000001400d9145 sbb      r9b, r9b
00000001400d9148 and      r9b, 2
00000001400d914c add      r9b, 0x18
00000001400d9150 test     word ptr [rbp + 0x394c], ax
00000001400d9157 movzx    r10d, r9b
00000001400d915b mov      r9d, 0x300
00000001400d9161 lea      eax, [r10 + 4]
00000001400d9165 movzx    ecx, al
00000001400d9168 cmove    ecx, r10d
00000001400d916c movzx    edx, cl
00000001400d916f movzx    ecx, word ptr [r8]
00000001400d9173 and      cx, r9w
00000001400d9177 cmp      cx, r9w
00000001400d917b mov      rcx, rbx
00000001400d917e lea      eax, [rdx + 6]
00000001400d9181 movzx    r14d, al
00000001400d9185 cmovne   r14d, edx
00000001400d9189 mov      rdx, rsi
00000001400d918c lea      eax, [r14 + 3]
00000001400d9190 movzx    eax, al
00000001400d9193 mov      r9b, byte ptr [rax + r8]
00000001400d9197 add      r8, 4
00000001400d919b shr      r9b, 6
00000001400d919f call     0x1400cf750
00000001400d91a4 movzx    edi, al
00000001400d91a7 cmp      dil, 4
00000001400d91ab jne      0x1400d91f2
00000001400d91ad mov      rcx, qword ptr [rip + 0x846e4c]
00000001400d91b4 lea      rax, [rip + 0x846e45]
00000001400d91bb cmp      rcx, rax
00000001400d91be je       0x1400d91eb
00000001400d91c0 cmp      byte ptr [rcx + 0x29], 3
00000001400d91c4 jb       0x1400d91eb
00000001400d91c6 test     dword ptr [rcx + 0x2c], 0x800
00000001400d91cd je       0x1400d91eb
00000001400d91cf mov      rcx, qword ptr [rcx + 0x18]
00000001400d91d3 lea      r9, [rip + 0x525556]
00000001400d91da mov      edx, 0x9f
00000001400d91df lea      r8, [rip + 0x5b9b4a]
00000001400d91e6 call     0x140008874
00000001400d91eb xor      al, al
00000001400d91ed jmp      0x1400d929a
00000001400d91f2 mov      rcx, rbx
00000001400d91f5 call     0x1400dbea4
00000001400d91fa test     eax, eax
00000001400d91fc jg       0x1400d9298
00000001400d9202 mov      r9, qword ptr [rbp + 0x18]
00000001400d9206 movzx    r11d, r14b
00000001400d920a test     dil, dil
00000001400d920d jne      0x1400d9220
00000001400d920f movzx    r8d, byte ptr [rbx + 0xc0d9d]
00000001400d9217 lea      r10, [rbx + 0xc0bb5]
00000001400d921e jmp      0x1400d9239
00000001400d9220 imul     rcx, rdi, 0x130
00000001400d9227 lea      r10, [rsi + 0x1870]
00000001400d922e add      r10, rcx
00000001400d9231 mov      r8d, dword ptr [rcx + rsi + 0x1890]
00000001400d9239 movzx    eax, word ptr [r9 + 0x10]
00000001400d923e mov      rdx, r10
00000001400d9241 mov      r9, qword ptr [r9]
00000001400d9244 mov      rcx, rbx
00000001400d9247 mov      dword ptr [rsp + 0x28], eax
00000001400d924b mov      dword ptr [rsp + 0x20], r11d
00000001400d9250 call     0x14012dc54
00000001400d9255 mov      rcx, qword ptr [rip + 0x846da4]
00000001400d925c mov      ebx, eax
00000001400d925e lea      rax, [rip + 0x846d9b]
00000001400d9265 cmp      rcx, rax
00000001400d9268 je       0x1400d9291
00000001400d926a cmp      byte ptr [rcx + 0x29], 4
00000001400d926e jb       0x1400d9291
00000001400d9270 test     dword ptr [rcx + 0x2c], 0x100000
00000001400d9277 je       0x1400d9291
00000001400d9279 mov      rcx, qword ptr [rcx + 0x18]
00000001400d927d lea      r8, [rip + 0x5b9aac]
00000001400d9284 mov      edx, 0xa0
00000001400d9289 mov      r9d, ebx
00000001400d928c call     0x140001bb0
00000001400d9291 test     ebx, ebx
00000001400d9293 setne    al
00000001400d9296 jmp      0x1400d929a
00000001400d9298 mov      al, 1
00000001400d929a mov      rbx, qword ptr [rsp + 0x50]
00000001400d929f mov      rbp, qword ptr [rsp + 0x58]
00000001400d92a4 mov      rsi, qword ptr [rsp + 0x60]
00000001400d92a9 add      rsp, 0x30
00000001400d92ad pop      r15
00000001400d92af pop      r14
00000001400d92b1 pop      rdi
00000001400d92b2 ret      