0000000140030788 mov      qword ptr [rsp + 0x18], rbx
000000014003078d push     rbp
000000014003078e mov      rbp, rsp
0000000140030791 sub      rsp, 0x80
0000000140030798 and      qword ptr [rbp + 0x10], 0
000000014003079d mov      rbx, rdx
00000001400307a0 mov      dl, byte ptr [rip + 0xca4462]
00000001400307a6 or       r9d, 0xffffffff
00000001400307aa and      dword ptr [rbp - 0x24], 0
00000001400307ae xorps    xmm0, xmm0
00000001400307b1 and      qword ptr [rbp - 0x10], 0
00000001400307b6 mov      r8, rcx
00000001400307b9 movdqu   xmmword ptr [rbp - 0x34], xmm0
00000001400307be test     dl, dl
00000001400307c0 je       0x1400307e3
00000001400307c2 cmp      dword ptr [rip + 0x8f6cf7], 0x26
00000001400307c9 jbe      0x1400307dd
00000001400307cb mov      rax, qword ptr [rip + 0xca420e]
00000001400307d2 mov      ecx, dword ptr [rax + 0x130]
00000001400307d8 mov      dword ptr [rbp - 0x38], ecx
00000001400307db jmp      0x1400307ea
00000001400307dd mov      dword ptr [rbp - 0x38], r9d
00000001400307e1 jmp      0x1400307ea
00000001400307e3 mov      dword ptr [rbp - 0x38], 0x38
00000001400307ea mov      rax, qword ptr [rip + 0x8f56df]
00000001400307f1 mov      qword ptr [rbp - 8], rax
00000001400307f5 mov      rax, qword ptr [r8 + 8]
00000001400307f9 mov      qword ptr [rbp - 0x18], rax
00000001400307fd xor      eax, eax
00000001400307ff mov      dword ptr [rbp - 0x20], 1
0000000140030806 mov      dword ptr [rbp - 0x1c], 1
000000014003080d mov      qword ptr [rbp - 0x40], rax
0000000140030811 movups   xmmword ptr [rbp - 0x50], xmm0
0000000140030815 test     dl, dl
0000000140030817 je       0x14003083a
0000000140030819 cmp      dword ptr [rip + 0x8f6ca0], 0x43
0000000140030820 jbe      0x140030834
0000000140030822 mov      rax, qword ptr [rip + 0xca41b7]
0000000140030829 mov      ecx, dword ptr [rax + 0x218]
000000014003082f mov      dword ptr [rbp - 0x50], ecx
0000000140030832 jmp      0x140030841
0000000140030834 mov      dword ptr [rbp - 0x50], r9d
0000000140030838 jmp      0x140030841
000000014003083a mov      dword ptr [rbp - 0x50], 0x18
0000000140030841 mov      rcx, qword ptr [rip + 0xca43e0]
0000000140030848 lea      rax, [rip + 0x1081]
000000014003084f mov      qword ptr [rbp - 0x48], rax
0000000140030853 lea      r9, [rbp + 0x18]
0000000140030857 mov      rax, qword ptr [rip + 0xca439a]
000000014003085e lea      r8, [rbp - 0x38]
0000000140030862 mov      byte ptr [rbp - 0x40], 1
0000000140030866 lea      rdx, [rbp - 0x50]
000000014003086a mov      rax, qword ptr [rax + 0xbd8]
0000000140030871 call     qword ptr [rip + 0x653a81]
0000000140030877 test     eax, eax
0000000140030879 jns      0x1400308c1
000000014003087b test     rbx, rbx
000000014003087e je       0x14003088e
0000000140030880 xor      edx, edx
0000000140030882 mov      rcx, rbx
0000000140030885 lea      r8d, [rdx + 0x70]
0000000140030889 call     0x1405f4640
000000014003088e mov      rcx, qword ptr [rip + 0x8ef76b]
0000000140030895 lea      rax, [rip + 0x8ef764]
000000014003089c cmp      rcx, rax
000000014003089f je       0x140030950
00000001400308a5 cmp      byte ptr [rcx + 0x29], 2
00000001400308a9 jb       0x140030950
00000001400308af mov      eax, dword ptr [rcx + 0x2c]
00000001400308b2 test     al, 1
00000001400308b4 je       0x140030950
00000001400308ba mov      edx, 0xa
00000001400308bf jmp      0x140030940
00000001400308c1 mov      rax, qword ptr [rbp + 0x18]
00000001400308c5 lea      rcx, [rbx + 0x38]
00000001400308c9 and      qword ptr [rbx + 0x30], 0
00000001400308ce mov      qword ptr [rbx], rax
00000001400308d1 call     0x14007dbe0
00000001400308d6 mov      rcx, qword ptr [rbp + 0x18]
00000001400308da lea      r8, [rbp + 0x10]
00000001400308de mov      edx, eax
00000001400308e0 mov      r9d, 0x20
00000001400308e6 call     0x1400304d0
00000001400308eb test     eax, eax
00000001400308ed jns      0x140030957
00000001400308ef mov      rax, qword ptr [rip + 0xca4302]
00000001400308f6 mov      rdx, qword ptr [rbx]
00000001400308f9 mov      rcx, qword ptr [rip + 0xca4328]
0000000140030900 mov      rax, qword ptr [rax + 0x680]
0000000140030907 call     qword ptr [rip + 0x6539eb]
000000014003090d xor      edx, edx
000000014003090f mov      rcx, rbx
0000000140030912 lea      r8d, [rdx + 0x70]
0000000140030916 call     0x1405f4640
000000014003091b mov      rcx, qword ptr [rip + 0x8ef6de]
0000000140030922 lea      rax, [rip + 0x8ef6d7]
0000000140030929 cmp      rcx, rax
000000014003092c je       0x140030950
000000014003092e cmp      byte ptr [rcx + 0x29], 2
0000000140030932 jb       0x140030950
0000000140030934 mov      eax, dword ptr [rcx + 0x2c]
0000000140030937 test     al, 1
0000000140030939 je       0x140030950
000000014003093b mov      edx, 0xb
0000000140030940 mov      rcx, qword ptr [rcx + 0x18]
0000000140030944 lea      r8, [rip + 0x659665]
000000014003094b call     0x140001b88
0000000140030950 mov      eax, 3
0000000140030955 jmp      0x14003099d
0000000140030957 mov      rax, qword ptr [rbp + 0x10]
000000014003095b test     rax, rax
000000014003095e je       0x14003096e
0000000140030960 xorps    xmm0, xmm0
0000000140030963 movups   xmmword ptr [rax], xmm0
0000000140030966 movups   xmmword ptr [rax + 0x10], xmm0
000000014003096a mov      rax, qword ptr [rbp + 0x10]
000000014003096e mov      rdx, qword ptr [rbp + 0x18]
0000000140030972 mov      qword ptr [rbx + 0x30], rax
0000000140030976 mov      rax, qword ptr [rip + 0xca427b]
000000014003097d mov      r8, qword ptr [rip + 0x8f554c]
0000000140030984 mov      rcx, qword ptr [rip + 0xca429d]
000000014003098b mov      rax, qword ptr [rax + 0x650]
0000000140030992 call     qword ptr [rip + 0x653960]
0000000140030998 mov      qword ptr [rax], rbx
000000014003099b xor      eax, eax
000000014003099d mov      rbx, qword ptr [rsp + 0xa0]
00000001400309a5 add      rsp, 0x80
00000001400309ac pop      rbp
00000001400309ad ret      