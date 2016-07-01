
matriu4x4.g2:     file format elf64-x86-64


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
  40054b:	49 89 f6             	mov    %rsi,%r14
  40054e:	41 55                	push   %r13
  400550:	41 54                	push   %r12
  400552:	55                   	push   %rbp
  400553:	53                   	push   %rbx
  400554:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  40055b:	48 8d 9c 24 90 00 00 	lea    0x90(%rsp),%rbx
  400562:	00
  400563:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
  400567:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
  40056c:	48 89 df             	mov    %rbx,%rdi
  40056f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  400572:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
  400577:	4d 89 ec             	mov    %r13,%r12
  40057a:	45 31 ff             	xor    %r15d,%r15d
  40057d:	e8 ae ff ff ff       	callq  400530 <rand@plt>
  400582:	42 89 44 3d 00       	mov    %eax,0x0(%rbp,%r15,1)
  400587:	e8 a4 ff ff ff       	callq  400530 <rand@plt>
  40058c:	43 89 04 3c          	mov    %eax,(%r12,%r15,1)
  400590:	49 83 c7 04          	add    $0x4,%r15
  400594:	49 83 ff 10          	cmp    $0x10,%r15
  400598:	75 e3                	jne    40057d <main+0x3d>
  40059a:	48 83 c5 10          	add    $0x10,%rbp
  40059e:	49 83 c4 10          	add    $0x10,%r12
  4005a2:	4c 39 ed             	cmp    %r13,%rbp
  4005a5:	75 d3                	jne    40057a <main+0x3a>
  4005a7:	83 7c 24 0c 01       	cmpl   $0x1,0xc(%rsp)
  4005ac:	0f 8e 8f 00 00 00    	jle    400641 <main+0x101>
  4005b2:	49 8b 7e 08          	mov    0x8(%r14),%rdi
  4005b6:	31 f6                	xor    %esi,%esi
  4005b8:	ba 0a 00 00 00       	mov    $0xa,%edx
  4005bd:	e8 4e ff ff ff       	callq  400510 <strtol@plt>
  4005c2:	85 c0                	test   %eax,%eax
  4005c4:	89 c5                	mov    %eax,%ebp
  4005c6:	74 5d                	je     400625 <main+0xe5>
  4005c8:	4c 8d 94 24 d0 00 00 	lea    0xd0(%rsp),%r10
  4005cf:	00
  4005d0:	45 31 db             	xor    %r11d,%r11d
  4005d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  --- Init i loop (2 ins) (TOTAL: 518 ins)
  4005d8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4005dd:	49 89 d9             	mov    %rbx,%r9
  --- Start i loop (5+124ins, executed 4 times = 516 ins)
  4005e0:	31 f6                	xor    %esi,%esi
  --- Start j loop (7+24ins, executed 4 times = 124 ins)
  4005e2:	41 8b 0c 31          	mov    (%r9,%rsi,1),%ecx
  4005e6:	4c 8d 44 34 50       	lea    0x50(%rsp,%rsi,1),%r8
  4005eb:	31 c0                	xor    %eax,%eax
  --- Start k loop (6 ins, executed 4 times = 24 ins)
  4005ed:	8b 14 07             	mov    (%rdi,%rax,1),%edx
  4005f0:	41 0f af 14 80       	imul   (%r8,%rax,4),%edx
  4005f5:	48 83 c0 04          	add    $0x4,%rax
  4005f9:	01 d1                	add    %edx,%ecx
  4005fb:	48 83 f8 10          	cmp    $0x10,%rax
  4005ff:	75 ec                	jne    4005ed <main+0xad>
  --- End k loop
  400601:	41 89 0c 31          	mov    %ecx,(%r9,%rsi,1)
  400605:	48 83 c6 04          	add    $0x4,%rsi
  400609:	48 83 fe 10          	cmp    $0x10,%rsi
  40060d:	75 d3                	jne    4005e2 <main+0xa2>
  --- End j loop
  40060f:	49 83 c1 10          	add    $0x10,%r9
  400613:	48 83 c7 10          	add    $0x10,%rdi
  400617:	4d 39 d1             	cmp    %r10,%r9
  40061a:	75 c4                	jne    4005e0 <main+0xa0>
  --- End i loop
  40061c:	41 83 c3 01          	add    $0x1,%r11d
  400620:	44 39 dd             	cmp    %r11d,%ebp
  400623:	77 b3                	ja     4005d8 <main+0x98>
  400625:	48 89 df             	mov    %rbx,%rdi
  400628:	e8 93 01 00 00       	callq  4007c0 <print_matriu>
  40062d:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  400634:	31 c0                	xor    %eax,%eax
  400636:	5b                   	pop    %rbx
  400637:	5d                   	pop    %rbp
  400638:	41 5c                	pop    %r12
  40063a:	41 5d                	pop    %r13
  40063c:	41 5e                	pop    %r14
  40063e:	41 5f                	pop    %r15
  400640:	c3                   	retq
  400641:	bd 80 96 98 00       	mov    $0x989680,%ebp
  400646:	eb 80                	jmp    4005c8 <main+0x88>

