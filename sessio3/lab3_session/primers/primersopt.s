
primers_opt.3:     file format elf64-x86-64


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
  400641:	b9 e5 0d 40 00       	mov    $0x400de5,%ecx
  400646:	ba 1e 00 00 00       	mov    $0x1e,%edx
  40064b:	be 64 0d 40 00       	mov    $0x400d64,%esi
  400650:	bf 72 0d 40 00       	mov    $0x400d72,%edi
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
  40069c:	49 c7 c0 50 0d 40 00 	mov    $0x400d50,%r8
  4006a3:	48 c7 c1 e0 0c 40 00 	mov    $0x400ce0,%rcx
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
  4007a9:	74 4d                	je     4007f8 <createBitArray+0x68>
  4007ab:	48 89 68 18          	mov    %rbp,0x18(%rax)
  4007af:	48 c1 ed 05          	shr    $0x5,%rbp
  4007b3:	c7 40 08 08 00 00 00 	movl   $0x8,0x8(%rax)
  4007ba:	83 c5 01             	add    $0x1,%ebp
  4007bd:	c7 40 0c 04 00 00 00 	movl   $0x4,0xc(%rax)
  4007c4:	c7 40 10 20 00 00 00 	movl   $0x20,0x10(%rax)
  4007cb:	89 68 20             	mov    %ebp,0x20(%rax)
  4007ce:	c1 e5 02             	shl    $0x2,%ebp
  4007d1:	c7 40 28 05 00 00 00 	movl   $0x5,0x28(%rax)
  4007d8:	c7 40 24 1f 00 00 00 	movl   $0x1f,0x24(%rax)
  4007df:	89 ef                	mov    %ebp,%edi
  4007e1:	e8 3a fe ff ff       	callq  400620 <malloc@plt>
  4007e6:	48 85 c0             	test   %rax,%rax
  4007e9:	48 89 03             	mov    %rax,(%rbx)
  4007ec:	74 0f                	je     4007fd <createBitArray+0x6d>
  4007ee:	48 83 c4 08          	add    $0x8,%rsp
  4007f2:	48 89 d8             	mov    %rbx,%rax
  4007f5:	5b                   	pop    %rbx
  4007f6:	5d                   	pop    %rbp
  4007f7:	c3                   	retq   
  4007f8:	e8 43 fe ff ff       	callq  400640 <createBitArray.part.0>
  4007fd:	b9 e5 0d 40 00       	mov    $0x400de5,%ecx
  400802:	ba 2b 00 00 00       	mov    $0x2b,%edx
  400807:	be 64 0d 40 00       	mov    $0x400d64,%esi
  40080c:	bf 84 0d 40 00       	mov    $0x400d84,%edi
  400811:	e8 ca fd ff ff       	callq  4005e0 <__assert_fail@plt>
  400816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40081d:	00 00 00 

0000000000400820 <setBit>:
  400820:	8b 4f 28             	mov    0x28(%rdi),%ecx
  400823:	49 89 f0             	mov    %rsi,%r8
  400826:	48 8b 17             	mov    (%rdi),%rdx
  400829:	b8 01 00 00 00       	mov    $0x1,%eax
  40082e:	49 d3 e8             	shr    %cl,%r8
  400831:	8b 4f 24             	mov    0x24(%rdi),%ecx
  400834:	21 f1                	and    %esi,%ecx
  400836:	d3 e0                	shl    %cl,%eax
  400838:	42 09 04 82          	or     %eax,(%rdx,%r8,4)
  40083c:	c3                   	retq   
  40083d:	0f 1f 00             	nopl   (%rax)

0000000000400840 <clearBit>:
  400840:	8b 4f 28             	mov    0x28(%rdi),%ecx
  400843:	49 89 f0             	mov    %rsi,%r8
  400846:	48 8b 17             	mov    (%rdi),%rdx
  400849:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
  40084e:	49 d3 e8             	shr    %cl,%r8
  400851:	8b 4f 24             	mov    0x24(%rdi),%ecx
  400854:	21 f1                	and    %esi,%ecx
  400856:	d3 c0                	rol    %cl,%eax
  400858:	42 21 04 82          	and    %eax,(%rdx,%r8,4)
  40085c:	c3                   	retq   
  40085d:	0f 1f 00             	nopl   (%rax)

