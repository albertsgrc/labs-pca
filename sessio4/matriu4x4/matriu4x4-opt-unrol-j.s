
matriu4x4-opt-unrol-j.g2:     file format elf64-x86-64


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
  400550:	41 89 fd             	mov    %edi,%r13d
  400553:	41 54                	push   %r12
  400555:	55                   	push   %rbp
  400556:	53                   	push   %rbx
  400557:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
  40055e:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  400565:	00
  400566:	48 8d 6c 24 70       	lea    0x70(%rsp),%rbp
  40056b:	48 8d 5c 24 30       	lea    0x30(%rsp),%rbx
  400570:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  400573:	49 89 ec             	mov    %rbp,%r12
  400576:	45 31 ff             	xor    %r15d,%r15d
  400579:	e8 b2 ff ff ff       	callq  400530 <rand@plt>
  40057e:	42 89 04 3b          	mov    %eax,(%rbx,%r15,1)
  400582:	e8 a9 ff ff ff       	callq  400530 <rand@plt>
  400587:	42 89 44 3d 00       	mov    %eax,0x0(%rbp,%r15,1)
  40058c:	49 83 c7 04          	add    $0x4,%r15
  400590:	49 83 ff 10          	cmp    $0x10,%r15
  400594:	75 e3                	jne    400579 <main+0x39>
  400596:	48 83 c3 10          	add    $0x10,%rbx
  40059a:	48 83 c5 10          	add    $0x10,%rbp
  40059e:	4c 39 e3             	cmp    %r12,%rbx
  4005a1:	75 d3                	jne    400576 <main+0x36>
  4005a3:	41 83 fd 01          	cmp    $0x1,%r13d
  4005a7:	0f 8e da 01 00 00    	jle    400787 <main+0x247>
  4005ad:	49 8b 7e 08          	mov    0x8(%r14),%rdi
  4005b1:	31 f6                	xor    %esi,%esi
  4005b3:	ba 0a 00 00 00       	mov    $0xa,%edx
  4005b8:	e8 53 ff ff ff       	callq  400510 <strtol@plt>
  4005bd:	85 c0                	test   %eax,%eax
  4005bf:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  4005c3:	0f 84 9d 01 00 00    	je     400766 <main+0x226>
  4005c9:	8b 44 24 74          	mov    0x74(%rsp),%eax
  4005cd:	44 8b 74 24 70       	mov    0x70(%rsp),%r14d
  4005d2:	4c 8d 94 24 f0 00 00 	lea    0xf0(%rsp),%r10
  4005d9:	00
  4005da:	44 8b ac 24 80 00 00 	mov    0x80(%rsp),%r13d
  4005e1:	00
  4005e2:	44 8b a4 24 90 00 00 	mov    0x90(%rsp),%r12d
  4005e9:	00
  4005ea:	8b ac 24 a0 00 00 00 	mov    0xa0(%rsp),%ebp
  4005f1:	8b 9c 24 9c 00 00 00 	mov    0x9c(%rsp),%ebx
  4005f8:	89 04 24             	mov    %eax,(%rsp)
  4005fb:	8b 84 24 84 00 00 00 	mov    0x84(%rsp),%eax
  400602:	44 8b 9c 24 ac 00 00 	mov    0xac(%rsp),%r11d
  400609:	00
  40060a:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%rsp)
  400611:	00
  400612:	89 44 24 04          	mov    %eax,0x4(%rsp)
  400616:	8b 84 24 94 00 00 00 	mov    0x94(%rsp),%eax
  40061d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  400621:	8b 84 24 a4 00 00 00 	mov    0xa4(%rsp),%eax
  400628:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40062c:	8b 44 24 78          	mov    0x78(%rsp),%eax
  400630:	89 44 24 10          	mov    %eax,0x10(%rsp)
  400634:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
  40063b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40063f:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
  400646:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40064a:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  400651:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  400655:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  400659:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40065d:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  400664:	89 44 24 24          	mov    %eax,0x24(%rsp)
  400668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40066f:	00
  -- Init i loop (2 instr, TOTAL = 226 instr)
  400670:	48 8d 84 24 b0 00 00 	lea    0xb0(%rsp),%rax
  400677:	00
  400678:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  -- Start i loop (4x56 instr = 224 instr)
  40067d:	44 8b 02             	mov    (%rdx),%r8d
  400680:	8b 7a 04             	mov    0x4(%rdx),%edi
  400683:	48 83 c0 10          	add    $0x10,%rax
  400687:	8b 72 08             	mov    0x8(%rdx),%esi
  40068a:	8b 4a 0c             	mov    0xc(%rdx),%ecx
  40068d:	45 89 c1             	mov    %r8d,%r9d
  400690:	41 89 ff             	mov    %edi,%r15d
  400693:	45 0f af ce          	imul   %r14d,%r9d
  400697:	44 03 48 f0          	add    -0x10(%rax),%r9d
  40069b:	45 0f af fd          	imul   %r13d,%r15d
  40069f:	45 01 f9             	add    %r15d,%r9d
  4006a2:	41 89 f7             	mov    %esi,%r15d
  4006a5:	45 0f af fc          	imul   %r12d,%r15d
  4006a9:	45 01 f9             	add    %r15d,%r9d
  4006ac:	41 89 cf             	mov    %ecx,%r15d
  4006af:	44 0f af fd          	imul   %ebp,%r15d
  4006b3:	45 01 f9             	add    %r15d,%r9d
  4006b6:	44 8b 7c 24 04       	mov    0x4(%rsp),%r15d
  4006bb:	44 89 48 f0          	mov    %r9d,-0x10(%rax)
  4006bf:	44 8b 0c 24          	mov    (%rsp),%r9d
  4006c3:	44 0f af ff          	imul   %edi,%r15d
  4006c7:	45 0f af c8          	imul   %r8d,%r9d
  4006cb:	44 03 48 f4          	add    -0xc(%rax),%r9d
  4006cf:	45 01 f9             	add    %r15d,%r9d
  4006d2:	44 8b 7c 24 08       	mov    0x8(%rsp),%r15d
  4006d7:	44 0f af fe          	imul   %esi,%r15d
  4006db:	45 01 f9             	add    %r15d,%r9d
  4006de:	44 8b 7c 24 0c       	mov    0xc(%rsp),%r15d
  4006e3:	44 0f af f9          	imul   %ecx,%r15d
  4006e7:	45 01 f9             	add    %r15d,%r9d
  4006ea:	44 8b 7c 24 14       	mov    0x14(%rsp),%r15d
  4006ef:	44 89 48 f4          	mov    %r9d,-0xc(%rax)
  4006f3:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
  4006f8:	44 0f af ff          	imul   %edi,%r15d
  4006fc:	45 0f af c8          	imul   %r8d,%r9d
  400700:	44 03 48 f8          	add    -0x8(%rax),%r9d
  400704:	44 0f af 44 24 20    	imul   0x20(%rsp),%r8d
  40070a:	0f af 7c 24 24       	imul   0x24(%rsp),%edi
  40070f:	45 01 f9             	add    %r15d,%r9d
  400712:	44 8b 7c 24 18       	mov    0x18(%rsp),%r15d
  400717:	44 03 40 fc          	add    -0x4(%rax),%r8d
  40071b:	44 0f af fe          	imul   %esi,%r15d
  40071f:	0f af f3             	imul   %ebx,%esi
  400722:	41 01 f8             	add    %edi,%r8d
  400725:	45 01 f9             	add    %r15d,%r9d
  400728:	44 8b 7c 24 1c       	mov    0x1c(%rsp),%r15d
  40072d:	41 01 f0             	add    %esi,%r8d
  400730:	44 0f af f9          	imul   %ecx,%r15d
  400734:	41 0f af cb          	imul   %r11d,%ecx
  400738:	45 01 f9             	add    %r15d,%r9d
  40073b:	41 01 c8             	add    %ecx,%r8d
  40073e:	44 89 48 f8          	mov    %r9d,-0x8(%rax)
  400742:	44 89 40 fc          	mov    %r8d,-0x4(%rax)
  400746:	48 83 c2 10          	add    $0x10,%rdx
  40074a:	4c 39 d0             	cmp    %r10,%rax
  40074d:	0f 85 2a ff ff ff    	jne    40067d <main+0x13d>
  -- End i loop
  400753:	83 44 24 28 01       	addl   $0x1,0x28(%rsp)
  400758:	8b 44 24 28          	mov    0x28(%rsp),%eax
  40075c:	39 44 24 2c          	cmp    %eax,0x2c(%rsp)
  400760:	0f 87 0a ff ff ff    	ja     400670 <main+0x130>
  400766:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40076d:	00
  40076e:	e8 4d 02 00 00       	callq  4009c0 <print_matriu>
  400773:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
  40077a:	31 c0                	xor    %eax,%eax
  40077c:	5b                   	pop    %rbx
  40077d:	5d                   	pop    %rbp
  40077e:	41 5c                	pop    %r12
  400780:	41 5d                	pop    %r13
  400782:	41 5e                	pop    %r14
  400784:	41 5f                	pop    %r15
  400786:	c3                   	retq
  400787:	c7 44 24 2c 80 96 98 	movl   $0x989680,0x2c(%rsp)
  40078e:	00
  40078f:	e9 35 fe ff ff       	jmpq   4005c9 <main+0x89>

