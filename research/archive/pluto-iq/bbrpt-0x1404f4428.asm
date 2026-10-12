00000001404f4428 mov      qword ptr [rsp + 0x18], rbx
00000001404f442d push     rbp
00000001404f442e push     rsi
00000001404f442f push     rdi
00000001404f4430 push     r12
00000001404f4432 push     r13
00000001404f4434 push     r14
00000001404f4436 push     r15
00000001404f4438 lea      rbp, [rsp - 0x27]
00000001404f443d sub      rsp, 0xc0
00000001404f4444 mov      rax, qword ptr [rip + 0x433015]
00000001404f444b xor      rax, rsp
00000001404f444e mov      qword ptr [rbp + 0x17], rax
00000001404f4452 mov      dword ptr [rbp - 0x49], edx
00000001404f4455 mov      esi, 8
00000001404f445a mov      edx, esi
00000001404f445c mov      rbx, rcx
00000001404f445f xor      r12b, r12b
00000001404f4462 call     0x14036c07c
00000001404f4467 lea      edi, [rsi + 1]
00000001404f446a lea      r14d, [rsi + 2]
00000001404f446e lea      r15d, [rsi + 8]
00000001404f4472 lea      r13d, [rsi + 7]
00000001404f4476 test     al, al
00000001404f4478 jne      0x1404f44e6
00000001404f447a mov      edx, edi
00000001404f447c mov      rcx, rbx
00000001404f447f call     0x14036c07c
00000001404f4484 test     al, al
00000001404f4486 jne      0x1404f44e6
00000001404f4488 mov      edx, r14d
00000001404f448b mov      rcx, rbx
00000001404f448e call     0x14036c07c
00000001404f4493 test     al, al
00000001404f4495 jne      0x1404f44e6
00000001404f4497 lea      edx, [rsi + 3]
00000001404f449a mov      rcx, rbx
00000001404f449d call     0x14036c07c
00000001404f44a2 test     al, al
00000001404f44a4 jne      0x1404f44e6
00000001404f44a6 mov      edx, r15d
00000001404f44a9 mov      rcx, rbx
00000001404f44ac call     0x14036c07c
00000001404f44b1 test     al, al
00000001404f44b3 jne      0x1404f44e6
00000001404f44b5 lea      edx, [rsi + 5]
00000001404f44b8 mov      rcx, rbx
00000001404f44bb call     0x14036c07c
00000001404f44c0 test     al, al
00000001404f44c2 jne      0x1404f44e6
00000001404f44c4 lea      edx, [rsi + 4]
00000001404f44c7 mov      rcx, rbx
00000001404f44ca call     0x14036c07c
00000001404f44cf test     al, al
00000001404f44d1 jne      0x1404f44e6
00000001404f44d3 mov      edx, r13d
00000001404f44d6 mov      rcx, rbx
00000001404f44d9 call     0x14036c07c
00000001404f44de mov      byte ptr [rbp - 0x69], 2
00000001404f44e2 test     al, al
00000001404f44e4 je       0x1404f44ea
00000001404f44e6 mov      byte ptr [rbp - 0x69], 4
00000001404f44ea mov      edx, esi
00000001404f44ec mov      rcx, rbx
00000001404f44ef call     0x14036c07c
00000001404f44f4 test     al, al
00000001404f44f6 jne      0x1404f456a
00000001404f44f8 mov      edx, edi
00000001404f44fa mov      rcx, rbx
00000001404f44fd call     0x14036c07c
00000001404f4502 test     al, al
00000001404f4504 jne      0x1404f456a
00000001404f4506 mov      edx, r14d
00000001404f4509 mov      rcx, rbx
00000001404f450c call     0x14036c07c
00000001404f4511 test     al, al
00000001404f4513 jne      0x1404f456a
00000001404f4515 mov      edx, 0xb
00000001404f451a mov      rcx, rbx
00000001404f451d call     0x14036c07c
00000001404f4522 test     al, al
00000001404f4524 jne      0x1404f456a
00000001404f4526 mov      edx, r15d
00000001404f4529 mov      rcx, rbx
00000001404f452c call     0x14036c07c
00000001404f4531 test     al, al
00000001404f4533 jne      0x1404f456a
00000001404f4535 mov      edx, 0xd
00000001404f453a mov      rcx, rbx
00000001404f453d call     0x14036c07c
00000001404f4542 test     al, al
00000001404f4544 jne      0x1404f456a
00000001404f4546 mov      edx, 0xc
00000001404f454b mov      rcx, rbx
00000001404f454e call     0x14036c07c
00000001404f4553 test     al, al
00000001404f4555 jne      0x1404f456a
00000001404f4557 mov      edx, r13d
00000001404f455a mov      rcx, rbx
00000001404f455d call     0x14036c07c
00000001404f4562 mov      byte ptr [rbp - 0x68], 3
00000001404f4566 test     al, al
00000001404f4568 je       0x1404f456e
00000001404f456a mov      byte ptr [rbp - 0x68], 5
00000001404f456e mov      edx, esi
00000001404f4570 mov      rcx, rbx
00000001404f4573 call     0x14036c07c
00000001404f4578 test     al, al
00000001404f457a jne      0x1404f45ee
00000001404f457c mov      edx, edi
00000001404f457e mov      rcx, rbx
00000001404f4581 call     0x14036c07c
00000001404f4586 test     al, al
00000001404f4588 jne      0x1404f45ee
00000001404f458a mov      edx, r14d
00000001404f458d mov      rcx, rbx
00000001404f4590 call     0x14036c07c
00000001404f4595 test     al, al
00000001404f4597 jne      0x1404f45ee
00000001404f4599 mov      edx, 0xb
00000001404f459e mov      rcx, rbx
00000001404f45a1 call     0x14036c07c
00000001404f45a6 test     al, al
00000001404f45a8 jne      0x1404f45ee
00000001404f45aa mov      edx, r15d
00000001404f45ad mov      rcx, rbx
00000001404f45b0 call     0x14036c07c
00000001404f45b5 test     al, al
00000001404f45b7 jne      0x1404f45ee
00000001404f45b9 mov      edx, 0xd
00000001404f45be mov      rcx, rbx
00000001404f45c1 call     0x14036c07c
00000001404f45c6 test     al, al
00000001404f45c8 jne      0x1404f45ee
00000001404f45ca mov      edx, 0xc
00000001404f45cf mov      rcx, rbx
00000001404f45d2 call     0x14036c07c
00000001404f45d7 test     al, al
00000001404f45d9 jne      0x1404f45ee
00000001404f45db mov      edx, r13d
00000001404f45de mov      rcx, rbx
00000001404f45e1 call     0x14036c07c
00000001404f45e6 mov      byte ptr [rbp - 0x67], 3
00000001404f45ea test     al, al
00000001404f45ec je       0x1404f45f2
00000001404f45ee mov      byte ptr [rbp - 0x67], 6
00000001404f45f2 mov      edx, esi
00000001404f45f4 mov      rcx, rbx
00000001404f45f7 call     0x14036c07c
00000001404f45fc test     al, al
00000001404f45fe jne      0x1404f4672
00000001404f4600 mov      edx, edi
00000001404f4602 mov      rcx, rbx
00000001404f4605 call     0x14036c07c
00000001404f460a test     al, al
00000001404f460c jne      0x1404f4672
00000001404f460e mov      edx, r14d
00000001404f4611 mov      rcx, rbx
00000001404f4614 call     0x14036c07c
00000001404f4619 test     al, al
00000001404f461b jne      0x1404f4672
00000001404f461d mov      edx, 0xb
00000001404f4622 mov      rcx, rbx
00000001404f4625 call     0x14036c07c
00000001404f462a test     al, al
00000001404f462c jne      0x1404f4672
00000001404f462e mov      edx, r15d
00000001404f4631 mov      rcx, rbx
00000001404f4634 call     0x14036c07c
00000001404f4639 test     al, al
00000001404f463b jne      0x1404f4672
00000001404f463d mov      edx, 0xd
00000001404f4642 mov      rcx, rbx
00000001404f4645 call     0x14036c07c
00000001404f464a test     al, al
00000001404f464c jne      0x1404f4672
00000001404f464e mov      edx, 0xc
00000001404f4653 mov      rcx, rbx
00000001404f4656 call     0x14036c07c
00000001404f465b test     al, al
00000001404f465d jne      0x1404f4672
00000001404f465f mov      edx, r13d
00000001404f4662 mov      rcx, rbx
00000001404f4665 call     0x14036c07c
00000001404f466a mov      byte ptr [rbp - 0x66], r12b
00000001404f466e test     al, al
00000001404f4670 je       0x1404f4676
00000001404f4672 mov      byte ptr [rbp - 0x66], 1
00000001404f4676 xor      edx, edx
00000001404f4678 mov      dword ptr [rbp - 0x4d], 0xf4240
00000001404f467f mov      rcx, rbx
00000001404f4682 call     0x14036c07c
00000001404f4687 test     al, al
00000001404f4689 jne      0x1404f46f8
00000001404f468b mov      edx, 1
00000001404f4690 mov      rcx, rbx
00000001404f4693 call     0x14036c07c
00000001404f4698 test     al, al
00000001404f469a jne      0x1404f46f8
00000001404f469c mov      edx, 2
00000001404f46a1 mov      rcx, rbx
00000001404f46a4 call     0x14036c07c
00000001404f46a9 test     al, al
00000001404f46ab jne      0x1404f46f8
00000001404f46ad mov      edx, 3
00000001404f46b2 mov      rcx, rbx
00000001404f46b5 call     0x14036c07c
00000001404f46ba test     al, al
00000001404f46bc jne      0x1404f46f8
00000001404f46be mov      edx, 4
00000001404f46c3 mov      rcx, rbx
00000001404f46c6 call     0x14036c07c
00000001404f46cb test     al, al
00000001404f46cd jne      0x1404f46f8
00000001404f46cf mov      edx, 5
00000001404f46d4 mov      rcx, rbx
00000001404f46d7 call     0x14036c07c
00000001404f46dc test     al, al
00000001404f46de jne      0x1404f46f8
00000001404f46e0 mov      edx, 6
00000001404f46e5 mov      rcx, rbx
00000001404f46e8 call     0x14036c07c
00000001404f46ed mov      dword ptr [rbp - 0x41], 0xe
00000001404f46f4 test     al, al
00000001404f46f6 je       0x1404f46fb
00000001404f46f8 mov      dword ptr [rbp - 0x41], edi
00000001404f46fb mov      edx, esi
00000001404f46fd mov      rcx, rbx
00000001404f4700 call     0x14036c07c
00000001404f4705 test     al, al
00000001404f4707 jne      0x1404f477a
00000001404f4709 mov      edx, edi
00000001404f470b mov      rcx, rbx
00000001404f470e call     0x14036c07c
00000001404f4713 test     al, al
00000001404f4715 jne      0x1404f477a
00000001404f4717 mov      edx, r14d
00000001404f471a mov      rcx, rbx
00000001404f471d call     0x14036c07c
00000001404f4722 test     al, al
00000001404f4724 jne      0x1404f477a
00000001404f4726 mov      edx, 0xb
00000001404f472b mov      rcx, rbx
00000001404f472e call     0x14036c07c
00000001404f4733 test     al, al
00000001404f4735 jne      0x1404f477a
00000001404f4737 mov      edx, r15d
00000001404f473a mov      rcx, rbx
00000001404f473d call     0x14036c07c
00000001404f4742 test     al, al
00000001404f4744 jne      0x1404f477a
00000001404f4746 mov      edx, 0xd
00000001404f474b mov      rcx, rbx
00000001404f474e call     0x14036c07c
00000001404f4753 test     al, al
00000001404f4755 jne      0x1404f477a
00000001404f4757 mov      edx, 0xc
00000001404f475c mov      rcx, rbx
00000001404f475f call     0x14036c07c
00000001404f4764 test     al, al
00000001404f4766 jne      0x1404f477a
00000001404f4768 mov      edx, r13d
00000001404f476b mov      rcx, rbx
00000001404f476e call     0x14036c07c
00000001404f4773 mov      dword ptr [rbp - 0x45], esi
00000001404f4776 test     al, al
00000001404f4778 je       0x1404f477d
00000001404f477a mov      dword ptr [rbp - 0x45], edi
00000001404f477d mov      edx, esi
00000001404f477f mov      rcx, rbx
00000001404f4782 call     0x14036c07c
00000001404f4787 test     al, al
00000001404f4789 jne      0x1404f4800
00000001404f478b mov      edx, edi
00000001404f478d mov      rcx, rbx
00000001404f4790 call     0x14036c07c
00000001404f4795 test     al, al
00000001404f4797 jne      0x1404f4800
00000001404f4799 mov      edx, r14d
00000001404f479c mov      rcx, rbx
00000001404f479f call     0x14036c07c
00000001404f47a4 test     al, al
00000001404f47a6 jne      0x1404f4800
00000001404f47a8 mov      edx, 0xb
00000001404f47ad mov      rcx, rbx
00000001404f47b0 call     0x14036c07c
00000001404f47b5 test     al, al
00000001404f47b7 jne      0x1404f4800
00000001404f47b9 mov      edx, r15d
00000001404f47bc mov      rcx, rbx
00000001404f47bf call     0x14036c07c
00000001404f47c4 test     al, al
00000001404f47c6 jne      0x1404f4800
00000001404f47c8 mov      edx, 0xd
00000001404f47cd mov      rcx, rbx
00000001404f47d0 call     0x14036c07c
00000001404f47d5 test     al, al
00000001404f47d7 jne      0x1404f4800
00000001404f47d9 mov      edx, 0xc
00000001404f47de mov      rcx, rbx
00000001404f47e1 call     0x14036c07c
00000001404f47e6 test     al, al
00000001404f47e8 jne      0x1404f4800
00000001404f47ea mov      edx, r13d
00000001404f47ed mov      rcx, rbx
00000001404f47f0 call     0x14036c07c
00000001404f47f5 mov      dword ptr [rbp - 0x3d], 7
00000001404f47fc test     al, al
00000001404f47fe je       0x1404f4807
00000001404f4800 mov      dword ptr [rbp - 0x3d], 3
00000001404f4807 mov      eax, dword ptr [rip + 0x168e4b]
00000001404f480d lea      r8, [rbp - 0x55]
00000001404f4811 movsd    xmm0, qword ptr [rip + 0x168e37]
00000001404f4819 lea      rdx, [rbp - 0x59]
00000001404f481d mov      r13, qword ptr [rbx + 0x1390]
00000001404f4824 mov      rcx, rbx
00000001404f4827 mov      dword ptr [rbp - 0x31], eax
00000001404f482a movzx    eax, word ptr [rip + 0x168e2b]
00000001404f4831 mov      word ptr [rbp - 0x2d], ax
00000001404f4835 movzx    eax, word ptr [rip + 0x168e2c]
00000001404f483c mov      word ptr [rbp - 0x23], ax
00000001404f4840 xor      eax, eax
00000001404f4842 mov      dword ptr [rbp - 0x21], eax
00000001404f4845 movzx    eax, word ptr [rip + 0x168e2c]
00000001404f484c mov      word ptr [rbp - 0x15], ax
00000001404f4850 xor      eax, eax
00000001404f4852 mov      dword ptr [rbp - 0x13], eax
00000001404f4855 mov      al, byte ptr [rip + 0x168e2d]
00000001404f485b movsd    qword ptr [rbp - 0x39], xmm0
00000001404f4860 movsd    xmm0, qword ptr [rip + 0x168df8]
00000001404f4868 mov      byte ptr [rbp - 7], al
00000001404f486b xor      eax, eax
00000001404f486d movsd    qword ptr [rbp - 0x2b], xmm0
00000001404f4872 movsd    xmm0, qword ptr [rip + 0x168df6]
00000001404f487a mov      dword ptr [rbp - 6], eax
00000001404f487d mov      byte ptr [rbp - 2], al
00000001404f4880 mov      al, byte ptr [rip + 0x168e12]
00000001404f4886 movsd    qword ptr [rbp - 0x1d], xmm0
00000001404f488b movsd    xmm0, qword ptr [rip + 0x168ded]
00000001404f4893 mov      byte ptr [rbp + 7], al
00000001404f4896 xor      eax, eax
00000001404f4898 movsd    qword ptr [rbp - 0xf], xmm0
00000001404f489d movsd    xmm0, qword ptr [rip + 0x168deb]
00000001404f48a5 mov      dword ptr [rbp + 8], eax
00000001404f48a8 mov      byte ptr [rbp + 0xc], al
00000001404f48ab movsd    qword ptr [rbp - 1], xmm0
00000001404f48b0 mov      rax, qword ptr [r13 + 0x178]
00000001404f48b7 call     qword ptr [rip + 0x18fa3b]
00000001404f48bd test     eax, eax
00000001404f48bf jne      0x1404f51d2
00000001404f48c5 mov      rax, qword ptr [r13 + 0x160]
00000001404f48cc lea      rdx, [rbp - 0x51]
00000001404f48d0 mov      rcx, rbx
00000001404f48d3 call     qword ptr [rip + 0x18fa1f]
00000001404f48d9 mov      r14b, al
00000001404f48dc mov      rcx, rbx
00000001404f48df mov      rax, qword ptr [r13 + 0x130]
00000001404f48e6 call     qword ptr [rip + 0x18fa0c]
00000001404f48ec cmp      al, 0xff
00000001404f48ee jne      0x1404f4948
00000001404f48f0 mov      rcx, qword ptr [rip + 0x42b709]
00000001404f48f7 lea      rdi, [rip + 0x42b702]
00000001404f48fe cmp      rcx, rdi
00000001404f4901 je       0x1404f493e
00000001404f4903 cmp      byte ptr [rcx + 0x169], 2
00000001404f490a jb       0x1404f493e
00000001404f490c mov      eax, dword ptr [rcx + 0x16c]
00000001404f4912 test     sil, al
00000001404f4915 je       0x1404f493e
00000001404f4917 mov      rcx, qword ptr [rcx + 0x158]
00000001404f491e lea      r9, [rip + 0x168d7b]
00000001404f4925 mov      edx, 0x92
00000001404f492a mov      dword ptr [rsp + 0x20], 0xff
00000001404f4932 lea      r8, [rip + 0x40bdd7]
00000001404f4939 call     0x1400088d8
00000001404f493e mov      eax, 0x8c
00000001404f4943 jmp      0x1404f51d2
00000001404f4948 lea      rdi, [rip + 0x42b6b1]
00000001404f494f lea      rsi, [rip + 0x40bdba]
00000001404f4956 mov      rax, qword ptr [r13 + 0x178]
00000001404f495d lea      r8, [rbp - 0x61]
00000001404f4961 lea      rdx, [rbp - 0x5d]
00000001404f4965 mov      rcx, rbx
00000001404f4968 call     qword ptr [rip + 0x18f98a]
00000001404f496e test     eax, eax
00000001404f4970 jne      0x1404f51d2
00000001404f4976 mov      rax, qword ptr [r13 + 0x160]
00000001404f497d lea      rdx, [rbp - 0x51]
00000001404f4981 mov      rcx, rbx
00000001404f4984 call     qword ptr [rip + 0x18f96e]
00000001404f498a movzx    ecx, word ptr [rbp - 0x61]
00000001404f498e movzx    r15d, al
00000001404f4992 cmp      cx, word ptr [rbp - 0x55]
00000001404f4996 je       0x1404f4ac6
00000001404f499c mov      eax, 0xea27
00000001404f49a1 cmp      cx, ax
00000001404f49a4 je       0x1404f4ac6
00000001404f49aa mov      rax, qword ptr [r13 + 0x180]
00000001404f49b1 lea      r8, [rbp - 0x64]
00000001404f49b5 lea      rdx, [rbp - 0x65]
00000001404f49b9 call     qword ptr [rip + 0x18f939]
00000001404f49bf movzx    edx, byte ptr [rbp - 0x65]
00000001404f49c3 cmp      dl, 0xd
00000001404f49c6 jb       0x1404f4a11
00000001404f49c8 mov      rcx, qword ptr [rip + 0x42b631]
00000001404f49cf cmp      rcx, rdi
00000001404f49d2 je       0x1404f4abe
00000001404f49d8 cmp      byte ptr [rcx + 0x169], 1
00000001404f49df jb       0x1404f4abe
00000001404f49e5 mov      eax, dword ptr [rcx + 0x16c]
00000001404f49eb test     al, 8
00000001404f49ed je       0x1404f4abe
00000001404f49f3 movzx    r9d, word ptr [rbp - 0x61]
00000001404f49f8 mov      edx, 0x93
00000001404f49fd mov      rcx, qword ptr [rcx + 0x158]
00000001404f4a04 mov      r8, rsi
00000001404f4a07 call     0x140001bb0
00000001404f4a0c jmp      0x1404f4abe
00000001404f4a11 movzx    r8d, byte ptr [rbp - 0x64]
00000001404f4a16 test     r8b, r8b
00000001404f4a19 jne      0x1404f4a6e
00000001404f4a1b mov      rcx, qword ptr [rip + 0x42b5de]
00000001404f4a22 cmp      rcx, rdi
00000001404f4a25 je       0x1404f4abe
00000001404f4a2b cmp      byte ptr [rcx + 0x169], 1
00000001404f4a32 jb       0x1404f4abe
00000001404f4a38 mov      eax, dword ptr [rcx + 0x16c]
00000001404f4a3e test     al, 8
00000001404f4a40 je       0x1404f4abe
00000001404f4a42 mov      rcx, qword ptr [rcx + 0x158]
00000001404f4a49 lea      r8, [rip + 0x466060]
00000001404f4a50 mov      rax, rdx
00000001404f4a53 mov      r9d, edx
00000001404f4a56 mov      edx, 0x94
00000001404f4a5b mov      rax, qword ptr [r8 + rax*8]
00000001404f4a5f mov      r8, rsi
00000001404f4a62 mov      qword ptr [rsp + 0x20], rax
00000001404f4a67 call     0x14000ce54
00000001404f4a6c jmp      0x1404f4abe
00000001404f4a6e mov      rcx, qword ptr [rip + 0x42b58b]
00000001404f4a75 cmp      rcx, rdi
00000001404f4a78 je       0x1404f4abe
00000001404f4a7a cmp      byte ptr [rcx + 0x169], 1
00000001404f4a81 jb       0x1404f4abe
00000001404f4a83 mov      eax, dword ptr [rcx + 0x16c]
00000001404f4a89 test     al, 8
00000001404f4a8b je       0x1404f4abe
00000001404f4a8d mov      rcx, qword ptr [rcx + 0x158]
00000001404f4a94 mov      eax, r8d
00000001404f4a97 mov      r8, rdx
00000001404f4a9a mov      dword ptr [rsp + 0x28], eax
00000001404f4a9e mov      r9d, edx
00000001404f4aa1 lea      rax, [rip + 0x466008]
00000001404f4aa8 mov      edx, 0x95
00000001404f4aad mov      rax, qword ptr [rax + r8*8]
00000001404f4ab1 mov      r8, rsi
00000001404f4ab4 mov      qword ptr [rsp + 0x20], rax
00000001404f4ab9 call     0x1400730bc
00000001404f4abe movzx    eax, word ptr [rbp - 0x61]
00000001404f4ac2 mov      word ptr [rbp - 0x55], ax
00000001404f4ac6 movzx    edx, word ptr [rbp - 0x5d]
00000001404f4aca cmp      r15b, r14b
00000001404f4acd movzx    ecx, r14b
00000001404f4ad1 cmovne   ecx, r15d
00000001404f4ad5 movzx    r14d, cl
00000001404f4ad9 cmp      dx, word ptr [rbp - 0x59]
00000001404f4add je       0x1404f4bf8
00000001404f4ae3 mov      rax, qword ptr [rbx + 0x258]
00000001404f4aea movzx    ecx, byte ptr [rax + 0x2e]
00000001404f4aee sub      ecx, 8
00000001404f4af1 je       0x1404f4b15
00000001404f4af3 sub      ecx, 3
00000001404f4af6 je       0x1404f4b07
00000001404f4af8 sub      ecx, 1
00000001404f4afb je       0x1404f4b07
00000001404f4afd sub      ecx, 1
00000001404f4b00 je       0x1404f4b07
00000001404f4b02 cmp      ecx, 3
00000001404f4b05 jne      0x1404f4b66
00000001404f4b07 mov      eax, 0x2d
00000001404f4b0c lea      r10, [rip + 0x465e2d]
00000001404f4b13 jmp      0x1404f4b21
00000001404f4b15 mov      eax, 0x2c
00000001404f4b1a lea      r10, [rip + 0x465cbf]
00000001404f4b21 mov      r8d, edx
00000001404f4b24 cmp      edx, eax
00000001404f4b26 jae      0x1404f4b66
00000001404f4b28 mov      rcx, qword ptr [rip + 0x42b4d1]
00000001404f4b2f cmp      rcx, rdi
00000001404f4b32 je       0x1404f4ba0
00000001404f4b34 cmp      byte ptr [rcx + 0x169], 1
00000001404f4b3b jb       0x1404f4ba0
00000001404f4b3d mov      eax, dword ptr [rcx + 0x16c]
00000001404f4b43 test     al, 8
00000001404f4b45 je       0x1404f4ba0
00000001404f4b47 mov      r9, qword ptr [r10 + rdx*8]
00000001404f4b4b mov      edx, 0x6c
00000001404f4b50 mov      rcx, qword ptr [rcx + 0x158]
00000001404f4b57 mov      dword ptr [rsp + 0x20], r8d
00000001404f4b5c mov      r8, rsi
00000001404f4b5f call     0x1400088d8
00000001404f4b64 jmp      0x1404f4b9c
00000001404f4b66 mov      rcx, qword ptr [rip + 0x42b493]
00000001404f4b6d cmp      rcx, rdi
00000001404f4b70 je       0x1404f4ba0
00000001404f4b72 cmp      byte ptr [rcx + 0x169], 1
00000001404f4b79 jb       0x1404f4ba0
00000001404f4b7b mov      eax, dword ptr [rcx + 0x16c]
00000001404f4b81 test     al, 8
00000001404f4b83 je       0x1404f4ba0
00000001404f4b85 mov      rcx, qword ptr [rcx + 0x158]
00000001404f4b8c mov      r9d, edx
00000001404f4b8f mov      edx, 0x6d
00000001404f4b94 mov      r8, rsi
00000001404f4b97 call     0x140001bb0
00000001404f4b9c movzx    edx, word ptr [rbp - 0x5d]
00000001404f4ba0 cmp      dword ptr [rbx + 0x16c], 0
00000001404f4ba7 mov      word ptr [rbp - 0x59], dx
00000001404f4bab jne      0x1404f4bd0
00000001404f4bad movzx    eax, dx
00000001404f4bb0 cmp      eax, dword ptr [rbp - 0x45]
00000001404f4bb3 jb       0x1404f4bd0
00000001404f4bb5 mov      rax, qword ptr [rbx + 0x18]
00000001404f4bb9 mov      rax, qword ptr [rax + 0xe0]
00000001404f4bc0 call     qword ptr [rip + 0x18f732]
00000001404f4bc6 movzx    edx, word ptr [rbp - 0x59]
00000001404f4bca mov      dword ptr [rbx + 0x16c], eax
00000001404f4bd0 cmp      dword ptr [rbx + 0x170], 0
00000001404f4bd7 jne      0x1404f4bf8
00000001404f4bd9 movzx    eax, dx
00000001404f4bdc cmp      eax, dword ptr [rbp - 0x41]
00000001404f4bdf jb       0x1404f4bf8
00000001404f4be1 mov      rax, qword ptr [rbx + 0x18]
00000001404f4be5 mov      rax, qword ptr [rax + 0xe0]
00000001404f4bec call     qword ptr [rip + 0x18f706]
00000001404f4bf2 mov      dword ptr [rbx + 0x170], eax
00000001404f4bf8 cmp      r14b, byte ptr [rbp - 0x69]
00000001404f4bfc je       0x1404f5193
00000001404f4c02 cmp      r14b, byte ptr [rbp - 0x68]
00000001404f4c06 je       0x1404f5152
00000001404f4c0c cmp      r14b, byte ptr [rbp - 0x67]
00000001404f4c10 je       0x1404f510e
00000001404f4c16 cmp      dword ptr [rbp - 0x4d], 0
00000001404f4c1a je       0x1404f50b6
00000001404f4c20 cmp      byte ptr [rbp - 0x66], 0
00000001404f4c24 mov      r15d, dword ptr [rbp - 0x49]
00000001404f4c28 je       0x1404f4c81
00000001404f4c2a mov      ecx, r15d
00000001404f4c2d test     r15d, r15d
00000001404f4c30 je       0x1404f4c79
00000001404f4c32 sub      ecx, 1
00000001404f4c35 je       0x1404f4c68
00000001404f4c37 sub      ecx, 2
00000001404f4c3a je       0x1404f4c5e
00000001404f4c3c sub      ecx, 1
00000001404f4c3f je       0x1404f4c54
00000001404f4c41 cmp      ecx, 1
00000001404f4c44 jne      0x1404f4d35
00000001404f4c4a mov      r12d, dword ptr [rbp - 0x51]
00000001404f4c4e shr      r12d, 0xf
00000001404f4c52 jmp      0x1404f4c70
00000001404f4c54 mov      r12d, dword ptr [rbp - 0x51]
00000001404f4c58 shr      r12d, 0xc
00000001404f4c5c jmp      0x1404f4c70
00000001404f4c5e mov      r12d, dword ptr [rbp - 0x51]
00000001404f4c62 shr      r12d, 0xb
00000001404f4c66 jmp      0x1404f4c70
00000001404f4c68 mov      r12d, dword ptr [rbp - 0x51]
00000001404f4c6c shr      r12d, 9
00000001404f4c70 not      r12b
00000001404f4c73 and      r12b, 1
00000001404f4c77 jmp      0x1404f4c81
00000001404f4c79 cmp      r14d, dword ptr [rbp - 0x3d]
00000001404f4c7d sete     r12b
00000001404f4c81 xor      edx, edx
00000001404f4c83 mov      rcx, rbx
00000001404f4c86 lea      r8d, [rdx + 1]
00000001404f4c8a call     0x14036cc70
00000001404f4c8f dec      dword ptr [rbp - 0x4d]
00000001404f4c92 test     r12b, r12b
00000001404f4c95 je       0x1404f4956
00000001404f4c9b mov      rax, qword ptr [r13 + 0x140]
00000001404f4ca2 lea      rdx, [rip + 0x1689f7]
00000001404f4ca9 mov      rcx, rbx
00000001404f4cac call     qword ptr [rip + 0x18f646]
00000001404f4cb2 mov      ecx, r15d
00000001404f4cb5 test     r15d, r15d
00000001404f4cb8 je       0x1404f4f86
00000001404f4cbe sub      ecx, 1
00000001404f4cc1 je       0x1404f4e6e
00000001404f4cc7 sub      ecx, 1
00000001404f4cca je       0x1404f4e32
00000001404f4cd0 sub      ecx, 1
00000001404f4cd3 je       0x1404f4df6
00000001404f4cd9 sub      ecx, 1
00000001404f4cdc je       0x1404f4dba
00000001404f4ce2 cmp      ecx, 1
00000001404f4ce5 je       0x1404f4d7e
00000001404f4ceb mov      rcx, qword ptr [rip + 0x42b30e]
00000001404f4cf2 cmp      rcx, rdi
00000001404f4cf5 je       0x1404f4d2b
00000001404f4cf7 cmp      byte ptr [rcx + 0x169], 2
00000001404f4cfe jb       0x1404f4d2b
00000001404f4d00 mov      edx, dword ptr [rcx + 0x16c]
00000001404f4d06 test     dl, 8
00000001404f4d09 je       0x1404f4d2b
00000001404f4d0b mov      rcx, qword ptr [rcx + 0x158]
00000001404f4d12 lea      r9, [rip + 0x168987]
00000001404f4d19 mov      edx, 0xaa
00000001404f4d1e mov      dword ptr [rsp + 0x20], r15d
00000001404f4d23 mov      r8, rsi
00000001404f4d26 call     0x1400088d8
00000001404f4d2b mov      eax, 0xb
00000001404f4d30 jmp      0x1404f51d2
00000001404f4d35 mov      rcx, qword ptr [rip + 0x42b2c4]
00000001404f4d3c cmp      rcx, rdi
00000001404f4d3f je       0x1404f4d74
00000001404f4d41 cmp      byte ptr [rcx + 0x169], 2
00000001404f4d48 jb       0x1404f4d74
00000001404f4d4a mov      eax, dword ptr [rcx + 0x16c]
00000001404f4d50 test     al, 8
00000001404f4d52 je       0x1404f4d74
00000001404f4d54 mov      rcx, qword ptr [rcx + 0x158]
00000001404f4d5b lea      r9, [rip + 0x16893e]
00000001404f4d62 mov      edx, 0x9b
00000001404f4d67 mov      dword ptr [rsp + 0x20], r15d
00000001404f4d6c mov      r8, rsi
00000001404f4d6f call     0x1400088d8
00000001404f4d74 mov      eax, 0x52
00000001404f4d79 jmp      0x1404f51d2
00000001404f4d7e mov      byte ptr [rbx + 0x105], 4
00000001404f4d85 mov      rcx, qword ptr [rip + 0x42b274]
00000001404f4d8c cmp      rcx, rdi
00000001404f4d8f je       0x1404f50af
00000001404f4d95 cmp      byte ptr [rcx + 0x169], 1
00000001404f4d9c jb       0x1404f50af
00000001404f4da2 mov      eax, dword ptr [rcx + 0x16c]
00000001404f4da8 test     al, 8
00000001404f4daa je       0x1404f50af
00000001404f4db0 mov      edx, 0xa9
00000001404f4db5 jmp      0x1404f50a0
00000001404f4dba mov      byte ptr [rbx + 0x105], 4
00000001404f4dc1 mov      rcx, qword ptr [rip + 0x42b238]
00000001404f4dc8 cmp      rcx, rdi
00000001404f4dcb je       0x1404f50af
00000001404f4dd1 cmp      byte ptr [rcx + 0x169], 1
00000001404f4dd8 jb       0x1404f50af
00000001404f4dde mov      eax, dword ptr [rcx + 0x16c]
00000001404f4de4 test     al, 8
00000001404f4de6 je       0x1404f50af
00000001404f4dec mov      edx, 0xa8
00000001404f4df1 jmp      0x1404f50a0
00000001404f4df6 mov      byte ptr [rbx + 0x105], 4
00000001404f4dfd mov      rcx, qword ptr [rip + 0x42b1fc]
00000001404f4e04 cmp      rcx, rdi
00000001404f4e07 je       0x1404f50af
00000001404f4e0d cmp      byte ptr [rcx + 0x169], 1
00000001404f4e14 jb       0x1404f50af
00000001404f4e1a mov      eax, dword ptr [rcx + 0x16c]
00000001404f4e20 test     al, 8
00000001404f4e22 je       0x1404f50af
00000001404f4e28 mov      edx, 0xa7
00000001404f4e2d jmp      0x1404f50a0
00000001404f4e32 mov      byte ptr [rbx + 0x105], 4
00000001404f4e39 mov      rcx, qword ptr [rip + 0x42b1c0]
00000001404f4e40 cmp      rcx, rdi
00000001404f4e43 je       0x1404f50af
00000001404f4e49 cmp      byte ptr [rcx + 0x169], 1
00000001404f4e50 jb       0x1404f50af
00000001404f4e56 mov      eax, dword ptr [rcx + 0x16c]
00000001404f4e5c test     al, 8
00000001404f4e5e je       0x1404f50af
00000001404f4e64 mov      edx, 0xa6
00000001404f4e69 jmp      0x1404f50a0
00000001404f4e6e mov      byte ptr [rbx + 0x105], 4
00000001404f4e75 mov      rcx, qword ptr [rip + 0x42b184]
00000001404f4e7c cmp      rcx, rdi
00000001404f4e7f je       0x1404f50af
00000001404f4e85 cmp      byte ptr [rcx + 0x169], 1
00000001404f4e8c jb       0x1404f4eac
00000001404f4e8e mov      eax, dword ptr [rcx + 0x16c]
00000001404f4e94 test     al, 8
00000001404f4e96 je       0x1404f4eac
00000001404f4e98 mov      rcx, qword ptr [rcx + 0x158]
00000001404f4e9f mov      edx, 0xa1
00000001404f4ea4 mov      r8, rsi
00000001404f4ea7 call     0x140001b88
00000001404f4eac mov      rcx, qword ptr [rip + 0x42b14d]
00000001404f4eb3 cmp      rcx, rdi
00000001404f4eb6 je       0x1404f50af
00000001404f4ebc cmp      byte ptr [rcx + 0x169], 1
00000001404f4ec3 jb       0x1404f4ee3
00000001404f4ec5 mov      eax, dword ptr [rcx + 0x16c]
00000001404f4ecb test     al, 8
00000001404f4ecd je       0x1404f4ee3
00000001404f4ecf mov      rcx, qword ptr [rcx + 0x158]
00000001404f4ed6 mov      edx, 0xa2
00000001404f4edb mov      r8, rsi
00000001404f4ede call     0x140001b88
00000001404f4ee3 mov      rcx, qword ptr [rip + 0x42b116]
00000001404f4eea cmp      rcx, rdi
00000001404f4eed je       0x1404f50af
00000001404f4ef3 cmp      byte ptr [rcx + 0x169], 1
00000001404f4efa jb       0x1404f4f1a
00000001404f4efc mov      eax, dword ptr [rcx + 0x16c]
00000001404f4f02 test     al, 8
00000001404f4f04 je       0x1404f4f1a
00000001404f4f06 mov      rcx, qword ptr [rcx + 0x158]
00000001404f4f0d mov      edx, 0xa3
00000001404f4f12 mov      r8, rsi
00000001404f4f15 call     0x140001b88
00000001404f4f1a mov      rcx, qword ptr [rip + 0x42b0df]
00000001404f4f21 cmp      rcx, rdi
00000001404f4f24 je       0x1404f50af
00000001404f4f2a cmp      byte ptr [rcx + 0x169], 1
00000001404f4f31 jb       0x1404f4f51
00000001404f4f33 mov      eax, dword ptr [rcx + 0x16c]
00000001404f4f39 test     al, 8
00000001404f4f3b je       0x1404f4f51
00000001404f4f3d mov      rcx, qword ptr [rcx + 0x158]
00000001404f4f44 mov      edx, 0xa4
00000001404f4f49 mov      r8, rsi
00000001404f4f4c call     0x140001b88
00000001404f4f51 mov      rcx, qword ptr [rip + 0x42b0a8]
00000001404f4f58 cmp      rcx, rdi
00000001404f4f5b je       0x1404f50af
00000001404f4f61 cmp      byte ptr [rcx + 0x169], 1
00000001404f4f68 jb       0x1404f50af
00000001404f4f6e mov      eax, dword ptr [rcx + 0x16c]
00000001404f4f74 test     al, 8
00000001404f4f76 je       0x1404f50af
00000001404f4f7c mov      edx, 0xa5
00000001404f4f81 jmp      0x1404f50a0
00000001404f4f86 mov      rax, qword ptr [rbx + 0x18]
00000001404f4f8a mov      rax, qword ptr [rax + 0xe0]
00000001404f4f91 call     qword ptr [rip + 0x18f361]
00000001404f4f97 mov      dword ptr [rbx + 0x174], eax
00000001404f4f9d mov      byte ptr [rbx + 0x105], 5
00000001404f4fa4 mov      rcx, qword ptr [rip + 0x42b055]
00000001404f4fab cmp      rcx, rdi
00000001404f4fae je       0x1404f50af
00000001404f4fb4 cmp      byte ptr [rcx + 0x169], 1
00000001404f4fbb jb       0x1404f4fdb
00000001404f4fbd mov      eax, dword ptr [rcx + 0x16c]
00000001404f4fc3 test     al, 8
00000001404f4fc5 je       0x1404f4fdb
00000001404f4fc7 mov      rcx, qword ptr [rcx + 0x158]
00000001404f4fce mov      edx, 0x9c
00000001404f4fd3 mov      r8, rsi
00000001404f4fd6 call     0x140001b88
00000001404f4fdb mov      rcx, qword ptr [rip + 0x42b01e]
00000001404f4fe2 cmp      rcx, rdi
00000001404f4fe5 je       0x1404f50af
00000001404f4feb cmp      byte ptr [rcx + 0x169], 1
00000001404f4ff2 jb       0x1404f5012
00000001404f4ff4 mov      eax, dword ptr [rcx + 0x16c]
00000001404f4ffa test     al, 8
00000001404f4ffc je       0x1404f5012
00000001404f4ffe mov      rcx, qword ptr [rcx + 0x158]
00000001404f5005 mov      edx, 0x9d
00000001404f500a mov      r8, rsi
00000001404f500d call     0x140001b88
00000001404f5012 mov      rcx, qword ptr [rip + 0x42afe7]
00000001404f5019 cmp      rcx, rdi
00000001404f501c je       0x1404f50af
00000001404f5022 cmp      byte ptr [rcx + 0x169], 1
00000001404f5029 jb       0x1404f5049
00000001404f502b mov      eax, dword ptr [rcx + 0x16c]
00000001404f5031 test     al, 8
00000001404f5033 je       0x1404f5049
00000001404f5035 mov      rcx, qword ptr [rcx + 0x158]
00000001404f503c mov      edx, 0x9e
00000001404f5041 mov      r8, rsi
00000001404f5044 call     0x140001b88
00000001404f5049 mov      rcx, qword ptr [rip + 0x42afb0]
00000001404f5050 cmp      rcx, rdi
00000001404f5053 je       0x1404f50af
00000001404f5055 cmp      byte ptr [rcx + 0x169], 1
00000001404f505c jb       0x1404f507c
00000001404f505e mov      eax, dword ptr [rcx + 0x16c]
00000001404f5064 test     al, 8
00000001404f5066 je       0x1404f507c
00000001404f5068 mov      rcx, qword ptr [rcx + 0x158]
00000001404f506f mov      edx, 0x9f
00000001404f5074 mov      r8, rsi
00000001404f5077 call     0x140001b88
00000001404f507c mov      rcx, qword ptr [rip + 0x42af7d]
00000001404f5083 cmp      rcx, rdi
00000001404f5086 je       0x1404f50af
00000001404f5088 cmp      byte ptr [rcx + 0x169], 1
00000001404f508f jb       0x1404f50af
00000001404f5091 mov      eax, dword ptr [rcx + 0x16c]
00000001404f5097 test     al, 8
00000001404f5099 je       0x1404f50af
00000001404f509b mov      edx, 0xa0
00000001404f50a0 mov      rcx, qword ptr [rcx + 0x158]
00000001404f50a7 mov      r8, rsi
00000001404f50aa call     0x140001b88
00000001404f50af xor      eax, eax
00000001404f50b1 jmp      0x1404f51d2
00000001404f50b6 mov      rcx, qword ptr [rip + 0x42af43]
00000001404f50bd cmp      rcx, rdi
00000001404f50c0 je       0x1404f5104
00000001404f50c2 cmp      byte ptr [rcx + 0x169], 2
00000001404f50c9 jb       0x1404f5104
00000001404f50cb mov      eax, dword ptr [rcx + 0x16c]
00000001404f50d1 test     al, 8
00000001404f50d3 je       0x1404f5104
00000001404f50d5 movsxd   rdx, dword ptr [rbp - 0x49]
00000001404f50d9 lea      r9, [rbp - 0x39]
00000001404f50dd mov      rcx, qword ptr [rcx + 0x158]
00000001404f50e4 imul     r8, rdx, 0xe
00000001404f50e8 mov      edx, 0x99
00000001404f50ed add      r9, r8
00000001404f50f0 mov      r8, rsi
00000001404f50f3 mov      qword ptr [rsp + 0x20], r9
00000001404f50f8 lea      r9, [rip + 0x1685a1]
00000001404f50ff call     0x14003c968
00000001404f5104 mov      eax, 0xc
00000001404f5109 jmp      0x1404f51d2
00000001404f510e mov      rcx, qword ptr [rip + 0x42aeeb]
00000001404f5115 cmp      rcx, rdi
00000001404f5118 je       0x1404f5148
00000001404f511a cmp      byte ptr [rcx + 0x169], 2
00000001404f5121 jb       0x1404f5148
00000001404f5123 mov      eax, dword ptr [rcx + 0x16c]
00000001404f5129 test     al, 8
00000001404f512b je       0x1404f5148
00000001404f512d mov      rcx, qword ptr [rcx + 0x158]
00000001404f5134 lea      r9, [rip + 0x168565]
00000001404f513b mov      edx, 0x98
00000001404f5140 mov      r8, rsi
00000001404f5143 call     0x140008874
00000001404f5148 mov      eax, 0x49
00000001404f514d jmp      0x1404f51d2
00000001404f5152 mov      rcx, qword ptr [rip + 0x42aea7]
00000001404f5159 cmp      rcx, rdi
00000001404f515c je       0x1404f518c
00000001404f515e cmp      byte ptr [rcx + 0x169], 2
00000001404f5165 jb       0x1404f518c
00000001404f5167 mov      eax, dword ptr [rcx + 0x16c]
00000001404f516d test     al, 8
00000001404f516f je       0x1404f518c
00000001404f5171 mov      rcx, qword ptr [rcx + 0x158]
00000001404f5178 lea      r9, [rip + 0x168521]
00000001404f517f mov      edx, 0x97
00000001404f5184 mov      r8, rsi
00000001404f5187 call     0x140008874
00000001404f518c mov      eax, 0x48
00000001404f5191 jmp      0x1404f51d2
00000001404f5193 mov      rcx, qword ptr [rip + 0x42ae66]
00000001404f519a cmp      rcx, rdi
00000001404f519d je       0x1404f51cd
00000001404f519f cmp      byte ptr [rcx + 0x169], 2
00000001404f51a6 jb       0x1404f51cd
00000001404f51a8 mov      eax, dword ptr [rcx + 0x16c]
00000001404f51ae test     al, 8
00000001404f51b0 je       0x1404f51cd
00000001404f51b2 mov      rcx, qword ptr [rcx + 0x158]
00000001404f51b9 lea      r9, [rip + 0x1684e0]
00000001404f51c0 mov      edx, 0x96
00000001404f51c5 mov      r8, rsi
00000001404f51c8 call     0x140008874
00000001404f51cd mov      eax, 0x4e
00000001404f51d2 mov      rcx, qword ptr [rbp + 0x17]
00000001404f51d6 xor      rcx, rsp
00000001404f51d9 call     0x1405f45b0
00000001404f51de mov      rbx, qword ptr [rsp + 0x110]
00000001404f51e6 add      rsp, 0xc0
00000001404f51ed pop      r15
00000001404f51ef pop      r14
00000001404f51f1 pop      r13
00000001404f51f3 pop      r12
00000001404f51f5 pop      rdi
00000001404f51f6 pop      rsi
00000001404f51f7 pop      rbp
00000001404f51f8 ret      