0000000000400860 <getBit>:
  400860:	8b 4f 28             	mov    0x28(%rdi),%ecx
  400863:	49 89 f0             	mov    %rsi,%r8
  400866:	48 8b 17             	mov    (%rdi),%rdx
  400869:	b8 01 00 00 00       	mov    $0x1,%eax
  40086e:	49 d3 e8             	shr    %cl,%r8
  400871:	8b 4f 24             	mov    0x24(%rdi),%ecx
  400874:	21 f1                	and    %esi,%ecx
  400876:	d3 e0                	shl    %cl,%eax
  400878:	42 85 04 82          	test   %eax,(%rdx,%r8,4)
  40087c:	0f 95 c0             	setne  %al
  40087f:	0f b6 c0             	movzbl %al,%eax
  400882:	c3                   	retq   
  400883:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40088a:	84 00 00 00 00 00 

0000000000400890 <clearAll>:
  400890:	48 8b 0f             	mov    (%rdi),%rcx
  400893:	31 c0                	xor    %eax,%eax
  400895:	0f 1f 00             	nopl   (%rax)
  400898:	c7 04 81 00 00 00 00 	movl   $0x0,(%rcx,%rax,4)
  40089f:	8b 57 20             	mov    0x20(%rdi),%edx
  4008a2:	48 83 c0 01          	add    $0x1,%rax
  4008a6:	48 39 c2             	cmp    %rax,%rdx
  4008a9:	73 ed                	jae    400898 <clearAll+0x8>
  4008ab:	f3 c3                	repz retq 
  4008ad:	0f 1f 00             	nopl   (%rax)

00000000004008b0 <setAll>:
  4008b0:	48 8b 0f             	mov    (%rdi),%rcx
  4008b3:	31 c0                	xor    %eax,%eax
  4008b5:	0f 1f 00             	nopl   (%rax)
  4008b8:	c7 04 81 ff ff ff ff 	movl   $0xffffffff,(%rcx,%rax,4)
  4008bf:	8b 57 20             	mov    0x20(%rdi),%edx
  4008c2:	48 83 c0 01          	add    $0x1,%rax
  4008c6:	48 39 c2             	cmp    %rax,%rdx
  4008c9:	73 ed                	jae    4008b8 <setAll+0x8>
  4008cb:	f3 c3                	repz retq 
  4008cd:	0f 1f 00             	nopl   (%rax)