0000000000400794 <_start>:
  400794:	31 ed                	xor    %ebp,%ebp
  400796:	49 89 d1             	mov    %rdx,%r9
  400799:	5e                   	pop    %rsi
  40079a:	48 89 e2             	mov    %rsp,%rdx
  40079d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4007a1:	50                   	push   %rax
  4007a2:	54                   	push   %rsp
  4007a3:	49 c7 c0 90 0a 40 00 	mov    $0x400a90,%r8
  4007aa:	48 c7 c1 20 0a 40 00 	mov    $0x400a20,%rcx
  4007b1:	48 c7 c7 40 05 40 00 	mov    $0x400540,%rdi
  4007b8:	e8 33 fd ff ff       	callq  4004f0 <__libc_start_main@plt>
  4007bd:	f4                   	hlt
  4007be:	66 90                	xchg   %ax,%ax

00000000004007c0 <deregister_tm_clones>:
  4007c0:	b8 5f 10 60 00       	mov    $0x60105f,%eax
  4007c5:	55                   	push   %rbp
  4007c6:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  4007cc:	48 83 f8 0e          	cmp    $0xe,%rax
  4007d0:	48 89 e5             	mov    %rsp,%rbp
  4007d3:	77 02                	ja     4007d7 <deregister_tm_clones+0x17>
  4007d5:	5d                   	pop    %rbp
  4007d6:	c3                   	retq
  4007d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007dc:	48 85 c0             	test   %rax,%rax
  4007df:	74 f4                	je     4007d5 <deregister_tm_clones+0x15>
  4007e1:	5d                   	pop    %rbp
  4007e2:	bf 58 10 60 00       	mov    $0x601058,%edi
  4007e7:	ff e0                	jmpq   *%rax
  4007e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007f0 <register_tm_clones>:
  4007f0:	b8 58 10 60 00       	mov    $0x601058,%eax
  4007f5:	55                   	push   %rbp
  4007f6:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  4007fc:	48 c1 f8 03          	sar    $0x3,%rax
  400800:	48 89 e5             	mov    %rsp,%rbp
  400803:	48 89 c2             	mov    %rax,%rdx
  400806:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40080a:	48 01 d0             	add    %rdx,%rax
  40080d:	48 d1 f8             	sar    %rax
  400810:	75 02                	jne    400814 <register_tm_clones+0x24>
  400812:	5d                   	pop    %rbp
  400813:	c3                   	retq
  400814:	ba 00 00 00 00       	mov    $0x0,%edx
  400819:	48 85 d2             	test   %rdx,%rdx
  40081c:	74 f4                	je     400812 <register_tm_clones+0x22>
  40081e:	5d                   	pop    %rbp
  40081f:	48 89 c6             	mov    %rax,%rsi
  400822:	bf 58 10 60 00       	mov    $0x601058,%edi
  400827:	ff e2                	jmpq   *%rdx
  400829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400830 <__do_global_dtors_aux>:
  400830:	80 3d 21 08 20 00 00 	cmpb   $0x0,0x200821(%rip)        # 601058 <__TMC_END__>
  400837:	75 11                	jne    40084a <__do_global_dtors_aux+0x1a>
  400839:	55                   	push   %rbp
  40083a:	48 89 e5             	mov    %rsp,%rbp
  40083d:	e8 7e ff ff ff       	callq  4007c0 <deregister_tm_clones>
  400842:	5d                   	pop    %rbp
  400843:	c6 05 0e 08 20 00 01 	movb   $0x1,0x20080e(%rip)        # 601058 <__TMC_END__>
  40084a:	f3 c3                	repz retq
  40084c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400850 <frame_dummy>:
  400850:	48 83 3d c8 05 20 00 	cmpq   $0x0,0x2005c8(%rip)        # 600e20 <__JCR_END__>
  400857:	00
  400858:	74 1e                	je     400878 <frame_dummy+0x28>
  40085a:	b8 00 00 00 00       	mov    $0x0,%eax
  40085f:	48 85 c0             	test   %rax,%rax
  400862:	74 14                	je     400878 <frame_dummy+0x28>
  400864:	55                   	push   %rbp
  400865:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40086a:	48 89 e5             	mov    %rsp,%rbp
  40086d:	ff d0                	callq  *%rax
  40086f:	5d                   	pop    %rbp
  400870:	e9 7b ff ff ff       	jmpq   4007f0 <register_tm_clones>
  400875:	0f 1f 00             	nopl   (%rax)
  400878:	e9 73 ff ff ff       	jmpq   4007f0 <register_tm_clones>
  40087d:	0f 1f 00             	nopl   (%rax)

