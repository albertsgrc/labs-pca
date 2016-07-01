
matriu4x4-opt-unrol-i-ni.2:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	48 8b 05 3d 1b 20 00 	mov    0x201b3d(%rip),%rax        # 601ff8 <_DYNAMIC+0x1d0>
  4004bb:	48 85 c0             	test   %rax,%rax
  4004be:	74 05                	je     4004c5 <_init+0x15>
  4004c0:	e8 3b 00 00 00       	callq  400500 <__gmon_start__@plt>
  4004c5:	48 83 c4 08          	add    $0x8,%rsp
  4004c9:	c3                   	retq   

Disassembly of section .plt:

00000000004004d0 <putchar@plt-0x10>:
  4004d0:	ff 35 32 1b 20 00    	pushq  0x201b32(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 34 1b 20 00    	jmpq   *0x201b34(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <putchar@plt>:
  4004e0:	ff 25 32 1b 20 00    	jmpq   *0x201b32(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <_init+0x20>

00000000004004f0 <__libc_start_main@plt>:
  4004f0:	ff 25 2a 1b 20 00    	jmpq   *0x201b2a(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400500 <__gmon_start__@plt>:
  400500:	ff 25 22 1b 20 00    	jmpq   *0x201b22(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400510 <strtol@plt>:
  400510:	ff 25 1a 1b 20 00    	jmpq   *0x201b1a(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400520 <__printf_chk@plt>:
  400520:	ff 25 12 1b 20 00    	jmpq   *0x201b12(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400526:	68 04 00 00 00       	pushq  $0x4
  40052b:	e9 a0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400530 <rand@plt>:
  400530:	ff 25 0a 1b 20 00    	jmpq   *0x201b0a(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
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
  40055b:	4c 8d a4 24 90 00 00 	lea    0x90(%rsp),%r12
  400562:	00 
  400563:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
  400568:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  40056d:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  400572:	4c 89 e7             	mov    %r12,%rdi
  400575:	49 89 ed             	mov    %rbp,%r13
  400578:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40057b:	45 31 ff             	xor    %r15d,%r15d
  40057e:	e8 ad ff ff ff       	callq  400530 <rand@plt>
  400583:	42 89 04 3b          	mov    %eax,(%rbx,%r15,1)
  400587:	e8 a4 ff ff ff       	callq  400530 <rand@plt>
  40058c:	42 89 44 3d 00       	mov    %eax,0x0(%rbp,%r15,1)
  400591:	49 83 c7 04          	add    $0x4,%r15
  400595:	49 83 ff 10          	cmp    $0x10,%r15
  400599:	75 e3                	jne    40057e <main+0x3e>
  40059b:	48 83 c3 10          	add    $0x10,%rbx
  40059f:	48 83 c5 10          	add    $0x10,%rbp
  4005a3:	4c 39 eb             	cmp    %r13,%rbx
  4005a6:	75 d3                	jne    40057b <main+0x3b>
  4005a8:	41 83 fe 01          	cmp    $0x1,%r14d
  4005ac:	b9 80 96 98 00       	mov    $0x989680,%ecx
  4005b1:	7e 17                	jle    4005ca <main+0x8a>
  4005b3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4005b8:	ba 0a 00 00 00       	mov    $0xa,%edx
  4005bd:	31 f6                	xor    %esi,%esi
  4005bf:	48 8b 78 08          	mov    0x8(%rax),%rdi
  4005c3:	e8 48 ff ff ff       	callq  400510 <strtol@plt>
  4005c8:	89 c1                	mov    %eax,%ecx
  4005ca:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
  4005cf:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4005d4:	4c 89 e2             	mov    %r12,%rdx
  4005d7:	e8 14 01 00 00       	callq  4006f0 <_Z10multiplicaPA4_iS0_S0_j>
  4005dc:	4c 89 e7             	mov    %r12,%rdi
  4005df:	e8 7c 05 00 00       	callq  400b60 <_Z12print_matriuPA4_i>
  4005e4:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  4005eb:	31 c0                	xor    %eax,%eax
  4005ed:	5b                   	pop    %rbx
  4005ee:	5d                   	pop    %rbp
  4005ef:	41 5c                	pop    %r12
  4005f1:	41 5d                	pop    %r13
  4005f3:	41 5e                	pop    %r14
  4005f5:	41 5f                	pop    %r15
  4005f7:	c3                   	retq   

00000000004005f8 <_start>:
  4005f8:	31 ed                	xor    %ebp,%ebp
  4005fa:	49 89 d1             	mov    %rdx,%r9
  4005fd:	5e                   	pop    %rsi
  4005fe:	48 89 e2             	mov    %rsp,%rdx
  400601:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400605:	50                   	push   %rax
  400606:	54                   	push   %rsp
  400607:	49 c7 c0 30 0c 40 00 	mov    $0x400c30,%r8
  40060e:	48 c7 c1 c0 0b 40 00 	mov    $0x400bc0,%rcx
  400615:	48 c7 c7 40 05 40 00 	mov    $0x400540,%rdi
  40061c:	e8 cf fe ff ff       	callq  4004f0 <__libc_start_main@plt>
  400621:	f4                   	hlt    
  400622:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400629:	00 00 00 
  40062c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400630 <deregister_tm_clones>:
  400630:	b8 5f 20 60 00       	mov    $0x60205f,%eax
  400635:	55                   	push   %rbp
  400636:	48 2d 58 20 60 00    	sub    $0x602058,%rax
  40063c:	48 83 f8 0e          	cmp    $0xe,%rax
  400640:	48 89 e5             	mov    %rsp,%rbp
  400643:	77 02                	ja     400647 <deregister_tm_clones+0x17>
  400645:	5d                   	pop    %rbp
  400646:	c3                   	retq   
  400647:	b8 00 00 00 00       	mov    $0x0,%eax
  40064c:	48 85 c0             	test   %rax,%rax
  40064f:	74 f4                	je     400645 <deregister_tm_clones+0x15>
  400651:	5d                   	pop    %rbp
  400652:	bf 58 20 60 00       	mov    $0x602058,%edi
  400657:	ff e0                	jmpq   *%rax
  400659:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400660 <register_tm_clones>:
  400660:	b8 58 20 60 00       	mov    $0x602058,%eax
  400665:	55                   	push   %rbp
  400666:	48 2d 58 20 60 00    	sub    $0x602058,%rax
  40066c:	48 c1 f8 03          	sar    $0x3,%rax
  400670:	48 89 e5             	mov    %rsp,%rbp
  400673:	48 89 c2             	mov    %rax,%rdx
  400676:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40067a:	48 01 d0             	add    %rdx,%rax
  40067d:	48 d1 f8             	sar    %rax
  400680:	75 02                	jne    400684 <register_tm_clones+0x24>
  400682:	5d                   	pop    %rbp
  400683:	c3                   	retq   
  400684:	ba 00 00 00 00       	mov    $0x0,%edx
  400689:	48 85 d2             	test   %rdx,%rdx
  40068c:	74 f4                	je     400682 <register_tm_clones+0x22>
  40068e:	5d                   	pop    %rbp
  40068f:	48 89 c6             	mov    %rax,%rsi
  400692:	bf 58 20 60 00       	mov    $0x602058,%edi
  400697:	ff e2                	jmpq   *%rdx
  400699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006a0 <__do_global_dtors_aux>:
  4006a0:	80 3d b1 19 20 00 00 	cmpb   $0x0,0x2019b1(%rip)        # 602058 <__TMC_END__>
  4006a7:	75 11                	jne    4006ba <__do_global_dtors_aux+0x1a>
  4006a9:	55                   	push   %rbp
  4006aa:	48 89 e5             	mov    %rsp,%rbp
  4006ad:	e8 7e ff ff ff       	callq  400630 <deregister_tm_clones>
  4006b2:	5d                   	pop    %rbp
  4006b3:	c6 05 9e 19 20 00 01 	movb   $0x1,0x20199e(%rip)        # 602058 <__TMC_END__>
  4006ba:	f3 c3                	repz retq 
  4006bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006c0 <frame_dummy>:
  4006c0:	48 83 3d 58 17 20 00 	cmpq   $0x0,0x201758(%rip)        # 601e20 <__JCR_END__>
  4006c7:	00 
  4006c8:	74 1e                	je     4006e8 <frame_dummy+0x28>
  4006ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4006cf:	48 85 c0             	test   %rax,%rax
  4006d2:	74 14                	je     4006e8 <frame_dummy+0x28>
  4006d4:	55                   	push   %rbp
  4006d5:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  4006da:	48 89 e5             	mov    %rsp,%rbp
  4006dd:	ff d0                	callq  *%rax
  4006df:	5d                   	pop    %rbp
  4006e0:	e9 7b ff ff ff       	jmpq   400660 <register_tm_clones>
  4006e5:	0f 1f 00             	nopl   (%rax)
  4006e8:	e9 73 ff ff ff       	jmpq   400660 <register_tm_clones>
  4006ed:	0f 1f 00             	nopl   (%rax)

00000000004006f0 <_Z10multiplicaPA4_iS0_S0_j>:
  4006f0:	41 57                	push   %r15
  4006f2:	85 c9                	test   %ecx,%ecx
  4006f4:	41 56                	push   %r14
  4006f6:	41 55                	push   %r13
  4006f8:	41 54                	push   %r12
  4006fa:	55                   	push   %rbp
  4006fb:	53                   	push   %rbx
  4006fc:	89 4c 24 fc          	mov    %ecx,-0x4(%rsp)
  400700:	0f 84 4a 04 00 00    	je     400b50 <_Z10multiplicaPA4_iS0_S0_j+0x460>
  400706:	8b 42 1c             	mov    0x1c(%rdx),%eax
  400709:	44 8b 2a             	mov    (%rdx),%r13d
  40070c:	44 8b 62 04          	mov    0x4(%rdx),%r12d
  400710:	8b 6a 08             	mov    0x8(%rdx),%ebp
  400713:	8b 5a 0c             	mov    0xc(%rdx),%ebx
  400716:	44 8b 5a 10          	mov    0x10(%rdx),%r11d
  40071a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40071e:	8b 42 20             	mov    0x20(%rdx),%eax
  400721:	44 8b 52 14          	mov    0x14(%rdx),%r10d
  400725:	44 8b 4a 18          	mov    0x18(%rdx),%r9d
  400729:	c7 44 24 f8 00 00 00 	movl   $0x0,-0x8(%rsp)
  400730:	00 
  400731:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  400735:	8b 42 24             	mov    0x24(%rdx),%eax
  400738:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40073c:	8b 42 28             	mov    0x28(%rdx),%eax
  40073f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  400743:	8b 42 2c             	mov    0x2c(%rdx),%eax
  400746:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40074a:	8b 42 30             	mov    0x30(%rdx),%eax
  40074d:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  400751:	8b 42 34             	mov    0x34(%rdx),%eax
  400754:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  400758:	8b 42 38             	mov    0x38(%rdx),%eax
  40075b:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40075f:	8b 42 3c             	mov    0x3c(%rdx),%eax
  400762:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  400766:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40076d:	00 00 00 
  400770:	8b 07                	mov    (%rdi),%eax
  400772:	0f af 06             	imul   (%rsi),%eax
  400775:	41 01 c5             	add    %eax,%r13d
  400778:	44 89 2a             	mov    %r13d,(%rdx)
  40077b:	8b 47 04             	mov    0x4(%rdi),%eax
  40077e:	0f af 46 10          	imul   0x10(%rsi),%eax
  400782:	41 01 c5             	add    %eax,%r13d
  400785:	44 89 2a             	mov    %r13d,(%rdx)
  400788:	44 8b 77 08          	mov    0x8(%rdi),%r14d
  40078c:	8b 46 20             	mov    0x20(%rsi),%eax
  40078f:	41 0f af c6          	imul   %r14d,%eax
  400793:	41 01 c5             	add    %eax,%r13d
  400796:	44 89 2a             	mov    %r13d,(%rdx)
  400799:	8b 4f 0c             	mov    0xc(%rdi),%ecx
  40079c:	8b 46 30             	mov    0x30(%rsi),%eax
  40079f:	0f af c1             	imul   %ecx,%eax
  4007a2:	41 01 c5             	add    %eax,%r13d
  4007a5:	44 89 2a             	mov    %r13d,(%rdx)
  4007a8:	8b 07                	mov    (%rdi),%eax
  4007aa:	44 8b 46 04          	mov    0x4(%rsi),%r8d
  4007ae:	44 0f af c0          	imul   %eax,%r8d
  4007b2:	45 01 c4             	add    %r8d,%r12d
  4007b5:	44 89 62 04          	mov    %r12d,0x4(%rdx)
  4007b9:	44 8b 47 04          	mov    0x4(%rdi),%r8d
  4007bd:	44 0f af 46 14       	imul   0x14(%rsi),%r8d
  4007c2:	45 01 c4             	add    %r8d,%r12d
  4007c5:	44 89 62 04          	mov    %r12d,0x4(%rdx)
  4007c9:	44 0f af 76 24       	imul   0x24(%rsi),%r14d
  4007ce:	45 01 f4             	add    %r14d,%r12d
  4007d1:	44 89 62 04          	mov    %r12d,0x4(%rdx)
  4007d5:	44 8b 46 34          	mov    0x34(%rsi),%r8d
  4007d9:	44 0f af c1          	imul   %ecx,%r8d
  4007dd:	45 01 c4             	add    %r8d,%r12d
  4007e0:	44 89 62 04          	mov    %r12d,0x4(%rdx)
  4007e4:	44 8b 46 08          	mov    0x8(%rsi),%r8d
  4007e8:	44 0f af c0          	imul   %eax,%r8d
  4007ec:	44 01 c5             	add    %r8d,%ebp
  4007ef:	89 6a 08             	mov    %ebp,0x8(%rdx)
  4007f2:	44 8b 77 04          	mov    0x4(%rdi),%r14d
  4007f6:	44 8b 46 18          	mov    0x18(%rsi),%r8d
  4007fa:	45 0f af c6          	imul   %r14d,%r8d
  4007fe:	44 01 c5             	add    %r8d,%ebp
  400801:	89 6a 08             	mov    %ebp,0x8(%rdx)
  400804:	44 8b 47 08          	mov    0x8(%rdi),%r8d
  400808:	44 0f af 46 28       	imul   0x28(%rsi),%r8d
  40080d:	41 01 e8             	add    %ebp,%r8d
  400810:	44 89 42 08          	mov    %r8d,0x8(%rdx)
  400814:	0f af 4e 38          	imul   0x38(%rsi),%ecx
  400818:	89 cd                	mov    %ecx,%ebp
  40081a:	44 01 c5             	add    %r8d,%ebp
  40081d:	89 6a 08             	mov    %ebp,0x8(%rdx)
  400820:	0f af 46 0c          	imul   0xc(%rsi),%eax
  400824:	01 d8                	add    %ebx,%eax
  400826:	89 42 0c             	mov    %eax,0xc(%rdx)
  400829:	8b 5e 1c             	mov    0x1c(%rsi),%ebx
  40082c:	41 0f af de          	imul   %r14d,%ebx
  400830:	01 c3                	add    %eax,%ebx
  400832:	89 5a 0c             	mov    %ebx,0xc(%rdx)
  400835:	8b 4f 08             	mov    0x8(%rdi),%ecx
  400838:	0f af 4e 2c          	imul   0x2c(%rsi),%ecx
  40083c:	01 cb                	add    %ecx,%ebx
  40083e:	89 5a 0c             	mov    %ebx,0xc(%rdx)
  400841:	8b 4f 0c             	mov    0xc(%rdi),%ecx
  400844:	0f af 4e 3c          	imul   0x3c(%rsi),%ecx
  400848:	01 cb                	add    %ecx,%ebx
  40084a:	89 5a 0c             	mov    %ebx,0xc(%rdx)
  40084d:	8b 47 10             	mov    0x10(%rdi),%eax
  400850:	0f af 06             	imul   (%rsi),%eax
  400853:	41 01 c3             	add    %eax,%r11d
  400856:	44 89 5a 10          	mov    %r11d,0x10(%rdx)
  40085a:	8b 47 14             	mov    0x14(%rdi),%eax
  40085d:	0f af 46 10          	imul   0x10(%rsi),%eax
  400861:	41 01 c3             	add    %eax,%r11d
  400864:	44 89 5a 10          	mov    %r11d,0x10(%rdx)
  400868:	44 8b 77 18          	mov    0x18(%rdi),%r14d
  40086c:	8b 46 20             	mov    0x20(%rsi),%eax
  40086f:	41 0f af c6          	imul   %r14d,%eax
  400873:	41 01 c3             	add    %eax,%r11d
  400876:	44 89 5a 10          	mov    %r11d,0x10(%rdx)
  40087a:	8b 4f 1c             	mov    0x1c(%rdi),%ecx
  40087d:	8b 46 30             	mov    0x30(%rsi),%eax
  400880:	0f af c1             	imul   %ecx,%eax
  400883:	41 01 c3             	add    %eax,%r11d
  400886:	44 89 5a 10          	mov    %r11d,0x10(%rdx)
  40088a:	8b 47 10             	mov    0x10(%rdi),%eax
  40088d:	44 8b 46 04          	mov    0x4(%rsi),%r8d
  400891:	44 0f af c0          	imul   %eax,%r8d
  400895:	45 01 c2             	add    %r8d,%r10d
  400898:	44 89 52 14          	mov    %r10d,0x14(%rdx)
  40089c:	44 8b 47 14          	mov    0x14(%rdi),%r8d
  4008a0:	44 0f af 46 14       	imul   0x14(%rsi),%r8d
  4008a5:	45 01 c2             	add    %r8d,%r10d
  4008a8:	44 89 52 14          	mov    %r10d,0x14(%rdx)
  4008ac:	44 0f af 76 24       	imul   0x24(%rsi),%r14d
  4008b1:	45 01 f2             	add    %r14d,%r10d
  4008b4:	44 89 52 14          	mov    %r10d,0x14(%rdx)
  4008b8:	44 8b 46 34          	mov    0x34(%rsi),%r8d
  4008bc:	44 0f af c1          	imul   %ecx,%r8d
  4008c0:	45 01 c2             	add    %r8d,%r10d
  4008c3:	44 89 52 14          	mov    %r10d,0x14(%rdx)
  4008c7:	44 8b 46 08          	mov    0x8(%rsi),%r8d
  4008cb:	44 0f af c0          	imul   %eax,%r8d
  4008cf:	45 01 c1             	add    %r8d,%r9d
  4008d2:	44 89 4a 18          	mov    %r9d,0x18(%rdx)
  4008d6:	44 8b 77 14          	mov    0x14(%rdi),%r14d
  4008da:	44 8b 46 18          	mov    0x18(%rsi),%r8d
  4008de:	45 0f af c6          	imul   %r14d,%r8d
  4008e2:	45 01 c1             	add    %r8d,%r9d
  4008e5:	44 89 4a 18          	mov    %r9d,0x18(%rdx)
  4008e9:	44 8b 47 18          	mov    0x18(%rdi),%r8d
  4008ed:	44 0f af 46 28       	imul   0x28(%rsi),%r8d
  4008f2:	45 01 c8             	add    %r9d,%r8d
  4008f5:	44 89 42 18          	mov    %r8d,0x18(%rdx)
  4008f9:	0f af 4e 38          	imul   0x38(%rsi),%ecx
  4008fd:	41 89 c9             	mov    %ecx,%r9d
  400900:	45 01 c1             	add    %r8d,%r9d
  400903:	44 8b 44 24 d4       	mov    -0x2c(%rsp),%r8d
  400908:	44 89 4a 18          	mov    %r9d,0x18(%rdx)
  40090c:	0f af 46 0c          	imul   0xc(%rsi),%eax
  400910:	41 01 c0             	add    %eax,%r8d
  400913:	44 89 42 1c          	mov    %r8d,0x1c(%rdx)
  400917:	44 0f af 76 1c       	imul   0x1c(%rsi),%r14d
  40091c:	45 01 c6             	add    %r8d,%r14d
  40091f:	44 89 72 1c          	mov    %r14d,0x1c(%rdx)
  400923:	44 8b 47 18          	mov    0x18(%rdi),%r8d
  400927:	44 0f af 46 2c       	imul   0x2c(%rsi),%r8d
  40092c:	45 01 f0             	add    %r14d,%r8d
  40092f:	44 89 42 1c          	mov    %r8d,0x1c(%rdx)
  400933:	8b 4f 1c             	mov    0x1c(%rdi),%ecx
  400936:	0f af 4e 3c          	imul   0x3c(%rsi),%ecx
  40093a:	41 8d 04 08          	lea    (%r8,%rcx,1),%eax
  40093e:	89 42 1c             	mov    %eax,0x1c(%rdx)
  400941:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  400945:	8b 47 20             	mov    0x20(%rdi),%eax
  400948:	0f af 06             	imul   (%rsi),%eax
  40094b:	03 44 24 d8          	add    -0x28(%rsp),%eax
  40094f:	89 42 20             	mov    %eax,0x20(%rdx)
  400952:	8b 4f 24             	mov    0x24(%rdi),%ecx
  400955:	0f af 4e 10          	imul   0x10(%rsi),%ecx
  400959:	01 c8                	add    %ecx,%eax
  40095b:	89 42 20             	mov    %eax,0x20(%rdx)
  40095e:	44 8b 77 28          	mov    0x28(%rdi),%r14d
  400962:	8b 4e 20             	mov    0x20(%rsi),%ecx
  400965:	41 0f af ce          	imul   %r14d,%ecx
  400969:	01 c8                	add    %ecx,%eax
  40096b:	89 42 20             	mov    %eax,0x20(%rdx)
  40096e:	8b 4f 2c             	mov    0x2c(%rdi),%ecx
  400971:	44 8b 46 30          	mov    0x30(%rsi),%r8d
  400975:	44 0f af c1          	imul   %ecx,%r8d
  400979:	44 01 c0             	add    %r8d,%eax
  40097c:	89 42 20             	mov    %eax,0x20(%rdx)
  40097f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  400983:	44 8b 7e 04          	mov    0x4(%rsi),%r15d
  400987:	8b 47 20             	mov    0x20(%rdi),%eax
  40098a:	44 0f af f8          	imul   %eax,%r15d
  40098e:	44 03 7c 24 dc       	add    -0x24(%rsp),%r15d
  400993:	44 89 7a 24          	mov    %r15d,0x24(%rdx)
  400997:	44 8b 47 24          	mov    0x24(%rdi),%r8d
  40099b:	44 0f af 46 14       	imul   0x14(%rsi),%r8d
  4009a0:	45 01 f8             	add    %r15d,%r8d
  4009a3:	44 89 42 24          	mov    %r8d,0x24(%rdx)
  4009a7:	44 0f af 76 24       	imul   0x24(%rsi),%r14d
  4009ac:	45 01 c6             	add    %r8d,%r14d
  4009af:	44 89 72 24          	mov    %r14d,0x24(%rdx)
  4009b3:	44 8b 7e 34          	mov    0x34(%rsi),%r15d
  4009b7:	44 0f af f9          	imul   %ecx,%r15d
  4009bb:	45 01 f7             	add    %r14d,%r15d
  4009be:	44 89 7a 24          	mov    %r15d,0x24(%rdx)
  4009c2:	44 89 7c 24 dc       	mov    %r15d,-0x24(%rsp)
  4009c7:	44 8b 7e 08          	mov    0x8(%rsi),%r15d
  4009cb:	44 0f af f8          	imul   %eax,%r15d
  4009cf:	44 03 7c 24 e0       	add    -0x20(%rsp),%r15d
  4009d4:	44 89 7a 28          	mov    %r15d,0x28(%rdx)
  4009d8:	44 8b 77 24          	mov    0x24(%rdi),%r14d
  4009dc:	44 8b 46 18          	mov    0x18(%rsi),%r8d
  4009e0:	45 0f af c6          	imul   %r14d,%r8d
  4009e4:	45 01 c7             	add    %r8d,%r15d
  4009e7:	44 89 7a 28          	mov    %r15d,0x28(%rdx)
  4009eb:	44 8b 47 28          	mov    0x28(%rdi),%r8d
  4009ef:	44 0f af 46 28       	imul   0x28(%rsi),%r8d
  4009f4:	45 01 f8             	add    %r15d,%r8d
  4009f7:	44 89 42 28          	mov    %r8d,0x28(%rdx)
  4009fb:	0f af 4e 38          	imul   0x38(%rsi),%ecx
  4009ff:	44 01 c1             	add    %r8d,%ecx
  400a02:	44 8b 44 24 e4       	mov    -0x1c(%rsp),%r8d
  400a07:	89 4a 28             	mov    %ecx,0x28(%rdx)
  400a0a:	89 4c 24 e0          	mov    %ecx,-0x20(%rsp)
  400a0e:	0f af 46 0c          	imul   0xc(%rsi),%eax
  400a12:	41 01 c0             	add    %eax,%r8d
  400a15:	44 89 42 2c          	mov    %r8d,0x2c(%rdx)
  400a19:	44 0f af 76 1c       	imul   0x1c(%rsi),%r14d
  400a1e:	45 01 c6             	add    %r8d,%r14d
  400a21:	44 89 72 2c          	mov    %r14d,0x2c(%rdx)
  400a25:	44 8b 47 28          	mov    0x28(%rdi),%r8d
  400a29:	44 0f af 46 2c       	imul   0x2c(%rsi),%r8d
  400a2e:	45 01 f0             	add    %r14d,%r8d
  400a31:	44 89 42 2c          	mov    %r8d,0x2c(%rdx)
  400a35:	8b 4f 2c             	mov    0x2c(%rdi),%ecx
  400a38:	0f af 4e 3c          	imul   0x3c(%rsi),%ecx
  400a3c:	41 8d 04 08          	lea    (%r8,%rcx,1),%eax
  400a40:	89 42 2c             	mov    %eax,0x2c(%rdx)
  400a43:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  400a47:	8b 47 30             	mov    0x30(%rdi),%eax
  400a4a:	0f af 06             	imul   (%rsi),%eax
  400a4d:	03 44 24 e8          	add    -0x18(%rsp),%eax
  400a51:	89 42 30             	mov    %eax,0x30(%rdx)
  400a54:	8b 4f 34             	mov    0x34(%rdi),%ecx
  400a57:	0f af 4e 10          	imul   0x10(%rsi),%ecx
  400a5b:	01 c8                	add    %ecx,%eax
  400a5d:	89 42 30             	mov    %eax,0x30(%rdx)
  400a60:	44 8b 77 38          	mov    0x38(%rdi),%r14d
  400a64:	8b 4e 20             	mov    0x20(%rsi),%ecx
  400a67:	41 0f af ce          	imul   %r14d,%ecx
  400a6b:	01 c8                	add    %ecx,%eax
  400a6d:	89 42 30             	mov    %eax,0x30(%rdx)
  400a70:	8b 4f 3c             	mov    0x3c(%rdi),%ecx
  400a73:	44 8b 46 30          	mov    0x30(%rsi),%r8d
  400a77:	44 0f af c1          	imul   %ecx,%r8d
  400a7b:	44 01 c0             	add    %r8d,%eax
  400a7e:	89 42 30             	mov    %eax,0x30(%rdx)
  400a81:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  400a85:	44 8b 7e 04          	mov    0x4(%rsi),%r15d
  400a89:	8b 47 30             	mov    0x30(%rdi),%eax
  400a8c:	44 0f af f8          	imul   %eax,%r15d
  400a90:	44 03 7c 24 ec       	add    -0x14(%rsp),%r15d
  400a95:	44 89 7a 34          	mov    %r15d,0x34(%rdx)
  400a99:	44 8b 47 34          	mov    0x34(%rdi),%r8d
  400a9d:	44 0f af 46 14       	imul   0x14(%rsi),%r8d
  400aa2:	45 01 f8             	add    %r15d,%r8d
  400aa5:	44 89 42 34          	mov    %r8d,0x34(%rdx)
  400aa9:	44 0f af 76 24       	imul   0x24(%rsi),%r14d
  400aae:	45 01 c6             	add    %r8d,%r14d
  400ab1:	44 89 72 34          	mov    %r14d,0x34(%rdx)
  400ab5:	44 8b 7e 34          	mov    0x34(%rsi),%r15d
  400ab9:	44 0f af f9          	imul   %ecx,%r15d
  400abd:	45 01 fe             	add    %r15d,%r14d
  400ac0:	44 89 72 34          	mov    %r14d,0x34(%rdx)
  400ac4:	44 8b 7e 08          	mov    0x8(%rsi),%r15d
  400ac8:	44 89 74 24 ec       	mov    %r14d,-0x14(%rsp)
  400acd:	44 0f af f8          	imul   %eax,%r15d
  400ad1:	44 03 7c 24 f0       	add    -0x10(%rsp),%r15d
  400ad6:	44 89 7a 38          	mov    %r15d,0x38(%rdx)
  400ada:	44 8b 77 34          	mov    0x34(%rdi),%r14d
  400ade:	44 8b 46 18          	mov    0x18(%rsi),%r8d
  400ae2:	45 0f af c6          	imul   %r14d,%r8d
  400ae6:	45 01 c7             	add    %r8d,%r15d
  400ae9:	44 89 7a 38          	mov    %r15d,0x38(%rdx)
  400aed:	44 8b 47 38          	mov    0x38(%rdi),%r8d
  400af1:	44 0f af 46 28       	imul   0x28(%rsi),%r8d
  400af6:	45 01 f8             	add    %r15d,%r8d
  400af9:	44 89 42 38          	mov    %r8d,0x38(%rdx)
  400afd:	0f af 4e 38          	imul   0x38(%rsi),%ecx
  400b01:	44 01 c1             	add    %r8d,%ecx
  400b04:	89 4c 24 f0          	mov    %ecx,-0x10(%rsp)
  400b08:	89 4a 38             	mov    %ecx,0x38(%rdx)
  400b0b:	0f af 46 0c          	imul   0xc(%rsi),%eax
  400b0f:	83 44 24 f8 01       	addl   $0x1,-0x8(%rsp)
  400b14:	03 44 24 f4          	add    -0xc(%rsp),%eax
  400b18:	89 42 3c             	mov    %eax,0x3c(%rdx)
  400b1b:	44 0f af 76 1c       	imul   0x1c(%rsi),%r14d
  400b20:	44 01 f0             	add    %r14d,%eax
  400b23:	89 42 3c             	mov    %eax,0x3c(%rdx)
  400b26:	8b 4f 38             	mov    0x38(%rdi),%ecx
  400b29:	0f af 4e 2c          	imul   0x2c(%rsi),%ecx
  400b2d:	01 c8                	add    %ecx,%eax
  400b2f:	89 42 3c             	mov    %eax,0x3c(%rdx)
  400b32:	8b 4f 3c             	mov    0x3c(%rdi),%ecx
  400b35:	0f af 4e 3c          	imul   0x3c(%rsi),%ecx
  400b39:	01 c8                	add    %ecx,%eax
  400b3b:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  400b3f:	89 42 3c             	mov    %eax,0x3c(%rdx)
  400b42:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400b46:	39 44 24 f8          	cmp    %eax,-0x8(%rsp)
  400b4a:	0f 85 20 fc ff ff    	jne    400770 <_Z10multiplicaPA4_iS0_S0_j+0x80>
  400b50:	5b                   	pop    %rbx
  400b51:	5d                   	pop    %rbp
  400b52:	41 5c                	pop    %r12
  400b54:	41 5d                	pop    %r13
  400b56:	41 5e                	pop    %r14
  400b58:	41 5f                	pop    %r15
  400b5a:	c3                   	retq   
  400b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400b60 <_Z12print_matriuPA4_i>:
  400b60:	41 55                	push   %r13
  400b62:	49 89 fd             	mov    %rdi,%r13
  400b65:	41 54                	push   %r12
  400b67:	45 31 e4             	xor    %r12d,%r12d
  400b6a:	55                   	push   %rbp
  400b6b:	53                   	push   %rbx
  400b6c:	48 83 ec 08          	sub    $0x8,%rsp
  400b70:	4b 8d 6c 25 00       	lea    0x0(%r13,%r12,1),%rbp
  400b75:	31 db                	xor    %ebx,%ebx
  400b77:	8b 54 1d 00          	mov    0x0(%rbp,%rbx,1),%edx
  400b7b:	31 c0                	xor    %eax,%eax
  400b7d:	be 44 0c 40 00       	mov    $0x400c44,%esi
  400b82:	bf 01 00 00 00       	mov    $0x1,%edi
  400b87:	48 83 c3 04          	add    $0x4,%rbx
  400b8b:	e8 90 f9 ff ff       	callq  400520 <__printf_chk@plt>
  400b90:	48 83 fb 10          	cmp    $0x10,%rbx
  400b94:	75 e1                	jne    400b77 <_Z12print_matriuPA4_i+0x17>
  400b96:	bf 0a 00 00 00       	mov    $0xa,%edi
  400b9b:	49 83 c4 10          	add    $0x10,%r12
  400b9f:	e8 3c f9 ff ff       	callq  4004e0 <putchar@plt>
  400ba4:	49 83 fc 40          	cmp    $0x40,%r12
  400ba8:	75 c6                	jne    400b70 <_Z12print_matriuPA4_i+0x10>
  400baa:	48 83 c4 08          	add    $0x8,%rsp
  400bae:	5b                   	pop    %rbx
  400baf:	5d                   	pop    %rbp
  400bb0:	41 5c                	pop    %r12
  400bb2:	41 5d                	pop    %r13
  400bb4:	c3                   	retq   
  400bb5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bbc:	00 00 00 
  400bbf:	90                   	nop

0000000000400bc0 <__libc_csu_init>:
  400bc0:	41 57                	push   %r15
  400bc2:	41 89 ff             	mov    %edi,%r15d
  400bc5:	41 56                	push   %r14
  400bc7:	49 89 f6             	mov    %rsi,%r14
  400bca:	41 55                	push   %r13
  400bcc:	49 89 d5             	mov    %rdx,%r13
  400bcf:	41 54                	push   %r12
  400bd1:	4c 8d 25 38 12 20 00 	lea    0x201238(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400bd8:	55                   	push   %rbp
  400bd9:	48 8d 2d 38 12 20 00 	lea    0x201238(%rip),%rbp        # 601e18 <__init_array_end>
  400be0:	53                   	push   %rbx
  400be1:	4c 29 e5             	sub    %r12,%rbp
  400be4:	31 db                	xor    %ebx,%ebx
  400be6:	48 c1 fd 03          	sar    $0x3,%rbp
  400bea:	48 83 ec 08          	sub    $0x8,%rsp
  400bee:	e8 bd f8 ff ff       	callq  4004b0 <_init>
  400bf3:	48 85 ed             	test   %rbp,%rbp
  400bf6:	74 1e                	je     400c16 <__libc_csu_init+0x56>
  400bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bff:	00 
  400c00:	4c 89 ea             	mov    %r13,%rdx
  400c03:	4c 89 f6             	mov    %r14,%rsi
  400c06:	44 89 ff             	mov    %r15d,%edi
  400c09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c0d:	48 83 c3 01          	add    $0x1,%rbx
  400c11:	48 39 eb             	cmp    %rbp,%rbx
  400c14:	75 ea                	jne    400c00 <__libc_csu_init+0x40>
  400c16:	48 83 c4 08          	add    $0x8,%rsp
  400c1a:	5b                   	pop    %rbx
  400c1b:	5d                   	pop    %rbp
  400c1c:	41 5c                	pop    %r12
  400c1e:	41 5d                	pop    %r13
  400c20:	41 5e                	pop    %r14
  400c22:	41 5f                	pop    %r15
  400c24:	c3                   	retq   
  400c25:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  400c2c:	00 00 00 00 

0000000000400c30 <__libc_csu_fini>:
  400c30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c34 <_fini>:
  400c34:	48 83 ec 08          	sub    $0x8,%rsp
  400c38:	48 83 c4 08          	add    $0x8,%rsp
  400c3c:	c3                   	retq   
