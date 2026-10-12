000000014055fa50 sub      rsp, 0x38
000000014055fa54 mov      rax, qword ptr [rcx + 0x3a8]
000000014055fa5b mov      r10, rcx
000000014055fa5e movzx    r8d, dl
000000014055fa62 mov      r9, qword ptr [rax + 8]
000000014055fa66 mov      rax, qword ptr [rcx]
000000014055fa69 mov      r11, qword ptr [rax]
000000014055fa6c cmp      r8d, 6
000000014055fa70 ja       0x14055fbd7
000000014055fa76 je       0x14055fbae
000000014055fa7c mov      ecx, r8d
000000014055fa7f test     dl, dl
000000014055fa81 je       0x14055fb79
000000014055fa87 sub      ecx, 1
000000014055fa8a je       0x14055fb50
000000014055fa90 sub      ecx, 1
000000014055fa93 je       0x14055fb27
000000014055fa99 sub      ecx, 1
000000014055fa9c je       0x14055fafe
000000014055fa9e sub      ecx, 1
000000014055faa1 je       0x14055fad5
000000014055faa3 cmp      ecx, 1
000000014055faa6 jne      0x14055fc08
000000014055faac movzx    r8d, word ptr [r9 + 0x20]
000000014055fab1 mov      edx, 0xb72c
000000014055fab6 movzx    eax, word ptr [r9 + 0x1e]
000000014055fabb and      r8d, 0x1fff
000000014055fac2 and      eax, 0x3f
000000014055fac5 shl      r8d, 0x10
000000014055fac9 or       r8d, eax
000000014055facc mov      al, byte ptr [r9 + 0x22]
000000014055fad0 jmp      0x14055fcfe
000000014055fad5 movzx    r8d, word ptr [r9 + 0x1a]
000000014055fada mov      edx, 0xb728
000000014055fadf movzx    eax, word ptr [r9 + 0x18]
000000014055fae4 and      r8d, 0x1fff
000000014055faeb and      eax, 0x3f
000000014055faee shl      r8d, 0x10
000000014055faf2 or       r8d, eax
000000014055faf5 mov      al, byte ptr [r9 + 0x1c]
000000014055faf9 jmp      0x14055fcfe
000000014055fafe movzx    r8d, word ptr [r9 + 0x14]
000000014055fb03 mov      edx, 0xb724
000000014055fb08 movzx    eax, word ptr [r9 + 0x12]
000000014055fb0d and      r8d, 0x1fff
000000014055fb14 and      eax, 0x3f
000000014055fb17 shl      r8d, 0x10
000000014055fb1b or       r8d, eax
000000014055fb1e mov      al, byte ptr [r9 + 0x16]
000000014055fb22 jmp      0x14055fcfe
000000014055fb27 movzx    r8d, word ptr [r9 + 0xe]
000000014055fb2c mov      edx, 0xb720
000000014055fb31 movzx    eax, word ptr [r9 + 0xc]
000000014055fb36 and      r8d, 0x1fff
000000014055fb3d and      eax, 0x3f
000000014055fb40 shl      r8d, 0x10
000000014055fb44 or       r8d, eax
000000014055fb47 mov      al, byte ptr [r9 + 0x10]
000000014055fb4b jmp      0x14055fcfe
000000014055fb50 movzx    r8d, word ptr [r9 + 8]
000000014055fb55 mov      edx, 0xb71c
000000014055fb5a movzx    eax, word ptr [r9 + 6]
000000014055fb5f and      r8d, 0x1fff
000000014055fb66 and      eax, 0x3f
000000014055fb69 shl      r8d, 0x10
000000014055fb6d or       r8d, eax
000000014055fb70 mov      al, byte ptr [r9 + 0xa]
000000014055fb74 jmp      0x14055fcfe
000000014055fb79 mov      al, byte ptr [r9 + 4]
000000014055fb7d mov      edx, 0xb718
000000014055fb82 movzx    r8d, word ptr [r9 + 2]
000000014055fb87 and      r8d, 0x1fff
000000014055fb8e shl      r8d, 0x10
000000014055fb92 neg      al
000000014055fb94 movzx    eax, word ptr [r9]
000000014055fb98 sbb      ecx, ecx
000000014055fb9a and      eax, 0x3f
000000014055fb9d and      ecx, 0x80000000
000000014055fba3 or       r8d, ecx
000000014055fba6 or       r8d, eax
000000014055fba9 jmp      0x14055fd0b
000000014055fbae movzx    r8d, word ptr [r9 + 0x26]
000000014055fbb3 mov      edx, 0xb730
000000014055fbb8 movzx    eax, word ptr [r9 + 0x24]
000000014055fbbd and      r8d, 0x1fff
000000014055fbc4 and      eax, 0x3f
000000014055fbc7 shl      r8d, 0x10
000000014055fbcb or       r8d, eax
000000014055fbce mov      al, byte ptr [r9 + 0x28]
000000014055fbd2 jmp      0x14055fcfe
000000014055fbd7 mov      ecx, r8d
000000014055fbda sub      ecx, 7
000000014055fbdd je       0x14055fcda
000000014055fbe3 sub      ecx, 1
000000014055fbe6 je       0x14055fcb4
000000014055fbec sub      ecx, 1
000000014055fbef je       0x14055fc8e
000000014055fbf5 sub      ecx, 1
000000014055fbf8 je       0x14055fc68
000000014055fbfa sub      ecx, 1
000000014055fbfd je       0x14055fc3f
000000014055fbff cmp      ecx, 1
000000014055fc02 je       0x14055fd18
000000014055fc08 mov      rax, qword ptr [r10 + 0x18]
000000014055fc0c lea      r9, [rip + 0x104f9d]
000000014055fc13 mov      rcx, qword ptr [r10 + 8]
000000014055fc17 mov      edx, 2
000000014055fc1c mov      dword ptr [rsp + 0x20], r8d
000000014055fc21 lea      r8, [rip + 0x104fa8]
000000014055fc28 mov      rax, qword ptr [rax + 0x118]
000000014055fc2f call     qword ptr [rip + 0x1246c3]
000000014055fc35 mov      eax, 0x20
000000014055fc3a jmp      0x14055fd1a
000000014055fc3f movzx    r8d, word ptr [r9 + 0x44]
000000014055fc44 mov      edx, 0xb744
000000014055fc49 movzx    eax, word ptr [r9 + 0x42]
000000014055fc4e and      r8d, 0x1fff
000000014055fc55 and      eax, 0x3f
000000014055fc58 shl      r8d, 0x10
000000014055fc5c or       r8d, eax
000000014055fc5f mov      al, byte ptr [r9 + 0x46]
000000014055fc63 jmp      0x14055fcfe
000000014055fc68 movzx    r8d, word ptr [r9 + 0x3e]
000000014055fc6d mov      edx, 0xb740
000000014055fc72 movzx    eax, word ptr [r9 + 0x3c]
000000014055fc77 and      r8d, 0x1fff
000000014055fc7e and      eax, 0x3f
000000014055fc81 shl      r8d, 0x10
000000014055fc85 or       r8d, eax
000000014055fc88 mov      al, byte ptr [r9 + 0x40]
000000014055fc8c jmp      0x14055fcfe
000000014055fc8e movzx    r8d, word ptr [r9 + 0x38]
000000014055fc93 mov      edx, 0xb73c
000000014055fc98 movzx    eax, word ptr [r9 + 0x36]
000000014055fc9d and      r8d, 0x1fff
000000014055fca4 and      eax, 0x3f
000000014055fca7 shl      r8d, 0x10
000000014055fcab or       r8d, eax
000000014055fcae mov      al, byte ptr [r9 + 0x3a]
000000014055fcb2 jmp      0x14055fcfe
000000014055fcb4 movzx    r8d, word ptr [r9 + 0x32]
000000014055fcb9 mov      edx, 0xb738
000000014055fcbe movzx    eax, word ptr [r9 + 0x30]
000000014055fcc3 and      r8d, 0x1fff
000000014055fcca and      eax, 0x3f
000000014055fccd shl      r8d, 0x10
000000014055fcd1 or       r8d, eax
000000014055fcd4 mov      al, byte ptr [r9 + 0x34]
000000014055fcd8 jmp      0x14055fcfe
000000014055fcda movzx    r8d, word ptr [r9 + 0x2c]
000000014055fcdf mov      edx, 0xb734
000000014055fce4 movzx    eax, word ptr [r9 + 0x2a]
000000014055fce9 and      r8d, 0x1fff
000000014055fcf0 and      eax, 0x3f
000000014055fcf3 shl      r8d, 0x10
000000014055fcf7 or       r8d, eax
000000014055fcfa mov      al, byte ptr [r9 + 0x2e]
000000014055fcfe neg      al
000000014055fd00 sbb      ecx, ecx
000000014055fd02 and      ecx, 0x80000000
000000014055fd08 or       r8d, ecx
000000014055fd0b mov      rax, qword ptr [r11 + 0x28]
000000014055fd0f mov      rcx, r10
000000014055fd12 call     qword ptr [rip + 0x1245e0]
000000014055fd18 xor      eax, eax
000000014055fd1a add      rsp, 0x38
000000014055fd1e ret      