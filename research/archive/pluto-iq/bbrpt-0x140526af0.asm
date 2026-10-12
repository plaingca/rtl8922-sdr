0000000140526af0 mov      qword ptr [rsp + 0x10], rbx
0000000140526af5 mov      qword ptr [rsp + 0x18], rsi
0000000140526afa push     rdi
0000000140526afb sub      rsp, 0x20
0000000140526aff mov      rax, qword ptr [rcx]
0000000140526b02 mov      edx, 0x9664
0000000140526b07 mov      rdi, rcx
0000000140526b0a mov      rbx, qword ptr [rax]
0000000140526b0d mov      rax, qword ptr [rbx + 0x20]
0000000140526b11 call     qword ptr [rip + 0x15d7e1]
0000000140526b17 mov      edx, 0x966c
0000000140526b1c mov      rcx, rdi
0000000140526b1f mov      esi, eax
0000000140526b21 mov      rax, qword ptr [rbx + 0x20]
0000000140526b25 mov      word ptr [rsp + 0x30], si
0000000140526b2a call     qword ptr [rip + 0x15d7c8]
0000000140526b30 mov      rbx, qword ptr [rsp + 0x38]
0000000140526b35 mov      ecx, esi
0000000140526b37 mov      edx, eax
0000000140526b39 shr      esi, 0x10
0000000140526b3c mov      al, byte ptr [rsp + 0x32]
0000000140526b40 and      dl, 1
0000000140526b43 shl      dl, 3
0000000140526b46 and      sil, 1
0000000140526b4a shr      ecx, 0x11
0000000140526b4d and      al, 0xe0
0000000140526b4f and      cl, 7
0000000140526b52 or       dl, cl
0000000140526b54 add      dl, dl
0000000140526b56 or       dl, sil
0000000140526b59 mov      rsi, qword ptr [rsp + 0x40]
0000000140526b5e or       dl, al
0000000140526b60 mov      byte ptr [rsp + 0x32], dl
0000000140526b64 mov      eax, dword ptr [rsp + 0x30]
0000000140526b68 add      rsp, 0x20
0000000140526b6c pop      rdi
0000000140526b6d ret      