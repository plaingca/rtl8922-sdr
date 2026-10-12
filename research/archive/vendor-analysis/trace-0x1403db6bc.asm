00000001403db6bc mov      qword ptr [rsp + 0x18], rbx
00000001403db6c1 push     rdi
00000001403db6c2 sub      rsp, 0x40
00000001403db6c6 mov      rbx, qword ptr [rcx + 0x9a0]
00000001403db6cd lea      r9, [rsp + 0x50]
00000001403db6d2 add      rbx, 0x1440
00000001403db6d9 mov      byte ptr [rsp + 0x58], 0
00000001403db6de lea      r8, [rsp + 0x58]
00000001403db6e3 mov      byte ptr [rsp + 0x50], 0
00000001403db6e8 mov      rdi, rcx
00000001403db6eb cmp      dword ptr [rbx], 0xff
00000001403db6f1 mov      edx, dword ptr [rbx + 8]
00000001403db6f4 setne    al
00000001403db6f7 mov      byte ptr [rbx + 0xc], al
00000001403db6fa call     0x1403dcc10
00000001403db6ff mov      al, byte ptr [rsp + 0x50]
00000001403db703 mov      r9b, byte ptr [rbx + 0xe]
00000001403db707 mov      r8b, byte ptr [rbx + 0xd]
00000001403db70b mov      dl, byte ptr [rbx + 0xc]
00000001403db70e mov      rcx, qword ptr [rdi + 8]
00000001403db712 mov      byte ptr [rsp + 0x38], al
00000001403db716 mov      al, byte ptr [rsp + 0x58]
00000001403db71a mov      byte ptr [rsp + 0x30], al
00000001403db71e mov      al, byte ptr [rbx + 0xf]
00000001403db721 mov      byte ptr [rsp + 0x28], al
00000001403db725 mov      al, byte ptr [rbx + 0x10]
00000001403db728 mov      byte ptr [rsp + 0x20], al
00000001403db72c call     0x14027fb88
00000001403db731 mov      rbx, qword ptr [rsp + 0x60]
00000001403db736 add      rsp, 0x40
00000001403db73a pop      rdi
00000001403db73b ret      