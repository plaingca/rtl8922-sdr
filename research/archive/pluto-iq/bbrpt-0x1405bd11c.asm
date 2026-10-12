00000001405bd11c mov      qword ptr [rsp + 8], rbx
00000001405bd121 mov      qword ptr [rsp + 0x10], rbp
00000001405bd126 push     rdi
00000001405bd127 sub      rsp, 0x30
00000001405bd12b mov      ebp, 1
00000001405bd130 mov      byte ptr [rsp + 0x20], 0
00000001405bd135 mov      r9d, ebp
00000001405bd138 mov      edx, 0x9608
00000001405bd13d mov      rbx, rcx
00000001405bd140 lea      r8d, [rbp + 2]
00000001405bd144 call     0x14044a590
00000001405bd149 mov      edi, eax
00000001405bd14b test     eax, eax
00000001405bd14d je       0x1405bd17e
00000001405bd14f mov      rcx, qword ptr [rbx + 0x18]
00000001405bd153 lea      r9, [rip + 0xc3606]
00000001405bd15a lea      r8, [rip + 0xa1ddf]
00000001405bd161 mov      edx, 2
00000001405bd166 mov      rax, qword ptr [rcx + 0x118]
00000001405bd16d mov      rcx, qword ptr [rbx + 8]
00000001405bd171 call     qword ptr [rip + 0xc7181]
00000001405bd177 mov      eax, edi
00000001405bd179 jmp      0x1405bd201
00000001405bd17e mov      r9d, 3
00000001405bd184 mov      byte ptr [rsp + 0x20], 0
00000001405bd189 mov      r8d, r9d
00000001405bd18c mov      edx, 0x9628
00000001405bd191 mov      rcx, rbx
00000001405bd194 call     0x14044a590
00000001405bd199 mov      edi, eax
00000001405bd19b test     eax, eax
00000001405bd19d jne      0x1405bd14f
00000001405bd19f mov      r9d, ebp
00000001405bd1a2 mov      byte ptr [rsp + 0x20], al
00000001405bd1a6 mov      r8d, ebp
00000001405bd1a9 mov      edx, 0x9638
00000001405bd1ae mov      rcx, rbx
00000001405bd1b1 call     0x14044a590
00000001405bd1b6 mov      edi, eax
00000001405bd1b8 test     eax, eax
00000001405bd1ba jne      0x1405bd14f
00000001405bd1bc mov      r9d, ebp
00000001405bd1bf mov      byte ptr [rsp + 0x20], al
00000001405bd1c3 mov      r8d, ebp
00000001405bd1c6 mov      edx, 0x9668
00000001405bd1cb mov      rcx, rbx
00000001405bd1ce call     0x14044a590
00000001405bd1d3 mov      edi, eax
00000001405bd1d5 test     eax, eax
00000001405bd1d7 jne      0x1405bd14f
00000001405bd1dd xor      r9d, r9d
00000001405bd1e0 mov      byte ptr [rsp + 0x20], al
00000001405bd1e4 mov      edx, 0x9688
00000001405bd1e9 mov      r8d, 0xf1f
00000001405bd1ef mov      rcx, rbx
00000001405bd1f2 call     0x14044a590
00000001405bd1f7 mov      edi, eax
00000001405bd1f9 test     eax, eax
00000001405bd1fb jne      0x1405bd14f
00000001405bd201 mov      rbx, qword ptr [rsp + 0x40]
00000001405bd206 mov      rbp, qword ptr [rsp + 0x48]
00000001405bd20b add      rsp, 0x30
00000001405bd20f pop      rdi
00000001405bd210 ret      