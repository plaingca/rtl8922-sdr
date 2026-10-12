0000000140242ab4 mov      qword ptr [rsp + 8], rbx
0000000140242ab9 mov      qword ptr [rsp + 0x10], rdi
0000000140242abe push     r14
0000000140242ac0 sub      rsp, 0x20
0000000140242ac4 mov      rax, qword ptr [rdx + 8]
0000000140242ac8 mov      rbx, rcx
0000000140242acb mov      rcx, rdx
0000000140242ace mov      rdi, rdx
0000000140242ad1 mov      byte ptr [rax + 0x530], 0
0000000140242ad8 call     0x14023f870
0000000140242add mov      r8b, byte ptr [rbx + 0x96d7]
0000000140242ae4 mov      rcx, rdi
0000000140242ae7 mov      dl, byte ptr [rbx + 0x96d6]
0000000140242aed call     0x1402c4cd8
0000000140242af2 lea      r14, [rip + 0x6dd507]
0000000140242af9 test     eax, eax
0000000140242afb je       0x140242b3b
0000000140242afd mov      rcx, qword ptr [rip + 0x6dd4fc]
0000000140242b04 cmp      rcx, r14
0000000140242b07 je       0x140242b3b
0000000140242b09 cmp      byte ptr [rcx + 0x169], 2
0000000140242b10 jb       0x140242b3b
0000000140242b12 mov      eax, dword ptr [rcx + 0x16c]
0000000140242b18 test     al, 1
0000000140242b1a je       0x140242b3b
0000000140242b1c mov      rcx, qword ptr [rcx + 0x158]
0000000140242b23 lea      r9, [rip + 0x3cb866]
0000000140242b2a mov      edx, 0x64
0000000140242b2f lea      r8, [rip + 0x455f6a]
0000000140242b36 call     0x140008874
0000000140242b3b mov      r9b, byte ptr [rbx + 0x96da]
0000000140242b42 mov      rcx, rdi
0000000140242b45 mov      r8b, byte ptr [rbx + 0x96d9]
0000000140242b4c mov      dl, byte ptr [rbx + 0x96d8]
0000000140242b52 call     0x140266554
0000000140242b57 test     eax, eax
0000000140242b59 je       0x140242b99
0000000140242b5b mov      rcx, qword ptr [rip + 0x6dd49e]
0000000140242b62 cmp      rcx, r14
0000000140242b65 je       0x140242b99
0000000140242b67 cmp      byte ptr [rcx + 0x169], 2
0000000140242b6e jb       0x140242b99
0000000140242b70 mov      eax, dword ptr [rcx + 0x16c]
0000000140242b76 test     al, 1
0000000140242b78 je       0x140242b99
0000000140242b7a mov      rcx, qword ptr [rcx + 0x158]
0000000140242b81 lea      r9, [rip + 0x3cb808]
0000000140242b88 mov      edx, 0x65
0000000140242b8d lea      r8, [rip + 0x455f0c]
0000000140242b94 call     0x140008874
0000000140242b99 mov      rcx, rdi
0000000140242b9c call     0x1402c068c
0000000140242ba1 mov      ebx, eax
0000000140242ba3 test     eax, eax
0000000140242ba5 je       0x140242be6
0000000140242ba7 mov      rcx, qword ptr [rip + 0x6dd452]
0000000140242bae cmp      rcx, r14
0000000140242bb1 je       0x140242be6
0000000140242bb3 cmp      byte ptr [rcx + 0x169], 2
0000000140242bba jb       0x140242be6
0000000140242bbc mov      edx, dword ptr [rcx + 0x16c]
0000000140242bc2 test     dl, 1
0000000140242bc5 je       0x140242be6
0000000140242bc7 mov      rcx, qword ptr [rcx + 0x158]
0000000140242bce lea      r9, [rip + 0x3cb7bb]
0000000140242bd5 mov      edx, 0x66
0000000140242bda lea      r8, [rip + 0x455ebf]
0000000140242be1 call     0x140008874
0000000140242be6 mov      rdi, qword ptr [rsp + 0x38]
0000000140242beb mov      eax, ebx
0000000140242bed mov      rbx, qword ptr [rsp + 0x30]
0000000140242bf2 add      rsp, 0x20
0000000140242bf6 pop      r14
0000000140242bf8 ret      