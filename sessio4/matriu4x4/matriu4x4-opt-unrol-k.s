
matriu4x4-opt-unrol-k.g2:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	48 8b 05 3d 0b 20 00 	mov    0x200b3d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4004bb:	48 85 c0             	test   %rax,%rax
  4004be:	74 05                	je     4004c5 <_init+0x15>
  4004c0:	e8 3b 00 00 00       	callq  400500 <__gmon_start__@plt>
  4004c5:	48 83 c4 08          	add    $0x8,%rsp
  4004c9:	c3                   	retq

Disassembly of section .plt:

00000000004004d0 <putchar@plt-0x10>:
  4004d0:	ff 35 32 0b 20 00    	pushq  0x200b32(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 34 0b 20 00    	jmpq   *0x200b34(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <putchar@plt>:
  4004e0:	ff 25 32 0b 20 00    	jmpq   *0x200b32(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <_init+0x20>

00000000004004f0 <__libc_start_main@plt>:
  4004f0:	ff 25 2a 0b 20 00    	jmpq   *0x200b2a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400500 <__gmon_start__@plt>:
  400500:	ff 25 22 0b 20 00    	jmpq   *0x200b22(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400510 <strtol@plt>:
  400510:	ff 25 1a 0b 20 00    	jmpq   *0x200b1a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400520 <__printf_chk@plt>:
  400520:	ff 25 12 0b 20 00    	jmpq   *0x200b12(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400526:	68 04 00 00 00       	pushq  $0x4
  40052b:	e9 a0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400530 <rand@plt>:
  400530:	ff 25 0a 0b 20 00    	jmpq   *0x200b0a(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400536:	68 05 00 00 00       	pushq  $0x5
  40053b:	e9 90 ff ff ff       	jmpq   4004d0 <_init+0x20>

Disassembly of section .text:

0000000000400540 <main>:
  400540:	41 57                	push   %r15
  400542:	b9 08 00 00 00       	mov    $0x8,%ecx
  400547:	31 c0                	xor    %eax,%eax
  400549:	41 56                	push   %r14
  40054b:	41 89 fe             	mov    %edi,%r14d
  40054e:	41 55                	push   %r13
  400550:	41 54                	push   %r12
  400552:	55                   	push   %rbp
  400553:	53                   	push   %rbx
  400554:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  40055b:	48 8d ac 24 90 00 00 	lea    0x90(%rsp),%rbp
  400562:	00
  400563:	4c 8d 64 24 50       	lea    0x50(%rsp),%r12
  400568:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  40056d:	48 89 34 24          	mov    %rsi,(%rsp)
  400571:	48 89 ef             	mov    %rbp,%rdi
  400574:	4d 89 e5             	mov    %r12,%r13
  400577:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40057a:	45 31 ff             	xor    %r15d,%r15d
  40057d:	e8 ae ff ff ff       	callq  400530 <rand@plt>
  400582:	42 89 04 3b          	mov    %eax,(%rbx,%r15,1)
  400586:	e8 a5 ff ff ff       	callq  400530 <rand@plt>
  40058b:	43 89 04 3c          	mov    %eax,(%r12,%r15,1)
  40058f:	49 83 c7 04          	add    $0x4,%r15
  400593:	49 83 ff 10          	cmp    $0x10,%r15
  400597:	75 e4                	jne    40057d <main+0x3d>
  400599:	48 83 c3 10          	add    $0x10,%rbx
  40059d:	49 83 c4 10          	add    $0x10,%r12
  4005a1:	4c 39 eb             	cmp    %r13,%rbx
  4005a4:	75 d4                	jne    40057a <main+0x3a>
  4005a6:	41 83 fe 01          	cmp    $0x1,%r14d
  4005aa:	0f 8e db 00 00 00    	jle    40068b <main+0x14b>
  4005b0:	48 8b 04 24          	mov    (%rsp),%rax
  4005b4:	31 f6                	xor    %esi,%esi
  4005b6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4005bb:	48 8b 78 08          	mov    0x8(%rax),%rdi
  4005bf:	e8 4c ff ff ff       	callq  400510 <strtol@plt>
  4005c4:	85 c0                	test   %eax,%eax
  4005c6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4005ca:	0f 84 9f 00 00 00    	je     40066f <main+0x12f>
  4005d0:	48 8d 44 24 1c       	lea    0x1c(%rsp),%rax
  4005d5:	4c 8d 7c 24 14       	lea    0x14(%rsp),%r15
  4005da:	4c 8d 74 24 18       	lea    0x18(%rsp),%r14
  4005df:	4c 8d 6c 24 60       	lea    0x60(%rsp),%r13
  4005e4:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
  4005e9:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  4005f0:	00
  4005f1:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  4005f8:	00
  4005f9:	48 89 04 24          	mov    %rax,(%rsp)
  4005fd:	0f 1f 00             	nopl   (%rax)
-- Init i loop (1 instr, TOTAL = 297 instr)
  400600:	31 f6                	xor    %esi,%esi
-- Start i loop ((10+64)*4 instr = 296 instr)
  400602:	48 8b 04 24          	mov    (%rsp),%rax
  400606:	8b 5c 34 10          	mov    0x10(%rsp,%rsi,1),%ebx
  40060a:	48 8d 4c 35 00       	lea    0x0(%rbp,%rsi,1),%rcx
  40060f:	45 8b 1c 37          	mov    (%r15,%rsi,1),%r11d
  400613:	45 8b 14 36          	mov    (%r14,%rsi,1),%r10d
  400617:	44 8b 0c 30          	mov    (%rax,%rsi,1),%r9d
  40061b:	31 c0                	xor    %eax,%eax
--- Start j loop ( 4*16 instr = 64 instr)
  40061d:	8b 54 04 50          	mov    0x50(%rsp,%rax,1),%edx
  400621:	45 8b 44 05 00       	mov    0x0(%r13,%rax,1),%r8d
  400626:	0f af d3             	imul   %ebx,%edx
  400629:	03 14 01             	add    (%rcx,%rax,1),%edx
  40062c:	45 0f af c3          	imul   %r11d,%r8d
  400630:	44 01 c2             	add    %r8d,%edx
  400633:	45 8b 04 04          	mov    (%r12,%rax,1),%r8d
  400637:	45 0f af c2          	imul   %r10d,%r8d
  40063b:	44 01 c2             	add    %r8d,%edx
  40063e:	44 8b 04 07          	mov    (%rdi,%rax,1),%r8d
  400642:	45 0f af c1          	imul   %r9d,%r8d
  400646:	44 01 c2             	add    %r8d,%edx
  400649:	89 14 01             	mov    %edx,(%rcx,%rax,1)
  40064c:	48 83 c0 04          	add    $0x4,%rax
  400650:	48 83 f8 10          	cmp    $0x10,%rax
  400654:	75 c7                	jne    40061d <main+0xdd>
--- End j loop
  400656:	48 83 c6 10          	add    $0x10,%rsi
  40065a:	48 83 fe 40          	cmp    $0x40,%rsi
  40065e:	75 a2                	jne    400602 <main+0xc2>
--- End i loop
  400660:	83 44 24 08 01       	addl   $0x1,0x8(%rsp)
  400665:	8b 44 24 08          	mov    0x8(%rsp),%eax
  400669:	39 44 24 0c          	cmp    %eax,0xc(%rsp)
  40066d:	77 91                	ja     400600 <main+0xc0>
  40066f:	48 89 ef             	mov    %rbp,%rdi
  400672:	e8 d9 01 00 00       	callq  400850 <print_matriu>
  400677:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  40067e:	31 c0                	xor    %eax,%eax
  400680:	5b                   	pop    %rbx
  400681:	5d                   	pop    %rbp
  400682:	41 5c                	pop    %r12
  400684:	41 5d                	pop    %r13
  400686:	41 5e                	pop    %r14
  400688:	41 5f                	pop    %r15
  40068a:	c3                   	retq
  40068b:	c7 44 24 0c 80 96 98 	movl   $0x989680,0xc(%rsp)
  400692:	00
  400693:	e9 38 ff ff ff       	jmpq   4005d0 <main+0x90>

0000000000400698 <_start>:
  400698:	31 ed                	xor    %ebp,%ebp
  40069a:	49 89 d1             	mov    %rdx,%r9
  40069d:	5e                   	pop    %rsi
  40069e:	48 89 e2             	mov    %rsp,%rdx
  4006a1:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4006a5:	50                   	push   %rax
  4006a6:	54                   	push   %rsp
  4006a7:	49 c7 c0 20 09 40 00 	mov    $0x400920,%r8
  4006ae:	48 c7 c1 b0 08 40 00 	mov    $0x4008b0,%rcx
  4006b5:	48 c7 c7 40 05 40 00 	mov    $0x400540,%rdi
  4006bc:	e8 2f fe ff ff       	callq  4004f0 <__libc_start_main@plt>
  4006c1:	f4                   	hlt
  4006c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006c9:	00 00 00
  4006cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006d0 <deregister_tm_clones>:
  4006d0:	b8 5f 10 60 00       	mov    $0x60105f,%eax
  4006d5:	55                   	push   %rbp
  4006d6:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  4006dc:	48 83 f8 0e          	cmp    $0xe,%rax
  4006e0:	48 89 e5             	mov    %rsp,%rbp
  4006e3:	77 02                	ja     4006e7 <deregister_tm_clones+0x17>
  4006e5:	5d                   	pop    %rbp
  4006e6:	c3                   	retq
  4006e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ec:	48 85 c0             	test   %rax,%rax
  4006ef:	74 f4                	je     4006e5 <deregister_tm_clones+0x15>
  4006f1:	5d                   	pop    %rbp
  4006f2:	bf 58 10 60 00       	mov    $0x601058,%edi
  4006f7:	ff e0                	jmpq   *%rax
  4006f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400700 <register_tm_clones>:
  400700:	b8 58 10 60 00       	mov    $0x601058,%eax
  400705:	55                   	push   %rbp
  400706:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  40070c:	48 c1 f8 03          	sar    $0x3,%rax
  400710:	48 89 e5             	mov    %rsp,%rbp
  400713:	48 89 c2             	mov    %rax,%rdx
  400716:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40071a:	48 01 d0             	add    %rdx,%rax
  40071d:	48 d1 f8             	sar    %rax
  400720:	75 02                	jne    400724 <register_tm_clones+0x24>
  400722:	5d                   	pop    %rbp
  400723:	c3                   	retq
  400724:	ba 00 00 00 00       	mov    $0x0,%edx
  400729:	48 85 d2             	test   %rdx,%rdx
  40072c:	74 f4                	je     400722 <register_tm_clones+0x22>
  40072e:	5d                   	pop    %rbp
  40072f:	48 89 c6             	mov    %rax,%rsi
  400732:	bf 58 10 60 00       	mov    $0x601058,%edi
  400737:	ff e2                	jmpq   *%rdx
  400739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400740 <__do_global_dtors_aux>:
  400740:	80 3d 11 09 20 00 00 	cmpb   $0x0,0x200911(%rip)        # 601058 <__TMC_END__>
  400747:	75 11                	jne    40075a <__do_global_dtors_aux+0x1a>
  400749:	55                   	push   %rbp
  40074a:	48 89 e5             	mov    %rsp,%rbp
  40074d:	e8 7e ff ff ff       	callq  4006d0 <deregister_tm_clones>
  400752:	5d                   	pop    %rbp
  400753:	c6 05 fe 08 20 00 01 	movb   $0x1,0x2008fe(%rip)        # 601058 <__TMC_END__>
  40075a:	f3 c3                	repz retq
  40075c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400760 <frame_dummy>:
  400760:	48 83 3d b8 06 20 00 	cmpq   $0x0,0x2006b8(%rip)        # 600e20 <__JCR_END__>
  400767:	00
  400768:	74 1e                	je     400788 <frame_dummy+0x28>
  40076a:	b8 00 00 00 00       	mov    $0x0,%eax
  40076f:	48 85 c0             	test   %rax,%rax
  400772:	74 14                	je     400788 <frame_dummy+0x28>
  400774:	55                   	push   %rbp
  400775:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40077a:	48 89 e5             	mov    %rsp,%rbp
  40077d:	ff d0                	callq  *%rax
  40077f:	5d                   	pop    %rbp
  400780:	e9 7b ff ff ff       	jmpq   400700 <register_tm_clones>
  400785:	0f 1f 00             	nopl   (%rax)
  400788:	e9 73 ff ff ff       	jmpq   400700 <register_tm_clones>
  40078d:	0f 1f 00             	nopl   (%rax)

0000000000400790 <multiplica>:
  400790:	41 57                	push   %r15
  400792:	85 c9                	test   %ecx,%ecx
  400794:	41 56                	push   %r14
  400796:	41 55                	push   %r13
  400798:	41 54                	push   %r12
  40079a:	55                   	push   %rbp
  40079b:	53                   	push   %rbx
  40079c:	48 89 7c 24 f8       	mov    %rdi,-0x8(%rsp)
  4007a1:	0f 84 94 00 00 00    	je     40083b <multiplica+0xab>
  4007a7:	4c 8d 76 10          	lea    0x10(%rsi),%r14
  4007ab:	4c 8d 6e 20          	lea    0x20(%rsi),%r13
  4007af:	4c 8d 66 30          	lea    0x30(%rsi),%r12
  4007b3:	45 31 ff             	xor    %r15d,%r15d
  4007b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007bd:	00 00 00
  4007c0:	4c 8b 4c 24 f8       	mov    -0x8(%rsp),%r9
  4007c5:	31 ed                	xor    %ebp,%ebp
  4007c7:	4c 8d 04 2a          	lea    (%rdx,%rbp,1),%r8
  4007cb:	49 89 f2             	mov    %rsi,%r10
  4007ce:	31 c0                	xor    %eax,%eax
  4007d0:	41 8b 39             	mov    (%r9),%edi
  4007d3:	4c 89 d3             	mov    %r10,%rbx
  4007d6:	49 83 c2 04          	add    $0x4,%r10
  4007da:	41 0f af 7a fc       	imul   -0x4(%r10),%edi
  4007df:	48 29 f3             	sub    %rsi,%rbx
  4007e2:	41 03 3c 00          	add    (%r8,%rax,1),%edi
  4007e6:	41 89 3c 00          	mov    %edi,(%r8,%rax,1)
  4007ea:	45 8b 59 04          	mov    0x4(%r9),%r11d
  4007ee:	46 0f af 1c 33       	imul   (%rbx,%r14,1),%r11d
  4007f3:	44 01 df             	add    %r11d,%edi
  4007f6:	41 89 3c 00          	mov    %edi,(%r8,%rax,1)
  4007fa:	45 8b 59 08          	mov    0x8(%r9),%r11d
  4007fe:	46 0f af 1c 2b       	imul   (%rbx,%r13,1),%r11d
  400803:	44 01 df             	add    %r11d,%edi
  400806:	41 89 3c 00          	mov    %edi,(%r8,%rax,1)
  40080a:	45 8b 59 0c          	mov    0xc(%r9),%r11d
  40080e:	46 0f af 1c 23       	imul   (%rbx,%r12,1),%r11d
  400813:	41 01 fb             	add    %edi,%r11d
  400816:	45 89 1c 00          	mov    %r11d,(%r8,%rax,1)
  40081a:	48 83 c0 04          	add    $0x4,%rax
  40081e:	48 83 f8 10          	cmp    $0x10,%rax
  400822:	75 ac                	jne    4007d0 <multiplica+0x40>
  400824:	48 83 c5 10          	add    $0x10,%rbp
  400828:	49 83 c1 10          	add    $0x10,%r9
  40082c:	48 83 fd 40          	cmp    $0x40,%rbp
  400830:	75 95                	jne    4007c7 <multiplica+0x37>
  400832:	41 83 c7 01          	add    $0x1,%r15d
  400836:	41 39 cf             	cmp    %ecx,%r15d
  400839:	75 85                	jne    4007c0 <multiplica+0x30>
  40083b:	5b                   	pop    %rbx
  40083c:	5d                   	pop    %rbp
  40083d:	41 5c                	pop    %r12
  40083f:	41 5d                	pop    %r13
  400841:	41 5e                	pop    %r14
  400843:	41 5f                	pop    %r15
  400845:	c3                   	retq
  400846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40084d:	00 00 00

0000000000400850 <print_matriu>:
  400850:	41 55                	push   %r13
  400852:	49 89 fd             	mov    %rdi,%r13
  400855:	41 54                	push   %r12
  400857:	45 31 e4             	xor    %r12d,%r12d
  40085a:	55                   	push   %rbp
  40085b:	53                   	push   %rbx
  40085c:	48 83 ec 08          	sub    $0x8,%rsp
  400860:	4b 8d 6c 25 00       	lea    0x0(%r13,%r12,1),%rbp
  400865:	31 db                	xor    %ebx,%ebx
  400867:	8b 54 1d 00          	mov    0x0(%rbp,%rbx,1),%edx
  40086b:	31 c0                	xor    %eax,%eax
  40086d:	be 34 09 40 00       	mov    $0x400934,%esi
  400872:	bf 01 00 00 00       	mov    $0x1,%edi
  400877:	48 83 c3 04          	add    $0x4,%rbx
  40087b:	e8 a0 fc ff ff       	callq  400520 <__printf_chk@plt>
  400880:	48 83 fb 10          	cmp    $0x10,%rbx
  400884:	75 e1                	jne    400867 <print_matriu+0x17>
  400886:	bf 0a 00 00 00       	mov    $0xa,%edi
  40088b:	49 83 c4 10          	add    $0x10,%r12
  40088f:	e8 4c fc ff ff       	callq  4004e0 <putchar@plt>
  400894:	49 83 fc 40          	cmp    $0x40,%r12
  400898:	75 c6                	jne    400860 <print_matriu+0x10>
  40089a:	48 83 c4 08          	add    $0x8,%rsp
  40089e:	5b                   	pop    %rbx
  40089f:	5d                   	pop    %rbp
  4008a0:	41 5c                	pop    %r12
  4008a2:	41 5d                	pop    %r13
  4008a4:	c3                   	retq
  4008a5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008ac:	00 00 00
  4008af:	90                   	nop

00000000004008b0 <__libc_csu_init>:
  4008b0:	41 57                	push   %r15
  4008b2:	41 89 ff             	mov    %edi,%r15d
  4008b5:	41 56                	push   %r14
  4008b7:	49 89 f6             	mov    %rsi,%r14
  4008ba:	41 55                	push   %r13
  4008bc:	49 89 d5             	mov    %rdx,%r13
  4008bf:	41 54                	push   %r12
  4008c1:	4c 8d 25 48 05 20 00 	lea    0x200548(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4008c8:	55                   	push   %rbp
  4008c9:	48 8d 2d 48 05 20 00 	lea    0x200548(%rip),%rbp        # 600e18 <__init_array_end>
  4008d0:	53                   	push   %rbx
  4008d1:	4c 29 e5             	sub    %r12,%rbp
  4008d4:	31 db                	xor    %ebx,%ebx
  4008d6:	48 c1 fd 03          	sar    $0x3,%rbp
  4008da:	48 83 ec 08          	sub    $0x8,%rsp
  4008de:	e8 cd fb ff ff       	callq  4004b0 <_init>
  4008e3:	48 85 ed             	test   %rbp,%rbp
  4008e6:	74 1e                	je     400906 <__libc_csu_init+0x56>
  4008e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4008ef:	00
  4008f0:	4c 89 ea             	mov    %r13,%rdx
  4008f3:	4c 89 f6             	mov    %r14,%rsi
  4008f6:	44 89 ff             	mov    %r15d,%edi
  4008f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4008fd:	48 83 c3 01          	add    $0x1,%rbx
  400901:	48 39 eb             	cmp    %rbp,%rbx
  400904:	75 ea                	jne    4008f0 <__libc_csu_init+0x40>
  400906:	48 83 c4 08          	add    $0x8,%rsp
  40090a:	5b                   	pop    %rbx
  40090b:	5d                   	pop    %rbp
  40090c:	41 5c                	pop    %r12
  40090e:	41 5d                	pop    %r13
  400910:	41 5e                	pop    %r14
  400912:	41 5f                	pop    %r15
  400914:	c3                   	retq
  400915:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40091c:	00 00 00 00

0000000000400920 <__libc_csu_fini>:
  400920:	f3 c3                	repz retq

Disassembly of section .fini:

0000000000400924 <_fini>:
  400924:	48 83 ec 08          	sub    $0x8,%rsp
  400928:	48 83 c4 08          	add    $0x8,%rsp
  40092c:	c3                   	retq