0000000000400648 <_start>:
  400648:	31 ed                	xor    %ebp,%ebp
  40064a:	49 89 d1             	mov    %rdx,%r9
  40064d:	5e                   	pop    %rsi
  40064e:	48 89 e2             	mov    %rsp,%rdx
  400651:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400655:	50                   	push   %rax
  400656:	54                   	push   %rsp
  400657:	49 c7 c0 90 08 40 00 	mov    $0x400890,%r8
  40065e:	48 c7 c1 20 08 40 00 	mov    $0x400820,%rcx
  400665:	48 c7 c7 40 05 40 00 	mov    $0x400540,%rdi
  40066c:	e8 7f fe ff ff       	callq  4004f0 <__libc_start_main@plt>
  400671:	f4                   	hlt
  400672:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400679:	00 00 00
  40067c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400680 <deregister_tm_clones>:
  400680:	b8 5f 10 60 00       	mov    $0x60105f,%eax
  400685:	55                   	push   %rbp
  400686:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  40068c:	48 83 f8 0e          	cmp    $0xe,%rax
  400690:	48 89 e5             	mov    %rsp,%rbp
  400693:	77 02                	ja     400697 <deregister_tm_clones+0x17>
  400695:	5d                   	pop    %rbp
  400696:	c3                   	retq
  400697:	b8 00 00 00 00       	mov    $0x0,%eax
  40069c:	48 85 c0             	test   %rax,%rax
  40069f:	74 f4                	je     400695 <deregister_tm_clones+0x15>
  4006a1:	5d                   	pop    %rbp
  4006a2:	bf 58 10 60 00       	mov    $0x601058,%edi
  4006a7:	ff e0                	jmpq   *%rax
  4006a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006b0 <register_tm_clones>:
  4006b0:	b8 58 10 60 00       	mov    $0x601058,%eax
  4006b5:	55                   	push   %rbp
  4006b6:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  4006bc:	48 c1 f8 03          	sar    $0x3,%rax
  4006c0:	48 89 e5             	mov    %rsp,%rbp
  4006c3:	48 89 c2             	mov    %rax,%rdx
  4006c6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4006ca:	48 01 d0             	add    %rdx,%rax
  4006cd:	48 d1 f8             	sar    %rax
  4006d0:	75 02                	jne    4006d4 <register_tm_clones+0x24>
  4006d2:	5d                   	pop    %rbp
  4006d3:	c3                   	retq
  4006d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4006d9:	48 85 d2             	test   %rdx,%rdx
  4006dc:	74 f4                	je     4006d2 <register_tm_clones+0x22>
  4006de:	5d                   	pop    %rbp
  4006df:	48 89 c6             	mov    %rax,%rsi
  4006e2:	bf 58 10 60 00       	mov    $0x601058,%edi
  4006e7:	ff e2                	jmpq   *%rdx
  4006e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006f0 <__do_global_dtors_aux>:
  4006f0:	80 3d 61 09 20 00 00 	cmpb   $0x0,0x200961(%rip)        # 601058 <__TMC_END__>
  4006f7:	75 11                	jne    40070a <__do_global_dtors_aux+0x1a>
  4006f9:	55                   	push   %rbp
  4006fa:	48 89 e5             	mov    %rsp,%rbp
  4006fd:	e8 7e ff ff ff       	callq  400680 <deregister_tm_clones>
  400702:	5d                   	pop    %rbp
  400703:	c6 05 4e 09 20 00 01 	movb   $0x1,0x20094e(%rip)        # 601058 <__TMC_END__>
  40070a:	f3 c3                	repz retq
  40070c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400710 <frame_dummy>:
  400710:	48 83 3d 08 07 20 00 	cmpq   $0x0,0x200708(%rip)        # 600e20 <__JCR_END__>
  400717:	00
  400718:	74 1e                	je     400738 <frame_dummy+0x28>
  40071a:	b8 00 00 00 00       	mov    $0x0,%eax
  40071f:	48 85 c0             	test   %rax,%rax
  400722:	74 14                	je     400738 <frame_dummy+0x28>
  400724:	55                   	push   %rbp
  400725:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40072a:	48 89 e5             	mov    %rsp,%rbp
  40072d:	ff d0                	callq  *%rax
  40072f:	5d                   	pop    %rbp
  400730:	e9 7b ff ff ff       	jmpq   4006b0 <register_tm_clones>
  400735:	0f 1f 00             	nopl   (%rax)
  400738:	e9 73 ff ff ff       	jmpq   4006b0 <register_tm_clones>
  40073d:	0f 1f 00             	nopl   (%rax)