00000000004008d0 <printPrime>:
  4008d0:	48 89 fa             	mov    %rdi,%rdx
  4008d3:	48 83 ec 08          	sub    $0x8,%rsp
  4008d7:	be 99 0d 40 00       	mov    $0x400d99,%esi
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
  40095e:	48 89 c3             	mov    %rax,%rbx
  400961:	0f 84 1e 02 00 00    	je     400b85 <findPrimes+0x245>
  400967:	4c 89 fd             	mov    %r15,%rbp
  40096a:	c7 40 08 08 00 00 00 	movl   $0x8,0x8(%rax)
  400971:	c7 40 0c 04 00 00 00 	movl   $0x4,0xc(%rax)
  400978:	48 c1 ed 05          	shr    $0x5,%rbp
  40097c:	c7 40 10 20 00 00 00 	movl   $0x20,0x10(%rax)
  400983:	4c 89 78 18          	mov    %r15,0x18(%rax)
  400987:	83 c5 01             	add    $0x1,%ebp
  40098a:	c7 40 28 05 00 00 00 	movl   $0x5,0x28(%rax)
  400991:	c7 40 24 1f 00 00 00 	movl   $0x1f,0x24(%rax)
  400998:	8d 3c ad 00 00 00 00 	lea    0x0(,%rbp,4),%edi
  40099f:	89 68 20             	mov    %ebp,0x20(%rax)
  4009a2:	e8 79 fc ff ff       	callq  400620 <malloc@plt>
  4009a7:	48 85 c0             	test   %rax,%rax
  4009aa:	49 89 c4             	mov    %rax,%r12
  4009ad:	48 89 03             	mov    %rax,(%rbx)
  4009b0:	0f 84 ed 01 00 00    	je     400ba3 <findPrimes+0x263>
  4009b6:	89 ea                	mov    %ebp,%edx
  4009b8:	31 c0                	xor    %eax,%eax
  4009ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4009c0:	41 c7 04 84 ff ff ff 	movl   $0xffffffff,(%r12,%rax,4)
  4009c7:	ff 
  4009c8:	48 83 c0 01          	add    $0x1,%rax
  4009cc:	48 39 d0             	cmp    %rdx,%rax
  4009cf:	76 ef                	jbe    4009c0 <findPrimes+0x80>
  4009d1:	bb 02 00 00 00       	mov    $0x2,%ebx
  4009d6:	41 83 24 24 fc       	andl   $0xfffffffc,(%r12)
  4009db:	31 ed                	xor    %ebp,%ebp
  4009dd:	49 89 de             	mov    %rbx,%r14
  4009e0:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  4009e6:	4c 0f af f3          	imul   %rbx,%r14
  4009ea:	4d 39 f7             	cmp    %r14,%r15
  4009ed:	0f 82 f1 00 00 00    	jb     400ae4 <findPrimes+0x1a4>
  4009f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009f8:	48 8d 0c 1b          	lea    (%rbx,%rbx,1),%rcx
  4009fc:	49 39 cf             	cmp    %rcx,%r15
  4009ff:	72 21                	jb     400a22 <findPrimes+0xe2>
  400a01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a08:	48 89 ca             	mov    %rcx,%rdx
  400a0b:	44 89 e8             	mov    %r13d,%eax
  400a0e:	d3 e0                	shl    %cl,%eax
  400a10:	48 c1 ea 05          	shr    $0x5,%rdx
  400a14:	48 01 d9             	add    %rbx,%rcx
  400a17:	f7 d0                	not    %eax
  400a19:	41 21 04 94          	and    %eax,(%r12,%rdx,4)
  400a1d:	49 39 cf             	cmp    %rcx,%r15
  400a20:	73 e6                	jae    400a08 <findPrimes+0xc8>
  400a22:	4c 39 f5             	cmp    %r14,%rbp
  400a25:	72 12                	jb     400a39 <findPrimes+0xf9>
  400a27:	e9 51 01 00 00       	jmpq   400b7d <findPrimes+0x23d>
  400a2c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a30:	48 83 c5 01          	add    $0x1,%rbp
  400a34:	49 39 ee             	cmp    %rbp,%r14
  400a37:	76 77                	jbe    400ab0 <findPrimes+0x170>
  400a39:	48 89 e8             	mov    %rbp,%rax
  400a3c:	44 89 ea             	mov    %r13d,%edx
  400a3f:	89 e9                	mov    %ebp,%ecx
  400a41:	48 c1 e8 05          	shr    $0x5,%rax
  400a45:	d3 e2                	shl    %cl,%edx
  400a47:	41 85 14 84          	test   %edx,(%r12,%rax,4)
  400a4b:	74 e3                	je     400a30 <findPrimes+0xf0>
  400a4d:	48 89 ea             	mov    %rbp,%rdx
  400a50:	be 99 0d 40 00       	mov    $0x400d99,%esi
  400a55:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a5a:	31 c0                	xor    %eax,%eax
  400a5c:	e8 cf fb ff ff       	callq  400630 <sprintf@plt>
  400a61:	ba a0 20 60 00       	mov    $0x6020a0,%edx
  400a66:	8b 0a                	mov    (%rdx),%ecx
  400a68:	48 83 c2 04          	add    $0x4,%rdx
  400a6c:	8d 81 ff fe fe fe    	lea    -0x1010101(%rcx),%eax
  400a72:	f7 d1                	not    %ecx
  400a74:	21 c8                	and    %ecx,%eax
  400a76:	25 80 80 80 80       	and    $0x80808080,%eax
  400a7b:	74 e9                	je     400a66 <findPrimes+0x126>
  400a7d:	89 c1                	mov    %eax,%ecx
  400a7f:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a84:	c1 e9 10             	shr    $0x10,%ecx
  400a87:	a9 80 80 00 00       	test   $0x8080,%eax
  400a8c:	0f 44 c1             	cmove  %ecx,%eax
  400a8f:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  400a93:	48 0f 44 d1          	cmove  %rcx,%rdx
  400a97:	00 c0                	add    %al,%al
  400a99:	48 83 da 03          	sbb    $0x3,%rdx
  400a9d:	48 83 c5 01          	add    $0x1,%rbp
  400aa1:	c6 42 fe 00          	movb   $0x0,-0x2(%rdx)
  400aa5:	e8 16 fb ff ff       	callq  4005c0 <puts@plt>
  400aaa:	49 39 ee             	cmp    %rbp,%r14
  400aad:	77 8a                	ja     400a39 <findPrimes+0xf9>
  400aaf:	90                   	nop
  400ab0:	48 83 c3 01          	add    $0x1,%rbx
  400ab4:	44 89 ea             	mov    %r13d,%edx
  400ab7:	48 89 d8             	mov    %rbx,%rax
  400aba:	89 d9                	mov    %ebx,%ecx
  400abc:	48 c1 e8 05          	shr    $0x5,%rax
  400ac0:	d3 e2                	shl    %cl,%edx
  400ac2:	41 85 14 84          	test   %edx,(%r12,%rax,4)
  400ac6:	74 e8                	je     400ab0 <findPrimes+0x170>
  400ac8:	49 39 df             	cmp    %rbx,%r15
  400acb:	0f 82 b9 00 00 00    	jb     400b8a <findPrimes+0x24a>
  400ad1:	4c 89 f5             	mov    %r14,%rbp
  400ad4:	49 89 de             	mov    %rbx,%r14
  400ad7:	4c 0f af f3          	imul   %rbx,%r14
  400adb:	4d 39 f7             	cmp    %r14,%r15
  400ade:	0f 83 14 ff ff ff    	jae    4009f8 <findPrimes+0xb8>
  400ae4:	49 39 ef             	cmp    %rbp,%r15
  400ae7:	bb 01 00 00 00       	mov    $0x1,%ebx
  400aec:	73 0b                	jae    400af9 <findPrimes+0x1b9>
  400aee:	eb 7e                	jmp    400b6e <findPrimes+0x22e>
  400af0:	48 83 c5 01          	add    $0x1,%rbp
  400af4:	49 39 ef             	cmp    %rbp,%r15
  400af7:	72 75                	jb     400b6e <findPrimes+0x22e>
  400af9:	48 89 e8             	mov    %rbp,%rax
  400afc:	89 da                	mov    %ebx,%edx
  400afe:	89 e9                	mov    %ebp,%ecx
  400b00:	48 c1 e8 05          	shr    $0x5,%rax
  400b04:	d3 e2                	shl    %cl,%edx
  400b06:	41 85 14 84          	test   %edx,(%r12,%rax,4)
  400b0a:	74 e4                	je     400af0 <findPrimes+0x1b0>
  400b0c:	48 89 ea             	mov    %rbp,%rdx
  400b0f:	be 99 0d 40 00       	mov    $0x400d99,%esi
  400b14:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400b19:	31 c0                	xor    %eax,%eax
  400b1b:	e8 10 fb ff ff       	callq  400630 <sprintf@plt>
  400b20:	ba a0 20 60 00       	mov    $0x6020a0,%edx
  400b25:	8b 0a                	mov    (%rdx),%ecx
  400b27:	48 83 c2 04          	add    $0x4,%rdx
  400b2b:	8d 81 ff fe fe fe    	lea    -0x1010101(%rcx),%eax
  400b31:	f7 d1                	not    %ecx
  400b33:	21 c8                	and    %ecx,%eax
  400b35:	25 80 80 80 80       	and    $0x80808080,%eax
  400b3a:	74 e9                	je     400b25 <findPrimes+0x1e5>
  400b3c:	89 c1                	mov    %eax,%ecx
  400b3e:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400b43:	c1 e9 10             	shr    $0x10,%ecx
  400b46:	a9 80 80 00 00       	test   $0x8080,%eax
  400b4b:	0f 44 c1             	cmove  %ecx,%eax
  400b4e:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  400b52:	48 0f 44 d1          	cmove  %rcx,%rdx
  400b56:	00 c0                	add    %al,%al
  400b58:	48 83 da 03          	sbb    $0x3,%rdx
  400b5c:	48 83 c5 01          	add    $0x1,%rbp
  400b60:	c6 42 fe 00          	movb   $0x0,-0x2(%rdx)
  400b64:	e8 57 fa ff ff       	callq  4005c0 <puts@plt>
  400b69:	49 39 ef             	cmp    %rbp,%r15
  400b6c:	73 8b                	jae    400af9 <findPrimes+0x1b9>
  400b6e:	48 83 c4 08          	add    $0x8,%rsp
  400b72:	5b                   	pop    %rbx
  400b73:	5d                   	pop    %rbp
  400b74:	41 5c                	pop    %r12
  400b76:	41 5d                	pop    %r13
  400b78:	41 5e                	pop    %r14
  400b7a:	41 5f                	pop    %r15
  400b7c:	c3                   	retq   
  400b7d:	49 89 ee             	mov    %rbp,%r14
  400b80:	e9 2b ff ff ff       	jmpq   400ab0 <findPrimes+0x170>
  400b85:	e8 b6 fa ff ff       	callq  400640 <createBitArray.part.0>
  400b8a:	b9 da 0d 40 00       	mov    $0x400dda,%ecx
  400b8f:	ba 78 00 00 00       	mov    $0x78,%edx
  400b94:	be 64 0d 40 00       	mov    $0x400d64,%esi
  400b99:	bf 9e 0d 40 00       	mov    $0x400d9e,%edi
  400b9e:	e8 3d fa ff ff       	callq  4005e0 <__assert_fail@plt>
  400ba3:	b9 e5 0d 40 00       	mov    $0x400de5,%ecx
  400ba8:	ba 2b 00 00 00       	mov    $0x2b,%edx
  400bad:	be 64 0d 40 00       	mov    $0x400d64,%esi
  400bb2:	bf 84 0d 40 00       	mov    $0x400d84,%edi
  400bb7:	e8 24 fa ff ff       	callq  4005e0 <__assert_fail@plt>
  400bbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400bc0 <test>:
  400bc0:	41 55                	push   %r13
  400bc2:	bf 30 00 00 00       	mov    $0x30,%edi
  400bc7:	41 54                	push   %r12
  400bc9:	55                   	push   %rbp
  400bca:	53                   	push   %rbx
  400bcb:	48 83 ec 08          	sub    $0x8,%rsp
  400bcf:	e8 4c fa ff ff       	callq  400620 <malloc@plt>
  400bd4:	48 85 c0             	test   %rax,%rax
  400bd7:	48 89 c3             	mov    %rax,%rbx
  400bda:	0f 84 e2 00 00 00    	je     400cc2 <test+0x102>
  400be0:	c7 40 08 08 00 00 00 	movl   $0x8,0x8(%rax)
  400be7:	c7 40 0c 04 00 00 00 	movl   $0x4,0xc(%rax)
  400bee:	bf 0c 00 00 00       	mov    $0xc,%edi
  400bf3:	c7 40 10 20 00 00 00 	movl   $0x20,0x10(%rax)
  400bfa:	48 c7 40 18 4d 00 00 	movq   $0x4d,0x18(%rax)
  400c01:	00 
  400c02:	c7 40 20 03 00 00 00 	movl   $0x3,0x20(%rax)
  400c09:	c7 40 28 05 00 00 00 	movl   $0x5,0x28(%rax)
  400c10:	c7 40 24 1f 00 00 00 	movl   $0x1f,0x24(%rax)
  400c17:	e8 04 fa ff ff       	callq  400620 <malloc@plt>
  400c1c:	48 85 c0             	test   %rax,%rax
  400c1f:	48 89 c5             	mov    %rax,%rbp
  400c22:	48 89 03             	mov    %rax,(%rbx)
  400c25:	0f 84 9c 00 00 00    	je     400cc7 <test+0x107>
  400c2b:	41 bd 01 04 00 00    	mov    $0x401,%r13d
  400c31:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  400c38:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400c3f:	00 
  400c40:	44 89 28             	mov    %r13d,(%rax)
  400c43:	83 48 08 01          	orl    $0x1,0x8(%rax)
  400c47:	31 db                	xor    %ebx,%ebx
  400c49:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  400c4f:	eb 11                	jmp    400c62 <test+0xa2>
  400c51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400c58:	48 83 c3 01          	add    $0x1,%rbx
  400c5c:	48 83 fb 4e          	cmp    $0x4e,%rbx
  400c60:	74 47                	je     400ca9 <test+0xe9>
  400c62:	48 89 da             	mov    %rbx,%rdx
  400c65:	44 89 e0             	mov    %r12d,%eax
  400c68:	89 d9                	mov    %ebx,%ecx
  400c6a:	48 c1 ea 05          	shr    $0x5,%rdx
  400c6e:	d3 e0                	shl    %cl,%eax
  400c70:	85 44 95 00          	test   %eax,0x0(%rbp,%rdx,4)
  400c74:	74 e2                	je     400c58 <test+0x98>
  400c76:	89 de                	mov    %ebx,%esi
  400c78:	bf b9 0d 40 00       	mov    $0x400db9,%edi
  400c7d:	31 c0                	xor    %eax,%eax
  400c7f:	e8 4c f9 ff ff       	callq  4005d0 <printf@plt>
  400c84:	be 01 00 00 00       	mov    $0x1,%esi
  400c89:	bf bc 0d 40 00       	mov    $0x400dbc,%edi
  400c8e:	31 c0                	xor    %eax,%eax
  400c90:	e8 3b f9 ff ff       	callq  4005d0 <printf@plt>
  400c95:	48 83 c3 01          	add    $0x1,%rbx
  400c99:	bf 0a 00 00 00       	mov    $0xa,%edi
  400c9e:	e8 0d f9 ff ff       	callq  4005b0 <putchar@plt>
  400ca3:	48 83 fb 4e          	cmp    $0x4e,%rbx
  400ca7:	75 b9                	jne    400c62 <test+0xa2>
  400ca9:	48 83 c4 08          	add    $0x8,%rsp
  400cad:	44 89 ee             	mov    %r13d,%esi
  400cb0:	bf c6 0d 40 00       	mov    $0x400dc6,%edi
  400cb5:	5b                   	pop    %rbx
  400cb6:	5d                   	pop    %rbp
  400cb7:	41 5c                	pop    %r12
  400cb9:	41 5d                	pop    %r13
  400cbb:	31 c0                	xor    %eax,%eax
  400cbd:	e9 0e f9 ff ff       	jmpq   4005d0 <printf@plt>
  400cc2:	e8 79 f9 ff ff       	callq  400640 <createBitArray.part.0>
  400cc7:	b9 e5 0d 40 00       	mov    $0x400de5,%ecx
  400ccc:	ba 2b 00 00 00       	mov    $0x2b,%edx
  400cd1:	be 64 0d 40 00       	mov    $0x400d64,%esi
  400cd6:	bf 84 0d 40 00       	mov    $0x400d84,%edi
  400cdb:	e8 00 f9 ff ff       	callq  4005e0 <__assert_fail@plt>

