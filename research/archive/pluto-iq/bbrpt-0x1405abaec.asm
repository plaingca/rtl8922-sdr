00000001405abaec mov      qword ptr [rsp + 8], rbx
00000001405abaf1 mov      qword ptr [rsp + 0x10], rbp
00000001405abaf6 push     rdi
00000001405abaf7 sub      rsp, 0x30
00000001405abafb mov      ebp, 1
00000001405abb00 mov      byte ptr [rsp + 0x20], 0
00000001405abb05 mov      r9d, ebp
00000001405abb08 mov      edx, 0x9608
00000001405abb0d mov      rbx, rcx
00000001405abb10 lea      r8d, [rbp + 2]
00000001405abb14 call     0x14044a590
00000001405abb19 mov      edi, eax
00000001405abb1b test     eax, eax
00000001405abb1d je       0x1405abb4e
00000001405abb1f mov      rcx, qword ptr [rbx + 0x18]
00000001405abb23 lea      r9, [rip + 0xd4756]
00000001405abb2a lea      r8, [rip + 0xb340f]
00000001405abb31 mov      edx, 2
00000001405abb36 mov      rax, qword ptr [rcx + 0x118]
00000001405abb3d mov      rcx, qword ptr [rbx + 8]
00000001405abb41 call     qword ptr [rip + 0xd87b1]
00000001405abb47 mov      eax, edi
00000001405abb49 jmp      0x1405abbd1
00000001405abb4e mov      r9d, 3
00000001405abb54 mov      byte ptr [rsp + 0x20], 0
00000001405abb59 mov      r8d, r9d
00000001405abb5c mov      edx, 0x9628
00000001405abb61 mov      rcx, rbx
00000001405abb64 call     0x14044a590
00000001405abb69 mov      edi, eax
00000001405abb6b test     eax, eax
00000001405abb6d jne      0x1405abb1f
00000001405abb6f mov      r9d, ebp
00000001405abb72 mov      byte ptr [rsp + 0x20], al
00000001405abb76 mov      r8d, ebp
00000001405abb79 mov      edx, 0x9638
00000001405abb7e mov      rcx, rbx
00000001405abb81 call     0x14044a590
00000001405abb86 mov      edi, eax
00000001405abb88 test     eax, eax
00000001405abb8a jne      0x1405abb1f
00000001405abb8c mov      r9d, ebp
00000001405abb8f mov      byte ptr [rsp + 0x20], al
00000001405abb93 mov      r8d, ebp
00000001405abb96 mov      edx, 0x9668
00000001405abb9b mov      rcx, rbx
00000001405abb9e call     0x14044a590
00000001405abba3 mov      edi, eax
00000001405abba5 test     eax, eax
00000001405abba7 jne      0x1405abb1f
00000001405abbad xor      r9d, r9d
00000001405abbb0 mov      byte ptr [rsp + 0x20], al
00000001405abbb4 mov      edx, 0x9688
00000001405abbb9 mov      r8d, 0xf1f
00000001405abbbf mov      rcx, rbx
00000001405abbc2 call     0x14044a590
00000001405abbc7 mov      edi, eax
00000001405abbc9 test     eax, eax
00000001405abbcb jne      0x1405abb1f
00000001405abbd1 mov      rbx, qword ptr [rsp + 0x40]
00000001405abbd6 mov      rbp, qword ptr [rsp + 0x48]
00000001405abbdb add      rsp, 0x30
00000001405abbdf pop      rdi
00000001405abbe0 ret      