0000000000400740 <multiplica>:
  400740:	41 55                	push   %r13
  400742:	41 89 cd             	mov    %ecx,%r13d
  400745:	41 54                	push   %r12
  400747:	45 31 e4             	xor    %r12d,%r12d
  40074a:	85 c9                	test   %ecx,%ecx
  40074c:	55                   	push   %rbp
  40074d:	48 89 d5             	mov    %rdx,%rbp
  400750:	53                   	push   %rbx
  400751:	48 89 fb             	mov    %rdi,%rbx
  400754:	48 89 f7             	mov    %rsi,%rdi
  400757:	74 56                	je     4007af <multiplica+0x6f>
  400759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400760:	31 f6                	xor    %esi,%esi
  400762:	4c 8d 5c 35 00       	lea    0x0(%rbp,%rsi,1),%r11
  400767:	45 31 d2             	xor    %r10d,%r10d
  40076a:	48 8d 0c 33          	lea    (%rbx,%rsi,1),%rcx
  40076e:	47 8b 0c 13          	mov    (%r11,%r10,1),%r9d
  400772:	4a 8d 14 17          	lea    (%rdi,%r10,1),%rdx
  400776:	31 c0                	xor    %eax,%eax
  400778:	44 8b 04 01          	mov    (%rcx,%rax,1),%r8d
  40077c:	44 0f af 04 82       	imul   (%rdx,%rax,4),%r8d
  400781:	48 83 c0 04          	add    $0x4,%rax
  400785:	45 01 c1             	add    %r8d,%r9d
  400788:	48 83 f8 10          	cmp    $0x10,%rax
  40078c:	47 89 0c 13          	mov    %r9d,(%r11,%r10,1)
  400790:	75 e6                	jne    400778 <multiplica+0x38>
  400792:	49 83 c2 04          	add    $0x4,%r10
  400796:	49 83 fa 10          	cmp    $0x10,%r10
  40079a:	75 d2                	jne    40076e <multiplica+0x2e>
  40079c:	48 83 c6 10          	add    $0x10,%rsi
  4007a0:	48 83 fe 40          	cmp    $0x40,%rsi
  4007a4:	75 bc                	jne    400762 <multiplica+0x22>
  4007a6:	41 83 c4 01          	add    $0x1,%r12d
  4007aa:	45 39 ec             	cmp    %r13d,%r12d
  4007ad:	75 b1                	jne    400760 <multiplica+0x20>
  4007af:	5b                   	pop    %rbx
  4007b0:	5d                   	pop    %rbp
  4007b1:	41 5c                	pop    %r12
  4007b3:	41 5d                	pop    %r13
  4007b5:	c3                   	retq
  4007b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007bd:	00 00 00

