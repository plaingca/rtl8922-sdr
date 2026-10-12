00000001405f3a80 mov      qword ptr [rsp + 0x18], rbx
00000001405f3a85 mov      qword ptr [rsp + 0x20], rsi
00000001405f3a8a push     rdi
00000001405f3a8b sub      rsp, 0x20
00000001405f3a8f mov      rdi, rdx
00000001405f3a92 mov      rbx, rcx
00000001405f3a95 call     0x1405f3b70
00000001405f3a9a mov      esi, eax
00000001405f3a9c mov      dword ptr [rsp + 0x38], eax
00000001405f3aa0 mov      ecx, edi
00000001405f3aa2 not      ecx
00000001405f3aa4 or       ecx, 0xffff807f
00000001405f3aaa and      ecx, eax
00000001405f3aac and      edi, ebx
00000001405f3aae or       ecx, edi
00000001405f3ab0 mov      dword ptr [rsp + 0x30], ecx
00000001405f3ab4 cmp      byte ptr [rip + 0x6e08e5], 0
00000001405f3abb je       0x1405f3ae2
00000001405f3abd test     cl, 0x40
00000001405f3ac0 je       0x1405f3ae2
00000001405f3ac2 call     0x1405f3b80
00000001405f3ac7 jmp      0x1405f3aea
00000001405f3ac9 mov      byte ptr [rip + 0x6e08d0], 0
00000001405f3ad0 mov      ecx, dword ptr [rsp + 0x30]
00000001405f3ad4 and      ecx, 0xffffffbf
00000001405f3ad7 call     0x1405f3b80
00000001405f3adc mov      esi, dword ptr [rsp + 0x38]
00000001405f3ae0 jmp      0x1405f3aea
00000001405f3ae2 and      ecx, 0xffffffbf
00000001405f3ae5 call     0x1405f3b80
00000001405f3aea mov      eax, esi
00000001405f3aec mov      rbx, qword ptr [rsp + 0x40]
00000001405f3af1 mov      rsi, qword ptr [rsp + 0x48]
00000001405f3af6 add      rsp, 0x20
00000001405f3afa pop      rdi
00000001405f3afb ret      
00000001405f3afc int3     