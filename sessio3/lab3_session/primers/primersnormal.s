
primers.3:     file format elf64-x86-64


Disassembly of section .init:

0000000000400578 <_init>:
  400578:	48 83 ec 08          	sub    $0x8,%rsp
  40057c:	48 8b 05 75 1a 20 00 	mov    0x201a75(%rip),%rax        # 601ff8 <_DYNAMIC+0x1e0>
  400583:	48 85 c0             	test   %rax,%rax
  400586:	74 05                	je     40058d <_init+0x15>
  400588:	e8 83 00 00 00       	callq  400610 <__gmon_start__@plt>
  40058d:	48 83 c4 08          	add    $0x8,%rsp
  400591:	c3                   	retq   

Disassembly of section .plt:

00000000004005a0 <putchar@plt-0x10>:
  4005a0:	ff 35 62 1a 20 00    	pushq  0x201a62(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005a6:	ff 25 64 1a 20 00    	jmpq   *0x201a64(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005b0 <putchar@plt>:
  4005b0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4005b6:	68 00 00 00 00       	pushq  $0x0
  4005bb:	e9 e0 ff ff ff       	jmpq   4005a0 <_init+0x28>

00000000004005c0 <puts@plt>:
  4005c0:	ff 25 5a 1a 20 00    	jmpq   *0x201a5a(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4005c6:	68 01 00 00 00       	pushq  $0x1
  4005cb:	e9 d0 ff ff ff       	jmpq   4005a0 <_init+0x28>

00000000004005d0 <printf@plt>:
  4005d0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4005d6:	68 02 00 00 00       	pushq  $0x2
  4005db:	e9 c0 ff ff ff       	jmpq   4005a0 <_init+0x28>

00000000004005e0 <__assert_fail@plt>:
  4005e0:	ff 25 4a 1a 20 00    	jmpq   *0x201a4a(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4005e6:	68 03 00 00 00       	pushq  $0x3
  4005eb:	e9 b0 ff ff ff       	jmpq   4005a0 <_init+0x28>

00000000004005f0 <__libc_start_main@plt>:
  4005f0:	ff 25 42 1a 20 00    	jmpq   *0x201a42(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4005f6:	68 04 00 00 00       	pushq  $0x4
  4005fb:	e9 a0 ff ff ff       	jmpq   4005a0 <_init+0x28>

0000000000400600 <strtoll@plt>:
  400600:	ff 25 3a 1a 20 00    	jmpq   *0x201a3a(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400606:	68 05 00 00 00       	pushq  $0x5
  40060b:	e9 90 ff ff ff       	jmpq   4005a0 <_init+0x28>

0000000000400610 <__gmon_start__@plt>:
  400610:	ff 25 32 1a 20 00    	jmpq   *0x201a32(%rip)        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400616:	68 06 00 00 00       	pushq  $0x6
  40061b:	e9 80 ff ff ff       	jmpq   4005a0 <_init+0x28>

0000000000400620 <malloc@plt>:
  400620:	ff 25 2a 1a 20 00    	jmpq   *0x201a2a(%rip)        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400626:	68 07 00 00 00       	pushq  $0x7
  40062b:	e9 70 ff ff ff       	jmpq   4005a0 <_init+0x28>

0000000000400630 <sprintf@plt>:
  400630:	ff 25 22 1a 20 00    	jmpq   *0x201a22(%rip)        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400636:	68 08 00 00 00       	pushq  $0x8
  40063b:	e9 60 ff ff ff       	jmpq   4005a0 <_init+0x28>

Disassembly of section .text:

0000000000400640 <createBitArray.part.0>:
  400640:	50                   	push   %rax
  400641:	b9 11 0e 40 00       	mov    $0x400e11,%ecx
  400646:	ba 1a 00 00 00       	mov    $0x1a,%edx
  40064b:	be 94 0d 40 00       	mov    $0x400d94,%esi
  400650:	bf 9e 0d 40 00       	mov    $0x400d9e,%edi
  400655:	e8 86 ff ff ff       	callq  4005e0 <__assert_fail@plt>
  40065a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400660 <main>:
  400660:	48 83 ec 08          	sub    $0x8,%rsp
  400664:	83 ff 01             	cmp    $0x1,%edi
  400667:	b8 80 96 98 00       	mov    $0x989680,%eax
  40066c:	7e 10                	jle    40067e <main+0x1e>
  40066e:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400672:	ba 0a 00 00 00       	mov    $0xa,%edx
  400677:	31 f6                	xor    %esi,%esi
  400679:	e8 82 ff ff ff       	callq  400600 <strtoll@plt>
  40067e:	48 89 c7             	mov    %rax,%rdi
  400681:	e8 ba 02 00 00       	callq  400940 <findPrimes>
  400686:	31 c0                	xor    %eax,%eax
  400688:	48 83 c4 08          	add    $0x8,%rsp
  40068c:	c3                   	retq   

000000000040068d <_start>:
  40068d:	31 ed                	xor    %ebp,%ebp
  40068f:	49 89 d1             	mov    %rdx,%r9
  400692:	5e                   	pop    %rsi
  400693:	48 89 e2             	mov    %rsp,%rdx
  400696:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40069a:	50                   	push   %rax
  40069b:	54                   	push   %rsp
  40069c:	49 c7 c0 80 0d 40 00 	mov    $0x400d80,%r8
  4006a3:	48 c7 c1 10 0d 40 00 	mov    $0x400d10,%rcx
  4006aa:	48 c7 c7 60 06 40 00 	mov    $0x400660,%rdi
  4006b1:	e8 3a ff ff ff       	callq  4005f0 <__libc_start_main@plt>
  4006b6:	f4                   	hlt    
  4006b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006be:	00 00 

00000000004006c0 <deregister_tm_clones>:
  4006c0:	b8 77 20 60 00       	mov    $0x602077,%eax
  4006c5:	55                   	push   %rbp
  4006c6:	48 2d 70 20 60 00    	sub    $0x602070,%rax
  4006cc:	48 83 f8 0e          	cmp    $0xe,%rax
  4006d0:	48 89 e5             	mov    %rsp,%rbp
  4006d3:	77 02                	ja     4006d7 <deregister_tm_clones+0x17>
  4006d5:	5d                   	pop    %rbp
  4006d6:	c3                   	retq   
  4006d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4006dc:	48 85 c0             	test   %rax,%rax
  4006df:	74 f4                	je     4006d5 <deregister_tm_clones+0x15>
  4006e1:	5d                   	pop    %rbp
  4006e2:	bf 70 20 60 00       	mov    $0x602070,%edi
  4006e7:	ff e0                	jmpq   *%rax
  4006e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006f0 <register_tm_clones>:
  4006f0:	b8 70 20 60 00       	mov    $0x602070,%eax
  4006f5:	55                   	push   %rbp
  4006f6:	48 2d 70 20 60 00    	sub    $0x602070,%rax
  4006fc:	48 c1 f8 03          	sar    $0x3,%rax
  400700:	48 89 e5             	mov    %rsp,%rbp
  400703:	48 89 c2             	mov    %rax,%rdx
  400706:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40070a:	48 01 d0             	add    %rdx,%rax
  40070d:	48 d1 f8             	sar    %rax
  400710:	75 02                	jne    400714 <register_tm_clones+0x24>
  400712:	5d                   	pop    %rbp
  400713:	c3                   	retq   
  400714:	ba 00 00 00 00       	mov    $0x0,%edx
  400719:	48 85 d2             	test   %rdx,%rdx
  40071c:	74 f4                	je     400712 <register_tm_clones+0x22>
  40071e:	5d                   	pop    %rbp
  40071f:	48 89 c6             	mov    %rax,%rsi
  400722:	bf 70 20 60 00       	mov    $0x602070,%edi
  400727:	ff e2                	jmpq   *%rdx
  400729:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400730 <__do_global_dtors_aux>:
  400730:	80 3d 49 19 20 00 00 	cmpb   $0x0,0x201949(%rip)        # 602080 <completed.6335>
  400737:	75 11                	jne    40074a <__do_global_dtors_aux+0x1a>
  400739:	55                   	push   %rbp
  40073a:	48 89 e5             	mov    %rsp,%rbp
  40073d:	e8 7e ff ff ff       	callq  4006c0 <deregister_tm_clones>
  400742:	5d                   	pop    %rbp
  400743:	c6 05 36 19 20 00 01 	movb   $0x1,0x201936(%rip)        # 602080 <completed.6335>
  40074a:	f3 c3                	repz retq 
  40074c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400750 <frame_dummy>:
  400750:	48 83 3d b8 16 20 00 	cmpq   $0x0,0x2016b8(%rip)        # 601e10 <__JCR_END__>
  400757:	00 
  400758:	74 1e                	je     400778 <frame_dummy+0x28>
  40075a:	b8 00 00 00 00       	mov    $0x0,%eax
  40075f:	48 85 c0             	test   %rax,%rax
  400762:	74 14                	je     400778 <frame_dummy+0x28>
  400764:	55                   	push   %rbp
  400765:	bf 10 1e 60 00       	mov    $0x601e10,%edi
  40076a:	48 89 e5             	mov    %rsp,%rbp
  40076d:	ff d0                	callq  *%rax
  40076f:	5d                   	pop    %rbp
  400770:	e9 7b ff ff ff       	jmpq   4006f0 <register_tm_clones>
  400775:	0f 1f 00             	nopl   (%rax)
  400778:	e9 73 ff ff ff       	jmpq   4006f0 <register_tm_clones>
  40077d:	0f 1f 00             	nopl   (%rax)

0000000000400780 <freeBitArray>:
  400780:	f3 c3                	repz retq 
  400782:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400789:	1f 84 00 00 00 00 00 

0000000000400790 <createBitArray>:
  400790:	55                   	push   %rbp
  400791:	48 89 fd             	mov    %rdi,%rbp
  400794:	bf 30 00 00 00       	mov    $0x30,%edi
  400799:	53                   	push   %rbx
  40079a:	48 83 ec 08          	sub    $0x8,%rsp
  40079e:	e8 7d fe ff ff       	callq  400620 <malloc@plt>
  4007a3:	48 85 c0             	test   %rax,%rax
  4007a6:	48 89 c3             	mov    %rax,%rbx
  4007a9:	74 47                	je     4007f2 <createBitArray+0x62>
  4007ab:	48 89 68 20          	mov    %rbp,0x20(%rax)
  4007af:	48 c1 ed 05          	shr    $0x5,%rbp
  4007b3:	48 c7 40 08 08 00 00 	movq   $0x8,0x8(%rax)
  4007ba:	00 
  4007bb:	48 83 c5 01          	add    $0x1,%rbp
  4007bf:	48 c7 40 10 04 00 00 	movq   $0x4,0x10(%rax)
  4007c6:	00 
  4007c7:	48 c7 40 18 20 00 00 	movq   $0x20,0x18(%rax)
  4007ce:	00 
  4007cf:	48 8d 3c ad 00 00 00 	lea    0x0(,%rbp,4),%rdi
  4007d6:	00 
  4007d7:	48 89 68 28          	mov    %rbp,0x28(%rax)
  4007db:	e8 40 fe ff ff       	callq  400620 <malloc@plt>
  4007e0:	48 85 c0             	test   %rax,%rax
  4007e3:	48 89 03             	mov    %rax,(%rbx)
  4007e6:	74 0f                	je     4007f7 <createBitArray+0x67>
  4007e8:	48 83 c4 08          	add    $0x8,%rsp
  4007ec:	48 89 d8             	mov    %rbx,%rax
  4007ef:	5b                   	pop    %rbx
  4007f0:	5d                   	pop    %rbp
  4007f1:	c3                   	retq   
  4007f2:	e8 49 fe ff ff       	callq  400640 <createBitArray.part.0>
  4007f7:	b9 11 0e 40 00       	mov    $0x400e11,%ecx
  4007fc:	ba 22 00 00 00       	mov    $0x22,%edx
  400801:	be 94 0d 40 00       	mov    $0x400d94,%esi
  400806:	bf b0 0d 40 00       	mov    $0x400db0,%edi
  40080b:	e8 d0 fd ff ff       	callq  4005e0 <__assert_fail@plt>

0000000000400810 <setBit>:
  400810:	48 89 f0             	mov    %rsi,%rax
  400813:	31 d2                	xor    %edx,%edx
  400815:	4c 8b 07             	mov    (%rdi),%r8
  400818:	48 f7 77 18          	divq   0x18(%rdi)
  40081c:	bf 01 00 00 00       	mov    $0x1,%edi
  400821:	89 d1                	mov    %edx,%ecx
  400823:	d3 e7                	shl    %cl,%edi
  400825:	41 09 3c 80          	or     %edi,(%r8,%rax,4)
  400829:	c3                   	retq   
  40082a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400830 <clearBit>:
  400830:	48 89 f0             	mov    %rsi,%rax
  400833:	31 d2                	xor    %edx,%edx
  400835:	4c 8b 07             	mov    (%rdi),%r8
  400838:	48 f7 77 18          	divq   0x18(%rdi)
  40083c:	bf fe ff ff ff       	mov    $0xfffffffe,%edi
  400841:	89 d1                	mov    %edx,%ecx
  400843:	d3 c7                	rol    %cl,%edi
  400845:	41 21 3c 80          	and    %edi,(%r8,%rax,4)
  400849:	c3                   	retq   
  40084a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400850 <getBit>:
  400850:	48 89 f0             	mov    %rsi,%rax
  400853:	31 d2                	xor    %edx,%edx
  400855:	4c 8b 07             	mov    (%rdi),%r8
  400858:	48 f7 77 18          	divq   0x18(%rdi)
  40085c:	bf 01 00 00 00       	mov    $0x1,%edi
  400861:	89 d1                	mov    %edx,%ecx
  400863:	d3 e7                	shl    %cl,%edi
  400865:	41 85 3c 80          	test   %edi,(%r8,%rax,4)
  400869:	0f 95 c0             	setne  %al
  40086c:	0f b6 c0             	movzbl %al,%eax
  40086f:	c3                   	retq   

0000000000400870 <clearAll>:
  400870:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  400874:	48 8b 17             	mov    (%rdi),%rdx
  400877:	31 c0                	xor    %eax,%eax
  400879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400880:	c7 04 82 00 00 00 00 	movl   $0x0,(%rdx,%rax,4)
  400887:	48 83 c0 01          	add    $0x1,%rax
  40088b:	48 39 c8             	cmp    %rcx,%rax
  40088e:	76 f0                	jbe    400880 <clearAll+0x10>
  400890:	f3 c3                	repz retq 
  400892:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400899:	1f 84 00 00 00 00 00 

00000000004008a0 <setAll>:
  4008a0:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  4008a4:	48 8b 17             	mov    (%rdi),%rdx
  4008a7:	31 c0                	xor    %eax,%eax
  4008a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4008b0:	c7 04 82 ff ff ff ff 	movl   $0xffffffff,(%rdx,%rax,4)
  4008b7:	48 83 c0 01          	add    $0x1,%rax
  4008bb:	48 39 c8             	cmp    %rcx,%rax
  4008be:	76 f0                	jbe    4008b0 <setAll+0x10>
  4008c0:	f3 c3                	repz retq 
  4008c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4008c9:	1f 84 00 00 00 00 00 

00000000004008d0 <printPrime>:
  4008d0:	48 89 fa             	mov    %rdi,%rdx
  4008d3:	48 83 ec 08          	sub    $0x8,%rsp
  4008d7:	be c5 0d 40 00       	mov    $0x400dc5,%esi
  4008dc:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  4008e1:	31 c0                	xor    %eax,%eax
  4008e3:	e8 48 fd ff ff       	callq  400630 <sprintf@plt>
  4008e8:	ba a0 20 60 00       	mov    $0x6020a0,%edx
  4008ed:	8b 0a                	mov    (%rdx),%ecx
  4008ef:	48 83 c2 04          	add    $0x4,%rdx
  4008f3:	8d 81 ff fe fe fe    	lea    -0x1010101(%rcx),%eax
  4008f9:	f7 d1                	not    %ecx
  4008fb:	21 c8                	and    %ecx,%eax
  4008fd:	25 80 80 80 80       	and    $0x80808080,%eax
  400902:	74 e9                	je     4008ed <printPrime+0x1d>
  400904:	89 c1                	mov    %eax,%ecx
  400906:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  40090b:	c1 e9 10             	shr    $0x10,%ecx
  40090e:	a9 80 80 00 00       	test   $0x8080,%eax
  400913:	0f 44 c1             	cmove  %ecx,%eax
  400916:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  40091a:	48 0f 44 d1          	cmove  %rcx,%rdx
  40091e:	00 c0                	add    %al,%al
  400920:	48 83 da 03          	sbb    $0x3,%rdx
  400924:	c6 42 fe 00          	movb   $0x0,-0x2(%rdx)
  400928:	48 83 c4 08          	add    $0x8,%rsp
  40092c:	e9 8f fc ff ff       	jmpq   4005c0 <puts@plt>
  400931:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400938:	0f 1f 84 00 00 00 00 
  40093f:	00 

0000000000400940 <findPrimes>:
  400940:	41 57                	push   %r15
  400942:	49 89 ff             	mov    %rdi,%r15
  400945:	bf 30 00 00 00       	mov    $0x30,%edi
  40094a:	41 56                	push   %r14
  40094c:	41 55                	push   %r13
  40094e:	41 54                	push   %r12
  400950:	55                   	push   %rbp
  400951:	53                   	push   %rbx
  400952:	48 83 ec 08          	sub    $0x8,%rsp
  400956:	e8 c5 fc ff ff       	callq  400620 <malloc@plt>
  40095b:	48 85 c0             	test   %rax,%rax
  40095e:	48 89 c5             	mov    %rax,%rbp
  400961:	0f 84 52 02 00 00    	je     400bb9 <findPrimes+0x279>
  400967:	4c 89 fb             	mov    %r15,%rbx
  40096a:	48 c7 40 08 08 00 00 	movq   $0x8,0x8(%rax)
  400971:	00 
  400972:	48 c7 40 10 04 00 00 	movq   $0x4,0x10(%rax)
  400979:	00 
  40097a:	48 c1 eb 05          	shr    $0x5,%rbx
  40097e:	48 c7 40 18 20 00 00 	movq   $0x20,0x18(%rax)
  400985:	00 
  400986:	4c 89 78 20          	mov    %r15,0x20(%rax)
  40098a:	48 83 c3 01          	add    $0x1,%rbx
  40098e:	48 8d 3c 9d 00 00 00 	lea    0x0(,%rbx,4),%rdi
  400995:	00 
  400996:	48 89 58 28          	mov    %rbx,0x28(%rax)
  40099a:	e8 81 fc ff ff       	callq  400620 <malloc@plt>
  40099f:	48 85 c0             	test   %rax,%rax
  4009a2:	49 89 c4             	mov    %rax,%r12
  4009a5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4009a9:	0f 84 28 02 00 00    	je     400bd7 <findPrimes+0x297>
  4009af:	31 c0                	xor    %eax,%eax
  4009b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4009b8:	41 c7 04 84 ff ff ff 	movl   $0xffffffff,(%r12,%rax,4)
  4009bf:	ff 
  4009c0:	48 83 c0 01          	add    $0x1,%rax
  4009c4:	48 39 d8             	cmp    %rbx,%rax
  4009c7:	76 ef                	jbe    4009b8 <findPrimes+0x78>
  4009c9:	bb 02 00 00 00       	mov    $0x2,%ebx
  4009ce:	41 83 24 24 fc       	andl   $0xfffffffc,(%r12)
  4009d3:	31 ed                	xor    %ebp,%ebp
  4009d5:	49 89 de             	mov    %rbx,%r14
  4009d8:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  4009de:	4c 0f af f3          	imul   %rbx,%r14
  4009e2:	4d 39 f7             	cmp    %r14,%r15
  4009e5:	0f 82 25 01 00 00    	jb     400b10 <findPrimes+0x1d0>
  4009eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009f0:	48 8d 14 1b          	lea    (%rbx,%rbx,1),%rdx
  4009f4:	49 39 d7             	cmp    %rdx,%r15
  4009f7:	72 29                	jb     400a22 <findPrimes+0xe2>
  4009f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a00:	48 89 d1             	mov    %rdx,%rcx
  400a03:	44 89 ee             	mov    %r13d,%esi
  400a06:	48 89 d0             	mov    %rdx,%rax
  400a09:	83 e1 1f             	and    $0x1f,%ecx
  400a0c:	48 c1 e8 05          	shr    $0x5,%rax
  400a10:	48 01 da             	add    %rbx,%rdx
  400a13:	d3 e6                	shl    %cl,%esi
  400a15:	89 f1                	mov    %esi,%ecx
  400a17:	f7 d1                	not    %ecx
  400a19:	41 21 0c 84          	and    %ecx,(%r12,%rax,4)
  400a1d:	49 39 d7             	cmp    %rdx,%r15
  400a20:	73 de                	jae    400a00 <findPrimes+0xc0>
  400a22:	4c 39 f5             	cmp    %r14,%rbp
  400a25:	72 12                	jb     400a39 <findPrimes+0xf9>
  400a27:	e9 85 01 00 00       	jmpq   400bb1 <findPrimes+0x271>
  400a2c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a30:	48 83 c5 01          	add    $0x1,%rbp
  400a34:	49 39 ee             	cmp    %rbp,%r14
  400a37:	76 7f                	jbe    400ab8 <findPrimes+0x178>
  400a39:	48 89 e8             	mov    %rbp,%rax
  400a3c:	48 89 e9             	mov    %rbp,%rcx
  400a3f:	44 89 ef             	mov    %r13d,%edi
  400a42:	83 e1 1f             	and    $0x1f,%ecx
  400a45:	48 c1 e8 05          	shr    $0x5,%rax
  400a49:	d3 e7                	shl    %cl,%edi
  400a4b:	41 85 3c 84          	test   %edi,(%r12,%rax,4)
  400a4f:	74 df                	je     400a30 <findPrimes+0xf0>
  400a51:	48 89 ea             	mov    %rbp,%rdx
  400a54:	be c5 0d 40 00       	mov    $0x400dc5,%esi
  400a59:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a5e:	31 c0                	xor    %eax,%eax
  400a60:	e8 cb fb ff ff       	callq  400630 <sprintf@plt>
  400a65:	ba a0 20 60 00       	mov    $0x6020a0,%edx
  400a6a:	8b 0a                	mov    (%rdx),%ecx
  400a6c:	48 83 c2 04          	add    $0x4,%rdx
  400a70:	8d 81 ff fe fe fe    	lea    -0x1010101(%rcx),%eax
  400a76:	f7 d1                	not    %ecx
  400a78:	21 c8                	and    %ecx,%eax
  400a7a:	25 80 80 80 80       	and    $0x80808080,%eax
  400a7f:	74 e9                	je     400a6a <findPrimes+0x12a>
  400a81:	89 c1                	mov    %eax,%ecx
  400a83:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a88:	c1 e9 10             	shr    $0x10,%ecx
  400a8b:	a9 80 80 00 00       	test   $0x8080,%eax
  400a90:	0f 44 c1             	cmove  %ecx,%eax
  400a93:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  400a97:	48 0f 44 d1          	cmove  %rcx,%rdx
  400a9b:	00 c0                	add    %al,%al
  400a9d:	48 83 da 03          	sbb    $0x3,%rdx
  400aa1:	48 83 c5 01          	add    $0x1,%rbp
  400aa5:	c6 42 fe 00          	movb   $0x0,-0x2(%rdx)
  400aa9:	e8 12 fb ff ff       	callq  4005c0 <puts@plt>
  400aae:	49 39 ee             	cmp    %rbp,%r14
  400ab1:	77 86                	ja     400a39 <findPrimes+0xf9>
  400ab3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ab8:	48 83 c3 01          	add    $0x1,%rbx
  400abc:	44 89 ef             	mov    %r13d,%edi
  400abf:	48 89 d8             	mov    %rbx,%rax
  400ac2:	48 89 d9             	mov    %rbx,%rcx
  400ac5:	83 e1 1f             	and    $0x1f,%ecx
  400ac8:	48 c1 e8 05          	shr    $0x5,%rax
  400acc:	d3 e7                	shl    %cl,%edi
  400ace:	41 85 3c 84          	test   %edi,(%r12,%rax,4)
  400ad2:	75 20                	jne    400af4 <findPrimes+0x1b4>
  400ad4:	0f 1f 40 00          	nopl   0x0(%rax)
  400ad8:	48 83 c3 01          	add    $0x1,%rbx
  400adc:	44 89 ee             	mov    %r13d,%esi
  400adf:	48 89 d8             	mov    %rbx,%rax
  400ae2:	48 89 d9             	mov    %rbx,%rcx
  400ae5:	83 e1 1f             	and    $0x1f,%ecx
  400ae8:	48 c1 e8 05          	shr    $0x5,%rax
  400aec:	d3 e6                	shl    %cl,%esi
  400aee:	41 85 34 84          	test   %esi,(%r12,%rax,4)
  400af2:	74 e4                	je     400ad8 <findPrimes+0x198>
  400af4:	49 39 df             	cmp    %rbx,%r15
  400af7:	0f 82 c1 00 00 00    	jb     400bbe <findPrimes+0x27e>
  400afd:	4c 89 f5             	mov    %r14,%rbp
  400b00:	49 89 de             	mov    %rbx,%r14
  400b03:	4c 0f af f3          	imul   %rbx,%r14
  400b07:	4d 39 f7             	cmp    %r14,%r15
  400b0a:	0f 83 e0 fe ff ff    	jae    4009f0 <findPrimes+0xb0>
  400b10:	49 39 ef             	cmp    %rbp,%r15
  400b13:	bb 01 00 00 00       	mov    $0x1,%ebx
  400b18:	73 0f                	jae    400b29 <findPrimes+0x1e9>
  400b1a:	e9 83 00 00 00       	jmpq   400ba2 <findPrimes+0x262>
  400b1f:	90                   	nop
  400b20:	48 83 c5 01          	add    $0x1,%rbp
  400b24:	49 39 ef             	cmp    %rbp,%r15
  400b27:	72 79                	jb     400ba2 <findPrimes+0x262>
  400b29:	48 89 e8             	mov    %rbp,%rax
  400b2c:	48 89 e9             	mov    %rbp,%rcx
  400b2f:	89 df                	mov    %ebx,%edi
  400b31:	83 e1 1f             	and    $0x1f,%ecx
  400b34:	48 c1 e8 05          	shr    $0x5,%rax
  400b38:	d3 e7                	shl    %cl,%edi
  400b3a:	41 85 3c 84          	test   %edi,(%r12,%rax,4)
  400b3e:	74 e0                	je     400b20 <findPrimes+0x1e0>
  400b40:	48 89 ea             	mov    %rbp,%rdx
  400b43:	be c5 0d 40 00       	mov    $0x400dc5,%esi
  400b48:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400b4d:	31 c0                	xor    %eax,%eax
  400b4f:	e8 dc fa ff ff       	callq  400630 <sprintf@plt>
  400b54:	ba a0 20 60 00       	mov    $0x6020a0,%edx
  400b59:	8b 0a                	mov    (%rdx),%ecx
  400b5b:	48 83 c2 04          	add    $0x4,%rdx
  400b5f:	8d 81 ff fe fe fe    	lea    -0x1010101(%rcx),%eax
  400b65:	f7 d1                	not    %ecx
  400b67:	21 c8                	and    %ecx,%eax
  400b69:	25 80 80 80 80       	and    $0x80808080,%eax
  400b6e:	74 e9                	je     400b59 <findPrimes+0x219>
  400b70:	89 c1                	mov    %eax,%ecx
  400b72:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400b77:	c1 e9 10             	shr    $0x10,%ecx
  400b7a:	a9 80 80 00 00       	test   $0x8080,%eax
  400b7f:	0f 44 c1             	cmove  %ecx,%eax
  400b82:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  400b86:	48 0f 44 d1          	cmove  %rcx,%rdx
  400b8a:	00 c0                	add    %al,%al
  400b8c:	48 83 da 03          	sbb    $0x3,%rdx
  400b90:	48 83 c5 01          	add    $0x1,%rbp
  400b94:	c6 42 fe 00          	movb   $0x0,-0x2(%rdx)
  400b98:	e8 23 fa ff ff       	callq  4005c0 <puts@plt>
  400b9d:	49 39 ef             	cmp    %rbp,%r15
  400ba0:	73 87                	jae    400b29 <findPrimes+0x1e9>
  400ba2:	48 83 c4 08          	add    $0x8,%rsp
  400ba6:	5b                   	pop    %rbx
  400ba7:	5d                   	pop    %rbp
  400ba8:	41 5c                	pop    %r12
  400baa:	41 5d                	pop    %r13
  400bac:	41 5e                	pop    %r14
  400bae:	41 5f                	pop    %r15
  400bb0:	c3                   	retq   
  400bb1:	49 89 ee             	mov    %rbp,%r14
  400bb4:	e9 ff fe ff ff       	jmpq   400ab8 <findPrimes+0x178>
  400bb9:	e8 82 fa ff ff       	callq  400640 <createBitArray.part.0>
  400bbe:	b9 06 0e 40 00       	mov    $0x400e06,%ecx
  400bc3:	ba 6f 00 00 00       	mov    $0x6f,%edx
  400bc8:	be 94 0d 40 00       	mov    $0x400d94,%esi
  400bcd:	bf ca 0d 40 00       	mov    $0x400dca,%edi
  400bd2:	e8 09 fa ff ff       	callq  4005e0 <__assert_fail@plt>
  400bd7:	b9 11 0e 40 00       	mov    $0x400e11,%ecx
  400bdc:	ba 22 00 00 00       	mov    $0x22,%edx
  400be1:	be 94 0d 40 00       	mov    $0x400d94,%esi
  400be6:	bf b0 0d 40 00       	mov    $0x400db0,%edi
  400beb:	e8 f0 f9 ff ff       	callq  4005e0 <__assert_fail@plt>

0000000000400bf0 <test>:
  400bf0:	41 55                	push   %r13
  400bf2:	bf 30 00 00 00       	mov    $0x30,%edi
  400bf7:	41 54                	push   %r12
  400bf9:	55                   	push   %rbp
  400bfa:	53                   	push   %rbx
  400bfb:	48 83 ec 08          	sub    $0x8,%rsp
  400bff:	e8 1c fa ff ff       	callq  400620 <malloc@plt>
  400c04:	48 85 c0             	test   %rax,%rax
  400c07:	48 89 c3             	mov    %rax,%rbx
  400c0a:	0f 84 da 00 00 00    	je     400cea <test+0xfa>
  400c10:	48 c7 40 08 08 00 00 	movq   $0x8,0x8(%rax)
  400c17:	00 
  400c18:	48 c7 40 10 04 00 00 	movq   $0x4,0x10(%rax)
  400c1f:	00 
  400c20:	bf 0c 00 00 00       	mov    $0xc,%edi
  400c25:	48 c7 40 18 20 00 00 	movq   $0x20,0x18(%rax)
  400c2c:	00 
  400c2d:	48 c7 40 20 4d 00 00 	movq   $0x4d,0x20(%rax)
  400c34:	00 
  400c35:	48 c7 40 28 03 00 00 	movq   $0x3,0x28(%rax)
  400c3c:	00 
  400c3d:	e8 de f9 ff ff       	callq  400620 <malloc@plt>
  400c42:	48 85 c0             	test   %rax,%rax
  400c45:	48 89 c5             	mov    %rax,%rbp
  400c48:	48 89 03             	mov    %rax,(%rbx)
  400c4b:	0f 84 9e 00 00 00    	je     400cef <test+0xff>
  400c51:	41 bd 01 04 00 00    	mov    $0x401,%r13d
  400c57:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  400c5e:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400c65:	00 
  400c66:	44 89 28             	mov    %r13d,(%rax)
  400c69:	83 48 08 01          	orl    $0x1,0x8(%rax)
  400c6d:	31 db                	xor    %ebx,%ebx
  400c6f:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  400c75:	eb 13                	jmp    400c8a <test+0x9a>
  400c77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400c7e:	00 00 
  400c80:	48 83 c3 01          	add    $0x1,%rbx
  400c84:	48 83 fb 4e          	cmp    $0x4e,%rbx
  400c88:	74 47                	je     400cd1 <test+0xe1>
  400c8a:	48 89 da             	mov    %rbx,%rdx
  400c8d:	44 89 e0             	mov    %r12d,%eax
  400c90:	89 d9                	mov    %ebx,%ecx
  400c92:	48 c1 ea 05          	shr    $0x5,%rdx
  400c96:	d3 e0                	shl    %cl,%eax
  400c98:	85 44 95 00          	test   %eax,0x0(%rbp,%rdx,4)
  400c9c:	74 e2                	je     400c80 <test+0x90>
  400c9e:	89 de                	mov    %ebx,%esi
  400ca0:	bf e5 0d 40 00       	mov    $0x400de5,%edi
  400ca5:	31 c0                	xor    %eax,%eax
  400ca7:	e8 24 f9 ff ff       	callq  4005d0 <printf@plt>
  400cac:	be 01 00 00 00       	mov    $0x1,%esi
  400cb1:	bf e8 0d 40 00       	mov    $0x400de8,%edi
  400cb6:	31 c0                	xor    %eax,%eax
  400cb8:	e8 13 f9 ff ff       	callq  4005d0 <printf@plt>
  400cbd:	48 83 c3 01          	add    $0x1,%rbx
  400cc1:	bf 0a 00 00 00       	mov    $0xa,%edi
  400cc6:	e8 e5 f8 ff ff       	callq  4005b0 <putchar@plt>
  400ccb:	48 83 fb 4e          	cmp    $0x4e,%rbx
  400ccf:	75 b9                	jne    400c8a <test+0x9a>
  400cd1:	48 83 c4 08          	add    $0x8,%rsp
  400cd5:	44 89 ee             	mov    %r13d,%esi
  400cd8:	bf f2 0d 40 00       	mov    $0x400df2,%edi
  400cdd:	5b                   	pop    %rbx
  400cde:	5d                   	pop    %rbp
  400cdf:	41 5c                	pop    %r12
  400ce1:	41 5d                	pop    %r13
  400ce3:	31 c0                	xor    %eax,%eax
  400ce5:	e9 e6 f8 ff ff       	jmpq   4005d0 <printf@plt>
  400cea:	e8 51 f9 ff ff       	callq  400640 <createBitArray.part.0>
  400cef:	b9 11 0e 40 00       	mov    $0x400e11,%ecx
  400cf4:	ba 22 00 00 00       	mov    $0x22,%edx
  400cf9:	be 94 0d 40 00       	mov    $0x400d94,%esi
  400cfe:	bf b0 0d 40 00       	mov    $0x400db0,%edi
  400d03:	e8 d8 f8 ff ff       	callq  4005e0 <__assert_fail@plt>
  400d08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d0f:	00 

0000000000400d10 <__libc_csu_init>:
  400d10:	41 57                	push   %r15
  400d12:	41 89 ff             	mov    %edi,%r15d
  400d15:	41 56                	push   %r14
  400d17:	49 89 f6             	mov    %rsi,%r14
  400d1a:	41 55                	push   %r13
  400d1c:	49 89 d5             	mov    %rdx,%r13
  400d1f:	41 54                	push   %r12
  400d21:	4c 8d 25 d8 10 20 00 	lea    0x2010d8(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400d28:	55                   	push   %rbp
  400d29:	48 8d 2d d8 10 20 00 	lea    0x2010d8(%rip),%rbp        # 601e08 <__init_array_end>
  400d30:	53                   	push   %rbx
  400d31:	4c 29 e5             	sub    %r12,%rbp
  400d34:	31 db                	xor    %ebx,%ebx
  400d36:	48 c1 fd 03          	sar    $0x3,%rbp
  400d3a:	48 83 ec 08          	sub    $0x8,%rsp
  400d3e:	e8 35 f8 ff ff       	callq  400578 <_init>
  400d43:	48 85 ed             	test   %rbp,%rbp
  400d46:	74 1e                	je     400d66 <__libc_csu_init+0x56>
  400d48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d4f:	00 
  400d50:	4c 89 ea             	mov    %r13,%rdx
  400d53:	4c 89 f6             	mov    %r14,%rsi
  400d56:	44 89 ff             	mov    %r15d,%edi
  400d59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400d5d:	48 83 c3 01          	add    $0x1,%rbx
  400d61:	48 39 eb             	cmp    %rbp,%rbx
  400d64:	75 ea                	jne    400d50 <__libc_csu_init+0x40>
  400d66:	48 83 c4 08          	add    $0x8,%rsp
  400d6a:	5b                   	pop    %rbx
  400d6b:	5d                   	pop    %rbp
  400d6c:	41 5c                	pop    %r12
  400d6e:	41 5d                	pop    %r13
  400d70:	41 5e                	pop    %r14
  400d72:	41 5f                	pop    %r15
  400d74:	c3                   	retq   
  400d75:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  400d7c:	00 00 00 00 

0000000000400d80 <__libc_csu_fini>:
  400d80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400d84 <_fini>:
  400d84:	48 83 ec 08          	sub    $0x8,%rsp
  400d88:	48 83 c4 08          	add    $0x8,%rsp
  400d8c:	c3                   	retq   
