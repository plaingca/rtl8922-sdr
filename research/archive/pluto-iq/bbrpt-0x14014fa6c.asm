000000014014fa6c mov      qword ptr [rsp + 8], rbx
000000014014fa71 mov      qword ptr [rsp + 0x10], rbp
000000014014fa76 mov      qword ptr [rsp + 0x18], rsi
000000014014fa7b push     rdi
000000014014fa7c push     r14
000000014014fa7e push     r15
000000014014fa80 sub      rsp, 0x40
000000014014fa84 xor      edx, edx
000000014014fa86 mov      rdi, rcx
000000014014fa89 movzx    ebp, dx
000000014014fa8c mov      r14b, dl
000000014014fa8f mov      ebx, 0xff
000000014014fa94 mov      rcx, qword ptr [rip + 0x7d0565]
000000014014fa9b lea      r15, [rip + 0x7d055e]
000000014014faa2 cmp      rcx, r15
000000014014faa5 je       0x14014fad2
000000014014faa7 cmp      byte ptr [rcx + 0x29], 4
000000014014faab jb       0x14014fad2
000000014014faad mov      eax, dword ptr [rcx + 0x2c]
000000014014fab0 test     al, 2
000000014014fab2 je       0x14014fad2
000000014014fab4 mov      rcx, qword ptr [rcx + 0x18]
000000014014fab8 lea      r9, [rip + 0x4b8e71]
000000014014fabf mov      edx, 0x1a
000000014014fac4 lea      r8, [rip + 0x5440b5]
000000014014facb call     0x140008874
000000014014fad0 xor      edx, edx
000000014014fad2 movzx    esi, dx
000000014014fad5 mov      r10d, 1
000000014014fadb cmp      dx, word ptr [rdi + 0x3b8]
000000014014fae2 jae      0x14014fb7e
000000014014fae8 movzx    eax, si
000000014014faeb add      rax, 0x95
000000014014faf1 lea      r15, [rax + rax*2]
000000014014faf5 movzx    edx, word ptr [rdi + r15*2]
000000014014fafa cmp      dx, bp
000000014014fafd jbe      0x14014fc19
000000014014fb03 mov      rcx, qword ptr [rip + 0x7d04f6]
000000014014fb0a lea      rax, [rip + 0x7d04ef]
000000014014fb11 cmp      rcx, rax
000000014014fb14 je       0x14014fb5b
000000014014fb16 cmp      byte ptr [rcx + 0x29], 4
000000014014fb1a jb       0x14014fb5b
000000014014fb1c mov      eax, dword ptr [rcx + 0x2c]
000000014014fb1f test     al, 2
000000014014fb21 je       0x14014fb5b
000000014014fb23 mov      rcx, qword ptr [rcx + 0x18]
000000014014fb27 mov      r10d, edx
000000014014fb2a movzx    eax, r14b
000000014014fb2e mov      edx, 0x1b
000000014014fb33 mov      dword ptr [rsp + 0x30], eax
000000014014fb37 movzx    r8d, bp
000000014014fb3b mov      dword ptr [rsp + 0x28], r8d
000000014014fb40 lea      r8, [rip + 0x544039]
000000014014fb47 movzx    r9d, bx
000000014014fb4b mov      dword ptr [rsp + 0x20], r10d
000000014014fb50 call     0x140008794
000000014014fb55 mov      r10d, 1
000000014014fb5b movzx    ebp, word ptr [rdi + r15*2]
000000014014fb60 xor      r14b, r14b
000000014014fb63 movzx    ebx, si
000000014014fb66 lea      r15, [rip + 0x7d0493]
000000014014fb6d add      si, r10w
000000014014fb71 cmp      si, word ptr [rdi + 0x3b8]
000000014014fb78 jb       0x14014fae8
000000014014fb7e mov      rcx, qword ptr [rip + 0x7d047b]
000000014014fb85 cmp      rcx, r15
000000014014fb88 je       0x14014fbc1
000000014014fb8a cmp      byte ptr [rcx + 0x29], 4
000000014014fb8e jb       0x14014fbc1
000000014014fb90 mov      eax, dword ptr [rcx + 0x2c]
000000014014fb93 test     al, 2
000000014014fb95 je       0x14014fbc1
000000014014fb97 mov      rcx, qword ptr [rcx + 0x18]
000000014014fb9b mov      edx, 0x1d
000000014014fba0 movzx    eax, r14b
000000014014fba4 movzx    r8d, bp
000000014014fba8 mov      dword ptr [rsp + 0x28], eax
000000014014fbac mov      dword ptr [rsp + 0x20], r8d
000000014014fbb1 lea      r8, [rip + 0x543fc8]
000000014014fbb8 movzx    r9d, bx
000000014014fbbc call     0x140001c34
000000014014fbc1 test     r14b, r14b
000000014014fbc4 je       0x14014fc86
000000014014fbca movzx    edx, bp
000000014014fbcd mov      rcx, rdi
000000014014fbd0 call     0x14014ff80
000000014014fbd5 movzx    ebx, ax
000000014014fbd8 mov      eax, 0xff
000000014014fbdd cmp      bx, ax
000000014014fbe0 je       0x14014fcea
000000014014fbe6 mov      rcx, qword ptr [rip + 0x7d0413]
000000014014fbed cmp      rcx, r15
000000014014fbf0 je       0x14014fcc2
000000014014fbf6 cmp      byte ptr [rcx + 0x29], 4
000000014014fbfa jb       0x14014fcc2
000000014014fc00 mov      edx, dword ptr [rcx + 0x2c]
000000014014fc03 test     dl, 2
000000014014fc06 je       0x14014fcc2
000000014014fc0c mov      r9d, ebx
000000014014fc0f mov      edx, 0x1e
000000014014fc14 jmp      0x14014fcb2
000000014014fc19 jne      0x14014fb66
000000014014fc1f mov      r14b, r10b
000000014014fc22 mov      rcx, qword ptr [rip + 0x7d03d7]
000000014014fc29 lea      r15, [rip + 0x7d03d0]
000000014014fc30 cmp      rcx, r15
000000014014fc33 je       0x14014fb6d
000000014014fc39 cmp      byte ptr [rcx + 0x29], 4
000000014014fc3d jb       0x14014fb6d
000000014014fc43 mov      eax, dword ptr [rcx + 0x2c]
000000014014fc46 test     al, 2
000000014014fc48 je       0x14014fb6d
000000014014fc4e mov      rcx, qword ptr [rcx + 0x18]
000000014014fc52 mov      r8d, edx
000000014014fc55 mov      dword ptr [rsp + 0x30], r10d
000000014014fc5a mov      edx, 0x1c
000000014014fc5f movzx    eax, bp
000000014014fc62 mov      dword ptr [rsp + 0x28], eax
000000014014fc66 mov      dword ptr [rsp + 0x20], r8d
000000014014fc6b lea      r8, [rip + 0x543f0e]
000000014014fc72 movzx    r9d, bx
000000014014fc76 call     0x140008794
000000014014fc7b mov      r10d, 1
000000014014fc81 jmp      0x14014fb6d
000000014014fc86 mov      eax, 0xff
000000014014fc8b cmp      bx, ax
000000014014fc8e je       0x14014fcea
000000014014fc90 mov      rcx, qword ptr [rip + 0x7d0369]
000000014014fc97 cmp      rcx, r15
000000014014fc9a je       0x14014fcc2
000000014014fc9c cmp      byte ptr [rcx + 0x29], 4
000000014014fca0 jb       0x14014fcc2
000000014014fca2 mov      eax, dword ptr [rcx + 0x2c]
000000014014fca5 test     al, 2
000000014014fca7 je       0x14014fcc2
000000014014fca9 movzx    r9d, bx
000000014014fcad mov      edx, 0x1f
000000014014fcb2 mov      rcx, qword ptr [rcx + 0x18]
000000014014fcb6 lea      r8, [rip + 0x543ec3]
000000014014fcbd call     0x140001bb0
000000014014fcc2 movzx    ecx, bx
000000014014fcc5 mov      r8d, 6
000000014014fccb lea      rdx, [rcx*2 + 0x1bd]
000000014014fcd3 add      rdx, rcx
000000014014fcd6 lea      rcx, [rdi + 0x374]
000000014014fcdd lea      rdx, [rdi + rdx*2]
000000014014fce1 call     0x1400311e8
000000014014fce6 mov      al, 1
000000014014fce8 jmp      0x14014fd1a
000000014014fcea mov      rcx, qword ptr [rip + 0x7d030f]
000000014014fcf1 cmp      rcx, r15
000000014014fcf4 je       0x14014fd18
000000014014fcf6 cmp      byte ptr [rcx + 0x29], 4
000000014014fcfa jb       0x14014fd18
000000014014fcfc mov      eax, dword ptr [rcx + 0x2c]
000000014014fcff test     al, 2
000000014014fd01 je       0x14014fd18
000000014014fd03 mov      rcx, qword ptr [rcx + 0x18]
000000014014fd07 lea      r8, [rip + 0x543e72]
000000014014fd0e mov      edx, 0x20
000000014014fd13 call     0x140001b88
000000014014fd18 xor      al, al
000000014014fd1a mov      rbx, qword ptr [rsp + 0x60]
000000014014fd1f mov      rbp, qword ptr [rsp + 0x68]
000000014014fd24 mov      rsi, qword ptr [rsp + 0x70]
000000014014fd29 add      rsp, 0x40
000000014014fd2d pop      r15
000000014014fd2f pop      r14
000000014014fd31 pop      rdi
000000014014fd32 ret      