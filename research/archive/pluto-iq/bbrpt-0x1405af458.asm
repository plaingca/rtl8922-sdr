00000001405af458 mov      qword ptr [rsp + 8], rbx
00000001405af45d mov      qword ptr [rsp + 0x10], rsi
00000001405af462 push     rdi
00000001405af463 sub      rsp, 0x30
00000001405af467 mov      rbx, rcx
00000001405af46a cmp      edx, 7
00000001405af46d ja       0x1405af75e
00000001405af473 je       0x1405af6de
00000001405af479 mov      eax, edx
00000001405af47b sub      eax, 1
00000001405af47e je       0x1405af67c
00000001405af484 sub      eax, 1
00000001405af487 je       0x1405af61a
00000001405af48d sub      eax, 2
00000001405af490 je       0x1405af5a5
00000001405af496 sub      eax, 1
00000001405af499 je       0x1405af543
00000001405af49f cmp      eax, 1
00000001405af4a2 jne      0x1405af77e
00000001405af4a8 mov      rax, qword ptr [rcx + 0x18]
00000001405af4ac lea      r8, [rip + 0xbe2fd]
00000001405af4b3 mov      rcx, qword ptr [rcx + 8]
00000001405af4b7 mov      esi, 1
00000001405af4bc mov      edx, esi
00000001405af4be mov      rax, qword ptr [rax + 0x118]
00000001405af4c5 call     qword ptr [rip + 0xd4e2d]
00000001405af4cb mov      rax, qword ptr [rbx + 0x18]
00000001405af4cf lea      r8, [rip + 0xbe29a]
00000001405af4d6 mov      rcx, qword ptr [rbx + 8]
00000001405af4da mov      edx, esi
00000001405af4dc mov      rax, qword ptr [rax + 0x118]
00000001405af4e3 call     qword ptr [rip + 0xd4e0f]
00000001405af4e9 lea      edx, [rsi + 2]
00000001405af4ec mov      rcx, rbx
00000001405af4ef call     0x1405b112c
00000001405af4f4 test     eax, eax
00000001405af4f6 jne      0x1405afb96
00000001405af4fc lea      edx, [rsi + 3]
00000001405af4ff mov      rcx, rbx
00000001405af502 call     0x1405b112c
00000001405af507 test     eax, eax
00000001405af509 jne      0x1405afb96
00000001405af50f lea      edx, [rsi + 4]
00000001405af512 mov      rcx, rbx
00000001405af515 call     0x1405b112c
00000001405af51a test     eax, eax
00000001405af51c jne      0x1405afb96
00000001405af522 lea      edx, [rsi + 5]
00000001405af525 mov      rcx, rbx
00000001405af528 call     0x1405b112c
00000001405af52d mov      edi, eax
00000001405af52f test     eax, eax
00000001405af531 jne      0x1405afb96
00000001405af537 lea      r8, [rip + 0xbe252]
00000001405af53e jmp      0x1405afb7d
00000001405af543 mov      rax, qword ptr [rcx + 0x18]
00000001405af547 lea      r8, [rip + 0xbe372]
00000001405af54e mov      rcx, qword ptr [rcx + 8]
00000001405af552 mov      esi, 1
00000001405af557 mov      edx, esi
00000001405af559 mov      rax, qword ptr [rax + 0x118]
00000001405af560 call     qword ptr [rip + 0xd4d92]
00000001405af566 mov      rax, qword ptr [rbx + 0x18]
00000001405af56a lea      r8, [rip + 0xbe36f]
00000001405af571 mov      rcx, qword ptr [rbx + 8]
00000001405af575 mov      edx, esi
00000001405af577 mov      rax, qword ptr [rax + 0x118]
00000001405af57e call     qword ptr [rip + 0xd4d74]
00000001405af584 lea      edx, [rsi + 0x19]
00000001405af587 mov      rcx, rbx
00000001405af58a call     0x1405b112c
00000001405af58f mov      edi, eax
00000001405af591 test     eax, eax
00000001405af593 jne      0x1405afb96
00000001405af599 lea      r8, [rip + 0xbe370]
00000001405af5a0 jmp      0x1405afb7d
00000001405af5a5 mov      rax, qword ptr [rcx + 0x18]
00000001405af5a9 lea      r8, [rip + 0xd0880]
00000001405af5b0 mov      rcx, qword ptr [rcx + 8]
00000001405af5b4 mov      esi, 1
00000001405af5b9 mov      edx, esi
00000001405af5bb mov      rax, qword ptr [rax + 0x118]
00000001405af5c2 call     qword ptr [rip + 0xd4d30]
00000001405af5c8 mov      rax, qword ptr [rbx + 0x18]
00000001405af5cc lea      r8, [rip + 0xd088d]
00000001405af5d3 mov      rcx, qword ptr [rbx + 8]
00000001405af5d7 mov      edx, esi
00000001405af5d9 mov      rax, qword ptr [rax + 0x118]
00000001405af5e0 call     qword ptr [rip + 0xd4d12]
00000001405af5e6 lea      edx, [rsi + 0xf]
00000001405af5e9 mov      rcx, rbx
00000001405af5ec call     0x1405b112c
00000001405af5f1 test     eax, eax
00000001405af5f3 jne      0x1405afb96
00000001405af5f9 lea      edx, [rsi + 0x11]
00000001405af5fc mov      rcx, rbx
00000001405af5ff call     0x1405b112c
00000001405af604 mov      edi, eax
00000001405af606 test     eax, eax
00000001405af608 jne      0x1405afb96
00000001405af60e lea      r8, [rip + 0xd086b]
00000001405af615 jmp      0x1405afb7d
00000001405af61a mov      rax, qword ptr [rcx + 0x18]
00000001405af61e lea      r8, [rip + 0xbe23b]
00000001405af625 mov      rcx, qword ptr [rcx + 8]
00000001405af629 mov      esi, 1
00000001405af62e mov      edx, esi
00000001405af630 mov      rax, qword ptr [rax + 0x118]
00000001405af637 call     qword ptr [rip + 0xd4cbb]
00000001405af63d mov      rax, qword ptr [rbx + 0x18]
00000001405af641 lea      r8, [rip + 0xbe238]
00000001405af648 mov      rcx, qword ptr [rbx + 8]
00000001405af64c mov      edx, esi
00000001405af64e mov      rax, qword ptr [rax + 0x118]
00000001405af655 call     qword ptr [rip + 0xd4c9d]
00000001405af65b lea      edx, [rsi + 0x17]
00000001405af65e mov      rcx, rbx
00000001405af661 call     0x1405b112c
00000001405af666 mov      edi, eax
00000001405af668 test     eax, eax
00000001405af66a jne      0x1405afb96
00000001405af670 lea      r8, [rip + 0xbe229]
00000001405af677 jmp      0x1405afb7d
00000001405af67c mov      rax, qword ptr [rcx + 0x18]
00000001405af680 lea      r8, [rip + 0xbe149]
00000001405af687 mov      rcx, qword ptr [rcx + 8]
00000001405af68b mov      esi, 1
00000001405af690 mov      edx, esi
00000001405af692 mov      rax, qword ptr [rax + 0x118]
00000001405af699 call     qword ptr [rip + 0xd4c59]
00000001405af69f mov      rax, qword ptr [rbx + 0x18]
00000001405af6a3 lea      r8, [rip + 0xbe156]
00000001405af6aa mov      rcx, qword ptr [rbx + 8]
00000001405af6ae mov      edx, esi
00000001405af6b0 mov      rax, qword ptr [rax + 0x118]
00000001405af6b7 call     qword ptr [rip + 0xd4c3b]
00000001405af6bd lea      edx, [rsi + 0x15]
00000001405af6c0 mov      rcx, rbx
00000001405af6c3 call     0x1405b112c
00000001405af6c8 mov      edi, eax
00000001405af6ca test     eax, eax
00000001405af6cc jne      0x1405afb96
00000001405af6d2 lea      r8, [rip + 0xbe157]
00000001405af6d9 jmp      0x1405afb7d
00000001405af6de mov      rax, qword ptr [rcx + 0x18]
00000001405af6e2 lea      r8, [rip + 0xbe067]
00000001405af6e9 mov      rcx, qword ptr [rcx + 8]
00000001405af6ed mov      esi, 1
00000001405af6f2 mov      edx, esi
00000001405af6f4 mov      rax, qword ptr [rax + 0x118]
00000001405af6fb call     qword ptr [rip + 0xd4bf7]
00000001405af701 mov      rax, qword ptr [rbx + 0x18]
00000001405af705 lea      r8, [rip + 0xbe064]
00000001405af70c mov      rcx, qword ptr [rbx + 8]
00000001405af710 mov      edx, esi
00000001405af712 mov      rax, qword ptr [rax + 0x118]
00000001405af719 call     qword ptr [rip + 0xd4bd9]
00000001405af71f xor      edx, edx
00000001405af721 mov      rcx, rbx
00000001405af724 call     0x1405b112c
00000001405af729 test     eax, eax
00000001405af72b jne      0x1405afb96
00000001405af731 mov      edx, esi
00000001405af733 mov      rcx, rbx
00000001405af736 call     0x1405b112c
00000001405af73b test     eax, eax
00000001405af73d jne      0x1405afb96
00000001405af743 lea      edx, [rsi + 1]
00000001405af746 mov      rcx, rbx
00000001405af749 call     0x1405b112c
00000001405af74e test     eax, eax
00000001405af750 jne      0x1405afb96
00000001405af756 lea      edx, [rsi + 0xd]
00000001405af759 jmp      0x1405af525
00000001405af75e cmp      edx, 0xa
00000001405af761 je       0x1405afb22
00000001405af767 cmp      edx, 0x17
00000001405af76a je       0x1405af94b
00000001405af770 cmp      edx, 0x19
00000001405af773 je       0x1405af893
00000001405af779 cmp      edx, 0x1b
00000001405af77c je       0x1405af7ac
00000001405af77e mov      rax, qword ptr [rcx + 0x18]
00000001405af782 lea      r8, [rip + 0xbe357]
00000001405af789 mov      rcx, qword ptr [rcx + 8]
00000001405af78d mov      r9d, edx
00000001405af790 mov      edx, 2
00000001405af795 mov      rax, qword ptr [rax + 0x118]
00000001405af79c call     qword ptr [rip + 0xd4b56]
00000001405af7a2 mov      edi, 0x41
00000001405af7a7 jmp      0x1405afb94
00000001405af7ac mov      rax, qword ptr [rcx + 0x18]
00000001405af7b0 lea      r8, [rip + 0xd06e9]
00000001405af7b7 mov      rcx, qword ptr [rcx + 8]
00000001405af7bb mov      esi, 1
00000001405af7c0 mov      edx, esi
00000001405af7c2 mov      rax, qword ptr [rax + 0x118]
00000001405af7c9 call     qword ptr [rip + 0xd4b29]
00000001405af7cf mov      rax, qword ptr [rbx + 0x18]
00000001405af7d3 lea      r8, [rip + 0xd06e6]
00000001405af7da mov      rcx, qword ptr [rbx + 8]
00000001405af7de mov      edx, esi
00000001405af7e0 mov      rax, qword ptr [rax + 0x118]
00000001405af7e7 call     qword ptr [rip + 0xd4b0b]
00000001405af7ed lea      edx, [rsi + 0x5b]
00000001405af7f0 mov      rcx, rbx
00000001405af7f3 call     0x1405b112c
00000001405af7f8 test     eax, eax
00000001405af7fa jne      0x1405afb96
00000001405af800 lea      edx, [rsi + 0x5c]
00000001405af803 mov      rcx, rbx
00000001405af806 call     0x1405b112c
00000001405af80b test     eax, eax
00000001405af80d jne      0x1405afb96
00000001405af813 lea      edx, [rsi + 0x5d]
00000001405af816 mov      rcx, rbx
00000001405af819 call     0x1405b112c
00000001405af81e test     eax, eax
00000001405af820 jne      0x1405afb96
00000001405af826 lea      edx, [rsi + 0x5e]
00000001405af829 mov      rcx, rbx
00000001405af82c call     0x1405b112c
00000001405af831 test     eax, eax
00000001405af833 jne      0x1405afb96
00000001405af839 lea      edx, [rsi + 0x5f]
00000001405af83c mov      rcx, rbx
00000001405af83f call     0x1405b112c
00000001405af844 test     eax, eax
00000001405af846 jne      0x1405afb96
00000001405af84c lea      edx, [rsi + 0x60]
00000001405af84f mov      rcx, rbx
00000001405af852 call     0x1405b112c
00000001405af857 test     eax, eax
00000001405af859 jne      0x1405afb96
00000001405af85f lea      edx, [rsi + 0x61]
00000001405af862 mov      rcx, rbx
00000001405af865 call     0x1405b112c
00000001405af86a test     eax, eax
00000001405af86c jne      0x1405afb96
00000001405af872 lea      edx, [rsi + 0x62]
00000001405af875 mov      rcx, rbx
00000001405af878 call     0x1405b112c
00000001405af87d mov      edi, eax
00000001405af87f test     eax, eax
00000001405af881 jne      0x1405afb96
00000001405af887 lea      r8, [rip + 0xbe492]
00000001405af88e jmp      0x1405afb7d
00000001405af893 mov      rax, qword ptr [rcx + 0x18]
00000001405af897 lea      r8, [rip + 0xbe132]
00000001405af89e mov      rcx, qword ptr [rcx + 8]
00000001405af8a2 mov      esi, 1
00000001405af8a7 mov      edx, esi
00000001405af8a9 mov      rax, qword ptr [rax + 0x118]
00000001405af8b0 call     qword ptr [rip + 0xd4a42]
00000001405af8b6 mov      rax, qword ptr [rbx + 0x18]
00000001405af8ba lea      r8, [rip + 0xd061f]
00000001405af8c1 mov      rcx, qword ptr [rbx + 8]
00000001405af8c5 mov      edx, esi
00000001405af8c7 mov      rax, qword ptr [rax + 0x118]
00000001405af8ce call     qword ptr [rip + 0xd4a24]
00000001405af8d4 mov      edx, 0x95
00000001405af8d9 mov      rcx, rbx
00000001405af8dc call     0x1405b112c
00000001405af8e1 test     eax, eax
00000001405af8e3 jne      0x1405afb96
00000001405af8e9 mov      edx, 0x96
00000001405af8ee mov      rcx, rbx
00000001405af8f1 call     0x1405b112c
00000001405af8f6 test     eax, eax
00000001405af8f8 jne      0x1405afb96
00000001405af8fe mov      edx, 0x97
00000001405af903 mov      rcx, rbx
00000001405af906 call     0x1405b112c
00000001405af90b test     eax, eax
00000001405af90d jne      0x1405afb96
00000001405af913 mov      edx, 0x98
00000001405af918 mov      rcx, rbx
00000001405af91b call     0x1405b112c
00000001405af920 test     eax, eax
00000001405af922 jne      0x1405afb96
00000001405af928 mov      edx, 0x99
00000001405af92d mov      rcx, rbx
00000001405af930 call     0x1405b112c
00000001405af935 mov      edi, eax
00000001405af937 test     eax, eax
00000001405af939 jne      0x1405afb96
00000001405af93f lea      r8, [rip + 0xd05ca]
00000001405af946 jmp      0x1405afb7d
00000001405af94b mov      rax, qword ptr [rcx + 0x18]
00000001405af94f lea      r8, [rip + 0xbdfea]
00000001405af956 mov      rcx, qword ptr [rcx + 8]
00000001405af95a mov      esi, 1
00000001405af95f mov      edx, esi
00000001405af961 mov      rax, qword ptr [rax + 0x118]
00000001405af968 call     qword ptr [rip + 0xd498a]
00000001405af96e mov      rax, qword ptr [rbx + 0x18]
00000001405af972 lea      r8, [rip + 0xbdff7]
00000001405af979 mov      rcx, qword ptr [rbx + 8]
00000001405af97d mov      edx, esi
00000001405af97f mov      rax, qword ptr [rax + 0x118]
00000001405af986 call     qword ptr [rip + 0xd496c]
00000001405af98c lea      edx, [rsi + 0x38]
00000001405af98f mov      rcx, rbx
00000001405af992 call     0x1405b112c
00000001405af997 test     eax, eax
00000001405af999 jne      0x1405afb96
00000001405af99f lea      edx, [rsi + 0x39]
00000001405af9a2 mov      rcx, rbx
00000001405af9a5 call     0x1405b112c
00000001405af9aa test     eax, eax
00000001405af9ac jne      0x1405afb96
00000001405af9b2 lea      edx, [rsi + 0x3a]
00000001405af9b5 mov      rcx, rbx
00000001405af9b8 call     0x1405b112c
00000001405af9bd test     eax, eax
00000001405af9bf jne      0x1405afb96
00000001405af9c5 lea      edx, [rsi + 0x3b]
00000001405af9c8 mov      rcx, rbx
00000001405af9cb call     0x1405b112c
00000001405af9d0 test     eax, eax
00000001405af9d2 jne      0x1405afb96
00000001405af9d8 lea      edx, [rsi + 0x3c]
00000001405af9db mov      rcx, rbx
00000001405af9de call     0x1405b112c
00000001405af9e3 test     eax, eax
00000001405af9e5 jne      0x1405afb96
00000001405af9eb lea      edx, [rsi + 0x3d]
00000001405af9ee mov      rcx, rbx
00000001405af9f1 call     0x1405b112c
00000001405af9f6 test     eax, eax
00000001405af9f8 jne      0x1405afb96
00000001405af9fe lea      edx, [rsi + 0x3e]
00000001405afa01 mov      rcx, rbx
00000001405afa04 call     0x1405b112c
00000001405afa09 test     eax, eax
00000001405afa0b jne      0x1405afb96
00000001405afa11 lea      edx, [rsi + 0x3f]
00000001405afa14 mov      rcx, rbx
00000001405afa17 call     0x1405b112c
00000001405afa1c test     eax, eax
00000001405afa1e jne      0x1405afb96
00000001405afa24 lea      edx, [rsi + 0x40]
00000001405afa27 mov      rcx, rbx
00000001405afa2a call     0x1405b112c
00000001405afa2f test     eax, eax
00000001405afa31 jne      0x1405afb96
00000001405afa37 lea      edx, [rsi + 0x41]
00000001405afa3a mov      rcx, rbx
00000001405afa3d call     0x1405b112c
00000001405afa42 test     eax, eax
00000001405afa44 jne      0x1405afb96
00000001405afa4a lea      edx, [rsi + 0x42]
00000001405afa4d mov      rcx, rbx
00000001405afa50 call     0x1405b112c
00000001405afa55 test     eax, eax
00000001405afa57 jne      0x1405afb96
00000001405afa5d lea      edx, [rsi + 0x43]
00000001405afa60 mov      rcx, rbx
00000001405afa63 call     0x1405b112c
00000001405afa68 test     eax, eax
00000001405afa6a jne      0x1405afb96
00000001405afa70 lea      edx, [rsi + 0x44]
00000001405afa73 mov      rcx, rbx
00000001405afa76 call     0x1405b112c
00000001405afa7b test     eax, eax
00000001405afa7d jne      0x1405afb96
00000001405afa83 lea      edx, [rsi + 0x45]
00000001405afa86 mov      rcx, rbx
00000001405afa89 call     0x1405b112c
00000001405afa8e test     eax, eax
00000001405afa90 jne      0x1405afb96
00000001405afa96 lea      edx, [rsi + 0x46]
00000001405afa99 mov      rcx, rbx
00000001405afa9c call     0x1405b112c
00000001405afaa1 test     eax, eax
00000001405afaa3 jne      0x1405afb96
00000001405afaa9 lea      edx, [rsi + 0x47]
00000001405afaac mov      rcx, rbx
00000001405afaaf call     0x1405b112c
00000001405afab4 test     eax, eax
00000001405afab6 jne      0x1405afb96
00000001405afabc lea      edx, [rsi + 0x48]
00000001405afabf mov      rcx, rbx
00000001405afac2 call     0x1405b112c
00000001405afac7 test     eax, eax
00000001405afac9 jne      0x1405afb96
00000001405afacf lea      edx, [rsi + 0x49]
00000001405afad2 mov      rcx, rbx
00000001405afad5 call     0x1405b112c
00000001405afada test     eax, eax
00000001405afadc jne      0x1405afb96
00000001405afae2 lea      edx, [rsi + 0x4a]
00000001405afae5 mov      rcx, rbx
00000001405afae8 call     0x1405b112c
00000001405afaed test     eax, eax
00000001405afaef jne      0x1405afb96
00000001405afaf5 lea      edx, [rsi + 0x4b]
00000001405afaf8 mov      rcx, rbx
00000001405afafb call     0x1405b112c
00000001405afb00 test     eax, eax
00000001405afb02 jne      0x1405afb96
00000001405afb08 lea      edx, [rsi + 0x59]
00000001405afb0b mov      rcx, rbx
00000001405afb0e call     0x1405b112c
00000001405afb13 mov      edi, eax
00000001405afb15 test     eax, eax
00000001405afb17 jne      0x1405afb96
00000001405afb19 lea      r8, [rip + 0xbde80]
00000001405afb20 jmp      0x1405afb7d
00000001405afb22 mov      rax, qword ptr [rcx + 0x18]
00000001405afb26 lea      r8, [rip + 0xbdf23]
00000001405afb2d mov      rcx, qword ptr [rcx + 8]
00000001405afb31 mov      esi, 1
00000001405afb36 mov      edx, esi
00000001405afb38 mov      rax, qword ptr [rax + 0x118]
00000001405afb3f call     qword ptr [rip + 0xd47b3]
00000001405afb45 mov      rax, qword ptr [rbx + 0x18]
00000001405afb49 lea      r8, [rip + 0xbdf30]
00000001405afb50 mov      rcx, qword ptr [rbx + 8]
00000001405afb54 mov      edx, esi
00000001405afb56 mov      rax, qword ptr [rax + 0x118]
00000001405afb5d call     qword ptr [rip + 0xd4795]
00000001405afb63 mov      edx, 0xc4
00000001405afb68 mov      rcx, rbx
00000001405afb6b call     0x1405b112c
00000001405afb70 mov      edi, eax
00000001405afb72 test     eax, eax
00000001405afb74 jne      0x1405afb96
00000001405afb76 lea      r8, [rip + 0xbdf33]
00000001405afb7d mov      rax, qword ptr [rbx + 0x18]
00000001405afb81 mov      edx, esi
00000001405afb83 mov      rcx, qword ptr [rbx + 8]
00000001405afb87 mov      rax, qword ptr [rax + 0x118]
00000001405afb8e call     qword ptr [rip + 0xd4764]
00000001405afb94 mov      eax, edi
00000001405afb96 mov      rbx, qword ptr [rsp + 0x40]
00000001405afb9b mov      rsi, qword ptr [rsp + 0x48]
00000001405afba0 add      rsp, 0x30
00000001405afba4 pop      rdi
00000001405afba5 ret      