0000000000400880 <multiplica>:
  400880:	41 55                	push   %r13
  400882:	41 54                	push   %r12
  400884:	55                   	push   %rbp
  400885:	53                   	push   %rbx
  400886:	31 db                	xor    %ebx,%ebx
  400888:	85 c9                	test   %ecx,%ecx
  40088a:	0f 84 22 01 00 00    	je     4009b2 <multiplica+0x132>
  400890:	48 89 d0             	mov    %rdx,%rax
  400893:	49 89 f8             	mov    %rdi,%r8
  400896:	45 31 db             	xor    %r11d,%r11d
  400899:	45 8b 08             	mov    (%r8),%r9d
  40089c:	41 83 c3 01          	add    $0x1,%r11d
  4008a0:	44 0f af 0e          	imul   (%rsi),%r9d
  4008a4:	44 03 08             	add    (%rax),%r9d
  4008a7:	44 89 08             	mov    %r9d,(%rax)
  4008aa:	45 8b 50 04          	mov    0x4(%r8),%r10d
  4008ae:	44 0f af 56 10       	imul   0x10(%rsi),%r10d
  4008b3:	45 01 d1             	add    %r10d,%r9d
  4008b6:	44 89 08             	mov    %r9d,(%rax)
  4008b9:	45 8b 68 08          	mov    0x8(%r8),%r13d
  4008bd:	44 8b 56 20          	mov    0x20(%rsi),%r10d
  4008c1:	45 0f af d5          	imul   %r13d,%r10d
  4008c5:	45 01 d1             	add    %r10d,%r9d
  4008c8:	44 89 08             	mov    %r9d,(%rax)
  4008cb:	41 8b 68 0c          	mov    0xc(%r8),%ebp
  4008cf:	44 8b 56 30          	mov    0x30(%rsi),%r10d
  4008d3:	44 0f af d5          	imul   %ebp,%r10d
  4008d7:	45 01 d1             	add    %r10d,%r9d
  4008da:	44 89 08             	mov    %r9d,(%rax)
  4008dd:	45 8b 08             	mov    (%r8),%r9d
  4008e0:	44 8b 56 04          	mov    0x4(%rsi),%r10d
  4008e4:	45 0f af d1          	imul   %r9d,%r10d
  4008e8:	44 03 50 04          	add    0x4(%rax),%r10d
  4008ec:	44 89 50 04          	mov    %r10d,0x4(%rax)
  4008f0:	45 8b 60 04          	mov    0x4(%r8),%r12d
  4008f4:	44 0f af 66 14       	imul   0x14(%rsi),%r12d
  4008f9:	45 01 d4             	add    %r10d,%r12d
  4008fc:	44 89 60 04          	mov    %r12d,0x4(%rax)
  400900:	44 8b 56 24          	mov    0x24(%rsi),%r10d
  400904:	45 0f af d5          	imul   %r13d,%r10d
  400908:	45 01 e2             	add    %r12d,%r10d
  40090b:	44 89 50 04          	mov    %r10d,0x4(%rax)
  40090f:	44 8b 66 34          	mov    0x34(%rsi),%r12d
  400913:	44 0f af e5          	imul   %ebp,%r12d
  400917:	45 01 e2             	add    %r12d,%r10d
  40091a:	44 89 50 04          	mov    %r10d,0x4(%rax)
  40091e:	44 8b 56 08          	mov    0x8(%rsi),%r10d
  400922:	45 0f af d1          	imul   %r9d,%r10d
  400926:	44 03 50 08          	add    0x8(%rax),%r10d
  40092a:	44 89 50 08          	mov    %r10d,0x8(%rax)
  40092e:	45 8b 68 04          	mov    0x4(%r8),%r13d
  400932:	44 8b 66 18          	mov    0x18(%rsi),%r12d
  400936:	45 0f af e5          	imul   %r13d,%r12d
  40093a:	45 01 e2             	add    %r12d,%r10d
  40093d:	44 89 50 08          	mov    %r10d,0x8(%rax)
  400941:	45 8b 60 08          	mov    0x8(%r8),%r12d
  400945:	44 0f af 66 28       	imul   0x28(%rsi),%r12d
  40094a:	45 01 d4             	add    %r10d,%r12d
  40094d:	44 89 60 08          	mov    %r12d,0x8(%rax)
  400951:	0f af 6e 38          	imul   0x38(%rsi),%ebp
  400955:	41 01 ec             	add    %ebp,%r12d
  400958:	44 89 60 08          	mov    %r12d,0x8(%rax)
  40095c:	44 0f af 4e 0c       	imul   0xc(%rsi),%r9d
  400961:	44 03 48 0c          	add    0xc(%rax),%r9d
  400965:	44 89 48 0c          	mov    %r9d,0xc(%rax)
  400969:	44 0f af 6e 1c       	imul   0x1c(%rsi),%r13d
  40096e:	45 01 e9             	add    %r13d,%r9d
  400971:	44 89 48 0c          	mov    %r9d,0xc(%rax)
  400975:	45 8b 50 08          	mov    0x8(%r8),%r10d
  400979:	44 0f af 56 2c       	imul   0x2c(%rsi),%r10d
  40097e:	45 01 d1             	add    %r10d,%r9d
  400981:	44 89 48 0c          	mov    %r9d,0xc(%rax)
  400985:	45 8b 50 0c          	mov    0xc(%r8),%r10d
  400989:	44 0f af 56 3c       	imul   0x3c(%rsi),%r10d
  40098e:	45 01 ca             	add    %r9d,%r10d
  400991:	48 83 c0 10          	add    $0x10,%rax
  400995:	44 89 50 fc          	mov    %r10d,-0x4(%rax)
  400999:	49 83 c0 10          	add    $0x10,%r8
  40099d:	41 83 fb 04          	cmp    $0x4,%r11d
  4009a1:	0f 85 f2 fe ff ff    	jne    400899 <multiplica+0x19>
  4009a7:	83 c3 01             	add    $0x1,%ebx
  4009aa:	39 cb                	cmp    %ecx,%ebx
  4009ac:	0f 85 de fe ff ff    	jne    400890 <multiplica+0x10>
  4009b2:	5b                   	pop    %rbx
  4009b3:	5d                   	pop    %rbp
  4009b4:	41 5c                	pop    %r12
  4009b6:	41 5d                	pop    %r13
  4009b8:	c3                   	retq
  4009b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004009c0 <print_matriu>:
  4009c0:	41 55                	push   %r13
  4009c2:	49 89 fd             	mov    %rdi,%r13
  4009c5:	41 54                	push   %r12
  4009c7:	45 31 e4             	xor    %r12d,%r12d
  4009ca:	55                   	push   %rbp
  4009cb:	53                   	push   %rbx
  4009cc:	48 83 ec 08          	sub    $0x8,%rsp
  4009d0:	4b 8d 6c 25 00       	lea    0x0(%r13,%r12,1),%rbp
  4009d5:	31 db                	xor    %ebx,%ebx
  4009d7:	8b 54 1d 00          	mov    0x0(%rbp,%rbx,1),%edx
  4009db:	31 c0                	xor    %eax,%eax
  4009dd:	be a4 0a 40 00       	mov    $0x400aa4,%esi
  4009e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4009e7:	48 83 c3 04          	add    $0x4,%rbx
  4009eb:	e8 30 fb ff ff       	callq  400520 <__printf_chk@plt>
  4009f0:	48 83 fb 10          	cmp    $0x10,%rbx
  4009f4:	75 e1                	jne    4009d7 <print_matriu+0x17>
  4009f6:	bf 0a 00 00 00       	mov    $0xa,%edi
  4009fb:	49 83 c4 10          	add    $0x10,%r12
  4009ff:	e8 dc fa ff ff       	callq  4004e0 <putchar@plt>
  400a04:	49 83 fc 40          	cmp    $0x40,%r12
  400a08:	75 c6                	jne    4009d0 <print_matriu+0x10>
  400a0a:	48 83 c4 08          	add    $0x8,%rsp
  400a0e:	5b                   	pop    %rbx
  400a0f:	5d                   	pop    %rbp
  400a10:	41 5c                	pop    %r12
  400a12:	41 5d                	pop    %r13
  400a14:	c3                   	retq
  400a15:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a1c:	00 00 00
  400a1f:	90                   	nop