0000000000400ce0 <__libc_csu_init>:
  400ce0:	41 57                	push   %r15
  400ce2:	41 89 ff             	mov    %edi,%r15d
  400ce5:	41 56                	push   %r14
  400ce7:	49 89 f6             	mov    %rsi,%r14
  400cea:	41 55                	push   %r13
  400cec:	49 89 d5             	mov    %rdx,%r13
  400cef:	41 54                	push   %r12
  400cf1:	4c 8d 25 08 11 20 00 	lea    0x201108(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400cf8:	55                   	push   %rbp
  400cf9:	48 8d 2d 08 11 20 00 	lea    0x201108(%rip),%rbp        # 601e08 <__init_array_end>
  400d00:	53                   	push   %rbx
  400d01:	4c 29 e5             	sub    %r12,%rbp
  400d04:	31 db                	xor    %ebx,%ebx
  400d06:	48 c1 fd 03          	sar    $0x3,%rbp
  400d0a:	48 83 ec 08          	sub    $0x8,%rsp
  400d0e:	e8 65 f8 ff ff       	callq  400578 <_init>
  400d13:	48 85 ed             	test   %rbp,%rbp
  400d16:	74 1e                	je     400d36 <__libc_csu_init+0x56>
  400d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d1f:	00 
  400d20:	4c 89 ea             	mov    %r13,%rdx
  400d23:	4c 89 f6             	mov    %r14,%rsi
  400d26:	44 89 ff             	mov    %r15d,%edi
  400d29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400d2d:	48 83 c3 01          	add    $0x1,%rbx
  400d31:	48 39 eb             	cmp    %rbp,%rbx
  400d34:	75 ea                	jne    400d20 <__libc_csu_init+0x40>
  400d36:	48 83 c4 08          	add    $0x8,%rsp
  400d3a:	5b                   	pop    %rbx
  400d3b:	5d                   	pop    %rbp
  400d3c:	41 5c                	pop    %r12
  400d3e:	41 5d                	pop    %r13
  400d40:	41 5e                	pop    %r14
  400d42:	41 5f                	pop    %r15
  400d44:	c3                   	retq   
  400d45:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  400d4c:	00 00 00 00 

0000000000400d50 <__libc_csu_fini>:
  400d50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400d54 <_fini>:
  400d54:	48 83 ec 08          	sub    $0x8,%rsp
  400d58:	48 83 c4 08          	add    $0x8,%rsp
  400d5c:	c3                   	retq   
