00000001403ea1f4 mov      rax, rsp
00000001403ea1f7 mov      qword ptr [rax + 8], rbx
00000001403ea1fb mov      qword ptr [rax + 0x10], rsi
00000001403ea1ff mov      qword ptr [rax + 0x18], rdi
00000001403ea203 mov      qword ptr [rax + 0x20], r12
00000001403ea207 push     r13
00000001403ea209 push     r14
00000001403ea20b push     r15
00000001403ea20d sub      rsp, 0x60
00000001403ea211 movsxd   rbx, dword ptr [rsp + 0xa8]
00000001403ea219 mov      r13, rcx
00000001403ea21c movzx    r14d, r9b
00000001403ea220 movzx    r15d, r8b
00000001403ea224 movzx    r12d, dl
00000001403ea228 mov      dword ptr [rax - 0x28], 0x4168
00000001403ea22f mov      dword ptr [rax - 0x24], 0x4568
00000001403ea236 mov      dword ptr [rax - 0x20], 0x4164
00000001403ea23d mov      dword ptr [rax - 0x1c], 0x4564
00000001403ea244 cmp      ebx, 1
00000001403ea247 jle      0x1403ea2a5
00000001403ea249 mov      rcx, qword ptr [rip + 0x535db0]
00000001403ea250 lea      rax, [rip + 0x535da9]
00000001403ea257 cmp      rcx, rax
00000001403ea25a je       0x1403ea3e3
00000001403ea260 cmp      byte ptr [rcx + 0x169], 3
00000001403ea267 jb       0x1403ea3e3
00000001403ea26d test     dword ptr [rcx + 0x16c], 0x1000
00000001403ea277 je       0x1403ea3e3
00000001403ea27d mov      rcx, qword ptr [rcx + 0x158]
00000001403ea284 lea      r9, [rip + 0x265d75]
00000001403ea28b mov      edx, 0x67
00000001403ea290 mov      dword ptr [rsp + 0x20], ebx
00000001403ea294 lea      r8, [rip + 0x2eb255]
00000001403ea29b call     0x1400088d8
00000001403ea2a0 jmp      0x1403ea3e3
00000001403ea2a5 mov      esi, dword ptr [rsp + 0xb0]
00000001403ea2ac test     dl, dl
00000001403ea2ae je       0x1403ea319
00000001403ea2b0 test     r8b, r8b
00000001403ea2b3 je       0x1403ea319
00000001403ea2b5 test     r9b, r9b
00000001403ea2b8 je       0x1403ea319
00000001403ea2ba cmp      byte ptr [rsp + 0xa0], 0
00000001403ea2c2 je       0x1403ea319
00000001403ea2c4 mov      rcx, qword ptr [rip + 0x535d35]
00000001403ea2cb lea      rax, [rip + 0x535d2e]
00000001403ea2d2 cmp      rcx, rax
00000001403ea2d5 je       0x1403ea37b
00000001403ea2db cmp      byte ptr [rcx + 0x1e9], 4
00000001403ea2e2 jb       0x1403ea37b
00000001403ea2e8 test     dword ptr [rcx + 0x1ec], 0x1000000
00000001403ea2f2 je       0x1403ea37b
00000001403ea2f8 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403ea2ff lea      r8, [rip + 0x2eb1ea]
00000001403ea306 mov      edx, 0x68
00000001403ea30b mov      dword ptr [rsp + 0x20], esi
00000001403ea30f mov      r9d, ebx
00000001403ea312 call     0x140001bec
00000001403ea317 jmp      0x1403ea37b
00000001403ea319 mov      rcx, qword ptr [rip + 0x535ce0]
00000001403ea320 lea      rax, [rip + 0x535cd9]
00000001403ea327 cmp      rcx, rax
00000001403ea32a je       0x1403ea37b
00000001403ea32c cmp      byte ptr [rcx + 0x1e9], 4
00000001403ea333 jb       0x1403ea37b
00000001403ea335 test     dword ptr [rcx + 0x1ec], 0x1000000
00000001403ea33f je       0x1403ea37b
00000001403ea341 movzx    eax, byte ptr [rsp + 0xa0]
00000001403ea349 lea      r8, [rip + 0x2eb1a0]
00000001403ea350 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403ea357 mov      edx, 0x69
00000001403ea35c mov      dword ptr [rsp + 0x40], eax
00000001403ea360 mov      r9d, ebx
00000001403ea363 mov      dword ptr [rsp + 0x38], r14d
00000001403ea368 mov      dword ptr [rsp + 0x30], r15d
00000001403ea36d mov      dword ptr [rsp + 0x28], r12d
00000001403ea372 mov      dword ptr [rsp + 0x20], esi
00000001403ea376 call     0x1400087f4
00000001403ea37b mov      edi, dword ptr [rsp + rbx*4 + 0x50]
00000001403ea37f mov      r9d, r12d
00000001403ea382 mov      edx, edi
00000001403ea384 mov      dword ptr [rsp + 0x20], esi
00000001403ea388 mov      r8d, 0x200
00000001403ea38e mov      rcx, r13
00000001403ea391 call     0x140316994
00000001403ea396 mov      edx, dword ptr [rsp + rbx*4 + 0x58]
00000001403ea39a mov      r9d, r15d
00000001403ea39d mov      r8d, 0x80000000
00000001403ea3a3 mov      dword ptr [rsp + 0x20], esi
00000001403ea3a7 mov      rcx, r13
00000001403ea3aa call     0x140316994
00000001403ea3af mov      r9d, r14d
00000001403ea3b2 mov      dword ptr [rsp + 0x20], esi
00000001403ea3b6 mov      r8d, 0x100
00000001403ea3bc mov      edx, edi
00000001403ea3be mov      rcx, r13
00000001403ea3c1 call     0x140316994
00000001403ea3c6 movzx    r9d, byte ptr [rsp + 0xa0]
00000001403ea3cf mov      r8d, 2
00000001403ea3d5 mov      edx, edi
00000001403ea3d7 mov      dword ptr [rsp + 0x20], esi
00000001403ea3db mov      rcx, r13
00000001403ea3de call     0x140316994
00000001403ea3e3 lea      r11, [rsp + 0x60]
00000001403ea3e8 mov      rbx, qword ptr [r11 + 0x20]
00000001403ea3ec mov      rsi, qword ptr [r11 + 0x28]
00000001403ea3f0 mov      rdi, qword ptr [r11 + 0x30]
00000001403ea3f4 mov      r12, qword ptr [r11 + 0x38]
00000001403ea3f8 mov      rsp, r11
00000001403ea3fb pop      r15
00000001403ea3fd pop      r14
00000001403ea3ff pop      r13
00000001403ea401 ret      