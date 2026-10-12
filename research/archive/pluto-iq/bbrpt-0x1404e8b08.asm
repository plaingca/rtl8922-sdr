00000001404e8b08 sub      rsp, 0x38
00000001404e8b0c mov      rax, qword ptr [rcx + 0x258]
00000001404e8b13 movzx    r9d, byte ptr [rax + 0x2e]
00000001404e8b18 mov      edx, r9d
00000001404e8b1b sub      edx, 8
00000001404e8b1e je       0x1404e8bd5
00000001404e8b24 sub      edx, 1
00000001404e8b27 je       0x1404e8bc5
00000001404e8b2d sub      edx, 1
00000001404e8b30 je       0x1404e8be7
00000001404e8b36 sub      edx, 1
00000001404e8b39 je       0x1404e8bc5
00000001404e8b3f sub      edx, 1
00000001404e8b42 je       0x1404e8be7
00000001404e8b48 sub      edx, 1
00000001404e8b4b je       0x1404e8be7
00000001404e8b51 sub      edx, 2
00000001404e8b54 je       0x1404e8be7
00000001404e8b5a cmp      edx, 1
00000001404e8b5d je       0x1404e8be7
00000001404e8b63 mov      r10, qword ptr [rip + 0x437496]
00000001404e8b6a lea      rax, [rip + 0x43748f]
00000001404e8b71 cmp      r10, rax
00000001404e8b74 je       0x1404e8be7
00000001404e8b76 cmp      byte ptr [r10 + 0x169], 1
00000001404e8b7e jb       0x1404e8be7
00000001404e8b80 mov      eax, dword ptr [r10 + 0x16c]
00000001404e8b87 test     al, 8
00000001404e8b89 je       0x1404e8be7
00000001404e8b8b mov      rax, qword ptr [rcx + 0x140]
00000001404e8b92 mov      edx, 0xb
00000001404e8b97 mov      rcx, qword ptr [r10 + 0x158]
00000001404e8b9e movzx    r8d, byte ptr [rax + 0xd8]
00000001404e8ba6 mov      dword ptr [rsp + 0x28], r8d
00000001404e8bab lea      r8, [rip + 0x4015e6]
00000001404e8bb2 mov      dword ptr [rsp + 0x20], r9d
00000001404e8bb7 lea      r9, [rip + 0x174282]
00000001404e8bbe call     0x140002b04
00000001404e8bc3 jmp      0x1404e8be7
00000001404e8bc5 mov      rax, qword ptr [rcx + 0x140]
00000001404e8bcc movzx    ecx, byte ptr [rax + 0xd8]
00000001404e8bd3 jmp      0x1404e8be7
00000001404e8bd5 mov      rax, qword ptr [rcx + 0x140]
00000001404e8bdc movzx    ecx, byte ptr [rax + 0xd8]
00000001404e8be3 test     ecx, ecx
00000001404e8be5 je       0x1404e8beb
00000001404e8be7 xor      al, al
00000001404e8be9 jmp      0x1404e8bed
00000001404e8beb mov      al, 1
00000001404e8bed add      rsp, 0x38
00000001404e8bf1 ret      