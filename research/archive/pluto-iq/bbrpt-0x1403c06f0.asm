00000001403c06f0 mov      qword ptr [rsp + 8], rbx
00000001403c06f5 mov      qword ptr [rsp + 0x10], rbp
00000001403c06fa mov      qword ptr [rsp + 0x18], rsi
00000001403c06ff push     r14
00000001403c0701 sub      rsp, 0xa0
00000001403c0708 cmp      dword ptr [rcx + 0x8374], 1
00000001403c070f mov      rbx, rcx
00000001403c0712 jne      0x1403c0763
00000001403c0714 mov      rcx, qword ptr [rip + 0x55f8e5]
00000001403c071b lea      rsi, [rip + 0x55f8de]
00000001403c0722 cmp      rcx, rsi
00000001403c0725 je       0x1403c0b0e
00000001403c072b cmp      byte ptr [rcx + 0x1e9], 4
00000001403c0732 jb       0x1403c0b0e
00000001403c0738 bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c0740 jae      0x1403c0b0e
00000001403c0746 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c074d lea      r8, [rip + 0x314a2c]
00000001403c0754 mov      edx, 0x48
00000001403c0759 call     0x140001b88
00000001403c075e jmp      0x1403c0b0e
00000001403c0763 mov      rcx, qword ptr [rip + 0x55f896]
00000001403c076a lea      rsi, [rip + 0x55f88f]
00000001403c0771 cmp      rcx, rsi
00000001403c0774 je       0x1403c0afe
00000001403c077a cmp      byte ptr [rcx + 0x1e9], 4
00000001403c0781 lea      r14, [rip + 0x3149f8]
00000001403c0788 jb       0x1403c07cd
00000001403c078a bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c0792 jae      0x1403c07cd
00000001403c0794 mov      eax, dword ptr [rbx + 0x1c7c]
00000001403c079a mov      edx, 0x49
00000001403c079f mov      r9d, dword ptr [rbx + 0x1c70]
00000001403c07a6 mov      r8, r14
00000001403c07a9 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c07b0 mov      dword ptr [rsp + 0x30], eax
00000001403c07b4 mov      eax, dword ptr [rbx + 0x1c78]
00000001403c07ba mov      dword ptr [rsp + 0x28], eax
00000001403c07be mov      eax, dword ptr [rbx + 0x1c74]
00000001403c07c4 mov      dword ptr [rsp + 0x20], eax
00000001403c07c8 call     0x140008794
00000001403c07cd mov      rcx, qword ptr [rip + 0x55f82c]
00000001403c07d4 cmp      rcx, rsi
00000001403c07d7 je       0x1403c0afe
00000001403c07dd cmp      byte ptr [rcx + 0x1e9], 4
00000001403c07e4 jb       0x1403c08b2
00000001403c07ea bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c07f2 jae      0x1403c08b2
00000001403c07f8 mov      eax, dword ptr [rbx + 0x1ca0]
00000001403c07fe mov      edx, 0x4a
00000001403c0803 mov      r9d, dword ptr [rbx + 0x1cac]
00000001403c080a mov      r8, r14
00000001403c080d mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c0814 mov      dword ptr [rsp + 0x90], eax
00000001403c081b mov      eax, dword ptr [rbx + 0x1cd8]
00000001403c0821 mov      dword ptr [rsp + 0x88], eax
00000001403c0828 mov      eax, dword ptr [rbx + 0x1cd4]
00000001403c082e mov      dword ptr [rsp + 0x80], eax
00000001403c0835 mov      eax, dword ptr [rbx + 0x1ccc]
00000001403c083b mov      dword ptr [rsp + 0x78], eax
00000001403c083f mov      eax, dword ptr [rbx + 0x1cc0]
00000001403c0845 mov      dword ptr [rsp + 0x70], eax
00000001403c0849 mov      eax, dword ptr [rbx + 0x1cb8]
00000001403c084f mov      dword ptr [rsp + 0x68], eax
00000001403c0853 mov      eax, dword ptr [rbx + 0x1cb0]
00000001403c0859 mov      dword ptr [rsp + 0x60], eax
00000001403c085d mov      eax, dword ptr [rbx + 0x1ca8]
00000001403c0863 mov      dword ptr [rsp + 0x58], eax
00000001403c0867 mov      eax, dword ptr [rbx + 0x1ca4]
00000001403c086d mov      dword ptr [rsp + 0x50], eax
00000001403c0871 mov      eax, dword ptr [rbx + 0x1cdc]
00000001403c0877 mov      dword ptr [rsp + 0x48], eax
00000001403c087b mov      eax, dword ptr [rbx + 0x1cd0]
00000001403c0881 mov      dword ptr [rsp + 0x40], eax
00000001403c0885 mov      eax, dword ptr [rbx + 0x1cc8]
00000001403c088b mov      dword ptr [rsp + 0x38], eax
00000001403c088f mov      eax, dword ptr [rbx + 0x1cc4]
00000001403c0895 mov      dword ptr [rsp + 0x30], eax
00000001403c0899 mov      eax, dword ptr [rbx + 0x1cbc]
00000001403c089f mov      dword ptr [rsp + 0x28], eax
00000001403c08a3 mov      eax, dword ptr [rbx + 0x1cb4]
00000001403c08a9 mov      dword ptr [rsp + 0x20], eax
00000001403c08ad call     0x14033cf68
00000001403c08b2 mov      rcx, qword ptr [rip + 0x55f747]
00000001403c08b9 cmp      rcx, rsi
00000001403c08bc je       0x1403c0afe
00000001403c08c2 cmp      byte ptr [rcx + 0x1e9], 4
00000001403c08c9 jb       0x1403c0904
00000001403c08cb bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c08d3 jae      0x1403c0904
00000001403c08d5 mov      eax, dword ptr [rbx + 0x1c88]
00000001403c08db mov      edx, 0x4c
00000001403c08e0 mov      r9d, dword ptr [rbx + 0x1c84]
00000001403c08e7 mov      r8, r14
00000001403c08ea mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c08f1 mov      dword ptr [rsp + 0x28], eax
00000001403c08f5 mov      eax, dword ptr [rbx + 0x1c80]
00000001403c08fb mov      dword ptr [rsp + 0x20], eax
00000001403c08ff call     0x140001c34
00000001403c0904 mov      rcx, qword ptr [rip + 0x55f6f5]
00000001403c090b cmp      rcx, rsi
00000001403c090e je       0x1403c0afe
00000001403c0914 cmp      byte ptr [rcx + 0x1e9], 4
00000001403c091b jb       0x1403c0956
00000001403c091d bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c0925 jae      0x1403c0956
00000001403c0927 mov      eax, dword ptr [rbx + 0x1d34]
00000001403c092d mov      edx, 0x4d
00000001403c0932 mov      r9d, dword ptr [rbx + 0x1d2c]
00000001403c0939 mov      r8, r14
00000001403c093c mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c0943 mov      dword ptr [rsp + 0x28], eax
00000001403c0947 mov      eax, dword ptr [rbx + 0x1d30]
00000001403c094d mov      dword ptr [rsp + 0x20], eax
00000001403c0951 call     0x140001c34
00000001403c0956 mov      rcx, qword ptr [rip + 0x55f6a3]
00000001403c095d cmp      rcx, rsi
00000001403c0960 je       0x1403c0afe
00000001403c0966 cmp      byte ptr [rcx + 0x1e9], 4
00000001403c096d jb       0x1403c09a8
00000001403c096f bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c0977 jae      0x1403c09a8
00000001403c0979 mov      eax, dword ptr [rbx + 0x1c9c]
00000001403c097f mov      edx, 0x4e
00000001403c0984 mov      r9d, dword ptr [rbx + 0x1c8c]
00000001403c098b mov      r8, r14
00000001403c098e mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c0995 mov      dword ptr [rsp + 0x28], eax
00000001403c0999 mov      eax, dword ptr [rbx + 0x1c90]
00000001403c099f mov      dword ptr [rsp + 0x20], eax
00000001403c09a3 call     0x140001c34
00000001403c09a8 mov      rcx, qword ptr [rip + 0x55f651]
00000001403c09af cmp      rcx, rsi
00000001403c09b2 je       0x1403c0afe
00000001403c09b8 cmp      byte ptr [rcx + 0x1e9], 4
00000001403c09bf jb       0x1403c0a22
00000001403c09c1 bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c09c9 jae      0x1403c0a22
00000001403c09cb mov      eax, dword ptr [rbx + 0x1d54]
00000001403c09d1 mov      edx, 0x4f
00000001403c09d6 mov      r9d, dword ptr [rbx + 0x1d38]
00000001403c09dd mov      r8, r14
00000001403c09e0 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c09e7 mov      dword ptr [rsp + 0x48], eax
00000001403c09eb mov      eax, dword ptr [rbx + 0x1d48]
00000001403c09f1 mov      dword ptr [rsp + 0x40], eax
00000001403c09f5 mov      eax, dword ptr [rbx + 0x1d44]
00000001403c09fb mov      dword ptr [rsp + 0x38], eax
00000001403c09ff mov      eax, dword ptr [rbx + 0x1d50]
00000001403c0a05 mov      dword ptr [rsp + 0x30], eax
00000001403c0a09 mov      eax, dword ptr [rbx + 0x1d4c]
00000001403c0a0f mov      dword ptr [rsp + 0x28], eax
00000001403c0a13 mov      eax, dword ptr [rbx + 0x1d3c]
00000001403c0a19 mov      dword ptr [rsp + 0x20], eax
00000001403c0a1d call     0x140072f40
00000001403c0a22 mov      rcx, qword ptr [rip + 0x55f5d7]
00000001403c0a29 cmp      rcx, rsi
00000001403c0a2c je       0x1403c0afe
00000001403c0a32 cmp      byte ptr [rcx + 0x1e9], 4
00000001403c0a39 jb       0x1403c0a7e
00000001403c0a3b bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c0a43 jae      0x1403c0a7e
00000001403c0a45 mov      eax, dword ptr [rbx + 0x1d6c]
00000001403c0a4b mov      edx, 0x50
00000001403c0a50 mov      r9d, dword ptr [rbx + 0x1d58]
00000001403c0a57 mov      r8, r14
00000001403c0a5a mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c0a61 mov      dword ptr [rsp + 0x30], eax
00000001403c0a65 mov      eax, dword ptr [rbx + 0x1d68]
00000001403c0a6b mov      dword ptr [rsp + 0x28], eax
00000001403c0a6f mov      eax, dword ptr [rbx + 0x1d64]
00000001403c0a75 mov      dword ptr [rsp + 0x20], eax
00000001403c0a79 call     0x140008794
00000001403c0a7e mov      rcx, qword ptr [rip + 0x55f57b]
00000001403c0a85 cmp      rcx, rsi
00000001403c0a88 je       0x1403c0afe
00000001403c0a8a cmp      byte ptr [rcx + 0x1e9], 4
00000001403c0a91 jb       0x1403c0afe
00000001403c0a93 bt       dword ptr [rcx + 0x1ec], 0x1e
00000001403c0a9b jae      0x1403c0afe
00000001403c0a9d mov      eax, dword ptr [rbx + 0x1d8c]
00000001403c0aa3 mov      edx, 0x51
00000001403c0aa8 mov      r9d, dword ptr [rbx + 0x1d70]
00000001403c0aaf mov      r8, r14
00000001403c0ab2 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403c0ab9 mov      dword ptr [rsp + 0x50], eax
00000001403c0abd mov      eax, dword ptr [rbx + 0x1d84]
00000001403c0ac3 mov      dword ptr [rsp + 0x48], eax
00000001403c0ac7 mov      eax, dword ptr [rbx + 0x1d88]
00000001403c0acd mov      dword ptr [rsp + 0x40], eax
00000001403c0ad1 mov      eax, dword ptr [rbx + 0x1d80]
00000001403c0ad7 mov      dword ptr [rsp + 0x38], eax
00000001403c0adb mov      eax, dword ptr [rbx + 0x1d7c]
00000001403c0ae1 mov      dword ptr [rsp + 0x30], eax
00000001403c0ae5 mov      eax, dword ptr [rbx + 0x1d78]
00000001403c0aeb mov      dword ptr [rsp + 0x28], eax
00000001403c0aef mov      eax, dword ptr [rbx + 0x1d74]
00000001403c0af5 mov      dword ptr [rsp + 0x20], eax
00000001403c0af9 call     0x1400b9df8
00000001403c0afe mov      rcx, rbx
00000001403c0b01 call     0x1403c9fc0
00000001403c0b06 mov      rcx, rbx
00000001403c0b09 call     0x1403ca1e4
00000001403c0b0e lea      r11, [rsp + 0xa0]
00000001403c0b16 mov      rbx, qword ptr [r11 + 0x10]
00000001403c0b1a mov      rbp, qword ptr [r11 + 0x18]
00000001403c0b1e mov      rsi, qword ptr [r11 + 0x20]
00000001403c0b22 mov      rsp, r11
00000001403c0b25 pop      r14
00000001403c0b27 ret      