0000000000400a20 <__libc_csu_init>:
  400a20:	41 57                	push   %r15
  400a22:	41 89 ff             	mov    %edi,%r15d
  400a25:	41 56                	push   %r14
  400a27:	49 89 f6             	mov    %rsi,%r14
  400a2a:	41 55                	push   %r13
  400a2c:	49 89 d5             	mov    %rdx,%r13
  400a2f:	41 54                	push   %r12
  400a31:	4c 8d 25 d8 03 20 00 	lea    0x2003d8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400a38:	55                   	push   %rbp
  400a39:	48 8d 2d d8 03 20 00 	lea    0x2003d8(%rip),%rbp        # 600e18 <__init_array_end>
  400a40:	53                   	push   %rbx
  400a41:	4c 29 e5             	sub    %r12,%rbp
  400a44:	31 db                	xor    %ebx,%ebx
  400a46:	48 c1 fd 03          	sar    $0x3,%rbp
  400a4a:	48 83 ec 08          	sub    $0x8,%rsp
  400a4e:	e8 5d fa ff ff       	callq  4004b0 <_init>
  400a53:	48 85 ed             	test   %rbp,%rbp
  400a56:	74 1e                	je     400a76 <__libc_csu_init+0x56>
  400a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a5f:	00
  400a60:	4c 89 ea             	mov    %r13,%rdx
  400a63:	4c 89 f6             	mov    %r14,%rsi
  400a66:	44 89 ff             	mov    %r15d,%edi
  400a69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a6d:	48 83 c3 01          	add    $0x1,%rbx
  400a71:	48 39 eb             	cmp    %rbp,%rbx
  400a74:	75 ea                	jne    400a60 <__libc_csu_init+0x40>
  400a76:	48 83 c4 08          	add    $0x8,%rsp
  400a7a:	5b                   	pop    %rbx
  400a7b:	5d                   	pop    %rbp
  400a7c:	41 5c                	pop    %r12
  400a7e:	41 5d                	pop    %r13
  400a80:	41 5e                	pop    %r14
  400a82:	41 5f                	pop    %r15
  400a84:	c3                   	retq
  400a85:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  400a8c:	00 00 00 00

0000000000400a90 <__libc_csu_fini>:
  400a90:	f3 c3                	repz retq

Disassembly of section .fini:

0000000000400a94 <_fini>:
  400a94:	48 83 ec 08          	sub    $0x8,%rsp
  400a98:	48 83 c4 08          	add    $0x8,%rsp
  400a9c:	c3                   	retq