00000000004007c0 <print_matriu>:
  4007c0:	41 55                	push   %r13
  4007c2:	49 89 fd             	mov    %rdi,%r13
  4007c5:	41 54                	push   %r12
  4007c7:	45 31 e4             	xor    %r12d,%r12d
  4007ca:	55                   	push   %rbp
  4007cb:	53                   	push   %rbx
  4007cc:	48 83 ec 08          	sub    $0x8,%rsp
  4007d0:	4b 8d 6c 25 00       	lea    0x0(%r13,%r12,1),%rbp
  4007d5:	31 db                	xor    %ebx,%ebx
  4007d7:	8b 54 1d 00          	mov    0x0(%rbp,%rbx,1),%edx
  4007db:	31 c0                	xor    %eax,%eax
  4007dd:	be a4 08 40 00       	mov    $0x4008a4,%esi
  4007e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4007e7:	48 83 c3 04          	add    $0x4,%rbx
  4007eb:	e8 30 fd ff ff       	callq  400520 <__printf_chk@plt>
  4007f0:	48 83 fb 10          	cmp    $0x10,%rbx
  4007f4:	75 e1                	jne    4007d7 <print_matriu+0x17>
  4007f6:	bf 0a 00 00 00       	mov    $0xa,%edi
  4007fb:	49 83 c4 10          	add    $0x10,%r12
  4007ff:	e8 dc fc ff ff       	callq  4004e0 <putchar@plt>
  400804:	49 83 fc 40          	cmp    $0x40,%r12
  400808:	75 c6                	jne    4007d0 <print_matriu+0x10>
  40080a:	48 83 c4 08          	add    $0x8,%rsp
  40080e:	5b                   	pop    %rbx
  40080f:	5d                   	pop    %rbp
  400810:	41 5c                	pop    %r12
  400812:	41 5d                	pop    %r13
  400814:	c3                   	retq
  400815:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40081c:	00 00 00
  40081f:	90                   	nop

0000000000400820 <__libc_csu_init>:
  400820:	41 57                	push   %r15
  400822:	41 89 ff             	mov    %edi,%r15d
  400825:	41 56                	push   %r14
  400827:	49 89 f6             	mov    %rsi,%r14
  40082a:	41 55                	push   %r13
  40082c:	49 89 d5             	mov    %rdx,%r13
  40082f:	41 54                	push   %r12
  400831:	4c 8d 25 d8 05 20 00 	lea    0x2005d8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400838:	55                   	push   %rbp
  400839:	48 8d 2d d8 05 20 00 	lea    0x2005d8(%rip),%rbp        # 600e18 <__init_array_end>
  400840:	53                   	push   %rbx
  400841:	4c 29 e5             	sub    %r12,%rbp
  400844:	31 db                	xor    %ebx,%ebx
  400846:	48 c1 fd 03          	sar    $0x3,%rbp
  40084a:	48 83 ec 08          	sub    $0x8,%rsp
  40084e:	e8 5d fc ff ff       	callq  4004b0 <_init>
  400853:	48 85 ed             	test   %rbp,%rbp
  400856:	74 1e                	je     400876 <__libc_csu_init+0x56>
  400858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40085f:	00
  400860:	4c 89 ea             	mov    %r13,%rdx
  400863:	4c 89 f6             	mov    %r14,%rsi
  400866:	44 89 ff             	mov    %r15d,%edi
  400869:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40086d:	48 83 c3 01          	add    $0x1,%rbx
  400871:	48 39 eb             	cmp    %rbp,%rbx
  400874:	75 ea                	jne    400860 <__libc_csu_init+0x40>
  400876:	48 83 c4 08          	add    $0x8,%rsp
  40087a:	5b                   	pop    %rbx
  40087b:	5d                   	pop    %rbp
  40087c:	41 5c                	pop    %r12
  40087e:	41 5d                	pop    %r13
  400880:	41 5e                	pop    %r14
  400882:	41 5f                	pop    %r15
  400884:	c3                   	retq
  400885:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40088c:	00 00 00 00

0000000000400890 <__libc_csu_fini>:
  400890:	f3 c3                	repz retq

Disassembly of section .fini:

0000000000400894 <_fini>:
  400894:	48 83 ec 08          	sub    $0x8,%rsp
  400898:	48 83 c4 08          	add    $0x8,%rsp
  40089c:	c3                   	retq
