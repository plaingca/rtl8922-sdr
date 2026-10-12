00000001405793b0 mov      qword ptr [rsp + 8], rbx
00000001405793b5 mov      qword ptr [rsp + 0x10], rbp
00000001405793ba mov      qword ptr [rsp + 0x18], rsi
00000001405793bf push     rdi
00000001405793c0 push     r12
00000001405793c2 push     r15
00000001405793c4 sub      rsp, 0x30
00000001405793c8 mov      rax, qword ptr [rcx]
00000001405793cb mov      edx, 0x8400
00000001405793d0 mov      rbx, qword ptr [rcx + 0x18]
00000001405793d4 mov      rdi, rcx
00000001405793d7 mov      r12d, 0x118
00000001405793dd mov      rsi, qword ptr [rax]
00000001405793e0 mov      rax, qword ptr [rsi + 0x20]
00000001405793e4 call     qword ptr [rip + 0x10af0e]
00000001405793ea mov      rcx, qword ptr [rdi + 8]
00000001405793ee lea      r8, [rip + 0xeaedb]
00000001405793f5 mov      r9d, eax
00000001405793f8 mov      r15d, 1
00000001405793fe mov      rax, qword ptr [rbx + r12]
0000000140579402 mov      edx, r15d
0000000140579405 call     qword ptr [rip + 0x10aeed]
000000014057940b mov      rax, qword ptr [rsi + 0x20]
000000014057940f mov      edx, 0x8404
0000000140579414 mov      rbx, qword ptr [rdi + 0x18]
0000000140579418 mov      rcx, rdi
000000014057941b call     qword ptr [rip + 0x10aed7]
0000000140579421 mov      rcx, qword ptr [rdi + 8]
0000000140579425 lea      r8, [rip + 0xeaec4]
000000014057942c mov      r9d, eax
000000014057942f mov      edx, r15d
0000000140579432 mov      rax, qword ptr [rbx + r12]
0000000140579436 call     qword ptr [rip + 0x10aebc]
000000014057943c xor      r8d, r8d
000000014057943f xor      edx, edx
0000000140579441 mov      rcx, rdi
0000000140579444 call     0x140429fcc
0000000140579449 mov      rbp, qword ptr [rdi + 0x18]
000000014057944d mov      ebx, eax
000000014057944f test     eax, eax
0000000140579451 je       0x140579478
0000000140579453 mov      rax, qword ptr [rbp + 0x118]
000000014057945a lea      r8, [rip + 0xeaeaf]
0000000140579461 mov      rcx, qword ptr [rdi + 8]
0000000140579465 mov      r9d, ebx
0000000140579468 mov      edx, r15d
000000014057946b call     qword ptr [rip + 0x10ae87]
0000000140579471 mov      eax, ebx
0000000140579473 jmp      0x140579e37
0000000140579478 mov      rax, qword ptr [rsi + 0x20]
000000014057947c mov      edx, 0x8424
0000000140579481 mov      rcx, rdi
0000000140579484 call     qword ptr [rip + 0x10ae6e]
000000014057948a mov      rcx, qword ptr [rdi + 8]
000000014057948e lea      r8, [rip + 0xeae9b]
0000000140579495 mov      r9d, eax
0000000140579498 mov      edx, r15d
000000014057949b mov      rax, qword ptr [rbp + 0x118]
00000001405794a2 call     qword ptr [rip + 0x10ae50]
00000001405794a8 mov      rax, qword ptr [rsi + 0x20]
00000001405794ac mov      edx, 0x8430
00000001405794b1 mov      rbx, qword ptr [rdi + 0x18]
00000001405794b5 mov      rcx, rdi
00000001405794b8 call     qword ptr [rip + 0x10ae3a]
00000001405794be mov      rcx, qword ptr [rdi + 8]
00000001405794c2 lea      r8, [rip + 0xea1e7]
00000001405794c9 mov      r9d, eax
00000001405794cc mov      edx, r15d
00000001405794cf mov      rax, qword ptr [rbx + r12]
00000001405794d3 call     qword ptr [rip + 0x10ae1f]
00000001405794d9 mov      rax, qword ptr [rsi + 0x20]
00000001405794dd mov      edx, 0x8434
00000001405794e2 mov      rbx, qword ptr [rdi + 0x18]
00000001405794e6 mov      rcx, rdi
00000001405794e9 call     qword ptr [rip + 0x10ae09]
00000001405794ef mov      rcx, qword ptr [rdi + 8]
00000001405794f3 lea      r8, [rip + 0xea1d6]
00000001405794fa mov      r9d, eax
00000001405794fd mov      edx, r15d
0000000140579500 mov      rax, qword ptr [rbx + r12]
0000000140579504 call     qword ptr [rip + 0x10adee]
000000014057950a mov      rax, qword ptr [rsi + 0x20]
000000014057950e mov      edx, 0x8520
0000000140579513 mov      rbx, qword ptr [rdi + 0x18]
0000000140579517 mov      rcx, rdi
000000014057951a call     qword ptr [rip + 0x10add8]
0000000140579520 mov      rcx, qword ptr [rdi + 8]
0000000140579524 lea      r8, [rip + 0xeae25]
000000014057952b mov      r9d, eax
000000014057952e mov      edx, r15d
0000000140579531 mov      rax, qword ptr [rbx + r12]
0000000140579535 call     qword ptr [rip + 0x10adbd]
000000014057953b mov      rax, qword ptr [rsi + 0x20]
000000014057953f mov      edx, 0x8524
0000000140579544 mov      rbx, qword ptr [rdi + 0x18]
0000000140579548 mov      rcx, rdi
000000014057954b call     qword ptr [rip + 0x10ada7]
0000000140579551 mov      rcx, qword ptr [rdi + 8]
0000000140579555 lea      r8, [rip + 0xeae14]
000000014057955c mov      r9d, eax
000000014057955f mov      edx, r15d
0000000140579562 mov      rax, qword ptr [rbx + r12]
0000000140579566 call     qword ptr [rip + 0x10ad8c]
000000014057956c mov      rax, qword ptr [rsi + 0x20]
0000000140579570 mov      edx, 0x9430
0000000140579575 mov      rbx, qword ptr [rdi + 0x18]
0000000140579579 mov      rcx, rdi
000000014057957c call     qword ptr [rip + 0x10ad76]
0000000140579582 mov      rcx, qword ptr [rdi + 8]
0000000140579586 lea      r8, [rip + 0xeae03]
000000014057958d mov      r9d, eax
0000000140579590 mov      edx, r15d
0000000140579593 mov      rax, qword ptr [rbx + r12]
0000000140579597 call     qword ptr [rip + 0x10ad5b]
000000014057959d mov      rax, qword ptr [rsi + 0x20]
00000001405795a1 mov      edx, 0x9434
00000001405795a6 mov      rbx, qword ptr [rdi + 0x18]
00000001405795aa mov      rcx, rdi
00000001405795ad call     qword ptr [rip + 0x10ad45]
00000001405795b3 mov      rcx, qword ptr [rdi + 8]
00000001405795b7 lea      r8, [rip + 0xeadf2]
00000001405795be mov      r9d, eax
00000001405795c1 mov      edx, r15d
00000001405795c4 mov      rax, qword ptr [rbx + r12]
00000001405795c8 call     qword ptr [rip + 0x10ad2a]
00000001405795ce mov      rax, qword ptr [rsi + 0x20]
00000001405795d2 mov      edx, 0x9d1c
00000001405795d7 mov      rbx, qword ptr [rdi + 0x18]
00000001405795db mov      rcx, rdi
00000001405795de call     qword ptr [rip + 0x10ad14]
00000001405795e4 mov      rcx, qword ptr [rdi + 8]
00000001405795e8 lea      r8, [rip + 0xeade1]
00000001405795ef mov      r9d, eax
00000001405795f2 mov      edx, r15d
00000001405795f5 mov      rax, qword ptr [rbx + r12]
00000001405795f9 call     qword ptr [rip + 0x10acf9]
00000001405795ff mov      rax, qword ptr [rsi + 0x20]
0000000140579603 mov      edx, 0x9bf4
0000000140579608 mov      rbx, qword ptr [rdi + 0x18]
000000014057960c mov      rcx, rdi
000000014057960f call     qword ptr [rip + 0x10ace3]
0000000140579615 mov      rcx, qword ptr [rdi + 8]
0000000140579619 lea      r8, [rip + 0xeadd0]
0000000140579620 mov      r9d, eax
0000000140579623 mov      edx, r15d
0000000140579626 mov      rax, qword ptr [rbx + r12]
000000014057962a call     qword ptr [rip + 0x10acc8]
0000000140579630 mov      rax, qword ptr [rsi + 0x20]
0000000140579634 mov      ebp, 0x9bf0
0000000140579639 mov      rbx, qword ptr [rdi + 0x18]
000000014057963d mov      edx, ebp
000000014057963f mov      rcx, rdi
0000000140579642 call     qword ptr [rip + 0x10acb0]
0000000140579648 mov      rcx, qword ptr [rdi + 8]
000000014057964c lea      r8, [rip + 0xeadbd]
0000000140579653 mov      r9d, eax
0000000140579656 mov      edx, r15d
0000000140579659 mov      rax, qword ptr [rbx + r12]
000000014057965d call     qword ptr [rip + 0x10ac95]
0000000140579663 mov      rax, qword ptr [rsi + 0x20]
0000000140579667 mov      edx, 0x9cf4
000000014057966c mov      rbx, qword ptr [rdi + 0x18]
0000000140579670 mov      rcx, rdi
0000000140579673 call     qword ptr [rip + 0x10ac7f]
0000000140579679 mov      rcx, qword ptr [rdi + 8]
000000014057967d lea      r8, [rip + 0xeadac]
0000000140579684 mov      r9d, eax
0000000140579687 mov      edx, r15d
000000014057968a mov      rax, qword ptr [rbx + r12]
000000014057968e call     qword ptr [rip + 0x10ac64]
0000000140579694 mov      rax, qword ptr [rsi + 0x20]
0000000140579698 mov      edx, 0x9cf0
000000014057969d mov      rbx, qword ptr [rdi + 0x18]
00000001405796a1 mov      rcx, rdi
00000001405796a4 call     qword ptr [rip + 0x10ac4e]
00000001405796aa mov      rcx, qword ptr [rdi + 8]
00000001405796ae lea      r8, [rip + 0xead9b]
00000001405796b5 mov      r9d, eax
00000001405796b8 mov      edx, r15d
00000001405796bb mov      rax, qword ptr [rbx + r12]
00000001405796bf call     qword ptr [rip + 0x10ac33]
00000001405796c5 mov      rax, qword ptr [rsi + 0x20]
00000001405796c9 mov      edx, 0x8c38
00000001405796ce mov      rbx, qword ptr [rdi + 0x18]
00000001405796d2 mov      rcx, rdi
00000001405796d5 call     qword ptr [rip + 0x10ac1d]
00000001405796db mov      rcx, qword ptr [rdi + 8]
00000001405796df lea      r8, [rip + 0xeadea]
00000001405796e6 mov      r9d, eax
00000001405796e9 mov      edx, r15d
00000001405796ec mov      rax, qword ptr [rbx + r12]
00000001405796f0 call     qword ptr [rip + 0x10ac02]
00000001405796f6 mov      rax, qword ptr [rsi + 0x20]
00000001405796fa mov      edx, 0x8c3c
00000001405796ff mov      rbx, qword ptr [rdi + 0x18]
0000000140579703 mov      rcx, rdi
0000000140579706 call     qword ptr [rip + 0x10abec]
000000014057970c mov      rcx, qword ptr [rdi + 8]
0000000140579710 lea      r8, [rip + 0xeadd9]
0000000140579717 mov      r9d, eax
000000014057971a mov      edx, r15d
000000014057971d mov      rax, qword ptr [rbx + r12]
0000000140579721 call     qword ptr [rip + 0x10abd1]
0000000140579727 mov      rax, qword ptr [rsi + 0x20]
000000014057972b mov      edx, 0x9f78
0000000140579730 mov      rbx, qword ptr [rdi + 0x18]
0000000140579734 mov      rcx, rdi
0000000140579737 call     qword ptr [rip + 0x10abbb]
000000014057973d mov      r9d, eax
0000000140579740 lea      r8, [rip + 0xeadc9]
0000000140579747 mov      rax, qword ptr [rbx + r12]
000000014057974b mov      rcx, qword ptr [rdi + 8]
000000014057974f mov      edx, r15d
0000000140579752 call     qword ptr [rip + 0x10aba0]
0000000140579758 mov      rax, qword ptr [rsi + 0x20]
000000014057975c mov      edx, 0x9f7c
0000000140579761 mov      rbx, qword ptr [rdi + 0x18]
0000000140579765 mov      rcx, rdi
0000000140579768 call     qword ptr [rip + 0x10ab8a]
000000014057976e mov      rcx, qword ptr [rdi + 8]
0000000140579772 lea      r8, [rip + 0xeadc7]
0000000140579779 mov      r9d, eax
000000014057977c mov      edx, r15d
000000014057977f mov      rax, qword ptr [rbx + r12]
0000000140579783 call     qword ptr [rip + 0x10ab6f]
0000000140579789 mov      rax, qword ptr [rsi + 0x20]
000000014057978d mov      edx, 0x9fb8
0000000140579792 mov      rbx, qword ptr [rdi + 0x18]
0000000140579796 mov      rcx, rdi
0000000140579799 call     qword ptr [rip + 0x10ab59]
000000014057979f mov      rcx, qword ptr [rdi + 8]
00000001405797a3 lea      r8, [rip + 0xeadc6]
00000001405797aa mov      r9d, eax
00000001405797ad mov      edx, r15d
00000001405797b0 mov      rax, qword ptr [rbx + r12]
00000001405797b4 call     qword ptr [rip + 0x10ab3e]
00000001405797ba mov      rax, qword ptr [rsi + 0x20]
00000001405797be mov      edx, 0x9fbc
00000001405797c3 mov      rbx, qword ptr [rdi + 0x18]
00000001405797c7 mov      rcx, rdi
00000001405797ca call     qword ptr [rip + 0x10ab28]
00000001405797d0 mov      rcx, qword ptr [rdi + 8]
00000001405797d4 lea      r8, [rip + 0xeadc5]
00000001405797db mov      r9d, eax
00000001405797de mov      edx, r15d
00000001405797e1 mov      rax, qword ptr [rbx + r12]
00000001405797e5 call     qword ptr [rip + 0x10ab0d]
00000001405797eb mov      rax, qword ptr [rsi + 0x20]
00000001405797ef mov      edx, 0x9038
00000001405797f4 mov      rbx, qword ptr [rdi + 0x18]
00000001405797f8 mov      rcx, rdi
00000001405797fb call     qword ptr [rip + 0x10aaf7]
0000000140579801 mov      rcx, qword ptr [rdi + 8]
0000000140579805 lea      r8, [rip + 0xeadc4]
000000014057980c mov      r9d, eax
000000014057980f mov      edx, r15d
0000000140579812 mov      rax, qword ptr [rbx + r12]
0000000140579816 call     qword ptr [rip + 0x10aadc]
000000014057981c mov      rax, qword ptr [rsi + 0x20]
0000000140579820 mov      edx, 0x903c
0000000140579825 mov      rbx, qword ptr [rdi + 0x18]
0000000140579829 mov      rcx, rdi
000000014057982c call     qword ptr [rip + 0x10aac6]
0000000140579832 mov      rcx, qword ptr [rdi + 8]
0000000140579836 lea      r8, [rip + 0xeadb3]
000000014057983d mov      r9d, eax
0000000140579840 mov      edx, r15d
0000000140579843 mov      rax, qword ptr [rbx + r12]
0000000140579847 call     qword ptr [rip + 0x10aaab]
000000014057984d mov      rax, qword ptr [rsi + 0x20]
0000000140579851 mov      edx, 0x9a20
0000000140579856 mov      rbx, qword ptr [rdi + 0x18]
000000014057985a mov      rcx, rdi
000000014057985d call     qword ptr [rip + 0x10aa95]
0000000140579863 mov      rcx, qword ptr [rdi + 8]
0000000140579867 lea      r8, [rip + 0xeada2]
000000014057986e mov      r9d, eax
0000000140579871 mov      edx, r15d
0000000140579874 mov      rax, qword ptr [rbx + r12]
0000000140579878 call     qword ptr [rip + 0x10aa7a]
000000014057987e mov      rax, qword ptr [rsi + 0x20]
0000000140579882 mov      edx, 0x9a24
0000000140579887 mov      rbx, qword ptr [rdi + 0x18]
000000014057988b mov      rcx, rdi
000000014057988e call     qword ptr [rip + 0x10aa64]
0000000140579894 mov      rcx, qword ptr [rdi + 8]
0000000140579898 lea      r8, [rip + 0xead91]
000000014057989f mov      r9d, eax
00000001405798a2 mov      edx, r15d
00000001405798a5 mov      rax, qword ptr [rbx + r12]
00000001405798a9 call     qword ptr [rip + 0x10aa49]
00000001405798af mov      rbx, qword ptr [rdi + 0x18]
00000001405798b3 mov      rax, qword ptr [rsi + 0x20]
00000001405798b7 mov      edx, 0x8870
00000001405798bc mov      rcx, rdi
00000001405798bf call     qword ptr [rip + 0x10aa33]
00000001405798c5 mov      rcx, qword ptr [rdi + 8]
00000001405798c9 lea      r8, [rip + 0xead80]
00000001405798d0 mov      r9d, eax
00000001405798d3 mov      edx, r15d
00000001405798d6 mov      rax, qword ptr [rbx + r12]
00000001405798da call     qword ptr [rip + 0x10aa18]
00000001405798e0 mov      rax, qword ptr [rsi + 0x20]
00000001405798e4 mov      edx, 0x8804
00000001405798e9 mov      rbx, qword ptr [rdi + 0x18]
00000001405798ed mov      rcx, rdi
00000001405798f0 call     qword ptr [rip + 0x10aa02]
00000001405798f6 mov      rcx, qword ptr [rdi + 8]
00000001405798fa lea      r8, [rip + 0xead6f]
0000000140579901 mov      r9d, eax
0000000140579904 mov      edx, r15d
0000000140579907 mov      rax, qword ptr [rbx + r12]
000000014057990b call     qword ptr [rip + 0x10a9e7]
0000000140579911 mov      rax, qword ptr [rsi + 0x20]
0000000140579915 mov      edx, 0x8874
000000014057991a mov      rbx, qword ptr [rdi + 0x18]
000000014057991e mov      rcx, rdi
0000000140579921 call     qword ptr [rip + 0x10a9d1]
0000000140579927 mov      rcx, qword ptr [rdi + 8]
000000014057992b lea      r8, [rip + 0xead5e]
0000000140579932 mov      r9d, eax
0000000140579935 mov      edx, r15d
0000000140579938 mov      rax, qword ptr [rbx + r12]
000000014057993c call     qword ptr [rip + 0x10a9b6]
0000000140579942 mov      rax, qword ptr [rsi + 0x20]
0000000140579946 mov      edx, 0x8808
000000014057994b mov      rbx, qword ptr [rdi + 0x18]
000000014057994f mov      rcx, rdi
0000000140579952 call     qword ptr [rip + 0x10a9a0]
0000000140579958 mov      rcx, qword ptr [rdi + 8]
000000014057995c lea      r8, [rip + 0xead4d]
0000000140579963 mov      r9d, eax
0000000140579966 mov      edx, r15d
0000000140579969 mov      rax, qword ptr [rbx + r12]
000000014057996d call     qword ptr [rip + 0x10a985]
0000000140579973 mov      rax, qword ptr [rsi + 0x20]
0000000140579977 mov      edx, 0x8878
000000014057997c mov      rbx, qword ptr [rdi + 0x18]
0000000140579980 mov      rcx, rdi
0000000140579983 call     qword ptr [rip + 0x10a96f]
0000000140579989 mov      rcx, qword ptr [rdi + 8]
000000014057998d lea      r8, [rip + 0xead3c]
0000000140579994 mov      r9d, eax
0000000140579997 mov      edx, r15d
000000014057999a mov      rax, qword ptr [rbx + r12]
000000014057999e call     qword ptr [rip + 0x10a954]
00000001405799a4 mov      rax, qword ptr [rsi + 0x20]
00000001405799a8 mov      edx, 0x880c
00000001405799ad mov      rbx, qword ptr [rdi + 0x18]
00000001405799b1 mov      rcx, rdi
00000001405799b4 call     qword ptr [rip + 0x10a93e]
00000001405799ba mov      rcx, qword ptr [rdi + 8]
00000001405799be lea      r8, [rip + 0xead2b]
00000001405799c5 mov      r9d, eax
00000001405799c8 mov      edx, r15d
00000001405799cb mov      rax, qword ptr [rbx + r12]
00000001405799cf call     qword ptr [rip + 0x10a923]
00000001405799d5 mov      rax, qword ptr [rsi + 0x20]
00000001405799d9 mov      edx, 0x9888
00000001405799de mov      rbx, qword ptr [rdi + 0x18]
00000001405799e2 mov      rcx, rdi
00000001405799e5 call     qword ptr [rip + 0x10a90d]
00000001405799eb mov      rcx, qword ptr [rdi + 8]
00000001405799ef lea      r8, [rip + 0xead1a]
00000001405799f6 mov      r9d, eax
00000001405799f9 mov      edx, r15d
00000001405799fc mov      rax, qword ptr [rbx + r12]
0000000140579a00 call     qword ptr [rip + 0x10a8f2]
0000000140579a06 mov      rax, qword ptr [rsi + 0x20]
0000000140579a0a mov      edx, 0x988c
0000000140579a0f mov      rbx, qword ptr [rdi + 0x18]
0000000140579a13 mov      rcx, rdi
0000000140579a16 call     qword ptr [rip + 0x10a8dc]
0000000140579a1c mov      rcx, qword ptr [rdi + 8]
0000000140579a20 lea      r8, [rip + 0xead09]
0000000140579a27 mov      r9d, eax
0000000140579a2a mov      edx, r15d
0000000140579a2d mov      rax, qword ptr [rbx + r12]
0000000140579a31 call     qword ptr [rip + 0x10a8c1]
0000000140579a37 mov      rax, qword ptr [rsi + 0x20]
0000000140579a3b mov      edx, 0x960c
0000000140579a40 mov      rbx, qword ptr [rdi + 0x18]
0000000140579a44 mov      rcx, rdi
0000000140579a47 call     qword ptr [rip + 0x10a8ab]
0000000140579a4d mov      rcx, qword ptr [rdi + 8]
0000000140579a51 lea      r8, [rip + 0xeacf8]
0000000140579a58 mov      r9d, eax
0000000140579a5b mov      edx, r15d
0000000140579a5e mov      rax, qword ptr [rbx + r12]
0000000140579a62 call     qword ptr [rip + 0x10a890]
0000000140579a68 mov      rax, qword ptr [rsi + 0x20]
0000000140579a6c mov      edx, 0x962c
0000000140579a71 mov      rbx, qword ptr [rdi + 0x18]
0000000140579a75 mov      rcx, rdi
0000000140579a78 call     qword ptr [rip + 0x10a87a]
0000000140579a7e mov      rcx, qword ptr [rdi + 8]
0000000140579a82 lea      r8, [rip + 0xeacf7]
0000000140579a89 mov      r9d, eax
0000000140579a8c mov      edx, r15d
0000000140579a8f mov      rax, qword ptr [rbx + r12]
0000000140579a93 call     qword ptr [rip + 0x10a85f]
0000000140579a99 mov      rax, qword ptr [rsi + 0x20]
0000000140579a9d mov      edx, 0x963c
0000000140579aa2 mov      rbx, qword ptr [rdi + 0x18]
0000000140579aa6 mov      rcx, rdi
0000000140579aa9 call     qword ptr [rip + 0x10a849]
0000000140579aaf mov      rcx, qword ptr [rdi + 8]
0000000140579ab3 lea      r8, [rip + 0xeacf6]
0000000140579aba mov      r9d, eax
0000000140579abd mov      edx, r15d
0000000140579ac0 mov      rax, qword ptr [rbx + r12]
0000000140579ac4 call     qword ptr [rip + 0x10a82e]
0000000140579aca mov      rax, qword ptr [rsi + 0x20]
0000000140579ace mov      edx, 0x9668
0000000140579ad3 mov      rbx, qword ptr [rdi + 0x18]
0000000140579ad7 mov      rcx, rdi
0000000140579ada call     qword ptr [rip + 0x10a818]
0000000140579ae0 mov      rcx, qword ptr [rdi + 8]
0000000140579ae4 lea      r8, [rip + 0xeacf5]
0000000140579aeb mov      r9d, eax
0000000140579aee mov      edx, r15d
0000000140579af1 mov      rax, qword ptr [rbx + r12]
0000000140579af5 call     qword ptr [rip + 0x10a7fd]
0000000140579afb mov      rax, qword ptr [rsi + 0x20]
0000000140579aff mov      edx, 0x966c
0000000140579b04 mov      rbx, qword ptr [rdi + 0x18]
0000000140579b08 mov      rcx, rdi
0000000140579b0b call     qword ptr [rip + 0x10a7e7]
0000000140579b11 mov      rcx, qword ptr [rdi + 8]
0000000140579b15 lea      r8, [rip + 0xeace4]
0000000140579b1c mov      r9d, eax
0000000140579b1f mov      edx, r15d
0000000140579b22 mov      rax, qword ptr [rbx + r12]
0000000140579b26 call     qword ptr [rip + 0x10a7cc]
0000000140579b2c mov      rax, qword ptr [rsi + 0x20]
0000000140579b30 mov      edx, 0xb714
0000000140579b35 mov      rbx, qword ptr [rdi + 0x18]
0000000140579b39 mov      rcx, rdi
0000000140579b3c call     qword ptr [rip + 0x10a7b6]
0000000140579b42 mov      rcx, qword ptr [rdi + 8]
0000000140579b46 lea      r8, [rip + 0xeacd3]
0000000140579b4d mov      r9d, eax
0000000140579b50 mov      edx, r15d
0000000140579b53 mov      rax, qword ptr [rbx + r12]
0000000140579b57 call     qword ptr [rip + 0x10a79b]
0000000140579b5d mov      rax, qword ptr [rsi + 0x20]
0000000140579b61 mov      edx, 0x8800
0000000140579b66 mov      rbx, qword ptr [rdi + 0x18]
0000000140579b6a mov      rcx, rdi
0000000140579b6d call     qword ptr [rip + 0x10a785]
0000000140579b73 lea      r8, [rip + 0xeacc6]
0000000140579b7a mov      edx, r15d
0000000140579b7d mov      r9d, eax
0000000140579b80 mov      rax, qword ptr [rbx + r12]
0000000140579b84 mov      rcx, qword ptr [rdi + 8]
0000000140579b88 call     qword ptr [rip + 0x10a76a]
0000000140579b8e mov      rax, qword ptr [rsi + 0x20]
0000000140579b92 mov      edx, 0x9a00
0000000140579b97 mov      rbx, qword ptr [rdi + 0x18]
0000000140579b9b mov      rcx, rdi
0000000140579b9e call     qword ptr [rip + 0x10a754]
0000000140579ba4 mov      rcx, qword ptr [rdi + 8]
0000000140579ba8 lea      r8, [rip + 0xeacc1]
0000000140579baf mov      r9d, eax
0000000140579bb2 mov      edx, r15d
0000000140579bb5 mov      rax, qword ptr [rbx + r12]
0000000140579bb9 call     qword ptr [rip + 0x10a739]
0000000140579bbf mov      rax, qword ptr [rsi + 0x20]
0000000140579bc3 lea      edx, [rbp - 4]
0000000140579bc6 mov      rbx, qword ptr [rdi + 0x18]
0000000140579bca mov      rcx, rdi
0000000140579bcd call     qword ptr [rip + 0x10a725]
0000000140579bd3 mov      rcx, qword ptr [rdi + 8]
0000000140579bd7 lea      r8, [rip + 0xeacb2]
0000000140579bde mov      r9d, eax
0000000140579be1 mov      edx, r15d
0000000140579be4 mov      rax, qword ptr [rbx + r12]
0000000140579be8 call     qword ptr [rip + 0x10a70a]
0000000140579bee mov      rax, qword ptr [rsi + 0x20]
0000000140579bf2 mov      edx, ebp
0000000140579bf4 mov      rbx, qword ptr [rdi + 0x18]
0000000140579bf8 mov      rcx, rdi
0000000140579bfb call     qword ptr [rip + 0x10a6f7]
0000000140579c01 mov      rcx, qword ptr [rdi + 8]
0000000140579c05 lea      r8, [rip + 0xeaca4]
0000000140579c0c mov      r9d, eax
0000000140579c0f mov      edx, r15d
0000000140579c12 mov      rax, qword ptr [rbx + r12]
0000000140579c16 call     qword ptr [rip + 0x10a6dc]
0000000140579c1c mov      rax, qword ptr [rsi + 0x20]
0000000140579c20 lea      edx, [rbp + 4]
0000000140579c23 mov      rbx, qword ptr [rdi + 0x18]
0000000140579c27 mov      rcx, rdi
0000000140579c2a call     qword ptr [rip + 0x10a6c8]
0000000140579c30 mov      rcx, qword ptr [rdi + 8]
0000000140579c34 lea      r8, [rip + 0xeac95]
0000000140579c3b mov      r9d, eax
0000000140579c3e mov      edx, r15d
0000000140579c41 mov      rax, qword ptr [rbx + r12]
0000000140579c45 call     qword ptr [rip + 0x10a6ad]
0000000140579c4b mov      rax, qword ptr [rsi + 0x20]
0000000140579c4f mov      edx, 0x9ce8
0000000140579c54 mov      rbx, qword ptr [rdi + 0x18]
0000000140579c58 mov      rcx, rdi
0000000140579c5b call     qword ptr [rip + 0x10a697]
0000000140579c61 mov      rcx, qword ptr [rdi + 8]
0000000140579c65 lea      r8, [rip + 0xeac84]
0000000140579c6c mov      r9d, eax
0000000140579c6f mov      edx, r15d
0000000140579c72 mov      rax, qword ptr [rbx + r12]
0000000140579c76 call     qword ptr [rip + 0x10a67c]
0000000140579c7c mov      rax, qword ptr [rsi + 0x20]
0000000140579c80 mov      edx, 0x9cec
0000000140579c85 mov      rbx, qword ptr [rdi + 0x18]
0000000140579c89 mov      rcx, rdi
0000000140579c8c call     qword ptr [rip + 0x10a666]
0000000140579c92 mov      rcx, qword ptr [rdi + 8]
0000000140579c96 lea      r8, [rip + 0xeac73]
0000000140579c9d mov      r9d, eax
0000000140579ca0 mov      edx, r15d
0000000140579ca3 mov      rax, qword ptr [rbx + r12]
0000000140579ca7 call     qword ptr [rip + 0x10a64b]
0000000140579cad mov      rax, qword ptr [rsi + 0x20]
0000000140579cb1 mov      edx, 0xa610
0000000140579cb6 mov      rbx, qword ptr [rdi + 0x18]
0000000140579cba mov      rcx, rdi
0000000140579cbd call     qword ptr [rip + 0x10a635]
0000000140579cc3 mov      rcx, qword ptr [rdi + 8]
0000000140579cc7 lea      r8, [rip + 0xeac62]
0000000140579cce mov      r9d, eax
0000000140579cd1 mov      edx, r15d
0000000140579cd4 mov      rax, qword ptr [rbx + r12]
0000000140579cd8 call     qword ptr [rip + 0x10a61a]
0000000140579cde mov      rax, qword ptr [rsi + 0x20]
0000000140579ce2 mov      rbx, qword ptr [rdi + 0x18]
0000000140579ce6 mov      edx, 0xa60c
0000000140579ceb mov      rcx, rdi
0000000140579cee call     qword ptr [rip + 0x10a604]
0000000140579cf4 mov      rcx, qword ptr [rdi + 8]
0000000140579cf8 lea      r8, [rip + 0xeacb1]
0000000140579cff mov      r9d, eax
0000000140579d02 mov      edx, r15d
0000000140579d05 mov      rax, qword ptr [rbx + r12]
0000000140579d09 call     qword ptr [rip + 0x10a5e9]
0000000140579d0f mov      rax, qword ptr [rsi + 0x20]
0000000140579d13 mov      edx, 0x8c30
0000000140579d18 mov      rbx, qword ptr [rdi + 0x18]
0000000140579d1c mov      rcx, rdi
0000000140579d1f call     qword ptr [rip + 0x10a5d3]
0000000140579d25 mov      rcx, qword ptr [rdi + 8]
0000000140579d29 lea      r8, [rip + 0xeaca0]
0000000140579d30 mov      r9d, eax
0000000140579d33 mov      edx, r15d
0000000140579d36 mov      rax, qword ptr [rbx + r12]
0000000140579d3a call     qword ptr [rip + 0x10a5b8]
0000000140579d40 mov      rax, qword ptr [rsi + 0x20]
0000000140579d44 mov      edx, 0x8d20
0000000140579d49 mov      rbx, qword ptr [rdi + 0x18]
0000000140579d4d mov      rcx, rdi
0000000140579d50 call     qword ptr [rip + 0x10a5a2]
0000000140579d56 mov      rcx, qword ptr [rdi + 8]
0000000140579d5a lea      r8, [rip + 0xeac8f]
0000000140579d61 mov      r9d, eax
0000000140579d64 mov      edx, r15d
0000000140579d67 mov      rax, qword ptr [rbx + r12]
0000000140579d6b call     qword ptr [rip + 0x10a587]
0000000140579d71 mov      rax, qword ptr [rsi + 0x20]
0000000140579d75 mov      edx, 0x8d24
0000000140579d7a mov      rbx, qword ptr [rdi + 0x18]
0000000140579d7e mov      rcx, rdi
0000000140579d81 call     qword ptr [rip + 0x10a571]
0000000140579d87 mov      rcx, qword ptr [rdi + 8]
0000000140579d8b lea      r8, [rip + 0xeac7e]
0000000140579d92 mov      r9d, eax
0000000140579d95 mov      edx, r15d
0000000140579d98 mov      rax, qword ptr [rbx + r12]
0000000140579d9c call     qword ptr [rip + 0x10a556]
0000000140579da2 mov      rax, qword ptr [rsi + 0x20]
0000000140579da6 mov      edx, 0x9030
0000000140579dab mov      rbx, qword ptr [rdi + 0x18]
0000000140579daf mov      rcx, rdi
0000000140579db2 call     qword ptr [rip + 0x10a540]
0000000140579db8 mov      rcx, qword ptr [rdi + 8]
0000000140579dbc lea      r8, [rip + 0xeac6d]
0000000140579dc3 mov      r9d, eax
0000000140579dc6 mov      edx, r15d
0000000140579dc9 mov      rax, qword ptr [rbx + r12]
0000000140579dcd call     qword ptr [rip + 0x10a525]
0000000140579dd3 mov      rax, qword ptr [rsi + 0x20]
0000000140579dd7 mov      edx, 0x9120
0000000140579ddc mov      rbx, qword ptr [rdi + 0x18]
0000000140579de0 mov      rcx, rdi
0000000140579de3 call     qword ptr [rip + 0x10a50f]
0000000140579de9 mov      rcx, qword ptr [rdi + 8]
0000000140579ded lea      r8, [rip + 0xeac5c]
0000000140579df4 mov      r9d, eax
0000000140579df7 mov      edx, r15d
0000000140579dfa mov      rax, qword ptr [rbx + r12]
0000000140579dfe call     qword ptr [rip + 0x10a4f4]
0000000140579e04 mov      rax, qword ptr [rsi + 0x20]
0000000140579e08 mov      edx, 0x9124
0000000140579e0d mov      rbx, qword ptr [rdi + 0x18]
0000000140579e11 mov      rcx, rdi
0000000140579e14 call     qword ptr [rip + 0x10a4de]
0000000140579e1a mov      rcx, qword ptr [rdi + 8]
0000000140579e1e lea      r8, [rip + 0xeac4b]
0000000140579e25 mov      r9d, eax
0000000140579e28 mov      edx, r15d
0000000140579e2b mov      rax, qword ptr [rbx + r12]
0000000140579e2f call     qword ptr [rip + 0x10a4c3]
0000000140579e35 xor      eax, eax
0000000140579e37 mov      rbx, qword ptr [rsp + 0x50]
0000000140579e3c mov      rbp, qword ptr [rsp + 0x58]
0000000140579e41 mov      rsi, qword ptr [rsp + 0x60]
0000000140579e46 add      rsp, 0x30
0000000140579e4a pop      r15
0000000140579e4c pop      r12
0000000140579e4e pop      rdi
0000000140579e4f ret      