000000014019eca8 mov      qword ptr [rsp + 0x18], rbx
000000014019ecad push     rdi
000000014019ecae sub      rsp, 0xe0
000000014019ecb5 mov      rax, qword ptr [rip + 0x7887a4]
000000014019ecbc xor      rax, rsp
000000014019ecbf mov      qword ptr [rsp + 0xd0], rax
000000014019ecc7 mov      rdi, rdx
000000014019ecca mov      rbx, rcx
000000014019eccd mov      edx, 0x96
000000014019ecd2 lea      rcx, [rsp + 0x30]
000000014019ecd7 call     0x140031290
000000014019ecdc and      dword ptr [rsp + 0x38], 0
000000014019ece1 lea      rax, [rsp + 0x40]
000000014019ece6 and      dword ptr [rsp + 0x41], 0
000000014019eceb mov      ecx, 0x85
000000014019ecf0 mov      qword ptr [rsp + 0x28], rax
000000014019ecf5 mov      edx, 5
000000014019ecfa mov      dword ptr [rsp + 0x20], ecx
000000014019ecfe mov      r8d, 0x1000000d
000000014019ed04 mov      dword ptr [rsp + 0x3c], ecx
000000014019ed08 xor      r9d, r9d
000000014019ed0b mov      rcx, rbx
000000014019ed0e mov      dword ptr [rsp + 0x30], edx
000000014019ed12 mov      dword ptr [rsp + 0x34], r8d
000000014019ed17 call     0x14019ede8
000000014019ed1c test     rdi, rdi
000000014019ed1f je       0x14019ed37
000000014019ed21 mov      ecx, dword ptr [rbx + 0x11]
000000014019ed24 dec      ecx
000000014019ed26 mov      ecx, dword ptr [rbx + rcx*4 + 0x15]
000000014019ed2a add      rcx, 0x95
000000014019ed31 add      rcx, rbx
000000014019ed34 mov      qword ptr [rdi], rcx
000000014019ed37 mov      rcx, qword ptr [rsp + 0xd0]
000000014019ed3f xor      rcx, rsp
000000014019ed42 call     0x1405f45b0
000000014019ed47 mov      rbx, qword ptr [rsp + 0x100]
000000014019ed4f add      rsp, 0xe0
000000014019ed56 pop      rdi
000000014019ed57 ret      